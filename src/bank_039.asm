; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    add hl, sp                                    ; $4000: $39
    and e                                         ; $4001: $a3
    cp a                                          ; $4002: $bf
    xor b                                         ; $4003: $a8
    and e                                         ; $4004: $a3
    xor b                                         ; $4005: $a8
    ld hl, sp+$43                                 ; $4006: $f8 $43
    xor b                                         ; $4008: $a8
    ld d, [hl]                                    ; $4009: $56
    ld a, l                                       ; $400a: $7d
    ld h, c                                       ; $400b: $61
    xor c                                         ; $400c: $a9
    ld e, d                                       ; $400d: $5a
    ldh a, [$f6]                                  ; $400e: $f0 $f6
    ld e, c                                       ; $4010: $59
    call nc, Call_039_6331                        ; $4011: $d4 $31 $63
    ld h, a                                       ; $4014: $67
    sub c                                         ; $4015: $91
    sbc a                                         ; $4016: $9f
    ld d, l                                       ; $4017: $55
    ld e, a                                       ; $4018: $5f
    db $fc                                        ; $4019: $fc
    sub l                                         ; $401a: $95
    add [hl]                                      ; $401b: $86
    ld e, c                                       ; $401c: $59
    ld c, e                                       ; $401d: $4b
    ld h, a                                       ; $401e: $67
    rrca                                          ; $401f: $0f
    ld a, [hl]                                    ; $4020: $7e
    dec sp                                        ; $4021: $3b
    scf                                           ; $4022: $37
    adc [hl]                                      ; $4023: $8e
    and d                                         ; $4024: $a2
    ld sp, hl                                     ; $4025: $f9
    ld b, e                                       ; $4026: $43
    ldh a, [$96]                                  ; $4027: $f0 $96
    add hl, bc                                    ; $4029: $09
    rla                                           ; $402a: $17
    cp a                                          ; $402b: $bf
    and l                                         ; $402c: $a5
    add hl, sp                                    ; $402d: $39
    ret                                           ; $402e: $c9


    ld e, a                                       ; $402f: $5f
    ld h, c                                       ; $4030: $61
    and $40                                       ; $4031: $e6 $40
    or b                                          ; $4033: $b0
    db $f4                                        ; $4034: $f4
    and $5d                                       ; $4035: $e6 $5d
    ld l, a                                       ; $4037: $6f
    db $e3                                        ; $4038: $e3
    adc c                                         ; $4039: $89
    sbc e                                         ; $403a: $9b
    db $fc                                        ; $403b: $fc
    dec d                                         ; $403c: $15
    ld c, [hl]                                    ; $403d: $4e
    inc a                                         ; $403e: $3c
    ld [$de23], a                                 ; $403f: $ea $23 $de
    rst $00                                       ; $4042: $c7
    ld d, $b0                                     ; $4043: $16 $b0
    and h                                         ; $4045: $a4
    ld c, l                                       ; $4046: $4d
    ld d, d                                       ; $4047: $52
    ld a, l                                       ; $4048: $7d
    rra                                           ; $4049: $1f
    and c                                         ; $404a: $a1
    adc h                                         ; $404b: $8c
    sub h                                         ; $404c: $94
    call nz, $e76f                                ; $404d: $c4 $6f $e7
    ld [$588f], a                                 ; $4050: $ea $8f $58
    db $ed                                        ; $4053: $ed
    ret c                                         ; $4054: $d8

    ld h, $7f                                     ; $4055: $26 $7f
    add l                                         ; $4057: $85
    sbc c                                         ; $4058: $99
    inc bc                                        ; $4059: $03
    and c                                         ; $405a: $a1
    jr c, jr_039_407d                             ; $405b: $38 $20

    pop bc                                        ; $405d: $c1

jr_039_405e:
    rra                                           ; $405e: $1f
    and h                                         ; $405f: $a4
    ld h, l                                       ; $4060: $65
    ld a, [hl+]                                   ; $4061: $2a
    cp $1a                                        ; $4062: $fe $1a
    ld l, a                                       ; $4064: $6f
    dec de                                        ; $4065: $1b
    ld b, a                                       ; $4066: $47
    pop de                                        ; $4067: $d1
    db $fc                                        ; $4068: $fc
    ld hl, $cb78                                  ; $4069: $21 $78 $cb
    add h                                         ; $406c: $84
    adc e                                         ; $406d: $8b
    rst $18                                       ; $406e: $df
    jp nc, Jump_039_491c                          ; $406f: $d2 $1c $49

    xor d                                         ; $4072: $aa
    add a                                         ; $4073: $87
    ld b, d                                       ; $4074: $42
    add h                                         ; $4075: $84
    ld [hl-], a                                   ; $4076: $32
    ld b, e                                       ; $4077: $43
    ld a, [hl-]                                   ; $4078: $3a
    ld a, e                                       ; $4079: $7b
    ldh a, [rPCM34]                               ; $407a: $f0 $77
    pop de                                        ; $407c: $d1

jr_039_407d:
    adc a                                         ; $407d: $8f
    push de                                       ; $407e: $d5
    xor $c8                                       ; $407f: $ee $c8
    jr c, jr_039_40f3                             ; $4081: $38 $70

    call z, $a3c4                                 ; $4083: $cc $c4 $a3
    ld l, $19                                     ; $4086: $2e $19
    adc b                                         ; $4088: $88
    call $dae0                                    ; $4089: $cd $e0 $da
    and d                                         ; $408c: $a2
    ld [c], a                                     ; $408d: $e2
    rst $08                                       ; $408e: $cf
    sbc e                                         ; $408f: $9b
    sub [hl]                                      ; $4090: $96
    add hl, de                                    ; $4091: $19
    ld a, [hl]                                    ; $4092: $7e
    dec a                                         ; $4093: $3d
    ld a, $6d                                     ; $4094: $3e $6d
    inc e                                         ; $4096: $1c
    ld b, l                                       ; $4097: $45
    di                                            ; $4098: $f3
    add a                                         ; $4099: $87
    ldh [$2d], a                                  ; $409a: $e0 $2d
    inc de                                        ; $409c: $13
    ld l, $7e                                     ; $409d: $2e $7e
    db $eb                                        ; $409f: $eb
    ld a, [hl]                                    ; $40a0: $7e
    cp $d2                                        ; $40a1: $fe $d2
    inc e                                         ; $40a3: $1c
    ld c, h                                       ; $40a4: $4c
    push bc                                       ; $40a5: $c5
    ld e, a                                       ; $40a6: $5f
    rst $30                                       ; $40a7: $f7
    di                                            ; $40a8: $f3
    ld d, a                                       ; $40a9: $57
    db $ed                                        ; $40aa: $ed
    and e                                         ; $40ab: $a3
    adc h                                         ; $40ac: $8c
    ld c, $84                                     ; $40ad: $0e $84
    ld e, $01                                     ; $40af: $1e $01
    push de                                       ; $40b1: $d5
    ld a, $fa                                     ; $40b2: $3e $fa
    reti                                          ; $40b4: $d9


    push af                                       ; $40b5: $f5
    dec sp                                        ; $40b6: $3b
    ret c                                         ; $40b7: $d8

    cpl                                           ; $40b8: $2f
    sbc $8e                                       ; $40b9: $de $8e
    cp b                                          ; $40bb: $b8
    ld b, $88                                     ; $40bc: $06 $88
    ld a, [hl]                                    ; $40be: $7e
    ld b, l                                       ; $40bf: $45
    ld d, h                                       ; $40c0: $54
    ei                                            ; $40c1: $fb
    jr z, jr_039_405e                             ; $40c2: $28 $9a

    ccf                                           ; $40c4: $3f
    inc b                                         ; $40c5: $04
    ld l, a                                       ; $40c6: $6f
    sbc c                                         ; $40c7: $99
    ld [hl], b                                    ; $40c8: $70
    pop af                                        ; $40c9: $f1
    ld e, e                                       ; $40ca: $5b
    jp c, $8e61                                   ; $40cb: $da $61 $8e

    add $3b                                       ; $40ce: $c6 $3b
    jp z, Jump_039_4206                           ; $40d0: $ca $06 $42

    or l                                          ; $40d3: $b5
    ld [$6adf], a                                 ; $40d4: $ea $df $6a
    ld c, e                                       ; $40d7: $4b
    dec h                                         ; $40d8: $25
    ld hl, sp-$7d                                 ; $40d9: $f8 $83
    ret z                                         ; $40db: $c8

    cp h                                          ; $40dc: $bc
    dec e                                         ; $40dd: $1d
    xor d                                         ; $40de: $aa
    push bc                                       ; $40df: $c5
    adc b                                         ; $40e0: $88
    ld c, [hl]                                    ; $40e1: $4e
    ld [hl], e                                    ; $40e2: $73
    ld c, c                                       ; $40e3: $49
    ld a, a                                       ; $40e4: $7f
    ld l, a                                       ; $40e5: $6f
    ld a, $57                                     ; $40e6: $3e $57
    ld a, a                                       ; $40e8: $7f
    call nz, Call_039_556a                        ; $40e9: $c4 $6a $55
    ld h, e                                       ; $40ec: $63
    or l                                          ; $40ed: $b5
    and l                                         ; $40ee: $a5
    inc hl                                        ; $40ef: $23
    add sp, $47                                   ; $40f0: $e8 $47
    ld [hl], h                                    ; $40f2: $74

jr_039_40f3:
    rlca                                          ; $40f3: $07
    cpl                                           ; $40f4: $2f
    ret                                           ; $40f5: $c9


jr_039_40f6:
    ld c, h                                       ; $40f6: $4c
    sub b                                         ; $40f7: $90
    sbc [hl]                                      ; $40f8: $9e
    ld b, b                                       ; $40f9: $40
    rst $18                                       ; $40fa: $df
    ld b, a                                       ; $40fb: $47
    jr c, jr_039_4135                             ; $40fc: $38 $37

    ld sp, hl                                     ; $40fe: $f9
    adc e                                         ; $40ff: $8b
    adc h                                         ; $4100: $8c
    ld c, c                                       ; $4101: $49
    db $db                                        ; $4102: $db
    db $e4                                        ; $4103: $e4
    or b                                          ; $4104: $b0
    db $f4                                        ; $4105: $f4
    ld a, l                                       ; $4106: $7d
    add h                                         ; $4107: $84
    ld l, d                                       ; $4108: $6a
    ld d, l                                       ; $4109: $55
    rst $00                                       ; $410a: $c7
    ld a, d                                       ; $410b: $7a
    ld a, e                                       ; $410c: $7b
    jp nz, $ac57                                  ; $410d: $c2 $57 $ac

    dec b                                         ; $4110: $05
    rlca                                          ; $4111: $07
    ld b, h                                       ; $4112: $44
    pop af                                        ; $4113: $f1
    ld d, a                                       ; $4114: $57
    or d                                          ; $4115: $b2
    sub d                                         ; $4116: $92
    ld c, $33                                     ; $4117: $0e $33
    cp l                                          ; $4119: $bd
    sbc $aa                                       ; $411a: $de $aa
    call Call_000_1cd2                            ; $411c: $cd $d2 $1c
    adc h                                         ; $411f: $8c
    ld [hl], e                                    ; $4120: $73
    dec h                                         ; $4121: $25
    adc h                                         ; $4122: $8c
    sbc d                                         ; $4123: $9a
    ld a, e                                       ; $4124: $7b
    adc [hl]                                      ; $4125: $8e
    reti                                          ; $4126: $d9


    inc de                                        ; $4127: $13
    and $1e                                       ; $4128: $e6 $1e

jr_039_412a:
    ld e, [hl]                                    ; $412a: $5e
    add $a1                                       ; $412b: $c6 $a1
    inc hl                                        ; $412d: $23
    add a                                         ; $412e: $87
    inc sp                                        ; $412f: $33
    ld [hl], e                                    ; $4130: $73
    call Call_039_4301                            ; $4131: $cd $01 $43
    dec d                                         ; $4134: $15

jr_039_4135:
    ld [de], a                                    ; $4135: $12
    and h                                         ; $4136: $a4
    daa                                           ; $4137: $27
    ld e, [hl]                                    ; $4138: $5e
    ld l, l                                       ; $4139: $6d
    jp hl                                         ; $413a: $e9


    jr z, jr_039_40f6                             ; $413b: $28 $b9

    or h                                          ; $413d: $b4
    ld [hl+], a                                   ; $413e: $22
    ld a, e                                       ; $413f: $7b
    ld hl, $4c07                                  ; $4140: $21 $07 $4c
    ldh a, [$a0]                                  ; $4143: $f0 $a0
    dec sp                                        ; $4145: $3b
    inc e                                         ; $4146: $1c
    jr nz, jr_039_417f                            ; $4147: $20 $36

    or e                                          ; $4149: $b3
    db $e4                                        ; $414a: $e4
    call $c301                                    ; $414b: $cd $01 $c3
    rla                                           ; $414e: $17
    xor $c1                                       ; $414f: $ee $c1
    ld l, a                                       ; $4151: $6f
    ld d, h                                       ; $4152: $54
    ld l, l                                       ; $4153: $6d
    add [hl]                                      ; $4154: $86
    call nc, $9601                                ; $4155: $d4 $01 $96
    inc e                                         ; $4158: $1c
    inc hl                                        ; $4159: $23
    add e                                         ; $415a: $83
    cp a                                          ; $415b: $bf
    ld l, a                                       ; $415c: $6f
    jp c, Jump_039_4ba4                           ; $415d: $da $a4 $4b

    or d                                          ; $4160: $b2
    cp a                                          ; $4161: $bf
    add hl, sp                                    ; $4162: $39
    call Call_039_4901                            ; $4163: $cd $01 $49
    add $c8                                       ; $4166: $c6 $c8
    halt                                          ; $4168: $76
    ld [c], a                                     ; $4169: $e2
    reti                                          ; $416a: $d9


    inc e                                         ; $416b: $1c
    ld h, b                                       ; $416c: $60
    ret                                           ; $416d: $c9


    ld bc, $e323                                  ; $416e: $01 $23 $e3
    and $8e                                       ; $4171: $e6 $8e
    and d                                         ; $4173: $a2
    rra                                           ; $4174: $1f
    ret nz                                        ; $4175: $c0

    ld h, b                                       ; $4176: $60
    ret                                           ; $4177: $c9


    ld bc, $01cd                                  ; $4178: $01 $cd $01
    jp $ee17                                      ; $417b: $c3 $17 $ee


    pop bc                                        ; $417e: $c1

jr_039_417f:
    ld l, a                                       ; $417f: $6f
    call nc, Call_000_0392                        ; $4180: $d4 $92 $03
    or e                                          ; $4183: $b3
    ld e, [hl]                                    ; $4184: $5e
    ld hl, sp-$2c                                 ; $4185: $f8 $d4
    rst $28                                       ; $4187: $ef
    ld c, b                                       ; $4188: $48
    ld e, e                                       ; $4189: $5b
    ld h, e                                       ; $418a: $63
    ld c, $4c                                     ; $418b: $0e $4c
    ldh a, [$a0]                                  ; $418d: $f0 $a0
    dec sp                                        ; $418f: $3b
    rst $28                                       ; $4190: $ef
    and a                                         ; $4191: $a7
    ld [hl], h                                    ; $4192: $74
    inc l                                         ; $4193: $2c
    rst $20                                       ; $4194: $e7
    ld c, c                                       ; $4195: $49
    sub a                                         ; $4196: $97
    jp z, $e4ca                                   ; $4197: $ca $ca $e4

    cpl                                           ; $419a: $2f
    jr z, jr_039_412a                             ; $419b: $28 $8d

    call $4c72                                    ; $419d: $cd $72 $4c
    ldh a, [$a0]                                  ; $41a0: $f0 $a0
    dec sp                                        ; $41a2: $3b
    inc e                                         ; $41a3: $1c
    jr nz, jr_039_41dc                            ; $41a4: $20 $36

    or e                                          ; $41a6: $b3
    db $e4                                        ; $41a7: $e4
    call Call_039_4901                            ; $41a8: $cd $01 $49
    add $c8                                       ; $41ab: $c6 $c8
    or [hl]                                       ; $41ad: $b6
    ld l, d                                       ; $41ae: $6a
    ld [hl], l                                    ; $41af: $75
    add a                                         ; $41b0: $87
    ld l, [hl]                                    ; $41b1: $6e
    inc e                                         ; $41b2: $1c
    rra                                           ; $41b3: $1f
    ld [c], a                                     ; $41b4: $e2
    jp c, $c31c                                   ; $41b5: $da $1c $c3

    dec h                                         ; $41b8: $25
    ld a, b                                       ; $41b9: $78

jr_039_41ba:
    sub e                                         ; $41ba: $93
    dec e                                         ; $41bb: $1d
    ld [hl], b                                    ; $41bc: $70
    db $fc                                        ; $41bd: $fc
    call Call_039_7301                            ; $41be: $cd $01 $73
    ld e, l                                       ; $41c1: $5d
    inc l                                         ; $41c2: $2c
    db $db                                        ; $41c3: $db
    ld a, c                                       ; $41c4: $79
    adc l                                         ; $41c5: $8d
    sub b                                         ; $41c6: $90
    inc bc                                        ; $41c7: $03
    or e                                          ; $41c8: $b3
    ld e, d                                       ; $41c9: $5a
    ld h, h                                       ; $41ca: $64
    ld c, h                                       ; $41cb: $4c
    rst $20                                       ; $41cc: $e7
    cp l                                          ; $41cd: $bd
    db $e4                                        ; $41ce: $e4
    add l                                         ; $41cf: $85
    ld sp, $cd07                                  ; $41d0: $31 $07 $cd
    ld bc, $1543                                  ; $41d3: $01 $43 $15
    ld e, h                                       ; $41d6: $5c
    ld [hl-], a                                   ; $41d7: $32
    ret                                           ; $41d8: $c9


    ld l, h                                       ; $41d9: $6c
    ld c, $50                                     ; $41da: $0e $50

jr_039_41dc:
    sbc e                                         ; $41dc: $9b
    dec [hl]                                      ; $41dd: $35
    ret                                           ; $41de: $c9


    jr jr_039_41ba                                ; $41df: $18 $d9

    and $23                                       ; $41e1: $e6 $23
    add e                                         ; $41e3: $83
    cp a                                          ; $41e4: $bf
    ld l, a                                       ; $41e5: $6f
    jp c, Jump_039_7564                           ; $41e6: $da $64 $75

    jr jr_039_425e                                ; $41e9: $18 $73

    call $3301                                    ; $41eb: $cd $01 $33
    ld e, a                                       ; $41ee: $5f
    inc de                                        ; $41ef: $13
    adc a                                         ; $41f0: $8f
    sub d                                         ; $41f1: $92
    ld c, e                                       ; $41f2: $4b
    dec hl                                        ; $41f3: $2b
    or d                                          ; $41f4: $b2
    rla                                           ; $41f5: $17
    ld [hl], d                                    ; $41f6: $72
    inc sp                                        ; $41f7: $33
    ld a, a                                       ; $41f8: $7f
    ld sp, hl                                     ; $41f9: $f9
    ld c, l                                       ; $41fa: $4d
    ld a, [bc]                                    ; $41fb: $0a
    cp a                                          ; $41fc: $bf
    inc hl                                        ; $41fd: $23
    rlca                                          ; $41fe: $07
    call $2301                                    ; $41ff: $cd $01 $23
    dec d                                         ; $4202: $15
    add $ad                                       ; $4203: $c6 $ad
    ld l, d                                       ; $4205: $6a

Jump_039_4206:
    ld [hl], l                                    ; $4206: $75
    sbc c                                         ; $4207: $99
    sub a                                         ; $4208: $97
    ld e, d                                       ; $4209: $5a
    ld l, l                                       ; $420a: $6d
    add d                                         ; $420b: $82
    ldh a, [$0d]                                  ; $420c: $f0 $0d
    sbc h                                         ; $420e: $9c
    inc bc                                        ; $420f: $03
    inc hl                                        ; $4210: $23
    cp a                                          ; $4211: $bf
    call c, $bf3a                                 ; $4212: $dc $3a $bf
    cp l                                          ; $4215: $bd
    ld a, [hl-]                                   ; $4216: $3a
    rlca                                          ; $4217: $07
    ld c, c                                       ; $4218: $49
    ld [c], a                                     ; $4219: $e2
    ld a, e                                       ; $421a: $7b
    ld h, a                                       ; $421b: $67
    cp $7a                                        ; $421c: $fe $7a
    ld c, h                                       ; $421e: $4c
    ld c, $09                                     ; $421f: $0e $09
    ld a, a                                       ; $4221: $7f
    dec sp                                        ; $4222: $3b
    rst $10                                       ; $4223: $d7
    and l                                         ; $4224: $a5
    db $e3                                        ; $4225: $e3
    rst $20                                       ; $4226: $e7
    call Call_039_7301                            ; $4227: $cd $01 $73
    dec de                                        ; $422a: $1b
    ld bc, $b373                                  ; $422b: $01 $73 $b3
    dec b                                         ; $422e: $05
    sbc c                                         ; $422f: $99
    call c, $d599                                 ; $4230: $dc $99 $d5

jr_039_4233:
    ld [hl], c                                    ; $4233: $71
    call nz, $0e62                                ; $4234: $c4 $62 $0e
    jp $fe24                                      ; $4237: $c3 $24 $fe


    halt                                          ; $423a: $76
    ld b, h                                       ; $423b: $44
    ret z                                         ; $423c: $c8

    ld l, l                                       ; $423d: $6d
    adc l                                         ; $423e: $8d
    sbc b                                         ; $423f: $98
    inc bc                                        ; $4240: $03
    inc sp                                        ; $4241: $33
    ccf                                           ; $4242: $3f
    rr b                                          ; $4243: $cb $18
    jp c, $de51                                   ; $4245: $da $51 $de

    ldh [$b7], a                                  ; $4248: $e0 $b7
    inc e                                         ; $424a: $1c
    ld b, e                                       ; $424b: $43
    scf                                           ; $424c: $37
    ld l, b                                       ; $424d: $68
    ld h, a                                       ; $424e: $67
    cp l                                          ; $424f: $bd
    ldh a, [rLYC]                                 ; $4250: $f0 $45
    ld c, $cd                                     ; $4252: $0e $cd
    ld bc, $01cd                                  ; $4254: $01 $cd $01
    ld b, e                                       ; $4257: $43
    ld b, a                                       ; $4258: $47
    ld c, $3d                                     ; $4259: $0e $3d
    ld h, c                                       ; $425b: $61
    ld a, b                                       ; $425c: $78
    add a                                         ; $425d: $87

jr_039_425e:
    rst $08                                       ; $425e: $cf
    ld a, $f7                                     ; $425f: $3e $f7
    ldh a, [$b9]                                  ; $4261: $f0 $b9

jr_039_4263:
    and $1e                                       ; $4263: $e6 $1e
    sbc d                                         ; $4265: $9a
    jr nc, jr_039_4263                            ; $4266: $30 $fb

    ret z                                         ; $4268: $c8

    pop hl                                        ; $4269: $e1
    or e                                          ; $426a: $b3
    rst $08                                       ; $426b: $cf
    sbc l                                         ; $426c: $9d
    inc bc                                        ; $426d: $03
    call Call_039_4301                            ; $426e: $cd $01 $43
    dec d                                         ; $4271: $15
    ld [de], a                                    ; $4272: $12
    and h                                         ; $4273: $a4
    daa                                           ; $4274: $27
    ld e, [hl]                                    ; $4275: $5e
    ld l, l                                       ; $4276: $6d
    jp hl                                         ; $4277: $e9


    jr z, jr_039_4233                             ; $4278: $28 $b9

    or h                                          ; $427a: $b4
    ld [hl+], a                                   ; $427b: $22
    ld a, e                                       ; $427c: $7b
    ld hl, $4907                                  ; $427d: $21 $07 $49
    ld a, a                                       ; $4280: $7f
    dec sp                                        ; $4281: $3b
    sbc h                                         ; $4282: $9c
    ld a, d                                       ; $4283: $7a
    reti                                          ; $4284: $d9


    rst $38                                       ; $4285: $ff
    ld sp, $4907                                  ; $4286: $31 $07 $49
    ld a, a                                       ; $4289: $7f
    jr nc, jr_039_4300                            ; $428a: $30 $74

    ld b, a                                       ; $428c: $47
    cp $dd                                        ; $428d: $fe $dd
    inc e                                         ; $428f: $1c
    call Call_039_7301                            ; $4290: $cd $01 $73
    dec de                                        ; $4293: $1b
    add c                                         ; $4294: $81
    ld a, [hl-]                                   ; $4295: $3a
    ld b, b                                       ; $4296: $40
    ld l, l                                       ; $4297: $6d
    sub [hl]                                      ; $4298: $96
    inc bc                                        ; $4299: $03
    or e                                          ; $429a: $b3
    ld a, [hl]                                    ; $429b: $7e
    ld a, [hl]                                    ; $429c: $7e
    db $eb                                        ; $429d: $eb
    jr nc, jr_039_42f1                            ; $429e: $30 $51

    rst $00                                       ; $42a0: $c7
    ld h, c                                       ; $42a1: $61
    ret z                                         ; $42a2: $c8

    ld bc, $01cd                                  ; $42a3: $01 $cd $01
    inc hl                                        ; $42a6: $23
    call nz, Call_039_621f                        ; $42a7: $c4 $1f $62
    ld [hl], b                                    ; $42aa: $70
    ld [c], a                                     ; $42ab: $e2
    and h                                         ; $42ac: $a4
    db $10                                        ; $42ad: $10
    rst $18                                       ; $42ae: $df
    ldh [$92], a                                  ; $42af: $e0 $92
    inc e                                         ; $42b1: $1c
    and e                                         ; $42b2: $a3
    ld e, [hl]                                    ; $42b3: $5e
    ret nc                                        ; $42b4: $d0

    adc $2d                                       ; $42b5: $ce $2d
    ld [$af60], a                                 ; $42b7: $ea $60 $af
    inc e                                         ; $42ba: $1c
    call $c301                                    ; $42bb: $cd $01 $c3
    add [hl]                                      ; $42be: $86
    inc sp                                        ; $42bf: $33
    rst $20                                       ; $42c0: $e7
    sbc b                                         ; $42c1: $98
    dec a                                         ; $42c2: $3d
    ld l, c                                       ; $42c3: $69
    ld hl, sp+$5c                                 ; $42c4: $f8 $5c
    jp Jump_039_6f67                              ; $42c6: $c3 $67 $6f


    jp nc, $d9d0                                  ; $42c9: $d2 $d0 $d9

    ld b, a                                       ; $42cc: $47
    ld [hl], h                                    ; $42cd: $74
    add sp, -$14                                  ; $42ce: $e8 $ec
    add hl, sp                                    ; $42d0: $39
    ld c, h                                       ; $42d1: $4c
    ldh a, [$c0]                                  ; $42d2: $f0 $c0

jr_039_42d4:
    ei                                            ; $42d4: $fb
    dec de                                        ; $42d5: $1b
    ld l, [hl]                                    ; $42d6: $6e
    or d                                          ; $42d7: $b2
    dec b                                         ; $42d8: $05
    ld a, [hl]                                    ; $42d9: $7e
    ld h, [hl]                                    ; $42da: $66
    ret                                           ; $42db: $c9


    ld bc, $854c                                  ; $42dc: $01 $4c $85
    ld a, a                                       ; $42df: $7f
    sbc e                                         ; $42e0: $9b
    db $e4                                        ; $42e1: $e4
    sub c                                         ; $42e2: $91
    sub [hl]                                      ; $42e3: $96
    add b                                         ; $42e4: $80
    inc e                                         ; $42e5: $1c
    inc hl                                        ; $42e6: $23
    db $e3                                        ; $42e7: $e3
    and $26                                       ; $42e8: $e6 $26
    ld sp, hl                                     ; $42ea: $f9
    ld l, a                                       ; $42eb: $6f
    ld c, $43                                     ; $42ec: $0e $43
    cp a                                          ; $42ee: $bf
    ld e, h                                       ; $42ef: $5c
    db $db                                        ; $42f0: $db

jr_039_42f1:
    cp c                                          ; $42f1: $b9
    add d                                         ; $42f2: $82
    dec sp                                        ; $42f3: $3b
    rlca                                          ; $42f4: $07
    inc hl                                        ; $42f5: $23
    inc a                                         ; $42f6: $3c
    jr jr_039_42d4                                ; $42f7: $18 $db

    ld h, c                                       ; $42f9: $61
    ld c, d                                       ; $42fa: $4a
    ld [hl], h                                    ; $42fb: $74
    ldh a, [$5b]                                  ; $42fc: $f0 $5b
    ld c, $23                                     ; $42fe: $0e $23

jr_039_4300:
    inc h                                         ; $4300: $24

Call_039_4301:
    or b                                          ; $4301: $b0
    ld c, h                                       ; $4302: $4c
    ld [hl], l                                    ; $4303: $75
    inc e                                         ; $4304: $1c
    ld d, $cc                                     ; $4305: $16 $cc
    ld bc, $01cd                                  ; $4307: $01 $cd $01
    call $cd01                                    ; $430a: $cd $01 $cd
    ld bc, $67c3                                  ; $430d: $01 $c3 $67
    dec de                                        ; $4310: $1b
    ld a, $f3                                     ; $4311: $3e $f3
    call c, $cd73                                 ; $4313: $dc $73 $cd
    ld sp, $c27b                                  ; $4316: $31 $7b $c2
    call z, $3a1d                                 ; $4319: $cc $1d $3a
    rst $10                                       ; $431c: $d7
    call c, $1ccc                                 ; $431d: $dc $cc $1c
    call $a301                                    ; $4320: $cd $01 $a3
    db $e4                                        ; $4323: $e4
    jp nc, Jump_000_06ea                          ; $4324: $d2 $ea $06

    ld [hl], c                                    ; $4327: $71
    dec l                                         ; $4328: $2d
    add d                                         ; $4329: $82
    rst $38                                       ; $432a: $ff
    sub c                                         ; $432b: $91
    inc bc                                        ; $432c: $03
    inc sp                                        ; $432d: $33
    ccf                                           ; $432e: $3f
    add hl, bc                                    ; $432f: $09
    inc l                                         ; $4330: $2c
    and e                                         ; $4331: $a3
    db $fc                                        ; $4332: $fc
    ld sp, $3339                                  ; $4333: $31 $39 $33
    ld e, a                                       ; $4336: $5f
    inc [hl]                                      ; $4337: $34
    or [hl]                                       ; $4338: $b6
    ld [hl], e                                    ; $4339: $73
    ld e, l                                       ; $433a: $5d
    ld l, h                                       ; $433b: $6c
    inc l                                         ; $433c: $2c
    ld e, [hl]                                    ; $433d: $5e
    sbc e                                         ; $433e: $9b
    inc bc                                        ; $433f: $03
    or e                                          ; $4340: $b3
    sbc d                                         ; $4341: $9a
    jr nz, @-$34                                  ; $4342: $20 $ca

    ld hl, sp-$71                                 ; $4344: $f8 $8f
    ld l, e                                       ; $4346: $6b
    ld [hl], e                                    ; $4347: $73
    ld [hl], e                                    ; $4348: $73
    call c, $9dbd                                 ; $4349: $dc $bd $9d
    ld h, e                                       ; $434c: $63
    db $fc                                        ; $434d: $fc
    ld h, c                                       ; $434e: $61
    ld [de], a                                    ; $434f: $12
    sbc $1c                                       ; $4350: $de $1c
    ld [hl], e                                    ; $4352: $73
    ld e, l                                       ; $4353: $5d
    ld l, h                                       ; $4354: $6c
    rst $20                                       ; $4355: $e7
    jr jr_039_43d7                                ; $4356: $18 $7f

    sub [hl]                                      ; $4358: $96
    cpl                                           ; $4359: $2f
    ld h, d                                       ; $435a: $62
    ld c, d                                       ; $435b: $4a
    ld [hl], e                                    ; $435c: $73
    call z, $ae38                                 ; $435d: $cc $38 $ae
    ld l, l                                       ; $4360: $6d
    ld a, [c]                                     ; $4361: $f2
    rla                                           ; $4362: $17
    add hl, bc                                    ; $4363: $09
    call z, $a301                                 ; $4364: $cc $01 $a3
    rst $38                                       ; $4367: $ff
    sbc b                                         ; $4368: $98
    ld [hl], l                                    ; $4369: $75
    ld h, a                                       ; $436a: $67
    sub c                                         ; $436b: $91
    dec bc                                        ; $436c: $0b
    ld hl, $cd07                                  ; $436d: $21 $07 $cd
    ld bc, $2827                                  ; $4370: $01 $27 $28
    ld c, h                                       ; $4373: $4c
    inc b                                         ; $4374: $04
    ld [hl-], a                                   ; $4375: $32
    dec c                                         ; $4376: $0d
    cp $dc                                        ; $4377: $fe $dc
    ld d, c                                       ; $4379: $51
    ld [hl], d                                    ; $437a: $72

Jump_039_437b:
    ld h, l                                       ; $437b: $65
    ld a, [c]                                     ; $437c: $f2
    adc a                                         ; $437d: $8f
    inc hl                                        ; $437e: $23
    inc l                                         ; $437f: $2c
    ld l, d                                       ; $4380: $6a
    or e                                          ; $4381: $b3
    inc e                                         ; $4382: $1c
    jp Jump_039_4dbc                              ; $4383: $c3 $bc $4d


    ld a, [c]                                     ; $4386: $f2
    ld e, a                                       ; $4387: $5f
    rst $20                                       ; $4388: $e7
    call $cc01                                    ; $4389: $cd $01 $cc
    add c                                         ; $438c: $81
    jr nc, @+$67                                  ; $438d: $30 $65

    ccf                                           ; $438f: $3f
    db $fd                                        ; $4390: $fd
    res 3, l                                      ; $4391: $cb $9d
    inc bc                                        ; $4393: $03
    ld c, c                                       ; $4394: $49
    ld a, a                                       ; $4395: $7f
    dec sp                                        ; $4396: $3b
    ld d, a                                       ; $4397: $57
    ld d, b                                       ; $4398: $50
    adc a                                         ; $4399: $8f
    ret                                           ; $439a: $c9


    ld bc, $01cd                                  ; $439b: $01 $cd $01
    call z, $ad4b                                 ; $439e: $cc $4b $ad
    adc $01                                       ; $43a1: $ce $01
    ld b, e                                       ; $43a3: $43
    or l                                          ; $43a4: $b5
    xor c                                         ; $43a5: $a9
    dec sp                                        ; $43a6: $3b
    jp nz, Jump_000_1a94                          ; $43a7: $c2 $94 $1a

    jr nz, @+$09                                  ; $43aa: $20 $07

    jp $d282                                      ; $43ac: $c3 $82 $d2


    adc $a6                                       ; $43af: $ce $a6
    db $10                                        ; $43b1: $10
    add $e4                                       ; $43b2: $c6 $e4
    or e                                          ; $43b4: $b3
    ld e, d                                       ; $43b5: $5a
    ld a, h                                       ; $43b6: $7c
    adc h                                         ; $43b7: $8c
    add hl, hl                                    ; $43b8: $29
    di                                            ; $43b9: $f3
    ld d, d                                       ; $43ba: $52
    call nc, $b339                                ; $43bb: $d4 $39 $b3
    rlca                                          ; $43be: $07
    cp a                                          ; $43bf: $bf
    ld [hl], l                                    ; $43c0: $75
    or [hl]                                       ; $43c1: $b6
    ccf                                           ; $43c2: $3f
    jr @+$18                                      ; $43c3: $18 $16

    call z, $cd01                                 ; $43c5: $cc $01 $cd
    ld bc, $3273                                  ; $43c8: $01 $73 $32
    daa                                           ; $43cb: $27
    ld e, $ca                                     ; $43cc: $1e $ca
    add d                                         ; $43ce: $82
    add e                                         ; $43cf: $83
    xor d                                         ; $43d0: $aa
    call $4372                                    ; $43d1: $cd $72 $43
    ld d, a                                       ; $43d4: $57
    adc a                                         ; $43d5: $8f
    jp hl                                         ; $43d6: $e9


jr_039_43d7:
    ret z                                         ; $43d7: $c8

    and b                                         ; $43d8: $a0
    call nc, Call_000_0392                        ; $43d9: $d4 $92 $03
    ld c, c                                       ; $43dc: $49
    ld e, a                                       ; $43dd: $5f
    call nz, $b9db                                ; $43de: $c4 $db $b9
    dec d                                         ; $43e1: $15
    cp a                                          ; $43e2: $bf
    ld a, c                                       ; $43e3: $79
    ld c, h                                       ; $43e4: $4c
    ld c, $b3                                     ; $43e5: $0e $b3
    ld e, [hl]                                    ; $43e7: $5e
    xor $ec                                       ; $43e8: $ee $ec
    ld l, d                                       ; $43ea: $6a
    scf                                           ; $43eb: $37
    rlca                                          ; $43ec: $07
    or e                                          ; $43ed: $b3
    reti                                          ; $43ee: $d9


    dec e                                         ; $43ef: $1d
    ld sp, hl                                     ; $43f0: $f9
    ld d, a                                       ; $43f1: $57
    ld a, e                                       ; $43f2: $7b
    jr nc, @+$2a                                  ; $43f3: $30 $28

    ld [hl], l                                    ; $43f5: $75
    ld c, $23                                     ; $43f6: $0e $23
    ccf                                           ; $43f8: $3f
    ld b, b                                       ; $43f9: $40
    add a                                         ; $43fa: $87
    ld a, c                                       ; $43fb: $79
    rst $10                                       ; $43fc: $d7
    nop                                           ; $43fd: $00
    add hl, sp                                    ; $43fe: $39
    and e                                         ; $43ff: $a3
    inc c                                         ; $4400: $0c
    ld l, $f3                                     ; $4401: $2e $f3
    rra                                           ; $4403: $1f
    jp z, Jump_039_7314                           ; $4404: $ca $14 $73

    and e                                         ; $4407: $a3
    jp nz, $9d82                                  ; $4408: $c2 $82 $9d

    db $ed                                        ; $440b: $ed
    ld l, a                                       ; $440c: $6f
    ld h, $a1                                     ; $440d: $26 $a1
    inc sp                                        ; $440f: $33
    rst $20                                       ; $4410: $e7
    ld [hl], e                                    ; $4411: $73
    dec b                                         ; $4412: $05
    ld a, a                                       ; $4413: $7f
    ld e, a                                       ; $4414: $5f
    ld [hl], h                                    ; $4415: $74
    ld b, a                                       ; $4416: $47
    rlca                                          ; $4417: $07
    push de                                       ; $4418: $d5
    ld d, $1c                                     ; $4419: $16 $1c
    adc b                                         ; $441b: $88
    call Call_039_7301                            ; $441c: $cd $01 $73
    ld e, l                                       ; $441f: $5d
    adc b                                         ; $4420: $88
    ld c, l                                       ; $4421: $4d
    cp d                                          ; $4422: $ba
    ld d, h                                       ; $4423: $54
    ld b, [hl]                                    ; $4424: $46
    ccf                                           ; $4425: $3f
    and $4c                                       ; $4426: $e6 $4c
    ld d, b                                       ; $4428: $50
    dec e                                         ; $4429: $1d
    dec e                                         ; $442a: $1d
    sub h                                         ; $442b: $94
    add $3f                                       ; $442c: $c6 $3f
    jr nc, jr_039_4437                            ; $442e: $30 $07

    call Call_039_7301                            ; $4430: $cd $01 $73
    ld [hl-], a                                   ; $4433: $32
    daa                                           ; $4434: $27
    sbc [hl]                                      ; $4435: $9e
    db $db                                        ; $4436: $db

jr_039_4437:
    db $fc                                        ; $4437: $fc
    ld l, l                                       ; $4438: $6d
    call c, $b372                                 ; $4439: $dc $72 $b3
    ld e, [hl]                                    ; $443c: $5e
    ld l, $a3                                     ; $443d: $2e $a3
    db $fc                                        ; $443f: $fc
    add l                                         ; $4440: $85
    inc e                                         ; $4441: $1c
    inc hl                                        ; $4442: $23
    cp a                                          ; $4443: $bf
    ld [hl], b                                    ; $4444: $70
    add l                                         ; $4445: $85
    dec e                                         ; $4446: $1d
    and l                                         ; $4447: $a5
    ld h, h                                       ; $4448: $64
    jr nc, jr_039_447b                            ; $4449: $30 $30

    rlca                                          ; $444b: $07
    and e                                         ; $444c: $a3
    rst $38                                       ; $444d: $ff
    sbc b                                         ; $444e: $98
    ld [hl], l                                    ; $444f: $75
    add a                                         ; $4450: $87
    ld e, l                                       ; $4451: $5d
    ld h, e                                       ; $4452: $63
    cp b                                          ; $4453: $b8
    ld [hl], e                                    ; $4454: $73
    ld c, c                                       ; $4455: $49
    rst $10                                       ; $4456: $d7
    xor $6f                                       ; $4457: $ee $6f
    ld [hl], d                                    ; $4459: $72
    ldh a, [rNR31]                                ; $445a: $f0 $1b
    and $cd                                       ; $445c: $e6 $cd
    ld bc, $a9c3                                  ; $445e: $01 $c3 $a9
    add hl, sp                                    ; $4461: $39
    ret z                                         ; $4462: $c8

    or l                                          ; $4463: $b5
    pop bc                                        ; $4464: $c1
    dec sp                                        ; $4465: $3b
    ld d, h                                       ; $4466: $54
    nop                                           ; $4467: $00
    dec sp                                        ; $4468: $3b
    ld [hl], c                                    ; $4469: $71
    add a                                         ; $446a: $87
    add hl, de                                    ; $446b: $19
    xor a                                         ; $446c: $af
    push de                                       ; $446d: $d5
    ld d, $4b                                     ; $446e: $16 $4b
    sub e                                         ; $4470: $93
    cp $de                                        ; $4471: $fe $de
    ld a, [$0737]                                 ; $4473: $fa $37 $07
    jp Jump_039_7144                              ; $4476: $c3 $44 $71


    ld [hl], a                                    ; $4479: $77
    inc h                                         ; $447a: $24

jr_039_447b:
    rra                                           ; $447b: $1f
    add hl, de                                    ; $447c: $19
    sub h                                         ; $447d: $94
    cp $cd                                        ; $447e: $fe $cd
    ld bc, $3f33                                  ; $4480: $01 $33 $3f
    push bc                                       ; $4483: $c5
    ld l, a                                       ; $4484: $6f
    sbc l                                         ; $4485: $9d
    sbc c                                         ; $4486: $99
    cp $85                                        ; $4487: $fe $85
    ld l, e                                       ; $4489: $6b
    ld [hl], e                                    ; $448a: $73
    ld c, c                                       ; $448b: $49
    ld a, a                                       ; $448c: $7f
    ld [hl], a                                    ; $448d: $77
    ld c, h                                       ; $448e: $4c
    add a                                         ; $448f: $87
    dec b                                         ; $4490: $05
    push bc                                       ; $4491: $c5
    ld l, e                                       ; $4492: $6b
    ld [hl], e                                    ; $4493: $73
    ld c, c                                       ; $4494: $49
    ld a, a                                       ; $4495: $7f
    jr nc, @+$76                                  ; $4496: $30 $74

    add a                                         ; $4498: $87
    adc l                                         ; $4499: $8d
    sub c                                         ; $449a: $91
    ld [hl], l                                    ; $449b: $75
    ld c, $8c                                     ; $449c: $0e $8c
    ld l, d                                       ; $449e: $6a
    ld c, h                                       ; $449f: $4c
    ld b, a                                       ; $44a0: $47
    ld b, $a5                                     ; $44a1: $06 $a5
    sub [hl]                                      ; $44a3: $96
    inc e                                         ; $44a4: $1c
    add hl, bc                                    ; $44a5: $09
    ld a, a                                       ; $44a6: $7f
    bit 7, h                                      ; $44a7: $cb $7c
    rst $38                                       ; $44a9: $ff
    sbc [hl]                                      ; $44aa: $9e
    inc bc                                        ; $44ab: $03
    or e                                          ; $44ac: $b3
    ld e, [hl]                                    ; $44ad: $5e
    ld l, a                                       ; $44ae: $6f
    dec sp                                        ; $44af: $3b
    db $db                                        ; $44b0: $db
    cp a                                          ; $44b1: $bf
    adc e                                         ; $44b2: $8b
    sub a                                         ; $44b3: $97
    dec sp                                        ; $44b4: $3b
    rlca                                          ; $44b5: $07
    or e                                          ; $44b6: $b3
    dec b                                         ; $44b7: $05
    cp $32                                        ; $44b8: $fe $32
    pop hl                                        ; $44ba: $e1
    cp d                                          ; $44bb: $ba
    add hl, de                                    ; $44bc: $19
    ld [hl], e                                    ; $44bd: $73
    or e                                          ; $44be: $b3
    dec b                                         ; $44bf: $05
    cp $8e                                        ; $44c0: $fe $8e
    cp $00                                        ; $44c2: $fe $00
    add hl, sp                                    ; $44c4: $39
    and e                                         ; $44c5: $a3
    cp [hl]                                       ; $44c6: $be
    and d                                         ; $44c7: $a2
    ld c, l                                       ; $44c8: $4d
    ld a, [c]                                     ; $44c9: $f2
    ld c, b                                       ; $44ca: $48
    ld e, a                                       ; $44cb: $5f
    add hl, sp                                    ; $44cc: $39
    and e                                         ; $44cd: $a3
    cp [hl]                                       ; $44ce: $be
    and d                                         ; $44cf: $a2
    dec e                                         ; $44d0: $1d
    ld sp, hl                                     ; $44d1: $f9
    dec b                                         ; $44d2: $05
    or l                                          ; $44d3: $b5
    scf                                           ; $44d4: $37
    rlca                                          ; $44d5: $07
    call z, $ae38                                 ; $44d6: $cc $38 $ae
    db $ed                                        ; $44d9: $ed
    xor b                                         ; $44da: $a8
    rla                                           ; $44db: $17
    inc bc                                        ; $44dc: $03
    inc bc                                        ; $44dd: $03
    sbc b                                         ; $44de: $98
    inc bc                                        ; $44df: $03
    call $cd01                                    ; $44e0: $cd $01 $cd
    ld bc, $01cd                                  ; $44e3: $01 $cd $01
    call $cd01                                    ; $44e6: $cd $01 $cd
    ld bc, $01cd                                  ; $44e9: $01 $cd $01
    call $cd01                                    ; $44ec: $cd $01 $cd
    ld bc, $01cd                                  ; $44ef: $01 $cd $01
    call $cd01                                    ; $44f2: $cd $01 $cd
    ld bc, $01cd                                  ; $44f5: $01 $cd $01
    call $cd01                                    ; $44f8: $cd $01 $cd
    ld bc, $01cd                                  ; $44fb: $01 $cd $01
    call $cd01                                    ; $44fe: $cd $01 $cd
    ld bc, $01cd                                  ; $4501: $01 $cd $01
    call $cd01                                    ; $4504: $cd $01 $cd
    ld bc, $01cd                                  ; $4507: $01 $cd $01
    call $cd01                                    ; $450a: $cd $01 $cd
    ld bc, $01cd                                  ; $450d: $01 $cd $01
    call $cd01                                    ; $4510: $cd $01 $cd
    ld bc, $01cd                                  ; $4513: $01 $cd $01
    call $cd01                                    ; $4516: $cd $01 $cd
    ld bc, $01cd                                  ; $4519: $01 $cd $01
    call $cd01                                    ; $451c: $cd $01 $cd
    ld bc, $01cd                                  ; $451f: $01 $cd $01
    call $c901                                    ; $4522: $cd $01 $c9
    ld e, $73                                     ; $4525: $1e $73
    ld l, $1b                                     ; $4527: $2e $1b
    ld [$aad5], sp                                ; $4529: $08 $d5 $aa
    dec de                                        ; $452c: $1b
    db $fc                                        ; $452d: $fc
    ld b, c                                       ; $452e: $41
    db $d3                                        ; $452f: $d3
    inc [hl]                                      ; $4530: $34
    ld l, l                                       ; $4531: $6d
    ld a, [c]                                     ; $4532: $f2
    rla                                           ; $4533: $17
    add hl, de                                    ; $4534: $19
    db $d3                                        ; $4535: $d3
    ld d, c                                       ; $4536: $51
    rla                                           ; $4537: $17
    add b                                         ; $4538: $80
    ld h, l                                       ; $4539: $65
    add $1c                                       ; $453a: $c6 $1c
    or e                                          ; $453c: $b3
    xor e                                         ; $453d: $ab
    ld l, l                                       ; $453e: $6d
    sbc d                                         ; $453f: $9a
    and [hl]                                      ; $4540: $a6
    add hl, sp                                    ; $4541: $39
    ld c, c                                       ; $4542: $49
    xor d                                         ; $4543: $aa
    ld l, h                                       ; $4544: $6c
    jr nz, jr_039_457b                            ; $4545: $20 $34

    ld c, l                                       ; $4547: $4d
    db $d3                                        ; $4548: $d3
    ld [hl], e                                    ; $4549: $73
    rst $18                                       ; $454a: $df
    ld h, a                                       ; $454b: $67
    dec de                                        ; $454c: $1b
    db $fc                                        ; $454d: $fc
    ld [hl], l                                    ; $454e: $75
    ld l, $f3                                     ; $454f: $2e $f3
    rlca                                          ; $4551: $07
    inc sp                                        ; $4552: $33
    ld [hl], $e9                                  ; $4553: $36 $e9
    inc hl                                        ; $4555: $23
    ld d, [hl]                                    ; $4556: $56
    xor e                                         ; $4557: $ab

jr_039_4558:
    cp [hl]                                       ; $4558: $be
    or b                                          ; $4559: $b0
    sub h                                         ; $455a: $94
    dec c                                         ; $455b: $0d
    add h                                         ; $455c: $84
    ld [hl], e                                    ; $455d: $73
    ld e, c                                       ; $455e: $59
    ld l, e                                       ; $455f: $6b
    dec hl                                        ; $4560: $2b
    jr nc, jr_039_45b7                            ; $4561: $30 $54

    ld e, a                                       ; $4563: $5f
    db $fc                                        ; $4564: $fc
    sub l                                         ; $4565: $95
    dec [hl]                                      ; $4566: $35
    ld b, d                                       ; $4567: $42
    inc e                                         ; $4568: $1c
    rlca                                          ; $4569: $07
    sbc h                                         ; $456a: $9c
    xor e                                         ; $456b: $ab
    ccf                                           ; $456c: $3f
    ld h, d                                       ; $456d: $62
    or l                                          ; $456e: $b5
    ld [$fe7e], a                                 ; $456f: $ea $7e $fe
    sbc d                                         ; $4572: $9a
    ld a, h                                       ; $4573: $7c
    ld h, l                                       ; $4574: $65
    rst $30                                       ; $4575: $f7
    cpl                                           ; $4576: $2f
    add b                                         ; $4577: $80
    dec h                                         ; $4578: $25
    ld [de], a                                    ; $4579: $12
    sbc a                                         ; $457a: $9f

jr_039_457b:
    jr nz, jr_039_4589                            ; $457b: $20 $0c

    ret                                           ; $457d: $c9


    ld bc, $1da3                                  ; $457e: $01 $a3 $1d
    db $e3                                        ; $4581: $e3
    call nc, Call_039_7991                        ; $4582: $d4 $91 $79
    add c                                         ; $4585: $81
    ld b, $7f                                     ; $4586: $06 $7f
    dec a                                         ; $4588: $3d

jr_039_4589:
    push de                                       ; $4589: $d5
    jp c, Jump_039_4fd2                           ; $458a: $da $d2 $4f

    xor c                                         ; $458d: $a9
    or c                                          ; $458e: $b1
    inc h                                         ; $458f: $24
    sub $d2                                       ; $4590: $d6 $d2
    inc hl                                        ; $4592: $23
    ld hl, sp-$65                                 ; $4593: $f8 $9b
    ld sp, $4907                                  ; $4595: $31 $07 $49
    rra                                           ; $4598: $1f
    ld a, e                                       ; $4599: $7b
    rrca                                          ; $459a: $0f
    pop de                                        ; $459b: $d1
    ld [hl], l                                    ; $459c: $75
    ld l, h                                       ; $459d: $6c
    sbc c                                         ; $459e: $99
    inc bc                                        ; $459f: $03
    ld a, a                                       ; $45a0: $7f
    sbc h                                         ; $45a1: $9c
    ld hl, $fe4d                                  ; $45a2: $21 $4d $fe
    ld [hl+], a                                   ; $45a5: $22
    ld h, e                                       ; $45a6: $63
    ld a, [hl-]                                   ; $45a7: $3a
    ld [$b002], a                                 ; $45a8: $ea $02 $b0
    inc [hl]                                      ; $45ab: $34
    or [hl]                                       ; $45ac: $b6
    ret                                           ; $45ad: $c9


    ld d, a                                       ; $45ae: $57
    halt                                          ; $45af: $76
    rst $38                                       ; $45b0: $ff
    ld [bc], a                                    ; $45b1: $02
    jr c, jr_039_4558                             ; $45b2: $38 $a4

    inc hl                                        ; $45b4: $23
    cp $6e                                        ; $45b5: $fe $6e

jr_039_45b7:
    add e                                         ; $45b7: $83
    cp a                                          ; $45b8: $bf
    add [hl]                                      ; $45b9: $86
    ld h, h                                       ; $45ba: $64
    ld e, [hl]                                    ; $45bb: $5e
    ld l, l                                       ; $45bc: $6d
    cp b                                          ; $45bd: $b8
    ld a, a                                       ; $45be: $7f
    inc l                                         ; $45bf: $2c
    ld b, c                                       ; $45c0: $41
    sub d                                         ; $45c1: $92
    ld [$afe0], a                                 ; $45c2: $ea $e0 $af
    and b                                         ; $45c5: $a0
    halt                                          ; $45c6: $76
    add $0e                                       ; $45c7: $c6 $0e
    sub e                                         ; $45c9: $93
    xor a                                         ; $45ca: $af
    ld hl, sp+$43                                 ; $45cb: $f8 $43
    xor b                                         ; $45cd: $a8
    ld d, [hl]                                    ; $45ce: $56
    db $dd                                        ; $45cf: $dd
    adc e                                         ; $45d0: $8b
    cp a                                          ; $45d1: $bf
    add [hl]                                      ; $45d2: $86
    ld h, h                                       ; $45d3: $64
    ld e, [hl]                                    ; $45d4: $5e
    ld a, l                                       ; $45d5: $7d
    scf                                           ; $45d6: $37
    push hl                                       ; $45d7: $e5
    rst $08                                       ; $45d8: $cf
    dec e                                         ; $45d9: $1d
    ld d, $54                                     ; $45da: $16 $54
    rst $18                                       ; $45dc: $df
    cp [hl]                                       ; $45dd: $be
    add b                                         ; $45de: $80
    or a                                          ; $45df: $b7
    add e                                         ; $45e0: $83
    rst $10                                       ; $45e1: $d7
    sub [hl]                                      ; $45e2: $96
    or l                                          ; $45e3: $b5
    sub b                                         ; $45e4: $90
    sbc $01                                       ; $45e5: $de $01
    sbc $26                                       ; $45e7: $de $26
    ei                                            ; $45e9: $fb
    ld [hl], h                                    ; $45ea: $74
    ld l, a                                       ; $45eb: $6f
    push de                                       ; $45ec: $d5
    ld [$f09e], a                                 ; $45ed: $ea $9e $f0
    dec d                                         ; $45f0: $15
    ld l, e                                       ; $45f1: $6b
    or c                                          ; $45f2: $b1
    db $ec                                        ; $45f3: $ec
    adc h                                         ; $45f4: $8c
    add hl, sp                                    ; $45f5: $39
    add hl, bc                                    ; $45f6: $09
    db $fc                                        ; $45f7: $fc
    push af                                       ; $45f8: $f5
    xor $18                                       ; $45f9: $ee $18
    and a                                         ; $45fb: $a7
    dec de                                        ; $45fc: $1b
    db $fc                                        ; $45fd: $fc
    ld b, c                                       ; $45fe: $41
    db $d3                                        ; $45ff: $d3
    inc [hl]                                      ; $4600: $34
    db $ed                                        ; $4601: $ed
    db $fd                                        ; $4602: $fd
    ld h, e                                       ; $4603: $63
    ld sp, $5756                                  ; $4604: $31 $56 $57
    ld a, a                                       ; $4607: $7f
    inc l                                         ; $4608: $2c
    ld b, c                                       ; $4609: $41
    sub d                                         ; $460a: $92
    adc [hl]                                      ; $460b: $8e
    ld hl, sp+$02                                 ; $460c: $f8 $02
    sbc $19                                       ; $460e: $de $19
    ld [hl], e                                    ; $4610: $73
    ld [hl], e                                    ; $4611: $73
    cp h                                          ; $4612: $bc
    ld [hl], e                                    ; $4613: $73
    ld sp, $8c5c                                  ; $4614: $31 $5c $8c
    push de                                       ; $4617: $d5
    ld [hl], l                                    ; $4618: $75
    inc l                                         ; $4619: $2c
    pop af                                        ; $461a: $f1
    ld sp, hl                                     ; $461b: $f9
    dec hl                                        ; $461c: $2b
    xor d                                         ; $461d: $aa
    ld bc, $90cb                                  ; $461e: $01 $cb $90
    adc [hl]                                      ; $4621: $8e
    db $fc                                        ; $4622: $fc
    db $db                                        ; $4623: $db
    db $db                                        ; $4624: $db
    rst $18                                       ; $4625: $df
    dec l                                         ; $4626: $2d
    add [hl]                                      ; $4627: $86
    adc e                                         ; $4628: $8b
    rst $38                                       ; $4629: $ff
    jr c, jr_039_4678                             ; $462a: $38 $4c

    or a                                          ; $462c: $b7
    ld l, d                                       ; $462d: $6a
    ld [hl], l                                    ; $462e: $75
    pop hl                                        ; $462f: $e1
    dec hl                                        ; $4630: $2b
    db $e4                                        ; $4631: $e4
    rst $08                                       ; $4632: $cf
    sbc e                                         ; $4633: $9b
    halt                                          ; $4634: $76
    xor b                                         ; $4635: $a8
    ld a, [de]                                    ; $4636: $1a
    rst $00                                       ; $4637: $c7
    and d                                         ; $4638: $a2
    ld a, l                                       ; $4639: $7d
    db $f4                                        ; $463a: $f4
    or $77                                        ; $463b: $f6 $77
    ld de, $55aa                                  ; $463d: $11 $aa $55
    adc a                                         ; $4640: $8f
    add b                                         ; $4641: $80
    or d                                          ; $4642: $b2
    ld b, [hl]                                    ; $4643: $46
    adc b                                         ; $4644: $88
    db $e3                                        ; $4645: $e3
    nop                                           ; $4646: $00
    ld l, a                                       ; $4647: $6f
    ld b, a                                       ; $4648: $47
    ld a, h                                       ; $4649: $7c
    ld bc, $edef                                  ; $464a: $01 $ef $ed
    ld a, [hl-]                                   ; $464d: $3a
    ret c                                         ; $464e: $d8

    ret c                                         ; $464f: $d8

    rrca                                          ; $4650: $0f
    ld [hl], c                                    ; $4651: $71
    xor l                                         ; $4652: $ad
    or a                                          ; $4653: $b7
    rst $00                                       ; $4654: $c7
    rst $08                                       ; $4655: $cf
    ld [bc], a                                    ; $4656: $02
    ld sp, hl                                     ; $4657: $f9
    ld [hl], e                                    ; $4658: $73
    sub e                                         ; $4659: $93
    ld h, d                                       ; $465a: $62
    inc sp                                        ; $465b: $33
    ld [hl], a                                    ; $465c: $77
    ldh a, [$a2]                                  ; $465d: $f0 $a2
    sub h                                         ; $465f: $94
    sub l                                         ; $4660: $95
    ret c                                         ; $4661: $d8

    call z, $243b                                 ; $4662: $cc $3b $24
    rlca                                          ; $4665: $07
    ret                                           ; $4666: $c9


    ld h, e                                       ; $4667: $63
    dec bc                                        ; $4668: $0b
    inc d                                         ; $4669: $14
    add e                                         ; $466a: $83
    cp a                                          ; $466b: $bf
    add $82                                       ; $466c: $c6 $82
    push bc                                       ; $466e: $c5
    adc b                                         ; $466f: $88
    ld a, a                                       ; $4670: $7f
    pop bc                                        ; $4671: $c1
    jp nc, $fdbf                                  ; $4672: $d2 $bf $fd

    inc d                                         ; $4675: $14
    res 7, h                                      ; $4676: $cb $bc

jr_039_4678:
    ld l, b                                       ; $4678: $68
    ld b, b                                       ; $4679: $40
    and d                                         ; $467a: $a2
    inc [hl]                                      ; $467b: $34
    ld c, l                                       ; $467c: $4d
    db $d3                                        ; $467d: $d3
    ld h, $7d                                     ; $467e: $26 $7d
    db $ec                                        ; $4680: $ec
    ei                                            ; $4681: $fb
    xor h                                         ; $4682: $ac
    dec de                                        ; $4683: $1b
    db $fc                                        ; $4684: $fc
    ld [hl], l                                    ; $4685: $75
    ld l, h                                       ; $4686: $6c
    ld [bc], a                                    ; $4687: $02
    inc l                                         ; $4688: $2c
    call Call_000_038c                            ; $4689: $cd $8c $03
    ld h, c                                       ; $468c: $61
    ld a, [bc]                                    ; $468d: $0a
    ld l, c                                       ; $468e: $69
    ld c, $09                                     ; $468f: $0e $09
    db $fc                                        ; $4691: $fc
    push af                                       ; $4692: $f5
    ld a, l                                       ; $4693: $7d
    sub $1d                                       ; $4694: $d6 $1d
    inc c                                         ; $4696: $0c
    ld d, e                                       ; $4697: $53
    ld [hl], a                                    ; $4698: $77
    call nz, $f017                                ; $4699: $c4 $17 $f0
    sbc [hl]                                      ; $469c: $9e
    xor e                                         ; $469d: $ab
    jp $fe0d                                      ; $469e: $c3 $0d $fe


    cp d                                          ; $46a1: $ba
    pop bc                                        ; $46a2: $c1
    rra                                           ; $46a3: $1f
    db $f4                                        ; $46a4: $f4
    ldh a, [$93]                                  ; $46a5: $f0 $93
    or d                                          ; $46a7: $b2
    ld a, [c]                                     ; $46a8: $f2
    dec d                                         ; $46a9: $15
    ld a, a                                       ; $46aa: $7f
    ld c, [hl]                                    ; $46ab: $4e
    sbc e                                         ; $46ac: $9b
    ret nz                                        ; $46ad: $c0

    ld e, a                                       ; $46ae: $5f
    rst $28                                       ; $46af: $ef
    inc h                                         ; $46b0: $24
    pop de                                        ; $46b1: $d1
    xor [hl]                                      ; $46b2: $ae
    ld c, $69                                     ; $46b3: $0e $69
    ld h, [hl]                                    ; $46b5: $66
    ld e, c                                       ; $46b6: $59
    rst $30                                       ; $46b7: $f7
    ld l, [hl]                                    ; $46b8: $6e
    jp z, $8b9f                                   ; $46b9: $ca $9f $8b

    db $fc                                        ; $46bc: $fc
    ld a, c                                       ; $46bd: $79
    ld l, a                                       ; $46be: $6f
    sbc $b4                                       ; $46bf: $de $b4
    jp Jump_039_59b1                              ; $46c1: $c3 $b1 $59


    or b                                          ; $46c4: $b0
    ret nc                                        ; $46c5: $d0

    pop bc                                        ; $46c6: $c1
    or b                                          ; $46c7: $b0
    ld [hl], h                                    ; $46c8: $74
    ret nc                                        ; $46c9: $d0

    add d                                         ; $46ca: $82
    db $fc                                        ; $46cb: $fc
    add l                                         ; $46cc: $85
    or l                                          ; $46cd: $b5
    rst $10                                       ; $46ce: $d7
    dec e                                         ; $46cf: $1d
    pop af                                        ; $46d0: $f1
    dec b                                         ; $46d1: $05
    cp h                                          ; $46d2: $bc
    jr c, jr_039_46e5                             ; $46d3: $38 $10

    and [hl]                                      ; $46d5: $a6
    ld a, $57                                     ; $46d6: $3e $57
    add a                                         ; $46d8: $87
    xor e                                         ; $46d9: $ab
    ld d, l                                       ; $46da: $55
    pop af                                        ; $46db: $f1
    rra                                           ; $46dc: $1f
    add a                                         ; $46dd: $87
    jp hl                                         ; $46de: $e9


    or $f6                                        ; $46df: $f6 $f6
    ld [hl], a                                    ; $46e1: $77
    ld de, $26d2                                  ; $46e2: $11 $d2 $26

jr_039_46e5:
    add a                                         ; $46e5: $87
    push hl                                       ; $46e6: $e5
    ld e, h                                       ; $46e7: $5c
    ld d, h                                       ; $46e8: $54
    db $fc                                        ; $46e9: $fc
    ld d, l                                       ; $46ea: $55
    add a                                         ; $46eb: $87
    call nc, $c4b1                                ; $46ec: $d4 $b1 $c4
    rst $20                                       ; $46ef: $e7
    xor a                                         ; $46f0: $af
    adc [hl]                                      ; $46f1: $8e
    dec l                                         ; $46f2: $2d
    ld [hl], e                                    ; $46f3: $73
    jr nz, jr_039_4742                            ; $46f4: $20 $4c

    ei                                            ; $46f6: $fb
    dec d                                         ; $46f7: $15
    sbc [hl]                                      ; $46f8: $9e
    ld a, e                                       ; $46f9: $7b
    inc b                                         ; $46fa: $04
    ld d, h                                       ; $46fb: $54
    ei                                            ; $46fc: $fb
    xor b                                         ; $46fd: $a8
    ld d, [hl]                                    ; $46fe: $56
    ld h, l                                       ; $46ff: $65
    sbc l                                         ; $4700: $9d
    push bc                                       ; $4701: $c5
    xor [hl]                                      ; $4702: $ae
    or a                                          ; $4703: $b7
    rst $00                                       ; $4704: $c7
    ret c                                         ; $4705: $d8

    db $fc                                        ; $4706: $fc
    add c                                         ; $4707: $81
    ld de, $1cd2                                  ; $4708: $11 $d2 $1c
    ld c, c                                       ; $470b: $49
    ld h, c                                       ; $470c: $61
    inc [hl]                                      ; $470d: $34
    sub [hl]                                      ; $470e: $96
    add hl, sp                                    ; $470f: $39
    db $10                                        ; $4710: $10
    and [hl]                                      ; $4711: $a6
    push bc                                       ; $4712: $c5
    ldh a, [$83]                                  ; $4713: $f0 $83
    add $82                                       ; $4715: $c6 $82
    push bc                                       ; $4717: $c5
    adc b                                         ; $4718: $88
    ld a, a                                       ; $4719: $7f
    and c                                         ; $471a: $a1
    ld e, a                                       ; $471b: $5f
    ld h, c                                       ; $471c: $61
    sbc d                                         ; $471d: $9a
    inc bc                                        ; $471e: $03
    ld b, e                                       ; $471f: $43
    push de                                       ; $4720: $d5
    jr c, jr_039_4739                             ; $4721: $38 $16

    db $ed                                        ; $4723: $ed
    and e                                         ; $4724: $a3
    xor h                                         ; $4725: $ac
    ld a, h                                       ; $4726: $7c
    push bc                                       ; $4727: $c5
    rra                                           ; $4728: $1f
    ld b, d                                       ; $4729: $42
    or l                                          ; $472a: $b5
    ld [$fc5e], a                                 ; $472b: $ea $5e $fc
    sub l                                         ; $472e: $95
    ld a, h                                       ; $472f: $7c
    ld [hl], a                                    ; $4730: $77
    db $f4                                        ; $4731: $f4
    xor $00                                       ; $4732: $ee $00
    adc e                                         ; $4734: $8b
    sbc e                                         ; $4735: $9b
    inc d                                         ; $4736: $14
    sbc e                                         ; $4737: $9b
    ld a, c                                       ; $4738: $79

jr_039_4739:
    ld a, [$8f0e]                                 ; $4739: $fa $0e $8f
    db $ed                                        ; $473c: $ed
    inc l                                         ; $473d: $2c
    rla                                           ; $473e: $17
    adc l                                         ; $473f: $8d
    xor e                                         ; $4740: $ab
    inc hl                                        ; $4741: $23

jr_039_4742:
    ld a, a                                       ; $4742: $7f
    ld d, $e7                                     ; $4743: $16 $e7
    add $56                                       ; $4745: $c6 $56
    ld a, a                                       ; $4747: $7f
    xor h                                         ; $4748: $ac
    ld d, [hl]                                    ; $4749: $56
    push de                                       ; $474a: $d5
    adc [hl]                                      ; $474b: $8e
    ld [hl], l                                    ; $474c: $75
    ld b, a                                       ; $474d: $47
    ld a, h                                       ; $474e: $7c
    ld bc, $1d6f                                  ; $474f: $01 $6f $1d
    adc e                                         ; $4752: $8b
    sub a                                         ; $4753: $97
    ld b, b                                       ; $4754: $40
    ld e, b                                       ; $4755: $58
    cp h                                          ; $4756: $bc
    cp l                                          ; $4757: $bd
    db $fd                                        ; $4758: $fd
    ld e, l                                       ; $4759: $5d
    add h                                         ; $475a: $84
    inc [hl]                                      ; $475b: $34
    rlca                                          ; $475c: $07
    di                                            ; $475d: $f3
    xor h                                         ; $475e: $ac
    xor [hl]                                      ; $475f: $ae
    ld h, e                                       ; $4760: $63
    dec sp                                        ; $4761: $3b
    bit 0, l                                      ; $4762: $cb $45
    db $e3                                        ; $4764: $e3
    ld [$12dc], a                                 ; $4765: $ea $dc $12
    inc bc                                        ; $4768: $03
    inc [hl]                                      ; $4769: $34
    cp b                                          ; $476a: $b8
    jp nz, $6373                                  ; $476b: $c2 $73 $63

    xor e                                         ; $476e: $ab
    ld a, l                                       ; $476f: $7d
    ld d, h                                       ; $4770: $54
    xor e                                         ; $4771: $ab
    ld l, d                                       ; $4772: $6a
    rst $00                                       ; $4773: $c7
    cp d                                          ; $4774: $ba
    inc hl                                        ; $4775: $23
    cp [hl]                                       ; $4776: $be
    add b                                         ; $4777: $80
    rst $30                                       ; $4778: $f7
    halt                                          ; $4779: $76
    dec e                                         ; $477a: $1d
    ld l, h                                       ; $477b: $6c
    db $ec                                        ; $477c: $ec
    add a                                         ; $477d: $87
    cp b                                          ; $477e: $b8
    sub $db                                       ; $477f: $d6 $db
    rst $08                                       ; $4781: $cf
    ld d, d                                       ; $4782: $52
    ld h, a                                       ; $4783: $67
    sbc $de                                       ; $4784: $de $de
    cp $2e                                        ; $4786: $fe $2e
    ld b, d                                       ; $4788: $42
    jp c, $fe04                                   ; $4789: $da $04 $fe

    ld a, d                                       ; $478c: $7a
    or a                                          ; $478d: $b7
    ld l, b                                       ; $478e: $68
    ld d, a                                       ; $478f: $57
    add a                                         ; $4790: $87
    db $f4                                        ; $4791: $f4
    dec hl                                        ; $4792: $2b
    cp $ea                                        ; $4793: $fe $ea
    ret c                                         ; $4795: $d8

    ld c, $fc                                     ; $4796: $0e $fc
    cpl                                           ; $4798: $2f
    dec e                                         ; $4799: $1d
    pop af                                        ; $479a: $f1
    dec b                                         ; $479b: $05
    cp h                                          ; $479c: $bc
    or a                                          ; $479d: $b7
    db $eb                                        ; $479e: $eb
    ld h, b                                       ; $479f: $60
    ld h, e                                       ; $47a0: $63
    ccf                                           ; $47a1: $3f
    call nz, $deb5                                ; $47a2: $c4 $b5 $de
    ld [hl+], a                                   ; $47a5: $22
    ld a, a                                       ; $47a6: $7f
    sbc $9b                                       ; $47a7: $de $9b
    ld [hl], a                                    ; $47a9: $77
    ld c, b                                       ; $47aa: $48
    ld c, $f3                                     ; $47ab: $0e $f3
    add [hl]                                      ; $47ad: $86
    xor c                                         ; $47ae: $a9
    or a                                          ; $47af: $b7
    ld c, c                                       ; $47b0: $49
    ld a, a                                       ; $47b1: $7f
    ld l, a                                       ; $47b2: $6f
    rst $20                                       ; $47b3: $e7
    ld [$0d8f], a                                 ; $47b4: $ea $8f $0d
    add h                                         ; $47b7: $84
    and d                                         ; $47b8: $a2
    sbc a                                         ; $47b9: $9f
    inc [hl]                                      ; $47ba: $34
    sub e                                         ; $47bb: $93
    ld l, e                                       ; $47bc: $6b
    inc e                                         ; $47bd: $1c
    ld [hl-], a                                   ; $47be: $32
    add hl, hl                                    ; $47bf: $29
    adc e                                         ; $47c0: $8b
    xor h                                         ; $47c1: $ac
    add e                                         ; $47c2: $83
    rst $10                                       ; $47c3: $d7
    ld d, [hl]                                    ; $47c4: $56
    add a                                         ; $47c5: $87
    and h                                         ; $47c6: $a4
    add hl, sp                                    ; $47c7: $39
    adc h                                         ; $47c8: $8c
    sub [hl]                                      ; $47c9: $96
    ld l, l                                       ; $47ca: $6d
    ld h, [hl]                                    ; $47cb: $66
    db $e4                                        ; $47cc: $e4
    rst $08                                       ; $47cd: $cf
    rst $08                                       ; $47ce: $cf
    sbc e                                         ; $47cf: $9b
    halt                                          ; $47d0: $76
    db $f4                                        ; $47d1: $f4
    rla                                           ; $47d2: $17
    ld [hl], b                                    ; $47d3: $70
    ld d, a                                       ; $47d4: $57
    ld c, c                                       ; $47d5: $49
    ccf                                           ; $47d6: $3f
    ld a, e                                       ; $47d7: $7b
    xor $fd                                       ; $47d8: $ee $fd
    ld h, e                                       ; $47da: $63
    rlca                                          ; $47db: $07
    ld a, $62                                     ; $47dc: $3e $62
    ld e, b                                       ; $47de: $58
    ldh [$dc], a                                  ; $47df: $e0 $dc
    cp e                                          ; $47e1: $bb
    ld [hl], a                                    ; $47e2: $77
    dec de                                        ; $47e3: $1b
    db $fc                                        ; $47e4: $fc
    ld d, l                                       ; $47e5: $55
    ld a, e                                       ; $47e6: $7b
    ei                                            ; $47e7: $fb
    ld d, a                                       ; $47e8: $57
    ld e, e                                       ; $47e9: $5b
    cp h                                          ; $47ea: $bc
    or l                                          ; $47eb: $b5
    sub b                                         ; $47ec: $90
    inc de                                        ; $47ed: $13
    rra                                           ; $47ee: $1f
    push af                                       ; $47ef: $f5
    cp c                                          ; $47f0: $b9
    ld a, [$3623]                                 ; $47f1: $fa $23 $36
    ld hl, sp-$55                                 ; $47f4: $f8 $ab
    or $51                                        ; $47f6: $f6 $51
    sub $42                                       ; $47f8: $d6 $42
    ld a, d                                       ; $47fa: $7a
    rlca                                          ; $47fb: $07
    ld a, b                                       ; $47fc: $78
    sbc e                                         ; $47fd: $9b
    db $fc                                        ; $47fe: $fc
    ld b, l                                       ; $47ff: $45
    add $74                                       ; $4800: $c6 $74
    call nc, Call_039_6005                        ; $4802: $d4 $05 $60
    ld l, c                                       ; $4805: $69
    and $77                                       ; $4806: $e6 $77
    ld d, c                                       ; $4808: $51
    jp nz, $f7db                                  ; $4809: $c2 $db $f7

    ld e, c                                       ; $480c: $59
    rrca                                          ; $480d: $0f
    ret                                           ; $480e: $c9


    ld bc, $fc09                                  ; $480f: $01 $09 $fc
    push af                                       ; $4812: $f5
    ld e, l                                       ; $4813: $5d
    inc b                                         ; $4814: $04
    pop hl                                        ; $4815: $e1
    ld [hl], e                                    ; $4816: $73
    ld [hl], l                                    ; $4817: $75
    ld c, b                                       ; $4818: $48
    inc sp                                        ; $4819: $33
    inc de                                        ; $481a: $13
    sbc a                                         ; $481b: $9f
    ld d, d                                       ; $481c: $52
    ld l, a                                       ; $481d: $6f
    ld [hl], l                                    ; $481e: $75
    cp b                                          ; $481f: $b8
    inc hl                                        ; $4820: $23
    cp [hl]                                       ; $4821: $be
    add b                                         ; $4822: $80
    ld [hl], a                                    ; $4823: $77
    ld c, b                                       ; $4824: $48
    ld b, a                                       ; $4825: $47
    add a                                         ; $4826: $87
    inc d                                         ; $4827: $14
    db $fd                                        ; $4828: $fd
    cp h                                          ; $4829: $bc
    ld d, l                                       ; $482a: $55
    adc e                                         ; $482b: $8b
    push de                                       ; $482c: $d5
    ld a, a                                       ; $482d: $7f
    or a                                          ; $482e: $b7
    or c                                          ; $482f: $b1
    ld c, l                                       ; $4830: $4d
    cp [hl]                                       ; $4831: $be
    or d                                          ; $4832: $b2
    ei                                            ; $4833: $fb
    rla                                           ; $4834: $17
    ret nz                                        ; $4835: $c0

    ld hl, $0939                                  ; $4836: $21 $39 $09
    db $fc                                        ; $4839: $fc
    dec d                                         ; $483a: $15
    cpl                                           ; $483b: $2f
    ld c, d                                       ; $483c: $4a
    pop bc                                        ; $483d: $c1
    ld h, l                                       ; $483e: $65
    adc l                                         ; $483f: $8d
    ld l, b                                       ; $4840: $68
    jp hl                                         ; $4841: $e9


    ld b, $7f                                     ; $4842: $06 $7f
    ret nc                                        ; $4844: $d0

    ld [hl], a                                    ; $4845: $77
    pop af                                        ; $4846: $f1
    rst $10                                       ; $4847: $d7
    call z, $dbcf                                 ; $4848: $cc $cf $db
    adc c                                         ; $484b: $89
    sbc e                                         ; $484c: $9b
    ld l, h                                       ; $484d: $6c
    add hl, sp                                    ; $484e: $39
    ld h, d                                       ; $484f: $62
    db $dd                                        ; $4850: $dd
    dec sp                                        ; $4851: $3b
    ld c, c                                       ; $4852: $49
    or h                                          ; $4853: $b4
    adc e                                         ; $4854: $8b
    pop bc                                        ; $4855: $c1
    sbc a                                         ; $4856: $9f
    and l                                         ; $4857: $a5
    ld b, a                                       ; $4858: $47
    ld b, b                                       ; $4859: $40
    adc a                                         ; $485a: $8f
    sub b                                         ; $485b: $90
    ld [hl+], a                                   ; $485c: $22
    ld a, a                                       ; $485d: $7f
    ld [hl], c                                    ; $485e: $71
    inc c                                         ; $485f: $0c
    db $10                                        ; $4860: $10
    sbc $34                                       ; $4861: $de $34
    rlca                                          ; $4863: $07
    db $e3                                        ; $4864: $e3
    rst $08                                       ; $4865: $cf
    ld l, e                                       ; $4866: $6b
    cp c                                          ; $4867: $b9
    ld a, l                                       ; $4868: $7d
    ld b, l                                       ; $4869: $45
    ld [hl], h                                    ; $486a: $74
    ldh a, [$da]                                  ; $486b: $f0 $da
    ld [hl-], a                                   ; $486d: $32
    ld a, [hl-]                                   ; $486e: $3a
    di                                            ; $486f: $f3
    ld [hl+], a                                   ; $4870: $22
    inc h                                         ; $4871: $24
    xor [hl]                                      ; $4872: $ae
    or $36                                        ; $4873: $f6 $36
    adc [hl]                                      ; $4875: $8e
    ld [hl-], a                                   ; $4876: $32
    rst $38                                       ; $4877: $ff
    ld [hl], c                                    ; $4878: $71
    ld d, b                                       ; $4879: $50
    res 4, b                                      ; $487a: $cb $a0
    push bc                                       ; $487c: $c5
    or c                                          ; $487d: $b1
    ld l, c                                       ; $487e: $69
    ld h, a                                       ; $487f: $67
    ld sp, hl                                     ; $4880: $f9
    ld hl, $28ee                                  ; $4881: $21 $ee $28
    ld [hl], c                                    ; $4884: $71
    and b                                         ; $4885: $a0
    db $d3                                        ; $4886: $d3
    ld [hl-], a                                   ; $4887: $32
    adc d                                         ; $4888: $8a
    add e                                         ; $4889: $83
    add b                                         ; $488a: $80
    sub d                                         ; $488b: $92
    push de                                       ; $488c: $d5
    cp c                                          ; $488d: $b9
    ld a, b                                       ; $488e: $78
    pop de                                        ; $488f: $d1
    cp a                                          ; $4890: $bf
    sbc c                                         ; $4891: $99
    xor e                                         ; $4892: $ab
    dec l                                         ; $4893: $2d
    sbc l                                         ; $4894: $9d
    rst $30                                       ; $4895: $f7
    ld [de], a                                    ; $4896: $12
    ld sp, hl                                     ; $4897: $f9
    ld d, b                                       ; $4898: $50
    ld [hl], c                                    ; $4899: $71
    ldh a, [rTAC]                                 ; $489a: $f0 $07
    ld l, c                                       ; $489c: $69
    add hl, de                                    ; $489d: $19
    ld c, l                                       ; $489e: $4d
    halt                                          ; $489f: $76
    ldh a, [$b7]                                  ; $48a0: $f0 $b7
    add [hl]                                      ; $48a2: $86
    jp hl                                         ; $48a3: $e9


    dec sp                                        ; $48a4: $3b
    adc e                                         ; $48a5: $8b
    ld e, b                                       ; $48a6: $58
    ld d, a                                       ; $48a7: $57
    xor l                                         ; $48a8: $ad
    ld l, $a3                                     ; $48a9: $2e $a3
    cpl                                           ; $48ab: $2f
    ret                                           ; $48ac: $c9


    inc a                                         ; $48ad: $3c
    ld a, [hl]                                    ; $48ae: $7e
    ld c, $a3                                     ; $48af: $0e $a3
    inc de                                        ; $48b1: $13
    rra                                           ; $48b2: $1f
    ld [hl], l                                    ; $48b3: $75
    dec e                                         ; $48b4: $1d
    ld e, e                                       ; $48b5: $5b
    and $40                                       ; $48b6: $e6 $40
    sbc b                                         ; $48b8: $98
    or $2b                                        ; $48b9: $f6 $2b
    ld c, h                                       ; $48bb: $4c
    ld [hl], e                                    ; $48bc: $73
    inc hl                                        ; $48bd: $23
    cp [hl]                                       ; $48be: $be
    add b                                         ; $48bf: $80
    rla                                           ; $48c0: $17
    rlca                                          ; $48c1: $07
    jp nz, $b3b4                                  ; $48c2: $c2 $b4 $b3

    ld a, [hl+]                                   ; $48c5: $2a
    inc b                                         ; $48c6: $04
    add l                                         ; $48c7: $85
    dec e                                         ; $48c8: $1d
    dec d                                         ; $48c9: $15
    sub h                                         ; $48ca: $94
    add $3d                                       ; $48cb: $c6 $3d
    ld hl, sp-$73                                 ; $48cd: $f8 $8d
    ld a, [hl-]                                   ; $48cf: $3a
    rlca                                          ; $48d0: $07
    inc hl                                        ; $48d1: $23
    cp [hl]                                       ; $48d2: $be
    add b                                         ; $48d3: $80
    rla                                           ; $48d4: $17
    rlca                                          ; $48d5: $07
    jp nz, $8cb4                                  ; $48d6: $c2 $b4 $8c

    adc d                                         ; $48d9: $8a
    jp nc, $b418                                  ; $48da: $d2 $18 $b4

    ld [hl], h                                    ; $48dd: $74
    call nc, Call_000_3375                        ; $48de: $d4 $75 $33
    dec sp                                        ; $48e1: $3b
    ld h, $07                                     ; $48e2: $26 $07
    inc hl                                        ; $48e4: $23
    cp [hl]                                       ; $48e5: $be
    add b                                         ; $48e6: $80
    rla                                           ; $48e7: $17
    rlca                                          ; $48e8: $07
    jp nz, $8cb4                                  ; $48e9: $c2 $b4 $8c

    ld [c], a                                     ; $48ec: $e2
    db $ec                                        ; $48ed: $ec
    sub d                                         ; $48ee: $92
    ld l, d                                       ; $48ef: $6a
    ld c, e                                       ; $48f0: $4b
    ld b, a                                       ; $48f1: $47
    ld c, b                                       ; $48f2: $48
    sbc b                                         ; $48f3: $98
    ccf                                           ; $48f4: $3f
    ld c, e                                       ; $48f5: $4b
    ld c, $23                                     ; $48f6: $0e $23
    cp [hl]                                       ; $48f8: $be
    add b                                         ; $48f9: $80
    rla                                           ; $48fa: $17
    rlca                                          ; $48fb: $07
    jp nz, $23b4                                  ; $48fc: $c2 $b4 $23

    cp a                                          ; $48ff: $bf
    inc c                                         ; $4900: $0c

Call_039_4901:
    add $56                                       ; $4901: $c6 $56
    ld e, e                                       ; $4903: $5b
    ld a, [hl-]                                   ; $4904: $3a
    ld l, h                                       ; $4905: $6c
    ld l, h                                       ; $4906: $6c
    ld [hl], h                                    ; $4907: $74
    ld c, $a3                                     ; $4908: $0e $a3
    ccf                                           ; $490a: $3f
    ld [hl], $10                                  ; $490b: $36 $10
    ld a, d                                       ; $490d: $7a
    inc b                                         ; $490e: $04
    ld d, h                                       ; $490f: $54
    ld a, e                                       ; $4910: $7b
    set 4, h                                      ; $4911: $cb $e4
    adc a                                         ; $4913: $8f
    cp $cd                                        ; $4914: $fe $cd
    cp h                                          ; $4916: $bc
    db $e4                                        ; $4917: $e4
    call nz, $deb7                                ; $4918: $c4 $b7 $de
    add hl, de                                    ; $491b: $19

Jump_039_491c:
    dec sp                                        ; $491c: $3b
    jp c, Jump_000_0e31                           ; $491d: $da $31 $0e

    ld d, h                                       ; $4920: $54
    xor e                                         ; $4921: $ab
    ld a, [de]                                    ; $4922: $1a
    xor $1f                                       ; $4923: $ee $1f
    xor e                                         ; $4925: $ab
    cp a                                          ; $4926: $bf
    sub b                                         ; $4927: $90
    ld e, b                                       ; $4928: $58
    res 1, h                                      ; $4929: $cb $8c
    add hl, sp                                    ; $492b: $39
    or e                                          ; $492c: $b3
    xor e                                         ; $492d: $ab
    dec a                                         ; $492e: $3d
    ld [hl], a                                    ; $492f: $77
    sub h                                         ; $4930: $94
    ld e, h                                       ; $4931: $5c
    add h                                         ; $4932: $84
    ld de, $292f                                  ; $4933: $11 $2f $29
    ld [hl], e                                    ; $4936: $73
    ld b, b                                       ; $4937: $40
    ld l, $05                                     ; $4938: $2e $05
    ld a, l                                       ; $493a: $7d
    rra                                           ; $493b: $1f
    ret nz                                        ; $493c: $c0

    ld d, l                                       ; $493d: $55
    dec bc                                        ; $493e: $0b
    sbc $b2                                       ; $493f: $de $b2
    adc [hl]                                      ; $4941: $8e
    ld l, d                                       ; $4942: $6a
    ld l, a                                       ; $4943: $6f
    add hl, de                                    ; $4944: $19
    ld a, l                                       ; $4945: $7d
    ld c, a                                       ; $4946: $4f
    db $e4                                        ; $4947: $e4
    rrca                                          ; $4948: $0f
    ld e, a                                       ; $4949: $5f
    and d                                         ; $494a: $a2
    ld b, d                                       ; $494b: $42
    bit 6, [hl]                                   ; $494c: $cb $76
    ld e, h                                       ; $494e: $5c
    ret                                           ; $494f: $c9


    inc l                                         ; $4950: $2c
    dec a                                         ; $4951: $3d
    ld [bc], a                                    ; $4952: $02
    ld [$0ed8], a                                 ; $4953: $ea $d8 $0e
    db $fc                                        ; $4956: $fc
    cpl                                           ; $4957: $2f
    ld h, l                                       ; $4958: $65
    ld a, [c]                                     ; $4959: $f2
    ld b, a                                       ; $495a: $47
    rst $38                                       ; $495b: $ff
    ld h, [hl]                                    ; $495c: $66
    sbc $b4                                       ; $495d: $de $b4
    di                                            ; $495f: $f3
    add [hl]                                      ; $4960: $86
    add hl, hl                                    ; $4961: $29
    ld [hl], l                                    ; $4962: $75
    ldh a, [rTAC]                                 ; $4963: $f0 $07
    and l                                         ; $4965: $a5
    pop hl                                        ; $4966: $e1
    call z, $bddb                                 ; $4967: $cc $db $bd
    ld hl, sp-$55                                 ; $496a: $f8 $ab
    ld h, e                                       ; $496c: $63
    dec sp                                        ; $496d: $3b
    ldh a, [$bf]                                  ; $496e: $f0 $bf
    db $f4                                        ; $4970: $f4
    add h                                         ; $4971: $84
    call nz, $aeb7                                ; $4972: $c4 $b7 $ae
    cp $7d                                        ; $4975: $fe $7d
    ld d, $75                                     ; $4977: $16 $75
    and h                                         ; $4979: $a4
    add hl, sp                                    ; $497a: $39
    ld c, c                                       ; $497b: $49
    ld a, a                                       ; $497c: $7f
    ld l, a                                       ; $497d: $6f
    ld a, $37                                     ; $497e: $3e $37
    ld sp, hl                                     ; $4980: $f9
    ld h, a                                       ; $4981: $67
    ld [de], a                                    ; $4982: $12
    ld a, [hl-]                                   ; $4983: $3a
    call $8c01                                    ; $4984: $cd $01 $8c
    sub [hl]                                      ; $4987: $96
    ld l, l                                       ; $4988: $6d
    ld h, [hl]                                    ; $4989: $66
    db $e4                                        ; $498a: $e4
    rst $08                                       ; $498b: $cf
    rst $08                                       ; $498c: $cf
    sbc e                                         ; $498d: $9b
    halt                                          ; $498e: $76
    inc [hl]                                      ; $498f: $34
    ld c, c                                       ; $4990: $49
    or h                                          ; $4991: $b4
    xor e                                         ; $4992: $ab
    ld b, e                                       ; $4993: $43
    ld a, d                                       ; $4994: $7a
    ld [$eb2f], a                                 ; $4995: $ea $2f $eb
    jr c, @-$34                                   ; $4998: $38 $ca

    ld d, h                                       ; $499a: $54
    db $fc                                        ; $499b: $fc
    ld a, c                                       ; $499c: $79
    ei                                            ; $499d: $fb
    ld c, h                                       ; $499e: $4c
    add hl, bc                                    ; $499f: $09
    rst $28                                       ; $49a0: $ef
    cp c                                          ; $49a1: $b9
    sbc a                                         ; $49a2: $9f
    or l                                          ; $49a3: $b5
    db $f4                                        ; $49a4: $f4
    ld d, b                                       ; $49a5: $50
    adc b                                         ; $49a6: $88
    and l                                         ; $49a7: $a5
    ld c, $6d                                     ; $49a8: $0e $6d
    add hl, hl                                    ; $49aa: $29
    ld h, e                                       ; $49ab: $63
    db $10                                        ; $49ac: $10
    ret nc                                        ; $49ad: $d0

    xor a                                         ; $49ae: $af
    adc b                                         ; $49af: $88
    ld [$4770], a                                 ; $49b0: $ea $70 $47
    inc h                                         ; $49b3: $24
    ld [de], a                                    ; $49b4: $12
    sub [hl]                                      ; $49b5: $96
    ld l, d                                       ; $49b6: $6a
    ld sp, hl                                     ; $49b7: $f9
    ld l, d                                       ; $49b8: $6a
    inc e                                         ; $49b9: $1c
    ld l, a                                       ; $49ba: $6f
    ld [hl], c                                    ; $49bb: $71
    ld b, b                                       ; $49bc: $40
    ld c, b                                       ; $49bd: $48
    rst $08                                       ; $49be: $cf
    ld e, e                                       ; $49bf: $5b
    or l                                          ; $49c0: $b5
    cp d                                          ; $49c1: $ba
    adc [hl]                                      ; $49c2: $8e
    db $ed                                        ; $49c3: $ed
    db $ec                                        ; $49c4: $ec
    pop bc                                        ; $49c5: $c1
    ld l, a                                       ; $49c6: $6f
    ld d, $fe                                     ; $49c7: $16 $fe
    cp h                                          ; $49c9: $bc
    dec a                                         ; $49ca: $3d
    ld a, $7f                                     ; $49cb: $3e $7f
    sbc $34                                       ; $49cd: $de $34
    rlca                                          ; $49cf: $07
    ret                                           ; $49d0: $c9


    sbc a                                         ; $49d1: $9f
    jp nc, $dceb                                  ; $49d2: $d2 $eb $dc

    ld d, c                                       ; $49d5: $51
    ld [hl], d                                    ; $49d6: $72
    ld de, $bc46                                  ; $49d7: $11 $46 $bc
    and h                                         ; $49da: $a4
    call z, $b901                                 ; $49db: $cc $01 $b9
    inc d                                         ; $49de: $14
    and h                                         ; $49df: $a4
    add hl, sp                                    ; $49e0: $39
    ret                                           ; $49e1: $c9


    sbc a                                         ; $49e2: $9f
    jp nc, $dceb                                  ; $49e3: $d2 $eb $dc

    db $e4                                        ; $49e6: $e4
    cpl                                           ; $49e7: $2f
    ld [hl-], a                                   ; $49e8: $32
    and $dc                                       ; $49e9: $e6 $dc
    ei                                            ; $49eb: $fb
    rst $00                                       ; $49ec: $c7
    ld [de], a                                    ; $49ed: $12
    and h                                         ; $49ee: $a4
    daa                                           ; $49ef: $27
    ld d, b                                       ; $49f0: $50
    dec e                                         ; $49f1: $1d
    db $fc                                        ; $49f2: $fc
    push af                                       ; $49f3: $f5
    add l                                         ; $49f4: $85
    and l                                         ; $49f5: $a5
    rst $08                                       ; $49f6: $cf
    ld [hl-], a                                   ; $49f7: $32
    ld h, e                                       ; $49f8: $63
    ld c, $a3                                     ; $49f9: $0e $a3
    db $e4                                        ; $49fb: $e4
    ld [hl+], a                                   ; $49fc: $22
    adc h                                         ; $49fd: $8c
    ld a, b                                       ; $49fe: $78
    ld c, c                                       ; $49ff: $49
    sbc c                                         ; $4a00: $99
    ei                                            ; $4a01: $fb
    rlca                                          ; $4a02: $07
    call c, $a1f7                                 ; $4a03: $dc $f7 $a1
    ld b, a                                       ; $4a06: $47
    ld c, b                                       ; $4a07: $48
    cp a                                          ; $4a08: $bf
    ld [hl+], a                                   ; $4a09: $22
    ld [hl-], a                                   ; $4a0a: $32
    add e                                         ; $4a0b: $83
    db $fc                                        ; $4a0c: $fc
    call z, Call_000_2e7b                         ; $4a0d: $cc $7b $2e
    sub e                                         ; $4a10: $93
    ccf                                           ; $4a11: $3f
    ld a, [$f337]                                 ; $4a12: $fa $37 $f3
    sub d                                         ; $4a15: $92
    inc de                                        ; $4a16: $13
    rst $18                                       ; $4a17: $df
    cp d                                          ; $4a18: $ba
    ld h, h                                       ; $4a19: $64
    ld d, l                                       ; $4a1a: $55
    sub $78                                       ; $4a1b: $d6 $78
    ld c, c                                       ; $4a1d: $49
    and $4d                                       ; $4a1e: $e6 $4d
    sbc e                                         ; $4a20: $9b
    db $fc                                        ; $4a21: $fc
    inc sp                                        ; $4a22: $33
    add hl, bc                                    ; $4a23: $09
    db $dd                                        ; $4a24: $dd
    rst $30                                       ; $4a25: $f7
    and c                                         ; $4a26: $a1
    ld b, a                                       ; $4a27: $47
    ld c, b                                       ; $4a28: $48
    inc sp                                        ; $4a29: $33
    db $e3                                        ; $4a2a: $e3
    rst $08                                       ; $4a2b: $cf
    ldh [$5c], a                                  ; $4a2c: $e0 $5c
    db $fd                                        ; $4a2e: $fd
    ld de, $fc1b                                  ; $4a2f: $11 $1b $fc
    push af                                       ; $4a32: $f5
    add l                                         ; $4a33: $85
    and l                                         ; $4a34: $a5
    add e                                         ; $4a35: $83
    ld h, c                                       ; $4a36: $61
    ld c, d                                       ; $4a37: $4a
    dec e                                         ; $4a38: $1d
    db $fc                                        ; $4a39: $fc
    ld b, c                                       ; $4a3a: $41
    rst $28                                       ; $4a3b: $ef
    and [hl]                                      ; $4a3c: $a6
    db $fc                                        ; $4a3d: $fc
    cp c                                          ; $4a3e: $b9
    ld b, h                                       ; $4a3f: $44
    xor h                                         ; $4a40: $ac
    or $f6                                        ; $4a41: $f6 $f6
    or $77                                        ; $4a43: $f6 $77
    db $d3                                        ; $4a45: $d3
    inc e                                         ; $4a46: $1c
    or e                                          ; $4a47: $b3
    cp $73                                        ; $4a48: $fe $73
    adc l                                         ; $4a4a: $8d
    cp l                                          ; $4a4b: $bd
    adc l                                         ; $4a4c: $8d
    cp l                                          ; $4a4d: $bd
    dec bc                                        ; $4a4e: $0b
    xor $0b                                       ; $4a4f: $ee $0b
    ld c, e                                       ; $4a51: $4b
    rst $28                                       ; $4a52: $ef
    and [hl]                                      ; $4a53: $a6
    db $fc                                        ; $4a54: $fc
    cp c                                          ; $4a55: $b9
    sbc c                                         ; $4a56: $99
    ld e, c                                       ; $4a57: $59
    ld l, a                                       ; $4a58: $6f
    db $d3                                        ; $4a59: $d3
    inc [hl]                                      ; $4a5a: $34
    xor l                                         ; $4a5b: $ad
    ld e, d                                       ; $4a5c: $5a
    db $dd                                        ; $4a5d: $dd
    xor a                                         ; $4a5e: $af
    ld hl, sp+$2b                                 ; $4a5f: $f8 $2b
    sub e                                         ; $4a61: $93
    ccf                                           ; $4a62: $3f
    ld a, [$f337]                                 ; $4a63: $fa $37 $f3
    sbc [hl]                                      ; $4a66: $9e
    dec de                                        ; $4a67: $1b
    ld e, e                                       ; $4a68: $5b
    ld l, l                                       ; $4a69: $6d
    pop af                                        ; $4a6a: $f1
    halt                                          ; $4a6b: $76
    ld h, h                                       ; $4a6c: $64
    and d                                         ; $4a6d: $a2
    and d                                         ; $4a6e: $a2
    sub [hl]                                      ; $4a6f: $96
    dec l                                         ; $4a70: $2d
    add [hl]                                      ; $4a71: $86
    adc e                                         ; $4a72: $8b
    ld h, b                                       ; $4a73: $60
    ld a, [hl]                                    ; $4a74: $7e
    di                                            ; $4a75: $f3
    and [hl]                                      ; $4a76: $a6
    add hl, sp                                    ; $4a77: $39
    ret                                           ; $4a78: $c9


    sbc a                                         ; $4a79: $9f
    push af                                       ; $4a7a: $f5
    sub [hl]                                      ; $4a7b: $96
    add hl, de                                    ; $4a7c: $19
    xor [hl]                                      ; $4a7d: $ae
    pop hl                                        ; $4a7e: $e1
    cp $b1                                        ; $4a7f: $fe $b1
    ld a, [$ce67]                                 ; $4a81: $fa $67 $ce
    cp h                                          ; $4a84: $bc
    rst $20                                       ; $4a85: $e7
    sbc $bd                                       ; $4a86: $de $bd
    db $db                                        ; $4a88: $db
    ldh [$af], a                                  ; $4a89: $e0 $af
    cpl                                           ; $4a8b: $2f
    inc l                                         ; $4a8c: $2c
    cp l                                          ; $4a8d: $bd
    sbc e                                         ; $4a8e: $9b
    ld a, [c]                                     ; $4a8f: $f2
    rst $20                                       ; $4a90: $e7
    and d                                         ; $4a91: $a2
    ld [c], a                                     ; $4a92: $e2
    rst $08                                       ; $4a93: $cf
    inc sp                                        ; $4a94: $33
    and $b3                                       ; $4a95: $e6 $b3
    dec sp                                        ; $4a97: $3b
    or [hl]                                       ; $4a98: $b6
    rst $00                                       ; $4a99: $c7
    rst $20                                       ; $4a9a: $e7
    xor a                                         ; $4a9b: $af
    and d                                         ; $4a9c: $a2
    ld e, [hl]                                    ; $4a9d: $5e
    ld h, h                                       ; $4a9e: $64
    rst $20                                       ; $4a9f: $e7
    ld a, [hl]                                    ; $4aa0: $7e
    sub $52                                       ; $4aa1: $d6 $52
    ld [hl], h                                    ; $4aa3: $74
    ld [hl], h                                    ; $4aa4: $74
    ldh a, [rNR12]                                ; $4aa5: $f0 $12
    inc c                                         ; $4aa7: $0c
    cp $20                                        ; $4aa8: $fe $20
    or d                                          ; $4aaa: $b2
    inc [hl]                                      ; $4aab: $34
    rlca                                          ; $4aac: $07
    jp $dd63                                      ; $4aad: $c3 $63 $dd


    xor a                                         ; $4ab0: $af
    jr nc, jr_039_4ae6                            ; $4ab1: $30 $33

    reti                                          ; $4ab3: $d9


    pop bc                                        ; $4ab4: $c1
    rst $18                                       ; $4ab5: $df
    ld a, [de]                                    ; $4ab6: $1a
    call c, Call_000_1cd9                         ; $4ab7: $dc $d9 $1c
    ld [$b36a], sp                                ; $4aba: $08 $6a $b3
    ld [hl], e                                    ; $4abd: $73
    sub e                                         ; $4abe: $93
    cp a                                          ; $4abf: $bf
    ret z                                         ; $4ac0: $c8

    sbc b                                         ; $4ac1: $98
    or h                                          ; $4ac2: $b4
    add hl, bc                                    ; $4ac3: $09
    db $fc                                        ; $4ac4: $fc
    dec [hl]                                      ; $4ac5: $35
    inc sp                                        ; $4ac6: $33
    db $eb                                        ; $4ac7: $eb
    ld [$3a90], a                                 ; $4ac8: $ea $90 $3a
    sub $db                                       ; $4acb: $d6 $db
    db $e4                                        ; $4acd: $e4
    xor a                                         ; $4ace: $af
    ld [hl], b                                    ; $4acf: $70
    ld b, b                                       ; $4ad0: $40
    db $ed                                        ; $4ad1: $ed
    dec c                                         ; $4ad2: $0d
    adc $bd                                       ; $4ad3: $ce $bd
    dec sp                                        ; $4ad5: $3b
    ld l, b                                       ; $4ad6: $68
    or l                                          ; $4ad7: $b5
    xor d                                         ; $4ad8: $aa
    ld c, $97                                     ; $4ad9: $0e $97
    ret                                           ; $4adb: $c9


    rra                                           ; $4adc: $1f
    db $fd                                        ; $4add: $fd
    sbc e                                         ; $4ade: $9b
    ld a, c                                       ; $4adf: $79
    rlca                                          ; $4ae0: $07
    adc h                                         ; $4ae1: $8c
    ld d, b                                       ; $4ae2: $50
    or l                                          ; $4ae3: $b5
    ld h, b                                       ; $4ae4: $60

jr_039_4ae5:
    jp hl                                         ; $4ae5: $e9


jr_039_4ae6:
    adc b                                         ; $4ae6: $88
    ld l, e                                       ; $4ae7: $6b
    ld b, c                                       ; $4ae8: $41
    ld l, $4a                                     ; $4ae9: $2e $4a
    db $dd                                        ; $4aeb: $dd
    call z, Call_039_7cac                         ; $4aec: $cc $ac $7c
    cp $a0                                        ; $4aef: $fe $a0
    rst $28                                       ; $4af1: $ef
    inc hl                                        ; $4af2: $23
    and h                                         ; $4af3: $a4
    add hl, sp                                    ; $4af4: $39
    adc h                                         ; $4af5: $8c
    ld a, [bc]                                    ; $4af6: $0a
    adc $7d                                       ; $4af7: $ce $7d
    ld h, c                                       ; $4af9: $61
    jp hl                                         ; $4afa: $e9


    ei                                            ; $4afb: $fb
    xor h                                         ; $4afc: $ac
    dec de                                        ; $4afd: $1b
    db $fc                                        ; $4afe: $fc
    push af                                       ; $4aff: $f5
    dec hl                                        ; $4b00: $2b
    cp $aa                                        ; $4b01: $fe $aa
    jp $f265                                      ; $4b03: $c3 $65 $f2


    ld b, a                                       ; $4b06: $47
    rst $38                                       ; $4b07: $ff
    ld h, [hl]                                    ; $4b08: $66
    ld e, [hl]                                    ; $4b09: $5e
    ld [hl], d                                    ; $4b0a: $72
    ld [c], a                                     ; $4b0b: $e2
    ld e, e                                       ; $4b0c: $5b
    sbc a                                         ; $4b0d: $9f
    xor e                                         ; $4b0e: $ab
    jp $fe0d                                      ; $4b0f: $c3 $0d $fe


    ld c, d                                       ; $4b12: $4a
    sub b                                         ; $4b13: $90
    and h                                         ; $4b14: $a4
    call z, Call_000_03fd                         ; $4b15: $cc $fd $03
    ld l, $2b                                     ; $4b18: $2e $2b
    ld e, a                                       ; $4b1a: $5f
    pop af                                        ; $4b1b: $f1
    rst $20                                       ; $4b1c: $e7
    inc [hl]                                      ; $4b1d: $34
    rlca                                          ; $4b1e: $07
    ld c, c                                       ; $4b1f: $49
    rra                                           ; $4b20: $1f
    dec de                                        ; $4b21: $1b
    ld [$14fd], sp                                ; $4b22: $08 $fd $14
    xor a                                         ; $4b25: $af
    ld h, $c5                                     ; $4b26: $26 $c5
    nop                                           ; $4b28: $00
    db $fc                                        ; $4b29: $fc
    inc hl                                        ; $4b2a: $23
    call $8c01                                    ; $4b2b: $cd $01 $8c
    ld a, [bc]                                    ; $4b2e: $0a
    adc $dd                                       ; $4b2f: $ce $dd
    adc e                                         ; $4b31: $8b
    cp a                                          ; $4b32: $bf
    ld e, $7e                                     ; $4b33: $1e $7e
    jp nc, $18a4                                  ; $4b35: $d2 $a4 $18

    add b                                         ; $4b38: $80
    ld a, a                                       ; $4b39: $7f
    and h                                         ; $4b3a: $a4
    add hl, sp                                    ; $4b3b: $39
    inc hl                                        ; $4b3c: $23
    rst $38                                       ; $4b3d: $ff
    or $f6                                        ; $4b3e: $f6 $f6
    ld [hl], a                                    ; $4b40: $77
    cp e                                          ; $4b41: $bb
    pop hl                                        ; $4b42: $e1
    ld h, [hl]                                    ; $4b43: $66
    ld e, [hl]                                    ; $4b44: $5e
    sub l                                         ; $4b45: $95
    dec [hl]                                      ; $4b46: $35
    add hl, hl                                    ; $4b47: $29
    ld b, $e0                                     ; $4b48: $06 $e0
    rra                                           ; $4b4a: $1f
    ld a, l                                       ; $4b4b: $7d
    sbc a                                         ; $4b4c: $9f
    push af                                       ; $4b4d: $f5
    and [hl]                                      ; $4b4e: $a6
    add hl, sp                                    ; $4b4f: $39
    or e                                          ; $4b50: $b3
    ld a, [de]                                    ; $4b51: $1a
    ret z                                         ; $4b52: $c8

    ret nc                                        ; $4b53: $d0

    rst $30                                       ; $4b54: $f7
    ld e, c                                       ; $4b55: $59
    scf                                           ; $4b56: $37
    ld hl, sp-$55                                 ; $4b57: $f8 $ab
    ld h, e                                       ; $4b59: $63
    db $dd                                        ; $4b5a: $dd
    db $ec                                        ; $4b5b: $ec
    cpl                                           ; $4b5c: $2f
    reti                                          ; $4b5d: $d9


    dec e                                         ; $4b5e: $1d
    jp hl                                         ; $4b5f: $e9


    call $a4dc                                    ; $4b60: $cd $dc $a4
    jr jr_039_4ae5                                ; $4b63: $18 $80

    ld a, a                                       ; $4b65: $7f
    and h                                         ; $4b66: $a4
    add hl, sp                                    ; $4b67: $39
    ld c, c                                       ; $4b68: $49
    rra                                           ; $4b69: $1f
    dec de                                        ; $4b6a: $1b
    ld [$7a1d], sp                                ; $4b6b: $08 $1d $7a
    cp e                                          ; $4b6e: $bb
    ld [hl], $40                                  ; $4b6f: $36 $40
    dec e                                         ; $4b71: $1d
    ld l, c                                       ; $4b72: $69
    ld c, $8c                                     ; $4b73: $0e $8c
    ld a, [bc]                                    ; $4b75: $0a
    adc $dd                                       ; $4b76: $ce $dd
    adc e                                         ; $4b78: $8b
    cp a                                          ; $4b79: $bf
    ld e, $7e                                     ; $4b7a: $1e $7e
    jp nc, $b7a1                                  ; $4b7c: $d2 $a1 $b7

    ld l, e                                       ; $4b7f: $6b
    inc bc                                        ; $4b80: $03
    call nc, $e691                                ; $4b81: $d4 $91 $e6
    inc hl                                        ; $4b84: $23
    rst $38                                       ; $4b85: $ff
    or $f6                                        ; $4b86: $f6 $f6
    ld [hl], a                                    ; $4b88: $77
    cp e                                          ; $4b89: $bb
    pop hl                                        ; $4b8a: $e1
    ld h, [hl]                                    ; $4b8b: $66
    ld e, [hl]                                    ; $4b8c: $5e
    sub l                                         ; $4b8d: $95
    ld [hl], l                                    ; $4b8e: $75
    add sp, -$13                                  ; $4b8f: $e8 $ed
    jp c, Jump_039_7500                           ; $4b91: $da $00 $75

    db $f4                                        ; $4b94: $f4
    ld a, l                                       ; $4b95: $7d
    sub $9b                                       ; $4b96: $d6 $9b
    and $b3                                       ; $4b98: $e6 $b3
    ld a, [de]                                    ; $4b9a: $1a
    ret z                                         ; $4b9b: $c8

    ret nc                                        ; $4b9c: $d0

Jump_039_4b9d:
    rst $30                                       ; $4b9d: $f7
    ld e, c                                       ; $4b9e: $59

Call_039_4b9f:
    scf                                           ; $4b9f: $37
    ld hl, sp-$55                                 ; $4ba0: $f8 $ab
    ld h, e                                       ; $4ba2: $63
    db $dd                                        ; $4ba3: $dd

Jump_039_4ba4:
    sub c                                         ; $4ba4: $91
    sbc $cc                                       ; $4ba5: $de $cc
    dec e                                         ; $4ba7: $1d
    ld a, d                                       ; $4ba8: $7a
    cp e                                          ; $4ba9: $bb
    ld [hl], $40                                  ; $4baa: $36 $40
    dec e                                         ; $4bac: $1d
    ld l, c                                       ; $4bad: $69
    ld c, $23                                     ; $4bae: $0e $23
    rst $38                                       ; $4bb0: $ff
    or $f6                                        ; $4bb1: $f6 $f6
    ld [hl], a                                    ; $4bb3: $77
    cp e                                          ; $4bb4: $bb
    pop hl                                        ; $4bb5: $e1
    ld h, [hl]                                    ; $4bb6: $66
    ld e, [hl]                                    ; $4bb7: $5e
    sub l                                         ; $4bb8: $95
    ld [hl], l                                    ; $4bb9: $75
    db $f4                                        ; $4bba: $f4
    ld b, l                                       ; $4bbb: $45
    adc c                                         ; $4bbc: $89
    cp e                                          ; $4bbd: $bb
    ld [de], a                                    ; $4bbe: $12
    ld [hl], d                                    ; $4bbf: $72
    rst $18                                       ; $4bc0: $df
    ld h, a                                       ; $4bc1: $67
    cp l                                          ; $4bc2: $bd
    ld l, c                                       ; $4bc3: $69
    ld c, $8c                                     ; $4bc4: $0e $8c
    ld a, [bc]                                    ; $4bc6: $0a
    adc $dd                                       ; $4bc7: $ce $dd
    adc e                                         ; $4bc9: $8b
    cp a                                          ; $4bca: $bf
    ld e, $7e                                     ; $4bcb: $1e $7e
    jp nc, Jump_000_17d1                          ; $4bcd: $d2 $d1 $17

    dec h                                         ; $4bd0: $25
    ldh a, [$ae]                                  ; $4bd1: $f0 $ae
    add h                                         ; $4bd3: $84
    sbc h                                         ; $4bd4: $9c
    and $b3                                       ; $4bd5: $e6 $b3
    ld a, [de]                                    ; $4bd7: $1a
    ret z                                         ; $4bd8: $c8

    ret nc                                        ; $4bd9: $d0

    rst $30                                       ; $4bda: $f7
    ld e, c                                       ; $4bdb: $59
    scf                                           ; $4bdc: $37
    ld hl, sp-$55                                 ; $4bdd: $f8 $ab
    ld h, e                                       ; $4bdf: $63
    db $dd                                        ; $4be0: $dd
    sub c                                         ; $4be1: $91
    sbc $cc                                       ; $4be2: $de $cc
    dec e                                         ; $4be4: $1d
    ld a, l                                       ; $4be5: $7d
    ld d, c                                       ; $4be6: $51
    ld [bc], a                                    ; $4be7: $02

jr_039_4be8:
    rst $28                                       ; $4be8: $ef
    ld c, d                                       ; $4be9: $4a
    ret z                                         ; $4bea: $c8

    ld l, c                                       ; $4beb: $69
    ld c, $c3                                     ; $4bec: $0e $c3
    call nz, Call_039_6bbb                        ; $4bee: $c4 $bb $6b
    ld b, h                                       ; $4bf1: $44
    db $d3                                        ; $4bf2: $d3
    ld c, l                                       ; $4bf3: $4d
    sbc e                                         ; $4bf4: $9b
    ld h, h                                       ; $4bf5: $64
    add hl, hl                                    ; $4bf6: $29
    db $e3                                        ; $4bf7: $e3
    rla                                           ; $4bf8: $17
    ldh a, [rRP]                                  ; $4bf9: $f0 $56
    ld e, e                                       ; $4bfb: $5b
    sbc d                                         ; $4bfc: $9a
    and h                                         ; $4bfd: $a4
    inc b                                         ; $4bfe: $04
    xor c                                         ; $4bff: $a9
    rst $00                                       ; $4c00: $c7

Call_039_4c01:
    ld h, b                                       ; $4c01: $60
    rst $28                                       ; $4c02: $ef
    ld e, a                                       ; $4c03: $5f
    ld a, [hl-]                                   ; $4c04: $3a
    ld a, b                                       ; $4c05: $78
    ld d, c                                       ; $4c06: $51
    ld e, d                                       ; $4c07: $5a
    db $fd                                        ; $4c08: $fd
    rlca                                          ; $4c09: $07
    xor a                                         ; $4c0a: $af
    ld c, l                                       ; $4c0b: $4d
    ld [hl], e                                    ; $4c0c: $73
    adc h                                         ; $4c0d: $8c
    ld a, [bc]                                    ; $4c0e: $0a
    adc $dd                                       ; $4c0f: $ce $dd
    adc e                                         ; $4c11: $8b
    cp a                                          ; $4c12: $bf
    ld e, $7e                                     ; $4c13: $1e $7e
    jp nc, $e261                                  ; $4c15: $d2 $61 $e2

    db $dd                                        ; $4c18: $dd
    dec [hl]                                      ; $4c19: $35
    and d                                         ; $4c1a: $a2
    jp hl                                         ; $4c1b: $e9


    and [hl]                                      ; $4c1c: $a6
    add hl, sp                                    ; $4c1d: $39
    add hl, bc                                    ; $4c1e: $09
    ld b, a                                       ; $4c1f: $47
    add a                                         ; $4c20: $87
    add hl, hl                                    ; $4c21: $29
    cp $8a                                        ; $4c22: $fe $8a
    ldh [rTAC], a                                 ; $4c24: $e0 $07
    rst $20                                       ; $4c26: $e7
    ld [$588f], a                                 ; $4c27: $ea $8f $58
    db $fd                                        ; $4c2a: $fd
    or c                                          ; $4c2b: $b1
    adc [hl]                                      ; $4c2c: $8e
    ld [hl], l                                    ; $4c2d: $75
    add a                                         ; $4c2e: $87
    ld d, d                                       ; $4c2f: $52
    ld sp, hl                                     ; $4c30: $f9
    ld l, d                                       ; $4c31: $6a
    db $dd                                        ; $4c32: $dd
    ld b, b                                       ; $4c33: $40
    ld c, b                                       ; $4c34: $48
    ld [hl], e                                    ; $4c35: $73
    adc h                                         ; $4c36: $8c
    ld a, [bc]                                    ; $4c37: $0a
    adc $dd                                       ; $4c38: $ce $dd
    adc e                                         ; $4c3a: $8b
    cp a                                          ; $4c3b: $bf
    ld e, $7e                                     ; $4c3c: $1e $7e
    jp nc, Jump_039_54a1                          ; $4c3e: $d2 $a1 $54

    cp [hl]                                       ; $4c41: $be
    ld e, d                                       ; $4c42: $5a
    ld l, a                                       ; $4c43: $6f
    sbc d                                         ; $4c44: $9a
    inc bc                                        ; $4c45: $03
    inc hl                                        ; $4c46: $23
    rst $38                                       ; $4c47: $ff
    or $f6                                        ; $4c48: $f6 $f6
    ld [hl], a                                    ; $4c4a: $77
    cp e                                          ; $4c4b: $bb
    pop hl                                        ; $4c4c: $e1
    ld h, [hl]                                    ; $4c4d: $66
    ld e, [hl]                                    ; $4c4e: $5e
    sub l                                         ; $4c4f: $95
    ld [hl], l                                    ; $4c50: $75
    jr z, jr_039_4be8                             ; $4c51: $28 $95

    xor a                                         ; $4c53: $af
    sub $db                                       ; $4c54: $d6 $db
    rst $30                                       ; $4c56: $f7
    ld e, c                                       ; $4c57: $59
    ld l, a                                       ; $4c58: $6f
    sbc d                                         ; $4c59: $9a
    inc bc                                        ; $4c5a: $03
    or e                                          ; $4c5b: $b3
    ld a, [de]                                    ; $4c5c: $1a
    ret z                                         ; $4c5d: $c8

    ret nc                                        ; $4c5e: $d0

    rst $30                                       ; $4c5f: $f7
    ld e, c                                       ; $4c60: $59
    scf                                           ; $4c61: $37
    ld hl, sp-$55                                 ; $4c62: $f8 $ab
    ld h, e                                       ; $4c64: $63
    db $dd                                        ; $4c65: $dd
    sub c                                         ; $4c66: $91
    sbc $cc                                       ; $4c67: $de $cc
    dec e                                         ; $4c69: $1d
    ld c, d                                       ; $4c6a: $4a
    push hl                                       ; $4c6b: $e5
    xor e                                         ; $4c6c: $ab
    push af                                       ; $4c6d: $f5
    and [hl]                                      ; $4c6e: $a6
    add hl, sp                                    ; $4c6f: $39
    jp $bd03                                      ; $4c70: $c3 $03 $bd


    ld c, a                                       ; $4c73: $4f
    ld b, c                                       ; $4c74: $41
    jp c, Jump_039_5fa4                           ; $4c75: $da $a4 $5f

    or l                                          ; $4c78: $b5
    ldh [$2d], a                                  ; $4c79: $e0 $2d
    add d                                         ; $4c7b: $82
    rra                                           ; $4c7c: $1f
    ld [hl], h                                    ; $4c7d: $74
    cpl                                           ; $4c7e: $2f
    cp $ea                                        ; $4c7f: $fe $ea
    ld e, b                                       ; $4c81: $58
    ld c, e                                       ; $4c82: $4b
    sbc d                                         ; $4c83: $9a
    inc bc                                        ; $4c84: $03
    and e                                         ; $4c85: $a3
    dec l                                         ; $4c86: $2d
    add a                                         ; $4c87: $87
    add d                                         ; $4c88: $82
    or h                                          ; $4c89: $b4
    ld c, c                                       ; $4c8a: $49
    rra                                           ; $4c8b: $1f
    dec de                                        ; $4c8c: $1b
    ld [$6c75], sp                                ; $4c8d: $08 $75 $6c
    ld l, a                                       ; $4c90: $6f
    rst $10                                       ; $4c91: $d7
    ld de, $9fc8                                  ; $4c92: $11 $c8 $9f
    and l                                         ; $4c95: $a5
    or e                                          ; $4c96: $b3
    rst $38                                       ; $4c97: $ff
    jp Jump_000_0e69                              ; $4c98: $c3 $69 $0e


    adc h                                         ; $4c9b: $8c
    ld a, [bc]                                    ; $4c9c: $0a
    adc $dd                                       ; $4c9d: $ce $dd
    adc e                                         ; $4c9f: $8b
    cp a                                          ; $4ca0: $bf
    ld e, $7e                                     ; $4ca1: $1e $7e
    jp nc, $96d1                                  ; $4ca3: $d2 $d1 $96

    ld b, e                                       ; $4ca6: $43
    ld b, c                                       ; $4ca7: $41
    sbc d                                         ; $4ca8: $9a
    inc bc                                        ; $4ca9: $03
    inc hl                                        ; $4caa: $23
    rst $38                                       ; $4cab: $ff
    or $f6                                        ; $4cac: $f6 $f6
    ld [hl], a                                    ; $4cae: $77
    cp e                                          ; $4caf: $bb
    pop hl                                        ; $4cb0: $e1
    ld h, [hl]                                    ; $4cb1: $66
    ld e, [hl]                                    ; $4cb2: $5e
    sub l                                         ; $4cb3: $95
    ld [hl], l                                    ; $4cb4: $75
    or h                                          ; $4cb5: $b4
    push hl                                       ; $4cb6: $e5
    ld d, b                                       ; $4cb7: $50
    ret nc                                        ; $4cb8: $d0

    rst $30                                       ; $4cb9: $f7
    ld e, c                                       ; $4cba: $59
    ld l, a                                       ; $4cbb: $6f
    jp c, $d839                                   ; $4cbc: $da $39 $d8

    ld e, $7f                                     ; $4cbf: $1e $7f
    xor e                                         ; $4cc1: $ab
    rst $38                                       ; $4cc2: $ff
    ldh [$b5], a                                  ; $4cc3: $e0 $b5
    cp l                                          ; $4cc5: $bd
    add a                                         ; $4cc6: $87
    call c, $f068                                 ; $4cc7: $dc $68 $f0
    rst $10                                       ; $4cca: $d7
    ld b, e                                       ; $4ccb: $43
    ld b, c                                       ; $4ccc: $41
    ld h, h                                       ; $4ccd: $64
    cp l                                          ; $4cce: $bd
    add a                                         ; $4ccf: $87
    add sp, $19                                   ; $4cd0: $e8 $19
    ld [hl], e                                    ; $4cd2: $73
    or e                                          ; $4cd3: $b3
    ld a, [de]                                    ; $4cd4: $1a
    ret z                                         ; $4cd5: $c8

    ret nc                                        ; $4cd6: $d0

    rst $30                                       ; $4cd7: $f7
    ld e, c                                       ; $4cd8: $59
    scf                                           ; $4cd9: $37
    ld hl, sp-$55                                 ; $4cda: $f8 $ab
    ld h, e                                       ; $4cdc: $63
    db $dd                                        ; $4cdd: $dd
    sub c                                         ; $4cde: $91
    sbc $cc                                       ; $4cdf: $de $cc
    dec e                                         ; $4ce1: $1d
    ld l, l                                       ; $4ce2: $6d
    add hl, sp                                    ; $4ce3: $39
    inc d                                         ; $4ce4: $14
    and h                                         ; $4ce5: $a4
    add hl, sp                                    ; $4ce6: $39
    call z, $dceb                                 ; $4ce7: $cc $eb $dc
    ld d, e                                       ; $4cea: $53
    dec c                                         ; $4ceb: $0d
    ld h, h                                       ; $4cec: $64
    add sp, -$05                                  ; $4ced: $e8 $fb
    xor h                                         ; $4cef: $ac
    dec de                                        ; $4cf0: $1b
    db $fc                                        ; $4cf1: $fc
    ld [hl], l                                    ; $4cf2: $75
    jr z, jr_039_4d36                             ; $4cf3: $28 $41

    ld e, h                                       ; $4cf5: $5c
    ld a, [hl-]                                   ; $4cf6: $3a
    add sp, $5d                                   ; $4cf7: $e8 $5d
    add hl, bc                                    ; $4cf9: $09
    reti                                          ; $4cfa: $d9


    inc [hl]                                      ; $4cfb: $34
    call $2301                                    ; $4cfc: $cd $01 $23
    rst $38                                       ; $4cff: $ff
    or $f6                                        ; $4d00: $f6 $f6
    ld [hl], a                                    ; $4d02: $77
    cp e                                          ; $4d03: $bb
    pop hl                                        ; $4d04: $e1
    ld h, [hl]                                    ; $4d05: $66
    ld e, [hl]                                    ; $4d06: $5e
    sub l                                         ; $4d07: $95
    ld [hl], l                                    ; $4d08: $75
    jr z, jr_039_4d4c                             ; $4d09: $28 $41

    ld e, h                                       ; $4d0b: $5c
    ld a, [hl-]                                   ; $4d0c: $3a
    add sp, $5d                                   ; $4d0d: $e8 $5d
    add hl, bc                                    ; $4d0f: $09
    reti                                          ; $4d10: $d9


    or h                                          ; $4d11: $b4
    rst $28                                       ; $4d12: $ef
    or e                                          ; $4d13: $b3
    sbc $34                                       ; $4d14: $de $34
    rlca                                          ; $4d16: $07
    add hl, bc                                    ; $4d17: $09
    db $fc                                        ; $4d18: $fc
    push af                                       ; $4d19: $f5
    ld a, l                                       ; $4d1a: $7d
    sub $3d                                       ; $4d1b: $d6 $3d
    push de                                       ; $4d1d: $d5
    ld b, b                                       ; $4d1e: $40
    add [hl]                                      ; $4d1f: $86
    ld a, [hl-]                                   ; $4d20: $3a
    sub $1d                                       ; $4d21: $d6 $1d
    jp hl                                         ; $4d23: $e9


    call $a1dc                                    ; $4d24: $cd $dc $a1
    inc b                                         ; $4d27: $04
    ld [hl], c                                    ; $4d28: $71
    jp hl                                         ; $4d29: $e9


    and b                                         ; $4d2a: $a0
    ld [hl], a                                    ; $4d2b: $77
    dec h                                         ; $4d2c: $25
    ld h, h                                       ; $4d2d: $64
    db $d3                                        ; $4d2e: $d3
    inc [hl]                                      ; $4d2f: $34
    rlca                                          ; $4d30: $07
    add hl, bc                                    ; $4d31: $09
    db $fc                                        ; $4d32: $fc
    sub l                                         ; $4d33: $95
    adc l                                         ; $4d34: $8d
    dec l                                         ; $4d35: $2d

jr_039_4d36:
    ld e, [hl]                                    ; $4d36: $5e
    dec h                                         ; $4d37: $25
    db $e4                                        ; $4d38: $e4
    ld a, d                                       ; $4d39: $7a
    rst $20                                       ; $4d3a: $e7
    ld [$d88f], a                                 ; $4d3b: $ea $8f $d8
    ldh [$af], a                                  ; $4d3e: $e0 $af
    ld a, [hl-]                                   ; $4d40: $3a
    ld e, h                                       ; $4d41: $5c
    ld h, $7f                                     ; $4d42: $26 $7f
    db $f4                                        ; $4d44: $f4
    ld l, a                                       ; $4d45: $6f
    and $25                                       ; $4d46: $e6 $25
    daa                                           ; $4d48: $27
    cp [hl]                                       ; $4d49: $be
    ld [hl], l                                    ; $4d4a: $75
    ld c, a                                       ; $4d4b: $4f

jr_039_4d4c:
    dec [hl]                                      ; $4d4c: $35
    sub b                                         ; $4d4d: $90
    and c                                         ; $4d4e: $a1
    rst $28                                       ; $4d4f: $ef
    or e                                          ; $4d50: $b3
    ld a, $f7                                     ; $4d51: $3e $f7
    or e                                          ; $4d53: $b3
    sub [hl]                                      ; $4d54: $96
    ld e, $21                                     ; $4d55: $1e $21
    dec b                                         ; $4d57: $05
    or l                                          ; $4d58: $b5
    push de                                       ; $4d59: $d5
    pop hl                                        ; $4d5a: $e1
    ld a, [hl]                                    ; $4d5b: $7e
    add hl, sp                                    ; $4d5c: $39
    cp h                                          ; $4d5d: $bc
    ld h, l                                       ; $4d5e: $65
    ld a, [c]                                     ; $4d5f: $f2
    ld b, a                                       ; $4d60: $47
    rst $38                                       ; $4d61: $ff
    ld h, [hl]                                    ; $4d62: $66
    xor $6c                                       ; $4d63: $ee $6c
    ld c, $9d                                     ; $4d65: $0e $9d
    and $8c                                       ; $4d67: $e6 $8c
    ld a, [bc]                                    ; $4d69: $0a
    adc $dd                                       ; $4d6a: $ce $dd
    adc e                                         ; $4d6c: $8b
    cp a                                          ; $4d6d: $bf
    ld e, $7e                                     ; $4d6e: $1e $7e
    ld d, d                                       ; $4d70: $52
    ld h, $7f                                     ; $4d71: $26 $7f
    db $f4                                        ; $4d73: $f4
    ld l, a                                       ; $4d74: $6f
    and $25                                       ; $4d75: $e6 $25
    daa                                           ; $4d77: $27
    cp [hl]                                       ; $4d78: $be
    ld [hl], l                                    ; $4d79: $75
    sbc d                                         ; $4d7a: $9a
    inc bc                                        ; $4d7b: $03
    inc hl                                        ; $4d7c: $23
    rst $38                                       ; $4d7d: $ff
    or $f6                                        ; $4d7e: $f6 $f6
    ld [hl], a                                    ; $4d80: $77
    cp e                                          ; $4d81: $bb
    pop hl                                        ; $4d82: $e1
    ld h, [hl]                                    ; $4d83: $66
    ld e, [hl]                                    ; $4d84: $5e
    sub l                                         ; $4d85: $95
    sub l                                         ; $4d86: $95
    ret                                           ; $4d87: $c9


    rra                                           ; $4d88: $1f
    db $fd                                        ; $4d89: $fd
    sbc e                                         ; $4d8a: $9b
    sbc c                                         ; $4d8b: $99
    sbc h                                         ; $4d8c: $9c
    ld hl, sp-$2a                                 ; $4d8d: $f8 $d6
    ld a, l                                       ; $4d8f: $7d
    sbc a                                         ; $4d90: $9f
    push af                                       ; $4d91: $f5
    and [hl]                                      ; $4d92: $a6
    dec e                                         ; $4d93: $1d
    adc [hl]                                      ; $4d94: $8e
    ld b, l                                       ; $4d95: $45
    ld b, a                                       ; $4d96: $47
    or l                                          ; $4d97: $b5
    ld [hl], a                                    ; $4d98: $77
    rst $08                                       ; $4d99: $cf
    push bc                                       ; $4d9a: $c5
    ld [hl], b                                    ; $4d9b: $70
    ld e, c                                       ; $4d9c: $59
    inc de                                        ; $4d9d: $13
    or c                                          ; $4d9e: $b1
    jp c, $0c5b                                   ; $4d9f: $da $5b $0c

    cp $ba                                        ; $4da2: $fe $ba
    rla                                           ; $4da4: $17
    ld a, a                                       ; $4da5: $7f
    adc l                                         ; $4da6: $8d
    and e                                         ; $4da7: $a3
    inc hl                                        ; $4da8: $23
    cp a                                          ; $4da9: $bf
    and d                                         ; $4daa: $a2
    ld [hl], l                                    ; $4dab: $75
    xor h                                         ; $4dac: $ac
    and l                                         ; $4dad: $a5
    ld c, h                                       ; $4dae: $4c
    cp $e8                                        ; $4daf: $fe $e8
    rst $18                                       ; $4db1: $df
    call z, Call_000_0e69                         ; $4db2: $cc $69 $0e
    or e                                          ; $4db5: $b3
    ld a, [de]                                    ; $4db6: $1a
    ret z                                         ; $4db7: $c8

    ret nc                                        ; $4db8: $d0

    rst $30                                       ; $4db9: $f7
    ld e, c                                       ; $4dba: $59
    scf                                           ; $4dbb: $37

Jump_039_4dbc:
    ld hl, sp-$55                                 ; $4dbc: $f8 $ab
    ld h, e                                       ; $4dbe: $63
    db $dd                                        ; $4dbf: $dd
    sub c                                         ; $4dc0: $91
    sbc $cc                                       ; $4dc1: $de $cc
    ld h, l                                       ; $4dc3: $65
    ld a, [c]                                     ; $4dc4: $f2
    ld b, a                                       ; $4dc5: $47
    rst $38                                       ; $4dc6: $ff
    ld h, [hl]                                    ; $4dc7: $66
    ld e, [hl]                                    ; $4dc8: $5e
    ld [hl], d                                    ; $4dc9: $72
    ld [c], a                                     ; $4dca: $e2
    ld e, e                                       ; $4dcb: $5b
    and a                                         ; $4dcc: $a7
    add hl, sp                                    ; $4dcd: $39
    ret                                           ; $4dce: $c9


    ld h, c                                       ; $4dcf: $61
    ld l, c                                       ; $4dd0: $69
    jr nz, jr_039_4e47                            ; $4dd1: $20 $74

    ret c                                         ; $4dd3: $d8

    ld d, a                                       ; $4dd4: $57
    rlca                                          ; $4dd5: $07
    ld a, [c]                                     ; $4dd6: $f2
    ld b, a                                       ; $4dd7: $47
    rst $38                                       ; $4dd8: $ff
    ld h, [hl]                                    ; $4dd9: $66
    sbc $f7                                       ; $4dda: $de $f7
    dec d                                         ; $4ddc: $15
    and h                                         ; $4ddd: $a4
    add hl, sp                                    ; $4dde: $39
    ld c, h                                       ; $4ddf: $4c
    ld hl, sp-$04                                 ; $4de0: $f8 $fc
    sbc c                                         ; $4de2: $99
    ld l, [hl]                                    ; $4de3: $6e
    rlca                                          ; $4de4: $07
    xor a                                         ; $4de5: $af
    and e                                         ; $4de6: $a3
    ld c, h                                       ; $4de7: $4c
    ld hl, sp-$04                                 ; $4de8: $f8 $fc
    sbc c                                         ; $4dea: $99
    ld [hl+], a                                   ; $4deb: $22
    ld a, a                                       ; $4dec: $7f
    ld [hl], a                                    ; $4ded: $77
    rst $00                                       ; $4dee: $c7
    sbc [hl]                                      ; $4def: $9e
    dec de                                        ; $4df0: $1b
    db $fc                                        ; $4df1: $fc
    dec d                                         ; $4df2: $15
    cpl                                           ; $4df3: $2f
    ld c, d                                       ; $4df4: $4a
    pop bc                                        ; $4df5: $c1
    ld h, l                                       ; $4df6: $65
    adc l                                         ; $4df7: $8d
    ld l, b                                       ; $4df8: $68
    jp hl                                         ; $4df9: $e9


jr_039_4dfa:
    ldh [rNR51], a                                ; $4dfa: $e0 $25
    jr jr_039_4dfa                                ; $4dfc: $18 $fc

    ld b, c                                       ; $4dfe: $41
    ld h, h                                       ; $4dff: $64
    push de                                       ; $4e00: $d5
    rst $38                                       ; $4e01: $ff
    ld [$3a28], sp                                ; $4e02: $08 $28 $3a
    ld [hl], $cd                                  ; $4e05: $36 $cd
    ld bc, $fc09                                  ; $4e07: $01 $09 $fc
    sub l                                         ; $4e0a: $95
    sub b                                         ; $4e0b: $90
    sbc a                                         ; $4e0c: $9f
    cp c                                          ; $4e0d: $b9
    ld b, a                                       ; $4e0e: $47
    ldh a, [rPCM34]                               ; $4e0f: $f0 $77
    xor $3d                                       ; $4e11: $ee $3d
    ld e, h                                       ; $4e13: $5c
    db $fd                                        ; $4e14: $fd
    or c                                          ; $4e15: $b1
    ld [hl], e                                    ; $4e16: $73
    rst $00                                       ; $4e17: $c7
    add d                                         ; $4e18: $82
    sub a                                         ; $4e19: $97
    ld [$6fe4], sp                                ; $4e1a: $08 $e4 $6f
    ld [c], a                                     ; $4e1d: $e2
    ld d, c                                       ; $4e1e: $51
    adc d                                         ; $4e1f: $8a
    ld c, $5a                                     ; $4e20: $0e $5a
    cp d                                          ; $4e22: $ba
    sbc a                                         ; $4e23: $9f
    cp a                                          ; $4e24: $bf
    cp [hl]                                       ; $4e25: $be
    or b                                          ; $4e26: $b0
    ld d, h                                       ; $4e27: $54
    bit 2, a                                      ; $4e28: $cb $57
    db $e3                                        ; $4e2a: $e3
    ld a, b                                       ; $4e2b: $78
    ld a, e                                       ; $4e2c: $7b
    cp e                                          ; $4e2d: $bb
    adc [hl]                                      ; $4e2e: $8e
    inc bc                                        ; $4e2f: $03
    ld h, [hl]                                    ; $4e30: $66
    call z, $2301                                 ; $4e31: $cc $01 $23
    ld [de], a                                    ; $4e34: $12
    add hl, bc                                    ; $4e35: $09
    bit 2, a                                      ; $4e36: $cb $57
    sbc c                                         ; $4e38: $99
    or a                                          ; $4e39: $b7
    ld l, c                                       ; $4e3a: $69
    sbc d                                         ; $4e3b: $9a
    ld [hl], $29                                  ; $4e3c: $36 $29
    call c, Call_039_59f7                         ; $4e3e: $dc $f7 $59
    scf                                           ; $4e41: $37
    ld hl, sp+$2b                                 ; $4e42: $f8 $2b
    ld a, [c]                                     ; $4e44: $f2
    ld [hl], a                                    ; $4e45: $77
    ld l, l                                       ; $4e46: $6d

jr_039_4e47:
    adc a                                         ; $4e47: $8f
    ld c, a                                       ; $4e48: $4f
    sbc e                                         ; $4e49: $9b
    add hl, de                                    ; $4e4a: $19
    db $fd                                        ; $4e4b: $fd
    cp h                                          ; $4e4c: $bc
    ld l, c                                       ; $4e4d: $69
    ld c, $8c                                     ; $4e4e: $0e $8c
    ld a, [bc]                                    ; $4e50: $0a
    adc $dd                                       ; $4e51: $ce $dd
    adc e                                         ; $4e53: $8b
    cp a                                          ; $4e54: $bf
    ld e, $7e                                     ; $4e55: $1e $7e
    jp nc, $8911                                  ; $4e57: $d2 $11 $89

    add h                                         ; $4e5a: $84
    push hl                                       ; $4e5b: $e5
    xor e                                         ; $4e5c: $ab
    call z, $e69b                                 ; $4e5d: $cc $9b $e6
    inc hl                                        ; $4e60: $23
    rst $38                                       ; $4e61: $ff
    or $f6                                        ; $4e62: $f6 $f6
    ld [hl], a                                    ; $4e64: $77
    cp e                                          ; $4e65: $bb
    pop hl                                        ; $4e66: $e1
    ld h, [hl]                                    ; $4e67: $66
    ld e, [hl]                                    ; $4e68: $5e
    sub l                                         ; $4e69: $95
    ld [hl], l                                    ; $4e6a: $75
    ld b, h                                       ; $4e6b: $44
    ld [hl+], a                                   ; $4e6c: $22
    ld h, c                                       ; $4e6d: $61
    ld sp, hl                                     ; $4e6e: $f9
    ld a, [hl+]                                   ; $4e6f: $2a
    di                                            ; $4e70: $f3
    or $7d                                        ; $4e71: $f6 $7d
    sub $9b                                       ; $4e73: $d6 $9b
    and $09                                       ; $4e75: $e6 $09
    db $fc                                        ; $4e77: $fc
    push af                                       ; $4e78: $f5
    ld a, l                                       ; $4e79: $7d
    sub $3d                                       ; $4e7a: $d6 $3d
    push de                                       ; $4e7c: $d5
    ld b, b                                       ; $4e7d: $40
    add [hl]                                      ; $4e7e: $86
    ld a, [hl-]                                   ; $4e7f: $3a
    sub $1d                                       ; $4e80: $d6 $1d
    jp hl                                         ; $4e82: $e9


    call $11dc                                    ; $4e83: $cd $dc $11
    adc c                                         ; $4e86: $89
    add h                                         ; $4e87: $84
    push hl                                       ; $4e88: $e5
    xor e                                         ; $4e89: $ab
    call z, $e69b                                 ; $4e8a: $cc $9b $e6
    add hl, bc                                    ; $4e8d: $09
    db $fc                                        ; $4e8e: $fc
    push af                                       ; $4e8f: $f5
    ld a, l                                       ; $4e90: $7d
    sub $3d                                       ; $4e91: $d6 $3d
    push de                                       ; $4e93: $d5
    ld b, b                                       ; $4e94: $40
    add [hl]                                      ; $4e95: $86
    ld a, [hl-]                                   ; $4e96: $3a
    or [hl]                                       ; $4e97: $b6
    daa                                           ; $4e98: $27

jr_039_4e99:
    call c, $ef1d                                 ; $4e99: $dc $1d $ef
    sub d                                         ; $4e9c: $92
    sbc l                                         ; $4e9d: $9d
    jr c, jr_039_4e99                             ; $4e9e: $38 $f9

    sub d                                         ; $4ea0: $92
    ld c, l                                       ; $4ea1: $4d
    ld [hl], e                                    ; $4ea2: $73
    adc h                                         ; $4ea3: $8c
    ld a, [bc]                                    ; $4ea4: $0a
    adc $dd                                       ; $4ea5: $ce $dd
    adc e                                         ; $4ea7: $8b
    cp a                                          ; $4ea8: $bf
    ld e, $7e                                     ; $4ea9: $1e $7e
    jp nc, $ee13                                  ; $4eab: $d2 $13 $ee

    adc [hl]                                      ; $4eae: $8e
    ld [hl], a                                    ; $4eaf: $77
    ret                                           ; $4eb0: $c9


    ld c, [hl]                                    ; $4eb1: $4e
    sbc h                                         ; $4eb2: $9c
    inc a                                         ; $4eb3: $3c
    or [hl]                                       ; $4eb4: $b6
    xor h                                         ; $4eb5: $ac
    dec h                                         ; $4eb6: $25
    call $2301                                    ; $4eb7: $cd $01 $23
    rst $38                                       ; $4eba: $ff
    or $f6                                        ; $4ebb: $f6 $f6
    ld [hl], a                                    ; $4ebd: $77
    cp e                                          ; $4ebe: $bb
    pop hl                                        ; $4ebf: $e1
    ld h, [hl]                                    ; $4ec0: $66
    ld e, [hl]                                    ; $4ec1: $5e
    sub l                                         ; $4ec2: $95
    push af                                       ; $4ec3: $f5
    add h                                         ; $4ec4: $84
    cp e                                          ; $4ec5: $bb
    db $e3                                        ; $4ec6: $e3
    ld e, l                                       ; $4ec7: $5d
    or d                                          ; $4ec8: $b2
    inc de                                        ; $4ec9: $13
    daa                                           ; $4eca: $27
    adc a                                         ; $4ecb: $8f
    dec l                                         ; $4ecc: $2d
    ld l, e                                       ; $4ecd: $6b
    jp hl                                         ; $4ece: $e9


    ei                                            ; $4ecf: $fb
    xor h                                         ; $4ed0: $ac
    scf                                           ; $4ed1: $37
    call Call_000_0901                            ; $4ed2: $cd $01 $09
    db $fc                                        ; $4ed5: $fc
    push af                                       ; $4ed6: $f5
    ld a, l                                       ; $4ed7: $7d
    sub $3d                                       ; $4ed8: $d6 $3d

jr_039_4eda:
    push de                                       ; $4eda: $d5
    ld b, b                                       ; $4edb: $40
    add [hl]                                      ; $4edc: $86
    ld a, [hl-]                                   ; $4edd: $3a
    sub $1d                                       ; $4ede: $d6 $1d
    jp hl                                         ; $4ee0: $e9


    call Call_000_13dc                            ; $4ee1: $cd $dc $13
    xor $8e                                       ; $4ee4: $ee $8e
    ld [hl], a                                    ; $4ee6: $77
    ret                                           ; $4ee7: $c9


    ld c, [hl]                                    ; $4ee8: $4e
    sbc h                                         ; $4ee9: $9c
    inc a                                         ; $4eea: $3c
    or [hl]                                       ; $4eeb: $b6
    xor h                                         ; $4eec: $ac
    dec h                                         ; $4eed: $25
    call $c301                                    ; $4eee: $cd $01 $c3
    ld c, h                                       ; $4ef1: $4c
    cp [hl]                                       ; $4ef2: $be
    cp [hl]                                       ; $4ef3: $be
    ld c, h                                       ; $4ef4: $4c
    call z, $c704                                 ; $4ef5: $cc $04 $c7
    ld [hl], $4d                                  ; $4ef8: $36 $4d
    db $d3                                        ; $4efa: $d3
    ld [hl-], a                                   ; $4efb: $32
    rst $30                                       ; $4efc: $f7
    rrca                                          ; $4efd: $0f
    cp b                                          ; $4efe: $b8
    ld hl, sp+$33                                 ; $4eff: $f8 $33
    jr c, jr_039_4eda                             ; $4f01: $38 $d7

    jp nc, $887b                                  ; $4f03: $d2 $7b $88

    ld l, $eb                                     ; $4f06: $2e $eb
    xor b                                         ; $4f08: $a8
    or [hl]                                       ; $4f09: $b6
    inc [hl]                                      ; $4f0a: $34
    reti                                          ; $4f0b: $d9


    add d                                         ; $4f0c: $82
    ld h, b                                       ; $4f0d: $60
    ld c, d                                       ; $4f0e: $4a
    push de                                       ; $4f0f: $d5
    ld h, [hl]                                    ; $4f10: $66
    dec e                                         ; $4f11: $1d
    cp h                                          ; $4f12: $bc
    or [hl]                                       ; $4f13: $b6
    adc h                                         ; $4f14: $8c
    adc $bc                                       ; $4f15: $ce $bc
    ld e, c                                       ; $4f17: $59
    db $10                                        ; $4f18: $10
    ldh [$ed], a                                  ; $4f19: $e0 $ed
    and b                                         ; $4f1b: $a0
    push hl                                       ; $4f1c: $e5
    xor $d5                                       ; $4f1d: $ee $d5
    add [hl]                                      ; $4f1f: $86
    inc [hl]                                      ; $4f20: $34
    rlca                                          ; $4f21: $07
    adc h                                         ; $4f22: $8c
    ld a, [bc]                                    ; $4f23: $0a
    adc $dd                                       ; $4f24: $ce $dd
    adc e                                         ; $4f26: $8b
    cp a                                          ; $4f27: $bf
    ld e, $7e                                     ; $4f28: $1e $7e
    jp nc, $2661                                  ; $4f2a: $d2 $61 $26

    ld e, a                                       ; $4f2d: $5f
    ld e, a                                       ; $4f2e: $5f
    ld h, $66                                     ; $4f2f: $26 $66
    add d                                         ; $4f31: $82
    ld h, e                                       ; $4f32: $63
    sbc l                                         ; $4f33: $9d
    and $23                                       ; $4f34: $e6 $23
    rst $38                                       ; $4f36: $ff
    or $f6                                        ; $4f37: $f6 $f6
    ld [hl], a                                    ; $4f39: $77
    cp e                                          ; $4f3a: $bb
    pop hl                                        ; $4f3b: $e1
    ld h, [hl]                                    ; $4f3c: $66
    ld e, [hl]                                    ; $4f3d: $5e
    sub l                                         ; $4f3e: $95
    ld [hl], l                                    ; $4f3f: $75
    sbc b                                         ; $4f40: $98
    ret                                           ; $4f41: $c9


    rst $10                                       ; $4f42: $d7
    sub a                                         ; $4f43: $97
    adc c                                         ; $4f44: $89
    sbc c                                         ; $4f45: $99
    ldh [$58], a                                  ; $4f46: $e0 $58
    rst $30                                       ; $4f48: $f7
    ld a, l                                       ; $4f49: $7d
    sub $9b                                       ; $4f4a: $d6 $9b
    and $b3                                       ; $4f4c: $e6 $b3
    ld a, [de]                                    ; $4f4e: $1a
    ret z                                         ; $4f4f: $c8

    ret nc                                        ; $4f50: $d0

    rst $30                                       ; $4f51: $f7
    ld e, c                                       ; $4f52: $59
    scf                                           ; $4f53: $37
    ld hl, sp-$55                                 ; $4f54: $f8 $ab
    ld h, e                                       ; $4f56: $63
    db $dd                                        ; $4f57: $dd
    sub c                                         ; $4f58: $91
    sbc $cc                                       ; $4f59: $de $cc
    dec e                                         ; $4f5b: $1d
    ld h, [hl]                                    ; $4f5c: $66
    ld a, [c]                                     ; $4f5d: $f2
    push af                                       ; $4f5e: $f5
    ld h, l                                       ; $4f5f: $65
    ld h, d                                       ; $4f60: $62
    ld h, $38                                     ; $4f61: $26 $38
    sub $69                                       ; $4f63: $d6 $69
    ld c, $c3                                     ; $4f65: $0e $c3
    ld h, e                                       ; $4f67: $63
    adc e                                         ; $4f68: $8b
    ld b, c                                       ; $4f69: $41
    ld e, c                                       ; $4f6a: $59
    rr d                                          ; $4f6b: $cb $1a
    dec sp                                        ; $4f6d: $3b
    inc a                                         ; $4f6e: $3c
    or $5d                                        ; $4f6f: $f6 $5d
    or d                                          ; $4f71: $b2
    inc de                                        ; $4f72: $13
    daa                                           ; $4f73: $27
    ld e, a                                       ; $4f74: $5f
    or d                                          ; $4f75: $b2
    ld b, e                                       ; $4f76: $43
    sbc d                                         ; $4f77: $9a
    db $f4                                        ; $4f78: $f4
    or c                                          ; $4f79: $b1
    add c                                         ; $4f7a: $81
    ld d, b                                       ; $4f7b: $50
    sub $08                                       ; $4f7c: $d6 $08
    ld [hl], c                                    ; $4f7e: $71
    inc e                                         ; $4f7f: $1c
    ld d, b                                       ; $4f80: $50
    db $f4                                        ; $4f81: $f4
    sub e                                         ; $4f82: $93
    sbc $2d                                       ; $4f83: $de $2d
    jr nc, @+$7a                                  ; $4f85: $30 $78

    ld d, c                                       ; $4f87: $51
    ld a, [hl-]                                   ; $4f88: $3a
    inc h                                         ; $4f89: $24
    rlca                                          ; $4f8a: $07
    adc h                                         ; $4f8b: $8c
    ld a, [bc]                                    ; $4f8c: $0a
    adc $dd                                       ; $4f8d: $ce $dd
    adc e                                         ; $4f8f: $8b
    cp a                                          ; $4f90: $bf
    ld e, $7e                                     ; $4f91: $1e $7e
    ld d, d                                       ; $4f93: $52
    inc c                                         ; $4f94: $0c
    jp z, $d65a                                   ; $4f95: $ca $5a $d6

jr_039_4f98:
    dec e                                         ; $4f98: $1d
    ld e, $fb                                     ; $4f99: $1e $fb
    ld l, $d9                                     ; $4f9b: $2e $d9
    adc c                                         ; $4f9d: $89
    sub e                                         ; $4f9e: $93
    rst $00                                       ; $4f9f: $c7
    sub [hl]                                      ; $4fa0: $96
    or l                                          ; $4fa1: $b5
    and h                                         ; $4fa2: $a4
    add hl, sp                                    ; $4fa3: $39
    inc hl                                        ; $4fa4: $23
    rst $38                                       ; $4fa5: $ff
    or $f6                                        ; $4fa6: $f6 $f6
    ld [hl], a                                    ; $4fa8: $77
    cp e                                          ; $4fa9: $bb
    pop hl                                        ; $4faa: $e1
    ld h, [hl]                                    ; $4fab: $66
    ld e, [hl]                                    ; $4fac: $5e
    sub l                                         ; $4fad: $95
    dec d                                         ; $4fae: $15
    add e                                         ; $4faf: $83
    or d                                          ; $4fb0: $b2
    sub [hl]                                      ; $4fb1: $96
    ld [hl], l                                    ; $4fb2: $75
    add a                                         ; $4fb3: $87
    rst $00                                       ; $4fb4: $c7
    cp [hl]                                       ; $4fb5: $be
    ld c, e                                       ; $4fb6: $4b
    halt                                          ; $4fb7: $76
    ld [c], a                                     ; $4fb8: $e2
    db $e4                                        ; $4fb9: $e4
    or c                                          ; $4fba: $b1
    ld h, l                                       ; $4fbb: $65
    dec l                                         ; $4fbc: $2d
    ld a, l                                       ; $4fbd: $7d
    sbc a                                         ; $4fbe: $9f
    push af                                       ; $4fbf: $f5
    and [hl]                                      ; $4fc0: $a6
    add hl, sp                                    ; $4fc1: $39
    or e                                          ; $4fc2: $b3
    ld a, [de]                                    ; $4fc3: $1a
    ret z                                         ; $4fc4: $c8

    ret nc                                        ; $4fc5: $d0

    rst $30                                       ; $4fc6: $f7
    ld e, c                                       ; $4fc7: $59
    scf                                           ; $4fc8: $37
    ld hl, sp-$55                                 ; $4fc9: $f8 $ab
    ld h, e                                       ; $4fcb: $63
    db $dd                                        ; $4fcc: $dd
    sub c                                         ; $4fcd: $91
    sbc $cc                                       ; $4fce: $de $cc
    push bc                                       ; $4fd0: $c5
    and b                                         ; $4fd1: $a0

Jump_039_4fd2:
    xor h                                         ; $4fd2: $ac
    ld h, l                                       ; $4fd3: $65
    dec l                                         ; $4fd4: $2d
    dec e                                         ; $4fd5: $1d
    ld e, $fb                                     ; $4fd6: $1e $fb
    ld l, $d9                                     ; $4fd8: $2e $d9
    adc c                                         ; $4fda: $89
    sub e                                         ; $4fdb: $93
    rst $00                                       ; $4fdc: $c7
    sub [hl]                                      ; $4fdd: $96
    or l                                          ; $4fde: $b5
    and h                                         ; $4fdf: $a4
    add hl, sp                                    ; $4fe0: $39
    di                                            ; $4fe1: $f3
    ld e, d                                       ; $4fe2: $5a
    ld d, b                                       ; $4fe3: $50
    pop af                                        ; $4fe4: $f1
    rst $20                                       ; $4fe5: $e7
    ld [hl+], a                                   ; $4fe6: $22
    ld a, a                                       ; $4fe7: $7f
    ld l, e                                       ; $4fe8: $6b
    ld c, d                                       ; $4fe9: $4a
    rst $08                                       ; $4fea: $cf
    push de                                       ; $4feb: $d5
    adc [hl]                                      ; $4fec: $8e
    push af                                       ; $4fed: $f5
    halt                                          ; $4fee: $76
    xor $40                                       ; $4fef: $ee $40
    cp $4a                                        ; $4ff1: $fe $4a
    ld d, [hl]                                    ; $4ff3: $56
    dec h                                         ; $4ff4: $25
    ld h, d                                       ; $4ff5: $62
    or l                                          ; $4ff6: $b5
    rst $30                                       ; $4ff7: $f7
    call c, Call_000_2fe4                         ; $4ff8: $dc $e4 $2f
    ld [hl-], a                                   ; $4ffb: $32
    ld h, $cd                                     ; $4ffc: $26 $cd
    ld bc, $aa49                                  ; $4ffe: $01 $49 $aa
    ld l, h                                       ; $5001: $6c
    jr nz, jr_039_4f98                            ; $5002: $20 $94

    dec [hl]                                      ; $5004: $35
    and d                                         ; $5005: $a2
    push hl                                       ; $5006: $e5
    call c, $b14f                                 ; $5007: $dc $4f $b1
    pop bc                                        ; $500a: $c1
    ld e, a                                       ; $500b: $5f
    push af                                       ; $500c: $f5
    rst $20                                       ; $500d: $e7
    rrca                                          ; $500e: $0f
    ld a, h                                       ; $500f: $7c
    xor $a8                                       ; $5010: $ee $a8
    dec bc                                        ; $5012: $0b
    ret nz                                        ; $5013: $c0

    sub d                                         ; $5014: $92
    halt                                          ; $5015: $76
    sbc [hl]                                      ; $5016: $9e
    and e                                         ; $5017: $a3
    ld a, [hl-]                                   ; $5018: $3a
    and h                                         ; $5019: $a4
    ld h, h                                       ; $501a: $64
    ld d, l                                       ; $501b: $55
    sub $77                                       ; $501c: $d6 $77
    rlca                                          ; $501e: $07
    ld a, d                                       ; $501f: $7a
    rst $08                                       ; $5020: $cf
    push de                                       ; $5021: $d5
    rra                                           ; $5022: $1f
    or c                                          ; $5023: $b1
    pop bc                                        ; $5024: $c1
    ld e, a                                       ; $5025: $5f
    ld [hl], l                                    ; $5026: $75
    ld c, b                                       ; $5027: $48
    or l                                          ; $5028: $b5
    ld h, e                                       ; $5029: $63
    cp l                                          ; $502a: $bd
    sbc l                                         ; $502b: $9d
    ld e, e                                       ; $502c: $5b
    ld b, d                                       ; $502d: $42
    dec e                                         ; $502e: $1d
    inc bc                                        ; $502f: $03
    xor a                                         ; $5030: $af
    ld e, a                                       ; $5031: $5f
    pop af                                        ; $5032: $f1
    rst $10                                       ; $5033: $d7
    ld l, h                                       ; $5034: $6c
    db $ec                                        ; $5035: $ec
    ld e, l                                       ; $5036: $5d
    sbc a                                         ; $5037: $9f
    sbc e                                         ; $5038: $9b
    sbc c                                         ; $5039: $99
    ld [hl], l                                    ; $503a: $75
    add e                                         ; $503b: $83
    cp a                                          ; $503c: $bf
    ld [$3a90], a                                 ; $503d: $ea $90 $3a
    sub $1d                                       ; $5040: $d6 $1d
    pop af                                        ; $5042: $f1
    dec b                                         ; $5043: $05
    cp h                                          ; $5044: $bc
    or a                                          ; $5045: $b7
    db $eb                                        ; $5046: $eb
    ld h, b                                       ; $5047: $60
    ld h, e                                       ; $5048: $63
    ccf                                           ; $5049: $3f

jr_039_504a:
    call nz, $25b5                                ; $504a: $c4 $b5 $25
    ld c, b                                       ; $504d: $48
    ld d, d                                       ; $504e: $52
    db $ed                                        ; $504f: $ed
    ret c                                         ; $5050: $d8

    adc $72                                       ; $5051: $ce $72
    pop de                                        ; $5053: $d1
    cp b                                          ; $5054: $b8
    ld a, [hl-]                                   ; $5055: $3a
    or a                                          ; $5056: $b7
    call nz, $0d00                                ; $5057: $c4 $00 $0d
    xor [hl]                                      ; $505a: $ae
    jr nc, jr_039_504a                            ; $505b: $30 $ed

    cp h                                          ; $505d: $bc
    sub [hl]                                      ; $505e: $96
    cp e                                          ; $505f: $bb
    ld d, a                                       ; $5060: $57
    cp e                                          ; $5061: $bb
    jr jr_039_50a2                                ; $5062: $18 $3e

    rst $30                                       ; $5064: $f7
    xor $dd                                       ; $5065: $ee $dd
    ld l, d                                       ; $5067: $6a
    ld d, l                                       ; $5068: $55
    dec e                                         ; $5069: $1d
    db $fc                                        ; $506a: $fc
    dec [hl]                                      ; $506b: $35
    or [hl]                                       ; $506c: $b6
    sbc c                                         ; $506d: $99
    ld e, h                                       ; $506e: $5c
    db $e3                                        ; $506f: $e3
    ld e, b                                       ; $5070: $58
    jp z, $e268                                   ; $5071: $ca $68 $e2

    ccf                                           ; $5074: $3f
    add hl, hl                                    ; $5075: $29
    ld l, e                                       ; $5076: $6b
    ld [hl+], a                                   ; $5077: $22
    ld d, [hl]                                    ; $5078: $56
    dec de                                        ; $5079: $1b
    ld hl, $01cd                                  ; $507a: $21 $cd $01
    add hl, bc                                    ; $507d: $09
    db $fc                                        ; $507e: $fc
    ld d, l                                       ; $507f: $55
    ld a, a                                       ; $5080: $7f

jr_039_5081:
    cp $c0                                        ; $5081: $fe $c0
    cp l                                          ; $5083: $bd
    add a                                         ; $5084: $87
    call c, $f068                                 ; $5085: $dc $68 $f0
    ld [hl], a                                    ; $5088: $77
    xor [hl]                                      ; $5089: $ae
    ld d, [hl]                                    ; $508a: $56
    cp l                                          ; $508b: $bd
    adc l                                         ; $508c: $8d
    cp l                                          ; $508d: $bd
    dec bc                                        ; $508e: $0b
    ld b, [hl]                                    ; $508f: $46
    jr z, @+$6d                                   ; $5090: $28 $6b

    ld b, h                                       ; $5092: $44
    ld c, e                                       ; $5093: $4b
    ret                                           ; $5094: $c9


    ld e, a                                       ; $5095: $5f
    or c                                          ; $5096: $b1
    sub [hl]                                      ; $5097: $96
    dec a                                         ; $5098: $3d
    ld [hl], a                                    ; $5099: $77
    call nc, Call_039_6005                        ; $509a: $d4 $05 $60
    ld c, c                                       ; $509d: $49
    sbc e                                         ; $509e: $9b
    db $e4                                        ; $509f: $e4
    ld e, b                                       ; $50a0: $58
    sub a                                         ; $50a1: $97

jr_039_50a2:
    ret                                           ; $50a2: $c9


    rst $18                                       ; $50a3: $df
    dec a                                         ; $50a4: $3d
    sub c                                         ; $50a5: $91
    ccf                                           ; $50a6: $3f
    ld d, a                                       ; $50a7: $57
    ld c, b                                       ; $50a8: $48
    ld c, a                                       ; $50a9: $4f
    and b                                         ; $50aa: $a0
    ld b, a                                       ; $50ab: $47
    ldh a, [$97]                                  ; $50ac: $f0 $97
    ld [hl], $39                                  ; $50ae: $36 $39
    inc l                                         ; $50b0: $2c
    rst $20                                       ; $50b1: $e7
    ld b, $7f                                     ; $50b2: $06 $7f
    call $bacc                                    ; $50b4: $cd $cc $ba
    ld a, [hl-]                                   ; $50b7: $3a
    and h                                         ; $50b8: $a4
    adc [hl]                                      ; $50b9: $8e
    ld [hl], l                                    ; $50ba: $75
    ld b, a                                       ; $50bb: $47
    ld a, h                                       ; $50bc: $7c
    ld bc, $edef                                  ; $50bd: $01 $ef $ed
    ld a, [hl-]                                   ; $50c0: $3a
    ret c                                         ; $50c1: $d8

    ret c                                         ; $50c2: $d8

    rrca                                          ; $50c3: $0f
    ld [hl], c                                    ; $50c4: $71
    ld l, l                                       ; $50c5: $6d
    add hl, bc                                    ; $50c6: $09
    sub d                                         ; $50c7: $92
    ld d, h                                       ; $50c8: $54
    dec sp                                        ; $50c9: $3b
    or [hl]                                       ; $50ca: $b6
    or e                                          ; $50cb: $b3
    ld e, h                                       ; $50cc: $5c
    inc [hl]                                      ; $50cd: $34
    xor [hl]                                      ; $50ce: $ae
    adc $2d                                       ; $50cf: $ce $2d
    ld sp, $8340                                  ; $50d1: $31 $40 $83
    dec hl                                        ; $50d4: $2b
    ld c, h                                       ; $50d5: $4c
    dec sp                                        ; $50d6: $3b
    xor a                                         ; $50d7: $af
    push hl                                       ; $50d8: $e5
    xor $d5                                       ; $50d9: $ee $d5
    ld l, $86                                     ; $50db: $2e $86
    rst $08                                       ; $50dd: $cf
    cp l                                          ; $50de: $bd
    ld a, e                                       ; $50df: $7b
    or a                                          ; $50e0: $b7
    ld e, d                                       ; $50e1: $5a
    ld d, l                                       ; $50e2: $55
    rlca                                          ; $50e3: $07
    ld a, a                                       ; $50e4: $7f
    adc l                                         ; $50e5: $8d
    ld l, l                                       ; $50e6: $6d
    ld h, $d7                                     ; $50e7: $26 $d7
    jr c, jr_039_5081                             ; $50e9: $38 $96

    ld [hl-], a                                   ; $50eb: $32
    sbc d                                         ; $50ec: $9a
    ld hl, sp+$4f                                 ; $50ed: $f8 $4f
    jp z, $889a                                   ; $50ef: $ca $9a $88

    push de                                       ; $50f2: $d5
    ld b, [hl]                                    ; $50f3: $46
    ld c, b                                       ; $50f4: $48
    ld [hl], e                                    ; $50f5: $73
    ret                                           ; $50f6: $c9


    ld h, c                                       ; $50f7: $61
    ld l, c                                       ; $50f8: $69
    jr nz, jr_039_514f                            ; $50f9: $20 $54

    dec sp                                        ; $50fb: $3b
    sub $5d                                       ; $50fc: $d6 $5d
    dec hl                                        ; $50fe: $2b
    ld [hl], a                                    ; $50ff: $77
    call nz, $f017                                ; $5100: $c4 $17 $f0
    sbc $ae                                       ; $5103: $de $ae
    add e                                         ; $5105: $83
    adc l                                         ; $5106: $8d
    db $fd                                        ; $5107: $fd
    db $10                                        ; $5108: $10
    rst $10                                       ; $5109: $d7
    sbc [hl]                                      ; $510a: $9e
    sbc e                                         ; $510b: $9b
    db $fc                                        ; $510c: $fc
    ld b, l                                       ; $510d: $45
    add $a4                                       ; $510e: $c6 $a4
    add hl, sp                                    ; $5110: $39
    ret                                           ; $5111: $c9


    ld h, c                                       ; $5112: $61
    ld l, c                                       ; $5113: $69
    jr nz, @-$2a                                  ; $5114: $20 $d4

    or c                                          ; $5116: $b1
    xor $5a                                       ; $5117: $ee $5a
    cp c                                          ; $5119: $b9
    inc hl                                        ; $511a: $23
    cp [hl]                                       ; $511b: $be
    add b                                         ; $511c: $80
    rst $30                                       ; $511d: $f7
    halt                                          ; $511e: $76
    dec e                                         ; $511f: $1d
    ld l, h                                       ; $5120: $6c
    db $ec                                        ; $5121: $ec
    add a                                         ; $5122: $87
    cp b                                          ; $5123: $b8
    or $5c                                        ; $5124: $f6 $5c
    inc c                                         ; $5126: $0c
    scf                                           ; $5127: $37
    db $10                                        ; $5128: $10
    sbc d                                         ; $5129: $9a
    ld e, c                                       ; $512a: $59
    cp [hl]                                       ; $512b: $be
    halt                                          ; $512c: $76
    dec l                                         ; $512d: $2d
    ld [$023d], sp                                ; $512e: $08 $3d $02
    ld [$4b58], a                                 ; $5131: $ea $58 $4b
    add a                                         ; $5134: $87
    dec hl                                        ; $5135: $2b
    ld [$363a], a                                 ; $5136: $ea $3a $36
    inc sp                                        ; $5139: $33
    ret z                                         ; $513a: $c8

    ld b, l                                       ; $513b: $45
    db $10                                        ; $513c: $10
    sbc $34                                       ; $513d: $de $34
    rlca                                          ; $513f: $07
    jp Jump_039_5d63                              ; $5140: $c3 $63 $5d


    ld d, [hl]                                    ; $5143: $56
    cp $ea                                        ; $5144: $fe $ea
    or l                                          ; $5146: $b5
    ld [hl], d                                    ; $5147: $72
    ld b, a                                       ; $5148: $47
    ld a, h                                       ; $5149: $7c
    ld bc, $edef                                  ; $514a: $01 $ef $ed
    ld a, [hl-]                                   ; $514d: $3a
    ret c                                         ; $514e: $d8

jr_039_514f:
    ret c                                         ; $514f: $d8

    rrca                                          ; $5150: $0f
    ld [hl], c                                    ; $5151: $71
    db $ed                                        ; $5152: $ed
    cp c                                          ; $5153: $b9
    ret                                           ; $5154: $c9


    ld e, a                                       ; $5155: $5f
    ld h, h                                       ; $5156: $64
    ld c, h                                       ; $5157: $4c
    jp c, $fe04                                   ; $5158: $da $04 $fe

    ld a, [$822e]                                 ; $515b: $fa $2e $82
    ldh a, [$b9]                                  ; $515e: $f0 $b9
    add $06                                       ; $5160: $c6 $06
    ld b, d                                       ; $5162: $42
    dec e                                         ; $5163: $1d
    db $eb                                        ; $5164: $eb
    ld h, [hl]                                    ; $5165: $66
    ld a, [bc]                                    ; $5166: $0a
    sbc h                                         ; $5167: $9c
    and $49                                       ; $5168: $e6 $49
    xor d                                         ; $516a: $aa
    or a                                          ; $516b: $b7
    db $eb                                        ; $516c: $eb
    jr c, jr_039_517f                             ; $516d: $38 $10

    sbc d                                         ; $516f: $9a
    ld e, c                                       ; $5170: $59
    cp [hl]                                       ; $5171: $be
    halt                                          ; $5172: $76
    dec h                                         ; $5173: $25
    ld hl, sp-$7d                                 ; $5174: $f8 $83
    ret z                                         ; $5176: $c8

    adc $35                                       ; $5177: $ce $35
    ld [hl], $0b                                  ; $5179: $36 $0b
    ld d, $ea                                     ; $517b: $16 $ea
    ld e, b                                       ; $517d: $58
    ld [hl], a                                    ; $517e: $77

jr_039_517f:
    xor l                                         ; $517f: $ad
    call c, Call_039_5f11                         ; $5180: $dc $11 $5f
    ret nz                                        ; $5183: $c0

    ld a, e                                       ; $5184: $7b
    cp e                                          ; $5185: $bb
    ld c, $36                                     ; $5186: $0e $36
    or $43                                        ; $5188: $f6 $43
    ld e, h                                       ; $518a: $5c
    ld a, e                                       ; $518b: $7b
    ld l, [hl]                                    ; $518c: $6e
    ld a, [c]                                     ; $518d: $f2
    rla                                           ; $518e: $17
    add hl, de                                    ; $518f: $19
    sub e                                         ; $5190: $93
    or [hl]                                       ; $5191: $b6
    add hl, bc                                    ; $5192: $09
    db $fc                                        ; $5193: $fc
    push af                                       ; $5194: $f5
    ld e, l                                       ; $5195: $5d
    inc b                                         ; $5196: $04
    pop hl                                        ; $5197: $e1
    ld [hl], e                                    ; $5198: $73
    adc l                                         ; $5199: $8d
    dec c                                         ; $519a: $0d
    add h                                         ; $519b: $84
    ld a, [hl-]                                   ; $519c: $3a
    sub $e7                                       ; $519d: $d6 $e7
    ld [$b570], a                                 ; $519f: $ea $70 $b5
    ld l, d                                       ; $51a2: $6a
    ld h, [hl]                                    ; $51a3: $66
    ld d, [hl]                                    ; $51a4: $56
    cp [hl]                                       ; $51a5: $be
    ld [c], a                                     ; $51a6: $e2
    rst $08                                       ; $51a7: $cf
    db $db                                        ; $51a8: $db
    db $db                                        ; $51a9: $db
    rst $18                                       ; $51aa: $df
    ld b, l                                       ; $51ab: $45
    ld c, b                                       ; $51ac: $48
    ld [hl], e                                    ; $51ad: $73
    ret                                           ; $51ae: $c9


    ld h, c                                       ; $51af: $61
    ld l, c                                       ; $51b0: $69
    jr nz, jr_039_5207                            ; $51b1: $20 $54

    dec sp                                        ; $51b3: $3b
    sub $dd                                       ; $51b4: $d6 $dd
    ld b, h                                       ; $51b6: $44
    cp $10                                        ; $51b7: $fe $10
    call c, Call_039_5f11                         ; $51b9: $dc $11 $5f
    ret nz                                        ; $51bc: $c0

    ld a, e                                       ; $51bd: $7b
    cp e                                          ; $51be: $bb
    ld c, $36                                     ; $51bf: $0e $36
    or $43                                        ; $51c1: $f6 $43
    ld e, h                                       ; $51c3: $5c
    ld a, e                                       ; $51c4: $7b

jr_039_51c5:
    ld l, [hl]                                    ; $51c5: $6e
    ld a, [c]                                     ; $51c6: $f2
    rla                                           ; $51c7: $17
    add hl, de                                    ; $51c8: $19
    sub e                                         ; $51c9: $93
    ld [hl], $81                                  ; $51ca: $36 $81
    cp a                                          ; $51cc: $bf
    cp [hl]                                       ; $51cd: $be
    adc e                                         ; $51ce: $8b
    jr nz, jr_039_524d                            ; $51cf: $20 $7c

    xor [hl]                                      ; $51d1: $ae
    or c                                          ; $51d2: $b1
    add c                                         ; $51d3: $81
    ret nc                                        ; $51d4: $d0

    sbc e                                         ; $51d5: $9b
    ld h, e                                       ; $51d6: $63
    ld e, l                                       ; $51d7: $5d
    db $e4                                        ; $51d8: $e4
    adc a                                         ; $51d9: $8f
    sbc d                                         ; $51da: $9a
    ccf                                           ; $51db: $3f
    ld [hl], b                                    ; $51dc: $70
    sbc d                                         ; $51dd: $9a
    inc bc                                        ; $51de: $03
    add hl, bc                                    ; $51df: $09
    db $fc                                        ; $51e0: $fc
    push af                                       ; $51e1: $f5
    xor [hl]                                      ; $51e2: $ae
    db $10                                        ; $51e3: $10
    pop bc                                        ; $51e4: $c1
    rst $20                                       ; $51e5: $e7
    ld [$588f], a                                 ; $51e6: $ea $8f $58
    xor l                                         ; $51e9: $ad
    jp z, $aa7e                                   ; $51ea: $ca $7e $aa

    ld a, e                                       ; $51ed: $7b
    ld [hl], a                                    ; $51ee: $77
    and $ad                                       ; $51ef: $e6 $ad
    ld h, e                                       ; $51f1: $63
    dec l                                         ; $51f2: $2d
    ld e, l                                       ; $51f3: $5d
    dec hl                                        ; $51f4: $2b
    ld l, a                                       ; $51f5: $6f
    ld b, a                                       ; $51f6: $47
    ld a, h                                       ; $51f7: $7c
    ld bc, $edef                                  ; $51f8: $01 $ef $ed
    ld a, [hl-]                                   ; $51fb: $3a
    ret c                                         ; $51fc: $d8

    ret c                                         ; $51fd: $d8

    rrca                                          ; $51fe: $0f
    ld [hl], c                                    ; $51ff: $71
    ld l, l                                       ; $5200: $6d
    rlca                                          ; $5201: $07
    cpl                                           ; $5202: $2f
    ld h, c                                       ; $5203: $61
    dec e                                         ; $5204: $1d
    or a                                          ; $5205: $b7
    db $eb                                        ; $5206: $eb

jr_039_5207:
    jr c, jr_039_51c5                             ; $5207: $38 $bc

    cp l                                          ; $5209: $bd
    sub e                                         ; $520a: $93
    ld b, h                                       ; $520b: $44
    dec de                                        ; $520c: $1b
    pop hl                                        ; $520d: $e1
    call c, Call_000_2fe4                         ; $520e: $dc $e4 $2f
    ld [hl-], a                                   ; $5211: $32
    ld h, $cd                                     ; $5212: $26 $cd
    ld bc, $17c9                                  ; $5214: $01 $c9 $17
    xor l                                         ; $5217: $ad
    ld c, $a9                                     ; $5218: $0e $a9
    halt                                          ; $521a: $76
    xor h                                         ; $521b: $ac
    cp e                                          ; $521c: $bb
    ld d, [hl]                                    ; $521d: $56
    xor $88                                       ; $521e: $ee $88
    cpl                                           ; $5220: $2f
    ldh [$bd], a                                  ; $5221: $e0 $bd
    ld e, l                                       ; $5223: $5d
    rlca                                          ; $5224: $07
    dec de                                        ; $5225: $1b
    ei                                            ; $5226: $fb
    ld hl, $1dae                                  ; $5227: $21 $ae $1d
    jp nc, $b0e4                                  ; $522a: $d2 $e4 $b0

    inc [hl]                                      ; $522d: $34
    dec bc                                        ; $522e: $0b
    ld d, $6a                                     ; $522f: $16 $6a
    db $ec                                        ; $5231: $ec
    ld a, [hl+]                                   ; $5232: $2a
    ld l, c                                       ; $5233: $69
    ld a, [c]                                     ; $5234: $f2
    ld d, a                                       ; $5235: $57
    inc bc                                        ; $5236: $03
    sub b                                         ; $5237: $90
    ld sp, hl                                     ; $5238: $f9
    ld e, $bb                                     ; $5239: $1e $bb
    ld e, $92                                     ; $523b: $1e $92
    inc bc                                        ; $523d: $03
    ret                                           ; $523e: $c9


    rla                                           ; $523f: $17
    xor l                                         ; $5240: $ad
    ld c, $a9                                     ; $5241: $0e $a9
    halt                                          ; $5243: $76
    xor h                                         ; $5244: $ac
    cp e                                          ; $5245: $bb
    ld d, [hl]                                    ; $5246: $56
    xor $88                                       ; $5247: $ee $88
    cpl                                           ; $5249: $2f
    ldh [$bd], a                                  ; $524a: $e0 $bd
    ld e, l                                       ; $524c: $5d

jr_039_524d:
    rlca                                          ; $524d: $07
    dec de                                        ; $524e: $1b
    ei                                            ; $524f: $fb
    ld hl, $1dae                                  ; $5250: $21 $ae $1d
    jp nc, Jump_000_1f51                          ; $5253: $d2 $51 $1f

    or c                                          ; $5256: $b1
    ld e, a                                       ; $5257: $5f
    ld de, $eae7                                  ; $5258: $11 $e7 $ea
    adc a                                         ; $525b: $8f
    ld e, b                                       ; $525c: $58
    xor l                                         ; $525d: $ad
    jp z, $8e3a                                   ; $525e: $ca $3a $8e

    adc [hl]                                      ; $5261: $8e
    inc c                                         ; $5262: $0c
    db $e4                                        ; $5263: $e4
    rst $08                                       ; $5264: $cf
    db $db                                        ; $5265: $db
    dec c                                         ; $5266: $0d
    cp $a0                                        ; $5267: $fe $a0
    add e                                         ; $5269: $83
    ld d, $7a                                     ; $526a: $16 $7a
    adc c                                         ; $526c: $89
    or a                                          ; $526d: $b7
    sbc c                                         ; $526e: $99
    rra                                           ; $526f: $1f
    jp nz, Jump_000_1c90                          ; $5270: $c2 $90 $1c

    add hl, bc                                    ; $5273: $09
    db $fc                                        ; $5274: $fc
    push af                                       ; $5275: $f5
    ld e, l                                       ; $5276: $5d
    inc b                                         ; $5277: $04
    pop hl                                        ; $5278: $e1
    ld [hl], e                                    ; $5279: $73
    ld [hl], l                                    ; $527a: $75
    jr @-$21                                      ; $527b: $18 $dd

    ld de, $c05f                                  ; $527d: $11 $5f $c0
    ld a, e                                       ; $5280: $7b
    cp e                                          ; $5281: $bb
    ld c, $36                                     ; $5282: $0e $36
    or $43                                        ; $5284: $f6 $43
    ld e, h                                       ; $5286: $5c
    db $db                                        ; $5287: $db
    add c                                         ; $5288: $81
    adc a                                         ; $5289: $8f
    ld [$ad8d], sp                                ; $528a: $08 $8d $ad
    halt                                          ; $528d: $76
    ld l, h                                       ; $528e: $6c
    sbc c                                         ; $528f: $99
    inc bc                                        ; $5290: $03
    ld h, c                                       ; $5291: $61
    ld a, d                                       ; $5292: $7a
    ld l, [hl]                                    ; $5293: $6e
    ld a, [c]                                     ; $5294: $f2
    rla                                           ; $5295: $17
    add hl, de                                    ; $5296: $19
    sub e                                         ; $5297: $93
    and $09                                       ; $5298: $e6 $09
    db $fc                                        ; $529a: $fc
    push af                                       ; $529b: $f5
    ld [hl], $f6                                  ; $529c: $36 $f6
    ld l, $b8                                     ; $529e: $2e $b8
    ld [hl], a                                    ; $52a0: $77
    inc bc                                        ; $52a1: $03
    ld a, b                                       ; $52a2: $78
    rst $08                                       ; $52a3: $cf
    push de                                       ; $52a4: $d5
    rra                                           ; $52a5: $1f
    or c                                          ; $52a6: $b1
    ld a, [$1d63]                                 ; $52a7: $fa $63 $1d
    db $eb                                        ; $52aa: $eb
    ld h, [hl]                                    ; $52ab: $66
    ld a, [bc]                                    ; $52ac: $0a
    call c, Call_039_5f11                         ; $52ad: $dc $11 $5f
    ret nz                                        ; $52b0: $c0

    ld a, e                                       ; $52b1: $7b
    cp e                                          ; $52b2: $bb
    ld c, $36                                     ; $52b3: $0e $36
    or $43                                        ; $52b5: $f6 $43
    ld e, h                                       ; $52b7: $5c
    db $db                                        ; $52b8: $db
    ld b, b                                       ; $52b9: $40
    jr c, jr_039_52f3                             ; $52ba: $38 $37

    ld sp, hl                                     ; $52bc: $f9
    adc e                                         ; $52bd: $8b
    adc h                                         ; $52be: $8c
    ld c, c                                       ; $52bf: $49
    ld [hl], e                                    ; $52c0: $73
    and e                                         ; $52c1: $a3
    ld b, e                                       ; $52c2: $43
    adc d                                         ; $52c3: $8a
    ccf                                           ; $52c4: $3f
    di                                            ; $52c5: $f3
    ld d, [hl]                                    ; $52c6: $56
    add a                                         ; $52c7: $87
    ld [hl], h                                    ; $52c8: $74
    sbc b                                         ; $52c9: $98
    sub c                                         ; $52ca: $91
    ccf                                           ; $52cb: $3f
    add a                                         ; $52cc: $87
    ld a, $f7                                     ; $52cd: $3e $f7
    xor $dd                                       ; $52cf: $ee $dd
    ld a, [hl-]                                   ; $52d1: $3a
    sub $5d                                       ; $52d2: $d6 $5d
    dec hl                                        ; $52d4: $2b
    ld [hl], a                                    ; $52d5: $77
    call nz, $b075                                ; $52d6: $c4 $75 $b0
    or c                                          ; $52d9: $b1
    rra                                           ; $52da: $1f
    ld [c], a                                     ; $52db: $e2
    jp c, $163a                                   ; $52dc: $da $3a $16

    inc h                                         ; $52df: $24
    ld [$d202], sp                                ; $52e0: $08 $02 $d2
    inc e                                         ; $52e3: $1c
    ld c, c                                       ; $52e4: $49
    rra                                           ; $52e5: $1f
    dec de                                        ; $52e6: $1b
    ld [$94fd], sp                                ; $52e7: $08 $fd $94
    ld a, [de]                                    ; $52ea: $1a
    rst $08                                       ; $52eb: $cf
    cp l                                          ; $52ec: $bd
    ld a, a                                       ; $52ed: $7f
    ld l, h                                       ; $52ee: $6c
    ldh a, [$57]                                  ; $52ef: $f0 $57
    or d                                          ; $52f1: $b2
    sub d                                         ; $52f2: $92

jr_039_52f3:
    sbc [hl]                                      ; $52f3: $9e
    ldh [$80], a                                  ; $52f4: $e0 $80
    cp [hl]                                       ; $52f6: $be
    rst $08                                       ; $52f7: $cf
    ld a, [$e4dc]                                 ; $52f8: $fa $dc $e4
    cpl                                           ; $52fb: $2f
    ld [hl-], a                                   ; $52fc: $32
    ld h, $cd                                     ; $52fd: $26 $cd
    ld bc, $4709                                  ; $52ff: $01 $09 $47
    ld b, a                                       ; $5302: $47
    ld e, [hl]                                    ; $5303: $5e
    add a                                         ; $5304: $87
    rla                                           ; $5305: $17
    ld a, [$eb3e]                                 ; $5306: $fa $3e $eb
    ld b, $7f                                     ; $5309: $06 $7f
    cp l                                          ; $530b: $bd
    add hl, sp                                    ; $530c: $39
    sub $1d                                       ; $530d: $d6 $1d
    pop af                                        ; $530f: $f1
    dec b                                         ; $5310: $05
    cp h                                          ; $5311: $bc
    or a                                          ; $5312: $b7
    db $eb                                        ; $5313: $eb
    ld h, b                                       ; $5314: $60
    ld h, e                                       ; $5315: $63
    ccf                                           ; $5316: $3f
    call nz, $deb5                                ; $5317: $c4 $b5 $de
    ld e, $7e                                     ; $531a: $1e $7e
    ld d, d                                       ; $531c: $52
    add d                                         ; $531d: $82
    inc h                                         ; $531e: $24
    push de                                       ; $531f: $d5
    pop bc                                        ; $5320: $c1
    rst $18                                       ; $5321: $df
    cp c                                          ; $5322: $b9
    ret                                           ; $5323: $c9


    ld e, a                                       ; $5324: $5f
    ld h, h                                       ; $5325: $64
    ld c, h                                       ; $5326: $4c
    sbc d                                         ; $5327: $9a
    inc bc                                        ; $5328: $03
    inc hl                                        ; $5329: $23
    xor [hl]                                      ; $532a: $ae
    db $e3                                        ; $532b: $e3
    jr z, jr_039_533c                             ; $532c: $28 $0e

    inc h                                         ; $532e: $24
    add d                                         ; $532f: $82
    and l                                         ; $5330: $a5
    ld a, e                                       ; $5331: $7b
    pop af                                        ; $5332: $f1
    ld d, a                                       ; $5333: $57
    rst $00                                       ; $5334: $c7
    ld e, $9f                                     ; $5335: $1e $9f
    halt                                          ; $5337: $76
    ldh a, [rNR12]                                ; $5338: $f0 $12
    sub $71                                       ; $533a: $d6 $71

jr_039_533c:
    ld l, [hl]                                    ; $533c: $6e
    ld a, [c]                                     ; $533d: $f2
    rla                                           ; $533e: $17
    add hl, de                                    ; $533f: $19
    sub e                                         ; $5340: $93
    halt                                          ; $5341: $76
    jr c, jr_039_535a                             ; $5342: $38 $16

    call nz, $e104                                ; $5344: $c4 $04 $e1
    ld l, l                                       ; $5347: $6d
    inc e                                         ; $5348: $1c
    add a                                         ; $5349: $87
    and l                                         ; $534a: $a5
    rst $30                                       ; $534b: $f7
    or b                                          ; $534c: $b0
    or [hl]                                       ; $534d: $b6
    ld [hl], h                                    ; $534e: $74
    xor l                                         ; $534f: $ad
    call c, Call_039_5f11                         ; $5350: $dc $11 $5f
    ret nz                                        ; $5353: $c0

    ld a, e                                       ; $5354: $7b
    cp e                                          ; $5355: $bb
    ld c, $36                                     ; $5356: $0e $36
    or $43                                        ; $5358: $f6 $43

jr_039_535a:
    ld e, h                                       ; $535a: $5c
    db $eb                                        ; $535b: $eb
    xor l                                         ; $535c: $ad
    ld h, e                                       ; $535d: $63
    db $d3                                        ; $535e: $d3
    inc e                                         ; $535f: $1c
    ret                                           ; $5360: $c9


    ld b, e                                       ; $5361: $43
    rst $20                                       ; $5362: $e7
    sbc d                                         ; $5363: $9a
    ld l, e                                       ; $5364: $6b
    cp $8e                                        ; $5365: $fe $8e
    sbc d                                         ; $5367: $9a
    ld h, e                                       ; $5368: $63
    xor $b9                                       ; $5369: $ee $b9
    add a                                         ; $536b: $87
    rst $08                                       ; $536c: $cf
    ld [hl], l                                    ; $536d: $75
    ld l, $7f                                     ; $536e: $2e $7f
    ld e, a                                       ; $5370: $5f
    ld a, $07                                     ; $5371: $3e $07
    dec bc                                        ; $5373: $0b
    sbc [hl]                                      ; $5374: $9e
    cp e                                          ; $5375: $bb
    rst $38                                       ; $5376: $ff
    jr nc, @-$08                                  ; $5377: $30 $f6

    xor a                                         ; $5379: $af
    xor [hl]                                      ; $537a: $ae
    sbc b                                         ; $537b: $98
    ld a, [hl]                                    ; $537c: $7e
    or b                                          ; $537d: $b0
    ld l, [hl]                                    ; $537e: $6e
    xor h                                         ; $537f: $ac
    ld c, $1e                                     ; $5380: $0e $1e
    cp a                                          ; $5382: $bf
    ld e, a                                       ; $5383: $5f
    ld e, h                                       ; $5384: $5c
    sub b                                         ; $5385: $90
    xor a                                         ; $5386: $af
    ld a, l                                       ; $5387: $7d
    ld a, h                                       ; $5388: $7c
    cp c                                          ; $5389: $b9
    ld h, c                                       ; $538a: $61
    cpl                                           ; $538b: $2f
    and d                                         ; $538c: $a2
    ld a, a                                       ; $538d: $7f
    ld [hl], l                                    ; $538e: $75
    add hl, de                                    ; $538f: $19
    ld [hl], h                                    ; $5390: $74
    db $f4                                        ; $5391: $f4
    sub a                                         ; $5392: $97
    or l                                          ; $5393: $b5
    ld [hl], h                                    ; $5394: $74
    sbc b                                         ; $5395: $98
    ld e, h                                       ; $5396: $5c
    sbc b                                         ; $5397: $98
    or $e4                                        ; $5398: $f6 $e4
    add hl, bc                                    ; $539a: $09
    ld [hl], b                                    ; $539b: $70
    jp nc, $26c9                                  ; $539c: $d2 $c9 $26

    call z, Call_039_4901                         ; $539f: $cc $01 $49
    xor d                                         ; $53a2: $aa
    rst $28                                       ; $53a3: $ef
    inc hl                                        ; $53a4: $23
    db $f4                                        ; $53a5: $f4
    ld d, h                                       ; $53a6: $54
    inc bc                                        ; $53a7: $03
    add hl, de                                    ; $53a8: $19
    xor d                                         ; $53a9: $aa
    dec e                                         ; $53aa: $1d
    db $eb                                        ; $53ab: $eb
    db $ed                                        ; $53ac: $ed
    add hl, bc                                    ; $53ad: $09
    ld e, a                                       ; $53ae: $5f
    or c                                          ; $53af: $b1
    ld d, $84                                     ; $53b0: $16 $84
    rst $08                                       ; $53b2: $cf
    sub [hl]                                      ; $53b3: $96
    push af                                       ; $53b4: $f5
    db $ed                                        ; $53b5: $ed
    ld a, [hl-]                                   ; $53b6: $3a
    ld c, $6f                                     ; $53b7: $0e $6f
    jp c, $30a4                                   ; $53b9: $da $a4 $30

    ld [hl], $10                                  ; $53bc: $36 $10
    xor d                                         ; $53be: $aa
    dec l                                         ; $53bf: $2d
    cp l                                          ; $53c0: $bd
    rlca                                          ; $53c1: $07
    ld a, a                                       ; $53c2: $7f
    db $10                                        ; $53c3: $10
    add hl, de                                    ; $53c4: $19
    add d                                         ; $53c5: $82
    set 5, b                                      ; $53c6: $cb $e8
    call z, $f08b                                 ; $53c8: $cc $8b $f0
    ld d, a                                       ; $53cb: $57
    sub a                                         ; $53cc: $97
    jr nz, @+$4b                                  ; $53cd: $20 $49

    ld c, a                                       ; $53cf: $4f
    or l                                          ; $53d0: $b5
    halt                                          ; $53d1: $76
    sub e                                         ; $53d2: $93
    ld a, l                                       ; $53d3: $7d
    cp d                                          ; $53d4: $ba
    xor e                                         ; $53d5: $ab
    ld d, [hl]                                    ; $53d6: $56
    rst $30                                       ; $53d7: $f7
    ld d, h                                       ; $53d8: $54
    ld l, e                                       ; $53d9: $6b
    ld l, a                                       ; $53da: $6f
    ld c, a                                       ; $53db: $4f
    ld hl, sp-$76                                 ; $53dc: $f8 $8a
    or l                                          ; $53de: $b5
    ld e, b                                       ; $53df: $58
    add [hl]                                      ; $53e0: $86
    inc [hl]                                      ; $53e1: $34
    ld c, c                                       ; $53e2: $49
    push af                                       ; $53e3: $f5
    or $77                                        ; $53e4: $f6 $77
    ld de, $6aba                                  ; $53e6: $11 $ba $6a
    xor e                                         ; $53e9: $ab
    cp l                                          ; $53ea: $bd
    or l                                          ; $53eb: $b5
    jr nz, @+$7a                                  ; $53ec: $20 $78

    ld a, e                                       ; $53ee: $7b
    jp nz, $ac57                                  ; $53ef: $c2 $57 $ac

    dec b                                         ; $53f2: $05
    rlca                                          ; $53f3: $07
    ld b, h                                       ; $53f4: $44
    pop af                                        ; $53f5: $f1
    rst $10                                       ; $53f6: $d7
    ld b, c                                       ; $53f7: $41
    set 3, l                                      ; $53f8: $cb $dd
    xor e                                         ; $53fa: $ab
    cp l                                          ; $53fb: $bd
    ld l, c                                       ; $53fc: $69
    sbc c                                         ; $53fd: $99
    inc bc                                        ; $53fe: $03
    adc c                                         ; $53ff: $89
    ld h, b                                       ; $5400: $60
    jp hl                                         ; $5401: $e9


    dec a                                         ; $5402: $3d
    inc b                                         ; $5403: $04
    and c                                         ; $5404: $a1
    ld e, d                                       ; $5405: $5a
    ld [hl], l                                    ; $5406: $75
    cpl                                           ; $5407: $2f
    cp $ea                                        ; $5408: $fe $ea
    ld e, b                                       ; $540a: $58
    scf                                           ; $540b: $37
    ei                                            ; $540c: $fb
    ld c, e                                       ; $540d: $4b
    halt                                          ; $540e: $76
    ld b, a                                       ; $540f: $47
    ld a, d                                       ; $5410: $7a
    inc sp                                        ; $5411: $33
    rst $30                                       ; $5412: $f7
    xor a                                         ; $5413: $af
    or [hl]                                       ; $5414: $b6
    ld e, b                                       ; $5415: $58
    ld a, d                                       ; $5416: $7a
    jp nz, $ac57                                  ; $5417: $c2 $57 $ac

    dec b                                         ; $541a: $05
    rlca                                          ; $541b: $07
    add h                                         ; $541c: $84
    call nz, Call_039_4b9f                        ; $541d: $c4 $9f $4b
    dec l                                         ; $5420: $2d
    db $eb                                        ; $5421: $eb
    ld c, l                                       ; $5422: $4d
    ld [hl], e                                    ; $5423: $73
    ld c, c                                       ; $5424: $49
    xor d                                         ; $5425: $aa
    ld l, h                                       ; $5426: $6c
    jr nz, jr_039_545d                            ; $5427: $20 $34

    or [hl]                                       ; $5429: $b6
    jp c, $3eb1                                   ; $542a: $da $b1 $3e

    ld a, [hl-]                                   ; $542d: $3a
    srl a                                         ; $542e: $cb $3f
    add d                                         ; $5430: $82
    add [hl]                                      ; $5431: $86
    ld [hl], a                                    ; $5432: $77
    ret nc                                        ; $5433: $d0

    ld b, d                                       ; $5434: $42
    jp $bfd8                                      ; $5435: $c3 $d8 $bf


    sbc c                                         ; $5438: $99
    ld l, a                                       ; $5439: $6f
    rst $10                                       ; $543a: $d7
    ld [hl], c                                    ; $543b: $71
    ld a, b                                       ; $543c: $78
    add a                                         ; $543d: $87
    ld [hl], h                                    ; $543e: $74
    db $e4                                        ; $543f: $e4
    rst $18                                       ; $5440: $df
    sbc $fe                                       ; $5441: $de $fe
    ld l, [hl]                                    ; $5443: $6e
    ld sp, $ebf8                                  ; $5444: $31 $f8 $eb
    ld a, [hl+]                                   ; $5447: $2a
    add hl, hl                                    ; $5448: $29
    ld a, [c]                                     ; $5449: $f2
    ld [hl], a                                    ; $544a: $77
    or a                                          ; $544b: $b7
    ld [hl], h                                    ; $544c: $74
    ldh a, [rNR12]                                ; $544d: $f0 $12
    inc b                                         ; $544f: $04
    ld d, e                                       ; $5450: $53
    ld [$573d], a                                 ; $5451: $ea $3d $57
    ld a, a                                       ; $5454: $7f
    call nz, Call_039_556a                        ; $5455: $c4 $6a $55
    or d                                          ; $5458: $b2
    ld a, [de]                                    ; $5459: $1a
    cp h                                          ; $545a: $bc
    and h                                         ; $545b: $a4
    dec de                                        ; $545c: $1b

jr_039_545d:
    xor [hl]                                      ; $545d: $ae
    pop hl                                        ; $545e: $e1
    cp $b1                                        ; $545f: $fe $b1
    ld a, [$5e0f]                                 ; $5461: $fa $0f $5e
    db $db                                        ; $5464: $db
    call z, $8577                                 ; $5465: $cc $77 $85
    ld [$1f7d], sp                                ; $5468: $08 $7d $1f
    ld h, c                                       ; $546b: $61
    ld c, b                                       ; $546c: $48
    ld c, $49                                     ; $546d: $0e $49
    xor d                                         ; $546f: $aa
    rst $28                                       ; $5470: $ef
    inc hl                                        ; $5471: $23
    db $f4                                        ; $5472: $f4
    ld d, h                                       ; $5473: $54
    inc bc                                        ; $5474: $03
    add hl, de                                    ; $5475: $19
    ld a, [$7529]                                 ; $5476: $fa $29 $75
    add hl, de                                    ; $5479: $19
    sbc l                                         ; $547a: $9d
    ld a, c                                       ; $547b: $79
    ld de, $5712                                  ; $547c: $11 $12 $57
    ei                                            ; $547f: $fb
    ld e, h                                       ; $5480: $5c
    dec e                                         ; $5481: $1d
    xor $57                                       ; $5482: $ee $57
    ld b, h                                       ; $5484: $44
    or l                                          ; $5485: $b5
    ld h, e                                       ; $5486: $63
    dec l                                         ; $5487: $2d
    sbc l                                         ; $5488: $9d
    dec l                                         ; $5489: $2d
    db $10                                        ; $548a: $10
    ld e, h                                       ; $548b: $5c
    inc b                                         ; $548c: $04
    ccf                                           ; $548d: $3f
    rst $28                                       ; $548e: $ef
    cp c                                          ; $548f: $b9
    sbc c                                         ; $5490: $99
    ld l, a                                       ; $5491: $6f
    ld e, a                                       ; $5492: $5f
    ld de, $a430                                  ; $5493: $11 $30 $a4
    inc hl                                        ; $5496: $23
    ccf                                           ; $5497: $3f
    ld a, a                                       ; $5498: $7f
    push de                                       ; $5499: $d5
    pop bc                                        ; $549a: $c1
    ld e, a                                       ; $549b: $5f
    ld d, a                                       ; $549c: $57
    ld l, l                                       ; $549d: $6d
    cp a                                          ; $549e: $bf
    ld [hl+], a                                   ; $549f: $22
    xor d                                         ; $54a0: $aa

Jump_039_54a1:
    cp l                                          ; $54a1: $bd
    dec e                                         ; $54a2: $1d
    db $ed                                        ; $54a3: $ed
    xor h                                         ; $54a4: $ac
    ei                                            ; $54a5: $fb
    ld sp, hl                                     ; $54a6: $f9
    ld l, e                                       ; $54a7: $6b

jr_039_54a8:
    ld a, [c]                                     ; $54a8: $f2
    sub l                                         ; $54a9: $95
    db $dd                                        ; $54aa: $dd
    cp a                                          ; $54ab: $bf
    nop                                           ; $54ac: $00
    ld c, $c9                                     ; $54ad: $0e $c9
    ld bc, $aa49                                  ; $54af: $01 $49 $aa
    rst $28                                       ; $54b2: $ef
    inc hl                                        ; $54b3: $23
    ld d, h                                       ; $54b4: $54
    add a                                         ; $54b5: $87
    pop de                                        ; $54b6: $d1
    db $db                                        ; $54b7: $db
    call z, Call_039_6387                         ; $54b8: $cc $87 $63
    cp l                                          ; $54bb: $bd
    dec e                                         ; $54bc: $1d
    ld h, c                                       ; $54bd: $61
    and c                                         ; $54be: $a1
    rst $20                                       ; $54bf: $e7
    ld h, $c9                                     ; $54c0: $26 $c9
    rst $20                                       ; $54c2: $e7
    rst $10                                       ; $54c3: $d7
    cp c                                          ; $54c4: $b9
    ld b, a                                       ; $54c5: $47
    ld b, b                                       ; $54c6: $40
    ld c, a                                       ; $54c7: $4f
    ld hl, sp-$76                                 ; $54c8: $f8 $8a
    or l                                          ; $54ca: $b5
    ldh [$80], a                                  ; $54cb: $e0 $80
    sub b                                         ; $54cd: $90
    ld hl, sp-$0d                                 ; $54ce: $f8 $f3
    sub [hl]                                      ; $54d0: $96
    dec [hl]                                      ; $54d1: $35
    add [hl]                                      ; $54d2: $86
    inc sp                                        ; $54d3: $33
    jr jr_039_54a8                                ; $54d4: $18 $d2

    pop hl                                        ; $54d6: $e1
    ret c                                         ; $54d7: $d8

    call z, Call_039_5fc8                         ; $54d8: $cc $c8 $5f
    ld hl, sp+$41                                 ; $54db: $f8 $41
    db $e3                                        ; $54dd: $e3
    dec e                                         ; $54de: $1d
    call $92fe                                    ; $54df: $cd $fe $92
    dec hl                                        ; $54e2: $2b
    and $0f                                       ; $54e3: $e6 $0f
    adc $c5                                       ; $54e5: $ce $c5
    xor e                                         ; $54e7: $ab
    rst $30                                       ; $54e8: $f7
    ld [hl], b                                    ; $54e9: $70
    dec l                                         ; $54ea: $2d
    dec h                                         ; $54eb: $25
    or c                                          ; $54ec: $b1
    sub [hl]                                      ; $54ed: $96
    ld l, d                                       ; $54ee: $6a
    rst $00                                       ; $54ef: $c7
    cp d                                          ; $54f0: $ba
    ld l, e                                       ; $54f1: $6b
    push hl                                       ; $54f2: $e5
    db $ed                                        ; $54f3: $ed
    inc l                                         ; $54f4: $2c
    ld h, d                                       ; $54f5: $62
    or l                                          ; $54f6: $b5
    jp c, $8ccd                                   ; $54f7: $da $cd $8c

    inc bc                                        ; $54fa: $03
    ld [hl], d                                    ; $54fb: $72
    pop af                                        ; $54fc: $f1
    rst $20                                       ; $54fd: $e7
    db $ed                                        ; $54fe: $ed
    ei                                            ; $54ff: $fb
    jr nc, jr_039_5526                            ; $5500: $30 $24

Jump_039_5502:
    rlca                                          ; $5502: $07
    ld c, c                                       ; $5503: $49
    xor d                                         ; $5504: $aa
    rst $28                                       ; $5505: $ef
    inc hl                                        ; $5506: $23
    ld d, h                                       ; $5507: $54
    ld a, e                                       ; $5508: $7b
    res 6, h                                      ; $5509: $cb $b4
    ld l, e                                       ; $550b: $6b
    ld hl, $9a2e                                  ; $550c: $21 $2e $9a
    adc c                                         ; $550f: $89
    add e                                         ; $5510: $83
    cp a                                          ; $5511: $bf
    sub d                                         ; $5512: $92
    ld e, b                                       ; $5513: $58
    bit 5, c                                      ; $5514: $cb $69
    jp z, Jump_039_5502                           ; $5516: $ca $02 $55

    xor e                                         ; $5519: $ab
    xor e                                         ; $551a: $ab
    cp l                                          ; $551b: $bd
    dec e                                         ; $551c: $1d
    db $ed                                        ; $551d: $ed
    xor h                                         ; $551e: $ac
    ld e, d                                       ; $551f: $5a
    add hl, bc                                    ; $5520: $09
    ld a, a                                       ; $5521: $7f
    push de                                       ; $5522: $d5
    pop hl                                        ; $5523: $e1
    adc [hl]                                      ; $5524: $8e
    or b                                          ; $5525: $b0

jr_039_5526:
    call c, $cd2c                                 ; $5526: $dc $2c $cd
    ld c, h                                       ; $5529: $4c
    xor b                                         ; $552a: $a8
    push de                                       ; $552b: $d5
    sbc $b4                                       ; $552c: $de $b4
    or e                                          ; $552e: $b3
    ld a, [de]                                    ; $552f: $1a
    ret z                                         ; $5530: $c8

    ld d, b                                       ; $5531: $50
    ld [hl], $10                                  ; $5532: $36 $10
    xor d                                         ; $5534: $aa
    ld d, l                                       ; $5535: $55
    ccf                                           ; $5536: $3f
    push bc                                       ; $5537: $c5
    xor e                                         ; $5538: $ab
    ld e, [hl]                                    ; $5539: $5e
    ld c, l                                       ; $553a: $4d
    add e                                         ; $553b: $83
    cp a                                          ; $553c: $bf
    add $36                                       ; $553d: $c6 $36
    ld sp, hl                                     ; $553f: $f9
    jp z, $5fee                                   ; $5540: $ca $ee $5f

    nop                                           ; $5543: $00
    ei                                            ; $5544: $fb
    scf                                           ; $5545: $37
    di                                            ; $5546: $f3
    db $ed                                        ; $5547: $ed
    ld a, [hl-]                                   ; $5548: $3a
    ld c, $ef                                     ; $5549: $0e $ef
    sub b                                         ; $554b: $90
    inc e                                         ; $554c: $1c
    ld c, c                                       ; $554d: $49
    ld hl, $87bd                                  ; $554e: $21 $bd $87
    add sp, -$22                                  ; $5551: $e8 $de
    add sp, -$69                                  ; $5553: $e8 $97
    ld [hl], e                                    ; $5555: $73
    push af                                       ; $5556: $f5
    ld b, a                                       ; $5557: $47
    xor h                                         ; $5558: $ac
    or c                                          ; $5559: $b1
    adc [hl]                                      ; $555a: $8e
    ld [hl], l                                    ; $555b: $75
    inc sp                                        ; $555c: $33
    cp c                                          ; $555d: $b9
    add $71                                       ; $555e: $c6 $71
    add a                                         ; $5560: $87
    ccf                                           ; $5561: $3f

jr_039_5562:
    ld [hl], c                                    ; $5562: $71
    add hl, bc                                    ; $5563: $09
    sub d                                         ; $5564: $92
    ld d, h                                       ; $5565: $54
    rlca                                          ; $5566: $07
    ld a, a                                       ; $5567: $7f
    dec c                                         ; $5568: $0d
    add h                                         ; $5569: $84

Call_039_556a:
    ld [hl], e                                    ; $556a: $73
    add hl, bc                                    ; $556b: $09
    sub d                                         ; $556c: $92
    inc [hl]                                      ; $556d: $34
    ld sp, hl                                     ; $556e: $f9
    dec hl                                        ; $556f: $2b
    inc l                                         ; $5570: $2c
    and e                                         ; $5571: $a3
    adc h                                         ; $5572: $8c
    ld hl, $5888                                  ; $5573: $21 $88 $58
    ld a, l                                       ; $5576: $7d
    ld c, c                                       ; $5577: $49
    cp a                                          ; $5578: $bf
    jp nz, $f7cc                                  ; $5579: $c2 $cc $f7

    call nz, $a147                                ; $557c: $c4 $47 $a1
    rst $30                                       ; $557f: $f7
    ld c, e                                       ; $5580: $4b
    or h                                          ; $5581: $b4
    or a                                          ; $5582: $b7
    ld h, h                                       ; $5583: $64
    ld d, l                                       ; $5584: $55
    ld [hl], h                                    ; $5585: $74
    ld l, h                                       ; $5586: $6c
    jp c, $d524                                   ; $5587: $da $24 $d5

    scf                                           ; $558a: $37
    or [hl]                                       ; $558b: $b6
    jr nz, jr_039_5562                            ; $558c: $20 $d4

    or c                                          ; $558e: $b1
    ld h, l                                       ; $558f: $65
    or h                                          ; $5590: $b4
    sub b                                         ; $5591: $90

Jump_039_5592:
    ld hl, sp-$7d                                 ; $5592: $f8 $83
    ld [$242f], a                                 ; $5594: $ea $2f $24
    sub $72                                       ; $5597: $d6 $72
    xor [hl]                                      ; $5599: $ae
    cp $88                                        ; $559a: $fe $88
    ld [hl], l                                    ; $559c: $75
    xor h                                         ; $559d: $ac
    cp e                                          ; $559e: $bb
    ld d, [hl]                                    ; $559f: $56
    xor $88                                       ; $55a0: $ee $88
    cpl                                           ; $55a2: $2f
    ldh [$bd], a                                  ; $55a3: $e0 $bd
    ld e, l                                       ; $55a5: $5d
    rlca                                          ; $55a6: $07
    dec de                                        ; $55a7: $1b
    ei                                            ; $55a8: $fb
    ld hl, $6dae                                  ; $55a9: $21 $ae $6d
    inc e                                         ; $55ac: $1c
    ld h, l                                       ; $55ad: $65
    cp $e3                                        ; $55ae: $fe $e3
    and b                                         ; $55b0: $a0
    sub [hl]                                      ; $55b1: $96
    ld b, c                                       ; $55b2: $41
    adc e                                         ; $55b3: $8b
    ld h, e                                       ; $55b4: $63
    dec sp                                        ; $55b5: $3b
    ld l, b                                       ; $55b6: $68
    ld hl, $1948                                  ; $55b7: $21 $48 $19
    ei                                            ; $55ba: $fb
    and l                                         ; $55bb: $a5
    add c                                         ; $55bc: $81
    sub b                                         ; $55bd: $90
    and $49                                       ; $55be: $e6 $49
    xor d                                         ; $55c0: $aa
    rst $28                                       ; $55c1: $ef
    inc hl                                        ; $55c2: $23
    ld d, h                                       ; $55c3: $54
    add a                                         ; $55c4: $87
    ld a, e                                       ; $55c5: $7b
    add d                                         ; $55c6: $82
    add d                                         ; $55c7: $82
    rrca                                          ; $55c8: $0f
    sbc $73                                       ; $55c9: $de $73
    ld [hl], l                                    ; $55cb: $75
    cp b                                          ; $55cc: $b8
    ld e, d                                       ; $55cd: $5a
    sub l                                         ; $55ce: $95
    jr nz, jr_039_561a                            ; $55cf: $20 $49

    sbc c                                         ; $55d1: $99
    ei                                            ; $55d2: $fb
    rlca                                          ; $55d3: $07
    ld e, h                                       ; $55d4: $5c
    ld d, h                                       ; $55d5: $54
    db $fc                                        ; $55d6: $fc
    ld a, c                                       ; $55d7: $79
    adc e                                         ; $55d8: $8b
    rla                                           ; $55d9: $17
    and l                                         ; $55da: $a5
    ld h, b                                       ; $55db: $60

jr_039_55dc:
    add h                                         ; $55dc: $84
    ld [hl], e                                    ; $55dd: $73
    inc sp                                        ; $55de: $33
    inc de                                        ; $55df: $13
    ld l, d                                       ; $55e0: $6a
    or l                                          ; $55e1: $b5
    ld [hl], a                                    ; $55e2: $77
    ld c, b                                       ; $55e3: $48
    ld h, a                                       ; $55e4: $67
    push af                                       ; $55e5: $f5
    pop af                                        ; $55e6: $f1
    ld d, a                                       ; $55e7: $57

jr_039_55e8:
    rla                                           ; $55e8: $17
    ld a, a                                       ; $55e9: $7f
    ld b, $d5                                     ; $55ea: $06 $d5
    ld hl, $eae7                                  ; $55ec: $21 $e7 $ea
    adc a                                         ; $55ef: $8f
    ld e, b                                       ; $55f0: $58
    ld h, e                                       ; $55f1: $63
    db $e3                                        ; $55f2: $e3
    jr z, jr_039_55e8                             ; $55f3: $28 $f3

    rra                                           ; $55f5: $1f
    rlca                                          ; $55f6: $07
    or l                                          ; $55f7: $b5
    inc c                                         ; $55f8: $0c
    ld e, d                                       ; $55f9: $5a
    inc e                                         ; $55fa: $1c
    ld e, e                                       ; $55fb: $5b
    rst $00                                       ; $55fc: $c7
    cp d                                          ; $55fd: $ba
    ld l, e                                       ; $55fe: $6b
    push hl                                       ; $55ff: $e5
    adc [hl]                                      ; $5600: $8e
    ld hl, sp+$02                                 ; $5601: $f8 $02
    sbc $db                                       ; $5603: $de $db
    ld [hl], l                                    ; $5605: $75
    or b                                          ; $5606: $b0
    or c                                          ; $5607: $b1
    rra                                           ; $5608: $1f
    ld [c], a                                     ; $5609: $e2
    jp c, $c166                                   ; $560a: $da $66 $c1

    ld b, d                                       ; $560d: $42
    sbc d                                         ; $560e: $9a
    inc bc                                        ; $560f: $03
    ld c, c                                       ; $5610: $49
    xor d                                         ; $5611: $aa
    rst $28                                       ; $5612: $ef
    inc hl                                        ; $5613: $23
    ld d, h                                       ; $5614: $54
    ld a, e                                       ; $5615: $7b
    sbc e                                         ; $5616: $9b
    db $fc                                        ; $5617: $fc
    pop de                                        ; $5618: $d1
    db $db                                        ; $5619: $db

jr_039_561a:
    call z, $dfc4                                 ; $561a: $cc $c4 $df
    call z, $b55b                                 ; $561d: $cc $5b $b5
    cp d                                          ; $5620: $ba
    ret                                           ; $5621: $c9


    ld d, a                                       ; $5622: $57
    halt                                          ; $5623: $76
    rst $38                                       ; $5624: $ff
    ld [bc], a                                    ; $5625: $02
    ld e, b                                       ; $5626: $58
    cp h                                          ; $5627: $bc
    ld a, [hl-]                                   ; $5628: $3a
    ld a, b                                       ; $5629: $78
    ld c, c                                       ; $562a: $49
    sbc c                                         ; $562b: $99
    db $fc                                        ; $562c: $fc
    pop de                                        ; $562d: $d1
    jr c, jr_039_563e                             ; $562e: $38 $0e

    adc e                                         ; $5630: $8b
    adc a                                         ; $5631: $8f
    or d                                          ; $5632: $b2
    cp [hl]                                       ; $5633: $be
    rst $38                                       ; $5634: $ff
    daa                                           ; $5635: $27
    jr nc, jr_039_55dc                            ; $5636: $30 $a4

    and e                                         ; $5638: $a3
    jp Jump_039_6c75                              ; $5639: $c3 $75 $6c


jr_039_563c:
    ld h, a                                       ; $563c: $67
    ei                                            ; $563d: $fb

jr_039_563e:
    adc d                                         ; $563e: $8a
    jr nz, @-$52                                  ; $563f: $20 $ac

    inc l                                         ; $5641: $2c
    ld h, l                                       ; $5642: $65
    push bc                                       ; $5643: $c5
    ld bc, $6286                                  ; $5644: $01 $86 $62
    ldh a, [$57]                                  ; $5647: $f0 $57
    db $fd                                        ; $5649: $fd
    or c                                          ; $564a: $b1
    adc h                                         ; $564b: $8c
    ld d, $12                                     ; $564c: $16 $12
    ld a, a                                       ; $564e: $7f
    ld d, b                                       ; $564f: $50
    ld [de], a                                    ; $5650: $12
    ld l, e                                       ; $5651: $6b
    xor c                                         ; $5652: $a9
    ld h, e                                       ; $5653: $63
    db $dd                                        ; $5654: $dd
    or l                                          ; $5655: $b5
    ld [hl], d                                    ; $5656: $72
    ld b, a                                       ; $5657: $47

jr_039_5658:
    ld a, h                                       ; $5658: $7c
    ld bc, $edef                                  ; $5659: $01 $ef $ed
    ld a, [hl-]                                   ; $565c: $3a
    ret c                                         ; $565d: $d8

    ret c                                         ; $565e: $d8

    rrca                                          ; $565f: $0f
    ld [hl], c                                    ; $5660: $71
    ld l, l                                       ; $5661: $6d
    db $e3                                        ; $5662: $e3
    jr z, jr_039_5658                             ; $5663: $28 $f3

    rra                                           ; $5665: $1f
    rlca                                          ; $5666: $07
    or l                                          ; $5667: $b5
    inc c                                         ; $5668: $0c
    ld e, d                                       ; $5669: $5a
    inc e                                         ; $566a: $1c
    db $db                                        ; $566b: $db
    xor a                                         ; $566c: $af
    jr nc, jr_039_563c                            ; $566d: $30 $cd

    ld bc, $aa49                                  ; $566f: $01 $49 $aa
    rst $28                                       ; $5672: $ef
    inc hl                                        ; $5673: $23
    ld d, h                                       ; $5674: $54
    ld a, e                                       ; $5675: $7b
    dec sp                                        ; $5676: $3b
    ld b, d                                       ; $5677: $42
    ld [de], a                                    ; $5678: $12
    dec d                                         ; $5679: $15
    ld e, b                                       ; $567a: $58
    ld l, [hl]                                    ; $567b: $6e
    ld l, d                                       ; $567c: $6a
    or l                                          ; $567d: $b5
    push de                                       ; $567e: $d5
    add d                                         ; $567f: $82
    ld b, l                                       ; $5680: $45
    add d                                         ; $5681: $82
    ccf                                           ; $5682: $3f
    xor b                                         ; $5683: $a8
    add l                                         ; $5684: $85
    cp b                                          ; $5685: $b8
    ld l, b                                       ; $5686: $68
    ld h, $0e                                     ; $5687: $26 $0e
    cp $fa                                        ; $5689: $fe $fa
    reti                                          ; $568b: $d9


    call z, Call_000_1fc8                         ; $568c: $cc $c8 $1f
    cp l                                          ; $568f: $bd
    db $10                                        ; $5690: $10
    cp l                                          ; $5691: $bd
    ld d, l                                       ; $5692: $55
    xor e                                         ; $5693: $ab
    xor e                                         ; $5694: $ab
    jp $e13d                                      ; $5695: $c3 $3d $e1


    dec hl                                        ; $5698: $2b
    sub $42                                       ; $5699: $d6 $42
    ld e, h                                       ; $569b: $5c
    ld [hl], d                                    ; $569c: $72
    sbc b                                         ; $569d: $98
    sub [hl]                                      ; $569e: $96
    push af                                       ; $569f: $f5
    db $ed                                        ; $56a0: $ed
    ld a, [hl-]                                   ; $56a1: $3a
    ld c, $ef                                     ; $56a2: $0e $ef
    sub b                                         ; $56a4: $90
    ld h, $1c                                     ; $56a5: $26 $1c
    ld h, l                                       ; $56a7: $65
    cp $e3                                        ; $56a8: $fe $e3
    and b                                         ; $56aa: $a0
    sub [hl]                                      ; $56ab: $96
    ld b, c                                       ; $56ac: $41
    adc e                                         ; $56ad: $8b
    ld h, e                                       ; $56ae: $63
    sbc e                                         ; $56af: $9b
    dec b                                         ; $56b0: $05
    dec bc                                        ; $56b1: $0b
    dec [hl]                                      ; $56b2: $35
    sub $b1                                       ; $56b3: $d6 $b1
    xor $5a                                       ; $56b5: $ee $5a
    cp c                                          ; $56b7: $b9
    inc hl                                        ; $56b8: $23
    cp [hl]                                       ; $56b9: $be
    add b                                         ; $56ba: $80
    rst $30                                       ; $56bb: $f7
    halt                                          ; $56bc: $76
    dec e                                         ; $56bd: $1d
    ld l, h                                       ; $56be: $6c
    and h                                         ; $56bf: $a4
    add hl, sp                                    ; $56c0: $39
    ld c, c                                       ; $56c1: $49
    xor d                                         ; $56c2: $aa
    rst $28                                       ; $56c3: $ef
    inc hl                                        ; $56c4: $23
    ld [hl], h                                    ; $56c5: $74
    sub h                                         ; $56c6: $94
    dec a                                         ; $56c7: $3d
    ld l, b                                       ; $56c8: $68
    xor h                                         ; $56c9: $ac
    ld h, e                                       ; $56ca: $63
    cp l                                          ; $56cb: $bd
    ld h, l                                       ; $56cc: $65
    add d                                         ; $56cd: $82
    inc b                                         ; $56ce: $04
    ld a, a                                       ; $56cf: $7f
    push de                                       ; $56d0: $d5
    ld c, d                                       ; $56d1: $4a
    ld hl, sp-$55                                 ; $56d2: $f8 $ab
    ld c, $77                                     ; $56d4: $0e $77
    ld l, $f3                                     ; $56d6: $2e $f3
    or a                                          ; $56d8: $b7
    ld l, d                                       ; $56d9: $6a
    or e                                          ; $56da: $b3
    ld h, [hl]                                    ; $56db: $66
    ld a, $3e                                     ; $56dc: $3e $3e
    ld a, a                                       ; $56de: $7f
    ld d, b                                       ; $56df: $50
    or l                                          ; $56e0: $b5
    cp d                                          ; $56e1: $ba
    ld a, [$3363]                                 ; $56e2: $fa $63 $33
    inc hl                                        ; $56e5: $23
    ld e, h                                       ; $56e6: $5c
    adc a                                         ; $56e7: $8f
    ld a, d                                       ; $56e8: $7a
    db $dd                                        ; $56e9: $dd
    ld h, c                                       ; $56ea: $61
    adc d                                         ; $56eb: $8a
    cp a                                          ; $56ec: $bf
    sub d                                         ; $56ed: $92
    sub l                                         ; $56ee: $95
    sub b                                         ; $56ef: $90
    ld hl, sp-$53                                 ; $56f0: $f8 $ad
    or c                                          ; $56f2: $b1
    push de                                       ; $56f3: $d5
    pop hl                                        ; $56f4: $e1
    ld c, $0b                                     ; $56f5: $0e $0b
    sub [hl]                                      ; $56f7: $96
    add $05                                       ; $56f8: $c6 $05
    rst $08                                       ; $56fa: $cf
    or a                                          ; $56fb: $b7
    ld h, [hl]                                    ; $56fc: $66
    ld h, [hl]                                    ; $56fd: $66
    push hl                                       ; $56fe: $e5
    di                                            ; $56ff: $f3
    rlca                                          ; $5700: $07
    ld b, e                                       ; $5701: $43
    sbc d                                         ; $5702: $9a
    inc d                                         ; $5703: $14
    xor $ec                                       ; $5704: $ee $ec
    ld d, [hl]                                    ; $5706: $56
    sub c                                         ; $5707: $91
    db $dd                                        ; $5708: $dd
    inc e                                         ; $5709: $1c
    ld d, b                                       ; $570a: $50
    ld [de], a                                    ; $570b: $12
    ld l, e                                       ; $570c: $6b
    xor c                                         ; $570d: $a9
    ld h, e                                       ; $570e: $63
    db $dd                                        ; $570f: $dd
    or l                                          ; $5710: $b5
    ld [hl], d                                    ; $5711: $72
    ld b, a                                       ; $5712: $47

jr_039_5713:
    ld a, h                                       ; $5713: $7c
    ld bc, $edef                                  ; $5714: $01 $ef $ed
    ld a, [hl-]                                   ; $5717: $3a
    ret c                                         ; $5718: $d8

    ret c                                         ; $5719: $d8

    rrca                                          ; $571a: $0f
    ld [hl], c                                    ; $571b: $71
    ld l, l                                       ; $571c: $6d
    db $e3                                        ; $571d: $e3
    jr z, jr_039_5713                             ; $571e: $28 $f3

    rra                                           ; $5720: $1f
    rlca                                          ; $5721: $07
    or l                                          ; $5722: $b5
    inc c                                         ; $5723: $0c
    ld e, d                                       ; $5724: $5a
    inc e                                         ; $5725: $1c
    db $db                                        ; $5726: $db
    db $e3                                        ; $5727: $e3
    di                                            ; $5728: $f3
    rlca                                          ; $5729: $07
    push de                                       ; $572a: $d5
    ld d, $b2                                     ; $572b: $16 $b2
    inc bc                                        ; $572d: $03
    xor d                                         ; $572e: $aa
    jp Jump_039_4b9d                              ; $572f: $c3 $9d $4b


    xor l                                         ; $5732: $ad
    halt                                          ; $5733: $76
    sbc d                                         ; $5734: $9a
    inc bc                                        ; $5735: $03
    ld c, c                                       ; $5736: $49
    ld hl, $840d                                  ; $5737: $21 $0d $84
    sbc $e8                                       ; $573a: $de $e8
    sub a                                         ; $573c: $97
    ld h, [hl]                                    ; $573d: $66
    cp [hl]                                       ; $573e: $be
    ld e, a                                       ; $573f: $5f
    and d                                         ; $5740: $a2
    cp l                                          ; $5741: $bd
    rst $20                                       ; $5742: $e7
    ld [$588f], a                                 ; $5743: $ea $8f $58
    dec e                                         ; $5746: $1d
    jp nc, $b1c1                                  ; $5747: $d2 $c1 $b1

    add hl, hl                                    ; $574a: $29
    adc l                                         ; $574b: $8d
    xor h                                         ; $574c: $ac
    ld l, e                                       ; $574d: $6b
    push hl                                       ; $574e: $e5
    adc [hl]                                      ; $574f: $8e
    inc e                                         ; $5750: $1c
    dec sp                                        ; $5751: $3b
    and e                                         ; $5752: $a3
    pop bc                                        ; $5753: $c1
    rst $18                                       ; $5754: $df
    call $de01                                    ; $5755: $cd $01 $de
    ld e, [hl]                                    ; $5758: $5e
    inc b                                         ; $5759: $04
    pop hl                                        ; $575a: $e1
    dec l                                         ; $575b: $2d
    add d                                         ; $575c: $82
    sbc a                                         ; $575d: $9f
    rst $30                                       ; $575e: $f7
    ld e, h                                       ; $575f: $5c
    ld [hl], h                                    ; $5760: $74
    ld b, b                                       ; $5761: $40
    or l                                          ; $5762: $b5
    xor d                                         ; $5763: $aa
    ld c, $77                                     ; $5764: $0e $77
    xor b                                         ; $5766: $a8
    ld [hl+], a                                   ; $5767: $22
    or d                                          ; $5768: $b2
    rst $08                                       ; $5769: $cf
    cp d                                          ; $576a: $ba
    add e                                         ; $576b: $83
    rst $10                                       ; $576c: $d7
    halt                                          ; $576d: $76
    sub h                                         ; $576e: $94
    ld e, h                                       ; $576f: $5c
    add h                                         ; $5770: $84
    ld de, $e92f                                  ; $5771: $11 $2f $e9
    or b                                          ; $5774: $b0
    ret c                                         ; $5775: $d8

    push bc                                       ; $5776: $c5
    ld e, d                                       ; $5777: $5a
    adc b                                         ; $5778: $88
    adc e                                         ; $5779: $8b
    ld h, [hl]                                    ; $577a: $66
    ld [c], a                                     ; $577b: $e2
    ldh [$af], a                                  ; $577c: $e0 $af

jr_039_577e:
    sbc c                                         ; $577e: $99
    rrca                                          ; $577f: $0f
    rlca                                          ; $5780: $07
    add d                                         ; $5781: $82
    dec b                                         ; $5782: $05
    ld a, [$c23e]                                 ; $5783: $fa $3e $c2
    sub b                                         ; $5786: $90
    sbc [hl]                                      ; $5787: $9e
    and b                                         ; $5788: $a0
    jr nc, jr_039_579c                            ; $5789: $30 $11

    ret z                                         ; $578b: $c8

    inc [hl]                                      ; $578c: $34
    ld hl, sp+$2b                                 ; $578d: $f8 $2b
    ld e, c                                       ; $578f: $59
    ld d, l                                       ; $5790: $55
    add a                                         ; $5791: $87
    pop de                                        ; $5792: $d1
    ld b, a                                       ; $5793: $47
    add a                                         ; $5794: $87
    dec bc                                        ; $5795: $0b
    ld [hl], c                                    ; $5796: $71
    pop de                                        ; $5797: $d1
    xor h                                         ; $5798: $ac
    rst $30                                       ; $5799: $f7
    cpl                                           ; $579a: $2f
    ld h, b                                       ; $579b: $60

jr_039_579c:
    add sp, $57                                   ; $579c: $e8 $57
    db $fc                                        ; $579e: $fc
    ld [hl], l                                    ; $579f: $75
    cpl                                           ; $57a0: $2f
    cp $ea                                        ; $57a1: $fe $ea
    ld e, b                                       ; $57a3: $58
    ld [hl], a                                    ; $57a4: $77
    xor l                                         ; $57a5: $ad
    call c, Call_039_5f11                         ; $57a6: $dc $11 $5f
    ret nz                                        ; $57a9: $c0

    ld a, e                                       ; $57aa: $7b
    cp e                                          ; $57ab: $bb
    ld c, $36                                     ; $57ac: $0e $36
    or $43                                        ; $57ae: $f6 $43
    ld e, h                                       ; $57b0: $5c
    db $db                                        ; $57b1: $db
    jr c, jr_039_577e                             ; $57b2: $38 $ca

    db $fc                                        ; $57b4: $fc
    rst $00                                       ; $57b5: $c7
    ld b, c                                       ; $57b6: $41
    dec l                                         ; $57b7: $2d
    add e                                         ; $57b8: $83
    ld d, $c7                                     ; $57b9: $16 $c7
    or $2b                                        ; $57bb: $f6 $2b
    and d                                         ; $57bd: $a2
    ld a, [hl-]                                   ; $57be: $3a
    ld hl, sp+$4b                                 ; $57bf: $f8 $4b
    ld [hl], e                                    ; $57c1: $73
    ld c, c                                       ; $57c2: $49
    xor d                                         ; $57c3: $aa
    rst $28                                       ; $57c4: $ef
    inc hl                                        ; $57c5: $23
    ld [hl], h                                    ; $57c6: $74
    halt                                          ; $57c7: $76
    rrca                                          ; $57c8: $0f
    ld b, $a5                                     ; $57c9: $06 $a5
    add $0e                                       ; $57cb: $c6 $0e
    sub a                                         ; $57cd: $97
    ret c                                         ; $57ce: $d8

    or l                                          ; $57cf: $b5
    inc e                                         ; $57d0: $1c
    pop bc                                        ; $57d1: $c1
    ld e, a                                       ; $57d2: $5f
    ret                                           ; $57d3: $c9


    ld c, d                                       ; $57d4: $4a
    ld c, b                                       ; $57d5: $48
    db $fc                                        ; $57d6: $fc
    sub [hl]                                      ; $57d7: $96
    ld sp, hl                                     ; $57d8: $f9
    ld e, l                                       ; $57d9: $5d
    inc d                                         ; $57da: $14
    add [hl]                                      ; $57db: $86
    inc [hl]                                      ; $57dc: $34
    ld h, c                                       ; $57dd: $61
    xor e                                         ; $57de: $ab
    dec l                                         ; $57df: $2d
    ld h, l                                       ; $57e0: $65
    ld a, [c]                                     ; $57e1: $f2
    and a                                         ; $57e2: $a7
    xor b                                         ; $57e3: $a8
    dec hl                                        ; $57e4: $2b
    sub $de                                       ; $57e5: $d6 $de
    ld a, [hl]                                    ; $57e7: $7e
    ld c, d                                       ; $57e8: $4a
    db $dd                                        ; $57e9: $dd
    ld d, l                                       ; $57ea: $55
    jp nc, $f8bd                                  ; $57eb: $d2 $bd $f8

    dec hl                                        ; $57ee: $2b
    adc c                                         ; $57ef: $89
    or l                                          ; $57f0: $b5
    call nc, Call_000_38b1                        ; $57f1: $d4 $b1 $38
    ld a, l                                       ; $57f4: $7d
    add a                                         ; $57f5: $87
    ld h, e                                       ; $57f6: $63
    or e                                          ; $57f7: $b3
    ld h, b                                       ; $57f8: $60
    and c                                         ; $57f9: $a1
    adc [hl]                                      ; $57fa: $8e
    ld [hl], l                                    ; $57fb: $75
    rst $10                                       ; $57fc: $d7
    jp z, $f11d                                   ; $57fd: $ca $1d $f1

    dec b                                         ; $5800: $05
    cp h                                          ; $5801: $bc
    or a                                          ; $5802: $b7
    db $eb                                        ; $5803: $eb
    ld h, b                                       ; $5804: $60
    ld h, e                                       ; $5805: $63
    ccf                                           ; $5806: $3f
    call nz, $8db5                                ; $5807: $c4 $b5 $8d
    and e                                         ; $580a: $a3
    call z, Call_000_1c7f                         ; $580b: $cc $7f $1c
    call nc, $6832                                ; $580e: $d4 $32 $68
    ld [hl], c                                    ; $5811: $71
    ld l, h                                       ; $5812: $6c
    sbc d                                         ; $5813: $9a
    inc bc                                        ; $5814: $03
    jp $dd63                                      ; $5815: $c3 $63 $dd


    cp e                                          ; $5818: $bb
    inc bc                                        ; $5819: $03
    inc l                                         ; $581a: $2c
    xor $bf                                       ; $581b: $ee $bf
    ld a, l                                       ; $581d: $7d
    db $ed                                        ; $581e: $ed
    inc hl                                        ; $581f: $23
    sub b                                         ; $5820: $90
    ccf                                           ; $5821: $3f
    ld [hl], a                                    ; $5822: $77
    ld [hl], $07                                  ; $5823: $36 $07
    add d                                         ; $5825: $82
    jp c, Jump_000_13ac                           ; $5826: $da $ac $13

    ld d, a                                       ; $5829: $57
    xor e                                         ; $582a: $ab

jr_039_582b:
    cp [hl]                                       ; $582b: $be
    adc a                                         ; $582c: $8f
    ld d, b                                       ; $582d: $50
    db $ed                                        ; $582e: $ed
    db $ed                                        ; $582f: $ed
    add hl, bc                                    ; $5830: $09
    ld e, a                                       ; $5831: $5f
    or c                                          ; $5832: $b1
    sub [hl]                                      ; $5833: $96
    sbc e                                         ; $5834: $9b

jr_039_5835:
    ld e, d                                       ; $5835: $5a
    inc b                                         ; $5836: $04
    or l                                          ; $5837: $b5
    ld h, b                                       ; $5838: $60
    sub c                                         ; $5839: $91
    ldh [rIF], a                                  ; $583a: $e0 $0f
    ld l, d                                       ; $583c: $6a
    ld hl, $9a2e                                  ; $583d: $21 $2e $9a
    adc c                                         ; $5840: $89
    add e                                         ; $5841: $83
    cp a                                          ; $5842: $bf
    ld a, [hl]                                    ; $5843: $7e
    ld [hl], $33                                  ; $5844: $36 $33
    ld a, [c]                                     ; $5846: $f2
    ld b, a                                       ; $5847: $47
    cpl                                           ; $5848: $2f
    ld b, h                                       ; $5849: $44
    ld l, a                                       ; $584a: $6f
    jp c, $ad59                                   ; $584b: $da $59 $ad

    dec l                                         ; $584e: $2d
    adc l                                         ; $584f: $8d
    xor l                                         ; $5850: $ad
    or [hl]                                       ; $5851: $b6
    sub h                                         ; $5852: $94
    ret                                           ; $5853: $c9


    sbc a                                         ; $5854: $9f
    and d                                         ; $5855: $a2
    xor $dd                                       ; $5856: $ee $dd
    ld sp, $b9ce                                  ; $5858: $31 $ce $b9
    ld a, [$d623]                                 ; $585b: $fa $23 $d6
    ret c                                         ; $585e: $d8

    jr c, jr_039_582b                             ; $585f: $38 $ca

    db $fc                                        ; $5861: $fc
    rst $00                                       ; $5862: $c7
    ld b, c                                       ; $5863: $41
    dec l                                         ; $5864: $2d
    add e                                         ; $5865: $83
    ld d, $c7                                     ; $5866: $16 $c7
    sub $b1                                       ; $5868: $d6 $b1
    xor $5a                                       ; $586a: $ee $5a
    cp c                                          ; $586c: $b9
    inc hl                                        ; $586d: $23
    cp [hl]                                       ; $586e: $be
    add b                                         ; $586f: $80
    rst $30                                       ; $5870: $f7
    halt                                          ; $5871: $76
    dec e                                         ; $5872: $1d
    ld l, h                                       ; $5873: $6c
    db $ec                                        ; $5874: $ec
    add a                                         ; $5875: $87
    cp b                                          ; $5876: $b8
    or [hl]                                       ; $5877: $b6
    ld e, c                                       ; $5878: $59
    or b                                          ; $5879: $b0
    sub b                                         ; $587a: $90
    and $8c                                       ; $587b: $e6 $8c
    sub h                                         ; $587d: $94
    call nz, Call_039_776f                        ; $587e: $c4 $6f $77
    or l                                          ; $5881: $b5
    ret z                                         ; $5882: $c8

    rst $18                                       ; $5883: $df
    cp c                                          ; $5884: $b9
    ld e, d                                       ; $5885: $5a
    push af                                       ; $5886: $f5
    ld a, l                                       ; $5887: $7d
    add h                                         ; $5888: $84
    ld [$6770], a                                 ; $5889: $ea $70 $67
    db $fd                                        ; $588c: $fd
    sbc c                                         ; $588d: $99
    xor $7e                                       ; $588e: $ee $7e
    cp $aa                                        ; $5890: $fe $aa
    dec l                                         ; $5892: $2d
    dec e                                         ; $5893: $1d
    xor [hl]                                      ; $5894: $ae
    xor b                                         ; $5895: $a8
    ld l, e                                       ; $5896: $6b
    ld hl, $9a2e                                  ; $5897: $21 $2e $9a
    adc c                                         ; $589a: $89
    add e                                         ; $589b: $83
    cp a                                          ; $589c: $bf
    or d                                          ; $589d: $b2
    or $6a                                        ; $589e: $f6 $6a
    jp $2690                                      ; $58a0: $c3 $90 $26


    add l                                         ; $58a3: $85
    dec sp                                        ; $58a4: $3b
    ei                                            ; $58a5: $fb
    rst $20                                       ; $58a6: $e7
    ld c, a                                       ; $58a7: $4f
    add d                                         ; $58a8: $82
    ccf                                           ; $58a9: $3f
    jr z, jr_039_5835                             ; $58aa: $28 $89

    or l                                          ; $58ac: $b5
    call nc, $eeb1                                ; $58ad: $d4 $b1 $ee
    ld e, d                                       ; $58b0: $5a
    cp c                                          ; $58b1: $b9
    inc hl                                        ; $58b2: $23
    cp [hl]                                       ; $58b3: $be
    add b                                         ; $58b4: $80
    rst $30                                       ; $58b5: $f7
    halt                                          ; $58b6: $76

jr_039_58b7:
    dec e                                         ; $58b7: $1d
    ld l, h                                       ; $58b8: $6c
    db $ec                                        ; $58b9: $ec
    add a                                         ; $58ba: $87
    cp b                                          ; $58bb: $b8
    or [hl]                                       ; $58bc: $b6
    ld [hl], c                                    ; $58bd: $71
    sub h                                         ; $58be: $94
    ld sp, hl                                     ; $58bf: $f9
    adc a                                         ; $58c0: $8f
    add e                                         ; $58c1: $83
    ld e, d                                       ; $58c2: $5a
    ld b, $2d                                     ; $58c3: $06 $2d
    adc [hl]                                      ; $58c5: $8e
    dec l                                         ; $58c6: $2d
    dec hl                                        ; $58c7: $2b
    or c                                          ; $58c8: $b1

jr_039_58c9:
    add hl, de                                    ; $58c9: $19
    ld d, h                                       ; $58ca: $54
    rlca                                          ; $58cb: $07
    ld a, a                                       ; $58cc: $7f
    dec e                                         ; $58cd: $1d
    inc e                                         ; $58ce: $1c
    sbc e                                         ; $58cf: $9b
    jp nc, $aac8                                  ; $58d0: $d2 $c8 $aa

    sub l                                         ; $58d3: $95
    ldh a, [$e7]                                  ; $58d4: $f0 $e7
    ret c                                         ; $58d6: $d8

    cp a                                          ; $58d7: $bf
    jp c, $e692                                   ; $58d8: $da $92 $e6

    daa                                           ; $58db: $27
    jr z, jr_039_58ff                             ; $58dc: $28 $21

    pop af                                        ; $58de: $f1
    ld e, e                                       ; $58df: $5b
    ld h, e                                       ; $58e0: $63
    sbc e                                         ; $58e1: $9b
    db $fc                                        ; $58e2: $fc
    dec d                                         ; $58e3: $15
    sub [hl]                                      ; $58e4: $96
    ld d, c                                       ; $58e5: $51
    add $10                                       ; $58e6: $c6 $10
    ld b, h                                       ; $58e8: $44
    xor h                                         ; $58e9: $ac
    cp [hl]                                       ; $58ea: $be
    and h                                         ; $58eb: $a4
    jp c, Jump_039_437b                           ; $58ec: $da $7b $43

    xor b                                         ; $58ef: $a8
    ld d, [hl]                                    ; $58f0: $56
    dec h                                         ; $58f1: $25
    or c                                          ; $58f2: $b1
    sub [hl]                                      ; $58f3: $96
    ld [$1970], a                                 ; $58f4: $ea $70 $19
    adc l                                         ; $58f7: $8d
    db $fc                                        ; $58f8: $fc
    ld sp, hl                                     ; $58f9: $f9
    ld l, l                                       ; $58fa: $6d
    jr nz, jr_039_58b7                            ; $58fb: $20 $ba

    ei                                            ; $58fd: $fb
    ld sp, hl                                     ; $58fe: $f9

jr_039_58ff:
    dec sp                                        ; $58ff: $3b
    ld [hl], a                                    ; $5900: $77
    ccf                                           ; $5901: $3f
    ld a, a                                       ; $5902: $7f
    jp c, $b547                                   ; $5903: $da $47 $b5

    xor d                                         ; $5906: $aa
    or $96                                        ; $5907: $f6 $96
    add hl, sp                                    ; $5909: $39
    db $10                                        ; $590a: $10
    adc $4c                                       ; $590b: $ce $4c
    dec sp                                        ; $590d: $3b
    cp e                                          ; $590e: $bb
    push hl                                       ; $590f: $e5
    add hl, sp                                    ; $5910: $39
    inc sp                                        ; $5911: $33
    ld e, e                                       ; $5912: $5b
    cpl                                           ; $5913: $2f
    ld l, b                                       ; $5914: $68
    di                                            ; $5915: $f3
    dec de                                        ; $5916: $1b
    db $f4                                        ; $5917: $f4
    ld a, l                                       ; $5918: $7d
    add h                                         ; $5919: $84
    or h                                          ; $591a: $b4
    add hl, bc                                    ; $591b: $09
    ld b, a                                       ; $591c: $47
    sbc c                                         ; $591d: $99
    rst $38                                       ; $591e: $ff
    jr c, jr_039_58c9                             ; $591f: $38 $a8

    ld h, l                                       ; $5921: $65
    ret nc                                        ; $5922: $d0

    ld [c], a                                     ; $5923: $e2
    ret c                                         ; $5924: $d8

    sbc $bf                                       ; $5925: $de $bf
    add b                                         ; $5927: $80
    and c                                         ; $5928: $a1
    adc [hl]                                      ; $5929: $8e
    ld [hl], l                                    ; $592a: $75
    rst $10                                       ; $592b: $d7
    jp z, $f11d                                   ; $592c: $ca $1d $f1

    dec b                                         ; $592f: $05
    cp h                                          ; $5930: $bc
    or a                                          ; $5931: $b7
    db $eb                                        ; $5932: $eb
    ld h, b                                       ; $5933: $60

Call_039_5934:
    ld h, e                                       ; $5934: $63
    ccf                                           ; $5935: $3f
    call nz, $e7b5                                ; $5936: $c4 $b5 $e7
    ld e, [hl]                                    ; $5939: $5e
    jp c, $fbd2                                   ; $593a: $da $d2 $fb

    sub a                                         ; $593d: $97
    ld [$5d8f], a                                 ; $593e: $ea $8f $5d
    dec h                                         ; $5941: $25

jr_039_5942:
    ld [hl], l                                    ; $5942: $75
    ld l, h                                       ; $5943: $6c
    rst $20                                       ; $5944: $e7
    sub [hl]                                      ; $5945: $96
    xor a                                         ; $5946: $af
    adc [hl]                                      ; $5947: $8e
    add hl, de                                    ; $5948: $19
    ld [hl], e                                    ; $5949: $73
    ld c, c                                       ; $594a: $49
    xor d                                         ; $594b: $aa
    ld l, h                                       ; $594c: $6c
    jr nz, @+$76                                  ; $594d: $20 $74

    ldh a, [$da]                                  ; $594f: $f0 $da
    ld l, d                                       ; $5951: $6a
    rst $00                                       ; $5952: $c7
    ld a, [$c8e8]                                 ; $5953: $fa $e8 $c8
    nop                                           ; $5956: $00
    or b                                          ; $5957: $b0
    db $ec                                        ; $5958: $ec
    rst $20                                       ; $5959: $e7
    rrca                                          ; $595a: $0f
    ld d, b                                       ; $595b: $50
    dec hl                                        ; $595c: $2b
    ld d, e                                       ; $595d: $53
    jp c, $fcfd                                   ; $595e: $da $fd $fc

    sub l                                         ; $5961: $95
    ld d, c                                       ; $5962: $51
    add $10                                       ; $5963: $c6 $10
    ld b, h                                       ; $5965: $44
    xor h                                         ; $5966: $ac
    cp [hl]                                       ; $5967: $be
    and h                                         ; $5968: $a4
    ld h, h                                       ; $5969: $64
    dec h                                         ; $596a: $25
    inc h                                         ; $596b: $24
    ld a, [hl]                                    ; $596c: $7e
    bit 7, h                                      ; $596d: $cb $7c
    di                                            ; $596f: $f3
    inc de                                        ; $5970: $13
    ld c, b                                       ; $5971: $48
    db $db                                        ; $5972: $db
    and h                                         ; $5973: $a4
    ld [hl], b                                    ; $5974: $70
    sub e                                         ; $5975: $93
    ccf                                           ; $5976: $3f
    and l                                         ; $5977: $a5
    sbc $0e                                       ; $5978: $de $0e
    ld e, [hl]                                    ; $597a: $5e
    db $db                                        ; $597b: $db
    db $e4                                        ; $597c: $e4
    dec hl                                        ; $597d: $2b
    cp e                                          ; $597e: $bb
    ld a, a                                       ; $597f: $7f
    ld bc, $3dec                                  ; $5980: $01 $ec $3d
    db $e4                                        ; $5983: $e4
    and $ed                                       ; $5984: $e6 $ed
    xor c                                         ; $5986: $a9
    ld b, $32                                     ; $5987: $06 $32
    sub h                                         ; $5989: $94
    ld h, $6e                                     ; $598a: $26 $6e
    add [hl]                                      ; $598c: $86
    ret nc                                        ; $598d: $d0

    dec c                                         ; $598e: $0d
    cp $a0                                        ; $598f: $fe $a0
    add a                                         ; $5991: $87
    sbc a                                         ; $5992: $9f
    inc d                                         ; $5993: $14
    xor a                                         ; $5994: $af
    or d                                          ; $5995: $b2
    sub $72                                       ; $5996: $d6 $72
    dec a                                         ; $5998: $3d
    ld a, [de]                                    ; $5999: $1a
    db $fc                                        ; $599a: $fc
    push af                                       ; $599b: $f5
    dec hl                                        ; $599c: $2b
    and d                                         ; $599d: $a2
    ld a, [hl-]                                   ; $599e: $3a
    ld hl, sp+$4b                                 ; $599f: $f8 $4b
    ld [hl], e                                    ; $59a1: $73
    ld c, c                                       ; $59a2: $49
    xor d                                         ; $59a3: $aa
    rst $28                                       ; $59a4: $ef
    inc hl                                        ; $59a5: $23
    ld d, h                                       ; $59a6: $54
    ld a, e                                       ; $59a7: $7b
    dec sp                                        ; $59a8: $3b
    or a                                          ; $59a9: $b7
    ld e, h                                       ; $59aa: $5c
    sub h                                         ; $59ab: $94
    sub [hl]                                      ; $59ac: $96
    dec [hl]                                      ; $59ad: $35
    add [hl]                                      ; $59ae: $86
    inc sp                                        ; $59af: $33
    xor b                                         ; $59b0: $a8

Jump_039_59b1:
    ld e, d                                       ; $59b1: $5a
    db $dd                                        ; $59b2: $dd
    ld h, h                                       ; $59b3: $64
    rl c                                          ; $59b4: $cb $11
    db $eb                                        ; $59b6: $eb
    ld h, [hl]                                    ; $59b7: $66
    ld d, $03                                     ; $59b8: $16 $03
    jr jr_039_5942                                ; $59ba: $18 $86

    inc [hl]                                      ; $59bc: $34
    ld c, c                                       ; $59bd: $49
    sub l                                         ; $59be: $95
    adc b                                         ; $59bf: $88
    push de                                       ; $59c0: $d5
    ld b, [hl]                                    ; $59c1: $46
    jr c, jr_039_5a1b                             ; $59c2: $38 $57

    ld a, a                                       ; $59c4: $7f
    call nz, $d63a                                ; $59c5: $c4 $3a $d6
    ld e, l                                       ; $59c8: $5d
    dec hl                                        ; $59c9: $2b
    ld [hl], a                                    ; $59ca: $77
    call nz, $f017                                ; $59cb: $c4 $17 $f0
    sbc $ae                                       ; $59ce: $de $ae
    add e                                         ; $59d0: $83
    adc l                                         ; $59d1: $8d
    db $fd                                        ; $59d2: $fd
    db $10                                        ; $59d3: $10
    rst $10                                       ; $59d4: $d7
    ld [hl], $8e                                  ; $59d5: $36 $8e
    ld [hl-], a                                   ; $59d7: $32
    rst $38                                       ; $59d8: $ff
    ld [hl], c                                    ; $59d9: $71
    ld d, b                                       ; $59da: $50
    res 4, b                                      ; $59db: $cb $a0
    push bc                                       ; $59dd: $c5
    or c                                          ; $59de: $b1
    call Call_039_5fbc                            ; $59df: $cd $bc $5f
    ld d, l                                       ; $59e2: $55
    add a                                         ; $59e3: $87
    dec hl                                        ; $59e4: $2b
    pop bc                                        ; $59e5: $c1
    rra                                           ; $59e6: $1f
    ld b, h                                       ; $59e7: $44
    and $0e                                       ; $59e8: $e6 $0e
    inc sp                                        ; $59ea: $33
    cp l                                          ; $59eb: $bd
    sbc $aa                                       ; $59ec: $de $aa
    call $904a                                    ; $59ee: $cd $4a $90
    and h                                         ; $59f1: $a4
    adc [hl]                                      ; $59f2: $8e
    push af                                       ; $59f3: $f5
    ld [hl], $d9                                  ; $59f4: $36 $d9
    ld d, h                                       ; $59f6: $54

Call_039_59f7:
    ld a, e                                       ; $59f7: $7b
    ld a, e                                       ; $59f8: $7b
    rrca                                          ; $59f9: $0f
    ld d, a                                       ; $59fa: $57
    rlca                                          ; $59fb: $07
    ld a, a                                       ; $59fc: $7f
    dec c                                         ; $59fd: $0d
    add h                                         ; $59fe: $84
    inc [hl]                                      ; $59ff: $34
    rlca                                          ; $5a00: $07
    ld c, c                                       ; $5a01: $49
    xor d                                         ; $5a02: $aa
    rst $28                                       ; $5a03: $ef
    inc hl                                        ; $5a04: $23
    ld d, h                                       ; $5a05: $54
    dec sp                                        ; $5a06: $3b
    sub $1d                                       ; $5a07: $d6 $1d
    db $ed                                        ; $5a09: $ed
    ld a, b                                       ; $5a0a: $78
    ei                                            ; $5a0b: $fb
    ld sp, hl                                     ; $5a0c: $f9

jr_039_5a0d:
    inc bc                                        ; $5a0d: $03
    call z, $fc8c                                 ; $5a0e: $cc $8c $fc
    ld a, c                                       ; $5a11: $79
    ld l, a                                       ; $5a12: $6f
    xor [hl]                                      ; $5a13: $ae
    rla                                           ; $5a14: $17

jr_039_5a15:
    or h                                          ; $5a15: $b4
    ld sp, hl                                     ; $5a16: $f9
    dec c                                         ; $5a17: $0d
    add [hl]                                      ; $5a18: $86
    ld [hl], h                                    ; $5a19: $74
    xor b                                         ; $5a1a: $a8

jr_039_5a1b:
    ld [c], a                                     ; $5a1b: $e2
    xor a                                         ; $5a1c: $af
    ld [hl], c                                    ; $5a1d: $71
    sub h                                         ; $5a1e: $94
    ld sp, hl                                     ; $5a1f: $f9
    adc a                                         ; $5a20: $8f
    add e                                         ; $5a21: $83
    ld e, d                                       ; $5a22: $5a
    ld b, $2d                                     ; $5a23: $06 $2d
    adc [hl]                                      ; $5a25: $8e
    db $ed                                        ; $5a26: $ed
    db $fd                                        ; $5a27: $fd
    dec bc                                        ; $5a28: $0b
    jr jr_039_5a15                                ; $5a29: $18 $ea

    ret c                                         ; $5a2b: $d8

    sbc $a8                                       ; $5a2c: $de $a8
    ld h, e                                       ; $5a2e: $63
    adc l                                         ; $5a2f: $8d
    ld h, l                                       ; $5a30: $65
    inc [hl]                                      ; $5a31: $34
    ld a, [c]                                     ; $5a32: $f2
    rst $20                                       ; $5a33: $e7
    cp l                                          ; $5a34: $bd
    push af                                       ; $5a35: $f5
    dec hl                                        ; $5a36: $2b
    and d                                         ; $5a37: $a2
    ld a, [hl-]                                   ; $5a38: $3a
    ld hl, sp+$4b                                 ; $5a39: $f8 $4b
    ld [hl], e                                    ; $5a3b: $73
    ld c, c                                       ; $5a3c: $49
    xor d                                         ; $5a3d: $aa
    rst $28                                       ; $5a3e: $ef
    inc hl                                        ; $5a3f: $23
    inc [hl]                                      ; $5a40: $34
    sbc c                                         ; $5a41: $99
    db $f4                                        ; $5a42: $f4
    sub $52                                       ; $5a43: $d6 $52
    add d                                         ; $5a45: $82
    inc h                                         ; $5a46: $24
    ld c, l                                       ; $5a47: $4d
    cp $99                                        ; $5a48: $fe $99
    add h                                         ; $5a4a: $84
    add $22                                       ; $5a4b: $c6 $22

jr_039_5a4d:
    ld a, a                                       ; $5a4d: $7f
    ld l, d                                       ; $5a4e: $6a
    ld h, b                                       ; $5a4f: $60
    jr nz, jr_039_5a84                            ; $5a50: $20 $32

    ld l, a                                       ; $5a52: $6f
    ld h, a                                       ; $5a53: $67
    ld de, $d5ab                                  ; $5a54: $11 $ab $d5
    call $fc4c                                    ; $5a57: $cd $4c $fc
    call $43bc                                    ; $5a5a: $cd $bc $43
    jp z, $fde8                                   ; $5a5d: $ca $e8 $fd

    xor d                                         ; $5a60: $aa
    ld h, h                                       ; $5a61: $64
    ld [hl], l                                    ; $5a62: $75
    ld d, h                                       ; $5a63: $54
    add d                                         ; $5a64: $82
    ccf                                           ; $5a65: $3f
    adc b                                         ; $5a66: $88
    call z, $13db                                 ; $5a67: $cc $db $13
    inc e                                         ; $5a6a: $1c
    jr nc, jr_039_5a0d                            ; $5a6b: $30 $a0

    or $06                                        ; $5a6d: $f6 $06
    dec c                                         ; $5a6f: $0d
    add h                                         ; $5a70: $84
    ld a, [hl-]                                   ; $5a71: $3a
    sub $5d                                       ; $5a72: $d6 $5d
    dec hl                                        ; $5a74: $2b
    ld [hl], a                                    ; $5a75: $77
    call nz, $f017                                ; $5a76: $c4 $17 $f0
    sbc $ae                                       ; $5a79: $de $ae
    add e                                         ; $5a7b: $83
    adc l                                         ; $5a7c: $8d
    db $fd                                        ; $5a7d: $fd
    db $10                                        ; $5a7e: $10
    rst $10                                       ; $5a7f: $d7
    ld [hl], $8e                                  ; $5a80: $36 $8e
    ld [hl-], a                                   ; $5a82: $32
    rst $38                                       ; $5a83: $ff

Call_039_5a84:
jr_039_5a84:
    ld [hl], c                                    ; $5a84: $71
    ld d, b                                       ; $5a85: $50
    res 4, b                                      ; $5a86: $cb $a0
    push bc                                       ; $5a88: $c5
    or c                                          ; $5a89: $b1
    ld [hl], l                                    ; $5a8a: $75
    ld l, h                                       ; $5a8b: $6c
    ld h, [hl]                                    ; $5a8c: $66
    sub b                                         ; $5a8d: $90
    adc e                                         ; $5a8e: $8b
    jr nz, jr_039_5a4d                            ; $5a8f: $20 $bc

    ld l, c                                       ; $5a91: $69
    ld c, $49                                     ; $5a92: $0e $49
    xor d                                         ; $5a94: $aa
    rst $28                                       ; $5a95: $ef
    inc hl                                        ; $5a96: $23
    ld [hl], h                                    ; $5a97: $74
    or $4b                                        ; $5a98: $f6 $4b
    ld e, b                                       ; $5a9a: $58
    dec bc                                        ; $5a9b: $0b
    inc [hl]                                      ; $5a9c: $34
    inc sp                                        ; $5a9d: $33
    pop af                                        ; $5a9e: $f1
    scf                                           ; $5a9f: $37
    di                                            ; $5aa0: $f3
    ld d, [hl]                                    ; $5aa1: $56
    xor l                                         ; $5aa2: $ad
    ld l, [hl]                                    ; $5aa3: $6e
    ld a, [c]                                     ; $5aa4: $f2
    rst $08                                       ; $5aa5: $cf
    inc h                                         ; $5aa6: $24
    ld [hl], h                                    ; $5aa7: $74

jr_039_5aa8:
    push af                                       ; $5aa8: $f5
    ccf                                           ; $5aa9: $3f
    ld [bc], a                                    ; $5aaa: $02
    ld a, [hl-]                                   ; $5aab: $3a
    ld a, b                                       ; $5aac: $78
    ld c, c                                       ; $5aad: $49
    rst $28                                       ; $5aae: $ef
    ld c, $b0                                     ; $5aaf: $0e $b0
    ld hl, sp-$18                                 ; $5ab1: $f8 $e8
    cp b                                          ; $5ab3: $b8
    sub d                                         ; $5ab4: $92
    ld e, c                                       ; $5ab5: $59
    jp z, $fefa                                   ; $5ab6: $ca $fa $fe

    sbc a                                         ; $5ab9: $9f
    ld b, b                                       ; $5aba: $40
    jp c, $ee13                                   ; $5abb: $da $13 $ee

    add c                                         ; $5abe: $81
    db $fc                                        ; $5abf: $fc
    ld a, c                                       ; $5ac0: $79
    xor e                                         ; $5ac1: $ab
    jp $a3e8                                      ; $5ac2: $c3 $e8 $a3


    jp $91c5                                      ; $5ac5: $c3 $c5 $91


    ld l, l                                       ; $5ac8: $6d
    ld h, b                                       ; $5ac9: $60
    push de                                       ; $5aca: $d5
    ld [$4b6a], a                                 ; $5acb: $ea $6a $4b
    rst $10                                       ; $5ace: $d7
    jp z, Jump_000_11db                           ; $5acf: $ca $db $11

    ld e, a                                       ; $5ad2: $5f
    ret nz                                        ; $5ad3: $c0

    ld a, e                                       ; $5ad4: $7b
    cp e                                          ; $5ad5: $bb
    ld c, $36                                     ; $5ad6: $0e $36
    or $43                                        ; $5ad8: $f6 $43
    ld e, h                                       ; $5ada: $5c
    db $db                                        ; $5adb: $db
    jr c, jr_039_5aa8                             ; $5adc: $38 $ca

    db $fc                                        ; $5ade: $fc
    rst $00                                       ; $5adf: $c7
    ld b, c                                       ; $5ae0: $41
    dec l                                         ; $5ae1: $2d
    add e                                         ; $5ae2: $83
    ld d, $c7                                     ; $5ae3: $16 $c7
    ld [hl], $0b                                  ; $5ae5: $36 $0b
    ld d, $6a                                     ; $5ae7: $16 $6a
    db $ec                                        ; $5ae9: $ec
    call $deb1                                    ; $5aea: $cd $b1 $de
    sbc [hl]                                      ; $5aed: $9e
    and b                                         ; $5aee: $a0
    ldh a, [$1f]                                  ; $5aef: $f0 $1f
    add a                                         ; $5af1: $87
    rst $30                                       ; $5af2: $f7
    db $fd                                        ; $5af3: $fd
    call Call_000_1cd2                            ; $5af4: $cd $d2 $1c
    ld c, c                                       ; $5af7: $49
    xor d                                         ; $5af8: $aa
    rst $28                                       ; $5af9: $ef
    inc hl                                        ; $5afa: $23
    ld [hl], h                                    ; $5afb: $74
    or $4b                                        ; $5afc: $f6 $4b
    ld e, b                                       ; $5afe: $58
    dec bc                                        ; $5aff: $0b
    inc d                                         ; $5b00: $14
    add e                                         ; $5b01: $83
    ccf                                           ; $5b02: $3f
    ld c, e                                       ; $5b03: $4b
    ret                                           ; $5b04: $c9


    ld [$dce8], a                                 ; $5b05: $ea $e8 $dc
    ld c, d                                       ; $5b08: $4a
    adc [hl]                                      ; $5b09: $8e
    ld h, [hl]                                    ; $5b0a: $66
    ld h, [hl]                                    ; $5b0b: $66
    push hl                                       ; $5b0c: $e5
    di                                            ; $5b0d: $f3
    rlca                                          ; $5b0e: $07
    ld b, e                                       ; $5b0f: $43
    sbc d                                         ; $5b10: $9a
    and h                                         ; $5b11: $a4
    jp z, Jump_039_4206                           ; $5b12: $ca $06 $42

    dec l                                         ; $5b15: $2d
    call nc, $1fc1                                ; $5b16: $d4 $c1 $1f
    ld e, b                                       ; $5b19: $58
    and b                                         ; $5b1a: $a0
    ld l, d                                       ; $5b1b: $6a
    ld [hl], l                                    ; $5b1c: $75
    ld [hl], l                                    ; $5b1d: $75
    ld c, b                                       ; $5b1e: $48
    rst $28                                       ; $5b1f: $ef
    ld hl, $37ba                                  ; $5b20: $21 $ba $37
    ld a, [$5ce5]                                 ; $5b23: $fa $e5 $5c
    db $fd                                        ; $5b26: $fd
    ld de, $ec6b                                  ; $5b27: $11 $6b $ec
    ccf                                           ; $5b2a: $3f
    ld a, [hl-]                                   ; $5b2b: $3a
    ld a, [c]                                     ; $5b2c: $f2
    sub d                                         ; $5b2d: $92
    call z, $38db                                 ; $5b2e: $cc $db $38
    jp z, $c7fc                                   ; $5b31: $ca $fc $c7

    ld b, c                                       ; $5b34: $41
    dec l                                         ; $5b35: $2d
    add e                                         ; $5b36: $83
    ld d, $c7                                     ; $5b37: $16 $c7
    sub $b1                                       ; $5b39: $d6 $b1
    xor $5a                                       ; $5b3b: $ee $5a
    cp c                                          ; $5b3d: $b9
    inc hl                                        ; $5b3e: $23
    cp [hl]                                       ; $5b3f: $be
    add b                                         ; $5b40: $80
    rst $30                                       ; $5b41: $f7
    halt                                          ; $5b42: $76
    dec e                                         ; $5b43: $1d
    ld l, h                                       ; $5b44: $6c
    db $ec                                        ; $5b45: $ec
    add a                                         ; $5b46: $87
    cp b                                          ; $5b47: $b8
    or [hl]                                       ; $5b48: $b6
    sbc c                                         ; $5b49: $99
    ld e, c                                       ; $5b4a: $59
    ld l, a                                       ; $5b4b: $6f
    rst $28                                       ; $5b4c: $ef
    ld hl, $cd3a                                  ; $5b4d: $21 $3a $cd
    ld bc, $aa49                                  ; $5b50: $01 $49 $aa
    rst $28                                       ; $5b53: $ef
    inc hl                                        ; $5b54: $23
    ld d, h                                       ; $5b55: $54
    ld a, a                                       ; $5b56: $7f
    db $ec                                        ; $5b57: $ec
    ld d, b                                       ; $5b58: $50
    sub $0b                                       ; $5b59: $d6 $0b
    ld d, [hl]                                    ; $5b5b: $56
    sub [hl]                                      ; $5b5c: $96
    add $d1                                       ; $5b5d: $c6 $d1
    ld b, c                                       ; $5b5f: $41
    dec bc                                        ; $5b60: $0b
    ld a, e                                       ; $5b61: $7b
    add c                                         ; $5b62: $81
    rst $10                                       ; $5b63: $d7
    db $db                                        ; $5b64: $db
    pop de                                        ; $5b65: $d1
    sbc a                                         ; $5b66: $9f
    ld [$073e], a                                 ; $5b67: $ea $3e $07
    dec l                                         ; $5b6a: $2d

jr_039_5b6b:
    adc c                                         ; $5b6b: $89
    or l                                          ; $5b6c: $b5
    jr nz, jr_039_5b6b                            ; $5b6d: $20 $fc

    push de                                       ; $5b6f: $d5
    sbc $aa                                       ; $5b70: $de $aa
    push de                                       ; $5b72: $d5
    push de                                       ; $5b73: $d5
    rra                                           ; $5b74: $1f
    dec sp                                        ; $5b75: $3b
    ld l, b                                       ; $5b76: $68
    and c                                         ; $5b77: $a1
    ld b, $32                                     ; $5b78: $06 $32
    cp b                                          ; $5b7a: $b8
    jp $df63                                      ; $5b7b: $c3 $63 $df


    dec h                                         ; $5b7e: $25
    db $db                                        ; $5b7f: $db
    call z, Call_039_5a84                         ; $5b80: $cc $84 $5a
    db $ed                                        ; $5b83: $ed
    dec e                                         ; $5b84: $1d
    jp nc, $a384                                  ; $5b85: $d2 $84 $a3

    call z, Call_000_1c7f                         ; $5b88: $cc $7f $1c
    call nc, $6832                                ; $5b8b: $d4 $32 $68
    ld [hl], c                                    ; $5b8e: $71
    ld l, h                                       ; $5b8f: $6c
    rst $28                                       ; $5b90: $ef
    ld c, d                                       ; $5b91: $4a
    or h                                          ; $5b92: $b4
    set 7, d                                      ; $5b93: $cb $fa
    or $77                                        ; $5b95: $f6 $77
    and c                                         ; $5b97: $a1
    sbc c                                         ; $5b98: $99
    inc sp                                        ; $5b99: $33
    or e                                          ; $5b9a: $b3
    sbc $73                                       ; $5b9b: $de $73
    push af                                       ; $5b9d: $f5
    ld b, a                                       ; $5b9e: $47
    xor h                                         ; $5b9f: $ac
    or c                                          ; $5ba0: $b1
    adc [hl]                                      ; $5ba1: $8e
    ld [hl], l                                    ; $5ba2: $75
    rst $10                                       ; $5ba3: $d7
    jp z, $f11d                                   ; $5ba4: $ca $1d $f1

    dec b                                         ; $5ba7: $05
    cp h                                          ; $5ba8: $bc
    or a                                          ; $5ba9: $b7
    db $eb                                        ; $5baa: $eb
    ld h, b                                       ; $5bab: $60
    ld h, e                                       ; $5bac: $63
    ccf                                           ; $5bad: $3f
    call nz, $cdb5                                ; $5bae: $c4 $b5 $cd
    add d                                         ; $5bb1: $82
    add l                                         ; $5bb2: $85
    inc [hl]                                      ; $5bb3: $34
    rlca                                          ; $5bb4: $07
    adc h                                         ; $5bb5: $8c
    ld [hl-], a                                   ; $5bb6: $32
    add [hl]                                      ; $5bb7: $86
    jr nz, @+$64                                  ; $5bb8: $20 $62

    push af                                       ; $5bba: $f5
    dec h                                         ; $5bbb: $25
    ld a, l                                       ; $5bbc: $7d
    rra                                           ; $5bbd: $1f
    xor d                                         ; $5bbe: $aa
    cp l                                          ; $5bbf: $bd
    ld c, l                                       ; $5bc0: $4d
    cp $0a                                        ; $5bc1: $fe $0a
    rlca                                          ; $5bc3: $07
    xor [hl]                                      ; $5bc4: $ae
    db $db                                        ; $5bc5: $db
    and a                                         ; $5bc6: $a7
    ld b, e                                       ; $5bc7: $43
    jp z, Jump_039_63a4                           ; $5bc8: $ca $a4 $63

    ldh [$59], a                                  ; $5bcb: $e0 $59
    ld h, d                                       ; $5bcd: $62
    or c                                          ; $5bce: $b1
    call z, Call_039_6670                         ; $5bcf: $cc $70 $66
    ld b, h                                       ; $5bd2: $44
    ld c, e                                       ; $5bd3: $4b
    cp b                                          ; $5bd4: $b8
    ld [hl], a                                    ; $5bd5: $77
    dec h                                         ; $5bd6: $25
    jp c, $0b55                                   ; $5bd7: $da $55 $0b

    ld d, $56                                     ; $5bda: $16 $56
    ld l, $fe                                     ; $5bdc: $2e $fe
    cp h                                          ; $5bde: $bc
    ld b, e                                       ; $5bdf: $43
    sbc d                                         ; $5be0: $9a
    and h                                         ; $5be1: $a4
    ld c, $96                                     ; $5be2: $0e $96
    ld e, d                                       ; $5be4: $5a
    ld e, a                                       ; $5be5: $5f
    ld [c], a                                     ; $5be6: $e2
    ld h, [hl]                                    ; $5be7: $66
    pop bc                                        ; $5be8: $c1
    ld b, d                                       ; $5be9: $42
    ld [hl], l                                    ; $5bea: $75
    ld c, b                                       ; $5beb: $48
    ld [hl], l                                    ; $5bec: $75
    cp b                                          ; $5bed: $b8
    xor h                                         ; $5bee: $ac
    ld de, $4fdc                                  ; $5bef: $11 $dc $4f
    xor c                                         ; $5bf2: $a9
    and l                                         ; $5bf3: $a5
    jp $ea82                                      ; $5bf4: $c3 $82 $ea


    db $db                                        ; $5bf7: $db
    rla                                           ; $5bf8: $17
    ldh a, [$96]                                  ; $5bf9: $f0 $96
    or l                                          ; $5bfb: $b5
    sub b                                         ; $5bfc: $90
    sbc $01                                       ; $5bfd: $de $01
    sub [hl]                                      ; $5bff: $96
    ld h, $fb                                     ; $5c00: $26 $fb
    ld [hl], h                                    ; $5c02: $74
    ld l, a                                       ; $5c03: $6f
    push de                                       ; $5c04: $d5
    ld [$f09e], a                                 ; $5c05: $ea $9e $f0
    dec d                                         ; $5c08: $15
    ld l, e                                       ; $5c09: $6b
    or c                                          ; $5c0a: $b1
    ld [hl], h                                    ; $5c0b: $74
    ld [c], a                                     ; $5c0c: $e2
    ld [$9370], a                                 ; $5c0d: $ea $70 $93
    cp a                                          ; $5c10: $bf
    ret z                                         ; $5c11: $c8

    sbc b                                         ; $5c12: $98
    adc [hl]                                      ; $5c13: $8e
    cp d                                          ; $5c14: $ba
    nop                                           ; $5c15: $00
    inc l                                         ; $5c16: $2c
    inc de                                        ; $5c17: $13
    adc a                                         ; $5c18: $8f
    ld hl, sp+$02                                 ; $5c19: $f8 $02
    ld e, $92                                     ; $5c1b: $1e $92
    inc bc                                        ; $5c1d: $03
    ld c, c                                       ; $5c1e: $49
    xor d                                         ; $5c1f: $aa
    rst $28                                       ; $5c20: $ef
    inc hl                                        ; $5c21: $23
    sub h                                         ; $5c22: $94
    ld d, c                                       ; $5c23: $51
    add $10                                       ; $5c24: $c6 $10
    ld b, h                                       ; $5c26: $44
    xor h                                         ; $5c27: $ac
    cp [hl]                                       ; $5c28: $be
    db $e4                                        ; $5c29: $e4
    ld e, h                                       ; $5c2a: $5c
    db $ed                                        ; $5c2b: $ed
    ret c                                         ; $5c2c: $d8

    ld h, $7f                                     ; $5c2d: $26 $7f
    add l                                         ; $5c2f: $85
    adc l                                         ; $5c30: $8d
    ld l, l                                       ; $5c31: $6d
    ld a, [c]                                     ; $5c32: $f2
    sub l                                         ; $5c33: $95
    db $dd                                        ; $5c34: $dd
    cp a                                          ; $5c35: $bf
    nop                                           ; $5c36: $00
    sbc [hl]                                      ; $5c37: $9e
    sbc e                                         ; $5c38: $9b
    sbc c                                         ; $5c39: $99
    ld d, b                                       ; $5c3a: $50
    xor e                                         ; $5c3b: $ab
    cp l                                          ; $5c3c: $bd
    ld l, c                                       ; $5c3d: $69
    sub e                                         ; $5c3e: $93
    jp Jump_039_7bd2                              ; $5c3f: $c3 $d2 $7b


    ld [$b542], sp                                ; $5c42: $08 $42 $b5
    ld a, [hl+]                                   ; $5c45: $2a
    dec [hl]                                      ; $5c46: $35
    db $eb                                        ; $5c47: $eb
    xor l                                         ; $5c48: $ad
    ld e, d                                       ; $5c49: $5a
    ld e, l                                       ; $5c4a: $5d
    ld l, d                                       ; $5c4b: $6a
    ld e, c                                       ; $5c4c: $59
    rst $28                                       ; $5c4d: $ef
    sub b                                         ; $5c4e: $90
    ld h, $fd                                     ; $5c4f: $26 $fd

jr_039_5c51:
    inc hl                                        ; $5c51: $23
    and b                                         ; $5c52: $a0
    jr jr_039_5c51                                ; $5c53: $18 $fc

    push af                                       ; $5c55: $f5
    ld d, h                                       ; $5c56: $54
    ld l, e                                       ; $5c57: $6b
    ld c, e                                       ; $5c58: $4b
    ret                                           ; $5c59: $c9


    xor d                                         ; $5c5a: $aa
    ret                                           ; $5c5b: $c9


    ld e, a                                       ; $5c5c: $5f
    and c                                         ; $5c5d: $a1
    ld c, e                                       ; $5c5e: $4b
    sub b                                         ; $5c5f: $90
    ld e, $85                                     ; $5c60: $1e $85
    ld [hl], e                                    ; $5c62: $73
    rst $28                                       ; $5c63: $ef
    ld e, a                                       ; $5c64: $5f
    ret nz                                        ; $5c65: $c0

    ld d, b                                       ; $5c66: $50
    rst $00                                       ; $5c67: $c7
    cp d                                          ; $5c68: $ba
    inc hl                                        ; $5c69: $23
    cp [hl]                                       ; $5c6a: $be
    add b                                         ; $5c6b: $80
    rst $30                                       ; $5c6c: $f7
    halt                                          ; $5c6d: $76
    dec e                                         ; $5c6e: $1d
    ld l, h                                       ; $5c6f: $6c
    db $ec                                        ; $5c70: $ec
    add a                                         ; $5c71: $87
    cp b                                          ; $5c72: $b8
    or [hl]                                       ; $5c73: $b6
    ld [hl], c                                    ; $5c74: $71
    sub h                                         ; $5c75: $94
    ld sp, hl                                     ; $5c76: $f9
    adc a                                         ; $5c77: $8f
    add e                                         ; $5c78: $83
    ld e, d                                       ; $5c79: $5a
    ld b, $2d                                     ; $5c7a: $06 $2d
    adc [hl]                                      ; $5c7c: $8e
    db $ed                                        ; $5c7d: $ed
    ld d, a                                       ; $5c7e: $57
    ld b, h                                       ; $5c7f: $44
    db $e3                                        ; $5c80: $e3
    ld l, l                                       ; $5c81: $6d
    sbc d                                         ; $5c82: $9a
    inc bc                                        ; $5c83: $03
    inc hl                                        ; $5c84: $23
    ccf                                           ; $5c85: $3f
    ld a, a                                       ; $5c86: $7f
    push de                                       ; $5c87: $d5
    pop bc                                        ; $5c88: $c1
    ld e, a                                       ; $5c89: $5f
    cp a                                          ; $5c8a: $bf
    ld [hl+], a                                   ; $5c8b: $22
    xor d                                         ; $5c8c: $aa
    cp l                                          ; $5c8d: $bd
    dec e                                         ; $5c8e: $1d
    db $ed                                        ; $5c8f: $ed
    xor h                                         ; $5c90: $ac
    ld h, h                                       ; $5c91: $64
    ld [hl], l                                    ; $5c92: $75
    ld [hl], h                                    ; $5c93: $74
    ret c                                         ; $5c94: $d8

    ld a, a                                       ; $5c95: $7f
    ei                                            ; $5c96: $fb
    ld l, $a2                                     ; $5c97: $2e $a2
    inc hl                                        ; $5c99: $23
    ld h, d                                       ; $5c9a: $62
    or e                                          ; $5c9b: $b3
    pop af                                        ; $5c9c: $f1
    or c                                          ; $5c9d: $b1
    inc sp                                        ; $5c9e: $33
    res 0, l                                      ; $5c9f: $cb $85
    ld a, b                                       ; $5ca1: $78
    ld l, [hl]                                    ; $5ca2: $6e
    ld a, [c]                                     ; $5ca3: $f2
    rla                                           ; $5ca4: $17
    add hl, de                                    ; $5ca5: $19
    sub e                                         ; $5ca6: $93
    sub [hl]                                      ; $5ca7: $96
    xor c                                         ; $5ca8: $a9
    ld hl, sp+$2b                                 ; $5ca9: $f8 $2b
    inc hl                                        ; $5cab: $23
    ld [hl], l                                    ; $5cac: $75
    ld h, b                                       ; $5cad: $60
    and a                                         ; $5cae: $a7
    db $eb                                        ; $5caf: $eb
    inc d                                         ; $5cb0: $14
    sub e                                         ; $5cb1: $93
    ld c, h                                       ; $5cb2: $4c
    ld e, c                                       ; $5cb3: $59
    or l                                          ; $5cb4: $b5
    cp d                                          ; $5cb5: $ba
    jp c, $e4db                                   ; $5cb6: $da $db $e4

    dec hl                                        ; $5cb9: $2b
    cp e                                          ; $5cba: $bb
    ld a, a                                       ; $5cbb: $7f
    ld bc, $789c                                  ; $5cbc: $01 $9c $78
    ld hl, sp-$17                                 ; $5cbf: $f8 $e9
    inc bc                                        ; $5cc1: $03
    ld h, d                                       ; $5cc2: $62
    call nz, Call_000_0734                        ; $5cc3: $c4 $34 $07
    ld c, c                                       ; $5cc6: $49
    inc de                                        ; $5cc7: $13
    db $eb                                        ; $5cc8: $eb
    adc c                                         ; $5cc9: $89
    or l                                          ; $5cca: $b5
    and l                                         ; $5ccb: $a5
    di                                            ; $5ccc: $f3
    inc l                                         ; $5ccd: $2c
    ld e, b                                       ; $5cce: $58
    inc h                                         ; $5ccf: $24
    ld hl, sp-$7d                                 ; $5cd0: $f8 $83
    ld b, $42                                     ; $5cd2: $06 $42
    reti                                          ; $5cd4: $d9


    adc c                                         ; $5cd5: $89
    reti                                          ; $5cd6: $d9


    adc c                                         ; $5cd7: $89
    ld e, c                                       ; $5cd8: $59
    ld a, e                                       ; $5cd9: $7b
    or l                                          ; $5cda: $b5
    ld hl, $01cd                                  ; $5cdb: $21 $cd $01
    inc de                                        ; $5cde: $13
    call Call_039_5934                            ; $5cdf: $cd $34 $59
    ld [hl], e                                    ; $5ce2: $73
    inc de                                        ; $5ce3: $13
    rst $08                                       ; $5ce4: $cf
    inc [hl]                                      ; $5ce5: $34
    ld e, c                                       ; $5ce6: $59
    ld [hl], e                                    ; $5ce7: $73
    ld c, c                                       ; $5ce8: $49
    xor d                                         ; $5ce9: $aa
    ld e, c                                       ; $5cea: $59
    or b                                          ; $5ceb: $b0
    ld [$e7d3], sp                                ; $5cec: $08 $d3 $e7
    ld c, c                                       ; $5cef: $49
    xor d                                         ; $5cf0: $aa
    add e                                         ; $5cf1: $83
    ld d, $1a                                     ; $5cf2: $16 $1a
    ld d, $84                                     ; $5cf4: $16 $84
    adc $34                                       ; $5cf6: $ce $34
    ld e, c                                       ; $5cf8: $59
    sub e                                         ; $5cf9: $93
    ld b, [hl]                                    ; $5cfa: $46
    dec c                                         ; $5cfb: $0d
    ret                                           ; $5cfc: $c9


    ld bc, $aa49                                  ; $5cfd: $01 $49 $aa
    xor h                                         ; $5d00: $ac
    ld l, a                                       ; $5d01: $6f
    rst $10                                       ; $5d02: $d7
    ld [hl], c                                    ; $5d03: $71
    jr nz, @+$76                                  ; $5d04: $20 $74

    and [hl]                                      ; $5d06: $a6
    ret                                           ; $5d07: $c9


    sbc d                                         ; $5d08: $9a
    inc [hl]                                      ; $5d09: $34
    ld l, d                                       ; $5d0a: $6a
    ld c, b                                       ; $5d0b: $48
    ld c, $a3                                     ; $5d0c: $0e $a3
    cp l                                          ; $5d0e: $bd
    ld e, e                                       ; $5d0f: $5b
    xor l                                         ; $5d10: $ad
    cp d                                          ; $5d11: $ba
    rla                                           ; $5d12: $17
    ld a, a                                       ; $5d13: $7f
    cp l                                          ; $5d14: $bd
    add hl, sp                                    ; $5d15: $39
    sub $1d                                       ; $5d16: $d6 $1d
    ld d, $54                                     ; $5d18: $16 $54
    rst $18                                       ; $5d1a: $df
    cp [hl]                                       ; $5d1b: $be
    add b                                         ; $5d1c: $80
    or a                                          ; $5d1d: $b7
    xor h                                         ; $5d1e: $ac
    add l                                         ; $5d1f: $85
    db $f4                                        ; $5d20: $f4
    ld c, $b0                                     ; $5d21: $0e $b0
    inc [hl]                                      ; $5d23: $34
    reti                                          ; $5d24: $d9


    and a                                         ; $5d25: $a7
    ld a, e                                       ; $5d26: $7b
    xor e                                         ; $5d27: $ab
    ld d, [hl]                                    ; $5d28: $56
    rst $30                                       ; $5d29: $f7
    add h                                         ; $5d2a: $84
    xor a                                         ; $5d2b: $af
    ld e, b                                       ; $5d2c: $58
    adc e                                         ; $5d2d: $8b
    and l                                         ; $5d2e: $a5
    ld hl, sp-$71                                 ; $5d2f: $f8 $8f
    jp $e114                                      ; $5d31: $c3 $14 $e1


    ld e, h                                       ; $5d34: $5c
    cp h                                          ; $5d35: $bc
    jr z, jr_039_5d3d                             ; $5d36: $28 $05

    inc hl                                        ; $5d38: $23
    ld d, h                                       ; $5d39: $54
    xor e                                         ; $5d3a: $ab
    sbc [hl]                                      ; $5d3b: $9e
    ld l, d                                       ; $5d3c: $6a

jr_039_5d3d:
    jr nz, jr_039_5d82                            ; $5d3d: $20 $43

    push af                                       ; $5d3f: $f5
    ccf                                           ; $5d40: $3f
    ld [bc], a                                    ; $5d41: $02
    ld a, [$f897]                                 ; $5d42: $fa $97 $f8
    sbc e                                         ; $5d45: $9b
    ld a, c                                       ; $5d46: $79
    db $d3                                        ; $5d47: $d3
    inc e                                         ; $5d48: $1c
    and e                                         ; $5d49: $a3
    cp l                                          ; $5d4a: $bd
    ld e, e                                       ; $5d4b: $5b
    xor l                                         ; $5d4c: $ad
    ld c, d                                       ; $5d4d: $4a
    ld h, d                                       ; $5d4e: $62
    dec l                                         ; $5d4f: $2d
    cp l                                          ; $5d50: $bd
    add hl, sp                                    ; $5d51: $39
    sub $3d                                       ; $5d52: $d6 $3d
    pop hl                                        ; $5d54: $e1
    dec hl                                        ; $5d55: $2b
    sub $82                                       ; $5d56: $d6 $82
    inc bc                                        ; $5d58: $03
    ld b, d                                       ; $5d59: $42
    ld [c], a                                     ; $5d5a: $e2
    rst $08                                       ; $5d5b: $cf
    dec a                                         ; $5d5c: $3d
    db $fc                                        ; $5d5d: $fc
    and h                                         ; $5d5e: $a4
    add e                                         ; $5d5f: $83
    ld d, $82                                     ; $5d60: $16 $82
    sub h                                         ; $5d62: $94

Jump_039_5d63:
    ld hl, $7b9c                                  ; $5d63: $21 $9c $7b
    dec de                                        ; $5d66: $1b
    ld a, e                                       ; $5d67: $7b
    rst $10                                       ; $5d68: $d7
    ld e, e                                       ; $5d69: $5b
    dec e                                         ; $5d6a: $1d
    xor $b0                                       ; $5d6b: $ee $b0
    and b                                         ; $5d6d: $a0
    ld a, [$05f6]                                 ; $5d6e: $fa $f6 $05
    cp h                                          ; $5d71: $bc
    ld h, l                                       ; $5d72: $65
    dec l                                         ; $5d73: $2d
    and h                                         ; $5d74: $a4
    ld [hl], a                                    ; $5d75: $77
    add b                                         ; $5d76: $80
    and l                                         ; $5d77: $a5
    ret                                           ; $5d78: $c9


    ld a, $dd                                     ; $5d79: $3e $dd
    ld e, e                                       ; $5d7b: $5b
    or l                                          ; $5d7c: $b5
    cp d                                          ; $5d7d: $ba
    daa                                           ; $5d7e: $27
    ld a, h                                       ; $5d7f: $7c
    push bc                                       ; $5d80: $c5
    ld e, d                                       ; $5d81: $5a

jr_039_5d82:
    inc l                                         ; $5d82: $2c
    ld [hl], l                                    ; $5d83: $75
    xor h                                         ; $5d84: $ac
    sbc e                                         ; $5d85: $9b
    ret                                           ; $5d86: $c9


    dec [hl]                                      ; $5d87: $35
    adc [hl]                                      ; $5d88: $8e
    sbc e                                         ; $5d89: $9b
    inc e                                         ; $5d8a: $1c
    sub h                                         ; $5d8b: $94
    ld [hl], b                                    ; $5d8c: $70
    pop de                                        ; $5d8d: $d1
    or c                                          ; $5d8e: $b1
    ld l, c                                       ; $5d8f: $69
    ld c, $49                                     ; $5d90: $0e $49
    and $37                                       ; $5d92: $e6 $37
    ld d, a                                       ; $5d94: $57
    rlca                                          ; $5d95: $07
    ld a, a                                       ; $5d96: $7f
    dec a                                         ; $5d97: $3d
    ld [bc], a                                    ; $5d98: $02
    sbc d                                         ; $5d99: $9a
    ld sp, hl                                     ; $5d9a: $f9
    ld a, $f6                                     ; $5d9b: $3e $f6
    ld e, e                                       ; $5d9d: $5b
    ld a, [de]                                    ; $5d9e: $1a
    db $fc                                        ; $5d9f: $fc
    ld a, c                                       ; $5da0: $79
    dec sp                                        ; $5da1: $3b
    inc l                                         ; $5da2: $2c
    xor b                                         ; $5da3: $a8
    cp [hl]                                       ; $5da4: $be
    ld a, l                                       ; $5da5: $7d
    ld bc, $596f                                  ; $5da6: $01 $6f $59
    dec bc                                        ; $5da9: $0b
    jp hl                                         ; $5daa: $e9


    dec e                                         ; $5dab: $1d
    ld h, b                                       ; $5dac: $60
    ld l, c                                       ; $5dad: $69
    or d                                          ; $5dae: $b2
    ld c, a                                       ; $5daf: $4f
    rst $30                                       ; $5db0: $f7
    ld d, [hl]                                    ; $5db1: $56
    xor l                                         ; $5db2: $ad
    xor $09                                       ; $5db3: $ee $09
    ld e, a                                       ; $5db5: $5f
    or c                                          ; $5db6: $b1
    ld d, $4b                                     ; $5db7: $16 $4b
    dec e                                         ; $5db9: $1d
    sbc e                                         ; $5dba: $9b
    ld [hl], $29                                  ; $5dbb: $36 $29
    call c, $f7cc                                 ; $5dbd: $dc $cc $f7
    or c                                          ; $5dc0: $b1
    rst $18                                       ; $5dc1: $df
    jp nc, $cfe0                                  ; $5dc2: $d2 $e0 $cf

    db $db                                        ; $5dc5: $db
    ld de, $c05f                                  ; $5dc6: $11 $5f $c0
    ld e, e                                       ; $5dc9: $5b
    adc h                                         ; $5dca: $8c
    push de                                       ; $5dcb: $d5
    ld b, l                                       ; $5dcc: $45
    cp $d6                                        ; $5dcd: $fe $d6
    sub h                                         ; $5dcf: $94
    or $2b                                        ; $5dd0: $f6 $2b
    ld [hl+], a                                   ; $5dd2: $22
    inc sp                                        ; $5dd3: $33
    dec hl                                        ; $5dd4: $2b
    ld e, a                                       ; $5dd5: $5f
    pop af                                        ; $5dd6: $f1
    rlca                                          ; $5dd7: $07
    rst $20                                       ; $5dd8: $e7
    sbc $bd                                       ; $5dd9: $de $bd
    ld e, e                                       ; $5ddb: $5b
    xor l                                         ; $5ddc: $ad
    adc d                                         ; $5ddd: $8a
    pop hl                                        ; $5dde: $e1
    ld e, d                                       ; $5ddf: $5a
    adc b                                         ; $5de0: $88
    adc e                                         ; $5de1: $8b
    ld h, [hl]                                    ; $5de2: $66
    ld [c], a                                     ; $5de3: $e2
    ldh [$af], a                                  ; $5de4: $e0 $af
    or c                                          ; $5de6: $b1
    ld [hl], l                                    ; $5de7: $75
    xor h                                         ; $5de8: $ac
    and l                                         ; $5de9: $a5
    inc hl                                        ; $5dea: $23
    cp [hl]                                       ; $5deb: $be
    add b                                         ; $5dec: $80
    rst $30                                       ; $5ded: $f7
    halt                                          ; $5dee: $76
    dec e                                         ; $5def: $1d
    ld l, h                                       ; $5df0: $6c
    call nc, Call_039_68b1                        ; $5df1: $d4 $b1 $68
    jr nz, jr_039_5e39                            ; $5df4: $20 $43

    sbc d                                         ; $5df6: $9a
    inc bc                                        ; $5df7: $03
    add hl, bc                                    ; $5df8: $09
    db $fc                                        ; $5df9: $fc
    push af                                       ; $5dfa: $f5
    ld a, l                                       ; $5dfb: $7d
    sub $cd                                       ; $5dfc: $d6 $cd
    db $fc                                        ; $5dfe: $fc
    add $16                                       ; $5dff: $c6 $16
    jr c, jr_039_5e5a                             ; $5e01: $38 $57

    ld a, a                                       ; $5e03: $7f
    call nz, Call_039_70ea                        ; $5e04: $c4 $ea $70
    ld b, a                                       ; $5e07: $47
    ei                                            ; $5e08: $fb
    inc hl                                        ; $5e09: $23
    push af                                       ; $5e0a: $f5
    sbc b                                         ; $5e0b: $98
    adc c                                         ; $5e0c: $89
    ld c, a                                       ; $5e0d: $4f
    cp b                                          ; $5e0e: $b8
    rlca                                          ; $5e0f: $07
    and l                                         ; $5e10: $a5
    or c                                          ; $5e11: $b1
    sbc c                                         ; $5e12: $99
    dec sp                                        ; $5e13: $3b
    inc l                                         ; $5e14: $2c
    xor b                                         ; $5e15: $a8
    cp [hl]                                       ; $5e16: $be
    ld a, l                                       ; $5e17: $7d
    ld bc, $596f                                  ; $5e18: $01 $6f $59
    dec bc                                        ; $5e1b: $0b
    jp hl                                         ; $5e1c: $e9


    dec e                                         ; $5e1d: $1d
    ld h, b                                       ; $5e1e: $60
    ld l, c                                       ; $5e1f: $69
    or d                                          ; $5e20: $b2
    ld c, a                                       ; $5e21: $4f
    rst $30                                       ; $5e22: $f7
    ld d, [hl]                                    ; $5e23: $56
    xor l                                         ; $5e24: $ad
    xor $09                                       ; $5e25: $ee $09
    ld e, a                                       ; $5e27: $5f
    or c                                          ; $5e28: $b1
    ld d, $4b                                     ; $5e29: $16 $4b
    ld h, e                                       ; $5e2b: $63
    dec sp                                        ; $5e2c: $3b
    ld [$0cdf], a                                 ; $5e2d: $ea $df $0c
    sbc $0e                                       ; $5e30: $de $0e
    ld e, [hl]                                    ; $5e32: $5e
    ld e, e                                       ; $5e33: $5b
    ld h, $7f                                     ; $5e34: $26 $7f
    rst $10                                       ; $5e36: $d7
    db $ed                                        ; $5e37: $ed
    and d                                         ; $5e38: $a2

jr_039_5e39:
    ld e, a                                       ; $5e39: $5f
    ld a, e                                       ; $5e3a: $7b
    add hl, bc                                    ; $5e3b: $09
    add hl, de                                    ; $5e3c: $19
    dec de                                        ; $5e3d: $1b
    ld sp, hl                                     ; $5e3e: $f9
    di                                            ; $5e3f: $f3
    halt                                          ; $5e40: $76
    ret nc                                        ; $5e41: $d0

    ld [hl], d                                    ; $5e42: $72
    ei                                            ; $5e43: $fb
    adc d                                         ; $5e44: $8a
    ldh a, [$a6]                                  ; $5e45: $f0 $a6
    add hl, sp                                    ; $5e47: $39
    or e                                          ; $5e48: $b3
    sub b                                         ; $5e49: $90
    and h                                         ; $5e4a: $a4
    xor h                                         ; $5e4b: $ac
    pop af                                        ; $5e4c: $f1
    ld e, d                                       ; $5e4d: $5a
    ld l, l                                       ; $5e4e: $6d
    pop bc                                        ; $5e4f: $c1
    ld [hl+], a                                   ; $5e50: $22
    ld a, h                                       ; $5e51: $7c
    cp c                                          ; $5e52: $b9
    cp c                                          ; $5e53: $b9
    inc hl                                        ; $5e54: $23
    cp [hl]                                       ; $5e55: $be
    add b                                         ; $5e56: $80
    rst $30                                       ; $5e57: $f7
    halt                                          ; $5e58: $76
    dec e                                         ; $5e59: $1d

jr_039_5e5a:
    ld l, h                                       ; $5e5a: $6c
    db $ec                                        ; $5e5b: $ec
    add a                                         ; $5e5c: $87
    cp b                                          ; $5e5d: $b8
    sub $5b                                       ; $5e5e: $d6 $5b
    sub $42                                       ; $5e60: $d6 $42
    ld a, d                                       ; $5e62: $7a
    rlca                                          ; $5e63: $07
    ld e, b                                       ; $5e64: $58
    sbc d                                         ; $5e65: $9a
    db $ec                                        ; $5e66: $ec
    db $d3                                        ; $5e67: $d3
    cp l                                          ; $5e68: $bd
    ld d, l                                       ; $5e69: $55
    xor e                                         ; $5e6a: $ab
    ld a, e                                       ; $5e6b: $7b
    jp nz, $ac57                                  ; $5e6c: $c2 $57 $ac

    push bc                                       ; $5e6f: $c5
    ld d, d                                       ; $5e70: $52
    sub $3b                                       ; $5e71: $d6 $3b
    ld [hl], $44                                  ; $5e73: $36 $44
    add [hl]                                      ; $5e75: $86
    ld d, b                                       ; $5e76: $50
    xor l                                         ; $5e77: $ad
    adc d                                         ; $5e78: $8a
    and [hl]                                      ; $5e79: $a6
    ldh [$75], a                                  ; $5e7a: $e0 $75
    push de                                       ; $5e7c: $d5
    ld [$cdaa], a                                 ; $5e7d: $ea $aa $cd
    ld a, h                                       ; $5e80: $7c
    rra                                           ; $5e81: $1f
    ei                                            ; $5e82: $fb
    dec l                                         ; $5e83: $2d
    dec c                                         ; $5e84: $0d
    cp $dc                                        ; $5e85: $fe $dc
    ld de, $c05f                                  ; $5e87: $11 $5f $c0
    db $db                                        ; $5e8a: $db
    inc [hl]                                      ; $5e8b: $34
    ld c, l                                       ; $5e8c: $4d
    ld a, e                                       ; $5e8d: $7b
    ld l, c                                       ; $5e8e: $69
    ld c, e                                       ; $5e8f: $4b
    adc a                                         ; $5e90: $8f
    cp a                                          ; $5e91: $bf
    db $fc                                        ; $5e92: $fc
    dec e                                         ; $5e93: $1d
    sbc a                                         ; $5e94: $9f
    or $2b                                        ; $5e95: $f6 $2b
    cp $ca                                        ; $5e97: $fe $ca
    ld a, [hl-]                                   ; $5e99: $3a
    or h                                          ; $5e9a: $b4
    ld sp, $01cd                                  ; $5e9b: $31 $cd $01
    jp Jump_039_59b1                              ; $5e9e: $c3 $b1 $59


    or b                                          ; $5ea1: $b0
    ret nc                                        ; $5ea2: $d0

    ret                                           ; $5ea3: $c9


    ld h, $9d                                     ; $5ea4: $26 $9d
    xor h                                         ; $5ea6: $ac
    jp $ea82                                      ; $5ea7: $c3 $82 $ea


    db $db                                        ; $5eaa: $db
    rla                                           ; $5eab: $17
    ldh a, [$96]                                  ; $5eac: $f0 $96
    or l                                          ; $5eae: $b5
    sub b                                         ; $5eaf: $90
    sbc $01                                       ; $5eb0: $de $01
    sub [hl]                                      ; $5eb2: $96
    ld h, $fb                                     ; $5eb3: $26 $fb
    ld [hl], h                                    ; $5eb5: $74
    ld l, a                                       ; $5eb6: $6f
    push de                                       ; $5eb7: $d5
    ld [$f09e], a                                 ; $5eb8: $ea $9e $f0
    dec d                                         ; $5ebb: $15
    ld l, e                                       ; $5ebc: $6b
    or c                                          ; $5ebd: $b1
    sbc h                                         ; $5ebe: $9c
    xor e                                         ; $5ebf: $ab
    jp $8afd                                      ; $5ec0: $c3 $fd $8a


    add sp, $64                                   ; $5ec3: $e8 $64
    sub e                                         ; $5ec5: $93
    sub l                                         ; $5ec6: $95
    ld d, c                                       ; $5ec7: $51
    call nc, $80c0                                ; $5ec8: $d4 $c0 $80
    or a                                          ; $5ecb: $b7
    add e                                         ; $5ecc: $83
    ld d, $70                                     ; $5ecd: $16 $70
    ld d, b                                       ; $5ecf: $50
    jr z, @-$38                                   ; $5ed0: $28 $c6

    ld [$0734], a                                 ; $5ed2: $ea $34 $07
    jp Jump_039_59b1                              ; $5ed5: $c3 $b1 $59


    or b                                          ; $5ed8: $b0
    ret nc                                        ; $5ed9: $d0

    xor c                                         ; $5eda: $a9
    ld h, $ed                                     ; $5edb: $26 $ed
    adc b                                         ; $5edd: $88
    cpl                                           ; $5ede: $2f
    ldh [$bd], a                                  ; $5edf: $e0 $bd
    ld e, l                                       ; $5ee1: $5d
    rlca                                          ; $5ee2: $07
    dec de                                        ; $5ee3: $1b
    ei                                            ; $5ee4: $fb
    ld hl, $f5ae                                  ; $5ee5: $21 $ae $f5
    sub [hl]                                      ; $5ee8: $96
    or l                                          ; $5ee9: $b5
    sub b                                         ; $5eea: $90
    sbc $01                                       ; $5eeb: $de $01
    sub [hl]                                      ; $5eed: $96
    ld h, $fb                                     ; $5eee: $26 $fb
    ld [hl], h                                    ; $5ef0: $74
    ld l, a                                       ; $5ef1: $6f
    push de                                       ; $5ef2: $d5
    ld [$f09e], a                                 ; $5ef3: $ea $9e $f0
    dec d                                         ; $5ef6: $15
    ld l, e                                       ; $5ef7: $6b
    or c                                          ; $5ef8: $b1
    and h                                         ; $5ef9: $a4
    dec e                                         ; $5efa: $1d
    ld sp, hl                                     ; $5efb: $f9
    sub a                                         ; $5efc: $97
    ccf                                           ; $5efd: $3f
    rla                                           ; $5efe: $17
    ld h, e                                       ; $5eff: $63
    ld [hl], l                                    ; $5f00: $75
    ld e, a                                       ; $5f01: $5f
    ld d, b                                       ; $5f02: $50
    ld b, d                                       ; $5f03: $42
    inc e                                         ; $5f04: $1c
    db $fc                                        ; $5f05: $fc
    sbc l                                         ; $5f06: $9d
    ld a, e                                       ; $5f07: $7b
    db $fc                                        ; $5f08: $fc
    push hl                                       ; $5f09: $e5
    rst $08                                       ; $5f0a: $cf
    push bc                                       ; $5f0b: $c5
    ret c                                         ; $5f0c: $d8

    and l                                         ; $5f0d: $a5
    rla                                           ; $5f0e: $17
    ld d, [hl]                                    ; $5f0f: $56
    xor l                                         ; $5f10: $ad

Call_039_5f11:
    xor [hl]                                      ; $5f11: $ae
    ld h, e                                       ; $5f12: $63
    inc hl                                        ; $5f13: $23
    ld [hl], e                                    ; $5f14: $73
    ld l, a                                       ; $5f15: $6f
    ld h, e                                       ; $5f16: $63
    rst $28                                       ; $5f17: $ef
    ld a, d                                       ; $5f18: $7a
    adc e                                         ; $5f19: $8b
    ld d, a                                       ; $5f1a: $57
    or $a5                                        ; $5f1b: $f6 $a5
    ret z                                         ; $5f1d: $c8

    ld e, a                                       ; $5f1e: $5f
    and d                                         ; $5f1f: $a2
    and [hl]                                      ; $5f20: $a6
    pop bc                                        ; $5f21: $c1
    ld e, a                                       ; $5f22: $5f
    pop de                                        ; $5f23: $d1
    or c                                          ; $5f24: $b1
    ld l, c                                       ; $5f25: $69
    ld c, $c3                                     ; $5f26: $0e $c3
    ld h, e                                       ; $5f28: $63
    inc hl                                        ; $5f29: $23
    ld [hl], e                                    ; $5f2a: $73
    add a                                         ; $5f2b: $87
    dec b                                         ; $5f2c: $05
    push de                                       ; $5f2d: $d5
    or a                                          ; $5f2e: $b7
    cpl                                           ; $5f2f: $2f
    ldh [$2d], a                                  ; $5f30: $e0 $2d
    ld l, e                                       ; $5f32: $6b
    ld hl, $03bd                                  ; $5f33: $21 $bd $03
    inc l                                         ; $5f36: $2c
    ld c, l                                       ; $5f37: $4d
    or $e9                                        ; $5f38: $f6 $e9
    sbc $aa                                       ; $5f3a: $de $aa
    push de                                       ; $5f3c: $d5
    dec a                                         ; $5f3d: $3d
    pop hl                                        ; $5f3e: $e1
    dec hl                                        ; $5f3f: $2b
    sub $62                                       ; $5f40: $d6 $62
    add hl, hl                                    ; $5f42: $29
    add $ea                                       ; $5f43: $c6 $ea
    sub d                                         ; $5f45: $92
    ld e, b                                       ; $5f46: $58
    res 4, a                                      ; $5f47: $cb $a7
    or h                                          ; $5f49: $b4
    or c                                          ; $5f4a: $b1
    ld c, l                                       ; $5f4b: $4d
    cp [hl]                                       ; $5f4c: $be
    or d                                          ; $5f4d: $b2
    ei                                            ; $5f4e: $fb
    rla                                           ; $5f4f: $17
    ret nz                                        ; $5f50: $c0

    ld c, $5a                                     ; $5f51: $0e $5a
    db $10                                        ; $5f53: $10
    call z, $906f                                 ; $5f54: $cc $6f $90
    halt                                          ; $5f57: $76
    or h                                          ; $5f58: $b4
    ld [hl], a                                    ; $5f59: $77

jr_039_5f5a:
    xor e                                         ; $5f5a: $ab
    ld d, l                                       ; $5f5b: $55
    inc sp                                        ; $5f5c: $33
    dec b                                         ; $5f5d: $05
    db $fd                                        ; $5f5e: $fd
    adc d                                         ; $5f5f: $8a
    jr jr_039_5f5a                                ; $5f60: $18 $f8

    adc b                                         ; $5f62: $88
    ld [hl], b                                    ; $5f63: $70
    xor $ed                                       ; $5f64: $ee $ed
    rst $28                                       ; $5f66: $ef
    ld [hl+], a                                   ; $5f67: $22
    ld d, h                                       ; $5f68: $54
    xor e                                         ; $5f69: $ab
    ld h, d                                       ; $5f6a: $62
    cp b                                          ; $5f6b: $b8
    ld b, h                                       ; $5f6c: $44
    xor h                                         ; $5f6d: $ac
    or $a6                                        ; $5f6e: $f6 $a6
    add hl, sp                                    ; $5f70: $39
    and e                                         ; $5f71: $a3
    cp l                                          ; $5f72: $bd
    ld e, e                                       ; $5f73: $5b
    xor l                                         ; $5f74: $ad
    ld a, d                                       ; $5f75: $7a
    inc b                                         ; $5f76: $04
    ld d, h                                       ; $5f77: $54
    ld a, e                                       ; $5f78: $7b
    dec sp                                        ; $5f79: $3b
    inc l                                         ; $5f7a: $2c
    xor b                                         ; $5f7b: $a8
    cp [hl]                                       ; $5f7c: $be
    ld a, l                                       ; $5f7d: $7d
    ld bc, $596f                                  ; $5f7e: $01 $6f $59
    dec bc                                        ; $5f81: $0b
    jp hl                                         ; $5f82: $e9


    dec e                                         ; $5f83: $1d
    ld h, b                                       ; $5f84: $60
    ld l, c                                       ; $5f85: $69
    or d                                          ; $5f86: $b2
    ld c, a                                       ; $5f87: $4f
    rst $30                                       ; $5f88: $f7
    ld d, [hl]                                    ; $5f89: $56
    xor l                                         ; $5f8a: $ad
    xor $09                                       ; $5f8b: $ee $09
    ld e, a                                       ; $5f8d: $5f
    or c                                          ; $5f8e: $b1
    ld d, $4b                                     ; $5f8f: $16 $4b
    rst $18                                       ; $5f91: $df
    ld e, a                                       ; $5f92: $5f
    ld l, l                                       ; $5f93: $6d
    adc d                                         ; $5f94: $8a
    ld [hl], b                                    ; $5f95: $70
    xor $ed                                       ; $5f96: $ee $ed
    rst $28                                       ; $5f98: $ef
    ld [hl+], a                                   ; $5f99: $22
    ld d, h                                       ; $5f9a: $54
    xor e                                         ; $5f9b: $ab
    ld e, $7e                                     ; $5f9c: $1e $7e
    jp nc, $d711                                  ; $5f9e: $d2 $11 $d7

    pop bc                                        ; $5fa1: $c1
    add $7e                                       ; $5fa2: $c6 $7e

Jump_039_5fa4:
    adc b                                         ; $5fa4: $88
    ld l, e                                       ; $5fa5: $6b
    cp l                                          ; $5fa6: $bd
    ld [hl], l                                    ; $5fa7: $75
    inc l                                         ; $5fa8: $2c
    ld a, [de]                                    ; $5fa9: $1a
    ret z                                         ; $5faa: $c8

    sbc $34                                       ; $5fab: $de $34
    rlca                                          ; $5fad: $07
    jp $81b1                                      ; $5fae: $c3 $b1 $81


    ret nc                                        ; $5fb1: $d0

    db $ec                                        ; $5fb2: $ec
    rlc [hl]                                      ; $5fb3: $cb $06
    ld a, a                                       ; $5fb5: $7f
    ld d, b                                       ; $5fb6: $50
    cp h                                          ; $5fb7: $bc
    adc d                                         ; $5fb8: $8a
    db $fc                                        ; $5fb9: $fc
    ld d, c                                       ; $5fba: $51
    di                                            ; $5fbb: $f3

Call_039_5fbc:
    rlca                                          ; $5fbc: $07
    rst $20                                       ; $5fbd: $e7
    ld a, [hl-]                                   ; $5fbe: $3a
    sub $1d                                       ; $5fbf: $d6 $1d
    ld b, [hl]                                    ; $5fc1: $46
    ld b, d                                       ; $5fc2: $42
    ld [hl], b                                    ; $5fc3: $70
    ret                                           ; $5fc4: $c9


    xor d                                         ; $5fc5: $aa
    add sp, -$28                                  ; $5fc6: $e8 $d8

Call_039_5fc8:
    or h                                          ; $5fc8: $b4
    add hl, bc                                    ; $5fc9: $09
    db $fc                                        ; $5fca: $fc
    push af                                       ; $5fcb: $f5
    ld a, l                                       ; $5fcc: $7d
    sub $fd                                       ; $5fcd: $d6 $fd
    inc d                                         ; $5fcf: $14
    dec sp                                        ; $5fd0: $3b
    ld c, h                                       ; $5fd1: $4c
    jp nz, Jump_039_6b04                          ; $5fd2: $c2 $04 $6b

    db $e4                                        ; $5fd5: $e4
    rst $28                                       ; $5fd6: $ef
    ld l, [hl]                                    ; $5fd7: $6e
    or c                                          ; $5fd8: $b1
    db $f4                                        ; $5fd9: $f4
    ld l, a                                       ; $5fda: $6f
    ld h, [hl]                                    ; $5fdb: $66
    ld [c], a                                     ; $5fdc: $e2
    ld l, a                                       ; $5fdd: $6f
    and $4d                                       ; $5fde: $e6 $4d
    ld [hl], e                                    ; $5fe0: $73
    and e                                         ; $5fe1: $a3
    ld l, $01                                     ; $5fe2: $2e $01
    ld c, c                                       ; $5fe4: $49
    inc b                                         ; $5fe5: $04
    inc l                                         ; $5fe6: $2c
    add $ea                                       ; $5fe7: $c6 $ea
    xor d                                         ; $5fe9: $aa
    ld a, l                                       ; $5fea: $7d
    adc [hl]                                      ; $5feb: $8e
    add e                                         ; $5fec: $83
    ld b, $7f                                     ; $5fed: $06 $7f
    ld l, c                                       ; $5fef: $69
    inc de                                        ; $5ff0: $13
    sbc [hl]                                      ; $5ff1: $9e
    cp b                                          ; $5ff2: $b8
    ld b, e                                       ; $5ff3: $43
    ld d, l                                       ; $5ff4: $55

jr_039_5ff5:
    and $ed                                       ; $5ff5: $e6 $ed
    and b                                         ; $5ff7: $a0
    add l                                         ; $5ff8: $85
    cp b                                          ; $5ff9: $b8
    ld l, b                                       ; $5ffa: $68
    and $ad                                       ; $5ffb: $e6 $ad
    ld c, $fe                                     ; $5ffd: $0e $fe
    xor d                                         ; $5fff: $aa
    sub l                                         ; $6000: $95
    ldh a, [$57]                                  ; $6001: $f0 $57
    db $ed                                        ; $6003: $ed
    ld l, l                                       ; $6004: $6d

Call_039_6005:
    or $97                                        ; $6005: $f6 $97
    db $ec                                        ; $6007: $ec
    db $ed                                        ; $6008: $ed
    ld e, h                                       ; $6009: $5c
    ld e, a                                       ; $600a: $5f
    dec e                                         ; $600b: $1d
    ld l, c                                       ; $600c: $69
    ld c, $43                                     ; $600d: $0e $43
    ld sp, hl                                     ; $600f: $f9
    inc bc                                        ; $6010: $03
    ld [hl], a                                    ; $6011: $77
    add e                                         ; $6012: $83
    ccf                                           ; $6013: $3f
    add sp, $57                                   ; $6014: $e8 $57
    ld b, h                                       ; $6016: $44
    add hl, de                                    ; $6017: $19
    push hl                                       ; $6018: $e5
    ld l, a                                       ; $6019: $6f
    nop                                           ; $601a: $00
    ld c, e                                       ; $601b: $4b
    ld b, d                                       ; $601c: $42
    ldh a, [$a6]                                  ; $601d: $f0 $a6
    ld h, l                                       ; $601f: $65
    add [hl]                                      ; $6020: $86
    adc e                                         ; $6021: $8b
    or c                                          ; $6022: $b1
    cp d                                          ; $6023: $ba
    db $e4                                        ; $6024: $e4
    ldh a, [rSTAT]                                ; $6025: $f0 $41
    add e                                         ; $6027: $83
    cp a                                          ; $6028: $bf
    or d                                          ; $6029: $b2
    ld b, [hl]                                    ; $602a: $46
    cp $24                                        ; $602b: $fe $24
    ld [hl], c                                    ; $602d: $71
    ld l, a                                       ; $602e: $6f
    sub b                                         ; $602f: $90
    and $09                                       ; $6030: $e6 $09
    db $fc                                        ; $6032: $fc
    push af                                       ; $6033: $f5
    cp $a5                                        ; $6034: $fe $a5
    rst $00                                       ; $6036: $c7

jr_039_6037:
    and a                                         ; $6037: $a7
    ld [hl], l                                    ; $6038: $75
    xor h                                         ; $6039: $ac
    dec sp                                        ; $603a: $3b
    ld a, b                                       ; $603b: $78
    ld d, c                                       ; $603c: $51
    adc d                                         ; $603d: $8a
    sub b                                         ; $603e: $90
    cp b                                          ; $603f: $b8
    ld a, [hl-]                                   ; $6040: $3a
    ld [hl-], a                                   ; $6041: $32
    sub a                                         ; $6042: $97
    add hl, bc                                    ; $6043: $09
    rra                                           ; $6044: $1f
    sub h                                         ; $6045: $94
    rst $08                                       ; $6046: $cf
    db $fd                                        ; $6047: $fd
    xor h                                         ; $6048: $ac
    and l                                         ; $6049: $a5
    and a                                         ; $604a: $a7
    ld a, [de]                                    ; $604b: $1a
    ret z                                         ; $604c: $c8

    ld d, b                                       ; $604d: $50
    ld [hl], $b6                                  ; $604e: $36 $b6
    pop bc                                        ; $6050: $c1
    ld e, a                                       ; $6051: $5f
    ld d, a                                       ; $6052: $57
    ld c, c                                       ; $6053: $49
    rst $30                                       ; $6054: $f7
    ld [c], a                                     ; $6055: $e2
    xor a                                         ; $6056: $af
    adc [hl]                                      ; $6057: $8e
    ld [hl], l                                    ; $6058: $75
    add a                                         ; $6059: $87
    sub c                                         ; $605a: $91
    db $10                                        ; $605b: $10
    sbc h                                         ; $605c: $9c
    and $49                                       ; $605d: $e6 $49
    ld h, c                                       ; $605f: $61
    ld [hl], h                                    ; $6060: $74
    ld b, a                                       ; $6061: $47
    ld e, l                                       ; $6062: $5d
    ld [bc], a                                    ; $6063: $02
    sub d                                         ; $6064: $92
    ld [$8c58], sp                                ; $6065: $08 $58 $8c
    push de                                       ; $6068: $d5
    ld [hl], l                                    ; $6069: $75
    ld l, h                                       ; $606a: $6c
    reti                                          ; $606b: $d9


    jr jr_039_5ff5                                ; $606c: $18 $87

    ccf                                           ; $606e: $3f
    ld l, a                                       ; $606f: $6f
    rst $00                                       ; $6070: $c7
    and [hl]                                      ; $6071: $a6
    sub c                                         ; $6072: $91
    sbc l                                         ; $6073: $9d
    ld a, e                                       ; $6074: $7b
    rst $30                                       ; $6075: $f7
    ld l, [hl]                                    ; $6076: $6e
    or l                                          ; $6077: $b5
    ld [$fc11], a                                 ; $6078: $ea $11 $fc
    sub l                                         ; $607b: $95
    sub b                                         ; $607c: $90
    sbc a                                         ; $607d: $9f
    ld hl, $39a4                                  ; $607e: $21 $a4 $39
    add hl, bc                                    ; $6081: $09
    db $fc                                        ; $6082: $fc
    push af                                       ; $6083: $f5
    ld a, l                                       ; $6084: $7d
    sub $3d                                       ; $6085: $d6 $3d
    add d                                         ; $6087: $82
    cp a                                          ; $6088: $bf
    ld [hl+], a                                   ; $6089: $22
    ld a, a                                       ; $608a: $7f
    rst $10                                       ; $608b: $d7
    ld [hl], $8e                                  ; $608c: $36 $8e
    jp $ccd2                                      ; $608e: $c3 $d2 $cc


    add h                                         ; $6091: $84
    db $fc                                        ; $6092: $fc
    inc c                                         ; $6093: $0c
    adc $bd                                       ; $6094: $ce $bd
    add a                                         ; $6096: $87
    ld l, e                                       ; $6097: $6b
    ld l, h                                       ; $6098: $6c
    jr nz, jr_039_6037                            ; $6099: $20 $9c

    set 4, h                                      ; $609b: $cb $e4
    ld c, a                                       ; $609d: $4f
    ld d, c                                       ; $609e: $51
    or b                                          ; $609f: $b0
    ld l, h                                       ; $60a0: $6c
    ret                                           ; $60a1: $c9


    xor d                                         ; $60a2: $aa
    rst $28                                       ; $60a3: $ef
    or e                                          ; $60a4: $b3
    sbc $34                                       ; $60a5: $de $34
    rlca                                          ; $60a7: $07
    and e                                         ; $60a8: $a3
    ld l, $1a                                     ; $60a9: $2e $1a
    ld d, $28                                     ; $60ab: $16 $28
    ld e, c                                       ; $60ad: $59
    push af                                       ; $60ae: $f5
    ld l, [hl]                                    ; $60af: $6e
    pop de                                        ; $60b0: $d1
    sbc $73                                       ; $60b1: $de $73
    inc bc                                        ; $60b3: $03
    and c                                         ; $60b4: $a1
    jp c, $c752                                   ; $60b5: $da $52 $c7

    sub d                                         ; $60b8: $92
    inc hl                                        ; $60b9: $23
    ld [hl], e                                    ; $60ba: $73
    sbc c                                         ; $60bb: $99
    inc bc                                        ; $60bc: $03
    ld a, a                                       ; $60bd: $7f
    sbc h                                         ; $60be: $9c
    ld l, d                                       ; $60bf: $6a
    ld c, e                                       ; $60c0: $4b
    adc a                                         ; $60c1: $8f
    sub b                                         ; $60c2: $90
    ld c, $5a                                     ; $60c3: $0e $5a
    or d                                          ; $60c5: $b2
    or c                                          ; $60c6: $b1
    ld [hl], a                                    ; $60c7: $77
    and c                                         ; $60c8: $a1
    add c                                         ; $60c9: $81
    sub b                                         ; $60ca: $90
    and $23                                       ; $60cb: $e6 $23
    rst $38                                       ; $60cd: $ff
    ld a, [c]                                     ; $60ce: $f2
    ld [hl], a                                    ; $60cf: $77
    ld a, h                                       ; $60d0: $7c
    jp c, Jump_039_693b                           ; $60d1: $da $3b $69

    sub c                                         ; $60d4: $91
    ccf                                           ; $60d5: $3f
    ld [hl], b                                    ; $60d6: $70
    add e                                         ; $60d7: $83
    cp a                                          ; $60d8: $bf
    ld [hl], e                                    ; $60d9: $73
    add e                                         ; $60da: $83
    cp a                                          ; $60db: $bf
    cp [hl]                                       ; $60dc: $be
    ld b, h                                       ; $60dd: $44
    nop                                           ; $60de: $00
    rst $10                                       ; $60df: $d7
    or c                                          ; $60e0: $b1
    xor $3c                                       ; $60e1: $ee $3c
    ld c, a                                       ; $60e3: $4f
    ld a, [de]                                    ; $60e4: $1a
    ld b, a                                       ; $60e5: $47
    ld b, a                                       ; $60e6: $47
    ld e, h                                       ; $60e7: $5c
    inc bc                                        ; $60e8: $03
    ld b, h                                       ; $60e9: $44
    dec e                                         ; $60ea: $1d
    sbc e                                         ; $60eb: $9b
    sbc c                                         ; $60ec: $99
    db $fd                                        ; $60ed: $fd
    ld a, [bc]                                    ; $60ee: $0a
    sbc d                                         ; $60ef: $9a
    and [hl]                                      ; $60f0: $a6
    ld l, c                                       ; $60f1: $69
    push af                                       ; $60f2: $f5
    rst $18                                       ; $60f3: $df
    db $ed                                        ; $60f4: $ed

jr_039_60f5:
    dec a                                         ; $60f5: $3d
    ld d, c                                       ; $60f6: $51
    call c, $afe0                                 ; $60f7: $dc $e0 $af
    ld [hl], a                                    ; $60fa: $77
    ld l, a                                       ; $60fb: $6f
    ld h, h                                       ; $60fc: $64
    ld [$ec5e], sp                                ; $60fd: $08 $5e $ec
    sub d                                         ; $6100: $92
    add b                                         ; $6101: $80
    ld c, h                                       ; $6102: $4c
    add e                                         ; $6103: $83
    cp a                                          ; $6104: $bf
    inc [hl]                                      ; $6105: $34
    rlca                                          ; $6106: $07
    jp $81b1                                      ; $6107: $c3 $b1 $81


    ret nc                                        ; $610a: $d0

    dec c                                         ; $610b: $0d
    cp $a0                                        ; $610c: $fe $a0
    ret z                                         ; $610e: $c8

    rra                                           ; $610f: $1f
    dec [hl]                                      ; $6110: $35
    ld a, a                                       ; $6111: $7f
    ld [hl], b                                    ; $6112: $70
    xor $57                                       ; $6113: $ee $57
    ld e, b                                       ; $6115: $58
    add $18                                       ; $6116: $c6 $18
    ret nz                                        ; $6118: $c0

    sub d                                         ; $6119: $92
    ld d, l                                       ; $611a: $55
    pop de                                        ; $611b: $d1
    or c                                          ; $611c: $b1
    ld l, c                                       ; $611d: $69
    ld c, $09                                     ; $611e: $0e $09
    db $fc                                        ; $6120: $fc
    sub l                                         ; $6121: $95
    adc l                                         ; $6122: $8d
    xor l                                         ; $6123: $ad
    ld h, e                                       ; $6124: $63
    ld e, l                                       ; $6125: $5d
    ld h, [hl]                                    ; $6126: $66
    and d                                         ; $6127: $a2
    and d                                         ; $6128: $a2
    xor [hl]                                      ; $6129: $ae
    or [hl]                                       ; $612a: $b6
    sub h                                         ; $612b: $94
    pop de                                        ; $612c: $d1
    add a                                         ; $612d: $87
    ld h, e                                       ; $612e: $63
    sub c                                         ; $612f: $91
    cp a                                          ; $6130: $bf
    ld c, a                                       ; $6131: $4f
    ld b, b                                       ; $6132: $40
    sbc d                                         ; $6133: $9a
    inc bc                                        ; $6134: $03
    add hl, bc                                    ; $6135: $09
    db $fc                                        ; $6136: $fc
    sub l                                         ; $6137: $95
    jr nz, @+$3f                                  ; $6138: $20 $3d

    ld [$c11e], a                                 ; $613a: $ea $1e $c1
    ld e, a                                       ; $613d: $5f
    dec e                                         ; $613e: $1d
    ld e, e                                       ; $613f: $5b
    ld [hl], $c6                                  ; $6140: $36 $c6
    pop hl                                        ; $6142: $e1
    rst $08                                       ; $6143: $cf
    db $db                                        ; $6144: $db
    call z, Call_000_3403                         ; $6145: $cc $03 $34
    ld de, $90c0                                  ; $6148: $11 $c0 $90
    and $09                                       ; $614b: $e6 $09
    db $fc                                        ; $614d: $fc
    push af                                       ; $614e: $f5
    xor [hl]                                      ; $614f: $ae
    ld b, h                                       ; $6150: $44
    cp e                                          ; $6151: $bb
    inc h                                         ; $6152: $24
    sub $52                                       ; $6153: $d6 $52
    rst $00                                       ; $6155: $c7
    cp d                                          ; $6156: $ba
    or e                                          ; $6157: $b3
    db $fd                                        ; $6158: $fd
    push de                                       ; $6159: $d5
    ret z                                         ; $615a: $c8

    rst $18                                       ; $615b: $df
    daa                                           ; $615c: $27
    and b                                         ; $615d: $a0
    sbc c                                         ; $615e: $99
    adc a                                         ; $615f: $8f
    ld c, a                                       ; $6160: $4f

jr_039_6161:
    and c                                         ; $6161: $a1
    ld l, d                                       ; $6162: $6a
    ld [hl], l                                    ; $6163: $75
    adc a                                         ; $6164: $8f
    cp a                                          ; $6165: $bf
    db $fc                                        ; $6166: $fc
    dec e                                         ; $6167: $1d
    sbc a                                         ; $6168: $9f
    halt                                          ; $6169: $76
    jr nz, jr_039_61e8                            ; $616a: $20 $7c

    ld b, e                                       ; $616c: $43
    jr z, jr_039_60f5                             ; $616d: $28 $86

    ld a, e                                       ; $616f: $7b
    inc b                                         ; $6170: $04
    ld a, a                                       ; $6171: $7f
    adc l                                         ; $6172: $8d
    and e                                         ; $6173: $a3
    ld [hl], e                                    ; $6174: $73
    sub c                                         ; $6175: $91
    ld hl, sp-$33                                 ; $6176: $f8 $cd
    sbc e                                         ; $6178: $9b
    and $09                                       ; $6179: $e6 $09
    db $fc                                        ; $617b: $fc
    push af                                       ; $617c: $f5
    cp $a5                                        ; $617d: $fe $a5
    adc [hl]                                      ; $617f: $8e
    call z, $340b                                 ; $6180: $cc $0b $34
    ld hl, sp-$15                                 ; $6183: $f8 $eb
    ld a, [hl+]                                   ; $6185: $2a
    xor c                                         ; $6186: $a9
    ld h, e                                       ; $6187: $63
    ld e, l                                       ; $6188: $5d
    and $2d                                       ; $6189: $e6 $2d
    ret z                                         ; $618b: $c8

    ld h, h                                       ; $618c: $64
    sbc a                                         ; $618d: $9f
    ei                                            ; $618e: $fb
    ld a, $eb                                     ; $618f: $3e $eb
    ld a, [hl]                                    ; $6191: $7e
    sub $d2                                       ; $6192: $d6 $d2
    rst $30                                       ; $6194: $f7
    dec b                                         ; $6195: $05
    ld a, [$47b7]                                 ; $6196: $fa $b7 $47
    ld c, b                                       ; $6199: $48
    inc sp                                        ; $619a: $33
    ld a, a                                       ; $619b: $7f
    ld h, c                                       ; $619c: $61
    dec e                                         ; $619d: $1d
    ld h, b                                       ; $619e: $60
    ld c, b                                       ; $619f: $48
    ld [hl], e                                    ; $61a0: $73
    or e                                          ; $61a1: $b3
    rlca                                          ; $61a2: $07
    ld a, a                                       ; $61a3: $7f
    ret nc                                        ; $61a4: $d0

    ld d, e                                       ; $61a5: $53
    xor l                                         ; $61a6: $ad
    adc l                                         ; $61a7: $8d

jr_039_61a8:
    dec e                                         ; $61a8: $1d
    ld [hl], l                                    ; $61a9: $75
    add hl, bc                                    ; $61aa: $09
    ld c, b                                       ; $61ab: $48
    ld [hl+], a                                   ; $61ac: $22
    inc d                                         ; $61ad: $14
    pop bc                                        ; $61ae: $c1
    rrca                                          ; $61af: $0f
    ld a, [de]                                    ; $61b0: $1a
    ld e, e                                       ; $61b1: $5b
    rst $00                                       ; $61b2: $c7
    ld e, d                                       ; $61b3: $5a
    sbc d                                         ; $61b4: $9a
    db $f4                                        ; $61b5: $f4
    sub l                                         ; $61b6: $95
    push hl                                       ; $61b7: $e5
    dec hl                                        ; $61b8: $2b
    ld b, h                                       ; $61b9: $44
    jr nc, jr_039_6161                            ; $61ba: $30 $a5

    ld l, d                                       ; $61bc: $6a
    or e                                          ; $61bd: $b3
    ld [hl], e                                    ; $61be: $73
    rst $28                                       ; $61bf: $ef
    adc [hl]                                      ; $61c0: $8e
    ld [hl], c                                    ; $61c1: $71
    and b                                         ; $61c2: $a0
    ld e, d                                       ; $61c3: $5a
    and l                                         ; $61c4: $a5
    add hl, sp                                    ; $61c5: $39
    add hl, bc                                    ; $61c6: $09
    db $fc                                        ; $61c7: $fc
    dec [hl]                                      ; $61c8: $35
    and e                                         ; $61c9: $a3
    ld e, a                                       ; $61ca: $5f
    or c                                          ; $61cb: $b1
    ld a, $57                                     ; $61cc: $3e $57
    ld e, e                                       ; $61ce: $5b
    ld a, [hl-]                                   ; $61cf: $3a
    rst $10                                       ; $61d0: $d7
    ld a, a                                       ; $61d1: $7f
    add a                                         ; $61d2: $87
    or a                                          ; $61d3: $b7
    add c                                         ; $61d4: $81
    ld d, b                                       ; $61d5: $50
    db $fd                                        ; $61d6: $fd
    or c                                          ; $61d7: $b1
    jp $e08c                                      ; $61d8: $c3 $8c $e0


    cp $ed                                        ; $61db: $fe $ed
    ld de, $e692                                  ; $61dd: $11 $92 $e6
    inc hl                                        ; $61e0: $23
    rst $38                                       ; $61e1: $ff
    ld a, [c]                                     ; $61e2: $f2
    ld [hl], a                                    ; $61e3: $77
    ld a, h                                       ; $61e4: $7c
    jp c, $cb41                                   ; $61e5: $da $41 $cb

jr_039_61e8:
    ld de, $6e88                                  ; $61e8: $11 $88 $6e
    ldh a, [$57]                                  ; $61eb: $f0 $57
    dec e                                         ; $61ed: $1d
    xor [hl]                                      ; $61ee: $ae
    ld e, d                                       ; $61ef: $5a
    sub $c8                                       ; $61f0: $d6 $c8
    rst $18                                       ; $61f2: $df
    db $dd                                        ; $61f3: $dd
    ld [bc], a                                    ; $61f4: $02
    sbc $ce                                       ; $61f5: $de $ce
    db $fd                                        ; $61f7: $fd
    inc sp                                        ; $61f8: $33
    rst $30                                       ; $61f9: $f7
    ld [hl], b                                    ; $61fa: $70
    xor h                                         ; $61fb: $ac
    and l                                         ; $61fc: $a5
    or e                                          ; $61fd: $b3
    xor d                                         ; $61fe: $aa
    call $fabc                                    ; $61ff: $cd $bc $fa
    call c, $b14f                                 ; $6202: $dc $4f $b1
    pop bc                                        ; $6205: $c1
    ld e, a                                       ; $6206: $5f
    rst $30                                       ; $6207: $f7

Call_039_6208:
    ld [c], a                                     ; $6208: $e2
    xor a                                         ; $6209: $af
    adc [hl]                                      ; $620a: $8e
    ld [hl], l                                    ; $620b: $75
    add a                                         ; $620c: $87
    ld d, c                                       ; $620d: $51
    rlca                                          ; $620e: $07
    ld b, d                                       ; $620f: $42
    db $10                                        ; $6210: $10
    add b                                         ; $6211: $80
    or a                                          ; $6212: $b7
    jr nz, jr_039_61a8                            ; $6213: $20 $93

    db $dd                                        ; $6215: $dd
    ei                                            ; $6216: $fb
    sub a                                         ; $6217: $97
    inc [hl]                                      ; $6218: $34
    rlca                                          ; $6219: $07
    add hl, bc                                    ; $621a: $09
    db $fc                                        ; $621b: $fc
    ld [hl], l                                    ; $621c: $75
    ret nc                                        ; $621d: $d0

    add d                                         ; $621e: $82

Call_039_621f:
    adc d                                         ; $621f: $8a
    ccf                                           ; $6220: $3f
    rst $30                                       ; $6221: $f7
    ld [$e1e8], sp                                ; $6222: $08 $e8 $e1
    ld e, b                                       ; $6225: $58
    ld c, e                                       ; $6226: $4b
    ld h, e                                       ; $6227: $63
    rst $10                                       ; $6228: $d7
    ld [c], a                                     ; $6229: $e2
    db $ed                                        ; $622a: $ed
    add sp, -$71                                  ; $622b: $e8 $8f
    ld l, b                                       ; $622d: $68
    ld hl, $b0be                                  ; $622e: $21 $be $b0
    sbc $92                                       ; $6231: $de $92
    ld d, l                                       ; $6233: $55
    ld l, a                                       ; $6234: $6f
    rst $10                                       ; $6235: $d7
    ld [hl], c                                    ; $6236: $71
    xor b                                         ; $6237: $a8
    dec c                                         ; $6238: $0d
    ld [hl], d                                    ; $6239: $72
    ld e, b                                       ; $623a: $58
    cp h                                          ; $623b: $bc
    ld l, c                                       ; $623c: $69
    ld c, $f3                                     ; $623d: $0e $f3
    add [hl]                                      ; $623f: $86
    add hl, hl                                    ; $6240: $29
    ld [hl], l                                    ; $6241: $75
    ldh a, [rTAC]                                 ; $6242: $f0 $07
    ld h, l                                       ; $6244: $65
    ld h, e                                       ; $6245: $63
    dec de                                        ; $6246: $1b
    db $fc                                        ; $6247: $fc
    ld [hl], l                                    ; $6248: $75
    sub l                                         ; $6249: $95
    call nc, $1db1                                ; $624a: $d4 $b1 $1d
    ld [hl], l                                    ; $624d: $75
    add hl, bc                                    ; $624e: $09
    ld c, b                                       ; $624f: $48
    ld [hl+], a                                   ; $6250: $22
    sbc h                                         ; $6251: $9c
    ei                                            ; $6252: $fb
    ld e, c                                       ; $6253: $59
    ld c, e                                       ; $6254: $4b
    adc a                                         ; $6255: $8f
    ld c, a                                       ; $6256: $4f
    db $eb                                        ; $6257: $eb
    daa                                           ; $6258: $27
    inc [hl]                                      ; $6259: $34
    ld hl, sp+$3b                                 ; $625a: $f8 $3b
    scf                                           ; $625c: $37
    ld hl, sp+$2b                                 ; $625d: $f8 $2b
    dec de                                        ; $625f: $1b
    ld e, e                                       ; $6260: $5b
    sub $88                                       ; $6261: $d6 $88
    sub [hl]                                      ; $6263: $96
    ld a, [hl]                                    ; $6264: $7e
    adc d                                         ; $6265: $8a
    push de                                       ; $6266: $d5
    pop hl                                        ; $6267: $e1
    adc [hl]                                      ; $6268: $8e
    or d                                          ; $6269: $b2
    ldh [$b5], a                                  ; $626a: $e0 $b5
    rst $20                                       ; $626c: $e7
    ld [$0970], a                                 ; $626d: $ea $70 $09
    sub d                                         ; $6270: $92
    db $f4                                        ; $6271: $f4
    ld [$3afe], sp                                ; $6272: $08 $fe $3a
    ld a, [c]                                     ; $6275: $f2
    jp nc, $b4a6                                  ; $6276: $d2 $a6 $b4

    sbc c                                         ; $6279: $99
    ld de, $6afe                                  ; $627a: $11 $fe $6a
    ld l, a                                       ; $627d: $6f
    rst $18                                       ; $627e: $df
    add a                                         ; $627f: $87
    inc [hl]                                      ; $6280: $34
    rlca                                          ; $6281: $07
    add hl, bc                                    ; $6282: $09
    db $fc                                        ; $6283: $fc
    push af                                       ; $6284: $f5
    cp $a5                                        ; $6285: $fe $a5
    rst $00                                       ; $6287: $c7
    and a                                         ; $6288: $a7
    adc l                                         ; $6289: $8d
    xor l                                         ; $628a: $ad
    ld h, e                                       ; $628b: $63
    dec l                                         ; $628c: $2d
    dec e                                         ; $628d: $1d
    db $fd                                        ; $628e: $fd
    ld d, a                                       ; $628f: $57
    ld e, e                                       ; $6290: $5b
    cp [hl]                                       ; $6291: $be
    ld b, d                                       ; $6292: $42
    inc b                                         ; $6293: $04
    ld d, e                                       ; $6294: $53
    xor d                                         ; $6295: $aa
    ld [hl], $ab                                  ; $6296: $36 $ab
    ld e, d                                       ; $6298: $5a
    db $dd                                        ; $6299: $dd
    inc hl                                        ; $629a: $23
    and h                                         ; $629b: $a4
    rst $30                                       ; $629c: $f7
    cpl                                           ; $629d: $2f
    cp l                                          ; $629e: $bd
    ld e, a                                       ; $629f: $5f
    db $fc                                        ; $62a0: $fc
    ld a, c                                       ; $62a1: $79
    jp hl                                         ; $62a2: $e9


    rst $18                                       ; $62a3: $df
    xor h                                         ; $62a4: $ac
    ret z                                         ; $62a5: $c8

    rst $18                                       ; $62a6: $df
    dec a                                         ; $62a7: $3d
    ld d, [hl]                                    ; $62a8: $56
    sbc e                                         ; $62a9: $9b
    ld b, [hl]                                    ; $62aa: $46
    sub [hl]                                      ; $62ab: $96
    and $4c                                       ; $62ac: $e6 $4c
    cp $c6                                        ; $62ae: $fe $c6
    sbc $73                                       ; $62b0: $de $73
    ld [hl], l                                    ; $62b2: $75
    ldh a, [$57]                                  ; $62b3: $f0 $57
    or d                                          ; $62b5: $b2
    ld a, [hl+]                                   ; $62b6: $2a
    ld a, [$d379]                                 ; $62b7: $fa $79 $d3
    ld h, $87                                     ; $62ba: $26 $87
    push hl                                       ; $62bc: $e5
    push bc                                       ; $62bd: $c5
    halt                                          ; $62be: $76
    ret nc                                        ; $62bf: $d0

    ld [de], a                                    ; $62c0: $12
    ld [hl+], a                                   ; $62c1: $22
    sbc $62                                       ; $62c2: $de $62
    ldh a, [$d7]                                  ; $62c4: $f0 $d7
    dec c                                         ; $62c6: $0d
    cp $a0                                        ; $62c7: $fe $a0
    add e                                         ; $62c9: $83
    ld h, c                                       ; $62ca: $61
    ld [$330e], a                                 ; $62cb: $ea $0e $33
    ld a, [hl+]                                   ; $62ce: $2a
    cp $2c                                        ; $62cf: $fe $2c
    ld l, c                                       ; $62d1: $69
    ld c, $23                                     ; $62d2: $0e $23
    dec e                                         ; $62d4: $1d
    adc e                                         ; $62d5: $8b
    ld d, b                                       ; $62d6: $50
    xor l                                         ; $62d7: $ad
    adc $d5                                       ; $62d8: $ce $d5
    ld h, c                                       ; $62da: $61
    or h                                          ; $62db: $b4
    ld [hl], h                                    ; $62dc: $74
    xor [hl]                                      ; $62dd: $ae
    rst $38                                       ; $62de: $ff
    ld c, $6f                                     ; $62df: $0e $6f
    adc a                                         ; $62e1: $8f
    rst $08                                       ; $62e2: $cf
    rra                                           ; $62e3: $1f
    db $f4                                        ; $62e4: $f4
    ld [$aafe], sp                                ; $62e5: $08 $fe $aa
    add e                                         ; $62e8: $83
    rst $18                                       ; $62e9: $df
    ld h, [hl]                                    ; $62ea: $66
    call z, Call_039_4c01                         ; $62eb: $cc $01 $4c
    cp $be                                        ; $62ee: $fe $be
    or $b9                                        ; $62f0: $f6 $b9
    ld e, d                                       ; $62f2: $5a
    push af                                       ; $62f3: $f5
    ld a, l                                       ; $62f4: $7d
    add h                                         ; $62f5: $84
    ld c, $5a                                     ; $62f6: $0e $5a
    add sp, $25                                   ; $62f8: $e8 $25
    sbc $b4                                       ; $62fa: $de $b4
    di                                            ; $62fc: $f3
    ld e, d                                       ; $62fd: $5a
    ld d, b                                       ; $62fe: $50
    pop af                                        ; $62ff: $f1
    scf                                           ; $6300: $37
    ld a, $76                                     ; $6301: $3e $76
    cpl                                           ; $6303: $2f
    cp $7a                                        ; $6304: $fe $7a
    ld a, h                                       ; $6306: $7c
    sbc d                                         ; $6307: $9a
    and $b3                                       ; $6308: $e6 $b3
    dec de                                        ; $630a: $1b
    ret nz                                        ; $630b: $c0

    jp nc, Jump_000_2d79                          ; $630c: $d2 $79 $2d

    xor b                                         ; $630f: $a8
    ld hl, sp+$4b                                 ; $6310: $f8 $4b
    dec sp                                        ; $6312: $3b
    sbc e                                         ; $6313: $9b
    or e                                          ; $6314: $b3
    xor $c5                                       ; $6315: $ee $c5
    ld e, a                                       ; $6317: $5f
    adc a                                         ; $6318: $8f
    ld c, a                                       ; $6319: $4f
    ld c, e                                       ; $631a: $4b
    cpl                                           ; $631b: $2f
    ld c, h                                       ; $631c: $4c
    ld [hl], e                                    ; $631d: $73
    ld c, c                                       ; $631e: $49
    ld h, c                                       ; $631f: $61
    inc a                                         ; $6320: $3c
    ld a, $ed                                     ; $6321: $3e $ed
    ei                                            ; $6323: $fb
    ld [$aad5], sp                                ; $6324: $08 $d5 $aa
    add $6e                                       ; $6327: $c6 $6e
    ldh a, [rTAC]                                 ; $6329: $f0 $07
    call $fc8c                                    ; $632b: $cd $8c $fc
    ld a, l                                       ; $632e: $7d
    add d                                         ; $632f: $82
    add b                                         ; $6330: $80

Call_039_6331:
    or h                                          ; $6331: $b4
    jp $35e8                                      ; $6332: $c3 $e8 $35


    ld c, [hl]                                    ; $6335: $4e
    scf                                           ; $6336: $37
    ld hl, sp-$7d                                 ; $6337: $f8 $83
    ld a, [hl]                                    ; $6339: $7e
    ld b, l                                       ; $633a: $45
    ld h, h                                       ; $633b: $64
    ld h, [hl]                                    ; $633c: $66
    cp l                                          ; $633d: $bd
    ld l, c                                       ; $633e: $69
    ld c, $43                                     ; $633f: $0e $43
    add hl, hl                                    ; $6341: $29
    halt                                          ; $6342: $76
    sbc b                                         ; $6343: $98
    jp hl                                         ; $6344: $e9


    push af                                       ; $6345: $f5
    ld d, [hl]                                    ; $6346: $56
    ld l, l                                       ; $6347: $6d
    ld d, [hl]                                    ; $6348: $56
    add d                                         ; $6349: $82
    inc h                                         ; $634a: $24
    push de                                       ; $634b: $d5
    adc [hl]                                      ; $634c: $8e
    xor l                                         ; $634d: $ad
    dec b                                         ; $634e: $05
    pop bc                                        ; $634f: $c1
    ret c                                         ; $6350: $d8

    ld e, c                                       ; $6351: $59
    rst $38                                       ; $6352: $ff
    sub e                                         ; $6353: $93
    add $36                                       ; $6354: $c6 $36
    ld sp, hl                                     ; $6356: $f9
    jp z, $5fee                                   ; $6357: $ca $ee $5f

    nop                                           ; $635a: $00
    dec sp                                        ; $635b: $3b
    ld l, b                                       ; $635c: $68
    and c                                         ; $635d: $a1
    adc [hl]                                      ; $635e: $8e
    rst $20                                       ; $635f: $e7
    ld b, $7f                                     ; $6360: $06 $7f
    push de                                       ; $6362: $d5
    ld hl, $ac75                                  ; $6363: $21 $75 $ac
    or a                                          ; $6366: $b7
    adc [hl]                                      ; $6367: $8e
    dec h                                         ; $6368: $25
    ld b, a                                       ; $6369: $47
    or $05                                        ; $636a: $f6 $05
    ld [hl+], a                                   ; $636c: $22
    di                                            ; $636d: $f3
    halt                                          ; $636e: $76
    sub h                                         ; $636f: $94
    jr c, jr_039_63e2                             ; $6370: $38 $70

    ld a, [$d63a]                                 ; $6372: $fa $3a $d6
    ld c, l                                       ; $6375: $4d
    cp $22                                        ; $6376: $fe $22
    ld h, e                                       ; $6378: $63
    ld a, [hl-]                                   ; $6379: $3a
    ld [$b002], a                                 ; $637a: $ea $02 $b0
    ld c, h                                       ; $637d: $4c
    inc a                                         ; $637e: $3c
    inc l                                         ; $637f: $2c
    xor b                                         ; $6380: $a8
    cp [hl]                                       ; $6381: $be
    ld a, l                                       ; $6382: $7d
    ld bc, $b597                                  ; $6383: $01 $97 $b5
    sub b                                         ; $6386: $90

Call_039_6387:
    sbc $01                                       ; $6387: $de $01
    sub [hl]                                      ; $6389: $96
    ld h, $fb                                     ; $638a: $26 $fb
    ld [hl], h                                    ; $638c: $74
    ld l, a                                       ; $638d: $6f
    push de                                       ; $638e: $d5
    ld [$f09e], a                                 ; $638f: $ea $9e $f0
    dec d                                         ; $6392: $15
    ld l, e                                       ; $6393: $6b
    or c                                          ; $6394: $b1
    inc c                                         ; $6395: $0c
    ld l, c                                       ; $6396: $69
    or d                                          ; $6397: $b2
    add l                                         ; $6398: $85
    ld c, h                                       ; $6399: $4c
    add e                                         ; $639a: $83
    ccf                                           ; $639b: $3f
    ld l, a                                       ; $639c: $6f
    add hl, de                                    ; $639d: $19
    add hl, hl                                    ; $639e: $29
    adc c                                         ; $639f: $89
    rst $18                                       ; $63a0: $df
    xor $6a                                       ; $63a1: $ee $6a
    sub c                                         ; $63a3: $91

Jump_039_63a4:
    cp a                                          ; $63a4: $bf
    ld hl, $4939                                  ; $63a5: $21 $39 $49
    rra                                           ; $63a8: $1f
    dec sp                                        ; $63a9: $3b
    ld c, h                                       ; $63aa: $4c
    pop af                                        ; $63ab: $f1
    rst $10                                       ; $63ac: $d7
    ld b, b                                       ; $63ad: $40
    add sp, $06                                   ; $63ae: $e8 $06
    ld a, a                                       ; $63b0: $7f
    ld d, b                                       ; $63b1: $50
    ld [$0fe0], a                                 ; $63b2: $ea $e0 $0f
    ld c, d                                       ; $63b5: $4a
    ld d, [hl]                                    ; $63b6: $56
    dec e                                         ; $63b7: $1d
    or h                                          ; $63b8: $b4
    jr nz, @-$06                                  ; $63b9: $20 $f8

    ld a, c                                       ; $63bb: $79
    db $d3                                        ; $63bc: $d3
    adc $6b                                       ; $63bd: $ce $6b
    ld b, c                                       ; $63bf: $41
    push bc                                       ; $63c0: $c5
    ld e, a                                       ; $63c1: $5f
    adc l                                         ; $63c2: $8d
    db $dd                                        ; $63c3: $dd
    adc e                                         ; $63c4: $8b
    cp a                                          ; $63c5: $bf
    ld a, [hl-]                                   ; $63c6: $3a
    or $f8                                        ; $63c7: $f6 $f8
    db $f4                                        ; $63c9: $f4
    call c, Call_000_2fe4                         ; $63ca: $dc $e4 $2f
    ld [hl-], a                                   ; $63cd: $32
    ld h, $cd                                     ; $63ce: $26 $cd
    ld bc, $9649                                  ; $63d0: $01 $49 $96
    ld [hl-], a                                   ; $63d3: $32
    ld b, c                                       ; $63d4: $41
    dec a                                         ; $63d5: $3d
    ld e, d                                       ; $63d6: $5a
    db $e4                                        ; $63d7: $e4
    rst $08                                       ; $63d8: $cf
    or c                                          ; $63d9: $b1
    ret nc                                        ; $63da: $d0

    ld a, a                                       ; $63db: $7f
    ld [hl], h                                    ; $63dc: $74
    ret c                                         ; $63dd: $d8

    and l                                         ; $63de: $a5
    cp l                                          ; $63df: $bd
    dec h                                         ; $63e0: $25
    adc h                                         ; $63e1: $8c

jr_039_63e2:
    sub b                                         ; $63e2: $90
    ld sp, hl                                     ; $63e3: $f9
    ld b, [hl]                                    ; $63e4: $46
    call $da42                                    ; $63e5: $cd $42 $da
    reti                                          ; $63e8: $d9


    cpl                                           ; $63e9: $2f
    cp $ea                                        ; $63ea: $fe $ea
    ret c                                         ; $63ec: $d8

    adc $6b                                       ; $63ed: $ce $6b
    ld b, c                                       ; $63ef: $41
    push bc                                       ; $63f0: $c5
    rst $18                                       ; $63f1: $df
    cp c                                          ; $63f2: $b9
    ret                                           ; $63f3: $c9


    ld e, a                                       ; $63f4: $5f
    ld h, h                                       ; $63f5: $64
    ld c, h                                       ; $63f6: $4c
    sbc d                                         ; $63f7: $9a
    inc bc                                        ; $63f8: $03
    ld b, e                                       ; $63f9: $43
    add hl, bc                                    ; $63fa: $09
    ld [c], a                                     ; $63fb: $e2
    jp nc, $ef41                                  ; $63fc: $d2 $41 $ef

    ld c, d                                       ; $63ff: $4a
    ret z                                         ; $6400: $c8

    and [hl]                                      ; $6401: $a6
    add hl, sp                                    ; $6402: $39
    adc h                                         ; $6403: $8c
    ld b, $b9                                     ; $6404: $06 $b9
    ld hl, sp+$6d                                 ; $6406: $f8 $6d
    dec c                                         ; $6408: $0d
    xor $30                                       ; $6409: $ee $30
    pop af                                        ; $640b: $f1
    xor $1a                                       ; $640c: $ee $1a
    pop de                                        ; $640e: $d1
    inc [hl]                                      ; $640f: $34
    rlca                                          ; $6410: $07
    ld c, c                                       ; $6411: $49
    ld sp, $ff00                                  ; $6412: $31 $00 $ff
    ret z                                         ; $6415: $c8

    ld bc, $2da3                                  ; $6416: $01 $a3 $2d
    add a                                         ; $6419: $87
    add d                                         ; $641a: $82
    inc e                                         ; $641b: $1c
    ld b, e                                       ; $641c: $43
    xor c                                         ; $641d: $a9
    ld a, h                                       ; $641e: $7c
    or l                                          ; $641f: $b5
    adc $01                                       ; $6420: $ce $01
    ld b, e                                       ; $6422: $43
    ld sp, hl                                     ; $6423: $f9
    or l                                          ; $6424: $b5
    ld bc, $c8ea                                  ; $6425: $01 $ea $c8
    ld bc, $9fc9                                  ; $6428: $01 $c9 $9f
    jp nc, $c9ab                                  ; $642b: $d2 $ab $c9

    ld e, a                                       ; $642e: $5f
    ld h, h                                       ; $642f: $64
    call z, Call_000_1c90                         ; $6430: $cc $90 $1c
    and e                                         ; $6433: $a3
    ccf                                           ; $6434: $3f
    ld [hl], $0b                                  ; $6435: $36 $0b
    ld d, $c6                                     ; $6437: $16 $c6
    rst $00                                       ; $6439: $c7
    adc $6e                                       ; $643a: $ce $6e
    ld h, l                                       ; $643c: $65
    inc a                                         ; $643d: $3c
    scf                                           ; $643e: $37
    ld sp, hl                                     ; $643f: $f9
    adc e                                         ; $6440: $8b
    adc h                                         ; $6441: $8c
    sbc c                                         ; $6442: $99
    ld sp, $4c07                                  ; $6443: $31 $07 $4c
    cp $c6                                        ; $6446: $fe $c6
    sbc $73                                       ; $6448: $de $73
    ld [hl], l                                    ; $644a: $75
    ldh a, [$57]                                  ; $644b: $f0 $57
    or d                                          ; $644d: $b2
    ld a, [hl+]                                   ; $644e: $2a
    ld a, [$cf79]                                 ; $644f: $fa $79 $cf
    ld c, l                                       ; $6452: $4d
    cp $22                                        ; $6453: $fe $22
    ld h, e                                       ; $6455: $63
    add [hl]                                      ; $6456: $86
    db $e4                                        ; $6457: $e4
    inc hl                                        ; $6458: $23
    ccf                                           ; $6459: $3f
    ld a, a                                       ; $645a: $7f
    ld [hl], l                                    ; $645b: $75
    ld l, h                                       ; $645c: $6c
    ld h, a                                       ; $645d: $67
    cp c                                          ; $645e: $b9
    ldh [$3a], a                                  ; $645f: $e0 $3a
    ld d, a                                       ; $6461: $57
    ld a, a                                       ; $6462: $7f
    db $ec                                        ; $6463: $ec
    ld c, e                                       ; $6464: $4b
    and h                                         ; $6465: $a4
    ld d, b                                       ; $6466: $50
    sbc d                                         ; $6467: $9a
    cp b                                          ; $6468: $b8
    sbc c                                         ; $6469: $99
    dec h                                         ; $646a: $25
    call $c901                                    ; $646b: $cd $01 $c9
    pop de                                        ; $646e: $d1
    db $e4                                        ; $646f: $e4
    cpl                                           ; $6470: $2f
    ld [hl-], a                                   ; $6471: $32
    ld h, $cd                                     ; $6472: $26 $cd
    ld bc, $474c                                  ; $6474: $01 $4c $47
    inc sp                                        ; $6477: $33
    ld h, a                                       ; $6478: $67
    ld b, d                                       ; $6479: $42
    ld a, [de]                                    ; $647a: $1a
    rlca                                          ; $647b: $07
    adc $4d                                       ; $647c: $ce $4d
    cp $22                                        ; $647e: $fe $22
    ld h, e                                       ; $6480: $63
    add [hl]                                      ; $6481: $86
    db $e4                                        ; $6482: $e4
    and e                                         ; $6483: $a3
    jp $fccd                                      ; $6484: $c3 $cd $fc


    ld h, b                                       ; $6487: $60
    ld a, h                                       ; $6488: $7c
    inc a                                         ; $6489: $3c
    scf                                           ; $648a: $37
    ld sp, hl                                     ; $648b: $f9
    adc e                                         ; $648c: $8b
    adc h                                         ; $648d: $8c
    sbc c                                         ; $648e: $99
    ld sp, $0907                                  ; $648f: $31 $07 $09
    rst $00                                       ; $6492: $c7
    ld h, c                                       ; $6493: $61
    jp hl                                         ; $6494: $e9


    dec a                                         ; $6495: $3d
    xor h                                         ; $6496: $ac
    dec l                                         ; $6497: $2d
    ld b, l                                       ; $6498: $45
    cp $c6                                        ; $6499: $fe $c6
    sbc $73                                       ; $649b: $de $73
    ld [hl], l                                    ; $649d: $75
    ldh a, [$57]                                  ; $649e: $f0 $57
    or d                                          ; $64a0: $b2
    ld a, [hl+]                                   ; $64a1: $2a
    ld a, [$b9ed]                                 ; $64a2: $fa $ed $b9
    ret                                           ; $64a5: $c9


    ld e, a                                       ; $64a6: $5f
    ld h, h                                       ; $64a7: $64
    ld c, h                                       ; $64a8: $4c
    sbc d                                         ; $64a9: $9a
    inc bc                                        ; $64aa: $03
    jp $c7b1                                      ; $64ab: $c3 $b1 $c7


    rst $20                                       ; $64ae: $e7
    rrca                                          ; $64af: $0f
    jp z, $f81c                                   ; $64b0: $ca $1c $f8

    db $e3                                        ; $64b3: $e3
    sbc h                                         ; $64b4: $9c
    db $eb                                        ; $64b5: $eb
    ld e, b                                       ; $64b6: $58
    ld [c], a                                     ; $64b7: $e2
    di                                            ; $64b8: $f3
    rst $10                                       ; $64b9: $d7
    rla                                           ; $64ba: $17
    sub [hl]                                      ; $64bb: $96
    ld a, $8b                                     ; $64bc: $3e $8b
    ld a, [hl-]                                   ; $64be: $3a
    ret z                                         ; $64bf: $c8

    adc d                                         ; $64c0: $8a
    ld a, [hl]                                    ; $64c1: $7e
    ld b, l                                       ; $64c2: $45
    ld a, b                                       ; $64c3: $78
    rst $08                                       ; $64c4: $cf
    cp l                                          ; $64c5: $bd
    or h                                          ; $64c6: $b4
    ld h, l                                       ; $64c7: $65
    add $1c                                       ; $64c8: $c6 $1c
    add hl, bc                                    ; $64ca: $09
    db $fc                                        ; $64cb: $fc
    dec d                                         ; $64cc: $15
    inc h                                         ; $64cd: $24
    ld d, c                                       ; $64ce: $51
    dec e                                         ; $64cf: $1d
    ld l, $42                                     ; $64d0: $2e $42
    ld [c], a                                     ; $64d2: $e2
    ld [$3ac8], a                                 ; $64d3: $ea $c8 $3a
    ld a, b                                       ; $64d6: $78
    ld l, l                                       ; $64d7: $6d
    sub e                                         ; $64d8: $93
    ld c, c                                       ; $64d9: $49
    ld l, a                                       ; $64da: $6f
    dec l                                         ; $64db: $2d
    sbc e                                         ; $64dc: $9b
    halt                                          ; $64dd: $76
    db $f4                                        ; $64de: $f4
    rst $00                                       ; $64df: $c7
    ld [$658f], a                                 ; $64e0: $ea $8f $65
    jp hl                                         ; $64e3: $e9


    dec [hl]                                      ; $64e4: $35
    ld c, [hl]                                    ; $64e5: $4e
    ld e, c                                       ; $64e6: $59
    ld l, e                                       ; $64e7: $6b
    dec hl                                        ; $64e8: $2b
    ldh a, [rNR21]                                ; $64e9: $f0 $16
    cpl                                           ; $64eb: $2f
    ld c, d                                       ; $64ec: $4a
    ld h, a                                       ; $64ed: $67
    call z, $c301                                 ; $64ee: $cc $01 $c3
    ld h, e                                       ; $64f1: $63
    ld l, e                                       ; $64f2: $6b
    cp $a0                                        ; $64f3: $fe $a0
    db $f4                                        ; $64f5: $f4
    ld l, a                                       ; $64f6: $6f
    halt                                          ; $64f7: $76
    ld [hl], a                                    ; $64f8: $77
    ret nc                                        ; $64f9: $d0

    ret z                                         ; $64fa: $c8

    inc l                                         ; $64fb: $2c
    sbc l                                         ; $64fc: $9d
    ei                                            ; $64fd: $fb
    ld h, a                                       ; $64fe: $67
    rst $20                                       ; $64ff: $e7
    sbc $3f                                       ; $6500: $de $3f
    adc $98                                       ; $6502: $ce $98
    inc bc                                        ; $6504: $03
    add hl, bc                                    ; $6505: $09
    db $fc                                        ; $6506: $fc
    push af                                       ; $6507: $f5
    ld c, [hl]                                    ; $6508: $4e
    ld e, d                                       ; $6509: $5a
    db $e4                                        ; $650a: $e4
    rrca                                          ; $650b: $0f
    ld a, h                                       ; $650c: $7c
    ld l, [hl]                                    ; $650d: $6e
    ldh a, [$d7]                                  ; $650e: $f0 $d7
    db $db                                        ; $6510: $db
    ret c                                         ; $6511: $d8

    cp e                                          ; $6512: $bb
    ldh [$de], a                                  ; $6513: $e0 $de
    jp $d2da                                      ; $6515: $c3 $da $d2


    ld e, b                                       ; $6518: $58
    db $ec                                        ; $6519: $ec
    jr nc, jr_039_651f                            ; $651a: $30 $03

    sub h                                         ; $651c: $94
    xor h                                         ; $651d: $ac
    add h                                         ; $651e: $84

jr_039_651f:
    call nz, $696f                                ; $651f: $c4 $6f $69
    ld c, $09                                     ; $6522: $0e $09
    db $fc                                        ; $6524: $fc
    ld [hl], l                                    ; $6525: $75
    ret nc                                        ; $6526: $d0

    ld b, d                                       ; $6527: $42
    cp a                                          ; $6528: $bf
    ld [hl+], a                                   ; $6529: $22
    call c, $f823                                 ; $652a: $dc $23 $f8
    db $eb                                        ; $652d: $eb
    dec bc                                        ; $652e: $0b
    ld c, e                                       ; $652f: $4b
    db $e3                                        ; $6530: $e3
    jr c, jr_039_655f                             ; $6531: $38 $2c

    cp l                                          ; $6533: $bd
    add a                                         ; $6534: $87
    or l                                          ; $6535: $b5
    dec h                                         ; $6536: $25
    call Call_000_0901                            ; $6537: $cd $01 $09
    db $fc                                        ; $653a: $fc
    sub l                                         ; $653b: $95
    sub b                                         ; $653c: $90
    sbc a                                         ; $653d: $9f
    cp c                                          ; $653e: $b9
    ld b, a                                       ; $653f: $47
    ldh a, [rPCM34]                               ; $6540: $f0 $77
    xor $fd                                       ; $6542: $ee $fd
    ld l, d                                       ; $6544: $6a
    ld a, [c]                                     ; $6545: $f2
    rst $08                                       ; $6546: $cf
    inc h                                         ; $6547: $24
    ld [hl], h                                    ; $6548: $74
    rst $28                                       ; $6549: $ef
    rst $10                                       ; $654a: $d7
    and e                                         ; $654b: $a3
    cp l                                          ; $654c: $bd
    ld a, a                                       ; $654d: $7f
    ld c, c                                       ; $654e: $49
    ld [hl], e                                    ; $654f: $73
    ret                                           ; $6550: $c9


    rra                                           ; $6551: $1f
    and c                                         ; $6552: $a1
    ld e, d                                       ; $6553: $5a
    push af                                       ; $6554: $f5
    ld [$f268], sp                                ; $6555: $08 $68 $f2
    rst $08                                       ; $6558: $cf
    inc h                                         ; $6559: $24
    ld [hl], h                                    ; $655a: $74
    inc sp                                        ; $655b: $33
    db $e3                                        ; $655c: $e3
    add b                                         ; $655d: $80
    ld e, h                                       ; $655e: $5c

jr_039_655f:
    db $fc                                        ; $655f: $fc
    ld a, c                                       ; $6560: $79
    ld h, a                                       ; $6561: $67
    db $ec                                        ; $6562: $ec
    ld [hl], b                                    ; $6563: $70
    jp hl                                         ; $6564: $e9


    and b                                         ; $6565: $a0
    add l                                         ; $6566: $85
    ld h, $22                                     ; $6567: $26 $22
    ld b, d                                       ; $6569: $42
    pop de                                        ; $656a: $d1
    or c                                          ; $656b: $b1
    ld l, [hl]                                    ; $656c: $6e
    ld [hl-], a                                   ; $656d: $32
    add hl, bc                                    ; $656e: $09
    ret nz                                        ; $656f: $c0

    ld e, l                                       ; $6570: $5d
    dec h                                         ; $6571: $25
    db $dd                                        ; $6572: $dd
    adc e                                         ; $6573: $8b
    cp a                                          ; $6574: $bf
    and d                                         ; $6575: $a2
    add hl, hl                                    ; $6576: $29
    ld a, b                                       ; $6577: $78
    db $d3                                        ; $6578: $d3
    inc e                                         ; $6579: $1c
    add hl, bc                                    ; $657a: $09
    ld [$fe4d], sp                                ; $657b: $08 $4d $fe
    sbc c                                         ; $657e: $99
    add h                                         ; $657f: $84
    xor $4d                                       ; $6580: $ee $4d
    cp $de                                        ; $6582: $fe $de
    ld h, [hl]                                    ; $6584: $66
    ld l, h                                       ; $6585: $6c
    ld a, [c]                                     ; $6586: $f2
    ld h, a                                       ; $6587: $67
    dec de                                        ; $6588: $1b
    ld l, a                                       ; $6589: $6f
    ld c, e                                       ; $658a: $4b
    rst $38                                       ; $658b: $ff
    ld h, [hl]                                    ; $658c: $66
    xor $06                                       ; $658d: $ee $06
    ld a, a                                       ; $658f: $7f
    ret nc                                        ; $6590: $d0

    call z, $b7e8                                 ; $6591: $cc $e8 $b7
    ld l, c                                       ; $6594: $69
    ld c, $c3                                     ; $6595: $0e $c3
    ld h, e                                       ; $6597: $63
    or c                                          ; $6598: $b1
    add c                                         ; $6599: $81
    ld d, b                                       ; $659a: $50
    inc c                                         ; $659b: $0c
    cp $2c                                        ; $659c: $fe $2c
    sbc l                                         ; $659e: $9d
    cp b                                          ; $659f: $b8
    ret                                           ; $65a0: $c9


    ccf                                           ; $65a1: $3f
    sub e                                         ; $65a2: $93
    ret nc                                        ; $65a3: $d0

    and l                                         ; $65a4: $a5
    ld c, $6d                                     ; $65a5: $0e $6d
    add sp, $06                                   ; $65a7: $e8 $06
    ld a, a                                       ; $65a9: $7f

jr_039_65aa:
    ld d, b                                       ; $65aa: $50
    or l                                          ; $65ab: $b5
    ld h, b                                       ; $65ac: $60
    jp hl                                         ; $65ad: $e9


    jr z, jr_039_65aa                             ; $65ae: $28 $fa

    add c                                         ; $65b0: $81
    db $fc                                        ; $65b1: $fc
    scf                                           ; $65b2: $37
    ld b, e                                       ; $65b3: $43
    ld c, b                                       ; $65b4: $48
    dec sp                                        ; $65b5: $3b
    ld e, h                                       ; $65b6: $5c
    ld a, [de]                                    ; $65b7: $1a
    ld [$255d], sp                                ; $65b8: $08 $5d $25
    db $dd                                        ; $65bb: $dd
    adc e                                         ; $65bc: $8b
    cp a                                          ; $65bd: $bf
    add $16                                       ; $65be: $c6 $16
    dec e                                         ; $65c0: $1d
    ld l, e                                       ; $65c1: $6b
    ld l, c                                       ; $65c2: $69
    ld [hl-], a                                   ; $65c3: $32
    add hl, bc                                    ; $65c4: $09
    ret nz                                        ; $65c5: $c0

    ld l, c                                       ; $65c6: $69
    ld c, $a3                                     ; $65c7: $0e $a3
    sub l                                         ; $65c9: $95
    ld l, b                                       ; $65ca: $68
    scf                                           ; $65cb: $37
    ld sp, hl                                     ; $65cc: $f9
    ld h, a                                       ; $65cd: $67
    ld [de], a                                    ; $65ce: $12
    cp d                                          ; $65cf: $ba
    dec de                                        ; $65d0: $1b
    sub $96                                       ; $65d1: $d6 $96
    call z, Call_039_6208                         ; $65d3: $cc $08 $62
    ld a, [hl]                                    ; $65d6: $7e
    add e                                         ; $65d7: $83
    add hl, de                                    ; $65d8: $19
    ld [hl], e                                    ; $65d9: $73
    db $d3                                        ; $65da: $d3
    ld c, l                                       ; $65db: $4d
    rst $10                                       ; $65dc: $d7
    ld e, c                                       ; $65dd: $59
    add sp, $47                                   ; $65de: $e8 $47
    cp $bc                                        ; $65e0: $fe $bc
    dec e                                         ; $65e2: $1d
    jp hl                                         ; $65e3: $e9


    db $ec                                        ; $65e4: $ec
    rrca                                          ; $65e5: $0f
    ld e, h                                       ; $65e6: $5c
    ld [hl], a                                    ; $65e7: $77
    set 0, h                                      ; $65e8: $cb $c4
    ld [hl], e                                    ; $65ea: $73
    set 3, a                                      ; $65eb: $cb $df

jr_039_65ed:
    ld e, e                                       ; $65ed: $5b
    rst $38                                       ; $65ee: $ff
    ld d, [hl]                                    ; $65ef: $56
    ld e, e                                       ; $65f0: $5b
    ld a, [hl-]                                   ; $65f1: $3a
    ld a, [$3eaf]                                 ; $65f2: $fa $af $3e
    ld [hl], a                                    ; $65f5: $77
    cp d                                          ; $65f6: $ba
    jp hl                                         ; $65f7: $e9


    ld a, [hl-]                                   ; $65f8: $3a
    dec bc                                        ; $65f9: $0b
    db $fd                                        ; $65fa: $fd
    ret z                                         ; $65fb: $c8

    sbc a                                         ; $65fc: $9f
    or a                                          ; $65fd: $b7
    inc hl                                        ; $65fe: $23
    sbc l                                         ; $65ff: $9d
    db $fd                                        ; $6600: $fd
    add c                                         ; $6601: $81
    db $eb                                        ; $6602: $eb
    ld l, [hl]                                    ; $6603: $6e
    sbc c                                         ; $6604: $99
    ld a, b                                       ; $6605: $78
    ld l, [hl]                                    ; $6606: $6e
    ld sp, hl                                     ; $6607: $f9
    ld a, e                                       ; $6608: $7b
    ld l, e                                       ; $6609: $6b
    sbc d                                         ; $660a: $9a
    and [hl]                                      ; $660b: $a6
    add hl, sp                                    ; $660c: $39
    add hl, bc                                    ; $660d: $09
    db $fc                                        ; $660e: $fc
    ld [hl], l                                    ; $660f: $75
    ret nc                                        ; $6610: $d0

    ld [hl], d                                    ; $6611: $72
    inc b                                         ; $6612: $04
    and d                                         ; $6613: $a2
    ld a, e                                       ; $6614: $7b
    jr c, jr_039_65ed                             ; $6615: $38 $d6

    dec e                                         ; $6617: $1d
    ld c, [hl]                                    ; $6618: $4e
    pop bc                                        ; $6619: $c1
    or d                                          ; $661a: $b2
    ld l, c                                       ; $661b: $69
    ld c, $49                                     ; $661c: $0e $49
    ld d, $b2                                     ; $661e: $16 $b2
    inc bc                                        ; $6620: $03
    ld [hl+], a                                   ; $6621: $22
    ld [hl], e                                    ; $6622: $73
    add a                                         ; $6623: $87
    ld a, [hl+]                                   ; $6624: $2a
    ld [hl+], a                                   ; $6625: $22
    ei                                            ; $6626: $fb
    xor h                                         ; $6627: $ac
    ld [hl], e                                    ; $6628: $73
    ld c, c                                       ; $6629: $49
    xor d                                         ; $662a: $aa
    call nc, $08b2                                ; $662b: $d4 $b2 $08
    ld [hl], l                                    ; $662e: $75
    xor h                                         ; $662f: $ac
    or a                                          ; $6630: $b7
    ld l, e                                       ; $6631: $6b
    push hl                                       ; $6632: $e5
    db $ed                                        ; $6633: $ed
    add hl, bc                                    ; $6634: $09
    ld e, a                                       ; $6635: $5f
    or c                                          ; $6636: $b1
    ld d, $1c                                     ; $6637: $16 $1c
    db $10                                        ; $6639: $10
    push bc                                       ; $663a: $c5
    rst $18                                       ; $663b: $df
    sub b                                         ; $663c: $90
    inc e                                         ; $663d: $1c
    call z, $0701                                 ; $663e: $cc $01 $07
    ld a, a                                       ; $6641: $7f
    ld d, $28                                     ; $6642: $16 $28
    ld [hl], e                                    ; $6644: $73
    jr nz, @+$4e                                  ; $6645: $20 $4c

    sbc e                                         ; $6647: $9b
    and [hl]                                      ; $6648: $a6
    ld l, c                                       ; $6649: $69
    ld c, $cc                                     ; $664a: $0e $cc
    add c                                         ; $664c: $81
    jr nc, jr_039_66bc                            ; $664d: $30 $6d

    ld h, [hl]                                    ; $664f: $66
    inc e                                         ; $6650: $1c
    ld [hl], b                                    ; $6651: $70
    ldh a, [$67]                                  ; $6652: $f0 $67
    add c                                         ; $6654: $81
    ld hl, $4939                                  ; $6655: $21 $39 $49
    xor d                                         ; $6658: $aa
    rst $28                                       ; $6659: $ef
    inc hl                                        ; $665a: $23
    ld [hl], h                                    ; $665b: $74
    cpl                                           ; $665c: $2f
    cp $ba                                        ; $665d: $fe $ba
    pop bc                                        ; $665f: $c1
    rra                                           ; $6660: $1f
    db $f4                                        ; $6661: $f4
    ld d, e                                       ; $6662: $53
    ld [$0b0e], a                                 ; $6663: $ea $0e $0b
    xor d                                         ; $6666: $aa
    ld l, a                                       ; $6667: $6f

jr_039_6668:
    ld e, a                                       ; $6668: $5f
    ret nz                                        ; $6669: $c0

    ld e, e                                       ; $666a: $5b
    sub $42                                       ; $666b: $d6 $42
    ld a, d                                       ; $666d: $7a
    rlca                                          ; $666e: $07
    ld e, b                                       ; $666f: $58

Call_039_6670:
    sbc d                                         ; $6670: $9a
    db $ec                                        ; $6671: $ec
    db $d3                                        ; $6672: $d3
    cp l                                          ; $6673: $bd
    ld d, l                                       ; $6674: $55
    xor e                                         ; $6675: $ab
    ld a, e                                       ; $6676: $7b
    jp nz, $ac57                                  ; $6677: $c2 $57 $ac

    push bc                                       ; $667a: $c5
    ld d, d                                       ; $667b: $52
    or d                                          ; $667c: $b2
    jp nz, Jump_000_1c7f                          ; $667d: $c2 $7f $1c

    sbc $73                                       ; $6680: $de $73
    ld [hl], l                                    ; $6682: $75
    cp b                                          ; $6683: $b8
    ld e, d                                       ; $6684: $5a
    sub l                                         ; $6685: $95
    jr nz, jr_039_66d1                            ; $6686: $20 $49

    ld [hl], l                                    ; $6688: $75
    jr jr_039_6668                                ; $6689: $18 $dd

    ld de, $c1d7                                  ; $668b: $11 $d7 $c1
    add $7e                                       ; $668e: $c6 $7e
    adc b                                         ; $6690: $88
    ld l, e                                       ; $6691: $6b
    bit 7, d                                      ; $6692: $cb $7a
    rst $00                                       ; $6694: $c7
    add [hl]                                      ; $6695: $86
    ret z                                         ; $6696: $c8

    db $10                                        ; $6697: $10
    jp nc, $a31c                                  ; $6698: $d2 $1c $a3

    inc de                                        ; $669b: $13
    sbc a                                         ; $669c: $9f
    ld a, b                                       ; $669d: $78
    ld [hl], l                                    ; $669e: $75
    dec e                                         ; $669f: $1d
    ld l, e                                       ; $66a0: $6b
    db $ec                                        ; $66a1: $ec
    add hl, bc                                    ; $66a2: $09
    ld e, a                                       ; $66a3: $5f
    or c                                          ; $66a4: $b1
    ld d, $8b                                     ; $66a5: $16 $8b
    ld d, [hl]                                    ; $66a7: $56
    and [hl]                                      ; $66a8: $a6
    inc d                                         ; $66a9: $14
    ld a, e                                       ; $66aa: $7b
    jr z, jr_039_66f1                             ; $66ab: $28 $44

    xor b                                         ; $66ad: $a8
    ld d, [hl]                                    ; $66ae: $56
    dec e                                         ; $66af: $1d
    ld a, a                                       ; $66b0: $7f
    call nz, $f017                                ; $66b1: $c4 $17 $f0
    ld hl, sp-$03                                 ; $66b4: $f8 $fd
    ld a, [bc]                                    ; $66b6: $0a
    rst $28                                       ; $66b7: $ef
    adc c                                         ; $66b8: $89
    adc a                                         ; $66b9: $8f
    ld a, d                                       ; $66ba: $7a
    rst $08                                       ; $66bb: $cf

jr_039_66bc:
    ld d, l                                       ; $66bc: $55
    ld b, a                                       ; $66bd: $47
    dec e                                         ; $66be: $1d
    db $eb                                        ; $66bf: $eb
    adc [hl]                                      ; $66c0: $8e
    ld hl, sp+$02                                 ; $66c1: $f8 $02
    sbc $db                                       ; $66c3: $de $db
    ld [hl], l                                    ; $66c5: $75
    or b                                          ; $66c6: $b0
    or c                                          ; $66c7: $b1
    rra                                           ; $66c8: $1f
    ld [c], a                                     ; $66c9: $e2
    jp c, Jump_039_5592                           ; $66ca: $da $92 $55

    dec l                                         ; $66cd: $2d
    ld [$d4a6], sp                                ; $66ce: $08 $a6 $d4

jr_039_66d1:
    sbc e                                         ; $66d1: $9b
    and $49                                       ; $66d2: $e6 $49
    xor d                                         ; $66d4: $aa
    rst $28                                       ; $66d5: $ef
    inc hl                                        ; $66d6: $23
    ld [hl], h                                    ; $66d7: $74
    cpl                                           ; $66d8: $2f
    cp $ba                                        ; $66d9: $fe $ba
    pop bc                                        ; $66db: $c1
    rra                                           ; $66dc: $1f
    db $f4                                        ; $66dd: $f4
    ld d, e                                       ; $66de: $53
    ld [$0b0e], a                                 ; $66df: $ea $0e $0b
    xor d                                         ; $66e2: $aa
    ld l, a                                       ; $66e3: $6f

jr_039_66e4:
    ld e, a                                       ; $66e4: $5f
    ret nz                                        ; $66e5: $c0

    ld e, e                                       ; $66e6: $5b
    sub $42                                       ; $66e7: $d6 $42
    ld a, d                                       ; $66e9: $7a
    rlca                                          ; $66ea: $07
    ld e, b                                       ; $66eb: $58
    sbc d                                         ; $66ec: $9a
    db $ec                                        ; $66ed: $ec
    db $d3                                        ; $66ee: $d3
    cp l                                          ; $66ef: $bd
    ld d, l                                       ; $66f0: $55

jr_039_66f1:
    xor e                                         ; $66f1: $ab
    ld a, e                                       ; $66f2: $7b
    jp nz, $ac57                                  ; $66f3: $c2 $57 $ac

    push bc                                       ; $66f6: $c5
    ld d, d                                       ; $66f7: $52
    or d                                          ; $66f8: $b2
    jp nz, Jump_000_1c7f                          ; $66f9: $c2 $7f $1c

    sbc $73                                       ; $66fc: $de $73
    ld [hl], l                                    ; $66fe: $75
    cp b                                          ; $66ff: $b8
    ld e, d                                       ; $6700: $5a
    sub l                                         ; $6701: $95
    jr nz, jr_039_674d                            ; $6702: $20 $49

    ld [hl], l                                    ; $6704: $75
    jr jr_039_66e4                                ; $6705: $18 $dd

    ld de, $c05f                                  ; $6707: $11 $5f $c0
    ld a, e                                       ; $670a: $7b
    cp e                                          ; $670b: $bb
    ld c, $36                                     ; $670c: $0e $36
    or $43                                        ; $670e: $f6 $43
    ld e, h                                       ; $6710: $5c
    ld e, e                                       ; $6711: $5b
    sub $3b                                       ; $6712: $d6 $3b
    ld [hl], $44                                  ; $6714: $36 $44
    add [hl]                                      ; $6716: $86
    sub b                                         ; $6717: $90
    halt                                          ; $6718: $76
    sbc [hl]                                      ; $6719: $9e
    push de                                       ; $671a: $d5
    push de                                       ; $671b: $d5
    xor d                                         ; $671c: $aa
    add a                                         ; $671d: $87
    ld b, d                                       ; $671e: $42
    add h                                         ; $671f: $84
    sbc $13                                       ; $6720: $de $13
    sbc a                                         ; $6722: $9f
    ld a, b                                       ; $6723: $78
    ld [hl], l                                    ; $6724: $75
    dec e                                         ; $6725: $1d
    ld l, e                                       ; $6726: $6b
    db $ec                                        ; $6727: $ec
    add hl, bc                                    ; $6728: $09
    ld e, a                                       ; $6729: $5f
    or c                                          ; $672a: $b1
    ld d, $8b                                     ; $672b: $16 $8b
    ld d, [hl]                                    ; $672d: $56
    and [hl]                                      ; $672e: $a6
    inc d                                         ; $672f: $14
    dec sp                                        ; $6730: $3b
    cp $88                                        ; $6731: $fe $88
    cpl                                           ; $6733: $2f
    ldh [$f1], a                                  ; $6734: $e0 $f1
    ei                                            ; $6736: $fb
    dec d                                         ; $6737: $15
    sbc $13                                       ; $6738: $de $13
    rra                                           ; $673a: $1f
    push af                                       ; $673b: $f5

jr_039_673c:
    sbc [hl]                                      ; $673c: $9e
    xor e                                         ; $673d: $ab
    adc [hl]                                      ; $673e: $8e
    ld a, [hl-]                                   ; $673f: $3a
    sub $1d                                       ; $6740: $d6 $1d
    pop af                                        ; $6742: $f1
    dec b                                         ; $6743: $05
    cp h                                          ; $6744: $bc
    or a                                          ; $6745: $b7
    db $eb                                        ; $6746: $eb
    ld h, b                                       ; $6747: $60
    ld h, e                                       ; $6748: $63
    ccf                                           ; $6749: $3f
    call nz, $25b5                                ; $674a: $c4 $b5 $25

jr_039_674d:
    xor e                                         ; $674d: $ab
    ld e, d                                       ; $674e: $5a
    db $10                                        ; $674f: $10
    ld c, h                                       ; $6750: $4c
    xor c                                         ; $6751: $a9
    scf                                           ; $6752: $37
    call $b301                                    ; $6753: $cd $01 $b3
    ld a, [de]                                    ; $6756: $1a
    ret z                                         ; $6757: $c8

    ret nc                                        ; $6758: $d0

    rst $08                                       ; $6759: $cf
    ld e, d                                       ; $675a: $5a
    ld a, [$c6d9]                                 ; $675b: $fa $d9 $c6
    ld h, d                                       ; $675e: $62
    add a                                         ; $675f: $87
    add hl, de                                    ; $6760: $19
    ldh [$dc], a                                  ; $6761: $e0 $dc
    db $e4                                        ; $6763: $e4
    cpl                                           ; $6764: $2f
    ld [hl-], a                                   ; $6765: $32
    ld h, $cd                                     ; $6766: $26 $cd
    ld bc, $85b3                                  ; $6768: $01 $b3 $85
    ld e, c                                       ; $676b: $59
    ld c, e                                       ; $676c: $4b
    ld b, a                                       ; $676d: $47
    ld c, d                                       ; $676e: $4a
    jp c, Jump_000_1751                           ; $676f: $da $51 $17

    add b                                         ; $6772: $80
    push hl                                       ; $6773: $e5
    sbc h                                         ; $6774: $9c
    inc bc                                        ; $6775: $03
    call z, $ef70                                 ; $6776: $cc $70 $ef
    ld c, d                                       ; $6779: $4a
    or h                                          ; $677a: $b4
    or a                                          ; $677b: $b7
    ld a, a                                       ; $677c: $7f
    xor e                                         ; $677d: $ab
    dec l                                         ; $677e: $2d
    ld c, l                                       ; $677f: $4d
    cp [hl]                                       ; $6780: $be
    or d                                          ; $6781: $b2
    ei                                            ; $6782: $fb
    rla                                           ; $6783: $17
    ret nz                                        ; $6784: $c0

    adc c                                         ; $6785: $89
    sbc c                                         ; $6786: $99
    db $fc                                        ; $6787: $fc
    add hl, hl                                    ; $6788: $29
    ld [$2412], a                                 ; $6789: $ea $12 $24
    ld l, c                                       ; $678c: $69
    or d                                          ; $678d: $b2
    ld c, a                                       ; $678e: $4f
    or a                                          ; $678f: $b7
    jr c, jr_039_673c                             ; $6790: $38 $aa

    ld d, [hl]                                    ; $6792: $56
    rst $30                                       ; $6793: $f7
    add h                                         ; $6794: $84
    xor a                                         ; $6795: $af
    ld e, b                                       ; $6796: $58
    adc e                                         ; $6797: $8b
    and e                                         ; $6798: $a3
    ld a, a                                       ; $6799: $7f
    inc sp                                        ; $679a: $33
    rst $28                                       ; $679b: $ef
    ld [hl], l                                    ; $679c: $75
    inc e                                         ; $679d: $1c
    sbc $34                                       ; $679e: $de $34
    rlca                                          ; $67a0: $07
    inc hl                                        ; $67a1: $23
    inc bc                                        ; $67a2: $03
    ld c, d                                       ; $67a3: $4a
    adc b                                         ; $67a4: $88
    push de                                       ; $67a5: $d5
    ld l, d                                       ; $67a6: $6a
    ld a, [de]                                    ; $67a7: $1a
    db $fc                                        ; $67a8: $fc
    ld a, c                                       ; $67a9: $79
    sra b                                         ; $67aa: $cb $28
    and h                                         ; $67ac: $a4
    ld [hl], c                                    ; $67ad: $71
    cp h                                          ; $67ae: $bc
    add hl, sp                                    ; $67af: $39
    ld b, e                                       ; $67b0: $43
    add hl, hl                                    ; $67b1: $29
    xor e                                         ; $67b2: $ab
    or b                                          ; $67b3: $b0
    ld c, c                                       ; $67b4: $49
    ld [$a960], a                                 ; $67b5: $ea $60 $a9
    push af                                       ; $67b8: $f5
    dec h                                         ; $67b9: $25
    adc $01                                       ; $67ba: $ce $01
    ld c, h                                       ; $67bc: $4c
    cp $14                                        ; $67bd: $fe $14
    and l                                         ; $67bf: $a5
    ld c, $b0                                     ; $67c0: $0e $b0
    db $e4                                        ; $67c2: $e4
    ld c, c                                       ; $67c3: $49
    pop bc                                        ; $67c4: $c1
    ld e, a                                       ; $67c5: $5f
    or l                                          ; $67c6: $b5
    ld [de], a                                    ; $67c7: $12
    cp $10                                        ; $67c8: $fe $10
    ld h, h                                       ; $67ca: $64
    db $ec                                        ; $67cb: $ec
    inc bc                                        ; $67cc: $03
    cp d                                          ; $67cd: $ba
    ld d, [hl]                                    ; $67ce: $56
    xor $f0                                       ; $67cf: $ee $f0
    or l                                          ; $67d1: $b5
    ld h, h                                       ; $67d2: $64
    pop hl                                        ; $67d3: $e1
    inc [hl]                                      ; $67d4: $34
    rlca                                          ; $67d5: $07
    di                                            ; $67d6: $f3
    adc b                                         ; $67d7: $88
    ld h, h                                       ; $67d8: $64
    reti                                          ; $67d9: $d9


    ld a, e                                       ; $67da: $7b
    ld l, a                                       ; $67db: $6f
    ld c, b                                       ; $67dc: $48
    sub e                                         ; $67dd: $93
    ld a, $36                                     ; $67de: $3e $36
    db $10                                        ; $67e0: $10
    ld a, d                                       ; $67e1: $7a
    ld [$6faf], a                                 ; $67e2: $ea $af $6f
    and [hl]                                      ; $67e5: $a6
    rst $28                                       ; $67e6: $ef
    inc de                                        ; $67e7: $13
    jr nc, jr_039_680e                            ; $67e8: $30 $24

    rlca                                          ; $67ea: $07

jr_039_67eb:
    daa                                           ; $67eb: $27
    ld a, h                                       ; $67ec: $7c
    push bc                                       ; $67ed: $c5
    ld e, d                                       ; $67ee: $5a
    ld b, b                                       ; $67ef: $40
    cp $de                                        ; $67f0: $fe $de
    call nz, $0f64                                ; $67f2: $c4 $64 $0f
    ld b, b                                       ; $67f5: $40
    ld c, $b3                                     ; $67f6: $0e $b3
    ret nc                                        ; $67f8: $d0

    jr jr_039_67eb                                ; $67f9: $18 $f0

    ld [$072b], a                                 ; $67fb: $ea $2b $07
    di                                            ; $67fe: $f3
    ld e, d                                       ; $67ff: $5a
    adc [hl]                                      ; $6800: $8e
    and b                                         ; $6801: $a0
    inc [hl]                                      ; $6802: $34
    ld l, $85                                     ; $6803: $2e $85
    add hl, sp                                    ; $6805: $39
    di                                            ; $6806: $f3
    ld e, d                                       ; $6807: $5a
    ld [hl], h                                    ; $6808: $74
    inc e                                         ; $6809: $1c
    ld b, c                                       ; $680a: $41
    ld l, c                                       ; $680b: $69
    ld e, h                                       ; $680c: $5c
    ld a, [bc]                                    ; $680d: $0a

jr_039_680e:
    ld [hl], e                                    ; $680e: $73
    add hl, bc                                    ; $680f: $09
    res 7, l                                      ; $6810: $cb $bd
    ld a, [hl-]                                   ; $6812: $3a
    xor [hl]                                      ; $6813: $ae
    inc e                                         ; $6814: $1c
    call $cd01                                    ; $6815: $cd $01 $cd
    ld bc, $01cd                                  ; $6818: $01 $cd $01
    call $cd01                                    ; $681b: $cd $01 $cd
    ld bc, $01cd                                  ; $681e: $01 $cd $01
    call $cd01                                    ; $6821: $cd $01 $cd
    ld bc, $01cd                                  ; $6824: $01 $cd $01
    call $cd01                                    ; $6827: $cd $01 $cd
    ld bc, $01cd                                  ; $682a: $01 $cd $01
    call $cd01                                    ; $682d: $cd $01 $cd
    ld bc, $01cd                                  ; $6830: $01 $cd $01
    call $cd01                                    ; $6833: $cd $01 $cd
    ld bc, $01cd                                  ; $6836: $01 $cd $01
    call $cd01                                    ; $6839: $cd $01 $cd
    ld bc, $01cd                                  ; $683c: $01 $cd $01
    call $cd01                                    ; $683f: $cd $01 $cd
    ld bc, $01cd                                  ; $6842: $01 $cd $01
    call $cd01                                    ; $6845: $cd $01 $cd
    ld bc, $01cd                                  ; $6848: $01 $cd $01
    call $cd01                                    ; $684b: $cd $01 $cd
    ld bc, $01cd                                  ; $684e: $01 $cd $01
    call $cd01                                    ; $6851: $cd $01 $cd
    ld bc, $01cd                                  ; $6854: $01 $cd $01
    call $cd01                                    ; $6857: $cd $01 $cd
    ld bc, $01cd                                  ; $685a: $01 $cd $01
    call $cd01                                    ; $685d: $cd $01 $cd
    ld bc, $01cd                                  ; $6860: $01 $cd $01
    call $cd01                                    ; $6863: $cd $01 $cd
    ld bc, $01cd                                  ; $6866: $01 $cd $01
    adc h                                         ; $6869: $8c
    adc $bc                                       ; $686a: $ce $bc
    ld b, a                                       ; $686c: $47
    nop                                           ; $686d: $00
    sbc b                                         ; $686e: $98
    and $23                                       ; $686f: $e6 $23
    sbc l                                         ; $6871: $9d
    db $fd                                        ; $6872: $fd
    add c                                         ; $6873: $81
    db $eb                                        ; $6874: $eb
    ld l, [hl]                                    ; $6875: $6e
    sbc c                                         ; $6876: $99
    ld a, b                                       ; $6877: $78
    ld l, [hl]                                    ; $6878: $6e
    ld sp, hl                                     ; $6879: $f9
    ld a, e                                       ; $687a: $7b
    rlc c                                         ; $687b: $cb $01
    ld c, h                                       ; $687d: $4c
    dec [hl]                                      ; $687e: $35
    ld h, b                                       ; $687f: $60
    sbc c                                         ; $6880: $99
    ld a, b                                       ; $6881: $78
    and h                                         ; $6882: $a4
    or e                                          ; $6883: $b3
    ccf                                           ; $6884: $3f
    ld [hl], b                                    ; $6885: $70
    db $dd                                        ; $6886: $dd
    dec l                                         ; $6887: $2d
    inc de                                        ; $6888: $13
    rst $08                                       ; $6889: $cf
    dec l                                         ; $688a: $2d
    ld a, a                                       ; $688b: $7f
    ld l, a                                       ; $688c: $6f
    add hl, sp                                    ; $688d: $39
    ret                                           ; $688e: $c9


    ld d, $36                                     ; $688f: $16 $36
    ret z                                         ; $6891: $c8

    and c                                         ; $6892: $a1
    daa                                           ; $6893: $27
    ld a, $e1                                     ; $6894: $3e $e1
    dec hl                                        ; $6896: $2b
    sub $02                                       ; $6897: $d6 $02
    ld a, [c]                                     ; $6899: $f2
    rst $30                                       ; $689a: $f7
    sub [hl]                                      ; $689b: $96
    inc bc                                        ; $689c: $03
    di                                            ; $689d: $f3
    ld b, $fc                                     ; $689e: $06 $fc
    inc hl                                        ; $68a0: $23
    ld c, [hl]                                    ; $68a1: $4e
    sbc a                                         ; $68a2: $9f
    ld hl, sp-$7c                                 ; $68a3: $f8 $84
    xor a                                         ; $68a5: $af
    ld e, b                                       ; $68a6: $58
    dec bc                                        ; $68a7: $0b
    ret z                                         ; $68a8: $c8

    rst $18                                       ; $68a9: $df
    ld e, e                                       ; $68aa: $5b
    ld c, $43                                     ; $68ab: $0e $43
    dec d                                         ; $68ad: $15
    ld sp, $3890                                  ; $68ae: $31 $90 $38

Call_039_68b1:
    jr nc, jr_039_6913                            ; $68b1: $30 $60

    ld a, [bc]                                    ; $68b3: $0a
    ld a, [c]                                     ; $68b4: $f2
    rst $30                                       ; $68b5: $f7
    sub [hl]                                      ; $68b6: $96
    inc bc                                        ; $68b7: $03
    ld c, h                                       ; $68b8: $4c
    dec [hl]                                      ; $68b9: $35
    ld h, b                                       ; $68ba: $60
    sbc c                                         ; $68bb: $99
    ld a, b                                       ; $68bc: $78
    xor b                                         ; $68bd: $a8
    ld [hl+], a                                   ; $68be: $22
    ld b, $12                                     ; $68bf: $06 $12
    rlca                                          ; $68c1: $07
    ld b, $4c                                     ; $68c2: $06 $4c
    ld b, c                                       ; $68c4: $41
    cp $de                                        ; $68c5: $fe $de
    ld [hl], d                                    ; $68c7: $72
    call $cd01                                    ; $68c8: $cd $01 $cd
    ld bc, $01cd                                  ; $68cb: $01 $cd $01
    call $cd01                                    ; $68ce: $cd $01 $cd
    ld bc, $01cd                                  ; $68d1: $01 $cd $01
    call $cd01                                    ; $68d4: $cd $01 $cd
    ld bc, $01cd                                  ; $68d7: $01 $cd $01
    call $cd01                                    ; $68da: $cd $01 $cd
    ld bc, $50b3                                  ; $68dd: $01 $b3 $50
    push bc                                       ; $68e0: $c5
    rst $18                                       ; $68e1: $df
    ei                                            ; $68e2: $fb
    xor e                                         ; $68e3: $ab
    ld e, c                                       ; $68e4: $59
    push bc                                       ; $68e5: $c5
    ld e, a                                       ; $68e6: $5f
    ld c, $cd                                     ; $68e7: $0e $cd
    ld bc, $01cd                                  ; $68e9: $01 $cd $01
    call $cd01                                    ; $68ec: $cd $01 $cd
    ld bc, $01cd                                  ; $68ef: $01 $cd $01
    call $cd01                                    ; $68f2: $cd $01 $cd
    ld bc, $01cd                                  ; $68f5: $01 $cd $01
    call $cd01                                    ; $68f8: $cd $01 $cd
    ld bc, $01cd                                  ; $68fb: $01 $cd $01
    call $cd01                                    ; $68fe: $cd $01 $cd
    ld bc, $01cd                                  ; $6901: $01 $cd $01
    call $cd01                                    ; $6904: $cd $01 $cd
    ld bc, $01cd                                  ; $6907: $01 $cd $01
    call $cd01                                    ; $690a: $cd $01 $cd
    ld bc, $01cd                                  ; $690d: $01 $cd $01
    call Call_039_4301                            ; $6910: $cd $01 $43

jr_039_6913:
    add hl, hl                                    ; $6913: $29
    sbc l                                         ; $6914: $9d
    sbc b                                         ; $6915: $98
    pop de                                        ; $6916: $d1
    ret z                                         ; $6917: $c8

    rst $18                                       ; $6918: $df
    pop af                                        ; $6919: $f1
    ld sp, hl                                     ; $691a: $f9
    ld l, l                                       ; $691b: $6d
    ld [c], a                                     ; $691c: $e2
    ld h, c                                       ; $691d: $61
    rst $10                                       ; $691e: $d7
    ld e, e                                       ; $691f: $5b
    ld l, a                                       ; $6920: $6f
    ld c, $cd                                     ; $6921: $0e $cd
    ld bc, $8cc3                                  ; $6923: $01 $c3 $8c
    ld h, b                                       ; $6926: $60
    jp hl                                         ; $6927: $e9


    jr nc, @-$04                                  ; $6928: $30 $fa

    pop de                                        ; $692a: $d1
    ld a, e                                       ; $692b: $7b
    ei                                            ; $692c: $fb
    ld a, [hl+]                                   ; $692d: $2a
    ld d, e                                       ; $692e: $53
    rst $00                                       ; $692f: $c7
    ld de, $2339                                  ; $6930: $11 $39 $23
    ld c, b                                       ; $6933: $48
    jp nz, $0e06                                  ; $6934: $c2 $06 $0e

    ld a, h                                       ; $6937: $7c
    inc b                                         ; $6938: $04
    add e                                         ; $6939: $83
    scf                                           ; $693a: $37

Jump_039_693b:
    rlca                                          ; $693b: $07
    inc hl                                        ; $693c: $23
    adc h                                         ; $693d: $8c
    ld l, b                                       ; $693e: $68
    ld a, d                                       ; $693f: $7a
    ld d, e                                       ; $6940: $53
    db $fc                                        ; $6941: $fc
    ld a, c                                       ; $6942: $79
    ld [hl], e                                    ; $6943: $73
    or e                                          ; $6944: $b3
    db $fd                                        ; $6945: $fd
    sbc e                                         ; $6946: $9b
    inc b                                         ; $6947: $04
    sub b                                         ; $6948: $90
    daa                                           ; $6949: $27
    ld a, $e1                                     ; $694a: $3e $e1
    dec hl                                        ; $694c: $2b
    sub $82                                       ; $694d: $d6 $82
    sub b                                         ; $694f: $90
    ret z                                         ; $6950: $c8

    ld a, [hl-]                                   ; $6951: $3a
    rlca                                          ; $6952: $07
    call $cd01                                    ; $6953: $cd $01 $cd
    ld bc, $01cd                                  ; $6956: $01 $cd $01
    call $cd01                                    ; $6959: $cd $01 $cd
    ld bc, $01cd                                  ; $695c: $01 $cd $01
    call $cd01                                    ; $695f: $cd $01 $cd
    ld bc, $01cd                                  ; $6962: $01 $cd $01
    call $cd01                                    ; $6965: $cd $01 $cd
    ld bc, $01cd                                  ; $6968: $01 $cd $01
    call $cd01                                    ; $696b: $cd $01 $cd
    ld bc, $01cd                                  ; $696e: $01 $cd $01
    call $cd01                                    ; $6971: $cd $01 $cd
    ld bc, $01cd                                  ; $6974: $01 $cd $01
    or e                                          ; $6977: $b3
    ret nc                                        ; $6978: $d0

    or c                                          ; $6979: $b1
    pop bc                                        ; $697a: $c1
    add hl, sp                                    ; $697b: $39
    call $cd01                                    ; $697c: $cd $01 $cd
    ld bc, $01cd                                  ; $697f: $01 $cd $01
    call $cd01                                    ; $6982: $cd $01 $cd
    ld bc, $ffff                                  ; $6985: $01 $ff $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff

Jump_039_6b04:
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff

Call_039_6bbb:
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff

Jump_039_6c75:
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff

Jump_039_6f67:
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff

Call_039_70ea:
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff

Jump_039_7144:
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff

Call_039_7301:
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff

Jump_039_7314:
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff
    rst $38                                       ; $74ff: $ff

Jump_039_7500:
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff

Jump_039_7564:
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff

Call_039_776f:
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff

Call_039_7991:
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff

Jump_039_7bd2:
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff

Call_039_7cac:
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
    rst $38                                       ; $7f69: $ff
    rst $38                                       ; $7f6a: $ff
    rst $38                                       ; $7f6b: $ff
    rst $38                                       ; $7f6c: $ff
    rst $38                                       ; $7f6d: $ff
    rst $38                                       ; $7f6e: $ff
    rst $38                                       ; $7f6f: $ff
    rst $38                                       ; $7f70: $ff
    rst $38                                       ; $7f71: $ff
    rst $38                                       ; $7f72: $ff
    rst $38                                       ; $7f73: $ff
    rst $38                                       ; $7f74: $ff
    rst $38                                       ; $7f75: $ff
    rst $38                                       ; $7f76: $ff
    rst $38                                       ; $7f77: $ff
    rst $38                                       ; $7f78: $ff
    rst $38                                       ; $7f79: $ff
    rst $38                                       ; $7f7a: $ff
    rst $38                                       ; $7f7b: $ff
    rst $38                                       ; $7f7c: $ff
    rst $38                                       ; $7f7d: $ff
    rst $38                                       ; $7f7e: $ff
    rst $38                                       ; $7f7f: $ff
    rst $38                                       ; $7f80: $ff
    rst $38                                       ; $7f81: $ff
    rst $38                                       ; $7f82: $ff
    rst $38                                       ; $7f83: $ff
    rst $38                                       ; $7f84: $ff
    rst $38                                       ; $7f85: $ff
    rst $38                                       ; $7f86: $ff
    rst $38                                       ; $7f87: $ff
    rst $38                                       ; $7f88: $ff
    rst $38                                       ; $7f89: $ff
    rst $38                                       ; $7f8a: $ff
    rst $38                                       ; $7f8b: $ff
    rst $38                                       ; $7f8c: $ff
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
