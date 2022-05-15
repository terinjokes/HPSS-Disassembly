; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

    ld b, h                                       ; $4000: $44
    ld c, c                                       ; $4001: $49
    ld d, a                                       ; $4002: $57
    cp [hl]                                       ; $4003: $be
    ld l, [hl]                                    ; $4004: $6e
    ld d, $ab                                     ; $4005: $16 $ab
    cpl                                           ; $4007: $2f
    dec de                                        ; $4008: $1b
    ld e, c                                       ; $4009: $59
    ld l, h                                       ; $400a: $6c
    ld d, $3b                                     ; $400b: $16 $3b
    ld [hl], b                                    ; $400d: $70
    dec a                                         ; $400e: $3d
    ld [hl], c                                    ; $400f: $71
    call nc, $8f9e                                ; $4010: $d4 $9e $8f
    ld b, h                                       ; $4013: $44
    call c, $db08                                 ; $4014: $dc $08 $db
    db $e4                                        ; $4017: $e4
    ld [c], a                                     ; $4018: $e2
    dec e                                         ; $4019: $1d
    and e                                         ; $401a: $a3
    ld [c], a                                     ; $401b: $e2
    ld h, [hl]                                    ; $401c: $66
    ld e, a                                       ; $401d: $5f
    inc d                                         ; $401e: $14
    halt                                          ; $401f: $76
    ld d, $5a                                     ; $4020: $16 $5a
    and d                                         ; $4022: $a2
    ld l, $ad                                     ; $4023: $2e $ad
    ld d, c                                       ; $4025: $51

jr_044_4026:
    db $fd                                        ; $4026: $fd
    db $30, $d5                                   ; $4027: $30 $d5
    jp Jump_044_5fa6                              ; $4029: $c3 $a6 $5f


    ld bc, $5749                                  ; $402c: $01 $49 $57
    ld l, l                                       ; $402f: $6d
    ld a, [hl]                                    ; $4030: $7e
    dec [hl]                                      ; $4031: $35
    ld h, l                                       ; $4032: $65
    ld b, d                                       ; $4033: $42
    sbc l                                         ; $4034: $9d
    cp e                                          ; $4035: $bb
    ld [hl-], a                                   ; $4036: $32
    add [hl]                                      ; $4037: $86
    jr z, jr_044_4026                             ; $4038: $28 $ec

    ld hl, sp-$3e                                 ; $403a: $f8 $c2
    ld d, $08                                     ; $403c: $16 $08
    inc hl                                        ; $403e: $23
    db $ed                                        ; $403f: $ed
    cp a                                          ; $4040: $bf
    sbc l                                         ; $4041: $9d
    ld c, h                                       ; $4042: $4c
    call nc, $d3c5                                ; $4043: $d4 $c5 $d3
    and [hl]                                      ; $4046: $a6
    add d                                         ; $4047: $82
    push af                                       ; $4048: $f5
    dec hl                                        ; $4049: $2b
    ld c, c                                       ; $404a: $49
    ld d, a                                       ; $404b: $57
    ld l, l                                       ; $404c: $6d
    adc [hl]                                      ; $404d: $8e
    xor b                                         ; $404e: $a8
    ld a, [$3b73]                                 ; $404f: $fa $73 $3b
    sbc [hl]                                      ; $4052: $9e
    ld d, e                                       ; $4053: $53
    dec e                                         ; $4054: $1d
    ccf                                           ; $4055: $3f
    ld c, a                                       ; $4056: $4f
    ld d, $58                                     ; $4057: $16 $58
    or h                                          ; $4059: $b4
    ld a, l                                       ; $405a: $7d
    ld l, c                                       ; $405b: $69
    ld e, e                                       ; $405c: $5b
    call c, $a30b                                 ; $405d: $dc $0b $a3
    ld e, h                                       ; $4060: $5c
    ld [hl], l                                    ; $4061: $75
    pop af                                        ; $4062: $f1
    ld e, l                                       ; $4063: $5d
    ld h, b                                       ; $4064: $60
    ld d, a                                       ; $4065: $57
    ld b, c                                       ; $4066: $41
    ld hl, sp-$09                                 ; $4067: $f8 $f7
    push af                                       ; $4069: $f5
    dec hl                                        ; $406a: $2b
    ld c, c                                       ; $406b: $49
    ld d, a                                       ; $406c: $57
    ld l, l                                       ; $406d: $6d
    dec bc                                        ; $406e: $0b
    add hl, bc                                    ; $406f: $09
    pop hl                                        ; $4070: $e1
    ld sp, $4144                                  ; $4071: $31 $44 $41
    db $db                                        ; $4074: $db
    sub a                                         ; $4075: $97
    or [hl]                                       ; $4076: $b6
    push bc                                       ; $4077: $c5
    cp l                                          ; $4078: $bd
    jr nc, @-$34                                  ; $4079: $30 $ca

    ld d, l                                       ; $407b: $55
    sub a                                         ; $407c: $97
    adc [hl]                                      ; $407d: $8e
    ld a, [hl]                                    ; $407e: $7e
    ld l, a                                       ; $407f: $6f
    ld l, b                                       ; $4080: $68
    or $c2                                        ; $4081: $f6 $c2
    rst $10                                       ; $4083: $d7
    xor a                                         ; $4084: $af
    ld c, c                                       ; $4085: $49
    ld d, a                                       ; $4086: $57
    xor l                                         ; $4087: $ad
    ld d, d                                       ; $4088: $52
    or [hl]                                       ; $4089: $b6
    ld [hl], e                                    ; $408a: $73
    adc b                                         ; $408b: $88
    cp d                                          ; $408c: $ba
    ld a, b                                       ; $408d: $78
    or h                                          ; $408e: $b4
    dec l                                         ; $408f: $2d
    xor $85                                       ; $4090: $ee $85
    sbc a                                         ; $4092: $9f
    sub c                                         ; $4093: $91
    db $db                                        ; $4094: $db
    ld hl, $b0a7                                  ; $4095: $21 $a7 $b0
    ld c, l                                       ; $4098: $4d
    cp h                                          ; $4099: $bc
    ld h, e                                       ; $409a: $63
    push de                                       ; $409b: $d5
    ld l, e                                       ; $409c: $6b
    jp c, Jump_044_478d                           ; $409d: $da $8d $47

    cp a                                          ; $40a0: $bf
    ld [bc], a                                    ; $40a1: $02
    ld c, c                                       ; $40a2: $49

jr_044_40a3:
    ld d, a                                       ; $40a3: $57
    ld l, l                                       ; $40a4: $6d
    adc [hl]                                      ; $40a5: $8e
    xor b                                         ; $40a6: $a8
    ld a, [$3fb3]                                 ; $40a7: $fa $b3 $3f
    cp [hl]                                       ; $40aa: $be
    db $e3                                        ; $40ab: $e3
    ld c, $5c                                     ; $40ac: $0e $5c
    ld c, a                                       ; $40ae: $4f
    ld d, $58                                     ; $40af: $16 $58
    or $a7                                        ; $40b1: $f6 $a7
    and e                                         ; $40b3: $a3
    di                                            ; $40b4: $f3
    adc [hl]                                      ; $40b5: $8e
    ld d, l                                       ; $40b6: $55
    rra                                           ; $40b7: $1f
    add l                                         ; $40b8: $85
    cp l                                          ; $40b9: $bd
    ld de, $365f                                  ; $40ba: $11 $5f $36
    ld l, b                                       ; $40bd: $68
    ld a, [hl]                                    ; $40be: $7e
    db $f4                                        ; $40bf: $f4
    dec hl                                        ; $40c0: $2b
    ld c, c                                       ; $40c1: $49
    ld d, a                                       ; $40c2: $57
    ld l, l                                       ; $40c3: $6d
    ld a, [hl]                                    ; $40c4: $7e
    dec [hl]                                      ; $40c5: $35
    ld h, l                                       ; $40c6: $65
    ld a, [c]                                     ; $40c7: $f2
    ld d, l                                       ; $40c8: $55
    push af                                       ; $40c9: $f5
    ld b, h                                       ; $40ca: $44
    ld [c], a                                     ; $40cb: $e2
    ld l, e                                       ; $40cc: $6b
    and a                                         ; $40cd: $a7
    cp l                                          ; $40ce: $bd
    ldh a, [$f5]                                  ; $40cf: $f0 $f5
    jp hl                                         ; $40d1: $e9


    call nz, $2bb9                                ; $40d2: $c4 $b9 $2b
    ret z                                         ; $40d5: $c8

    db $ed                                        ; $40d6: $ed
    ld l, b                                       ; $40d7: $68
    and a                                         ; $40d8: $a7
    cp l                                          ; $40d9: $bd
    jr nc, jr_044_412e                            ; $40da: $30 $52

    dec de                                        ; $40dc: $1b
    and d                                         ; $40dd: $a2
    ld e, l                                       ; $40de: $5d
    pop hl                                        ; $40df: $e1
    xor b                                         ; $40e0: $a8
    ld c, e                                       ; $40e1: $4b
    ld l, e                                       ; $40e2: $6b
    ld l, a                                       ; $40e3: $6f
    jp nz, $f123                                  ; $40e4: $c2 $23 $f1

    and l                                         ; $40e7: $a5
    dec bc                                        ; $40e8: $0b
    db $ec                                        ; $40e9: $ec
    add $d0                                       ; $40ea: $c6 $d0
    xor a                                         ; $40ec: $af
    ld c, c                                       ; $40ed: $49
    ld d, a                                       ; $40ee: $57
    ld [hl], l                                    ; $40ef: $75
    db $ed                                        ; $40f0: $ed
    xor d                                         ; $40f1: $aa
    rst $08                                       ; $40f2: $cf
    ld [bc], a                                    ; $40f3: $02
    dec hl                                        ; $40f4: $2b
    inc hl                                        ; $40f5: $23
    sbc a                                         ; $40f6: $9f
    rrca                                          ; $40f7: $0f
    db $db                                        ; $40f8: $db
    rla                                           ; $40f9: $17
    ld [hl], d                                    ; $40fa: $72
    or $1b                                        ; $40fb: $f6 $1b
    or d                                          ; $40fd: $b2
    dec a                                         ; $40fe: $3d
    ld e, d                                       ; $40ff: $5a
    push hl                                       ; $4100: $e5
    db $fd                                        ; $4101: $fd
    jp nz, $26e7                                  ; $4102: $c2 $e7 $26

    add l                                         ; $4105: $85
    add [hl]                                      ; $4106: $86
    ld c, d                                       ; $4107: $4a
    xor d                                         ; $4108: $aa
    sub a                                         ; $4109: $97
    ld [hl], e                                    ; $410a: $73
    inc de                                        ; $410b: $13
    ld [hl], l                                    ; $410c: $75
    add hl, hl                                    ; $410d: $29
    ld l, [hl]                                    ; $410e: $6e
    sub [hl]                                      ; $410f: $96
    rst $28                                       ; $4110: $ef
    ld d, a                                       ; $4111: $57
    ld c, c                                       ; $4112: $49
    ld d, a                                       ; $4113: $57
    db $ed                                        ; $4114: $ed
    cp a                                          ; $4115: $bf
    ld [hl], $71                                  ; $4116: $36 $71
    daa                                           ; $4118: $27
    jr z, jr_044_40a3                             ; $4119: $28 $88

    di                                            ; $411b: $f3
    inc hl                                        ; $411c: $23
    push bc                                       ; $411d: $c5
    call $f562                                    ; $411e: $cd $62 $f5
    push hl                                       ; $4121: $e5
    or d                                          ; $4122: $b2
    ld c, h                                       ; $4123: $4c
    add hl, hl                                    ; $4124: $29
    and a                                         ; $4125: $a7
    cp a                                          ; $4126: $bf
    ld a, l                                       ; $4127: $7d
    cp c                                          ; $4128: $b9
    ld l, d                                       ; $4129: $6a
    add hl, sp                                    ; $412a: $39
    ld l, b                                       ; $412b: $68
    cp $cb                                        ; $412c: $fe $cb

jr_044_412e:
    ld [bc], a                                    ; $412e: $02
    bit 0, [hl]                                   ; $412f: $cb $46
    add sp, -$70                                  ; $4131: $e8 $90
    rra                                           ; $4133: $1f
    ld [hl], l                                    ; $4134: $75
    xor c                                         ; $4135: $a9
    dec bc                                        ; $4136: $0b

jr_044_4137:
    ld a, [hl]                                    ; $4137: $7e
    ld d, e                                       ; $4138: $53
    sub e                                         ; $4139: $93

jr_044_413a:
    sub e                                         ; $413a: $93
    inc l                                         ; $413b: $2c
    or e                                          ; $413c: $b3
    ld c, c                                       ; $413d: $49
    jr jr_044_413a                                ; $413e: $18 $fa

    dec d                                         ; $4140: $15
    ld c, c                                       ; $4141: $49
    ld d, a                                       ; $4142: $57
    ld l, l                                       ; $4143: $6d
    adc [hl]                                      ; $4144: $8e
    xor b                                         ; $4145: $a8
    ld h, a                                       ; $4146: $67
    dec sp                                        ; $4147: $3b
    add a                                         ; $4148: $87
    jr z, jr_044_4137                             ; $4149: $28 $ec

    db $fd                                        ; $414b: $fd
    pop af                                        ; $414c: $f1
    dec e                                         ; $414d: $1d
    ld [hl], a                                    ; $414e: $77
    ldh [$7a], a                                  ; $414f: $e0 $7a
    or d                                          ; $4151: $b2
    ret nz                                        ; $4152: $c0

    or d                                          ; $4153: $b2

Jump_044_4154:
    ld de, $365f                                  ; $4154: $11 $5f $36
    ld l, b                                       ; $4157: $68
    ld a, [hl]                                    ; $4158: $7e
    and h                                         ; $4159: $a4
    ld l, l                                       ; $415a: $6d
    ld d, c                                       ; $415b: $51
    and a                                         ; $415c: $a7
    ld b, c                                       ; $415d: $41
    ld hl, sp-$06                                 ; $415e: $f8 $fa
    dec d                                         ; $4160: $15
    ld c, c                                       ; $4161: $49
    ld d, a                                       ; $4162: $57
    dec e                                         ; $4163: $1d
    dec e                                         ; $4164: $1d
    ld b, e                                       ; $4165: $43
    jr z, jr_044_41b7                             ; $4166: $28 $4f

    or [hl]                                       ; $4168: $b6
    rst $00                                       ; $4169: $c7
    add hl, bc                                    ; $416a: $09
    add hl, bc                                    ; $416b: $09
    pop hl                                        ; $416c: $e1
    ld sp, $5d44                                  ; $416d: $31 $44 $5d
    ld a, [bc]                                    ; $4170: $0a
    ld sp, hl                                     ; $4171: $f9
    halt                                          ; $4172: $76
    rst $08                                       ; $4173: $cf
    adc b                                         ; $4174: $88
    ld [hl], a                                    ; $4175: $77
    xor h                                         ; $4176: $ac
    ld b, d                                       ; $4177: $42
    call nc, $faa5                                ; $4178: $d4 $a5 $fa
    dec a                                         ; $417b: $3d
    adc $f9                                       ; $417c: $ce $f9
    ld l, a                                       ; $417e: $6f
    add d                                         ; $417f: $82
    inc d                                         ; $4180: $14
    ld [hl], $68                                  ; $4181: $36 $68
    inc hl                                        ; $4183: $23
    or b                                          ; $4184: $b0
    ld b, e                                       ; $4185: $43
    cp a                                          ; $4186: $bf
    ld [bc], a                                    ; $4187: $02
    ld c, c                                       ; $4188: $49
    ld d, a                                       ; $4189: $57
    cp [hl]                                       ; $418a: $be
    ld h, e                                       ; $418b: $63
    ret c                                         ; $418c: $d8

    ei                                            ; $418d: $fb
    dec bc                                        ; $418e: $0b
    db $db                                        ; $418f: $db
    ld b, a                                       ; $4190: $47
    ld e, l                                       ; $4191: $5d
    ld a, [hl-]                                   ; $4192: $3a
    ld b, d                                       ; $4193: $42
    ld e, d                                       ; $4194: $5a
    dec [hl]                                      ; $4195: $35
    ld l, [hl]                                    ; $4196: $6e
    and b                                         ; $4197: $a0
    adc a                                         ; $4198: $8f
    cpl                                           ; $4199: $2f
    dec de                                        ; $419a: $1b
    or h                                          ; $419b: $b4
    adc a                                         ; $419c: $8f
    jp nz, $fb4e                                  ; $419d: $c2 $4e $fb

    cp a                                          ; $41a0: $bf
    ld de, $5044                                  ; $41a1: $11 $44 $50
    sbc l                                         ; $41a4: $9d
    ei                                            ; $41a5: $fb
    xor b                                         ; $41a6: $a8
    ld c, e                                       ; $41a7: $4b
    ei                                            ; $41a8: $fb
    or b                                          ; $41a9: $b0
    ld a, l                                       ; $41aa: $7d
    ld [hl-], a                                   ; $41ab: $32
    db $fd                                        ; $41ac: $fd
    ld a, [bc]                                    ; $41ad: $0a
    ld c, c                                       ; $41ae: $49
    ld d, a                                       ; $41af: $57
    ld l, l                                       ; $41b0: $6d
    jp nc, Jump_000_2f54                          ; $41b1: $d2 $54 $2f

    ld [$f279], a                                 ; $41b4: $ea $79 $f2

jr_044_41b7:
    ld a, [hl+]                                   ; $41b7: $2a
    xor l                                         ; $41b8: $ad
    ld [de], a                                    ; $41b9: $12
    cp e                                          ; $41ba: $bb
    ld a, l                                       ; $41bb: $7d
    db $fd                                        ; $41bc: $fd
    ld c, e                                       ; $41bd: $4b
    ld d, $58                                     ; $41be: $16 $58
    sbc [hl]                                      ; $41c0: $9e
    add h                                         ; $41c1: $84
    add l                                         ; $41c2: $85
    ld hl, $2794                                  ; $41c3: $21 $94 $27
    ld a, [bc]                                    ; $41c6: $0a
    ld a, e                                       ; $41c7: $7b
    inc hl                                        ; $41c8: $23
    push bc                                       ; $41c9: $c5
    ld a, e                                       ; $41ca: $7b
    and d                                         ; $41cb: $a2
    ld e, l                                       ; $41cc: $5d
    inc b                                         ; $41cd: $04
    dec sp                                        ; $41ce: $3b
    add l                                         ; $41cf: $85
    ld c, [hl]                                    ; $41d0: $4e
    or h                                          ; $41d1: $b4
    ld a, e                                       ; $41d2: $7b
    ld d, e                                       ; $41d3: $53
    daa                                           ; $41d4: $27
    db $d3                                        ; $41d5: $d3
    xor a                                         ; $41d6: $af
    ld c, c                                       ; $41d7: $49
    ld d, a                                       ; $41d8: $57
    ld l, l                                       ; $41d9: $6d
    ld a, [hl]                                    ; $41da: $7e
    dec [hl]                                      ; $41db: $35
    ld h, l                                       ; $41dc: $65
    or d                                          ; $41dd: $b2
    ret nz                                        ; $41de: $c0

    or d                                          ; $41df: $b2
    ccf                                           ; $41e0: $3f
    adc e                                         ; $41e1: $8b
    call $2902                                    ; $41e2: $cd $02 $29
    scf                                           ; $41e5: $37
    add d                                         ; $41e6: $82
    ld a, h                                       ; $41e7: $7c
    add $eb                                       ; $41e8: $c6 $eb
    add l                                         ; $41ea: $85
    jr z, jr_044_4245                             ; $41eb: $28 $58

    cp c                                          ; $41ed: $b9
    inc d                                         ; $41ee: $14
    ld [$53f1], sp                                ; $41ef: $08 $f1 $53
    dec c                                         ; $41f2: $0d
    rra                                           ; $41f3: $1f
    add hl, sp                                    ; $41f4: $39
    ld b, c                                       ; $41f5: $41
    ld a, $fb                                     ; $41f6: $3e $fb
    push bc                                       ; $41f8: $c5
    db $dd                                        ; $41f9: $dd
    dec de                                        ; $41fa: $1b
    ld d, d                                       ; $41fb: $52
    db $fd                                        ; $41fc: $fd
    add [hl]                                      ; $41fd: $86
    ld a, [hl-]                                   ; $41fe: $3a
    ld [c], a                                     ; $41ff: $e2
    adc l                                         ; $4200: $8d
    ld e, h                                       ; $4201: $5c
    ld a, [bc]                                    ; $4202: $0a
    push de                                       ; $4203: $d5
    or $e5                                        ; $4204: $f6 $e5
    ld b, h                                       ; $4206: $44
    add $41                                       ; $4207: $c6 $41
    ld hl, sp-$06                                 ; $4209: $f8 $fa
    dec d                                         ; $420b: $15
    ld c, c                                       ; $420c: $49
    ld d, a                                       ; $420d: $57
    cp [hl]                                       ; $420e: $be
    adc $ae                                       ; $420f: $ce $ae
    inc d                                         ; $4211: $14
    db $e4                                        ; $4212: $e4
    ld [c], a                                     ; $4213: $e2
    pop de                                        ; $4214: $d1
    pop de                                        ; $4215: $d1
    dec sp                                        ; $4216: $3b
    scf                                           ; $4217: $37
    jp nz, $8517                                  ; $4218: $c2 $17 $85

    dec e                                         ; $421b: $1d
    cpl                                           ; $421c: $2f
    dec d                                         ; $421d: $15
    ld l, l                                       ; $421e: $6d
    ld b, d                                       ; $421f: $42
    ld h, d                                       ; $4220: $62
    ld b, e                                       ; $4221: $43
    and [hl]                                      ; $4222: $a6

jr_044_4223:
    adc h                                         ; $4223: $8c
    add a                                         ; $4224: $87
    ld l, $fb                                     ; $4225: $2e $fb
    db $f4                                        ; $4227: $f4
    halt                                          ; $4228: $76
    ld e, c                                       ; $4229: $59
    ld h, b                                       ; $422a: $60
    pop de                                        ; $422b: $d1
    ld a, a                                       ; $422c: $7f
    and l                                         ; $422d: $a5
    ccf                                           ; $422e: $3f
    cp c                                          ; $422f: $b9
    adc h                                         ; $4230: $8c
    ld a, l                                       ; $4231: $7d
    ret z                                         ; $4232: $c8

    inc bc                                        ; $4233: $03
    ccf                                           ; $4234: $3f
    ld e, a                                       ; $4235: $5f
    ld d, $98                                     ; $4236: $16 $98
    di                                            ; $4238: $f3
    rst $10                                       ; $4239: $d7
    sbc e                                         ; $423a: $9b
    push bc                                       ; $423b: $c5
    add [hl]                                      ; $423c: $86
    inc e                                         ; $423d: $1c
    rst $30                                       ; $423e: $f7

jr_044_423f:
    db $e4                                        ; $423f: $e4
    set 4, h                                      ; $4240: $cb $e4
    halt                                          ; $4242: $76
    ret z                                         ; $4243: $c8

    xor c                                         ; $4244: $a9

jr_044_4245:
    adc [hl]                                      ; $4245: $8e
    and a                                         ; $4246: $a7
    ld e, a                                       ; $4247: $5f
    ld bc, $5749                                  ; $4248: $01 $49 $57
    sbc l                                         ; $424b: $9d
    sbc [hl]                                      ; $424c: $9e
    cp b                                          ; $424d: $b8
    ld h, e                                       ; $424e: $63
    dec sp                                        ; $424f: $3b
    add a                                         ; $4250: $87
    jr z, jr_044_423f                             ; $4251: $28 $ec

    or h                                          ; $4253: $b4
    ld h, l                                       ; $4254: $65
    cpl                                           ; $4255: $2f
    ld a, [bc]                                    ; $4256: $0a
    ld l, c                                       ; $4257: $69
    sbc l                                         ; $4258: $9d
    ld h, d                                       ; $4259: $62
    rst $28                                       ; $425a: $ef
    adc c                                         ; $425b: $89
    rst $10                                       ; $425c: $d7
    ld a, $d5                                     ; $425d: $3e $d5
    ld l, e                                       ; $425f: $6b
    cp $8b                                        ; $4260: $fe $8b
    cp d                                          ; $4262: $ba
    jr nc, jr_044_42ca                            ; $4263: $30 $65

    cp $6c                                        ; $4265: $fe $6c
    adc a                                         ; $4267: $8f
    or [hl]                                       ; $4268: $b6
    ld b, l                                       ; $4269: $45
    di                                            ; $426a: $f3
    rst $18                                       ; $426b: $df
    ld h, [hl]                                    ; $426c: $66
    sbc b                                         ; $426d: $98
    ld a, l                                       ; $426e: $7d
    inc d                                         ; $426f: $14
    halt                                          ; $4270: $76
    sbc d                                         ; $4271: $9a
    ld l, b                                       ; $4272: $68
    cp d                                          ; $4273: $ba
    xor c                                         ; $4274: $a9
    add $fb                                       ; $4275: $c6 $fb
    dec d                                         ; $4277: $15
    ld c, c                                       ; $4278: $49
    ld d, a                                       ; $4279: $57
    ld l, l                                       ; $427a: $6d
    jr c, jr_044_4284                             ; $427b: $38 $07

    ld h, c                                       ; $427d: $61
    dec sp                                        ; $427e: $3b
    scf                                           ; $427f: $37
    xor c                                         ; $4280: $a9
    ld e, [hl]                                    ; $4281: $5e
    sbc e                                         ; $4282: $9b
    cp h                                          ; $4283: $bc

jr_044_4284:
    ld a, b                                       ; $4284: $78
    adc a                                         ; $4285: $8f
    db $ed                                        ; $4286: $ed
    ld b, [hl]                                    ; $4287: $46
    sub b                                         ; $4288: $90
    ld [c], a                                     ; $4289: $e2
    and [hl]                                      ; $428a: $a6
    ld e, d                                       ; $428b: $5a
    sbc $ca                                       ; $428c: $de $ca
    db $e4                                        ; $428e: $e4
    db $e4                                        ; $428f: $e4
    rlc d                                         ; $4290: $cb $02
    and $e7                                       ; $4292: $e6 $e7
    xor a                                         ; $4294: $af
    jr nz, jr_044_4223                            ; $4295: $20 $8c

    ld d, h                                       ; $4297: $54
    db $10                                        ; $4298: $10
    ld [hl], $44                                  ; $4299: $36 $44
    rst $38                                       ; $429b: $ff
    ld a, e                                       ; $429c: $7b
    ccf                                           ; $429d: $3f
    ld sp, hl                                     ; $429e: $f9
    cp c                                          ; $429f: $b9
    dec e                                         ; $42a0: $1d
    cp [hl]                                       ; $42a1: $be
    dec h                                         ; $42a2: $25
    db $fc                                        ; $42a3: $fc
    ld c, e                                       ; $42a4: $4b

Call_044_42a5:
    cp a                                          ; $42a5: $bf
    ld [bc], a                                    ; $42a6: $02
    ld c, c                                       ; $42a7: $49
    ld d, a                                       ; $42a8: $57
    cp [hl]                                       ; $42a9: $be
    or b                                          ; $42aa: $b0
    ei                                            ; $42ab: $fb
    sbc l                                         ; $42ac: $9d
    ld l, [hl]                                    ; $42ad: $6e
    ld l, a                                       ; $42ae: $6f
    ld l, a                                       ; $42af: $6f
    ld e, b                                       ; $42b0: $58
    call nc, $3bc5                                ; $42b1: $d4 $c5 $3b
    ld a, e                                       ; $42b4: $7b
    add e                                         ; $42b5: $83
    ld sp, hl                                     ; $42b6: $f9
    ld a, [$4915]                                 ; $42b7: $fa $15 $49
    ld d, a                                       ; $42ba: $57
    ld l, l                                       ; $42bb: $6d
    cp $de                                        ; $42bc: $fe $de
    push af                                       ; $42be: $f5
    ld b, l                                       ; $42bf: $45
    or b                                          ; $42c0: $b0
    jp $7e10                                      ; $42c1: $c3 $10 $7e


    ld a, $72                                     ; $42c4: $3e $72
    and d                                         ; $42c6: $a2
    ld l, $6e                                     ; $42c7: $2e $6e
    add h                                         ; $42c9: $84

jr_044_42ca:
    inc a                                         ; $42ca: $3c
    ld [hl], c                                    ; $42cb: $71
    jr nc, @-$1a                                  ; $42cc: $30 $e4

    halt                                          ; $42ce: $76
    jp c, $b93f                                   ; $42cf: $da $3f $b9

    jp nz, $89b0                                  ; $42d2: $c2 $b0 $89

    jp nz, $9fde                                  ; $42d5: $c2 $de $9f

    or $5f                                        ; $42d8: $f6 $5f
    cp e                                          ; $42da: $bb
    rst $08                                       ; $42db: $cf
    xor e                                         ; $42dc: $ab
    cp h                                          ; $42dd: $bc
    ld e, [hl]                                    ; $42de: $5e
    rst $38                                       ; $42df: $ff
    call z, $8430                                 ; $42e0: $cc $30 $84
    add hl, hl                                    ; $42e3: $29
    di                                            ; $42e4: $f3
    push hl                                       ; $42e5: $e5
    ld [c], a                                     ; $42e6: $e2
    sbc l                                         ; $42e7: $9d
    cp l                                          ; $42e8: $bd
    pop bc                                        ; $42e9: $c1
    ld a, h                                       ; $42ea: $7c
    db $fd                                        ; $42eb: $fd
    ld a, [bc]                                    ; $42ec: $0a
    ld c, c                                       ; $42ed: $49
    ld d, a                                       ; $42ee: $57
    sbc [hl]                                      ; $42ef: $9e
    inc hl                                        ; $42f0: $23
    ld d, e                                       ; $42f1: $53
    call c, $9e51                                 ; $42f2: $dc $51 $9e
    inc l                                         ; $42f5: $2c
    or b                                          ; $42f6: $b0
    ret z                                         ; $42f7: $c8

    ld c, b                                       ; $42f8: $48
    ld d, b                                       ; $42f9: $50
    ld a, [bc]                                    ; $42fa: $0a
    inc c                                         ; $42fb: $0c
    xor c                                         ; $42fc: $a9
    cp $42                                        ; $42fd: $fe $42
    adc e                                         ; $42ff: $8b
    dec sp                                        ; $4300: $3b
    sbc [hl]                                      ; $4301: $9e
    xor b                                         ; $4302: $a8
    adc e                                         ; $4303: $8b
    ei                                            ; $4304: $fb
    ld a, [c]                                     ; $4305: $f2
    pop af                                        ; $4306: $f1
    sbc [hl]                                      ; $4307: $9e
    jr c, jr_044_4389                             ; $4308: $38 $7f

    cp l                                          ; $430a: $bd
    and c                                         ; $430b: $a1
    sub d                                         ; $430c: $92
    inc de                                        ; $430d: $13
    rst $30                                       ; $430e: $f7
    jp nz, Jump_044_5728                          ; $430f: $c2 $28 $57

    ld c, l                                       ; $4312: $4d
    ld h, h                                       ; $4313: $64
    inc h                                         ; $4314: $24
    sbc $df                                       ; $4315: $de $df
    cp e                                          ; $4317: $bb
    ld a, $5d                                     ; $4318: $3e $5d
    cp h                                          ; $431a: $bc

jr_044_431b:
    rst $28                                       ; $431b: $ef
    jr nz, jr_044_4388                            ; $431c: $20 $6a

    ld [c], a                                     ; $431e: $e2
    ld l, h                                       ; $431f: $6c
    or $7e                                        ; $4320: $f6 $7e
    ld b, e                                       ; $4322: $43
    ld l, [hl]                                    ; $4323: $6e
    add a                                         ; $4324: $87
    pop bc                                        ; $4325: $c1
    inc a                                         ; $4326: $3c
    db $fd                                        ; $4327: $fd
    ld a, [bc]                                    ; $4328: $0a
    ld c, c                                       ; $4329: $49
    ld d, a                                       ; $432a: $57
    xor l                                         ; $432b: $ad
    xor d                                         ; $432c: $aa
    or c                                          ; $432d: $b1
    daa                                           ; $432e: $27
    ccf                                           ; $432f: $3f
    jr z, jr_044_4337                             ; $4330: $28 $05

    add [hl]                                      ; $4332: $86
    ld d, h                                       ; $4333: $54
    jr z, jr_044_431b                             ; $4334: $28 $e5

    di                                            ; $4336: $f3

jr_044_4337:
    dec sp                                        ; $4337: $3b
    ld [hl], $da                                  ; $4338: $36 $da
    add sp, -$3e                                  ; $433a: $e8 $c2
    cpl                                           ; $433c: $2f
    inc a                                         ; $433d: $3c
    ld [hl], c                                    ; $433e: $71
    ld a, [hl]                                    ; $433f: $7e
    call nz, $168e                                ; $4340: $c4 $8e $16
    ld d, a                                       ; $4343: $57
    ld e, a                                       ; $4344: $5f
    ld a, $de                                     ; $4345: $3e $de
    or a                                          ; $4347: $b7
    ld [hl], d                                    ; $4348: $72
    pop de                                        ; $4349: $d1
    dec de                                        ; $434a: $1b
    ld [hl], l                                    ; $434b: $75
    rst $30                                       ; $434c: $f7
    add [hl]                                      ; $434d: $86
    inc l                                         ; $434e: $2c
    or b                                          ; $434f: $b0
    add sp, $21                                   ; $4350: $e8 $21
    ld l, c                                       ; $4352: $69
    cp d                                          ; $4353: $ba
    cp c                                          ; $4354: $b9
    sub b                                         ; $4355: $90
    or e                                          ; $4356: $b3
    add hl, de                                    ; $4357: $19
    db $fd                                        ; $4358: $fd
    ld a, [bc]                                    ; $4359: $0a
    ld c, c                                       ; $435a: $49
    ld d, a                                       ; $435b: $57
    cp [hl]                                       ; $435c: $be
    cp a                                          ; $435d: $bf
    ret                                           ; $435e: $c9


    ld a, [$3fb3]                                 ; $435f: $fa $b3 $3f
    db $e4                                        ; $4362: $e4
    pop af                                        ; $4363: $f1
    rst $20                                       ; $4364: $e7
    ld b, e                                       ; $4365: $43
    dec h                                         ; $4366: $25
    sbc d                                         ; $4367: $9a
    pop de                                        ; $4368: $d1
    ld h, l                                       ; $4369: $65
    sbc c                                         ; $436a: $99
    xor b                                         ; $436b: $a8
    ld c, e                                       ; $436c: $4b
    ld l, e                                       ; $436d: $6b
    xor a                                         ; $436e: $af
    rst $10                                       ; $436f: $d7
    cp a                                          ; $4370: $bf
    ld e, h                                       ; $4371: $5c
    ld a, h                                       ; $4372: $7c
    add sp, -$75                                  ; $4373: $e8 $8b
    sbc d                                         ; $4375: $9a
    ld d, b                                       ; $4376: $50
    adc c                                         ; $4377: $89
    or d                                          ; $4378: $b2
    rst $10                                       ; $4379: $d7
    ld h, $e5                                     ; $437a: $26 $e5
    and d                                         ; $437c: $a2
    add c                                         ; $437d: $81
    cp c                                          ; $437e: $b9
    cp $9c                                        ; $437f: $fe $9c
    ld h, h                                       ; $4381: $64
    add hl, sp                                    ; $4382: $39
    rst $20                                       ; $4383: $e7
    db $fc                                        ; $4384: $fc
    rst $30                                       ; $4385: $f7
    db $fc                                        ; $4386: $fc
    add hl, hl                                    ; $4387: $29

jr_044_4388:
    inc [hl]                                      ; $4388: $34

jr_044_4389:
    ld d, h                                       ; $4389: $54
    ld a, $65                                     ; $438a: $3e $65
    cp c                                          ; $438c: $b9
    rst $10                                       ; $438d: $d7
    or h                                          ; $438e: $b4
    ei                                            ; $438f: $fb
    inc l                                         ; $4390: $2c
    rlca                                          ; $4391: $07
    ld sp, hl                                     ; $4392: $f9
    xor b                                         ; $4393: $a8
    adc e                                         ; $4394: $8b
    cp $35                                        ; $4395: $fe $35
    ld a, c                                       ; $4397: $79
    pop hl                                        ; $4398: $e1
    db $eb                                        ; $4399: $eb
    ld d, a                                       ; $439a: $57
    ld c, c                                       ; $439b: $49
    ld d, a                                       ; $439c: $57
    cp [hl]                                       ; $439d: $be
    rla                                           ; $439e: $17
    db $fd                                        ; $439f: $fd
    inc sp                                        ; $43a0: $33
    rst $10                                       ; $43a1: $d7
    sbc e                                         ; $43a2: $9b
    rst $08                                       ; $43a3: $cf
    and [hl]                                      ; $43a4: $a6

Call_044_43a5:
    and d                                         ; $43a5: $a2
    ld c, l                                       ; $43a6: $4d
    ld d, $58                                     ; $43a7: $16 $58
    ld e, [hl]                                    ; $43a9: $5e
    ccf                                           ; $43aa: $3f
    ei                                            ; $43ab: $fb
    inc c                                         ; $43ac: $0c
    reti                                          ; $43ad: $d9


    inc de                                        ; $43ae: $13
    ld e, a                                       ; $43af: $5f
    ld a, [hl]                                    ; $43b0: $7e
    and [hl]                                      ; $43b1: $a6
    inc a                                         ; $43b2: $3c
    ld d, c                                       ; $43b3: $51
    rla                                           ; $43b4: $17
    ld e, a                                       ; $43b5: $5f
    ld l, b                                       ; $43b6: $68
    ld b, $06                                     ; $43b7: $06 $06
    sub c                                         ; $43b9: $91
    ld hl, sp+$41                                 ; $43ba: $f8 $41
    ld a, [bc]                                    ; $43bc: $0a
    adc c                                         ; $43bd: $89
    db $fd                                        ; $43be: $fd
    add [hl]                                      ; $43bf: $86
    db $fc                                        ; $43c0: $fc
    and l                                         ; $43c1: $a5
    or l                                          ; $43c2: $b5
    rst $10                                       ; $43c3: $d7
    db $eb                                        ; $43c4: $eb
    ld e, a                                       ; $43c5: $5f
    ld l, $db                                     ; $43c6: $2e $db
    inc bc                                        ; $43c8: $03
    push hl                                       ; $43c9: $e5
    ld a, [bc]                                    ; $43ca: $0a
    ld b, e                                       ; $43cb: $43
    adc b                                         ; $43cc: $88
    rra                                           ; $43cd: $1f
    add l                                         ; $43ce: $85
    ld c, e                                       ; $43cf: $4b
    push af                                       ; $43d0: $f5
    sbc d                                         ; $43d1: $9a
    rst $38                                       ; $43d2: $ff
    ld a, [$4915]                                 ; $43d3: $fa $15 $49
    ld d, a                                       ; $43d6: $57
    ld l, l                                       ; $43d7: $6d
    dec bc                                        ; $43d8: $0b
    add hl, bc                                    ; $43d9: $09
    pop hl                                        ; $43da: $e1
    ld sp, $6144                                  ; $43db: $31 $44 $61
    rst $28                                       ; $43de: $ef
    adc c                                         ; $43df: $89
    rst $28                                       ; $43e0: $ef
    ld [hl], d                                    ; $43e1: $72
    ld d, e                                       ; $43e2: $53
    call c, Call_000_372c                         ; $43e3: $dc $2c $37
    db $fd                                        ; $43e6: $fd
    ld a, [bc]                                    ; $43e7: $0a
    ld c, c                                       ; $43e8: $49
    ld d, a                                       ; $43e9: $57
    ld l, l                                       ; $43ea: $6d
    sub h                                         ; $43eb: $94
    dec b                                         ; $43ec: $05
    add $93                                       ; $43ed: $c6 $93

jr_044_43ef:
    sub e                                         ; $43ef: $93
    ld d, b                                       ; $43f0: $50
    add hl, sp                                    ; $43f1: $39
    scf                                           ; $43f2: $37
    ld h, $d7                                     ; $43f3: $26 $d7
    rst $00                                       ; $43f5: $c7
    ld [hl], e                                    ; $43f6: $73
    add h                                         ; $43f7: $84
    db $ed                                        ; $43f8: $ed
    db $f4                                        ; $43f9: $f4
    or h                                          ; $43fa: $b4
    cp [hl]                                       ; $43fb: $be
    db $fc                                        ; $43fc: $fc
    sbc $1f                                       ; $43fd: $de $1f
    ld h, a                                       ; $43ff: $67
    ld a, b                                       ; $4400: $78
    ld [c], a                                     ; $4401: $e2
    adc l                                         ; $4402: $8d
    jr nz, jr_044_43ef                            ; $4403: $20 $ea

    ld h, d                                       ; $4405: $62
    ld d, a                                       ; $4406: $57
    ld h, b                                       ; $4407: $60
    inc h                                         ; $4408: $24
    ld [hl+], a                                   ; $4409: $22
    rst $08                                       ; $440a: $cf
    call nc, Call_044_5f7e                        ; $440b: $d4 $7e $5f
    ld d, $58                                     ; $440e: $16 $58
    ld a, h                                       ; $4410: $7c
    jr z, jr_044_441d                             ; $4411: $28 $0a

    ld e, a                                       ; $4413: $5f
    ld e, [hl]                                    ; $4414: $5e
    xor [hl]                                      ; $4415: $ae
    ld a, [$397d]                                 ; $4416: $fa $7d $39
    add hl, bc                                    ; $4419: $09
    ld d, e                                       ; $441a: $53
    and $cf                                       ; $441b: $e6 $cf

jr_044_441d:
    or $68                                        ; $441d: $f6 $68
    ld e, e                                       ; $441f: $5b
    inc [hl]                                      ; $4420: $34
    rst $38                                       ; $4421: $ff
    ld l, l                                       ; $4422: $6d
    add [hl]                                      ; $4423: $86
    reti                                          ; $4424: $d9


    rst $30                                       ; $4425: $f7
    dec hl                                        ; $4426: $2b
    ld c, c                                       ; $4427: $49
    ld d, a                                       ; $4428: $57
    sbc l                                         ; $4429: $9d
    ret z                                         ; $442a: $c8

    cp c                                          ; $442b: $b9
    ld c, c                                       ; $442c: $49
    push af                                       ; $442d: $f5
    jp c, $faa4                                   ; $442e: $da $a4 $fa

    ld c, e                                       ; $4431: $4b
    sbc c                                         ; $4432: $99
    push bc                                       ; $4433: $c5
    sbc [hl]                                      ; $4434: $9e
    inc h                                         ; $4435: $24
    xor a                                         ; $4436: $af
    inc d                                         ; $4437: $14
    jp z, $df93                                   ; $4438: $ca $93 $df

    db $db                                        ; $443b: $db
    db $e3                                        ; $443c: $e3
    sbc c                                         ; $443d: $99
    rst $18                                       ; $443e: $df
    cp c                                          ; $443f: $b9
    adc c                                         ; $4440: $89
    cp d                                          ; $4441: $ba
    ld d, b                                       ; $4442: $50
    ld c, c                                       ; $4443: $49
    ld a, e                                       ; $4444: $7b
    ldh [$df], a                                  ; $4445: $e0 $df
    push de                                       ; $4447: $d5
    dec bc                                        ; $4448: $0b
    ld c, a                                       ; $4449: $4f
    cp a                                          ; $444a: $bf
    ld [bc], a                                    ; $444b: $02
    ld c, c                                       ; $444c: $49
    ld d, a                                       ; $444d: $57
    sbc [hl]                                      ; $444e: $9e
    ret c                                         ; $444f: $d8

    ret nc                                        ; $4450: $d0

    dec de                                        ; $4451: $1b
    ld [c], a                                     ; $4452: $e2
    ld sp, hl                                     ; $4453: $f9
    bit 0, h                                      ; $4454: $cb $44
    ld h, c                                       ; $4456: $61
    and a                                         ; $4457: $a7
    push af                                       ; $4458: $f5
    ld e, e                                       ; $4459: $5b
    sbc $f8                                       ; $445a: $de $f8
    ld a, [hl+]                                   ; $445c: $2a
    ld [$164f], sp                                ; $445d: $08 $4f $16
    ld e, b                                       ; $4460: $58
    or [hl]                                       ; $4461: $b6
    ld b, a                                       ; $4462: $47
    xor e                                         ; $4463: $ab
    res 6, d                                      ; $4464: $cb $b2
    rst $08                                       ; $4466: $cf
    dec a                                         ; $4467: $3d
    pop af                                        ; $4468: $f1
    ld b, [hl]                                    ; $4469: $46
    db $10                                        ; $446a: $10
    add l                                         ; $446b: $85

Jump_044_446c:
    cp l                                          ; $446c: $bd
    ccf                                           ; $446d: $3f
    db $ed                                        ; $446e: $ed

Call_044_446f:
    ld b, c                                       ; $446f: $41
    db $d3                                        ; $4470: $d3
    sub b                                         ; $4471: $90
    ld b, d                                       ; $4472: $42
    rst $30                                       ; $4473: $f7
    cp $b4                                        ; $4474: $fe $b4
    rst $38                                       ; $4476: $ff
    jp c, $bf7d                                   ; $4477: $da $7d $bf

    ld [bc], a                                    ; $447a: $02
    ld c, c                                       ; $447b: $49
    ld d, a                                       ; $447c: $57
    db $ed                                        ; $447d: $ed
    adc a                                         ; $447e: $8f
    push de                                       ; $447f: $d5
    sub a                                         ; $4480: $97
    ld a, [c]                                     ; $4481: $f2
    sbc e                                         ; $4482: $9b
    ld a, h                                       ; $4483: $7c
    ld d, c                                       ; $4484: $51
    inc de                                        ; $4485: $13
    ld a, [hl+]                                   ; $4486: $2a
    ld e, c                                       ; $4487: $59
    adc $b9                                       ; $4488: $ce $b9
    reti                                          ; $448a: $d9


    sub e                                         ; $448b: $93
    sub $5e                                       ; $448c: $d6 $5e
    xor a                                         ; $448e: $af
    ld a, a                                       ; $448f: $7f
    sbc c                                         ; $4490: $99
    xor b                                         ; $4491: $a8
    rrca                                          ; $4492: $0f
    sub l                                         ; $4493: $95
    ld c, a                                       ; $4494: $4f
    ei                                            ; $4495: $fb
    cpl                                           ; $4496: $2f
    ld a, h                                       ; $4497: $7c
    ld l, [hl]                                    ; $4498: $6e
    db $ec                                        ; $4499: $ec
    ld [hl], e                                    ; $449a: $73
    ld [de], a                                    ; $449b: $12
    cpl                                           ; $449c: $2f
    push de                                       ; $449d: $d5
    cp [hl]                                       ; $449e: $be
    ld e, a                                       ; $449f: $5f
    ld bc, $5749                                  ; $44a0: $01 $49 $57
    ld [hl], l                                    ; $44a3: $75
    ld l, a                                       ; $44a4: $6f
    db $e4                                        ; $44a5: $e4
    ld h, b                                       ; $44a6: $60
    adc b                                         ; $44a7: $88
    jp nz, $f5a5                                  ; $44a8: $c2 $a5 $f5

    or e                                          ; $44ab: $b3
    ld h, e                                       ; $44ac: $63
    cp [hl]                                       ; $44ad: $be
    jr z, jr_044_450c                             ; $44ae: $28 $5c

    jp c, $bd9c                                   ; $44b0: $da $9c $bd

    pop bc                                        ; $44b3: $c1
    ld a, h                                       ; $44b4: $7c
    db $fd                                        ; $44b5: $fd
    ld a, [bc]                                    ; $44b6: $0a
    ld c, c                                       ; $44b7: $49
    ld d, a                                       ; $44b8: $57
    sbc [hl]                                      ; $44b9: $9e
    ret c                                         ; $44ba: $d8

    ret nc                                        ; $44bb: $d0

    dec de                                        ; $44bc: $1b
    ld d, d                                       ; $44bd: $52
    cp l                                          ; $44be: $bd
    ld [hl], $39                                  ; $44bf: $36 $39
    ld [hl], c                                    ; $44c1: $71
    ld l, a                                       ; $44c2: $6f
    ld c, $f6                                     ; $44c3: $0e $f6
    inc a                                         ; $44c5: $3c
    ld d, c                                       ; $44c6: $51
    ld a, a                                       ; $44c7: $7f
    ld l, c                                       ; $44c8: $69
    db $ed                                        ; $44c9: $ed
    push af                                       ; $44ca: $f5
    ld a, [$cb97]                                 ; $44cb: $fa $97 $cb
    rst $00                                       ; $44ce: $c7
    dec a                                         ; $44cf: $3d
    dec l                                         ; $44d0: $2d
    rra                                           ; $44d1: $1f
    add l                                         ; $44d2: $85
    ld c, e                                       ; $44d3: $4b
    and c                                         ; $44d4: $a1
    ld [hl], e                                    ; $44d5: $73
    ld h, c                                       ; $44d6: $61
    inc d                                         ; $44d7: $14
    cp [hl]                                       ; $44d8: $be
    ld a, [hl]                                    ; $44d9: $7e
    dec b                                         ; $44da: $05
    ld c, c                                       ; $44db: $49
    ld d, a                                       ; $44dc: $57
    ld l, l                                       ; $44dd: $6d
    sub h                                         ; $44de: $94
    dec b                                         ; $44df: $05
    add $13                                       ; $44e0: $c6 $13
    ld [hl], l                                    ; $44e2: $75
    and c                                         ; $44e3: $a1
    adc $61                                       ; $44e4: $ce $61
    rst $28                                       ; $44e6: $ef
    ld c, e                                       ; $44e7: $4b
    push af                                       ; $44e8: $f5
    jp c, $ebb9                                   ; $44e9: $da $b9 $eb

    db $d3                                        ; $44ec: $d3
    ld h, $cd                                     ; $44ed: $26 $cd
    db $ed                                        ; $44ef: $ed
    inc l                                         ; $44f0: $2c

Jump_044_44f1:
    halt                                          ; $44f1: $76
    push de                                       ; $44f2: $d5

Call_044_44f3:
    db $e4                                        ; $44f3: $e4
    ld [hl], e                                    ; $44f4: $73
    ld a, [bc]                                    ; $44f5: $0a
    jp nz, $3de7                                  ; $44f6: $c2 $e7 $3d

    rst $30                                       ; $44f9: $f7
    add [hl]                                      ; $44fa: $86
    call c, Call_000_394e                         ; $44fb: $dc $4e $39
    ld c, l                                       ; $44fe: $4d
    adc $7b                                       ; $44ff: $ce $7b
    xor $79                                       ; $4501: $ee $79
    and d                                         ; $4503: $a2
    or b                                          ; $4504: $b0
    rst $30                                       ; $4505: $f7
    rst $00                                       ; $4506: $c7
    cp l                                          ; $4507: $bd
    db $10                                        ; $4508: $10
    ld b, a                                       ; $4509: $47
    sub b                                         ; $450a: $90
    cp d                                          ; $450b: $ba

jr_044_450c:
    ld [hl], $5e                                  ; $450c: $36 $5e
    db $10                                        ; $450e: $10
    rst $28                                       ; $450f: $ef
    ei                                            ; $4510: $fb
    dec d                                         ; $4511: $15
    ld c, c                                       ; $4512: $49
    ld d, a                                       ; $4513: $57
    sbc [hl]                                      ; $4514: $9e
    ret c                                         ; $4515: $d8

    ret nc                                        ; $4516: $d0

    dec de                                        ; $4517: $1b
    ld a, [c]                                     ; $4518: $f2
    sub h                                         ; $4519: $94
    rst $00                                       ; $451a: $c7
    db $10                                        ; $451b: $10
    ld [hl], l                                    ; $451c: $75
    pop af                                        ; $451d: $f1
    ld l, b                                       ; $451e: $68
    ld l, e                                       ; $451f: $6b
    ld e, a                                       ; $4520: $5f
    ld e, [hl]                                    ; $4521: $5e
    xor [hl]                                      ; $4522: $ae
    ld a, [$f17d]                                 ; $4523: $fa $7d $f1
    cp [hl]                                       ; $4526: $be
    ldh a, [rNR22]                                ; $4527: $f0 $17
    ld a, $77                                     ; $4529: $3e $77
    dec l                                         ; $452b: $2d
    ld b, [hl]                                    ; $452c: $46
    dec c                                         ; $452d: $0d
    adc c                                         ; $452e: $89
    or b                                          ; $452f: $b0
    dec c                                         ; $4530: $0d
    ld sp, hl                                     ; $4531: $f9
    or [hl]                                       ; $4532: $b6
    rst $08                                       ; $4533: $cf
    and e                                         ; $4534: $a3
    ld e, a                                       ; $4535: $5f
    ld bc, $5749                                  ; $4536: $01 $49 $57
    dec e                                         ; $4539: $1d
    sub h                                         ; $453a: $94
    push hl                                       ; $453b: $e5
    jr @+$53                                      ; $453c: $18 $51

    ret c                                         ; $453e: $d8

    ld e, c                                       ; $453f: $59
    ld l, h                                       ; $4540: $6c
    inc [hl]                                      ; $4541: $34
    ei                                            ; $4542: $fb
    xor d                                         ; $4543: $aa
    ld a, [$b478]                                 ; $4544: $fa $78 $b4
    rst $20                                       ; $4547: $e7
    ld sp, $51f6                                  ; $4548: $31 $f6 $51
    ret c                                         ; $454b: $d8

    ei                                            ; $454c: $fb
    ld d, e                                       ; $454d: $53
    cp l                                          ; $454e: $bd
    halt                                          ; $454f: $76
    rst $28                                       ; $4550: $ef
    sub c                                         ; $4551: $91
    ld b, d                                       ; $4552: $42
    db $d3                                        ; $4553: $d3
    sub c                                         ; $4554: $91
    ld l, a                                       ; $4555: $6f
    sbc l                                         ; $4556: $9d
    inc [hl]                                      ; $4557: $34
    call nc, $abd1                                ; $4558: $d4 $d1 $ab
    sbc e                                         ; $455b: $9b
    ld hl, sp-$4e                                 ; $455c: $f8 $b2
    ld b, c                                       ; $455e: $41
    ei                                            ; $455f: $fb
    call nc, Call_044_7701                        ; $4560: $d4 $01 $77
    scf                                           ; $4563: $37
    sub $6d                                       ; $4564: $d6 $6d
    jp Jump_000_0afd                              ; $4566: $c3 $fd $0a


    ld c, c                                       ; $4569: $49
    ld d, a                                       ; $456a: $57
    ld l, l                                       ; $456b: $6d
    ld a, [hl]                                    ; $456c: $7e
    dec [hl]                                      ; $456d: $35
    ld h, l                                       ; $456e: $65
    jp nz, Jump_000_3b18                          ; $456f: $c2 $18 $3b

    scf                                           ; $4572: $37
    ld d, c                                       ; $4573: $51
    ret c                                         ; $4574: $d8

    ei                                            ; $4575: $fb
    ld d, e                                       ; $4576: $53
    cp l                                          ; $4577: $bd
    halt                                          ; $4578: $76
    rst $18                                       ; $4579: $df
    xor a                                         ; $457a: $af
    ld c, c                                       ; $457b: $49
    ld d, a                                       ; $457c: $57
    ld l, l                                       ; $457d: $6d
    dec bc                                        ; $457e: $0b
    add hl, bc                                    ; $457f: $09
    ld h, c                                       ; $4580: $61
    dec sp                                        ; $4581: $3b
    add a                                         ; $4582: $87
    jr z, @-$12                                   ; $4583: $28 $ec

    or h                                          ; $4585: $b4
    ld b, a                                       ; $4586: $47
    push hl                                       ; $4587: $e5
    adc e                                         ; $4588: $8b
    sbc e                                         ; $4589: $9b
    push hl                                       ; $458a: $e5
    and [hl]                                      ; $458b: $a6
    ld e, a                                       ; $458c: $5f
    ld bc, $5749                                  ; $458d: $01 $49 $57
    sbc [hl]                                      ; $4590: $9e
    ret c                                         ; $4591: $d8

    ret nc                                        ; $4592: $d0

    dec de                                        ; $4593: $1b
    jp nc, $3429                                  ; $4594: $d2 $29 $34

    dec c                                         ; $4597: $0d
    jp nz, $f208                                  ; $4598: $c2 $08 $f2

    sub h                                         ; $459b: $94
    db $ed                                        ; $459c: $ed
    inc e                                         ; $459d: $1c
    and d                                         ; $459e: $a2
    or b                                          ; $459f: $b0
    or e                                          ; $45a0: $b3
    ld c, a                                       ; $45a1: $4f
    ld l, a                                       ; $45a2: $6f
    inc de                                        ; $45a3: $13
    rrca                                          ; $45a4: $0f
    ld e, a                                       ; $45a5: $5f
    ld [de], a                                    ; $45a6: $12
    ei                                            ; $45a7: $fb
    dec c                                         ; $45a8: $0d
    cp c                                          ; $45a9: $b9
    sbc l                                         ; $45aa: $9d
    ld [hl], $29                                  ; $45ab: $36 $29
    ld d, e                                       ; $45ad: $53
    dec de                                        ; $45ae: $1b
    adc a                                         ; $45af: $8f
    ld a, [hl]                                    ; $45b0: $7e
    dec b                                         ; $45b1: $05
    ld c, c                                       ; $45b2: $49
    ld d, a                                       ; $45b3: $57

jr_044_45b4:
    ld l, l                                       ; $45b4: $6d
    adc e                                         ; $45b5: $8b
    ld a, [de]                                    ; $45b6: $1a
    ld a, [c]                                     ; $45b7: $f2
    ld h, h                                       ; $45b8: $64
    and d                                         ; $45b9: $a2
    or b                                          ; $45ba: $b0
    or a                                          ; $45bb: $b7
    rst $00                                       ; $45bc: $c7
    dec bc                                        ; $45bd: $0b
    sbc a                                         ; $45be: $9f
    di                                            ; $45bf: $f3
    rra                                           ; $45c0: $1f
    rst $10                                       ; $45c1: $d7
    inc de                                        ; $45c2: $13
    rst $20                                       ; $45c3: $e7
    ld b, a                                       ; $45c4: $47
    adc d                                         ; $45c5: $8a
    dec de                                        ; $45c6: $1b
    pop af                                        ; $45c7: $f1
    ld e, [hl]                                    ; $45c8: $5e
    add hl, hl                                    ; $45c9: $29
    ret z                                         ; $45ca: $c8

    db $ed                                        ; $45cb: $ed
    ld [hl], h                                    ; $45cc: $74
    ld a, [bc]                                    ; $45cd: $0a
    ld c, l                                       ; $45ce: $4d
    add e                                         ; $45cf: $83
    jr nc, jr_044_45b4                            ; $45d0: $30 $e2

    ld sp, hl                                     ; $45d2: $f9
    db $db                                        ; $45d3: $db
    cp l                                          ; $45d4: $bd
    jr nc, jr_044_4649                            ; $45d5: $30 $72

    ld [de], a                                    ; $45d7: $12
    ld a, [hl+]                                   ; $45d8: $2a
    rra                                           ; $45d9: $1f
    db $ed                                        ; $45da: $ed
    db $ed                                        ; $45db: $ed
    and e                                         ; $45dc: $a3
    ld l, $8b                                     ; $45dd: $2e $8b
    add c                                         ; $45df: $81
    add h                                         ; $45e0: $84
    and [hl]                                      ; $45e1: $a6
    ld b, c                                       ; $45e2: $41
    adc b                                         ; $45e3: $88
    rst $18                                       ; $45e4: $df
    xor a                                         ; $45e5: $af
    ld c, c                                       ; $45e6: $49
    ld d, a                                       ; $45e7: $57
    ld l, l                                       ; $45e8: $6d
    sub h                                         ; $45e9: $94
    dec b                                         ; $45ea: $05
    add $13                                       ; $45eb: $c6 $13
    ld [hl], l                                    ; $45ed: $75
    ld l, c                                       ; $45ee: $69
    db $ed                                        ; $45ef: $ed
    push af                                       ; $45f0: $f5
    ld a, [$d997]                                 ; $45f1: $fa $97 $d9
    and e                                         ; $45f4: $a3
    db $dd                                        ; $45f5: $dd
    rlca                                          ; $45f6: $07
    ld a, c                                       ; $45f7: $79
    jp z, $8863                                   ; $45f8: $ca $63 $88

    cp d                                          ; $45fb: $ba
    ld [$60ad], sp                                ; $45fc: $08 $ad $60
    ld d, e                                       ; $45ff: $53
    ld l, $8c                                     ; $4600: $2e $8c
    jp nz, $8ba7                                  ; $4602: $c2 $a7 $8b

    rst $10                                       ; $4605: $d7
    ld a, $8e                                     ; $4606: $3e $8e
    ld e, [hl]                                    ; $4608: $5e
    inc a                                         ; $4609: $3c
    ld e, d                                       ; $460a: $5a
    ld a, e                                       ; $460b: $7b
    cp l                                          ; $460c: $bd
    cp $e5                                        ; $460d: $fe $e5
    ld [c], a                                     ; $460f: $e2
    db $fd                                        ; $4610: $fd
    ld l, d                                       ; $4611: $6a
    jp z, $f479                                   ; $4612: $ca $79 $f4

    dec hl                                        ; $4615: $2b
    ld c, c                                       ; $4616: $49
    ld d, a                                       ; $4617: $57
    ld l, l                                       ; $4618: $6d
    dec bc                                        ; $4619: $0b
    add hl, bc                                    ; $461a: $09
    pop hl                                        ; $461b: $e1
    ld sp, $6144                                  ; $461c: $31 $44 $61
    rst $28                                       ; $461f: $ef
    adc a                                         ; $4620: $8f
    rst $20                                       ; $4621: $e7
    dec sp                                        ; $4622: $3b
    rst $30                                       ; $4623: $f7
    ld a, [$f4a9]                                 ; $4624: $fa $a9 $f4
    rst $18                                       ; $4627: $df
    xor a                                         ; $4628: $af
    ld c, c                                       ; $4629: $49
    ld d, a                                       ; $462a: $57
    ld l, l                                       ; $462b: $6d
    rst $28                                       ; $462c: $ef
    ld d, h                                       ; $462d: $54
    xor a                                         ; $462e: $af
    ld c, l                                       ; $462f: $4d
    sub [hl]                                      ; $4630: $96
    ld l, e                                       ; $4631: $6b
    jr nz, @+$10                                  ; $4632: $20 $0e

    dec de                                        ; $4634: $1b
    ld a, d                                       ; $4635: $7a
    ld b, e                                       ; $4636: $43
    call nc, $2985                                ; $4637: $d4 $85 $29
    di                                            ; $463a: $f3
    push hl                                       ; $463b: $e5
    jp nz, $96a8                                  ; $463c: $c2 $a8 $96

    db $eb                                        ; $463f: $eb
    db $d3                                        ; $4640: $d3
    ld a, $2a                                     ; $4641: $3e $2a
    cp l                                          ; $4643: $bd
    ld c, l                                       ; $4644: $4d
    inc d                                         ; $4645: $14
    or $fe                                        ; $4646: $f6 $fe
    ld a, b                                       ; $4648: $78

jr_044_4649:
    adc [hl]                                      ; $4649: $8e
    ld sp, $2ea2                                  ; $464a: $31 $a2 $2e
    dec e                                         ; $464d: $1d
    ld hl, $1aad                                  ; $464e: $21 $ad $1a
    scf                                           ; $4651: $37
    ret nc                                        ; $4652: $d0

    xor a                                         ; $4653: $af
    ld c, c                                       ; $4654: $49
    ld d, a                                       ; $4655: $57
    sbc [hl]                                      ; $4656: $9e
    cp a                                          ; $4657: $bf
    ld c, h                                       ; $4658: $4c
    inc d                                         ; $4659: $14
    halt                                          ; $465a: $76
    inc a                                         ; $465b: $3c
    ld b, a                                       ; $465c: $47
    jp z, $fb69                                   ; $465d: $ca $69 $fb

    ld h, $0a                                     ; $4660: $26 $0a
    jp c, $f8be                                   ; $4662: $da $be $f8

    or d                                          ; $4665: $b2
    ld b, c                                       ; $4666: $41
    dec de                                        ; $4667: $1b
    add hl, sp                                    ; $4668: $39
    ld e, l                                       ; $4669: $5d
    sbc d                                         ; $466a: $9a
    ld l, b                                       ; $466b: $68
    or [hl]                                       ; $466c: $b6
    adc c                                         ; $466d: $89
    ld h, $d3                                     ; $466e: $26 $d3
    ld l, b                                       ; $4670: $68
    sbc d                                         ; $4671: $9a
    ld l, b                                       ; $4672: $68
    or [hl]                                       ; $4673: $b6
    ld sp, hl                                     ; $4674: $f9
    and $fa                                       ; $4675: $e6 $fa
    dec d                                         ; $4677: $15
    ld c, c                                       ; $4678: $49
    ld d, a                                       ; $4679: $57
    xor l                                         ; $467a: $ad
    ld l, $8b                                     ; $467b: $2e $8b
    add c                                         ; $467d: $81
    ld c, b                                       ; $467e: $48
    ld a, h                                       ; $467f: $7c
    sbc [hl]                                      ; $4680: $9e
    or h                                          ; $4681: $b4
    ld a, a                                       ; $4682: $7f
    ld [hl], d                                    ; $4683: $72
    add l                                         ; $4684: $85
    ld l, l                                       ; $4685: $6d
    and d                                         ; $4686: $a2
    or b                                          ; $4687: $b0
    rst $30                                       ; $4688: $f7
    and a                                         ; $4689: $a7
    db $fd                                        ; $468a: $fd

Jump_044_468b:
    rst $10                                       ; $468b: $d7
    xor $75                                       ; $468c: $ee $75
    sub c                                         ; $468e: $91
    xor c                                         ; $468f: $a9
    ld c, [hl]                                    ; $4690: $4e
    sbc [hl]                                      ; $4691: $9e
    daa                                           ; $4692: $27
    add d                                         ; $4693: $82
    sbc l                                         ; $4694: $9d
    ld h, $9a                                     ; $4695: $26 $9a
    ld l, a                                       ; $4697: $6f
    and d                                         ; $4698: $a2
    adc c                                         ; $4699: $89
    ld a, [hl]                                    ; $469a: $7e
    dec b                                         ; $469b: $05
    ld c, c                                       ; $469c: $49
    ld d, a                                       ; $469d: $57
    sbc [hl]                                      ; $469e: $9e
    cp a                                          ; $469f: $bf
    ld c, h                                       ; $46a0: $4c
    inc d                                         ; $46a1: $14
    halt                                          ; $46a2: $76
    inc a                                         ; $46a3: $3c
    ld b, a                                       ; $46a4: $47
    jp z, $fb69                                   ; $46a5: $ca $69 $fb

    ld h, $0a                                     ; $46a8: $26 $0a
    sub a                                         ; $46aa: $97
    or $5f                                        ; $46ab: $f6 $5f
    di                                            ; $46ad: $f3
    sbc a                                         ; $46ae: $9f
    ld l, $4d                                     ; $46af: $2e $4d
    inc [hl]                                      ; $46b1: $34
    db $dd                                        ; $46b2: $dd
    ld [hl], h                                    ; $46b3: $74
    di                                            ; $46b4: $f3
    ld l, c                                       ; $46b5: $69
    inc [hl]                                      ; $46b6: $34
    call $de34                                    ; $46b7: $cd $34 $de
    xor a                                         ; $46ba: $af
    ld c, c                                       ; $46bb: $49
    ld d, a                                       ; $46bc: $57
    ld l, l                                       ; $46bd: $6d
    ld a, [hl]                                    ; $46be: $7e
    dec [hl]                                      ; $46bf: $35
    ld h, l                                       ; $46c0: $65
    or d                                          ; $46c1: $b2
    ret nz                                        ; $46c2: $c0

    ld a, [c]                                     ; $46c3: $f2
    inc h                                         ; $46c4: $24
    inc l                                         ; $46c5: $2c
    push bc                                       ; $46c6: $c5
    adc l                                         ; $46c7: $8d
    ld a, b                                       ; $46c8: $78
    adc a                                         ; $46c9: $8f
    ld a, c                                       ; $46ca: $79
    ld b, d                                       ; $46cb: $42
    dec h                                         ; $46cc: $25
    push de                                       ; $46cd: $d5
    inc d                                         ; $46ce: $14
    or [hl]                                       ; $46cf: $b6
    adc c                                         ; $46d0: $89
    di                                            ; $46d1: $f3
    inc hl                                        ; $46d2: $23
    inc c                                         ; $46d3: $0c
    or e                                          ; $46d4: $b3
    or c                                          ; $46d5: $b1
    inc hl                                        ; $46d6: $23
    ld [de], a                                    ; $46d7: $12
    sbc a                                         ; $46d8: $9f
    db $fc                                        ; $46d9: $fc
    cp b                                          ; $46da: $b8
    reti                                          ; $46db: $d9


    ld h, e                                       ; $46dc: $63
    inc de                                        ; $46dd: $13
    rst $20                                       ; $46de: $e7
    ld b, a                                       ; $46df: $47
    sbc [hl]                                      ; $46e0: $9e
    reti                                          ; $46e1: $d9


    sbc [hl]                                      ; $46e2: $9e
    add h                                         ; $46e3: $84
    sub l                                         ; $46e4: $95
    daa                                           ; $46e5: $27
    ld e, a                                       ; $46e6: $5f
    ld h, $b7                                     ; $46e7: $26 $b7
    db $e3                                        ; $46e9: $e3
    dec a                                         ; $46ea: $3d
    ld e, d                                       ; $46eb: $5a
    ld hl, $119d                                  ; $46ec: $21 $9d $11
    ld b, b                                       ; $46ef: $40
    cp a                                          ; $46f0: $bf
    ld [bc], a                                    ; $46f1: $02
    ld c, c                                       ; $46f2: $49
    ld d, a                                       ; $46f3: $57
    ld [hl], l                                    ; $46f4: $75
    db $ed                                        ; $46f5: $ed
    xor d                                         ; $46f6: $aa
    ld c, a                                       ; $46f7: $4f
    ld h, c                                       ; $46f8: $61
    add e                                         ; $46f9: $83
    or $f9                                        ; $46fa: $f6 $f9
    xor b                                         ; $46fc: $a8
    inc hl                                        ; $46fd: $23
    ld hl, $86fc                                  ; $46fe: $21 $fc $86
    or h                                          ; $4701: $b4
    ld a, a                                       ; $4702: $7f
    ld [hl], d                                    ; $4703: $72
    add l                                         ; $4704: $85
    ld l, l                                       ; $4705: $6d
    and d                                         ; $4706: $a2
    or b                                          ; $4707: $b0
    rst $30                                       ; $4708: $f7
    and a                                         ; $4709: $a7
    db $fd                                        ; $470a: $fd
    rst $10                                       ; $470b: $d7
    xor $fb                                       ; $470c: $ee $fb
    dec d                                         ; $470e: $15
    ld c, c                                       ; $470f: $49
    ld d, a                                       ; $4710: $57
    ld l, l                                       ; $4711: $6d
    ld a, [hl]                                    ; $4712: $7e
    dec [hl]                                      ; $4713: $35
    push hl                                       ; $4714: $e5
    or e                                          ; $4715: $b3
    ret nz                                        ; $4716: $c0

    ld [hl], d                                    ; $4717: $72
    add hl, hl                                    ; $4718: $29
    ld [hl], h                                    ; $4719: $74
    ld l, $85                                     ; $471a: $2e $85
    xor c                                         ; $471c: $a9
    cp d                                          ; $471d: $ba
    inc d                                         ; $471e: $14
    ld a, d                                       ; $471f: $7a
    xor c                                         ; $4720: $a9
    and [hl]                                      ; $4721: $a6
    or b                                          ; $4722: $b0
    ld e, l                                       ; $4723: $5d
    sbc a                                         ; $4724: $9f
    ld c, [hl]                                    ; $4725: $4e
    sbc h                                         ; $4726: $9c
    cp e                                          ; $4727: $bb
    ld a, [c]                                     ; $4728: $f2
    ld sp, hl                                     ; $4729: $f9
    cp b                                          ; $472a: $b8
    reti                                          ; $472b: $d9


    bit 0, l                                      ; $472c: $cb $45
    ld e, l                                       ; $472e: $5d
    db $ec                                        ; $472f: $ec
    ld b, l                                       ; $4730: $45
    ld h, c                                       ; $4731: $61
    rst $28                                       ; $4732: $ef
    ld c, c                                       ; $4733: $49
    dec b                                         ; $4734: $05
    ld h, c                                       ; $4735: $61
    ld b, e                                       ; $4736: $43
    inc e                                         ; $4737: $1c
    call z, $f93d                                 ; $4738: $cc $3d $f9
    ld d, c                                       ; $473b: $51
    rla                                           ; $473c: $17
    dec sp                                        ; $473d: $3b
    or [hl]                                       ; $473e: $b6
    scf                                           ; $473f: $37
    ld b, c                                       ; $4740: $41
    xor b                                         ; $4741: $a8
    ld c, h                                       ; $4742: $4c
    cp a                                          ; $4743: $bf
    ld [bc], a                                    ; $4744: $02
    ld c, c                                       ; $4745: $49
    ld d, a                                       ; $4746: $57
    sbc [hl]                                      ; $4747: $9e
    ld e, a                                       ; $4748: $5f
    dec l                                         ; $4749: $2d
    scf                                           ; $474a: $37
    add d                                         ; $474b: $82
    xor b                                         ; $474c: $a8
    ld c, e                                       ; $474d: $4b
    ld [hl], c                                    ; $474e: $71
    rst $28                                       ; $474f: $ef
    sbc h                                         ; $4750: $9c
    rst $38                                       ; $4751: $ff
    ld d, d                                       ; $4752: $52
    cp l                                          ; $4753: $bd
    halt                                          ; $4754: $76
    xor $74                                       ; $4755: $ee $74
    ld l, c                                       ; $4757: $69
    and d                                         ; $4758: $a2
    sbc c                                         ; $4759: $99
    add $9b                                       ; $475a: $c6 $9b
    ld c, l                                       ; $475c: $4d
    and e                                         ; $475d: $a3
    ld l, c                                       ; $475e: $69
    and d                                         ; $475f: $a2
    sbc c                                         ; $4760: $99
    and $9b                                       ; $4761: $e6 $9b
    rst $28                                       ; $4763: $ef
    ld d, a                                       ; $4764: $57
    ld c, c                                       ; $4765: $49
    ld d, a                                       ; $4766: $57
    ld l, l                                       ; $4767: $6d
    rst $28                                       ; $4768: $ef
    add sp, -$41                                  ; $4769: $e8 $bf
    jp nc, Jump_044_4c9f                          ; $476b: $d2 $9f $4c

    jp z, $f62c                                   ; $476e: $ca $2c $f6

    inc h                                         ; $4771: $24
    ld a, c                                       ; $4772: $79
    and l                                         ; $4773: $a5
    ld d, b                                       ; $4774: $50
    sbc [hl]                                      ; $4775: $9e
    ld a, [hl]                                    ; $4776: $7e
    dec b                                         ; $4777: $05
    ld c, c                                       ; $4778: $49
    ld d, a                                       ; $4779: $57
    db $ed                                        ; $477a: $ed
    cp a                                          ; $477b: $bf
    ld l, b                                       ; $477c: $68
    ld d, a                                       ; $477d: $57
    ld a, a                                       ; $477e: $7f
    xor b                                         ; $477f: $a8
    add h                                         ; $4780: $84
    db $fc                                        ; $4781: $fc
    ld [hl-], a                                   ; $4782: $32
    ld d, c                                       ; $4783: $51
    sub a                                         ; $4784: $97
    adc [hl]                                      ; $4785: $8e
    ld hl, $6efc                                  ; $4786: $21 $fc $6e
    or $a5                                        ; $4789: $f6 $a5
    ld d, e                                       ; $478b: $53
    ld l, h                                       ; $478c: $6c

Jump_044_478d:
    ret z                                         ; $478d: $c8

    sub h                                         ; $478e: $94
    dec bc                                        ; $478f: $0b
    ld d, d                                       ; $4790: $52
    ld h, [hl]                                    ; $4791: $66
    or c                                          ; $4792: $b1
    daa                                           ; $4793: $27
    ret                                           ; $4794: $c9


    dec hl                                        ; $4795: $2b
    dec b                                         ; $4796: $05
    cp d                                          ; $4797: $ba
    ld d, h                                       ; $4798: $54
    sbc a                                         ; $4799: $9f
    cpl                                           ; $479a: $2f
    add l                                         ; $479b: $85
    ld c, d                                       ; $479c: $4a
    ld b, c                                       ; $479d: $41
    xor b                                         ; $479e: $a8
    db $e4                                        ; $479f: $e4
    call nz, $1e87                                ; $47a0: $c4 $87 $1e
    ld hl, sp-$7b                                 ; $47a3: $f8 $85
    ld de, $7b37                                  ; $47a5: $11 $37 $7b
    inc l                                         ; $47a8: $2c
    set 3, b                                      ; $47a9: $cb $d8
    ld [hl-], a                                   ; $47ab: $32
    or $fd                                        ; $47ac: $f6 $fd
    ld a, [bc]                                    ; $47ae: $0a
    ld c, c                                       ; $47af: $49
    ld d, a                                       ; $47b0: $57
    cp [hl]                                       ; $47b1: $be
    ld l, h                                       ; $47b2: $6c
    ret nc                                        ; $47b3: $d0

    ld a, $da                                     ; $47b4: $3e $da
    add sp, -$0b                                  ; $47b6: $e8 $f5
    rra                                           ; $47b8: $1f
    call nz, $848d                                ; $47b9: $c4 $8d $84
    ld c, d                                       ; $47bc: $4a
    add $39                                       ; $47bd: $c6 $39
    rst $38                                       ; $47bf: $ff
    ld c, l                                       ; $47c0: $4d
    jp z, $89ec                                   ; $47c1: $ca $ec $89

    di                                            ; $47c4: $f3
    inc hl                                        ; $47c5: $23
    ld l, h                                       ; $47c6: $6c
    ld b, e                                       ; $47c7: $43
    sub $1f                                       ; $47c8: $d6 $1f
    ld a, [hl+]                                   ; $47ca: $2a
    rra                                           ; $47cb: $1f
    ld b, a                                       ; $47cc: $47
    db $ed                                        ; $47cd: $ed
    or e                                          ; $47ce: $b3
    ret nz                                        ; $47cf: $c0

    ld [hl], d                                    ; $47d0: $72
    dec sp                                        ; $47d1: $3b
    db $e4                                        ; $47d2: $e4
    rst $18                                       ; $47d3: $df
    db $ec                                        ; $47d4: $ec
    adc c                                         ; $47d5: $89
    jp nz, $d945                                  ; $47d6: $c2 $45 $d9

    ld l, e                                       ; $47d9: $6b
    cp $eb                                        ; $47da: $fe $eb
    ld d, a                                       ; $47dc: $57
    ld c, c                                       ; $47dd: $49
    ld d, a                                       ; $47de: $57
    xor l                                         ; $47df: $ad
    dec de                                        ; $47e0: $1b
    dec a                                         ; $47e1: $3d
    push af                                       ; $47e2: $f5
    add hl, sp                                    ; $47e3: $39
    db $db                                        ; $47e4: $db
    cpl                                           ; $47e5: $2f
    ld a, [bc]                                    ; $47e6: $0a
    dec b                                         ; $47e7: $05
    ld [hl], c                                    ; $47e8: $71
    ld a, [hl]                                    ; $47e9: $7e
    and h                                         ; $47ea: $a4
    cp b                                          ; $47eb: $b8
    ld e, c                                       ; $47ec: $59
    xor h                                         ; $47ed: $ac
    cp [hl]                                       ; $47ee: $be
    ld l, h                                       ; $47ef: $6c
    ld h, h                                       ; $47f0: $64
    or c                                          ; $47f1: $b1
    ld e, c                                       ; $47f2: $59
    db $ec                                        ; $47f3: $ec
    ret nz                                        ; $47f4: $c0

    push af                                       ; $47f5: $f5
    ld b, h                                       ; $47f6: $44
    ld h, c                                       ; $47f7: $61
    rst $28                                       ; $47f8: $ef
    adc a                                         ; $47f9: $8f
    ld d, c                                       ; $47fa: $51
    db $ed                                        ; $47fb: $ed
    ld e, [hl]                                    ; $47fc: $5e
    ld a, l                                       ; $47fd: $7d
    ld [hl], $95                                  ; $47fe: $36 $95
    scf                                           ; $4800: $37
    db $f4                                        ; $4801: $f4
    dec hl                                        ; $4802: $2b
    ld c, c                                       ; $4803: $49
    ld d, a                                       ; $4804: $57
    ld [hl], l                                    ; $4805: $75
    ld l, a                                       ; $4806: $6f
    db $e4                                        ; $4807: $e4
    ld h, b                                       ; $4808: $60
    adc b                                         ; $4809: $88
    ld h, b                                       ; $480a: $60
    rst $00                                       ; $480b: $c7
    ld a, l                                       ; $480c: $7d
    or l                                          ; $480d: $b5
    ld c, h                                       ; $480e: $4c
    inc d                                         ; $480f: $14
    or $f6                                        ; $4810: $f6 $f6
    ld l, b                                       ; $4812: $68
    jp $b3f4                                      ; $4813: $c3 $f4 $b3


    ld b, a                                       ; $4816: $47
    cp e                                          ; $4817: $bb
    rrca                                          ; $4818: $0f
    ld [c], a                                     ; $4819: $e2
    ld h, [hl]                                    ; $481a: $66
    ld l, a                                       ; $481b: $6f
    db $10                                        ; $481c: $10
    ld l, a                                       ; $481d: $6f
    db $e4                                        ; $481e: $e4
    ld a, [bc]                                    ; $481f: $0a
    ld a, a                                       ; $4820: $7f
    call nc, Call_044_7bc5                        ; $4821: $d4 $c5 $7b
    ld h, e                                       ; $4824: $63
    sub a                                         ; $4825: $97
    ld [$73b5], a                                 ; $4826: $ea $b5 $73
    rst $10                                       ; $4829: $d7
    xor a                                         ; $482a: $af
    ld c, c                                       ; $482b: $49
    ld d, a                                       ; $482c: $57
    ld [hl], l                                    ; $482d: $75
    db $ed                                        ; $482e: $ed
    xor d                                         ; $482f: $aa
    rrca                                          ; $4830: $0f
    ld a, c                                       ; $4831: $79
    call z, Call_044_7d57                         ; $4832: $cc $57 $7d
    call c, Call_000_14c8                         ; $4835: $dc $c8 $14
    ld [hl], a                                    ; $4838: $77
    sub h                                         ; $4839: $94
    ccf                                           ; $483a: $3f
    ld a, [bc]                                    ; $483b: $0a
    dec sp                                        ; $483c: $3b
    db $e4                                        ; $483d: $e4
    rst $18                                       ; $483e: $df
    db $ec                                        ; $483f: $ec
    adc c                                         ; $4840: $89
    jp nz, $b28e                                  ; $4841: $c2 $8e $b2

    rst $10                                       ; $4844: $d7
    and [hl]                                      ; $4845: $a6
    ld e, a                                       ; $4846: $5f
    ld bc, $5749                                  ; $4847: $01 $49 $57
    ld l, l                                       ; $484a: $6d
    adc [hl]                                      ; $484b: $8e
    xor b                                         ; $484c: $a8
    ld a, [$3db3]                                 ; $484d: $fa $b3 $3d
    ld a, [hl-]                                   ; $4850: $3a
    jr z, jr_044_485e                             ; $4851: $28 $0b

    call nc, Call_044_446f                        ; $4853: $d4 $6f $44
    ld e, l                                       ; $4856: $5d
    ld a, h                                       ; $4857: $7c
    ld e, a                                       ; $4858: $5f
    jp nc, $153e                                  ; $4859: $d2 $3e $15

    ld l, l                                       ; $485c: $6d
    or d                                          ; $485d: $b2

jr_044_485e:
    ret nz                                        ; $485e: $c0

    jp nc, $effe                                  ; $485f: $d2 $fe $ef

    ld h, a                                       ; $4862: $67
    ld a, $04                                     ; $4863: $3e $04
    ld l, c                                       ; $4865: $69
    inc de                                        ; $4866: $13
    halt                                          ; $4867: $76
    adc h                                         ; $4868: $8c
    or h                                          ; $4869: $b4
    rst $38                                       ; $486a: $ff
    jp c, $3f39                                   ; $486b: $da $39 $3f

    ld a, [$4915]                                 ; $486e: $fa $15 $49
    ld d, a                                       ; $4871: $57
    ld [hl], l                                    ; $4872: $75
    db $ed                                        ; $4873: $ed
    xor d                                         ; $4874: $aa
    ld c, c                                       ; $4875: $49
    push af                                       ; $4876: $f5
    jp c, $e3e4                                   ; $4877: $da $e4 $e3

    dec a                                         ; $487a: $3d
    add hl, sp                                    ; $487b: $39
    ld b, e                                       ; $487c: $43
    ld c, [hl]                                    ; $487d: $4e
    call c, Call_000_3c98                         ; $487e: $dc $98 $3c
    ld c, a                                       ; $4881: $4f
    call nc, Call_044_4a87                        ; $4882: $d4 $87 $4a
    jp c, Jump_044_5a30                           ; $4885: $da $30 $5a

    dec l                                         ; $4888: $2d
    db $10                                        ; $4889: $10
    ld b, [hl]                                    ; $488a: $46
    ld e, d                                       ; $488b: $5a
    push af                                       ; $488c: $f5
    jp c, $97b9                                   ; $488d: $da $b9 $97

    jp hl                                         ; $4890: $e9


    ld d, a                                       ; $4891: $57
    ld c, c                                       ; $4892: $49
    ld d, a                                       ; $4893: $57
    ld [hl], l                                    ; $4894: $75
    db $ed                                        ; $4895: $ed
    xor d                                         ; $4896: $aa
    rst $08                                       ; $4897: $cf
    db $db                                        ; $4898: $db
    ld [hl], c                                    ; $4899: $71
    push af                                       ; $489a: $f5
    jp nz, $a7c8                                  ; $489b: $c2 $c8 $a7

    ldh a, [$eb]                                  ; $489e: $f0 $eb
    ld l, a                                       ; $48a0: $6f
    sbc a                                         ; $48a1: $9f
    ld hl, $591b                                  ; $48a2: $21 $1b $59
    ld l, h                                       ; $48a5: $6c
    ld d, $3b                                     ; $48a6: $16 $3b
    ld [hl], b                                    ; $48a8: $70
    dec a                                         ; $48a9: $3d
    xor c                                         ; $48aa: $a9
    ld e, [hl]                                    ; $48ab: $5e
    dec sp                                        ; $48ac: $3b
    rst $20                                       ; $48ad: $e7
    ld b, a                                       ; $48ae: $47
    inc d                                         ; $48af: $14
    halt                                          ; $48b0: $76
    add h                                         ; $48b1: $84
    ld d, [hl]                                    ; $48b2: $56
    or b                                          ; $48b3: $b0
    ld c, c                                       ; $48b4: $49
    ld bc, $fa33                                  ; $48b5: $01 $33 $fa
    dec d                                         ; $48b8: $15
    ld c, c                                       ; $48b9: $49
    ld d, a                                       ; $48ba: $57
    sbc [hl]                                      ; $48bb: $9e
    db $d3                                        ; $48bc: $d3
    xor b                                         ; $48bd: $a8
    ld [hl], a                                    ; $48be: $77
    ld b, h                                       ; $48bf: $44
    dec a                                         ; $48c0: $3d
    adc a                                         ; $48c1: $8f
    ld hl, $52ea                                  ; $48c2: $21 $ea $52
    ld a, e                                       ; $48c5: $7b
    or h                                          ; $48c6: $b4
    xor $de                                       ; $48c7: $ee $de
    cp b                                          ; $48c9: $b8
    db $f4                                        ; $48ca: $f4
    ld l, c                                       ; $48cb: $69
    db $fd                                        ; $48cc: $fd
    and b                                         ; $48cd: $a0
    sub b                                         ; $48ce: $90
    db $db                                        ; $48cf: $db
    add hl, hl                                    ; $48d0: $29
    ld [hl], h                                    ; $48d1: $74
    ld [hl+], a                                   ; $48d2: $22
    ld d, e                                       ; $48d3: $53
    ld hl, $2a1f                                  ; $48d4: $21 $1f $2a
    rra                                           ; $48d7: $1f
    add l                                         ; $48d8: $85
    cp l                                          ; $48d9: $bd
    ld de, $fa1f                                  ; $48da: $11 $1f $fa
    call z, $f136                                 ; $48dd: $cc $36 $f1

jr_044_48e0:
    db $fc                                        ; $48e0: $fc
    add d                                         ; $48e1: $82
    ld a, [hl]                                    ; $48e2: $7e
    dec b                                         ; $48e3: $05
    ld c, c                                       ; $48e4: $49
    ld d, a                                       ; $48e5: $57
    ld l, l                                       ; $48e6: $6d
    ld a, [hl]                                    ; $48e7: $7e
    dec [hl]                                      ; $48e8: $35
    push hl                                       ; $48e9: $e5
    ld d, e                                       ; $48ea: $53
    sbc h                                         ; $48eb: $9c
    dec e                                         ; $48ec: $1d
    or e                                          ; $48ed: $b3
    sbc l                                         ; $48ee: $9d
    ld b, e                                       ; $48ef: $43
    call nc, $9f65                                ; $48f0: $d4 $65 $9f
    sbc $2e                                       ; $48f3: $de $2e
    ld [$e272], a                                 ; $48f5: $ea $72 $e2
    ld e, [hl]                                    ; $48f8: $5e
    jr jr_044_48e0                                ; $48f9: $18 $e5

    xor d                                         ; $48fb: $aa
    db $eb                                        ; $48fc: $eb
    ld d, a                                       ; $48fd: $57
    ld c, c                                       ; $48fe: $49
    ld d, a                                       ; $48ff: $57
    sbc [hl]                                      ; $4900: $9e
    db $d3                                        ; $4901: $d3
    xor b                                         ; $4902: $a8
    ld [hl], a                                    ; $4903: $77
    ld b, h                                       ; $4904: $44
    dec a                                         ; $4905: $3d
    adc a                                         ; $4906: $8f
    ld hl, $52ea                                  ; $4907: $21 $ea $52
    ld a, e                                       ; $490a: $7b
    or h                                          ; $490b: $b4
    xor $de                                       ; $490c: $ee $de
    cp b                                          ; $490e: $b8
    db $f4                                        ; $490f: $f4
    ld l, c                                       ; $4910: $69
    db $fd                                        ; $4911: $fd
    and b                                         ; $4912: $a0
    sub b                                         ; $4913: $90
    db $db                                        ; $4914: $db
    add hl, hl                                    ; $4915: $29
    ld [hl], h                                    ; $4916: $74
    ld [hl+], a                                   ; $4917: $22
    ld d, e                                       ; $4918: $53
    ld hl, $2a1f                                  ; $4919: $21 $1f $2a
    rra                                           ; $491c: $1f
    add l                                         ; $491d: $85
    cp l                                          ; $491e: $bd
    ld de, $fa1f                                  ; $491f: $11 $1f $fa
    call z, $f136                                 ; $4922: $cc $36 $f1
    db $fc                                        ; $4925: $fc
    add d                                         ; $4926: $82
    ld a, [hl]                                    ; $4927: $7e
    dec b                                         ; $4928: $05
    ld c, c                                       ; $4929: $49
    ld d, a                                       ; $492a: $57
    db $ed                                        ; $492b: $ed
    ld b, c                                       ; $492c: $41
    db $d3                                        ; $492d: $d3
    jr nz, @-$14                                  ; $492e: $20 $ea

    db $ed                                        ; $4930: $ed
    ld a, $85                                     ; $4931: $3e $85
    dec c                                         ; $4933: $0d
    jp c, $f9c7                                   ; $4934: $da $c7 $f9

    sub c                                         ; $4937: $91
    push bc                                       ; $4938: $c5
    or b                                          ; $4939: $b0
    cp h                                          ; $493a: $bc
    dec a                                         ; $493b: $3d
    ld sp, hl                                     ; $493c: $f9
    cp c                                          ; $493d: $b9
    ld l, b                                       ; $493e: $68
    scf                                           ; $493f: $37
    db $e4                                        ; $4940: $e4
    res 4, l                                      ; $4941: $cb $a5
    or b                                          ; $4943: $b0
    ld b, c                                       ; $4944: $41
    dec de                                        ; $4945: $1b
    cp c                                          ; $4946: $b9
    sbc h                                         ; $4947: $9c
    and h                                         ; $4948: $a4
    ld l, l                                       ; $4949: $6d
    db $db                                        ; $494a: $db
    cpl                                           ; $494b: $2f
    ld [$15fb], a                                 ; $494c: $ea $fb $15
    ld c, c                                       ; $494f: $49
    ld d, a                                       ; $4950: $57
    sbc [hl]                                      ; $4951: $9e
    db $d3                                        ; $4952: $d3
    xor b                                         ; $4953: $a8
    ld [hl], a                                    ; $4954: $77
    ld b, h                                       ; $4955: $44
    dec a                                         ; $4956: $3d
    db $db                                        ; $4957: $db
    add hl, sp                                    ; $4958: $39
    ld b, h                                       ; $4959: $44
    ld e, l                                       ; $495a: $5d
    ld l, d                                       ; $495b: $6a
    adc a                                         ; $495c: $8f
    sub $dd                                       ; $495d: $d6 $dd
    dec de                                        ; $495f: $1b
    sub a                                         ; $4960: $97
    ld a, $ad                                     ; $4961: $3e $ad
    rra                                           ; $4963: $1f
    inc d                                         ; $4964: $14
    ld [hl], d                                    ; $4965: $72
    dec sp                                        ; $4966: $3b
    add l                                         ; $4967: $85
    ld c, [hl]                                    ; $4968: $4e
    ld h, h                                       ; $4969: $64
    ld a, [hl+]                                   ; $496a: $2a
    db $e4                                        ; $496b: $e4
    ld b, e                                       ; $496c: $43
    push hl                                       ; $496d: $e5
    and e                                         ; $496e: $a3
    or b                                          ; $496f: $b0
    scf                                           ; $4970: $37
    ld [c], a                                     ; $4971: $e2
    ld b, e                                       ; $4972: $43
    sbc a                                         ; $4973: $9f
    reti                                          ; $4974: $d9


    ld h, $9e                                     ; $4975: $26 $9e
    ld e, a                                       ; $4977: $5f
    ret nc                                        ; $4978: $d0

    xor a                                         ; $4979: $af
    ld c, c                                       ; $497a: $49
    ld d, a                                       ; $497b: $57
    sbc [hl]                                      ; $497c: $9e
    db $d3                                        ; $497d: $d3
    xor b                                         ; $497e: $a8
    ld [hl], a                                    ; $497f: $77
    ld b, h                                       ; $4980: $44
    dec a                                         ; $4981: $3d
    db $db                                        ; $4982: $db
    add hl, sp                                    ; $4983: $39
    ld b, h                                       ; $4984: $44
    ld e, l                                       ; $4985: $5d
    ld l, d                                       ; $4986: $6a
    adc a                                         ; $4987: $8f
    sub $dd                                       ; $4988: $d6 $dd
    dec de                                        ; $498a: $1b
    sub a                                         ; $498b: $97
    ld a, $ad                                     ; $498c: $3e $ad
    rra                                           ; $498e: $1f
    inc d                                         ; $498f: $14
    ld [hl], d                                    ; $4990: $72
    dec sp                                        ; $4991: $3b
    add l                                         ; $4992: $85
    ld c, [hl]                                    ; $4993: $4e
    ld h, h                                       ; $4994: $64
    ld a, [hl+]                                   ; $4995: $2a
    db $e4                                        ; $4996: $e4
    ld b, e                                       ; $4997: $43
    push hl                                       ; $4998: $e5
    and e                                         ; $4999: $a3
    or b                                          ; $499a: $b0
    scf                                           ; $499b: $37
    ld [c], a                                     ; $499c: $e2
    ld b, e                                       ; $499d: $43
    sbc a                                         ; $499e: $9f
    reti                                          ; $499f: $d9


    ld h, $9e                                     ; $49a0: $26 $9e
    ld e, a                                       ; $49a2: $5f
    ret nc                                        ; $49a3: $d0

    xor a                                         ; $49a4: $af
    ld c, c                                       ; $49a5: $49
    ld d, a                                       ; $49a6: $57
    ld l, l                                       ; $49a7: $6d
    adc [hl]                                      ; $49a8: $8e
    xor b                                         ; $49a9: $a8
    ld a, [$3b73]                                 ; $49aa: $fa $73 $3b
    db $e4                                        ; $49ad: $e4
    db $ed                                        ; $49ae: $ed
    db $fd                                        ; $49af: $fd
    sbc d                                         ; $49b0: $9a
    halt                                          ; $49b1: $76
    inc de                                        ; $49b2: $13
    ld [hl], l                                    ; $49b3: $75
    xor c                                         ; $49b4: $a9
    dec a                                         ; $49b5: $3d
    ld e, d                                       ; $49b6: $5a
    xor c                                         ; $49b7: $a9
    ldh a, [$0a]                                  ; $49b8: $f0 $0a
    db $fd                                        ; $49ba: $fd
    ld a, [bc]                                    ; $49bb: $0a
    ld c, c                                       ; $49bc: $49
    ld d, a                                       ; $49bd: $57
    ld [hl], l                                    ; $49be: $75
    db $ed                                        ; $49bf: $ed
    xor d                                         ; $49c0: $aa
    rst $08                                       ; $49c1: $cf
    ld h, d                                       ; $49c2: $62
    or e                                          ; $49c3: $b3
    ret c                                         ; $49c4: $d8

    add c                                         ; $49c5: $81
    rst $18                                       ; $49c6: $df
    xor $a3                                       ; $49c7: $ee $a3
    or b                                          ; $49c9: $b0
    ld d, e                                       ; $49ca: $53
    rst $30                                       ; $49cb: $f7
    ld l, a                                       ; $49cc: $6f
    or $a4                                        ; $49cd: $f6 $a4
    ld a, d                                       ; $49cf: $7a
    db $ed                                        ; $49d0: $ed
    call c, $2bf4                                 ; $49d1: $dc $f4 $2b
    ld c, c                                       ; $49d4: $49
    ld d, a                                       ; $49d5: $57
    ld [hl], l                                    ; $49d6: $75
    dec c                                         ; $49d7: $0d
    push hl                                       ; $49d8: $e5
    inc d                                         ; $49d9: $14
    and d                                         ; $49da: $a2
    ld l, $b5                                     ; $49db: $2e $b5
    ld b, a                                       ; $49dd: $47
    db $eb                                        ; $49de: $eb
    xor $8d                                       ; $49df: $ee $8d

Jump_044_49e1:
    ld c, e                                       ; $49e1: $4b
    sbc a                                         ; $49e2: $9f
    ld d, [hl]                                    ; $49e3: $56
    xor e                                         ; $49e4: $ab

Call_044_49e5:
    ld [hl], e                                    ; $49e5: $73
    inc de                                        ; $49e6: $13
    ld [hl], l                                    ; $49e7: $75
    xor c                                         ; $49e8: $a9
    ld [hl], e                                    ; $49e9: $73
    ld l, [hl]                                    ; $49ea: $6e
    or $97                                        ; $49eb: $f6 $97
    or h                                          ; $49ed: $b4
    cp c                                          ; $49ee: $b9
    cp a                                          ; $49ef: $bf
    jp nz, $c5d6                                  ; $49f0: $c2 $d6 $c5

    add hl, de                                    ; $49f3: $19
    sbc [hl]                                      ; $49f4: $9e
    rst $00                                       ; $49f5: $c7
    db $10                                        ; $49f6: $10
    add l                                         ; $49f7: $85
    cp l                                          ; $49f8: $bd
    ccf                                           ; $49f9: $3f
    ld [hl], l                                    ; $49fa: $75
    rrca                                          ; $49fb: $0f
    ld l, h                                       ; $49fc: $6c
    sbc a                                         ; $49fd: $9f
    ld [hl], $6f                                  ; $49fe: $36 $6f
    ld c, a                                       ; $4a00: $4f
    add hl, de                                    ; $4a01: $19
    rst $28                                       ; $4a02: $ef
    ld l, a                                       ; $4a03: $6f
    db $f4                                        ; $4a04: $f4
    dec hl                                        ; $4a05: $2b
    ld c, c                                       ; $4a06: $49
    ld d, a                                       ; $4a07: $57
    cp [hl]                                       ; $4a08: $be
    ld [hl], h                                    ; $4a09: $74
    db $e4                                        ; $4a0a: $e4
    ld [hl], e                                    ; $4a0b: $73
    dec sp                                        ; $4a0c: $3b
    ld a, [$652f]                                 ; $4a0d: $fa $2f $65
    ld [hl+], a                                   ; $4a10: $22
    ret c                                         ; $4a11: $d8

    ld e, c                                       ; $4a12: $59
    ld h, [hl]                                    ; $4a13: $66
    sbc c                                         ; $4a14: $99
    db $fd                                        ; $4a15: $fd
    add [hl]                                      ; $4a16: $86
    ld l, b                                       ; $4a17: $68
    ld b, [hl]                                    ; $4a18: $46
    sub a                                         ; $4a19: $97
    ld h, l                                       ; $4a1a: $65
    ld d, d                                       ; $4a1b: $52
    cp l                                          ; $4a1c: $bd
    halt                                          ; $4a1d: $76
    ld l, [hl]                                    ; $4a1e: $6e
    and d                                         ; $4a1f: $a2
    or b                                          ; $4a20: $b0
    scf                                           ; $4a21: $37
    ld [c], a                                     ; $4a22: $e2
    dec sp                                        ; $4a23: $3b
    add [hl]                                      ; $4a24: $86
    cp l                                          ; $4a25: $bd
    ld de, $b65f                                  ; $4a26: $11 $5f $b6
    daa                                           ; $4a29: $27
    ld e, a                                       ; $4a2a: $5f
    ld a, e                                       ; $4a2b: $7b
    dec sp                                        ; $4a2c: $3b
    db $f4                                        ; $4a2d: $f4
    dec hl                                        ; $4a2e: $2b
    ld c, c                                       ; $4a2f: $49
    ld d, a                                       ; $4a30: $57
    sbc [hl]                                      ; $4a31: $9e
    ld d, e                                       ; $4a32: $53
    dec l                                         ; $4a33: $2d
    ld d, e                                       ; $4a34: $53
    adc [hl]                                      ; $4a35: $8e
    db $ed                                        ; $4a36: $ed
    inc e                                         ; $4a37: $1c
    and d                                         ; $4a38: $a2
    or b                                          ; $4a39: $b0
    or a                                          ; $4a3a: $b7
    rst $00                                       ; $4a3b: $c7
    adc c                                         ; $4a3c: $89
    sbc e                                         ; $4a3d: $9b
    ld l, d                                       ; $4a3e: $6a
    add hl, sp                                    ; $4a3f: $39
    jp z, Jump_044_5f1f                           ; $4a40: $ca $1f $5f

    ld a, d                                       ; $4a43: $7a
    adc h                                         ; $4a44: $8c
    or h                                          ; $4a45: $b4
    rst $38                                       ; $4a46: $ff
    jp c, $d7b9                                   ; $4a47: $da $b9 $d7

    ld b, l                                       ; $4a4a: $45
    or b                                          ; $4a4b: $b0
    rst $30                                       ; $4a4c: $f7
    rst $00                                       ; $4a4d: $c7
    add a                                         ; $4a4e: $87
    cp $46                                        ; $4a4f: $fe $46
    jp z, Jump_044_4be5                           ; $4a51: $ca $e5 $4b

    cp c                                          ; $4a54: $b9
    jp nz, $efc8                                  ; $4a55: $c2 $c8 $ef

    db $ed                                        ; $4a58: $ed
    add c                                         ; $4a59: $81
    or d                                          ; $4a5a: $b2
    db $ec                                        ; $4a5b: $ec
    add hl, hl                                    ; $4a5c: $29
    scf                                           ; $4a5d: $37
    add d                                         ; $4a5e: $82
    xor b                                         ; $4a5f: $a8
    dec bc                                        ; $4a60: $0b
    sub l                                         ; $4a61: $95
    rrca                                          ; $4a62: $0f
    ld d, e                                       ; $4a63: $53
    db $fd                                        ; $4a64: $fd
    rst $30                                       ; $4a65: $f7
    dec hl                                        ; $4a66: $2b
    ld c, c                                       ; $4a67: $49
    ld d, a                                       ; $4a68: $57
    cp [hl]                                       ; $4a69: $be
    ld [hl], h                                    ; $4a6a: $74
    db $e4                                        ; $4a6b: $e4
    or e                                          ; $4a6c: $b3
    ccf                                           ; $4a6d: $3f
    ld l, [hl]                                    ; $4a6e: $6e
    ld c, h                                       ; $4a6f: $4c
    cp [hl]                                       ; $4a70: $be
    and d                                         ; $4a71: $a2
    push hl                                       ; $4a72: $e5
    inc hl                                        ; $4a73: $23
    ret c                                         ; $4a74: $d8

    ld e, c                                       ; $4a75: $59
    ld h, [hl]                                    ; $4a76: $66
    sbc c                                         ; $4a77: $99
    db $fd                                        ; $4a78: $fd
    add [hl]                                      ; $4a79: $86
    ld l, b                                       ; $4a7a: $68
    ld b, [hl]                                    ; $4a7b: $46
    sub a                                         ; $4a7c: $97
    ld h, l                                       ; $4a7d: $65
    ld d, d                                       ; $4a7e: $52
    cp l                                          ; $4a7f: $bd
    halt                                          ; $4a80: $76
    ld l, [hl]                                    ; $4a81: $6e
    and d                                         ; $4a82: $a2
    or b                                          ; $4a83: $b0
    scf                                           ; $4a84: $37

Call_044_4a85:
    ld [c], a                                     ; $4a85: $e2
    dec sp                                        ; $4a86: $3b

Call_044_4a87:
    add [hl]                                      ; $4a87: $86
    cp l                                          ; $4a88: $bd
    ld de, $b65f                                  ; $4a89: $11 $5f $b6
    daa                                           ; $4a8c: $27
    ld e, a                                       ; $4a8d: $5f
    ld a, e                                       ; $4a8e: $7b
    dec sp                                        ; $4a8f: $3b
    db $f4                                        ; $4a90: $f4
    dec hl                                        ; $4a91: $2b
    ld c, c                                       ; $4a92: $49
    ld d, a                                       ; $4a93: $57
    cp [hl]                                       ; $4a94: $be
    ld [hl], h                                    ; $4a95: $74
    db $e4                                        ; $4a96: $e4
    ld [hl], e                                    ; $4a97: $73
    dec sp                                        ; $4a98: $3b
    ei                                            ; $4a99: $fb
    jr z, jr_044_4aeb                             ; $4a9a: $28 $4f

    inc b                                         ; $4a9c: $04
    dec sp                                        ; $4a9d: $3b
    sra h                                         ; $4a9e: $cb $2c
    or e                                          ; $4aa0: $b3
    rst $18                                       ; $4aa1: $df
    db $10                                        ; $4aa2: $10
    call $b2e8                                    ; $4aa3: $cd $e8 $b2
    ld c, h                                       ; $4aa6: $4c
    xor d                                         ; $4aa7: $aa
    rst $10                                       ; $4aa8: $d7
    adc $4d                                       ; $4aa9: $ce $4d
    inc d                                         ; $4aab: $14
    or $46                                        ; $4aac: $f6 $46
    ld a, h                                       ; $4aae: $7c
    rst $00                                       ; $4aaf: $c7
    or b                                          ; $4ab0: $b0
    scf                                           ; $4ab1: $37
    ld [c], a                                     ; $4ab2: $e2
    set 6, [hl]                                   ; $4ab3: $cb $f6
    db $e4                                        ; $4ab5: $e4
    ld l, e                                       ; $4ab6: $6b
    ld l, a                                       ; $4ab7: $6f
    add a                                         ; $4ab8: $87
    ld a, [hl]                                    ; $4ab9: $7e
    dec b                                         ; $4aba: $05
    ld c, c                                       ; $4abb: $49
    ld d, a                                       ; $4abc: $57
    cp [hl]                                       ; $4abd: $be
    ld [hl], h                                    ; $4abe: $74
    db $e4                                        ; $4abf: $e4
    or e                                          ; $4ac0: $b3
    ccf                                           ; $4ac1: $3f
    adc $7f                                       ; $4ac2: $ce $7f
    db $fc                                        ; $4ac4: $fc
    ld h, [hl]                                    ; $4ac5: $66
    rra                                           ; $4ac6: $1f
    pop bc                                        ; $4ac7: $c1
    adc $32                                       ; $4ac8: $ce $32
    set 5, h                                      ; $4aca: $cb $ec
    scf                                           ; $4acc: $37
    ld b, h                                       ; $4acd: $44
    inc sp                                        ; $4ace: $33
    cp d                                          ; $4acf: $ba
    inc l                                         ; $4ad0: $2c
    sub e                                         ; $4ad1: $93
    ld [$73b5], a                                 ; $4ad2: $ea $b5 $73
    inc de                                        ; $4ad5: $13
    add l                                         ; $4ad6: $85
    cp l                                          ; $4ad7: $bd
    ld de, $31df                                  ; $4ad8: $11 $df $31
    db $ec                                        ; $4adb: $ec
    adc l                                         ; $4adc: $8d
    ld hl, sp-$4e                                 ; $4add: $f8 $b2
    dec a                                         ; $4adf: $3d
    ld sp, hl                                     ; $4ae0: $f9
    jp c, $a1db                                   ; $4ae1: $da $db $a1

    ld e, a                                       ; $4ae4: $5f
    ld bc, $5749                                  ; $4ae5: $01 $49 $57
    sbc [hl]                                      ; $4ae8: $9e
    cpl                                           ; $4ae9: $2f
    db $fc                                        ; $4aea: $fc

jr_044_4aeb:
    jp nz, $c288                                  ; $4aeb: $c2 $88 $c2

    adc $32                                       ; $4aee: $ce $32
    set 5, h                                      ; $4af0: $cb $ec
    scf                                           ; $4af2: $37
    ld b, h                                       ; $4af3: $44
    inc sp                                        ; $4af4: $33
    cp d                                          ; $4af5: $ba
    inc l                                         ; $4af6: $2c
    sub e                                         ; $4af7: $93
    ld [$73b5], a                                 ; $4af8: $ea $b5 $73
    inc de                                        ; $4afb: $13
    add l                                         ; $4afc: $85
    cp l                                          ; $4afd: $bd
    ld de, $31df                                  ; $4afe: $11 $df $31
    db $ec                                        ; $4b01: $ec
    adc l                                         ; $4b02: $8d
    ld hl, sp-$4e                                 ; $4b03: $f8 $b2
    dec a                                         ; $4b05: $3d
    ld sp, hl                                     ; $4b06: $f9
    jp c, $a1db                                   ; $4b07: $da $db $a1

    ld e, a                                       ; $4b0a: $5f
    ld bc, $5749                                  ; $4b0b: $01 $49 $57
    cp [hl]                                       ; $4b0e: $be
    ld [hl], h                                    ; $4b0f: $74
    db $e4                                        ; $4b10: $e4
    or e                                          ; $4b11: $b3
    ccf                                           ; $4b12: $3f
    ld a, [$8667]                                 ; $4b13: $fa $67 $86
    db $dd                                        ; $4b16: $dd
    ld b, a                                       ; $4b17: $47
    or b                                          ; $4b18: $b0
    or e                                          ; $4b19: $b3
    call z, $fb32                                 ; $4b1a: $cc $32 $fb
    dec c                                         ; $4b1d: $0d
    pop de                                        ; $4b1e: $d1
    adc h                                         ; $4b1f: $8c
    ld l, $cb                                     ; $4b20: $2e $cb
    and h                                         ; $4b22: $a4
    ld a, d                                       ; $4b23: $7a
    db $ed                                        ; $4b24: $ed
    call c, $6144                                 ; $4b25: $dc $44 $61
    ld l, a                                       ; $4b28: $6f
    call nz, $0c77                                ; $4b29: $c4 $77 $0c
    ld a, e                                       ; $4b2c: $7b
    inc hl                                        ; $4b2d: $23
    cp [hl]                                       ; $4b2e: $be
    ld l, h                                       ; $4b2f: $6c
    ld c, a                                       ; $4b30: $4f
    cp [hl]                                       ; $4b31: $be
    or $76                                        ; $4b32: $f6 $76
    add sp, $57                                   ; $4b34: $e8 $57
    ld c, c                                       ; $4b36: $49
    ld d, a                                       ; $4b37: $57
    ld [hl], l                                    ; $4b38: $75
    ld h, a                                       ; $4b39: $67
    sbc c                                         ; $4b3a: $99
    db $fd                                        ; $4b3b: $fd
    add [hl]                                      ; $4b3c: $86
    sbc h                                         ; $4b3d: $9c
    cp b                                          ; $4b3e: $b8
    rla                                           ; $4b3f: $17
    ld a, [hl]                                    ; $4b40: $7e
    or [hl]                                       ; $4b41: $b6
    ld [hl], e                                    ; $4b42: $73
    ret z                                         ; $4b43: $c8

    ld [hl-], a                                   ; $4b44: $32
    ld c, e                                       ; $4b45: $4b
    cp a                                          ; $4b46: $bf
    ld [bc], a                                    ; $4b47: $02
    ld c, c                                       ; $4b48: $49
    ld d, a                                       ; $4b49: $57
    cp [hl]                                       ; $4b4a: $be
    ld [hl], h                                    ; $4b4b: $74
    db $e4                                        ; $4b4c: $e4
    or e                                          ; $4b4d: $b3
    ccf                                           ; $4b4e: $3f
    adc $7f                                       ; $4b4f: $ce $7f
    db $fc                                        ; $4b51: $fc
    ld h, [hl]                                    ; $4b52: $66
    rra                                           ; $4b53: $1f
    dec sp                                        ; $4b54: $3b
    xor [hl]                                      ; $4b55: $ae
    adc $7d                                       ; $4b56: $ce $7d
    inc b                                         ; $4b58: $04
    dec sp                                        ; $4b59: $3b
    sra h                                         ; $4b5a: $cb $2c
    or e                                          ; $4b5c: $b3
    rst $18                                       ; $4b5d: $df
    db $10                                        ; $4b5e: $10
    call $b2e8                                    ; $4b5f: $cd $e8 $b2
    ld c, h                                       ; $4b62: $4c
    xor d                                         ; $4b63: $aa
    rst $10                                       ; $4b64: $d7
    adc $4d                                       ; $4b65: $ce $4d
    inc d                                         ; $4b67: $14
    or $46                                        ; $4b68: $f6 $46
    ld a, h                                       ; $4b6a: $7c
    rst $00                                       ; $4b6b: $c7
    or b                                          ; $4b6c: $b0
    scf                                           ; $4b6d: $37
    ld [c], a                                     ; $4b6e: $e2
    set 6, [hl]                                   ; $4b6f: $cb $f6
    db $e4                                        ; $4b71: $e4
    ld l, e                                       ; $4b72: $6b
    ld l, a                                       ; $4b73: $6f
    add a                                         ; $4b74: $87
    ld a, [hl]                                    ; $4b75: $7e
    dec b                                         ; $4b76: $05
    ld c, c                                       ; $4b77: $49
    ld d, a                                       ; $4b78: $57
    cp [hl]                                       ; $4b79: $be
    ld [hl], h                                    ; $4b7a: $74
    db $e4                                        ; $4b7b: $e4
    ld [hl], e                                    ; $4b7c: $73
    dec sp                                        ; $4b7d: $3b
    db $e4                                        ; $4b7e: $e4
    call Call_044_711e                            ; $4b7f: $cd $1e $71
    ret c                                         ; $4b82: $d8

    ld a, e                                       ; $4b83: $7b
    ld [hl+], a                                   ; $4b84: $22
    ret c                                         ; $4b85: $d8

    ld e, c                                       ; $4b86: $59
    ld h, [hl]                                    ; $4b87: $66
    sbc c                                         ; $4b88: $99
    db $fd                                        ; $4b89: $fd
    add [hl]                                      ; $4b8a: $86
    ld l, b                                       ; $4b8b: $68
    ld b, [hl]                                    ; $4b8c: $46
    sub a                                         ; $4b8d: $97
    ld h, l                                       ; $4b8e: $65
    ld d, d                                       ; $4b8f: $52
    cp l                                          ; $4b90: $bd
    halt                                          ; $4b91: $76
    ld l, [hl]                                    ; $4b92: $6e
    and d                                         ; $4b93: $a2
    or b                                          ; $4b94: $b0
    scf                                           ; $4b95: $37
    ld [c], a                                     ; $4b96: $e2
    dec sp                                        ; $4b97: $3b
    add [hl]                                      ; $4b98: $86
    cp l                                          ; $4b99: $bd
    ld de, $b65f                                  ; $4b9a: $11 $5f $b6
    daa                                           ; $4b9d: $27
    ld e, a                                       ; $4b9e: $5f
    ld a, e                                       ; $4b9f: $7b
    dec sp                                        ; $4ba0: $3b
    db $f4                                        ; $4ba1: $f4
    dec hl                                        ; $4ba2: $2b
    ld c, c                                       ; $4ba3: $49
    ld d, a                                       ; $4ba4: $57
    ld l, l                                       ; $4ba5: $6d
    ld a, [hl]                                    ; $4ba6: $7e
    dec [hl]                                      ; $4ba7: $35
    ld h, l                                       ; $4ba8: $65
    or d                                          ; $4ba9: $b2
    ret nz                                        ; $4baa: $c0

    ld a, [c]                                     ; $4bab: $f2
    inc h                                         ; $4bac: $24
    inc l                                         ; $4bad: $2c
    add l                                         ; $4bae: $85
    cp h                                          ; $4baf: $bc
    ld c, l                                       ; $4bb0: $4d
    sub a                                         ; $4bb1: $97
    push hl                                       ; $4bb2: $e5
    ld a, c                                       ; $4bb3: $79
    ld [hl], d                                    ; $4bb4: $72
    dec sp                                        ; $4bb5: $3b
    ld a, [$ee71]                                 ; $4bb6: $fa $71 $ee
    ld h, h                                       ; $4bb9: $64
    and d                                         ; $4bba: $a2
    inc a                                         ; $4bbb: $3c
    add $a6                                       ; $4bbc: $c6 $a6
    ld e, a                                       ; $4bbe: $5f
    ld bc, $5749                                  ; $4bbf: $01 $49 $57
    xor l                                         ; $4bc2: $ad
    add e                                         ; $4bc3: $83
    rrca                                          ; $4bc4: $0f
    add d                                         ; $4bc5: $82
    call c, $c18e                                 ; $4bc6: $dc $8e $c1

jr_044_4bc9:
    adc l                                         ; $4bc9: $8d
    xor c                                         ; $4bca: $a9
    xor b                                         ; $4bcb: $a8
    ld c, e                                       ; $4bcc: $4b
    push af                                       ; $4bcd: $f5
    and $9e                                       ; $4bce: $e6 $9e
    xor c                                         ; $4bd0: $a9
    ld hl, $1d82                                  ; $4bd1: $21 $82 $1d
    rst $30                                       ; $4bd4: $f7
    push de                                       ; $4bd5: $d5
    ld [hl], d                                    ; $4bd6: $72
    inc hl                                        ; $4bd7: $23
    rst $08                                       ; $4bd8: $cf
    sub e                                         ; $4bd9: $93
    inc de                                        ; $4bda: $13
    ld l, l                                       ; $4bdb: $6d
    and e                                         ; $4bdc: $a3
    jr nz, jr_044_4bc9                            ; $4bdd: $20 $ea

    jp nc, $3d21                                  ; $4bdf: $d2 $21 $3d

    and l                                         ; $4be2: $a5
    adc [hl]                                      ; $4be3: $8e
    sbc l                                         ; $4be4: $9d

Jump_044_4be5:
    ccf                                           ; $4be5: $3f
    ld [$43e2], a                                 ; $4be6: $ea $e2 $43
    ld d, c                                       ; $4be9: $51
    ld a, b                                       ; $4bea: $78
    ld d, d                                       ; $4beb: $52
    ldh [$66], a                                  ; $4bec: $e0 $66
    ld c, a                                       ; $4bee: $4f
    cp a                                          ; $4bef: $bf
    ld [bc], a                                    ; $4bf0: $02
    ld c, c                                       ; $4bf1: $49
    ld d, a                                       ; $4bf2: $57
    sbc [hl]                                      ; $4bf3: $9e
    cp a                                          ; $4bf4: $bf
    inc e                                         ; $4bf5: $1c
    cp a                                          ; $4bf6: $bf
    ld a, h                                       ; $4bf7: $7c
    inc d                                         ; $4bf8: $14
    or $f6                                        ; $4bf9: $f6 $f6
    and b                                         ; $4bfb: $a0
    ld [hl], d                                    ; $4bfc: $72
    xor $53                                       ; $4bfd: $ee $53
    ld a, h                                       ; $4bff: $7c
    add sp, $2b                                   ; $4c00: $e8 $2b
    ei                                            ; $4c02: $fb
    ret z                                         ; $4c03: $c8

    inc de                                        ; $4c04: $13
    ld l, a                                       ; $4c05: $6f
    db $e4                                        ; $4c06: $e4
    scf                                           ; $4c07: $37
    and d                                         ; $4c08: $a2
    ld l, $1d                                     ; $4c09: $2e $1d
    jp nc, $ea53                                  ; $4c0b: $d2 $53 $ea

    ret c                                         ; $4c0e: $d8

    ld sp, hl                                     ; $4c0f: $f9
    db $e3                                        ; $4c10: $e3
    and [hl]                                      ; $4c11: $a6
    ld e, d                                       ; $4c12: $5a
    and [hl]                                      ; $4c13: $a6
    ldh a, [rBGP]                                 ; $4c14: $f0 $47
    ld a, l                                       ; $4c16: $7d
    jp z, Jump_044_446c                           ; $4c17: $ca $6c $44

    adc l                                         ; $4c1a: $8d
    ld [$d974], sp                                ; $4c1b: $08 $74 $d9
    ld c, b                                       ; $4c1e: $48
    xor e                                         ; $4c1f: $ab
    or [hl]                                       ; $4c20: $b6
    inc e                                         ; $4c21: $1c
    and d                                         ; $4c22: $a2
    ld l, $b5                                     ; $4c23: $2e $b5
    ld h, a                                       ; $4c25: $67
    inc de                                        ; $4c26: $13
    ldh a, [$e3]                                  ; $4c27: $f0 $e3
    ld d, l                                       ; $4c29: $55
    cp a                                          ; $4c2a: $bf
    ld [bc], a                                    ; $4c2b: $02
    ld c, c                                       ; $4c2c: $49
    ld d, a                                       ; $4c2d: $57
    db $ed                                        ; $4c2e: $ed
    ld a, c                                       ; $4c2f: $79
    ld d, b                                       ; $4c30: $50
    add hl, sp                                    ; $4c31: $39
    scf                                           ; $4c32: $37
    ld a, c                                       ; $4c33: $79
    db $d3                                        ; $4c34: $d3
    rra                                           ; $4c35: $1f
    db $db                                        ; $4c36: $db
    ld b, h                                       ; $4c37: $44
    ld e, l                                       ; $4c38: $5d
    ld a, [hl-]                                   ; $4c39: $3a
    and h                                         ; $4c3a: $a4
    and a                                         ; $4c3b: $a7
    call nc, $f3b1                                ; $4c3c: $d4 $b1 $f3
    rst $00                                       ; $4c3f: $c7
    ld sp, hl                                     ; $4c40: $f9
    sub c                                         ; $4c41: $91
    ld [hl], d                                    ; $4c42: $72
    sbc a                                         ; $4c43: $9f
    ld [$d52f], a                                 ; $4c44: $ea $2f $d5
    jr jr_044_4c98                                ; $4c47: $18 $4f

    inc d                                         ; $4c49: $14
    or l                                          ; $4c4a: $b5
    rla                                           ; $4c4b: $17
    ld b, [hl]                                    ; $4c4c: $46
    xor b                                         ; $4c4d: $a8
    ld a, h                                       ; $4c4e: $7c
    sub [hl]                                      ; $4c4f: $96
    scf                                           ; $4c50: $37
    ld a, $fe                                     ; $4c51: $3e $fe
    ld a, [hl]                                    ; $4c53: $7e
    dec b                                         ; $4c54: $05
    ld c, c                                       ; $4c55: $49
    ld d, a                                       ; $4c56: $57
    ld l, l                                       ; $4c57: $6d
    adc [hl]                                      ; $4c58: $8e
    xor b                                         ; $4c59: $a8
    rst $20                                       ; $4c5a: $e7
    ld sp, $6144                                  ; $4c5b: $31 $44 $61
    rst $28                                       ; $4c5e: $ef
    adc a                                         ; $4c5f: $8f
    ei                                            ; $4c60: $fb
    ld a, [c]                                     ; $4c61: $f2
    ld e, c                                       ; $4c62: $59
    ld l, h                                       ; $4c63: $6c
    inc d                                         ; $4c64: $14
    ld h, l                                       ; $4c65: $65
    or [hl]                                       ; $4c66: $b6
    ld [hl], e                                    ; $4c67: $73
    adc b                                         ; $4c68: $88
    cp d                                          ; $4c69: $ba
    ld d, h                                       ; $4c6a: $54
    cpl                                           ; $4c6b: $2f
    rst $20                                       ; $4c6c: $e7
    ld l, $ea                                     ; $4c6d: $2e $ea
    ld d, d                                       ; $4c6f: $52
    call c, $1f2c                                 ; $4c70: $dc $2c $1f
    push af                                       ; $4c73: $f5

Call_044_4c74:
    pop de                                        ; $4c74: $d1
    sbc $3e                                       ; $4c75: $de $3e
    ld [hl], l                                    ; $4c77: $75
    xor [hl]                                      ; $4c78: $ae
    jp nc, $d2d3                                  ; $4c79: $d2 $d3 $d2

    xor a                                         ; $4c7c: $af
    ld c, c                                       ; $4c7d: $49
    ld d, a                                       ; $4c7e: $57
    xor l                                         ; $4c7f: $ad
    ld [hl-], a                                   ; $4c80: $32
    db $d3                                        ; $4c81: $d3
    rst $18                                       ; $4c82: $df
    adc b                                         ; $4c83: $88
    rst $20                                       ; $4c84: $e7
    cpl                                           ; $4c85: $2f
    inc de                                        ; $4c86: $13
    add l                                         ; $4c87: $85
    cp l                                          ; $4c88: $bd
    dec a                                         ; $4c89: $3d
    ld a, [hl-]                                   ; $4c8a: $3a
    jr nc, @-$11                                  ; $4c8b: $30 $ed

Call_044_4c8d:
    ld h, l                                       ; $4c8d: $65
    and d                                         ; $4c8e: $a2
    ld l, $6d                                     ; $4c8f: $2e $6d
    dec c                                         ; $4c91: $0d
    add hl, bc                                    ; $4c92: $09
    sub e                                         ; $4c93: $93
    adc c                                         ; $4c94: $89
    jp nz, $874e                                  ; $4c95: $c2 $4e $87

Call_044_4c98:
jr_044_4c98:
    db $f4                                        ; $4c98: $f4
    sub h                                         ; $4c99: $94
    ld a, [hl-]                                   ; $4c9a: $3a
    halt                                          ; $4c9b: $76
    cp $7e                                        ; $4c9c: $fe $7e
    dec b                                         ; $4c9e: $05

Jump_044_4c9f:
    ld c, c                                       ; $4c9f: $49
    ld d, a                                       ; $4ca0: $57
    ld [hl], l                                    ; $4ca1: $75
    db $ed                                        ; $4ca2: $ed
    xor d                                         ; $4ca3: $aa
    ld c, a                                       ; $4ca4: $4f

jr_044_4ca5:
    ld h, c                                       ; $4ca5: $61
    add e                                         ; $4ca6: $83
    or $39                                        ; $4ca7: $f6 $39
    pop de                                        ; $4ca9: $d1
    ld [hl], $0a                                  ; $4caa: $36 $0a
    ld a, [c]                                     ; $4cac: $f2
    ld a, [hl+]                                   ; $4cad: $2a
    ld l, a                                       ; $4cae: $6f
    ld a, [$7b63]                                 ; $4caf: $fa $63 $7b
    ld b, e                                       ; $4cb2: $43
    xor b                                         ; $4cb3: $a8
    ld a, h                                       ; $4cb4: $7c
    sub [hl]                                      ; $4cb5: $96
    scf                                           ; $4cb6: $37
    ld a, $fe                                     ; $4cb7: $3e $fe
    xor b                                         ; $4cb9: $a8
    ld c, e                                       ; $4cba: $4b
    add a                                         ; $4cbb: $87
    db $f4                                        ; $4cbc: $f4
    sub h                                         ; $4cbd: $94
    ld a, [hl-]                                   ; $4cbe: $3a
    halt                                          ; $4cbf: $76
    cp $7e                                        ; $4cc0: $fe $7e
    dec b                                         ; $4cc2: $05
    ld c, c                                       ; $4cc3: $49
    ld d, a                                       ; $4cc4: $57
    xor l                                         ; $4cc5: $ad
    add e                                         ; $4cc6: $83
    rrca                                          ; $4cc7: $0f
    add d                                         ; $4cc8: $82
    call c, $c18e                                 ; $4cc9: $dc $8e $c1
    adc l                                         ; $4ccc: $8d
    xor c                                         ; $4ccd: $a9
    sbc h                                         ; $4cce: $9c
    ld l, b                                       ; $4ccf: $68
    dec de                                        ; $4cd0: $1b
    dec b                                         ; $4cd1: $05
    ld e, c                                       ; $4cd2: $59
    ld h, b                                       ; $4cd3: $60
    reti                                          ; $4cd4: $d9


    sbc a                                         ; $4cd5: $9f
    push hl                                       ; $4cd6: $e5
    ld a, [de]                                    ; $4cd7: $1a
    adc b                                         ; $4cd8: $88
    db $fd                                        ; $4cd9: $fd
    ld [hl], d                                    ; $4cda: $72
    ld [$9ee3], a                                 ; $4cdb: $ea $e3 $9e
    sbc c                                         ; $4cde: $99
    jp c, $6147                                   ; $4cdf: $da $47 $61

    ld b, a                                       ; $4ce2: $47
    ccf                                           ; $4ce3: $3f
    adc $9d                                       ; $4ce4: $ce $9d
    ld c, h                                       ; $4ce6: $4c
    adc e                                         ; $4ce7: $8b
    ld h, c                                       ; $4ce8: $61
    ld b, e                                       ; $4ce9: $43
    ld a, [bc]                                    ; $4cea: $0a
    call c, $ba88                                 ; $4ceb: $dc $88 $ba

jr_044_4cee:
    jr nz, @+$17                                  ; $4cee: $20 $15

    adc b                                         ; $4cf0: $88
    call nz, Call_044_57e9                        ; $4cf1: $c4 $e9 $57
    ld c, c                                       ; $4cf4: $49
    ld d, a                                       ; $4cf5: $57
    xor l                                         ; $4cf6: $ad
    ld [hl-], a                                   ; $4cf7: $32
    db $d3                                        ; $4cf8: $d3
    rst $18                                       ; $4cf9: $df
    ret z                                         ; $4cfa: $c8

    ld h, d                                       ; $4cfb: $62
    jr z, jr_044_4ca5                             ; $4cfc: $28 $a7

    jr nz, @-$72                                  ; $4cfe: $20 $8c

    jr z, jr_044_4cee                             ; $4d00: $28 $ec

    db $fd                                        ; $4d02: $fd
    add hl, hl                                    ; $4d03: $29
    ld a, $f4                                     ; $4d04: $3e $f4
    sub l                                         ; $4d06: $95
    ld a, l                                       ; $4d07: $7d
    call nc, Call_044_43a5                        ; $4d08: $d4 $a5 $43
    ld a, d                                       ; $4d0b: $7a
    ld c, d                                       ; $4d0c: $4a
    dec e                                         ; $4d0d: $1d
    dec sp                                        ; $4d0e: $3b
    ld a, a                                       ; $4d0f: $7f
    inc d                                         ; $4d10: $14
    or $46                                        ; $4d11: $f6 $46
    jp c, $bd1a                                   ; $4d13: $da $1a $bd

    cp $b4                                        ; $4d16: $fe $b4
    ld a, l                                       ; $4d18: $7d
    ld c, b                                       ; $4d19: $48
    db $db                                        ; $4d1a: $db
    and d                                         ; $4d1b: $a2
    ld l, l                                       ; $4d1c: $6d
    sub h                                         ; $4d1d: $94
    db $eb                                        ; $4d1e: $eb
    ld d, a                                       ; $4d1f: $57
    ld c, c                                       ; $4d20: $49
    ld d, a                                       ; $4d21: $57
    ld [hl], l                                    ; $4d22: $75
    db $ed                                        ; $4d23: $ed
    xor d                                         ; $4d24: $aa
    adc c                                         ; $4d25: $89
    inc sp                                        ; $4d26: $33
    inc a                                         ; $4d27: $3c
    adc a                                         ; $4d28: $8f
    ld hl, $646e                                  ; $4d29: $21 $6e $64
    adc d                                         ; $4d2c: $8a
    dec sp                                        ; $4d2d: $3b
    jp z, $8513                                   ; $4d2e: $ca $13 $85

    sbc l                                         ; $4d31: $9d
    sub $be                                       ; $4d32: $d6 $be
    call c, $e2be                                 ; $4d34: $dc $be $e2
    and [hl]                                      ; $4d37: $a6
    ld e, a                                       ; $4d38: $5f
    ld bc, $5749                                  ; $4d39: $01 $49 $57
    dec l                                         ; $4d3c: $2d
    rst $00                                       ; $4d3d: $c7
    adc [hl]                                      ; $4d3e: $8e
    ld hl, $2794                                  ; $4d3f: $21 $94 $27

jr_044_4d42:
    db $db                                        ; $4d42: $db
    add e                                         ; $4d43: $83
    jp z, $49b9                                   ; $4d44: $ca $b9 $49

    push af                                       ; $4d47: $f5
    jp c, Jump_044_55e4                           ; $4d48: $da $e4 $55

    sbc [hl]                                      ; $4d4b: $9e
    add h                                         ; $4d4c: $84
    push bc                                       ; $4d4d: $c5
    add hl, de                                    ; $4d4e: $19
    sbc [hl]                                      ; $4d4f: $9e
    daa                                           ; $4d50: $27
    ld d, h                                       ; $4d51: $54
    ld d, d                                       ; $4d52: $52
    rst $30                                       ; $4d53: $f7
    reti                                          ; $4d54: $d9


    ld b, [hl]                                    ; $4d55: $46
    ld l, b                                       ; $4d56: $68

Call_044_4d57:
    adc c                                         ; $4d57: $89
    cp d                                          ; $4d58: $ba
    xor b                                         ; $4d59: $a8
    xor e                                         ; $4d5a: $ab
    jr nz, jr_044_4d42                            ; $4d5b: $20 $e5

    ld b, [hl]                                    ; $4d5d: $46
    ld l, $da                                     ; $4d5e: $2e $da
    ld l, c                                       ; $4d60: $69
    cpl                                           ; $4d61: $2f
    ld a, h                                       ; $4d62: $7c
    db $fd                                        ; $4d63: $fd
    ld a, [bc]                                    ; $4d64: $0a
    ld c, c                                       ; $4d65: $49
    ld d, a                                       ; $4d66: $57
    db $ed                                        ; $4d67: $ed
    cp a                                          ; $4d68: $bf
    ld [hl], $39                                  ; $4d69: $36 $39
    ld [hl], c                                    ; $4d6b: $71
    ld b, $75                                     ; $4d6c: $06 $75
    ld a, [$15db]                                 ; $4d6e: $fa $db $15
    add h                                         ; $4d71: $84
    ld de, $0738                                  ; $4d72: $11 $38 $07
    ld h, c                                       ; $4d75: $61
    dec sp                                        ; $4d76: $3b
    scf                                           ; $4d77: $37
    cp d                                          ; $4d78: $ba
    ret z                                         ; $4d79: $c8

    ldh a, [$64]                                  ; $4d7a: $f0 $64
    add c                                         ; $4d7c: $81
    ld h, l                                       ; $4d7d: $65
    ld a, e                                       ; $4d7e: $7b
    sbc h                                         ; $4d7f: $9c
    sub h                                         ; $4d80: $94
    reti                                          ; $4d81: $d9


    rst $00                                       ; $4d82: $c7
    sbc a                                         ; $4d83: $9f
    rst $10                                       ; $4d84: $d7
    rra                                           ; $4d85: $1f
    ld d, e                                       ; $4d86: $53
    ld [hl], l                                    ; $4d87: $75
    add d                                         ; $4d88: $82
    xor b                                         ; $4d89: $a8
    res 1, c                                      ; $4d8a: $cb $89
    sbc d                                         ; $4d8c: $9a
    ld d, d                                       ; $4d8d: $52
    sbc $10                                       ; $4d8e: $de $10
    ld a, [hl+]                                   ; $4d90: $2a
    sbc a                                         ; $4d91: $9f
    ld a, [bc]                                    ; $4d92: $0a
    adc d                                         ; $4d93: $8a
    sub [hl]                                      ; $4d94: $96
    adc a                                         ; $4d95: $8f
    sbc e                                         ; $4d96: $9b
    ld a, [bc]                                    ; $4d97: $0a
    ld [hl], c                                    ; $4d98: $71
    cp a                                          ; $4d99: $bf
    inc l                                         ; $4d9a: $2c
    ret c                                         ; $4d9b: $d8

    ld a, e                                       ; $4d9c: $7b
    ld a, [$4915]                                 ; $4d9d: $fa $15 $49
    ld d, a                                       ; $4da0: $57
    xor l                                         ; $4da1: $ad
    xor $0d                                       ; $4da2: $ee $0d
    ld a, [c]                                     ; $4da4: $f2
    ld a, c                                       ; $4da5: $79
    inc c                                         ; $4da6: $0c
    ld d, c                                       ; $4da7: $51
    rla                                           ; $4da8: $17
    rst $30                                       ; $4da9: $f7
    db $e4                                        ; $4daa: $e4
    rst $28                                       ; $4dab: $ef
    ld a, l                                       ; $4dac: $7d
    ld hl, $bf67                                  ; $4dad: $21 $67 $bf
    ldh a, [$f5]                                  ; $4db0: $f0 $f5
    dec hl                                        ; $4db2: $2b
    ld c, c                                       ; $4db3: $49
    ld d, a                                       ; $4db4: $57
    db $ed                                        ; $4db5: $ed
    cp a                                          ; $4db6: $bf
    or $51                                        ; $4db7: $f6 $51
    ret c                                         ; $4db9: $d8

    db $db                                        ; $4dba: $db
    db $e3                                        ; $4dbb: $e3
    add l                                         ; $4dbc: $85
    rst $08                                       ; $4dbd: $cf
    ld a, l                                       ; $4dbe: $7d
    jp c, $b832                                   ; $4dbf: $da $32 $b8

    ei                                            ; $4dc2: $fb
    ld a, $9d                                     ; $4dc3: $3e $9d
    ld e, $09                                     ; $4dc5: $1e $09
    ld a, [c]                                     ; $4dc7: $f2
    ld d, e                                       ; $4dc8: $53
    add sp, -$22                                  ; $4dc9: $e8 $de
    ld e, $57                                     ; $4dcb: $1e $57
    ld h, [hl]                                    ; $4dcd: $66
    ld a, a                                       ; $4dce: $7f
    call nc, $8da5                                ; $4dcf: $d4 $a5 $8d
    ld a, [de]                                    ; $4dd2: $1a
    rst $18                                       ; $4dd3: $df
    and a                                         ; $4dd4: $a7
    adc l                                         ; $4dd5: $8d
    or d                                          ; $4dd6: $b2
    ret nz                                        ; $4dd7: $c0

    ld hl, sp+$23                                 ; $4dd8: $f8 $23
    ret c                                         ; $4dda: $d8

    ld h, c                                       ; $4ddb: $61
    ei                                            ; $4ddc: $fb
    adc d                                         ; $4ddd: $8a
    ld a, [c]                                     ; $4dde: $f2
    dec de                                        ; $4ddf: $1b
    ld [hl], d                                    ; $4de0: $72
    sub d                                         ; $4de1: $92
    ld [$f7ef], a                                 ; $4de2: $ea $ef $f7
    push hl                                       ; $4de5: $e5
    ld d, d                                       ; $4de6: $52
    cp l                                          ; $4de7: $bd
    sbc l                                         ; $4de8: $9d
    db $fc                                        ; $4de9: $fc
    ld b, l                                       ; $4dea: $45
    ld e, l                                       ; $4deb: $5d
    ld e, c                                       ; $4dec: $59
    ld h, b                                       ; $4ded: $60
    push hl                                       ; $4dee: $e5
    ld a, [$4915]                                 ; $4def: $fa $15 $49
    ld d, a                                       ; $4df2: $57
    ld l, l                                       ; $4df3: $6d
    ld a, [hl]                                    ; $4df4: $7e
    dec [hl]                                      ; $4df5: $35
    push hl                                       ; $4df6: $e5
    or e                                          ; $4df7: $b3
    ret nz                                        ; $4df8: $c0

    add d                                         ; $4df9: $82
    ld d, d                                       ; $4dfa: $52
    ld h, b                                       ; $4dfb: $60
    push hl                                       ; $4dfc: $e5
    ld [hl], d                                    ; $4dfd: $72
    ld [hl+], a                                   ; $4dfe: $22
    ld e, a                                       ; $4dff: $5f
    adc l                                         ; $4e00: $8d
    dec a                                         ; $4e01: $3d
    ld a, a                                       ; $4e02: $7f
    call nc, Call_044_4a85                        ; $4e03: $d4 $85 $4a
    ret c                                         ; $4e06: $d8

    adc [hl]                                      ; $4e07: $8e
    ld b, a                                       ; $4e08: $47
    db $10                                        ; $4e09: $10
    db $e4                                        ; $4e0a: $e4
    ld c, c                                       ; $4e0b: $49
    ld e, b                                       ; $4e0c: $58
    cp [hl]                                       ; $4e0d: $be
    inc d                                         ; $4e0e: $14
    ld a, [hl+]                                   ; $4e0f: $2a
    inc a                                         ; $4e10: $3c
    reti                                          ; $4e11: $d9


    ld c, b                                       ; $4e12: $48
    ld b, c                                       ; $4e13: $41
    and l                                         ; $4e14: $a5
    cp a                                          ; $4e15: $bf
    rla                                           ; $4e16: $17
    ld [hl+], a                                   ; $4e17: $22
    and d                                         ; $4e18: $a2

jr_044_4e19:
    ld l, $54                                     ; $4e19: $2e $54
    ld d, d                                       ; $4e1b: $52
    pop bc                                        ; $4e1c: $c1
    ld [hl], $25                                  ; $4e1d: $36 $25
    ld [de], a                                    ; $4e1f: $12
    and a                                         ; $4e20: $a7
    ld e, a                                       ; $4e21: $5f
    ld bc, $5749                                  ; $4e22: $01 $49 $57
    ld l, l                                       ; $4e25: $6d
    dec bc                                        ; $4e26: $0b
    add hl, bc                                    ; $4e27: $09
    ld h, c                                       ; $4e28: $61
    dec sp                                        ; $4e29: $3b
    add a                                         ; $4e2a: $87
    jr z, jr_044_4e19                             ; $4e2b: $28 $ec

    adc l                                         ; $4e2d: $8d
    ld l, b                                       ; $4e2e: $68
    ret c                                         ; $4e2f: $d8

    rst $08                                       ; $4e30: $cf
    daa                                           ; $4e31: $27
    ld c, b                                       ; $4e32: $48
    rst $00                                       ; $4e33: $c7
    sub h                                         ; $4e34: $94
    ld sp, hl                                     ; $4e35: $f9
    inc [hl]                                      ; $4e36: $34
    ld e, d                                       ; $4e37: $5a
    ld hl, sp-$2e                                 ; $4e38: $f8 $d2
    ld c, b                                       ; $4e3a: $48
    sbc d                                         ; $4e3b: $9a
    add sp, $57                                   ; $4e3c: $e8 $57
    ld c, c                                       ; $4e3e: $49
    ld d, a                                       ; $4e3f: $57
    ld l, l                                       ; $4e40: $6d
    ld a, [hl]                                    ; $4e41: $7e
    dec [hl]                                      ; $4e42: $35
    ld h, l                                       ; $4e43: $65
    or d                                          ; $4e44: $b2
    ret nz                                        ; $4e45: $c0

    ld a, [c]                                     ; $4e46: $f2
    inc h                                         ; $4e47: $24
    inc l                                         ; $4e48: $2c
    ld a, [de]                                    ; $4e49: $1a
    inc b                                         ; $4e4a: $04
    or $3c                                        ; $4e4b: $f6 $3c
    add hl, hl                                    ; $4e4d: $29
    ld h, b                                       ; $4e4e: $60
    ld b, [hl]                                    ; $4e4f: $46
    cp h                                          ; $4e50: $bc
    and a                                         ; $4e51: $a7
    db $ed                                        ; $4e52: $ed
    dec bc                                        ; $4e53: $0b
    ld a, [c]                                     ; $4e54: $f2
    inc h                                         ; $4e55: $24
    ld l, h                                       ; $4e56: $6c
    ld e, a                                       ; $4e57: $5f
    ret c                                         ; $4e58: $d8

    cp [hl]                                       ; $4e59: $be
    ld a, b                                       ; $4e5a: $78
    rst $00                                       ; $4e5b: $c7
    xor d                                         ; $4e5c: $aa
    rst $20                                       ; $4e5d: $e7
    dec bc                                        ; $4e5e: $0b
    ld d, e                                       ; $4e5f: $53
    and $cb                                       ; $4e60: $e6 $cb
    ld c, c                                       ; $4e62: $49
    sub [hl]                                      ; $4e63: $96
    ld sp, $6537                                  ; $4e64: $31 $37 $65
    add hl, sp                                    ; $4e67: $39
    cp c                                          ; $4e68: $b9
    ld a, [hl]                                    ; $4e69: $7e
    dec b                                         ; $4e6a: $05
    ld c, c                                       ; $4e6b: $49
    ld d, a                                       ; $4e6c: $57
    ld [hl], l                                    ; $4e6d: $75
    ld b, [hl]                                    ; $4e6e: $46
    ld [c], a                                     ; $4e6f: $e2
    rst $38                                       ; $4e70: $ff
    res 1, e                                      ; $4e71: $cb $8b
    dec de                                        ; $4e73: $1b
    ei                                            ; $4e74: $fb
    or b                                          ; $4e75: $b0
    dec c                                         ; $4e76: $0d
    ld sp, hl                                     ; $4e77: $f9

Call_044_4e78:
    inc a                                         ; $4e78: $3c

jr_044_4e79:
    pop af                                        ; $4e79: $f1
    and c                                         ; $4e7a: $a1
    jr z, jr_044_4e79                             ; $4e7b: $28 $fc

    pop af                                        ; $4e7d: $f1
    sbc [hl]                                      ; $4e7e: $9e
    ld b, [hl]                                    ; $4e7f: $46
    db $ed                                        ; $4e80: $ed
    db $e4                                        ; $4e81: $e4
    ei                                            ; $4e82: $fb
    dec d                                         ; $4e83: $15
    ld [hl], l                                    ; $4e84: $75
    ld b, [hl]                                    ; $4e85: $46
    ld [c], a                                     ; $4e86: $e2
    rst $38                                       ; $4e87: $ff
    adc e                                         ; $4e88: $8b
    ld a, e                                       ; $4e89: $7b
    ld h, e                                       ; $4e8a: $63
    ld b, h                                       ; $4e8b: $44

jr_044_4e8c:
    ld a, l                                       ; $4e8c: $7d
    ret z                                         ; $4e8d: $c8

    dec hl                                        ; $4e8e: $2b
    db $f4                                        ; $4e8f: $f4
    rst $30                                       ; $4e90: $f7
    ld de, $6f89                                  ; $4e91: $11 $89 $6f
    add sp, $57                                   ; $4e94: $e8 $57
    ld l, l                                       ; $4e96: $6d
    inc d                                         ; $4e97: $14
    ld l, b                                       ; $4e98: $68
    db $f4                                        ; $4e99: $f4
    ld [c], a                                     ; $4e9a: $e2
    ld b, e                                       ; $4e9b: $43
    ld d, c                                       ; $4e9c: $51
    ld a, b                                       ; $4e9d: $78
    ld a, [c]                                     ; $4e9e: $f2
    call z, $dcef                                 ; $4e9f: $cc $ef $dc
    call nz, Call_044_648d                        ; $4ea2: $c4 $8d $64
    ld a, a                                       ; $4ea5: $7f
    cp h                                          ; $4ea6: $bc
    and a                                         ; $4ea7: $a7
    ld d, c                                       ; $4ea8: $51
    dec sp                                        ; $4ea9: $3b
    ld sp, hl                                     ; $4eaa: $f9
    ld a, [hl]                                    ; $4eab: $7e
    dec b                                         ; $4eac: $05
    xor l                                         ; $4ead: $ad
    ld l, [hl]                                    ; $4eae: $6e
    rst $20                                       ; $4eaf: $e7
    cp a                                          ; $4eb0: $bf
    ld [$057e], a                                 ; $4eb1: $ea $7e $05
    ld l, l                                       ; $4eb4: $6d
    adc e                                         ; $4eb5: $8b
    ld a, e                                       ; $4eb6: $7b
    ld h, c                                       ; $4eb7: $61
    sub h                                         ; $4eb8: $94
    xor e                                         ; $4eb9: $ab
    ld l, [hl]                                    ; $4eba: $6e
    dec b                                         ; $4ebb: $05
    db $ed                                        ; $4ebc: $ed
    rst $38                                       ; $4ebd: $ff
    add [hl]                                      ; $4ebe: $86
    ld a, [hl-]                                   ; $4ebf: $3a
    ld [c], a                                     ; $4ec0: $e2
    adc l                                         ; $4ec1: $8d
    call c, Call_044_750a                         ; $4ec2: $dc $0a $75
    ld l, l                                       ; $4ec5: $6d
    jr jr_044_4e8c                                ; $4ec6: $18 $c4

    dec de                                        ; $4ec8: $1b
    pop bc                                        ; $4ec9: $c1
    ld a, [bc]                                    ; $4eca: $0a
    xor l                                         ; $4ecb: $ad
    rra                                           ; $4ecc: $1f
    ld a, c                                       ; $4ecd: $79
    ld a, [c]                                     ; $4ece: $f2
    call nz, $c11b                                ; $4ecf: $c4 $1b $c1
    ld a, [bc]                                    ; $4ed2: $0a
    ld l, l                                       ; $4ed3: $6d
    ld b, c                                       ; $4ed4: $41
    ld h, b                                       ; $4ed5: $60
    cp a                                          ; $4ed6: $bf
    or c                                          ; $4ed7: $b1
    ld [bc], a                                    ; $4ed8: $02
    ld l, l                                       ; $4ed9: $6d
    pop de                                        ; $4eda: $d1
    or a                                          ; $4edb: $b7
    db $d3                                        ; $4edc: $d3
    ld l, [hl]                                    ; $4edd: $6e
    inc b                                         ; $4ede: $04
    dec hl                                        ; $4edf: $2b
    or l                                          ; $4ee0: $b5
    ld b, a                                       ; $4ee1: $47

jr_044_4ee2:
    db $eb                                        ; $4ee2: $eb
    xor $8d                                       ; $4ee3: $ee $8d
    rrc d                                         ; $4ee5: $cb $0a
    db $ed                                        ; $4ee7: $ed
    db $d3                                        ; $4ee8: $d3
    ld [hl], d                                    ; $4ee9: $72
    xor $57                                       ; $4eea: $ee $57
    dec e                                         ; $4eec: $1d
    jp nc, $ea53                                  ; $4eed: $d2 $53 $ea

    ret c                                         ; $4ef0: $d8

    ld sp, hl                                     ; $4ef1: $f9
    ld d, a                                       ; $4ef2: $57
    dec e                                         ; $4ef3: $1d
    db $db                                        ; $4ef4: $db
    rla                                           ; $4ef5: $17
    rst $28                                       ; $4ef6: $ef
    ld l, c                                       ; $4ef7: $69
    call nc, $789e                                ; $4ef8: $d4 $9e $78
    inc hl                                        ; $4efb: $23
    ld e, b                                       ; $4efc: $58
    ld bc, $f86d                                  ; $4efd: $01 $6d $f8
    sub $5d                                       ; $4f00: $d6 $5d
    ld bc, $fe6d                                  ; $4f02: $01 $6d $fe
    halt                                          ; $4f05: $76
    or a                                          ; $4f06: $b7
    ld [bc], a                                    ; $4f07: $02
    or l                                          ; $4f08: $b5
    rst $18                                       ; $4f09: $df
    adc h                                         ; $4f0a: $8c
    ld b, b                                       ; $4f0b: $40
    db $fc                                        ; $4f0c: $fc
    rra                                           ; $4f0d: $1f
    or [hl]                                       ; $4f0e: $b6
    ld hl, $a79f                                  ; $4f0f: $21 $9f $a7
    push bc                                       ; $4f12: $c5
    dec d                                         ; $4f13: $15
    xor l                                         ; $4f14: $ad
    ld a, [hl-]                                   ; $4f15: $3a
    rra                                           ; $4f16: $1f
    ld a, d                                       ; $4f17: $7a
    add l                                         ; $4f18: $85
    rst $18                                       ; $4f19: $df
    ld d, b                                       ; $4f1a: $50
    ld l, e                                       ; $4f1b: $6b
    dec b                                         ; $4f1c: $05
    ld c, c                                       ; $4f1d: $49
    ld [c], a                                     ; $4f1e: $e2
    ld e, e                                       ; $4f1f: $5b
    rst $18                                       ; $4f20: $df
    ld a, [bc]                                    ; $4f21: $0a
    ld c, c                                       ; $4f22: $49
    ld d, d                                       ; $4f23: $52
    ld h, a                                       ; $4f24: $67
    ld d, [hl]                                    ; $4f25: $56
    dec e                                         ; $4f26: $1d
    ld d, d                                       ; $4f27: $52
    inc d                                         ; $4f28: $14
    cp $2c                                        ; $4f29: $fe $2c
    ld h, e                                       ; $4f2b: $63
    db $fc                                        ; $4f2c: $fc
    xor c                                         ; $4f2d: $a9
    ld de, $3fe7                                  ; $4f2e: $11 $e7 $3f
    ld e, d                                       ; $4f31: $5a
    ld a, $1f                                     ; $4f32: $3e $1f
    rst $20                                       ; $4f34: $e7
    cp a                                          ; $4f35: $bf
    daa                                           ; $4f36: $27
    ld d, c                                       ; $4f37: $51
    ld [hl], e                                    ; $4f38: $73
    dec b                                         ; $4f39: $05
    db $ed                                        ; $4f3a: $ed
    ld hl, $2bee                                  ; $4f3b: $21 $ee $2b
    jr jr_044_4ee2                                ; $4f3e: $18 $a2

    rst $18                                       ; $4f40: $df
    daa                                           ; $4f41: $27
    ld [$5119], a                                 ; $4f42: $ea $19 $51
    ret c                                         ; $4f45: $d8

    ei                                            ; $4f46: $fb
    db $d3                                        ; $4f47: $d3
    sub [hl]                                      ; $4f48: $96
    sbc l                                         ; $4f49: $9d
    ld l, b                                       ; $4f4a: $68
    jp Jump_000_329c                              ; $4f4b: $c3 $9c $32


    ld [hl-], a                                   ; $4f4e: $32
    xor c                                         ; $4f4f: $a9
    ld h, [hl]                                    ; $4f50: $66
    di                                            ; $4f51: $f3
    and h                                         ; $4f52: $a4
    db $eb                                        ; $4f53: $eb
    ld [hl], d                                    ; $4f54: $72
    adc [hl]                                      ; $4f55: $8e
    ld a, [de]                                    ; $4f56: $1a
    inc a                                         ; $4f57: $3c
    ld l, d                                       ; $4f58: $6a
    xor [hl]                                      ; $4f59: $ae
    sbc [hl]                                      ; $4f5a: $9e
    cp $2b                                        ; $4f5b: $fe $2b
    and l                                         ; $4f5d: $a5
    sbc [hl]                                      ; $4f5e: $9e
    cp b                                          ; $4f5f: $b8
    add hl, hl                                    ; $4f60: $29
    rra                                           ; $4f61: $1f
    rst $20                                       ; $4f62: $e7
    ld d, c                                       ; $4f63: $51
    inc hl                                        ; $4f64: $23
    ld a, [bc]                                    ; $4f65: $0a
    jp nz, $f136                                  ; $4f66: $c2 $36 $f1

    and c                                         ; $4f69: $a1
    jr z, @-$02                                   ; $4f6a: $28 $fc

    ld [hl], c                                    ; $4f6c: $71
    ld e, a                                       ; $4f6d: $5f
    pop bc                                        ; $4f6e: $c1
    ld a, $fa                                     ; $4f6f: $3e $fa
    ld a, l                                       ; $4f71: $7d
    and d                                         ; $4f72: $a2
    sbc [hl]                                      ; $4f73: $9e
    cp a                                          ; $4f74: $bf
    ld d, [hl]                                    ; $4f75: $56
    ld a, [hl-]                                   ; $4f76: $3a
    and [hl]                                      ; $4f77: $a6
    add hl, hl                                    ; $4f78: $29
    rst $20                                       ; $4f79: $e7
    xor b                                         ; $4f7a: $a8
    ld a, l                                       ; $4f7b: $7d
    dec b                                         ; $4f7c: $05
    ld h, c                                       ; $4f7d: $61
    ld b, h                                       ; $4f7e: $44
    ld b, [hl]                                    ; $4f7f: $46
    or d                                          ; $4f80: $b2
    daa                                           ; $4f81: $27
    push hl                                       ; $4f82: $e5
    xor a                                         ; $4f83: $af
    ld e, a                                       ; $4f84: $5f
    ld bc, $d21d                                  ; $4f85: $01 $1d $d2
    rla                                           ; $4f88: $17
    ld b, [hl]                                    ; $4f89: $46
    sub [hl]                                      ; $4f8a: $96
    ld sp, $9c46                                  ; $4f8b: $31 $46 $9c
    rst $38                                       ; $4f8e: $ff
    ld l, b                                       ; $4f8f: $68
    ld b, c                                       ; $4f90: $41
    ld a, $ce                                     ; $4f91: $3e $ce
    ld a, a                                       ; $4f93: $7f
    ld c, a                                       ; $4f94: $4f
    and d                                         ; $4f95: $a2
    and $0a                                       ; $4f96: $e6 $0a
    db $ed                                        ; $4f98: $ed
    ld a, c                                       ; $4f99: $79
    ld d, b                                       ; $4f9a: $50
    add hl, sp                                    ; $4f9b: $39
    rst $30                                       ; $4f9c: $f7
    ld [hl], c                                    ; $4f9d: $71
    ld e, a                                       ; $4f9e: $5f
    pop bc                                        ; $4f9f: $c1
    ld a, $fa                                     ; $4fa0: $3e $fa
    ld a, l                                       ; $4fa2: $7d
    and d                                         ; $4fa3: $a2
    sbc [hl]                                      ; $4fa4: $9e
    ccf                                           ; $4fa5: $3f
    daa                                           ; $4fa6: $27
    ld [hl], c                                    ; $4fa7: $71
    db $f4                                        ; $4fa8: $f4
    or d                                          ; $4fa9: $b2
    ret nc                                        ; $4faa: $d0

    cp c                                          ; $4fab: $b9
    ld b, b                                       ; $4fac: $40
    ret c                                         ; $4fad: $d8

    sbc $90                                       ; $4fae: $de $90
    ld a, [de]                                    ; $4fb0: $1a
    reti                                          ; $4fb1: $d9


    rra                                           ; $4fb2: $1f
    and [hl]                                      ; $4fb3: $a6
    rst $18                                       ; $4fb4: $df
    xor a                                         ; $4fb5: $af
    dec e                                         ; $4fb6: $1d
    dec e                                         ; $4fb7: $1d
    dec l                                         ; $4fb8: $2d
    xor $ec                                       ; $4fb9: $ee $ec
    cpl                                           ; $4fbb: $2f
    xor a                                         ; $4fbc: $af
    ld a, [c]                                     ; $4fbd: $f2
    ld h, [hl]                                    ; $4fbe: $66
    ld b, a                                       ; $4fbf: $47
    cp [hl]                                       ; $4fc0: $be
    ld hl, $f7bf                                  ; $4fc1: $21 $bf $f7
    add a                                         ; $4fc4: $87
    jp hl                                         ; $4fc5: $e9


    rst $00                                       ; $4fc6: $c7
    ld a, l                                       ; $4fc7: $7d
    dec b                                         ; $4fc8: $05
    ei                                            ; $4fc9: $fb
    add sp, -$09                                  ; $4fca: $e8 $f7
    adc c                                         ; $4fcc: $89
    ld a, d                                       ; $4fcd: $7a
    cp $5a                                        ; $4fce: $fe $5a
    dec hl                                        ; $4fd0: $2b
    sbc l                                         ; $4fd1: $9d
    adc b                                         ; $4fd2: $88
    rst $00                                       ; $4fd3: $c7
    ld l, a                                       ; $4fd4: $6f
    or [hl]                                       ; $4fd5: $b6
    rst $08                                       ; $4fd6: $cf
    ld [hl-], a                                   ; $4fd7: $32
    add $1f                                       ; $4fd8: $c6 $1f
    rst $20                                       ; $4fda: $e7
    ccf                                           ; $4fdb: $3f
    ld e, d                                       ; $4fdc: $5a
    cp [hl]                                       ; $4fdd: $be
    and $0a                                       ; $4fde: $e6 $0a
    dec e                                         ; $4fe0: $1d
    jp nc, $9e17                                  ; $4fe1: $d2 $17 $9e

    ld a, [bc]                                    ; $4fe4: $0a
    ld [hl-], a                                   ; $4fe5: $32
    cp d                                          ; $4fe6: $ba
    jr nc, jr_044_504e                            ; $4fe7: $30 $65

    ld b, [hl]                                    ; $4fe9: $46
    ld a, h                                       ; $4fea: $7c
    jr z, jr_044_4ff7                             ; $4feb: $28 $0a

    inc hl                                        ; $4fed: $23
    rr b                                          ; $4fee: $cb $18
    inc hl                                        ; $4ff0: $23
    adc $7f                                       ; $4ff1: $ce $7f
    or h                                          ; $4ff3: $b4
    jr nz, @+$7e                                  ; $4ff4: $20 $7c

    add hl, sp                                    ; $4ff6: $39

jr_044_4ff7:
    ld d, c                                       ; $4ff7: $51
    call nc, Call_044_4c8d                        ; $4ff8: $d4 $8d $4c
    ld a, $0b                                     ; $4ffb: $3e $0b
    and h                                         ; $4ffd: $a4
    cp h                                          ; $4ffe: $bc
    ld hl, $8fce                                  ; $4fff: $21 $ce $8f
    db $ec                                        ; $5002: $ec
    rrca                                          ; $5003: $0f
    db $d3                                        ; $5004: $d3
    adc a                                         ; $5005: $8f
    ei                                            ; $5006: $fb
    ld a, [bc]                                    ; $5007: $0a
    or $d1                                        ; $5008: $f6 $d1
    rst $28                                       ; $500a: $ef
    inc de                                        ; $500b: $13
    push af                                       ; $500c: $f5
    db $fc                                        ; $500d: $fc
    add hl, hl                                    ; $500e: $29
    rst $30                                       ; $500f: $f7
    ld sp, hl                                     ; $5010: $f9
    sbc l                                         ; $5011: $9d
    ld [hl], d                                    ; $5012: $72
    adc [hl]                                      ; $5013: $8e
    jp c, $2bf4                                   ; $5014: $da $f4 $2b

    dec e                                         ; $5017: $1d
    ld d, d                                       ; $5018: $52
    inc d                                         ; $5019: $14
    cp $2c                                        ; $501a: $fe $2c
    ld h, e                                       ; $501c: $63
    db $fc                                        ; $501d: $fc
    xor c                                         ; $501e: $a9
    sub c                                         ; $501f: $91
    inc de                                        ; $5020: $13
    scf                                           ; $5021: $37
    ld [c], a                                     ; $5022: $e2
    and l                                         ; $5023: $a5
    db $fc                                        ; $5024: $fc
    ld a, [$15db]                                 ; $5025: $fa $db $15
    add h                                         ; $5028: $84
    ld de, $3fe7                                  ; $5029: $11 $e7 $3f
    ld e, d                                       ; $502c: $5a
    ld a, $1f                                     ; $502d: $3e $1f
    rst $20                                       ; $502f: $e7
    cp a                                          ; $5030: $bf
    daa                                           ; $5031: $27
    ld d, c                                       ; $5032: $51
    ld [hl], e                                    ; $5033: $73
    dec b                                         ; $5034: $05
    cp [hl]                                       ; $5035: $be
    ld l, [hl]                                    ; $5036: $6e
    ld d, $bb                                     ; $5037: $16 $bb
    jr c, jr_044_507a                             ; $5039: $38 $3f

    ld [c], a                                     ; $503b: $e2
    ld b, e                                       ; $503c: $43
    ld d, c                                       ; $503d: $51
    ld hl, sp-$4d                                 ; $503e: $f8 $b3
    adc h                                         ; $5040: $8c
    pop af                                        ; $5041: $f1
    and a                                         ; $5042: $a7
    ld b, [hl]                                    ; $5043: $46
    sbc h                                         ; $5044: $9c
    rst $38                                       ; $5045: $ff
    ld l, b                                       ; $5046: $68
    ld sp, hl                                     ; $5047: $f9
    ld a, h                                       ; $5048: $7c
    sbc h                                         ; $5049: $9c
    rst $38                                       ; $504a: $ff
    sbc [hl]                                      ; $504b: $9e
    ld b, h                                       ; $504c: $44
    cp a                                          ; $504d: $bf

jr_044_504e:
    ld [bc], a                                    ; $504e: $02
    ld [hl], l                                    ; $504f: $75
    or b                                          ; $5050: $b0
    inc l                                         ; $5051: $2c
    call nc, $da90                                ; $5052: $d4 $90 $da
    xor a                                         ; $5055: $af
    reti                                          ; $5056: $d9


    xor c                                         ; $5057: $a9
    ret c                                         ; $5058: $d8

    pop de                                        ; $5059: $d1
    ld [c], a                                     ; $505a: $e2

jr_044_505b:
    adc $a0                                       ; $505b: $ce $a0
    rst $10                                       ; $505d: $d7
    inc hl                                        ; $505e: $23
    xor a                                         ; $505f: $af
    ld a, [c]                                     ; $5060: $f2
    adc e                                         ; $5061: $8b
    sbc l                                         ; $5062: $9d
    ld hl, $143e                                  ; $5063: $21 $3e $14
    add l                                         ; $5066: $85
    ccf                                           ; $5067: $3f
    rr b                                          ; $5068: $cb $18
    ld a, a                                       ; $506a: $7f
    cp a                                          ; $506b: $bf
    ld [bc], a                                    ; $506c: $02
    dec e                                         ; $506d: $1d
    ld l, h                                       ; $506e: $6c
    ld [hl], $84                                  ; $506f: $36 $84
    jp z, Jump_000_1967                           ; $5071: $ca $67 $19

    db $e3                                        ; $5074: $e3
    adc a                                         ; $5075: $8f
    di                                            ; $5076: $f3
    rra                                           ; $5077: $1f
    dec l                                         ; $5078: $2d
    sbc a                                         ; $5079: $9f

jr_044_507a:
    adc a                                         ; $507a: $8f
    di                                            ; $507b: $f3
    rst $18                                       ; $507c: $df
    sub e                                         ; $507d: $93
    ret z                                         ; $507e: $c8

    ld [hl-], a                                   ; $507f: $32
    ld l, h                                       ; $5080: $6c
    ret nc                                        ; $5081: $d0

    db $eb                                        ; $5082: $eb
    ld de, $0294                                  ; $5083: $11 $94 $02
    ld [hl], e                                    ; $5086: $73
    rla                                           ; $5087: $17
    ld [hl], l                                    ; $5088: $75
    ld h, c                                       ; $5089: $61
    jp z, Jump_000_353c                           ; $508a: $ca $3c $35

    db $d3                                        ; $508d: $d3
    ld a, [$2985]                                 ; $508e: $fa $85 $29
    di                                            ; $5091: $f3
    db $f4                                        ; $5092: $f4
    ld a, l                                       ; $5093: $7d
    ret c                                         ; $5094: $d8

    ld e, [hl]                                    ; $5095: $5e
    inc b                                         ; $5096: $04
    ld h, c                                       ; $5097: $61
    add sp, -$1e                                  ; $5098: $e8 $e2
    db $fc                                        ; $509a: $fc
    rst $30                                       ; $509b: $f7

jr_044_509c:
    or $15                                        ; $509c: $f6 $15
    add h                                         ; $509e: $84
    pop de                                        ; $509f: $d1
    xor a                                         ; $50a0: $af
    dec e                                         ; $50a1: $1d
    ld d, e                                       ; $50a2: $53
    ld h, [hl]                                    ; $50a3: $66
    call nz, $a287                                ; $50a4: $c4 $87 $a2
    jr nc, jr_044_505b                            ; $50a7: $30 $b2

    adc h                                         ; $50a9: $8c
    ld sp, $fce2                                  ; $50aa: $31 $e2 $fc
    ld b, a                                       ; $50ad: $47
    dec bc                                        ; $50ae: $0b
    ld a, [$0fbe]                                 ; $50af: $fa $be $0f
    ld [c], a                                     ; $50b2: $e2
    and [hl]                                      ; $50b3: $a6
    call nc, Call_044_6597                        ; $50b4: $d4 $97 $65
    sbc h                                         ; $50b7: $9c
    rra                                           ; $50b8: $1f
    ld [hl], c                                    ; $50b9: $71
    cp $7b                                        ; $50ba: $fe $7b
    ld a, [c]                                     ; $50bc: $f2
    ld a, [$7515]                                 ; $50bd: $fa $15 $75
    ld b, [hl]                                    ; $50c0: $46
    or d                                          ; $50c1: $b2
    ret nc                                        ; $50c2: $d0

    cp c                                          ; $50c3: $b9
    ld b, b                                       ; $50c4: $40
    ret c                                         ; $50c5: $d8

    sbc $90                                       ; $50c6: $de $90
    sub e                                         ; $50c8: $93
    ld [$a14a], sp                                ; $50c9: $08 $4a $a1
    ld a, [c]                                     ; $50cc: $f2
    ld [hl], c                                    ; $50cd: $71
    ld e, a                                       ; $50ce: $5f
    pop bc                                        ; $50cf: $c1
    ld a, $fa                                     ; $50d0: $3e $fa
    ld a, l                                       ; $50d2: $7d
    and d                                         ; $50d3: $a2
    sbc [hl]                                      ; $50d4: $9e
    ccf                                           ; $50d5: $3f
    dec b                                         ; $50d6: $05
    sub c                                         ; $50d7: $91
    sub c                                         ; $50d8: $91
    ld [$fef6], sp                                ; $50d9: $08 $f6 $fe
    jr nc, @-$01                                  ; $50dc: $30 $fd

    ld a, [hl]                                    ; $50de: $7e
    dec b                                         ; $50df: $05
    dec e                                         ; $50e0: $1d
    ld d, d                                       ; $50e1: $52
    inc d                                         ; $50e2: $14
    cp $2c                                        ; $50e3: $fe $2c
    jp $bd06                                      ; $50e5: $c3 $06 $bd


    ld e, $41                                     ; $50e8: $1e $41
    add hl, hl                                    ; $50ea: $29
    jr nc, jr_044_5151                            ; $50eb: $30 $64

    ld a, a                                       ; $50ed: $7f
    call c, $b057                                 ; $50ee: $dc $57 $b0
    adc a                                         ; $50f1: $8f
    ld a, [hl]                                    ; $50f2: $7e
    sbc a                                         ; $50f3: $9f
    xor b                                         ; $50f4: $a8
    rst $20                                       ; $50f5: $e7
    adc a                                         ; $50f6: $8f
    cp d                                          ; $50f7: $ba
    call nc, $337e                                ; $50f8: $d4 $7e $33
    ld [bc], a                                    ; $50fb: $02
    xor c                                         ; $50fc: $a9
    dec sp                                        ; $50fd: $3b
    call z, Call_044_5ab0                         ; $50fe: $cc $b0 $5a
    xor c                                         ; $5101: $a9
    inc sp                                        ; $5102: $33
    cp d                                          ; $5103: $ba
    jr z, @-$46                                   ; $5104: $28 $b8

    dec hl                                        ; $5106: $2b
    ld e, a                                       ; $5107: $5f
    ld b, c                                       ; $5108: $41
    jr jr_044_509c                                ; $5109: $18 $91

    jp hl                                         ; $510b: $e9


    ld d, a                                       ; $510c: $57
    ld [hl], l                                    ; $510d: $75
    ld b, [hl]                                    ; $510e: $46
    or d                                          ; $510f: $b2
    ret nc                                        ; $5110: $d0

    cp c                                          ; $5111: $b9
    ld b, b                                       ; $5112: $40
    ret c                                         ; $5113: $d8

    sbc $a0                                       ; $5114: $de $a0
    ld c, e                                       ; $5116: $4b
    push af                                       ; $5117: $f5
    ld sp, hl                                     ; $5118: $f9
    ld e, l                                       ; $5119: $5d
    ld b, c                                       ; $511a: $41
    ld h, $32                                     ; $511b: $26 $32
    sub d                                         ; $511d: $92
    add d                                         ; $511e: $82
    adc e                                         ; $511f: $8b
    sbc e                                         ; $5120: $9b
    jp nz, $e606                                  ; $5121: $c2 $06 $e6

    ret                                           ; $5124: $c9


    rst $00                                       ; $5125: $c7
    pop bc                                        ; $5126: $c1
    call c, $b21b                                 ; $5127: $dc $1b $b2
    dec a                                         ; $512a: $3d
    ld l, b                                       ; $512b: $68
    ld [hl], c                                    ; $512c: $71
    rst $00                                       ; $512d: $c7
    ld e, a                                       ; $512e: $5f
    ld [hl], e                                    ; $512f: $73
    dec b                                         ; $5130: $05
    sbc [hl]                                      ; $5131: $9e
    ld a, [hl]                                    ; $5132: $7e
    and h                                         ; $5133: $a4
    adc h                                         ; $5134: $8c
    dec l                                         ; $5135: $2d

Jump_044_5136:
    add [hl]                                      ; $5136: $86
    ld a, [c]                                     ; $5137: $f2
    ld a, l                                       ; $5138: $7d
    rst $18                                       ; $5139: $df
    rst $00                                       ; $513a: $c7
    add a                                         ; $513b: $87
    and d                                         ; $513c: $a2
    ldh a, [$67]                                  ; $513d: $f0 $67
    add hl, de                                    ; $513f: $19
    db $e3                                        ; $5140: $e3
    ld c, a                                       ; $5141: $4f
    adc l                                         ; $5142: $8d
    jr c, @+$01                                   ; $5143: $38 $ff

    pop de                                        ; $5145: $d1
    ld a, [c]                                     ; $5146: $f2
    ld sp, hl                                     ; $5147: $f9
    jr c, @+$01                                   ; $5148: $38 $ff

    dec a                                         ; $514a: $3d
    adc c                                         ; $514b: $89
    cp [hl]                                       ; $514c: $be
    rst $28                                       ; $514d: $ef
    ld d, a                                       ; $514e: $57
    sbc l                                         ; $514f: $9d
    adc b                                         ; $5150: $88

jr_044_5151:
    rst $00                                       ; $5151: $c7
    ld l, a                                       ; $5152: $6f
    or [hl]                                       ; $5153: $b6
    adc a                                         ; $5154: $8f
    ei                                            ; $5155: $fb
    ld a, [bc]                                    ; $5156: $0a
    or $d1                                        ; $5157: $f6 $d1
    rst $28                                       ; $5159: $ef
    inc de                                        ; $515a: $13
    push af                                       ; $515b: $f5
    db $fc                                        ; $515c: $fc
    ld de, $fdec                                  ; $515d: $11 $ec $fd
    pop af                                        ; $5160: $f1
    and c                                         ; $5161: $a1
    cp a                                          ; $5162: $bf
    ld de, $c919                                  ; $5163: $11 $19 $c9
    ld b, d                                       ; $5166: $42
    rst $20                                       ; $5167: $e7
    ld [bc], a                                    ; $5168: $02
    ld h, c                                       ; $5169: $61
    ld a, e                                       ; $516a: $7b
    ld b, e                                       ; $516b: $43
    cp a                                          ; $516c: $bf
    ld [bc], a                                    ; $516d: $02
    dec e                                         ; $516e: $1d
    ld d, d                                       ; $516f: $52
    inc d                                         ; $5170: $14
    cp $2c                                        ; $5171: $fe $2c
    ld h, e                                       ; $5173: $63
    db $fc                                        ; $5174: $fc
    add hl, hl                                    ; $5175: $29
    xor b                                         ; $5176: $a8
    db $f4                                        ; $5177: $f4
    or $59                                        ; $5178: $f6 $59
    ld l, h                                       ; $517a: $6c
    ld d, $bb                                     ; $517b: $16 $bb
    ret                                           ; $517d: $c9


    ret                                           ; $517e: $c9


    dec sp                                        ; $517f: $3b
    add a                                         ; $5180: $87
    ld d, d                                       ; $5181: $52
    ld c, [hl]                                    ; $5182: $4e
    ld a, a                                       ; $5183: $7f
    dec de                                        ; $5184: $1b
    db $fd                                        ; $5185: $fd
    ld a, [bc]                                    ; $5186: $0a
    cp [hl]                                       ; $5187: $be
    ld c, $da                                     ; $5188: $0e $da
    cp [hl]                                       ; $518a: $be
    ld l, b                                       ; $518b: $68
    ei                                            ; $518c: $fb
    ld [hl], d                                    ; $518d: $72
    and d                                         ; $518e: $a2
    add hl, de                                    ; $518f: $19
    call nc, $f841                                ; $5190: $d4 $41 $f8
    add d                                         ; $5193: $82
    inc l                                         ; $5194: $2c
    add [hl]                                      ; $5195: $86
    ld [$cbe2], a                                 ; $5196: $ea $e2 $cb
    ld l, a                                       ; $5199: $6f
    sbc h                                         ; $519a: $9c
    dec b                                         ; $519b: $05
    sub [hl]                                      ; $519c: $96
    ld a, [bc]                                    ; $519d: $0a
    push bc                                       ; $519e: $c5
    call $db7e                                    ; $519f: $cd $7e $db
    rst $10                                       ; $51a2: $d7
    xor a                                         ; $51a3: $af
    ld e, c                                       ; $51a4: $59
    ld bc, $0159                                  ; $51a5: $01 $59 $01
    ld [hl], l                                    ; $51a8: $75
    ld b, [hl]                                    ; $51a9: $46

jr_044_51aa:
    ld d, d                                       ; $51aa: $52
    xor b                                         ; $51ab: $a8
    ld [hl], e                                    ; $51ac: $73
    ld d, b                                       ; $51ad: $50
    adc b                                         ; $51ae: $88
    inc e                                         ; $51af: $1c
    add h                                         ; $51b0: $84
    pop de                                        ; $51b1: $d1
    and a                                         ; $51b2: $a7
    ld l, $4c                                     ; $51b3: $2e $4c
    ld e, l                                       ; $51b5: $5d
    ld l, $4c                                     ; $51b6: $2e $4c
    rst $20                                       ; $51b8: $e7
    ld [hl], d                                    ; $51b9: $72
    and d                                         ; $51ba: $a2
    add hl, de                                    ; $51bb: $19
    call nc, $f841                                ; $51bc: $d4 $41 $f8
    ld a, [$6d15]                                 ; $51bf: $fa $15 $6d
    cp [hl]                                       ; $51c2: $be
    ldh a, [rNR22]                                ; $51c3: $f0 $17
    ld a, $37                                     ; $51c5: $3e $37
    dec [hl]                                      ; $51c7: $35
    ld d, e                                       ; $51c8: $53
    ei                                            ; $51c9: $fb
    cpl                                           ; $51ca: $2f
    adc $f0                                       ; $51cb: $ce $f0
    inc a                                         ; $51cd: $3c
    dec l                                         ; $51ce: $2d
    xor [hl]                                      ; $51cf: $ae
    ld [hl], l                                    ; $51d0: $75
    add sp, -$70                                  ; $51d1: $e8 $90
    sbc a                                         ; $51d3: $9f
    push hl                                       ; $51d4: $e5
    adc l                                         ; $51d5: $8d
    adc a                                         ; $51d6: $8f
    ld a, a                                       ; $51d7: $7f
    dec b                                         ; $51d8: $05
    sbc [hl]                                      ; $51d9: $9e
    ld l, a                                       ; $51da: $6f
    rst $20                                       ; $51db: $e7
    ld a, $cb                                     ; $51dc: $3e $cb
    dec de                                        ; $51de: $1b
    rra                                           ; $51df: $1f
    rst $38                                       ; $51e0: $ff
    ld a, [bc]                                    ; $51e1: $0a
    cp [hl]                                       ; $51e2: $be
    ret c                                         ; $51e3: $d8

    jr nz, @-$20                                  ; $51e4: $20 $de

    ld [$4fb2], sp                                ; $51e6: $08 $b2 $4f
    inc [hl]                                      ; $51e9: $34
    ld a, [$6d2b]                                 ; $51ea: $fa $2b $6d
    db $dd                                        ; $51ed: $dd
    jr c, @+$01                                   ; $51ee: $38 $ff

    ld b, l                                       ; $51f0: $45
    ccf                                           ; $51f1: $3f
    ld b, d                                       ; $51f2: $42
    rrc d                                         ; $51f3: $cb $0a
    ld [hl], l                                    ; $51f5: $75
    ld b, [hl]                                    ; $51f6: $46
    ld d, d                                       ; $51f7: $52
    ld [hl], b                                    ; $51f8: $70
    add hl, hl                                    ; $51f9: $29
    db $fc                                        ; $51fa: $fc
    ld [c], a                                     ; $51fb: $e2
    ld h, $ea                                     ; $51fc: $26 $ea
    ld d, d                                       ; $51fe: $52
    dec de                                        ; $51ff: $1b
    ld d, [hl]                                    ; $5200: $56
    db $dd                                        ; $5201: $dd
    ld [$a56a], sp                                ; $5202: $08 $6a $a5
    push hl                                       ; $5205: $e5
    cp b                                          ; $5206: $b8
    ld de, $84f2                                  ; $5207: $11 $f2 $84
    ccf                                           ; $520a: $3f
    ld [$7e52], a                                 ; $520b: $ea $52 $7e
    add c                                         ; $520e: $81
    ld hl, $994c                                  ; $520f: $21 $4c $99
    and a                                         ; $5212: $a7
    ld e, a                                       ; $5213: $5f
    ld bc, $4675                                  ; $5214: $01 $75 $46
    ld [c], a                                     ; $5217: $e2
    inc a                                         ; $5218: $3c
    ld l, d                                       ; $5219: $6a
    ld b, h                                       ; $521a: $44
    ld a, l                                       ; $521b: $7d
    ld a, [bc]                                    ; $521c: $0a
    db $d3                                        ; $521d: $d3
    push hl                                       ; $521e: $e5
    xor h                                         ; $521f: $ac
    ld e, h                                       ; $5220: $5c
    ld a, [bc]                                    ; $5221: $0a
    ld [hl+], a                                   ; $5222: $22
    jr z, jr_044_51aa                             ; $5223: $28 $85

    jp z, Jump_044_7f64                           ; $5225: $ca $64 $7f

    jp z, $cb2c                                   ; $5228: $ca $2c $cb

    jr jr_044_52ac                                ; $522b: $18 $7f

    cp a                                          ; $522d: $bf
    ld [bc], a                                    ; $522e: $02
    sbc [hl]                                      ; $522f: $9e
    ld d, e                                       ; $5230: $53
    and c                                         ; $5231: $a1
    rst $28                                       ; $5232: $ef
    ei                                            ; $5233: $fb
    cp b                                          ; $5234: $b8
    xor c                                         ; $5235: $a9
    db $10                                        ; $5236: $10
    rst $38                                       ; $5237: $ff
    adc e                                         ; $5238: $8b
    ld c, h                                       ; $5239: $4c
    sub [hl]                                      ; $523a: $96
    ld h, c                                       ; $523b: $61
    jp z, $e593                                   ; $523c: $ca $93 $e5

    ld l, l                                       ; $523f: $6d
    cp a                                          ; $5240: $bf
    ld hl, $f127                                  ; $5241: $21 $27 $f1
    and c                                         ; $5244: $a1
    ret c                                         ; $5245: $d8

    xor c                                         ; $5246: $a9
    ld b, [hl]                                    ; $5247: $46
    ld c, l                                       ; $5248: $4d
    call nc, Call_044_42a5                        ; $5249: $d4 $a5 $42
    rst $18                                       ; $524c: $df
    rst $30                                       ; $524d: $f7
    dec hl                                        ; $524e: $2b
    sbc [hl]                                      ; $524f: $9e
    ld b, $35                                     ; $5250: $06 $35
    ld [hl], c                                    ; $5252: $71
    ld a, [hl]                                    ; $5253: $7e
    call nz, $5e5d                                ; $5254: $c4 $5d $5e
    xor a                                         ; $5257: $af
    cp a                                          ; $5258: $bf
    ld c, a                                       ; $5259: $4f
    add c                                         ; $525a: $81
    ldh a, [$f1]                                  ; $525b: $f0 $f1
    db $f4                                        ; $525d: $f4
    ld a, l                                       ; $525e: $7d
    cp a                                          ; $525f: $bf
    ld [bc], a                                    ; $5260: $02
    or l                                          ; $5261: $b5
    rst $38                                       ; $5262: $ff
    ld b, d                                       ; $5263: $42
    ld e, [hl]                                    ; $5264: $5e
    pop hl                                        ; $5265: $e1
    ld c, c                                       ; $5266: $49
    ld l, l                                       ; $5267: $6d
    ld e, b                                       ; $5268: $58
    ld [hl], l                                    ; $5269: $75
    inc hl                                        ; $526a: $23
    ld c, b                                       ; $526b: $48
    ld e, e                                       ; $526c: $5b
    or $a2                                        ; $526d: $f6 $a2
    pop bc                                        ; $526f: $c1
    ld l, d                                       ; $5270: $6a
    xor l                                         ; $5271: $ad
    db $ed                                        ; $5272: $ed
    ld a, c                                       ; $5273: $79
    ld hl, sp+$27                                 ; $5274: $f8 $27
    db $e4                                        ; $5276: $e4
    dec d                                         ; $5277: $15
    cp $2c                                        ; $5278: $fe $2c
    db $e3                                        ; $527a: $e3
    ld h, $de                                     ; $527b: $26 $de
    rst $10                                       ; $527d: $d7
    and l                                         ; $527e: $a5
    ld a, [$48c8]                                 ; $527f: $fa $c8 $48
    jp z, $0d44                                   ; $5282: $ca $44 $0d

    adc c                                         ; $5285: $89
    sub h                                         ; $5286: $94
    ei                                            ; $5287: $fb
    cp h                                          ; $5288: $bc
    xor b                                         ; $5289: $a8
    rst $20                                       ; $528a: $e7
    rst $28                                       ; $528b: $ef
    ld d, a                                       ; $528c: $57
    xor l                                         ; $528d: $ad
    pop bc                                        ; $528e: $c1
    xor a                                         ; $528f: $af
    adc e                                         ; $5290: $8b
    add e                                         ; $5291: $83
    cp c                                          ; $5292: $b9
    rst $18                                       ; $5293: $df
    rst $18                                       ; $5294: $df
    and a                                         ; $5295: $a7
    ld h, e                                       ; $5296: $63
    jp z, $517c                                   ; $5297: $ca $7c $51

    jr nz, @+$49                                  ; $529a: $20 $47

    ld h, $f6                                     ; $529c: $26 $f6
    adc d                                         ; $529e: $8a
    jp z, $b95b                                   ; $529f: $ca $5b $b9

    inc l                                         ; $52a2: $2c
    or b                                          ; $52a3: $b0
    db $ec                                        ; $52a4: $ec
    adc a                                         ; $52a5: $8f
    rla                                           ; $52a6: $17
    add l                                         ; $52a7: $85
    ccf                                           ; $52a8: $3f
    ld [$fb52], a                                 ; $52a9: $ea $52 $fb

jr_044_52ac:
    rst $30                                       ; $52ac: $f7
    sbc [hl]                                      ; $52ad: $9e
    xor $00                                       ; $52ae: $ee $00
    jp hl                                         ; $52b0: $e9


jr_044_52b1:
    ld d, a                                       ; $52b1: $57
    cp [hl]                                       ; $52b2: $be
    db $fc                                        ; $52b3: $fc
    rla                                           ; $52b4: $17
    rlca                                          ; $52b5: $07
    ld [hl], e                                    ; $52b6: $73
    cpl                                           ; $52b7: $2f
    ld l, d                                       ; $52b8: $6a
    and d                                         ; $52b9: $a2
    ld l, $85                                     ; $52ba: $2e $85
    inc a                                         ; $52bc: $3c
    ld c, l                                       ; $52bd: $4d
    sbc $18                                       ; $52be: $de $18
    ei                                            ; $52c0: $fb
    ld l, e                                       ; $52c1: $6b
    and l                                         ; $52c2: $a5
    adc $48                                       ; $52c3: $ce $48
    jr @-$25                                      ; $52c5: $18 $d9

    sub e                                         ; $52c7: $93
    dec b                                         ; $52c8: $05
    ld d, [hl]                                    ; $52c9: $56
    add c                                         ; $52ca: $81
    add hl, de                                    ; $52cb: $19
    ld d, [hl]                                    ; $52cc: $56
    ld a, a                                       ; $52cd: $7f
    rra                                           ; $52ce: $1f
    ld e, a                                       ; $52cf: $5f
    cp $8b                                        ; $52d0: $fe $8b
    rrca                                          ; $52d2: $0f
    cp l                                          ; $52d3: $bd
    jr nz, @-$33                                  ; $52d4: $20 $cb

    dec de                                        ; $52d6: $1b
    jp $f2dd                                      ; $52d7: $c3 $dd $f2


    ld sp, hl                                     ; $52da: $f9
    dec e                                         ; $52db: $1d
    db $fd                                        ; $52dc: $fd
    adc e                                         ; $52dd: $8b
    di                                            ; $52de: $f3
    add e                                         ; $52df: $83
    ld a, c                                       ; $52e0: $79
    ld a, [$6d15]                                 ; $52e1: $fa $15 $6d
    cp [hl]                                       ; $52e4: $be
    push de                                       ; $52e5: $d5
    sbc a                                         ; $52e6: $9f
    db $fd                                        ; $52e7: $fd
    pop de                                        ; $52e8: $d1
    add sp, -$65                                  ; $52e9: $e8 $9b
    cp d                                          ; $52eb: $ba
    rst $08                                       ; $52ec: $cf
    rst $00                                       ; $52ed: $c7
    add a                                         ; $52ee: $87
    and d                                         ; $52ef: $a2
    ldh a, [$67]                                  ; $52f0: $f0 $67
    add hl, de                                    ; $52f2: $19
    db $e3                                        ; $52f3: $e3
    adc a                                         ; $52f4: $8f
    rst $30                                       ; $52f5: $f7
    ld h, h                                       ; $52f6: $64
    ld a, [c]                                     ; $52f7: $f2
    ld a, e                                       ; $52f8: $7b
    ld a, e                                       ; $52f9: $7b
    sbc h                                         ; $52fa: $9c
    inc e                                         ; $52fb: $1c
    pop af                                        ; $52fc: $f1
    ld h, $0a                                     ; $52fd: $26 $0a
    dec sp                                        ; $52ff: $3b
    ld a, [$e717]                                 ; $5300: $fa $17 $e7
    rlca                                          ; $5303: $07
    di                                            ; $5304: $f3
    db $f4                                        ; $5305: $f4
    xor c                                         ; $5306: $a9
    inc sp                                        ; $5307: $33
    ld [de], a                                    ; $5308: $12
    ld b, c                                       ; $5309: $41
    sub [hl]                                      ; $530a: $96
    add hl, hl                                    ; $530b: $29
    ld h, l                                       ; $530c: $65
    or d                                          ; $530d: $b2
    ld e, h                                       ; $530e: $5c
    inc bc                                        ; $530f: $03
    ld d, c                                       ; $5310: $51
    cp b                                          ; $5311: $b8
    jr nc, jr_044_52b1                            ; $5312: $30 $9d

    dec bc                                        ; $5314: $0b
    ld b, e                                       ; $5315: $43
    ld hl, sp-$07                                 ; $5316: $f8 $f9
    ret z                                         ; $5318: $c8

    adc e                                         ; $5319: $8b
    cp d                                          ; $531a: $ba
    ld a, b                                       ; $531b: $78
    xor c                                         ; $531c: $a9
    or $fd                                        ; $531d: $f6 $fd
    ld a, [bc]                                    ; $531f: $0a
    ld [hl], l                                    ; $5320: $75
    ld b, [hl]                                    ; $5321: $46
    ld [c], a                                     ; $5322: $e2
    inc a                                         ; $5323: $3c
    ld l, d                                       ; $5324: $6a
    ld b, h                                       ; $5325: $44
    ld c, $c2                                     ; $5326: $0e $c2
    adc b                                         ; $5328: $88
    ld a, [$5090]                                 ; $5329: $fa $90 $50
    jr nc, jr_044_5392                            ; $532c: $30 $64

    ld a, a                                       ; $532e: $7f
    add hl, hl                                    ; $532f: $29
    dec c                                         ; $5330: $0d
    add sp, $52                                   ; $5331: $e8 $52
    ei                                            ; $5333: $fb
    call $f408                                    ; $5334: $cd $08 $f4
    ld l, c                                       ; $5337: $69
    ld a, e                                       ; $5338: $7b
    ld b, a                                       ; $5339: $47
    dec e                                         ; $533a: $1d
    add hl, bc                                    ; $533b: $09
    db $e3                                        ; $533c: $e3
    xor e                                         ; $533d: $ab
    jr nz, jr_044_537c                            ; $533e: $20 $3c

    xor c                                         ; $5340: $a9
    ld de, $cca6                                  ; $5341: $11 $a6 $cc
    inc de                                        ; $5344: $13
    rra                                           ; $5345: $1f
    ld a, [$769a]                                 ; $5346: $fa $9a $76
    dec c                                         ; $5349: $0d
    call nc, $015c                                ; $534a: $d4 $5c $01
    ld [hl], l                                    ; $534d: $75
    ld b, [hl]                                    ; $534e: $46
    or d                                          ; $534f: $b2
    ret nz                                        ; $5350: $c0

    ld a, [hl+]                                   ; $5351: $2a
    jr nc, @-$3b                                  ; $5352: $30 $c3

    ld [$47cf], a                                 ; $5354: $ea $cf $47
    ld d, b                                       ; $5357: $50
    ld a, [bc]                                    ; $5358: $0a
    sub l                                         ; $5359: $95
    adc c                                         ; $535a: $89
    cp d                                          ; $535b: $ba
    ld d, h                                       ; $535c: $54
    ld h, b                                       ; $535d: $60
    add [hl]                                      ; $535e: $86
    ld hl, $5127                                  ; $535f: $21 $27 $51
    ld d, a                                       ; $5362: $57
    add $d4                                       ; $5363: $c6 $d4
    add hl, bc                                    ; $5365: $09
    ld [hl], d                                    ; $5366: $72
    dec sp                                        ; $5367: $3b
    push de                                       ; $5368: $d5
    ld c, l                                       ; $5369: $4d
    db $f4                                        ; $536a: $f4
    ret c                                         ; $536b: $d8

jr_044_536c:
    add hl, hl                                    ; $536c: $29
    jp $b30c                                      ; $536d: $c3 $0c $b3


    rla                                           ; $5370: $17
    ld c, h                                       ; $5371: $4c
    sbc a                                         ; $5372: $9f
    adc [hl]                                      ; $5373: $8e
    xor [hl]                                      ; $5374: $ae
    ld a, d                                       ; $5375: $7a
    cp c                                          ; $5376: $b9
    ld hl, sp-$30                                 ; $5377: $f8 $d0
    cpl                                           ; $5379: $2f
    and l                                         ; $537a: $a5
    add c                                         ; $537b: $81

jr_044_537c:
    db $fc                                        ; $537c: $fc
    sbc $1f                                       ; $537d: $de $1f
    cpl                                           ; $537f: $2f
    ld a, [bc]                                    ; $5380: $0a
    ld a, a                                       ; $5381: $7f
    rst $18                                       ; $5382: $df
    rst $30                                       ; $5383: $f7
    ld d, c                                       ; $5384: $51
    or e                                          ; $5385: $b3
    ld c, h                                       ; $5386: $4c
    ld a, b                                       ; $5387: $78
    sbc h                                         ; $5388: $9c
    di                                            ; $5389: $f3
    jp $c9ea                                      ; $538a: $c3 $ea $c9


    and a                                         ; $538d: $a7
    ld b, d                                       ; $538e: $42
    cp h                                          ; $538f: $bc
    ld l, a                                       ; $5390: $6f
    ret z                                         ; $5391: $c8

jr_044_5392:
    ld b, [hl]                                    ; $5392: $46
    ld d, $ba                                     ; $5393: $16 $ba
    adc a                                         ; $5395: $8f
    ld a, b                                       ; $5396: $78
    add sp, $57                                   ; $5397: $e8 $57
    ld [hl], l                                    ; $5399: $75
    ld b, [hl]                                    ; $539a: $46
    ld d, d                                       ; $539b: $52
    ld l, $0b                                     ; $539c: $2e $0b
    xor l                                         ; $539e: $ad
    ccf                                           ; $539f: $3f
    cpl                                           ; $53a0: $2f
    ld l, [hl]                                    ; $53a1: $6e
    db $ec                                        ; $53a2: $ec
    inc bc                                        ; $53a3: $03
    ld h, c                                       ; $53a4: $61
    ld a, e                                       ; $53a5: $7b
    ld b, e                                       ; $53a6: $43
    sbc a                                         ; $53a7: $9f
    or $10                                        ; $53a8: $f6 $10
    dec b                                         ; $53aa: $05
    scf                                           ; $53ab: $37
    or $c4                                        ; $53ac: $f6 $c4
    dec de                                        ; $53ae: $1b
    cp c                                          ; $53af: $b9
    ret z                                         ; $53b0: $c8

    ld c, b                                       ; $53b1: $48
    jp z, $64c8                                   ; $53b2: $ca $c8 $64

    or c                                          ; $53b5: $b1
    ld de, $bf46                                  ; $53b6: $11 $46 $bf
    ld [bc], a                                    ; $53b9: $02
    ld [hl], l                                    ; $53ba: $75
    ld b, [hl]                                    ; $53bb: $46
    or d                                          ; $53bc: $b2
    ret nc                                        ; $53bd: $d0

    cp c                                          ; $53be: $b9
    cp h                                          ; $53bf: $bc
    xor b                                         ; $53c0: $a8
    scf                                           ; $53c1: $37
    add [hl]                                      ; $53c2: $86
    jr nz, jr_044_53ec                            ; $53c3: $20 $27

    pop de                                        ; $53c5: $d1
    adc $26                                       ; $53c6: $ce $26
    cp a                                          ; $53c8: $bf
    or a                                          ; $53c9: $b7

jr_044_53ca:
    rst $00                                       ; $53ca: $c7
    cpl                                           ; $53cb: $2f
    jr nc, jr_044_536c                            ; $53cc: $30 $9e

    ld a, h                                       ; $53ce: $7c
    ld a, h                                       ; $53cf: $7c
    jr z, jr_044_53dc                             ; $53d0: $28 $0a

    ld a, e                                       ; $53d2: $7b
    adc h                                         ; $53d3: $8c
    cp l                                          ; $53d4: $bd
    ld l, $b5                                     ; $53d5: $2e $b5
    rst $18                                       ; $53d7: $df
    adc h                                         ; $53d8: $8c
    ld b, b                                       ; $53d9: $40
    cp a                                          ; $53da: $bf
    ld [bc], a                                    ; $53db: $02

jr_044_53dc:
    or l                                          ; $53dc: $b5
    rst $38                                       ; $53dd: $ff
    ld b, d                                       ; $53de: $42
    ld e, [hl]                                    ; $53df: $5e
    pop hl                                        ; $53e0: $e1
    ld c, c                                       ; $53e1: $49
    ld l, l                                       ; $53e2: $6d
    ld e, b                                       ; $53e3: $58
    ld [hl], l                                    ; $53e4: $75
    inc hl                                        ; $53e5: $23
    xor b                                         ; $53e6: $a8
    or l                                          ; $53e7: $b5
    ld [bc], a                                    ; $53e8: $02
    db $ed                                        ; $53e9: $ed
    ld e, a                                       ; $53ea: $5f
    ld a, [bc]                                    ; $53eb: $0a

jr_044_53ec:
    ld a, [hl+]                                   ; $53ec: $2a
    cp l                                          ; $53ed: $bd
    ld a, l                                       ; $53ee: $7d
    call nc, Call_044_49e5                        ; $53ef: $d4 $e5 $49
    ret c                                         ; $53f2: $d8

    cp $90                                        ; $53f3: $fe $90
    ld d, a                                       ; $53f5: $57
    ld hl, sp+$23                                 ; $53f6: $f8 $23
    ret c                                         ; $53f8: $d8

    or c                                          ; $53f9: $b1
    ld e, e                                       ; $53fa: $5b
    and [hl]                                      ; $53fb: $a6
    ldh a, [rBCPD]                                ; $53fc: $f0 $69
    ei                                            ; $53fe: $fb
    ld h, $0a                                     ; $53ff: $26 $0a
    ld a, e                                       ; $5401: $7b
    inc hl                                        ; $5402: $23
    push bc                                       ; $5403: $c5
    call Call_044_7e82                            ; $5404: $cd $82 $7e
    dec b                                         ; $5407: $05
    ld [hl], l                                    ; $5408: $75
    ld l, l                                       ; $5409: $6d
    db $f4                                        ; $540a: $f4
    xor a                                         ; $540b: $af
    cp a                                          ; $540c: $bf
    ld e, l                                       ; $540d: $5d
    ld b, c                                       ; $540e: $41
    jr jr_044_53ca                                ; $540f: $18 $b9

    sbc l                                         ; $5411: $9d
    ld b, d                                       ; $5412: $42
    daa                                           ; $5413: $27
    ld a, [c]                                     ; $5414: $f2
    ld h, l                                       ; $5415: $65
    ld d, d                                       ; $5416: $52
    sbc $ea                                       ; $5417: $de $ea
    ld c, c                                       ; $5419: $49
    and c                                         ; $541a: $a1
    pop af                                        ; $541b: $f1
    and c                                         ; $541c: $a1
    cp a                                          ; $541d: $bf
    sbc l                                         ; $541e: $9d
    rra                                           ; $541f: $1f
    reti                                          ; $5420: $d9


    and a                                         ; $5421: $a7
    or a                                          ; $5422: $b7
    pop de                                        ; $5423: $d1
    and l                                         ; $5424: $a5
    ld a, [$48c8]                                 ; $5425: $fa $c8 $48
    db $fc                                        ; $5428: $fc
    sub e                                         ; $5429: $93
    ld d, e                                       ; $542a: $53
    ld hl, sp-$58                                 ; $542b: $f8 $a8
    adc e                                         ; $542d: $8b
    ld a, [de]                                    ; $542e: $1a
    ld [de], a                                    ; $542f: $12
    add hl, hl                                    ; $5430: $29
    rst $30                                       ; $5431: $f7
    ld h, c                                       ; $5432: $61
    jp z, $b93c                                   ; $5433: $ca $3c $b9

    dec e                                         ; $5436: $1d
    ld b, e                                       ; $5437: $43
    pop hl                                        ; $5438: $e1
    jp hl                                         ; $5439: $e9


    ld d, a                                       ; $543a: $57
    ld l, l                                       ; $543b: $6d
    adc [hl]                                      ; $543c: $8e
    dec d                                         ; $543d: $15
    and h                                         ; $543e: $a4
    ld e, h                                       ; $543f: $5c
    ld l, d                                       ; $5440: $6a
    ld h, h                                       ; $5441: $64
    add c                                         ; $5442: $81
    sub l                                         ; $5443: $95
    rst $08                                       ; $5444: $cf
    ld c, c                                       ; $5445: $49
    add hl, sp                                    ; $5446: $39
    ld d, h                                       ; $5447: $54
    ret z                                         ; $5448: $c8

    rst $28                                       ; $5449: $ef
    ret c                                         ; $544a: $d8

    sub h                                         ; $544b: $94
    ld h, l                                       ; $544c: $65
    and d                                         ; $544d: $a2
    ld l, $75                                     ; $544e: $2e $75
    ld b, b                                       ; $5450: $40
    sbc $de                                       ; $5451: $de $de
    add sp, $57                                   ; $5453: $e8 $57
    dec l                                         ; $5455: $2d
    ld b, a                                       ; $5456: $47
    or b                                          ; $5457: $b0
    and e                                         ; $5458: $a3
    ld a, a                                       ; $5459: $7f
    ld c, l                                       ; $545a: $4d
    ld h, $0a                                     ; $545b: $26 $0a
    ld a, e                                       ; $545d: $7b
    inc hl                                        ; $545e: $23
    or $da                                        ; $545f: $f6 $da
    inc de                                        ; $5461: $13
    adc c                                         ; $5462: $89
    adc b                                         ; $5463: $88
    jp nz, $62ce                                  ; $5464: $c2 $ce $62

    ld d, a                                       ; $5467: $57
    ld c, l                                       ; $5468: $4d
    sub [hl]                                      ; $5469: $96
    ld a, e                                       ; $546a: $7b
    sbc c                                         ; $546b: $99
    jr c, jr_044_54ad                             ; $546c: $38 $3f

    or d                                          ; $546e: $b2
    call c, $068b                                 ; $546f: $dc $8b $06
    ld e, l                                       ; $5472: $5d
    inc [hl]                                      ; $5473: $34
    ld a, e                                       ; $5474: $7b
    ld [c], a                                     ; $5475: $e2
    ld hl, $721f                                  ; $5476: $21 $1f $72
    xor [hl]                                      ; $5479: $ae
    and $0a                                       ; $547a: $e6 $0a
    dec e                                         ; $547c: $1d
    ld hl, sp+$75                                 ; $547d: $f8 $75
    sub c                                         ; $547f: $91
    xor c                                         ; $5480: $a9
    sbc c                                         ; $5481: $99
    ld a, [hl-]                                   ; $5482: $3a
    inc hl                                        ; $5483: $23
    ld hl, $8367                                  ; $5484: $21 $67 $83
    sbc h                                         ; $5487: $9c
    jr c, jr_044_54c9                             ; $5488: $38 $3f

    ld a, [c]                                     ; $548a: $f2
    ld h, [hl]                                    ; $548b: $66
    ld b, a                                       ; $548c: $47
    ld a, [hl]                                    ; $548d: $7e
    add hl, hl                                    ; $548e: $29
    ret z                                         ; $548f: $c8

    add a                                         ; $5490: $87
    ld a, a                                       ; $5491: $7f
    ld h, a                                       ; $5492: $67
    and c                                         ; $5493: $a1
    jp nz, $afd3                                  ; $5494: $c2 $d3 $af

    ld [hl], l                                    ; $5497: $75
    rst $18                                       ; $5498: $df
    ld [hl], $0c                                  ; $5499: $36 $0c
    push de                                       ; $549b: $d5
    call nz, Call_044_648d                        ; $549c: $c4 $8d $64
    db $e3                                        ; $549f: $e3
    ld [c], a                                     ; $54a0: $e2
    ld b, e                                       ; $54a1: $43

jr_044_54a2:
    ld e, a                                       ; $54a2: $5f
    call nc, $8ec4                                ; $54a3: $d4 $c4 $8e
    rst $00                                       ; $54a6: $c7
    inc b                                         ; $54a7: $04
    ld d, [hl]                                    ; $54a8: $56
    ld c, a                                       ; $54a9: $4f
    cp a                                          ; $54aa: $bf
    ld [bc], a                                    ; $54ab: $02
    dec e                                         ; $54ac: $1d

jr_044_54ad:
    ld d, e                                       ; $54ad: $53
    and $8b                                       ; $54ae: $e6 $8b
    ld h, b                                       ; $54b0: $60
    rst $28                                       ; $54b1: $ef
    adc a                                         ; $54b2: $8f
    rst $28                                       ; $54b3: $ef
    rst $28                                       ; $54b4: $ef
    ld c, a                                       ; $54b5: $4f
    ld e, e                                       ; $54b6: $5b
    or $a2                                        ; $54b7: $f6 $a2
    ld d, b                                       ; $54b9: $50
    inc sp                                        ; $54ba: $33
    sbc [hl]                                      ; $54bb: $9e
    ld a, [hl]                                    ; $54bc: $7e
    ld h, h                                       ; $54bd: $64

jr_044_54be:
    ld a, a                                       ; $54be: $7f
    cp h                                          ; $54bf: $bc
    jr z, jr_044_54be                             ; $54c0: $28 $fc

    ld d, c                                       ; $54c2: $51
    sub a                                         ; $54c3: $97
    jp c, $f7bf                                   ; $54c4: $da $bf $f7

    ld [hl], h                                    ; $54c7: $74
    rlca                                          ; $54c8: $07

jr_044_54c9:
    ld c, b                                       ; $54c9: $48
    ld e, [hl]                                    ; $54ca: $5e
    xor a                                         ; $54cb: $af
    cp a                                          ; $54cc: $bf
    rst $08                                       ; $54cd: $cf
    ret                                           ; $54ce: $c9


    ld de, $6a6f                                  ; $54cf: $11 $6f $6a
    xor [hl]                                      ; $54d2: $ae
    sbc l                                         ; $54d3: $9d
    ld c, b                                       ; $54d4: $48

jr_044_54d5:
    xor d                                         ; $54d5: $aa
    ld b, [hl]                                    ; $54d6: $46
    xor e                                         ; $54d7: $ab
    ld b, [hl]                                    ; $54d8: $46
    xor e                                         ; $54d9: $ab
    add hl, hl                                    ; $54da: $29
    ld l, h                                       ; $54db: $6c
    db $d3                                        ; $54dc: $d3
    rst $30                                       ; $54dd: $f7
    ld a, l                                       ; $54de: $7d
    ld a, [hl]                                    ; $54df: $7e
    ld h, a                                       ; $54e0: $67
    ld l, c                                       ; $54e1: $69
    ld [hl], h                                    ; $54e2: $74
    ld l, c                                       ; $54e3: $69
    ld [hl], h                                    ; $54e4: $74
    or c                                          ; $54e5: $b1
    xor e                                         ; $54e6: $ab
    ld h, $cb                                     ; $54e7: $26 $cb
    cp l                                          ; $54e9: $bd
    ld c, h                                       ; $54ea: $4c
    rst $18                                       ; $54eb: $df
    rst $30                                       ; $54ec: $f7
    ld e, c                                       ; $54ed: $59
    jr nz, jr_044_54d5                            ; $54ee: $20 $e5

    ret                                           ; $54f0: $c9


    adc c                                         ; $54f1: $89
    cp d                                          ; $54f2: $ba
    xor b                                         ; $54f3: $a8
    ld hl, $da61                                  ; $54f4: $21 $61 $da
    ld a, $ec                                     ; $54f7: $3e $ec
    adc c                                         ; $54f9: $89
    ld a, [hl-]                                   ; $54fa: $3a
    ld b, e                                       ; $54fb: $43
    cp a                                          ; $54fc: $bf
    ld [bc], a                                    ; $54fd: $02
    ld [hl], l                                    ; $54fe: $75
    dec c                                         ; $54ff: $0d
    ld e, [hl]                                    ; $5500: $5e
    jr nc, jr_044_54a2                            ; $5501: $30 $9f

    ld l, $76                                     ; $5503: $2e $76
    rr b                                          ; $5505: $cb $18
    ccf                                           ; $5507: $3f
    inc hl                                        ; $5508: $23
    ld d, a                                       ; $5509: $57
    ld d, l                                       ; $550a: $55
    ld d, b                                       ; $550b: $50
    rst $30                                       ; $550c: $f7
    db $fc                                        ; $550d: $fc
    dec d                                         ; $550e: $15
    add h                                         ; $550f: $84
    sub c                                         ; $5510: $91
    adc e                                         ; $5511: $8b
    cp l                                          ; $5512: $bd
    or $44                                        ; $5513: $f6 $44
    ld [c], a                                     ; $5515: $e2
    ld b, l                                       ; $5516: $45
    or b                                          ; $5517: $b0
    scf                                           ; $5518: $37
    ld h, d                                       ; $5519: $62
    ld d, a                                       ; $551a: $57
    ld d, $30                                     ; $551b: $16 $30
    rra                                           ; $551d: $1f
    adc c                                         ; $551e: $89
    ld a, b                                       ; $551f: $78
    ld a, [hl]                                    ; $5520: $7e
    add c                                         ; $5521: $81
    ld l, $57                                     ; $5522: $2e $57
    ld d, l                                       ; $5524: $55
    ld d, b                                       ; $5525: $50
    rst $30                                       ; $5526: $f7
    db $fc                                        ; $5527: $fc
    dec d                                         ; $5528: $15
    add h                                         ; $5529: $84
    ld d, c                                       ; $552a: $51
    ld [hl], e                                    ; $552b: $73
    dec b                                         ; $552c: $05
    sbc l                                         ; $552d: $9d
    adc $45                                       ; $552e: $ce $45
    ld h, c                                       ; $5530: $61
    ld h, a                                       ; $5531: $67
    or c                                          ; $5532: $b1
    xor e                                         ; $5533: $ab
    ld h, $2f                                     ; $5534: $26 $2f
    ld [hl-], a                                   ; $5536: $32
    cp d                                          ; $5537: $ba
    ret c                                         ; $5538: $d8

    ld d, l                                       ; $5539: $55
    cpl                                           ; $553a: $2f
    ld h, b                                       ; $553b: $60
    add h                                         ; $553c: $84
    jp z, $d5f1                                   ; $553d: $ca $f1 $d5

    adc h                                         ; $5540: $8c
    cpl                                           ; $5541: $2f
    inc [hl]                                      ; $5542: $34
    ld a, d                                       ; $5543: $7a
    adc h                                         ; $5544: $8c
    ld [$ae6a], a                                 ; $5545: $ea $6a $ae
    sbc [hl]                                      ; $5548: $9e
    ld d, e                                       ; $5549: $53
    ld hl, $8ffe                                  ; $554a: $21 $fe $8f
    rst $30                                       ; $554d: $f7
    sbc c                                         ; $554e: $99
    daa                                           ; $554f: $27
    rra                                           ; $5550: $1f
    ld [$1bdb], sp                                ; $5551: $08 $db $1b
    ld b, d                                       ; $5554: $42

jr_044_5555:
    dec h                                         ; $5555: $25
    push de                                       ; $5556: $d5
    inc d                                         ; $5557: $14
    or [hl]                                       ; $5558: $b6
    xor c                                         ; $5559: $a9
    or l                                          ; $555a: $b5
    ld [bc], a                                    ; $555b: $02
    ld l, l                                       ; $555c: $6d
    adc [hl]                                      ; $555d: $8e
    dec d                                         ; $555e: $15
    and h                                         ; $555f: $a4
    ld b, [hl]                                    ; $5560: $46
    ld a, [bc]                                    ; $5561: $0a
    ccf                                           ; $5562: $3f
    ld c, a                                       ; $5563: $4f
    ld [$f75e], a                                 ; $5564: $ea $5e $f7
    cp d                                          ; $5567: $ba
    inc l                                         ; $5568: $2c
    or b                                          ; $5569: $b0
    ld a, b                                       ; $556a: $78
    rst $18                                       ; $556b: $df
    db $10                                        ; $556c: $10
    ld a, [hl+]                                   ; $556d: $2a
    sub e                                         ; $556e: $93
    ld [c], a                                     ; $556f: $e2
    db $fc                                        ; $5570: $fc
    jr nc, jr_044_5555                            ; $5571: $30 $e2

    ld b, h                                       ; $5573: $44
    ld e, l                                       ; $5574: $5d
    ld l, d                                       ; $5575: $6a
    rst $38                                       ; $5576: $ff
    sbc $d3                                       ; $5577: $de $d3

jr_044_5579:
    dec e                                         ; $5579: $1d
    jr nz, jr_044_5579                            ; $557a: $20 $fd

    ld a, [bc]                                    ; $557c: $0a
    xor l                                         ; $557d: $ad
    sub [hl]                                      ; $557e: $96
    dec b                                         ; $557f: $05
    call z, $f7df                                 ; $5580: $cc $df $f7
    ld a, l                                       ; $5583: $7d
    ld l, d                                       ; $5584: $6a
    jp $1baa                                      ; $5585: $c3 $aa $1b


    ld b, c                                       ; $5588: $41
    ld h, h                                       ; $5589: $64
    inc h                                         ; $558a: $24
    push hl                                       ; $558b: $e5
    inc hl                                        ; $558c: $23
    rlca                                          ; $558d: $07
    ld h, c                                       ; $558e: $61
    ld b, h                                       ; $558f: $44
    ld h, c                                       ; $5590: $61
    and a                                         ; $5591: $a7
    sbc d                                         ; $5592: $9a
    jp nz, Jump_000_3536                          ; $5593: $c2 $36 $35

    db $d3                                        ; $5596: $d3
    ld a, [$f5e8]                                 ; $5597: $fa $e8 $f5
    rst $30                                       ; $559a: $f7
    push de                                       ; $559b: $d5
    db $e4                                        ; $559c: $e4
    ld c, c                                       ; $559d: $49
    ld [de], a                                    ; $559e: $12
    add $67                                       ; $559f: $c6 $67
    ei                                            ; $55a1: $fb
    ld l, e                                       ; $55a2: $6b
    xor [hl]                                      ; $55a3: $ae
    sbc [hl]                                      ; $55a4: $9e
    ld d, e                                       ; $55a5: $53
    ld a, $ea                                     ; $55a6: $3e $ea
    sbc [hl]                                      ; $55a8: $9e
    sbc h                                         ; $55a9: $9c
    dec a                                         ; $55aa: $3d
    ld [hl], c                                    ; $55ab: $71
    rla                                           ; $55ac: $17
    rst $28                                       ; $55ad: $ef
    dec sp                                        ; $55ae: $3b
    sub b                                         ; $55af: $90
    sbc a                                         ; $55b0: $9f
    cp d                                          ; $55b1: $ba
    rst $00                                       ; $55b2: $c7
    inc hl                                        ; $55b3: $23
    pop af                                        ; $55b4: $f1
    and c                                         ; $55b5: $a1
    ld e, a                                       ; $55b6: $5f
    ld c, d                                       ; $55b7: $4a
    inc bc                                        ; $55b8: $03
    or l                                          ; $55b9: $b5
    ld d, [hl]                                    ; $55ba: $56
    ld [hl], l                                    ; $55bb: $75
    ld hl, $8605                                  ; $55bc: $21 $05 $86
    ld l, d                                       ; $55bf: $6a
    ld a, [c]                                     ; $55c0: $f2
    reti                                          ; $55c1: $d9


    db $f4                                        ; $55c2: $f4
    or d                                          ; $55c3: $b2
    ld e, h                                       ; $55c4: $5c
    inc bc                                        ; $55c5: $03
    pop hl                                        ; $55c6: $e1
    scf                                           ; $55c7: $37
    ld [hl], l                                    ; $55c8: $75
    ld a, l                                       ; $55c9: $7d
    ld e, d                                       ; $55ca: $5a
    ld d, l                                       ; $55cb: $55
    jr z, jr_044_5633                             ; $55cc: $28 $65

    jp nz, $e436                                  ; $55ce: $c2 $36 $e4

    ld a, l                                       ; $55d1: $7d
    dec [hl]                                      ; $55d2: $35
    xor c                                         ; $55d3: $a9
    dec c                                         ; $55d4: $0d
    xor e                                         ; $55d5: $ab
    ld l, [hl]                                    ; $55d6: $6e
    inc b                                         ; $55d7: $04
    dec [hl]                                      ; $55d8: $35
    ld d, a                                       ; $55d9: $57
    ld [hl], l                                    ; $55da: $75
    ld b, [hl]                                    ; $55db: $46
    ld d, d                                       ; $55dc: $52
    jr nz, @+$7e                                  ; $55dd: $20 $7c

    and c                                         ; $55df: $a1
    ld [hl-], a                                   ; $55e0: $32
    add hl, hl                                    ; $55e1: $29
    ld l, h                                       ; $55e2: $6c
    cpl                                           ; $55e3: $2f

Jump_044_55e4:
    sub e                                         ; $55e4: $93
    ld d, c                                       ; $55e5: $51
    ld h, e                                       ; $55e6: $63
    xor b                                         ; $55e7: $a8
    or l                                          ; $55e8: $b5
    ld [bc], a                                    ; $55e9: $02
    cp [hl]                                       ; $55ea: $be
    push af                                       ; $55eb: $f5
    push af                                       ; $55ec: $f5
    ld a, l                                       ; $55ed: $7d
    sbc a                                         ; $55ee: $9f
    add d                                         ; $55ef: $82
    ld c, d                                       ; $55f0: $4a
    ld l, a                                       ; $55f1: $6f
    rra                                           ; $55f2: $1f
    ld a, [hl+]                                   ; $55f3: $2a
    xor c                                         ; $55f4: $a9
    xor [hl]                                      ; $55f5: $ae
    ldh a, [rLY]                                  ; $55f6: $f0 $44
    ld e, l                                       ; $55f8: $5d
    call c, $e26f                                 ; $55f9: $dc $6f $e2
    ret                                           ; $55fc: $c9


    and l                                         ; $55fd: $a5
    inc l                                         ; $55fe: $2c
    ld h, e                                       ; $55ff: $63
    adc $7f                                       ; $5600: $ce $7f
    ld b, c                                       ; $5602: $41
    call nc, Call_044_7b45                        ; $5603: $d4 $45 $7b
    db $fd                                        ; $5606: $fd
    add hl, bc                                    ; $5607: $09
    sbc b                                         ; $5608: $98
    daa                                           ; $5609: $27
    dec bc                                        ; $560a: $0b
    push de                                       ; $560b: $d5
    db $eb                                        ; $560c: $eb
    rst $30                                       ; $560d: $f7
    cp c                                          ; $560e: $b9
    jp hl                                         ; $560f: $e9


    db $d3                                        ; $5610: $d3
    and $58                                       ; $5611: $e6 $58
    ld b, c                                       ; $5613: $41
    jp z, Jump_000_357d                           ; $5614: $ca $7d $35

    ld hl, $9dcf                                  ; $5617: $21 $cf $9d
    ld e, h                                       ; $561a: $5c
    ld a, $be                                     ; $561b: $3e $be
    or b                                          ; $561d: $b0
    dec b                                         ; $561e: $05
    inc h                                         ; $561f: $24
    ld c, h                                       ; $5620: $4c
    and c                                         ; $5621: $a1
    ld e, a                                       ; $5622: $5f
    ld bc, $8d1d                                  ; $5623: $01 $1d $8d
    db $f4                                        ; $5626: $f4
    ld a, l                                       ; $5627: $7d
    rra                                           ; $5628: $1f
    adc l                                         ; $5629: $8d
    cp [hl]                                       ; $562a: $be
    xor c                                         ; $562b: $a9
    xor a                                         ; $562c: $af
    cp c                                          ; $562d: $b9
    ld [bc], a                                    ; $562e: $02
    xor l                                         ; $562f: $ad
    rrca                                          ; $5630: $0f
    adc c                                         ; $5631: $89
    inc d                                         ; $5632: $14

jr_044_5633:
    cp $bc                                        ; $5633: $fe $bc
    xor b                                         ; $5635: $a8
    rla                                           ; $5636: $17
    dec [hl]                                      ; $5637: $35
    or l                                          ; $5638: $b5
    ld d, [hl]                                    ; $5639: $56
    ld l, l                                       ; $563a: $6d
    and b                                         ; $563b: $a0
    db $db                                        ; $563c: $db
    sbc d                                         ; $563d: $9a
    dec [hl]                                      ; $563e: $35
    ld l, e                                       ; $563f: $6b
    xor [hl]                                      ; $5640: $ae
    sbc [hl]                                      ; $5641: $9e
    ld d, e                                       ; $5642: $53
    inc a                                         ; $5643: $3c

Jump_044_5644:
    ld l, d                                       ; $5644: $6a
    and h                                         ; $5645: $a4
    ldh a, [$f3]                                  ; $5646: $f0 $f3
    call nc, $015a                                ; $5648: $d4 $5a $01
    or l                                          ; $564b: $b5
    ld h, c                                       ; $564c: $61
    push de                                       ; $564d: $d5
    adc l                                         ; $564e: $8d
    and b                                         ; $564f: $a0
    ld h, [hl]                                    ; $5650: $66
    jp c, $a9de                                   ; $5651: $da $de $a9

    and [hl]                                      ; $5654: $a6
    or b                                          ; $5655: $b0
    ld c, l                                       ; $5656: $4d
    or [hl]                                       ; $5657: $b6
    add a                                         ; $5658: $87
    rst $38                                       ; $5659: $ff
    jp $e436                                      ; $565a: $c3 $36 $e4


    di                                            ; $565d: $f3
    rst $10                                       ; $565e: $d7
    ld e, h                                       ; $565f: $5c
    ld bc, $dfb5                                  ; $5660: $01 $b5 $df
    adc h                                         ; $5663: $8c
    add b                                         ; $5664: $80
    ld l, $0a                                     ; $5665: $2e $0a
    db $e4                                        ; $5667: $e4
    and l                                         ; $5668: $a5
    db $fc                                        ; $5669: $fc
    ld h, $df                                     ; $566a: $26 $df
    or $d7                                        ; $566c: $f6 $d7
    ld e, h                                       ; $566e: $5c
    ld bc, $5f1d                                  ; $566f: $01 $1d $5f
    db $fc                                        ; $5672: $fc
    inc de                                        ; $5673: $13
    ld a, $7b                                     ; $5674: $3e $7b
    sbc [hl]                                      ; $5676: $9e
    ld a, b                                       ; $5677: $78
    jp hl                                         ; $5678: $e9


    ret c                                         ; $5679: $d8

    push hl                                       ; $567a: $e5
    sub a                                         ; $567b: $97
    dec b                                         ; $567c: $05
    ld a, [c]                                     ; $567d: $f2
    add hl, sp                                    ; $567e: $39
    add hl, bc                                    ; $567f: $09
    and e                                         ; $5680: $a3
    ld e, d                                       ; $5681: $5a
    and [hl]                                      ; $5682: $a6
    ld h, [hl]                                    ; $5683: $66
    ld [$e2c2], a                                 ; $5684: $ea $c2 $e2
    dec e                                         ; $5687: $1d
    ld h, e                                       ; $5688: $63
    ld a, [hl+]                                   ; $5689: $2a
    sbc a                                         ; $568a: $9f
    daa                                           ; $568b: $27
    ld b, c                                       ; $568c: $41
    ld c, [hl]                                    ; $568d: $4e
    xor b                                         ; $568e: $a8
    ld a, h                                       ; $568f: $7c
    sub [hl]                                      ; $5690: $96
    ld hl, $08de                                  ; $5691: $21 $de $08
    ld h, d                                       ; $5694: $62
    and a                                         ; $5695: $a7
    ld b, c                                       ; $5696: $41
    ld h, b                                       ; $5697: $60
    rst $08                                       ; $5698: $cf
    halt                                          ; $5699: $76
    ld c, $7d                                     ; $569a: $0e $7d
    jp c, $d4ff                                   ; $569c: $da $ff $d4

    add [hl]                                      ; $569f: $86

jr_044_56a0:
    ld d, l                                       ; $56a0: $55
    scf                                           ; $56a1: $37
    add d                                         ; $56a2: $82
    call nc, $8bc8                                ; $56a3: $d4 $c8 $8b
    dec de                                        ; $56a6: $1b
    ei                                            ; $56a7: $fb
    db $ec                                        ; $56a8: $ec
    ld a, [$20a2]                                 ; $56a9: $fa $a2 $20
    ld l, h                                       ; $56ac: $6c
    db $d3                                        ; $56ad: $d3
    and a                                         ; $56ae: $a7
    ld [hl], l                                    ; $56af: $75
    sub b                                         ; $56b0: $90
    sub a                                         ; $56b1: $97
    ld a, [c]                                     ; $56b2: $f2
    sbc e                                         ; $56b3: $9b
    ld a, h                                       ; $56b4: $7c
    db $db                                        ; $56b5: $db
    ld e, a                                       ; $56b6: $5f
    ld [hl], e                                    ; $56b7: $73
    dec b                                         ; $56b8: $05
    jp hl                                         ; $56b9: $e9


    ld hl, sp-$1e                                 ; $56ba: $f8 $e2
    sbc a                                         ; $56bc: $9f
    ldh a, [$d9]                                  ; $56bd: $f0 $d9
    di                                            ; $56bf: $f3
    call nz, $c74b                                ; $56c0: $c4 $4b $c7
    ld l, $bf                                     ; $56c3: $2e $bf
    inc l                                         ; $56c5: $2c
    sub b                                         ; $56c6: $90
    rst $08                                       ; $56c7: $cf
    ld c, c                                       ; $56c8: $49
    jr jr_044_56a0                                ; $56c9: $18 $d5

    ld [hl-], a                                   ; $56cb: $32
    dec [hl]                                      ; $56cc: $35
    ld d, e                                       ; $56cd: $53
    rla                                           ; $56ce: $17
    ld d, $ef                                     ; $56cf: $16 $ef
    jr jr_044_5726                                ; $56d1: $18 $53

    ld sp, hl                                     ; $56d3: $f9
    inc a                                         ; $56d4: $3c
    add hl, bc                                    ; $56d5: $09
    ld [hl], d                                    ; $56d6: $72
    ld b, d                                       ; $56d7: $42
    push bc                                       ; $56d8: $c5
    db $e3                                        ; $56d9: $e3
    scf                                           ; $56da: $37
    db $db                                        ; $56db: $db
    ld h, a                                       ; $56dc: $67
    add hl, de                                    ; $56dd: $19
    ld [c], a                                     ; $56de: $e2
    adc l                                         ; $56df: $8d
    jr nz, jr_044_5758                            ; $56e0: $20 $76

    ld a, [de]                                    ; $56e2: $1a
    inc b                                         ; $56e3: $04
    or $6c                                        ; $56e4: $f6 $6c
    rst $20                                       ; $56e6: $e7
    ret nc                                        ; $56e7: $d0

    and a                                         ; $56e8: $a7
    db $fd                                        ; $56e9: $fd
    adc a                                         ; $56ea: $8f
    ld [bc], a                                    ; $56eb: $02
    ld a, c                                       ; $56ec: $79
    ld a, c                                       ; $56ed: $79
    ld [hl], c                                    ; $56ee: $71
    ld h, e                                       ; $56ef: $63
    sbc a                                         ; $56f0: $9f
    ld h, l                                       ; $56f1: $65
    adc h                                         ; $56f2: $8c
    rst $18                                       ; $56f3: $df
    sub b                                         ; $56f4: $90
    sub e                                         ; $56f5: $93
    sub h                                         ; $56f6: $94
    rst $18                                       ; $56f7: $df
    db $e4                                        ; $56f8: $e4
    and h                                         ; $56f9: $a4
    ld [hl], $ac                                  ; $56fa: $36 $ac
    cp d                                          ; $56fc: $ba
    ld de, $5cd4                                  ; $56fd: $11 $d4 $5c
    ld bc, $61b5                                  ; $5700: $01 $b5 $61
    push de                                       ; $5703: $d5
    adc l                                         ; $5704: $8d
    and b                                         ; $5705: $a0
    ld h, [hl]                                    ; $5706: $66
    ld a, [hl-]                                   ; $5707: $3a
    db $fd                                        ; $5708: $fd
    jr nc, jr_044_5770                            ; $5709: $30 $65

    sbc [hl]                                      ; $570b: $9e
    add sp, $21                                   ; $570c: $e8 $21
    xor b                                         ; $570e: $a8
    or l                                          ; $570f: $b5
    ld [bc], a                                    ; $5710: $02
    cp [hl]                                       ; $5711: $be
    push af                                       ; $5712: $f5
    push af                                       ; $5713: $f5
    ld a, l                                       ; $5714: $7d
    rra                                           ; $5715: $1f
    ld h, a                                       ; $5716: $67
    ld d, b                                       ; $5717: $50
    inc de                                        ; $5718: $13
    ld [hl], l                                    ; $5719: $75
    add hl, hl                                    ; $571a: $29
    push af                                       ; $571b: $f5
    push af                                       ; $571c: $f5
    ld a, l                                       ; $571d: $7d
    cp a                                          ; $571e: $bf
    ld [bc], a                                    ; $571f: $02
    sbc [hl]                                      ; $5720: $9e
    ld d, e                                       ; $5721: $53
    inc a                                         ; $5722: $3c
    ld l, d                                       ; $5723: $6a
    and h                                         ; $5724: $a4
    ld d, b                                       ; $5725: $50

jr_044_5726:
    rst $20                                       ; $5726: $e7
    ld d, b                                       ; $5727: $50

Jump_044_5728:
    jp z, Jump_044_7df4                           ; $5728: $ca $f4 $7d

    rra                                           ; $572b: $1f
    ld hl, sp+$2b                                 ; $572c: $f8 $2b
    ld e, l                                       ; $572e: $5d
    jp z, Jump_000_357d                           ; $572f: $ca $7d $35

    ld de, $e8ec                                  ; $5732: $11 $ec $e8
    ld e, a                                       ; $5735: $5f
    sub e                                         ; $5736: $93
    adc c                                         ; $5737: $89
    jp nz, $88de                                  ; $5738: $c2 $de $88

    cp l                                          ; $573b: $bd
    or $44                                        ; $573c: $f6 $44
    ld [hl+], a                                   ; $573e: $22
    ld a, [$9d15]                                 ; $573f: $fa $15 $9d
    adc $85                                       ; $5742: $ce $85
    dec c                                         ; $5744: $0d
    add hl, hl                                    ; $5745: $29
    db $fc                                        ; $5746: $fc
    db $e4                                        ; $5747: $e4
    inc sp                                        ; $5748: $33
    ld [c], a                                     ; $5749: $e2
    ld h, b                                       ; $574a: $60
    xor $45                                       ; $574b: $ee $45
    ld c, l                                       ; $574d: $4d
    ld a, h                                       ; $574e: $7c
    jr z, jr_044_57c7                             ; $574f: $28 $76

    xor d                                         ; $5751: $aa
    add hl, hl                                    ; $5752: $29
    ld l, h                                       ; $5753: $6c
    ld d, e                                       ; $5754: $53
    dec hl                                        ; $5755: $2b
    dec l                                         ; $5756: $2d
    add a                                         ; $5757: $87

jr_044_5758:
    jp z, $8487                                   ; $5758: $ca $87 $84

    ld a, l                                       ; $575b: $7d
    cp h                                          ; $575c: $bc
    ld h, e                                       ; $575d: $63
    ld c, h                                       ; $575e: $4c
    push hl                                       ; $575f: $e5
    db $e3                                        ; $5760: $e3
    db $fc                                        ; $5761: $fc
    ld c, b                                       ; $5762: $48

Jump_044_5763:
    cp c                                          ; $5763: $b9
    ld h, a                                       ; $5764: $67
    db $e4                                        ; $5765: $e4
    push bc                                       ; $5766: $c5
    adc l                                         ; $5767: $8d
    ld a, l                                       ; $5768: $7d
    ret z                                         ; $5769: $c8

    inc hl                                        ; $576a: $23
    xor a                                         ; $576b: $af
    and $0a                                       ; $576c: $e6 $0a
    ld l, l                                       ; $576e: $6d
    ret c                                         ; $576f: $d8

jr_044_5770:
    db $e4                                        ; $5770: $e4
    ld b, l                                       ; $5771: $45
    dec a                                         ; $5772: $3d
    ld a, a                                       ; $5773: $7f
    ld c, [hl]                                    ; $5774: $4e
    ld [c], a                                     ; $5775: $e2
    ld h, b                                       ; $5776: $60
    xor $a3                                       ; $5777: $ee $a3
    or b                                          ; $5779: $b0
    ld d, e                                       ; $577a: $53
    ld c, l                                       ; $577b: $4d
    ld h, c                                       ; $577c: $61
    sbc e                                         ; $577d: $9b
    cp [hl]                                       ; $577e: $be
    rst $28                                       ; $577f: $ef
    or e                                          ; $5780: $b3
    ret nz                                        ; $5781: $c0

    sbc h                                         ; $5782: $9c
    cp a                                          ; $5783: $bf
    sbc $2c                                       ; $5784: $de $2c
    sub b                                         ; $5786: $90
    ld a, [c]                                     ; $5787: $f2
    db $e4                                        ; $5788: $e4
    ld b, h                                       ; $5789: $44
    ld e, l                                       ; $578a: $5d
    ld d, b                                       ; $578b: $50
    ld a, [bc]                                    ; $578c: $0a
    inc c                                         ; $578d: $0c
    add hl, sp                                    ; $578e: $39
    adc c                                         ; $578f: $89
    ld h, [hl]                                    ; $5790: $66
    xor a                                         ; $5791: $af
    ld h, $ea                                     ; $5792: $26 $ea
    ld a, [c]                                     ; $5794: $f2
    ld e, [hl]                                    ; $5795: $5e
    xor a                                         ; $5796: $af
    adc l                                         ; $5797: $8d
    ldh a, [$db]                                  ; $5798: $f0 $db
    sbc [hl]                                      ; $579a: $9e
    xor b                                         ; $579b: $a8
    ld c, a                                       ; $579c: $4f
    sbc c                                         ; $579d: $99
    db $fd                                        ; $579e: $fd
    ld a, l                                       ; $579f: $7d
    rst $18                                       ; $57a0: $df
    and a                                         ; $57a1: $a7
    ld a, h                                       ; $57a2: $7c
    rst $18                                       ; $57a3: $df
    rst $30                                       ; $57a4: $f7
    pop af                                        ; $57a5: $f1
    ld c, a                                       ; $57a6: $4f
    ld [hl], $98                                  ; $57a7: $36 $98
    daa                                           ; $57a9: $27
    ld c, h                                       ; $57aa: $4c
    sbc c                                         ; $57ab: $99
    daa                                           ; $57ac: $27
    add l                                         ; $57ad: $85
    ld e, [hl]                                    ; $57ae: $5e
    xor d                                         ; $57af: $aa
    add hl, hl                                    ; $57b0: $29
    ld l, h                                       ; $57b1: $6c
    rst $10                                       ; $57b2: $d7
    rst $00                                       ; $57b3: $c7
    rla                                           ; $57b4: $17
    jp hl                                         ; $57b5: $e9


    ld l, b                                       ; $57b6: $68
    inc h                                         ; $57b7: $24
    ld c, b                                       ; $57b8: $48
    db $ed                                        ; $57b9: $ed
    scf                                           ; $57ba: $37
    inc hl                                        ; $57bb: $23
    db $10                                        ; $57bc: $10
    add hl, de                                    ; $57bd: $19
    ld c, c                                       ; $57be: $49
    ld [hl], l                                    ; $57bf: $75
    ld a, c                                       ; $57c0: $79
    ld [de], a                                    ; $57c1: $12
    and l                                         ; $57c2: $a5
    ret nz                                        ; $57c3: $c0

    ld h, $6c                                     ; $57c4: $26 $6c
    ld b, e                                       ; $57c6: $43

jr_044_57c7:
    ld a, $bf                                     ; $57c7: $3e $bf
    ld l, $e5                                     ; $57c9: $2e $e5
    dec c                                         ; $57cb: $0d
    sub a                                         ; $57cc: $97
    ld l, d                                       ; $57cd: $6a
    adc h                                         ; $57ce: $8c
    cp a                                          ; $57cf: $bf
    ld e, a                                       ; $57d0: $5f
    ld bc, $d21d                                  ; $57d1: $01 $1d $d2
    inc de                                        ; $57d4: $13
    ld [hl], l                                    ; $57d5: $75
    reti                                          ; $57d6: $d9


    rra                                           ; $57d7: $1f
    ld b, e                                       ; $57d8: $43
    ld e, c                                       ; $57d9: $59
    ld b, [hl]                                    ; $57da: $46
    jp z, Jump_044_6feb                           ; $57db: $ca $eb $6f

    rra                                           ; $57de: $1f
    rst $10                                       ; $57df: $d7
    sub e                                         ; $57e0: $93
    ld a, [de]                                    ; $57e1: $1a
    ld h, c                                       ; $57e2: $61
    ld a, [$d335]                                 ; $57e3: $fa $35 $d3
    ld c, h                                       ; $57e6: $4c
    ld d, $2a                                     ; $57e7: $16 $2a

Call_044_57e9:
    ld a, h                                       ; $57e9: $7c
    add hl, sp                                    ; $57ea: $39
    ld c, c                                       ; $57eb: $49
    dec b                                         ; $57ec: $05
    sbc c                                         ; $57ed: $99

Jump_044_57ee:
    ld a, h                                       ; $57ee: $7c
    jp c, $f3b2                                   ; $57ef: $da $b2 $f3

    adc [hl]                                      ; $57f2: $8e
    xor b                                         ; $57f3: $a8
    or c                                          ; $57f4: $b1
    jp hl                                         ; $57f5: $e9


    db $d3                                        ; $57f6: $d3
    pop af                                        ; $57f7: $f1
    sbc b                                         ; $57f8: $98
    ld a, h                                       ; $57f9: $7c
    ld a, [hl]                                    ; $57fa: $7e
    add a                                         ; $57fb: $87
    jp hl                                         ; $57fc: $e9


    ld b, h                                       ; $57fd: $44
    adc l                                         ; $57fe: $8d
    ld d, l                                       ; $57ff: $55
    rst $00                                       ; $5800: $c7
    ld h, e                                       ; $5801: $63
    scf                                           ; $5802: $37
    db $fd                                        ; $5803: $fd
    ld a, [bc]                                    ; $5804: $0a
    dec e                                         ; $5805: $1d
    jp nc, $9e17                                  ; $5806: $d2 $17 $9e

    ld a, h                                       ; $5809: $7c
    ret z                                         ; $580a: $c8

    cp c                                          ; $580b: $b9
    jr z, jr_044_5818                             ; $580c: $28 $0a

    ld e, l                                       ; $580e: $5d
    ld h, h                                       ; $580f: $64
    inc h                                         ; $5810: $24
    push de                                       ; $5811: $d5
    ld l, h                                       ; $5812: $6c
    cp [hl]                                       ; $5813: $be
    db $fc                                        ; $5814: $fc
    sbc $07                                       ; $5815: $de $07
    ld a, [c]                                     ; $5817: $f2

jr_044_5818:
    and d                                         ; $5818: $a2
    or b                                          ; $5819: $b0
    or e                                          ; $581a: $b3
    ret c                                         ; $581b: $d8

    ld d, l                                       ; $581c: $55
    sub e                                         ; $581d: $93
    rla                                           ; $581e: $17
    sbc c                                         ; $581f: $99
    inc a                                         ; $5820: $3c
    ld l, c                                       ; $5821: $69
    ret nc                                        ; $5822: $d0

    db $eb                                        ; $5823: $eb
    ld h, c                                       ; $5824: $61
    sub e                                         ; $5825: $93
    ld a, [c]                                     ; $5826: $f2
    dec bc                                        ; $5827: $0b
    push hl                                       ; $5828: $e5
    add hl, bc                                    ; $5829: $09
    ld b, e                                       ; $582a: $43
    ld h, b                                       ; $582b: $60
    ld h, c                                       ; $582c: $61
    inc d                                         ; $582d: $14
    cp $7c                                        ; $582e: $fe $7c
    xor b                                         ; $5830: $a8
    and h                                         ; $5831: $a4
    sbc d                                         ; $5832: $9a
    jp nz, Jump_044_5136                          ; $5833: $c2 $36 $51

    sub a                                         ; $5836: $97
    ld l, d                                       ; $5837: $6a
    add h                                         ; $5838: $84
    ld e, a                                       ; $5839: $5f
    sub e                                         ; $583a: $93
    adc a                                         ; $583b: $8f
    sbc e                                         ; $583c: $9b
    ld d, d                                       ; $583d: $52
    ld e, a                                       ; $583e: $5f
    inc [hl]                                      ; $583f: $34
    sbc e                                         ; $5840: $9b
    ld d, d                                       ; $5841: $52
    and [hl]                                      ; $5842: $a6
    ld c, a                                       ; $5843: $4f
    and a                                         ; $5844: $a7
    daa                                           ; $5845: $27
    ld c, $8c                                     ; $5846: $0e $8c
    inc [hl]                                      ; $5848: $34
    sub e                                         ; $5849: $93
    add l                                         ; $584a: $85
    ld a, [bc]                                    ; $584b: $0a
    ld e, a                                       ; $584c: $5f
    call c, Call_044_717d                         ; $584d: $dc $7d $71
    ld d, h                                       ; $5850: $54
    ld h, $0b                                     ; $5851: $26 $0b
    inc l                                         ; $5853: $2c
    ld l, l                                       ; $5854: $6d
    reti                                          ; $5855: $d9


    ld a, c                                       ; $5856: $79
    ld b, a                                       ; $5857: $47
    call nc, $f4d8                                ; $5858: $d4 $d8 $f4
    xor c                                         ; $585b: $a9
    dec sp                                        ; $585c: $3b
    inc c                                         ; $585d: $0c
    ld b, [hl]                                    ; $585e: $46
    ld e, [hl]                                    ; $585f: $5e
    call nc, $fa1b                                ; $5860: $d4 $1b $fa
    dec d                                         ; $5863: $15
    dec l                                         ; $5864: $2d
    and a                                         ; $5865: $a7
    ldh a, [$f3]                                  ; $5866: $f0 $f3
    call nz, $9dbd                                ; $5868: $c4 $bd $9d
    ld c, h                                       ; $586b: $4c
    call nc, Call_044_7967                        ; $586c: $d4 $67 $79
    ld h, e                                       ; $586f: $63
    add h                                         ; $5870: $84
    jp hl                                         ; $5871: $e9


    add a                                         ; $5872: $87
    ld b, a                                       ; $5873: $47
    db $db                                        ; $5874: $db
    rlca                                          ; $5875: $07
    ld [hl], e                                    ; $5876: $73
    rla                                           ; $5877: $17
    push af                                       ; $5878: $f5
    rla                                           ; $5879: $17
    adc l                                         ; $587a: $8d
    cp $e5                                        ; $587b: $fe $e5
    inc h                                         ; $587d: $24
    ld a, $14                                     ; $587e: $3e $14
    dec sp                                        ; $5880: $3b
    push de                                       ; $5881: $d5
    xor b                                         ; $5882: $a8
    jp hl                                         ; $5883: $e9


    ld d, a                                       ; $5884: $57
    xor l                                         ; $5885: $ad
    pop bc                                        ; $5886: $c1
    xor a                                         ; $5887: $af
    dec bc                                        ; $5888: $0b
    add hl, sp                                    ; $5889: $39
    sub a                                         ; $588a: $97
    ld [$24f2], a                                 ; $588b: $ea $f2 $24
    jr @+$2b                                      ; $588e: $18 $29

    cp a                                          ; $5890: $bf
    ret                                           ; $5891: $c9


    rst $20                                       ; $5892: $e7
    rst $10                                       ; $5893: $d7
    ld b, l                                       ; $5894: $45
    ld b, [hl]                                    ; $5895: $46
    and [hl]                                      ; $5896: $a6
    ldh a, [$0b]                                  ; $5897: $f0 $0b
    and e                                         ; $5899: $a3
    rst $28                                       ; $589a: $ef
    ei                                            ; $589b: $fb
    call c, Call_044_754e                         ; $589c: $dc $4e $75
    inc de                                        ; $589f: $13
    scf                                           ; $58a0: $37
    push de                                       ; $58a1: $d5
    ld [hl-], a                                   ; $58a2: $32
    add $5f                                       ; $58a3: $c6 $5f
    ld b, c                                       ; $58a5: $41
    ld a, b                                       ; $58a6: $78
    ld a, [$be15]                                 ; $58a7: $fa $15 $be
    db $10                                        ; $58aa: $10

jr_044_58ab:
    ld a, $86                                     ; $58ab: $3e $86
    ld l, $6a                                     ; $58ad: $2e $6a
    ld c, b                                       ; $58af: $48
    ld b, e                                       ; $58b0: $43
    ld d, l                                       ; $58b1: $55
    ld c, l                                       ; $58b2: $4d
    ld d, b                                       ; $58b3: $50
    ld a, [bc]                                    ; $58b4: $0a
    inc c                                         ; $58b5: $0c
    ld sp, hl                                     ; $58b6: $f9
    ld [$05dc], a                                 ; $58b7: $ea $dc $05
    ld sp, hl                                     ; $58ba: $f9
    and e                                         ; $58bb: $a3
    db $fc                                        ; $58bc: $fc
    and $2e                                       ; $58bd: $e6 $2e
    rra                                           ; $58bf: $1f
    ld a, [c]                                     ; $58c0: $f2
    inc e                                         ; $58c1: $1c
    ld b, h                                       ; $58c2: $44
    ld a, l                                       ; $58c3: $7d
    rra                                           ; $58c4: $1f
    ld e, a                                       ; $58c5: $5f
    scf                                           ; $58c6: $37
    ld [c], a                                     ; $58c7: $e2
    dec a                                         ; $58c8: $3d
    ld c, l                                       ; $58c9: $4d
    add e                                         ; $58ca: $83
    ld hl, $5254                                  ; $58cb: $21 $54 $52
    ld c, l                                       ; $58ce: $4d
    ld h, c                                       ; $58cf: $61
    sbc e                                         ; $58d0: $9b
    call nc, Call_000_0f88                        ; $58d1: $d4 $88 $0f
    push bc                                       ; $58d4: $c5
    adc [hl]                                      ; $58d5: $8e
    ld b, $81                                     ; $58d6: $06 $81
    ld hl, $82ea                                  ; $58d8: $21 $ea $82
    or d                                          ; $58db: $b2
    ret nz                                        ; $58dc: $c0

    ld c, $42                                     ; $58dd: $0e $42
    db $fc                                        ; $58df: $fc
    jr c, jr_044_5921                             ; $58e0: $38 $3f

    ld h, d                                       ; $58e2: $62

jr_044_58e3:
    daa                                           ; $58e3: $27
    push hl                                       ; $58e4: $e5
    or a                                          ; $58e5: $b7
    ld a, [$8f6c]                                 ; $58e6: $fa $6c $8f
    xor a                                         ; $58e9: $af
    adc $1d                                       ; $58ea: $ce $1d
    pop af                                        ; $58ec: $f1
    cp [hl]                                       ; $58ed: $be
    ld e, a                                       ; $58ee: $5f
    ld bc, $56ad                                  ; $58ef: $01 $ad $56
    rst $20                                       ; $58f2: $e7
    xor [hl]                                      ; $58f3: $ae
    and $0a                                       ; $58f4: $e6 $0a
    xor l                                         ; $58f6: $ad
    sub d                                         ; $58f7: $92
    add [hl]                                      ; $58f8: $86
    xor d                                         ; $58f9: $aa
    sbc d                                         ; $58fa: $9a
    ld d, h                                       ; $58fb: $54
    or b                                          ; $58fc: $b0
    db $e3                                        ; $58fd: $e3
    rst $20                                       ; $58fe: $e7
    add hl, bc                                    ; $58ff: $09
    sub l                                         ; $5900: $95
    ld d, h                                       ; $5901: $54
    xor a                                         ; $5902: $af
    ld l, c                                       ; $5903: $69
    scf                                           ; $5904: $37
    ld d, $a1                                     ; $5905: $16 $a1
    dec d                                         ; $5907: $15
    ld l, h                                       ; $5908: $6c
    and d                                         ; $5909: $a2
    ld l, $0b                                     ; $590a: $2e $0b
    dec d                                         ; $590c: $15
    cp [hl]                                       ; $590d: $be
    inc l                                         ; $590e: $2c
    or b                                          ; $590f: $b0
    db $ec                                        ; $5910: $ec
    adc a                                         ; $5911: $8f
    ld c, h                                       ; $5912: $4c
    ld h, c                                       ; $5913: $61
    ei                                            ; $5914: $fb
    ld e, h                                       ; $5915: $5c
    or l                                          ; $5916: $b5
    jr jr_044_58e3                                ; $5917: $18 $ca

    rst $30                                       ; $5919: $f7
    dec hl                                        ; $591a: $2b
    db $ed                                        ; $591b: $ed
    ld e, a                                       ; $591c: $5f
    ld l, d                                       ; $591d: $6a
    add h                                         ; $591e: $84
    add h                                         ; $591f: $84
    ld d, b                                       ; $5920: $50

jr_044_5921:
    cp $50                                        ; $5921: $fe $50
    pop af                                        ; $5923: $f1
    jr c, jr_044_58ab                             ; $5924: $38 $85

    rst $28                                       ; $5926: $ef
    ei                                            ; $5927: $fb
    ld a, $6a                                     ; $5928: $3e $6a
    ld c, b                                       ; $592a: $48
    ld b, e                                       ; $592b: $43
    ld d, l                                       ; $592c: $55
    ld c, l                                       ; $592d: $4d
    sub [hl]                                      ; $592e: $96
    or a                                          ; $592f: $b7
    db $fd                                        ; $5930: $fd
    ld h, $88                                     ; $5931: $26 $88
    dec de                                        ; $5933: $1b
    ld c, c                                       ; $5934: $49
    db $ed                                        ; $5935: $ed
    rst $10                                       ; $5936: $d7
    db $ec                                        ; $5937: $ec
    ld d, h                                       ; $5938: $54
    sbc a                                         ; $5939: $9f
    sub [hl]                                      ; $593a: $96
    ld [hl], e                                    ; $593b: $73
    dec sp                                        ; $593c: $3b
    ld a, [de]                                    ; $593d: $1a
    ld a, l                                       ; $593e: $7d
    ld d, e                                       ; $593f: $53
    rst $30                                       ; $5940: $f7
    xor $9d                                       ; $5941: $ee $9d
    cp e                                          ; $5943: $bb
    rrca                                          ; $5944: $0f
    ld d, d                                       ; $5945: $52
    ld a, $4c                                     ; $5946: $3e $4c
    sbc c                                         ; $5948: $99
    daa                                           ; $5949: $27
    add l                                         ; $594a: $85
    ld l, d                                       ; $594b: $6a
    ei                                            ; $594c: $fb

Call_044_594d:
    ld a, [c]                                     ; $594d: $f2
    ld [hl], d                                    ; $594e: $72
    push de                                       ; $594f: $d5
    rst $28                                       ; $5950: $ef
    db $eb                                        ; $5951: $eb
    db $d3                                        ; $5952: $d3
    and $58                                       ; $5953: $e6 $58
    ld b, c                                       ; $5955: $41
    jp z, $87c7                                   ; $5956: $ca $c7 $87

    cp $76                                        ; $5959: $fe $76
    ld d, e                                       ; $595b: $53
    ld a, $2f                                     ; $595c: $3e $2f
    adc $8f                                       ; $595e: $ce $8f
    inc d                                         ; $5960: $14
    cp d                                          ; $5961: $ba
    db $e3                                        ; $5962: $e3
    ld e, [hl]                                    ; $5963: $5e
    sub b                                         ; $5964: $90
    rrca                                          ; $5965: $0f
    dec de                                        ; $5966: $1b
    jp nz, $8c28                                  ; $5967: $c2 $28 $8c

    ld a, [hl]                                    ; $596a: $7e
    dec b                                         ; $596b: $05
    ld [hl], l                                    ; $596c: $75
    ld b, [hl]                                    ; $596d: $46
    ld [c], a                                     ; $596e: $e2
    ld l, $4f                                     ; $596f: $2e $4f
    add d                                         ; $5971: $82
    sbc h                                         ; $5972: $9c
    inc l                                         ; $5973: $2c
    sub b                                         ; $5974: $90
    ld a, [c]                                     ; $5975: $f2
    inc a                                         ; $5976: $3c
    ld a, l                                       ; $5977: $7d
    ld e, d                                       ; $5978: $5a
    dec d                                         ; $5979: $15
    rst $20                                       ; $597a: $e7
    ld b, a                                       ; $597b: $47
    ld a, [bc]                                    ; $597c: $0a
    ld [hl+], a                                   ; $597d: $22
    inc hl                                        ; $597e: $23
    ld de, $7ca4                                  ; $597f: $11 $a4 $7c
    db $e4                                        ; $5982: $e4
    jr nz, jr_044_5991                            ; $5983: $20 $0c

    ld e, l                                       ; $5985: $5d
    adc d                                         ; $5986: $8a
    sbc e                                         ; $5987: $9b
    xor d                                         ; $5988: $aa
    ld [bc], a                                    ; $5989: $02
    di                                            ; $598a: $f3
    call nz, $91f9                                ; $598b: $c4 $f9 $91
    ld h, l                                       ; $598e: $65
    ret c                                         ; $598f: $d8

    and b                                         ; $5990: $a0

jr_044_5991:
    rst $10                                       ; $5991: $d7
    inc hl                                        ; $5992: $23
    sbc $77                                       ; $5993: $de $77
    or a                                          ; $5995: $b7
    dec hl                                        ; $5996: $2b
    ld [$c523], sp                                ; $5997: $08 $23 $c5
    call Call_044_6762                            ; $599a: $cd $62 $67
    adc b                                         ; $599d: $88
    rrca                                          ; $599e: $0f
    db $fd                                        ; $599f: $fd
    db $ed                                        ; $59a0: $ed
    and [hl]                                      ; $59a1: $a6
    ld a, h                                       ; $59a2: $7c
    sbc a                                         ; $59a3: $9f
    ld d, [hl]                                    ; $59a4: $56
    ld b, l                                       ; $59a5: $45
    db $dd                                        ; $59a6: $dd
    ld d, a                                       ; $59a7: $57
    db $d3                                        ; $59a8: $d3
    xor a                                         ; $59a9: $af
    xor l                                         ; $59aa: $ad
    cp a                                          ; $59ab: $bf
    ret z                                         ; $59ac: $c8

    di                                            ; $59ad: $f3
    call nz, $994d                                ; $59ae: $c4 $4d $99
    sbc d                                         ; $59b1: $9a
    ld l, c                                       ; $59b2: $69
    adc e                                         ; $59b3: $8b
    cp [hl]                                       ; $59b4: $be
    xor c                                         ; $59b5: $a9
    rst $10                                       ; $59b6: $d7
    and l                                         ; $59b7: $a5
    cp d                                          ; $59b8: $ba
    ld hl, sp+$3f                                 ; $59b9: $f8 $3f
    push de                                       ; $59bb: $d5
    ld e, b                                       ; $59bc: $58
    sbc c                                         ; $59bd: $99
    ld a, $9e                                     ; $59be: $3e $9e
    ld d, e                                       ; $59c0: $53
    ld hl, $e2e5                                  ; $59c1: $21 $e5 $e2
    db $fd                                        ; $59c4: $fd
    ld a, h                                       ; $59c5: $7c
    jr @+$04                                      ; $59c6: $18 $02

    ld b, e                                       ; $59c8: $43
    ld a, $fa                                     ; $59c9: $3e $fa
    ld d, a                                       ; $59cb: $57
    rra                                           ; $59cc: $1f
    and [hl]                                      ; $59cd: $a6
    call z, $c208                                 ; $59ce: $cc $08 $c2
    add [hl]                                      ; $59d1: $86
    ld l, h                                       ; $59d2: $6c
    add h                                         ; $59d3: $84
    ld d, c                                       ; $59d4: $51
    jr jr_044_5a48                                ; $59d5: $18 $71

    inc hl                                        ; $59d7: $23
    adc h                                         ; $59d8: $8c
    ld l, d                                       ; $59d9: $6a
    add hl, de                                    ; $59da: $19
    ld a, e                                       ; $59db: $7b
    pop bc                                        ; $59dc: $c1
    ld d, a                                       ; $59dd: $57
    db $10                                        ; $59de: $10
    ld b, [hl]                                    ; $59df: $46
    xor l                                         ; $59e0: $ad
    dec d                                         ; $59e1: $15
    sbc [hl]                                      ; $59e2: $9e
    cp $83                                        ; $59e3: $fe $83
    sbc d                                         ; $59e5: $9a
    inc d                                         ; $59e6: $14
    ld b, a                                       ; $59e7: $47
    set 5, e                                      ; $59e8: $cb $eb
    ld [c], a                                     ; $59ea: $e2
    inc a                                         ; $59eb: $3c
    ld l, d                                       ; $59ec: $6a
    call nz, $fe87                                ; $59ed: $c4 $87 $fe
    halt                                          ; $59f0: $76
    ld d, e                                       ; $59f1: $53
    ld a, $ce                                     ; $59f2: $3e $ce
    adc a                                         ; $59f4: $8f
    ret z                                         ; $59f5: $c8

    ld c, b                                       ; $59f6: $48
    ret z                                         ; $59f7: $c8

    xor a                                         ; $59f8: $af
    dec d                                         ; $59f9: $15
    ld e, a                                       ; $59fa: $5f
    cp $10                                        ; $59fb: $fe $10
    ld h, a                                       ; $59fd: $67
    ld e, c                                       ; $59fe: $59
    adc $bd                                       ; $59ff: $ce $bd
    xor b                                         ; $5a01: $a8
    jp hl                                         ; $5a02: $e9


    ld d, a                                       ; $5a03: $57
    db $ed                                        ; $5a04: $ed
    ld e, a                                       ; $5a05: $5f
    ld a, [bc]                                    ; $5a06: $0a
    rst $38                                       ; $5a07: $ff
    push bc                                       ; $5a08: $c5
    dec sp                                        ; $5a09: $3b
    ld d, [hl]                                    ; $5a0a: $56
    sub b                                         ; $5a0b: $90
    or d                                          ; $5a0c: $b2
    call c, $1a8b                                 ; $5a0d: $dc $8b $1a
    ld e, l                                       ; $5a10: $5d
    ld [$330e], a                                 ; $5a11: $ea $0e $33
    xor h                                         ; $5a14: $ac
    ld d, [hl]                                    ; $5a15: $56
    jp c, $2b1c                                   ; $5a16: $da $1c $2b

    adc b                                         ; $5a19: $88
    ld a, [de]                                    ; $5a1a: $1a
    jp nc, $f850                                  ; $5a1b: $d2 $50 $f8

    or d                                          ; $5a1e: $b2
    jr jr_044_5a2b                                ; $5a1f: $18 $0a

    cp a                                          ; $5a21: $bf
    ld hl, $35cb                                  ; $5a22: $21 $cb $35
    sub b                                         ; $5a25: $90
    ld h, a                                       ; $5a26: $67
    add [hl]                                      ; $5a27: $86
    db $10                                        ; $5a28: $10
    ld l, a                                       ; $5a29: $6f
    inc b                                         ; $5a2a: $04

jr_044_5a2b:
    ld sp, hl                                     ; $5a2b: $f9
    dec bc                                        ; $5a2c: $0b
    db $d3                                        ; $5a2d: $d3
    cp c                                          ; $5a2e: $b9
    inc d                                         ; $5a2f: $14

Jump_044_5a30:
    and [hl]                                      ; $5a30: $a6
    ld [$5482], a                                 ; $5a31: $ea $82 $54
    sub b                                         ; $5a34: $90
    ret                                           ; $5a35: $c9


    rst $28                                       ; $5a36: $ef
    adc l                                         ; $5a37: $8d
    cp b                                          ; $5a38: $b8
    add hl, hl                                    ; $5a39: $29
    adc b                                         ; $5a3a: $88
    di                                            ; $5a3b: $f3
    inc hl                                        ; $5a3c: $23
    ld [hl-], a                                   ; $5a3d: $32
    ld [de], a                                    ; $5a3e: $12
    cp [hl]                                       ; $5a3f: $be
    ret c                                         ; $5a40: $d8

    ld l, c                                       ; $5a41: $69
    db $f4                                        ; $5a42: $f4
    ld c, l                                       ; $5a43: $4d
    cp l                                          ; $5a44: $bd
    ld c, h                                       ; $5a45: $4c
    cp a                                          ; $5a46: $bf
    ld [bc], a                                    ; $5a47: $02

jr_044_5a48:
    dec e                                         ; $5a48: $1d
    dec de                                        ; $5a49: $1b
    jp nz, $8c28                                  ; $5a4a: $c2 $28 $8c

    ld e, d                                       ; $5a4d: $5a
    ld l, c                                       ; $5a4e: $69
    ld a, e                                       ; $5a4f: $7b
    ld b, a                                       ; $5a50: $47
    cp e                                          ; $5a51: $bb
    ld sp, $a899                                  ; $5a52: $31 $99 $a8
    ld c, e                                       ; $5a55: $4b
    db $ed                                        ; $5a56: $ed
    rst $18                                       ; $5a57: $df
    ld a, e                                       ; $5a58: $7b
    cp d                                          ; $5a59: $ba
    inc bc                                        ; $5a5a: $03
    ld b, h                                       ; $5a5b: $44
    rla                                           ; $5a5c: $17
    rst $38                                       ; $5a5d: $ff
    rst $00                                       ; $5a5e: $c7
    pop bc                                        ; $5a5f: $c1
    call c, Call_044_44f3                         ; $5a60: $dc $f3 $44
    ld e, l                                       ; $5a63: $5d
    or b                                          ; $5a64: $b0
    xor c                                         ; $5a65: $a9
    add d                                         ; $5a66: $82
    ld hl, $53fb                                  ; $5a67: $21 $fb $53
    add $48                                       ; $5a6a: $c6 $48
    ld l, b                                       ; $5a6c: $68
    ei                                            ; $5a6d: $fb
    ld e, [hl]                                    ; $5a6e: $5e
    adc b                                         ; $5a6f: $88
    rra                                           ; $5a70: $1f
    add l                                         ; $5a71: $85

jr_044_5a72:
    dec e                                         ; $5a72: $1d
    rst $30                                       ; $5a73: $f7
    add d                                         ; $5a74: $82
    ld a, h                                       ; $5a75: $7c
    ret c                                         ; $5a76: $d8

    db $10                                        ; $5a77: $10
    ld b, [hl]                                    ; $5a78: $46
    ld h, c                                       ; $5a79: $61
    call nc, Call_000_1b4c                        ; $5a7a: $d4 $4c $1b
    add hl, hl                                    ; $5a7d: $29
    inc hl                                        ; $5a7e: $23
    sub e                                         ; $5a7f: $93
    push bc                                       ; $5a80: $c5
    ld b, [hl]                                    ; $5a81: $46
    ld a, b                                       ; $5a82: $78
    ld a, [c]                                     ; $5a83: $f2
    add hl, hl                                    ; $5a84: $29
    ld l, [hl]                                    ; $5a85: $6e
    xor d                                         ; $5a86: $aa
    ld a, [bc]                                    ; $5a87: $0a
    call z, $c430                                 ; $5a88: $cc $30 $c4
    ld sp, hl                                     ; $5a8b: $f9
    sub c                                         ; $5a8c: $91
    ld a, [de]                                    ; $5a8d: $1a
    add hl, hl                                    ; $5a8e: $29
    db $fc                                        ; $5a8f: $fc
    inc a                                         ; $5a90: $3c
    reti                                          ; $5a91: $d9


    db $f4                                        ; $5a92: $f4
    ld a, [c]                                     ; $5a93: $f2
    pop af                                        ; $5a94: $f1
    cp [hl]                                       ; $5a95: $be
    dec b                                         ; $5a96: $05
    jp nz, $86f6                                  ; $5a97: $c2 $f6 $86

    call c, Call_000_354e                         ; $5a9a: $dc $4e $35
    add l                                         ; $5a9d: $85
    ld l, l                                       ; $5a9e: $6d
    ld [hl], h                                    ; $5a9f: $74
    ld e, c                                       ; $5aa0: $59
    ld h, b                                       ; $5aa1: $60
    ld [hl], c                                    ; $5aa2: $71
    add [hl]                                      ; $5aa3: $86
    scf                                           ; $5aa4: $37
    add h                                         ; $5aa5: $84
    ld c, d                                       ; $5aa6: $4a
    call nc, $b091                                ; $5aa7: $d4 $91 $b0
    ld [hl], d                                    ; $5aaa: $72
    db $e4                                        ; $5aab: $e4
    call nc, $ab4c                                ; $5aac: $d4 $4c $ab
    and d                                         ; $5aaf: $a2

Call_044_5ab0:
    xor $ab                                       ; $5ab0: $ee $ab
    adc c                                         ; $5ab2: $89
    ld a, [$7ed4]                                 ; $5ab3: $fa $d4 $7e
    call $d54e                                    ; $5ab6: $cd $4e $d5
    ld e, h                                       ; $5ab9: $5c
    ld bc, $f79e                                  ; $5aba: $01 $9e $f7
    ld d, e                                       ; $5abd: $53
    inc sp                                        ; $5abe: $33
    ld [hl], l                                    ; $5abf: $75
    ld b, [hl]                                    ; $5ac0: $46
    ld d, d                                       ; $5ac1: $52
    ld e, l                                       ; $5ac2: $5d
    cp [hl]                                       ; $5ac3: $be
    inc l                                         ; $5ac4: $2c
    ld h, b                                       ; $5ac5: $60
    ld a, [hl]                                    ; $5ac6: $7e
    ld [hl], d                                    ; $5ac7: $72
    and d                                         ; $5ac8: $a2
    ld l, $24                                     ; $5ac9: $2e $24
    inc d                                         ; $5acb: $14
    adc h                                         ; $5acc: $8c
    cp h                                          ; $5acd: $bc
    adc h                                         ; $5ace: $8c
    and [hl]                                      ; $5acf: $a6
    ld e, l                                       ; $5ad0: $5d
    cp a                                          ; $5ad1: $bf
    ld [bc], a                                    ; $5ad2: $02
    ld [hl], l                                    ; $5ad3: $75

Jump_044_5ad4:
    adc a                                         ; $5ad4: $8f
    ld b, a                                       ; $5ad5: $47
    ld [c], a                                     ; $5ad6: $e2
    rst $38                                       ; $5ad7: $ff
    jr c, jr_044_5a72                             ; $5ad8: $38 $98

    ld a, e                                       ; $5ada: $7b
    sbc [hl]                                      ; $5adb: $9e
    xor b                                         ; $5adc: $a8
    dec bc                                        ; $5add: $0b
    ld [hl], $55                                  ; $5ade: $36 $55
    jr nc, jr_044_5b46                            ; $5ae0: $30 $64

    ld a, a                                       ; $5ae2: $7f
    inc [hl]                                      ; $5ae3: $34
    ld a, [$eea6]                                 ; $5ae4: $fa $a6 $ee
    and e                                         ; $5ae7: $a3
    or b                                          ; $5ae8: $b0
    db $e3                                        ; $5ae9: $e3
    ld e, [hl]                                    ; $5aea: $5e
    sub b                                         ; $5aeb: $90
    rrca                                          ; $5aec: $0f
    dec de                                        ; $5aed: $1b
    jp nz, $8c28                                  ; $5aee: $c2 $28 $8c

    ld [$dc76], sp                                ; $5af1: $08 $76 $dc
    sbc b                                         ; $5af4: $98
    sbc l                                         ; $5af5: $9d
    sbc d                                         ; $5af6: $9a
    sbc e                                         ; $5af7: $9b
    inc l                                         ; $5af8: $2c
    ld [hl], $a7                                  ; $5af9: $36 $a7
    ccf                                           ; $5afb: $3f
    sbc [hl]                                      ; $5afc: $9e
    ld a, $6d                                     ; $5afd: $3e $6d
    call nz, Call_044_6287                        ; $5aff: $c4 $87 $62
    rst $28                                       ; $5b02: $ef
    ret                                           ; $5b03: $c9


    sbc [hl]                                      ; $5b04: $9e
    ld hl, sp+$3f                                 ; $5b05: $f8 $3f
    push de                                       ; $5b07: $d5
    ld e, b                                       ; $5b08: $58
    sbc c                                         ; $5b09: $99
    ld a, $9e                                     ; $5b0a: $3e $9e
    ld b, $75                                     ; $5b0c: $06 $75
    ld e, a                                       ; $5b0e: $5f
    ld c, l                                       ; $5b0f: $4d
    sbc h                                         ; $5b10: $9c
    rra                                           ; $5b11: $1f
    ld hl, $a367                                  ; $5b12: $21 $67 $a3
    inc d                                         ; $5b15: $14
    call nz, $fea8                                ; $5b16: $c4 $a8 $fe
    dec c                                         ; $5b19: $0d
    pop af                                        ; $5b1a: $f1
    and c                                         ; $5b1b: $a1
    ret c                                         ; $5b1c: $d8

    ld a, e                                       ; $5b1d: $7b
    ld [c], a                                     ; $5b1e: $e2
    db $fc                                        ; $5b1f: $fc
    ret z                                         ; $5b20: $c8

    db $ed                                        ; $5b21: $ed
    cp b                                          ; $5b22: $b8
    rla                                           ; $5b23: $17
    and h                                         ; $5b24: $a4
    adc h                                         ; $5b25: $8c
    sub c                                         ; $5b26: $91
    ret nc                                        ; $5b27: $d0

    or $bd                                        ; $5b28: $f6 $bd
    ld l, $3e                                     ; $5b2a: $2e $3e
    db $f4                                        ; $5b2c: $f4
    scf                                           ; $5b2d: $37
    dec d                                         ; $5b2e: $15
    rra                                           ; $5b2f: $1f
    adc d                                         ; $5b30: $8a
    cp b                                          ; $5b31: $b8
    add hl, hl                                    ; $5b32: $29
    sbc a                                         ; $5b33: $9f
    ld [hl], d                                    ; $5b34: $72
    rst $18                                       ; $5b35: $df
    xor a                                         ; $5b36: $af
    ld l, l                                       ; $5b37: $6d
    add h                                         ; $5b38: $84
    sbc h                                         ; $5b39: $9c
    adc e                                         ; $5b3a: $8b
    di                                            ; $5b3b: $f3
    inc hl                                        ; $5b3c: $23
    add d                                         ; $5b3d: $82
    sub h                                         ; $5b3e: $94
    ld e, a                                       ; $5b3f: $5f
    ret nz                                        ; $5b40: $c0

    adc b                                         ; $5b41: $88
    cp d                                          ; $5b42: $ba
    or h                                          ; $5b43: $b4
    ld c, c                                       ; $5b44: $49
    cp l                                          ; $5b45: $bd

jr_044_5b46:
    sbc $d3                                       ; $5b46: $de $d3
    push hl                                       ; $5b48: $e5
    halt                                          ; $5b49: $76
    xor d                                         ; $5b4a: $aa
    sbc e                                         ; $5b4b: $9b

Call_044_5b4c:
    cp b                                          ; $5b4c: $b8
    rla                                           ; $5b4d: $17
    db $e4                                        ; $5b4e: $e4
    jp $3086                                      ; $5b4f: $c3 $86 $30


    ld a, [bc]                                    ; $5b52: $0a
    and e                                         ; $5b53: $a3
    ld d, [hl]                                    ; $5b54: $56
    jp c, $f0f3                                   ; $5b55: $da $f3 $f0

    ld c, a                                       ; $5b58: $4f
    call c, $8b54                                 ; $5b59: $dc $54 $8b
    dec a                                         ; $5b5c: $3d
    ld c, a                                       ; $5b5d: $4f
    call nc, Call_044_4a87                        ; $5b5e: $d4 $87 $4a
    inc [hl]                                      ; $5b61: $34
    add e                                         ; $5b62: $83
    sbc e                                         ; $5b63: $9b
    ld l, h                                       ; $5b64: $6c
    adc a                                         ; $5b65: $8f
    rla                                           ; $5b66: $17
    sbc c                                         ; $5b67: $99
    inc d                                         ; $5b68: $14
    scf                                           ; $5b69: $37
    ld d, [hl]                                    ; $5b6a: $56
    ld h, $c8                                     ; $5b6b: $26 $c8
    or $f0                                        ; $5b6d: $f6 $f0
    ld c, a                                       ; $5b6f: $4f
    ld d, $43                                     ; $5b70: $16 $43
    pop hl                                        ; $5b72: $e1
    rst $20                                       ; $5b73: $e7
    ret                                           ; $5b74: $c9


    rst $00                                       ; $5b75: $c7
    rst $30                                       ; $5b76: $f7
    ld [hl], $84                                  ; $5b77: $36 $84
    sub c                                         ; $5b79: $91
    dec b                                         ; $5b7a: $05
    ld d, $ef                                     ; $5b7b: $16 $ef
    dec de                                        ; $5b7d: $1b
    or d                                          ; $5b7e: $b2
    ccf                                           ; $5b7f: $3f
    ld a, [de]                                    ; $5b80: $1a
    ld a, l                                       ; $5b81: $7d
    ld d, e                                       ; $5b82: $53
    rst $30                                       ; $5b83: $f7
    ld sp, hl                                     ; $5b84: $f9
    cp [hl]                                       ; $5b85: $be
    rst $28                                       ; $5b86: $ef
    ld b, e                                       ; $5b87: $43
    db $fd                                        ; $5b88: $fd
    sub l                                         ; $5b89: $95
    ld l, $fb                                     ; $5b8a: $2e $fb
    adc e                                         ; $5b8c: $8b
    cp e                                          ; $5b8d: $bb
    xor a                                         ; $5b8e: $af
    ld h, $0b                                     ; $5b8f: $26 $0b
    ld c, h                                       ; $5b91: $4c
    pop bc                                        ; $5b92: $c1
    ret nc                                        ; $5b93: $d0

    rst $30                                       ; $5b94: $f7
    db $fd                                        ; $5b95: $fd
    ld a, [bc]                                    ; $5b96: $0a
    ld l, l                                       ; $5b97: $6d
    cp [hl]                                       ; $5b98: $be
    ld hl, $a3fb                                  ; $5b99: $21 $fb $a3
    pop de                                        ; $5b9c: $d1
    scf                                           ; $5b9d: $37
    ld [hl], l                                    ; $5b9e: $75
    sbc a                                         ; $5b9f: $9f
    adc a                                         ; $5ba0: $8f
    sbc e                                         ; $5ba1: $9b
    ld a, [c]                                     ; $5ba2: $f2
    or l                                          ; $5ba3: $b5
    ld d, [hl]                                    ; $5ba4: $56
    xor l                                         ; $5ba5: $ad
    ld d, $37                                     ; $5ba6: $16 $37
    sbc e                                         ; $5ba8: $9b
    sbc a                                         ; $5ba9: $9f
    ld d, c                                       ; $5baa: $51
    ld e, l                                       ; $5bab: $5d
    db $f4                                        ; $5bac: $f4
    db $10                                        ; $5bad: $10
    db $f4                                        ; $5bae: $f4
    jp hl                                         ; $5baf: $e9


    db $f4                                        ; $5bb0: $f4
    ld d, d                                       ; $5bb1: $52

Jump_044_5bb2:
    ld hl, sp+$19                                 ; $5bb2: $f8 $19
    cp c                                          ; $5bb4: $b9
    xor d                                         ; $5bb5: $aa
    cp d                                          ; $5bb6: $ba
    ld [c], a                                     ; $5bb7: $e2
    db $fc                                        ; $5bb8: $fc
    rst $30                                       ; $5bb9: $f7
    and d                                         ; $5bba: $a2
    ld h, $27                                     ; $5bbb: $26 $27
    ld [hl], c                                    ; $5bbd: $71
    ld d, e                                       ; $5bbe: $53
    db $10                                        ; $5bbf: $10
    rst $20                                       ; $5bc0: $e7
    ld b, a                                       ; $5bc1: $47
    ld h, h                                       ; $5bc2: $64
    inc h                                         ; $5bc3: $24
    db $e4                                        ; $5bc4: $e4
    push bc                                       ; $5bc5: $c5
    ld c, [hl]                                    ; $5bc6: $4e
    and e                                         ; $5bc7: $a3
    ld l, a                                       ; $5bc8: $6f
    ld [$fa65], a                                 ; $5bc9: $ea $65 $fa
    ld hl, sp-$46                                 ; $5bcc: $f8 $ba
    ld sp, $0cf5                                  ; $5bce: $31 $f5 $0c
    ld a, [c]                                     ; $5bd1: $f2
    and d                                         ; $5bd2: $a2
    or b                                          ; $5bd3: $b0
    db $e3                                        ; $5bd4: $e3
    ld e, [hl]                                    ; $5bd5: $5e
    and b                                         ; $5bd6: $a0
    adc e                                         ; $5bd7: $8b
    cp d                                          ; $5bd8: $ba
    ld a, [bc]                                    ; $5bd9: $0a
    jp nz, $9ee7                                  ; $5bda: $c2 $e7 $9e

    sub c                                         ; $5bdd: $91
    adc a                                         ; $5bde: $8f
    sbc e                                         ; $5bdf: $9b
    ld a, [c]                                     ; $5be0: $f2
    pop af                                        ; $5be1: $f1
    ld a, [hl]                                    ; $5be2: $7e
    or $47                                        ; $5be3: $f6 $47
    and e                                         ; $5be5: $a3
    ld l, a                                       ; $5be6: $6f
    ld [$4fbe], a                                 ; $5be7: $ea $be $4f
    bit 4, c                                      ; $5bea: $cb $61
    jp z, $a1fc                                   ; $5bec: $ca $fc $a1

    ld a, [c]                                     ; $5bef: $f2
    pop af                                        ; $5bf0: $f1
    cp [hl]                                       ; $5bf1: $be
    ld [hl], e                                    ; $5bf2: $73
    db $10                                        ; $5bf3: $10
    push af                                       ; $5bf4: $f5
    pop af                                        ; $5bf5: $f1
    jp c, $f7c7                                   ; $5bf6: $da $c7 $f7

    ld [hl], $84                                  ; $5bf9: $36 $84
    ld de, $cea4                                  ; $5bfb: $11 $a4 $ce
    cp c                                          ; $5bfe: $b9
    reti                                          ; $5bff: $d9


    ld e, a                                       ; $5c00: $5f
    jp nc, $fee6                                  ; $5c01: $d2 $e6 $fe

    ld a, [bc]                                    ; $5c04: $0a
    cp e                                          ; $5c05: $bb
    ld e, a                                       ; $5c06: $5f
    ld bc, $eead                                  ; $5c07: $01 $ad $ee
    dec a                                         ; $5c0a: $3d
    or $71                                        ; $5c0b: $f6 $71
    ld e, $35                                     ; $5c0d: $1e $35
    and d                                         ; $5c0f: $a2
    ld l, $15                                     ; $5c10: $2e $15
    adc b                                         ; $5c12: $88
    call nz, Call_000_0f89                        ; $5c13: $c4 $89 $0f
    db $fd                                        ; $5c16: $fd
    db $ed                                        ; $5c17: $ed
    xor b                                         ; $5c18: $a8
    ld c, h                                       ; $5c19: $4c
    sbc h                                         ; $5c1a: $9c
    rra                                           ; $5c1b: $1f
    add hl, hl                                    ; $5c1c: $29
    rla                                           ; $5c1d: $17
    rst $20                                       ; $5c1e: $e7
    cp a                                          ; $5c1f: $bf
    xor a                                         ; $5c20: $af
    ld a, $75                                     ; $5c21: $3e $75
    adc $cd                                       ; $5c23: $ce $cd
    cp $92                                        ; $5c25: $fe $92
    ld [hl], $f7                                  ; $5c27: $36 $f7
    ld d, a                                       ; $5c29: $57
    ret c                                         ; $5c2a: $d8

    dec [hl]                                      ; $5c2b: $35
    ld d, a                                       ; $5c2c: $57
    ld [hl], l                                    ; $5c2d: $75
    ld b, [hl]                                    ; $5c2e: $46
    or d                                          ; $5c2f: $b2
    ld c, h                                       ; $5c30: $4c
    add hl, hl                                    ; $5c31: $29
    sub e                                         ; $5c32: $93
    rst $10                                       ; $5c33: $d7
    or h                                          ; $5c34: $b4
    and e                                         ; $5c35: $a3
    and d                                         ; $5c36: $a2
    pop bc                                        ; $5c37: $c1
    sub b                                         ; $5c38: $90
    rst $18                                       ; $5c39: $df
    ld l, h                                       ; $5c3a: $6c
    ld d, e                                       ; $5c3b: $53
    ld [hl], e                                    ; $5c3c: $73
    dec b                                         ; $5c3d: $05
    xor l                                         ; $5c3e: $ad
    adc a                                         ; $5c3f: $8f
    ld e, [hl]                                    ; $5c40: $5e
    ld a, a                                       ; $5c41: $7f
    ld e, a                                       ; $5c42: $5f
    ld c, l                                       ; $5c43: $4d
    adc d                                         ; $5c44: $8a
    sbc $4e                                       ; $5c45: $de $4e
    ld a, e                                       ; $5c47: $7b
    ld [hl], e                                    ; $5c48: $73
    sub a                                         ; $5c49: $97
    rrca                                          ; $5c4a: $0f
    db $db                                        ; $5c4b: $db
    sub b                                         ; $5c4c: $90
    ld l, a                                       ; $5c4d: $6f
    ld c, b                                       ; $5c4e: $48
    ld l, l                                       ; $5c4f: $6d
    ld e, b                                       ; $5c50: $58
    ld [hl], l                                    ; $5c51: $75
    inc hl                                        ; $5c52: $23
    ret nc                                        ; $5c53: $d0

    and l                                         ; $5c54: $a5
    or $9b                                        ; $5c55: $f6 $9b
    ld de, $e3e8                                  ; $5c57: $11 $e8 $e3
    ei                                            ; $5c5a: $fb
    bit 6, d                                      ; $5c5b: $cb $72
    ld e, a                                       ; $5c5d: $5f
    ld c, l                                       ; $5c5e: $4d
    sbc h                                         ; $5c5f: $9c
    rra                                           ; $5c60: $1f
    xor c                                         ; $5c61: $a9
    ld de, $f1f5                                  ; $5c62: $11 $f5 $f1
    and c                                         ; $5c65: $a1
    cp a                                          ; $5c66: $bf
    sbc l                                         ; $5c67: $9d
    rra                                           ; $5c68: $1f
    ld e, c                                       ; $5c69: $59
    sbc $18                                       ; $5c6a: $de $18
    ld sp, hl                                     ; $5c6c: $f9
    sbc l                                         ; $5c6d: $9d
    push bc                                       ; $5c6e: $c5
    xor [hl]                                      ; $5c6f: $ae
    sbc d                                         ; $5c70: $9a
    inc l                                         ; $5c71: $2c
    rst $30                                       ; $5c72: $f7
    ld [hl-], a                                   ; $5c73: $32
    dec [hl]                                      ; $5c74: $35
    ld d, a                                       ; $5c75: $57
    ld l, l                                       ; $5c76: $6d
    dec a                                         ; $5c77: $3d
    sub c                                         ; $5c78: $91
    ld hl, sp+$21                                 ; $5c79: $f8 $21
    cpl                                           ; $5c7b: $2f

jr_044_5c7c:
    cp $0f                                        ; $5c7c: $fe $0f
    db $db                                        ; $5c7e: $db
    sub b                                         ; $5c7f: $90
    rst $08                                       ; $5c80: $cf
    sub a                                         ; $5c81: $97
    ld b, d                                       ; $5c82: $42
    di                                            ; $5c83: $f3
    ld a, e                                       ; $5c84: $7b
    ld a, e                                       ; $5c85: $7b
    ld c, h                                       ; $5c86: $4c
    add hl, hl                                    ; $5c87: $29
    jr nc, jr_044_5c7c                            ; $5c88: $30 $f2

    ld a, c                                       ; $5c8a: $79
    db $ec                                        ; $5c8b: $ec
    and [hl]                                      ; $5c8c: $a6
    and $0a                                       ; $5c8d: $e6 $0a
    or l                                          ; $5c8f: $b5
    rst $18                                       ; $5c90: $df
    adc h                                         ; $5c91: $8c
    ld b, b                                       ; $5c92: $40
    call Call_044_7c74                            ; $5c93: $cd $74 $7c
    add hl, hl                                    ; $5c96: $29
    db $fc                                        ; $5c97: $fc
    db $e4                                        ; $5c98: $e4
    call nz, $dcc1                                ; $5c99: $c4 $c1 $dc
    adc e                                         ; $5c9c: $8b
    sbc d                                         ; $5c9d: $9a
    inc l                                         ; $5c9e: $2c
    or b                                          ; $5c9f: $b0
    inc a                                         ; $5ca0: $3c
    ld c, c                                       ; $5ca1: $49
    jp nz, $8cf8                                  ; $5ca2: $c2 $f8 $8c

    xor a                                         ; $5ca5: $af
    and l                                         ; $5ca6: $a5
    or h                                          ; $5ca7: $b4
    rst $38                                       ; $5ca8: $ff
    db $db                                        ; $5ca9: $db
    dec sp                                        ; $5caa: $3b
    inc b                                         ; $5cab: $04
    ld [c], a                                     ; $5cac: $e2
    rst $38                                       ; $5cad: $ff
    jr z, jr_044_5ce0                             ; $5cae: $28 $30

    ld c, a                                       ; $5cb0: $4f
    sbc h                                         ; $5cb1: $9c
    rra                                           ; $5cb2: $1f
    ld a, c                                       ; $5cb3: $79
    ld [de], a                                    ; $5cb4: $12
    db $e4                                        ; $5cb5: $e4
    add l                                         ; $5cb6: $85
    ld c, d                                       ; $5cb7: $4a
    sub h                                         ; $5cb8: $94
    ld a, l                                       ; $5cb9: $7d
    rst $18                                       ; $5cba: $df
    rst $30                                       ; $5cbb: $f7
    dec hl                                        ; $5cbc: $2b
    cp [hl]                                       ; $5cbd: $be
    ld a, [hl]                                    ; $5cbe: $7e
    ld a, a                                       ; $5cbf: $7f
    call $ad15                                    ; $5cc0: $cd $15 $ad
    sub d                                         ; $5cc3: $92
    ld h, b                                       ; $5cc4: $60
    call nz, $b9de                                ; $5cc5: $c4 $de $b9
    ld de, $9e7e                                  ; $5cc8: $11 $7e $9e
    ld a, h                                       ; $5ccb: $7c
    jp c, $edff                                   ; $5ccc: $da $ff $ed

    dec e                                         ; $5ccf: $1d
    ld [bc], a                                    ; $5cd0: $02
    ld [hl], c                                    ; $5cd1: $71
    cp $2b                                        ; $5cd2: $fe $2b
    and l                                         ; $5cd4: $a5

Jump_044_5cd5:
    sbc [hl]                                      ; $5cd5: $9e
    ld hl, sp-$30                                 ; $5cd6: $f8 $d0
    rst $18                                       ; $5cd8: $df
    rla                                           ; $5cd9: $17
    db $fd                                        ; $5cda: $fd
    rst $28                                       ; $5cdb: $ef
    adc l                                         ; $5cdc: $8d
    ld a, h                                       ; $5cdd: $7c
    ld d, $9b                                     ; $5cde: $16 $9b

jr_044_5ce0:
    ld h, l                                       ; $5ce0: $65
    jp z, Jump_044_44f1                           ; $5ce1: $ca $f1 $44

    ld e, l                                       ; $5ce4: $5d
    xor b                                         ; $5ce5: $a8
    ld b, h                                       ; $5ce6: $44
    reti                                          ; $5ce7: $d9


    ld l, e                                       ; $5ce8: $6b
    and e                                         ; $5ce9: $a3
    adc e                                         ; $5cea: $8b
    ld h, b                                       ; $5ceb: $60
    add a                                         ; $5cec: $87
    ld hl, $7cfc                                  ; $5ced: $21 $fc $7c
    db $e4                                        ; $5cf0: $e4
    ld b, h                                       ; $5cf1: $44
    ld e, l                                       ; $5cf2: $5d
    sbc [hl]                                      ; $5cf3: $9e
    ld sp, hl                                     ; $5cf4: $f9
    db $ec                                        ; $5cf5: $ec
    ld l, l                                       ; $5cf6: $6d
    ld c, a                                       ; $5cf7: $4f
    cp h                                          ; $5cf8: $bc
    ld [hl], h                                    ; $5cf9: $74
    db $ec                                        ; $5cfa: $ec
    and d                                         ; $5cfb: $a2
    ld a, [hl]                                    ; $5cfc: $7e
    ld h, a                                       ; $5cfd: $67
    add e                                         ; $5cfe: $83
    ld a, c                                       ; $5cff: $79
    add d                                         ; $5d00: $82
    xor b                                         ; $5d01: $a8
    adc e                                         ; $5d02: $8b
    sbc e                                         ; $5d03: $9b
    ld c, d                                       ; $5d04: $4a
    ld a, a                                       ; $5d05: $7f
    ld a, [c]                                     ; $5d06: $f2
    add [hl]                                      ; $5d07: $86
    ld hl, sp-$30                                 ; $5d08: $f8 $d0
    rst $18                                       ; $5d0a: $df
    adc $8f                                       ; $5d0b: $ce $8f
    inc l                                         ; $5d0d: $2c
    ld e, a                                       ; $5d0e: $5f
    ld hl, sp-$64                                 ; $5d0f: $f8 $9c
    cp e                                          ; $5d11: $bb
    jp hl                                         ; $5d12: $e9


    db $e3                                        ; $5d13: $e3
    add hl, sp                                    ; $5d14: $39
    dec d                                         ; $5d15: $15
    dec d                                         ; $5d16: $15
    rra                                           ; $5d17: $1f
    ld a, [bc]                                    ; $5d18: $0a
    ld e, l                                       ; $5d19: $5d
    or [hl]                                       ; $5d1a: $b6
    add a                                         ; $5d1b: $87
    ld a, a                                       ; $5d1c: $7f
    and d                                         ; $5d1d: $a2
    ld e, l                                       ; $5d1e: $5d
    dec a                                         ; $5d1f: $3d
    ld e, c                                       ; $5d20: $59
    ld d, b                                       ; $5d21: $50
    call c, $f4f3                                 ; $5d22: $dc $f3 $f4
    xor c                                         ; $5d25: $a9
    inc bc                                        ; $5d26: $03
    ld a, [c]                                     ; $5d27: $f2
    or $46                                        ; $5d28: $f6 $46
    db $fc                                        ; $5d2a: $fc
    sbc a                                         ; $5d2b: $9f
    ld [bc], a                                    ; $5d2c: $02
    pop hl                                        ; $5d2d: $e1
    db $e3                                        ; $5d2e: $e3
    ret                                           ; $5d2f: $c9


    ld b, [hl]                                    ; $5d30: $46
    ret z                                         ; $5d31: $c8

    add hl, hl                                    ; $5d32: $29
    ld l, h                                       ; $5d33: $6c
    ld c, b                                       ; $5d34: $48
    pop hl                                        ; $5d35: $e1
    or c                                          ; $5d36: $b1
    ld b, e                                       ; $5d37: $43
    db $10                                        ; $5d38: $10
    ld [hl], a                                    ; $5d39: $77
    pop af                                        ; $5d3a: $f1
    ld a, a                                       ; $5d3b: $7f
    sbc h                                         ; $5d3c: $9c
    ld b, c                                       ; $5d3d: $41
    ld d, c                                       ; $5d3e: $51
    sbc [hl]                                      ; $5d3f: $9e
    cp h                                          ; $5d40: $bc
    jr c, @+$41                                   ; $5d41: $38 $3f

    or d                                          ; $5d43: $b2

Call_044_5d44:
    jp hl                                         ; $5d44: $e9


    push af                                       ; $5d45: $f5
    dec hl                                        ; $5d46: $2b

Jump_044_5d47:
    db $ed                                        ; $5d47: $ed
    ld a, a                                       ; $5d48: $7f
    rst $18                                       ; $5d49: $df
    rst $30                                       ; $5d4a: $f7
    dec hl                                        ; $5d4b: $2b
    xor l                                         ; $5d4c: $ad
    ld a, [hl+]                                   ; $5d4d: $2a
    sub h                                         ; $5d4e: $94
    ld [hl-], a                                   ; $5d4f: $32
    ld a, c                                       ; $5d50: $79
    ld d, c                                       ; $5d51: $51
    ld b, $46                                     ; $5d52: $06 $46
    ld c, [hl]                                    ; $5d54: $4e
    ld [c], a                                     ; $5d55: $e2
    cp [hl]                                       ; $5d56: $be
    ldh a, [rBCPD]                                ; $5d57: $f0 $69
    inc de                                        ; $5d59: $13
    and [hl]                                      ; $5d5a: $a6
    call z, $8417                                 ; $5d5b: $cc $17 $84
    dec c                                         ; $5d5e: $0d
    ld b, c                                       ; $5d5f: $41
    ld a, b                                       ; $5d60: $78
    or h                                          ; $5d61: $b4
    ld a, l                                       ; $5d62: $7d
    or b                                          ; $5d63: $b0
    ld a, [$4cd3]                                 ; $5d64: $fa $d3 $4c
    db $e3                                        ; $5d67: $e3
    ld e, c                                       ; $5d68: $59
    xor b                                         ; $5d69: $a8
    ldh a, [$e5]                                  ; $5d6a: $f0 $e5
    db $d3                                        ; $5d6c: $d3
    sub [hl]                                      ; $5d6d: $96
    sbc l                                         ; $5d6e: $9d
    ld [hl], a                                    ; $5d6f: $77
    ld b, h                                       ; $5d70: $44
    adc l                                         ; $5d71: $8d
    ld c, l                                       ; $5d72: $4d
    rst $18                                       ; $5d73: $df
    rst $30                                       ; $5d74: $f7
    ld l, c                                       ; $5d75: $69
    and [hl]                                      ; $5d76: $a6
    pop af                                        ; $5d77: $f1
    inc l                                         ; $5d78: $2c
    ld d, h                                       ; $5d79: $54
    ld hl, sp-$0e                                 ; $5d7a: $f8 $f2
    ld h, c                                       ; $5d7c: $61
    inc d                                         ; $5d7d: $14
    cp $9a                                        ; $5d7e: $fe $9a
    dec hl                                        ; $5d80: $2b
    call $9e34                                    ; $5d81: $cd $34 $9e
    add l                                         ; $5d84: $85
    ld a, [bc]                                    ; $5d85: $0a
    ld e, a                                       ; $5d86: $5f
    ld a, $8c                                     ; $5d87: $3e $8c
    jp nz, Jump_044_735f                          ; $5d89: $c2 $5f $73

    dec b                                         ; $5d8c: $05
    ld [hl], l                                    ; $5d8d: $75
    ld h, c                                       ; $5d8e: $61
    ld e, c                                       ; $5d8f: $59
    xor b                                         ; $5d90: $a8
    inc e                                         ; $5d91: $1c
    pop af                                        ; $5d92: $f1
    ld b, [hl]                                    ; $5d93: $46
    and b                                         ; $5d94: $a0
    res 1, e                                      ; $5d95: $cb $8b
    ld [hl-], a                                   ; $5d97: $32
    jr nc, jr_044_5e0c                            ; $5d98: $30 $72

    ld [de], a                                    ; $5d9a: $12
    add a                                         ; $5d9b: $87
    cp l                                          ; $5d9c: $bd
    ccf                                           ; $5d9d: $3f
    jp z, $cae3                                   ; $5d9e: $ca $e3 $ca

    db $ec                                        ; $5da1: $ec
    xor a                                         ; $5da2: $af
    jr nz, jr_044_5de1                            ; $5da3: $20 $3c

    ld sp, hl                                     ; $5da5: $f9
    inc l                                         ; $5da6: $2c
    ld l, a                                       ; $5da7: $6f
    ld a, h                                       ; $5da8: $7c
    add [hl]                                      ; $5da9: $86
    xor b                                         ; $5daa: $a8
    rst $18                                       ; $5dab: $df
    dec de                                        ; $5dac: $1b
    and c                                         ; $5dad: $a1
    and d                                         ; $5dae: $a2
    adc $5d                                       ; $5daf: $ce $5d
    call nc, $f0a5                                ; $5db1: $d4 $a5 $f0
    rla                                           ; $5db4: $17
    ret c                                         ; $5db5: $d8

    rst $30                                       ; $5db6: $f7
    xor c                                         ; $5db7: $a9
    ld l, e                                       ; $5db8: $6b
    jr z, jr_044_5dcb                             ; $5db9: $28 $10

    ld a, [hl]                                    ; $5dbb: $7e
    ld b, $79                                     ; $5dbc: $06 $79
    ld sp, hl                                     ; $5dbe: $f9
    sbc l                                         ; $5dbf: $9d
    ld [hl], d                                    ; $5dc0: $72
    sbc d                                         ; $5dc1: $9a
    adc h                                         ; $5dc2: $8c
    and l                                         ; $5dc3: $a5
    xor l                                         ; $5dc4: $ad
    daa                                           ; $5dc5: $27
    ld [de], a                                    ; $5dc6: $12
    ccf                                           ; $5dc7: $3f
    add d                                         ; $5dc8: $82
    sbc l                                         ; $5dc9: $9d
    ld a, [c]                                     ; $5dca: $f2

jr_044_5dcb:
    ld a, e                                       ; $5dcb: $7b
    inc b                                         ; $5dcc: $04
    ld d, c                                       ; $5dcd: $51
    ld e, $27                                     ; $5dce: $1e $27
    sbc d                                         ; $5dd0: $9a
    and c                                         ; $5dd1: $a1
    sub h                                         ; $5dd2: $94
    jp hl                                         ; $5dd3: $e9


    db $d3                                        ; $5dd4: $d3
    xor d                                         ; $5dd5: $aa
    ld b, d                                       ; $5dd6: $42
    add hl, hl                                    ; $5dd7: $29
    inc de                                        ; $5dd8: $13
    ld e, $93                                     ; $5dd9: $1e $93
    ld h, a                                       ; $5ddb: $67
    db $e4                                        ; $5ddc: $e4
    or e                                          ; $5ddd: $b3
    pop bc                                        ; $5dde: $c1
    inc a                                         ; $5ddf: $3c
    cp d                                          ; $5de0: $ba

jr_044_5de1:
    jr nc, jr_044_5e48                            ; $5de1: $30 $65

    cp [hl]                                       ; $5de3: $be
    ld hl, sp-$30                                 ; $5de4: $f8 $d0
    rla                                           ; $5de6: $17
    cp [hl]                                       ; $5de7: $be
    ld a, $ed                                     ; $5de8: $3e $ed
    rst $38                                       ; $5dea: $ff
    dec b                                         ; $5deb: $05
    ld e, c                                       ; $5dec: $59
    and $52                                       ; $5ded: $e6 $52
    db $fd                                        ; $5def: $fd
    push bc                                       ; $5df0: $c5
    ccf                                           ; $5df1: $3f
    ld e, c                                       ; $5df2: $59
    ld l, h                                       ; $5df3: $6c
    ret z                                         ; $5df4: $c8

    rst $20                                       ; $5df5: $e7
    add hl, bc                                    ; $5df6: $09
    cp a                                          ; $5df7: $bf
    ldh a, [$87]                                  ; $5df8: $f0 $87
    add h                                         ; $5dfa: $84
    ld l, c                                       ; $5dfb: $69
    and e                                         ; $5dfc: $a3
    ret                                           ; $5dfd: $c9


    ld h, a                                       ; $5dfe: $67
    add c                                         ; $5dff: $81
    ld b, l                                       ; $5e00: $45
    ld b, c                                       ; $5e01: $41
    db $db                                        ; $5e02: $db
    sub a                                         ; $5e03: $97
    jp nz, Jump_044_4154                          ; $5e04: $c2 $54 $41

    ld hl, sp-$5e                                 ; $5e07: $f8 $a2
    ld l, $6d                                     ; $5e09: $2e $6d
    reti                                          ; $5e0b: $d9


jr_044_5e0c:
    ld a, c                                       ; $5e0c: $79
    ld b, a                                       ; $5e0d: $47
    call nc, $f4d8                                ; $5e0e: $d4 $d8 $f4
    dec hl                                        ; $5e11: $2b
    dec l                                         ; $5e12: $2d
    and a                                         ; $5e13: $a7
    ldh a, [$f3]                                  ; $5e14: $f0 $f3
    db $e4                                        ; $5e16: $e4
    halt                                          ; $5e17: $76
    or h                                          ; $5e18: $b4
    dec de                                        ; $5e19: $1b
    sub e                                         ; $5e1a: $93
    ret                                           ; $5e1b: $c9


    ld [bc], a                                    ; $5e1c: $02
    ld c, l                                       ; $5e1d: $4d
    cp e                                          ; $5e1e: $bb
    ld sp, $6144                                  ; $5e1f: $31 $44 $61
    rst $28                                       ; $5e22: $ef
    ld c, a                                       ; $5e23: $4f
    ld [hl], l                                    ; $5e24: $75
    rra                                           ; $5e25: $1f
    ld a, [c]                                     ; $5e26: $f2
    ld hl, sp-$05                                 ; $5e27: $f8 $fb
    ld [hl], h                                    ; $5e29: $74
    ld c, h                                       ; $5e2a: $4c
    sbc c                                         ; $5e2b: $99
    cpl                                           ; $5e2c: $2f
    push hl                                       ; $5e2d: $e5
    ld b, l                                       ; $5e2e: $45
    ld h, $ce                                     ; $5e2f: $26 $ce
    adc a                                         ; $5e31: $8f
    cp h                                          ; $5e32: $bc
    ld e, [hl]                                    ; $5e33: $5e
    ld a, a                                       ; $5e34: $7f
    ld e, a                                       ; $5e35: $5f
    ld c, l                                       ; $5e36: $4d
    cp h                                          ; $5e37: $bc
    rst $08                                       ; $5e38: $cf
    inc a                                         ; $5e39: $3c
    ld e, c                                       ; $5e3a: $59
    ld h, b                                       ; $5e3b: $60
    ld a, [bc]                                    ; $5e3c: $0a
    add [hl]                                      ; $5e3d: $86
    inc [hl]                                      ; $5e3e: $34
    pop de                                        ; $5e3f: $d1
    ld c, h                                       ; $5e40: $4c
    db $e3                                        ; $5e41: $e3
    ld e, c                                       ; $5e42: $59
    xor b                                         ; $5e43: $a8
    ldh a, [$e5]                                  ; $5e44: $f0 $e5
    db $d3                                        ; $5e46: $d3
    sub [hl]                                      ; $5e47: $96

jr_044_5e48:
    sbc l                                         ; $5e48: $9d
    ld [hl], a                                    ; $5e49: $77
    ld b, h                                       ; $5e4a: $44
    adc l                                         ; $5e4b: $8d
    ld c, l                                       ; $5e4c: $4d
    cp a                                          ; $5e4d: $bf
    ld [bc], a                                    ; $5e4e: $02
    ld [hl], l                                    ; $5e4f: $75
    ld h, c                                       ; $5e50: $61
    push hl                                       ; $5e51: $e5
    ld h, h                                       ; $5e52: $64
    ld [c], a                                     ; $5e53: $e2
    ld b, e                                       ; $5e54: $43
    or c                                          ; $5e55: $b1
    rst $30                                       ; $5e56: $f7
    ld b, l                                       ; $5e57: $45
    ld e, l                                       ; $5e58: $5d
    inc a                                         ; $5e59: $3c
    rst $00                                       ; $5e5a: $c7
    ret z                                         ; $5e5b: $c8

    ld de, $04d8                                  ; $5e5c: $11 $d8 $04
    jp hl                                         ; $5e5f: $e9


    ld hl, sp+$4b                                 ; $5e60: $f8 $4b
    add hl, de                                    ; $5e62: $19
    sbc e                                         ; $5e63: $9b
    ld d, d                                       ; $5e64: $52
    ld h, $65                                     ; $5e65: $26 $65
    ld h, h                                       ; $5e67: $64
    ld a, [c]                                     ; $5e68: $f2
    ld h, [hl]                                    ; $5e69: $66
    xor a                                         ; $5e6a: $af
    rst $10                                       ; $5e6b: $d7
    rst $18                                       ; $5e6c: $df
    di                                            ; $5e6d: $f3
    push bc                                       ; $5e6e: $c5
    adc l                                         ; $5e6f: $8d
    ld b, h                                       ; $5e70: $44
    and $fa                                       ; $5e71: $e6 $fa
    or h                                          ; $5e73: $b4
    ld h, c                                       ; $5e74: $61
    cpl                                           ; $5e75: $2f
    inc de                                        ; $5e76: $13
    scf                                           ; $5e77: $37
    ld b, d                                       ; $5e78: $42
    sbc [hl]                                      ; $5e79: $9e
    ldh a, [$c5]                                  ; $5e7a: $f0 $c5
    ld sp, hl                                     ; $5e7c: $f9
    ld de, $94ef                                  ; $5e7d: $11 $ef $94
    ld [hl], d                                    ; $5e80: $72
    push de                                       ; $5e81: $d5
    ld b, h                                       ; $5e82: $44
    db $db                                        ; $5e83: $db
    rla                                           ; $5e84: $17
    ld a, [hl+]                                   ; $5e85: $2a
    rst $20                                       ; $5e86: $e7
    ld l, $27                                     ; $5e87: $2e $27
    pop de                                        ; $5e89: $d1
    db $ec                                        ; $5e8a: $ec
    push de                                       ; $5e8b: $d5
    ld b, h                                       ; $5e8c: $44
    ld e, l                                       ; $5e8d: $5d
    db $f4                                        ; $5e8e: $f4
    rst $08                                       ; $5e8f: $cf
    inc c                                         ; $5e90: $0c
    ld b, e                                       ; $5e91: $43
    ld a, h                                       ; $5e92: $7c
    ld h, c                                       ; $5e93: $61
    dec bc                                        ; $5e94: $0b
    ld c, b                                       ; $5e95: $48
    sbc b                                         ; $5e96: $98
    ld b, d                                       ; $5e97: $42
    inc b                                         ; $5e98: $04
    ld a, e                                       ; $5e99: $7b
    ld a, a                                       ; $5e9a: $7f
    inc a                                         ; $5e9b: $3c
    ld h, a                                       ; $5e9c: $67
    ld e, c                                       ; $5e9d: $59
    ld a, $0a                                     ; $5e9e: $3e $0a
    ld a, e                                       ; $5ea0: $7b
    inc hl                                        ; $5ea1: $23
    sbc [hl]                                      ; $5ea2: $9e
    ld e, a                                       ; $5ea3: $5f
    ret nc                                        ; $5ea4: $d0

    rst $00                                       ; $5ea5: $c7
    di                                            ; $5ea6: $f3
    ld b, d                                       ; $5ea7: $42
    ld b, d                                       ; $5ea8: $42
    db $dd                                        ; $5ea9: $dd
    ld d, a                                       ; $5eaa: $57
    inc de                                        ; $5eab: $13
    ld [hl], l                                    ; $5eac: $75
    add hl, hl                                    ; $5ead: $29
    jp $fd3c                                      ; $5eae: $c3 $3c $fd


    ld a, [bc]                                    ; $5eb1: $0a
    ld [hl], l                                    ; $5eb2: $75
    ld b, [hl]                                    ; $5eb3: $46
    rla                                           ; $5eb4: $17
    add hl, de                                    ; $5eb5: $19
    ld e, l                                       ; $5eb6: $5d
    xor b                                         ; $5eb7: $a8
    ld a, b                                       ; $5eb8: $78
    db $fc                                        ; $5eb9: $fc
    ld h, [hl]                                    ; $5eba: $66
    ei                                            ; $5ebb: $fb
    sub b                                         ; $5ebc: $90
    or e                                          ; $5ebd: $b3
    ld sp, hl                                     ; $5ebe: $f9
    inc hl                                        ; $5ebf: $23
    and e                                         ; $5ec0: $a3
    dec bc                                        ; $5ec1: $0b
    ld e, a                                       ; $5ec2: $5f
    ld d, $83                                     ; $5ec3: $16 $83
    ld [hl], $7d                                  ; $5ec5: $36 $7d
    rst $18                                       ; $5ec7: $df
    xor a                                         ; $5ec8: $af
    cp [hl]                                       ; $5ec9: $be
    xor b                                         ; $5eca: $a8
    db $f4                                        ; $5ecb: $f4
    or $d9                                        ; $5ecc: $f6 $d9
    rra                                           ; $5ece: $1f
    ld [hl], d                                    ; $5ecf: $72
    inc e                                         ; $5ed0: $1c
    and d                                         ; $5ed1: $a2
    ld l, $1d                                     ; $5ed2: $2e $1d
    db $fd                                        ; $5ed4: $fd
    jp nz, $fd63                                  ; $5ed5: $c2 $63 $fd

    ld a, [bc]                                    ; $5ed8: $0a
    db $ed                                        ; $5ed9: $ed
    db $d3                                        ; $5eda: $d3
    ld c, d                                       ; $5edb: $4a
    cp a                                          ; $5edc: $bf
    and c                                         ; $5edd: $a1
    ld c, e                                       ; $5ede: $4b
    ld b, l                                       ; $5edf: $45
    dec hl                                        ; $5ee0: $2b
    db $fd                                        ; $5ee1: $fd
    add [hl]                                      ; $5ee2: $86
    ld l, $9a                                     ; $5ee3: $2e $9a
    ld e, c                                       ; $5ee5: $59
    cp a                                          ; $5ee6: $bf
    ld [bc], a                                    ; $5ee7: $02
    ld l, l                                       ; $5ee8: $6d
    add h                                         ; $5ee9: $84
    db $fc                                        ; $5eea: $fc
    add sp, $21                                   ; $5eeb: $e8 $21
    add sp, -$05                                  ; $5eed: $e8 $fb
    ld a, $e4                                     ; $5eef: $3e $e4
    ld b, a                                       ; $5ef1: $47
    rrca                                          ; $5ef2: $0f
    ld b, c                                       ; $5ef3: $41
    rst $18                                       ; $5ef4: $df
    rst $30                                       ; $5ef5: $f7
    pop hl                                        ; $5ef6: $e1
    adc e                                         ; $5ef7: $8b
    ld a, [hl-]                                   ; $5ef8: $3a
    xor e                                         ; $5ef9: $ab
    ccf                                           ; $5efa: $3f
    ld c, h                                       ; $5efb: $4c
    sbc c                                         ; $5efc: $99
    and a                                         ; $5efd: $a7
    rst $28                                       ; $5efe: $ef
    ei                                            ; $5eff: $fb
    dec d                                         ; $5f00: $15
    ld [hl], l                                    ; $5f01: $75
    ld c, e                                       ; $5f02: $4b
    pop hl                                        ; $5f03: $e1
    cp [hl]                                       ; $5f04: $be
    rst $28                                       ; $5f05: $ef
    ld d, e                                       ; $5f06: $53
    dec de                                        ; $5f07: $1b
    ld d, [hl]                                    ; $5f08: $56
    db $dd                                        ; $5f09: $dd
    ld [$d4fa], sp                                ; $5f0a: $08 $fa $d4
    sbc [hl]                                      ; $5f0d: $9e
    db $fc                                        ; $5f0e: $fc
    or d                                          ; $5f0f: $b2
    ld b, b                                       ; $5f10: $40
    ld a, $05                                     ; $5f11: $3e $05
    jp nz, $93c7                                  ; $5f13: $c2 $c7 $93

    adc [hl]                                      ; $5f16: $8e
    ld a, [hl]                                    ; $5f17: $7e
    pop hl                                        ; $5f18: $e1
    or c                                          ; $5f19: $b1
    inc l                                         ; $5f1a: $2c
    ld l, a                                       ; $5f1b: $6f
    ei                                            ; $5f1c: $fb
    dec c                                         ; $5f1d: $0d
    ld [hl], c                                    ; $5f1e: $71

Jump_044_5f1f:
    inc hl                                        ; $5f1f: $23
    pop af                                        ; $5f20: $f1
    and c                                         ; $5f21: $a1
    cp a                                          ; $5f22: $bf
    dec e                                         ; $5f23: $1d
    sub l                                         ; $5f24: $95
    jp hl                                         ; $5f25: $e9


    db $e3                                        ; $5f26: $e3
    adc e                                         ; $5f27: $8b
    ld c, d                                       ; $5f28: $4a
    ld l, a                                       ; $5f29: $6f
    ld c, a                                       ; $5f2a: $4f
    ld a, [hl]                                    ; $5f2b: $7e
    jr jr_044_5f94                                ; $5f2c: $18 $66

    ld h, e                                       ; $5f2e: $63
    ld b, a                                       ; $5f2f: $47
    inc h                                         ; $5f30: $24
    ld a, $4f                                     ; $5f31: $3e $4f
    cp a                                          ; $5f33: $bf
    ld [bc], a                                    ; $5f34: $02
    cp [hl]                                       ; $5f35: $be
    ld l, [hl]                                    ; $5f36: $6e
    xor d                                         ; $5f37: $aa
    ld a, [bc]                                    ; $5f38: $0a
    call z, $e713                                 ; $5f39: $cc $13 $e7
    ld b, a                                       ; $5f3c: $47
    jp z, $ed85                                   ; $5f3d: $ca $85 $ed

    sbc c                                         ; $5f40: $99
    ccf                                           ; $5f41: $3f
    ld [$f752], a                                 ; $5f42: $ea $52 $f7
    ld a, b                                       ; $5f45: $78
    and h                                         ; $5f46: $a4
    and $0a                                       ; $5f47: $e6 $0a
    dec e                                         ; $5f49: $1d
    and e                                         ; $5f4a: $a3
    sbc d                                         ; $5f4b: $9a
    jr c, jr_044_5f8d                             ; $5f4c: $38 $3f

    ld a, [c]                                     ; $5f4e: $f2
    ld a, d                                       ; $5f4f: $7a
    db $fd                                        ; $5f50: $fd
    ld a, l                                       ; $5f51: $7d
    ld c, [hl]                                    ; $5f52: $4e
    jr @+$44                                      ; $5f53: $18 $42

    cp h                                          ; $5f55: $bc
    ld de, $5d44                                  ; $5f56: $11 $44 $5d
    jp z, $d072                                   ; $5f59: $ca $72 $d0

    sbc $90                                       ; $5f5c: $de $90
    ld c, a                                       ; $5f5e: $4f
    db $dd                                        ; $5f5f: $dd
    db $e3                                        ; $5f60: $e3
    sub c                                         ; $5f61: $91
    cp b                                          ; $5f62: $b8
    xor c                                         ; $5f63: $a9
    sub b                                         ; $5f64: $90
    scf                                           ; $5f65: $37
    dec sp                                        ; $5f66: $3b
    ld a, [c]                                     ; $5f67: $f2
    dec c                                         ; $5f68: $0d
    ld sp, hl                                     ; $5f69: $f9
    cp l                                          ; $5f6a: $bd
    ccf                                           ; $5f6b: $3f
    ld [hl], l                                    ; $5f6c: $75
    rrca                                          ; $5f6d: $0f
    ld l, h                                       ; $5f6e: $6c
    ld e, a                                       ; $5f6f: $5f

jr_044_5f70:
    ld [hl], e                                    ; $5f70: $73
    dec b                                         ; $5f71: $05
    xor l                                         ; $5f72: $ad
    adc a                                         ; $5f73: $8f
    ld e, [hl]                                    ; $5f74: $5e
    ld a, a                                       ; $5f75: $7f
    ld e, a                                       ; $5f76: $5f
    ld c, l                                       ; $5f77: $4d
    ld e, [hl]                                    ; $5f78: $5e
    call nc, $a21b                                ; $5f79: $d4 $1b $a2
    ld a, $be                                     ; $5f7c: $3e $be

Call_044_5f7e:
    or a                                          ; $5f7e: $b7
    ld hl, $3e8c                                  ; $5f7f: $21 $8c $3e
    xor l                                         ; $5f82: $ad
    sub d                                         ; $5f83: $92
    add [hl]                                      ; $5f84: $86
    xor d                                         ; $5f85: $aa
    sbc d                                         ; $5f86: $9a
    xor b                                         ; $5f87: $a8
    ld hl, $4f29                                  ; $5f88: $21 $29 $4f
    cp h                                          ; $5f8b: $bc
    ld l, a                                       ; $5f8c: $6f

jr_044_5f8d:
    ld a, e                                       ; $5f8d: $7b
    and d                                         ; $5f8e: $a2
    ld e, l                                       ; $5f8f: $5d
    dec a                                         ; $5f90: $3d
    ld d, c                                       ; $5f91: $51
    rra                                           ; $5f92: $1f
    ld a, [hl+]                                   ; $5f93: $2a

jr_044_5f94:
    add hl, hl                                    ; $5f94: $29
    rst $28                                       ; $5f95: $ef
    call c, Call_044_5d44                         ; $5f96: $dc $44 $5d
    jr jr_044_5f70                                ; $5f99: $18 $d5

    ld [hl-], a                                   ; $5f9b: $32
    db $fd                                        ; $5f9c: $fd
    ld a, [bc]                                    ; $5f9d: $0a
    db $ed                                        ; $5f9e: $ed
    ld a, a                                       ; $5f9f: $7f
    ld h, h                                       ; $5fa0: $64
    inc h                                         ; $5fa1: $24
    xor a                                         ; $5fa2: $af
    rst $10                                       ; $5fa3: $d7
    rst $18                                       ; $5fa4: $df
    ld d, a                                       ; $5fa5: $57

Jump_044_5fa6:
    sub e                                         ; $5fa6: $93
    push bc                                       ; $5fa7: $c5
    add [hl]                                      ; $5fa8: $86
    ld b, h                                       ; $5fa9: $44
    call $91b4                                    ; $5faa: $cd $b4 $91
    ld h, l                                       ; $5fad: $65
    ld l, $32                                     ; $5fae: $2e $32
    ld [de], a                                    ; $5fb0: $12
    dec [hl]                                      ; $5fb1: $35
    and h                                         ; $5fb2: $a4
    and c                                         ; $5fb3: $a1
    xor d                                         ; $5fb4: $aa
    ld h, $e5                                     ; $5fb5: $26 $e5
    rla                                           ; $5fb7: $17
    jr jr_044_5fdc                                ; $5fb8: $18 $22

    ld [hl], h                                    ; $5fba: $74
    rst $28                                       ; $5fbb: $ef
    adc a                                         ; $5fbc: $8f
    call nc, $851b                                ; $5fbd: $d4 $1b $85
    cp l                                          ; $5fc0: $bd
    ccf                                           ; $5fc1: $3f
    ld [hl], l                                    ; $5fc2: $75
    rrca                                          ; $5fc3: $0f
    ld l, h                                       ; $5fc4: $6c
    rra                                           ; $5fc5: $1f
    xor c                                         ; $5fc6: $a9
    scf                                           ; $5fc7: $37
    ld [$26d2], a                                 ; $5fc8: $ea $d2 $26
    push af                                       ; $5fcb: $f5
    ld a, d                                       ; $5fcc: $7a
    xor a                                         ; $5fcd: $af
    ld e, a                                       ; $5fce: $5f
    ld bc, $d0be                                  ; $5fcf: $01 $be $d0
    add sp, $31                                   ; $5fd2: $e8 $31
    xor d                                         ; $5fd4: $aa
    db $eb                                        ; $5fd5: $eb
    db $d3                                        ; $5fd6: $d3
    xor d                                         ; $5fd7: $aa
    ld b, d                                       ; $5fd8: $42
    add hl, hl                                    ; $5fd9: $29
    inc de                                        ; $5fda: $13
    ld h, a                                       ; $5fdb: $67

jr_044_5fdc:
    ld d, b                                       ; $5fdc: $50
    sub e                                         ; $5fdd: $93
    push bc                                       ; $5fde: $c5
    ld h, [hl]                                    ; $5fdf: $66
    or c                                          ; $5fe0: $b1
    sbc e                                         ; $5fe1: $9b
    jr c, jr_044_6023                             ; $5fe2: $38 $3f

    ld [c], a                                     ; $5fe4: $e2
    ld l, $0b                                     ; $5fe5: $2e $0b
    and h                                         ; $5fe7: $a4
    ret nz                                        ; $5fe8: $c0

    ret nz                                        ; $5fe9: $c0

    adc b                                         ; $5fea: $88
    and d                                         ; $5feb: $a2
    ld [$9b39], sp                                ; $5fec: $08 $39 $9b
    and c                                         ; $5fef: $a1
    bit 4, d                                      ; $5ff0: $cb $62
    ld d, a                                       ; $5ff2: $57
    ld a, l                                       ; $5ff3: $7d

jr_044_5ff4:
    call nc, $bc85                                ; $5ff4: $d4 $85 $bc
    reti                                          ; $5ff7: $d9


    ld l, a                                       ; $5ff8: $6f
    adc b                                         ; $5ff9: $88
    cp d                                          ; $5ffa: $ba
    ld [$721d], sp                                ; $5ffb: $08 $1d $72
    ld [hl], d                                    ; $5ffe: $72
    dec sp                                        ; $5fff: $3b
    ld b, $6d                                     ; $6000: $06 $6d
    or $57                                        ; $6002: $f6 $57
    db $10                                        ; $6004: $10
    sbc [hl]                                      ; $6005: $9e
    jr z, jr_044_5ff4                             ; $6006: $28 $ec

    db $fd                                        ; $6008: $fd
    add hl, hl                                    ; $6009: $29
    adc [hl]                                      ; $600a: $8e
    adc $7e                                       ; $600b: $ce $7e
    ld e, l                                       ; $600d: $5d
    ldh [$af], a                                  ; $600e: $e0 $af
    or l                                          ; $6010: $b5
    ld [bc], a                                    ; $6011: $02
    dec l                                         ; $6012: $2d
    add a                                         ; $6013: $87
    ld c, d                                       ; $6014: $4a
    ld c, b                                       ; $6015: $48
    ret c                                         ; $6016: $d8

    ld h, h                                       ; $6017: $64
    add c                                         ; $6018: $81
    ld [hl], e                                    ; $6019: $73
    rst $08                                       ; $601a: $cf
    inc de                                        ; $601b: $13
    rst $20                                       ; $601c: $e7
    ld b, a                                       ; $601d: $47
    ld e, [hl]                                    ; $601e: $5e
    xor a                                         ; $601f: $af
    cp a                                          ; $6020: $bf

jr_044_6021:
    sub a                                         ; $6021: $97
    adc c                                         ; $6022: $89

jr_044_6023:
    cp $45                                        ; $6023: $fe $45
    dec e                                         ; $6025: $1d
    ld c, a                                       ; $6026: $4f
    ld [hl], $b2                                  ; $6027: $36 $b2
    ld d, b                                       ; $6029: $50
    add hl, sp                                    ; $602a: $39
    ld [c], a                                     ; $602b: $e2
    adc l                                         ; $602c: $8d
    ld e, h                                       ; $602d: $5c
    call nc, $ca85                                ; $602e: $d4 $85 $ca
    add a                                         ; $6031: $87
    sbc h                                         ; $6032: $9c
    call $a7df                                    ; $6033: $cd $df $a7
    or $e4                                        ; $6036: $f6 $e4
    push bc                                       ; $6038: $c5
    adc l                                         ; $6039: $8d
    ld a, l                                       ; $603a: $7d
    ld [hl], $e2                                  ; $603b: $36 $e2
    sbc [hl]                                      ; $603d: $9e
    ld hl, $49c8                                  ; $603e: $21 $c8 $49
    xor b                                         ; $6041: $a8
    rst $10                                       ; $6042: $d7
    ld a, e                                       ; $6043: $7b
    xor $a6                                       ; $6044: $ee $a6
    ld e, a                                       ; $6046: $5f
    ld bc, $41ad                                  ; $6047: $01 $ad $41
    and b                                         ; $604a: $a0
    adc e                                         ; $604b: $8b
    rst $30                                       ; $604c: $f7
    db $e4                                        ; $604d: $e4
    ld [hl], a                                    ; $604e: $77
    dec b                                         ; $604f: $05
    ld h, c                                       ; $6050: $61
    db $e4                                        ; $6051: $e4
    push bc                                       ; $6052: $c5
    ld sp, hl                                     ; $6053: $f9
    ld de, $fa5f                                  ; $6054: $11 $5f $fa
    ld l, c                                       ; $6057: $69
    rst $38                                       ; $6058: $ff
    ld d, c                                       ; $6059: $51
    cp b                                          ; $605a: $b8
    sbc [hl]                                      ; $605b: $9e
    call nc, $337e                                ; $605c: $d4 $7e $33
    ld [bc], a                                    ; $605f: $02
    xor c                                         ; $6060: $a9
    dec sp                                        ; $6061: $3b
    call z, $94b0                                 ; $6062: $cc $b0 $94
    ld c, e                                       ; $6065: $4b
    adc l                                         ; $6066: $8d
    jr z, jr_044_6021                             ; $6067: $28 $b8

    dec hl                                        ; $6069: $2b
    sub e                                         ; $606a: $93
    rrca                                          ; $606b: $0f
    sub l                                         ; $606c: $95
    or e                                          ; $606d: $b3
    ld [hl], d                                    ; $606e: $72
    ld sp, hl                                     ; $606f: $f9
    ret z                                         ; $6070: $c8

    ld e, h                                       ; $6071: $5c
    sbc a                                         ; $6072: $9f
    adc [hl]                                      ; $6073: $8e
    xor [hl]                                      ; $6074: $ae
    ld a, d                                       ; $6075: $7a
    ld bc, $3e23                                  ; $6076: $01 $23 $3e
    db $f4                                        ; $6079: $f4
    add d                                         ; $607a: $82
    ld a, h                                       ; $607b: $7c
    ld e, c                                       ; $607c: $59
    ret nz                                        ; $607d: $c0

    db $fc                                        ; $607e: $fc
    adc h                                         ; $607f: $8c
    jr c, jr_044_60c1                             ; $6080: $38 $3f

    ld a, [c]                                     ; $6082: $f2
    ld h, [hl]                                    ; $6083: $66
    ld b, a                                       ; $6084: $47
    ld e, [hl]                                    ; $6085: $5e
    ld l, d                                       ; $6086: $6a
    cp a                                          ; $6087: $bf
    ld h, [hl]                                    ; $6088: $66
    and a                                         ; $6089: $a7
    ld a, [$11b4]                                 ; $608a: $fa $b4 $11
    add hl, de                                    ; $608d: $19
    adc c                                         ; $608e: $89
    add e                                         ; $608f: $83
    cp c                                          ; $6090: $b9
    ld h, a                                       ; $6091: $67
    ld b, h                                       ; $6092: $44
    ld e, l                                       ; $6093: $5d
    adc d                                         ; $6094: $8a
    ei                                            ; $6095: $fb
    ld h, l                                       ; $6096: $65
    ld a, c                                       ; $6097: $79
    ld b, e                                       ; $6098: $43
    rra                                           ; $6099: $1f
    rst $18                                       ; $609a: $df
    scf                                           ; $609b: $37
    add sp, -$0b                                  ; $609c: $e8 $f5
    ret z                                         ; $609e: $c8

    ld [bc], a                                    ; $609f: $02
    ld c, l                                       ; $60a0: $4d
    cp e                                          ; $60a1: $bb
    ret                                           ; $60a2: $c9


    ld [bc], a                                    ; $60a3: $02
    dec bc                                        ; $60a4: $0b
    add hl, sp                                    ; $60a5: $39
    rst $10                                       ; $60a6: $d7
    xor a                                         ; $60a7: $af
    xor l                                         ; $60a8: $ad
    pop de                                        ; $60a9: $d1
    sub c                                         ; $60aa: $91
    cpl                                           ; $60ab: $2f
    or b                                          ; $60ac: $b0
    rst $28                                       ; $60ad: $ef
    db $e3                                        ; $60ae: $e3
    ld a, e                                       ; $60af: $7b
    ld h, b                                       ; $60b0: $60
    ld h, h                                       ; $60b1: $64
    or c                                          ; $60b2: $b1
    ld de, $2cbe                                  ; $60b3: $11 $be $2c
    or b                                          ; $60b6: $b0
    ld d, b                                       ; $60b7: $50
    ld sp, hl                                     ; $60b8: $f9
    add sp, -$4f                                  ; $60b9: $e8 $b1
    rst $30                                       ; $60bb: $f7
    ld h, a                                       ; $60bc: $67
    ld sp, hl                                     ; $60bd: $f9
    ld d, d                                       ; $60be: $52
    and b                                         ; $60bf: $a0
    ld l, c                                       ; $60c0: $69

jr_044_60c1:
    rst $30                                       ; $60c1: $f7
    db $fc                                        ; $60c2: $fc
    ld de, $fdec                                  ; $60c3: $11 $ec $fd
    pop af                                        ; $60c6: $f1
    adc [hl]                                      ; $60c7: $8e
    and c                                         ; $60c8: $a1
    ldh a, [$d7]                                  ; $60c9: $f0 $d7
    ld e, d                                       ; $60cb: $5a
    ld bc, $4f6d                                  ; $60cc: $01 $6d $4f
    ld c, [hl]                                    ; $60cf: $4e
    ld [c], a                                     ; $60d0: $e2
    ld b, e                                       ; $60d1: $43
    or c                                          ; $60d2: $b1
    rst $30                                       ; $60d3: $f7
    rst $00                                       ; $60d4: $c7
    dec sp                                        ; $60d5: $3b
    add [hl]                                      ; $60d6: $86
    jp nz, Jump_000_191f                          ; $60d7: $c2 $1f $19

    adc c                                         ; $60da: $89
    cp e                                          ; $60db: $bb
    ld d, h                                       ; $60dc: $54
    ld h, b                                       ; $60dd: $60
    sbc [hl]                                      ; $60de: $9e
    inc l                                         ; $60df: $2c
    rlca                                          ; $60e0: $07
    add l                                         ; $60e1: $85
    sbc d                                         ; $60e2: $9a
    dec hl                                        ; $60e3: $2b
    sbc [hl]                                      ; $60e4: $9e
    sub a                                         ; $60e5: $97
    rla                                           ; $60e6: $17
    ld h, l                                       ; $60e7: $65
    ld a, a                                       ; $60e8: $7f
    cp d                                          ; $60e9: $ba
    ret nz                                        ; $60ea: $c0

    cp c                                          ; $60eb: $b9
    xor c                                         ; $60ec: $a9
    and b                                         ; $60ed: $a0
    ld c, e                                       ; $60ee: $4b
    ld b, c                                       ; $60ef: $41
    ld c, b                                       ; $60f0: $48
    ld a, [hl-]                                   ; $60f1: $3a
    rla                                           ; $60f2: $17
    ld b, e                                       ; $60f3: $43
    pop hl                                        ; $60f4: $e1
    scf                                           ; $60f5: $37
    db $e4                                        ; $60f6: $e4
    ld d, e                                       ; $60f7: $53
    ld a, e                                       ; $60f8: $7b
    or h                                          ; $60f9: $b4
    xor $de                                       ; $60fa: $ee $de
    cp b                                          ; $60fc: $b8
    call nc, Call_044_5b4c                        ; $60fd: $d4 $4c $5b
    db $f4                                        ; $6100: $f4
    ld c, l                                       ; $6101: $4d
    dec a                                         ; $6102: $3d
    inc hl                                        ; $6103: $23
    cp e                                          ; $6104: $bb
    cp [hl]                                       ; $6105: $be
    ld a, $1d                                     ; $6106: $3e $1d
    ld d, d                                       ; $6108: $52
    db $ec                                        ; $6109: $ec
    db $fd                                        ; $610a: $fd
    or c                                          ; $610b: $b1
    pop de                                        ; $610c: $d1
    ld a, a                                       ; $610d: $7f
    sbc $34                                       ; $610e: $de $34
    ld [$7f3f], sp                                ; $6110: $08 $3f $7f
    sbc h                                         ; $6113: $9c
    rra                                           ; $6114: $1f
    reti                                          ; $6115: $d9


    call nc, Call_044_73b9                        ; $6116: $d4 $b9 $73
    sbc a                                         ; $6119: $9f
    dec b                                         ; $611a: $05
    ld d, $86                                     ; $611b: $16 $86
    reti                                          ; $611d: $d9


    and a                                         ; $611e: $a7
    ld b, [hl]                                    ; $611f: $46
    jp z, Jump_044_468b                           ; $6120: $ca $8b $46

    ld de, $a175                                  ; $6123: $11 $75 $a1
    ld [hl], d                                    ; $6126: $72
    ld l, [hl]                                    ; $6127: $6e
    ld c, h                                       ; $6128: $4c

jr_044_6129:
    and [hl]                                      ; $6129: $a6
    ld c, a                                       ; $612a: $4f
    ld a, e                                       ; $612b: $7b
    push af                                       ; $612c: $f5
    ld b, h                                       ; $612d: $44
    ld b, c                                       ; $612e: $41
    ret c                                         ; $612f: $d8

    ld h, $ce                                     ; $6130: $26 $ce
    and e                                         ; $6132: $a3
    ld b, [hl]                                    ; $6133: $46
    xor b                                         ; $6134: $a8
    add h                                         ; $6135: $84
    jp z, $31b9                                   ; $6136: $ca $b9 $31

    sbc c                                         ; $6139: $99
    ld a, b                                       ; $613a: $78
    ld h, c                                       ; $613b: $61
    rst $00                                       ; $613c: $c7
    db $d3                                        ; $613d: $d3
    and a                                         ; $613e: $a7
    adc $5c                                       ; $613f: $ce $5c
    inc e                                         ; $6141: $1c
    call z, Call_044_61f9                         ; $6142: $cc $f9 $61
    xor b                                         ; $6145: $a8
    ld h, $ea                                     ; $6146: $26 $ea
    ld d, d                                       ; $6148: $52
    ld a, [hl]                                    ; $6149: $7e
    sub e                                         ; $614a: $93
    ld l, a                                       ; $614b: $6f
    ld a, e                                       ; $614c: $7b
    ld [hl], h                                    ; $614d: $74
    ld e, c                                       ; $614e: $59
    add [hl]                                      ; $614f: $86
    add h                                         ; $6150: $84
    ld a, l                                       ; $6151: $7d
    db $f4                                        ; $6152: $f4
    jr z, jr_044_61d1                             ; $6153: $28 $7c

    rst $18                                       ; $6155: $df
    xor a                                         ; $6156: $af
    ld l, l                                       ; $6157: $6d
    and h                                         ; $6158: $a4
    jr nz, jr_044_6129                            ; $6159: $20 $ce

    ld a, a                                       ; $615b: $7f
    pop af                                        ; $615c: $f1
    ld a, a                                       ; $615d: $7f
    cp h                                          ; $615e: $bc
    or b                                          ; $615f: $b0
    db $e3                                        ; $6160: $e3
    ret                                           ; $6161: $c9


    or $a0                                        ; $6162: $f6 $a0
    ld [hl], d                                    ; $6164: $72
    ld l, [hl]                                    ; $6165: $6e
    ld c, h                                       ; $6166: $4c
    ld h, $ee                                     ; $6167: $26 $ee
    jp nz, $e436                                  ; $6169: $c2 $36 $e4

    ld h, a                                       ; $616c: $67
    or c                                          ; $616d: $b1
    xor e                                         ; $616e: $ab
    ld a, $9b                                     ; $616f: $3e $9b
    ld e, [hl]                                    ; $6171: $5e
    xor l                                         ; $6172: $ad
    dec d                                         ; $6173: $15
    ld [hl], l                                    ; $6174: $75
    ld c, $c2                                     ; $6175: $0e $c2
    adc b                                         ; $6177: $88
    di                                            ; $6178: $f3
    inc hl                                        ; $6179: $23
    db $e4                                        ; $617a: $e4
    sub c                                         ; $617b: $91
    adc b                                         ; $617c: $88
    ld h, b                                       ; $617d: $60
    rst $28                                       ; $617e: $ef
    adc a                                         ; $617f: $8f
    ld [hl], a                                    ; $6180: $77
    inc c                                         ; $6181: $0c
    add l                                         ; $6182: $85
    ccf                                           ; $6183: $3f
    dec bc                                        ; $6184: $0b
    xor l                                         ; $6185: $ad
    ccf                                           ; $6186: $3f
    sbc $37                                       ; $6187: $de $37
    ld a, [c]                                     ; $6189: $f2
    and d                                         ; $618a: $a2
    or b                                          ; $618b: $b0
    ld d, e                                       ; $618c: $53
    db $fd                                        ; $618d: $fd
    add [hl]                                      ; $618e: $86
    ld l, $05                                     ; $618f: $2e $05
    add hl, hl                                    ; $6191: $29
    rlca                                          ; $6192: $07
    ld b, [hl]                                    ; $6193: $46
    call c, $2a48                                 ; $6194: $dc $48 $2a
    ld h, h                                       ; $6197: $64
    ld [c], a                                     ; $6198: $e2
    ld b, [hl]                                    ; $6199: $46
    jp nc, Jump_044_7fb1                          ; $619a: $d2 $b1 $7f

    xor h                                         ; $619d: $ac
    ld c, a                                       ; $619e: $4f
    sbc l                                         ; $619f: $9d
    sub c                                         ; $61a0: $91
    db $ec                                        ; $61a1: $ec
    cpl                                           ; $61a2: $2f
    xor $9e                                       ; $61a3: $ee $9e
    sub c                                         ; $61a5: $91
    ld [$b72f], a                                 ; $61a6: $ea $2f $b7
    ld d, e                                       ; $61a9: $53
    jr nz, @+$7e                                  ; $61aa: $20 $7c

    or b                                          ; $61ac: $b0
    jp hl                                         ; $61ad: $e9


    db $e3                                        ; $61ae: $e3
    ld a, c                                       ; $61af: $79
    ld d, c                                       ; $61b0: $51
    ld b, a                                       ; $61b1: $47
    sbc [hl]                                      ; $61b2: $9e
    add d                                         ; $61b3: $82
    and c                                         ; $61b4: $a1
    sbc d                                         ; $61b5: $9a
    sbc h                                         ; $61b6: $9c
    ld b, h                                       ; $61b7: $44
    ld d, c                                       ; $61b8: $51
    ld b, h                                       ; $61b9: $44
    inc sp                                        ; $61ba: $33
    cp d                                          ; $61bb: $ba
    inc l                                         ; $61bc: $2c
    rla                                           ; $61bd: $17
    db $e4                                        ; $61be: $e4
    db $e4                                        ; $61bf: $e4
    adc b                                         ; $61c0: $88
    rlca                                          ; $61c1: $07
    ld b, e                                       ; $61c2: $43
    dec [hl]                                      ; $61c3: $35
    reti                                          ; $61c4: $d9


    adc b                                         ; $61c5: $88
    sbc l                                         ; $61c6: $9d
    add e                                         ; $61c7: $83
    add hl, sp                                    ; $61c8: $39
    ccf                                           ; $61c9: $3f
    ld a, [$be15]                                 ; $61ca: $fa $15 $be
    adc b                                         ; $61cd: $88
    ld [bc], a                                    ; $61ce: $02
    add hl, sp                                    ; $61cf: $39
    ld a, c                                       ; $61d0: $79

jr_044_61d1:
    ld d, c                                       ; $61d1: $51
    ld l, a                                       ; $61d2: $6f
    ret z                                         ; $61d3: $c8

    xor [hl]                                      ; $61d4: $ae
    cpl                                           ; $61d5: $2f
    ld a, [bc]                                    ; $61d6: $0a
    jp nz, $ba36                                  ; $61d7: $c2 $36 $ba

    call c, Call_000_1c84                         ; $61da: $dc $84 $1c
    ld l, l                                       ; $61dd: $6d
    rst $18                                       ; $61de: $df
    and h                                         ; $61df: $a4
    ld h, e                                       ; $61e0: $63
    rst $38                                       ; $61e1: $ff
    ld e, b                                       ; $61e2: $58
    cp a                                          ; $61e3: $bf
    ld [bc], a                                    ; $61e4: $02
    xor l                                         ; $61e5: $ad
    ld a, e                                       ; $61e6: $7b
    cp h                                          ; $61e7: $bc
    ld [hl], e                                    ; $61e8: $73
    ld h, e                                       ; $61e9: $63
    ld l, d                                       ; $61ea: $6a
    ld a, [$bab4]                                 ; $61eb: $fa $b4 $ba
    rst $30                                       ; $61ee: $f7
    ret c                                         ; $61ef: $d8

    rst $20                                       ; $61f0: $e7
    ld b, [hl]                                    ; $61f1: $46
    sub a                                         ; $61f2: $97
    jp c, $466f                                   ; $61f3: $da $6f $46

    jr nz, jr_044_6240                            ; $61f6: $20 $48

    ld l, l                                       ; $61f8: $6d

Call_044_61f9:
    ld e, b                                       ; $61f9: $58
    ld [hl], l                                    ; $61fa: $75
    inc hl                                        ; $61fb: $23
    ret z                                         ; $61fc: $c8

    adc e                                         ; $61fd: $8b
    ld [hl-], a                                   ; $61fe: $32
    ld d, h                                       ; $61ff: $54
    inc de                                        ; $6200: $13
    push af                                       ; $6201: $f5
    and c                                         ; $6202: $a1
    ld a, [c]                                     ; $6203: $f2
    ld e, c                                       ; $6204: $59
    sbc $18                                       ; $6205: $de $18
    ld a, l                                       ; $6207: $7d
    jp c, $edff                                   ; $6208: $da $ff $ed

    dec e                                         ; $620b: $1d
    ld [bc], a                                    ; $620c: $02
    cp d                                          ; $620d: $ba
    jr nc, jr_044_625d                            ; $620e: $30 $4d

    pop hl                                        ; $6210: $e1
    or a                                          ; $6211: $b7
    cp a                                          ; $6212: $bf
    cp b                                          ; $6213: $b8
    sub c                                         ; $6214: $91
    call nc, Call_044_7901                        ; $6215: $d4 $01 $79
    ld a, e                                       ; $6218: $7b
    inc hl                                        ; $6219: $23
    ld c, b                                       ; $621a: $48
    rst $00                                       ; $621b: $c7
    cp $b1                                        ; $621c: $fe $b1
    ld a, $be                                     ; $621e: $3e $be
    adc b                                         ; $6220: $88
    rrca                                          ; $6221: $0f
    db $fd                                        ; $6222: $fd
    db $ed                                        ; $6223: $ed
    xor b                                         ; $6224: $a8
    ld c, h                                       ; $6225: $4c
    jp z, Jump_044_6d85                           ; $6226: $ca $85 $6d

    ret z                                         ; $6229: $c8

    rst $08                                       ; $622a: $cf
    ld c, c                                       ; $622b: $49
    call nc, $bd79                                ; $622c: $d4 $79 $bd
    rst $20                                       ; $622f: $e7
    ld h, [hl]                                    ; $6230: $66
    ld [hl], e                                    ; $6231: $73
    dec a                                         ; $6232: $3d
    cp d                                          ; $6233: $ba
    ld d, h                                       ; $6234: $54
    cpl                                           ; $6235: $2f
    ld [$b0a2], a                                 ; $6236: $ea $a2 $b0
    scf                                           ; $6239: $37
    ld d, d                                       ; $623a: $52
    call c, $df09                                 ; $623b: $dc $09 $df
    sbc $88                                       ; $623e: $de $88

jr_044_6240:
    ld c, l                                       ; $6240: $4d
    add hl, hl                                    ; $6241: $29
    adc b                                         ; $6242: $88
    dec de                                        ; $6243: $1b
    ret                                           ; $6244: $c9


    cp $14                                        ; $6245: $fe $14
    ld a, [$bfd1]                                 ; $6247: $fa $d1 $bf
    ld [hl], e                                    ; $624a: $73
    ld a, [hl]                                    ; $624b: $7e
    jr nc, jr_044_62cd                            ; $624c: $30 $7f

jr_044_624e:
    xor d                                         ; $624e: $aa
    rst $10                                       ; $624f: $d7
    adc $7d                                       ; $6250: $ce $7d
    cp a                                          ; $6252: $bf
    ld [bc], a                                    ; $6253: $02
    sbc [hl]                                      ; $6254: $9e
    jr nc, jr_044_624e                            ; $6255: $30 $f7

    ld d, c                                       ; $6257: $51
    sub a                                         ; $6258: $97
    jp nz, $d56f                                  ; $6259: $c2 $6f $d5

    add l                                         ; $625c: $85

jr_044_625d:
    inc a                                         ; $625d: $3c
    ld [hl], a                                    ; $625e: $77
    ld [hl-], a                                   ; $625f: $32
    cp d                                          ; $6260: $ba
    call nc, $337e                                ; $6261: $d4 $7e $33
    ld [bc], a                                    ; $6264: $02
    ld a, l                                       ; $6265: $7d

jr_044_6266:
    ld a, [hl-]                                   ; $6266: $3a
    and h                                         ; $6267: $a4
    jr z, jr_044_6266                             ; $6268: $28 $fc

    pop af                                        ; $626a: $f1
    adc [hl]                                      ; $626b: $8e
    and c                                         ; $626c: $a1
    ldh a, [$a7]                                  ; $626d: $f0 $a7
    ld b, [hl]                                    ; $626f: $46
    ld d, $d8                                     ; $6270: $16 $d8
    cp c                                          ; $6272: $b9
    reti                                          ; $6273: $d9


    ld d, e                                       ; $6274: $53
    cp [hl]                                       ; $6275: $be
    ld e, a                                       ; $6276: $5f
    ld bc, $fe9e                                  ; $6277: $01 $9e $fe
    ld c, e                                       ; $627a: $4b
    adc l                                         ; $627b: $8d
    db $ec                                        ; $627c: $ec
    ld a, d                                       ; $627d: $7a
    ld l, d                                       ; $627e: $6a
    and l                                         ; $627f: $a5
    ld d, l                                       ; $6280: $55
    cp a                                          ; $6281: $bf
    ld l, $05                                     ; $6282: $2e $05
    rla                                           ; $6284: $17
    and [hl]                                      ; $6285: $a6
    db $fd                                        ; $6286: $fd

Call_044_6287:
    ld a, [bc]                                    ; $6287: $0a
    xor l                                         ; $6288: $ad
    pop de                                        ; $6289: $d1
    sub c                                         ; $628a: $91
    ld c, a                                       ; $628b: $4f
    add c                                         ; $628c: $81
    ld a, l                                       ; $628d: $7d
    ld a, $0c                                     ; $628e: $3e $0c
    ld e, l                                       ; $6290: $5d
    ld l, d                                       ; $6291: $6a
    cp a                                          ; $6292: $bf
    ld h, [hl]                                    ; $6293: $66
    and a                                         ; $6294: $a7
    ld a, [$1d15]                                 ; $6295: $fa $15 $1d
    ld e, a                                       ; $6298: $5f
    ld d, $43                                     ; $6299: $16 $43
    add c                                         ; $629b: $81
    ldh a, [$a4]                                  ; $629c: $f0 $a4
    or $9b                                        ; $629e: $f6 $9b
    ld de, $dd48                                  ; $62a0: $11 $48 $dd
    ld h, c                                       ; $62a3: $61
    add [hl]                                      ; $62a4: $86
    dec b                                         ; $62a5: $05
    xor c                                         ; $62a6: $a9
    dec c                                         ; $62a7: $0d
    xor e                                         ; $62a8: $ab
    ld l, [hl]                                    ; $62a9: $6e
    inc b                                         ; $62aa: $04
    ld l, c                                       ; $62ab: $69
    bit 3, [hl]                                   ; $62ac: $cb $5e
    inc [hl]                                      ; $62ae: $34
    ld e, b                                       ; $62af: $58
    rra                                           ; $62b0: $1f
    ld e, a                                       ; $62b1: $5f
    and [hl]                                      ; $62b2: $a6
    ld [$265e], a                                 ; $62b3: $ea $5e $26
    add l                                         ; $62b6: $85
    and $f7                                       ; $62b7: $e6 $f7
    cp $14                                        ; $62b9: $fe $14
    ld b, a                                       ; $62bb: $47
    ld h, a                                       ; $62bc: $67
    ld a, a                                       ; $62bd: $7f
    sbc a                                         ; $62be: $9f
    ld [hl], $e2                                  ; $62bf: $36 $e2
    ld b, e                                       ; $62c1: $43
    ld d, c                                       ; $62c2: $51
    ld a, b                                       ; $62c3: $78

jr_044_62c4:
    ld d, d                                       ; $62c4: $52
    inc hl                                        ; $62c5: $23
    sbc [hl]                                      ; $62c6: $9e
    inc hl                                        ; $62c7: $23
    cpl                                           ; $62c8: $2f
    ld a, l                                       ; $62c9: $7d
    ld e, d                                       ; $62ca: $5a
    ld c, $95                                     ; $62cb: $0e $95

jr_044_62cd:
    jr c, jr_044_62d7                             ; $62cd: $38 $08

    ccf                                           ; $62cf: $3f
    or l                                          ; $62d0: $b5
    jp hl                                         ; $62d1: $e9


    ld d, a                                       ; $62d2: $57
    db $ed                                        ; $62d3: $ed
    ld a, c                                       ; $62d4: $79
    inc a                                         ; $62d5: $3c
    add hl, bc                                    ; $62d6: $09

jr_044_62d7:
    ld a, [c]                                     ; $62d7: $f2
    xor e                                         ; $62d8: $ab
    adc c                                         ; $62d9: $89
    inc c                                         ; $62da: $0c
    ccf                                           ; $62db: $3f
    ld c, a                                       ; $62dc: $4f
    cp a                                          ; $62dd: $bf
    ld [bc], a                                    ; $62de: $02
    sbc [hl]                                      ; $62df: $9e
    ld e, $35                                     ; $62e0: $1e $35
    ld [hl], d                                    ; $62e2: $72
    ld [de], a                                    ; $62e3: $12
    db $ed                                        ; $62e4: $ed
    ld l, h                                       ; $62e5: $6c
    ld b, d                                       ; $62e6: $42
    dec h                                         ; $62e7: $25
    ld d, h                                       ; $62e8: $54
    adc $8d                                       ; $62e9: $ce $8d
    ret                                           ; $62eb: $c9


    call nz, Call_000_3b0b                        ; $62ec: $c4 $0b $3b
    sbc [hl]                                      ; $62ef: $9e
    ld a, $b5                                     ; $62f0: $3e $b5
    rst $38                                       ; $62f2: $ff
    ld b, d                                       ; $62f3: $42
    ld e, [hl]                                    ; $62f4: $5e
    pop hl                                        ; $62f5: $e1
    adc c                                         ; $62f6: $89
    rrca                                          ; $62f7: $0f
    db $fd                                        ; $62f8: $fd
    db $ed                                        ; $62f9: $ed
    and [hl]                                      ; $62fa: $a6
    ld a, h                                       ; $62fb: $7c
    call nc, $b0a5                                ; $62fc: $d4 $a5 $b0
    cp l                                          ; $62ff: $bd
    ld c, h                                       ; $6300: $4c
    xor l                                         ; $6301: $ad
    dec d                                         ; $6302: $15
    cp [hl]                                       ; $6303: $be
    ld l, h                                       ; $6304: $6c
    cpl                                           ; $6305: $2f
    ld e, a                                       ; $6306: $5f
    ld b, c                                       ; $6307: $41
    jr jr_044_62c4                                ; $6308: $18 $ba

    or h                                          ; $630a: $b4
    rst $38                                       ; $630b: $ff
    add $48                                       ; $630c: $c6 $48
    adc l                                         ; $630e: $8d
    ld d, h                                       ; $630f: $54
    or e                                          ; $6310: $b3
    ld a, c                                       ; $6311: $79
    or d                                          ; $6312: $b2
    ld l, c                                       ; $6313: $69
    ld [hl], l                                    ; $6314: $75
    ld [hl-], a                                   ; $6315: $32
    ld h, l                                       ; $6316: $65
    ld d, d                                       ; $6317: $52
    ld hl, sp+$65                                 ; $6318: $f8 $65
    sbc b                                         ; $631a: $98
    pop de                                        ; $631b: $d1
    xor a                                         ; $631c: $af
    ld l, l                                       ; $631d: $6d
    dec bc                                        ; $631e: $0b
    ld b, e                                       ; $631f: $43
    inc d                                         ; $6320: $14
    ret z                                         ; $6321: $c8

    adc c                                         ; $6322: $89
    rrca                                          ; $6323: $0f
    db $fd                                        ; $6324: $fd
    db $ed                                        ; $6325: $ed
    and [hl]                                      ; $6326: $a6
    ld a, h                                       ; $6327: $7c
    call nc, $b0a5                                ; $6328: $d4 $a5 $b0
    cp l                                          ; $632b: $bd
    ld c, h                                       ; $632c: $4c
    sub [hl]                                      ; $632d: $96
    ld l, e                                       ; $632e: $6b

Jump_044_632f:
    jr nz, jr_044_633d                            ; $632f: $20 $0c

    or e                                          ; $6331: $b3
    rrca                                          ; $6332: $0f
    jp $fbec                                      ; $6333: $c3 $ec $fb


    dec d                                         ; $6336: $15
    db $ed                                        ; $6337: $ed
    ld a, l                                       ; $6338: $7d

jr_044_6339:
    cp h                                          ; $6339: $bc
    ld h, e                                       ; $633a: $63
    jr z, jr_044_6339                             ; $633b: $28 $fc

jr_044_633d:
    sub c                                         ; $633d: $91
    cpl                                           ; $633e: $2f
    ld l, [hl]                                    ; $633f: $6e
    ld b, h                                       ; $6340: $44
    ld hl, $6cd5                                  ; $6341: $21 $d5 $6c
    cp [hl]                                       ; $6344: $be
    inc d                                         ; $6345: $14
    ld l, b                                       ; $6346: $68
    ld b, $be                                     ; $6347: $06 $be
    ld a, [hl]                                    ; $6349: $7e
    dec b                                         ; $634a: $05
    ld l, l                                       ; $634b: $6d
    add h                                         ; $634c: $84
    ld l, c                                       ; $634d: $69
    ld h, h                                       ; $634e: $64
    inc h                                         ; $634f: $24
    xor $f2                                       ; $6350: $ee $f2
    ld b, a                                       ; $6352: $47
    ld sp, hl                                     ; $6353: $f9
    ld [c], a                                     ; $6354: $e2
    ld h, b                                       ; $6355: $60
    inc a                                         ; $6356: $3c
    ld sp, hl                                     ; $6357: $f9
    inc d                                         ; $6358: $14
    ld [de], a                                    ; $6359: $12
    ei                                            ; $635a: $fb
    ld l, l                                       ; $635b: $6d
    ld e, a                                       ; $635c: $5f
    call $be15                                    ; $635d: $cd $15 $be
    cp a                                          ; $6360: $bf
    ld c, c                                       ; $6361: $49
    add sp, $52                                   ; $6362: $e8 $52
    ei                                            ; $6364: $fb
    dec [hl]                                      ; $6365: $35
    dec sp                                        ; $6366: $3b
    push de                                       ; $6367: $d5
    xor a                                         ; $6368: $af
    ld l, l                                       ; $6369: $6d
    ld hl, sp+$6f                                 ; $636a: $f8 $6f
    rst $10                                       ; $636c: $d7
    and e                                         ; $636d: $a3
    adc e                                         ; $636e: $8b
    rst $20                                       ; $636f: $e7
    sub a                                         ; $6370: $97
    ld a, [c]                                     ; $6371: $f2
    and d                                         ; $6372: $a2
    ld l, h                                       ; $6373: $6c
    ld a, [$9ed4]                                 ; $6374: $fa $d4 $9e
    db $fc                                        ; $6377: $fc
    or d                                          ; $6378: $b2
    ld b, b                                       ; $6379: $40
    ld a, $de                                     ; $637a: $3e $de
    ld h, a                                       ; $637c: $67
    sbc [hl]                                      ; $637d: $9e
    db $ec                                        ; $637e: $ec
    ld c, a                                       ; $637f: $4f
    ld h, c                                       ; $6380: $61
    sub h                                         ; $6381: $94
    ld a, [c]                                     ; $6382: $f2
    ld d, c                                       ; $6383: $51
    ld d, e                                       ; $6384: $53
    cp l                                          ; $6385: $bd
    xor b                                         ; $6386: $a8
    rst $08                                       ; $6387: $cf
    rst $00                                       ; $6388: $c7
    ld [hl], e                                    ; $6389: $73
    db $e4                                        ; $638a: $e4
    and l                                         ; $638b: $a5
    push bc                                       ; $638c: $c5
    ld hl, sp-$01                                 ; $638d: $f8 $ff
    ld d, d                                       ; $638f: $52
    sbc l                                         ; $6390: $9d
    ei                                            ; $6391: $fb
    sub b                                         ; $6392: $90
    ld d, a                                       ; $6393: $57
    ld a, b                                       ; $6394: $78
    ld [c], a                                     ; $6395: $e2
    ld b, e                                       ; $6396: $43
    ld a, a                                       ; $6397: $7f
    cp e                                          ; $6398: $bb
    add hl, hl                                    ; $6399: $29
    rra                                           ; $639a: $1f
    ld [hl], l                                    ; $639b: $75
    add hl, hl                                    ; $639c: $29
    ld l, h                                       ; $639d: $6c
    cpl                                           ; $639e: $2f
    ld d, e                                       ; $639f: $53
    ld l, e                                       ; $63a0: $6b
    dec b                                         ; $63a1: $05
    db $ed                                        ; $63a2: $ed
    cp a                                          ; $63a3: $bf
    ld sp, $2352                                  ; $63a4: $31 $52 $23
    push de                                       ; $63a7: $d5
    ld l, h                                       ; $63a8: $6c
    sbc [hl]                                      ; $63a9: $9e
    ld l, h                                       ; $63aa: $6c
    ld e, d                                       ; $63ab: $5a
    sbc l                                         ; $63ac: $9d
    ld c, h                                       ; $63ad: $4c
    sbc c                                         ; $63ae: $99
    inc d                                         ; $63af: $14
    cp $02                                        ; $63b0: $fe $02
    ei                                            ; $63b2: $fb
    ld a, [hl]                                    ; $63b3: $7e
    dec b                                         ; $63b4: $05
    dec e                                         ; $63b5: $1d
    ld d, d                                       ; $63b6: $52
    inc d                                         ; $63b7: $14
    cp $94                                        ; $63b8: $fe $94
    reti                                          ; $63ba: $d9


    sbc $cf                                       ; $63bb: $de $cf
    or $78                                        ; $63bd: $f6 $78
    ld [de], a                                    ; $63bf: $12
    db $e4                                        ; $63c0: $e4
    ld d, a                                       ; $63c1: $57
    inc de                                        ; $63c2: $13
    db $ed                                        ; $63c3: $ed
    ld [$8149], a                                 ; $63c4: $ea $49 $81
    ldh a, [$f1]                                  ; $63c7: $f0 $f1
    rst $30                                       ; $63c9: $f7
    ld l, c                                       ; $63ca: $69
    ld a, l                                       ; $63cb: $7d
    db $f4                                        ; $63cc: $f4
    ld a, [$6afb]                                 ; $63cd: $fa $fb $6a
    ld a, [c]                                     ; $63d0: $f2
    and d                                         ; $63d1: $a2
    sbc $d0                                       ; $63d2: $de $d0
    rst $00                                       ; $63d4: $c7
    rla                                           ; $63d5: $17
    and c                                         ; $63d6: $a1
    ld [hl-], a                                   ; $63d7: $32
    ld d, c                                       ; $63d8: $51
    rla                                           ; $63d9: $17
    ld [hl], d                                    ; $63da: $72

jr_044_63db:
    ld l, $8a                                     ; $63db: $2e $8a
    ld [hl+], a                                   ; $63dd: $22

jr_044_63de:
    ld [hl-], a                                   ; $63de: $32
    db $fc                                        ; $63df: $fc
    pop af                                        ; $63e0: $f1
    and c                                         ; $63e1: $a1
    cp a                                          ; $63e2: $bf
    db $dd                                        ; $63e3: $dd
    sub h                                         ; $63e4: $94
    adc a                                         ; $63e5: $8f
    cp d                                          ; $63e6: $ba
    inc d                                         ; $63e7: $14
    or [hl]                                       ; $63e8: $b6
    sub a                                         ; $63e9: $97
    pop de                                        ; $63ea: $d1
    and l                                         ; $63eb: $a5
    ld b, d                                       ; $63ec: $42
    or $c4                                        ; $63ed: $f6 $c4
    ei                                            ; $63ef: $fb
    adc $dd                                       ; $63f0: $ce $dd
    and a                                         ; $63f2: $a7
    db $fc                                        ; $63f3: $fc
    ld [bc], a                                    ; $63f4: $02
    add e                                         ; $63f5: $83
    ld l, $ca                                     ; $63f6: $2e $ca
    db $e3                                        ; $63f8: $e3
    sbc l                                         ; $63f9: $9d
    dec de                                        ; $63fa: $1b
    ld d, e                                       ; $63fb: $53
    ld d, e                                       ; $63fc: $53
    ld l, e                                       ; $63fd: $6b
    dec b                                         ; $63fe: $05
    db $ed                                        ; $63ff: $ed
    ld hl, $b185                                  ; $6400: $21 $85 $b1
    scf                                           ; $6403: $37
    or d                                          ; $6404: $b2
    jr jr_044_63db                                ; $6405: $18 $d4

    cp c                                          ; $6407: $b9
    sub c                                         ; $6408: $91
    ret                                           ; $6409: $c9


    db $ed                                        ; $640a: $ed
    ret z                                         ; $640b: $c8

    inc d                                         ; $640c: $14
    or [hl]                                       ; $640d: $b6
    adc c                                         ; $640e: $89
    ld b, d                                       ; $640f: $42
    pop hl                                        ; $6410: $e1
    sub e                                         ; $6411: $93
    jp hl                                         ; $6412: $e9


    ld d, e                                       ; $6413: $53
    ld h, a                                       ; $6414: $67
    ld l, $6a                                     ; $6415: $2e $6a
    ld c, b                                       ; $6417: $48
    ld b, e                                       ; $6418: $43
    ld d, l                                       ; $6419: $55
    ld c, l                                       ; $641a: $4d
    sbc $39                                       ; $641b: $de $39
    jr nc, jr_044_63de                            ; $641d: $30 $bf

    db $ed                                        ; $641f: $ed
    jp hl                                         ; $6420: $e9


    ld d, a                                       ; $6421: $57
    ld [hl], l                                    ; $6422: $75
    ld b, [hl]                                    ; $6423: $46
    ld d, d                                       ; $6424: $52
    ld d, b                                       ; $6425: $50
    dec l                                         ; $6426: $2d

jr_044_6427:
    add [hl]                                      ; $6427: $86
    cp b                                          ; $6428: $b8
    xor e                                         ; $6429: $ab
    ccf                                           ; $642a: $3f
    adc $8f                                       ; $642b: $ce $8f
    ld l, h                                       ; $642d: $6c
    and h                                         ; $642e: $a4
    jr nc, jr_044_6427                            ; $642f: $30 $f6

    ld b, [hl]                                    ; $6431: $46
    ld d, $83                                     ; $6432: $16 $83
    ld a, [hl-]                                   ; $6434: $3a
    scf                                           ; $6435: $37
    ld [hl-], a                                   ; $6436: $32
    xor c                                         ; $6437: $a9
    sub c                                         ; $6438: $91
    push bc                                       ; $6439: $c5
    ld h, [hl]                                    ; $643a: $66
    add hl, sp                                    ; $643b: $39
    ld [c], a                                     ; $643c: $e2
    ld c, l                                       ; $643d: $4d
    cp a                                          ; $643e: $bf
    ld [bc], a                                    ; $643f: $02
    ld [hl], l                                    ; $6440: $75
    ret nz                                        ; $6441: $c0

    ld c, h                                       ; $6442: $4c
    ld h, l                                       ; $6443: $65
    ld [hl+], a                                   ; $6444: $22
    inc hl                                        ; $6445: $23
    xor c                                         ; $6446: $a9
    sub c                                         ; $6447: $91
    ld l, d                                       ; $6448: $6a
    ld [hl], $4f                                  ; $6449: $36 $4f
    ld [hl], $ad                                  ; $644b: $36 $ad
    ld c, [hl]                                    ; $644d: $4e
    and [hl]                                      ; $644e: $a6
    ld c, h                                       ; $644f: $4c
    ld a, [bc]                                    ; $6450: $0a
    ld a, a                                       ; $6451: $7f
    add c                                         ; $6452: $81
    cp l                                          ; $6453: $bd
    ld l, $d5                                     ; $6454: $2e $d5
    and a                                         ; $6456: $a7
    ld b, [hl]                                    ; $6457: $46
    sub [hl]                                      ; $6458: $96
    ld l, e                                       ; $6459: $6b
    jr nz, @-$63                                  ; $645a: $20 $9b

    ld d, [hl]                                    ; $645c: $56
    daa                                           ; $645d: $27
    ld d, e                                       ; $645e: $53
    ld h, $0a                                     ; $645f: $26 $0a
    dec sp                                        ; $6461: $3b
    ld h, l                                       ; $6462: $65
    or $f1                                        ; $6463: $f6 $f1
    db $f4                                        ; $6465: $f4
    dec hl                                        ; $6466: $2b
    ld [hl], l                                    ; $6467: $75
    ld b, [hl]                                    ; $6468: $46
    and d                                         ; $6469: $a2
    add [hl]                                      ; $646a: $86
    inc [hl]                                      ; $646b: $34
    ld d, h                                       ; $646c: $54
    push de                                       ; $646d: $d5
    db $e4                                        ; $646e: $e4
    adc a                                         ; $646f: $8f
    ld a, [c]                                     ; $6470: $f2
    dec de                                        ; $6471: $1b
    ld [c], a                                     ; $6472: $e2
    ld h, [hl]                                    ; $6473: $66
    adc a                                         ; $6474: $8f
    ld c, l                                       ; $6475: $4d
    sbc h                                         ; $6476: $9c
    rra                                           ; $6477: $1f
    reti                                          ; $6478: $d9


    ld c, b                                       ; $6479: $48
    ld h, c                                       ; $647a: $61
    db $ec                                        ; $647b: $ec
    adc l                                         ; $647c: $8d
    ld hl, sp+$5f                                 ; $647d: $f8 $5f
    ld h, h                                       ; $647f: $64
    ld [c], a                                     ; $6480: $e2
    ld b, [hl]                                    ; $6481: $46
    call nc, Call_000_3c8b                        ; $6482: $d4 $8b $3c
    ld c, a                                       ; $6485: $4f
    cp a                                          ; $6486: $bf
    ld [bc], a                                    ; $6487: $02
    ld [hl], l                                    ; $6488: $75
    and $a2                                       ; $6489: $e6 $a2
    ld b, [hl]                                    ; $648b: $46
    xor a                                         ; $648c: $af

Call_044_648d:
    cp a                                          ; $648d: $bf
    xor a                                         ; $648e: $af
    ld h, $27                                     ; $648f: $26 $27
    adc $7f                                       ; $6491: $ce $7f
    ld a, [c]                                     ; $6493: $f2
    and $2e                                       ; $6494: $e6 $2e
    cp a                                          ; $6496: $bf
    ld b, e                                       ; $6497: $43
    adc $86                                       ; $6498: $ce $86
    ld hl, $7b0a                                  ; $649a: $21 $0a $7b
    inc hl                                        ; $649d: $23
    add l                                         ; $649e: $85
    or c                                          ; $649f: $b1
    scf                                           ; $64a0: $37
    ld a, [$ed15]                                 ; $64a1: $fa $15 $ed
    ld a, l                                       ; $64a4: $7d

jr_044_64a5:
    cp h                                          ; $64a5: $bc
    ld h, e                                       ; $64a6: $63
    jr z, jr_044_64a5                             ; $64a7: $28 $fc

    xor c                                         ; $64a9: $a9
    ld de, $d92a                                  ; $64aa: $11 $2a $d9
    ld [hl], h                                    ; $64ad: $74
    or h                                          ; $64ae: $b4
    ld c, c                                       ; $64af: $49
    ld [hl], l                                    ; $64b0: $75
    add l                                         ; $64b1: $85
    ld h, c                                       ; $64b2: $61
    scf                                           ; $64b3: $37
    ld h, l                                       ; $64b4: $65
    ld a, [$b515]                                 ; $64b5: $fa $15 $b5
    ld e, a                                       ; $64b8: $5f
    or e                                          ; $64b9: $b3
    ld d, e                                       ; $64ba: $53
    cp d                                          ; $64bb: $ba
    ld l, b                                       ; $64bc: $68
    db $f4                                        ; $64bd: $f4
    ld c, l                                       ; $64be: $4d
    ld a, l                                       ; $64bf: $7d
    call $baf8                                    ; $64c0: $cd $f8 $ba
    inc de                                        ; $64c3: $13
    cp [hl]                                       ; $64c4: $be
    cp l                                          ; $64c5: $bd
    ld de, $529b                                  ; $64c6: $11 $9b $52
    ld d, b                                       ; $64c9: $50
    inc sp                                        ; $64ca: $33

Call_044_64cb:
    ld l, l                                       ; $64cb: $6d
    db $ed                                        ; $64cc: $ed
    bit 5, a                                      ; $64cd: $cb $6f
    or [hl]                                       ; $64cf: $b6
    ld c, e                                       ; $64d0: $4b
    add hl, de                                    ; $64d1: $19
    sbc c                                         ; $64d2: $99
    sbc h                                         ; $64d3: $9c
    ld b, h                                       ; $64d4: $44
    sbc l                                         ; $64d5: $9d
    rst $10                                       ; $64d6: $d7
    ld a, e                                       ; $64d7: $7b
    ld l, [hl]                                    ; $64d8: $6e
    ld [hl], $d7                                  ; $64d9: $36 $d7
    ld d, e                                       ; $64db: $53
    ld [hl], e                                    ; $64dc: $73
    dec b                                         ; $64dd: $05
    sbc l                                         ; $64de: $9d
    adc $45                                       ; $64df: $ce $45
    ld d, c                                       ; $64e1: $51
    db $e4                                        ; $64e2: $e4
    rlc d                                         ; $64e3: $cb $02
    and $67                                       ; $64e5: $e6 $67
    ld d, h                                       ; $64e7: $54
    rla                                           ; $64e8: $17
    rra                                           ; $64e9: $1f
    ld a, d                                       ; $64ea: $7a
    db $fd                                        ; $64eb: $fd
    ld a, [bc]                                    ; $64ec: $0a
    cp [hl]                                       ; $64ed: $be
    dec bc                                        ; $64ee: $0b
    ld l, h                                       ; $64ef: $6c
    ld [c], a                                     ; $64f0: $e2
    db $fc                                        ; $64f1: $fc
    adc b                                         ; $64f2: $88
    and b                                         ; $64f3: $a0
    inc d                                         ; $64f4: $14
    ld a, [hl+]                                   ; $64f5: $2a
    sub e                                         ; $64f6: $93
    ld [hl], d                                    ; $64f7: $72
    add hl, hl                                    ; $64f8: $29
    rst $30                                       ; $64f9: $f7
    pop af                                        ; $64fa: $f1
    ld a, $f3                                     ; $64fb: $3e $f3
    and h                                         ; $64fd: $a4
    ld a, [$9a8d]                                 ; $64fe: $fa $8d $9a
    dec hl                                        ; $6501: $2b
    xor l                                         ; $6502: $ad
    ld h, [hl]                                    ; $6503: $66
    ld a, c                                       ; $6504: $79
    ld h, e                                       ; $6505: $63
    and h                                         ; $6506: $a4
    db $fd                                        ; $6507: $fd
    rst $18                                       ; $6508: $df
    sbc $21                                       ; $6509: $de $21
    ret nc                                        ; $650b: $d0

    rst $30                                       ; $650c: $f7
    db $fd                                        ; $650d: $fd
    ld a, [bc]                                    ; $650e: $0a
    sbc [hl]                                      ; $650f: $9e
    ld d, e                                       ; $6510: $53
    inc a                                         ; $6511: $3c
    ld l, d                                       ; $6512: $6a
    and h                                         ; $6513: $a4
    ld d, b                                       ; $6514: $50
    rst $20                                       ; $6515: $e7
    ld d, b                                       ; $6516: $50
    jp z, Jump_044_5ad4                           ; $6517: $ca $d4 $5a

    ld bc, $ffed                                  ; $651a: $01 $ed $ff
    or $0e                                        ; $651d: $f6 $0e
    add c                                         ; $651f: $81
    ld d, h                                       ; $6520: $54
    rla                                           ; $6521: $17
    rst $38                                       ; $6522: $ff
    rst $20                                       ; $6523: $e7
    cp l                                          ; $6524: $bd
    ld e, [hl]                                    ; $6525: $5e
    sbc b                                         ; $6526: $98
    dec a                                         ; $6527: $3d
    ld c, a                                       ; $6528: $4f
    call nc, $1d47                                ; $6529: $d4 $47 $1d
    ret c                                         ; $652c: $d8

    ld h, $0b                                     ; $652d: $26 $0b
    inc l                                         ; $652f: $2c
    sbc $b7                                       ; $6530: $de $b7
    ld [$6542], a                                 ; $6532: $ea $42 $65
    ld d, d                                       ; $6535: $52
    sbc h                                         ; $6536: $9c
    rra                                           ; $6537: $1f
    ld b, [hl]                                    ; $6538: $46
    sbc h                                         ; $6539: $9c
    and b                                         ; $653a: $a0
    rst $28                                       ; $653b: $ef
    ei                                            ; $653c: $fb
    add sp, -$1f                                  ; $653d: $e8 $e1
    rst $10                                       ; $653f: $d7
    and l                                         ; $6540: $a5
    cp d                                          ; $6541: $ba
    sub h                                         ; $6542: $94
    sub c                                         ; $6543: $91
    adc c                                         ; $6544: $89
    rst $30                                       ; $6545: $f7
    sbc c                                         ; $6546: $99
    daa                                           ; $6547: $27
    adc e                                         ; $6548: $8b
    ld b, c                                       ; $6549: $41
    inc d                                         ; $654a: $14
    inc c                                         ; $654b: $0c
    ld d, c                                       ; $654c: $51
    cp a                                          ; $654d: $bf
    or e                                          ; $654e: $b3
    cp h                                          ; $654f: $bc
    sbc h                                         ; $6550: $9c
    sbc e                                         ; $6551: $9b
    ld a, [hl]                                    ; $6552: $7e
    dec b                                         ; $6553: $05
    sbc [hl]                                      ; $6554: $9e
    ld e, a                                       ; $6555: $5f
    jp hl                                         ; $6556: $e9


    rrca                                          ; $6557: $0f
    add [hl]                                      ; $6558: $86
    ld l, d                                       ; $6559: $6a
    ld [hl], d                                    ; $655a: $72
    pop de                                        ; $655b: $d1
    adc h                                         ; $655c: $8c
    ld l, $cb                                     ; $655d: $2e $cb
    push af                                       ; $655f: $f5
    xor c                                         ; $6560: $a9
    inc bc                                        ; $6561: $03
    ld a, [c]                                     ; $6562: $f2
    or $86                                        ; $6563: $f6 $86
    ld l, $4c                                     ; $6565: $2e $4c
    ld d, e                                       ; $6567: $53
    ld hl, sp+$2f                                 ; $6568: $f8 $2f
    ld l, [hl]                                    ; $656a: $6e
    inc h                                         ; $656b: $24
    dec d                                         ; $656c: $15
    add d                                         ; $656d: $82
    call nc, $5586                                ; $656e: $d4 $86 $55
    scf                                           ; $6571: $37
    add d                                         ; $6572: $82
    ld a, $b5                                     ; $6573: $3e $b5
    rst $18                                       ; $6575: $df
    adc h                                         ; $6576: $8c
    add b                                         ; $6577: $80
    ld l, $4c                                     ; $6578: $2e $4c
    ld b, e                                       ; $657a: $43
    cp $c5                                        ; $657b: $fe $c5
    adc l                                         ; $657d: $8d
    and h                                         ; $657e: $a4
    db $fd                                        ; $657f: $fd
    rst $18                                       ; $6580: $df
    sbc $21                                       ; $6581: $de $21
    db $10                                        ; $6583: $10
    and h                                         ; $6584: $a4
    ld h, e                                       ; $6585: $63
    rst $38                                       ; $6586: $ff
    ld e, b                                       ; $6587: $58
    rra                                           ; $6588: $1f
    rst $18                                       ; $6589: $df
    or a                                          ; $658a: $b7
    ld a, d                                       ; $658b: $7a
    or d                                          ; $658c: $b2
    ld e, h                                       ; $658d: $5c
    inc bc                                        ; $658e: $03
    ld d, c                                       ; $658f: $51
    rst $20                                       ; $6590: $e7
    push af                                       ; $6591: $f5
    sbc [hl]                                      ; $6592: $9e
    cp e                                          ; $6593: $bb
    adc l                                         ; $6594: $8d
    inc l                                         ; $6595: $2c
    or b                                          ; $6596: $b0

Call_044_6597:
    ld hl, sp+$50                                 ; $6597: $f8 $50
    inc d                                         ; $6599: $14
    sbc [hl]                                      ; $659a: $9e
    sbc h                                         ; $659b: $9c
    cp d                                          ; $659c: $ba
    pop hl                                        ; $659d: $e1
    adc a                                         ; $659e: $8f
    rst $30                                       ; $659f: $f7
    dec l                                         ; $65a0: $2d
    ld h, l                                       ; $65a1: $65
    ld a, c                                       ; $65a2: $79
    ld [de], a                                    ; $65a3: $12
    jp nz, Jump_000_086f                          ; $65a4: $c2 $6f $08

    and e                                         ; $65a7: $a3
    ld e, a                                       ; $65a8: $5f
    ld bc, $d16d                                  ; $65a9: $01 $6d $d1
    scf                                           ; $65ac: $37
    push af                                       ; $65ad: $f5
    dec [hl]                                      ; $65ae: $35
    db $d3                                        ; $65af: $d3
    ld a, [hl-]                                   ; $65b0: $3a
    ld c, b                                       ; $65b1: $48
    rrca                                          ; $65b2: $0f
    sub h                                         ; $65b3: $94
    ld [bc], a                                    ; $65b4: $02
    ld b, e                                       ; $65b5: $43
    or [hl]                                       ; $65b6: $b6
    rlca                                          ; $65b7: $07
    sub l                                         ; $65b8: $95
    ld [hl], e                                    ; $65b9: $73
    ld h, e                                       ; $65ba: $63
    ld [hl-], a                                   ; $65bb: $32
    ld a, l                                       ; $65bc: $7d
    ld e, d                                       ; $65bd: $5a
    ld c, [hl]                                    ; $65be: $4e
    dec [hl]                                      ; $65bf: $35
    add $53                                       ; $65c0: $c6 $53
    ld [hl], e                                    ; $65c2: $73
    dec b                                         ; $65c3: $05
    xor l                                         ; $65c4: $ad
    cp $ff                                        ; $65c5: $fe $ff
    cp a                                          ; $65c7: $bf
    ld l, c                                       ; $65c8: $69
    cp $9a                                        ; $65c9: $fe $9a
    dec hl                                        ; $65cb: $2b
    xor l                                         ; $65cc: $ad
    ld a, [$efaf]                                 ; $65cd: $fa $af $ef
    ei                                            ; $65d0: $fb
    jr c, @+$41                                   ; $65d1: $38 $3f

    and d                                         ; $65d3: $a2
    ld h, [hl]                                    ; $65d4: $66
    adc a                                         ; $65d5: $8f
    and c                                         ; $65d6: $a1
    rst $28                                       ; $65d7: $ef
    ei                                            ; $65d8: $fb
    db $ec                                        ; $65d9: $ec
    ld c, a                                       ; $65da: $4f
    ld [hl], l                                    ; $65db: $75
    rra                                           ; $65dc: $1f
    ld b, [hl]                                    ; $65dd: $46
    pop hl                                        ; $65de: $e1
    rst $28                                       ; $65df: $ef
    ei                                            ; $65e0: $fb
    ld a, [hl]                                    ; $65e1: $7e
    dec b                                         ; $65e2: $05
    sbc [hl]                                      ; $65e3: $9e
    ld d, e                                       ; $65e4: $53
    inc a                                         ; $65e5: $3c
    ld l, d                                       ; $65e6: $6a
    and h                                         ; $65e7: $a4
    ld d, b                                       ; $65e8: $50
    rst $20                                       ; $65e9: $e7
    ld d, b                                       ; $65ea: $50
    jp z, Jump_044_5ad4                           ; $65eb: $ca $d4 $5a

    ld bc, $88be                                  ; $65ee: $01 $be $88
    ld a, b                                       ; $65f1: $78
    call nc, $8bc8                                ; $65f2: $d4 $c8 $8b
    ld a, d                                       ; $65f5: $7a
    sbc [hl]                                      ; $65f6: $9e
    ld a, $ed                                     ; $65f7: $3e $ed
    ld e, a                                       ; $65f9: $5f
    sbc h                                         ; $65fa: $9c
    rst $38                                       ; $65fb: $ff
    cp [hl]                                       ; $65fc: $be
    sbc d                                         ; $65fd: $9a
    or h                                          ; $65fe: $b4
    ld a, c                                       ; $65ff: $79
    ld h, e                                       ; $6600: $63
    db $10                                        ; $6601: $10
    ld [c], a                                     ; $6602: $e2
    db $f4                                        ; $6603: $f4
    ld l, c                                       ; $6604: $69
    di                                            ; $6605: $f3
    dec c                                         ; $6606: $0d
    add l                                         ; $6607: $85
    cpl                                           ; $6608: $2f
    ld a, d                                       ; $6609: $7a
    ld [$e1f2], sp                                ; $660a: $08 $f2 $e1
    ld sp, $4379                                  ; $660d: $31 $79 $43
    call nc, $f6a7                                ; $6610: $d4 $a7 $f6
    ld l, e                                       ; $6613: $6b
    halt                                          ; $6614: $76
    xor d                                         ; $6615: $aa
    ld e, a                                       ; $6616: $5f
    ld bc, $96ad                                  ; $6617: $01 $ad $96
    dec b                                         ; $661a: $05
    call z, $f7df                                 ; $661b: $cc $df $f7
    ld a, l                                       ; $661e: $7d
    sbc b                                         ; $661f: $98
    and [hl]                                      ; $6620: $a6
    db $fc                                        ; $6621: $fc
    push bc                                       ; $6622: $c5
    ld sp, hl                                     ; $6623: $f9
    cpl                                           ; $6624: $2f
    cp $0f                                        ; $6625: $fe $0f
    ld [hl], l                                    ; $6627: $75
    xor $ca                                       ; $6628: $ee $ca
    ld b, h                                       ; $662a: $44
    db $db                                        ; $662b: $db
    rla                                           ; $662c: $17
    ld a, [hl+]                                   ; $662d: $2a
    rst $20                                       ; $662e: $e7
    add $e4                                       ; $662f: $c6 $e4
    ld l, d                                       ; $6631: $6a
    xor l                                         ; $6632: $ad
    dec e                                         ; $6633: $1d
    jp nc, $8edf                                  ; $6634: $d2 $df $8e

    jp z, $f9c4                                   ; $6637: $ca $c4 $f9

    ld de, $ce92                                  ; $663a: $11 $92 $ce
    adc [hl]                                      ; $663d: $8e
    ld e, $86                                     ; $663e: $1e $86
    call c, Call_000_1ece                         ; $6640: $dc $ce $1e
    sbc e                                         ; $6643: $9b
    sub h                                         ; $6644: $94
    rla                                           ; $6645: $17
    adc l                                         ; $6646: $8d
    and d                                         ; $6647: $a2
    ld c, a                                       ; $6648: $4f
    ld l, e                                       ; $6649: $6b
    or b                                          ; $664a: $b0
    dec a                                         ; $664b: $3d
    ld e, c                                       ; $664c: $59
    ld h, b                                       ; $664d: $60
    or c                                          ; $664e: $b1
    xor e                                         ; $664f: $ab
    ld e, [hl]                                    ; $6650: $5e
    ld h, b                                       ; $6651: $60
    ret z                                         ; $6652: $c8

    ld c, c                                       ; $6653: $49
    ret z                                         ; $6654: $c8

    db $e3                                        ; $6655: $e3
    rst $10                                       ; $6656: $d7
    push hl                                       ; $6657: $e5
    push bc                                       ; $6658: $c5
    ld sp, hl                                     ; $6659: $f9
    sub c                                         ; $665a: $91
    add d                                         ; $665b: $82
    call c, $62ce                                 ; $665c: $dc $ce $62
    jr nz, jr_044_6673                            ; $665f: $20 $12

    daa                                           ; $6661: $27
    ld [$bcb3], a                                 ; $6662: $ea $b3 $bc
    or $86                                        ; $6665: $f6 $86
    call nc, $9508                                ; $6667: $d4 $08 $95
    rrca                                          ; $666a: $0f
    ld a, c                                       ; $666b: $79
    db $fc                                        ; $666c: $fc
    ld d, c                                       ; $666d: $51
    cpl                                           ; $666e: $2f
    ld a, [c]                                     ; $666f: $f2
    db $fc                                        ; $6670: $fc
    ld a, l                                       ; $6671: $7d
    ld e, d                                       ; $6672: $5a

jr_044_6673:
    add e                                         ; $6673: $83
    db $ed                                        ; $6674: $ed
    jp hl                                         ; $6675: $e9


    ei                                            ; $6676: $fb
    ld a, $27                                     ; $6677: $3e $27
    ld a, c                                       ; $6679: $79
    ld h, [hl]                                    ; $667a: $66
    sub h                                         ; $667b: $94
    adc a                                         ; $667c: $8f
    cp d                                          ; $667d: $ba
    add sp, $61                                   ; $667e: $e8 $61
    adc b                                         ; $6680: $88
    rrca                                          ; $6681: $0f
    db $fd                                        ; $6682: $fd
    db $ed                                        ; $6683: $ed
    and [hl]                                      ; $6684: $a6
    ld a, h                                       ; $6685: $7c
    sbc h                                         ; $6686: $9c
    rra                                           ; $6687: $1f
    pop de                                        ; $6688: $d1
    or $45                                        ; $6689: $f6 $45
    cp l                                          ; $668b: $bd
    push de                                       ; $668c: $d5
    sub e                                         ; $668d: $93
    db $fd                                        ; $668e: $fd
    ld hl, $3f8f                                  ; $668f: $21 $8f $3f
    ld h, b                                       ; $6692: $60
    sbc b                                         ; $6693: $98
    ld a, h                                       ; $6694: $7c
    cp a                                          ; $6695: $bf
    ld [bc], a                                    ; $6696: $02
    db $ed                                        ; $6697: $ed
    ld a, a                                       ; $6698: $7f
    inc e                                         ; $6699: $1c
    adc h                                         ; $669a: $8c
    and a                                         ; $669b: $a7
    ld h, [hl]                                    ; $669c: $66
    jp c, $68f3                                   ; $669d: $da $f3 $68

    ld h, e                                       ; $66a0: $63
    ld e, a                                       ; $66a1: $5f
    add hl, sp                                    ; $66a2: $39
    adc e                                         ; $66a3: $8b
    cp d                                          ; $66a4: $ba
    or h                                          ; $66a5: $b4
    ld b, a                                       ; $66a6: $47
    ld b, l                                       ; $66a7: $45
    ei                                            ; $66a8: $fb
    ld [hl], h                                    ; $66a9: $74
    ld a, d                                       ; $66aa: $7a
    db $fc                                        ; $66ab: $fc
    ld d, c                                       ; $66ac: $51
    ret c                                         ; $66ad: $d8

    ei                                            ; $66ae: $fb
    ld d, e                                       ; $66af: $53
    rst $30                                       ; $66b0: $f7
    ret nz                                        ; $66b1: $c0

    or $69                                        ; $66b2: $f6 $69
    di                                            ; $66b4: $f3
    or $94                                        ; $66b5: $f6 $94
    pop af                                        ; $66b7: $f1
    cp $46                                        ; $66b8: $fe $46
    call $ffb4                                    ; $66ba: $cd $b4 $ff
    ld [hl], c                                    ; $66bd: $71
    cp $cb                                        ; $66be: $fe $cb
    ld [hl-], a                                   ; $66c0: $32
    ld l, h                                       ; $66c1: $6c
    ret nc                                        ; $66c2: $d0

    db $eb                                        ; $66c3: $eb
    ld de, $0294                                  ; $66c4: $11 $94 $02
    ld b, e                                       ; $66c7: $43
    call c, $fa94                                 ; $66c8: $dc $94 $fa
    and d                                         ; $66cb: $a2
    xor [hl]                                      ; $66cc: $ae
    inc l                                         ; $66cd: $2c
    or b                                          ; $66ce: $b0
    rst $20                                       ; $66cf: $e7
    xor c                                         ; $66d0: $a9
    or l                                          ; $66d1: $b5
    ld [bc], a                                    ; $66d2: $02
    db $ed                                        ; $66d3: $ed
    ld a, l                                       ; $66d4: $7d
    ld a, [bc]                                    ; $66d5: $0a
    and e                                         ; $66d6: $a3
    sub h                                         ; $66d7: $94
    rst $08                                       ; $66d8: $cf
    ld [bc], a                                    ; $66d9: $02
    dec hl                                        ; $66da: $2b
    inc hl                                        ; $66db: $23
    rra                                           ; $66dc: $1f

jr_044_66dd:
    rst $20                                       ; $66dd: $e7
    ld b, a                                       ; $66de: $47
    ld a, [bc]                                    ; $66df: $0a
    call c, $9a88                                 ; $66e0: $dc $88 $9a
    ld l, h                                       ; $66e3: $6c
    and h                                         ; $66e4: $a4
    jr nc, jr_044_66dd                            ; $66e5: $30 $f6

    add [hl]                                      ; $66e7: $86
    ld l, $48                                     ; $66e8: $2e $48
    add c                                         ; $66ea: $81
    dec de                                        ; $66eb: $1b
    ld d, c                                       ; $66ec: $51
    sub e                                         ; $66ed: $93
    db $ed                                        ; $66ee: $ed
    ld [hl], c                                    ; $66ef: $71
    jp nz, $c5b0                                  ; $66f0: $c2 $b0 $c5

    ret nz                                        ; $66f3: $c0

    ld c, a                                       ; $66f4: $4f
    cp h                                          ; $66f5: $bc
    ld de, $5d44                                  ; $66f6: $11 $44 $5d
    ld a, [hl]                                    ; $66f9: $7e
    dec sp                                        ; $66fa: $3b
    ld a, [hl+]                                   ; $66fb: $2a
    rla                                           ; $66fc: $17
    rlca                                          ; $66fd: $07
    pop hl                                        ; $66fe: $e1
    and a                                         ; $66ff: $a7
    halt                                          ; $6700: $76
    cp d                                          ; $6701: $ba
    ldh a, [$85]                                  ; $6702: $f0 $85
    ld a, [hl-]                                   ; $6704: $3a
    ld [hl], a                                    ; $6705: $77
    ld a, [bc]                                    ; $6706: $0a
    ld d, [hl]                                    ; $6707: $56
    ld c, a                                       ; $6708: $4f
    sbc a                                         ; $6709: $9f
    or $3e                                        ; $670a: $f6 $3e
    add l                                         ; $670c: $85
    ld d, c                                       ; $670d: $51
    jp z, $8167                                   ; $670e: $ca $67 $81

    sub l                                         ; $6711: $95
    sub c                                         ; $6712: $91
    adc a                                         ; $6713: $8f
    di                                            ; $6714: $f3
    inc hl                                        ; $6715: $23
    dec bc                                        ; $6716: $0b

Jump_044_6717:
    inc l                                         ; $6717: $2c
    cpl                                           ; $6718: $2f
    ld [hl], d                                    ; $6719: $72
    add hl, hl                                    ; $671a: $29
    sub a                                         ; $671b: $97
    ld a, [de]                                    ; $671c: $1a
    ld a, c                                       ; $671d: $79
    ld c, l                                       ; $671e: $4d
    or e                                          ; $671f: $b3
    ld e, a                                       ; $6720: $5f
    sub [hl]                                      ; $6721: $96
    rst $20                                       ; $6722: $e7
    rst $08                                       ; $6723: $cf
    rst $28                                       ; $6724: $ef
    db $fd                                        ; $6725: $fd
    ld hl, $3f8f                                  ; $6726: $21 $8f $3f
    ld e, a                                       ; $6729: $5f
    ld d, $30                                     ; $672a: $16 $30
    cp a                                          ; $672c: $bf
    xor b                                         ; $672d: $a8
    ret                                           ; $672e: $c9


    cp $14                                        ; $672f: $fe $14
    ld a, [$ecd1]                                 ; $6731: $fa $d1 $ec
    ld b, l                                       ; $6734: $45
    ld hl, $dce3                                  ; $6735: $21 $e3 $dc
    sub a                                         ; $6738: $97
    dec de                                        ; $6739: $1b
    ld b, c                                       ; $673a: $41
    cp a                                          ; $673b: $bf
    ld [bc], a                                    ; $673c: $02
    sbc l                                         ; $673d: $9d
    adc $56                                       ; $673e: $ce $56
    xor b                                         ; $6740: $a8
    add $b8                                       ; $6741: $c6 $b8
    and $0a                                       ; $6743: $e6 $0a
    or l                                          ; $6745: $b5
    rst $18                                       ; $6746: $df
    adc h                                         ; $6747: $8c
    ld b, b                                       ; $6748: $40
    call Call_044_4c74                            ; $6749: $cd $74 $4c
    sbc c                                         ; $674c: $99
    daa                                           ; $674d: $27
    sbc a                                         ; $674e: $9f
    ld h, l                                       ; $674f: $65
    ld a, [bc]                                    ; $6750: $0a
    ld c, a                                       ; $6751: $4f
    xor l                                         ; $6752: $ad
    dec d                                         ; $6753: $15
    cp [hl]                                       ; $6754: $be
    push af                                       ; $6755: $f5
    jp hl                                         ; $6756: $e9


    ld [hl], d                                    ; $6757: $72
    sub e                                         ; $6758: $93
    jp nz, Jump_000_3d13                          ; $6759: $c2 $13 $3d

    inc b                                         ; $675c: $04
    ld a, l                                       ; $675d: $7d
    jp c, Jump_044_6cff                           ; $675e: $da $ff $6c

    rrca                                          ; $6761: $0f

Call_044_6762:
    ld a, [hl+]                                   ; $6762: $2a
    rst $20                                       ; $6763: $e7
    add $64                                       ; $6764: $c6 $64
    ld d, d                                       ; $6766: $52
    inc hl                                        ; $6767: $23
    push de                                       ; $6768: $d5
    jr jr_044_67ba                                ; $6769: $18 $4f

    cp a                                          ; $676b: $bf
    ld [bc], a                                    ; $676c: $02
    xor l                                         ; $676d: $ad
    add $87                                       ; $676e: $c6 $87
    and d                                         ; $6770: $a2
    ldh a, [$64]                                  ; $6771: $f0 $64
    and c                                         ; $6773: $a1
    jp nz, $cba3                                  ; $6774: $c2 $a3 $cb

    ld c, l                                       ; $6777: $4d
    ld hl, sp-$4e                                 ; $6778: $f8 $b2
    cp a                                          ; $677a: $bf
    cp b                                          ; $677b: $b8
    dec de                                        ; $677c: $1b
    ld e, l                                       ; $677d: $5d
    ld l, d                                       ; $677e: $6a
    cp a                                          ; $677f: $bf
    add hl, de                                    ; $6780: $19
    add c                                         ; $6781: $81
    ld a, $ad                                     ; $6782: $3e $ad
    ld a, [hl+]                                   ; $6784: $2a
    sub h                                         ; $6785: $94
    ld [hl-], a                                   ; $6786: $32
    add hl, hl                                    ; $6787: $29
    cp b                                          ; $6788: $b8
    db $fc                                        ; $6789: $fc
    ld c, [hl]                                    ; $678a: $4e
    add hl, sp                                    ; $678b: $39
    ld b, a                                       ; $678c: $47
    ld l, l                                       ; $678d: $6d
    ld a, [$11b4]                                 ; $678e: $fa $b4 $11
    dec sp                                        ; $6791: $3b
    scf                                           ; $6792: $37
    and [hl]                                      ; $6793: $a6
    ld e, [hl]                                    ; $6794: $5e
    sub a                                         ; $6795: $97
    rrca                                          ; $6796: $0f
    add hl, sp                                    ; $6797: $39
    sbc e                                         ; $6798: $9b
    sub c                                         ; $6799: $91
    rla                                           ; $679a: $17
    rst $20                                       ; $679b: $e7
    ld b, a                                       ; $679c: $47
    ld [hl], $52                                  ; $679d: $36 $52
    jr jr_044_681c                                ; $679f: $18 $7b

    inc hl                                        ; $67a1: $23
    res 2, h                                      ; $67a2: $cb $94
    ld [hl-], a                                   ; $67a4: $32
    ld [hl-], a                                   ; $67a5: $32
    add hl, hl                                    ; $67a6: $29
    ld a, [$f6d7]                                 ; $67a7: $fa $d7 $f6
    cp l                                          ; $67aa: $bd
    and c                                         ; $67ab: $a1
    ld e, a                                       ; $67ac: $5f
    ld bc, $8f1d                                  ; $67ad: $01 $1d $8f
    ret                                           ; $67b0: $c9


    ld a, l                                       ; $67b1: $7d
    dec [hl]                                      ; $67b2: $35
    ld sp, hl                                     ; $67b3: $f9
    cp b                                          ; $67b4: $b8
    cpl                                           ; $67b5: $2f
    xor a                                         ; $67b6: $af
    sra e                                         ; $67b7: $cb $2b
    sub h                                         ; $67b9: $94

jr_044_67ba:
    ld [hl-], a                                   ; $67ba: $32
    ld a, l                                       ; $67bb: $7d
    ld a, h                                       ; $67bc: $7c
    db $dd                                        ; $67bd: $dd
    ld d, h                                       ; $67be: $54
    dec d                                         ; $67bf: $15
    sbc b                                         ; $67c0: $98
    daa                                           ; $67c1: $27
    adc $8f                                       ; $67c2: $ce $8f
    ld l, b                                       ; $67c4: $68
    ei                                            ; $67c5: $fb
    ld a, [c]                                     ; $67c6: $f2
    sbc e                                         ; $67c7: $9b
    db $ed                                        ; $67c8: $ed
    ld d, d                                       ; $67c9: $52
    ld b, [hl]                                    ; $67ca: $46
    ld h, $da                                     ; $67cb: $26 $da
    push de                                       ; $67cd: $d5
    sub e                                         ; $67ce: $93
    ld e, l                                       ; $67cf: $5d
    ld c, a                                       ; $67d0: $4f
    cp a                                          ; $67d1: $bf
    ld [bc], a                                    ; $67d2: $02
    dec l                                         ; $67d3: $2d
    add a                                         ; $67d4: $87
    jp z, $3bc7                                   ; $67d5: $ca $c7 $3b

    add $54                                       ; $67d8: $c6 $54
    ld a, $ce                                     ; $67da: $3e $ce
    adc a                                         ; $67dc: $8f
    call nc, $cd7e                                ; $67dd: $d4 $7e $cd
    ld c, [hl]                                    ; $67e0: $4e
    add l                                         ; $67e1: $85
    cpl                                           ; $67e2: $2f
    xor a                                         ; $67e3: $af
    rst $10                                       ; $67e4: $d7
    rst $18                                       ; $67e5: $df
    add a                                         ; $67e6: $87
    ld l, l                                       ; $67e7: $6d
    ret z                                         ; $67e8: $c8

    rst $20                                       ; $67e9: $e7
    adc c                                         ; $67ea: $89
    ld h, b                                       ; $67eb: $60
    rst $28                                       ; $67ec: $ef
    adc a                                         ; $67ed: $8f
    ld [hl], a                                    ; $67ee: $77
    inc c                                         ; $67ef: $0c
    add l                                         ; $67f0: $85
    cp a                                          ; $67f1: $bf
    ld c, a                                       ; $67f2: $4f
    rlca                                          ; $67f3: $07
    or $a9                                        ; $67f4: $f6 $a9
    sub c                                         ; $67f6: $91
    ld a, [bc]                                    ; $67f7: $0a
    jp c, $89be                                   ; $67f8: $da $be $89

    di                                            ; $67fb: $f3
    inc hl                                        ; $67fc: $23
    inc a                                         ; $67fd: $3c
    ld h, $97                                     ; $67fe: $26 $97
    ld c, a                                       ; $6800: $4f
    ld e, e                                       ; $6801: $5b
    halt                                          ; $6802: $76
    sbc $11                                       ; $6803: $de $11
    dec [hl]                                      ; $6805: $35
    ld [hl], $fd                                  ; $6806: $36 $fd
    ld a, [bc]                                    ; $6808: $0a
    dec e                                         ; $6809: $1d
    adc a                                         ; $680a: $8f
    ret                                           ; $680b: $c9


    rst $20                                       ; $680c: $e7
    xor d                                         ; $680d: $aa
    ld a, [bc]                                    ; $680e: $0a
    ld [$bf9e], a                                 ; $680f: $ea $9e $bf
    add d                                         ; $6812: $82
    jr nc, @-$0c                                  ; $6813: $30 $f2

    reti                                          ; $6815: $d9


    ld h, b                                       ; $6816: $60
    ld e, $5d                                     ; $6817: $1e $5d
    ld [$330e], a                                 ; $6819: $ea $0e $33

jr_044_681c:
    xor h                                         ; $681c: $ac
    ld e, a                                       ; $681d: $5f
    ld bc, $7ded                                  ; $681e: $01 $ed $7d
    sbc b                                         ; $6821: $98
    ld a, [hl]                                    ; $6822: $7e
    ld d, $2a                                     ; $6823: $16 $2a
    ld b, a                                       ; $6825: $47
    cp h                                          ; $6826: $bc
    ld de, $46a4                                  ; $6827: $11 $a4 $46
    jr jr_044_6882                                ; $682a: $18 $56

    sbc l                                         ; $682c: $9d
    inc a                                         ; $682d: $3c
    cp a                                          ; $682e: $bf
    ld l, $b5                                     ; $682f: $2e $b5
    rst $18                                       ; $6831: $df
    adc h                                         ; $6832: $8c
    ld b, b                                       ; $6833: $40
    sbc a                                         ; $6834: $9f
    ld c, [hl]                                    ; $6835: $4e
    rst $38                                       ; $6836: $ff
    ld a, [c]                                     ; $6837: $f2
    ld l, c                                       ; $6838: $69
    set 1, [hl]                                   ; $6839: $cb $ce
    dec sp                                        ; $683b: $3b
    and d                                         ; $683c: $a2
    add $a6                                       ; $683d: $c6 $a6
    ld e, a                                       ; $683f: $5f
    ld bc, $196d                                  ; $6840: $01 $6d $19
    push de                                       ; $6843: $d5
    ld h, h                                       ; $6844: $64
    and d                                         ; $6845: $a2
    ld l, $cb                                     ; $6846: $2e $cb
    sbc b                                         ; $6848: $98
    sbc e                                         ; $6849: $9b
    ld a, [hl]                                    ; $684a: $7e
    dec b                                         ; $684b: $05
    or l                                          ; $684c: $b5
    rst $18                                       ; $684d: $df
    adc h                                         ; $684e: $8c
    ld b, b                                       ; $684f: $40
    call Call_044_4e78                            ; $6850: $cd $78 $4e
    pop af                                        ; $6853: $f1
    xor b                                         ; $6854: $a8
    sub c                                         ; $6855: $91
    ld b, d                                       ; $6856: $42
    sbc l                                         ; $6857: $9d
    ld b, e                                       ; $6858: $43
    add hl, hl                                    ; $6859: $29
    ld d, e                                       ; $685a: $53
    ld l, e                                       ; $685b: $6b
    dec b                                         ; $685c: $05
    sbc l                                         ; $685d: $9d
    adc $56                                       ; $685e: $ce $56
    xor b                                         ; $6860: $a8
    add $38                                       ; $6861: $c6 $38
    dec [hl]                                      ; $6863: $35
    ld [hl+], a                                   ; $6864: $22
    ret c                                         ; $6865: $d8

    ei                                            ; $6866: $fb
    db $e3                                        ; $6867: $e3
    dec e                                         ; $6868: $1d
    ld b, e                                       ; $6869: $43
    pop hl                                        ; $686a: $e1
    rst $10                                       ; $686b: $d7
    ld b, l                                       ; $686c: $45
    dec c                                         ; $686d: $0d
    adc c                                         ; $686e: $89
    ld a, h                                       ; $686f: $7c
    ld e, c                                       ; $6870: $59
    ret nz                                        ; $6871: $c0

    db $fc                                        ; $6872: $fc
    ld d, c                                       ; $6873: $51
    rla                                           ; $6874: $17
    ld [$1bdb], sp                                ; $6875: $08 $db $1b
    ld [hl], d                                    ; $6878: $72
    sub d                                         ; $6879: $92
    ld h, l                                       ; $687a: $65
    ld c, d                                       ; $687b: $4a
    ld b, c                                       ; $687c: $41
    add hl, hl                                    ; $687d: $29
    inc de                                        ; $687e: $13
    add l                                         ; $687f: $85
    cp l                                          ; $6880: $bd
    ccf                                           ; $6881: $3f

jr_044_6882:
    ld [hl], l                                    ; $6882: $75
    rrca                                          ; $6883: $0f
    ld l, h                                       ; $6884: $6c
    sbc a                                         ; $6885: $9f
    ld [hl], $6f                                  ; $6886: $36 $6f
    ld c, a                                       ; $6888: $4f
    add hl, de                                    ; $6889: $19
    rst $28                                       ; $688a: $ef
    ld l, a                                       ; $688b: $6f
    db $f4                                        ; $688c: $f4
    pop af                                        ; $688d: $f1
    inc [hl]                                      ; $688e: $34
    xor b                                         ; $688f: $a8
    adc c                                         ; $6890: $89
    di                                            ; $6891: $f3
    inc hl                                        ; $6892: $23
    ld [hl], l                                    ; $6893: $75
    adc a                                         ; $6894: $8f
    ld b, a                                       ; $6895: $47
    ld a, [c]                                     ; $6896: $f2
    ld a, d                                       ; $6897: $7a
    db $fd                                        ; $6898: $fd
    ld a, l                                       ; $6899: $7d
    jr jr_044_6902                                ; $689a: $18 $66

    ld h, e                                       ; $689c: $63
    ld b, a                                       ; $689d: $47
    inc h                                         ; $689e: $24
    ld a, $4f                                     ; $689f: $3e $4f
    ld a, [hl-]                                   ; $68a1: $3a
    ld a, [$c785]                                 ; $68a2: $fa $85 $c7
    ld [c], a                                     ; $68a5: $e2
    dec a                                         ; $68a6: $3d
    sbc c                                         ; $68a7: $99
    ld a, h                                       ; $68a8: $7c
    call c, $7908                                 ; $68a9: $dc $08 $79
    ld [c], a                                     ; $68ac: $e2
    ld h, b                                       ; $68ad: $60
    ld a, e                                       ; $68ae: $7b
    ld a, [c]                                     ; $68af: $f2
    ld a, [hl+]                                   ; $68b0: $2a
    ld a, a                                       ; $68b1: $7f
    sub h                                         ; $68b2: $94
    rst $18                                       ; $68b3: $df
    or $f4                                        ; $68b4: $f6 $f4
    dec hl                                        ; $68b6: $2b
    ld [hl], l                                    ; $68b7: $75
    ld b, [hl]                                    ; $68b8: $46
    or d                                          ; $68b9: $b2
    ret c                                         ; $68ba: $d8

    ld [$7715], sp                                ; $68bb: $08 $15 $77
    ld l, a                                       ; $68be: $6f
    adc b                                         ; $68bf: $88
    rrca                                          ; $68c0: $0f
    push bc                                       ; $68c1: $c5
    adc [hl]                                      ; $68c2: $8e
    ld c, h                                       ; $68c3: $4c
    add l                                         ; $68c4: $85
    sbc d                                         ; $68c5: $9a
    dec hl                                        ; $68c6: $2b
    ld l, l                                       ; $68c7: $6d
    sbc $18                                       ; $68c8: $de $18
    add h                                         ; $68ca: $84
    jr c, @-$55                                   ; $68cb: $38 $a9

    ld l, $fe                                     ; $68cd: $2e $fe
    ld c, a                                       ; $68cf: $4f
    ld sp, hl                                     ; $68d0: $f9
    ld c, l                                       ; $68d1: $4d
    ld a, $8f                                     ; $68d2: $3e $8f
    ld l, $d5                                     ; $68d4: $2e $d5
    rst $20                                       ; $68d6: $e7
    scf                                           ; $68d7: $37
    db $db                                        ; $68d8: $db
    push bc                                       ; $68d9: $c5
    ld b, c                                       ; $68da: $41
    ld hl, sp-$57                                 ; $68db: $f8 $a9
    ld e, l                                       ; $68dd: $5d
    sbc h                                         ; $68de: $9c
    ld b, c                                       ; $68df: $41
    adc l                                         ; $68e0: $8d
    ld c, h                                       ; $68e1: $4c
    sbc h                                         ; $68e2: $9c
    rra                                           ; $68e3: $1f
    jp hl                                         ; $68e4: $e9


    ld [hl], h                                    ; $68e5: $74
    or [hl]                                       ; $68e6: $b6
    ld b, d                                       ; $68e7: $42
    dec [hl]                                      ; $68e8: $35
    add $a9                                       ; $68e9: $c6 $a9
    ld l, $d4                                     ; $68eb: $2e $d4
    cp c                                          ; $68ed: $b9
    ld d, e                                       ; $68ee: $53
    or b                                          ; $68ef: $b0
    ld a, d                                       ; $68f0: $7a
    ld a, [$9cb4]                                 ; $68f1: $fa $b4 $9c
    ld [c], a                                     ; $68f4: $e2
    db $ec                                        ; $68f5: $ec
    sbc b                                         ; $68f6: $98
    daa                                           ; $68f7: $27
    add d                                         ; $68f8: $82
    cp l                                          ; $68f9: $bd
    sub c                                         ; $68fa: $91
    jp nz, Jump_000_1bd8                          ; $68fb: $c2 $d8 $1b

    db $fd                                        ; $68fe: $fd
    ld a, [bc]                                    ; $68ff: $0a
    sbc [hl]                                      ; $6900: $9e
    rla                                           ; $6901: $17

jr_044_6902:
    ld [$29dc], a                                 ; $6902: $ea $dc $29
    ld e, b                                       ; $6905: $58
    dec a                                         ; $6906: $3d
    ld h, c                                       ; $6907: $61
    jp z, $ba7c                                   ; $6908: $ca $7c $ba

    inc d                                         ; $690b: $14
    ld b, h                                       ; $690c: $44
    ld b, [hl]                                    ; $690d: $46
    or d                                          ; $690e: $b2
    ccf                                           ; $690f: $3f
    and l                                         ; $6910: $a5
    ld [bc], a                                    ; $6911: $02
    di                                            ; $6912: $f3
    ld b, l                                       ; $6913: $45
    ld e, l                                       ; $6914: $5d
    ld d, $1b                                     ; $6915: $16 $1b
    and c                                         ; $6917: $a1
    ld [c], a                                     ; $6918: $e2

jr_044_6919:
    xor $0d                                       ; $6919: $ee $0d
    cp c                                          ; $691b: $b9
    sbc l                                         ; $691c: $9d
    ld b, d                                       ; $691d: $42
    daa                                           ; $691e: $27
    ld [hl-], a                                   ; $691f: $32
    dec d                                         ; $6920: $15
    ld l, d                                       ; $6921: $6a
    xor [hl]                                      ; $6922: $ae
    or l                                          ; $6923: $b5
    rst $18                                       ; $6924: $df
    adc h                                         ; $6925: $8c
    add b                                         ; $6926: $80
    ld l, $4c                                     ; $6927: $2e $4c
    sbc c                                         ; $6929: $99
    cpl                                           ; $692a: $2f
    ld [$c8dc], a                                 ; $692b: $ea $dc $c8
    call nz, Call_000_11f9                        ; $692e: $c4 $f9 $11

jr_044_6931:
    rst $18                                       ; $6931: $df
    db $db                                        ; $6932: $db
    db $10                                        ; $6933: $10
    ld b, [hl]                                    ; $6934: $46
    jp z, $b67d                                   ; $6935: $ca $7d $b6

    rlca                                          ; $6938: $07
    sub l                                         ; $6939: $95
    ld [hl], e                                    ; $693a: $73
    sbc a                                         ; $693b: $9f
    dec b                                         ; $693c: $05
    ld d, [hl]                                    ; $693d: $56
    ld b, [hl]                                    ; $693e: $46
    ld a, $ea                                     ; $693f: $3e $ea
    ld [c], a                                     ; $6941: $e2
    add sp, -$5b                                  ; $6942: $e8 $a5
    db $d3                                        ; $6944: $d3
    reti                                          ; $6945: $d9


    ld a, [bc]                                    ; $6946: $0a
    push de                                       ; $6947: $d5
    jr jr_044_6931                                ; $6948: $18 $e7

    push af                                       ; $694a: $f5
    ld a, [$2cfb]                                 ; $694b: $fa $fb $2c
    ld c, a                                       ; $694e: $4f
    db $ed                                        ; $694f: $ed
    ei                                            ; $6950: $fb
    ld hl, sp+$22                                 ; $6951: $f8 $22
    adc $a3                                       ; $6953: $ce $a3
    ld b, [hl]                                    ; $6955: $46
    ld c, [hl]                                    ; $6956: $4e
    and d                                         ; $6957: $a2
    sbc l                                         ; $6958: $9d
    ld c, l                                       ; $6959: $4d
    ld a, h                                       ; $695a: $7c
    ld l, a                                       ; $695b: $6f
    ld b, e                                       ; $695c: $43
    jr jr_044_6919                                ; $695d: $18 $ba

    ret z                                         ; $695f: $c8

    ld c, b                                       ; $6960: $48
    ld hl, sp-$3e                                 ; $6961: $f8 $c2
    ld h, e                                       ; $6963: $63
    ld c, $56                                     ; $6964: $0e $56
    ld c, a                                       ; $6966: $4f
    xor b                                         ; $6967: $a8
    call nz, $82fd                                ; $6968: $c4 $fd $82
    cp l                                          ; $696b: $bd
    and a                                         ; $696c: $a7
    ld c, a                                       ; $696d: $4f
    xor e                                         ; $696e: $ab
    ld a, [bc]                                    ; $696f: $0a
    and l                                         ; $6970: $a5
    ld c, h                                       ; $6971: $4c
    ld l, d                                       ; $6972: $6a
    and h                                         ; $6973: $a4
    add d                                         ; $6974: $82
    or [hl]                                       ; $6975: $b6
    ld l, a                                       ; $6976: $6f
    ld a, [c]                                     ; $6977: $f2
    and d                                         ; $6978: $a2
    sbc $90                                       ; $6979: $de $90
    adc a                                         ; $697b: $8f
    ld a, [de]                                    ; $697c: $1a
    xor e                                         ; $697d: $ab
    adc $d0                                       ; $697e: $ce $d0
    xor a                                         ; $6980: $af
    ld l, l                                       ; $6981: $6d
    rst $28                                       ; $6982: $ef
    ld d, h                                       ; $6983: $54
    scf                                           ; $6984: $37
    xor c                                         ; $6985: $a9
    ld e, [hl]                                    ; $6986: $5e
    jr jr_044_6a04                                ; $6987: $18 $7b

    ld c, a                                       ; $6989: $4f
    sbc h                                         ; $698a: $9c
    rra                                           ; $698b: $1f
    ld sp, $4288                                  ; $698c: $31 $88 $42
    ld c, [hl]                                    ; $698f: $4e
    ret z                                         ; $6990: $c8

    dec hl                                        ; $6991: $2b
    and a                                         ; $6992: $a7
    cp a                                          ; $6993: $bf
    ld a, l                                       ; $6994: $7d
    ld a, l                                       ; $6995: $7d
    rst $18                                       ; $6996: $df
    and a                                         ; $6997: $a7
    ld b, [hl]                                    ; $6998: $46
    ld a, b                                       ; $6999: $78
    ld c, h                                       ; $699a: $4c
    sbc [hl]                                      ; $699b: $9e
    and a                                         ; $699c: $a7
    ld h, [hl]                                    ; $699d: $66
    jp c, $f388                                   ; $699e: $da $88 $f3

    xor b                                         ; $69a1: $a8
    sub c                                         ; $69a2: $91
    rla                                           ; $69a3: $17
    rst $20                                       ; $69a4: $e7
    ld b, a                                       ; $69a5: $47
    xor b                                         ; $69a6: $a8
    ld b, h                                       ; $69a7: $44
    ld a, a                                       ; $69a8: $7f
    jp c, $303e                                   ; $69a9: $da $3e $30

    ld c, a                                       ; $69ac: $4f
    cp a                                          ; $69ad: $bf
    ld [bc], a                                    ; $69ae: $02
    ld l, l                                       ; $69af: $6d
    ld c, e                                       ; $69b0: $4b
    call c, Call_000_0997                         ; $69b1: $dc $97 $09
    ld e, a                                       ; $69b4: $5f
    ld a, [bc]                                    ; $69b5: $0a

jr_044_69b6:
    adc h                                         ; $69b6: $8c
    db $fc                                        ; $69b7: $fc
    ld a, [hl]                                    ; $69b8: $7e
    dec b                                         ; $69b9: $05
    dec e                                         ; $69ba: $1d
    db $db                                        ; $69bb: $db
    sub b                                         ; $69bc: $90
    sbc a                                         ; $69bd: $9f
    jp c, $d9af                                   ; $69be: $da $af $d9

    xor c                                         ; $69c1: $a9
    ld [$f6f6], sp                                ; $69c2: $08 $f6 $f6
    ld a, b                                       ; $69c5: $78
    or [hl]                                       ; $69c6: $b6
    sbc e                                         ; $69c7: $9b
    jr z, jr_044_69b6                             ; $69c8: $28 $ec

    db $fd                                        ; $69ca: $fd
    ld l, c                                       ; $69cb: $69
    bit 1, [hl]                                   ; $69cc: $cb $4e
    or h                                          ; $69ce: $b4
    ld h, c                                       ; $69cf: $61
    xor $57                                       ; $69d0: $ee $57
    xor l                                         ; $69d2: $ad
    ld a, [hl-]                                   ; $69d3: $3a
    rra                                           ; $69d4: $1f
    ld a, d                                       ; $69d5: $7a
    add l                                         ; $69d6: $85
    ccf                                           ; $69d7: $3f
    dec de                                        ; $69d8: $1b
    xor c                                         ; $69d9: $a9
    ld h, b                                       ; $69da: $60
    xor $fa                                       ; $69db: $ee $fa
    dec d                                         ; $69dd: $15

Jump_044_69de:
    cp [hl]                                       ; $69de: $be
    cp a                                          ; $69df: $bf
    cpl                                           ; $69e0: $2f
    add l                                         ; $69e1: $85
    xor $ed                                       ; $69e2: $ee $ed
    pop de                                        ; $69e4: $d1
    ld b, [hl]                                    ; $69e5: $46
    ld e, c                                       ; $69e6: $59
    inc c                                         ; $69e7: $0c
    and l                                         ; $69e8: $a5
    ld c, h                                       ; $69e9: $4c
    ld d, $58                                     ; $69ea: $16 $58
    ld l, d                                       ; $69ec: $6a
    adc a                                         ; $69ed: $8f
    sub $dd                                       ; $69ee: $d6 $dd
    dec de                                        ; $69f0: $1b
    sub a                                         ; $69f1: $97
    ld a, [hl]                                    ; $69f2: $7e
    dec b                                         ; $69f3: $05
    dec e                                         ; $69f4: $1d
    db $db                                        ; $69f5: $db
    sub b                                         ; $69f6: $90
    rra                                           ; $69f7: $1f
    ld a, [hl+]                                   ; $69f8: $2a
    ld e, c                                       ; $69f9: $59
    and [hl]                                      ; $69fa: $a6
    ldh a, [$a4]                                  ; $69fb: $f0 $a4
    ret nc                                        ; $69fd: $d0

    cp l                                          ; $69fe: $bd
    dec a                                         ; $69ff: $3d
    jp c, $8b28                                   ; $6a00: $da $28 $8b

    and c                                         ; $6a03: $a1

jr_044_6a04:
    sub h                                         ; $6a04: $94
    ret                                           ; $6a05: $c9


    ld [bc], a                                    ; $6a06: $02
    ld c, e                                       ; $6a07: $4b
    db $ed                                        ; $6a08: $ed
    pop de                                        ; $6a09: $d1
    cp d                                          ; $6a0a: $ba
    ld a, e                                       ; $6a0b: $7b
    db $e3                                        ; $6a0c: $e3
    jp nc, $adaf                                  ; $6a0d: $d2 $af $ad

    ld [hl-], a                                   ; $6a10: $32
    db $db                                        ; $6a11: $db
    sub e                                         ; $6a12: $93
    or b                                          ; $6a13: $b0

Jump_044_6a14:
    ld a, [c]                                     ; $6a14: $f2
    cp c                                          ; $6a15: $b9
    sbc l                                         ; $6a16: $9d
    db $fd                                        ; $6a17: $fd
    jp c, $2bf4                                   ; $6a18: $da $f4 $2b

    xor l                                         ; $6a1b: $ad
    ld [hl-], a                                   ; $6a1c: $32
    db $db                                        ; $6a1d: $db
    sub e                                         ; $6a1e: $93
    or b                                          ; $6a1f: $b0
    ld a, [c]                                     ; $6a20: $f2
    cp c                                          ; $6a21: $b9
    sub h                                         ; $6a22: $94

jr_044_6a23:
    ld h, c                                       ; $6a23: $61
    add [hl]                                      ; $6a24: $86
    reti                                          ; $6a25: $d9


    dec bc                                        ; $6a26: $0b
    ld l, $ea                                     ; $6a27: $2e $ea
    ld d, d                                       ; $6a29: $52
    ld a, e                                       ; $6a2a: $7b
    or h                                          ; $6a2b: $b4
    xor $de                                       ; $6a2c: $ee $de
    cp b                                          ; $6a2e: $b8
    db $f4                                        ; $6a2f: $f4
    dec hl                                        ; $6a30: $2b
    ld [hl], l                                    ; $6a31: $75
    rst $18                                       ; $6a32: $df
    jr jr_044_6a23                                ; $6a33: $18 $ee

    sub [hl]                                      ; $6a35: $96
    rst $08                                       ; $6a36: $cf
    rst $28                                       ; $6a37: $ef
    db $fd                                        ; $6a38: $fd
    pop af                                        ; $6a39: $f1
    add h                                         ; $6a3a: $84
    ld e, l                                       ; $6a3b: $5d
    dec [hl]                                      ; $6a3c: $35
    ld [hl], d                                    ; $6a3d: $72
    rra                                           ; $6a3e: $1f
    add l                                         ; $6a3f: $85
    cp l                                          ; $6a40: $bd
    daa                                           ; $6a41: $27
    cp [hl]                                       ; $6a42: $be
    push de                                       ; $6a43: $d5
    dec d                                         ; $6a44: $15
    cp $0a                                        ; $6a45: $fe $0a
    jp nz, $afd3                                  ; $6a47: $c2 $d3 $af

    dec e                                         ; $6a4a: $1d
    db $db                                        ; $6a4b: $db
    sub b                                         ; $6a4c: $90
    sbc a                                         ; $6a4d: $9f
    or [hl]                                       ; $6a4e: $b6
    db $ec                                        ; $6a4f: $ec
    cp h                                          ; $6a50: $bc
    inc hl                                        ; $6a51: $23
    ld l, d                                       ; $6a52: $6a
    ld l, h                                       ; $6a53: $6c
    ld a, [$9d15]                                 ; $6a54: $fa $15 $9d
    cp $45                                        ; $6a57: $fe $45
    or b                                          ; $6a59: $b0
    or a                                          ; $6a5a: $b7
    rst $00                                       ; $6a5b: $c7
    db $d3                                        ; $6a5c: $d3
    db $fd                                        ; $6a5d: $fd
    ld d, c                                       ; $6a5e: $51
    sub a                                         ; $6a5f: $97
    cp d                                          ; $6a60: $ba
    ld b, e                                       ; $6a61: $43
    cp h                                          ; $6a62: $bc
    sub c                                         ; $6a63: $91
    db $eb                                        ; $6a64: $eb
    ld d, a                                       ; $6a65: $57
    dec e                                         ; $6a66: $1d
    db $db                                        ; $6a67: $db
    sub b                                         ; $6a68: $90
    rra                                           ; $6a69: $1f
    ld l, l                                       ; $6a6a: $6d
    ld e, a                                       ; $6a6b: $5f

jr_044_6a6c:
    ld c, [hl]                                    ; $6a6c: $4e
    inc [hl]                                      ; $6a6d: $34
    add e                                         ; $6a6e: $83
    ld a, [hl-]                                   ; $6a6f: $3a
    ld [$165f], sp                                ; $6a70: $08 $5f $16
    ld e, b                                       ; $6a73: $58
    ld [$8f1e], a                                 ; $6a74: $ea $1e $8f
    db $f4                                        ; $6a77: $f4
    dec hl                                        ; $6a78: $2b
    ld e, c                                       ; $6a79: $59
    ld bc, $cf9e                                  ; $6a7a: $01 $9e $cf
    ld c, h                                       ; $6a7d: $4c
    db $ed                                        ; $6a7e: $ed
    ld [hl], e                                    ; $6a7f: $73
    dec sp                                        ; $6a80: $3b
    ld l, [hl]                                    ; $6a81: $6e
    db $e4                                        ; $6a82: $e4
    or h                                          ; $6a83: $b4
    ld a, l                                       ; $6a84: $7d
    inc de                                        ; $6a85: $13
    scf                                           ; $6a86: $37
    ld a, e                                       ; $6a87: $7b
    inc l                                         ; $6a88: $2c
    set 3, b                                      ; $6a89: $cb $d8
    ld [hl-], a                                   ; $6a8b: $32
    or $fd                                        ; $6a8c: $f6 $fd
    ld a, [bc]                                    ; $6a8e: $0a
    dec e                                         ; $6a8f: $1d
    db $db                                        ; $6a90: $db
    sub b                                         ; $6a91: $90
    sbc a                                         ; $6a92: $9f
    ld h, [hl]                                    ; $6a93: $66
    inc bc                                        ; $6a94: $03
    db $d3                                        ; $6a95: $d3
    inc hl                                        ; $6a96: $23
    dec bc                                        ; $6a97: $0b
    inc l                                         ; $6a98: $2c
    ei                                            ; $6a99: $fb
    or e                                          ; $6a9a: $b3
    ld b, c                                       ; $6a9b: $41
    cp h                                          ; $6a9c: $bc
    ld de, $5d44                                  ; $6a9d: $11 $44 $5d
    jp c, $fd30                                   ; $6aa0: $da $30 $fd

    db $ec                                        ; $6aa3: $ec
    pop de                                        ; $6aa4: $d1
    xor $fb                                       ; $6aa5: $ee $fb
    dec d                                         ; $6aa7: $15
    dec e                                         ; $6aa8: $1d
    db $db                                        ; $6aa9: $db
    sub b                                         ; $6aaa: $90
    sbc a                                         ; $6aab: $9f
    ld h, [hl]                                    ; $6aac: $66
    inc bc                                        ; $6aad: $03
    db $d3                                        ; $6aae: $d3
    inc hl                                        ; $6aaf: $23
    dec bc                                        ; $6ab0: $0b
    inc l                                         ; $6ab1: $2c
    ei                                            ; $6ab2: $fb
    or e                                          ; $6ab3: $b3
    ld b, c                                       ; $6ab4: $41
    cp h                                          ; $6ab5: $bc
    ld de, $5d44                                  ; $6ab6: $11 $44 $5d
    jp c, $fd30                                   ; $6ab9: $da $30 $fd

    db $ec                                        ; $6abc: $ec
    pop de                                        ; $6abd: $d1
    xor $fb                                       ; $6abe: $ee $fb
    dec d                                         ; $6ac0: $15
    ld e, c                                       ; $6ac1: $59
    ld bc, $0159                                  ; $6ac2: $01 $59 $01
    dec e                                         ; $6ac5: $1d
    db $db                                        ; $6ac6: $db
    sub b                                         ; $6ac7: $90
    sbc a                                         ; $6ac8: $9f
    db $ed                                        ; $6ac9: $ed
    pop af                                        ; $6aca: $f1
    ld [hl], h                                    ; $6acb: $74
    ld a, a                                       ; $6acc: $7f
    call nc, $f5a5                                ; $6acd: $d4 $a5 $f5
    di                                            ; $6ad0: $f3
    and d                                         ; $6ad1: $a2
    ld a, h                                       ; $6ad2: $7c
    call c, $db08                                 ; $6ad3: $dc $08 $db
    ld h, h                                       ; $6ad6: $64
    inc hl                                        ; $6ad7: $23
    xor l                                         ; $6ad8: $ad
    ld a, [de]                                    ; $6ad9: $1a
    ld e, a                                       ; $6ada: $5f

jr_044_6adb:
    ld a, [hl-]                                   ; $6adb: $3a
    jr z, jr_044_6a6c                             ; $6adc: $28 $8e

    ld a, [de]                                    ; $6ade: $1a
    ld a, [$9e15]                                 ; $6adf: $fa $15 $9e
    jr nc, jr_044_6adb                            ; $6ae2: $30 $f7

    ld d, c                                       ; $6ae4: $51
    sub a                                         ; $6ae5: $97
    ld a, l                                       ; $6ae6: $7d
    ld a, d                                       ; $6ae7: $7a
    ret c                                         ; $6ae8: $d8

    dec de                                        ; $6ae9: $1b
    ld e, a                                       ; $6aea: $5f
    call nc, $fdef                                ; $6aeb: $d4 $ef $fd
    ld h, c                                       ; $6aee: $61
    ld a, [$7ea9]                                 ; $6aef: $fa $a9 $7e
    ld b, e                                       ; $6af2: $43
    dec e                                         ; $6af3: $1d
    pop af                                        ; $6af4: $f1
    ld b, [hl]                                    ; $6af5: $46
    ret nc                                        ; $6af6: $d0

    xor a                                         ; $6af7: $af
    ld e, c                                       ; $6af8: $59
    ld bc, $c11d                                  ; $6af9: $01 $1d $c1
    pop de                                        ; $6afc: $d1
    dec b                                         ; $6afd: $05
    or $d9                                        ; $6afe: $f6 $d9
    sbc a                                         ; $6b00: $9f
    adc [hl]                                      ; $6b01: $8e
    adc $8d                                       ; $6b02: $ce $8d
    add hl, hl                                    ; $6b04: $29
    db $ec                                        ; $6b05: $ec
    db $fd                                        ; $6b06: $fd
    ld e, c                                       ; $6b07: $59
    inc c                                         ; $6b08: $0c
    push hl                                       ; $6b09: $e5
    and e                                         ; $6b0a: $a3
    ld a, $ad                                     ; $6b0b: $3e $ad
    db $db                                        ; $6b0d: $db
    cp e                                          ; $6b0e: $bb
    jp hl                                         ; $6b0f: $e9


    ld d, a                                       ; $6b10: $57
    ld e, c                                       ; $6b11: $59
    ld bc, $0159                                  ; $6b12: $01 $59 $01
    dec e                                         ; $6b15: $1d
    adc a                                         ; $6b16: $8f
    ret                                           ; $6b17: $c9


    ld b, a                                       ; $6b18: $47
    or b                                          ; $6b19: $b0
    or a                                          ; $6b1a: $b7
    rst $00                                       ; $6b1b: $c7
    db $d3                                        ; $6b1c: $d3
    db $fd                                        ; $6b1d: $fd
    ld d, c                                       ; $6b1e: $51
    rla                                           ; $6b1f: $17
    ld e, a                                       ; $6b20: $5f
    ld e, $bb                                     ; $6b21: $1e $bb
    adc a                                         ; $6b23: $8f

jr_044_6b24:
    jp nz, $9fde                                  ; $6b24: $c2 $de $9f

    or $5f                                        ; $6b27: $f6 $5f
    cp e                                          ; $6b29: $bb
    rst $28                                       ; $6b2a: $ef
    ld d, a                                       ; $6b2b: $57
    dec e                                         ; $6b2c: $1d
    db $db                                        ; $6b2d: $db
    sub b                                         ; $6b2e: $90
    sbc a                                         ; $6b2f: $9f
    db $fd                                        ; $6b30: $fd
    pop af                                        ; $6b31: $f1
    sbc [hl]                                      ; $6b32: $9e
    ld b, [hl]                                    ; $6b33: $46
    db $ed                                        ; $6b34: $ed
    db $e4                                        ; $6b35: $e4
    and e                                         ; $6b36: $a3
    ld l, $9e                                     ; $6b37: $2e $9e
    ld h, a                                       ; $6b39: $67
    ld c, $fd                                     ; $6b3a: $0e $fd
    ld a, [bc]                                    ; $6b3c: $0a
    dec e                                         ; $6b3d: $1d
    db $db                                        ; $6b3e: $db
    sub b                                         ; $6b3f: $90
    sbc a                                         ; $6b40: $9f
    db $fd                                        ; $6b41: $fd
    pop af                                        ; $6b42: $f1
    sbc [hl]                                      ; $6b43: $9e
    ld b, [hl]                                    ; $6b44: $46
    db $ed                                        ; $6b45: $ed
    db $e4                                        ; $6b46: $e4
    and e                                         ; $6b47: $a3
    ld l, $9e                                     ; $6b48: $2e $9e
    ld h, a                                       ; $6b4a: $67
    ld c, $fd                                     ; $6b4b: $0e $fd
    ld a, [bc]                                    ; $6b4d: $0a
    ld e, c                                       ; $6b4e: $59
    ld bc, $0159                                  ; $6b4f: $01 $59 $01
    ld e, c                                       ; $6b52: $59
    ld bc, $8f1d                                  ; $6b53: $01 $1d $8f
    ret                                           ; $6b56: $c9


    ld b, a                                       ; $6b57: $47
    or b                                          ; $6b58: $b0
    or a                                          ; $6b59: $b7
    rst $00                                       ; $6b5a: $c7
    db $d3                                        ; $6b5b: $d3
    db $fd                                        ; $6b5c: $fd
    ld d, c                                       ; $6b5d: $51
    rla                                           ; $6b5e: $17
    ld e, a                                       ; $6b5f: $5f
    ld e, $bb                                     ; $6b60: $1e $bb
    adc a                                         ; $6b62: $8f
    jp nz, $9fde                                  ; $6b63: $c2 $de $9f

    or $5f                                        ; $6b66: $f6 $5f
    cp e                                          ; $6b68: $bb
    rst $28                                       ; $6b69: $ef
    ld d, a                                       ; $6b6a: $57
    ld e, c                                       ; $6b6b: $59
    ld bc, $0159                                  ; $6b6c: $01 $59 $01
    ld e, c                                       ; $6b6f: $59
    ld bc, $0159                                  ; $6b70: $01 $59 $01
    ld e, c                                       ; $6b73: $59
    ld bc, $0159                                  ; $6b74: $01 $59 $01
    ld e, c                                       ; $6b77: $59
    ld bc, $0159                                  ; $6b78: $01 $59 $01
    xor l                                         ; $6b7b: $ad
    dec a                                         ; $6b7c: $3d
    di                                            ; $6b7d: $f3
    pop af                                        ; $6b7e: $f1
    push bc                                       ; $6b7f: $c5
    adc l                                         ; $6b80: $8d
    and h                                         ; $6b81: $a4
    ld [hl], l                                    ; $6b82: $75
    ld a, e                                       ; $6b83: $7b
    scf                                           ; $6b84: $37
    db $fd                                        ; $6b85: $fd
    ld a, [bc]                                    ; $6b86: $0a
    sbc l                                         ; $6b87: $9d
    cp $45                                        ; $6b88: $fe $45
    or b                                          ; $6b8a: $b0
    rst $30                                       ; $6b8b: $f7
    and a                                         ; $6b8c: $a7
    db $fc                                        ; $6b8d: $fc
    cp $28                                        ; $6b8e: $fe $28
    ld e, h                                       ; $6b90: $5c
    ret c                                         ; $6b91: $d8

    add $8b                                       ; $6b92: $c6 $8b
    rlc d                                         ; $6b94: $cb $02
    set 5, l                                      ; $6b96: $cb $ed
    jr z, jr_044_6b24                             ; $6b98: $28 $8a

    cp l                                          ; $6b9a: $bd
    daa                                           ; $6b9b: $27
    ld [$8152], a                                 ; $6b9c: $ea $52 $81
    ld c, b                                       ; $6b9f: $48
    ld a, h                                       ; $6ba0: $7c
    add hl, de                                    ; $6ba1: $19
    ld h, [hl]                                    ; $6ba2: $66
    db $f4                                        ; $6ba3: $f4
    dec hl                                        ; $6ba4: $2b
    dec e                                         ; $6ba5: $1d
    adc a                                         ; $6ba6: $8f
    ret                                           ; $6ba7: $c9


    rst $20                                       ; $6ba8: $e7
    db $d3                                        ; $6ba9: $d3
    sub [hl]                                      ; $6baa: $96
    sbc l                                         ; $6bab: $9d
    ld [hl], a                                    ; $6bac: $77
    ld b, h                                       ; $6bad: $44
    adc l                                         ; $6bae: $8d
    ld c, l                                       ; $6baf: $4d
    cp a                                          ; $6bb0: $bf
    ld [bc], a                                    ; $6bb1: $02
    ld e, c                                       ; $6bb2: $59
    ld bc, $0159                                  ; $6bb3: $01 $59 $01
    ld e, c                                       ; $6bb6: $59
    ld bc, $0159                                  ; $6bb7: $01 $59 $01
    ld e, c                                       ; $6bba: $59
    ld bc, $0159                                  ; $6bbb: $01 $59 $01
    ld e, c                                       ; $6bbe: $59
    ld bc, $0159                                  ; $6bbf: $01 $59 $01
    ld e, c                                       ; $6bc2: $59
    ld bc, $0159                                  ; $6bc3: $01 $59 $01
    sbc l                                         ; $6bc6: $9d
    cp $e5                                        ; $6bc7: $fe $e5
    rst $30                                       ; $6bc9: $f7
    cp $78                                        ; $6bca: $fe $78
    ld d, c                                       ; $6bcc: $51
    ld hl, sp-$5d                                 ; $6bcd: $f8 $a3
    ld l, $b5                                     ; $6bcf: $2e $b5
    ld a, a                                       ; $6bd1: $7f
    rst $28                                       ; $6bd2: $ef
    jp hl                                         ; $6bd3: $e9


    ld c, $90                                     ; $6bd4: $0e $90
    ld a, [hl]                                    ; $6bd6: $7e
    dec b                                         ; $6bd7: $05
    cp [hl]                                       ; $6bd8: $be
    cp a                                          ; $6bd9: $bf
    ret                                           ; $6bda: $c9


    ld c, a                                       ; $6bdb: $4f
    ld l, l                                       ; $6bdc: $6d
    ld e, b                                       ; $6bdd: $58
    ld [hl], l                                    ; $6bde: $75
    inc hl                                        ; $6bdf: $23
    adc b                                         ; $6be0: $88
    ld a, [$6a9d]                                 ; $6be1: $fa $9d $6a
    ld a, [bc]                                    ; $6be4: $0a
    db $db                                        ; $6be5: $db
    db $f4                                        ; $6be6: $f4
    dec hl                                        ; $6be7: $2b
    sbc l                                         ; $6be8: $9d
    cp $45                                        ; $6be9: $fe $45
    or b                                          ; $6beb: $b0
    rst $30                                       ; $6bec: $f7
    rst $00                                       ; $6bed: $c7
    db $fd                                        ; $6bee: $fd
    ld a, [c]                                     ; $6bef: $f2
    ld [hl+], a                                   ; $6bf0: $22
    rra                                           ; $6bf1: $1f
    ld [hl], l                                    ; $6bf2: $75
    xor c                                         ; $6bf3: $a9
    db $fd                                        ; $6bf4: $fd
    sbc d                                         ; $6bf5: $9a
    sbc l                                         ; $6bf6: $9d
    ld [$9d57], a                                 ; $6bf7: $ea $57 $9d
    cp $e5                                        ; $6bfa: $fe $e5
    db $d3                                        ; $6bfc: $d3
    sub [hl]                                      ; $6bfd: $96
    sbc l                                         ; $6bfe: $9d
    ld [hl], a                                    ; $6bff: $77
    ld b, h                                       ; $6c00: $44
    adc l                                         ; $6c01: $8d
    ld c, l                                       ; $6c02: $4d
    cp a                                          ; $6c03: $bf
    ld [bc], a                                    ; $6c04: $02
    dec e                                         ; $6c05: $1d
    sbc l                                         ; $6c06: $9d
    inc bc                                        ; $6c07: $03
    ld a, c                                       ; $6c08: $79
    cp c                                          ; $6c09: $b9
    sbc l                                         ; $6c0a: $9d
    push hl                                       ; $6c0b: $e5
    sbc l                                         ; $6c0c: $9d
    sbc e                                         ; $6c0d: $9b
    ret z                                         ; $6c0e: $c8

    di                                            ; $6c0f: $f3
    rst $28                                       ; $6c10: $ef
    inc hl                                        ; $6c11: $23
    sbc $f4                                       ; $6c12: $de $f4
    dec hl                                        ; $6c14: $2b
    ld l, l                                       ; $6c15: $6d
    sub h                                         ; $6c16: $94
    ld h, l                                       ; $6c17: $65
    adc a                                         ; $6c18: $8f
    ld a, l                                       ; $6c19: $7d
    ld l, d                                       ; $6c1a: $6a
    adc a                                         ; $6c1b: $8f
    sub $dd                                       ; $6c1c: $d6 $dd
    dec de                                        ; $6c1e: $1b
    sub a                                         ; $6c1f: $97
    ld d, h                                       ; $6c20: $54
    db $10                                        ; $6c21: $10
    ld [hl], $a4                                  ; $6c22: $36 $a4

jr_044_6c24:
    ldh [$72], a                                  ; $6c24: $e0 $72
    ld b, d                                       ; $6c26: $42
    ld e, [hl]                                    ; $6c27: $5e
    add hl, sp                                    ; $6c28: $39
    db $fd                                        ; $6c29: $fd
    ld l, l                                       ; $6c2a: $6d
    db $f4                                        ; $6c2b: $f4
    dec hl                                        ; $6c2c: $2b
    ld e, c                                       ; $6c2d: $59
    ld bc, $eebe                                  ; $6c2e: $01 $be $ee
    sub a                                         ; $6c31: $97
    push hl                                       ; $6c32: $e5
    and e                                         ; $6c33: $a3
    ld a, [hl]                                    ; $6c34: $7e
    rst $28                                       ; $6c35: $ef
    adc a                                         ; $6c36: $8f
    cp $f4                                        ; $6c37: $fe $f4
    ei                                            ; $6c39: $fb
    add [hl]                                      ; $6c3a: $86
    pop hl                                        ; $6c3b: $e1
    cp [hl]                                       ; $6c3c: $be
    ld e, a                                       ; $6c3d: $5f
    ld bc, $0159                                  ; $6c3e: $01 $59 $01
    dec e                                         ; $6c41: $1d
    db $db                                        ; $6c42: $db
    sub b                                         ; $6c43: $90
    sbc a                                         ; $6c44: $9f
    dec a                                         ; $6c45: $3d
    pop af                                        ; $6c46: $f1
    ld e, l                                       ; $6c47: $5d
    ldh [$9c], a                                  ; $6c48: $e0 $9c
    rst $38                                       ; $6c4a: $ff
    ld h, $0a                                     ; $6c4b: $26 $0a
    ld a, e                                       ; $6c4d: $7b
    inc hl                                        ; $6c4e: $23
    xor l                                         ; $6c4f: $ad
    reti                                          ; $6c50: $d9


    ld d, a                                       ; $6c51: $57
    add sp, $57                                   ; $6c52: $e8 $57
    ld e, c                                       ; $6c54: $59
    ld bc, $fe9d                                  ; $6c55: $01 $9d $fe
    push hl                                       ; $6c58: $e5
    rst $30                                       ; $6c59: $f7
    cp $b8                                        ; $6c5a: $fe $b8
    ld e, a                                       ; $6c5c: $5f
    ld e, [hl]                                    ; $6c5d: $5e
    db $e4                                        ; $6c5e: $e4
    and e                                         ; $6c5f: $a3
    ld l, $b5                                     ; $6c60: $2e $b5
    ld e, a                                       ; $6c62: $5f
    or e                                          ; $6c63: $b3
    ld d, e                                       ; $6c64: $53
    db $fd                                        ; $6c65: $fd
    ld a, [bc]                                    ; $6c66: $0a
    ld e, c                                       ; $6c67: $59
    ld bc, $db1d                                  ; $6c68: $01 $1d $db
    sub b                                         ; $6c6b: $90
    sbc a                                         ; $6c6c: $9f
    ld h, [hl]                                    ; $6c6d: $66
    and d                                         ; $6c6e: $a2
    db $fd                                        ; $6c6f: $fd
    sbc $27                                       ; $6c70: $de $27
    ret z                                         ; $6c72: $c8

    ld [bc], a                                    ; $6c73: $02
    ld c, e                                       ; $6c74: $4b
    sbc l                                         ; $6c75: $9d
    ld sp, $8c3d                                  ; $6c76: $31 $3d $8c
    and a                                         ; $6c79: $a7
    ld e, a                                       ; $6c7a: $5f
    ld bc, $4b6d                                  ; $6c7b: $01 $6d $4b
    add c                                         ; $6c7e: $81
    ld b, [hl]                                    ; $6c7f: $46
    cpl                                           ; $6c80: $2f
    ld [hl], l                                    ; $6c81: $75
    add $f4                                       ; $6c82: $c6 $f4
    jr nc, jr_044_6c24                            ; $6c84: $30 $9e

    jr c, @+$41                                   ; $6c86: $38 $3f

    ld d, d                                       ; $6c88: $52
    inc hl                                        ; $6c89: $23
    ld e, [hl]                                    ; $6c8a: $5e
    xor d                                         ; $6c8b: $aa
    ld l, c                                       ; $6c8c: $69
    rst $00                                       ; $6c8d: $c7
    db $d3                                        ; $6c8e: $d3
    xor a                                         ; $6c8f: $af
    ld [hl], l                                    ; $6c90: $75
    rst $00                                       ; $6c91: $c7
    ld hl, sp+$53                                 ; $6c92: $f8 $53
    ld h, a                                       ; $6c94: $67
    ld c, h                                       ; $6c95: $4c
    rrca                                          ; $6c96: $0f
    db $e3                                        ; $6c97: $e3
    ret                                           ; $6c98: $c9


    rst $28                                       ; $6c99: $ef
    db $ed                                        ; $6c9a: $ed
    ld sp, $c0a5                                  ; $6c9b: $31 $a5 $c0
    ret z                                         ; $6c9e: $c8

    rst $20                                       ; $6c9f: $e7
    or c                                          ; $6ca0: $b1
    sbc e                                         ; $6ca1: $9b
    ld a, [hl]                                    ; $6ca2: $7e
    dec b                                         ; $6ca3: $05
    dec e                                         ; $6ca4: $1d
    adc a                                         ; $6ca5: $8f
    ret                                           ; $6ca6: $c9


    rst $20                                       ; $6ca7: $e7
    db $d3                                        ; $6ca8: $d3
    sub [hl]                                      ; $6ca9: $96
    sbc l                                         ; $6caa: $9d
    ld [hl], a                                    ; $6cab: $77
    ld b, h                                       ; $6cac: $44
    adc l                                         ; $6cad: $8d
    ld c, l                                       ; $6cae: $4d
    cp a                                          ; $6caf: $bf
    ld [bc], a                                    ; $6cb0: $02
    dec e                                         ; $6cb1: $1d
    db $db                                        ; $6cb2: $db
    sub b                                         ; $6cb3: $90
    sbc a                                         ; $6cb4: $9f
    db $ed                                        ; $6cb5: $ed
    ld b, c                                       ; $6cb6: $41
    push hl                                       ; $6cb7: $e5
    call c, Call_044_4c98                         ; $6cb8: $dc $98 $4c
    cp h                                          ; $6cbb: $bc
    or b                                          ; $6cbc: $b0
    db $e3                                        ; $6cbd: $e3
    jp hl                                         ; $6cbe: $e9


    ld d, a                                       ; $6cbf: $57
    ld e, c                                       ; $6cc0: $59
    ld bc, $0159                                  ; $6cc1: $01 $59 $01
    ld e, c                                       ; $6cc4: $59
    ld bc, $0159                                  ; $6cc5: $01 $59 $01
    sbc l                                         ; $6cc8: $9d
    cp $45                                        ; $6cc9: $fe $45
    or b                                          ; $6ccb: $b0
    db $e3                                        ; $6ccc: $e3
    add hl, sp                                    ; $6ccd: $39
    ld h, [hl]                                    ; $6cce: $66
    and a                                         ; $6ccf: $a7
    and $26                                       ; $6cd0: $e6 $26
    ld [hl], l                                    ; $6cd2: $75
    ld l, l                                       ; $6cd3: $6d
    ld c, [hl]                                    ; $6cd4: $4e
    ld a, a                                       ; $6cd5: $7f
    inc a                                         ; $6cd6: $3c
    db $fd                                        ; $6cd7: $fd
    ld a, [bc]                                    ; $6cd8: $0a
    cp [hl]                                       ; $6cd9: $be
    ld l, [hl]                                    ; $6cda: $6e
    call nz, $9a7b                                ; $6cdb: $c4 $7b $9a
    halt                                          ; $6cde: $76
    cp c                                          ; $6cdf: $b9
    sbc l                                         ; $6ce0: $9d
    adc [hl]                                      ; $6ce1: $8e
    db $ed                                        ; $6ce2: $ed
    dec b                                         ; $6ce3: $05
    ld a, e                                       ; $6ce4: $7b
    ld c, a                                       ; $6ce5: $4f
    inc d                                         ; $6ce6: $14
    halt                                          ; $6ce7: $76
    ld e, d                                       ; $6ce8: $5a
    cp a                                          ; $6ce9: $bf
    daa                                           ; $6cea: $27
    ld h, a                                       ; $6ceb: $67
    ld c, a                                       ; $6cec: $4f
    cp a                                          ; $6ced: $bf
    ld [bc], a                                    ; $6cee: $02
    dec e                                         ; $6cef: $1d
    db $db                                        ; $6cf0: $db
    sub b                                         ; $6cf1: $90
    sbc a                                         ; $6cf2: $9f
    db $fd                                        ; $6cf3: $fd
    ld [hl], c                                    ; $6cf4: $71
    cp $7b                                        ; $6cf5: $fe $7b
    ld [de], a                                    ; $6cf7: $12
    ld sp, hl                                     ; $6cf8: $f9
    db $fd                                        ; $6cf9: $fd
    db $fc                                        ; $6cfa: $fc
    pop de                                        ; $6cfb: $d1
    adc [hl]                                      ; $6cfc: $8e
    ld d, $fe                                     ; $6cfd: $16 $fe

Jump_044_6cff:
    ld a, [hl]                                    ; $6cff: $7e
    dec b                                         ; $6d00: $05
    sbc [hl]                                      ; $6d01: $9e
    ld d, e                                       ; $6d02: $53
    jp hl                                         ; $6d03: $e9


    sbc a                                         ; $6d04: $9f
    ld sp, hl                                     ; $6d05: $f9
    ld [c], a                                     ; $6d06: $e2
    ld b, [hl]                                    ; $6d07: $46
    ld [hl], d                                    ; $6d08: $72
    ld e, c                                       ; $6d09: $59
    ld b, b                                       ; $6d0a: $40
    inc h                                         ; $6d0b: $24
    ld e, [hl]                                    ; $6d0c: $5e
    inc d                                         ; $6d0d: $14
    or h                                          ; $6d0e: $b4
    ld a, l                                       ; $6d0f: $7d
    add hl, hl                                    ; $6d10: $29
    xor $9d                                       ; $6d11: $ee $9d
    di                                            ; $6d13: $f3
    ld e, a                                       ; $6d14: $5f

Call_044_6d15:
    xor d                                         ; $6d15: $aa
    rst $10                                       ; $6d16: $d7
    adc $5d                                       ; $6d17: $ce $5d
    cp a                                          ; $6d19: $bf
    ld [bc], a                                    ; $6d1a: $02
    dec e                                         ; $6d1b: $1d
    ld e, l                                       ; $6d1c: $5d
    sbc c                                         ; $6d1d: $99
    ld c, l                                       ; $6d1e: $4d
    ld e, [hl]                                    ; $6d1f: $5e
    or [hl]                                       ; $6d20: $b6
    rlca                                          ; $6d21: $07
    db $e4                                        ; $6d22: $e4
    or h                                          ; $6d23: $b4
    ld [$b0a3], a                                 ; $6d24: $ea $a3 $b0
    scf                                           ; $6d27: $37
    or d                                          ; $6d28: $b2
    inc c                                         ; $6d29: $0c
    pop af                                        ; $6d2a: $f1
    ld b, [hl]                                    ; $6d2b: $46
    xor [hl]                                      ; $6d2c: $ae
    ld e, a                                       ; $6d2d: $5f
    ld bc, $5d1d                                  ; $6d2e: $01 $1d $5d
    sbc c                                         ; $6d31: $99
    ld c, l                                       ; $6d32: $4d
    ld e, [hl]                                    ; $6d33: $5e
    or [hl]                                       ; $6d34: $b6
    rlca                                          ; $6d35: $07
    db $e4                                        ; $6d36: $e4
    or h                                          ; $6d37: $b4
    ld [$b0a3], a                                 ; $6d38: $ea $a3 $b0
    scf                                           ; $6d3b: $37
    or d                                          ; $6d3c: $b2
    inc c                                         ; $6d3d: $0c
    pop af                                        ; $6d3e: $f1
    ld b, [hl]                                    ; $6d3f: $46
    xor [hl]                                      ; $6d40: $ae
    ld e, a                                       ; $6d41: $5f
    ld bc, $fe9d                                  ; $6d42: $01 $9d $fe
    ld b, l                                       ; $6d45: $45
    or b                                          ; $6d46: $b0
    rst $30                                       ; $6d47: $f7
    rst $00                                       ; $6d48: $c7
    rst $30                                       ; $6d49: $f7
    rst $30                                       ; $6d4a: $f7
    and a                                         ; $6d4b: $a7
    dec l                                         ; $6d4c: $2d
    ld a, e                                       ; $6d4d: $7b
    ld d, c                                       ; $6d4e: $51
    add sp, $57                                   ; $6d4f: $e8 $57
    sbc l                                         ; $6d51: $9d
    cp $45                                        ; $6d52: $fe $45
    or b                                          ; $6d54: $b0
    rst $30                                       ; $6d55: $f7
    rst $00                                       ; $6d56: $c7
    rst $30                                       ; $6d57: $f7
    rst $30                                       ; $6d58: $f7
    and a                                         ; $6d59: $a7
    dec l                                         ; $6d5a: $2d
    ld a, e                                       ; $6d5b: $7b
    ld d, c                                       ; $6d5c: $51
    add sp, $57                                   ; $6d5d: $e8 $57
    dec e                                         ; $6d5f: $1d
    db $db                                        ; $6d60: $db
    sub b                                         ; $6d61: $90
    sbc a                                         ; $6d62: $9f
    db $fd                                        ; $6d63: $fd
    pop af                                        ; $6d64: $f1
    sbc [hl]                                      ; $6d65: $9e
    ld b, [hl]                                    ; $6d66: $46
    db $ed                                        ; $6d67: $ed
    db $e4                                        ; $6d68: $e4
    and e                                         ; $6d69: $a3
    ld l, $b5                                     ; $6d6a: $2e $b5
    rst $18                                       ; $6d6c: $df
    adc h                                         ; $6d6d: $8c
    ld b, b                                       ; $6d6e: $40
    cp a                                          ; $6d6f: $bf
    ld [bc], a                                    ; $6d70: $02
    dec e                                         ; $6d71: $1d
    db $db                                        ; $6d72: $db
    sub b                                         ; $6d73: $90
    sbc a                                         ; $6d74: $9f
    jp c, $d9af                                   ; $6d75: $da $af $d9

    xor c                                         ; $6d78: $a9
    ld [$fef6], sp                                ; $6d79: $08 $f6 $fe
    cp b                                          ; $6d7c: $b8
    xor a                                         ; $6d7d: $af
    ld h, b                                       ; $6d7e: $60
    rra                                           ; $6d7f: $1f
    db $fd                                        ; $6d80: $fd
    ld a, $51                                     ; $6d81: $3e $51
    rst $08                                       ; $6d83: $cf

jr_044_6d84:
    rst $18                                       ; $6d84: $df

Jump_044_6d85:
    xor a                                         ; $6d85: $af
    dec e                                         ; $6d86: $1d
    db $db                                        ; $6d87: $db
    sub b                                         ; $6d88: $90
    sbc a                                         ; $6d89: $9f
    db $fd                                        ; $6d8a: $fd
    ld e, c                                       ; $6d8b: $59
    sbc $66                                       ; $6d8c: $de $66
    ld a, a                                       ; $6d8e: $7f
    sub h                                         ; $6d8f: $94
    rst $00                                       ; $6d90: $c7

jr_044_6d91:
    sbc b                                         ; $6d91: $98
    ld a, [hl-]                                   ; $6d92: $3a
    ld b, c                                       ; $6d93: $41
    call nc, $2da5                                ; $6d94: $d4 $a5 $2d
    dec sp                                        ; $6d97: $3b
    rst $28                                       ; $6d98: $ef
    adc b                                         ; $6d99: $88
    ld a, [de]                                    ; $6d9a: $1a
    sbc e                                         ; $6d9b: $9b
    ld a, [hl]                                    ; $6d9c: $7e
    dec b                                         ; $6d9d: $05
    dec e                                         ; $6d9e: $1d
    db $db                                        ; $6d9f: $db
    sub b                                         ; $6da0: $90
    sbc a                                         ; $6da1: $9f
    db $fd                                        ; $6da2: $fd
    reti                                          ; $6da3: $d9


    jr nz, jr_044_6d84                            ; $6da4: $20 $de

    ld [$a852], sp                                ; $6da6: $08 $52 $a8
    ld [hl], e                                    ; $6da9: $73
    jr z, jr_044_6d91                             ; $6daa: $28 $e5

    ret z                                         ; $6dac: $c8

    rst $28                                       ; $6dad: $ef
    ld d, a                                       ; $6dae: $57
    dec e                                         ; $6daf: $1d
    and c                                         ; $6db0: $a1
    ldh a, [$31]                                  ; $6db1: $f0 $31
    cp l                                          ; $6db3: $bd
    ld [c], a                                     ; $6db4: $e2
    ld l, $b7                                     ; $6db5: $2e $b7
    or e                                          ; $6db7: $b3
    ld c, a                                       ; $6db8: $4f
    ld l, a                                       ; $6db9: $6f
    inc de                                        ; $6dba: $13
    ld [hl], l                                    ; $6dbb: $75
    xor c                                         ; $6dbc: $a9
    ld a, [hl]                                    ; $6dbd: $7e
    ld b, e                                       ; $6dbe: $43
    dec e                                         ; $6dbf: $1d
    pop af                                        ; $6dc0: $f1
    ld b, [hl]                                    ; $6dc1: $46
    ld l, $bf                                     ; $6dc2: $2e $bf
    rst $30                                       ; $6dc4: $f7
    ld b, a                                       ; $6dc5: $47
    ld a, a                                       ; $6dc6: $7f
    ld a, [$c37d]                                 ; $6dc7: $fa $7d $c3
    ld [hl], b                                    ; $6dca: $70
    rst $18                                       ; $6dcb: $df
    xor a                                         ; $6dcc: $af
    ld e, c                                       ; $6dcd: $59
    ld bc, $9d1d                                  ; $6dce: $01 $1d $9d
    inc bc                                        ; $6dd1: $03
    ld a, c                                       ; $6dd2: $79
    reti                                          ; $6dd3: $d9


    adc b                                         ; $6dd4: $88
    sbc l                                         ; $6dd5: $9d
    inc bc                                        ; $6dd6: $03
    inc sp                                        ; $6dd7: $33
    or d                                          ; $6dd8: $b2
    ret nz                                        ; $6dd9: $c0

    or d                                          ; $6dda: $b2
    sub c                                         ; $6ddb: $91
    ld h, l                                       ; $6ddc: $65
    adc b                                         ; $6ddd: $88
    scf                                           ; $6dde: $37
    ld [hl], d                                    ; $6ddf: $72
    ld d, c                                       ; $6de0: $51
    sbc a                                         ; $6de1: $9f
    cp d                                          ; $6de2: $ba
    rst $00                                       ; $6de3: $c7
    inc hl                                        ; $6de4: $23
    db $fd                                        ; $6de5: $fd
    ld a, [bc]                                    ; $6de6: $0a
    cp [hl]                                       ; $6de7: $be
    xor $97                                       ; $6de8: $ee $97
    push hl                                       ; $6dea: $e5
    and e                                         ; $6deb: $a3
    ld a, [hl]                                    ; $6dec: $7e
    rst $28                                       ; $6ded: $ef
    ld c, a                                       ; $6dee: $4f
    ld sp, hl                                     ; $6def: $f9
    db $fd                                        ; $6df0: $fd

Call_044_6df1:
    ld d, c                                       ; $6df1: $51
    cp b                                          ; $6df2: $b8
    or b                                          ; $6df3: $b0
    adc l                                         ; $6df4: $8d
    rla                                           ; $6df5: $17
    rst $10                                       ; $6df6: $d7
    xor a                                         ; $6df7: $af
    dec e                                         ; $6df8: $1d
    db $db                                        ; $6df9: $db
    sub b                                         ; $6dfa: $90
    sbc a                                         ; $6dfb: $9f
    db $db                                        ; $6dfc: $db
    ld e, c                                       ; $6dfd: $59
    sbc $b9                                       ; $6dfe: $de $b9
    adc c                                         ; $6e00: $89
    ld a, h                                       ; $6e01: $7c
    ld [hl], c                                    ; $6e02: $71
    ld d, e                                       ; $6e03: $53
    ld a, b                                       ; $6e04: $78
    ld a, [$9e15]                                 ; $6e05: $fa $15 $9e
    ld d, e                                       ; $6e08: $53
    dec l                                         ; $6e09: $2d
    or $a1                                        ; $6e0a: $f6 $a1
    ld a, [c]                                     ; $6e0c: $f2
    pop de                                        ; $6e0d: $d1
    cp a                                          ; $6e0e: $bf
    ld [hl], e                                    ; $6e0f: $73
    ld a, [hl]                                    ; $6e10: $7e
    jr nc, @+$81                                  ; $6e11: $30 $7f

    xor d                                         ; $6e13: $aa
    rst $10                                       ; $6e14: $d7
    adc $7d                                       ; $6e15: $ce $7d
    call nc, $83a7                                ; $6e17: $d4 $a7 $83
    cp l                                          ; $6e1a: $bd
    adc a                                         ; $6e1b: $8f
    ld a, h                                       ; $6e1c: $7c
    ld d, c                                       ; $6e1d: $51
    or b                                          ; $6e1e: $b0
    ld a, [hl]                                    ; $6e1f: $7e
    dec b                                         ; $6e20: $05
    dec e                                         ; $6e21: $1d
    adc a                                         ; $6e22: $8f
    ret                                           ; $6e23: $c9


    rst $20                                       ; $6e24: $e7
    db $d3                                        ; $6e25: $d3
    sub [hl]                                      ; $6e26: $96
    sbc l                                         ; $6e27: $9d
    ld [hl], a                                    ; $6e28: $77
    ld b, h                                       ; $6e29: $44
    adc l                                         ; $6e2a: $8d
    ld c, l                                       ; $6e2b: $4d
    cp a                                          ; $6e2c: $bf
    ld [bc], a                                    ; $6e2d: $02
    dec e                                         ; $6e2e: $1d
    adc a                                         ; $6e2f: $8f
    ret                                           ; $6e30: $c9


    rst $20                                       ; $6e31: $e7
    db $d3                                        ; $6e32: $d3
    sub [hl]                                      ; $6e33: $96
    sbc l                                         ; $6e34: $9d

jr_044_6e35:
    ld [hl], a                                    ; $6e35: $77
    ld b, h                                       ; $6e36: $44
    adc l                                         ; $6e37: $8d
    ld c, l                                       ; $6e38: $4d
    cp a                                          ; $6e39: $bf
    ld [bc], a                                    ; $6e3a: $02
    sbc [hl]                                      ; $6e3b: $9e
    jr nc, jr_044_6e35                            ; $6e3c: $30 $f7

    ld l, c                                       ; $6e3e: $69
    ld [hl], l                                    ; $6e3f: $75
    db $eb                                        ; $6e40: $eb
    ld l, c                                       ; $6e41: $69
    adc c                                         ; $6e42: $89
    rst $28                                       ; $6e43: $ef
    ld l, l                                       ; $6e44: $6d
    ld [$5fa3], sp                                ; $6e45: $08 $a3 $5f
    ld bc, $8f1d                                  ; $6e48: $01 $1d $8f
    ret                                           ; $6e4b: $c9


    rst $20                                       ; $6e4c: $e7
    rst $30                                       ; $6e4d: $f7
    cp $94                                        ; $6e4e: $fe $94
    rst $18                                       ; $6e50: $df
    rra                                           ; $6e51: $1f
    add l                                         ; $6e52: $85
    dec bc                                        ; $6e53: $0b
    db $db                                        ; $6e54: $db
    ld a, b                                       ; $6e55: $78
    ld [hl], c                                    ; $6e56: $71
    db $fd                                        ; $6e57: $fd
    ld a, [bc]                                    ; $6e58: $0a
    dec e                                         ; $6e59: $1d
    db $db                                        ; $6e5a: $db
    sub b                                         ; $6e5b: $90
    sbc a                                         ; $6e5c: $9f
    db $fd                                        ; $6e5d: $fd
    pop af                                        ; $6e5e: $f1
    sbc [hl]                                      ; $6e5f: $9e
    ld b, [hl]                                    ; $6e60: $46
    db $ed                                        ; $6e61: $ed
    db $e4                                        ; $6e62: $e4
    and e                                         ; $6e63: $a3
    ld l, $9e                                     ; $6e64: $2e $9e
    ld h, a                                       ; $6e66: $67
    ld c, $fd                                     ; $6e67: $0e $fd
    ld a, [bc]                                    ; $6e69: $0a
    xor l                                         ; $6e6a: $ad
    rst $18                                       ; $6e6b: $df
    ld l, e                                       ; $6e6c: $6b
    inc hl                                        ; $6e6d: $23
    ld l, c                                       ; $6e6e: $69
    ld [hl], l                                    ; $6e6f: $75
    ld l, a                                       ; $6e70: $6f
    db $10                                        ; $6e71: $10
    ld e, b                                       ; $6e72: $58
    ld bc, $a075                                  ; $6e73: $01 $75 $a0
    dec c                                         ; $6e76: $0d
    pop af                                        ; $6e77: $f1
    ld h, $ea                                     ; $6e78: $26 $ea
    ld [c], a                                     ; $6e7a: $e2
    ld a, [hl]                                    ; $6e7b: $7e
    dec hl                                        ; $6e7c: $2b
    ret c                                         ; $6e7d: $d8

    ret z                                         ; $6e7e: $c8

    xor l                                         ; $6e7f: $ad
    ld l, l                                       ; $6e80: $6d
    cp [hl]                                       ; $6e81: $be
    ld d, l                                       ; $6e82: $55
    rst $28                                       ; $6e83: $ef
    xor $57                                       ; $6e84: $ee $57
    ld l, l                                       ; $6e86: $6d
    ld d, h                                       ; $6e87: $54
    set 3, b                                      ; $6e88: $cb $d8
    ld c, l                                       ; $6e8a: $4d
    inc d                                         ; $6e8b: $14
    halt                                          ; $6e8c: $76
    jp c, $dea2                                   ; $6e8d: $da $a2 $de

    ld e, c                                       ; $6e90: $59
    ld bc, $0dad                                  ; $6e91: $01 $ad $0d
    inc sp                                        ; $6e94: $33
    or h                                          ; $6e95: $b4
    adc a                                         ; $6e96: $8f
    jp nz, $88de                                  ; $6e97: $c2 $de $88

    cp $9d                                        ; $6e9a: $fe $9d
    di                                            ; $6e9c: $f3
    add e                                         ; $6e9d: $83
    add hl, de                                    ; $6e9e: $19
    xor c                                         ; $6e9f: $a9
    ld e, [hl]                                    ; $6ea0: $5e
    dec sp                                        ; $6ea1: $3b
    rst $20                                       ; $6ea2: $e7
    rst $00                                       ; $6ea3: $c7
    ld a, [bc]                                    ; $6ea4: $0a
    db $ed                                        ; $6ea5: $ed
    sbc l                                         ; $6ea6: $9d
    sbc $60                                       ; $6ea7: $de $60
    rst $30                                       ; $6ea9: $f7
    dec hl                                        ; $6eaa: $2b
    ld [hl], l                                    ; $6eab: $75
    and b                                         ; $6eac: $a0
    dec c                                         ; $6ead: $0d
    pop af                                        ; $6eae: $f1
    ld h, $ea                                     ; $6eaf: $26 $ea
    ld b, d                                       ; $6eb1: $42
    and d                                         ; $6eb2: $a2
    ldh a, [$f1]                                  ; $6eb3: $f0 $f1
    xor l                                         ; $6eb5: $ad
    ld [hl], l                                    ; $6eb6: $75
    and b                                         ; $6eb7: $a0
    dec c                                         ; $6eb8: $0d
    pop af                                        ; $6eb9: $f1
    ld h, $ea                                     ; $6eba: $26 $ea
    and d                                         ; $6ebc: $a2
    ld h, [hl]                                    ; $6ebd: $66
    cp e                                          ; $6ebe: $bb
    ld e, e                                       ; $6ebf: $5b
    ld bc, $8b6d                                  ; $6ec0: $01 $6d $8b
    ld h, [hl]                                    ; $6ec3: $66
    jr z, jr_044_6f2b                             ; $6ec4: $28 $65

    and d                                         ; $6ec6: $a2
    or b                                          ; $6ec7: $b0
    rst $30                                       ; $6ec8: $f7
    and a                                         ; $6ec9: $a7
    dec l                                         ; $6eca: $2d
    dec sp                                        ; $6ecb: $3b
    pop de                                        ; $6ecc: $d1
    add [hl]                                      ; $6ecd: $86
    ld a, c                                       ; $6ece: $79
    dec b                                         ; $6ecf: $05
    cp [hl]                                       ; $6ed0: $be
    jp $b30c                                      ; $6ed1: $c3 $0c $b3


    rla                                           ; $6ed4: $17
    ld c, h                                       ; $6ed5: $4c
    inc d                                         ; $6ed6: $14
    or $fe                                        ; $6ed7: $f6 $fe
    or h                                          ; $6ed9: $b4
    ld h, l                                       ; $6eda: $65
    daa                                           ; $6edb: $27
    jp c, $a730                                   ; $6edc: $da $30 $a7

    adc c                                         ; $6edf: $89
    dec d                                         ; $6ee0: $15
    dec e                                         ; $6ee1: $1d
    db $db                                        ; $6ee2: $db
    sub e                                         ; $6ee3: $93
    or b                                          ; $6ee4: $b0
    ld a, [c]                                     ; $6ee5: $f2
    db $fc                                        ; $6ee6: $fc
    ld d, c                                       ; $6ee7: $51
    ret c                                         ; $6ee8: $d8

    reti                                          ; $6ee9: $d9


    xor a                                         ; $6eea: $af
    call $be0a                                    ; $6eeb: $cd $0a $be
    jp $b30c                                      ; $6eee: $c3 $0c $b3


    rla                                           ; $6ef1: $17
    ld c, h                                       ; $6ef2: $4c
    call nc, $f6a5                                ; $6ef3: $d4 $a5 $f6
    ld l, b                                       ; $6ef6: $68
    db $dd                                        ; $6ef7: $dd
    cp l                                          ; $6ef8: $bd
    ld [hl], c                                    ; $6ef9: $71
    ld c, c                                       ; $6efa: $49
    inc de                                        ; $6efb: $13
    dec hl                                        ; $6efc: $2b
    cp [hl]                                       ; $6efd: $be
    jp $b30c                                      ; $6efe: $c3 $0c $b3


    rla                                           ; $6f01: $17
    ld c, h                                       ; $6f02: $4c
    call nc, $f6a5                                ; $6f03: $d4 $a5 $f6
    ld l, b                                       ; $6f06: $68
    db $dd                                        ; $6f07: $dd
    cp l                                          ; $6f08: $bd
    ld [hl], c                                    ; $6f09: $71
    ld c, c                                       ; $6f0a: $49
    sub e                                         ; $6f0b: $93
    dec hl                                        ; $6f0c: $2b
    cp [hl]                                       ; $6f0d: $be
    jp $b30c                                      ; $6f0e: $c3 $0c $b3


    rla                                           ; $6f11: $17
    ld c, h                                       ; $6f12: $4c
    call nc, $f6a5                                ; $6f13: $d4 $a5 $f6
    ld l, b                                       ; $6f16: $68
    db $dd                                        ; $6f17: $dd
    cp l                                          ; $6f18: $bd
    ld [hl], c                                    ; $6f19: $71
    ld c, c                                       ; $6f1a: $49
    ld d, e                                       ; $6f1b: $53
    dec hl                                        ; $6f1c: $2b
    ld l, l                                       ; $6f1d: $6d
    sub h                                         ; $6f1e: $94
    push bc                                       ; $6f1f: $c5
    ld d, b                                       ; $6f20: $50
    jp z, $8164                                   ; $6f21: $ca $64 $81

    and l                                         ; $6f24: $a5
    or $68                                        ; $6f25: $f6 $68
    db $dd                                        ; $6f27: $dd
    cp l                                          ; $6f28: $bd
    ld [hl], c                                    ; $6f29: $71
    ret                                           ; $6f2a: $c9


jr_044_6f2b:
    ld a, [bc]                                    ; $6f2b: $0a
    xor l                                         ; $6f2c: $ad
    jp nc, $51fd                                  ; $6f2d: $d2 $fd $51

    sub a                                         ; $6f30: $97
    ld d, [hl]                                    ; $6f31: $56
    add l                                         ; $6f32: $85
    rst $08                                       ; $6f33: $cf
    ld sp, hl                                     ; $6f34: $f9
    sub c                                         ; $6f35: $91
    adc [hl]                                      ; $6f36: $8e
    xor b                                         ; $6f37: $a8
    ld h, b                                       ; $6f38: $60

jr_044_6f39:
    dec b                                         ; $6f39: $05
    xor l                                         ; $6f3a: $ad
    jp nc, $51fd                                  ; $6f3b: $d2 $fd $51

    sub a                                         ; $6f3e: $97
    ld d, [hl]                                    ; $6f3f: $56
    db $ed                                        ; $6f40: $ed
    cp b                                          ; $6f41: $b8
    ld a, d                                       ; $6f42: $7a
    ld hl, $afde                                  ; $6f43: $21 $de $af
    ld l, l                                       ; $6f46: $6d
    db $fd                                        ; $6f47: $fd
    sbc $b0                                       ; $6f48: $de $b0
    ei                                            ; $6f4a: $fb
    jr z, jr_044_6f39                             ; $6f4b: $28 $ec

    adc l                                         ; $6f4d: $8d
    cp h                                          ; $6f4e: $bc
    ld d, l                                       ; $6f4f: $55

jr_044_6f50:
    rst $08                                       ; $6f50: $cf
    call nc, $02b0                                ; $6f51: $d4 $b0 $02
    xor l                                         ; $6f54: $ad
    jp nc, $51fd                                  ; $6f55: $d2 $fd $51

    sub a                                         ; $6f58: $97
    ld d, [hl]                                    ; $6f59: $56
    dec bc                                        ; $6f5a: $0b
    db $db                                        ; $6f5b: $db
    ret z                                         ; $6f5c: $c8

    ld d, h                                       ; $6f5d: $54
    rst $30                                       ; $6f5e: $f7
    dec hl                                        ; $6f5f: $2b
    cp [hl]                                       ; $6f60: $be
    db $fc                                        ; $6f61: $fc
    ld b, d                                       ; $6f62: $42
    db $fc                                        ; $6f63: $fc
    jr z, @-$12                                   ; $6f64: $28 $ec

    adc l                                         ; $6f66: $8d
    inc l                                         ; $6f67: $2c
    xor a                                         ; $6f68: $af
    or b                                          ; $6f69: $b0
    scf                                           ; $6f6a: $37
    ld d, [hl]                                    ; $6f6b: $56
    ld [hl], l                                    ; $6f6c: $75
    and b                                         ; $6f6d: $a0
    dec c                                         ; $6f6e: $0d
    pop af                                        ; $6f6f: $f1
    ld h, $ea                                     ; $6f70: $26 $ea
    ld d, d                                       ; $6f72: $52
    cp l                                          ; $6f73: $bd
    sbc h                                         ; $6f74: $9c
    cp e                                          ; $6f75: $bb
    xor b                                         ; $6f76: $a8
    ld c, e                                       ; $6f77: $4b
    ld [hl], c                                    ; $6f78: $71
    or e                                          ; $6f79: $b3
    db $fc                                        ; $6f7a: $fc
    ld a, [bc]                                    ; $6f7b: $0a
    xor l                                         ; $6f7c: $ad
    jp nc, $51fd                                  ; $6f7d: $d2 $fd $51

    sub a                                         ; $6f80: $97
    or [hl]                                       ; $6f81: $b6
    push bc                                       ; $6f82: $c5
    cp l                                          ; $6f83: $bd
    jr nc, jr_044_6f50                            ; $6f84: $30 $ca

    ld d, l                                       ; $6f86: $55
    or a                                          ; $6f87: $b7
    ld [bc], a                                    ; $6f88: $02
    xor l                                         ; $6f89: $ad
    jp nc, $51fd                                  ; $6f8a: $d2 $fd $51

    sub a                                         ; $6f8d: $97
    ld d, [hl]                                    ; $6f8e: $56
    adc l                                         ; $6f8f: $8d
    cpl                                           ; $6f90: $2f
    dec e                                         ; $6f91: $1d
    inc d                                         ; $6f92: $14
    ld b, a                                       ; $6f93: $47
    dec c                                         ; $6f94: $0d
    dec hl                                        ; $6f95: $2b
    cp [hl]                                       ; $6f96: $be
    dec bc                                        ; $6f97: $0b
    sbc h                                         ; $6f98: $9c
    di                                            ; $6f99: $f3
    rst $18                                       ; $6f9a: $df
    ld b, h                                       ; $6f9b: $44
    ld h, c                                       ; $6f9c: $61
    ld l, a                                       ; $6f9d: $6f
    and h                                         ; $6f9e: $a4
    dec [hl]                                      ; $6f9f: $35
    ei                                            ; $6fa0: $fb
    ld a, [bc]                                    ; $6fa1: $0a
    dec hl                                        ; $6fa2: $2b
    ld l, l                                       ; $6fa3: $6d
    adc [hl]                                      ; $6fa4: $8e
    and c                                         ; $6fa5: $a1
    ldh a, [$67]                                  ; $6fa6: $f0 $67
    or c                                          ; $6fa8: $b1
    add hl, sp                                    ; $6fa9: $39
    db $fd                                        ; $6faa: $fd
    pop af                                        ; $6fab: $f1
    and a                                         ; $6fac: $a7
    adc c                                         ; $6fad: $89
    dec d                                         ; $6fae: $15
    ld l, l                                       ; $6faf: $6d
    adc [hl]                                      ; $6fb0: $8e
    and c                                         ; $6fb1: $a1
    ldh a, [$67]                                  ; $6fb2: $f0 $67
    or c                                          ; $6fb4: $b1
    add hl, sp                                    ; $6fb5: $39
    db $fd                                        ; $6fb6: $fd
    pop af                                        ; $6fb7: $f1
    and a                                         ; $6fb8: $a7
    ret                                           ; $6fb9: $c9


    dec d                                         ; $6fba: $15
    ld l, l                                       ; $6fbb: $6d
    adc [hl]                                      ; $6fbc: $8e
    and c                                         ; $6fbd: $a1
    ldh a, [$67]                                  ; $6fbe: $f0 $67
    or c                                          ; $6fc0: $b1
    add hl, sp                                    ; $6fc1: $39
    db $fd                                        ; $6fc2: $fd
    pop af                                        ; $6fc3: $f1
    and a                                         ; $6fc4: $a7
    xor c                                         ; $6fc5: $a9
    dec d                                         ; $6fc6: $15
    ld l, l                                       ; $6fc7: $6d
    adc [hl]                                      ; $6fc8: $8e
    and c                                         ; $6fc9: $a1
    ldh a, [$67]                                  ; $6fca: $f0 $67
    or c                                          ; $6fcc: $b1
    add hl, sp                                    ; $6fcd: $39
    db $fd                                        ; $6fce: $fd
    pop af                                        ; $6fcf: $f1
    and a                                         ; $6fd0: $a7
    jp hl                                         ; $6fd1: $e9


    dec d                                         ; $6fd2: $15
    ld l, l                                       ; $6fd3: $6d
    adc [hl]                                      ; $6fd4: $8e
    and c                                         ; $6fd5: $a1
    ldh a, [$67]                                  ; $6fd6: $f0 $67
    or c                                          ; $6fd8: $b1
    add hl, sp                                    ; $6fd9: $39
    db $fd                                        ; $6fda: $fd
    pop af                                        ; $6fdb: $f1
    and a                                         ; $6fdc: $a7
    sbc c                                         ; $6fdd: $99
    dec d                                         ; $6fde: $15
    ld l, l                                       ; $6fdf: $6d
    adc [hl]                                      ; $6fe0: $8e
    and c                                         ; $6fe1: $a1
    ldh a, [$67]                                  ; $6fe2: $f0 $67
    or c                                          ; $6fe4: $b1
    add hl, sp                                    ; $6fe5: $39
    db $fd                                        ; $6fe6: $fd
    pop af                                        ; $6fe7: $f1
    and a                                         ; $6fe8: $a7
    reti                                          ; $6fe9: $d9


    dec d                                         ; $6fea: $15

Jump_044_6feb:
    cp [hl]                                       ; $6feb: $be
    jp $b30c                                      ; $6fec: $c3 $0c $b3


    rla                                           ; $6fef: $17
    ld c, h                                       ; $6ff0: $4c
    cp h                                          ; $6ff1: $bc
    daa                                           ; $6ff2: $27
    cp a                                          ; $6ff3: $bf
    sub c                                         ; $6ff4: $91
    ld h, $56                                     ; $6ff5: $26 $56
    cp [hl]                                       ; $6ff7: $be
    jp $b30c                                      ; $6ff8: $c3 $0c $b3


    rla                                           ; $6ffb: $17
    ld c, h                                       ; $6ffc: $4c
    cp h                                          ; $6ffd: $bc
    daa                                           ; $6ffe: $27
    cp a                                          ; $6fff: $bf
    sub c                                         ; $7000: $91
    ld h, $57                                     ; $7001: $26 $57
    cp [hl]                                       ; $7003: $be
    jp $b30c                                      ; $7004: $c3 $0c $b3


    rla                                           ; $7007: $17
    ld c, h                                       ; $7008: $4c
    cp h                                          ; $7009: $bc
    daa                                           ; $700a: $27
    cp a                                          ; $700b: $bf
    sub c                                         ; $700c: $91
    and [hl]                                      ; $700d: $a6
    ld d, [hl]                                    ; $700e: $56
    cp [hl]                                       ; $700f: $be
    jp $b30c                                      ; $7010: $c3 $0c $b3


    rla                                           ; $7013: $17
    ld c, h                                       ; $7014: $4c
    cp h                                          ; $7015: $bc
    daa                                           ; $7016: $27
    cp a                                          ; $7017: $bf
    sub c                                         ; $7018: $91
    and [hl]                                      ; $7019: $a6
    ld d, a                                       ; $701a: $57
    cp [hl]                                       ; $701b: $be
    jp $b30c                                      ; $701c: $c3 $0c $b3


    rla                                           ; $701f: $17
    ld c, h                                       ; $7020: $4c
    cp h                                          ; $7021: $bc
    daa                                           ; $7022: $27
    cp a                                          ; $7023: $bf
    sub c                                         ; $7024: $91
    ld h, [hl]                                    ; $7025: $66
    ld d, [hl]                                    ; $7026: $56
    cp [hl]                                       ; $7027: $be
    jp $b30c                                      ; $7028: $c3 $0c $b3


    rla                                           ; $702b: $17
    ld c, h                                       ; $702c: $4c
    cp h                                          ; $702d: $bc
    daa                                           ; $702e: $27
    cp a                                          ; $702f: $bf
    sub c                                         ; $7030: $91
    ld h, [hl]                                    ; $7031: $66
    ld d, a                                       ; $7032: $57
    sbc l                                         ; $7033: $9d
    ld a, b                                       ; $7034: $78
    cp l                                          ; $7035: $bd
    rst $20                                       ; $7036: $e7
    ld l, [hl]                                    ; $7037: $6e
    and d                                         ; $7038: $a2
    ld l, $9d                                     ; $7039: $2e $9d
    ld e, $df                                     ; $703b: $1e $df
    ret nc                                        ; $703d: $d0

    or d                                          ; $703e: $b2
    ld [bc], a                                    ; $703f: $02
    xor l                                         ; $7040: $ad
    jp nc, $21fd                                  ; $7041: $d2 $fd $21

    jp hl                                         ; $7044: $e9


    ldh a, [$af]                                  ; $7045: $f0 $af
    xor l                                         ; $7047: $ad
    jp nc, $21fd                                  ; $7048: $d2 $fd $21

    jp hl                                         ; $704b: $e9


    ldh a, [$af]                                  ; $704c: $f0 $af
    sbc [hl]                                      ; $704e: $9e
    ld h, e                                       ; $704f: $63
    halt                                          ; $7050: $76
    ld l, d                                       ; $7051: $6a
    ld l, [hl]                                    ; $7052: $6e
    ld d, d                                       ; $7053: $52
    rst $10                                       ; $7054: $d7
    and $f4                                       ; $7055: $e6 $f4
    rst $00                                       ; $7057: $c7

jr_044_7058:
    or e                                          ; $7058: $b3
    ld [bc], a                                    ; $7059: $02
    cp [hl]                                       ; $705a: $be
    jr nc, jr_044_7058                            ; $705b: $30 $fb

    dec d                                         ; $705d: $15
    xor l                                         ; $705e: $ad
    cp l                                          ; $705f: $bd
    ld h, $13                                     ; $7060: $26 $13
    add l                                         ; $7062: $85
    cp l                                          ; $7063: $bd
    ld de, $ed7b                                  ; $7064: $11 $7b $ed
    adc c                                         ; $7067: $89
    ld b, h                                       ; $7068: $44
    xor h                                         ; $7069: $ac
    ld [hl], l                                    ; $706a: $75
    rst $18                                       ; $706b: $df
    call c, Call_044_5d44                         ; $706c: $dc $44 $5d
    ld l, d                                       ; $706f: $6a
    adc a                                         ; $7070: $8f
    sub $dd                                       ; $7071: $d6 $dd
    dec de                                        ; $7073: $1b
    sub a                                         ; $7074: $97
    inc [hl]                                      ; $7075: $34
    or c                                          ; $7076: $b1
    ld [bc], a                                    ; $7077: $02
    ld l, l                                       ; $7078: $6d
    dec bc                                        ; $7079: $0b
    jp $a264                                      ; $707a: $c3 $64 $a2


    or b                                          ; $707d: $b0
    rst $30                                       ; $707e: $f7
    rst $00                                       ; $707f: $c7
    db $fd                                        ; $7080: $fd
    ld a, [c]                                     ; $7081: $f2
    ld [hl+], a                                   ; $7082: $22
    rra                                           ; $7083: $1f
    ld [hl], l                                    ; $7084: $75
    xor c                                         ; $7085: $a9
    db $fd                                        ; $7086: $fd
    sbc d                                         ; $7087: $9a
    sbc l                                         ; $7088: $9d
    ld e, d                                       ; $7089: $5a
    ld bc, $639e                                  ; $708a: $01 $9e $63
    halt                                          ; $708d: $76
    ld l, d                                       ; $708e: $6a
    ld l, [hl]                                    ; $708f: $6e
    and d                                         ; $7090: $a2
    or b                                          ; $7091: $b0
    or e                                          ; $7092: $b3
    ret c                                         ; $7093: $d8

    ld d, l                                       ; $7094: $55
    sub e                                         ; $7095: $93
    push hl                                       ; $7096: $e5
    ld e, [hl]                                    ; $7097: $5e
    ld h, [hl]                                    ; $7098: $66
    dec b                                         ; $7099: $05
    sbc [hl]                                      ; $709a: $9e
    ld h, e                                       ; $709b: $63
    halt                                          ; $709c: $76
    ld l, d                                       ; $709d: $6a
    ld l, [hl]                                    ; $709e: $6e
    and d                                         ; $709f: $a2
    or b                                          ; $70a0: $b0
    ld d, e                                       ; $70a1: $53
    ldh [rDMA], a                                 ; $70a2: $e0 $46
    call nc, $b964                                ; $70a4: $d4 $64 $b9
    sub a                                         ; $70a7: $97
    ld e, c                                       ; $70a8: $59
    ld bc, $639e                                  ; $70a9: $01 $9e $63
    halt                                          ; $70ac: $76
    ld l, d                                       ; $70ad: $6a
    ld l, [hl]                                    ; $70ae: $6e
    and d                                         ; $70af: $a2
    or b                                          ; $70b0: $b0
    jp $e230                                      ; $70b1: $c3 $30 $e2


    ld h, h                                       ; $70b4: $64
    cp c                                          ; $70b5: $b9
    sub a                                         ; $70b6: $97
    ld e, c                                       ; $70b7: $59
    ld bc, $639e                                  ; $70b8: $01 $9e $63
    halt                                          ; $70bb: $76
    ld l, d                                       ; $70bc: $6a
    ld l, [hl]                                    ; $70bd: $6e
    and d                                         ; $70be: $a2
    or b                                          ; $70bf: $b0
    db $e3                                        ; $70c0: $e3
    ld b, e                                       ; $70c1: $43
    rst $18                                       ; $70c2: $df
    ld a, b                                       ; $70c3: $78
    or d                                          ; $70c4: $b2
    call c, $accb                                 ; $70c5: $dc $cb $ac
    sbc [hl]                                      ; $70c8: $9e
    ld h, e                                       ; $70c9: $63
    halt                                          ; $70ca: $76
    ld l, d                                       ; $70cb: $6a
    ld l, [hl]                                    ; $70cc: $6e
    and d                                         ; $70cd: $a2
    or b                                          ; $70ce: $b0
    db $e3                                        ; $70cf: $e3
    ld b, e                                       ; $70d0: $43
    ld c, a                                       ; $70d1: $4f
    ld a, b                                       ; $70d2: $78
    or d                                          ; $70d3: $b2
    call c, Call_044_64cb                         ; $70d4: $dc $cb $64
    dec b                                         ; $70d7: $05
    sbc [hl]                                      ; $70d8: $9e
    ld h, e                                       ; $70d9: $63
    halt                                          ; $70da: $76
    ld l, d                                       ; $70db: $6a
    ld l, [hl]                                    ; $70dc: $6e
    and d                                         ; $70dd: $a2
    or b                                          ; $70de: $b0
    ld d, e                                       ; $70df: $53
    ld d, b                                       ; $70e0: $50
    ld a, b                                       ; $70e1: $78
    or d                                          ; $70e2: $b2
    call c, $accb                                 ; $70e3: $dc $cb $ac
    sbc [hl]                                      ; $70e6: $9e
    ld h, e                                       ; $70e7: $63
    halt                                          ; $70e8: $76
    ld l, d                                       ; $70e9: $6a
    ld l, [hl]                                    ; $70ea: $6e
    and d                                         ; $70eb: $a2
    or b                                          ; $70ec: $b0
    ld d, e                                       ; $70ed: $53
    ret nz                                        ; $70ee: $c0

    ld a, h                                       ; $70ef: $7c
    push de                                       ; $70f0: $d5
    ld h, h                                       ; $70f1: $64
    cp c                                          ; $70f2: $b9
    sub a                                         ; $70f3: $97
    ld e, c                                       ; $70f4: $59
    ld bc, $0dad                                  ; $70f5: $01 $ad $0d
    inc sp                                        ; $70f8: $33
    or h                                          ; $70f9: $b4
    adc a                                         ; $70fa: $8f
    jp nz, Jump_000_1fde                          ; $70fb: $c2 $de $1f

jr_044_70fe:
    adc l                                         ; $70fe: $8d
    cp [hl]                                       ; $70ff: $be
    dec e                                         ; $7100: $1d
    db $db                                        ; $7101: $db
    add hl, sp                                    ; $7102: $39
    xor h                                         ; $7103: $ac
    xor l                                         ; $7104: $ad
    jp nc, $51fd                                  ; $7105: $d2 $fd $51

    rla                                           ; $7108: $17
    ld e, a                                       ; $7109: $5f
    ld e, $bb                                     ; $710a: $1e $bb
    adc a                                         ; $710c: $8f
    jp nz, $9fde                                  ; $710d: $c2 $de $9f

    or $5f                                        ; $7110: $f6 $5f
    cp e                                          ; $7112: $bb
    ld e, a                                       ; $7113: $5f
    ld bc, $8b6d                                  ; $7114: $01 $6d $8b
    rla                                           ; $7117: $17
    ld d, [hl]                                    ; $7118: $56
    pop bc                                        ; $7119: $c1
    xor $57                                       ; $711a: $ee $57
    xor l                                         ; $711c: $ad
    sbc l                                         ; $711d: $9d

Call_044_711e:
    ld a, [hl]                                    ; $711e: $7e
    rst $18                                       ; $711f: $df
    jr nc, jr_044_70fe                            ; $7120: $30 $dc

    and a                                         ; $7122: $a7
    adc c                                         ; $7123: $89
    dec d                                         ; $7124: $15
    xor l                                         ; $7125: $ad
    sbc l                                         ; $7126: $9d
    ld a, [hl]                                    ; $7127: $7e
    rst $18                                       ; $7128: $df
    jr nc, @-$22                                  ; $7129: $30 $dc

    and a                                         ; $712b: $a7
    ret                                           ; $712c: $c9


    dec d                                         ; $712d: $15
    sbc l                                         ; $712e: $9d
    ld a, b                                       ; $712f: $78
    cp l                                          ; $7130: $bd
    rst $20                                       ; $7131: $e7
    ld l, [hl]                                    ; $7132: $6e
    and d                                         ; $7133: $a2
    or b                                          ; $7134: $b0
    rst $30                                       ; $7135: $f7
    and a                                         ; $7136: $a7
    ld a, l                                       ; $7137: $7d
    rst $10                                       ; $7138: $d7
    sub [hl]                                      ; $7139: $96
    cp l                                          ; $713a: $bd
    inc e                                         ; $713b: $1c
    di                                            ; $713c: $f3
    ld a, [bc]                                    ; $713d: $0a
    xor l                                         ; $713e: $ad
    jp nc, $51fd                                  ; $713f: $d2 $fd $51

    sub a                                         ; $7142: $97
    sub $5e                                       ; $7143: $d6 $5e
    xor a                                         ; $7145: $af
    ld a, a                                       ; $7146: $7f
    sbc c                                         ; $7147: $99

Call_044_7148:
    dec a                                         ; $7148: $3d
    jp c, Jump_000_0afd                           ; $7149: $da $fd $0a

    sbc l                                         ; $714c: $9d
    ld a, b                                       ; $714d: $78
    cp l                                          ; $714e: $bd
    rst $20                                       ; $714f: $e7
    ld l, [hl]                                    ; $7150: $6e
    and d                                         ; $7151: $a2
    or b                                          ; $7152: $b0
    rst $30                                       ; $7153: $f7
    rst $00                                       ; $7154: $c7
    db $d3                                        ; $7155: $d3
    ld a, a                                       ; $7156: $7f
    ld c, e                                       ; $7157: $4b
    ld e, c                                       ; $7158: $59
    ld bc, $d2ad                                  ; $7159: $01 $ad $d2
    db $fd                                        ; $715c: $fd
    ld d, c                                       ; $715d: $51
    sub a                                         ; $715e: $97
    cp d                                          ; $715f: $ba
    ld b, e                                       ; $7160: $43
    cp h                                          ; $7161: $bc
    sub c                                         ; $7162: $91
    ld e, e                                       ; $7163: $5b
    ld bc, $789d                                  ; $7164: $01 $9d $78
    cp l                                          ; $7167: $bd
    rst $20                                       ; $7168: $e7
    ld l, [hl]                                    ; $7169: $6e
    and d                                         ; $716a: $a2
    ld l, $1d                                     ; $716b: $2e $1d
    db $fd                                        ; $716d: $fd
    jp nz, $2b63                                  ; $716e: $c2 $63 $2b

    sbc l                                         ; $7171: $9d
    ld a, b                                       ; $7172: $78
    cp l                                          ; $7173: $bd
    rst $20                                       ; $7174: $e7
    ld l, [hl]                                    ; $7175: $6e
    and d                                         ; $7176: $a2
    ld l, $75                                     ; $7177: $2e $75
    adc a                                         ; $7179: $8f
    ld b, a                                       ; $717a: $47
    ld d, [hl]                                    ; $717b: $56
    sbc l                                         ; $717c: $9d

Call_044_717d:
    ld a, b                                       ; $717d: $78
    cp l                                          ; $717e: $bd
    rst $20                                       ; $717f: $e7
    ld l, [hl]                                    ; $7180: $6e
    and d                                         ; $7181: $a2
    or b                                          ; $7182: $b0
    rst $30                                       ; $7183: $f7
    rst $00                                       ; $7184: $c7
    ld [hl], a                                    ; $7185: $77
    or c                                          ; $7186: $b1
    ld h, e                                       ; $7187: $63
    xor h                                         ; $7188: $ac
    dec e                                         ; $7189: $1d
    db $dd                                        ; $718a: $dd
    ld [hl-], a                                   ; $718b: $32
    add l                                         ; $718c: $85
    ld c, a                                       ; $718d: $4f
    db $db                                        ; $718e: $db
    scf                                           ; $718f: $37
    dec hl                                        ; $7190: $2b
    xor l                                         ; $7191: $ad
    jp nc, $51fd                                  ; $7192: $d2 $fd $51

    sub a                                         ; $7195: $97
    adc [hl]                                      ; $7196: $8e
    db $ed                                        ; $7197: $ed
    adc e                                         ; $7198: $8b
    rst $30                                       ; $7199: $f7
    inc [hl]                                      ; $719a: $34
    ld l, d                                       ; $719b: $6a
    ld c, a                                       ; $719c: $4f
    cp h                                          ; $719d: $bc
    ld de, $beac                                  ; $719e: $11 $ac $be
    cp a                                          ; $71a1: $bf
    ccf                                           ; $71a2: $3f
    ld a, [bc]                                    ; $71a3: $0a
    rla                                           ; $71a4: $17
    or [hl]                                       ; $71a5: $b6
    pop af                                        ; $71a6: $f1
    ld [c], a                                     ; $71a7: $e2
    ld d, [hl]                                    ; $71a8: $56
    cp [hl]                                       ; $71a9: $be
    jp $b30c                                      ; $71aa: $c3 $0c $b3


    rla                                           ; $71ad: $17
    ld c, h                                       ; $71ae: $4c
    inc d                                         ; $71af: $14
    or $fe                                        ; $71b0: $f6 $fe
    or h                                          ; $71b2: $b4
    ld h, l                                       ; $71b3: $65
    daa                                           ; $71b4: $27
    jp c, $a730                                   ; $71b5: $da $30 $a7

    ret                                           ; $71b8: $c9


    dec d                                         ; $71b9: $15
    xor l                                         ; $71ba: $ad
    sbc l                                         ; $71bb: $9d
    cp h                                          ; $71bc: $bc
    db $dd                                        ; $71bd: $dd
    and h                                         ; $71be: $a4
    add l                                         ; $71bf: $85
    inc [hl]                                      ; $71c0: $34
    push de                                       ; $71c1: $d5
    ld e, b                                       ; $71c2: $58
    db $d3                                        ; $71c3: $d3
    dec hl                                        ; $71c4: $2b
    dec e                                         ; $71c5: $1d
    dec e                                         ; $71c6: $1d
    ld sp, hl                                     ; $71c7: $f9
    ld d, c                                       ; $71c8: $51
    ret c                                         ; $71c9: $d8

    reti                                          ; $71ca: $d9


    xor a                                         ; $71cb: $af
    call $be0a                                    ; $71cc: $cd $0a $be
    cp a                                          ; $71cf: $bf
    ld b, a                                       ; $71d0: $47
    db $10                                        ; $71d1: $10
    push hl                                       ; $71d2: $e5
    ld [hl], c                                    ; $71d3: $71
    and d                                         ; $71d4: $a2
    add hl, de                                    ; $71d5: $19
    ld c, d                                       ; $71d6: $4a
    sbc c                                         ; $71d7: $99
    xor b                                         ; $71d8: $a8
    ld c, e                                       ; $71d9: $4b
    db $ed                                        ; $71da: $ed
    pop de                                        ; $71db: $d1
    cp d                                          ; $71dc: $ba
    ld a, e                                       ; $71dd: $7b
    db $e3                                        ; $71de: $e3
    or d                                          ; $71df: $b2
    ld [bc], a                                    ; $71e0: $02
    xor l                                         ; $71e1: $ad
    adc a                                         ; $71e2: $8f
    ld d, l                                       ; $71e3: $55
    rst $00                                       ; $71e4: $c7
    ld h, e                                       ; $71e5: $63
    scf                                           ; $71e6: $37
    ld d, c                                       ; $71e7: $51
    cp b                                          ; $71e8: $b8
    ret c                                         ; $71e9: $d8

    ld l, e                                       ; $71ea: $6b
    ld c, a                                       ; $71eb: $4f
    inc h                                         ; $71ec: $24
    ld e, [hl]                                    ; $71ed: $5e
    call nc, $2da5                                ; $71ee: $d4 $a5 $2d
    dec sp                                        ; $71f1: $3b
    rst $28                                       ; $71f2: $ef
    adc b                                         ; $71f3: $88
    ld a, [de]                                    ; $71f4: $1a
    sbc e                                         ; $71f5: $9b
    dec d                                         ; $71f6: $15
    cp [hl]                                       ; $71f7: $be
    cp a                                          ; $71f8: $bf
    ccf                                           ; $71f9: $3f
    ld [$c762], a                                 ; $71fa: $ea $62 $c7
    ld [hl], $e4                                  ; $71fd: $36 $e4
    ld b, h                                       ; $71ff: $44
    ld e, l                                       ; $7200: $5d
    jp c, $f3b2                                   ; $7201: $da $b2 $f3

    adc [hl]                                      ; $7204: $8e
    xor b                                         ; $7205: $a8
    or c                                          ; $7206: $b1
    ld e, c                                       ; $7207: $59
    ld bc, $dd1d                                  ; $7208: $01 $1d $dd
    ld [hl-], a                                   ; $720b: $32
    add l                                         ; $720c: $85
    ld c, a                                       ; $720d: $4f
    db $db                                        ; $720e: $db
    scf                                           ; $720f: $37
    ld d, c                                       ; $7210: $51
    ret c                                         ; $7211: $d8

    dec de                                        ; $7212: $1b
    add hl, hl                                    ; $7213: $29
    ld l, [hl]                                    ; $7214: $6e
    ld d, $ac                                     ; $7215: $16 $ac
    sbc l                                         ; $7217: $9d
    ld a, b                                       ; $7218: $78
    cp l                                          ; $7219: $bd
    rst $20                                       ; $721a: $e7
    ld l, [hl]                                    ; $721b: $6e
    and d                                         ; $721c: $a2
    ld l, $6d                                     ; $721d: $2e $6d
    dec a                                         ; $721f: $3d
    sub c                                         ; $7220: $91
    ld hl, sp+$2b                                 ; $7221: $f8 $2b
    cp [hl]                                       ; $7223: $be
    cp a                                          ; $7224: $bf
    ccf                                           ; $7225: $3f
    ld l, l                                       ; $7226: $6d
    reti                                          ; $7227: $d9


    adc e                                         ; $7228: $8b
    ld b, d                                       ; $7229: $42
    call nc, $f6a5                                ; $722a: $d4 $a5 $f6
    ld l, b                                       ; $722d: $68
    db $dd                                        ; $722e: $dd
    cp l                                          ; $722f: $bd
    ld [hl], c                                    ; $7230: $71
    ld e, c                                       ; $7231: $59
    ld bc, $bfbe                                  ; $7232: $01 $be $bf
    ccf                                           ; $7235: $3f
    adc e                                         ; $7236: $8b
    adc l                                         ; $7237: $8d
    rla                                           ; $7238: $17
    and l                                         ; $7239: $a5
    adc h                                         ; $723a: $8c
    ld e, l                                       ; $723b: $5d
    call nc, $f6a5                                ; $723c: $d4 $a5 $f6
    ld l, b                                       ; $723f: $68
    db $dd                                        ; $7240: $dd
    cp l                                          ; $7241: $bd
    ld [hl], c                                    ; $7242: $71
    ld e, c                                       ; $7243: $59
    ld bc, $bfbe                                  ; $7244: $01 $be $bf
    ccf                                           ; $7247: $3f
    ld a, [bc]                                    ; $7248: $0a
    dec sp                                        ; $7249: $3b
    halt                                          ; $724a: $76
    ld l, h                                       ; $724b: $6c
    rst $08                                       ; $724c: $cf
    inc a                                         ; $724d: $3c
    dec hl                                        ; $724e: $2b
    cp [hl]                                       ; $724f: $be
    jp $b30c                                      ; $7250: $c3 $0c $b3


    rla                                           ; $7253: $17
    ld e, h                                       ; $7254: $5c
    inc d                                         ; $7255: $14
    halt                                          ; $7256: $76
    sub [hl]                                      ; $7257: $96
    ld a, e                                       ; $7258: $7b
    sbc c                                         ; $7259: $99
    inc [hl]                                      ; $725a: $34
    cp [hl]                                       ; $725b: $be
    ld [bc], a                                    ; $725c: $02
    ld [hl], l                                    ; $725d: $75
    add a                                         ; $725e: $87
    ld a, b                                       ; $725f: $78
    inc hl                                        ; $7260: $23
    ld c, b                                       ; $7261: $48
    sub e                                         ; $7262: $93
    dec hl                                        ; $7263: $2b
    sbc [hl]                                      ; $7264: $9e
    ld e, a                                       ; $7265: $5f
    pop bc                                        ; $7266: $c1
    ld a, $fa                                     ; $7267: $3e $fa
    ld a, l                                       ; $7269: $7d
    and d                                         ; $726a: $a2
    sbc [hl]                                      ; $726b: $9e
    ccf                                           ; $726c: $3f
    ld a, [bc]                                    ; $726d: $0a
    ld a, e                                       ; $726e: $7b
    ld a, a                                       ; $726f: $7f
    jp c, $13b2                                   ; $7270: $da $b2 $13

    ld l, l                                       ; $7273: $6d
    sbc b                                         ; $7274: $98
    ld d, a                                       ; $7275: $57
    sbc [hl]                                      ; $7276: $9e
    ld h, e                                       ; $7277: $63
    halt                                          ; $7278: $76
    ld l, d                                       ; $7279: $6a
    ld l, [hl]                                    ; $727a: $6e
    and d                                         ; $727b: $a2
    ld l, $ad                                     ; $727c: $2e $ad
    ld d, $b6                                     ; $727e: $16 $b6
    sub c                                         ; $7280: $91
    xor c                                         ; $7281: $a9
    xor $57                                       ; $7282: $ee $57
    ld [hl], l                                    ; $7284: $75
    rst $18                                       ; $7285: $df
    call c, Call_044_5d44                         ; $7286: $dc $44 $5d
    ld l, d                                       ; $7289: $6a
    adc a                                         ; $728a: $8f
    sub $dd                                       ; $728b: $d6 $dd
    dec de                                        ; $728d: $1b
    sub a                                         ; $728e: $97
    inc [hl]                                      ; $728f: $34
    cp c                                          ; $7290: $b9
    ld [bc], a                                    ; $7291: $02
    ld [hl], l                                    ; $7292: $75
    rst $18                                       ; $7293: $df
    call c, Call_044_5d44                         ; $7294: $dc $44 $5d
    ld l, d                                       ; $7297: $6a
    adc a                                         ; $7298: $8f
    sub $dd                                       ; $7299: $d6 $dd
    dec de                                        ; $729b: $1b
    sub a                                         ; $729c: $97
    inc [hl]                                      ; $729d: $34
    or l                                          ; $729e: $b5
    ld [bc], a                                    ; $729f: $02
    ld [hl], l                                    ; $72a0: $75
    rst $18                                       ; $72a1: $df
    call c, Call_044_5d44                         ; $72a2: $dc $44 $5d
    ld l, d                                       ; $72a5: $6a
    adc a                                         ; $72a6: $8f
    sub $dd                                       ; $72a7: $d6 $dd
    dec de                                        ; $72a9: $1b
    sub a                                         ; $72aa: $97
    inc [hl]                                      ; $72ab: $34
    cp l                                          ; $72ac: $bd
    ld [bc], a                                    ; $72ad: $02
    ld l, l                                       ; $72ae: $6d
    inc d                                         ; $72af: $14
    add [hl]                                      ; $72b0: $86
    ret                                           ; $72b1: $c9


    ld b, h                                       ; $72b2: $44
    ld h, c                                       ; $72b3: $61
    rst $28                                       ; $72b4: $ef
    adc a                                         ; $72b5: $8f
    ei                                            ; $72b6: $fb
    push hl                                       ; $72b7: $e5
    ld b, l                                       ; $72b8: $45
    ld a, $ea                                     ; $72b9: $3e $ea
    ld d, d                                       ; $72bb: $52
    ei                                            ; $72bc: $fb
    dec [hl]                                      ; $72bd: $35
    dec sp                                        ; $72be: $3b
    or l                                          ; $72bf: $b5
    ld [bc], a                                    ; $72c0: $02
    sbc [hl]                                      ; $72c1: $9e
    sbc e                                         ; $72c2: $9b
    ld [$70a3], a                                 ; $72c3: $ea $a3 $70
    pop af                                        ; $72c6: $f1
    sbc h                                         ; $72c7: $9c
    cp l                                          ; $72c8: $bd
    ld b, c                                       ; $72c9: $41
    cp h                                          ; $72ca: $bc
    sub c                                         ; $72cb: $91
    dec hl                                        ; $72cc: $2b
    ld a, h                                       ; $72cd: $7c
    dec hl                                        ; $72ce: $2b
    cp [hl]                                       ; $72cf: $be
    cp a                                          ; $72d0: $bf
    ccf                                           ; $72d1: $3f
    ld l, l                                       ; $72d2: $6d
    reti                                          ; $72d3: $d9


    adc e                                         ; $72d4: $8b
    ld b, d                                       ; $72d5: $42
    ld a, [de]                                    ; $72d6: $1a
    dec c                                         ; $72d7: $0d
    ld c, c                                       ; $72d8: $49
    add a                                         ; $72d9: $87
    ld a, a                                       ; $72da: $7f
    dec b                                         ; $72db: $05
    xor l                                         ; $72dc: $ad
    jp nc, Jump_000_29fd                          ; $72dd: $d2 $fd $29

    ret nc                                        ; $72e0: $d0

    inc c                                         ; $72e1: $0c
    db $fc                                        ; $72e2: $fc
    ld d, c                                       ; $72e3: $51
    cp b                                          ; $72e4: $b8
    or h                                          ; $72e5: $b4
    or $7a                                        ; $72e6: $f6 $7a
    db $fd                                        ; $72e8: $fd
    res 5, l                                      ; $72e9: $cb $ad
    sbc [hl]                                      ; $72eb: $9e
    cpl                                           ; $72ec: $2f
    ld c, $7b                                     ; $72ed: $0e $7b
    jp Jump_044_57ee                              ; $72ef: $c3 $ee $57


    xor l                                         ; $72f2: $ad
    cp l                                          ; $72f3: $bd
    ld h, $13                                     ; $72f4: $26 $13
    add l                                         ; $72f6: $85
    adc e                                         ; $72f7: $8b
    cp l                                          ; $72f8: $bd
    or $44                                        ; $72f9: $f6 $44
    ld [c], a                                     ; $72fb: $e2
    xor l                                         ; $72fc: $ad
    xor l                                         ; $72fd: $ad
    jp nc, $51fd                                  ; $72fe: $d2 $fd $51

    sub a                                         ; $7301: $97
    or $69                                        ; $7302: $f6 $69
    add hl, sp                                    ; $7304: $39
    rst $30                                       ; $7305: $f7
    ld l, c                                       ; $7306: $69
    db $ed                                        ; $7307: $ed
    push af                                       ; $7308: $f5
    ld a, [$5f97]                                 ; $7309: $fa $97 $5f
    ld bc, $d2ad                                  ; $730c: $01 $ad $d2
    db $fd                                        ; $730f: $fd
    ld d, c                                       ; $7310: $51
    sub a                                         ; $7311: $97
    ld d, [hl]                                    ; $7312: $56
    adc l                                         ; $7313: $8d
    sub c                                         ; $7314: $91
    sub $5e                                       ; $7315: $d6 $5e
    xor a                                         ; $7317: $af
    ld a, a                                       ; $7318: $7f
    ld sp, hl                                     ; $7319: $f9
    dec d                                         ; $731a: $15
    sbc [hl]                                      ; $731b: $9e
    ld e, a                                       ; $731c: $5f
    pop bc                                        ; $731d: $c1
    ld a, $fa                                     ; $731e: $3e $fa
    ld a, l                                       ; $7320: $7d
    and d                                         ; $7321: $a2
    sbc [hl]                                      ; $7322: $9e
    ccf                                           ; $7323: $3f
    ld a, [bc]                                    ; $7324: $0a
    ld a, e                                       ; $7325: $7b
    ld a, a                                       ; $7326: $7f
    cp h                                          ; $7327: $bc
    and a                                         ; $7328: $a7
    ld d, c                                       ; $7329: $51
    dec sp                                        ; $732a: $3b
    ld sp, hl                                     ; $732b: $f9
    dec d                                         ; $732c: $15
    sbc [hl]                                      ; $732d: $9e
    ld h, e                                       ; $732e: $63
    halt                                          ; $732f: $76
    ld l, d                                       ; $7330: $6a
    ld l, [hl]                                    ; $7331: $6e
    ld d, d                                       ; $7332: $52
    and b                                         ; $7333: $a0
    add hl, de                                    ; $7334: $19
    ld a, b                                       ; $7335: $78
    and d                                         ; $7336: $a2
    or b                                          ; $7337: $b0
    ld d, e                                       ; $7338: $53
    ld d, b                                       ; $7339: $50
    ld a, b                                       ; $733a: $78
    or d                                          ; $733b: $b2
    call c, $accb                                 ; $733c: $dc $cb $ac
    sbc l                                         ; $733f: $9d
    ld a, b                                       ; $7340: $78
    cp l                                          ; $7341: $bd
    rst $20                                       ; $7342: $e7
    ld l, [hl]                                    ; $7343: $6e
    and d                                         ; $7344: $a2
    ld l, $1d                                     ; $7345: $2e $1d
    dec [hl]                                      ; $7347: $35
    add sp, $5d                                   ; $7348: $e8 $5d
    ld bc, $d2ad                                  ; $734a: $01 $ad $d2
    db $fd                                        ; $734d: $fd
    ld hl, $f0e9                                  ; $734e: $21 $e9 $f0
    xor a                                         ; $7351: $af
    db $ed                                        ; $7352: $ed
    rst $38                                       ; $7353: $ff
    or d                                          ; $7354: $b2
    ld a, h                                       ; $7355: $7c
    inc d                                         ; $7356: $14
    or $46                                        ; $7357: $f6 $46
    sbc h                                         ; $7359: $9c
    rst $38                                       ; $735a: $ff
    sbc [hl]                                      ; $735b: $9e

jr_044_735c:
    cp h                                          ; $735c: $bc
    db $fc                                        ; $735d: $fc
    ld a, [hl]                                    ; $735e: $7e

Jump_044_735f:
    add $0a                                       ; $735f: $c6 $0a
    cp [hl]                                       ; $7361: $be
    cp a                                          ; $7362: $bf
    ccf                                           ; $7363: $3f
    ld l, l                                       ; $7364: $6d
    reti                                          ; $7365: $d9


    adc e                                         ; $7366: $8b
    ld b, d                                       ; $7367: $42
    ld a, [de]                                    ; $7368: $1a
    ld c, l                                       ; $7369: $4d
    sbc e                                         ; $736a: $9b
    daa                                           ; $736b: $27
    ret z                                         ; $736c: $c8

    ld a, [c]                                     ; $736d: $f2
    add $c7                                       ; $736e: $c6 $c7
    cp a                                          ; $7370: $bf
    ld [bc], a                                    ; $7371: $02
    cp [hl]                                       ; $7372: $be
    ld b, e                                       ; $7373: $43
    ld b, l                                       ; $7374: $45
    dec [hl]                                      ; $7375: $35
    sub $3e                                       ; $7376: $d6 $3e
    dec l                                         ; $7378: $2d
    rst $20                                       ; $7379: $e7
    ld e, d                                       ; $737a: $5a
    ld c, h                                       ; $737b: $4c
    dec hl                                        ; $737c: $2b
    ld c, l                                       ; $737d: $4d
    ld h, h                                       ; $737e: $64
    dec b                                         ; $737f: $05
    cp [hl]                                       ; $7380: $be
    cp b                                          ; $7381: $b8
    ld a, h                                       ; $7382: $7c
    ld e, d                                       ; $7383: $5a
    cp a                                          ; $7384: $bf
    rst $10                                       ; $7385: $d7
    ld b, [hl]                                    ; $7386: $46
    jp nc, $deea                                  ; $7387: $d2 $ea $de

    jr nz, jr_044_735c                            ; $738a: $20 $d0

    xor a                                         ; $738c: $af
    cp [hl]                                       ; $738d: $be
    cp b                                          ; $738e: $b8
    ld [$0476], sp                                ; $738f: $08 $76 $04
    jp c, $6f10                                   ; $7392: $da $10 $6f

    and d                                         ; $7395: $a2
    ld l, $ee                                     ; $7396: $2e $ee
    or a                                          ; $7398: $b7
    add d                                         ; $7399: $82
    adc l                                         ; $739a: $8d
    ld e, h                                       ; $739b: $5c
    jp c, Jump_044_69de                           ; $739c: $da $de $69

    rst $38                                       ; $739f: $ff
    inc b                                         ; $73a0: $04
    add l                                         ; $73a1: $85
    ld l, l                                       ; $73a2: $6d
    inc b                                         ; $73a3: $04
    db $fd                                        ; $73a4: $fd
    ld a, [bc]                                    ; $73a5: $0a
    cp [hl]                                       ; $73a6: $be
    cp b                                          ; $73a7: $b8
    ld [$fef6], sp                                ; $73a8: $08 $f6 $fe
    ld a, b                                       ; $73ab: $78
    rst $18                                       ; $73ac: $df
    xor d                                         ; $73ad: $aa
    ld [hl], a                                    ; $73ae: $77
    rst $30                                       ; $73af: $f7
    db $fd                                        ; $73b0: $fd
    ld a, [bc]                                    ; $73b1: $0a
    cp [hl]                                       ; $73b2: $be
    cp b                                          ; $73b3: $b8
    ld [$f6f6], sp                                ; $73b4: $08 $f6 $f6
    ld l, b                                       ; $73b7: $68
    and e                                         ; $73b8: $a3

Call_044_73b9:
    ld e, d                                       ; $73b9: $5a
    add $6e                                       ; $73ba: $c6 $6e
    and d                                         ; $73bc: $a2
    or b                                          ; $73bd: $b0
    db $d3                                        ; $73be: $d3
    ld d, $f5                                     ; $73bf: $16 $f5
    ld c, [hl]                                    ; $73c1: $4e
    cp a                                          ; $73c2: $bf
    ld [bc], a                                    ; $73c3: $02
    cp [hl]                                       ; $73c4: $be
    cp b                                          ; $73c5: $b8
    ld [$fef6], sp                                ; $73c6: $08 $f6 $fe
    or h                                          ; $73c9: $b4
    ld [hl], $cc                                  ; $73ca: $36 $cc
    ret nc                                        ; $73cc: $d0

    ld a, $0a                                     ; $73cd: $3e $0a
    ld a, e                                       ; $73cf: $7b
    inc hl                                        ; $73d0: $23
    ld a, [$ce77]                                 ; $73d1: $fa $77 $ce
    rrca                                          ; $73d4: $0f
    ld h, [hl]                                    ; $73d5: $66
    and h                                         ; $73d6: $a4
    ld a, d                                       ; $73d7: $7a
    db $ed                                        ; $73d8: $ed
    sbc h                                         ; $73d9: $9c
    rra                                           ; $73da: $1f
    ld d, c                                       ; $73db: $51
    sub a                                         ; $73dc: $97
    ld c, $f6                                     ; $73dd: $0e $f6
    ld a, $f2                                     ; $73df: $3e $f2
    ld b, l                                       ; $73e1: $45
    pop bc                                        ; $73e2: $c1
    ld a, [$be15]                                 ; $73e3: $fa $15 $be
    cp b                                          ; $73e6: $b8
    ld [$fef6], sp                                ; $73e7: $08 $f6 $fe
    db $ec                                        ; $73ea: $ec
    db $d3                                        ; $73eb: $d3
    dec de                                        ; $73ec: $1b
    db $ec                                        ; $73ed: $ec
    ld a, $6d                                     ; $73ee: $3e $6d
    rst $28                                       ; $73f0: $ef
    ld l, b                                       ; $73f1: $68
    cp $b3                                        ; $73f2: $fe $b3
    db $d3                                        ; $73f4: $d3
    add $a6                                       ; $73f5: $c6 $a6
    ld e, a                                       ; $73f7: $5f
    ld bc, $b8be                                  ; $73f8: $01 $be $b8
    xor b                                         ; $73fb: $a8
    ld c, a                                       ; $73fc: $4f
    ei                                            ; $73fd: $fb
    xor a                                         ; $73fe: $af
    cp [hl]                                       ; $73ff: $be
    ld a, [$efb4]                                 ; $7400: $fa $b4 $ef
    inc a                                         ; $7403: $3c
    rst $30                                       ; $7404: $f7
    ld c, e                                       ; $7405: $4b
    adc e                                         ; $7406: $8b
    ld a, c                                       ; $7407: $79
    db $fd                                        ; $7408: $fd
    pop af                                        ; $7409: $f1
    ld h, l                                       ; $740a: $65
    add c                                         ; $740b: $81
    add l                                         ; $740c: $85
    add hl, hl                                    ; $740d: $29
    inc sp                                        ; $740e: $33
    or d                                          ; $740f: $b2
    sub c                                         ; $7410: $91
    ld [hl], c                                    ; $7411: $71
    xor $cb                                       ; $7412: $ee $cb
    adc l                                         ; $7414: $8d
    ld e, h                                       ; $7415: $5c
    cp a                                          ; $7416: $bf
    ld [bc], a                                    ; $7417: $02
    cp [hl]                                       ; $7418: $be
    cp b                                          ; $7419: $b8
    ld [$0476], sp                                ; $741a: $08 $76 $04
    jp c, $6f10                                   ; $741d: $da $10 $6f

    and d                                         ; $7420: $a2
    ld l, $6a                                     ; $7421: $2e $6a
    or [hl]                                       ; $7423: $b6
    cp e                                          ; $7424: $bb
    or h                                          ; $7425: $b4
    scf                                           ; $7426: $37
    ld hl, $e752                                  ; $7427: $21 $52 $e7
    db $fc                                        ; $742a: $fc
    or b                                          ; $742b: $b0
    sub e                                         ; $742c: $93
    jp hl                                         ; $742d: $e9


    ld d, a                                       ; $742e: $57
    cp [hl]                                       ; $742f: $be
    cp b                                          ; $7430: $b8
    ld [$fef6], sp                                ; $7431: $08 $f6 $fe
    or h                                          ; $7434: $b4
    ld h, l                                       ; $7435: $65
    daa                                           ; $7436: $27
    jp c, $eb30                                   ; $7437: $da $30 $eb

    or d                                          ; $743a: $b2
    ccf                                           ; $743b: $3f
    ld a, [$f717]                                 ; $743c: $fa $17 $f7
    ld d, c                                       ; $743f: $51
    cp b                                          ; $7440: $b8
    ld d, h                                       ; $7441: $54
    xor a                                         ; $7442: $af
    ld sp, hl                                     ; $7443: $f9
    xor a                                         ; $7444: $af
    ld e, a                                       ; $7445: $5f
    ld bc, $b8be                                  ; $7446: $01 $be $b8
    sbc h                                         ; $7449: $9c
    add h                                         ; $744a: $84
    ld c, d                                       ; $744b: $4a
    jp z, $c330                                   ; $744c: $ca $30 $c3

    db $ec                                        ; $744f: $ec
    dec b                                         ; $7450: $05
    sub e                                         ; $7451: $93
    ld [hl-], a                                   ; $7452: $32
    call z, $fd93                                 ; $7453: $cc $93 $fd
    ld l, c                                       ; $7456: $69
    bit 1, [hl]                                   ; $7457: $cb $4e
    or h                                          ; $7459: $b4
    ld h, c                                       ; $745a: $61
    xor $57                                       ; $745b: $ee $57
    cp [hl]                                       ; $745d: $be
    db $fc                                        ; $745e: $fc
    sub a                                         ; $745f: $97
    ld h, a                                       ; $7460: $67
    or [hl]                                       ; $7461: $b6
    daa                                           ; $7462: $27
    ld h, c                                       ; $7463: $61
    push hl                                       ; $7464: $e5
    ld b, l                                       ; $7465: $45
    ld c, l                                       ; $7466: $4d
    ld l, [hl]                                    ; $7467: $6e
    ld h, a                                       ; $7468: $67
    cp a                                          ; $7469: $bf
    ld [hl], $fd                                  ; $746a: $36 $fd
    ld a, [bc]                                    ; $746c: $0a
    cp [hl]                                       ; $746d: $be
    cp b                                          ; $746e: $b8
    sbc h                                         ; $746f: $9c
    add h                                         ; $7470: $84
    ld c, d                                       ; $7471: $4a
    jp z, $c330                                   ; $7472: $ca $30 $c3

    db $ec                                        ; $7475: $ec
    dec b                                         ; $7476: $05
    db $d3                                        ; $7477: $d3
    xor a                                         ; $7478: $af
    cp [hl]                                       ; $7479: $be
    cp b                                          ; $747a: $b8
    sbc h                                         ; $747b: $9c
    add h                                         ; $747c: $84
    ld c, d                                       ; $747d: $4a
    jp z, $c330                                   ; $747e: $ca $30 $c3

    db $ec                                        ; $7481: $ec
    dec b                                         ; $7482: $05
    db $d3                                        ; $7483: $d3
    xor a                                         ; $7484: $af
    cp [hl]                                       ; $7485: $be
    cp b                                          ; $7486: $b8
    sbc h                                         ; $7487: $9c
    add h                                         ; $7488: $84
    ld c, d                                       ; $7489: $4a
    jp z, $c330                                   ; $748a: $ca $30 $c3

    db $ec                                        ; $748d: $ec
    dec b                                         ; $748e: $05
    db $d3                                        ; $748f: $d3
    xor a                                         ; $7490: $af
    cp [hl]                                       ; $7491: $be
    cp b                                          ; $7492: $b8
    inc d                                         ; $7493: $14
    cp d                                          ; $7494: $ba
    or a                                          ; $7495: $b7
    ld b, a                                       ; $7496: $47
    dec de                                        ; $7497: $1b
    ld h, l                                       ; $7498: $65
    ld sp, $3294                                  ; $7499: $31 $94 $32
    ld e, c                                       ; $749c: $59
    ld h, b                                       ; $749d: $60
    xor c                                         ; $749e: $a9
    dec a                                         ; $749f: $3d
    ld e, d                                       ; $74a0: $5a
    ld [hl], a                                    ; $74a1: $77
    ld l, a                                       ; $74a2: $6f
    ld e, h                                       ; $74a3: $5c
    ld a, [$be15]                                 ; $74a4: $fa $15 $be
    cp b                                          ; $74a7: $b8
    ld [$f6f6], sp                                ; $74a8: $08 $f6 $f6
    ld a, b                                       ; $74ab: $78
    cp d                                          ; $74ac: $ba
    ccf                                           ; $74ad: $3f
    ld [$aad2], a                                 ; $74ae: $ea $d2 $aa
    ldh a, [$39]                                  ; $74b1: $f0 $39
    ccf                                           ; $74b3: $3f
    jp nc, Jump_000_1511                          ; $74b4: $d2 $11 $15

    db $f4                                        ; $74b7: $f4
    dec hl                                        ; $74b8: $2b
    cp [hl]                                       ; $74b9: $be
    cp b                                          ; $74ba: $b8
    ld [$f6f6], sp                                ; $74bb: $08 $f6 $f6
    ld a, b                                       ; $74be: $78
    cp d                                          ; $74bf: $ba
    ccf                                           ; $74c0: $3f
    ld [$aad2], a                                 ; $74c1: $ea $d2 $aa
    dec e                                         ; $74c4: $1d
    ld d, a                                       ; $74c5: $57
    cpl                                           ; $74c6: $2f
    call nz, Call_044_7efb                        ; $74c7: $c4 $fb $7e
    dec b                                         ; $74ca: $05
    cp [hl]                                       ; $74cb: $be
    cp b                                          ; $74cc: $b8
    ld [$fef6], sp                                ; $74cd: $08 $f6 $fe
    ld l, b                                       ; $74d0: $68
    cp a                                          ; $74d1: $bf
    scf                                           ; $74d2: $37
    db $ec                                        ; $74d3: $ec
    ld a, $0a                                     ; $74d4: $3e $0a
    ld a, e                                       ; $74d6: $7b
    inc hl                                        ; $74d7: $23
    ld l, a                                       ; $74d8: $6f
    push de                                       ; $74d9: $d5
    inc sp                                        ; $74da: $33
    dec [hl]                                      ; $74db: $35
    db $f4                                        ; $74dc: $f4
    dec hl                                        ; $74dd: $2b
    cp [hl]                                       ; $74de: $be
    cp b                                          ; $74df: $b8
    ld [$f6f6], sp                                ; $74e0: $08 $f6 $f6
    ld a, b                                       ; $74e3: $78
    cp d                                          ; $74e4: $ba
    ccf                                           ; $74e5: $3f
    ld [$6ad2], a                                 ; $74e6: $ea $d2 $6a
    ld h, c                                       ; $74e9: $61
    dec de                                        ; $74ea: $1b
    sbc c                                         ; $74eb: $99
    ld [$5fbe], a                                 ; $74ec: $ea $be $5f
    ld bc, $b8be                                  ; $74ef: $01 $be $b8
    ld [$fef6], sp                                ; $74f2: $08 $f6 $fe
    inc d                                         ; $74f5: $14
    ld a, [hl]                                    ; $74f6: $7e
    ld hl, $147e                                  ; $74f7: $21 $7e $14
    or $46                                        ; $74fa: $f6 $46
    sub [hl]                                      ; $74fc: $96
    ld d, a                                       ; $74fd: $57
    ret c                                         ; $74fe: $d8

    dec de                                        ; $74ff: $1b
    db $fd                                        ; $7500: $fd
    ld a, [bc]                                    ; $7501: $0a
    cp [hl]                                       ; $7502: $be
    cp b                                          ; $7503: $b8
    ld [$fef6], sp                                ; $7504: $08 $f6 $fe
    add sp, -$79                                  ; $7507: $e8 $87
    add hl, de                                    ; $7509: $19

Call_044_750a:
    jp c, Jump_044_5d47                           ; $750a: $da $47 $5d

    xor d                                         ; $750d: $aa
    sub a                                         ; $750e: $97
    ld [hl], e                                    ; $750f: $73
    rla                                           ; $7510: $17
    ld [hl], l                                    ; $7511: $75
    add hl, hl                                    ; $7512: $29
    ld l, [hl]                                    ; $7513: $6e
    sub [hl]                                      ; $7514: $96

Call_044_7515:
    rst $28                                       ; $7515: $ef
    ld d, a                                       ; $7516: $57
    cp [hl]                                       ; $7517: $be
    cp b                                          ; $7518: $b8
    ld [$f6f6], sp                                ; $7519: $08 $f6 $f6
    ld a, b                                       ; $751c: $78
    cp d                                          ; $751d: $ba
    ccf                                           ; $751e: $3f
    ld [$b6d2], a                                 ; $751f: $ea $d2 $b6
    cp b                                          ; $7522: $b8
    rla                                           ; $7523: $17
    ld b, [hl]                                    ; $7524: $46
    cp c                                          ; $7525: $b9
    ld [$15fa], a                                 ; $7526: $ea $fa $15
    cp [hl]                                       ; $7529: $be
    cp b                                          ; $752a: $b8
    ld [$f6f6], sp                                ; $752b: $08 $f6 $f6
    ld a, b                                       ; $752e: $78

jr_044_752f:
    cp d                                          ; $752f: $ba
    ccf                                           ; $7530: $3f
    ld [$aad2], a                                 ; $7531: $ea $d2 $aa
    pop af                                        ; $7534: $f1
    and l                                         ; $7535: $a5
    add e                                         ; $7536: $83
    ld [c], a                                     ; $7537: $e2
    xor b                                         ; $7538: $a8
    and c                                         ; $7539: $a1
    ld e, a                                       ; $753a: $5f
    ld bc, $ffb5                                  ; $753b: $01 $b5 $ff
    jp nz, $e436                                  ; $753e: $c2 $36 $e4

    di                                            ; $7541: $f3
    ld h, h                                       ; $7542: $64
    ld c, a                                       ; $7543: $4f
    ld a, h                                       ; $7544: $7c
    rla                                           ; $7545: $17
    jr c, jr_044_752f                             ; $7546: $38 $e7

    cp a                                          ; $7548: $bf
    adc c                                         ; $7549: $89
    jp nz, $48de                                  ; $754a: $c2 $de $48

    ld l, e                                       ; $754d: $6b

Call_044_754e:
    or $15                                        ; $754e: $f6 $15
    ld a, [$be15]                                 ; $7550: $fa $15 $be
    cp b                                          ; $7553: $b8
    ld [$fef6], sp                                ; $7554: $08 $f6 $fe

jr_044_7557:
    inc l                                         ; $7557: $2c
    halt                                          ; $7558: $76
    push de                                       ; $7559: $d5
    and a                                         ; $755a: $a7
    add b                                         ; $755b: $80
    ld a, b                                       ; $755c: $78
    inc hl                                        ; $755d: $23
    adc b                                         ; $755e: $88
    jp nz, Jump_000_1fde                          ; $755f: $c2 $de $1f

    rst $28                                       ; $7562: $ef
    jr jr_044_756f                                ; $7563: $18 $0a

    ld a, a                                       ; $7565: $7f
    ld d, $9b                                     ; $7566: $16 $9b
    db $d3                                        ; $7568: $d3
    rra                                           ; $7569: $1f
    ld a, a                                       ; $756a: $7f
    cp a                                          ; $756b: $bf
    ld [bc], a                                    ; $756c: $02
    cp [hl]                                       ; $756d: $be
    cp b                                          ; $756e: $b8

jr_044_756f:
    ld [$fef6], sp                                ; $756f: $08 $f6 $fe
    inc d                                         ; $7572: $14
    cp b                                          ; $7573: $b8
    ld de, $29f5                                  ; $7574: $11 $f5 $29
    jr nz, jr_044_7557                            ; $7577: $20 $de

    ld [$b0a2], sp                                ; $7579: $08 $a2 $b0
    rst $30                                       ; $757c: $f7
    rst $00                                       ; $757d: $c7
    dec sp                                        ; $757e: $3b
    add [hl]                                      ; $757f: $86
    jp nz, $c59f                                  ; $7580: $c2 $9f $c5

    and $f4                                       ; $7583: $e6 $f4
    rst $00                                       ; $7585: $c7
    rst $18                                       ; $7586: $df
    xor a                                         ; $7587: $af
    cp [hl]                                       ; $7588: $be
    cp b                                          ; $7589: $b8
    ld [$fef6], sp                                ; $758a: $08 $f6 $fe
    jr nc, @-$72                                  ; $758d: $30 $8c

    ld hl, sp+$29                                 ; $758f: $f8 $29
    jr nz, @-$20                                  ; $7591: $20 $de

    ld [$b0a2], sp                                ; $7593: $08 $a2 $b0
    rst $30                                       ; $7596: $f7
    rst $00                                       ; $7597: $c7
    dec sp                                        ; $7598: $3b
    add [hl]                                      ; $7599: $86
    jp nz, $c59f                                  ; $759a: $c2 $9f $c5

    and $f4                                       ; $759d: $e6 $f4
    rst $00                                       ; $759f: $c7
    rst $18                                       ; $75a0: $df
    xor a                                         ; $75a1: $af
    cp [hl]                                       ; $75a2: $be
    cp b                                          ; $75a3: $b8
    ld [$fef6], sp                                ; $75a4: $08 $f6 $fe
    ld hl, sp-$30                                 ; $75a7: $f8 $d0
    scf                                           ; $75a9: $37
    cp $14                                        ; $75aa: $fe $14
    db $10                                        ; $75ac: $10
    ld l, a                                       ; $75ad: $6f
    inc b                                         ; $75ae: $04
    ld d, c                                       ; $75af: $51
    ret c                                         ; $75b0: $d8

    ei                                            ; $75b1: $fb
    db $e3                                        ; $75b2: $e3
    dec e                                         ; $75b3: $1d
    ld b, e                                       ; $75b4: $43
    pop hl                                        ; $75b5: $e1
    rst $08                                       ; $75b6: $cf
    ld h, d                                       ; $75b7: $62
    ld [hl], e                                    ; $75b8: $73
    ld a, [$efe3]                                 ; $75b9: $fa $e3 $ef
    ld d, a                                       ; $75bc: $57
    cp [hl]                                       ; $75bd: $be
    cp b                                          ; $75be: $b8
    ld [$fef6], sp                                ; $75bf: $08 $f6 $fe
    ld hl, sp-$30                                 ; $75c2: $f8 $d0
    inc de                                        ; $75c4: $13
    cp $14                                        ; $75c5: $fe $14
    db $10                                        ; $75c7: $10
    ld l, a                                       ; $75c8: $6f
    inc b                                         ; $75c9: $04
    ld d, c                                       ; $75ca: $51
    ret c                                         ; $75cb: $d8

    ei                                            ; $75cc: $fb
    db $e3                                        ; $75cd: $e3
    dec e                                         ; $75ce: $1d
    ld b, e                                       ; $75cf: $43
    pop hl                                        ; $75d0: $e1
    rst $08                                       ; $75d1: $cf
    ld h, d                                       ; $75d2: $62
    ld [hl], e                                    ; $75d3: $73
    ld a, [$efe3]                                 ; $75d4: $fa $e3 $ef
    ld d, a                                       ; $75d7: $57
    cp [hl]                                       ; $75d8: $be
    cp b                                          ; $75d9: $b8
    ld [$fef6], sp                                ; $75da: $08 $f6 $fe
    inc d                                         ; $75dd: $14
    inc d                                         ; $75de: $14
    cp $14                                        ; $75df: $fe $14
    db $10                                        ; $75e1: $10
    ld l, a                                       ; $75e2: $6f
    inc b                                         ; $75e3: $04
    ld d, c                                       ; $75e4: $51
    ret c                                         ; $75e5: $d8

    ei                                            ; $75e6: $fb
    db $e3                                        ; $75e7: $e3
    dec e                                         ; $75e8: $1d
    ld b, e                                       ; $75e9: $43
    pop hl                                        ; $75ea: $e1
    rst $08                                       ; $75eb: $cf
    ld h, d                                       ; $75ec: $62
    ld [hl], e                                    ; $75ed: $73
    ld a, [$efe3]                                 ; $75ee: $fa $e3 $ef
    ld d, a                                       ; $75f1: $57
    cp [hl]                                       ; $75f2: $be
    cp b                                          ; $75f3: $b8
    sbc h                                         ; $75f4: $9c
    add h                                         ; $75f5: $84
    ld c, d                                       ; $75f6: $4a
    jp z, $c330                                   ; $75f7: $ca $30 $c3

    db $ec                                        ; $75fa: $ec
    dec b                                         ; $75fb: $05
    db $d3                                        ; $75fc: $d3
    xor a                                         ; $75fd: $af
    cp [hl]                                       ; $75fe: $be
    cp b                                          ; $75ff: $b8
    sbc h                                         ; $7600: $9c
    add h                                         ; $7601: $84
    ld c, d                                       ; $7602: $4a
    jp z, $c330                                   ; $7603: $ca $30 $c3

    db $ec                                        ; $7606: $ec
    dec b                                         ; $7607: $05
    db $d3                                        ; $7608: $d3
    xor a                                         ; $7609: $af
    cp [hl]                                       ; $760a: $be
    cp b                                          ; $760b: $b8
    sbc h                                         ; $760c: $9c
    add h                                         ; $760d: $84
    ld c, d                                       ; $760e: $4a
    jp z, $c330                                   ; $760f: $ca $30 $c3

    db $ec                                        ; $7612: $ec
    dec b                                         ; $7613: $05
    db $d3                                        ; $7614: $d3
    xor a                                         ; $7615: $af
    cp [hl]                                       ; $7616: $be
    cp b                                          ; $7617: $b8
    sbc h                                         ; $7618: $9c
    add h                                         ; $7619: $84
    ld c, d                                       ; $761a: $4a
    jp z, $c330                                   ; $761b: $ca $30 $c3

    db $ec                                        ; $761e: $ec
    dec b                                         ; $761f: $05
    db $d3                                        ; $7620: $d3
    xor a                                         ; $7621: $af
    cp [hl]                                       ; $7622: $be
    cp b                                          ; $7623: $b8
    sbc h                                         ; $7624: $9c
    add h                                         ; $7625: $84
    ld c, d                                       ; $7626: $4a
    jp z, $c330                                   ; $7627: $ca $30 $c3

    db $ec                                        ; $762a: $ec
    dec b                                         ; $762b: $05
    db $d3                                        ; $762c: $d3
    xor a                                         ; $762d: $af
    cp [hl]                                       ; $762e: $be
    cp b                                          ; $762f: $b8
    sbc h                                         ; $7630: $9c
    add h                                         ; $7631: $84

jr_044_7632:
    ld c, d                                       ; $7632: $4a
    jp z, $c330                                   ; $7633: $ca $30 $c3

    db $ec                                        ; $7636: $ec
    dec b                                         ; $7637: $05
    db $d3                                        ; $7638: $d3
    xor a                                         ; $7639: $af
    cp [hl]                                       ; $763a: $be
    cp b                                          ; $763b: $b8
    ld [$f6f6], sp                                ; $763c: $08 $f6 $f6
    and b                                         ; $763f: $a0
    ld e, [hl]                                    ; $7640: $5e
    rst $28                                       ; $7641: $ef
    cp c                                          ; $7642: $b9
    sbc e                                         ; $7643: $9b
    jr z, jr_044_7632                             ; $7644: $28 $ec

    inc l                                         ; $7646: $2c
    ld [hl], $5e                                  ; $7647: $36 $5e
    sub h                                         ; $7649: $94
    ld [hl-], a                                   ; $764a: $32
    sub [hl]                                      ; $764b: $96
    ld c, [hl]                                    ; $764c: $4e
    adc a                                         ; $764d: $8f
    ld l, a                                       ; $764e: $6f
    ld l, b                                       ; $764f: $68
    jp hl                                         ; $7650: $e9


    ld d, a                                       ; $7651: $57
    cp [hl]                                       ; $7652: $be
    cp b                                          ; $7653: $b8
    sbc h                                         ; $7654: $9c
    add h                                         ; $7655: $84
    adc d                                         ; $7656: $8a
    rst $00                                       ; $7657: $c7
    db $d3                                        ; $7658: $d3
    db $fd                                        ; $7659: $fd
    ld hl, $f0e9                                  ; $765a: $21 $e9 $f0
    rst $30                                       ; $765d: $f7
    dec hl                                        ; $765e: $2b
    cp [hl]                                       ; $765f: $be
    cp b                                          ; $7660: $b8
    sbc h                                         ; $7661: $9c
    add h                                         ; $7662: $84
    adc d                                         ; $7663: $8a
    rst $00                                       ; $7664: $c7
    db $d3                                        ; $7665: $d3
    db $fd                                        ; $7666: $fd
    ld hl, $f0e9                                  ; $7667: $21 $e9 $f0
    rst $30                                       ; $766a: $f7
    dec hl                                        ; $766b: $2b
    cp [hl]                                       ; $766c: $be
    cp b                                          ; $766d: $b8
    ld [$dc76], sp                                ; $766e: $08 $76 $dc
    sbc b                                         ; $7671: $98
    sbc l                                         ; $7672: $9d
    sbc d                                         ; $7673: $9a
    sbc e                                         ; $7674: $9b
    inc l                                         ; $7675: $2c
    ld [hl], $a7                                  ; $7676: $36 $a7
    ccf                                           ; $7678: $3f
    sbc [hl]                                      ; $7679: $9e
    ld a, [hl]                                    ; $767a: $7e
    dec b                                         ; $767b: $05
    cp [hl]                                       ; $767c: $be
    cp b                                          ; $767d: $b8
    ld [$fef6], sp                                ; $767e: $08 $f6 $fe
    inc d                                         ; $7681: $14
    sbc b                                         ; $7682: $98
    ld a, l                                       ; $7683: $7d
    cp a                                          ; $7684: $bf
    ld [bc], a                                    ; $7685: $02
    cp [hl]                                       ; $7686: $be
    cp b                                          ; $7687: $b8
    ld [$f476], sp                                ; $7688: $08 $76 $f4
    xor a                                         ; $768b: $af
    ret                                           ; $768c: $c9


    ld b, h                                       ; $768d: $44
    ld h, c                                       ; $768e: $61
    ld l, a                                       ; $768f: $6f
    call nz, Call_044_7b5e                        ; $7690: $c4 $5e $7b
    ld [hl+], a                                   ; $7693: $22
    ld de, $0afd                                  ; $7694: $11 $fd $0a
    cp [hl]                                       ; $7697: $be
    cp b                                          ; $7698: $b8
    ld a, b                                       ; $7699: $78
    jp hl                                         ; $769a: $e9


    ret c                                         ; $769b: $d8

    ld b, l                                       ; $769c: $45
    ld a, l                                       ; $769d: $7d
    ld l, d                                       ; $769e: $6a
    adc a                                         ; $769f: $8f
    sub $dd                                       ; $76a0: $d6 $dd
    dec de                                        ; $76a2: $1b
    sub a                                         ; $76a3: $97
    ld a, [hl]                                    ; $76a4: $7e
    dec b                                         ; $76a5: $05
    cp [hl]                                       ; $76a6: $be
    cp b                                          ; $76a7: $b8
    ld [$fef6], sp                                ; $76a8: $08 $f6 $fe
    cp b                                          ; $76ab: $b8
    ld e, a                                       ; $76ac: $5f
    ld e, [hl]                                    ; $76ad: $5e

jr_044_76ae:
    db $e4                                        ; $76ae: $e4
    and e                                         ; $76af: $a3
    ld l, $b5                                     ; $76b0: $2e $b5
    ld e, a                                       ; $76b2: $5f
    or e                                          ; $76b3: $b3
    ld d, e                                       ; $76b4: $53
    db $fd                                        ; $76b5: $fd
    ld a, [bc]                                    ; $76b6: $0a
    cp [hl]                                       ; $76b7: $be
    cp b                                          ; $76b8: $b8
    ld [$dc76], sp                                ; $76b9: $08 $76 $dc
    sbc b                                         ; $76bc: $98
    sbc l                                         ; $76bd: $9d
    sbc d                                         ; $76be: $9a
    sbc e                                         ; $76bf: $9b
    jr z, jr_044_76ae                             ; $76c0: $28 $ec

    inc l                                         ; $76c2: $2c
    halt                                          ; $76c3: $76
    push de                                       ; $76c4: $d5
    ld h, h                                       ; $76c5: $64
    cp c                                          ; $76c6: $b9
    sub a                                         ; $76c7: $97
    jp hl                                         ; $76c8: $e9


    ld d, a                                       ; $76c9: $57
    cp [hl]                                       ; $76ca: $be
    cp b                                          ; $76cb: $b8
    ld [$dc76], sp                                ; $76cc: $08 $76 $dc
    sbc b                                         ; $76cf: $98
    sbc l                                         ; $76d0: $9d
    sbc d                                         ; $76d1: $9a
    sbc e                                         ; $76d2: $9b
    jr z, @-$12                                   ; $76d3: $28 $ec

jr_044_76d5:
    inc d                                         ; $76d5: $14
    cp b                                          ; $76d6: $b8
    ld de, $5935                                  ; $76d7: $11 $35 $59
    xor $65                                       ; $76da: $ee $65
    ld a, [$be15]                                 ; $76dc: $fa $15 $be
    cp b                                          ; $76df: $b8
    ld [$dc76], sp                                ; $76e0: $08 $76 $dc
    sbc b                                         ; $76e3: $98
    sbc l                                         ; $76e4: $9d
    sbc d                                         ; $76e5: $9a
    sbc e                                         ; $76e6: $9b
    jr z, jr_044_76d5                             ; $76e7: $28 $ec

    jr nc, @-$72                                  ; $76e9: $30 $8c

    jr c, @+$5b                                   ; $76eb: $38 $59

    xor $65                                       ; $76ed: $ee $65
    ld a, [$be15]                                 ; $76ef: $fa $15 $be
    cp b                                          ; $76f2: $b8
    ld [$dc76], sp                                ; $76f3: $08 $76 $dc
    sbc b                                         ; $76f6: $98
    sbc l                                         ; $76f7: $9d
    sbc d                                         ; $76f8: $9a
    sbc e                                         ; $76f9: $9b
    jr z, @-$12                                   ; $76fa: $28 $ec

jr_044_76fc:
    ld hl, sp-$30                                 ; $76fc: $f8 $d0
    scf                                           ; $76fe: $37
    sbc [hl]                                      ; $76ff: $9e
    inc l                                         ; $7700: $2c

Call_044_7701:
    rst $30                                       ; $7701: $f7
    ld [hl-], a                                   ; $7702: $32
    db $fd                                        ; $7703: $fd
    ld a, [bc]                                    ; $7704: $0a
    cp [hl]                                       ; $7705: $be
    cp b                                          ; $7706: $b8
    ld [$dc76], sp                                ; $7707: $08 $76 $dc
    sbc b                                         ; $770a: $98
    sbc l                                         ; $770b: $9d
    sbc d                                         ; $770c: $9a
    sbc e                                         ; $770d: $9b
    jr z, jr_044_76fc                             ; $770e: $28 $ec

jr_044_7710:
    ld hl, sp-$30                                 ; $7710: $f8 $d0
    inc de                                        ; $7712: $13
    sbc [hl]                                      ; $7713: $9e
    inc l                                         ; $7714: $2c
    rst $30                                       ; $7715: $f7
    ld [hl-], a                                   ; $7716: $32
    db $fd                                        ; $7717: $fd
    ld a, [bc]                                    ; $7718: $0a
    cp [hl]                                       ; $7719: $be
    cp b                                          ; $771a: $b8
    ld [$dc76], sp                                ; $771b: $08 $76 $dc
    sbc b                                         ; $771e: $98
    sbc l                                         ; $771f: $9d
    sbc d                                         ; $7720: $9a
    sbc e                                         ; $7721: $9b
    jr z, jr_044_7710                             ; $7722: $28 $ec

    inc d                                         ; $7724: $14
    inc d                                         ; $7725: $14
    sbc [hl]                                      ; $7726: $9e
    inc l                                         ; $7727: $2c
    rst $30                                       ; $7728: $f7
    ld [hl-], a                                   ; $7729: $32
    db $fd                                        ; $772a: $fd
    ld a, [bc]                                    ; $772b: $0a
    cp [hl]                                       ; $772c: $be
    cp b                                          ; $772d: $b8
    ld [$dc76], sp                                ; $772e: $08 $76 $dc
    sbc b                                         ; $7731: $98
    sbc l                                         ; $7732: $9d
    sbc d                                         ; $7733: $9a
    sbc e                                         ; $7734: $9b
    jr z, @-$12                                   ; $7735: $28 $ec

    inc d                                         ; $7737: $14
    jr nc, jr_044_7799                            ; $7738: $30 $5f

    dec [hl]                                      ; $773a: $35
    ld e, c                                       ; $773b: $59
    xor $65                                       ; $773c: $ee $65
    ld a, [$be15]                                 ; $773e: $fa $15 $be
    cp b                                          ; $7741: $b8
    ld [$fef6], sp                                ; $7742: $08 $f6 $fe
    add sp, -$79                                  ; $7745: $e8 $87
    add hl, de                                    ; $7747: $19
    jp c, $6147                                   ; $7748: $da $47 $61

    rst $28                                       ; $774b: $ef
    adc a                                         ; $774c: $8f
    ld b, [hl]                                    ; $774d: $46
    rst $18                                       ; $774e: $df
    adc [hl]                                      ; $774f: $8e
    db $ed                                        ; $7750: $ed
    inc e                                         ; $7751: $1c
    ld a, [$be15]                                 ; $7752: $fa $15 $be
    cp b                                          ; $7755: $b8
    ld [$f6f6], sp                                ; $7756: $08 $f6 $f6
    ld a, b                                       ; $7759: $78
    cp d                                          ; $775a: $ba
    ccf                                           ; $775b: $3f
    ld [$cbe2], a                                 ; $775c: $ea $e2 $cb
    ld h, e                                       ; $775f: $63
    rst $30                                       ; $7760: $f7
    ld d, c                                       ; $7761: $51

jr_044_7762:
    ret c                                         ; $7762: $d8

    ei                                            ; $7763: $fb
    db $d3                                        ; $7764: $d3
    cp $6b                                        ; $7765: $fe $6b
    rst $30                                       ; $7767: $f7
    db $fd                                        ; $7768: $fd
    ld a, [bc]                                    ; $7769: $0a
    cp [hl]                                       ; $776a: $be
    cp b                                          ; $776b: $b8
    ld [$f6f6], sp                                ; $776c: $08 $f6 $f6
    jr c, jr_044_7762                             ; $776f: $38 $f1

    jp nz, $d82a                                  ; $7771: $c2 $2a $d8

    ld a, l                                       ; $7774: $7d
    cp a                                          ; $7775: $bf
    ld [bc], a                                    ; $7776: $02
    cp [hl]                                       ; $7777: $be
    cp b                                          ; $7778: $b8
    ld [$fef6], sp                                ; $7779: $08 $f6 $fe
    add sp, $4f                                   ; $777c: $e8 $4f
    cp a                                          ; $777e: $bf
    ld l, a                                       ; $777f: $6f
    jr @-$10                                      ; $7780: $18 $ee

    ei                                            ; $7782: $fb
    dec d                                         ; $7783: $15
    cp [hl]                                       ; $7784: $be
    cp b                                          ; $7785: $b8
    ld [$fef6], sp                                ; $7786: $08 $f6 $fe

jr_044_7789:
    add sp, $4f                                   ; $7789: $e8 $4f
    cp a                                          ; $778b: $bf
    ld l, a                                       ; $778c: $6f
    jr @-$10                                      ; $778d: $18 $ee

    ei                                            ; $778f: $fb
    dec d                                         ; $7790: $15
    cp [hl]                                       ; $7791: $be
    cp b                                          ; $7792: $b8
    ld [$f6f6], sp                                ; $7793: $08 $f6 $f6
    and b                                         ; $7796: $a0
    ld e, [hl]                                    ; $7797: $5e
    rst $28                                       ; $7798: $ef

jr_044_7799:
    cp c                                          ; $7799: $b9
    sbc e                                         ; $779a: $9b
    jr z, jr_044_7789                             ; $779b: $28 $ec

    db $fd                                        ; $779d: $fd
    ld e, c                                       ; $779e: $59
    ld l, h                                       ; $779f: $6c
    cp h                                          ; $77a0: $bc
    jr z, jr_044_7808                             ; $77a1: $28 $65

    inc c                                         ; $77a3: $0c
    and l                                         ; $77a4: $a5
    ld a, h                                       ; $77a5: $7c
    jp c, $6d77                                   ; $77a6: $da $77 $6d

    reti                                          ; $77a9: $d9


    swap c                                        ; $77aa: $cb $31
    rst $30                                       ; $77ac: $f7
    dec hl                                        ; $77ad: $2b
    cp [hl]                                       ; $77ae: $be
    cp b                                          ; $77af: $b8
    ld [$f6f6], sp                                ; $77b0: $08 $f6 $f6
    ld a, b                                       ; $77b3: $78
    cp d                                          ; $77b4: $ba
    ccf                                           ; $77b5: $3f
    ld [$dad2], a                                 ; $77b6: $ea $d2 $da
    db $eb                                        ; $77b9: $eb
    push af                                       ; $77ba: $f5
    cpl                                           ; $77bb: $2f
    or e                                          ; $77bc: $b3
    ld b, a                                       ; $77bd: $47
    cp e                                          ; $77be: $bb
    rst $28                                       ; $77bf: $ef
    ld d, a                                       ; $77c0: $57
    cp [hl]                                       ; $77c1: $be
    cp b                                          ; $77c2: $b8
    ld [$f6f6], sp                                ; $77c3: $08 $f6 $f6
    and b                                         ; $77c6: $a0
    ld e, [hl]                                    ; $77c7: $5e
    rst $28                                       ; $77c8: $ef
    cp c                                          ; $77c9: $b9
    sbc e                                         ; $77ca: $9b
    xor b                                         ; $77cb: $a8
    ld c, e                                       ; $77cc: $4b
    ei                                            ; $77cd: $fb
    xor a                                         ; $77ce: $af
    cp [hl]                                       ; $77cf: $be
    ld a, [$fa78]                                 ; $77d0: $fa $78 $fa
    ld l, a                                       ; $77d3: $6f
    add hl, hl                                    ; $77d4: $29
    db $fd                                        ; $77d5: $fd
    ld a, [bc]                                    ; $77d6: $0a
    cp [hl]                                       ; $77d7: $be
    cp b                                          ; $77d8: $b8
    ld [$f6f6], sp                                ; $77d9: $08 $f6 $f6
    ld a, b                                       ; $77dc: $78
    cp d                                          ; $77dd: $ba
    ccf                                           ; $77de: $3f

jr_044_77df:
    ld [$7752], a                                 ; $77df: $ea $52 $77
    adc b                                         ; $77e2: $88
    scf                                           ; $77e3: $37
    ld [hl], d                                    ; $77e4: $72
    db $fd                                        ; $77e5: $fd
    ld a, [bc]                                    ; $77e6: $0a
    cp [hl]                                       ; $77e7: $be
    cp b                                          ; $77e8: $b8
    ld [$f6f6], sp                                ; $77e9: $08 $f6 $f6
    and b                                         ; $77ec: $a0
    ld e, [hl]                                    ; $77ed: $5e
    rst $28                                       ; $77ee: $ef
    cp c                                          ; $77ef: $b9
    sbc e                                         ; $77f0: $9b
    jr z, jr_044_77df                             ; $77f1: $28 $ec

    inc l                                         ; $77f3: $2c
    ld [hl], $5e                                  ; $77f4: $36 $5e
    sub h                                         ; $77f6: $94

jr_044_77f7:
    ld [hl-], a                                   ; $77f7: $32
    sub [hl]                                      ; $77f8: $96
    adc [hl]                                      ; $77f9: $8e
    ld a, [hl]                                    ; $77fa: $7e
    pop hl                                        ; $77fb: $e1
    or c                                          ; $77fc: $b1
    ld a, [hl]                                    ; $77fd: $7e
    dec b                                         ; $77fe: $05
    cp [hl]                                       ; $77ff: $be
    cp b                                          ; $7800: $b8
    ld [$f6f6], sp                                ; $7801: $08 $f6 $f6
    and b                                         ; $7804: $a0
    ld e, [hl]                                    ; $7805: $5e
    rst $28                                       ; $7806: $ef
    cp c                                          ; $7807: $b9

jr_044_7808:
    sbc e                                         ; $7808: $9b
    jr z, jr_044_77f7                             ; $7809: $28 $ec

    inc l                                         ; $780b: $2c
    ld [hl], $5e                                  ; $780c: $36 $5e

jr_044_780e:
    sub h                                         ; $780e: $94
    ld [hl-], a                                   ; $780f: $32
    sub [hl]                                      ; $7810: $96
    cp d                                          ; $7811: $ba
    rst $00                                       ; $7812: $c7
    inc hl                                        ; $7813: $23
    db $fd                                        ; $7814: $fd
    ld a, [bc]                                    ; $7815: $0a
    cp [hl]                                       ; $7816: $be
    cp b                                          ; $7817: $b8
    ld [$f6f6], sp                                ; $7818: $08 $f6 $f6
    and b                                         ; $781b: $a0
    ld e, [hl]                                    ; $781c: $5e
    rst $28                                       ; $781d: $ef
    cp c                                          ; $781e: $b9
    sbc e                                         ; $781f: $9b
    jr z, jr_044_780e                             ; $7820: $28 $ec

    db $fd                                        ; $7822: $fd
    ld e, c                                       ; $7823: $59
    ld l, h                                       ; $7824: $6c
    cp h                                          ; $7825: $bc
    jr z, jr_044_788d                             ; $7826: $28 $65

    inc c                                         ; $7828: $0c
    and l                                         ; $7829: $a5
    ld a, h                                       ; $782a: $7c
    ld a, h                                       ; $782b: $7c
    rla                                           ; $782c: $17
    dec sp                                        ; $782d: $3b
    ld b, [hl]                                    ; $782e: $46
    cp a                                          ; $782f: $bf
    ld [bc], a                                    ; $7830: $02
    cp [hl]                                       ; $7831: $be
    cp b                                          ; $7832: $b8
    sbc h                                         ; $7833: $9c
    add h                                         ; $7834: $84
    ld c, d                                       ; $7835: $4a
    db $ec                                        ; $7836: $ec
    sub [hl]                                      ; $7837: $96
    add hl, hl                                    ; $7838: $29
    ld a, h                                       ; $7839: $7c
    jp c, $e9be                                   ; $783a: $da $be $e9

    ld d, a                                       ; $783d: $57
    cp [hl]                                       ; $783e: $be
    cp b                                          ; $783f: $b8
    ld [$f6f6], sp                                ; $7840: $08 $f6 $f6
    ld a, b                                       ; $7843: $78
    cp d                                          ; $7844: $ba
    ccf                                           ; $7845: $3f
    ld [$b1d2], a                                 ; $7846: $ea $d2 $b1
    ld a, l                                       ; $7849: $7d
    pop af                                        ; $784a: $f1
    sbc [hl]                                      ; $784b: $9e
    ld b, [hl]                                    ; $784c: $46
    db $ed                                        ; $784d: $ed
    adc c                                         ; $784e: $89
    scf                                           ; $784f: $37
    add d                                         ; $7850: $82
    ld a, [hl]                                    ; $7851: $7e
    dec b                                         ; $7852: $05
    cp [hl]                                       ; $7853: $be
    cp b                                          ; $7854: $b8
    ld [$fef6], sp                                ; $7855: $08 $f6 $fe
    sub h                                         ; $7858: $94
    rst $18                                       ; $7859: $df
    rra                                           ; $785a: $1f
    add l                                         ; $785b: $85
    dec bc                                        ; $785c: $0b
    db $db                                        ; $785d: $db
    ld a, b                                       ; $785e: $78
    ld [hl], c                                    ; $785f: $71
    db $fd                                        ; $7860: $fd
    ld a, [bc]                                    ; $7861: $0a
    cp [hl]                                       ; $7862: $be
    cp b                                          ; $7863: $b8
    sbc h                                         ; $7864: $9c
    add h                                         ; $7865: $84
    ld c, d                                       ; $7866: $4a
    jp z, $c330                                   ; $7867: $ca $30 $c3

    db $ec                                        ; $786a: $ec
    dec b                                         ; $786b: $05
    sub e                                         ; $786c: $93
    ld [hl-], a                                   ; $786d: $32
    call z, $fd93                                 ; $786e: $cc $93 $fd
    ld l, c                                       ; $7871: $69
    bit 1, [hl]                                   ; $7872: $cb $4e
    or h                                          ; $7874: $b4
    ld h, c                                       ; $7875: $61
    xor $57                                       ; $7876: $ee $57
    cp [hl]                                       ; $7878: $be
    cp b                                          ; $7879: $b8
    db $fc                                        ; $787a: $fc
    ld c, [hl]                                    ; $787b: $4e
    ld l, e                                       ; $787c: $6b

jr_044_787d:
    daa                                           ; $787d: $27
    ld l, a                                       ; $787e: $6f
    scf                                           ; $787f: $37
    ld l, c                                       ; $7880: $69
    ld hl, $354d                                  ; $7881: $21 $4d $35
    sub $f4                                       ; $7884: $d6 $f4
    ld a, [bc]                                    ; $7886: $0a
    cp [hl]                                       ; $7887: $be
    cp b                                          ; $7888: $b8
    inc d                                         ; $7889: $14
    cp d                                          ; $788a: $ba
    rst $30                                       ; $788b: $f7
    rst $00                                       ; $788c: $c7

jr_044_788d:
    adc [hl]                                      ; $788d: $8e
    db $fc                                        ; $788e: $fc
    jr z, jr_044_787d                             ; $788f: $28 $ec

    db $ec                                        ; $7891: $ec
    rst $10                                       ; $7892: $d7
    and [hl]                                      ; $7893: $a6
    ld e, a                                       ; $7894: $5f
    ld bc, $b8be                                  ; $7895: $01 $be $b8
    ld [$ca76], sp                                ; $7898: $08 $76 $ca
    rst $28                                       ; $789b: $ef
    ld de, $7944                                  ; $789c: $11 $44 $79
    sbc h                                         ; $789f: $9c
    ld l, b                                       ; $78a0: $68
    add [hl]                                      ; $78a1: $86
    ld d, d                                       ; $78a2: $52
    ld h, $ea                                     ; $78a3: $26 $ea
    ld d, d                                       ; $78a5: $52
    ld a, e                                       ; $78a6: $7b
    or h                                          ; $78a7: $b4
    xor $de                                       ; $78a8: $ee $de
    cp b                                          ; $78aa: $b8
    db $f4                                        ; $78ab: $f4
    dec hl                                        ; $78ac: $2b
    cp [hl]                                       ; $78ad: $be
    cp b                                          ; $78ae: $b8
    ld [$d476], sp                                ; $78af: $08 $76 $d4
    ld e, b                                       ; $78b2: $58
    ld [hl], l                                    ; $78b3: $75
    inc a                                         ; $78b4: $3c
    halt                                          ; $78b5: $76
    inc de                                        ; $78b6: $13
    add l                                         ; $78b7: $85
    adc e                                         ; $78b8: $8b
    cp l                                          ; $78b9: $bd
    or $44                                        ; $78ba: $f6 $44
    ld [c], a                                     ; $78bc: $e2
    ld b, l                                       ; $78bd: $45
    ld e, l                                       ; $78be: $5d
    jp c, $f3b2                                   ; $78bf: $da $b2 $f3

    adc [hl]                                      ; $78c2: $8e
    xor b                                         ; $78c3: $a8
    or c                                          ; $78c4: $b1
    jp hl                                         ; $78c5: $e9


    ld d, a                                       ; $78c6: $57
    cp [hl]                                       ; $78c7: $be
    cp b                                          ; $78c8: $b8
    ld [$fef6], sp                                ; $78c9: $08 $f6 $fe
    sub h                                         ; $78cc: $94
    rst $18                                       ; $78cd: $df
    rra                                           ; $78ce: $1f
    ld [hl], l                                    ; $78cf: $75
    or c                                          ; $78d0: $b1
    ld h, e                                       ; $78d1: $63
    dec de                                        ; $78d2: $1b
    ld [hl], d                                    ; $78d3: $72
    and d                                         ; $78d4: $a2
    ld l, $6d                                     ; $78d5: $2e $6d
    reti                                          ; $78d7: $d9


    ld a, c                                       ; $78d8: $79
    ld b, a                                       ; $78d9: $47
    call nc, $f4d8                                ; $78da: $d4 $d8 $f4
    dec hl                                        ; $78dd: $2b
    cp [hl]                                       ; $78de: $be
    cp b                                          ; $78df: $b8
    sbc h                                         ; $78e0: $9c
    add h                                         ; $78e1: $84
    ld c, d                                       ; $78e2: $4a
    db $ec                                        ; $78e3: $ec
    sub [hl]                                      ; $78e4: $96
    add hl, hl                                    ; $78e5: $29
    ld a, h                                       ; $78e6: $7c
    jp c, $89be                                   ; $78e7: $da $be $89

    jp nz, $48de                                  ; $78ea: $c2 $de $48

    ld [hl], c                                    ; $78ed: $71
    or e                                          ; $78ee: $b3
    and b                                         ; $78ef: $a0
    ld e, a                                       ; $78f0: $5f
    ld bc, $b8be                                  ; $78f1: $01 $be $b8
    ld [$f6f6], sp                                ; $78f4: $08 $f6 $f6
    and b                                         ; $78f7: $a0
    ld e, [hl]                                    ; $78f8: $5e
    rst $28                                       ; $78f9: $ef
    cp c                                          ; $78fa: $b9
    sbc e                                         ; $78fb: $9b
    xor b                                         ; $78fc: $a8
    ld c, e                                       ; $78fd: $4b
    ld e, e                                       ; $78fe: $5b
    ld c, a                                       ; $78ff: $4f
    inc h                                         ; $7900: $24

Call_044_7901:
    ld a, [hl]                                    ; $7901: $7e
    cp a                                          ; $7902: $bf
    ld [bc], a                                    ; $7903: $02
    cp [hl]                                       ; $7904: $be
    cp b                                          ; $7905: $b8
    ld [$fef6], sp                                ; $7906: $08 $f6 $fe
    ld hl, sp-$02                                 ; $7909: $f8 $fe
    cp $b4                                        ; $790b: $fe $b4
    ld h, l                                       ; $790d: $65
    cpl                                           ; $790e: $2f
    ld a, [bc]                                    ; $790f: $0a
    db $fd                                        ; $7910: $fd
    ld a, [bc]                                    ; $7911: $0a
    cp [hl]                                       ; $7912: $be
    cp b                                          ; $7913: $b8
    ld [$fef6], sp                                ; $7914: $08 $f6 $fe
    sub h                                         ; $7917: $94
    rst $18                                       ; $7918: $df
    sbc a                                         ; $7919: $9f
    push bc                                       ; $791a: $c5

Call_044_791b:
    add $8b                                       ; $791b: $c6 $8b
    ld d, d                                       ; $791d: $52
    add $ae                                       ; $791e: $c6 $ae
    ld e, a                                       ; $7920: $5f
    ld bc, $b8be                                  ; $7921: $01 $be $b8
    ld [$fef6], sp                                ; $7924: $08 $f6 $fe
    sub h                                         ; $7927: $94
    rst $18                                       ; $7928: $df
    rra                                           ; $7929: $1f
    add l                                         ; $792a: $85
    dec e                                         ; $792b: $1d
    dec sp                                        ; $792c: $3b
    or [hl]                                       ; $792d: $b6
    ld h, a                                       ; $792e: $67
    sbc [hl]                                      ; $792f: $9e
    ld a, [hl]                                    ; $7930: $7e
    dec b                                         ; $7931: $05
    cp [hl]                                       ; $7932: $be
    cp b                                          ; $7933: $b8
    ld [$652e], sp                                ; $7934: $08 $2e $65
    sbc b                                         ; $7937: $98
    ld h, c                                       ; $7938: $61
    or $82                                        ; $7939: $f6 $82
    db $eb                                        ; $793b: $eb
    ld d, a                                       ; $793c: $57
    cp [hl]                                       ; $793d: $be
    cp b                                          ; $793e: $b8
    ld [$fef6], sp                                ; $793f: $08 $f6 $fe
    sub h                                         ; $7942: $94
    rst $18                                       ; $7943: $df
    rra                                           ; $7944: $1f
    ld [hl], l                                    ; $7945: $75
    ld e, c                                       ; $7946: $59
    inc c                                         ; $7947: $0c
    set 3, e                                      ; $7948: $cb $db
    inc de                                        ; $794a: $13
    ld l, a                                       ; $794b: $6f
    inc b                                         ; $794c: $04
    ld d, c                                       ; $794d: $51
    ret c                                         ; $794e: $d8

    dec de                                        ; $794f: $1b
    ld e, c                                       ; $7950: $59
    add [hl]                                      ; $7951: $86
    ld a, b                                       ; $7952: $78
    inc hl                                        ; $7953: $23
    rst $10                                       ; $7954: $d7
    xor a                                         ; $7955: $af
    cp [hl]                                       ; $7956: $be
    cp b                                          ; $7957: $b8
    ld [$fef6], sp                                ; $7958: $08 $f6 $fe
    cp b                                          ; $795b: $b8
    xor a                                         ; $795c: $af
    ld h, b                                       ; $795d: $60
    rra                                           ; $795e: $1f
    db $fd                                        ; $795f: $fd
    ld a, $51                                     ; $7960: $3e $51
    rst $08                                       ; $7962: $cf
    rra                                           ; $7963: $1f
    ld [hl], l                                    ; $7964: $75
    xor c                                         ; $7965: $a9
    db $fd                                        ; $7966: $fd

Call_044_7967:
    ld h, [hl]                                    ; $7967: $66
    inc b                                         ; $7968: $04
    ld a, [$be15]                                 ; $7969: $fa $15 $be
    cp b                                          ; $796c: $b8
    ld [$dc76], sp                                ; $796d: $08 $76 $dc
    sbc b                                         ; $7970: $98
    sbc l                                         ; $7971: $9d
    sbc d                                         ; $7972: $9a
    sbc e                                         ; $7973: $9b
    xor b                                         ; $7974: $a8
    ld c, e                                       ; $7975: $4b
    xor e                                         ; $7976: $ab
    add l                                         ; $7977: $85
    ld l, l                                       ; $7978: $6d
    ld h, h                                       ; $7979: $64
    xor d                                         ; $797a: $aa
    ei                                            ; $797b: $fb
    ld a, [hl]                                    ; $797c: $7e
    dec b                                         ; $797d: $05
    cp [hl]                                       ; $797e: $be
    cp b                                          ; $797f: $b8
    ld a, b                                       ; $7980: $78
    jp hl                                         ; $7981: $e9


    ret c                                         ; $7982: $d8

    ld b, l                                       ; $7983: $45
    ld a, l                                       ; $7984: $7d
    ld l, d                                       ; $7985: $6a
    adc a                                         ; $7986: $8f
    sub $dd                                       ; $7987: $d6 $dd
    dec de                                        ; $7989: $1b
    sub a                                         ; $798a: $97
    ld a, [hl]                                    ; $798b: $7e
    dec b                                         ; $798c: $05
    cp [hl]                                       ; $798d: $be
    cp b                                          ; $798e: $b8
    ld a, b                                       ; $798f: $78
    jp hl                                         ; $7990: $e9


    ret c                                         ; $7991: $d8

    ld b, l                                       ; $7992: $45
    ld a, l                                       ; $7993: $7d
    ld l, d                                       ; $7994: $6a
    adc a                                         ; $7995: $8f
    sub $dd                                       ; $7996: $d6 $dd
    dec de                                        ; $7998: $1b
    sub a                                         ; $7999: $97
    ld a, [hl]                                    ; $799a: $7e
    dec b                                         ; $799b: $05
    cp [hl]                                       ; $799c: $be
    cp b                                          ; $799d: $b8
    ld a, b                                       ; $799e: $78
    jp hl                                         ; $799f: $e9


    ret c                                         ; $79a0: $d8

    ld b, l                                       ; $79a1: $45
    ld a, l                                       ; $79a2: $7d
    ld l, d                                       ; $79a3: $6a
    adc a                                         ; $79a4: $8f
    sub $dd                                       ; $79a5: $d6 $dd
    dec de                                        ; $79a7: $1b
    sub a                                         ; $79a8: $97
    ld a, [hl]                                    ; $79a9: $7e
    dec b                                         ; $79aa: $05
    cp [hl]                                       ; $79ab: $be
    cp b                                          ; $79ac: $b8
    ld a, b                                       ; $79ad: $78
    jp hl                                         ; $79ae: $e9


    ret c                                         ; $79af: $d8

    ld b, l                                       ; $79b0: $45
    db $fd                                        ; $79b1: $fd

jr_044_79b2:
    sbc $1f                                       ; $79b2: $de $1f
    rst $30                                       ; $79b4: $f7
    res 1, e                                      ; $79b5: $cb $8b
    ld a, h                                       ; $79b7: $7c
    call nc, $f6a5                                ; $79b8: $d4 $a5 $f6
    ld l, e                                       ; $79bb: $6b
    halt                                          ; $79bc: $76
    xor d                                         ; $79bd: $aa
    ld e, a                                       ; $79be: $5f
    ld bc, $b8be                                  ; $79bf: $01 $be $b8
    ld [$fef6], sp                                ; $79c2: $08 $f6 $fe
    sub h                                         ; $79c5: $94
    rst $18                                       ; $79c6: $df
    rra                                           ; $79c7: $1f
    add l                                         ; $79c8: $85
    dec e                                         ; $79c9: $1d
    rst $08                                       ; $79ca: $cf
    ld c, l                                       ; $79cb: $4d
    push af                                       ; $79cc: $f5
    ld d, c                                       ; $79cd: $51
    cp b                                          ; $79ce: $b8
    ld a, b                                       ; $79cf: $78
    adc $de                                       ; $79d0: $ce $de
    jr nz, jr_044_79b2                            ; $79d2: $20 $de

    ret z                                         ; $79d4: $c8

    dec d                                         ; $79d5: $15
    cp [hl]                                       ; $79d6: $be
    xor b                                         ; $79d7: $a8
    adc e                                         ; $79d8: $8b
    rst $30                                       ; $79d9: $f7
    inc [hl]                                      ; $79da: $34
    ld l, d                                       ; $79db: $6a
    daa                                           ; $79dc: $27
    add sp, $57                                   ; $79dd: $e8 $57
    cp [hl]                                       ; $79df: $be
    cp b                                          ; $79e0: $b8
    ld [$fef6], sp                                ; $79e1: $08 $f6 $fe
    ld hl, sp-$02                                 ; $79e4: $f8 $fe
    cp $b4                                        ; $79e6: $fe $b4
    ld h, l                                       ; $79e8: $65
    cpl                                           ; $79e9: $2f
    ld a, [bc]                                    ; $79ea: $0a
    db $fd                                        ; $79eb: $fd
    ld a, [bc]                                    ; $79ec: $0a
    cp [hl]                                       ; $79ed: $be
    cp b                                          ; $79ee: $b8
    ld [$f6f6], sp                                ; $79ef: $08 $f6 $f6
    ld a, b                                       ; $79f2: $78
    cp d                                          ; $79f3: $ba
    ccf                                           ; $79f4: $3f
    dec b                                         ; $79f5: $05
    sbc d                                         ; $79f6: $9a
    add c                                         ; $79f7: $81
    ccf                                           ; $79f8: $3f
    ld a, [bc]                                    ; $79f9: $0a
    sub a                                         ; $79fa: $97
    sub $5e                                       ; $79fb: $d6 $5e
    xor a                                         ; $79fd: $af
    ld a, a                                       ; $79fe: $7f
    cp c                                          ; $79ff: $b9
    ld a, [hl]                                    ; $7a00: $7e
    dec b                                         ; $7a01: $05
    cp [hl]                                       ; $7a02: $be
    cp b                                          ; $7a03: $b8
    ld [$ec76], sp                                ; $7a04: $08 $76 $ec
    sub [hl]                                      ; $7a07: $96
    add hl, hl                                    ; $7a08: $29
    ld a, h                                       ; $7a09: $7c
    jp c, $89be                                   ; $7a0a: $da $be $89

    jp nz, Jump_000_1fde                          ; $7a0d: $c2 $de $1f

    rst $30                                       ; $7a10: $f7
    ld [c], a                                     ; $7a11: $e2
    or b                                          ; $7a12: $b0
    scf                                           ; $7a13: $37
    db $ec                                        ; $7a14: $ec
    cp [hl]                                       ; $7a15: $be
    ld e, a                                       ; $7a16: $5f
    ld bc, $b8be                                  ; $7a17: $01 $be $b8
    ld [$f476], sp                                ; $7a1a: $08 $76 $f4
    xor a                                         ; $7a1d: $af
    ret                                           ; $7a1e: $c9


    ld b, h                                       ; $7a1f: $44
    pop hl                                        ; $7a20: $e1
    ld h, d                                       ; $7a21: $62
    xor a                                         ; $7a22: $af
    dec a                                         ; $7a23: $3d
    sub c                                         ; $7a24: $91
    ld a, b                                       ; $7a25: $78
    db $fd                                        ; $7a26: $fd
    ld a, [bc]                                    ; $7a27: $0a
    cp [hl]                                       ; $7a28: $be
    cp b                                          ; $7a29: $b8
    ld [$f6f6], sp                                ; $7a2a: $08 $f6 $f6
    ld a, b                                       ; $7a2d: $78
    cp d                                          ; $7a2e: $ba
    ccf                                           ; $7a2f: $3f
    ld [$3ed2], a                                 ; $7a30: $ea $d2 $3e
    dec l                                         ; $7a33: $2d
    rst $20                                       ; $7a34: $e7
    ld a, $ad                                     ; $7a35: $3e $ad
    cp l                                          ; $7a37: $bd
    ld e, [hl]                                    ; $7a38: $5e
    rst $38                                       ; $7a39: $ff
    ld a, [c]                                     ; $7a3a: $f2
    db $fd                                        ; $7a3b: $fd
    ld a, [bc]                                    ; $7a3c: $0a
    cp [hl]                                       ; $7a3d: $be
    cp b                                          ; $7a3e: $b8
    ld [$f6f6], sp                                ; $7a3f: $08 $f6 $f6
    ld a, b                                       ; $7a42: $78
    cp d                                          ; $7a43: $ba
    ccf                                           ; $7a44: $3f
    ld [$aad2], a                                 ; $7a45: $ea $d2 $aa
    ld sp, $dad2                                  ; $7a48: $31 $d2 $da
    db $eb                                        ; $7a4b: $eb
    push af                                       ; $7a4c: $f5
    cpl                                           ; $7a4d: $2f
    rst $18                                       ; $7a4e: $df
    xor a                                         ; $7a4f: $af
    cp [hl]                                       ; $7a50: $be
    cp b                                          ; $7a51: $b8
    ld [$fef6], sp                                ; $7a52: $08 $f6 $fe
    cp b                                          ; $7a55: $b8
    xor a                                         ; $7a56: $af
    ld h, b                                       ; $7a57: $60
    rra                                           ; $7a58: $1f
    db $fd                                        ; $7a59: $fd
    ld a, $51                                     ; $7a5a: $3e $51
    rst $08                                       ; $7a5c: $cf
    rra                                           ; $7a5d: $1f
    add l                                         ; $7a5e: $85
    cp l                                          ; $7a5f: $bd
    ccf                                           ; $7a60: $3f
    sbc $d3                                       ; $7a61: $de $d3
    xor b                                         ; $7a63: $a8
    sbc l                                         ; $7a64: $9d
    ld a, h                                       ; $7a65: $7c
    cp a                                          ; $7a66: $bf
    ld [bc], a                                    ; $7a67: $02
    cp [hl]                                       ; $7a68: $be
    cp b                                          ; $7a69: $b8
    sbc h                                         ; $7a6a: $9c
    add h                                         ; $7a6b: $84
    ld c, d                                       ; $7a6c: $4a
    call c, $9d98                                 ; $7a6d: $dc $98 $9d

jr_044_7a70:
    sbc d                                         ; $7a70: $9a
    sbc e                                         ; $7a71: $9b
    inc d                                         ; $7a72: $14
    ld l, b                                       ; $7a73: $68
    ld b, $9e                                     ; $7a74: $06 $9e
    ld a, [hl]                                    ; $7a76: $7e
    dec b                                         ; $7a77: $05
    cp [hl]                                       ; $7a78: $be
    cp b                                          ; $7a79: $b8
    ld [$f6f6], sp                                ; $7a7a: $08 $f6 $f6
    and b                                         ; $7a7d: $a0
    ld e, [hl]                                    ; $7a7e: $5e
    rst $28                                       ; $7a7f: $ef
    cp c                                          ; $7a80: $b9
    sbc e                                         ; $7a81: $9b
    jr z, jr_044_7a70                             ; $7a82: $28 $ec

    inc l                                         ; $7a84: $2c
    ld [hl], $5e                                  ; $7a85: $36 $5e
    sub h                                         ; $7a87: $94
    ld [hl-], a                                   ; $7a88: $32
    sub [hl]                                      ; $7a89: $96
    adc [hl]                                      ; $7a8a: $8e
    ld a, [de]                                    ; $7a8b: $1a
    db $f4                                        ; $7a8c: $f4
    or $2b                                        ; $7a8d: $f6 $2b
    cp [hl]                                       ; $7a8f: $be
    cp b                                          ; $7a90: $b8
    sbc h                                         ; $7a91: $9c
    add h                                         ; $7a92: $84
    adc d                                         ; $7a93: $8a
    rst $00                                       ; $7a94: $c7
    db $d3                                        ; $7a95: $d3
    db $fd                                        ; $7a96: $fd
    ld hl, $f0e9                                  ; $7a97: $21 $e9 $f0
    rst $30                                       ; $7a9a: $f7
    dec hl                                        ; $7a9b: $2b
    cp [hl]                                       ; $7a9c: $be
    cp b                                          ; $7a9d: $b8
    ld [$fef6], sp                                ; $7a9e: $08 $f6 $fe
    inc d                                         ; $7aa1: $14
    ld a, [hl]                                    ; $7aa2: $7e
    ld hl, $147e                                  ; $7aa3: $21 $7e $14
    or $46                                        ; $7aa6: $f6 $46
    sbc h                                         ; $7aa8: $9c
    rst $38                                       ; $7aa9: $ff
    sbc [hl]                                      ; $7aaa: $9e
    cp h                                          ; $7aab: $bc
    db $fc                                        ; $7aac: $fc
    ld a, [hl]                                    ; $7aad: $7e
    ld b, [hl]                                    ; $7aae: $46
    cp a                                          ; $7aaf: $bf
    ld [bc], a                                    ; $7ab0: $02
    cp [hl]                                       ; $7ab1: $be
    cp b                                          ; $7ab2: $b8
    ld [$fef6], sp                                ; $7ab3: $08 $f6 $fe
    ld hl, sp-$02                                 ; $7ab6: $f8 $fe
    cp $b4                                        ; $7ab8: $fe $b4
    ld h, l                                       ; $7aba: $65
    cpl                                           ; $7abb: $2f
    ld a, [bc]                                    ; $7abc: $0a
    db $fd                                        ; $7abd: $fd
    ld a, [bc]                                    ; $7abe: $0a
    dec e                                         ; $7abf: $1d
    jp $ecc9                                      ; $7ac0: $c3 $c9 $ec


    pop de                                        ; $7ac3: $d1
    xor $e3                                       ; $7ac4: $ee $e3
    add hl, bc                                    ; $7ac6: $09
    db $e3                                        ; $7ac7: $e3
    ccf                                           ; $7ac8: $3f
    add hl, bc                                    ; $7ac9: $09
    and c                                         ; $7aca: $a1
    inc [hl]                                      ; $7acb: $34
    reti                                          ; $7acc: $d9


    ld a, b                                       ; $7acd: $78

jr_044_7ace:
    db $e3                                        ; $7ace: $e3
    ld c, l                                       ; $7acf: $4d
    and h                                         ; $7ad0: $a4
    push de                                       ; $7ad1: $d5
    ld [$4889], a                                 ; $7ad2: $ea $89 $48
    dec de                                        ; $7ad5: $1b
    jp nz, $fe30                                  ; $7ad6: $c2 $30 $fe

    sub e                                         ; $7ad9: $93
    ld a, [bc]                                    ; $7ada: $0a
    jp nz, $b4ba                                  ; $7adb: $c2 $ba $b4

    dec l                                         ; $7ade: $2d
    xor [hl]                                      ; $7adf: $ae
    ld c, a                                       ; $7ae0: $4f
    ld d, a                                       ; $7ae1: $57
    ld c, c                                       ; $7ae2: $49
    ld d, a                                       ; $7ae3: $57
    xor l                                         ; $7ae4: $ad
    ld d, [hl]                                    ; $7ae5: $56
    ld c, a                                       ; $7ae6: $4f
    ld b, h                                       ; $7ae7: $44
    jp c, $8610                                   ; $7ae8: $da $10 $86

    pop af                                        ; $7aeb: $f1
    sbc a                                         ; $7aec: $9f
    ld d, h                                       ; $7aed: $54
    db $10                                        ; $7aee: $10
    ld c, $72                                     ; $7aef: $0e $72
    dec sp                                        ; $7af1: $3b
    ld a, e                                       ; $7af2: $7b
    or h                                          ; $7af3: $b4
    ld c, c                                       ; $7af4: $49
    xor e                                         ; $7af5: $ab
    push de                                       ; $7af6: $d5
    inc de                                        ; $7af7: $13
    sub c                                         ; $7af8: $91
    ld [hl], $84                                  ; $7af9: $36 $84
    ld h, c                                       ; $7afb: $61
    db $fc                                        ; $7afc: $fc
    daa                                           ; $7afd: $27
    dec d                                         ; $7afe: $15
    add h                                         ; $7aff: $84
    db $d3                                        ; $7b00: $d3
    ld e, b                                       ; $7b01: $58
    jp c, Jump_044_5bb2                           ; $7b02: $da $b2 $5b

    ld a, b                                       ; $7b05: $78
    db $e4                                        ; $7b06: $e4
    jr jr_044_7b32                                ; $7b07: $18 $29

    inc hl                                        ; $7b09: $23
    sub e                                         ; $7b0a: $93
    ld [$f9cd], a                                 ; $7b0b: $ea $cd $f9
    cpl                                           ; $7b0e: $2f
    ld b, $ed                                     ; $7b0f: $06 $ed
    ld a, [bc]                                    ; $7b11: $0a
    db $db                                        ; $7b12: $db
    di                                            ; $7b13: $f3
    ld b, l                                       ; $7b14: $45
    ld e, l                                       ; $7b15: $5d
    ld e, d                                       ; $7b16: $5a
    xor l                                         ; $7b17: $ad
    sbc [hl]                                      ; $7b18: $9e
    adc b                                         ; $7b19: $88
    or h                                          ; $7b1a: $b4
    ld hl, $e30c                                  ; $7b1b: $21 $0c $e3
    ccf                                           ; $7b1e: $3f
    xor c                                         ; $7b1f: $a9
    jr nz, jr_044_7ace                            ; $7b20: $20 $ac

    ld c, e                                       ; $7b22: $4b
    db $db                                        ; $7b23: $db
    ld [c], a                                     ; $7b24: $e2
    ld a, [$b408]                                 ; $7b25: $fa $08 $b4
    ld a, l                                       ; $7b28: $7d
    jp hl                                         ; $7b29: $e9


    and h                                         ; $7b2a: $a4
    rst $30                                       ; $7b2b: $f7
    db $ed                                        ; $7b2c: $ed
    ld e, e                                       ; $7b2d: $5b
    db $ed                                        ; $7b2e: $ed
    add e                                         ; $7b2f: $83
    add $26                                       ; $7b30: $c6 $26

jr_044_7b32:
    daa                                           ; $7b32: $27
    ld sp, hl                                     ; $7b33: $f9
    call Call_000_2976                            ; $7b34: $cd $76 $29
    db $fc                                        ; $7b37: $fc
    ld a, h                                       ; $7b38: $7c
    ld a, l                                       ; $7b39: $7d
    cp d                                          ; $7b3a: $ba
    ld c, d                                       ; $7b3b: $4a
    cp d                                          ; $7b3c: $ba
    ld l, d                                       ; $7b3d: $6a
    sbc a                                         ; $7b3e: $9f
    ld d, $02                                     ; $7b3f: $16 $02
    sbc l                                         ; $7b41: $9d
    and a                                         ; $7b42: $a7
    ld d, l                                       ; $7b43: $55
    xor d                                         ; $7b44: $aa

Call_044_7b45:
    ld l, [hl]                                    ; $7b45: $6e
    jp nc, $ccf1                                  ; $7b46: $d2 $f1 $cc

    ld l, $71                                     ; $7b49: $2e $71
    inc hl                                        ; $7b4b: $23
    ld c, $a5                                     ; $7b4c: $0e $a5
    ld c, h                                       ; $7b4e: $4c
    ld c, [hl]                                    ; $7b4f: $4e
    or d                                          ; $7b50: $b2
    rst $08                                       ; $7b51: $cf
    ld b, c                                       ; $7b52: $41
    adc b                                         ; $7b53: $88
    rra                                           ; $7b54: $1f
    push af                                       ; $7b55: $f5
    ld l, c                                       ; $7b56: $69
    di                                            ; $7b57: $f3
    dec e                                         ; $7b58: $1d
    adc a                                         ; $7b59: $8f
    and l                                         ; $7b5a: $a5
    sbc c                                         ; $7b5b: $99
    ld [hl], h                                    ; $7b5c: $74
    sub l                                         ; $7b5d: $95

Call_044_7b5e:
    ld [hl], h                                    ; $7b5e: $74
    push de                                       ; $7b5f: $d5
    ld e, [hl]                                    ; $7b60: $5e
    db $db                                        ; $7b61: $db
    sbc [hl]                                      ; $7b62: $9e
    ld l, l                                       ; $7b63: $6d
    call nc, Call_044_6df1                        ; $7b64: $d4 $f1 $6d
    and e                                         ; $7b67: $a3
    push af                                       ; $7b68: $f5
    or h                                          ; $7b69: $b4
    sub $45                                       ; $7b6a: $d6 $45
    ld [$5db4], a                                 ; $7b6c: $ea $b4 $5d
    and a                                         ; $7b6f: $a7
    db $e3                                        ; $7b70: $e3
    ld [hl], $ea                                  ; $7b71: $36 $ea
    or h                                          ; $7b73: $b4
    sbc $c1                                       ; $7b74: $de $c1
    ld a, [bc]                                    ; $7b76: $0a
    add h                                         ; $7b77: $84
    jp nc, $e364                                  ; $7b78: $d2 $64 $e3

    adc l                                         ; $7b7b: $8d
    scf                                           ; $7b7c: $37
    sub c                                         ; $7b7d: $91
    ld [hl], $36                                  ; $7b7e: $36 $36
    inc e                                         ; $7b80: $1c
    db $db                                        ; $7b81: $db
    ret z                                         ; $7b82: $c8

    cp c                                          ; $7b83: $b9
    or h                                          ; $7b84: $b4
    ld l, d                                       ; $7b85: $6a
    ld e, h                                       ; $7b86: $5c
    jp nc, $b8b6                                  ; $7b87: $d2 $b6 $b8

    ld a, $5d                                     ; $7b8a: $3e $5d
    ld [hl], l                                    ; $7b8c: $75
    ld c, h                                       ; $7b8d: $4c
    sbc c                                         ; $7b8e: $99
    cpl                                           ; $7b8f: $2f
    rla                                           ; $7b90: $17
    ld [hl], l                                    ; $7b91: $75
    halt                                          ; $7b92: $76
    call z, $bb17                                 ; $7b93: $cc $17 $bb
    ld [bc], a                                    ; $7b96: $02
    inc hl                                        ; $7b97: $23
    sbc a                                         ; $7b98: $9f
    ld l, a                                       ; $7b99: $6f
    dec b                                         ; $7b9a: $05
    ld [hl], l                                    ; $7b9b: $75
    dec c                                         ; $7b9c: $0d
    push de                                       ; $7b9d: $d5
    push bc                                       ; $7b9e: $c5
    sub a                                         ; $7b9f: $97
    rst $18                                       ; $7ba0: $df
    ld a, b                                       ; $7ba1: $78
    dec b                                         ; $7ba2: $05
    db $ed                                        ; $7ba3: $ed
    dec e                                         ; $7ba4: $1d
    adc c                                         ; $7ba5: $89
    cp l                                          ; $7ba6: $bd
    and a                                         ; $7ba7: $a7
    push bc                                       ; $7ba8: $c5
    or h                                          ; $7ba9: $b4
    jp nc, Jump_044_5644                          ; $7baa: $d2 $44 $56

    dec e                                         ; $7bad: $1d
    ret c                                         ; $7bae: $d8

    or a                                          ; $7baf: $b7
    sbc b                                         ; $7bb0: $98
    ld d, [hl]                                    ; $7bb1: $56
    sbc d                                         ; $7bb2: $9a
    ld l, b                                       ; $7bb3: $68
    or c                                          ; $7bb4: $b1
    sub l                                         ; $7bb5: $95
    ld h, $5b                                     ; $7bb6: $26 $5b
    ld l, h                                       ; $7bb8: $6c
    and l                                         ; $7bb9: $a5
    xor c                                         ; $7bba: $a9
    xor h                                         ; $7bbb: $ac
    sbc l                                         ; $7bbc: $9d
    jp nc, Jump_044_49e1                          ; $7bbd: $d2 $e1 $49

    ld d, a                                       ; $7bc0: $57
    ld c, c                                       ; $7bc1: $49
    ld d, a                                       ; $7bc2: $57
    ld c, c                                       ; $7bc3: $49
    ld d, a                                       ; $7bc4: $57

Call_044_7bc5:
    ret                                           ; $7bc5: $c9


    ld a, [bc]                                    ; $7bc6: $0a

Jump_044_7bc7:
    cp [hl]                                       ; $7bc7: $be
    rl e                                          ; $7bc8: $cb $13
    ld l, a                                       ; $7bca: $6f
    ld [hl], d                                    ; $7bcb: $72
    ld [de], a                                    ; $7bcc: $12
    ld e, d                                       ; $7bcd: $5a
    and [hl]                                      ; $7bce: $a6
    ld c, a                                       ; $7bcf: $4f
    ld d, a                                       ; $7bd0: $57
    cp [hl]                                       ; $7bd1: $be
    ld b, e                                       ; $7bd2: $43
    jp c, Jump_044_6717                           ; $7bd3: $da $17 $67

    ld b, a                                       ; $7bd6: $47
    jp nz, $6b50                                  ; $7bd7: $c2 $50 $6b

    dec b                                         ; $7bda: $05
    sbc l                                         ; $7bdb: $9d
    or a                                          ; $7bdc: $b7
    ret c                                         ; $7bdd: $d8

    ld c, d                                       ; $7bde: $4a
    inc de                                        ; $7bdf: $13
    jp hl                                         ; $7be0: $e9


    and d                                         ; $7be1: $a2
    push bc                                       ; $7be2: $c5
    ld d, [hl]                                    ; $7be3: $56
    sbc d                                         ; $7be4: $9a
    call z, $1d0a                                 ; $7be5: $cc $0a $1d
    ld d, d                                       ; $7be8: $52
    inc d                                         ; $7be9: $14
    cp $b8                                        ; $7bea: $fe $b8
    cpl                                           ; $7bec: $2f
    push hl                                       ; $7bed: $e5
    ld d, e                                       ; $7bee: $53
    inc hl                                        ; $7bef: $23
    adc $7f                                       ; $7bf0: $ce $7f
    or h                                          ; $7bf2: $b4
    ld a, h                                       ; $7bf3: $7c
    ld a, $ce                                     ; $7bf4: $3e $ce
    ld a, a                                       ; $7bf6: $7f
    ld c, a                                       ; $7bf7: $4f
    and d                                         ; $7bf8: $a2
    and $0a                                       ; $7bf9: $e6 $0a
    sbc l                                         ; $7bfb: $9d
    sub h                                         ; $7bfc: $94
    ld l, a                                       ; $7bfd: $6f
    ld [hl], c                                    ; $7bfe: $71
    dec b                                         ; $7bff: $05
    ld c, l                                       ; $7c00: $4d
    inc [hl]                                      ; $7c01: $34
    sbc h                                         ; $7c02: $9c
    ld d, [hl]                                    ; $7c03: $56
    sbc d                                         ; $7c04: $9a
    ret z                                         ; $7c05: $c8

    ld a, [bc]                                    ; $7c06: $0a
    ld c, l                                       ; $7c07: $4d
    ld [hl], $9c                                  ; $7c08: $36 $9c
    ld d, [hl]                                    ; $7c0a: $56
    sbc d                                         ; $7c0b: $9a
    ret z                                         ; $7c0c: $c8

    ld a, [bc]                                    ; $7c0d: $0a
    ld c, l                                       ; $7c0e: $4d
    dec [hl]                                      ; $7c0f: $35
    sbc h                                         ; $7c10: $9c
    ld d, [hl]                                    ; $7c11: $56
    sbc d                                         ; $7c12: $9a
    ret z                                         ; $7c13: $c8

    ld a, [bc]                                    ; $7c14: $0a
    ld c, l                                       ; $7c15: $4d
    scf                                           ; $7c16: $37
    sbc h                                         ; $7c17: $9c
    ld d, [hl]                                    ; $7c18: $56
    sbc d                                         ; $7c19: $9a
    ret z                                         ; $7c1a: $c8

    ld a, [bc]                                    ; $7c1b: $0a
    ld [hl], l                                    ; $7c1c: $75
    ld h, c                                       ; $7c1d: $61
    ld e, c                                       ; $7c1e: $59
    inc c                                         ; $7c1f: $0c
    set 3, e                                      ; $7c20: $cb $db
    dec de                                        ; $7c22: $1b
    ld e, d                                       ; $7c23: $5a
    ld e, h                                       ; $7c24: $5c
    ld bc, $4675                                  ; $7c25: $01 $75 $46
    ld [c], a                                     ; $7c28: $e2
    rst $38                                       ; $7c29: $ff
    res 1, e                                      ; $7c2a: $cb $8b

jr_044_7c2c:
    dec de                                        ; $7c2c: $1b
    ei                                            ; $7c2d: $fb
    ld e, h                                       ; $7c2e: $5c
    or l                                          ; $7c2f: $b5
    cp h                                          ; $7c30: $bc
    dec a                                         ; $7c31: $3d
    ld c, a                                       ; $7c32: $4f
    ld a, h                                       ; $7c33: $7c
    jr z, jr_044_7c40                             ; $7c34: $28 $0a

    ld a, a                                       ; $7c36: $7f
    db $ec                                        ; $7c37: $ec
    inc e                                         ; $7c38: $1c
    sbc b                                         ; $7c39: $98
    cp a                                          ; $7c3a: $bf
    and $0a                                       ; $7c3b: $e6 $0a
    sbc [hl]                                      ; $7c3d: $9e
    cp a                                          ; $7c3e: $bf
    dec d                                         ; $7c3f: $15

jr_044_7c40:
    ld l, h                                       ; $7c40: $6c
    inc b                                         ; $7c41: $04
    ld e, c                                       ; $7c42: $59
    ld c, $9a                                     ; $7c43: $0e $9a
    rra                                           ; $7c45: $1f
    db $e4                                        ; $7c46: $e4
    ld l, h                                       ; $7c47: $6c
    xor h                                         ; $7c48: $ac
    sbc [hl]                                      ; $7c49: $9e
    cp a                                          ; $7c4a: $bf
    dec d                                         ; $7c4b: $15
    ld l, h                                       ; $7c4c: $6c
    inc b                                         ; $7c4d: $04
    add hl, sp                                    ; $7c4e: $39
    adc c                                         ; $7c4f: $89
    ld a, l                                       ; $7c50: $7d
    add l                                         ; $7c51: $85
    dec d                                         ; $7c52: $15
    sbc [hl]                                      ; $7c53: $9e
    cp a                                          ; $7c54: $bf
    dec d                                         ; $7c55: $15
    ld l, h                                       ; $7c56: $6c
    inc b                                         ; $7c57: $04
    add hl, sp                                    ; $7c58: $39
    ret                                           ; $7c59: $c9


    jr nc, @-$6f                                  ; $7c5a: $30 $8f

    ld h, b                                       ; $7c5c: $60
    dec b                                         ; $7c5d: $05
    sbc [hl]                                      ; $7c5e: $9e
    cp a                                          ; $7c5f: $bf
    dec d                                         ; $7c60: $15
    ld l, h                                       ; $7c61: $6c
    inc b                                         ; $7c62: $04
    add hl, sp                                    ; $7c63: $39
    ret                                           ; $7c64: $c9


    sbc e                                         ; $7c65: $9b
    ld b, $e1                                     ; $7c66: $06 $e1
    ld e, c                                       ; $7c68: $59
    ld bc, $bf9e                                  ; $7c69: $01 $9e $bf
    dec d                                         ; $7c6c: $15
    ld l, h                                       ; $7c6d: $6c

jr_044_7c6e:
    inc b                                         ; $7c6e: $04
    ld a, c                                       ; $7c6f: $79
    jp z, Jump_044_5763                           ; $7c70: $ca $63 $57

    and c                                         ; $7c73: $a1

Call_044_7c74:
    ldh a, [$0b]                                  ; $7c74: $f0 $0b
    ld h, e                                       ; $7c76: $63
    dec b                                         ; $7c77: $05
    dec e                                         ; $7c78: $1d
    cp l                                          ; $7c79: $bd
    ld a, [hl-]                                   ; $7c7a: $3a
    add a                                         ; $7c7b: $87
    xor b                                         ; $7c7c: $a8
    rl a                                          ; $7c7d: $cb $17
    rst $28                                       ; $7c7f: $ef
    jr z, jr_044_7c6e                             ; $7c80: $28 $ec

    ld e, c                                       ; $7c82: $59
    ld bc, $7e75                                  ; $7c83: $01 $75 $7e
    pop bc                                        ; $7c86: $c1
    sbc $b4                                       ; $7c87: $de $b4
    xor h                                         ; $7c89: $ac
    dec e                                         ; $7c8a: $1d
    jr jr_044_7c2c                                ; $7c8b: $18 $9f

    di                                            ; $7c8d: $f3
    inc hl                                        ; $7c8e: $23
    dec b                                         ; $7c8f: $05
    adc $f9                                       ; $7c90: $ce $f9
    or c                                          ; $7c92: $b1
    ld [bc], a                                    ; $7c93: $02
    xor l                                         ; $7c94: $ad
    rra                                           ; $7c95: $1f
    di                                            ; $7c96: $f3
    ld d, a                                       ; $7c97: $57
    or e                                          ; $7c98: $b3
    ld [bc], a                                    ; $7c99: $02
    xor l                                         ; $7c9a: $ad
    ld a, [de]                                    ; $7c9b: $1a
    and e                                         ; $7c9c: $a3
    cp d                                          ; $7c9d: $ba
    ld [hl], d                                    ; $7c9e: $72
    cp a                                          ; $7c9f: $bf
    ld [bc], a                                    ; $7ca0: $02
    dec e                                         ; $7ca1: $1d
    cp l                                          ; $7ca2: $bd
    ld a, [hl-]                                   ; $7ca3: $3a
    add a                                         ; $7ca4: $87
    xor b                                         ; $7ca5: $a8
    ld c, e                                       ; $7ca6: $4b
    push af                                       ; $7ca7: $f5
    and d                                         ; $7ca8: $a2
    db $ec                                        ; $7ca9: $ec
    or l                                          ; $7caa: $b5
    reti                                          ; $7cab: $d9


    cp a                                          ; $7cac: $bf
    ld [bc], a                                    ; $7cad: $02
    ld [hl], l                                    ; $7cae: $75
    or c                                          ; $7caf: $b1
    scf                                           ; $7cb0: $37
    and d                                         ; $7cb1: $a2
    ld l, $6d                                     ; $7cb2: $2e $6d
    sbc l                                         ; $7cb4: $9d
    db $dd                                        ; $7cb5: $dd
    ld a, [hl]                                    ; $7cb6: $7e
    rst $20                                       ; $7cb7: $e7
    ld h, [hl]                                    ; $7cb8: $66
    dec b                                         ; $7cb9: $05
    xor l                                         ; $7cba: $ad
    ld a, [hl-]                                   ; $7cbb: $3a

jr_044_7cbc:
    cp d                                          ; $7cbc: $ba
    ld [hl], c                                    ; $7cbd: $71
    ld d, c                                       ; $7cbe: $51
    sub a                                         ; $7cbf: $97
    ld h, l                                       ; $7cc0: $65
    call z, Call_044_594d                         ; $7cc1: $cc $4d $59
    ld c, [hl]                                    ; $7cc4: $4e
    ld h, [hl]                                    ; $7cc5: $66
    dec b                                         ; $7cc6: $05
    ld [hl], l                                    ; $7cc7: $75
    ld h, a                                       ; $7cc8: $67
    sub e                                         ; $7cc9: $93
    jr nc, jr_044_7d10                            ; $7cca: $30 $44

    ld e, l                                       ; $7ccc: $5d
    sub [hl]                                      ; $7ccd: $96
    dec de                                        ; $7cce: $1b
    jp nc, $057e                                  ; $7ccf: $d2 $7e $05

    dec e                                         ; $7cd2: $1d
    jr c, jr_044_7cbc                             ; $7cd3: $38 $e7

    cp a                                          ; $7cd5: $bf
    xor b                                         ; $7cd6: $a8
    adc e                                         ; $7cd7: $8b
    sbc e                                         ; $7cd8: $9b
    adc l                                         ; $7cd9: $8d
    ld h, c                                       ; $7cda: $61
    add [hl]                                      ; $7cdb: $86
    call $9e0a                                    ; $7cdc: $cd $0a $9e
    ld h, e                                       ; $7cdf: $63
    ld [hl-], a                                   ; $7ce0: $32
    ld d, c                                       ; $7ce1: $51
    rla                                           ; $7ce2: $17
    db $fd                                        ; $7ce3: $fd
    cp c                                          ; $7ce4: $b9
    ld sp, $1599                                  ; $7ce5: $31 $99 $15
    ld e, l                                       ; $7ce8: $5d
    cp [hl]                                       ; $7ce9: $be
    ret z                                         ; $7cea: $c8

    ld b, a                                       ; $7ceb: $47
    ld e, l                                       ; $7cec: $5d
    ld a, [bc]                                    ; $7ced: $0a
    ld l, h                                       ; $7cee: $6c
    add c                                         ; $7cef: $81
    jr nc, jr_044_7d48                            ; $7cf0: $30 $56

    ld [hl], l                                    ; $7cf2: $75
    rrca                                          ; $7cf3: $0f
    ld l, h                                       ; $7cf4: $6c
    rra                                           ; $7cf5: $1f
    dec a                                         ; $7cf6: $3d
    adc b                                         ; $7cf7: $88
    di                                            ; $7cf8: $f3
    or [hl]                                       ; $7cf9: $b6
    ld [bc], a                                    ; $7cfa: $02
    sbc [hl]                                      ; $7cfb: $9e
    ld h, e                                       ; $7cfc: $63
    ld [hl-], a                                   ; $7cfd: $32
    ld d, c                                       ; $7cfe: $51
    rla                                           ; $7cff: $17
    ld a, [hl+]                                   ; $7d00: $2a
    rst $20                                       ; $7d01: $e7
    add $64                                       ; $7d02: $c6 $64
    ld [hl], d                                    ; $7d04: $72
    sub d                                         ; $7d05: $92
    scf                                           ; $7d06: $37
    dec c                                         ; $7d07: $0d
    jp nz, $02b3                                  ; $7d08: $c2 $b3 $02

    db $ed                                        ; $7d0b: $ed
    ld de, $e370                                  ; $7d0c: $11 $70 $e3
    ld a, b                                       ; $7d0f: $78

jr_044_7d10:
    add h                                         ; $7d10: $84
    ld d, [hl]                                    ; $7d11: $56
    dec hl                                        ; $7d12: $2b
    xor l                                         ; $7d13: $ad
    cp d                                          ; $7d14: $ba
    sub c                                         ; $7d15: $91
    db $e3                                        ; $7d16: $e3
    ld e, c                                       ; $7d17: $59
    ld bc, $0aad                                  ; $7d18: $01 $ad $0a
    sbc a                                         ; $7d1b: $9f
    ld a, [de]                                    ; $7d1c: $1a
    sbc [hl]                                      ; $7d1d: $9e
    dec d                                         ; $7d1e: $15
    ld [hl], l                                    ; $7d1f: $75
    add a                                         ; $7d20: $87
    ld a, b                                       ; $7d21: $78
    inc hl                                        ; $7d22: $23
    adc b                                         ; $7d23: $88
    sbc l                                         ; $7d24: $9d
    ld b, $81                                     ; $7d25: $06 $81
    dec a                                         ; $7d27: $3d
    db $db                                        ; $7d28: $db
    add hl, sp                                    ; $7d29: $39
    xor h                                         ; $7d2a: $ac
    ld [hl], l                                    ; $7d2b: $75
    add a                                         ; $7d2c: $87
    ld a, b                                       ; $7d2d: $78
    inc hl                                        ; $7d2e: $23
    adc b                                         ; $7d2f: $88
    sbc l                                         ; $7d30: $9d
    ld b, $81                                     ; $7d31: $06 $81
    dec a                                         ; $7d33: $3d
    db $db                                        ; $7d34: $db
    add hl, sp                                    ; $7d35: $39
    and h                                         ; $7d36: $a4
    ret nc                                        ; $7d37: $d0

    dec b                                         ; $7d38: $05
    halt                                          ; $7d39: $76
    ld h, e                                       ; $7d3a: $63
    ld e, b                                       ; $7d3b: $58
    ld bc, $8775                                  ; $7d3c: $01 $75 $87
    ld a, b                                       ; $7d3f: $78
    inc hl                                        ; $7d40: $23
    ld [$fc79], sp                                ; $7d41: $08 $79 $fc
    push de                                       ; $7d44: $d5
    ld [hl], l                                    ; $7d45: $75
    cp a                                          ; $7d46: $bf
    ld [bc], a                                    ; $7d47: $02

jr_044_7d48:
    ld [hl], l                                    ; $7d48: $75
    add a                                         ; $7d49: $87
    ld a, b                                       ; $7d4a: $78
    inc hl                                        ; $7d4b: $23
    ld [$7f4c], sp                                ; $7d4c: $08 $4c $7f
    xor $d4                                       ; $7d4f: $ee $d4
    xor a                                         ; $7d51: $af
    ld [hl], l                                    ; $7d52: $75
    add a                                         ; $7d53: $87
    ld a, b                                       ; $7d54: $78
    inc hl                                        ; $7d55: $23
    ret z                                         ; $7d56: $c8

Call_044_7d57:
    add d                                         ; $7d57: $82
    push hl                                       ; $7d58: $e5
    ld sp, hl                                     ; $7d59: $f9
    ld d, a                                       ; $7d5a: $57
    ld [hl], l                                    ; $7d5b: $75
    add a                                         ; $7d5c: $87
    ld a, b                                       ; $7d5d: $78
    inc hl                                        ; $7d5e: $23
    ret z                                         ; $7d5f: $c8

    add d                                         ; $7d60: $82
    push hl                                       ; $7d61: $e5
    ld sp, hl                                     ; $7d62: $f9
    ld d, e                                       ; $7d63: $53
    add sp, $02                                   ; $7d64: $e8 $02
    cp e                                          ; $7d66: $bb
    ld sp, $6dac                                  ; $7d67: $31 $ac $6d
    inc d                                         ; $7d6a: $14
    ld l, b                                       ; $7d6b: $68
    db $f4                                        ; $7d6c: $f4
    ld d, [hl]                                    ; $7d6d: $56
    ld l, l                                       ; $7d6e: $6d
    sbc [hl]                                      ; $7d6f: $9e
    ld b, [hl]                                    ; $7d70: $46
    db $ed                                        ; $7d71: $ed
    db $e4                                        ; $7d72: $e4
    inc hl                                        ; $7d73: $23
    or h                                          ; $7d74: $b4
    add d                                         ; $7d75: $82
    ld c, l                                       ; $7d76: $4d
    adc e                                         ; $7d77: $8b
    ld l, c                                       ; $7d78: $69
    and l                                         ; $7d79: $a5
    adc c                                         ; $7d7a: $89
    xor h                                         ; $7d7b: $ac
    cp [hl]                                       ; $7d7c: $be
    ld c, $da                                     ; $7d7d: $0e $da
    cp [hl]                                       ; $7d7f: $be
    ld a, b                                       ; $7d80: $78
    ld c, a                                       ; $7d81: $4f
    and e                                         ; $7d82: $a3
    halt                                          ; $7d83: $76
    ld a, [c]                                     ; $7d84: $f2
    dec hl                                        ; $7d85: $2b
    cp [hl]                                       ; $7d86: $be
    xor $2b                                       ; $7d87: $ee $2b
    db $fd                                        ; $7d89: $fd
    db $fd                                        ; $7d8a: $fd
    ld a, [bc]                                    ; $7d8b: $0a
    ld l, l                                       ; $7d8c: $6d
    inc d                                         ; $7d8d: $14
    ld [hl], a                                    ; $7d8e: $77
    dec hl                                        ; $7d8f: $2b
    ld [hl], l                                    ; $7d90: $75
    ld l, l                                       ; $7d91: $6d
    add h                                         ; $7d92: $84
    daa                                           ; $7d93: $27
    sbc a                                         ; $7d94: $9f
    ld [c], a                                     ; $7d95: $e2
    cp [hl]                                       ; $7d96: $be
    jp nc, $1bdf                                  ; $7d97: $d2 $df $1b

    ld l, d                                       ; $7d9a: $6a
    xor [hl]                                      ; $7d9b: $ae
    ld l, l                                       ; $7d9c: $6d
    ld c, e                                       ; $7d9d: $4b
    sbc [hl]                                      ; $7d9e: $9e
    add hl, de                                    ; $7d9f: $19
    push hl                                       ; $7da0: $e5
    and e                                         ; $7da1: $a3
    or b                                          ; $7da2: $b0
    or a                                          ; $7da3: $b7
    rst $00                                       ; $7da4: $c7
    ld l, a                                       ; $7da5: $6f
    or [hl]                                       ; $7da6: $b6
    adc c                                         ; $7da7: $89
    halt                                          ; $7da8: $76
    db $e3                                        ; $7da9: $e3
    sbc [hl]                                      ; $7daa: $9e
    rst $00                                       ; $7dab: $c7
    ret nc                                        ; $7dac: $d0

    rst $30                                       ; $7dad: $f7
    ld a, l                                       ; $7dae: $7d
    ld [$aa1a], a                                 ; $7daf: $ea $1a $aa
    set 5, l                                      ; $7db2: $cb $ed
    inc l                                         ; $7db4: $2c
    ld [hl], h                                    ; $7db5: $74

jr_044_7db6:
    sub a                                         ; $7db6: $97
    rla                                           ; $7db7: $17
    ld b, [hl]                                    ; $7db8: $46
    ld e, d                                       ; $7db9: $5a
    rlc d                                         ; $7dba: $cb $02
    res 1, e                                      ; $7dbc: $cb $8b
    ret nc                                        ; $7dbe: $d0

    cp l                                          ; $7dbf: $bd
    rst $18                                       ; $7dc0: $df
    sub b                                         ; $7dc1: $90
    dec a                                         ; $7dc2: $3d
    add hl, hl                                    ; $7dc3: $29
    xor $2b                                       ; $7dc4: $ee $2b
    db $fd                                        ; $7dc6: $fd
    ld c, l                                       ; $7dc7: $4d
    cp a                                          ; $7dc8: $bf
    ld [bc], a                                    ; $7dc9: $02
    cp [hl]                                       ; $7dca: $be
    xor $2b                                       ; $7dcb: $ee $2b
    db $fd                                        ; $7dcd: $fd
    ld c, l                                       ; $7dce: $4d
    ld e, [hl]                                    ; $7dcf: $5e
    add h                                         ; $7dd0: $84
    xor $fd                                       ; $7dd1: $ee $fd
    inc a                                         ; $7dd3: $3c
    dec [hl]                                      ; $7dd4: $35
    ld d, a                                       ; $7dd5: $57
    cp [hl]                                       ; $7dd6: $be
    xor $2b                                       ; $7dd7: $ee $2b
    db $fd                                        ; $7dd9: $fd
    ld c, l                                       ; $7dda: $4d
    call c, $cb54                                 ; $7ddb: $dc $54 $cb
    ld b, $3f                                     ; $7dde: $06 $3f
    ld c, a                                       ; $7de0: $4f

jr_044_7de1:
    call Call_044_7515                            ; $7de1: $cd $15 $75
    ld b, [hl]                                    ; $7de4: $46
    or d                                          ; $7de5: $b2
    ret nc                                        ; $7de6: $d0

    cp c                                          ; $7de7: $b9
    ret c                                         ; $7de8: $d8

    dec sp                                        ; $7de9: $3b
    scf                                           ; $7dea: $37
    jp c, $183e                                   ; $7deb: $da $3e $18

    ld a, [c]                                     ; $7dee: $f2
    sbc e                                         ; $7def: $9b
    dec c                                         ; $7df0: $0d
    pop af                                        ; $7df1: $f1
    sbc [hl]                                      ; $7df2: $9e
    ld b, [hl]                                    ; $7df3: $46

Jump_044_7df4:
    db $ed                                        ; $7df4: $ed
    inc b                                         ; $7df5: $04
    cp d                                          ; $7df6: $ba
    inc l                                         ; $7df7: $2c
    jr nc, jr_044_7de1                            ; $7df8: $30 $e7

    xor a                                         ; $7dfa: $af
    scf                                           ; $7dfb: $37
    or a                                          ; $7dfc: $b7
    jp $d274                                      ; $7dfd: $c3 $74 $d2


    and $ec                                       ; $7e00: $e6 $ec
    sbc e                                         ; $7e02: $9b
    or h                                          ; $7e03: $b4
    ld h, [hl]                                    ; $7e04: $66
    jr nz, jr_044_7db6                            ; $7e05: $20 $af

    and h                                         ; $7e07: $a4
    ld b, [hl]                                    ; $7e08: $46
    call c, $cb54                                 ; $7e09: $dc $54 $cb
    ld b, $4f                                     ; $7e0c: $06 $4f
    call $b515                                    ; $7e0e: $cd $15 $b5
    rst $38                                       ; $7e11: $ff
    jp nz, $e436                                  ; $7e12: $c2 $36 $e4

    di                                            ; $7e15: $f3
    add h                                         ; $7e16: $84
    jp z, Jump_044_7bc7                           ; $7e17: $ca $c7 $7b

    ld a, [de]                                    ; $7e1a: $1a
    or l                                          ; $7e1b: $b5
    sub e                                         ; $7e1c: $93
    adc a                                         ; $7e1d: $8f
    cp d                                          ; $7e1e: $ba
    ld hl, sp-$4e                                 ; $7e1f: $f8 $b2
    ld b, c                                       ; $7e21: $41
    di                                            ; $7e22: $f3
    inc hl                                        ; $7e23: $23
    ld c, b                                       ; $7e24: $48
    push af                                       ; $7e25: $f5
    sbc d                                         ; $7e26: $9a
    rst $38                                       ; $7e27: $ff
    ld [c], a                                     ; $7e28: $e2
    db $fd                                        ; $7e29: $fd
    ld l, d                                       ; $7e2a: $6a
    jp z, Jump_044_5cd5                           ; $7e2b: $ca $d5 $5c

    ld bc, $83ad                                  ; $7e2e: $01 $ad $83
    cp h                                          ; $7e31: $bc
    cp b                                          ; $7e32: $b8
    reti                                          ; $7e33: $d9


    dec de                                        ; $7e34: $1b
    call nz, Call_044_791b                        ; $7e35: $c4 $1b $79
    ld b, e                                       ; $7e38: $43
    ld l, [hl]                                    ; $7e39: $6e
    and a                                         ; $7e3a: $a7
    ld a, d                                       ; $7e3b: $7a
    ld [hl+], a                                   ; $7e3c: $22
    ld [hl], c                                    ; $7e3d: $71
    and d                                         ; $7e3e: $a2
    ld l, $6d                                     ; $7e3f: $2e $6d
    reti                                          ; $7e41: $d9


    ld a, c                                       ; $7e42: $79
    ld b, a                                       ; $7e43: $47
    call nc, $d4d8                                ; $7e44: $d4 $d8 $d4
    ld e, h                                       ; $7e47: $5c
    ld bc, $83ad                                  ; $7e48: $01 $ad $83
    cp h                                          ; $7e4b: $bc
    cp b                                          ; $7e4c: $b8
    reti                                          ; $7e4d: $d9


    dec de                                        ; $7e4e: $1b
    call nz, Call_044_791b                        ; $7e4f: $c4 $1b $79
    ld b, e                                       ; $7e52: $43
    ld l, [hl]                                    ; $7e53: $6e
    and a                                         ; $7e54: $a7
    ld a, d                                       ; $7e55: $7a
    ld [hl+], a                                   ; $7e56: $22
    ld [hl], c                                    ; $7e57: $71
    jp nc, $97f1                                  ; $7e58: $d2 $f1 $97

    ld [hl-], a                                   ; $7e5b: $32
    ld [hl], $a5                                  ; $7e5c: $36 $a5
    ld c, h                                       ; $7e5e: $4c
    call $ad15                                    ; $7e5f: $cd $15 $ad
    add e                                         ; $7e62: $83
    cp h                                          ; $7e63: $bc
    cp b                                          ; $7e64: $b8
    reti                                          ; $7e65: $d9


    dec de                                        ; $7e66: $1b
    call nz, Call_044_791b                        ; $7e67: $c4 $1b $79
    ld b, e                                       ; $7e6a: $43
    ld l, [hl]                                    ; $7e6b: $6e
    and a                                         ; $7e6c: $a7
    ld a, d                                       ; $7e6d: $7a
    ld [hl+], a                                   ; $7e6e: $22
    ld [hl], c                                    ; $7e6f: $71
    ld [c], a                                     ; $7e70: $e2
    add hl, sp                                    ; $7e71: $39
    ld b, [hl]                                    ; $7e72: $46
    adc [hl]                                      ; $7e73: $8e
    ret nz                                        ; $7e74: $c0

    and [hl]                                      ; $7e75: $a6
    and $0a                                       ; $7e76: $e6 $0a
    xor l                                         ; $7e78: $ad
    add e                                         ; $7e79: $83
    cp h                                          ; $7e7a: $bc
    cp b                                          ; $7e7b: $b8
    reti                                          ; $7e7c: $d9


    dec de                                        ; $7e7d: $1b
    call nz, Call_044_791b                        ; $7e7e: $c4 $1b $79
    ld b, e                                       ; $7e81: $43

Call_044_7e82:
    ld l, [hl]                                    ; $7e82: $6e
    and a                                         ; $7e83: $a7
    ld a, d                                       ; $7e84: $7a
    ld [hl+], a                                   ; $7e85: $22
    ld [hl], c                                    ; $7e86: $71
    ld [c], a                                     ; $7e87: $e2
    dec bc                                        ; $7e88: $0b
    ld e, e                                       ; $7e89: $5b
    ld b, b                                       ; $7e8a: $40
    jp nz, Jump_044_6a14                          ; $7e8b: $c2 $14 $6a

    xor [hl]                                      ; $7e8e: $ae
    ld [hl], l                                    ; $7e8f: $75
    ld b, [hl]                                    ; $7e90: $46
    ld [c], a                                     ; $7e91: $e2
    rst $38                                       ; $7e92: $ff
    res 1, e                                      ; $7e93: $cb $8b
    dec de                                        ; $7e95: $1b
    ei                                            ; $7e96: $fb
    inc d                                         ; $7e97: $14
    db $fd                                        ; $7e98: $fd
    ld e, $e7                                     ; $7e99: $1e $e7
    sbc [hl]                                      ; $7e9b: $9e
    daa                                           ; $7e9c: $27
    ld a, $14                                     ; $7e9d: $3e $14
    add l                                         ; $7e9f: $85
    daa                                           ; $7ea0: $27
    jp c, $9b8d                                   ; $7ea1: $da $8d $9b

    sbc d                                         ; $7ea4: $9a
    dec hl                                        ; $7ea5: $2b
    cp [hl]                                       ; $7ea6: $be
    sbc $53                                       ; $7ea7: $de $53
    sbc a                                         ; $7ea9: $9f
    sub $ed                                       ; $7eaa: $d6 $ed
    db $dd                                        ; $7eac: $dd
    ld h, h                                       ; $7ead: $64
    add c                                         ; $7eae: $81
    push bc                                       ; $7eaf: $c5
    ldh [$e8], a                                  ; $7eb0: $e0 $e8
    ld [bc], a                                    ; $7eb2: $02
    ld a, e                                       ; $7eb3: $7b
    ld b, e                                       ; $7eb4: $43
    or $a7                                        ; $7eb5: $f6 $a7
    and e                                         ; $7eb7: $a3
    ld [hl], e                                    ; $7eb8: $73
    ld h, e                                       ; $7eb9: $63
    ld a, [bc]                                    ; $7eba: $0a
    ld a, e                                       ; $7ebb: $7b
    ld a, a                                       ; $7ebc: $7f
    call nc, $0ea5                                ; $7ebd: $d4 $a5 $0e
    ret z                                         ; $7ec0: $c8

    db $db                                        ; $7ec1: $db
    dec de                                        ; $7ec2: $1b
    dec [hl]                                      ; $7ec3: $35
    ld d, a                                       ; $7ec4: $57
    ld [hl], l                                    ; $7ec5: $75
    add $f4                                       ; $7ec6: $c6 $f4
    jr nc, @-$60                                  ; $7ec8: $30 $9e

    call nc, Call_044_7148                        ; $7eca: $d4 $48 $71
    cp a                                          ; $7ecd: $bf
    inc l                                         ; $7ece: $2c
    rst $08                                       ; $7ecf: $cf
    ld d, e                                       ; $7ed0: $53
    inc sp                                        ; $7ed1: $33
    sbc [hl]                                      ; $7ed2: $9e
    jr nc, @-$07                                  ; $7ed3: $30 $f7

    ld d, c                                       ; $7ed5: $51
    rla                                           ; $7ed6: $17
    rst $30                                       ; $7ed7: $f7
    call z, $ded4                                 ; $7ed8: $cc $d4 $de
    or $f4                                        ; $7edb: $f6 $f4
    dec hl                                        ; $7edd: $2b
    dec e                                         ; $7ede: $1d
    db $db                                        ; $7edf: $db
    sub b                                         ; $7ee0: $90
    sbc a                                         ; $7ee1: $9f
    db $fd                                        ; $7ee2: $fd
    ld [hl], c                                    ; $7ee3: $71
    cp $7b                                        ; $7ee4: $fe $7b
    ld [de], a                                    ; $7ee6: $12
    pop de                                        ; $7ee7: $d1
    adc [hl]                                      ; $7ee8: $8e
    ld d, $fe                                     ; $7ee9: $16 $fe
    inc l                                         ; $7eeb: $2c
    or b                                          ; $7eec: $b0
    db $fc                                        ; $7eed: $fc
    ld h, d                                       ; $7eee: $62
    ld h, a                                       ; $7eef: $67
    ret z                                         ; $7ef0: $c8

jr_044_7ef1:
    cp $2c                                        ; $7ef1: $fe $2c
    ld h, e                                       ; $7ef3: $63
    db $fc                                        ; $7ef4: $fc
    dec [hl]                                      ; $7ef5: $35
    ld d, a                                       ; $7ef6: $57
    sbc [hl]                                      ; $7ef7: $9e
    jr nc, jr_044_7ef1                            ; $7ef8: $30 $f7

    ld d, c                                       ; $7efa: $51

Call_044_7efb:
    rla                                           ; $7efb: $17
    rst $30                                       ; $7efc: $f7
    call z, $ded4                                 ; $7efd: $cc $d4 $de
    sub b                                         ; $7f00: $90
    db $db                                        ; $7f01: $db
    pop de                                        ; $7f02: $d1
    xor b                                         ; $7f03: $a8
    ld [hl], a                                    ; $7f04: $77
    ld l, d                                       ; $7f05: $6a
    xor [hl]                                      ; $7f06: $ae
    cp [hl]                                       ; $7f07: $be
    ret nc                                        ; $7f08: $d0

    add sp, $65                                   ; $7f09: $e8 $65
    ld a, a                                       ; $7f0b: $7f
    inc [hl]                                      ; $7f0c: $34
    ld a, d                                       ; $7f0d: $7a
    ld [$b0a3], a                                 ; $7f0e: $ea $a3 $b0
    or e                                          ; $7f11: $b3
    ret c                                         ; $7f12: $d8

    ld a, b                                       ; $7f13: $78
    ld d, c                                       ; $7f14: $51
    jp z, $3a58                                   ; $7f15: $ca $58 $3a

    dec a                                         ; $7f18: $3d
    cp [hl]                                       ; $7f19: $be
    and c                                         ; $7f1a: $a1
    and l                                         ; $7f1b: $a5
    and $0a                                       ; $7f1c: $e6 $0a
    sbc [hl]                                      ; $7f1e: $9e
    add [hl]                                      ; $7f1f: $86
    rst $08                                       ; $7f20: $cf
    cp $2c                                        ; $7f21: $fe $2c
    ld b, e                                       ; $7f23: $43
    cp h                                          ; $7f24: $bc
    ld de, $8dc4                                  ; $7f25: $11 $c4 $8d
    add hl, de                                    ; $7f28: $19
    sbc b                                         ; $7f29: $98
    cp a                                          ; $7f2a: $bf
    and $0a                                       ; $7f2b: $e6 $0a
    sbc [hl]                                      ; $7f2d: $9e
    or e                                          ; $7f2e: $b3
    inc l                                         ; $7f2f: $2c
    add a                                         ; $7f30: $87
    xor b                                         ; $7f31: $a8
    adc e                                         ; $7f32: $8b
    rst $30                                       ; $7f33: $f7
    inc [hl]                                      ; $7f34: $34
    ld l, d                                       ; $7f35: $6a
    daa                                           ; $7f36: $27
    adc b                                         ; $7f37: $88
    cp d                                          ; $7f38: $ba
    ld hl, sp-$4e                                 ; $7f39: $f8 $b2
    ld b, c                                       ; $7f3b: $41
    di                                            ; $7f3c: $f3
    inc hl                                        ; $7f3d: $23
    ld c, b                                       ; $7f3e: $48
    push af                                       ; $7f3f: $f5
    sbc d                                         ; $7f40: $9a
    rst $38                                       ; $7f41: $ff
    ld [c], a                                     ; $7f42: $e2
    db $fd                                        ; $7f43: $fd
    ld l, d                                       ; $7f44: $6a
    jp z, Jump_044_5cd5                           ; $7f45: $ca $d5 $5c

    ld bc, $ffb5                                  ; $7f48: $01 $b5 $ff
    ld h, d                                       ; $7f4b: $62
    xor a                                         ; $7f4c: $af
    ld l, c                                       ; $7f4d: $69
    ld b, a                                       ; $7f4e: $47
    add l                                         ; $7f4f: $85
    daa                                           ; $7f50: $27
    ld d, h                                       ; $7f51: $54
    ld [hl+], a                                   ; $7f52: $22
    ld [hl], h                                    ; $7f53: $74
    ret z                                         ; $7f54: $c8

    ret                                           ; $7f55: $c9


    ld a, $12                                     ; $7f56: $3e $12
    ld a, e                                       ; $7f58: $7b
    ld c, a                                       ; $7f59: $4f
    call $b515                                    ; $7f5a: $cd $15 $b5
    rst $38                                       ; $7f5d: $ff
    ld h, d                                       ; $7f5e: $62
    xor a                                         ; $7f5f: $af
    ld l, c                                       ; $7f60: $69
    ld b, a                                       ; $7f61: $47
    add l                                         ; $7f62: $85
    daa                                           ; $7f63: $27

Jump_044_7f64:
    ld d, h                                       ; $7f64: $54
    ld [hl+], a                                   ; $7f65: $22
    ld [hl], h                                    ; $7f66: $74
    ret z                                         ; $7f67: $c8

    ret                                           ; $7f68: $c9


    ld a, $12                                     ; $7f69: $3e $12
    ld a, e                                       ; $7f6b: $7b
    ld c, a                                       ; $7f6c: $4f
    call nc, $7aa5                                ; $7f6d: $d4 $a5 $7a
    db $ed                                        ; $7f70: $ed
    cp [hl]                                       ; $7f71: $be
    and $0a                                       ; $7f72: $e6 $0a
    ld l, l                                       ; $7f74: $6d
    adc [hl]                                      ; $7f75: $8e
    ld de, $8d3f                                  ; $7f76: $11 $3f $8d
    or h                                          ; $7f79: $b4
    jp nc, Jump_044_5644                          ; $7f7a: $d2 $44 $56

    xor l                                         ; $7f7d: $ad
    sbc a                                         ; $7f7e: $9f
    rla                                           ; $7f7f: $17
    push hl                                       ; $7f80: $e5
    db $d3                                        ; $7f81: $d3
    ld c, b                                       ; $7f82: $48
    dec hl                                        ; $7f83: $2b
    ld c, l                                       ; $7f84: $4d
    ld h, h                                       ; $7f85: $64
    dec b                                         ; $7f86: $05
    ld l, l                                       ; $7f87: $6d
    adc [hl]                                      ; $7f88: $8e
    ld de, $d53f                                  ; $7f89: $11 $3f $d5
    ld l, e                                       ; $7f8c: $6b
    rst $20                                       ; $7f8d: $e7
    ld a, $8d                                     ; $7f8e: $3e $8d
    or h                                          ; $7f90: $b4
    jp nc, Jump_044_5644                          ; $7f91: $d2 $44 $56

    xor l                                         ; $7f94: $ad
    sbc a                                         ; $7f95: $9f
    rla                                           ; $7f96: $17
    push hl                                       ; $7f97: $e5
    ld d, e                                       ; $7f98: $53
    cp l                                          ; $7f99: $bd
    halt                                          ; $7f9a: $76
    xor $d3                                       ; $7f9b: $ee $d3
    ld c, b                                       ; $7f9d: $48
    dec hl                                        ; $7f9e: $2b
    ld c, l                                       ; $7f9f: $4d
    ld h, h                                       ; $7fa0: $64
    dec b                                         ; $7fa1: $05
    xor l                                         ; $7fa2: $ad
    ld l, d                                       ; $7fa3: $6a
    or a                                          ; $7fa4: $b7
    adc a                                         ; $7fa5: $8f
    db $eb                                        ; $7fa6: $eb
    ld c, c                                       ; $7fa7: $49
    inc hl                                        ; $7fa8: $23
    xor l                                         ; $7fa9: $ad
    inc [hl]                                      ; $7faa: $34
    sub c                                         ; $7fab: $91
    dec d                                         ; $7fac: $15
    dec e                                         ; $7fad: $1d
    and c                                         ; $7fae: $a1
    ld e, h                                       ; $7faf: $5c
    ld h, c                                       ; $7fb0: $61

Jump_044_7fb1:
    ld [$d3f1], sp                                ; $7fb1: $08 $f1 $d3
    ld c, b                                       ; $7fb4: $48
    dec hl                                        ; $7fb5: $2b
    ld c, l                                       ; $7fb6: $4d
    ld h, h                                       ; $7fb7: $64
    dec b                                         ; $7fb8: $05
    or l                                          ; $7fb9: $b5
    ccf                                           ; $7fba: $3f
    ld d, h                                       ; $7fbb: $54
    ld [hl-], a                                   ; $7fbc: $32
    call z, Call_044_4d57                         ; $7fbd: $cc $57 $4d
    jp z, Jump_044_632f                           ; $7fc0: $ca $2f $63

    ld [$46e2], sp                                ; $7fc3: $08 $e2 $46
    ld hl, sp+$20                                 ; $7fc6: $f8 $20
    ret z                                         ; $7fc8: $c8

    adc e                                         ; $7fc9: $8b
    di                                            ; $7fca: $f3
    inc hl                                        ; $7fcb: $23
    ld d, h                                       ; $7fcc: $54
    ld a, $de                                     ; $7fcd: $3e $de
    db $d3                                        ; $7fcf: $d3
    xor b                                         ; $7fd0: $a8
    sbc l                                         ; $7fd1: $9d
    ld a, h                                       ; $7fd2: $7c
    call Call_044_6d15                            ; $7fd3: $cd $15 $6d
    jr c, @+$39                                   ; $7fd6: $38 $37

    ld a, h                                       ; $7fd8: $7c
    add hl, sp                                    ; $7fd9: $39
    ld d, c                                       ; $7fda: $51
    rlca                                          ; $7fdb: $07
    or [hl]                                       ; $7fdc: $b6
    ret                                           ; $7fdd: $c9


    cp $30                                        ; $7fde: $fe $30
    db $fd                                        ; $7fe0: $fd
    ld [hl], h                                    ; $7fe1: $74
    ld [hl], h                                    ; $7fe2: $74
    ld l, [hl]                                    ; $7fe3: $6e
    ld c, h                                       ; $7fe4: $4c
    ld h, c                                       ; $7fe5: $61
    rst $28                                       ; $7fe6: $ef
    rst $10                                       ; $7fe7: $d7
    and l                                         ; $7fe8: $a5
    ld c, $c8                                     ; $7fe9: $0e $c8
    db $db                                        ; $7feb: $db
    dec de                                        ; $7fec: $1b
    db $fd                                        ; $7fed: $fd
    ld a, [bc]                                    ; $7fee: $0a
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
