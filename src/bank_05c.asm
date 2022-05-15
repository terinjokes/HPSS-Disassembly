; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

    ld e, h                                       ; $4000: $5c
    ld a, h                                       ; $4001: $7c
    ld e, e                                       ; $4002: $5b
    and e                                         ; $4003: $a3
    call nc, Call_05c_7594                        ; $4004: $d4 $94 $75
    sub [hl]                                      ; $4007: $96
    ret                                           ; $4008: $c9


    rra                                           ; $4009: $1f
    jp hl                                         ; $400a: $e9


    ld a, b                                       ; $400b: $78
    cp c                                          ; $400c: $b9
    scf                                           ; $400d: $37
    ld l, [hl]                                    ; $400e: $6e
    rst $28                                       ; $400f: $ef
    ld c, a                                       ; $4010: $4f
    ld b, b                                       ; $4011: $40
    sub b                                         ; $4012: $90
    ld b, l                                       ; $4013: $45
    ld l, c                                       ; $4014: $69
    ld a, [hl]                                    ; $4015: $7e
    sbc c                                         ; $4016: $99
    db $fd                                        ; $4017: $fd
    dec h                                         ; $4018: $25
    adc [hl]                                      ; $4019: $8e
    jp nc, Jump_000_2ccc                          ; $401a: $d2 $cc $2c

    cp e                                          ; $401d: $bb
    inc sp                                        ; $401e: $33
    ld d, e                                       ; $401f: $53
    inc e                                         ; $4020: $1c
    cp d                                          ; $4021: $ba
    ret                                           ; $4022: $c9


    sbc d                                         ; $4023: $9a
    inc b                                         ; $4024: $04
    cp a                                          ; $4025: $bf
    and $c0                                       ; $4026: $e6 $c0
    inc de                                        ; $4028: $13
    rst $30                                       ; $4029: $f7
    ld e, e                                       ; $402a: $5b
    ccf                                           ; $402b: $3f
    scf                                           ; $402c: $37
    nop                                           ; $402d: $00
    ld c, $19                                     ; $402e: $0e $19
    ld h, $18                                     ; $4030: $26 $18
    ld h, [hl]                                    ; $4032: $66
    ret z                                         ; $4033: $c8

    ld d, [hl]                                    ; $4034: $56
    xor $8d                                       ; $4035: $ee $8d
    db $db                                        ; $4037: $db
    ei                                            ; $4038: $fb
    inc de                                        ; $4039: $13
    db $10                                        ; $403a: $10
    ld h, h                                       ; $403b: $64
    ld hl, $792c                                  ; $403c: $21 $2c $79
    adc h                                         ; $403f: $8c
    push de                                       ; $4040: $d5
    adc b                                         ; $4041: $88
    ld h, [hl]                                    ; $4042: $66
    ld a, a                                       ; $4043: $7f
    adc c                                         ; $4044: $89
    rst $38                                       ; $4045: $ff
    ld [hl], a                                    ; $4046: $77
    cp $bd                                        ; $4047: $fe $bd
    or l                                          ; $4049: $b5
    sub $c1                                       ; $404a: $d6 $c1
    sub [hl]                                      ; $404c: $96
    db $eb                                        ; $404d: $eb
    inc e                                         ; $404e: $1c
    ld [de], a                                    ; $404f: $12
    sbc [hl]                                      ; $4050: $9e
    ld d, l                                       ; $4051: $55
    ld c, d                                       ; $4052: $4a
    dec d                                         ; $4053: $15
    rst $20                                       ; $4054: $e7
    add h                                         ; $4055: $84
    and $2e                                       ; $4056: $e6 $2e
    adc e                                         ; $4058: $8b
    jr c, jr_05c_40c2                             ; $4059: $38 $67

    xor l                                         ; $405b: $ad
    ld c, c                                       ; $405c: $49
    ld l, a                                       ; $405d: $6f
    ei                                            ; $405e: $fb
    ld a, a                                       ; $405f: $7f
    adc c                                         ; $4060: $89
    ld l, a                                       ; $4061: $6f
    sbc e                                         ; $4062: $9b
    db $f4                                        ; $4063: $f4
    or [hl]                                       ; $4064: $b6
    rst $38                                       ; $4065: $ff
    or d                                          ; $4066: $b2
    xor l                                         ; $4067: $ad
    ld [hl], c                                    ; $4068: $71
    adc $2b                                       ; $4069: $ce $2b
    and l                                         ; $406b: $a5
    adc d                                         ; $406c: $8a
    ld [hl], e                                    ; $406d: $73
    ld b, d                                       ; $406e: $42
    ld e, b                                       ; $406f: $58
    ld d, b                                       ; $4070: $50
    nop                                           ; $4071: $00
    sbc h                                         ; $4072: $9c
    ld [hl], c                                    ; $4073: $71
    ld e, l                                       ; $4074: $5d
    sub a                                         ; $4075: $97
    ld h, $da                                     ; $4076: $26 $da
    adc h                                         ; $4078: $8c
    ld d, b                                       ; $4079: $50
    cp [hl]                                       ; $407a: $be
    ld l, e                                       ; $407b: $6b
    ld l, a                                       ; $407c: $6f
    dec e                                         ; $407d: $1d
    and l                                         ; $407e: $a5
    cp c                                          ; $407f: $b9
    ld a, c                                       ; $4080: $79
    ret nc                                        ; $4081: $d0

    dec b                                         ; $4082: $05
    nop                                           ; $4083: $00
    ld a, h                                       ; $4084: $7c
    db $db                                        ; $4085: $db
    ld d, c                                       ; $4086: $51
    or d                                          ; $4087: $b2
    dec l                                         ; $4088: $2d
    ld d, d                                       ; $4089: $52
    adc [hl]                                      ; $408a: $8e
    db $db                                        ; $408b: $db
    ld [$268d], a                                 ; $408c: $ea $8d $26
    sub d                                         ; $408f: $92
    db $ed                                        ; $4090: $ed
    ld [hl], $41                                  ; $4091: $36 $41
    ld [hl], c                                    ; $4093: $71
    inc bc                                        ; $4094: $03
    ret nc                                        ; $4095: $d0

    dec hl                                        ; $4096: $2b
    adc e                                         ; $4097: $8b
    ld d, d                                       ; $4098: $52
    db $ed                                        ; $4099: $ed
    sub [hl]                                      ; $409a: $96
    ld [hl], d                                    ; $409b: $72
    ld a, [hl-]                                   ; $409c: $3a
    ld c, e                                       ; $409d: $4b
    sub a                                         ; $409e: $97
    ld a, b                                       ; $409f: $78
    rst $38                                       ; $40a0: $ff
    call z, $baeb                                 ; $40a1: $cc $eb $ba
    call nz, Call_000_2695                        ; $40a4: $c4 $95 $26
    ld h, l                                       ; $40a7: $65
    cp e                                          ; $40a8: $bb
    ld h, $18                                     ; $40a9: $26 $18
    rst $20                                       ; $40ab: $e7
    ld d, b                                       ; $40ac: $50
    add $b6                                       ; $40ad: $c6 $b6
    sbc e                                         ; $40af: $9b
    ld c, b                                       ; $40b0: $48
    ld sp, hl                                     ; $40b1: $f9
    or e                                          ; $40b2: $b3
    or a                                          ; $40b3: $b7
    cp $97                                        ; $40b4: $fe $97
    ld b, l                                       ; $40b6: $45
    ld e, l                                       ; $40b7: $5d
    nop                                           ; $40b8: $00
    cp h                                          ; $40b9: $bc
    sbc e                                         ; $40ba: $9b
    ld b, a                                       ; $40bb: $47
    add hl, hl                                    ; $40bc: $29
    ld a, a                                       ; $40bd: $7f
    or $d6                                        ; $40be: $f6 $d6
    ld a, a                                       ; $40c0: $7f
    ld l, a                                       ; $40c1: $6f

jr_05c_40c2:
    ld b, l                                       ; $40c2: $45
    add hl, bc                                    ; $40c3: $09
    ld c, e                                       ; $40c4: $4b
    rst $30                                       ; $40c5: $f7
    and a                                         ; $40c6: $a7
    db $10                                        ; $40c7: $10
    ld l, h                                       ; $40c8: $6c
    xor h                                         ; $40c9: $ac
    cp $4b                                        ; $40ca: $fe $4b
    xor $8d                                       ; $40cc: $ee $8d
    db $db                                        ; $40ce: $db
    ei                                            ; $40cf: $fb
    inc de                                        ; $40d0: $13
    db $10                                        ; $40d1: $10
    ld h, h                                       ; $40d2: $64
    ld hl, $cfff                                  ; $40d3: $21 $ff $cf
    cp a                                          ; $40d6: $bf
    ld a, [$afe7]                                 ; $40d7: $fa $e7 $af
    ld l, l                                       ; $40da: $6d
    add hl, hl                                    ; $40db: $29
    dec e                                         ; $40dc: $1d
    ld a, b                                       ; $40dd: $78
    ld b, a                                       ; $40de: $47
    push de                                       ; $40df: $d5
    ld e, a                                       ; $40e0: $5f
    ld [c], a                                     ; $40e1: $e2
    and c                                         ; $40e2: $a1
    ld d, d                                       ; $40e3: $52
    ld a, [$fc67]                                 ; $40e4: $fa $67 $fc
    dec hl                                        ; $40e7: $2b
    ld a, a                                       ; $40e8: $7f
    halt                                          ; $40e9: $76
    cp a                                          ; $40ea: $bf
    push af                                       ; $40eb: $f5
    jp z, $e91f                                   ; $40ec: $ca $1f $e9

    ld a, b                                       ; $40ef: $78
    dec [hl]                                      ; $40f0: $35
    ld e, c                                       ; $40f1: $59
    sub e                                         ; $40f2: $93
    and $97                                       ; $40f3: $e6 $97
    reti                                          ; $40f5: $d9


    db $db                                        ; $40f6: $db
    jp z, $9edf                                   ; $40f7: $ca $df $9e

    ld b, h                                       ; $40fa: $44
    dec h                                         ; $40fb: $25
    ld hl, sp-$6b                                 ; $40fc: $f8 $95
    ld a, $eb                                     ; $40fe: $3e $eb
    ld a, a                                       ; $4100: $7f
    db $eb                                        ; $4101: $eb
    cp l                                          ; $4102: $bd
    nop                                           ; $4103: $00
    ld e, $a1                                     ; $4104: $1e $a1
    add hl, hl                                    ; $4106: $29
    and l                                         ; $4107: $a5
    ld d, d                                       ; $4108: $52
    ld l, a                                       ; $4109: $6f
    inc [hl]                                      ; $410a: $34
    ld d, c                                       ; $410b: $51
    ld d, d                                       ; $410c: $52
    pop de                                        ; $410d: $d1
    ld c, l                                       ; $410e: $4d
    ld [hl], d                                    ; $410f: $72
    ld l, a                                       ; $4110: $6f
    call c, $9fde                                 ; $4111: $dc $de $9f
    add b                                         ; $4114: $80
    jr nz, jr_05c_4122                            ; $4115: $20 $0b

    ld h, c                                       ; $4117: $61
    ret                                           ; $4118: $c9


    rst $00                                       ; $4119: $c7
    dec [hl]                                      ; $411a: $35
    ei                                            ; $411b: $fb
    and h                                         ; $411c: $a4
    ld l, d                                       ; $411d: $6a
    or a                                          ; $411e: $b7
    call nc, Call_05c_4d1b                        ; $411f: $d4 $1b $4d

jr_05c_4122:
    inc h                                         ; $4122: $24
    sbc $3f                                       ; $4123: $de $3f
    di                                            ; $4125: $f3
    add hl, de                                    ; $4126: $19
    jp c, $badc                                   ; $4127: $da $dc $ba

    call nz, $a543                                ; $412a: $c4 $43 $a5
    adc h                                         ; $412d: $8c
    ld l, l                                       ; $412e: $6d
    scf                                           ; $412f: $37
    sub c                                         ; $4130: $91
    ld a, [c]                                     ; $4131: $f2
    ld h, a                                       ; $4132: $67
    rst $30                                       ; $4133: $f7
    ld e, e                                       ; $4134: $5b
    xor a                                         ; $4135: $af
    ld a, [c]                                     ; $4136: $f2
    ld h, a                                       ; $4137: $67
    ld l, a                                       ; $4138: $6f
    db $fd                                        ; $4139: $fd
    xor a                                         ; $413a: $af
    cp c                                          ; $413b: $b9
    ld a, c                                       ; $413c: $79
    sub h                                         ; $413d: $94
    sbc d                                         ; $413e: $9a
    adc d                                         ; $413f: $8a
    sub h                                         ; $4140: $94
    ld [hl], c                                    ; $4141: $71
    dec d                                         ; $4142: $15
    ld [hl], c                                    ; $4143: $71
    inc bc                                        ; $4144: $03
    sbc h                                         ; $4145: $9c
    cp e                                          ; $4146: $bb
    ld b, l                                       ; $4147: $45
    ld [$7ff7], a                                 ; $4148: $ea $f7 $7f
    ld c, h                                       ; $414b: $4c
    dec bc                                        ; $414c: $0b
    or e                                          ; $414d: $b3
    rst $10                                       ; $414e: $d7
    cp l                                          ; $414f: $bd
    dec [hl]                                      ; $4150: $35
    ld c, d                                       ; $4151: $4a
    ld e, b                                       ; $4152: $58
    ld c, d                                       ; $4153: $4a
    ccf                                           ; $4154: $3f
    cp d                                          ; $4155: $ba
    ccf                                           ; $4156: $3f
    ld a, a                                       ; $4157: $7f
    call Call_05c_57cd                            ; $4158: $cd $cd $57
    ld d, c                                       ; $415b: $51
    dec d                                         ; $415c: $15
    and l                                         ; $415d: $a5
    sub h                                         ; $415e: $94
    xor d                                         ; $415f: $aa
    jp hl                                         ; $4160: $e9


    ld [bc], a                                    ; $4161: $02
    ret nc                                        ; $4162: $d0

    xor l                                         ; $4163: $ad
    sbc c                                         ; $4164: $99
    sbc l                                         ; $4165: $9d
    ld b, e                                       ; $4166: $43
    ld a, [hl-]                                   ; $4167: $3a
    sub h                                         ; $4168: $94
    ld b, d                                       ; $4169: $42
    ld b, d                                       ; $416a: $42
    rst $30                                       ; $416b: $f7
    ld d, [hl]                                    ; $416c: $56
    push bc                                       ; $416d: $c5
    inc h                                         ; $416e: $24
    ld a, [hl+]                                   ; $416f: $2a
    db $ed                                        ; $4170: $ed
    cp c                                          ; $4171: $b9
    cp a                                          ; $4172: $bf
    ld [hl], h                                    ; $4173: $74
    ld l, a                                       ; $4174: $6f
    adc l                                         ; $4175: $8d
    cp a                                          ; $4176: $bf
    nop                                           ; $4177: $00
    db $fc                                        ; $4178: $fc
    cp a                                          ; $4179: $bf
    cp d                                          ; $417a: $ba
    or a                                          ; $417b: $b7
    add $73                                       ; $417c: $c6 $73
    inc bc                                        ; $417e: $03
    ld c, $b2                                     ; $417f: $0e $b2
    ld d, $96                                     ; $4181: $16 $96
    xor $a8                                       ; $4183: $ee $a8
    and [hl]                                      ; $4185: $a6
    sbc h                                         ; $4186: $9c
    ld l, $39                                     ; $4187: $2e $39
    db $fc                                        ; $4189: $fc
    xor d                                         ; $418a: $aa
    rst $38                                       ; $418b: $ff
    ld d, d                                       ; $418c: $52
    cp [hl]                                       ; $418d: $be
    db $db                                        ; $418e: $db
    db $fd                                        ; $418f: $fd
    ld a, [c]                                     ; $4190: $f2
    adc c                                         ; $4191: $89
    adc $09                                       ; $4192: $ce $09
    pop bc                                        ; $4194: $c1
    ld a, a                                       ; $4195: $7f
    ld e, l                                       ; $4196: $5d
    rla                                           ; $4197: $17
    nop                                           ; $4198: $00
    db $fc                                        ; $4199: $fc
    inc l                                         ; $419a: $2c
    ld [hl], d                                    ; $419b: $72
    ld h, h                                       ; $419c: $64
    ld d, b                                       ; $419d: $50
    ld l, d                                       ; $419e: $6a
    and d                                         ; $419f: $a2
    ld [hl], e                                    ; $41a0: $73
    ld l, b                                       ; $41a1: $68
    ld [hl], d                                    ; $41a2: $72
    ret                                           ; $41a3: $c9


    or [hl]                                       ; $41a4: $b6
    ld c, b                                       ; $41a5: $48
    cp $ee                                        ; $41a6: $fe $ee
    add hl, bc                                    ; $41a8: $09
    sbc e                                         ; $41a9: $9b
    ld [hl], c                                    ; $41aa: $71
    and d                                         ; $41ab: $a2
    and c                                         ; $41ac: $a1
    ld [hl], h                                    ; $41ad: $74
    ld e, l                                       ; $41ae: $5d
    rla                                           ; $41af: $17
    ld c, a                                       ; $41b0: $4f
    ld l, h                                       ; $41b1: $6c
    ld d, d                                       ; $41b2: $52
    rst $30                                       ; $41b3: $f7
    ld [hl], $a9                                  ; $41b4: $36 $a9
    ld b, e                                       ; $41b6: $43
    cp b                                          ; $41b7: $b8
    inc sp                                        ; $41b8: $33
    or [hl]                                       ; $41b9: $b6
    call nc, $dd11                                ; $41ba: $d4 $11 $dd
    ld bc, $0005                                  ; $41bd: $01 $05 $00
    ret nc                                        ; $41c0: $d0

    xor e                                         ; $41c1: $ab
    ld a, e                                       ; $41c2: $7b

jr_05c_41c3:
    sbc e                                         ; $41c3: $9b
    xor b                                         ; $41c4: $a8
    ld l, $00                                     ; $41c5: $2e $00
    inc e                                         ; $41c7: $1c
    daa                                           ; $41c8: $27
    cp d                                          ; $41c9: $ba
    ld h, e                                       ; $41ca: $63
    and d                                         ; $41cb: $a2
    ld a, [hl-]                                   ; $41cc: $3a
    call nc, $a6ff                                ; $41cd: $d4 $ff $a6
    dec sp                                        ; $41d0: $3b
    ld a, [bc]                                    ; $41d1: $0a
    call $e35e                                    ; $41d2: $cd $5e $e3
    and b                                         ; $41d5: $a0
    ld b, c                                       ; $41d6: $41
    ld bc, $f7d0                                  ; $41d7: $01 $d0 $f7
    dec e                                         ; $41da: $1d
    jp nz, $9713                                  ; $41db: $c2 $13 $97

    ld hl, sp-$5e                                 ; $41de: $f8 $a2
    ld b, d                                       ; $41e0: $42
    dec [hl]                                      ; $41e1: $35
    and $1c                                       ; $41e2: $e6 $1c
    rst $30                                       ; $41e4: $f7
    ld a, a                                       ; $41e5: $7f
    dec h                                         ; $41e6: $25
    push hl                                       ; $41e7: $e5
    jr nz, @-$0c                                  ; $41e8: $20 $f2

    dec a                                         ; $41ea: $3d
    daa                                           ; $41eb: $27
    cp b                                          ; $41ec: $b8
    ld bc, $ddd0                                  ; $41ed: $01 $d0 $dd
    ld hl, $d7fb                                  ; $41f0: $21 $fb $d7
    dec e                                         ; $41f3: $1d
    ld d, l                                       ; $41f4: $55
    and h                                         ; $41f5: $a4
    ld [hl], c                                    ; $41f6: $71
    ret nc                                        ; $41f7: $d0

    ld l, $79                                     ; $41f8: $2e $79
    ld b, h                                       ; $41fa: $44
    call nc, $ea1d                                ; $41fb: $d4 $1d $ea
    ld a, a                                       ; $41fe: $7f
    db $d3                                        ; $41ff: $d3
    call c, Call_05c_5aad                         ; $4200: $dc $ad $5a
    pop bc                                        ; $4203: $c1
    xor a                                         ; $4204: $af
    ld e, $f9                                     ; $4205: $1e $f9
    sbc a                                         ; $4207: $9f
    ld a, [hl]                                    ; $4208: $7e
    db $dd                                        ; $4209: $dd
    ld d, c                                       ; $420a: $51
    ld de, $6b3a                                  ; $420b: $11 $3a $6b
    ld b, h                                       ; $420e: $44
    ld a, [c]                                     ; $420f: $f2
    rst $10                                       ; $4210: $d7
    ld a, [hl-]                                   ; $4211: $3a
    or [hl]                                       ; $4212: $b6
    jp hl                                         ; $4213: $e9


    ld [bc], a                                    ; $4214: $02
    sbc h                                         ; $4215: $9c
    ld e, e                                       ; $4216: $5b
    and h                                         ; $4217: $a4
    ld l, b                                       ; $4218: $68
    ld d, l                                       ; $4219: $55
    sub $ca                                       ; $421a: $d6 $ca
    xor $9b                                       ; $421c: $ee $9b
    jr jr_05c_41c3                                ; $421e: $18 $a3

    and h                                         ; $4220: $a4
    sbc d                                         ; $4221: $9a
    ld l, [hl]                                    ; $4222: $6e
    ld [de], a                                    ; $4223: $12
    sub [hl]                                      ; $4224: $96
    sbc d                                         ; $4225: $9a
    ret c                                         ; $4226: $d8

    inc c                                         ; $4227: $0c
    and d                                         ; $4228: $a2
    dec bc                                        ; $4229: $0b
    nop                                           ; $422a: $00
    ret nc                                        ; $422b: $d0

    and l                                         ; $422c: $a5
    xor a                                         ; $422d: $af
    ld a, d                                       ; $422e: $7a
    ld [hl], l                                    ; $422f: $75
    inc l                                         ; $4230: $2c
    add h                                         ; $4231: $84
    ld c, d                                       ; $4232: $4a
    dec e                                         ; $4233: $1d
    add hl, hl                                    ; $4234: $29
    add h                                         ; $4235: $84
    ld h, h                                       ; $4236: $64
    db $db                                        ; $4237: $db
    ld [hl], h                                    ; $4238: $74
    adc c                                         ; $4239: $89
    ld l, a                                       ; $423a: $6f
    adc e                                         ; $423b: $8b
    add h                                         ; $423c: $84
    daa                                           ; $423d: $27
    ld c, d                                       ; $423e: $4a
    add sp, -$05                                  ; $423f: $e8 $fb
    ld e, e                                       ; $4241: $5b
    and e                                         ; $4242: $a3
    push hl                                       ; $4243: $e5
    ld l, a                                       ; $4244: $6f
    db $d3                                        ; $4245: $d3
    ld c, l                                       ; $4246: $4d
    ld d, h                                       ; $4247: $54
    ld a, [c]                                     ; $4248: $f2
    rlca                                          ; $4249: $07
    sbc [hl]                                      ; $424a: $9e
    xor b                                         ; $424b: $a8
    push de                                       ; $424c: $d5
    dec a                                         ; $424d: $3d
    or [hl]                                       ; $424e: $b6
    ld e, a                                       ; $424f: $5f
    ld sp, hl                                     ; $4250: $f9
    ld e, e                                       ; $4251: $5b
    rst $38                                       ; $4252: $ff
    rst $10                                       ; $4253: $d7
    dec h                                         ; $4254: $25
    cp $71                                        ; $4255: $fe $71
    and $ff                                       ; $4257: $e6 $ff
    ld [hl], l                                    ; $4259: $75
    ld e, l                                       ; $425a: $5d
    ld [$e671], a                                 ; $425b: $ea $71 $e6
    cp a                                          ; $425e: $bf
    ld a, [c]                                     ; $425f: $f2
    rst $38                                       ; $4260: $ff
    ld d, d                                       ; $4261: $52
    cp a                                          ; $4262: $bf
    rst $28                                       ; $4263: $ef
    rst $00                                       ; $4264: $c7
    adc c                                         ; $4265: $89
    ei                                            ; $4266: $fb
    cp a                                          ; $4267: $bf
    cp b                                          ; $4268: $b8
    ld bc, $271c                                  ; $4269: $01 $1c $27
    ld c, d                                       ; $426c: $4a
    adc l                                         ; $426d: $8d
    or [hl]                                       ; $426e: $b6
    ld a, [c]                                     ; $426f: $f2
    ccf                                           ; $4270: $3f
    push bc                                       ; $4271: $c5
    dec a                                         ; $4272: $3d
    rst $20                                       ; $4273: $e7
    ld l, e                                       ; $4274: $6b
    push de                                       ; $4275: $d5
    ld h, h                                       ; $4276: $64
    ld c, l                                       ; $4277: $4d
    ld c, c                                       ; $4278: $49
    add hl, sp                                    ; $4279: $39
    adc b                                         ; $427a: $88
    ld a, h                                       ; $427b: $7c
    rst $08                                       ; $427c: $cf
    adc c                                         ; $427d: $89
    ld c, e                                       ; $427e: $4b
    cp h                                          ; $427f: $bc
    ld e, a                                       ; $4280: $5f
    add hl, bc                                    ; $4281: $09
    xor l                                         ; $4282: $ad
    push af                                       ; $4283: $f5
    cp b                                          ; $4284: $b8
    rst $10                                       ; $4285: $d7
    call nc, Call_05c_6659                        ; $4286: $d4 $59 $66
    cp l                                          ; $4289: $bd
    daa                                           ; $428a: $27
    inc sp                                        ; $428b: $33
    ld l, [hl]                                    ; $428c: $6e
    nop                                           ; $428d: $00
    ld e, [hl]                                    ; $428e: $5e
    db $dd                                        ; $428f: $dd
    scf                                           ; $4290: $37
    ld sp, $ad46                                  ; $4291: $31 $46 $ad
    sbc c                                         ; $4294: $99
    sbc l                                         ; $4295: $9d
    ld b, e                                       ; $4296: $43
    or d                                          ; $4297: $b2
    db $ed                                        ; $4298: $ed
    adc [hl]                                      ; $4299: $8e
    jp nc, Jump_05c_719d                          ; $429a: $d2 $9d $71

    and l                                         ; $429d: $a5
    ld [hl], c                                    ; $429e: $71
    rst $18                                       ; $429f: $df
    ld e, e                                       ; $42a0: $5b
    rla                                           ; $42a1: $17
    nop                                           ; $42a2: $00
    sbc h                                         ; $42a3: $9c
    ld hl, $b12c                                  ; $42a4: $21 $2c $b1
    rst $00                                       ; $42a7: $c7
    ld [hl], e                                    ; $42a8: $73
    cp $8b                                        ; $42a9: $fe $8b
    ld e, e                                       ; $42ab: $5b
    cp h                                          ; $42ac: $bc
    ld a, a                                       ; $42ad: $7f
    and $33                                       ; $42ae: $e6 $33
    inc [hl]                                      ; $42b0: $34
    ld h, c                                       ; $42b1: $61
    add hl, hl                                    ; $42b2: $29
    ld a, a                                       ; $42b3: $7f
    halt                                          ; $42b4: $76
    rst $38                                       ; $42b5: $ff
    sub a                                         ; $42b6: $97
    ld h, b                                       ; $42b7: $60
    sub h                                         ; $42b8: $94
    xor l                                         ; $42b9: $ad
    pop de                                        ; $42ba: $d1
    add hl, sp                                    ; $42bb: $39
    ld [hl], h                                    ; $42bc: $74
    ld bc, $a19c                                  ; $42bd: $01 $9c $a1
    ld e, b                                       ; $42c0: $58
    push af                                       ; $42c1: $f5
    cpl                                           ; $42c2: $2f
    db $e4                                        ; $42c3: $e4
    ld d, l                                       ; $42c4: $55
    sub h                                         ; $42c5: $94
    ld b, d                                       ; $42c6: $42
    ld c, b                                       ; $42c7: $48
    ld [hl], a                                    ; $42c8: $77
    ld l, h                                       ; $42c9: $6c
    db $d3                                        ; $42ca: $d3
    dec b                                         ; $42cb: $05
    nop                                           ; $42cc: $00
    ld c, $d0                                     ; $42cd: $0e $d0
    adc a                                         ; $42cf: $8f
    or a                                          ; $42d0: $b7
    sbc $a4                                       ; $42d1: $de $a4
    ld a, b                                       ; $42d3: $78
    sbc [hl]                                      ; $42d4: $9e
    or c                                          ; $42d5: $b1
    inc l                                         ; $42d6: $2c
    xor c                                         ; $42d7: $a9
    ccf                                           ; $42d8: $3f
    cpl                                           ; $42d9: $2f
    jp $feed                                      ; $42da: $c3 $ed $fe


    ld d, a                                       ; $42dd: $57
    ld a, [hl-]                                   ; $42de: $3a
    or $8c                                        ; $42df: $f6 $8c
    cp a                                          ; $42e1: $bf
    nop                                           ; $42e2: $00
    ret nc                                        ; $42e3: $d0

    dec h                                         ; $42e4: $25
    db $ec                                        ; $42e5: $ec
    cp $1a                                        ; $42e6: $fe $1a
    dec l                                         ; $42e8: $2d
    db $db                                        ; $42e9: $db
    ld h, $dd                                     ; $42ea: $26 $dd
    ld h, e                                       ; $42ec: $63
    cp $17                                        ; $42ed: $fe $17
    or a                                          ; $42ef: $b7
    ld hl, sp+$62                                 ; $42f0: $f8 $62
    ld hl, $6a54                                  ; $42f2: $21 $54 $6a
    jp z, $cb3a                                   ; $42f5: $ca $3a $cb

jr_05c_42f8:
    inc [hl]                                      ; $42f8: $34
    add hl, hl                                    ; $42f9: $29
    add e                                         ; $42fa: $83
    sub b                                         ; $42fb: $90
    jp nc, Jump_05c_719f                          ; $42fc: $d2 $9f $71

    cp a                                          ; $42ff: $bf
    reti                                          ; $4300: $d9


    res 0, d                                      ; $4301: $cb $82
    dec de                                        ; $4303: $1b
    nop                                           ; $4304: $00
    ld c, $b2                                     ; $4305: $0e $b2
    sub [hl]                                      ; $4307: $96
    add l                                         ; $4308: $85
    ld l, d                                       ; $4309: $6a
    call z, $c639                                 ; $430a: $cc $39 $c6
    dec h                                         ; $430d: $25
    cp [hl]                                       ; $430e: $be
    xor b                                         ; $430f: $a8
    ld [hl+], a                                   ; $4310: $22
    ld a, [hl+]                                   ; $4311: $2a
    ld l, [hl]                                    ; $4312: $6e
    nop                                           ; $4313: $00
    ld c, $19                                     ; $4314: $0e $19
    ld h, $18                                     ; $4316: $26 $18

jr_05c_4318:
    ld h, [hl]                                    ; $4318: $66
    ret z                                         ; $4319: $c8

    ld d, [hl]                                    ; $431a: $56
    ld a, h                                       ; $431b: $7c
    add hl, bc                                    ; $431c: $09
    ld a, b                                       ; $431d: $78
    ldh a, [$ec]                                  ; $431e: $f0 $ec
    sbc $84                                       ; $4320: $de $84
    ld e, a                                       ; $4322: $5f
    or $85                                        ; $4323: $f6 $85
    sbc e                                         ; $4325: $9b
    ld d, h                                       ; $4326: $54
    ld [hl], h                                    ; $4327: $74
    sub e                                         ; $4328: $93
    call c, $b71b                                 ; $4329: $dc $1b $b7
    rst $30                                       ; $432c: $f7
    daa                                           ; $432d: $27
    jr nz, jr_05c_42f8                            ; $432e: $20 $c8

    ld b, d                                       ; $4330: $42
    ld e, b                                       ; $4331: $58
    ld a, [c]                                     ; $4332: $f2
    jr @-$53                                      ; $4333: $18 $ab

    ld de, $fecd                                  ; $4335: $11 $cd $fe
    ld [bc], a                                    ; $4338: $02
    db $fc                                        ; $4339: $fc
    dec de                                        ; $433a: $1b
    db $10                                        ; $433b: $10
    ld [$95c9], a                                 ; $433c: $ea $c9 $95
    call nc, Call_05c_66bd                        ; $433f: $d4 $bd $66
    inc h                                         ; $4342: $24
    rst $30                                       ; $4343: $f7
    add $ed                                       ; $4344: $c6 $ed
    db $fd                                        ; $4346: $fd
    add hl, bc                                    ; $4347: $09
    ld [$10b2], sp                                ; $4348: $08 $b2 $10
    ld d, $14                                     ; $434b: $16 $14
    nop                                           ; $434d: $00
    cp h                                          ; $434e: $bc
    ld h, e                                       ; $434f: $63
    sbc h                                         ; $4350: $9c
    xor l                                         ; $4351: $ad
    and h                                         ; $4352: $a4
    and d                                         ; $4353: $a2
    sbc e                                         ; $4354: $9b
    sub h                                         ; $4355: $94
    ld d, d                                       ; $4356: $52
    add hl, bc                                    ; $4357: $09
    rst $08                                       ; $4358: $cf
    ld [$0a50], a                                 ; $4359: $ea $50 $0a
    pop hl                                        ; $435c: $e1
    ld [hl-], a                                   ; $435d: $32
    inc hl                                        ; $435e: $23
    db $dd                                        ; $435f: $dd
    rst $18                                       ; $4360: $df
    di                                            ; $4361: $f3
    rst $08                                       ; $4362: $cf
    adc c                                         ; $4363: $89
    dec bc                                        ; $4364: $0b
    nop                                           ; $4365: $00
    inc a                                         ; $4366: $3c
    ld d, h                                       ; $4367: $54
    jp z, $8571                                   ; $4368: $ca $71 $85

    rst $20                                       ; $436b: $e7
    cp h                                          ; $436c: $bc
    ld [hl], $fd                                  ; $436d: $36 $fd
    jp nc, Jump_05c_66bd                          ; $436f: $d2 $bd $66

    and h                                         ; $4372: $a4
    db $fc                                        ; $4373: $fc
    cp a                                          ; $4374: $bf
    ld l, $00                                     ; $4375: $2e $00
    ret nc                                        ; $4377: $d0

    ld [hl], l                                    ; $4378: $75
    ret                                           ; $4379: $c9


    db $d3                                        ; $437a: $d3
    ld c, b                                       ; $437b: $48
    dec de                                        ; $437c: $1b
    reti                                          ; $437d: $d9


    cp [hl]                                       ; $437e: $be
    adc d                                         ; $437f: $8a
    ld h, [hl]                                    ; $4380: $66
    add h                                         ; $4381: $84
    ld h, [hl]                                    ; $4382: $66
    halt                                          ; $4383: $76
    ld c, $69                                     ; $4384: $0e $69
    ld e, b                                       ; $4386: $58
    ld l, h                                       ; $4387: $6c
    add hl, hl                                    ; $4388: $29
    rst $18                                       ; $4389: $df
    add l                                         ; $438a: $85
    ld b, h                                       ; $438b: $44
    ld d, l                                       ; $438c: $55
    sbc b                                         ; $438d: $98
    sub c                                         ; $438e: $91
    ld h, [hl]                                    ; $438f: $66
    jr nc, jr_05c_4318                            ; $4390: $30 $86

    db $d3                                        ; $4392: $d3
    jp nz, Jump_000_2fec                          ; $4393: $c2 $ec $2f

    nop                                           ; $4396: $00
    ret nc                                        ; $4397: $d0

    dec h                                         ; $4398: $25
    inc a                                         ; $4399: $3c
    and c                                         ; $439a: $a1
    and d                                         ; $439b: $a2
    or h                                          ; $439c: $b4
    or d                                          ; $439d: $b2
    ld d, [hl]                                    ; $439e: $56
    ld c, d                                       ; $439f: $4a
    push de                                       ; $43a0: $d5
    and h                                         ; $43a1: $a4
    adc c                                         ; $43a2: $89
    inc de                                        ; $43a3: $13
    push hl                                       ; $43a4: $e5
    db $d3                                        ; $43a5: $d3
    and $54                                       ; $43a6: $e6 $54
    ld [hl], h                                    ; $43a8: $74
    ld bc, $680e                                  ; $43a9: $01 $0e $68
    ld c, e                                       ; $43ac: $4b
    jr nc, @-$28                                  ; $43ad: $30 $d6

    inc e                                         ; $43af: $1c
    and l                                         ; $43b0: $a5
    inc de                                        ; $43b1: $13
    push de                                       ; $43b2: $d5
    sub h                                         ; $43b3: $94
    ld d, e                                       ; $43b4: $53
    xor c                                         ; $43b5: $a9
    adc c                                         ; $43b6: $89
    ld c, [hl]                                    ; $43b7: $4e
    sub e                                         ; $43b8: $93
    ld a, h                                       ; $43b9: $7c
    ld e, h                                       ; $43ba: $5c
    cp e                                          ; $43bb: $bb
    inc b                                         ; $43bc: $04
    sbc l                                         ; $43bd: $9d
    ld c, [hl]                                    ; $43be: $4e
    sub d                                         ; $43bf: $92
    add l                                         ; $43c0: $85
    ldh a, [$ac]                                  ; $43c1: $f0 $ac
    ld e, b                                       ; $43c3: $58
    and h                                         ; $43c4: $a4
    adc l                                         ; $43c5: $8d
    ld l, h                                       ; $43c6: $6c
    cpl                                           ; $43c7: $2f
    nop                                           ; $43c8: $00
    cp h                                          ; $43c9: $bc
    sbc c                                         ; $43ca: $99
    ld h, l                                       ; $43cb: $65
    ld [c], a                                     ; $43cc: $e2

jr_05c_43cd:
    ld c, e                                       ; $43cd: $4b
    ret nz                                        ; $43ce: $c0

    add e                                         ; $43cf: $83
    ld h, a                                       ; $43d0: $67
    rst $30                                       ; $43d1: $f7
    ld h, $fc                                     ; $43d2: $26 $fc
    and a                                         ; $43d4: $a7
    rst $38                                       ; $43d5: $ff
    sub d                                         ; $43d6: $92
    inc bc                                        ; $43d7: $03
    jp c, Jump_000_1a52                           ; $43d8: $da $52 $1a

    dec bc                                        ; $43db: $0b
    and c                                         ; $43dc: $a1
    ld [de], a                                    ; $43dd: $12
    inc a                                         ; $43de: $3c
    cp d                                          ; $43df: $ba
    db $e3                                        ; $43e0: $e3
    ld b, h                                       ; $43e1: $44
    cp $25                                        ; $43e2: $fe $25
    jr jr_05c_43cd                                ; $43e4: $18 $e7

    sub [hl]                                      ; $43e6: $96
    ld a, [hl]                                    ; $43e7: $7e
    rst $20                                       ; $43e8: $e7
    res 6, [hl]                                   ; $43e9: $cb $b6
    dec sp                                        ; $43eb: $3b
    ld [$d002], a                                 ; $43ec: $ea $02 $d0
    and l                                         ; $43ef: $a5
    ld a, e                                       ; $43f0: $7b
    adc e                                         ; $43f1: $8b
    call nc, $101b                                ; $43f2: $d4 $1b $10
    ld [de], a                                    ; $43f5: $12
    adc e                                         ; $43f6: $8b
    or h                                          ; $43f7: $b4
    sub c                                         ; $43f8: $91
    ld l, l                                       ; $43f9: $6d
    jp hl                                         ; $43fa: $e9


    adc [hl]                                      ; $43fb: $8e
    adc d                                         ; $43fc: $8a
    ld a, e                                       ; $43fd: $7b
    ld l, l                                       ; $43fe: $6d
    xor l                                         ; $43ff: $ad
    jp hl                                         ; $4400: $e9


    ld [bc], a                                    ; $4401: $02
    ret nc                                        ; $4402: $d0

    jp hl                                         ; $4403: $e9


    inc h                                         ; $4404: $24
    and l                                         ; $4405: $a5
    ld d, h                                       ; $4406: $54
    jp nz, $cf12                                  ; $4407: $c2 $12 $cf

    daa                                           ; $440a: $27
    call nz, $b216                                ; $440b: $c4 $16 $b2
    and l                                         ; $440e: $a5
    inc sp                                        ; $440f: $33
    or b                                          ; $4410: $b0
    cp $12                                        ; $4411: $fe $12
    ld c, a                                       ; $4413: $4f
    ret z                                         ; $4414: $c8

    rra                                           ; $4415: $1f
    jp hl                                         ; $4416: $e9


    ret z                                         ; $4417: $c8

    cp a                                          ; $4418: $bf
    dec [hl]                                      ; $4419: $35
    inc l                                         ; $441a: $2c
    or [hl]                                       ; $441b: $b6
    inc [hl]                                      ; $441c: $34
    ld a, a                                       ; $441d: $7f
    ld h, a                                       ; $441e: $67
    call nc, $b5f9                                ; $441f: $d4 $f9 $b5
    ld a, [hl]                                    ; $4422: $7e
    call Call_000_19b0                            ; $4423: $cd $b0 $19
    ld b, l                                       ; $4426: $45
    ld d, h                                       ; $4427: $54
    rla                                           ; $4428: $17
    nop                                           ; $4429: $00
    inc a                                         ; $442a: $3c
    ld d, h                                       ; $442b: $54
    ld a, [hl-]                                   ; $442c: $3a
    sub h                                         ; $442d: $94
    or $6a                                        ; $442e: $f6 $6a

jr_05c_4430:
    adc [hl]                                      ; $4430: $8e
    ld [hl], c                                    ; $4431: $71
    ld [c], a                                     ; $4432: $e2
    cp [hl]                                       ; $4433: $be
    ld e, a                                       ; $4434: $5f
    daa                                           ; $4435: $27
    ld c, e                                       ; $4436: $4b
    or e                                          ; $4437: $b3
    jr c, jr_05c_4461                             ; $4438: $38 $27

    ld [hl], h                                    ; $443a: $74
    ldh a, [$fe]                                  ; $443b: $f0 $fe
    ld [hl], e                                    ; $443d: $73
    ld [c], a                                     ; $443e: $e2
    ld [bc], a                                    ; $443f: $02
    inc a                                         ; $4440: $3c
    ld d, h                                       ; $4441: $54
    cp d                                          ; $4442: $ba
    ld b, a                                       ; $4443: $47
    xor a                                         ; $4444: $af
    xor l                                         ; $4445: $ad
    ld h, b                                       ; $4446: $60
    db $ec                                        ; $4447: $ec
    rst $18                                       ; $4448: $df
    ld d, d                                       ; $4449: $52
    inc de                                        ; $444a: $13
    sbc e                                         ; $444b: $9b
    ld b, c                                       ; $444c: $41
    sub $a4                                       ; $444d: $d6 $a4
    ld a, [hl]                                    ; $444f: $7e
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    ld e, [hl]                                    ; $4452: $5e
    dec bc                                        ; $4453: $0b
    db $eb                                        ; $4454: $eb
    cp a                                          ; $4455: $bf
    nop                                           ; $4456: $00
    ret nc                                        ; $4457: $d0

    dec h                                         ; $4458: $25
    inc a                                         ; $4459: $3c
    and c                                         ; $445a: $a1
    and d                                         ; $445b: $a2
    or h                                          ; $445c: $b4
    or d                                          ; $445d: $b2
    ld d, $8b                                     ; $445e: $16 $8b
    or h                                          ; $4460: $b4

jr_05c_4461:
    sub c                                         ; $4461: $91
    db $ed                                        ; $4462: $ed
    dec hl                                        ; $4463: $2b
    or $ac                                        ; $4464: $f6 $ac
    ld b, l                                       ; $4466: $45
    ret                                           ; $4467: $c9


    and a                                         ; $4468: $a7
    call $9ce9                                    ; $4469: $cd $e9 $9c
    or l                                          ; $446c: $b5
    jr z, jr_05c_4430                             ; $446d: $28 $c1

jr_05c_446f:
    ld [hl], h                                    ; $446f: $74
    ld h, [hl]                                    ; $4470: $66
    ld b, h                                       ; $4471: $44
    ld e, l                                       ; $4472: $5d
    nop                                           ; $4473: $00
    ld a, h                                       ; $4474: $7c
    ld l, e                                       ; $4475: $6b
    ld c, l                                       ; $4476: $4d
    cp d                                          ; $4477: $ba
    or a                                          ; $4478: $b7
    ld c, b                                       ; $4479: $48
    cp l                                          ; $447a: $bd
    ld bc, $4aa1                                  ; $447b: $01 $a1 $4a
    ld a, [hl+]                                   ; $447e: $2a
    cp d                                          ; $447f: $ba
    and e                                         ; $4480: $a3
    push bc                                       ; $4481: $c5
    jp hl                                         ; $4482: $e9


    and c                                         ; $4483: $a1
    inc bc                                        ; $4484: $03
    rst $00                                       ; $4485: $c7
    add h                                         ; $4486: $84
    daa                                           ; $4487: $27
    db $e4                                        ; $4488: $e4
    sbc $b8                                       ; $4489: $de $b8
    cp l                                          ; $448b: $bd
    ccf                                           ; $448c: $3f
    ld bc, $1641                                  ; $448d: $01 $41 $16
    ld d, b                                       ; $4490: $50
    nop                                           ; $4491: $00
    ret nc                                        ; $4492: $d0

    and l                                         ; $4493: $a5
    sbc $80                                       ; $4494: $de $80
    ret nc                                        ; $4496: $d0

    dec h                                         ; $4497: $25
    ld e, $aa                                     ; $4498: $1e $aa
    ld h, $c5                                     ; $449a: $26 $c5
    ld [$6b1e], a                                 ; $449c: $ea $1e $6b
    db $fd                                        ; $449f: $fd
    ccf                                           ; $44a0: $3f
    dec l                                         ; $44a1: $2d
    ld l, d                                       ; $44a2: $6a
    ld d, l                                       ; $44a3: $55
    inc [hl]                                      ; $44a4: $34
    or e                                          ; $44a5: $b3
    jp z, $ff5a                                   ; $44a6: $ca $5a $ff

    rst $30                                       ; $44a9: $f7
    cp $5a                                        ; $44aa: $fe $5a
    sbc h                                         ; $44ac: $9c
    di                                            ; $44ad: $f3
    di                                            ; $44ae: $f3
    cp a                                          ; $44af: $bf
    ld l, $00                                     ; $44b0: $2e $00
    ld c, $68                                     ; $44b2: $0e $68
    ld c, e                                       ; $44b4: $4b
    add hl, hl                                    ; $44b5: $29
    ld d, l                                       ; $44b6: $55
    or h                                          ; $44b7: $b4
    adc $18                                       ; $44b8: $ce $18
    db $fd                                        ; $44ba: $fd
    ld h, l                                       ; $44bb: $65
    xor a                                         ; $44bc: $af
    ld sp, hl                                     ; $44bd: $f9
    ld h, l                                       ; $44be: $65
    or $97                                        ; $44bf: $f6 $97
    and b                                         ; $44c1: $a0

jr_05c_44c2:
    db $d3                                        ; $44c2: $d3
    ld c, c                                       ; $44c3: $49
    ld h, d                                       ; $44c4: $62
    sub c                                         ; $44c5: $91
    ld [hl], $b2                                  ; $44c6: $36 $b2
    push de                                       ; $44c8: $d5
    dec e                                         ; $44c9: $1d
    or l                                          ; $44ca: $b5
    or d                                          ; $44cb: $b2
    db $dd                                        ; $44cc: $dd
    inc e                                         ; $44cd: $1c
    rst $38                                       ; $44ce: $ff
    cp $af                                        ; $44cf: $fe $af
    dec bc                                        ; $44d1: $0b
    nop                                           ; $44d2: $00
    ret nc                                        ; $44d3: $d0

    and l                                         ; $44d4: $a5
    add b                                         ; $44d5: $80
    add h                                         ; $44d6: $84
    xor c                                         ; $44d7: $a9
    scf                                           ; $44d8: $37
    jr nz, jr_05c_446f                            ; $44d9: $20 $94

    call nc, Call_05c_66bd                        ; $44db: $d4 $bd $66
    and h                                         ; $44de: $a4
    sub h                                         ; $44df: $94
    ld a, [hl+]                                   ; $44e0: $2a
    ld c, d                                       ; $44e1: $4a
    sbc l                                         ; $44e2: $9d

Call_05c_44e3:
    ld [hl], c                                    ; $44e3: $71
    and l                                         ; $44e4: $a5
    inc bc                                        ; $44e5: $03
    dec hl                                        ; $44e6: $2b
    and d                                         ; $44e7: $a2
    db $ec                                        ; $44e8: $ec
    add l                                         ; $44e9: $85
    ld [hl], l                                    ; $44ea: $75
    ld bc, $95d0                                  ; $44eb: $01 $d0 $95
    call nc, $ba3d                                ; $44ee: $d4 $3d $ba
    ld e, a                                       ; $44f1: $5f
    jr nc, jr_05c_44c2                            ; $44f2: $30 $ce

    ld hl, $a3f4                                  ; $44f4: $21 $f4 $a3
    ei                                            ; $44f7: $fb
    pop hl                                        ; $44f8: $e1
    or l                                          ; $44f9: $b5
    ld a, [hl]                                    ; $44fa: $7e
    push af                                       ; $44fb: $f5
    rst $08                                       ; $44fc: $cf
    ld sp, $79ce                                  ; $44fd: $31 $ce $79
    push af                                       ; $4500: $f5
    ld b, [hl]                                    ; $4501: $46
    inc de                                        ; $4502: $13
    ld e, l                                       ; $4503: $5d
    nop                                           ; $4504: $00
    inc a                                         ; $4505: $3c
    ld d, h                                       ; $4506: $54
    sbc d                                         ; $4507: $9a
    ld h, c                                       ; $4508: $61
    ld [hl], e                                    ; $4509: $73
    ld e, b                                       ; $450a: $58
    rst $00                                       ; $450b: $c7
    ld e, c                                       ; $450c: $59
    push hl                                       ; $450d: $e5
    ccf                                           ; $450e: $3f
    ccf                                           ; $450f: $3f
    rst $38                                       ; $4510: $ff
    ld d, d                                       ; $4511: $52
    pop de                                        ; $4512: $d1
    db $e4                                        ; $4513: $e4
    ld e, d                                       ; $4514: $5a
    adc e                                         ; $4515: $8b
    ld [hl+], a                                   ; $4516: $22
    pop af                                        ; $4517: $f1
    dec h                                         ; $4518: $25
    ldh [$c1], a                                  ; $4519: $e0 $c1
    or e                                          ; $451b: $b3
    ld a, e                                       ; $451c: $7b
    inc de                                        ; $451d: $13
    cp $d2                                        ; $451e: $fe $d2
    db $fc                                        ; $4520: $fc
    ld [hl-], a                                   ; $4521: $32
    ei                                            ; $4522: $fb
    ld c, e                                       ; $4523: $4b
    cp h                                          ; $4524: $bc
    sub h                                         ; $4525: $94
    ld l, c                                       ; $4526: $69
    ld h, [hl]                                    ; $4527: $66
    sub [hl]                                      ; $4528: $96
    db $dd                                        ; $4529: $dd
    ld h, h                                       ; $452a: $64
    ld b, [hl]                                    ; $452b: $46
    ld c, d                                       ; $452c: $4a

Call_05c_452d:
    xor c                                         ; $452d: $a9
    ld [c], a                                     ; $452e: $e2

Jump_05c_452f:
    inc [hl]                                      ; $452f: $34
    ld e, l                                       ; $4530: $5d
    nop                                           ; $4531: $00
    ret nc                                        ; $4532: $d0

    and l                                         ; $4533: $a5
    sbc $80                                       ; $4534: $de $80
    ld d, b                                       ; $4536: $50
    ld d, d                                       ; $4537: $52
    rst $30                                       ; $4538: $f7
    sbc d                                         ; $4539: $9a
    sub c                                         ; $453a: $91
    or [hl]                                       ; $453b: $b6
    dec l                                         ; $453c: $2d
    ld h, $51                                     ; $453d: $26 $51
    add hl, bc                                    ; $453f: $09
    ld c, a                                       ; $4540: $4f
    call nc, Call_000_0005                        ; $4541: $d4 $05 $00
    ret nc                                        ; $4544: $d0

    jp hl                                         ; $4545: $e9


    inc h                                         ; $4546: $24
    and l                                         ; $4547: $a5
    ld d, h                                       ; $4548: $54
    jp nz, $8d92                                  ; $4549: $c2 $92 $8d

    pop bc                                        ; $454c: $c1
    jp nz, Jump_05c_65ec                          ; $454d: $c2 $ec $65

    ld a, a                                       ; $4550: $7f
    sub $ec                                       ; $4551: $d6 $ec
    sub l                                         ; $4553: $95
    ld a, $83                                     ; $4554: $3e $83
    ld [hl], c                                    ; $4556: $71
    cp e                                          ; $4557: $bb
    db $e3                                        ; $4558: $e3
    call nz, Call_05c_66fd                        ; $4559: $c4 $fd $66
    cpl                                           ; $455c: $2f
    sbc a                                         ; $455d: $9f
    xor b                                         ; $455e: $a8
    cp c                                          ; $455f: $b9
    xor h                                         ; $4560: $ac

jr_05c_4561:
    rst $30                                       ; $4561: $f7
    db $fc                                        ; $4562: $fc
    jp c, $9018                                   ; $4563: $da $18 $90

    jr z, jr_05c_4561                             ; $4566: $28 $f9

    inc hl                                        ; $4568: $23
    adc l                                         ; $4569: $8d
    xor $bf                                       ; $456a: $ee $bf
    nop                                           ; $456c: $00
    sbc [hl]                                      ; $456d: $9e
    ccf                                           ; $456e: $3f
    cp e                                          ; $456f: $bb
    rst $38                                       ; $4570: $ff
    ld c, e                                       ; $4571: $4b
    sbc e                                         ; $4572: $9b
    ld a, [hl]                                    ; $4573: $7e
    jp hl                                         ; $4574: $e9


    ld e, [hl]                                    ; $4575: $5e
    inc sp                                        ; $4576: $33
    ld d, d                                       ; $4577: $52
    cp $5b                                        ; $4578: $fe $5b
    ld c, d                                       ; $457a: $4a
    rst $38                                       ; $457b: $ff
    adc h                                         ; $457c: $8c
    rst $38                                       ; $457d: $ff
    dec bc                                        ; $457e: $0b
    nop                                           ; $457f: $00
    ret nc                                        ; $4580: $d0

    dec h                                         ; $4581: $25
    inc a                                         ; $4582: $3c
    and c                                         ; $4583: $a1
    and d                                         ; $4584: $a2
    or h                                          ; $4585: $b4
    or d                                          ; $4586: $b2
    ld d, $8b                                     ; $4587: $16 $8b
    or h                                          ; $4589: $b4

jr_05c_458a:
    sub c                                         ; $458a: $91
    db $ed                                        ; $458b: $ed
    db $eb                                        ; $458c: $eb
    add $8a                                       ; $458d: $c6 $8a
    jr z, jr_05c_458a                             ; $458f: $28 $f9

    or h                                          ; $4591: $b4
    add hl, sp                                    ; $4592: $39
    ld d, c                                       ; $4593: $51
    ld e, l                                       ; $4594: $5d
    nop                                           ; $4595: $00
    cp h                                          ; $4596: $bc
    sbc c                                         ; $4597: $99
    ld h, l                                       ; $4598: $65
    add d                                         ; $4599: $82
    pop af                                        ; $459a: $f1
    db $f4                                        ; $459b: $f4
    ld l, a                                       ; $459c: $6f
    add hl, bc                                    ; $459d: $09
    db $fd                                        ; $459e: $fd
    add sp, $7e                                   ; $459f: $e8 $7e
    ld hl, sp+$4f                                 ; $45a1: $f8 $4f
    rst $38                                       ; $45a3: $ff
    dec h                                         ; $45a4: $25
    rlca                                          ; $45a5: $07
    and c                                         ; $45a6: $a1
    sbc $68                                       ; $45a7: $de $68
    jp z, $95a9                                   ; $45a9: $ca $a9 $95

    sbc l                                         ; $45ac: $9d
    adc b                                         ; $45ad: $88
    ld [hl-], a                                   ; $45ae: $32
    ld d, d                                       ; $45af: $52
    db $e3                                        ; $45b0: $e3
    ld e, d                                       ; $45b1: $5a
    ld b, a                                       ; $45b2: $47
    reti                                          ; $45b3: $d9


    db $eb                                        ; $45b4: $eb
    adc [hl]                                      ; $45b5: $8e
    adc d                                         ; $45b6: $8a
    ld a, e                                       ; $45b7: $7b
    ld l, l                                       ; $45b8: $6d
    xor l                                         ; $45b9: $ad
    jp hl                                         ; $45ba: $e9


    ld [bc], a                                    ; $45bb: $02
    sbc h                                         ; $45bc: $9c
    dec de                                        ; $45bd: $1b
    rst $20                                       ; $45be: $e7
    sub b                                         ; $45bf: $90
    ldh [$57], a                                  ; $45c0: $e0 $57
    inc de                                        ; $45c2: $13
    sbc l                                         ; $45c3: $9d
    ld b, e                                       ; $45c4: $43
    ld c, c                                       ; $45c5: $49
    ld h, l                                       ; $45c6: $65
    daa                                           ; $45c7: $27
    dec h                                         ; $45c8: $25
    ld a, [hl-]                                   ; $45c9: $3a
    add a                                         ; $45ca: $87
    inc b                                         ; $45cb: $04
    cp a                                          ; $45cc: $bf
    cp $a4                                        ; $45cd: $fe $a4
    rst $38                                       ; $45cf: $ff
    rst $20                                       ; $45d0: $e7
    ld a, h                                       ; $45d1: $7c
    ld d, d                                       ; $45d2: $52
    add hl, sp                                    ; $45d3: $39
    and l                                         ; $45d4: $a5
    ld d, h                                       ; $45d5: $54
    cp d                                          ; $45d6: $ba
    rst $10                                       ; $45d7: $d7
    adc h                                         ; $45d8: $8c
    ld h, h                                       ; $45d9: $64
    rst $18                                       ; $45da: $df
    dec a                                         ; $45db: $3d
    add $25                                       ; $45dc: $c6 $25
    rst $08                                       ; $45de: $cf
    rst $38                                       ; $45df: $ff
    ld l, h                                       ; $45e0: $6c
    ld e, e                                       ; $45e1: $5b
    ld l, b                                       ; $45e2: $68
    db $d3                                        ; $45e3: $d3
    cpl                                           ; $45e4: $2f
    push hl                                       ; $45e5: $e5
    rst $28                                       ; $45e6: $ef
    rst $38                                       ; $45e7: $ff
    ld e, e                                       ; $45e8: $5b
    rst $28                                       ; $45e9: $ef
    dec b                                         ; $45ea: $05
    nop                                           ; $45eb: $00
    inc a                                         ; $45ec: $3c
    ld d, h                                       ; $45ed: $54
    ld d, c                                       ; $45ee: $51
    ld a, [c]                                     ; $45ef: $f2
    or a                                          ; $45f0: $b7
    ld d, a                                       ; $45f1: $57
    ld [hl], e                                    ; $45f2: $73
    adc h                                         ; $45f3: $8c
    inc de                                        ; $45f4: $13
    rst $30                                       ; $45f5: $f7
    db $fd                                        ; $45f6: $fd
    ld a, [hl-]                                   ; $45f7: $3a
    sub h                                         ; $45f8: $94
    halt                                          ; $45f9: $76
    sub b                                         ; $45fa: $90
    ld h, $65                                     ; $45fb: $26 $65
    scf                                           ; $45fd: $37
    ld d, c                                       ; $45fe: $51
    add hl, bc                                    ; $45ff: $09
    ld b, [hl]                                    ; $4600: $46
    or e                                          ; $4601: $b3
    sbc a                                         ; $4602: $9f
    ld e, e                                       ; $4603: $5b
    rla                                           ; $4604: $17
    nop                                           ; $4605: $00
    sbc [hl]                                      ; $4606: $9e
    ld b, [hl]                                    ; $4607: $46
    jp c, Jump_05c_56c8                           ; $4608: $da $c8 $56

    add hl, sp                                    ; $460b: $39
    xor [hl]                                      ; $460c: $ae
    ldh a, [$9c]                                  ; $460d: $f0 $9c
    rst $10                                       ; $460f: $d7
    and [hl]                                      ; $4610: $a6
    ld e, a                                       ; $4611: $5f
    cp d                                          ; $4612: $ba
    rst $10                                       ; $4613: $d7
    adc h                                         ; $4614: $8c
    sub h                                         ; $4615: $94
    rst $38                                       ; $4616: $ff
    rst $10                                       ; $4617: $d7
    dec h                                         ; $4618: $25
    adc $5d                                       ; $4619: $ce $5d
    db $d3                                        ; $461b: $d3
    ld e, h                                       ; $461c: $5c
    ld b, $ff                                     ; $461d: $06 $ff
    sbc $71                                       ; $461f: $de $71
    adc $5a                                       ; $4621: $ce $5a
    ld e, b                                       ; $4623: $58
    rst $28                                       ; $4624: $ef
    dec b                                         ; $4625: $05
    nop                                           ; $4626: $00
    ret nc                                        ; $4627: $d0

    jp hl                                         ; $4628: $e9


    inc h                                         ; $4629: $24
    and l                                         ; $462a: $a5
    ld d, h                                       ; $462b: $54
    jp nz, $b452                                  ; $462c: $c2 $52 $b4

    db $ed                                        ; $462f: $ed
    ld c, l                                       ; $4630: $4d
    ld h, [hl]                                    ; $4631: $66
    inc h                                         ; $4632: $24
    rlca                                          ; $4633: $07

jr_05c_4634:
    sub c                                         ; $4634: $91
    rst $28                                       ; $4635: $ef
    add hl, sp                                    ; $4636: $39
    ld hl, $b18f                                  ; $4637: $21 $8f $b1
    ld [de], a                                    ; $463a: $12
    ld a, [c]                                     ; $463b: $f2
    ld e, $bb                                     ; $463c: $1e $bb
    pop af                                        ; $463e: $f1

jr_05c_463f:
    sbc $12                                       ; $463f: $de $12
    dec de                                        ; $4641: $1b
    cp $4e                                        ; $4642: $fe $4e
    xor h                                         ; $4644: $ac
    ld a, [$00bf]                                 ; $4645: $fa $bf $00
    inc a                                         ; $4648: $3c
    ld d, h                                       ; $4649: $54
    sbc d                                         ; $464a: $9a
    ld h, e                                       ; $464b: $63
    ld l, l                                       ; $464c: $6d
    cp $9e                                        ; $464d: $fe $9e
    dec d                                         ; $464f: $15
    adc h                                         ; $4650: $8c
    db $fd                                        ; $4651: $fd
    ld e, e                                       ; $4652: $5b
    ld [c], a                                     ; $4653: $e2
    ld c, e                                       ; $4654: $4b
    ret nz                                        ; $4655: $c0

    add e                                         ; $4656: $83
    ld h, a                                       ; $4657: $67
    rst $30                                       ; $4658: $f7
    ld h, $fc                                     ; $4659: $26 $fc
    and l                                         ; $465b: $a5
    ld sp, hl                                     ; $465c: $f9
    ld h, l                                       ; $465d: $65
    or $97                                        ; $465e: $f6 $97
    ld a, b                                       ; $4660: $78
    add hl, hl                                    ; $4661: $29
    db $d3                                        ; $4662: $d3
    call z, $bb2c                                 ; $4663: $cc $2c $bb
    ret                                           ; $4666: $c9


    adc h                                         ; $4667: $8c
    sub h                                         ; $4668: $94
    ld d, d                                       ; $4669: $52
    push bc                                       ; $466a: $c5
    ld l, c                                       ; $466b: $69
    cp d                                          ; $466c: $ba
    nop                                           ; $466d: $00
    inc a                                         ; $466e: $3c
    ld d, h                                       ; $466f: $54
    ld [$4e6c], a                                 ; $4670: $ea $6c $4e
    ld [hl+], a                                   ; $4673: $22
    call Call_05c_4e31                            ; $4674: $cd $31 $4e
    call c, $cbf7                                 ; $4677: $dc $f7 $cb
    ld b, $4b                                     ; $467a: $06 $4b
    jr nc, jr_05c_463f                            ; $467c: $30 $c1

Call_05c_467e:
    rst $18                                       ; $467e: $df
    ld [hl], e                                    ; $467f: $73
    ld e, [hl]                                    ; $4680: $5e
    jr nc, jr_05c_4634                            ; $4681: $30 $b1

    inc a                                         ; $4683: $3c
    adc $a1                                       ; $4684: $ce $a1
    ld c, e                                       ; $4686: $4b
    sbc [hl]                                      ; $4687: $9e
    rst $38                                       ; $4688: $ff
    ld a, [bc]                                    ; $4689: $0a
    rst $08                                       ; $468a: $cf
    ld c, [hl]                                    ; $468b: $4e
    sub h                                         ; $468c: $94
    add l                                         ; $468d: $85
    ld a, [c]                                     ; $468e: $f2
    ld c, a                                       ; $468f: $4f
    ld a, e                                       ; $4690: $7b
    rst $28                                       ; $4691: $ef
    or b                                          ; $4692: $b0
    ld a, [hl]                                    ; $4693: $7e
    or [hl]                                       ; $4694: $b6
    ld a, [c]                                     ; $4695: $f2
    inc e                                         ; $4696: $1c
    add hl, de                                    ; $4697: $19
    ld b, d                                       ; $4698: $42
    ld bc, $300e                                  ; $4699: $01 $0e $30
    xor c                                         ; $469c: $a9
    ld h, $3a                                     ; $469d: $26 $3a
    add a                                         ; $469f: $87
    sub h                                         ; $46a0: $94
    ld d, d                                       ; $46a1: $52
    add hl, hl                                    ; $46a2: $29
    ld d, [hl]                                    ; $46a3: $56
    cp a                                          ; $46a4: $bf
    push af                                       ; $46a5: $f5
    di                                            ; $46a6: $f3
    cp a                                          ; $46a7: $bf
    add h                                         ; $46a8: $84
    daa                                           ; $46a9: $27
    ld l, $00                                     ; $46aa: $2e $00
    ld a, h                                       ; $46ac: $7c
    add hl, bc                                    ; $46ad: $09
    ld a, b                                       ; $46ae: $78
    ldh a, [$ec]                                  ; $46af: $f0 $ec
    sbc $84                                       ; $46b1: $de $84
    ld e, a                                       ; $46b3: $5f
    ld e, b                                       ; $46b4: $58
    ld a, d                                       ; $46b5: $7a
    ld a, a                                       ; $46b6: $7f
    sbc h                                         ; $46b7: $9c
    ld e, a                                       ; $46b8: $5f
    ld h, e                                       ; $46b9: $63
    sub c                                         ; $46ba: $91
    ld [hl], $b2                                  ; $46bb: $36 $b2
    cp l                                          ; $46bd: $bd
    call nz, $a543                                ; $46be: $c4 $43 $a5
    db $fc                                        ; $46c1: $fc
    reti                                          ; $46c2: $d9


    db $fd                                        ; $46c3: $fd
    ld e, a                                       ; $46c4: $5f
    jp z, $6d71                                   ; $46c5: $ca $71 $6d

    push de                                       ; $46c8: $d5
    dec de                                        ; $46c9: $1b
    ld c, l                                       ; $46ca: $4d
    ld [hl], h                                    ; $46cb: $74
    ld bc, $2bd0                                  ; $46cc: $01 $d0 $2b
    inc a                                         ; $46cf: $3c
    and c                                         ; $46d0: $a1
    and d                                         ; $46d1: $a2
    sbc c                                         ; $46d2: $99
    ld d, l                                       ; $46d3: $55

jr_05c_46d4:
    sub $6a                                       ; $46d4: $d6 $6a
    ld a, [hl+]                                   ; $46d6: $2a
    and d                                         ; $46d7: $a2
    cp d                                          ; $46d8: $ba
    nop                                           ; $46d9: $00
    ret nc                                        ; $46da: $d0

    and l                                         ; $46db: $a5
    and d                                         ; $46dc: $a2
    ld d, b                                       ; $46dd: $50
    ld c, d                                       ; $46de: $4a
    push de                                       ; $46df: $d5
    and h                                         ; $46e0: $a4
    adc c                                         ; $46e1: $89
    ld sp, hl                                     ; $46e2: $f9
    sub [hl]                                      ; $46e3: $96
    add [hl]                                      ; $46e4: $86
    push bc                                       ; $46e5: $c5
    sub $05                                       ; $46e6: $d6 $05
    nop                                           ; $46e8: $00
    sbc [hl]                                      ; $46e9: $9e
    and l                                         ; $46ea: $a5
    call c, $d000                                 ; $46eb: $dc $00 $d0
    xor e                                         ; $46ee: $ab
    and d                                         ; $46ef: $a2
    ld c, h                                       ; $46f0: $4c
    cp h                                          ; $46f1: $bc
    ld a, a                                       ; $46f2: $7f
    and $33                                       ; $46f3: $e6 $33
    or h                                          ; $46f5: $b4
    cp $0b                                        ; $46f6: $fe $0b
    nop                                           ; $46f8: $00
    ret nc                                        ; $46f9: $d0

    and l                                         ; $46fa: $a5
    inc e                                         ; $46fb: $1c
    ld d, a                                       ; $46fc: $57
    ld h, a                                       ; $46fd: $67
    ld [hl], a                                    ; $46fe: $77
    adc $f1                                       ; $46ff: $ce $f1
    call c, $d000                                 ; $4701: $dc $00 $d0
    and l                                         ; $4704: $a5
    ld a, e                                       ; $4705: $7b
    adc e                                         ; $4706: $8b
    ld h, $51                                     ; $4707: $26 $51
    ld [hl], c                                    ; $4709: $71
    rlc c                                         ; $470a: $cb $01
    db $dd                                        ; $470c: $dd
    and h                                         ; $470d: $a4
    ld sp, hl                                     ; $470e: $f9
    sub [hl]                                      ; $470f: $96
    ld l, a                                       ; $4710: $6f
    ld l, e                                       ; $4711: $6b
    ld l, [hl]                                    ; $4712: $6e
    inc [hl]                                      ; $4713: $34
    adc [hl]                                      ; $4714: $8e
    ld e, $f9                                     ; $4715: $1e $f9
    or a                                          ; $4717: $b7
    or d                                          ; $4718: $b2
    db $db                                        ; $4719: $db
    daa                                           ; $471a: $27
    or [hl]                                       ; $471b: $b6
    rst $20                                       ; $471c: $e7
    call nz, Call_000_077d                        ; $471d: $c4 $7d $07
    or a                                          ; $4720: $b7
    jr c, jr_05c_4766                             ; $4721: $38 $43

    ld e, b                                       ; $4723: $58
    jp z, $dd9f                                   ; $4724: $ca $9f $dd

    ld l, a                                       ; $4727: $6f
    cp l                                          ; $4728: $bd
    rst $10                                       ; $4729: $d7
    ld [hl], l                                    ; $472a: $75
    ret                                           ; $472b: $c9


    ld e, a                                       ; $472c: $5f
    ld [hl], $aa                                  ; $472d: $36 $aa
    ld b, $b2                                     ; $472f: $06 $b2
    ld a, a                                       ; $4731: $7f
    ld l, [hl]                                    ; $4732: $6e
    ld [hl], c                                    ; $4733: $71
    sbc h                                         ; $4734: $9c
    jr z, jr_05c_46d4                             ; $4735: $28 $9d

    ld sp, $46a3                                  ; $4737: $31 $a3 $46
    xor e                                         ; $473a: $ab
    halt                                          ; $473b: $76
    xor l                                         ; $473c: $ad
    adc c                                         ; $473d: $89
    ld e, e                                       ; $473e: $5b
    inc a                                         ; $473f: $3c
    rst $08                                       ; $4740: $cf
    ld e, b                                       ; $4741: $58
    sub [hl]                                      ; $4742: $96
    call nc, $aca4                                ; $4743: $d4 $a4 $ac
    ld c, c                                       ; $4746: $49
    dec a                                         ; $4747: $3d
    ld c, [hl]                                    ; $4748: $4e
    cp a                                          ; $4749: $bf
    ld a, [$f957]                                 ; $474a: $fa $57 $f9
    rra                                           ; $474d: $1f
    ld a, h                                       ; $474e: $7c
    ld l, [hl]                                    ; $474f: $6e
    nop                                           ; $4750: $00
    cp h                                          ; $4751: $bc
    cp e                                          ; $4752: $bb
    adc l                                         ; $4753: $8d
    sub [hl]                                      ; $4754: $96
    inc d                                         ; $4755: $14
    rst $08                                       ; $4756: $cf
    inc sp                                        ; $4757: $33
    sub [hl]                                      ; $4758: $96
    dec h                                         ; $4759: $25
    ld d, l                                       ; $475a: $55

Jump_05c_475b:
    ld hl, $9b3c                                  ; $475b: $21 $3c $9b
    ld a, a                                       ; $475e: $7f
    rr a                                          ; $475f: $cb $1f
    ld l, h                                       ; $4761: $6c
    xor l                                         ; $4762: $ad
    rst $38                                       ; $4763: $ff
    ld [hl], l                                    ; $4764: $75
    ld l, a                                       ; $4765: $6f

jr_05c_4766:
    dec c                                         ; $4766: $0d
    db $eb                                        ; $4767: $eb
    rst $10                                       ; $4768: $d7

jr_05c_4769:
    sbc [hl]                                      ; $4769: $9e
    ei                                            ; $476a: $fb
    ld e, e                                       ; $476b: $5b
    cp $a6                                        ; $476c: $fe $a6
    ld a, a                                       ; $476e: $7f
    ld c, [hl]                                    ; $476f: $4e
    ld e, h                                       ; $4770: $5c
    nop                                           ; $4771: $00
    ld e, $7d                                     ; $4772: $1e $7d
    rst $08                                       ; $4774: $cf
    add sp, -$01                                  ; $4775: $e8 $ff
    ld d, d                                       ; $4777: $52
    ld [hl], h                                    ; $4778: $74
    ld b, h                                       ; $4779: $44
    ld sp, hl                                     ; $477a: $f9
    or h                                          ; $477b: $b4
    ld [hl], l                                    ; $477c: $75
    adc c                                         ; $477d: $89
    rst $30                                       ; $477e: $f7
    rst $08                                       ; $477f: $cf
    ld a, h                                       ; $4780: $7c
    add [hl]                                      ; $4781: $86
    db $d3                                        ; $4782: $d3
    ld [c], a                                     ; $4783: $e2
    sbc h                                         ; $4784: $9c
    rla                                           ; $4785: $17
    sub [hl]                                      ; $4786: $96
    ld h, b                                       ; $4787: $60
    call nc, $9dd9                                ; $4788: $d4 $d9 $9d
    rst $38                                       ; $478b: $ff
    adc d                                         ; $478c: $8a
    ld e, $f7                                     ; $478d: $1e $f7
    rst $30                                       ; $478f: $f7
    db $fc                                        ; $4790: $fc
    cp a                                          ; $4791: $bf
    nop                                           ; $4792: $00
    inc e                                         ; $4793: $1c
    daa                                           ; $4794: $27
    xor $3b                                       ; $4795: $ee $3b
    sub h                                         ; $4797: $94
    and l                                         ; $4798: $a5
    inc h                                         ; $4799: $24
    ld a, b                                       ; $479a: $78
    call c, $f66b                                 ; $479b: $dc $6b $f6
    call c, $8af2                                 ; $479e: $dc $f2 $8a
    ld l, l                                       ; $47a1: $6d
    sub e                                         ; $47a2: $93
    add $80                                       ; $47a3: $c6 $80
    add h                                         ; $47a5: $84
    push af                                       ; $47a6: $f5
    ld a, a                                       ; $47a7: $7f
    ld [hl], c                                    ; $47a8: $71
    inc bc                                        ; $47a9: $03
    ld e, $6f                                     ; $47aa: $1e $6f
    push af                                       ; $47ac: $f5
    add b                                         ; $47ad: $80
    sbc a                                         ; $47ae: $9f
    ld e, e                                       ; $47af: $5b
    ld e, $bd                                     ; $47b0: $1e $bd
    ld a, d                                       ; $47b2: $7a
    and h                                         ; $47b3: $a4

jr_05c_47b4:
    ld e, a                                       ; $47b4: $5f
    or [hl]                                       ; $47b5: $b6
    db $dd                                        ; $47b6: $dd
    cp a                                          ; $47b7: $bf
    push bc                                       ; $47b8: $c5
    dec l                                         ; $47b9: $2d
    rlca                                          ; $47ba: $07
    and c                                         ; $47bb: $a1
    inc [hl]                                      ; $47bc: $34
    db $e3                                        ; $47bd: $e3
    sbc d                                         ; $47be: $9a
    sub e                                         ; $47bf: $93
    jr z, jr_05c_4769                             ; $47c0: $28 $a7

    ld d, [hl]                                    ; $47c2: $56
    cp $ec                                        ; $47c3: $fe $ec
    ld a, [hl]                                    ; $47c5: $7e
    db $eb                                        ; $47c6: $eb
    push de                                       ; $47c7: $d5
    call c, $f7db                                 ; $47c8: $dc $db $f7
    rst $00                                       ; $47cb: $c7
    cp b                                          ; $47cc: $b8
    rst $28                                       ; $47cd: $ef
    ld c, b                                       ; $47ce: $48
    ld a, [bc]                                    ; $47cf: $0a
    ld b, [hl]                                    ; $47d0: $46
    ld d, e                                       ; $47d1: $53
    add $b6                                       ; $47d2: $c6 $b6
    jp hl                                         ; $47d4: $e9


    cp [hl]                                       ; $47d5: $be
    ld b, e                                       ; $47d6: $43
    jp hl                                         ; $47d7: $e9


    ret nz                                        ; $47d8: $c0

    adc d                                         ; $47d9: $8a
    jr z, jr_05c_47f9                             ; $47da: $28 $1d

    ld a, [c]                                     ; $47dc: $f2
    rst $30                                       ; $47dd: $f7
    ld [bc], a                                    ; $47de: $02
    ret nc                                        ; $47df: $d0

    sbc e                                         ; $47e0: $9b
    ld d, e                                       ; $47e1: $53
    xor e                                         ; $47e2: $ab
    ld b, d                                       ; $47e3: $42
    ld a, b                                       ; $47e4: $78
    ld b, d                                       ; $47e5: $42
    ld h, a                                       ; $47e6: $67
    xor e                                         ; $47e7: $ab
    rlca                                          ; $47e8: $07
    db $fc                                        ; $47e9: $fc
    rst $10                                       ; $47ea: $d7
    ld [hl], l                                    ; $47eb: $75
    add hl, hl                                    ; $47ec: $29
    rst $38                                       ; $47ed: $ff
    cpl                                           ; $47ee: $2f
    reti                                          ; $47ef: $d9


    ld l, [hl]                                    ; $47f0: $6e
    ld e, $73                                     ; $47f1: $1e $73
    jp nc, $e936                                  ; $47f3: $d2 $36 $e9

    di                                            ; $47f6: $f3
    rst $18                                       ; $47f7: $df
    ld a, e                                       ; $47f8: $7b

jr_05c_47f9:
    sbc a                                         ; $47f9: $9f
    dec de                                        ; $47fa: $1b
    nop                                           ; $47fb: $00
    ld e, $8f                                     ; $47fc: $1e $8f
    adc c                                         ; $47fe: $89
    ld h, [hl]                                    ; $47ff: $66
    ld a, a                                       ; $4800: $7f
    ret                                           ; $4801: $c9


    inc hl                                        ; $4802: $23
    sbc h                                         ; $4803: $9c
    ld b, e                                       ; $4804: $43
    add l                                         ; $4805: $85
    ld l, e                                       ; $4806: $6b
    db $fd                                        ; $4807: $fd
    ld a, [$f7fc]                                 ; $4808: $fa $fc $f7
    ld e, [hl]                                    ; $480b: $5e
    db $eb                                        ; $480c: $eb
    sub a                                         ; $480d: $97
    and c                                         ; $480e: $a1
    cp a                                          ; $480f: $bf
    xor e                                         ; $4810: $ab
    db $fc                                        ; $4811: $fc
    reti                                          ; $4812: $d9


    db $fd                                        ; $4813: $fd
    sub $ab                                       ; $4814: $d6 $ab
    and [hl]                                      ; $4816: $a6
    sub h                                         ; $4817: $94
    ld [$7c02], a                                 ; $4818: $ea $02 $7c
    and e                                         ; $481b: $a3
    ei                                            ; $481c: $fb
    ld [hl], l                                    ; $481d: $75
    rst $28                                       ; $481e: $ef
    inc h                                         ; $481f: $24
    jr z, jr_05c_4822                             ; $4820: $28 $00

jr_05c_4822:
    db $fc                                        ; $4822: $fc
    inc bc                                        ; $4823: $03
    ld [hl], l                                    ; $4824: $75
    jr z, jr_05c_47b4                             ; $4825: $28 $8d

    ld [hl], e                                    ; $4827: $73
    ld c, b                                       ; $4828: $48
    di                                            ; $4829: $f3
    cp e                                          ; $482a: $bb
    pop af                                        ; $482b: $f1
    add l                                         ; $482c: $85
    daa                                           ; $482d: $27
    ld a, [c]                                     ; $482e: $f2
    rst $10                                       ; $482f: $d7
    rst $20                                       ; $4830: $e7
    cp a                                          ; $4831: $bf
    and l                                         ; $4832: $a5
    and d                                         ; $4833: $a2
    xor h                                         ; $4834: $ac
    sbc e                                         ; $4835: $9b
    ld c, b                                       ; $4836: $48
    pop bc                                        ; $4837: $c1
    or $fc                                        ; $4838: $f6 $fc
    ld e, d                                       ; $483a: $5a
    sbc h                                         ; $483b: $9c
    ld a, [hl]                                    ; $483c: $7e
    call $a5b1                                    ; $483d: $cd $b1 $a5
    ld a, e                                       ; $4840: $7b
    adc h                                         ; $4841: $8c
    cp [hl]                                       ; $4842: $be
    nop                                           ; $4843: $00
    db $fc                                        ; $4844: $fc
    rst $08                                       ; $4845: $cf
    ld h, $6e                                     ; $4846: $26 $6e
    ld a, a                                       ; $4848: $7f
    ld c, a                                       ; $4849: $4f
    ld d, h                                       ; $484a: $54
    rrca                                          ; $484b: $0f
    db $ec                                        ; $484c: $ec
    rst $10                                       ; $484d: $d7
    inc e                                         ; $484e: $1c
    and a                                         ; $484f: $a7
    ld a, a                                       ; $4850: $7f
    xor l                                         ; $4851: $ad
    ccf                                           ; $4852: $3f
    add hl, hl                                    ; $4853: $29
    jr jr_05c_48c1                                ; $4854: $18 $6b

    cp [hl]                                       ; $4856: $be
    or d                                          ; $4857: $b2
    db $db                                        ; $4858: $db
    daa                                           ; $4859: $27
    or [hl]                                       ; $485a: $b6
    rst $20                                       ; $485b: $e7
    sub b                                         ; $485c: $90
    ld l, d                                       ; $485d: $6a
    and b                                         ; $485e: $a0
    ld d, d                                       ; $485f: $52
    db $f4                                        ; $4860: $f4
    ld h, e                                       ; $4861: $63
    dec l                                         ; $4862: $2d
    ld e, d                                       ; $4863: $5a
    daa                                           ; $4864: $27
    xor d                                         ; $4865: $aa
    db $e3                                        ; $4866: $e3
    ld b, h                                       ; $4867: $44
    ld c, [hl]                                    ; $4868: $4e
    dec c                                         ; $4869: $0d
    dec b                                         ; $486a: $05
    nop                                           ; $486b: $00
    ld e, $8d                                     ; $486c: $1e $8d
    pop bc                                        ; $486e: $c1
    ld d, [hl]                                    ; $486f: $56
    ld d, $97                                     ; $4870: $16 $97
    and b                                         ; $4872: $a0
    db $d3                                        ; $4873: $d3
    ld c, c                                       ; $4874: $49
    or d                                          ; $4875: $b2
    ret nc                                        ; $4876: $d0

    rst $20                                       ; $4877: $e7
    rst $38                                       ; $4878: $ff
    jp nz, $ea3c                                  ; $4879: $c2 $3c $ea

    ld [bc], a                                    ; $487c: $02
    sbc h                                         ; $487d: $9c
    ld e, e                                       ; $487e: $5b
    and e                                         ; $487f: $a3
    call nc, Call_05c_7594                        ; $4880: $d4 $94 $75
    sub [hl]                                      ; $4883: $96
    jp hl                                         ; $4884: $e9


    ld b, h                                       ; $4885: $44
    dec [hl]                                      ; $4886: $35
    sub c                                         ; $4887: $91
    or d                                          ; $4888: $b2
    jp $4a65                                      ; $4889: $c3 $65 $4a


    ld a, a                                       ; $488c: $7f
    add $fd                                       ; $488d: $c6 $fd
    ld e, a                                       ; $488f: $5f
    or d                                          ; $4890: $b2
    ld c, b                                       ; $4891: $48
    xor d                                         ; $4892: $aa
    ld a, a                                       ; $4893: $7f
    dec d                                         ; $4894: $15
    rst $30                                       ; $4895: $f7
    dec e                                         ; $4896: $1d
    ld a, [c]                                     ; $4897: $f2
    adc c                                         ; $4898: $89
    inc l                                         ; $4899: $2c
    call nc, $a744                                ; $489a: $d4 $44 $a7
    ld c, c                                       ; $489d: $49
    rst $30                                       ; $489e: $f7
    and [hl]                                      ; $489f: $a6
    ld e, e                                       ; $48a0: $5b
    sub e                                         ; $48a1: $93
    xor b                                         ; $48a2: $a8
    ld l, $00                                     ; $48a3: $2e $00
    ld a, h                                       ; $48a5: $7c
    and e                                         ; $48a6: $a3
    ei                                            ; $48a7: $fb
    dec d                                         ; $48a8: $15
    dec h                                         ; $48a9: $25
    db $ec                                        ; $48aa: $ec
    cp $1a                                        ; $48ab: $fe $1a
    xor l                                         ; $48ad: $ad
    inc sp                                        ; $48ae: $33
    ld b, [hl]                                    ; $48af: $46
    rst $38                                       ; $48b0: $ff
    rst $10                                       ; $48b1: $d7
    ld [$f31e], a                                 ; $48b2: $ea $1e $f3
    cp a                                          ; $48b5: $bf
    ld l, $00                                     ; $48b6: $2e $00
    inc e                                         ; $48b8: $1c
    db $fd                                        ; $48b9: $fd
    cp d                                          ; $48ba: $ba
    or a                                          ; $48bb: $b7
    ld b, [hl]                                    ; $48bc: $46
    jp hl                                         ; $48bd: $e9


    adc h                                         ; $48be: $8c
    pop de                                        ; $48bf: $d1
    ld e, a                                       ; $48c0: $5f

jr_05c_48c1:
    ld a, e                                       ; $48c1: $7b
    adc c                                         ; $48c2: $89
    inc sp                                        ; $48c3: $33
    add h                                         ; $48c4: $84
    dec h                                         ; $48c5: $25
    ccf                                           ; $48c6: $3f
    adc $9c                                       ; $48c7: $ce $9c
    and h                                         ; $48c9: $a4
    ccf                                           ; $48ca: $3f
    cp b                                          ; $48cb: $b8
    db $dd                                        ; $48cc: $dd
    ld [hl], c                                    ; $48cd: $71
    ld d, $fe                                     ; $48ce: $16 $fe
    jp nc, $a319                                  ; $48d0: $d2 $19 $a3

    ccf                                           ; $48d3: $3f
    xor c                                         ; $48d4: $a9
    ld a, e                                       ; $48d5: $7b
    ld [hl], h                                    ; $48d6: $74
    cp a                                          ; $48d7: $bf
    ld h, d                                       ; $48d8: $62
    add l                                         ; $48d9: $85
    daa                                           ; $48da: $27
    db $e4                                        ; $48db: $e4
    rst $38                                       ; $48dc: $ff
    add c                                         ; $48dd: $81
    or c                                          ; $48de: $b1
    sub h                                         ; $48df: $94
    rst $38                                       ; $48e0: $ff
    reti                                          ; $48e1: $d9


    xor d                                         ; $48e2: $aa
    xor a                                         ; $48e3: $af
    db $fc                                        ; $48e4: $fc
    reti                                          ; $48e5: $d9


    rst $38                                       ; $48e6: $ff
    dec b                                         ; $48e7: $05
    nop                                           ; $48e8: $00
    sbc h                                         ; $48e9: $9c
    cp a                                          ; $48ea: $bf
    and l                                         ; $48eb: $a5
    rst $08                                       ; $48ec: $cf
    ld a, a                                       ; $48ed: $7f
    rst $28                                       ; $48ee: $ef
    xor b                                         ; $48ef: $a8
    ld c, e                                       ; $48f0: $4b
    ld a, h                                       ; $48f1: $7c
    ld d, c                                       ; $48f2: $51
    ld b, l                                       ; $48f3: $45
    ld d, h                                       ; $48f4: $54
    rla                                           ; $48f5: $17
    nop                                           ; $48f6: $00
    ld c, $3f                                     ; $48f7: $0e $3f
    dec e                                         ; $48f9: $1d
    sub [hl]                                      ; $48fa: $96
    ld d, h                                       ; $48fb: $54
    sub h                                         ; $48fc: $94
    db $ec                                        ; $48fd: $ec
    cp a                                          ; $48fe: $bf
    ld b, [hl]                                    ; $48ff: $46
    res 6, [hl]                                   ; $4900: $cb $b6
    adc c                                         ; $4902: $89
    ld e, e                                       ; $4903: $5b
    db $fc                                        ; $4904: $fc
    sub h                                         ; $4905: $94
    ld [hl], l                                    ; $4906: $75
    sub [hl]                                      ; $4907: $96
    add hl, hl                                    ; $4908: $29
    ld h, e                                       ; $4909: $63
    db $db                                        ; $490a: $db
    ld c, l                                       ; $490b: $4d
    and h                                         ; $490c: $a4
    ld sp, $6120                                  ; $490d: $31 $20 $61
    db $fd                                        ; $4910: $fd
    ld e, a                                       ; $4911: $5f
    call c, $9c00                                 ; $4912: $dc $00 $9c
    jp hl                                         ; $4915: $e9


    rst $08                                       ; $4916: $cf
    cp c                                          ; $4917: $b9
    push af                                       ; $4918: $f5
    cp [hl]                                       ; $4919: $be
    ccf                                           ; $491a: $3f
    ld c, $6e                                     ; $491b: $0e $6e
    ccf                                           ; $491d: $3f
    or a                                          ; $491e: $b7
    ld hl, sp+$46                                 ; $491f: $f8 $46
    rst $30                                       ; $4921: $f7
    ld e, a                                       ; $4922: $5f
    rst $10                                       ; $4923: $d7
    and l                                         ; $4924: $a5
    ld a, [bc]                                    ; $4925: $0a
    ld h, c                                       ; $4926: $61
    cp $ad                                        ; $4927: $fe $ad
    ld [hl], h                                    ; $4929: $74
    ld e, c                                       ; $492a: $59
    ld e, $54                                     ; $492b: $1e $54
    ld e, d                                       ; $492d: $5a
    ld b, e                                       ; $492e: $43
    ld hl, sp-$47                                 ; $492f: $f8 $b9
    ld bc, $e80e                                  ; $4931: $01 $0e $e8
    ld h, $d5                                     ; $4934: $26 $d5
    ei                                            ; $4936: $fb
    cp $38                                        ; $4937: $fe $38
    rst $18                                       ; $4939: $df
    jp nz, Jump_05c_5bfc                          ; $493a: $c2 $fc $5b

    or l                                          ; $493d: $b5
    ld e, e                                       ; $493e: $5b
    ld e, d                                       ; $493f: $5a
    ld b, e                                       ; $4940: $43
    ld hl, sp-$6d                                 ; $4941: $f8 $93
    adc d                                         ; $4943: $8a
    ld l, [hl]                                    ; $4944: $6e
    ld d, d                                       ; $4945: $52
    add l                                         ; $4946: $85
    db $fc                                        ; $4947: $fc
    call z, $5b3a                                 ; $4948: $cc $3a $5b
    db $db                                        ; $494b: $db
    sbc h                                         ; $494c: $9c
    ld e, d                                       ; $494d: $5a
    sub [hl]                                      ; $494e: $96
    ld [hl], c                                    ; $494f: $71
    db $dd                                        ; $4950: $dd
    ld b, h                                       ; $4951: $44
    and l                                         ; $4952: $a5
    dec sp                                        ; $4953: $3b
    ld d, $42                                     ; $4954: $16 $42
    dec l                                         ; $4956: $2d
    call c, Call_05c_6f19                         ; $4957: $dc $19 $6f
    cp l                                          ; $495a: $bd
    rla                                           ; $495b: $17
    nop                                           ; $495c: $00
    ld e, $bd                                     ; $495d: $1e $bd
    ld l, h                                       ; $495f: $6c
    inc c                                         ; $4960: $0c
    or [hl]                                       ; $4961: $b6
    dec h                                         ; $4962: $25
    or h                                          ; $4963: $b4
    ld d, a                                       ; $4964: $57
    db $ed                                        ; $4965: $ed
    ld e, d                                       ; $4966: $5a
    sub e                                         ; $4967: $93
    or b                                          ; $4968: $b0
    db $e4                                        ; $4969: $e4
    db $e3                                        ; $496a: $e3
    sbc d                                         ; $496b: $9a
    adc $0f                                       ; $496c: $ce $0f
    ret z                                         ; $496e: $c8

    sbc a                                         ; $496f: $9f
    cp $4b                                        ; $4970: $fe $4b
    db $fc                                        ; $4972: $fc
    ld [hl], h                                    ; $4973: $74
    sub e                                         ; $4974: $93
    adc d                                         ; $4975: $8a
    or d                                          ; $4976: $b2
    ld l, [hl]                                    ; $4977: $6e
    ld [hl+], a                                   ; $4978: $22
    dec e                                         ; $4979: $1d
    ld c, d                                       ; $497a: $4a
    or a                                          ; $497b: $b7
    adc d                                         ; $497c: $8a
    db $f4                                        ; $497d: $f4
    ld h, l                                       ; $497e: $65
    ld a, a                                       ; $497f: $7f
    ld a, [$8a93]                                 ; $4980: $fa $93 $8a
    sbc l                                         ; $4983: $9d
    and h                                         ; $4984: $a4
    ld a, e                                       ; $4985: $7b
    ld c, a                                       ; $4986: $4f
    inc de                                        ; $4987: $13
    sub l                                         ; $4988: $95
    db $fc                                        ; $4989: $fc
    jr c, jr_05c_4a07                             ; $498a: $38 $7b

    sbc d                                         ; $498c: $9a
    ld l, $00                                     ; $498d: $2e $00
    sbc [hl]                                      ; $498f: $9e
    ld h, d                                       ; $4990: $62
    dec h                                         ; $4991: $25
    dec d                                         ; $4992: $15
    rrc l                                         ; $4993: $cb $0d
    nop                                           ; $4995: $00
    inc e                                         ; $4996: $1c
    daa                                           ; $4997: $27
    sub h                                         ; $4998: $94
    ccf                                           ; $4999: $3f
    jp $b7fc                                      ; $499a: $c3 $fc $b7


    and d                                         ; $499d: $a2
    xor [hl]                                      ; $499e: $ae
    db $eb                                        ; $499f: $eb
    ld [bc], a                                    ; $49a0: $02
    ld e, $bd                                     ; $49a1: $1e $bd
    xor $b1                                       ; $49a3: $ee $b1
    sub $9f                                       ; $49a5: $d6 $9f
    ld d, h                                       ; $49a7: $54
    ld [hl], h                                    ; $49a8: $74
    sub e                                         ; $49a9: $93
    and $a8                                       ; $49aa: $e6 $a8
    xor l                                         ; $49ac: $ad
    add h                                         ; $49ad: $84
    cp [hl]                                       ; $49ae: $be
    sbc a                                         ; $49af: $9f
    add hl, bc                                    ; $49b0: $09
    ld c, e                                       ; $49b1: $4b
    add hl, sp                                    ; $49b2: $39
    xor $fd                                       ; $49b3: $ee $fd
    ld [hl], e                                    ; $49b5: $73
    cp $96                                        ; $49b6: $fe $96
    ld [$7f7d], a                                 ; $49b8: $ea $7d $7f
    sbc h                                         ; $49bb: $9c
    cp a                                          ; $49bc: $bf
    nop                                           ; $49bd: $00
    sbc [hl]                                      ; $49be: $9e
    ccf                                           ; $49bf: $3f
    jp Jump_05c_78a4                              ; $49c0: $c3 $a4 $78


    sbc [hl]                                      ; $49c3: $9e
    or c                                          ; $49c4: $b1
    adc h                                         ; $49c5: $8c
    dec de                                        ; $49c6: $1b
    nop                                           ; $49c7: $00
    ld a, h                                       ; $49c8: $7c
    db $db                                        ; $49c9: $db
    ld d, c                                       ; $49ca: $51
    ld a, [c]                                     ; $49cb: $f2
    inc d                                         ; $49cc: $14
    ld l, e                                       ; $49cd: $6b
    ld c, e                                       ; $49ce: $4b
    sub e                                         ; $49cf: $93
    ld a, [c]                                     ; $49d0: $f2
    add l                                         ; $49d1: $85
    ld [bc], a                                    ; $49d2: $02
    ld e, $8f                                     ; $49d3: $1e $8f
    ld [hl], c                                    ; $49d5: $71
    and d                                         ; $49d6: $a2
    xor [hl]                                      ; $49d7: $ae
    db $eb                                        ; $49d8: $eb
    jp nc, $e319                                  ; $49d9: $d2 $19 $e3

    ld b, h                                       ; $49dc: $44
    dec h                                         ; $49dd: $25
    dec d                                         ; $49de: $15
    db $dd                                        ; $49df: $dd
    and h                                         ; $49e0: $a4
    sub h                                         ; $49e1: $94
    ld c, d                                       ; $49e2: $4a
    ld e, b                                       ; $49e3: $58
    sbc d                                         ; $49e4: $9a
    and e                                         ; $49e5: $a3
    ld a, [bc]                                    ; $49e6: $0a
    call Call_000_12fe                            ; $49e7: $cd $fe $12
    rrca                                          ; $49ea: $0f
    ld d, l                                       ; $49eb: $55
    or h                                          ; $49ec: $b4
    ld a, [c]                                     ; $49ed: $f2
    rst $18                                       ; $49ee: $df
    jp nc, $b8c9                                  ; $49ef: $d2 $c9 $b8

    ld a, d                                       ; $49f2: $7a
    or a                                          ; $49f3: $b7
    call nc, $8f0f                                ; $49f4: $d4 $0f $8f
    ld l, [hl]                                    ; $49f7: $6e
    cp h                                          ; $49f8: $bc
    ld a, a                                       ; $49f9: $7f
    jp c, $005e                                   ; $49fa: $da $5e $00

    ret nc                                        ; $49fd: $d0

    rst $30                                       ; $49fe: $f7
    dec e                                         ; $49ff: $1d
    jp z, Jump_000_3571                           ; $4a00: $ca $71 $35

    adc c                                         ; $4a03: $89
    xor d                                         ; $4a04: $aa
    inc sp                                        ; $4a05: $33
    ld d, d                                       ; $4a06: $52

jr_05c_4a07:
    inc d                                         ; $4a07: $14
    sub c                                         ; $4a08: $91
    ld a, [$afe7]                                 ; $4a09: $fa $e7 $af
    ld l, l                                       ; $4a0c: $6d
    dec h                                         ; $4a0d: $25
    dec b                                         ; $4a0e: $05
    cp a                                          ; $4a0f: $bf
    inc a                                         ; $4a10: $3c
    push bc                                       ; $4a11: $c5
    ld [de], a                                    ; $4a12: $12
    sub [hl]                                      ; $4a13: $96
    ld a, [c]                                     ; $4a14: $f2
    ld h, a                                       ; $4a15: $67
    rst $30                                       ; $4a16: $f7
    ld e, e                                       ; $4a17: $5b
    xor a                                         ; $4a18: $af
    ld a, d                                       ; $4a19: $7a
    or b                                          ; $4a1a: $b0
    db $fc                                        ; $4a1b: $fc
    call Call_05c_4d5e                            ; $4a1c: $cd $5e $4d
    ld [hl], h                                    ; $4a1f: $74
    ld c, $5d                                     ; $4a20: $0e $5d
    ld [c], a                                     ; $4a22: $e2
    adc e                                         ; $4a23: $8b
    ld a, [hl+]                                   ; $4a24: $2a
    and d                                         ; $4a25: $a2
    sub d                                         ; $4a26: $92
    push bc                                       ; $4a27: $c5
    ld h, b                                       ; $4a28: $60
    rst $38                                       ; $4a29: $ff
    ld sp, hl                                     ; $4a2a: $f9
    ld a, a                                       ; $4a2b: $7f
    add hl, hl                                    ; $4a2c: $29
    dec e                                         ; $4a2d: $1d
    ld e, b                                       ; $4a2e: $58
    ld de, $5116                                  ; $4a2f: $11 $16 $51
    rla                                           ; $4a32: $17
    nop                                           ; $4a33: $00
    ld c, $63                                     ; $4a34: $0e $63
    rst $20                                       ; $4a36: $e7

Jump_05c_4a37:
    ld b, h                                       ; $4a37: $44
    ld l, [hl]                                    ; $4a38: $6e
    ld b, c                                       ; $4a39: $41
    xor a                                         ; $4a3a: $af
    and $af                                       ; $4a3b: $e6 $af
    ld a, [$b8df]                                 ; $4a3d: $fa $df $b8
    ld bc, $1d8e                                  ; $4a40: $01 $8e $1d
    sub d                                         ; $4a43: $92
    dec c                                         ; $4a44: $0d
    db $ec                                        ; $4a45: $ec
    ld a, [hl]                                    ; $4a46: $7e
    ld sp, hl                                     ; $4a47: $f9
    ld [hl], c                                    ; $4a48: $71
    ret z                                         ; $4a49: $c8

    ld a, [hl-]                                   ; $4a4a: $3a
    cp e                                          ; $4a4b: $bb
    xor [hl]                                      ; $4a4c: $ae
    ld c, e                                       ; $4a4d: $4b
    ld d, $c2                                     ; $4a4e: $16 $c2
    ld d, d                                       ; $4a50: $52
    pop de                                        ; $4a51: $d1
    db $e4                                        ; $4a52: $e4
    add d                                         ; $4a53: $82
    adc c                                         ; $4a54: $89
    ld c, d                                       ; $4a55: $4a
    sbc l                                         ; $4a56: $9d
    or c                                          ; $4a57: $b1
    sbc e                                         ; $4a58: $9b
    cp d                                          ; $4a59: $ba
    or e                                          ; $4a5a: $b3
    ld c, e                                       ; $4a5b: $4b
    sbc h                                         ; $4a5c: $9c
    ld d, c                                       ; $4a5d: $51
    ld a, [c]                                     ; $4a5e: $f2
    adc c                                         ; $4a5f: $89
    call z, Call_05c_5848                         ; $4a60: $cc $48 $58
    jp c, $8333                                   ; $4a63: $da $33 $83

    ld c, d                                       ; $4a66: $4a
    ld b, l                                       ; $4a67: $45
    sub e                                         ; $4a68: $93
    ld l, e                                       ; $4a69: $6b
    dec hl                                        ; $4a6a: $2b
    ld c, d                                       ; $4a6b: $4a
    ld [hl], e                                    ; $4a6c: $73
    and h                                         ; $4a6d: $a4
    rst $30                                       ; $4a6e: $f7
    cp b                                          ; $4a6f: $b8
    nop                                           ; $4a70: $00
    sbc h                                         ; $4a71: $9c
    ld d, c                                       ; $4a72: $51
    sbc d                                         ; $4a73: $9a
    jr c, jr_05c_4ac7                             ; $4a74: $38 $51

    ld a, $91                                     ; $4a76: $3e $91
    or b                                          ; $4a78: $b0
    or h                                          ; $4a79: $b4
    ld h, a                                       ; $4a7a: $67
    ld b, $95                                     ; $4a7b: $06 $95
    adc d                                         ; $4a7d: $8a
    ld h, $d7                                     ; $4a7e: $26 $d7
    ld d, [hl]                                    ; $4a80: $56
    call nc, Call_000_0005                        ; $4a81: $d4 $05 $00
    inc a                                         ; $4a84: $3c
    pop de                                        ; $4a85: $d1
    db $eb                                        ; $4a86: $eb
    scf                                           ; $4a87: $37

Call_05c_4a88:
    ld a, [$c0ce]                                 ; $4a88: $fa $ce $c0
    inc bc                                        ; $4a8b: $03
    rst $28                                       ; $4a8c: $ef
    rst $20                                       ; $4a8d: $e7
    ld d, $47                                     ; $4a8e: $16 $47
    ld d, l                                       ; $4a90: $55
    ld c, h                                       ; $4a91: $4c
    ld e, e                                       ; $4a92: $5b
    ld e, c                                       ; $4a93: $59
    jr z, jr_05c_4aec                             ; $4a94: $28 $56

    sub c                                         ; $4a96: $91
    or $56                                        ; $4a97: $f6 $56
    sub $9a                                       ; $4a99: $d6 $9a
    sub h                                         ; $4a9b: $94
    ld [hl], l                                    ; $4a9c: $75
    inc de                                        ; $4a9d: $13
    ret                                           ; $4a9e: $c9


    or [hl]                                       ; $4a9f: $b6
    adc c                                         ; $4aa0: $89
    dec de                                        ; $4aa1: $1b
    nop                                           ; $4aa2: $00
    ld a, h                                       ; $4aa3: $7c
    db $db                                        ; $4aa4: $db
    and h                                         ; $4aa5: $a4
    dec sp                                        ; $4aa6: $3b
    ld d, h                                       ; $4aa7: $54
    ld e, c                                       ; $4aa8: $59
    xor e                                         ; $4aa9: $ab
    inc hl                                        ; $4aaa: $23
    add l                                         ; $4aab: $85

jr_05c_4aac:
    db $10                                        ; $4aac: $10
    dec d                                         ; $4aad: $15
    inc d                                         ; $4aae: $14
    nop                                           ; $4aaf: $00
    inc a                                         ; $4ab0: $3c
    sbc a                                         ; $4ab1: $9f
    db $10                                        ; $4ab2: $10
    ld e, e                                       ; $4ab3: $5b
    adc b                                         ; $4ab4: $88
    db $ec                                        ; $4ab5: $ec
    dec bc                                        ; $4ab6: $0b
    scf                                           ; $4ab7: $37
    xor c                                         ; $4ab8: $a9
    add sp, $26                                   ; $4ab9: $e8 $26
    ld sp, hl                                     ; $4abb: $f9
    inc c                                         ; $4abc: $0c
    inc de                                        ; $4abd: $13
    inc c                                         ; $4abe: $0c
    inc sp                                        ; $4abf: $33
    ld h, h                                       ; $4ac0: $64
    db $db                                        ; $4ac1: $db
    jp nz, Jump_05c_5bfc                          ; $4ac2: $c2 $fc $5b

    rst $20                                       ; $4ac5: $e7
    or a                                          ; $4ac6: $b7

jr_05c_4ac7:
    ei                                            ; $4ac7: $fb
    dec hl                                        ; $4ac8: $2b
    and d                                         ; $4ac9: $a2
    add l                                         ; $4aca: $85
    rst $30                                       ; $4acb: $f7
    or a                                          ; $4acc: $b7
    adc $b8                                       ; $4acd: $ce $b8
    ld [hl], c                                    ; $4acf: $71
    ld c, h                                       ; $4ad0: $4c
    adc e                                         ; $4ad1: $8b
    or d                                          ; $4ad2: $b2
    sub a                                         ; $4ad3: $97
    dec c                                         ; $4ad4: $0d
    add h                                         ; $4ad5: $84
    rst $38                                       ; $4ad6: $ff
    rst $28                                       ; $4ad7: $ef
    rst $38                                       ; $4ad8: $ff
    jp nc, Jump_000_3cdc                          ; $4ad9: $d2 $dc $3c

    add sp, -$6e                                  ; $4adc: $e8 $92
    rst $20                                       ; $4ade: $e7
    pop bc                                        ; $4adf: $c1
    inc c                                         ; $4ae0: $0c
    ld [hl], l                                    ; $4ae1: $75
    ld a, [hl]                                    ; $4ae2: $7e
    cp e                                          ; $4ae3: $bb
    ld [hl], c                                    ; $4ae4: $71
    push de                                       ; $4ae5: $d5
    dec de                                        ; $4ae6: $1b
    sbc l                                         ; $4ae7: $9d
    ld e, c                                       ; $4ae8: $59
    xor a                                         ; $4ae9: $af
    ld a, [hl+]                                   ; $4aea: $2a
    db $e4                                        ; $4aeb: $e4

jr_05c_4aec:
    cpl                                           ; $4aec: $2f
    dec de                                        ; $4aed: $1b
    ld d, l                                       ; $4aee: $55
    inc bc                                        ; $4aef: $03
    reti                                          ; $4af0: $d9


    ld [hl], a                                    ; $4af1: $77
    ld d, d                                       ; $4af2: $52
    ld e, $af                                     ; $4af3: $1e $af
    rra                                           ; $4af5: $1f
    cp l                                          ; $4af6: $bd
    xor l                                         ; $4af7: $ad
    cp $9d                                        ; $4af8: $fe $9d
    cp b                                          ; $4afa: $b8
    ld a, [$f7fc]                                 ; $4afb: $fa $fc $f7
    adc [hl]                                      ; $4afe: $8e
    ld d, $fc                                     ; $4aff: $16 $fc
    ld [c], a                                     ; $4b01: $e2
    ld c, e                                       ; $4b02: $4b
    ret nz                                        ; $4b03: $c0

    add e                                         ; $4b04: $83
    ld h, a                                       ; $4b05: $67
    rst $30                                       ; $4b06: $f7
    ld h, $fc                                     ; $4b07: $26 $fc
    cp d                                          ; $4b09: $ba
    rst $00                                       ; $4b0a: $c7
    add sp, $5e                                   ; $4b0b: $e8 $5e
    ld e, c                                       ; $4b0d: $59
    ld a, [$6e73]                                 ; $4b0e: $fa $73 $6e
    cp l                                          ; $4b11: $bd
    rst $28                                       ; $4b12: $ef
    adc a                                         ; $4b13: $8f
    di                                            ; $4b14: $f3
    xor l                                         ; $4b15: $ad
    jr c, jr_05c_4aac                             ; $4b16: $38 $94

    rst $28                                       ; $4b18: $ef
    or h                                          ; $4b19: $b4
    cp l                                          ; $4b1a: $bd
    db $e4                                        ; $4b1b: $e4
    ld de, $9476                                  ; $4b1c: $11 $76 $94
    sbc d                                         ; $4b1f: $9a
    ld l, [hl]                                    ; $4b20: $6e
    ld [de], a                                    ; $4b21: $12
    sub [hl]                                      ; $4b22: $96
    ld a, [c]                                     ; $4b23: $f2
    ld h, a                                       ; $4b24: $67
    rst $30                                       ; $4b25: $f7
    ld e, e                                       ; $4b26: $5b
    xor a                                         ; $4b27: $af
    ld a, b                                       ; $4b28: $78
    rst $38                                       ; $4b29: $ff
    call z, $3867                                 ; $4b2a: $cc $67 $38
    dec l                                         ; $4b2d: $2d
    ld c, d                                       ; $4b2e: $4a
    jp hl                                         ; $4b2f: $e9


    cp a                                          ; $4b30: $bf
    ld [hl], l                                    ; $4b31: $75
    ld e, h                                       ; $4b32: $5c
    add d                                         ; $4b33: $82
    ld a, $ab                                     ; $4b34: $3e $ab
    dec sp                                        ; $4b36: $3b
    ld d, $42                                     ; $4b37: $16 $42
    dec h                                         ; $4b39: $25
    inc l                                         ; $4b3a: $2c
    push hl                                       ; $4b3b: $e5
    rst $08                                       ; $4b3c: $cf
    xor $b7                                       ; $4b3d: $ee $b7
    ld e, [hl]                                    ; $4b3f: $5e
    ld e, c                                       ; $4b40: $59
    ld c, h                                       ; $4b41: $4c
    call c, $ee8e                                 ; $4b42: $dc $8e $ee
    rst $08                                       ; $4b45: $cf
    ld e, a                                       ; $4b46: $5f
    ldh a, [$c0]                                  ; $4b47: $f0 $c0
    ei                                            ; $4b49: $fb
    xor a                                         ; $4b4a: $af
    db $eb                                        ; $4b4b: $eb
    ld [bc], a                                    ; $4b4c: $02
    ld a, h                                       ; $4b4d: $7c
    db $db                                        ; $4b4e: $db
    and h                                         ; $4b4f: $a4
    inc [hl]                                      ; $4b50: $34
    db $e3                                        ; $4b51: $e3
    ld [$648c], a                                 ; $4b52: $ea $8c $64
    cp e                                          ; $4b55: $bb
    ld c, l                                       ; $4b56: $4d
    jp nz, Jump_000_0282                          ; $4b57: $c2 $82 $02

    ret nc                                        ; $4b5a: $d0

    and l                                         ; $4b5b: $a5
    sbc $80                                       ; $4b5c: $de $80
    ret nc                                        ; $4b5e: $d0

    dec h                                         ; $4b5f: $25
    add sp, $74                                   ; $4b60: $e8 $74
    sub d                                         ; $4b62: $92
    ld a, [c]                                     ; $4b63: $f2
    ccf                                           ; $4b64: $3f
    rst $30                                       ; $4b65: $f7
    sbc d                                         ; $4b66: $9a
    ldh [$81], a                                  ; $4b67: $e0 $81
    rst $30                                       ; $4b69: $f7
    rlc [hl]                                      ; $4b6a: $cb $06
    jp nz, $eaff                                  ; $4b6c: $c2 $ff $ea

    ld [hl], c                                    ; $4b6f: $71
    ld [c], a                                     ; $4b70: $e2

Jump_05c_4b71:
    db $f4                                        ; $4b71: $f4
    ld e, a                                       ; $4b72: $5f
    ld [c], a                                     ; $4b73: $e2
    adc h                                         ; $4b74: $8c
    ld d, d                                       ; $4b75: $52
    pop de                                        ; $4b76: $d1
    adc h                                         ; $4b77: $8c
    sub b                                         ; $4b78: $90
    ld l, l                                       ; $4b79: $6d
    ld [hl], a                                    ; $4b7a: $77
    call nc, Call_000_0005                        ; $4b7b: $d4 $05 $00
    ld e, $0d                                     ; $4b7e: $1e $0d
    cp h                                          ; $4b80: $bc
    rst $38                                       ; $4b81: $ff
    push bc                                       ; $4b82: $c5
    halt                                          ; $4b83: $76
    cp e                                          ; $4b84: $bb
    adc c                                         ; $4b85: $89
    sub h                                         ; $4b86: $94
    rst $38                                       ; $4b87: $ff
    sub [hl]                                      ; $4b88: $96
    or d                                          ; $4b89: $b2
    inc d                                         ; $4b8a: $14
    ld [de], a                                    ; $4b8b: $12
    rst $20                                       ; $4b8c: $e7
    call nz, $be25                                ; $4b8d: $c4 $25 $be
    xor b                                         ; $4b90: $a8
    sub b                                         ; $4b91: $90
    ld l, l                                       ; $4b92: $6d
    sub c                                         ; $4b93: $91
    ld a, [c]                                     ; $4b94: $f2
    rst $38                                       ; $4b95: $ff
    ld c, d                                       ; $4b96: $4a
    ld [$22de], a                                 ; $4b97: $ea $de $22
    and l                                         ; $4b9a: $a5
    inc bc                                        ; $4b9b: $03
    ld c, a                                       ; $4b9c: $4f
    and h                                         ; $4b9d: $a4
    sub b                                         ; $4b9e: $90
    dec l                                         ; $4b9f: $2d
    ld a, c                                       ; $4ba0: $79
    adc d                                         ; $4ba1: $8a
    or l                                          ; $4ba2: $b5
    sub $2f                                       ; $4ba3: $d6 $2f
    ld hl, sp+$15                                 ; $4ba5: $f8 $15
    ld l, l                                       ; $4ba7: $6d
    ld e, e                                       ; $4ba8: $5b
    or d                                          ; $4ba9: $b2
    db $ed                                        ; $4baa: $ed
    adc [hl]                                      ; $4bab: $8e
    jp nc, $e3fb                                  ; $4bac: $d2 $fb $e3

    cpl                                           ; $4baf: $2f
    ld [hl], c                                    ; $4bb0: $71
    ld d, h                                       ; $4bb1: $54
    push bc                                       ; $4bb2: $c5
    db $eb                                        ; $4bb3: $eb
    cp $9e                                        ; $4bb4: $fe $9e
    rst $38                                       ; $4bb6: $ff
    sub l                                         ; $4bb7: $95
    inc d                                         ; $4bb8: $14
    rst $08                                       ; $4bb9: $cf
    inc sp                                        ; $4bba: $33
    sub [hl]                                      ; $4bbb: $96
    ld e, l                                       ; $4bbc: $5d
    rst $10                                       ; $4bbd: $d7
    dec h                                         ; $4bbe: $25
    inc a                                         ; $4bbf: $3c
    pop de                                        ; $4bc0: $d1
    ld l, d                                       ; $4bc1: $6a
    or h                                          ; $4bc2: $b4
    db $fd                                        ; $4bc3: $fd
    cpl                                           ; $4bc4: $2f
    db $dd                                        ; $4bc5: $dd
    sbc a                                         ; $4bc6: $9f
    or $e7                                        ; $4bc7: $f6 $e7
    xor a                                         ; $4bc9: $af
    inc a                                         ; $4bca: $3c
    ld c, [hl]                                    ; $4bcb: $4e
    adc d                                         ; $4bcc: $8a
    rla                                           ; $4bcd: $17
    nop                                           ; $4bce: $00
    sbc h                                         ; $4bcf: $9c
    and c                                         ; $4bd0: $a1
    ld e, b                                       ; $4bd1: $58
    dec [hl]                                      ; $4bd2: $35
    xor $bd                                       ; $4bd3: $ee $bd
    dec [hl]                                      ; $4bd5: $35
    ld a, [$e792]                                 ; $4bd6: $fa $92 $e7
    cp b                                          ; $4bd9: $b8
    adc d                                         ; $4bda: $8a
    ld c, l                                       ; $4bdb: $4d
    xor d                                         ; $4bdc: $aa
    or d                                          ; $4bdd: $b2
    ld d, [hl]                                    ; $4bde: $56
    ld d, e                                       ; $4bdf: $53
    sub $59                                       ; $4be0: $d6 $59
    and [hl]                                      ; $4be2: $a6
    ccf                                           ; $4be3: $3f
    cp b                                          ; $4be4: $b8
    db $dd                                        ; $4be5: $dd
    rst $38                                       ; $4be6: $ff
    ld a, [$ac33]                                 ; $4be7: $fa $33 $ac
    ld e, a                                       ; $4bea: $5f
    ld h, e                                       ; $4beb: $63
    ld b, b                                       ; $4bec: $40
    jp nz, $bffa                                  ; $4bed: $c2 $fa $bf

    cp b                                          ; $4bf0: $b8
    ld bc, $b8fc                                  ; $4bf1: $01 $fc $b8
    add hl, sp                                    ; $4bf4: $39
    ld l, [hl]                                    ; $4bf5: $6e
    call Call_05c_452d                            ; $4bf6: $cd $2d $45
    scf                                           ; $4bf9: $37
    jp hl                                         ; $4bfa: $e9


    ld [hl], b                                    ; $4bfb: $70
    ld h, l                                       ; $4bfc: $65
    ld c, l                                       ; $4bfd: $4d
    ld l, e                                       ; $4bfe: $6b
    db $db                                        ; $4bff: $db
    ld l, d                                       ; $4c00: $6a
    xor d                                         ; $4c01: $aa
    adc d                                         ; $4c02: $8a
    and h                                         ; $4c03: $a4
    inc e                                         ; $4c04: $1c
    ld h, d                                       ; $4c05: $62
    ld [hl], a                                    ; $4c06: $77
    or b                                          ; $4c07: $b0
    dec bc                                        ; $4c08: $0b
    nop                                           ; $4c09: $00
    ld a, h                                       ; $4c0a: $7c
    and e                                         ; $4c0b: $a3
    ei                                            ; $4c0c: $fb
    ld [hl], l                                    ; $4c0d: $75
    ld l, a                                       ; $4c0e: $6f
    sub c                                         ; $4c0f: $91
    adc $18                                       ; $4c10: $ce $18
    ld h, a                                       ; $4c12: $67

jr_05c_4c13:
    dec hl                                        ; $4c13: $2b
    xor c                                         ; $4c14: $a9
    add sp, $26                                   ; $4c15: $e8 $26
    pop af                                        ; $4c17: $f1
    cp $99                                        ; $4c18: $fe $99
    rst $08                                       ; $4c1a: $cf
    ret nc                                        ; $4c1b: $d0

    xor [hl]                                      ; $4c1c: $ae
    db $eb                                        ; $4c1d: $eb
    ld d, d                                       ; $4c1e: $52
    ld c, d                                       ; $4c1f: $4a
    and l                                         ; $4c20: $a5
    ld e, $d5                                     ; $4c21: $1e $d5
    ld h, e                                       ; $4c23: $63
    ld d, l                                       ; $4c24: $55
    cp e                                          ; $4c25: $bb
    and l                                         ; $4c26: $a5
    ld a, h                                       ; $4c27: $7c
    db $d3                                        ; $4c28: $d3
    rst $38                                       ; $4c29: $ff
    db $fc                                        ; $4c2a: $fc
    ld c, e                                       ; $4c2b: $4b
    rst $30                                       ; $4c2c: $f7
    sub $f8                                       ; $4c2d: $d6 $f8
    dec bc                                        ; $4c2f: $0b
    nop                                           ; $4c30: $00
    sbc [hl]                                      ; $4c31: $9e
    ccf                                           ; $4c32: $3f
    cp e                                          ; $4c33: $bb
    rst $18                                       ; $4c34: $df
    ld a, d                                       ; $4c35: $7a
    sub l                                         ; $4c36: $95
    ld l, a                                       ; $4c37: $6f
    ld a, [$b73f]                                 ; $4c38: $fa $3f $b7
    ld l, $f1                                     ; $4c3b: $2e $f1
    ld d, b                                       ; $4c3d: $50
    add hl, hl                                    ; $4c3e: $29
    rst $18                                       ; $4c3f: $df
    db $f4                                        ; $4c40: $f4
    ld l, l                                       ; $4c41: $6d
    or l                                          ; $4c42: $b5
    ld b, [hl]                                    ; $4c43: $46
    ld h, h                                       ; $4c44: $64
    dec sp                                        ; $4c45: $3b
    or a                                          ; $4c46: $b7
    sub d                                         ; $4c47: $92
    sbc d                                         ; $4c48: $9a
    and e                                         ; $4c49: $a3
    sub h                                         ; $4c4a: $94
    add [hl]                                      ; $4c4b: $86
    ld h, $e5                                     ; $4c4c: $26 $e5
    sbc e                                         ; $4c4e: $9b
    ld d, e                                       ; $4c4f: $53
    set 7, [hl]                                   ; $4c50: $cb $fe
    cp $2f                                        ; $4c52: $fe $2f
    db $fd                                        ; $4c54: $fd
    adc $ff                                       ; $4c55: $ce $ff
    jp nc, Jump_05c_71c4                          ; $4c57: $d2 $c4 $71

    add $5f                                       ; $4c5a: $c6 $5f
    nop                                           ; $4c5c: $00
    ld c, $68                                     ; $4c5d: $0e $68
    ld c, e                                       ; $4c5f: $4b
    or [hl]                                       ; $4c60: $b6
    dec [hl]                                      ; $4c61: $35
    ld e, d                                       ; $4c62: $5a
    ldh a, [$8b]                                  ; $4c63: $f0 $8b
    rst $30                                       ; $4c65: $f7
    rst $08                                       ; $4c66: $cf
    ld a, h                                       ; $4c67: $7c
    add [hl]                                      ; $4c68: $86
    db $d3                                        ; $4c69: $d3
    and d                                         ; $4c6a: $a2
    sub h                                         ; $4c6b: $94
    and l                                         ; $4c6c: $a5
    sub b                                         ; $4c6d: $90
    jr nc, jr_05c_4c13                            ; $4c6e: $30 $a3

    ld c, e                                       ; $4c70: $4b
    sbc h                                         ; $4c71: $9c
    db $db                                        ; $4c72: $db
    dec e                                         ; $4c73: $1d
    sub l                                         ; $4c74: $95
    ld d, d                                       ; $4c75: $52
    add hl, hl                                    ; $4c76: $29
    and l                                         ; $4c77: $a5
    cp d                                          ; $4c78: $ba
    xor [hl]                                      ; $4c79: $ae

Jump_05c_4c7a:
    ld c, e                                       ; $4c7a: $4b
    add hl, de                                    ; $4c7b: $19
    db $db                                        ; $4c7c: $db
    xor $55                                       ; $4c7d: $ee $55
    ld e, b                                       ; $4c7f: $58
    inc de                                        ; $4c80: $13
    ret                                           ; $4c81: $c9


    or [hl]                                       ; $4c82: $b6
    add $73                                       ; $4c83: $c6 $73
    inc bc                                        ; $4c85: $03
    ld c, $76                                     ; $4c86: $0e $76
    ld c, e                                       ; $4c88: $4b
    adc l                                         ; $4c89: $8d
    cp l                                          ; $4c8a: $bd
    ld d, $d6                                     ; $4c8b: $16 $d6
    xor e                                         ; $4c8d: $ab
    adc h                                         ; $4c8e: $8c
    ld l, l                                       ; $4c8f: $6d
    rst $30                                       ; $4c90: $f7
    ld e, [hl]                                    ; $4c91: $5e
    ld [c], a                                     ; $4c92: $e2
    ld a, c                                       ; $4c93: $79
    halt                                          ; $4c94: $76
    xor a                                         ; $4c95: $af
    ld a, [c]                                     ; $4c96: $f2
    rst $18                                       ; $4c97: $df
    ld c, d                                       ; $4c98: $4a
    ld a, [hl+]                                   ; $4c99: $2a
    cp d                                          ; $4c9a: $ba
    ld h, e                                       ; $4c9b: $63
    push hl                                       ; $4c9c: $e5
    sub b                                         ; $4c9d: $90
    adc e                                         ; $4c9e: $8b
    ld sp, $f92e                                  ; $4c9f: $31 $2e $f9
    add e                                         ; $4ca2: $83
    or c                                          ; $4ca3: $b1
    pop de                                        ; $4ca4: $d1
    ld c, d                                       ; $4ca5: $4a
    xor c                                         ; $4ca6: $a9
    and d                                         ; $4ca7: $a2
    inc b                                         ; $4ca8: $04
    rst $38                                       ; $4ca9: $ff
    sbc c                                         ; $4caa: $99
    rst $38                                       ; $4cab: $ff
    ld h, l                                       ; $4cac: $65
    cpl                                           ; $4cad: $2f
    rra                                           ; $4cae: $1f
    ld [hl], a                                    ; $4caf: $77
    adc $55                                       ; $4cb0: $ce $55
    sub h                                         ; $4cb2: $94
    db $ed                                        ; $4cb3: $ed
    ld a, l                                       ; $4cb4: $7d
    db $d3                                        ; $4cb5: $d3
    ld e, d                                       ; $4cb6: $5a
    sbc h                                         ; $4cb7: $9c
    ld b, e                                       ; $4cb8: $43
    sbc d                                         ; $4cb9: $9a
    pop bc                                        ; $4cba: $c1
    ret c                                         ; $4cbb: $d8

    sbc a                                         ; $4cbc: $9f
    di                                            ; $4cbd: $f3
    rla                                           ; $4cbe: $17
    nop                                           ; $4cbf: $00
    ld a, h                                       ; $4cc0: $7c
    and e                                         ; $4cc1: $a3
    ei                                            ; $4cc2: $fb
    dec b                                         ; $4cc3: $05
    and e                                         ; $4cc4: $a3
    add hl, hl                                    ; $4cc5: $29
    and l                                         ; $4cc6: $a5
    ld d, d                                       ; $4cc7: $52
    xor h                                         ; $4cc8: $ac
    ld b, [hl]                                    ; $4cc9: $46
    ld a, [hl-]                                   ; $4cca: $3a
    ld a, a                                       ; $4ccb: $7f
    rst $08                                       ; $4ccc: $cf
    add hl, de                                    ; $4ccd: $19
    dec l                                         ; $4cce: $2d
    db $db                                        ; $4ccf: $db
    ld a, [de]                                    ; $4cd0: $1a
    sbc a                                         ; $4cd1: $9f
    ld d, h                                       ; $4cd2: $54
    db $ed                                        ; $4cd3: $ed
    sub [hl]                                      ; $4cd4: $96
    and $98                                       ; $4cd5: $e6 $98
    cpl                                           ; $4cd7: $2f
    db $db                                        ; $4cd8: $db
    xor $28                                       ; $4cd9: $ee $28
    jr z, jr_05c_4cdd                             ; $4cdb: $28 $00

jr_05c_4cdd:
    sbc h                                         ; $4cdd: $9c
    ld hl, $ab3c                                  ; $4cde: $21 $3c $ab
    dec sp                                        ; $4ce1: $3b
    xor h                                         ; $4ce2: $ac
    sbc a                                         ; $4ce3: $9f
    ld l, l                                       ; $4ce4: $6d
    db $ed                                        ; $4ce5: $ed
    dec h                                         ; $4ce6: $25
    ld e, $aa                                     ; $4ce7: $1e $aa
    jr z, jr_05c_4d20                             ; $4ce9: $28 $35

    ld h, l                                       ; $4ceb: $65
    sbc l                                         ; $4cec: $9d
    ld h, l                                       ; $4ced: $65
    ld a, [$57ad]                                 ; $4cee: $fa $ad $57
    ld c, [hl]                                    ; $4cf1: $4e
    ld h, a                                       ; $4cf2: $67
    rst $08                                       ; $4cf3: $cf
    ld hl, $748d                                  ; $4cf4: $21 $8d $74
    cp $9e                                        ; $4cf7: $fe $9e
    di                                            ; $4cf9: $f3
    cp d                                          ; $4cfa: $ba
    or a                                          ; $4cfb: $b7
    add $5f                                       ; $4cfc: $c6 $5f
    ld [c], a                                     ; $4cfe: $e2
    and c                                         ; $4cff: $a1
    ld [de], a                                    ; $4d00: $12
    sub [hl]                                      ; $4d01: $96
    ld l, d                                       ; $4d02: $6a
    or a                                          ; $4d03: $b7
    sub h                                         ; $4d04: $94
    ld a, a                                       ; $4d05: $7f
    sbc d                                         ; $4d06: $9a
    ld a, a                                       ; $4d07: $7f
    ld d, d                                       ; $4d08: $52
    ldh a, [$eb]                                  ; $4d09: $f0 $eb
    sbc $22                                       ; $4d0b: $de $22
    push de                                       ; $4d0d: $d5
    ld l, [hl]                                    ; $4d0e: $6e
    add hl, hl                                    ; $4d0f: $29
    adc l                                         ; $4d10: $8d
    sbc l                                         ; $4d11: $9d
    inc de                                        ; $4d12: $13
    xor a                                         ; $4d13: $af
    db $eb                                        ; $4d14: $eb
    ld [bc], a                                    ; $4d15: $02
    inc e                                         ; $4d16: $1c
    dec [hl]                                      ; $4d17: $35
    ld d, c                                       ; $4d18: $51
    ld [hl], a                                    ; $4d19: $77
    ld e, b                                       ; $4d1a: $58

Call_05c_4d1b:
    ccf                                           ; $4d1b: $3f
    ld e, e                                       ; $4d1c: $5b
    ld e, e                                       ; $4d1d: $5b
    pop hl                                        ; $4d1e: $e1
    add hl, sp                                    ; $4d1f: $39

jr_05c_4d20:
    and e                                         ; $4d20: $a3
    push bc                                       ; $4d21: $c5
    sbc a                                         ; $4d22: $9f
    sbc l                                         ; $4d23: $9d
    call z, Call_05c_74ff                         ; $4d24: $cc $ff $74
    cp [hl]                                       ; $4d27: $be
    reti                                          ; $4d28: $d9


    ld b, e                                       ; $4d29: $43
    ld [hl], c                                    ; $4d2a: $71
    inc bc                                        ; $4d2b: $03
    inc a                                         ; $4d2c: $3c
    ld d, h                                       ; $4d2d: $54
    jp nz, $6fd2                                  ; $4d2e: $c2 $d2 $6f

    cp l                                          ; $4d31: $bd
    xor $ad                                       ; $4d32: $ee $ad
    ld d, c                                       ; $4d34: $51
    sbc d                                         ; $4d35: $9a
    ld e, a                                       ; $4d36: $5f
    ld h, [hl]                                    ; $4d37: $66
    ld e, a                                       ; $4d38: $5f
    ld a, e                                       ; $4d39: $7b
    adc c                                         ; $4d3a: $89
    sbc a                                         ; $4d3b: $9f
    call z, $a928                                 ; $4d3c: $cc $28 $a9
    and d                                         ; $4d3f: $a2
    sbc e                                         ; $4d40: $9b
    add h                                         ; $4d41: $84
    ld sp, hl                                     ; $4d42: $f9
    or a                                          ; $4d43: $b7
    ld l, h                                       ; $4d44: $6c
    ld l, e                                       ; $4d45: $6b
    sbc h                                         ; $4d46: $9c
    inc de                                        ; $4d47: $13
    rla                                           ; $4d48: $17
    nop                                           ; $4d49: $00
    inc e                                         ; $4d4a: $1c
    daa                                           ; $4d4b: $27
    ld e, d                                       ; $4d4c: $5a
    cp a                                          ; $4d4d: $bf
    ld sp, hl                                     ; $4d4e: $f9
    sub a                                         ; $4d4f: $97
    adc $ee                                       ; $4d50: $ce $ee
    sub a                                         ; $4d52: $97
    ld b, [hl]                                    ; $4d53: $46
    rst $00                                       ; $4d54: $c7
    reti                                          ; $4d55: $d9


    or a                                          ; $4d56: $b7
    and h                                         ; $4d57: $a4
    inc e                                         ; $4d58: $1c
    ld h, d                                       ; $4d59: $62
    ld [hl], a                                    ; $4d5a: $77
    or b                                          ; $4d5b: $b0
    ld c, e                                       ; $4d5c: $4b
    inc a                                         ; $4d5d: $3c

Call_05c_4d5e:
    cp b                                          ; $4d5e: $b8
    dec e                                         ; $4d5f: $1d
    daa                                           ; $4d60: $27
    ld c, d                                       ; $4d61: $4a
    or [hl]                                       ; $4d62: $b6
    dec [hl]                                      ; $4d63: $35
    ld a, [hl-]                                   ; $4d64: $3a
    xor c                                         ; $4d65: $a9
    add hl, sp                                    ; $4d66: $39
    ld c, d                                       ; $4d67: $4a

Call_05c_4d68:
    ld a, b                                       ; $4d68: $78
    and d                                         ; $4d69: $a2
    inc d                                         ; $4d6a: $14
    ld h, l                                       ; $4d6b: $65
    ld e, e                                       ; $4d6c: $5b
    ld [$73d1], a                                 ; $4d6d: $ea $d1 $73
    ld l, e                                       ; $4d70: $6b
    or h                                          ; $4d71: $b4
    sbc d                                         ; $4d72: $9a
    sbc d                                         ; $4d73: $9a
    inc [hl]                                      ; $4d74: $34
    ld [hl], a                                    ; $4d75: $77
    xor e                                         ; $4d76: $ab
    ret nc                                        ; $4d77: $d0

    ld a, [$7ff3]                                 ; $4d78: $fa $f3 $7f
    ld sp, hl                                     ; $4d7b: $f9
    or c                                          ; $4d7c: $b1
    ld h, a                                       ; $4d7d: $67
    jp hl                                         ; $4d7e: $e9


    ld [de], a                                    ; $4d7f: $12
    rst $00                                       ; $4d80: $c7
    adc c                                         ; $4d81: $89
    ld d, d                                       ; $4d82: $52
    cp $ec                                        ; $4d83: $fe $ec
    cp $a4                                        ; $4d85: $fe $a4
    and d                                         ; $4d87: $a2
    sbc e                                         ; $4d88: $9b
    inc [hl]                                      ; $4d89: $34
    scf                                           ; $4d8a: $37
    ld e, a                                       ; $4d8b: $5f
    dec e                                         ; $4d8c: $1d
    xor [hl]                                      ; $4d8d: $ae
    xor h                                         ; $4d8e: $ac
    or e                                          ; $4d8f: $b3
    ld c, h                                       ; $4d90: $4c
    ld d, $a5                                     ; $4d91: $16 $a5
    rst $08                                       ; $4d93: $cf
    rst $00                                       ; $4d94: $c7
    add hl, sp                                    ; $4d95: $39
    ld a, a                                       ; $4d96: $7f
    ld bc, $280e                                  ; $4d97: $01 $0e $28
    ld c, d                                       ; $4d9a: $4a
    ld [hl], e                                    ; $4d9b: $73
    di                                            ; $4d9c: $f3
    xor b                                         ; $4d9d: $a8
    and h                                         ; $4d9e: $a4
    xor $d1                                       ; $4d9f: $ee $d1
    db $fd                                        ; $4da1: $fd
    adc d                                         ; $4da2: $8a
    ld d, d                                       ; $4da3: $52
    halt                                          ; $4da4: $76
    rst $18                                       ; $4da5: $df
    call nz, Call_05c_5d18                        ; $4da6: $c4 $18 $5d
    ld [c], a                                     ; $4da9: $e2
    xor b                                         ; $4daa: $a8
    adc c                                         ; $4dab: $89
    or d                                          ; $4dac: $b2
    sub b                                         ; $4dad: $90
    rra                                           ; $4dae: $1f
    ld a, e                                       ; $4daf: $7b
    or [hl]                                       ; $4db0: $b6
    ld h, h                                       ; $4db1: $64
    ld l, e                                       ; $4db2: $6b
    ld [hl], h                                    ; $4db3: $74
    ld c, $41                                     ; $4db4: $0e $41
    adc c                                         ; $4db6: $89

Call_05c_4db7:
    ld [hl], a                                    ; $4db7: $77
    ld l, h                                       ; $4db8: $6c
    call $8597                                    ; $4db9: $cd $97 $85
    ld a, [de]                                    ; $4dbc: $1a

Jump_05c_4dbd:
    rst $30                                       ; $4dbd: $f7
    sbc $4d                                       ; $4dbe: $de $4d
    jp z, $d1ed                                   ; $4dc0: $ca $ed $d1

    xor a                                         ; $4dc3: $af
    ld a, e                                       ; $4dc4: $7b
    ld l, e                                       ; $4dc5: $6b
    ld a, h                                       ; $4dc6: $7c
    ld d, d                                       ; $4dc7: $52
    ld [hl], a                                    ; $4dc8: $77
    ld e, b                                       ; $4dc9: $58
    ccf                                           ; $4dca: $3f
    ld e, e                                       ; $4dcb: $5b
    ld l, [hl]                                    ; $4dcc: $6e
    nop                                           ; $4dcd: $00
    cp h                                          ; $4dce: $bc
    adc [hl]                                      ; $4dcf: $8e
    ld a, c                                       ; $4dd0: $79
    push bc                                       ; $4dd1: $c5
    rst $28                                       ; $4dd2: $ef
    sbc b                                         ; $4dd3: $98
    inc e                                         ; $4dd4: $1c
    ld [hl], d                                    ; $4dd5: $72
    ld a, b                                       ; $4dd6: $78
    ret z                                         ; $4dd7: $c8

    db $eb                                        ; $4dd8: $eb
    or [hl]                                       ; $4dd9: $b6
    db $db                                        ; $4dda: $db
    rla                                           ; $4ddb: $17
    nop                                           ; $4ddc: $00
    db $fc                                        ; $4ddd: $fc
    dec de                                        ; $4dde: $1b
    sbc l                                         ; $4ddf: $9d
    ld e, c                                       ; $4de0: $59
    rst $28                                       ; $4de1: $ef
    ld [hl], l                                    ; $4de2: $75
    ld e, l                                       ; $4de3: $5d
    ld [$4271], a                                 ; $4de4: $ea $71 $42
    ld c, l                                       ; $4de7: $4d
    ld d, l                                       ; $4de8: $55
    sub c                                         ; $4de9: $91
    sub h                                         ; $4dea: $94
    adc a                                         ; $4deb: $8f
    dec sp                                        ; $4dec: $3b
    ccf                                           ; $4ded: $3f
    add hl, hl                                    ; $4dee: $29
    ld hl, sp+$35                                 ; $4def: $f8 $35
    add e                                         ; $4df1: $83
    ld sp, $bdd4                                  ; $4df2: $31 $d4 $bd
    dec [hl]                                      ; $4df5: $35
    adc $09                                       ; $4df6: $ce $09
    db $dd                                        ; $4df8: $dd
    db $db                                        ; $4df9: $db
    and h                                         ; $4dfa: $a4
    and d                                         ; $4dfb: $a2
    add sp, $0b                                   ; $4dfc: $e8 $0b
    nop                                           ; $4dfe: $00
    cp h                                          ; $4dff: $bc
    sbc e                                         ; $4e00: $9b
    xor a                                         ; $4e01: $af
    or b                                          ; $4e02: $b0
    xor [hl]                                      ; $4e03: $ae
    db $eb                                        ; $4e04: $eb
    jp nc, Jump_000_35bd                          ; $4e05: $d2 $bd $35

    ld c, d                                       ; $4e08: $4a
    db $fd                                        ; $4e09: $fd
    ld [hl], $87                                  ; $4e0a: $36 $87
    reti                                          ; $4e0c: $d9


    rst $10                                       ; $4e0d: $d7
    ld e, [hl]                                    ; $4e0e: $5e
    rst $10                                       ; $4e0f: $d7
    dec h                                         ; $4e10: $25
    dec bc                                        ; $4e11: $0b
    ld h, c                                       ; $4e12: $61
    jp hl                                         ; $4e13: $e9


    sbc $1a                                       ; $4e14: $de $1a
    rst $20                                       ; $4e16: $e7
    db $fc                                        ; $4e17: $fc
    ld [hl], l                                    ; $4e18: $75
    ld e, l                                       ; $4e19: $5d
    nop                                           ; $4e1a: $00
    ld a, h                                       ; $4e1b: $7c
    db $db                                        ; $4e1c: $db
    inc b                                         ; $4e1d: $04
    dec b                                         ; $4e1e: $05
    nop                                           ; $4e1f: $00
    ld c, $28                                     ; $4e20: $0e $28
    ld c, d                                       ; $4e22: $4a
    db $db                                        ; $4e23: $db
    ld d, $b5                                     ; $4e24: $16 $b5
    ld a, [c]                                     ; $4e26: $f2
    or a                                          ; $4e27: $b7
    db $e3                                        ; $4e28: $e3
    call nz, Call_05c_664d                        ; $4e29: $c4 $4d $66
    inc h                                         ; $4e2c: $24
    rra                                           ; $4e2d: $1f
    rst $20                                       ; $4e2e: $e7
    rst $38                                       ; $4e2f: $ff
    reti                                          ; $4e30: $d9


Call_05c_4e31:
    cp a                                          ; $4e31: $bf
    call nz, $a271                                ; $4e32: $c4 $71 $a2
    sub h                                         ; $4e35: $94
    db $e3                                        ; $4e36: $e3
    halt                                          ; $4e37: $76
    ld a, a                                       ; $4e38: $7f
    adc l                                         ; $4e39: $8d
    ld d, [hl]                                    ; $4e3a: $56
    ld a, [hl-]                                   ; $4e3b: $3a
    sub $fc                                       ; $4e3c: $d6 $fc
    rra                                           ; $4e3e: $1f
    db $d3                                        ; $4e3f: $d3
    and d                                         ; $4e40: $a2
    ld [hl], h                                    ; $4e41: $74
    rst $38                                       ; $4e42: $ff
    rst $28                                       ; $4e43: $ef
    cp c                                          ; $4e44: $b9
    cp a                                          ; $4e45: $bf
    xor $b0                                       ; $4e46: $ee $b0
    ld a, [hl]                                    ; $4e48: $7e
    ld [hl], $06                                  ; $4e49: $36 $06
    inc h                                         ; $4e4b: $24
    ld [$0e02], a                                 ; $4e4c: $ea $02 $0e
    add hl, sp                                    ; $4e4f: $39
    inc a                                         ; $4e50: $3c
    db $e4                                        ; $4e51: $e4
    ld [hl], l                                    ; $4e52: $75
    ld e, e                                       ; $4e53: $5b
    sbc [hl]                                      ; $4e54: $9e
    cp e                                          ; $4e55: $bb
    db $ed                                        ; $4e56: $ed
    ld sp, $0f34                                  ; $4e57: $31 $34 $0f
    ccf                                           ; $4e5a: $3f
    or h                                          ; $4e5b: $b4
    rst $00                                       ; $4e5c: $c7
    ret nc                                        ; $4e5d: $d0

    ret nc                                        ; $4e5e: $d0

    sub a                                         ; $4e5f: $97
    ld a, b                                       ; $4e60: $78
    dec a                                         ; $4e61: $3d
    db $f4                                        ; $4e62: $f4
    call c, $7143                                 ; $4e63: $dc $43 $71
    jr c, jr_05c_4e78                             ; $4e66: $38 $10

    adc a                                         ; $4e68: $8f
    ld h, e                                       ; $4e69: $63
    ld c, $a0                                     ; $4e6a: $0e $a0
    dec e                                         ; $4e6c: $1d
    adc b                                         ; $4e6d: $88
    rst $18                                       ; $4e6e: $df
    ld l, l                                       ; $4e6f: $6d
    ld c, [hl]                                    ; $4e70: $4e
    ld e, [hl]                                    ; $4e71: $5e
    rst $08                                       ; $4e72: $cf
    jr c, jr_05c_4eae                             ; $4e73: $38 $39

    db $dd                                        ; $4e75: $dd
    halt                                          ; $4e76: $76
    db $db                                        ; $4e77: $db

jr_05c_4e78:
    pop bc                                        ; $4e78: $c1
    dec b                                         ; $4e79: $05
    nop                                           ; $4e7a: $00
    ld c, $1c                                     ; $4e7b: $0e $1c
    add e                                         ; $4e7d: $83
    and $e7                                       ; $4e7e: $e6 $e7
    push af                                       ; $4e80: $f5
    ld h, $29                                     ; $4e81: $26 $29
    ld a, $0f                                     ; $4e83: $3e $0f
    ld sp, hl                                     ; $4e85: $f9
    dec e                                         ; $4e86: $1d
    inc de                                        ; $4e87: $13
    sbc a                                         ; $4e88: $9f
    add a                                         ; $4e89: $87
    ld c, $3c                                     ; $4e8a: $0e $3c
    db $e3                                        ; $4e8c: $e3
    db $e4                                        ; $4e8d: $e4
    ld [hl], a                                    ; $4e8e: $77
    ld e, e                                       ; $4e8f: $5b
    inc e                                         ; $4e90: $1c
    ld c, $c4                                     ; $4e91: $0e $c4
    rst $28                                       ; $4e93: $ef
    sbc c                                         ; $4e94: $99
    rst $00                                       ; $4e95: $c7
    ld e, $7b                                     ; $4e96: $1e $7b
    add $0f                                       ; $4e98: $c6 $0f
    dec h                                         ; $4e9a: $25
    ld a, $0f                                     ; $4e9b: $3e $0f
    dec e                                         ; $4e9d: $1d
    ld a, b                                       ; $4e9e: $78
    and $b1                                       ; $4e9f: $e6 $b1
    rst $00                                       ; $4ea1: $c7
    ld l, [hl]                                    ; $4ea2: $6e
    adc e                                         ; $4ea3: $8b
    jp $f881                                      ; $4ea4: $c3 $81 $f8


    inc a                                         ; $4ea7: $3c
    db $e3                                        ; $4ea8: $e3
    ldh [$e7], a                                  ; $4ea9: $e0 $e7
    sub b                                         ; $4eab: $90
    rst $20                                       ; $4eac: $e7
    ld l, [hl]                                    ; $4ead: $6e

jr_05c_4eae:
    ld a, e                                       ; $4eae: $7b
    add sp, $40                                   ; $4eaf: $e8 $40
    sbc h                                         ; $4eb1: $9c
    ld e, $7a                                     ; $4eb2: $1e $7a
    db $ec                                        ; $4eb4: $ec
    ld sp, $8787                                  ; $4eb5: $31 $87 $87
    ld c, $92                                     ; $4eb8: $0e $92
    ld a, [c]                                     ; $4eba: $f2
    adc b                                         ; $4ebb: $88
    add e                                         ; $4ebc: $83
    ld d, e                                       ; $4ebd: $53
    ld e, $71                                     ; $4ebe: $1e $71
    ldh a, [$7a]                                  ; $4ec0: $f0 $7a
    ld h, $b7                                     ; $4ec2: $26 $b7
    dec e                                         ; $4ec4: $1d
    ldh a, [$bb]                                  ; $4ec5: $f0 $bb
    db $ed                                        ; $4ec7: $ed
    or [hl]                                       ; $4ec8: $b6
    inc a                                         ; $4ec9: $3c
    push af                                       ; $4eca: $f5
    call z, Call_000_3e33                         ; $4ecb: $cc $33 $3e
    rrca                                          ; $4ece: $0f
    dec a                                         ; $4ecf: $3d
    ld [hl], h                                    ; $4ed0: $74
    ret nz                                        ; $4ed1: $c0

    jp hl                                         ; $4ed2: $e9


    or [hl]                                       ; $4ed3: $b6
    ld a, b                                       ; $4ed4: $78
    dec e                                         ; $4ed5: $1d
    di                                            ; $4ed6: $f3
    adc d                                         ; $4ed7: $8a
    sbc a                                         ; $4ed8: $9f
    rst $18                                       ; $4ed9: $df
    dec de                                        ; $4eda: $1b
    ld l, a                                       ; $4edb: $6f
    inc e                                         ; $4edc: $1c
    ld a, b                                       ; $4edd: $78
    ld a, b                                       ; $4ede: $78
    adc c                                         ; $4edf: $89
    rst $08                                       ; $4ee0: $cf
    inc sp                                        ; $4ee1: $33
    ld a, [hl]                                    ; $4ee2: $7e
    ld a, [hl]                                    ; $4ee3: $7e
    or a                                          ; $4ee4: $b7
    push bc                                       ; $4ee5: $c5
    db $eb                                        ; $4ee6: $eb
    sbc c                                         ; $4ee7: $99
    inc bc                                        ; $4ee8: $03
    ld [hl], c                                    ; $4ee9: $71
    cp d                                          ; $4eea: $ba
    db $ed                                        ; $4eeb: $ed
    or [hl]                                       ; $4eec: $b6
    inc bc                                        ; $4eed: $03
    pop af                                        ; $4eee: $f1
    ld b, e                                       ; $4eef: $43
    di                                            ; $4ef0: $f3
    ldh a, [$7b]                                  ; $4ef1: $f0 $7b
    push hl                                       ; $4ef3: $e5
    sbc b                                         ; $4ef4: $98
    and b                                         ; $4ef5: $a0
    dec a                                         ; $4ef6: $3d
    halt                                          ; $4ef7: $76
    adc h                                         ; $4ef8: $8c
    rst $08                                       ; $4ef9: $cf
    ld sp, $8207                                  ; $4efa: $31 $07 $82
    or $d8                                        ; $4efd: $f6 $d8
    ld b, e                                       ; $4eff: $43
    ld e, [hl]                                    ; $4f00: $5e
    ld c, [hl]                                    ; $4f01: $4e
    rrca                                          ; $4f02: $0f
    dec a                                         ; $4f03: $3d
    db $f4                                        ; $4f04: $f4
    call nc, $c743                                ; $4f05: $d4 $43 $c7
    sub d                                         ; $4f08: $92
    ld a, [c]                                     ; $4f09: $f2
    sbc h                                         ; $4f0a: $9c
    jp Jump_000_0743                              ; $4f0b: $c3 $43 $07


    ld a, [c]                                     ; $4f0e: $f2
    ret c                                         ; $4f0f: $d8

    inc sp                                        ; $4f10: $33
    ld c, $f7                                     ; $4f11: $0e $f7
    call c, $0716                                 ; $4f13: $dc $16 $07
    sbc a                                         ; $4f16: $9f
    db $db                                        ; $4f17: $db
    ld c, $e4                                     ; $4f18: $0e $e4
    xor c                                         ; $4f1a: $a9
    ld h, a                                       ; $4f1b: $67
    sbc [hl]                                      ; $4f1c: $9e
    pop af                                        ; $4f1d: $f1
    ld a, c                                       ; $4f1e: $79
    add sp, -$5f                                  ; $4f1f: $e8 $a1
    inc bc                                        ; $4f21: $03
    rrca                                          ; $4f22: $0f
    cpl                                           ; $4f23: $2f
    cp c                                          ; $4f24: $b9
    db $ed                                        ; $4f25: $ed
    ret nz                                        ; $4f26: $c0

    add c                                         ; $4f27: $81
    db $db                                        ; $4f28: $db
    ld [c], a                                     ; $4f29: $e2
    di                                            ; $4f2a: $f3
    ret nc                                        ; $4f2b: $d0

    add c                                         ; $4f2c: $81
    ld h, a                                       ; $4f2d: $67
    ld e, $7b                                     ; $4f2e: $1e $7b
    inc c                                         ; $4f30: $0c
    dec l                                         ; $4f31: $2d
    ld c, [hl]                                    ; $4f32: $4e
    ld l, b                                       ; $4f33: $68
    pop af                                        ; $4f34: $f1
    ld a, d                                       ; $4f35: $7a
    add sp, -$47                                  ; $4f36: $e8 $b9
    add a                                         ; $4f38: $87
    ld c, c                                       ; $4f39: $49
    pop af                                        ; $4f3a: $f1
    cp e                                          ; $4f3b: $bb
    db $ed                                        ; $4f3c: $ed
    and c                                         ; $4f3d: $a1
    ld a, b                                       ; $4f3e: $78
    dec a                                         ; $4f3f: $3d
    db $e3                                        ; $4f40: $e3
    ldh a, [rNR23]                                ; $4f41: $f0 $18
    sbc d                                         ; $4f43: $9a
    ld e, a                                       ; $4f44: $5f
    sbc h                                         ; $4f45: $9c
    ld l, [hl]                                    ; $4f46: $6e
    di                                            ; $4f47: $f3
    cp c                                          ; $4f48: $b9
    db $ed                                        ; $4f49: $ed
    or c                                          ; $4f4a: $b1
    rst $00                                       ; $4f4b: $c7
    ld l, [hl]                                    ; $4f4c: $6e
    adc e                                         ; $4f4d: $8b
    rst $18                                       ; $4f4e: $df
    ld l, l                                       ; $4f4f: $6d
    rst $08                                       ; $4f50: $cf
    db $dd                                        ; $4f51: $dd
    or $d8                                        ; $4f52: $f6 $d8
    ld h, e                                       ; $4f54: $63
    or a                                          ; $4f55: $b7
    push bc                                       ; $4f56: $c5
    db $eb                                        ; $4f57: $eb
    sbc c                                         ; $4f58: $99
    add a                                         ; $4f59: $87
    ld c, $e4                                     ; $4f5a: $0e $e4
    cp c                                          ; $4f5c: $b9
    db $db                                        ; $4f5d: $db
    ld c, $78                                     ; $4f5e: $0e $78
    and b                                         ; $4f60: $a0
    ld sp, hl                                     ; $4f61: $f9

jr_05c_4f62:
    inc e                                         ; $4f62: $1c
    cp d                                          ; $4f63: $ba
    call Call_000_21e9                            ; $4f64: $cd $e9 $21
    xor a                                         ; $4f67: $af
    add a                                         ; $4f68: $87
    ld c, $ae                                     ; $4f69: $0e $ae
    db $eb                                        ; $4f6b: $eb
    sub d                                         ; $4f6c: $92
    db $db                                        ; $4f6d: $db
    sbc [hl]                                      ; $4f6e: $9e
    ld a, [c]                                     ; $4f6f: $f2
    ld [hl], c                                    ; $4f70: $71
    cp b                                          ; $4f71: $b8
    dec l                                         ; $4f72: $2d
    or a                                          ; $4f73: $b7
    dec e                                         ; $4f74: $1d
    ld b, b                                       ; $4f75: $40
    ld a, e                                       ; $4f76: $7b
    db $ec                                        ; $4f77: $ec
    ld sp, $83b4                                  ; $4f78: $31 $b4 $83
    dec bc                                        ; $4f7b: $0b
    nop                                           ; $4f7c: $00
    sbc [hl]                                      ; $4f7d: $9e
    rst $38                                       ; $4f7e: $ff
    adc c                                         ; $4f7f: $89
    or h                                          ; $4f80: $b4
    db $e3                                        ; $4f81: $e3
    inc l                                         ; $4f82: $2c
    db $fc                                        ; $4f83: $fc
    call c, Call_000_3c00                         ; $4f84: $dc $00 $3c
    ld e, c                                       ; $4f87: $59
    ld c, [hl]                                    ; $4f88: $4e
    inc h                                         ; $4f89: $24
    sbc a                                         ; $4f8a: $9f
    ld [hl], $27                                  ; $4f8b: $36 $27
    ld c, d                                       ; $4f8d: $4a
    adc d                                         ; $4f8e: $8a
    rst $20                                       ; $4f8f: $e7
    add hl, de                                    ; $4f90: $19
    sra [hl]                                      ; $4f91: $cb $2e
    nop                                           ; $4f93: $00
    sbc [hl]                                      ; $4f94: $9e
    rst $28                                       ; $4f95: $ef
    jp c, Jump_05c_475b                           ; $4f96: $da $5b $47

    ld l, c                                       ; $4f99: $69
    ld l, [hl]                                    ; $4f9a: $6e
    cp [hl]                                       ; $4f9b: $be
    call c, Call_05c_60e2                         ; $4f9c: $dc $e2 $60
    sbc a                                         ; $4f9f: $9f
    add a                                         ; $4fa0: $87
    db $ec                                        ; $4fa1: $ec
    ld d, a                                       ; $4fa2: $57
    ld d, $c5                                     ; $4fa3: $16 $c5
    dec c                                         ; $4fa5: $0d
    nop                                           ; $4fa6: $00
    ret nc                                        ; $4fa7: $d0

    sbc e                                         ; $4fa8: $9b
    sub h                                         ; $4fa9: $94
    db $fd                                        ; $4faa: $fd
    rst $20                                       ; $4fab: $e7
    ld h, e                                       ; $4fac: $63
    ld c, e                                       ; $4fad: $4b
    ldh a, [rNR23]                                ; $4fae: $f0 $18
    ld l, h                                       ; $4fb0: $6c
    push af                                       ; $4fb1: $f5
    jr nc, jr_05c_4f62                            ; $4fb2: $30 $ae

    reti                                          ; $4fb4: $d9


    dec hl                                        ; $4fb5: $2b
    xor h                                         ; $4fb6: $ac
    jp hl                                         ; $4fb7: $e9


    ld h, $2a                                     ; $4fb8: $26 $2a
    ld e, c                                       ; $4fba: $59
    call nc, Call_05c_7e25                        ; $4fbb: $d4 $25 $7e
    or h                                          ; $4fbe: $b4
    dec l                                         ; $4fbf: $2d
    dec d                                         ; $4fc0: $15
    ld h, l                                       ; $4fc1: $65
    cp l                                          ; $4fc2: $bd
    dec l                                         ; $4fc3: $2d
    sbc a                                         ; $4fc4: $9f
    jr jr_05c_5013                                ; $4fc5: $18 $4c

    sub h                                         ; $4fc7: $94
    ld d, e                                       ; $4fc8: $53
    ld l, c                                       ; $4fc9: $69
    db $d3                                        ; $4fca: $d3
    cpl                                           ; $4fcb: $2f
    and l                                         ; $4fcc: $a5
    ld e, c                                       ; $4fcd: $59
    cp [hl]                                       ; $4fce: $be
    and l                                         ; $4fcf: $a5
    ld l, h                                       ; $4fd0: $6c
    jp c, $dcd6                                   ; $4fd1: $da $d6 $dc

    cp d                                          ; $4fd4: $ba
    nop                                           ; $4fd5: $00
    ld a, h                                       ; $4fd6: $7c
    ld e, e                                       ; $4fd7: $5b
    db $e3                                        ; $4fd8: $e3
    sbc h                                         ; $4fd9: $9c
    rla                                           ; $4fda: $17
    sub [hl]                                      ; $4fdb: $96
    ld l, d                                       ; $4fdc: $6a
    or a                                          ; $4fdd: $b7
    db $e4                                        ; $4fde: $e4
    rst $38                                       ; $4fdf: $ff
    add c                                         ; $4fe0: $81
    or c                                          ; $4fe1: $b1
    inc [hl]                                      ; $4fe2: $34
    inc sp                                        ; $4fe3: $33
    res 7, d                                      ; $4fe4: $cb $ba
    add hl, hl                                    ; $4fe6: $29
    daa                                           ; $4fe7: $27
    cp d                                          ; $4fe8: $ba
    call nz, $1351                                ; $4fe9: $c4 $51 $13
    push hl                                       ; $4fec: $e5

Jump_05c_4fed:
    add hl, sp                                    ; $4fed: $39
    ld e, $48                                     ; $4fee: $1e $48
    call c, Call_05c_5ac8                         ; $4ff0: $dc $c8 $5a
    ld [hl], e                                    ; $4ff3: $73
    ldh [$39], a                                  ; $4ff4: $e0 $39
    and e                                         ; $4ff6: $a3
    and c                                         ; $4ff7: $a1
    nop                                           ; $4ff8: $00
    ret nc                                        ; $4ff9: $d0

    dec hl                                        ; $4ffa: $2b
    inc a                                         ; $4ffb: $3c
    ld [hl], c                                    ; $4ffc: $71
    adc c                                         ; $4ffd: $89
    rla                                           ; $4ffe: $17
    ld l, l                                       ; $4fff: $6d
    cp [hl]                                       ; $5000: $be
    ld d, d                                       ; $5001: $52
    ld a, [hl+]                                   ; $5002: $2a
    push bc                                       ; $5003: $c5
    ld a, [bc]                                    ; $5004: $0a
    ld c, a                                       ; $5005: $4f
    ld [$c677], sp                                ; $5006: $08 $77 $c6
    ld e, e                                       ; $5009: $5b
    xor a                                         ; $500a: $af
    ld [c], a                                     ; $500b: $e2
    and b                                         ; $500c: $a0
    reti                                          ; $500d: $d9


    daa                                           ; $500e: $27
    sub l                                         ; $500f: $95
    ld d, d                                       ; $5010: $52
    dec [hl]                                      ; $5011: $35
    add hl, hl                                    ; $5012: $29

jr_05c_5013:
    ld d, [hl]                                    ; $5013: $56
    add hl, sp                                    ; $5014: $39
    ld l, $e4                                     ; $5015: $2e $e4
    push de                                       ; $5017: $d5
    rst $28                                       ; $5018: $ef
    ei                                            ; $5019: $fb
    rst $38                                       ; $501a: $ff
    di                                            ; $501b: $f3
    cp a                                          ; $501c: $bf
    ld l, $f1                                     ; $501d: $2e $f1
    ld d, b                                       ; $501f: $50
    add hl, bc                                    ; $5020: $09
    ld c, e                                       ; $5021: $4b
    ld e, c                                       ; $5022: $59
    ld c, d                                       ; $5023: $4a

jr_05c_5024:
    add d                                         ; $5024: $82
    pop de                                        ; $5025: $d1
    db $ec                                        ; $5026: $ec
    rst $20                                       ; $5027: $e7
    sub $75                                       ; $5028: $d6 $75
    ld e, l                                       ; $502a: $5d
    nop                                           ; $502b: $00
    ret nc                                        ; $502c: $d0

    push de                                       ; $502d: $d5
    inc h                                         ; $502e: $24
    dec bc                                        ; $502f: $0b
    dec d                                         ; $5030: $15
    call $a6ec                                    ; $5031: $cd $ec $a6
    ld l, [hl]                                    ; $5034: $6e
    xor [hl]                                      ; $5035: $ae
    dec sp                                        ; $5036: $3b
    sra h                                         ; $5037: $cb $2c
    rst $18                                       ; $5039: $df
    db $ed                                        ; $503a: $ed
    ld a, [hl]                                    ; $503b: $7e
    add hl, sp                                    ; $503c: $39
    and e                                         ; $503d: $a3
    sbc $80                                       ; $503e: $de $80
    ld d, b                                       ; $5040: $50
    ld c, a                                       ; $5041: $4f
    xor [hl]                                      ; $5042: $ae
    and h                                         ; $5043: $a4
    and $98                                       ; $5044: $e6 $98
    cpl                                           ; $5046: $2f
    adc e                                         ; $5047: $8b
    jp nc, Jump_000_35bd                          ; $5048: $d2 $bd $35

    adc $09                                       ; $504b: $ce $09
    dec e                                         ; $504d: $1d
    ld c, d                                       ; $504e: $4a
    and e                                         ; $504f: $a3
    ld a, e                                       ; $5050: $7b
    and c                                         ; $5051: $a1
    nop                                           ; $5052: $00
    ld e, $1a                                     ; $5053: $1e $1a
    reti                                          ; $5055: $d9


    ld a, [bc]                                    ; $5056: $0a
    and [hl]                                      ; $5057: $a6
    xor $95                                       ; $5058: $ee $95
    ld b, l                                       ; $505a: $45
    jp hl                                         ; $505b: $e9


    sbc $1a                                       ; $505c: $de $1a
    rst $20                                       ; $505e: $e7
    call nz, $b725                                ; $505f: $c4 $25 $b7
    pop hl                                        ; $5062: $e1
    rst $28                                       ; $5063: $ef
    adc [hl]                                      ; $5064: $8e
    or e                                          ; $5065: $b3
    sub l                                         ; $5066: $95
    ld d, h                                       ; $5067: $54
    ld [hl], h                                    ; $5068: $74
    sub e                                         ; $5069: $93
    db $ec                                        ; $506a: $ec
    cp a                                          ; $506b: $bf
    ei                                            ; $506c: $fb
    rst $10                                       ; $506d: $d7
    or [hl]                                       ; $506e: $b6
    sub l                                         ; $506f: $95
    cp $19                                        ; $5070: $fe $19
    db $fd                                        ; $5072: $fd
    or d                                          ; $5073: $b2
    xor b                                         ; $5074: $a8
    dec bc                                        ; $5075: $0b
    nop                                           ; $5076: $00
    inc a                                         ; $5077: $3c
    ld a, a                                       ; $5078: $7f
    add $af                                       ; $5079: $c6 $af
    ld l, l                                       ; $507b: $6d
    add hl, hl                                    ; $507c: $29
    rst $18                                       ; $507d: $df
    jr c, jr_05c_5024                             ; $507e: $38 $a4

    sbc $68                                       ; $5080: $de $68
    and d                                         ; $5082: $a2
    db $eb                                        ; $5083: $eb
    cp d                                          ; $5084: $ba
    nop                                           ; $5085: $00
    cp h                                          ; $5086: $bc
    sbc c                                         ; $5087: $99
    ld h, l                                       ; $5088: $65
    ld a, [c]                                     ; $5089: $f2
    ld [hl], c                                    ; $508a: $71
    db $ed                                        ; $508b: $ed
    ld [bc], a                                    ; $508c: $02
    ld a, h                                       ; $508d: $7c
    dec sp                                        ; $508e: $3b
    ld l, l                                       ; $508f: $6d
    push hl                                       ; $5090: $e5
    inc sp                                        ; $5091: $33
    ld c, h                                       ; $5092: $4c
    jr nc, @-$32                                  ; $5093: $30 $cc

    sub b                                         ; $5095: $90
    xor l                                         ; $5096: $ad
    ld a, b                                       ; $5097: $78
    rst $38                                       ; $5098: $ff
    call z, Call_05c_6867                         ; $5099: $cc $67 $68
    ld [$3d51], a                                 ; $509c: $ea $51 $3d
    add [hl]                                      ; $509f: $86
    ld a, [c]                                     ; $50a0: $f2
    ld c, l                                       ; $50a1: $4d
    rst $38                                       ; $50a2: $ff
    di                                            ; $50a3: $f3
    cpl                                           ; $50a4: $2f
    db $dd                                        ; $50a5: $dd
    ld e, e                                       ; $50a6: $5b
    db $e3                                        ; $50a7: $e3
    and c                                         ; $50a8: $a1
    nop                                           ; $50a9: $00
    ld e, $1a                                     ; $50aa: $1e $1a
    reti                                          ; $50ac: $d9


    jp z, $f38f                                   ; $50ad: $ca $8f $f3

    sub $ab                                       ; $50b0: $d6 $ab
    sub h                                         ; $50b2: $94
    ld a, [hl+]                                   ; $50b3: $2a
    ld c, d                                       ; $50b4: $4a
    ld l, c                                       ; $50b5: $69

Call_05c_50b6:
    call nc, $328c                                ; $50b6: $d4 $8c $32
    ld c, d                                       ; $50b9: $4a
    ld a, [hl+]                                   ; $50ba: $2a
    halt                                          ; $50bb: $76
    sub d                                         ; $50bc: $92
    ld d, d                                       ; $50bd: $52
    ld a, [hl+]                                   ; $50be: $2a
    call $a6b0                                    ; $50bf: $cd $b0 $a6
    jp z, $b65a                                   ; $50c2: $ca $5a $b6

    ld c, l                                       ; $50c5: $4d
    ld c, c                                       ; $50c6: $49
    ld b, l                                       ; $50c7: $45
    scf                                           ; $50c8: $37
    add hl, bc                                    ; $50c9: $09
    rst $08                                       ; $50ca: $cf
    ld l, d                                       ; $50cb: $6a
    adc l                                         ; $50cc: $8d
    adc $09                                       ; $50cd: $ce $09
    ld e, e                                       ; $50cf: $5b
    call $c6dd                                    ; $50d0: $cd $dd $c6
    ld [hl], e                                    ; $50d3: $73
    sub $c6                                       ; $50d4: $d6 $c6
    add b                                         ; $50d6: $80
    ld b, h                                       ; $50d7: $44
    push hl                                       ; $50d8: $e5
    ld [hl], c                                    ; $50d9: $71
    sbc $ec                                       ; $50da: $de $ec
    cpl                                           ; $50dc: $2f
    ld [hl], c                                    ; $50dd: $71
    ld b, [hl]                                    ; $50de: $46
    add hl, hl                                    ; $50df: $29
    rra                                           ; $50e0: $1f
    jr c, jr_05c_5150                             ; $50e1: $38 $6d

    sub l                                         ; $50e3: $95
    ld d, d                                       ; $50e4: $52
    add hl, bc                                    ; $50e5: $09
    ld c, e                                       ; $50e6: $4b
    ld [hl], $10                                  ; $50e7: $36 $10
    adc [hl]                                      ; $50e9: $8e
    ld [hl], e                                    ; $50ea: $73
    ld b, [hl]                                    ; $50eb: $46
    res 6, [hl]                                   ; $50ec: $cb $b6
    add $6b                                       ; $50ee: $c6 $6b
    ld [c], a                                     ; $50f0: $e2
    ld b, h                                       ; $50f1: $44
    push hl                                       ; $50f2: $e5
    inc bc                                        ; $50f3: $03
    ld hl, $7a51                                  ; $50f4: $21 $51 $7a
    ld hl, sp-$15                                 ; $50f7: $f8 $eb
    sub d                                         ; $50f9: $92
    add e                                         ; $50fa: $83
    db $dd                                        ; $50fb: $dd
    ld d, d                                       ; $50fc: $52
    ld c, d                                       ; $50fd: $4a
    and l                                         ; $50fe: $a5
    ld e, $65                                     ; $50ff: $1e $65
    dec hl                                        ; $5101: $2b
    sbc a                                         ; $5102: $9f
    ret z                                         ; $5103: $c8

    ld [hl+], a                                   ; $5104: $22
    and a                                         ; $5105: $a7
    ld [hl-], a                                   ; $5106: $32
    ld d, d                                       ; $5107: $52
    cp a                                          ; $5108: $bf
    pop hl                                        ; $5109: $e1
    and [hl]                                      ; $510a: $a6
    ld e, e                                       ; $510b: $5b
    ld e, d                                       ; $510c: $5a
    inc hl                                        ; $510d: $23
    ld e, e                                       ; $510e: $5b
    call $b32f                                    ; $510f: $cd $2f $b3
    cp a                                          ; $5112: $bf
    nop                                           ; $5113: $00
    ld a, h                                       ; $5114: $7c
    db $db                                        ; $5115: $db
    ld d, c                                       ; $5116: $51
    or d                                          ; $5117: $b2
    rst $18                                       ; $5118: $df

Call_05c_5119:
    jp nc, Jump_000_3cdc                          ; $5119: $d2 $dc $3c

    ld c, d                                       ; $511c: $4a
    db $e3                                        ; $511d: $e3
    and b                                         ; $511e: $a0
    ret                                           ; $511f: $c9


    adc a                                         ; $5120: $8f
    dec a                                         ; $5121: $3d
    ld l, e                                       ; $5122: $6b
    ld c, l                                       ; $5123: $4d
    ld d, b                                       ; $5124: $50
    nop                                           ; $5125: $00
    ld e, $8f                                     ; $5126: $1e $8f
    dec de                                        ; $5128: $1b
    ld l, l                                       ; $5129: $6d
    ld c, e                                       ; $512a: $4b
    ld a, [hl]                                    ; $512b: $7e
    db $ec                                        ; $512c: $ec
    reti                                          ; $512d: $d9


    jp nc, $ff57                                  ; $512e: $d2 $57 $ff

    db $fd                                        ; $5131: $fd
    ld e, a                                       ; $5132: $5f
    sbc d                                         ; $5133: $9a
    sbc e                                         ; $5134: $9b
    ld b, a                                       ; $5135: $47
    add hl, hl                                    ; $5136: $29
    rst $38                                       ; $5137: $ff
    dec l                                         ; $5138: $2d
    ld e, c                                       ; $5139: $59
    sbc h                                         ; $513a: $9c
    di                                            ; $513b: $f3
    ld l, e                                       ; $513c: $6b
    ld [hl], c                                    ; $513d: $71
    ld c, [hl]                                    ; $513e: $4e
    inc h                                         ; $513f: $24
    dec b                                         ; $5140: $05
    db $e3                                        ; $5141: $e3
    ld a, h                                       ; $5142: $7c
    and l                                         ; $5143: $a5
    ld a, a                                       ; $5144: $7f
    add $bf                                       ; $5145: $c6 $bf
    ld c, $57                                     ; $5147: $0e $57
    sub $44                                       ; $5149: $d6 $44
    or d                                          ; $514b: $b2
    jr z, jr_05c_5187                             ; $514c: $28 $39

    inc hl                                        ; $514e: $23
    db $db                                        ; $514f: $db

jr_05c_5150:
    dec [hl]                                      ; $5150: $35
    dec e                                         ; $5151: $1d
    xor [hl]                                      ; $5152: $ae
    xor h                                         ; $5153: $ac
    adc c                                         ; $5154: $89
    sub d                                         ; $5155: $92
    adc d                                         ; $5156: $8a
    push de                                       ; $5157: $d5
    and h                                         ; $5158: $a4
    xor h                                         ; $5159: $ac
    sbc e                                         ; $515a: $9b
    add sp, -$6e                                  ; $515b: $e8 $92
    rst $00                                       ; $515d: $c7
    pop hl                                        ; $515e: $e1
    inc de                                        ; $515f: $13
    xor c                                         ; $5160: $a9
    or d                                          ; $5161: $b2
    ld d, [hl]                                    ; $5162: $56
    ld c, [hl]                                    ; $5163: $4e
    add hl, hl                                    ; $5164: $29
    ld d, l                                       ; $5165: $55
    ld d, d                                       ; $5166: $52
    inc a                                         ; $5167: $3c
    rst $08                                       ; $5168: $cf
    ld e, b                                       ; $5169: $58
    halt                                          ; $516a: $76
    ret                                           ; $516b: $c9


    db $e3                                        ; $516c: $e3
    ld sp, $3e47                                  ; $516d: $31 $47 $3e
    db $10                                        ; $5170: $10
    ld [de], a                                    ; $5171: $12
    dec h                                         ; $5172: $25
    sbc a                                         ; $5173: $9f
    xor b                                         ; $5174: $a8
    sbc e                                         ; $5175: $9b
    ld h, b                                       ; $5176: $60
    ld e, d                                       ; $5177: $5a
    adc e                                         ; $5178: $8b
    sub $9f                                       ; $5179: $d6 $9f
    ld sp, hl                                     ; $517b: $f9
    ld sp, hl                                     ; $517c: $f9
    or a                                          ; $517d: $b7
    db $fc                                        ; $517e: $fc
    db $fd                                        ; $517f: $fd
    cp d                                          ; $5180: $ba
    nop                                           ; $5181: $00
    ret nc                                        ; $5182: $d0

    ld d, l                                       ; $5183: $55
    ld d, c                                       ; $5184: $51
    sbc d                                         ; $5185: $9a
    ld h, e                                       ; $5186: $63

jr_05c_5187:
    ld c, e                                       ; $5187: $4b
    ldh a, [rOBP0]                                ; $5188: $f0 $48
    rst $08                                       ; $518a: $cf
    or a                                          ; $518b: $b7
    cp $cc                                        ; $518c: $fe $cc
    rst $08                                       ; $518e: $cf
    cp a                                          ; $518f: $bf
    sub e                                         ; $5190: $93
    jp nz, Jump_000_3e52                          ; $5191: $c2 $52 $3e

    sub b                                         ; $5194: $90
    and c                                         ; $5195: $a1
    reti                                          ; $5196: $d9


    rrc a                                         ; $5197: $cb $0f
    or [hl]                                       ; $5199: $b6
    push de                                       ; $519a: $d5
    or c                                          ; $519b: $b1
    dec d                                         ; $519c: $15
    and l                                         ; $519d: $a5
    ld e, $fe                                     ; $519e: $1e $fe
    ei                                            ; $51a0: $fb
    jr c, @+$01                                   ; $51a1: $38 $ff

    rst $08                                       ; $51a3: $cf
    sub [hl]                                      ; $51a4: $96
    adc $c0                                       ; $51a5: $ce $c0
    ld a, h                                       ; $51a7: $7c
    ld [hl], h                                    ; $51a8: $74
    rst $38                                       ; $51a9: $ff
    cp l                                          ; $51aa: $bd
    dec d                                         ; $51ab: $15
    ld [hl], l                                    ; $51ac: $75
    adc c                                         ; $51ad: $89
    ld l, a                                       ; $51ae: $6f
    ld [hl], h                                    ; $51af: $74
    cp a                                          ; $51b0: $bf
    ld l, h                                       ; $51b1: $6c
    sbc e                                         ; $51b2: $9b
    inc d                                         ; $51b3: $14
    ld d, l                                       ; $51b4: $55
    ld d, c                                       ; $51b5: $51
    cp d                                          ; $51b6: $ba
    ld h, e                                       ; $51b7: $63
    ld hl, $c254                                  ; $51b8: $21 $54 $c2
    jp nc, Jump_05c_719d                          ; $51bb: $d2 $9d $71

    ld d, l                                       ; $51be: $55
    ld b, l                                       ; $51bf: $45
    scf                                           ; $51c0: $37
    push hl                                       ; $51c1: $e5
    and h                                         ; $51c2: $a4
    or e                                          ; $51c3: $b3
    ld b, [hl]                                    ; $51c4: $46
    and h                                         ; $51c5: $a4
    ld e, $fe                                     ; $51c6: $1e $fe
    ei                                            ; $51c8: $fb
    ld l, e                                       ; $51c9: $6b
    dec e                                         ; $51ca: $1d
    db $db                                        ; $51cb: $db
    and h                                         ; $51cc: $a4
    ld a, h                                       ; $51cd: $7c
    rst $30                                       ; $51ce: $f7
    adc [hl]                                      ; $51cf: $8e
    rst $18                                       ; $51d0: $df
    ld sp, hl                                     ; $51d1: $f9
    ld l, e                                       ; $51d2: $6b
    dec e                                         ; $51d3: $1d
    and l                                         ; $51d4: $a5
    ld a, [hl]                                    ; $51d5: $7e
    rst $38                                       ; $51d6: $ff
    db $d3                                        ; $51d7: $d3
    ld e, $f7                                     ; $51d8: $1e $f7
    ld b, [hl]                                    ; $51da: $46
    add hl, hl                                    ; $51db: $29
    rst $38                                       ; $51dc: $ff
    add e                                         ; $51dd: $83
    ld h, [hl]                                    ; $51de: $66
    ld a, a                                       ; $51df: $7f
    ld bc, $55d0                                  ; $51e0: $01 $d0 $55
    ld d, c                                       ; $51e3: $51
    sbc d                                         ; $51e4: $9a
    ld h, e                                       ; $51e5: $63
    ld c, e                                       ; $51e6: $4b
    ldh a, [rOBP0]                                ; $51e7: $f0 $48
    rst $08                                       ; $51e9: $cf
    or a                                          ; $51ea: $b7
    cp $cc                                        ; $51eb: $fe $cc
    rst $08                                       ; $51ed: $cf
    cp a                                          ; $51ee: $bf
    sub e                                         ; $51ef: $93
    jp nz, Jump_000_3e52                          ; $51f0: $c2 $52 $3e

    sub b                                         ; $51f3: $90
    and c                                         ; $51f4: $a1
    reti                                          ; $51f5: $d9


    rrc a                                         ; $51f6: $cb $0f
    or [hl]                                       ; $51f8: $b6
    push de                                       ; $51f9: $d5
    or c                                          ; $51fa: $b1
    dec d                                         ; $51fb: $15
    and l                                         ; $51fc: $a5
    ld e, $fe                                     ; $51fd: $1e $fe
    ei                                            ; $51ff: $fb
    jr c, @+$01                                   ; $5200: $38 $ff

    rst $08                                       ; $5202: $cf
    sub [hl]                                      ; $5203: $96
    adc $c0                                       ; $5204: $ce $c0
    ld a, h                                       ; $5206: $7c
    ld [hl], h                                    ; $5207: $74
    rst $38                                       ; $5208: $ff
    cp l                                          ; $5209: $bd
    dec d                                         ; $520a: $15
    ld [hl], l                                    ; $520b: $75
    adc c                                         ; $520c: $89
    sbc a                                         ; $520d: $9f
    adc $21                                       ; $520e: $ce $21
    and l                                         ; $5210: $a5
    pop de                                        ; $5211: $d1
    inc sp                                        ; $5212: $33
    adc $21                                       ; $5213: $ce $21
    pop bc                                        ; $5215: $c1
    sbc b                                         ; $5216: $98
    ld b, d                                       ; $5217: $42
    ret nc                                        ; $5218: $d0

    db $ec                                        ; $5219: $ec
    add l                                         ; $521a: $85
    dec h                                         ; $521b: $25
    adc a                                         ; $521c: $8f
    rst $00                                       ; $521d: $c7
    and [hl]                                      ; $521e: $a6
    ld h, e                                       ; $521f: $63
    dec hl                                        ; $5220: $2b
    ld [$df12], a                                 ; $5221: $ea $12 $df

jr_05c_5224:
    add sp, $7e                                   ; $5224: $e8 $7e
    push hl                                       ; $5226: $e5
    cp e                                          ; $5227: $bb
    ld [hl], a                                    ; $5228: $77
    db $fc                                        ; $5229: $fc
    adc $5f                                       ; $522a: $ce $5f
    db $eb                                        ; $522c: $eb
    jr z, jr_05c_5224                             ; $522d: $28 $f5

    ei                                            ; $522f: $fb
    sbc a                                         ; $5230: $9f
    or $b8                                        ; $5231: $f6 $b8
    scf                                           ; $5233: $37
    ld c, d                                       ; $5234: $4a
    ld sp, hl                                     ; $5235: $f9
    rra                                           ; $5236: $1f
    inc [hl]                                      ; $5237: $34
    ld a, e                                       ; $5238: $7b
    db $dd                                        ; $5239: $dd
    or c                                          ; $523a: $b1
    db $10                                        ; $523b: $10
    ld a, [hl+]                                   ; $523c: $2a
    ld h, c                                       ; $523d: $61
    jp hl                                         ; $523e: $e9


    adc $b8                                       ; $523f: $ce $b8
    xor d                                         ; $5241: $aa
    and d                                         ; $5242: $a2
    sbc e                                         ; $5243: $9b
    ld [hl], d                                    ; $5244: $72
    jp nc, Jump_000_2359                          ; $5245: $d2 $59 $23

    ld d, d                                       ; $5248: $52
    rrca                                          ; $5249: $0f
    rst $38                                       ; $524a: $ff
    db $fd                                        ; $524b: $fd
    or l                                          ; $524c: $b5
    adc [hl]                                      ; $524d: $8e
    ld l, l                                       ; $524e: $6d
    cp d                                          ; $524f: $ba
    nop                                           ; $5250: $00
    ret nc                                        ; $5251: $d0

    ld d, l                                       ; $5252: $55
    ld d, c                                       ; $5253: $51
    sbc d                                         ; $5254: $9a
    ld h, e                                       ; $5255: $63
    ld c, e                                       ; $5256: $4b
    ldh a, [rOBP0]                                ; $5257: $f0 $48
    rst $08                                       ; $5259: $cf
    or a                                          ; $525a: $b7
    cp $cc                                        ; $525b: $fe $cc
    rst $08                                       ; $525d: $cf
    cp a                                          ; $525e: $bf
    sub e                                         ; $525f: $93
    jp nz, Jump_000_3e52                          ; $5260: $c2 $52 $3e

    sub b                                         ; $5263: $90
    and c                                         ; $5264: $a1
    reti                                          ; $5265: $d9


    rrc a                                         ; $5266: $cb $0f
    or [hl]                                       ; $5268: $b6
    push de                                       ; $5269: $d5
    or c                                          ; $526a: $b1
    dec d                                         ; $526b: $15
    and l                                         ; $526c: $a5
    ld e, $fe                                     ; $526d: $1e $fe
    ei                                            ; $526f: $fb
    jr c, @+$01                                   ; $5270: $38 $ff

    rst $08                                       ; $5272: $cf
    sub [hl]                                      ; $5273: $96
    adc $c0                                       ; $5274: $ce $c0
    ld a, h                                       ; $5276: $7c
    ld [hl], h                                    ; $5277: $74
    rst $38                                       ; $5278: $ff
    cp l                                          ; $5279: $bd
    dec d                                         ; $527a: $15
    ld [hl], l                                    ; $527b: $75
    adc c                                         ; $527c: $89
    sbc a                                         ; $527d: $9f
    adc $21                                       ; $527e: $ce $21
    and l                                         ; $5280: $a5
    pop de                                        ; $5281: $d1
    inc sp                                        ; $5282: $33
    adc $21                                       ; $5283: $ce $21
    pop bc                                        ; $5285: $c1
    sbc b                                         ; $5286: $98
    ld b, d                                       ; $5287: $42
    ret nc                                        ; $5288: $d0

    db $ec                                        ; $5289: $ec

Jump_05c_528a:
    add l                                         ; $528a: $85
    dec h                                         ; $528b: $25
    ld e, [hl]                                    ; $528c: $5e
    ld h, h                                       ; $528d: $64
    cp $d6                                        ; $528e: $fe $d6
    call z, $f6ca                                 ; $5290: $cc $ca $f6
    ld [de], a                                    ; $5293: $12
    rst $18                                       ; $5294: $df
    add sp, $7e                                   ; $5295: $e8 $7e
    push hl                                       ; $5297: $e5
    cp e                                          ; $5298: $bb
    ld [hl], a                                    ; $5299: $77
    db $fc                                        ; $529a: $fc
    adc $5f                                       ; $529b: $ce $5f
    adc e                                         ; $529d: $8b
    ld d, [hl]                                    ; $529e: $56
    cp a                                          ; $529f: $bf
    rst $38                                       ; $52a0: $ff
    ld l, c                                       ; $52a1: $69
    adc a                                         ; $52a2: $8f
    ei                                            ; $52a3: $fb
    ld e, e                                       ; $52a4: $5b
    ld e, b                                       ; $52a5: $58
    cp d                                          ; $52a6: $ba
    inc sp                                        ; $52a7: $33
    ld l, $13                                     ; $52a8: $2e $13
    halt                                          ; $52aa: $76
    ld [hl], h                                    ; $52ab: $74
    ld a, a                                       ; $52ac: $7f
    cp $4a                                        ; $52ad: $fe $4a
    rlca                                          ; $52af: $07
    sbc $8b                                       ; $52b0: $de $8b
    ld e, b                                       ; $52b2: $58
    rla                                           ; $52b3: $17
    nop                                           ; $52b4: $00
    add d                                         ; $52b5: $82
    xor [hl]                                      ; $52b6: $ae
    adc d                                         ; $52b7: $8a
    jp nc, $5b1c                                  ; $52b8: $d2 $1c $5b

    add d                                         ; $52bb: $82
    ld b, a                                       ; $52bc: $47
    ld a, d                                       ; $52bd: $7a
    cp [hl]                                       ; $52be: $be
    push af                                       ; $52bf: $f5
    ld h, a                                       ; $52c0: $67
    ld a, [hl]                                    ; $52c1: $7e
    cp $9d                                        ; $52c2: $fe $9d
    inc d                                         ; $52c4: $14
    sub [hl]                                      ; $52c5: $96
    ld a, [c]                                     ; $52c6: $f2

jr_05c_52c7:
    add c                                         ; $52c7: $81
    inc c                                         ; $52c8: $0c
    call Call_05c_7e5e                            ; $52c9: $cd $5e $7e
    or b                                          ; $52cc: $b0
    xor l                                         ; $52cd: $ad
    adc [hl]                                      ; $52ce: $8e
    xor l                                         ; $52cf: $ad
    jr z, jr_05c_52c7                             ; $52d0: $28 $f5

    ldh a, [$df]                                  ; $52d2: $f0 $df
    rst $00                                       ; $52d4: $c7
    ld sp, hl                                     ; $52d5: $f9
    ld a, a                                       ; $52d6: $7f
    or [hl]                                       ; $52d7: $b6
    ld [hl], h                                    ; $52d8: $74
    ld b, $e6                                     ; $52d9: $06 $e6
    and e                                         ; $52db: $a3
    ei                                            ; $52dc: $fb
    rst $28                                       ; $52dd: $ef
    xor l                                         ; $52de: $ad
    xor b                                         ; $52df: $a8
    ld c, e                                       ; $52e0: $4b
    db $fc                                        ; $52e1: $fc
    ld [hl], h                                    ; $52e2: $74
    ld c, $29                                     ; $52e3: $0e $29
    adc l                                         ; $52e5: $8d
    sbc [hl]                                      ; $52e6: $9e
    ld [hl], c                                    ; $52e7: $71
    ld c, $09                                     ; $52e8: $0e $09
    add $14                                       ; $52ea: $c6 $14
    add d                                         ; $52ec: $82
    ld h, [hl]                                    ; $52ed: $66
    cpl                                           ; $52ee: $2f
    inc l                                         ; $52ef: $2c
    add hl, sp                                    ; $52f0: $39
    inc e                                         ; $52f1: $1c
    jp $f0e6                                      ; $52f2: $c3 $e6 $f0


    ld b, a                                       ; $52f5: $47
    ld a, d                                       ; $52f6: $7a
    adc c                                         ; $52f7: $89
    ld l, a                                       ; $52f8: $6f
    ld [hl], h                                    ; $52f9: $74
    cp a                                          ; $52fa: $bf
    ld a, [c]                                     ; $52fb: $f2
    db $dd                                        ; $52fc: $dd
    dec sp                                        ; $52fd: $3b
    ld a, [hl]                                    ; $52fe: $7e

Call_05c_52ff:
    rst $20                                       ; $52ff: $e7
    xor a                                         ; $5300: $af
    ld b, l                                       ; $5301: $45
    xor e                                         ; $5302: $ab
    rst $18                                       ; $5303: $df
    rst $38                                       ; $5304: $ff
    or h                                          ; $5305: $b4
    rst $00                                       ; $5306: $c7
    db $fd                                        ; $5307: $fd
    dec l                                         ; $5308: $2d
    inc l                                         ; $5309: $2c
    db $dd                                        ; $530a: $dd
    add hl, de                                    ; $530b: $19
    sub a                                         ; $530c: $97
    add hl, bc                                    ; $530d: $09
    dec sp                                        ; $530e: $3b
    cp d                                          ; $530f: $ba
    ccf                                           ; $5310: $3f
    ld a, a                                       ; $5311: $7f
    and l                                         ; $5312: $a5
    inc bc                                        ; $5313: $03
    rst $28                                       ; $5314: $ef
    ld b, l                                       ; $5315: $45
    xor h                                         ; $5316: $ac
    dec bc                                        ; $5317: $0b
    nop                                           ; $5318: $00
    sbc [hl]                                      ; $5319: $9e
    ld h, d                                       ; $531a: $62
    ret                                           ; $531b: $c9


    adc e                                         ; $531c: $8b
    ld a, b                                       ; $531d: $78
    dec sp                                        ; $531e: $3b
    sub c                                         ; $531f: $91
    dec h                                         ; $5320: $25
    dec b                                         ; $5321: $05
    db $e3                                        ; $5322: $e3
    ld a, h                                       ; $5323: $7c
    dec [hl]                                      ; $5324: $35
    ld b, d                                       ; $5325: $42
    sub $7a                                       ; $5326: $d6 $7a
    add l                                         ; $5328: $85
    daa                                           ; $5329: $27
    ld a, [c]                                     ; $532a: $f2
    cpl                                           ; $532b: $2f

Call_05c_532c:
    ld a, e                                       ; $532c: $7b
    and l                                         ; $532d: $a5
    ld h, e                                       ; $532e: $63
    ld a, l                                       ; $532f: $7d
    ld a, a                                       ; $5330: $7f
    sbc h                                         ; $5331: $9c
    add c                                         ; $5332: $81
    di                                            ; $5333: $f3
    ld c, e                                       ; $5334: $4b
    sub [hl]                                      ; $5335: $96
    cp $dc                                        ; $5336: $fe $dc
    ld a, [c]                                     ; $5338: $f2
    db $e3                                        ; $5339: $e3
    db $fc                                        ; $533a: $fc
    jp $d49f                                      ; $533b: $c3 $9f $d4


    sbc l                                         ; $533e: $9d
    ld [hl], c                                    ; $533f: $71
    ld d, l                                       ; $5340: $55
    ld d, c                                       ; $5341: $51
    ret                                           ; $5342: $c9


    ld h, l                                       ; $5343: $65
    rst $20                                       ; $5344: $e7

jr_05c_5345:
    call nc, Call_05c_7fc3                        ; $5345: $d4 $c3 $7f
    ld a, a                                       ; $5348: $7f
    xor l                                         ; $5349: $ad
    and e                                         ; $534a: $a3
    sbc e                                         ; $534b: $9b
    ld l, $00                                     ; $534c: $2e $00
    ld e, $bd                                     ; $534e: $1e $bd
    ld a, b                                       ; $5350: $78
    add d                                         ; $5351: $82
    db $dd                                        ; $5352: $dd
    adc e                                         ; $5353: $8b
    dec d                                         ; $5354: $15
    ld a, [c]                                     ; $5355: $f2
    add b                                         ; $5356: $80
    ld a, l                                       ; $5357: $7d
    dec h                                         ; $5358: $25
    inc d                                         ; $5359: $14
    inc l                                         ; $535a: $2c
    add hl, hl                                    ; $535b: $29
    jr jr_05c_5345                                ; $535c: $18 $e7

    ld l, e                                       ; $535e: $6b
    ld d, d                                       ; $535f: $52
    sub $bd                                       ; $5360: $d6 $bd
    sbc d                                         ; $5362: $9a
    reti                                          ; $5363: $d9


    cp c                                          ; $5364: $b9
    adc c                                         ; $5365: $89
    inc b                                         ; $5366: $04
    inc de                                        ; $5367: $13
    sbc e                                         ; $5368: $9b
    ld b, c                                       ; $5369: $41
    ld [$d671], a                                 ; $536a: $ea $71 $d6
    jp nz, $e5ec                                  ; $536d: $c2 $ec $e5

    rst $38                                       ; $5370: $ff
    adc $37                                       ; $5371: $ce $37
    ei                                            ; $5373: $fb
    and h                                         ; $5374: $a4
    xor $8c                                       ; $5375: $ee $8c
    xor e                                         ; $5377: $ab
    adc d                                         ; $5378: $8a
    ld c, d                                       ; $5379: $4a
    ld [hl], a                                    ; $537a: $77
    add $65                                       ; $537b: $c6 $65
    ld [hl], d                                    ; $537d: $72
    reti                                          ; $537e: $d9


    add hl, sp                                    ; $537f: $39
    push af                                       ; $5380: $f5
    ldh a, [$df]                                  ; $5381: $f0 $df
    ld e, a                                       ; $5383: $5f
    db $eb                                        ; $5384: $eb
    add sp, -$5a                                  ; $5385: $e8 $a6
    dec bc                                        ; $5387: $0b
    nop                                           ; $5388: $00
    ld e, $bd                                     ; $5389: $1e $bd
    ld a, b                                       ; $538b: $78
    sbc [hl]                                      ; $538c: $9e
    or c                                          ; $538d: $b1
    ld c, h                                       ; $538e: $4c
    ld c, $b1                                     ; $538f: $0e $b1
    dec sp                                        ; $5391: $3b
    ret c                                         ; $5392: $d8

    sub [hl]                                      ; $5393: $96
    xor $60                                       ; $5394: $ee $60
    ld [hl], e                                    ; $5396: $73
    cp e                                          ; $5397: $bb
    add hl, hl                                    ; $5398: $29
    daa                                           ; $5399: $27
    ld l, e                                       ; $539a: $6b
    jp nc, Jump_000_2960                          ; $539b: $d2 $60 $29

    ld [c], a                                     ; $539e: $e2
    add hl, sp                                    ; $539f: $39
    ld l, e                                       ; $53a0: $6b
    ld h, e                                       ; $53a1: $63
    ld b, b                                       ; $53a2: $40
    jp nz, $e5fa                                  ; $53a3: $c2 $fa $e5

    rst $38                                       ; $53a6: $ff
    sbc c                                         ; $53a7: $99
    db $db                                        ; $53a8: $db
    ld d, $25                                     ; $53a9: $16 $25
    ld c, a                                       ; $53ab: $4f
    ld sp, $719d                                  ; $53ac: $31 $9d $71
    halt                                          ; $53af: $76
    ld h, d                                       ; $53b0: $62
    ret                                           ; $53b1: $c9


    dec d                                         ; $53b2: $15
    rst $20                                       ; $53b3: $e7
    db $e4                                        ; $53b4: $e4
    xor a                                         ; $53b5: $af
    ld [hl], l                                    ; $53b6: $75
    call nz, $c439                                ; $53b7: $c4 $39 $c4
    dec c                                         ; $53ba: $0d
    nop                                           ; $53bb: $00
    ld e, $bd                                     ; $53bc: $1e $bd
    ld a, [c]                                     ; $53be: $f2
    adc l                                         ; $53bf: $8d
    ld b, e                                       ; $53c0: $43
    ld c, c                                       ; $53c1: $49
    ld c, l                                       ; $53c2: $4d
    or h                                          ; $53c3: $b4
    ld sp, hl                                     ; $53c4: $f9
    jp z, $c537                                   ; $53c5: $ca $37 $c5

    ld [hl], e                                    ; $53c8: $73
    sub $3a                                       ; $53c9: $d6 $3a
    jp z, Jump_000_135e                           ; $53cb: $ca $5e $13

    db $d3                                        ; $53ce: $d3
    cp $bf                                        ; $53cf: $fe $bf
    or a                                          ; $53d1: $b7
    and d                                         ; $53d2: $a2
    sub h                                         ; $53d3: $94
    rst $38                                       ; $53d4: $ff
    rst $30                                       ; $53d5: $f7
    xor [hl]                                      ; $53d6: $ae
    ld l, h                                       ; $53d7: $6c
    inc c                                         ; $53d8: $0c
    sub $af                                       ; $53d9: $d6 $af
    pop bc                                        ; $53db: $c1
    jp nc, $dd18                                  ; $53dc: $d2 $18 $dd

    cpl                                           ; $53df: $2f
    ld h, a                                       ; $53e0: $67
    inc b                                         ; $53e1: $04
    cp a                                          ; $53e2: $bf
    ld [hl-], a                                   ; $53e3: $32
    ld l, e                                       ; $53e4: $6b
    jp z, Jump_05c_4a37                           ; $53e5: $ca $37 $4a

    ld sp, hl                                     ; $53e8: $f9
    ld e, e                                       ; $53e9: $5b
    rrca                                          ; $53ea: $0f
    db $eb                                        ; $53eb: $eb
    cp a                                          ; $53ec: $bf
    or a                                          ; $53ed: $b7
    and d                                         ; $53ee: $a2
    sub h                                         ; $53ef: $94
    ld d, e                                       ; $53f0: $53
    cp d                                          ; $53f1: $ba
    push de                                       ; $53f2: $d5
    ld b, h                                       ; $53f3: $44
    and l                                         ; $53f4: $a5
    inc l                                         ; $53f5: $2c
    ld l, l                                       ; $53f6: $6d
    sub d                                         ; $53f7: $92
    adc l                                         ; $53f8: $8d
    pop bc                                        ; $53f9: $c1
    ld a, [$8ce5]                                 ; $53fa: $fa $e5 $8c
    sub d                                         ; $53fd: $92
    cp d                                          ; $53fe: $ba
    inc sp                                        ; $53ff: $33
    xor [hl]                                      ; $5400: $ae
    ld a, [hl+]                                   ; $5401: $2a
    ld a, [hl+]                                   ; $5402: $2a
    add hl, sp                                    ; $5403: $39
    adc b                                         ; $5404: $88
    ld a, h                                       ; $5405: $7c
    rst $08                                       ; $5406: $cf
    add hl, bc                                    ; $5407: $09
    ld a, c                                       ; $5408: $79
    adc h                                         ; $5409: $8c
    sub l                                         ; $540a: $95
    sub b                                         ; $540b: $90
    rst $30                                       ; $540c: $f7
    ret c                                         ; $540d: $d8

    adc l                                         ; $540e: $8d
    rst $30                                       ; $540f: $f7
    sbc [hl]                                      ; $5410: $9e
    inc de                                        ; $5411: $13
    ld [hl], d                                    ; $5412: $72
    sbc $39                                       ; $5413: $de $39
    ld sp, hl                                     ; $5415: $f9
    ld l, e                                       ; $5416: $6b
    dec e                                         ; $5417: $1d
    db $dd                                        ; $5418: $dd
    ld [hl], h                                    ; $5419: $74
    ld bc, $629e                                  ; $541a: $01 $9e $62
    ld a, [hl-]                                   ; $541d: $3a
    db $e3                                        ; $541e: $e3
    db $ec                                        ; $541f: $ec
    sbc h                                         ; $5420: $9c
    xor b                                         ; $5421: $a8
    inc e                                         ; $5422: $1c
    or a                                          ; $5423: $b7
    ei                                            ; $5424: $fb
    sbc a                                         ; $5425: $9f
    dec de                                        ; $5426: $1b
    nop                                           ; $5427: $00
    ld a, h                                       ; $5428: $7c
    db $db                                        ; $5429: $db
    inc b                                         ; $542a: $04
    push bc                                       ; $542b: $c5
    dec c                                         ; $542c: $0d
    nop                                           ; $542d: $00
    sbc [hl]                                      ; $542e: $9e
    ld b, [hl]                                    ; $542f: $46
    cp [hl]                                       ; $5430: $be
    or d                                          ; $5431: $b2
    db $dd                                        ; $5432: $dd
    and [hl]                                      ; $5433: $a6
    and h                                         ; $5434: $a4
    ld hl, sp-$02                                 ; $5435: $f8 $fe
    inc h                                         ; $5437: $24
    adc b                                         ; $5438: $88
    add hl, de                                    ; $5439: $19
    scf                                           ; $543a: $37
    nop                                           ; $543b: $00
    ret nc                                        ; $543c: $d0

    jp hl                                         ; $543d: $e9


    inc h                                         ; $543e: $24
    reti                                          ; $543f: $d9


    halt                                          ; $5440: $76
    ld b, a                                       ; $5441: $47
    add hl, hl                                    ; $5442: $29

jr_05c_5443:
    jp z, Jump_000_3356                           ; $5443: $ca $56 $33

    jr jr_05c_5443                                ; $5446: $18 $fb

    ld [hl], e                                    ; $5448: $73
    ld a, $29                                     ; $5449: $3e $29
    cp [hl]                                       ; $544b: $be
    ccf                                           ; $544c: $3f
    add hl, bc                                    ; $544d: $09
    ld h, d                                       ; $544e: $62
    add $0d                                       ; $544f: $c6 $0d
    nop                                           ; $5451: $00
    inc e                                         ; $5452: $1c
    ld d, l                                       ; $5453: $55
    ld sp, $856d                                  ; $5454: $31 $6d $85
    ld h, a                                       ; $5457: $67
    ld [hl+], a                                   ; $5458: $22
    ld d, [hl]                                    ; $5459: $56
    ld d, d                                       ; $545a: $52
    sbc [hl]                                      ; $545b: $9e
    ld h, d                                       ; $545c: $62
    ld a, [hl-]                                   ; $545d: $3a
    db $e3                                        ; $545e: $e3
    db $ec                                        ; $545f: $ec
    sbc h                                         ; $5460: $9c
    ret z                                         ; $5461: $c8

    dec c                                         ; $5462: $0d
    nop                                           ; $5463: $00
    inc e                                         ; $5464: $1c
    ld d, l                                       ; $5465: $55
    ld sp, $956d                                  ; $5466: $31 $6d $95
    db $e3                                        ; $5469: $e3
    halt                                          ; $546a: $76
    and e                                         ; $546b: $a3
    ld h, d                                       ; $546c: $62
    ld [hl], l                                    ; $546d: $75
    ld b, a                                       ; $546e: $47
    ld d, l                                       ; $546f: $55
    sub $f2                                       ; $5470: $d6 $f2
    ld a, b                                       ; $5472: $78
    ld l, h                                       ; $5473: $6c
    ld a, [hl-]                                   ; $5474: $3a
    sub $e2                                       ; $5475: $d6 $e2
    sbc h                                         ; $5477: $9c
    cp b                                          ; $5478: $b8
    nop                                           ; $5479: $00
    inc a                                         ; $547a: $3c
    rst $08                                       ; $547b: $cf
    ld e, b                                       ; $547c: $58
    sub [hl]                                      ; $547d: $96
    sub h                                         ; $547e: $94
    ld l, l                                       ; $547f: $6d
    sub c                                         ; $5480: $91
    ld a, [hl-]                                   ; $5481: $3a
    or [hl]                                       ; $5482: $b6
    ld h, l                                       ; $5483: $65
    ld d, c                                       ; $5484: $51
    call c, $9c00                                 ; $5485: $dc $00 $9c
    and c                                         ; $5488: $a1
    ld e, b                                       ; $5489: $58
    pop hl                                        ; $548a: $e1
    ld e, c                                       ; $548b: $59
    ld e, e                                       ; $548c: $5b
    ld h, c                                       ; $548d: $61
    push de                                       ; $548e: $d5
    ld e, d                                       ; $548f: $5a
    adc a                                         ; $5490: $8f
    ld a, [de]                                    ; $5491: $1a
    xor l                                         ; $5492: $ad
    dec a                                         ; $5493: $3d
    rst $30                                       ; $5494: $f7
    sub a                                         ; $5495: $97
    ld l, h                                       ; $5496: $6c
    ld l, e                                       ; $5497: $6b
    ld a, h                                       ; $5498: $7c
    ld d, d                                       ; $5499: $52
    ld c, $22                                     ; $549a: $0e $22
    rst $18                                       ; $549c: $df
    ld [hl], e                                    ; $549d: $73
    ld [c], a                                     ; $549e: $e2
    ld [bc], a                                    ; $549f: $02
    ld e, $8d                                     ; $54a0: $1e $8d
    db $f4                                        ; $54a2: $f4
    ld a, h                                       ; $54a3: $7c
    db $eb                                        ; $54a4: $eb
    rst $08                                       ; $54a5: $cf
    db $fc                                        ; $54a6: $fc
    adc c                                         ; $54a7: $89
    ld e, b                                       ; $54a8: $58
    call c, $8e00                                 ; $54a9: $dc $00 $8e
    sbc l                                         ; $54ac: $9d
    ld c, c                                       ; $54ad: $49
    and h                                         ; $54ae: $a4
    sub h                                         ; $54af: $94
    sub [hl]                                      ; $54b0: $96
    ld l, l                                       ; $54b1: $6d
    ld c, a                                       ; $54b2: $4f
    xor [hl]                                      ; $54b3: $ae
    ld c, e                                       ; $54b4: $4b
    ld c, $ff                                     ; $54b5: $0e $ff
    inc e                                         ; $54b7: $1c
    call nz, $fcd2                                ; $54b8: $c4 $d2 $fc
    ld [hl], $ec                                  ; $54bb: $36 $ec
    rst $38                                       ; $54bd: $ff
    cp d                                          ; $54be: $ba
    nop                                           ; $54bf: $00
    db $fc                                        ; $54c0: $fc
    ld h, h                                       ; $54c1: $64
    ld c, l                                       ; $54c2: $4d
    ld [hl], e                                    ; $54c3: $73
    ld c, e                                       ; $54c4: $4b
    jp hl                                         ; $54c5: $e9


    ret nz                                        ; $54c6: $c0

    or e                                          ; $54c7: $b3
    rst $30                                       ; $54c8: $f7
    ld [hl], a                                    ; $54c9: $77
    cp a                                          ; $54ca: $bf
    or d                                          ; $54cb: $b2
    add hl, sp                                    ; $54cc: $39
    cp c                                          ; $54cd: $b9
    inc l                                         ; $54ce: $2c
    adc d                                         ; $54cf: $8a
    add h                                         ; $54d0: $84
    and l                                         ; $54d1: $a5
    add b                                         ; $54d2: $80
    call nz, Call_000_1139                        ; $54d3: $c4 $39 $11
    dec h                                         ; $54d6: $25
    add a                                         ; $54d7: $87
    ld h, e                                       ; $54d8: $63
    ret c                                         ; $54d9: $d8

    inc e                                         ; $54da: $1c
    cp $48                                        ; $54db: $fe $48
    cp c                                          ; $54dd: $b9
    ld bc, $db7c                                  ; $54de: $01 $7c $db
    inc b                                         ; $54e1: $04
    dec h                                         ; $54e2: $25
    add sp, $15                                   ; $54e3: $e8 $15
    sbc [hl]                                      ; $54e5: $9e
    ld d, b                                       ; $54e6: $50
    ld h, e                                       ; $54e7: $63
    rst $30                                       ; $54e8: $f7
    ld [hl], e                                    ; $54e9: $73
    inc bc                                        ; $54ea: $03
    ld c, $30                                     ; $54eb: $0e $30
    xor c                                         ; $54ed: $a9
    rst $18                                       ; $54ee: $df
    ld a, [$5ff9]                                 ; $54ef: $fa $f9 $5f
    ld a, [c]                                     ; $54f2: $f2
    ld a, b                                       ; $54f3: $78
    ld l, h                                       ; $54f4: $6c
    ld a, [hl-]                                   ; $54f5: $3a
    or [hl]                                       ; $54f6: $b6
    and d                                         ; $54f7: $a2
    inc d                                         ; $54f8: $14
    xor e                                         ; $54f9: $ab
    inc e                                         ; $54fa: $1c
    or a                                          ; $54fb: $b7
    ei                                            ; $54fc: $fb
    ld l, e                                       ; $54fd: $6b
    db $f4                                        ; $54fe: $f4
    dec b                                         ; $54ff: $05
    nop                                           ; $5500: $00
    inc e                                         ; $5501: $1c
    ld d, l                                       ; $5502: $55
    ld sp, $856d                                  ; $5503: $31 $6d $85
    ld h, a                                       ; $5506: $67
    ld [hl+], a                                   ; $5507: $22
    sub $05                                       ; $5508: $d6 $05
    nop                                           ; $550a: $00
    cp h                                          ; $550b: $bc
    cp e                                          ; $550c: $bb
    adc l                                         ; $550d: $8d
    sub [hl]                                      ; $550e: $96
    inc d                                         ; $550f: $14
    rst $08                                       ; $5510: $cf
    inc sp                                        ; $5511: $33
    sub [hl]                                      ; $5512: $96
    ld e, l                                       ; $5513: $5d
    ld [hl], d                                    ; $5514: $72
    ld hl, sp+$2c                                 ; $5515: $f8 $2c
    ld l, [hl]                                    ; $5517: $6e
    rst $38                                       ; $5518: $ff
    ld e, a                                       ; $5519: $5f
    ld e, b                                       ; $551a: $58
    dec d                                         ; $551b: $15
    xor a                                         ; $551c: $af
    jr z, jr_05c_557a                             ; $551d: $28 $5b

    push hl                                       ; $551f: $e5
    inc bc                                        ; $5520: $03
    xor e                                         ; $5521: $ab
    cp $02                                        ; $5522: $fe $02
    db $fc                                        ; $5524: $fc
    ld h, h                                       ; $5525: $64
    ld c, l                                       ; $5526: $4d
    ld [hl], e                                    ; $5527: $73
    ld c, e                                       ; $5528: $4b
    jp hl                                         ; $5529: $e9


    ret nz                                        ; $552a: $c0

    or e                                          ; $552b: $b3
    rst $30                                       ; $552c: $f7
    ld [hl], a                                    ; $552d: $77
    cp a                                          ; $552e: $bf
    or d                                          ; $552f: $b2
    add hl, sp                                    ; $5530: $39
    cp c                                          ; $5531: $b9
    inc l                                         ; $5532: $2c
    adc d                                         ; $5533: $8a
    add h                                         ; $5534: $84
    and l                                         ; $5535: $a5
    add b                                         ; $5536: $80
    call nz, Call_000_1139                        ; $5537: $c4 $39 $11
    dec h                                         ; $553a: $25
    ld e, [hl]                                    ; $553b: $5e
    ld h, h                                       ; $553c: $64
    cp $d6                                        ; $553d: $fe $d6
    call z, $96ca                                 ; $553f: $cc $ca $96
    dec de                                        ; $5542: $1b
    nop                                           ; $5543: $00
    cp h                                          ; $5544: $bc
    ret z                                         ; $5545: $c8

    db $fc                                        ; $5546: $fc
    xor l                                         ; $5547: $ad
    sbc c                                         ; $5548: $99
    sub l                                         ; $5549: $95
    dec l                                         ; $554a: $2d
    sub h                                         ; $554b: $94
    jr c, jr_05c_5591                             ; $554c: $38 $43

    ld e, b                                       ; $554e: $58
    jp z, Jump_000_0e37                           ; $554f: $ca $37 $0e

    ret                                           ; $5552: $c9


    rst $38                                       ; $5553: $ff
    inc [hl]                                      ; $5554: $34
    ld l, [hl]                                    ; $5555: $6e
    ld a, a                                       ; $5556: $7f
    dec [hl]                                      ; $5557: $35
    rst $00                                       ; $5558: $c7
    sub [hl]                                      ; $5559: $96
    inc a                                         ; $555a: $3c
    push bc                                       ; $555b: $c5
    ld [hl], h                                    ; $555c: $74
    add $d9                                       ; $555d: $c6 $d9
    add hl, sp                                    ; $555f: $39
    pop af                                        ; $5560: $f1
    ld [bc], a                                    ; $5561: $02
    cp h                                          ; $5562: $bc
    cp a                                          ; $5563: $bf
    ld [hl], e                                    ; $5564: $73
    xor [hl]                                      ; $5565: $ae
    or b                                          ; $5566: $b0
    ld [hl], h                                    ; $5567: $74
    ld l, a                                       ; $5568: $6f
    adc l                                         ; $5569: $8d
    sub d                                         ; $556a: $92
    ld h, l                                       ; $556b: $65
    ld e, c                                       ; $556c: $59
    ld d, e                                       ; $556d: $53
    ld l, l                                       ; $556e: $6d
    ld d, d                                       ; $556f: $52
    ld [hl], e                                    ; $5570: $73
    sub h                                         ; $5571: $94
    and d                                         ; $5572: $a2
    db $e4                                        ; $5573: $e4
    ld h, a                                       ; $5574: $67
    sub $59                                       ; $5575: $d6 $59
    ld h, l                                       ; $5577: $65
    dec l                                         ; $5578: $2d
    ccf                                           ; $5579: $3f

jr_05c_557a:
    inc sp                                        ; $557a: $33
    jp z, $e9ba                                   ; $557b: $ca $ba $e9

Call_05c_557e:
    ld h, $2a                                     ; $557e: $26 $2a
    ld [hl], l                                    ; $5580: $75
    ld l, h                                       ; $5581: $6c
    sub e                                         ; $5582: $93
    ld l, h                                       ; $5583: $6c
    adc e                                         ; $5584: $8b
    sub h                                         ; $5585: $94
    ld [hl], c                                    ; $5586: $71
    dec d                                         ; $5587: $15
    ld e, l                                       ; $5588: $5d
    nop                                           ; $5589: $00
    ld e, $a1                                     ; $558a: $1e $a1
    add hl, bc                                    ; $558c: $09
    rst $08                                       ; $558d: $cf
    jp c, $fcb6                                   ; $558e: $da $b6 $fc

jr_05c_5591:
    call z, $ab3a                                 ; $5591: $cc $3a $ab
    xor h                                         ; $5594: $ac
    ld h, l                                       ; $5595: $65
    cp e                                          ; $5596: $bb
    ld l, c                                       ; $5597: $69
    ld d, h                                       ; $5598: $54
    ld d, d                                       ; $5599: $52
    ld a, b                                       ; $559a: $78
    sub $f6                                       ; $559b: $d6 $f6
    cp [hl]                                       ; $559d: $be
    ld b, e                                       ; $559e: $43
    add hl, hl                                    ; $559f: $29
    push hl                                       ; $55a0: $e5
    ld e, e                                       ; $55a1: $5b
    dec d                                         ; $55a2: $15
    pop de                                        ; $55a3: $d1
    jp z, Jump_000_0e37                           ; $55a4: $ca $37 $0e

    add hl, hl                                    ; $55a7: $29
    ld a, [hl+]                                   ; $55a8: $2a
    xor $9b                                       ; $55a9: $ee $9b
    ld [$fc02], a                                 ; $55ab: $ea $02 $fc
    ld h, h                                       ; $55ae: $64
    ld c, l                                       ; $55af: $4d
    ld [hl], e                                    ; $55b0: $73
    ld c, e                                       ; $55b1: $4b
    jp hl                                         ; $55b2: $e9


    ret nz                                        ; $55b3: $c0

    or e                                          ; $55b4: $b3
    rst $30                                       ; $55b5: $f7
    ld [hl], a                                    ; $55b6: $77
    cp a                                          ; $55b7: $bf
    or d                                          ; $55b8: $b2
    add hl, sp                                    ; $55b9: $39
    cp c                                          ; $55ba: $b9
    inc l                                         ; $55bb: $2c
    adc d                                         ; $55bc: $8a
    add h                                         ; $55bd: $84
    and l                                         ; $55be: $a5
    add b                                         ; $55bf: $80
    call nz, Call_000_1139                        ; $55c0: $c4 $39 $11
    dec h                                         ; $55c3: $25
    adc a                                         ; $55c4: $8f
    rst $00                                       ; $55c5: $c7
    and [hl]                                      ; $55c6: $a6
    ld h, e                                       ; $55c7: $63
    dec hl                                        ; $55c8: $2b
    ld [$4792], a                                 ; $55c9: $ea $92 $47

jr_05c_55cc:
    ret c                                         ; $55cc: $d8

    ld d, c                                       ; $55cd: $51
    or d                                          ; $55ce: $b2
    ret c                                         ; $55cf: $d8

    or [hl]                                       ; $55d0: $b6
    cp b                                          ; $55d1: $b8
    xor c                                         ; $55d2: $a9
    ld a, [hl-]                                   ; $55d3: $3a
    adc d                                         ; $55d4: $8a
    sub h                                         ; $55d5: $94
    rrca                                          ; $55d6: $0f
    db $ec                                        ; $55d7: $ec
    xor b                                         ; $55d8: $a8
    sub a                                         ; $55d9: $97
    rra                                           ; $55da: $1f
    adc h                                         ; $55db: $8c
    and $a4                                       ; $55dc: $e6 $a4
    xor l                                         ; $55de: $ad
    and h                                         ; $55df: $a4
    inc a                                         ; $55e0: $3c
    ld e, $9b                                     ; $55e1: $1e $9b
    adc [hl]                                      ; $55e3: $8e
    xor l                                         ; $55e4: $ad
    jr z, jr_05c_55cc                             ; $55e5: $28 $e5

    cp b                                          ; $55e7: $b8
    db $dd                                        ; $55e8: $dd
    rst $38                                       ; $55e9: $ff
    ld [$bfe1], a                                 ; $55ea: $ea $e1 $bf
    adc a                                         ; $55ed: $8f
    di                                            ; $55ee: $f3
    rst $38                                       ; $55ef: $ff
    ld l, h                                       ; $55f0: $6c
    ld [hl], c                                    ; $55f1: $71
    inc bc                                        ; $55f2: $03
    ld a, h                                       ; $55f3: $7c
    and c                                         ; $55f4: $a1
    inc sp                                        ; $55f5: $33
    or b                                          ; $55f6: $b0
    rst $30                                       ; $55f7: $f7
    cp [hl]                                       ; $55f8: $be
    ld b, e                                       ; $55f9: $43

Jump_05c_55fa:
    or [hl]                                       ; $55fa: $b6
    dec [hl]                                      ; $55fb: $35
    ld b, [hl]                                    ; $55fc: $46
    dec h                                         ; $55fd: $25
    push bc                                       ; $55fe: $c5
    di                                            ; $55ff: $f3
    adc h                                         ; $5600: $8c
    ld h, l                                       ; $5601: $65
    call c, $bc00                                 ; $5602: $dc $00 $bc
    cp e                                          ; $5605: $bb
    db $dd                                        ; $5606: $dd

Jump_05c_5607:
    xor e                                         ; $5607: $ab
    db $fc                                        ; $5608: $fc
    cp a                                          ; $5609: $bf
    ld l, $39                                     ; $560a: $2e $39
    ret z                                         ; $560c: $c8

    ld e, d                                       ; $560d: $5a
    dec d                                         ; $560e: $15
    jp nz, Jump_05c_5bfc                          ; $560f: $c2 $fc $5b

    ld sp, hl                                     ; $5612: $f9
    add $21                                       ; $5613: $c6 $21
    db $ed                                        ; $5615: $ed
    sbc c                                         ; $5616: $99
    ld b, c                                       ; $5617: $41
    or a                                          ; $5618: $b7
    cp a                                          ; $5619: $bf
    and h                                         ; $561a: $a4
    jr z, @+$5d                                   ; $561b: $28 $5b

    push hl                                       ; $561d: $e5
    inc bc                                        ; $561e: $03
    xor e                                         ; $561f: $ab
    cp $02                                        ; $5620: $fe $02
    inc a                                         ; $5622: $3c
    ld e, c                                       ; $5623: $59
    ld c, [hl]                                    ; $5624: $4e
    sbc d                                         ; $5625: $9a
    bit 2, [hl]                                   ; $5626: $cb $56
    rlca                                          ; $5628: $07
    db $fd                                        ; $5629: $fd
    ld h, c                                       ; $562a: $61
    or $49                                        ; $562b: $f6 $49
    add hl, sp                                    ; $562d: $39
    call nz, Call_05c_60ee                        ; $562e: $c4 $ee $60
    sub a                                         ; $5631: $97
    ld hl, sp+$46                                 ; $5632: $f8 $46
    rst $30                                       ; $5634: $f7
    dec hl                                        ; $5635: $2b

jr_05c_5636:
    ld d, [hl]                                    ; $5636: $56
    ld c, l                                       ; $5637: $4d
    ld c, l                                       ; $5638: $4d
    jp z, Jump_05c_6b71                           ; $5639: $ca $71 $6b

    or h                                          ; $563c: $b4
    and $98                                       ; $563d: $e6 $98
    rst $38                                       ; $563f: $ff
    and l                                         ; $5640: $a5
    or b                                          ; $5641: $b0
    ld h, $ba                                     ; $5642: $26 $ba
    nop                                           ; $5644: $00
    ld c, $9f                                     ; $5645: $0e $9f
    push bc                                       ; $5647: $c5
    db $ed                                        ; $5648: $ed
    rst $38                                       ; $5649: $ff
    dec bc                                        ; $564a: $0b
    xor e                                         ; $564b: $ab
    ld [c], a                                     ; $564c: $e2
    dec d                                         ; $564d: $15
    ld h, l                                       ; $564e: $65
    xor e                                         ; $564f: $ab
    ld a, h                                       ; $5650: $7c
    ld h, b                                       ; $5651: $60
    push de                                       ; $5652: $d5
    daa                                           ; $5653: $27
    push bc                                       ; $5654: $c5
    di                                            ; $5655: $f3
    adc h                                         ; $5656: $8c
    ld h, l                                       ; $5657: $65
    ld [hl], d                                    ; $5658: $72
    adc b                                         ; $5659: $88
    db $dd                                        ; $565a: $dd
    pop bc                                        ; $565b: $c1
    ld l, $79                                     ; $565c: $2e $79
    add h                                         ; $565e: $84
    ld h, $db                                     ; $565f: $26 $db
    dec [hl]                                      ; $5661: $35
    push af                                       ; $5662: $f5
    jr c, jr_05c_5636                             ; $5663: $38 $d1

    ld [$bf9f], a                                 ; $5665: $ea $9f $bf
    or [hl]                                       ; $5668: $b6
    ld [hl], l                                    ; $5669: $75
    ld bc, $f00e                                  ; $566a: $01 $0e $f0
    cp d                                          ; $566d: $ba
    ld l, $fd                                     ; $566e: $2e $fd
    sub $cf                                       ; $5670: $d6 $cf
    dec l                                         ; $5672: $2d
    ld h, l                                       ; $5673: $65
    ld l, h                                       ; $5674: $6c
    ld a, e                                       ; $5675: $7b
    ld c, e                                       ; $5676: $4b
    cp $b3                                        ; $5677: $fe $b3
    db $f4                                        ; $5679: $f4
    cp a                                          ; $567a: $bf
    or $02                                        ; $567b: $f6 $02
    inc a                                         ; $567d: $3c
    or c                                          ; $567e: $b1
    ld c, c                                       ; $567f: $49
    pop af                                        ; $5680: $f1
    inc a                                         ; $5681: $3c
    ld h, e                                       ; $5682: $63
    reti                                          ; $5683: $d9


    dec b                                         ; $5684: $05
    nop                                           ; $5685: $00
    inc e                                         ; $5686: $1c
    daa                                           ; $5687: $27
    ld e, d                                       ; $5688: $5a
    ld b, l                                       ; $5689: $45
    sub e                                         ; $568a: $93
    dec bc                                        ; $568b: $0b
    ld h, $2a                                     ; $568c: $26 $2a
    reti                                          ; $568e: $d9


    rst $30                                       ; $568f: $f7
    add sp, -$02                                  ; $5690: $e8 $fe
    ld a, [de]                                    ; $5692: $1a
    xor l                                         ; $5693: $ad
    ld l, l                                       ; $5694: $6d
    dec bc                                        ; $5695: $0b
    db $db                                        ; $5696: $db
    ld c, e                                       ; $5697: $4b
    inc a                                         ; $5698: $3c
    ld a, a                                       ; $5699: $7f
    add $f7                                       ; $569a: $c6 $f7
    call nz, $a2a4                                ; $569c: $c4 $a4 $a2
    sbc e                                         ; $569f: $9b
    db $e4                                        ; $56a0: $e4
    ccf                                           ; $56a1: $3f
    ei                                            ; $56a2: $fb
    xor d                                         ; $56a3: $aa
    cpl                                           ; $56a4: $2f
    reti                                          ; $56a5: $d9


    sub $68                                       ; $56a6: $d6 $68
    jr z, jr_05c_56aa                             ; $56a8: $28 $00

jr_05c_56aa:
    cp h                                          ; $56aa: $bc
    reti                                          ; $56ab: $d9


    add hl, sp                                    ; $56ac: $39
    sub h                                         ; $56ad: $94
    call nc, Call_05c_6ddc                        ; $56ae: $d4 $dc $6d
    inc [hl]                                      ; $56b1: $34
    ld l, [hl]                                    ; $56b2: $6e
    nop                                           ; $56b3: $00
    ld c, $50                                     ; $56b4: $0e $50
    or l                                          ; $56b6: $b5
    ld e, e                                       ; $56b7: $5b
    ld c, c                                       ; $56b8: $49
    ld d, l                                       ; $56b9: $55
    sub $f2                                       ; $56ba: $d6 $f2
    or a                                          ; $56bc: $b7
    ld l, c                                       ; $56bd: $69
    ld l, l                                       ; $56be: $6d
    push de                                       ; $56bf: $d5
    and e                                         ; $56c0: $a3
    ld a, d                                       ; $56c1: $7a
    cp h                                          ; $56c2: $bc
    db $fc                                        ; $56c3: $fc
    ld h, a                                       ; $56c4: $67
    ld [hl], c                                    ; $56c5: $71
    rst $18                                       ; $56c6: $df
    ld a, a                                       ; $56c7: $7f

Jump_05c_56c8:
    ld a, [$002f]                                 ; $56c8: $fa $2f $00
    cp h                                          ; $56cb: $bc
    cp e                                          ; $56cc: $bb
    adc l                                         ; $56cd: $8d
    sub [hl]                                      ; $56ce: $96
    call nc, $fdfd                                ; $56cf: $d4 $fd $fd
    rst $30                                       ; $56d2: $f7
    jp z, $de21                                   ; $56d3: $ca $21 $de

    add hl, bc                                    ; $56d6: $09
    or d                                          ; $56d7: $b2
    ret z                                         ; $56d8: $c8

    ld l, $00                                     ; $56d9: $2e $00
    db $fc                                        ; $56db: $fc
    db $e3                                        ; $56dc: $e3
    add h                                         ; $56dd: $84
    ld h, $65                                     ; $56de: $26 $65
    scf                                           ; $56e0: $37
    ld d, c                                       ; $56e1: $51
    ld l, c                                       ; $56e2: $69
    db $d3                                        ; $56e3: $d3
    cpl                                           ; $56e4: $2f
    db $dd                                        ; $56e5: $dd
    ld a, e                                       ; $56e6: $7b
    ld c, $6e                                     ; $56e7: $0e $6e
    add hl, hl                                    ; $56e9: $29
    db $fd                                        ; $56ea: $fd
    inc sp                                        ; $56eb: $33
    cp [hl]                                       ; $56ec: $be
    cpl                                           ; $56ed: $2f
    nop                                           ; $56ee: $00
    cp h                                          ; $56ef: $bc
    sbc e                                         ; $56f0: $9b
    cp a                                          ; $56f1: $bf
    and d                                         ; $56f2: $a2
    sbc e                                         ; $56f3: $9b
    inc [hl]                                      ; $56f4: $34
    add hl, hl                                    ; $56f5: $29
    rst $18                                       ; $56f6: $df
    cp [hl]                                       ; $56f7: $be
    nop                                           ; $56f8: $00
    sbc h                                         ; $56f9: $9c
    rst $38                                       ; $56fa: $ff
    dec l                                         ; $56fb: $2d
    or a                                          ; $56fc: $b7
    sbc h                                         ; $56fd: $9c
    sub a                                         ; $56fe: $97
    dec l                                         ; $56ff: $2d
    di                                            ; $5700: $f3
    db $fd                                        ; $5701: $fd
    dec h                                         ; $5702: $25
    ld l, [hl]                                    ; $5703: $6e
    nop                                           ; $5704: $00
    ld c, $b2                                     ; $5705: $0e $b2
    sub [hl]                                      ; $5707: $96
    ld l, l                                       ; $5708: $6d
    adc l                                         ; $5709: $8d
    ld [hl], e                                    ; $570a: $73
    ld e, [hl]                                    ; $570b: $5e
    ld e, b                                       ; $570c: $58
    ld l, [hl]                                    ; $570d: $6e
    nop                                           ; $570e: $00
    inc e                                         ; $570f: $1c
    daa                                           ; $5710: $27
    ld e, d                                       ; $5711: $5a
    ld c, l                                       ; $5712: $4d
    sbc c                                         ; $5713: $99
    ld l, l                                       ; $5714: $6d
    ret                                           ; $5715: $c9


    ld a, a                                       ; $5716: $7f
    or $d5                                        ; $5717: $f6 $d5
    and e                                         ; $5719: $a3
    ld b, [hl]                                    ; $571a: $46
    ld [hl], e                                    ; $571b: $73
    inc bc                                        ; $571c: $03
    db $fc                                        ; $571d: $fc
    dec de                                        ; $571e: $1b
    db $10                                        ; $571f: $10
    ld l, h                                       ; $5720: $6c
    add hl, sp                                    ; $5721: $39
    dec hl                                        ; $5722: $2b
    rst $08                                       ; $5723: $cf
    sbc a                                         ; $5724: $9f
    dec c                                         ; $5725: $0d
    db $eb                                        ; $5726: $eb
    ld h, c                                       ; $5727: $61
    nop                                           ; $5728: $00
    ret nc                                        ; $5729: $d0

    or [hl]                                       ; $572a: $b6
    dec d                                         ; $572b: $15
    nop                                           ; $572c: $00
    ld l, [hl]                                    ; $572d: $6e
    ld l, a                                       ; $572e: $6f
    add l                                         ; $572f: $85
    call $f065                                    ; $5730: $cd $65 $f0
    inc bc                                        ; $5733: $03
    xor $e3                                       ; $5734: $ee $e3
    ld e, c                                       ; $5736: $59
    inc d                                         ; $5737: $14
    rst $18                                       ; $5738: $df
    daa                                           ; $5739: $27

jr_05c_573a:
    or h                                          ; $573a: $b4
    nop                                           ; $573b: $00
    xor $e3                                       ; $573c: $ee $e3
    ld e, c                                       ; $573e: $59
    inc d                                         ; $573f: $14
    ccf                                           ; $5740: $3f
    ld e, e                                       ; $5741: $5b
    rst $38                                       ; $5742: $ff
    ld l, h                                       ; $5743: $6c
    ld [bc], a                                    ; $5744: $02
    jp $fc00                                      ; $5745: $c3 $00 $fc


    ld a, a                                       ; $5748: $7f
    ld c, [hl]                                    ; $5749: $4e
    ld d, h                                       ; $574a: $54
    cp l                                          ; $574b: $bd
    db $fc                                        ; $574c: $fc
    jr c, jr_05c_575a                             ; $574d: $38 $0b

    nop                                           ; $574f: $00
    db $fc                                        ; $5750: $fc
    ld l, a                                       ; $5751: $6f
    ld [$bc00], sp                                ; $5752: $08 $00 $bc
    jr c, jr_05c_573a                             ; $5755: $38 $e3

    ld e, $06                                     ; $5757: $1e $06
    nop                                           ; $5759: $00

jr_05c_575a:
    sbc h                                         ; $575a: $9c
    ld sp, $a5d8                                  ; $575b: $31 $d8 $a5
    ld a, [hl]                                    ; $575e: $7e
    ld b, e                                       ; $575f: $43
    nop                                           ; $5760: $00
    sbc h                                         ; $5761: $9c
    set 7, h                                      ; $5762: $cb $fc
    ld l, l                                       ; $5764: $6d
    nop                                           ; $5765: $00
    cp h                                          ; $5766: $bc
    and e                                         ; $5767: $a3
    ld a, [de]                                    ; $5768: $1a
    ld bc, $bffc                                  ; $5769: $01 $fc $bf
    di                                            ; $576c: $f3
    ld bc, $e39e                                  ; $576d: $01 $9e $e3
    sbc $0f                                       ; $5770: $de $0f
    nop                                           ; $5772: $00
    ld c, $07                                     ; $5773: $0e $07
    sbc [hl]                                      ; $5775: $9e
    ld h, c                                       ; $5776: $61
    dec a                                         ; $5777: $3d
    inc c                                         ; $5778: $0c
    nop                                           ; $5779: $00
    cp h                                          ; $577a: $bc
    pop de                                        ; $577b: $d1
    dec e                                         ; $577c: $1d
    inc l                                         ; $577d: $2c
    rrc h                                         ; $577e: $cb $0c
    nop                                           ; $5780: $00
    db $fc                                        ; $5781: $fc
    cp a                                          ; $5782: $bf
    di                                            ; $5783: $f3
    ld [hl], e                                    ; $5784: $73
    call c, Call_000_01fb                         ; $5785: $dc $fb $01
    db $fc                                        ; $5788: $fc
    cp a                                          ; $5789: $bf
    di                                            ; $578a: $f3
    db $fd                                        ; $578b: $fd
    add c                                         ; $578c: $81
    rst $20                                       ; $578d: $e7
    ld [bc], a                                    ; $578e: $02
    ld l, [hl]                                    ; $578f: $6e
    add hl, sp                                    ; $5790: $39
    rst $28                                       ; $5791: $ef
    xor h                                         ; $5792: $ac
    ld e, e                                       ; $5793: $5b
    ld l, $08                                     ; $5794: $2e $08
    nop                                           ; $5796: $00
    sbc [hl]                                      ; $5797: $9e
    xor $da                                       ; $5798: $ee $da
    ld d, b                                       ; $579a: $50
    ld a, [$3b65]                                 ; $579b: $fa $65 $3b
    rst $20                                       ; $579e: $e7
    ld a, a                                       ; $579f: $7f
    inc bc                                        ; $57a0: $03
    ld e, $63                                     ; $57a1: $1e $63
    cp d                                          ; $57a3: $ba
    di                                            ; $57a4: $f3
    ld d, d                                       ; $57a5: $52
    ld a, [$3b65]                                 ; $57a6: $fa $65 $3b
    rst $20                                       ; $57a9: $e7
    ld a, a                                       ; $57aa: $7f
    inc bc                                        ; $57ab: $03
    ret nc                                        ; $57ac: $d0

    ld h, l                                       ; $57ad: $65
    ld a, e                                       ; $57ae: $7b
    ld b, $ce                                     ; $57af: $06 $ce
    ld c, e                                       ; $57b1: $4b
    jp hl                                         ; $57b2: $e9


    sub a                                         ; $57b3: $97
    db $ed                                        ; $57b4: $ed
    sbc h                                         ; $57b5: $9c
    rst $38                                       ; $57b6: $ff
    dec c                                         ; $57b7: $0d
    nop                                           ; $57b8: $00
    ld e, $63                                     ; $57b9: $1e $63
    cp d                                          ; $57bb: $ba
    di                                            ; $57bc: $f3
    sbc d                                         ; $57bd: $9a
    ld e, c                                       ; $57be: $59
    reti                                          ; $57bf: $d9


    and [hl]                                      ; $57c0: $a6
    ld e, a                                       ; $57c1: $5f
    or [hl]                                       ; $57c2: $b6
    di                                            ; $57c3: $f3
    ld [bc], a                                    ; $57c4: $02
    ld c, $d0                                     ; $57c5: $0e $d0
    adc a                                         ; $57c7: $8f
    ld h, c                                       ; $57c8: $61
    jp hl                                         ; $57c9: $e9


    sub a                                         ; $57ca: $97
    db $ed                                        ; $57cb: $ed
    sbc h                                         ; $57cc: $9c

Call_05c_57cd:
    rst $38                                       ; $57cd: $ff
    dec c                                         ; $57ce: $0d
    nop                                           ; $57cf: $00
    db $fc                                        ; $57d0: $fc
    cp a                                          ; $57d1: $bf
    di                                            ; $57d2: $f3
    db $d3                                        ; $57d3: $d3
    cpl                                           ; $57d4: $2f
    db $db                                        ; $57d5: $db
    add hl, sp                                    ; $57d6: $39
    rst $38                                       ; $57d7: $ff
    dec de                                        ; $57d8: $1b
    nop                                           ; $57d9: $00
    sbc h                                         ; $57da: $9c
    ccf                                           ; $57db: $3f
    ld a, [c]                                     ; $57dc: $f2
    xor a                                         ; $57dd: $af
    ld c, c                                       ; $57de: $49
    ld e, c                                       ; $57df: $59
    scf                                           ; $57e0: $37
    pop bc                                        ; $57e1: $c1
    ld d, h                                       ; $57e2: $54
    ld c, d                                       ; $57e3: $4a
    cp a                                          ; $57e4: $bf
    ld l, h                                       ; $57e5: $6c
    rst $20                                       ; $57e6: $e7
    db $fc                                        ; $57e7: $fc
    ld l, a                                       ; $57e8: $6f
    nop                                           ; $57e9: $00
    sbc [hl]                                      ; $57ea: $9e
    xor $da                                       ; $57eb: $ee $da
    ld d, b                                       ; $57ed: $50
    ld a, [$03dd]                                 ; $57ee: $fa $dd $03
    nop                                           ; $57f1: $00
    sbc h                                         ; $57f2: $9c
    ld h, e                                       ; $57f3: $63
    ld a, l                                       ; $57f4: $7d
    rra                                           ; $57f5: $1f
    db $d3                                        ; $57f6: $d3
    rst $28                                       ; $57f7: $ef
    ld e, $00                                     ; $57f8: $1e $00
    ret nc                                        ; $57fa: $d0

    ld h, l                                       ; $57fb: $65
    ld a, e                                       ; $57fc: $7b
    ld b, $ce                                     ; $57fd: $06 $ce
    ld sp, hl                                     ; $57ff: $f9
    ld e, e                                       ; $5800: $5b
    ld d, c                                       ; $5801: $51
    or d                                          ; $5802: $b2
    or c                                          ; $5803: $b1
    cp [hl]                                       ; $5804: $be
    adc a                                         ; $5805: $8f
    jp hl                                         ; $5806: $e9


    ld [hl], a                                    ; $5807: $77
    rrca                                          ; $5808: $0f
    nop                                           ; $5809: $00
    sbc [hl]                                      ; $580a: $9e
    rrca                                          ; $580b: $0f
    ld h, h                                       ; $580c: $64
    rst $18                                       ; $580d: $df
    dec a                                         ; $580e: $3d
    sub h                                         ; $580f: $94
    ld a, [hl]                                    ; $5810: $7e
    rst $30                                       ; $5811: $f7
    nop                                           ; $5812: $00
    sbc h                                         ; $5813: $9c
    jp $960f                                      ; $5814: $c3 $0f $96


    ld a, [hl]                                    ; $5817: $7e
    rst $30                                       ; $5818: $f7
    nop                                           ; $5819: $00
    cp h                                          ; $581a: $bc
    sbc b                                         ; $581b: $98
    cp a                                          ; $581c: $bf
    ld l, h                                       ; $581d: $6c
    rst $08                                       ; $581e: $cf
    ld d, [hl]                                    ; $581f: $56
    rlca                                          ; $5820: $07
    db $db                                        ; $5821: $db
    db $f4                                        ; $5822: $f4
    cp e                                          ; $5823: $bb
    rlca                                          ; $5824: $07
    nop                                           ; $5825: $00
    ld a, h                                       ; $5826: $7c
    sbc a                                         ; $5827: $9f
    or $a6                                        ; $5828: $f6 $a6
    rst $18                                       ; $582a: $df
    dec a                                         ; $582b: $3d
    nop                                           ; $582c: $00
    sbc [hl]                                      ; $582d: $9e
    xor $da                                       ; $582e: $ee $da
    ret nc                                        ; $5830: $d0

    db $fc                                        ; $5831: $fc
    rst $30                                       ; $5832: $f7
    rlca                                          ; $5833: $07
    nop                                           ; $5834: $00
    db $fc                                        ; $5835: $fc
    sbc a                                         ; $5836: $9f
    rst $38                                       ; $5837: $ff
    add hl, sp                                    ; $5838: $39
    ld e, e                                       ; $5839: $5b
    ld d, c                                       ; $583a: $51
    ld [$6b8c], a                                 ; $583b: $ea $8c $6b
    cp $fb                                        ; $583e: $fe $fb
    inc bc                                        ; $5840: $03
    nop                                           ; $5841: $00
    db $fc                                        ; $5842: $fc
    ld a, a                                       ; $5843: $7f
    ld a, [c]                                     ; $5844: $f2
    call $bb77                                    ; $5845: $cd $77 $bb

Call_05c_5848:
    rra                                           ; $5848: $1f
    nop                                           ; $5849: $00
    ret nc                                        ; $584a: $d0

    ld h, l                                       ; $584b: $65
    ld a, e                                       ; $584c: $7b
    ld b, $ce                                     ; $584d: $06 $ce
    ld sp, hl                                     ; $584f: $f9
    ld e, e                                       ; $5850: $5b
    ld d, c                                       ; $5851: $51
    ld [$6b8c], a                                 ; $5852: $ea $8c $6b
    cp $fb                                        ; $5855: $fe $fb
    inc bc                                        ; $5857: $03
    nop                                           ; $5858: $00
    ret nc                                        ; $5859: $d0

    ld h, l                                       ; $585a: $65
    ld a, e                                       ; $585b: $7b
    ld b, $ce                                     ; $585c: $06 $ce
    ld sp, hl                                     ; $585e: $f9
    ld e, e                                       ; $585f: $5b
    ld d, c                                       ; $5860: $51
    ld [$f93f], a                                 ; $5861: $ea $3f $f9
    and $bb                                       ; $5864: $e6 $bb
    db $dd                                        ; $5866: $dd
    rrca                                          ; $5867: $0f
    nop                                           ; $5868: $00
    ld e, $0f                                     ; $5869: $1e $0f
    ld hl, sp+$3b                                 ; $586b: $f8 $3b
    ld h, $6e                                     ; $586d: $26 $6e
    ld b, l                                       ; $586f: $45
    ld l, c                                       ; $5870: $69
    cp $fb                                        ; $5871: $fe $fb
    inc bc                                        ; $5873: $03
    nop                                           ; $5874: $00
    ld a, h                                       ; $5875: $7c
    add hl, de                                    ; $5876: $19
    or e                                          ; $5877: $b3
    sbc c                                         ; $5878: $99
    call Call_05c_7f7f                            ; $5879: $cd $7f $7f
    nop                                           ; $587c: $00
    sbc [hl]                                      ; $587d: $9e
    xor $da                                       ; $587e: $ee $da
    ld d, b                                       ; $5880: $50
    sbc [hl]                                      ; $5881: $9e
    ld [hl], c                                    ; $5882: $71
    ld bc, $3e0e                                  ; $5883: $01 $0e $3e
    sbc l                                         ; $5886: $9d
    sbc a                                         ; $5887: $9f
    ld h, a                                       ; $5888: $67
    ld e, h                                       ; $5889: $5c
    nop                                           ; $588a: $00
    ld e, $e3                                     ; $588b: $1e $e3
    ld e, d                                       ; $588d: $5a
    db $e3                                        ; $588e: $e3
    inc e                                         ; $588f: $1c
    push de                                       ; $5890: $d5
    cp b                                          ; $5891: $b8
    dec d                                         ; $5892: $15
    and l                                         ; $5893: $a5
    inc a                                         ; $5894: $3c
    db $e3                                        ; $5895: $e3
    ld [bc], a                                    ; $5896: $02
    cp h                                          ; $5897: $bc
    and e                                         ; $5898: $a3
    ld a, [de]                                    ; $5899: $1a
    di                                            ; $589a: $f3
    adc h                                         ; $589b: $8c
    dec bc                                        ; $589c: $0b
    nop                                           ; $589d: $00
    sbc [hl]                                      ; $589e: $9e
    db $e3                                        ; $589f: $e3
    sbc $9f                                       ; $58a0: $de $9f
    ld h, a                                       ; $58a2: $67
    ld e, h                                       ; $58a3: $5c
    nop                                           ; $58a4: $00
    sbc [hl]                                      ; $58a5: $9e
    ld a, a                                       ; $58a6: $7f
    sbc d                                         ; $58a7: $9a
    adc a                                         ; $58a8: $8f
    ld h, c                                       ; $58a9: $61
    ld a, c                                       ; $58aa: $79
    add $05                                       ; $58ab: $c6 $05
    nop                                           ; $58ad: $00
    ld e, $0f                                     ; $58ae: $1e $0f
    ld a, b                                       ; $58b0: $78
    inc c                                         ; $58b1: $0c
    swap e                                        ; $58b2: $cb $33
    ld l, $00                                     ; $58b4: $2e $00
    sbc [hl]                                      ; $58b6: $9e
    xor $da                                       ; $58b7: $ee $da
    sub b                                         ; $58b9: $90
    db $fd                                        ; $58ba: $fd
    ei                                            ; $58bb: $fb
    cp $7f                                        ; $58bc: $fe $7f
    inc bc                                        ; $58be: $03
    db $fc                                        ; $58bf: $fc
    sbc a                                         ; $58c0: $9f
    rst $38                                       ; $58c1: $ff
    add hl, sp                                    ; $58c2: $39
    ld l, e                                       ; $58c3: $6b
    pop de                                        ; $58c4: $d1
    or d                                          ; $58c5: $b2
    ld a, a                                       ; $58c6: $7f
    rst $18                                       ; $58c7: $df
    rst $38                                       ; $58c8: $ff
    ld l, a                                       ; $58c9: $6f
    nop                                           ; $58ca: $00
    ret nc                                        ; $58cb: $d0

    ld h, l                                       ; $58cc: $65
    ld a, e                                       ; $58cd: $7b
    ld b, $ce                                     ; $58ce: $06 $ce
    ld sp, hl                                     ; $58d0: $f9
    ld l, e                                       ; $58d1: $6b
    pop de                                        ; $58d2: $d1

jr_05c_58d3:
    or d                                          ; $58d3: $b2
    ld a, a                                       ; $58d4: $7f
    rst $18                                       ; $58d5: $df
    rst $38                                       ; $58d6: $ff
    ld l, a                                       ; $58d7: $6f
    nop                                           ; $58d8: $00
    cp h                                          ; $58d9: $bc
    sbc b                                         ; $58da: $98
    ld a, a                                       ; $58db: $7f
    set 7, [hl]                                   ; $58dc: $cb $fe
    ld a, l                                       ; $58de: $7d
    rst $38                                       ; $58df: $ff
    cp a                                          ; $58e0: $bf
    ld bc, $c39c                                  ; $58e1: $01 $9c $c3
    rrca                                          ; $58e4: $0f
    ld h, [hl]                                    ; $58e5: $66
    rst $38                                       ; $58e6: $ff
    cp [hl]                                       ; $58e7: $be
    rst $38                                       ; $58e8: $ff
    rst $18                                       ; $58e9: $df
    nop                                           ; $58ea: $00
    sbc h                                         ; $58eb: $9c
    inc bc                                        ; $58ec: $03
    pop hl                                        ; $58ed: $e1
    or a                                          ; $58ee: $b7
    ld a, a                                       ; $58ef: $7f
    rst $18                                       ; $58f0: $df
    rst $38                                       ; $58f1: $ff
    ld l, a                                       ; $58f2: $6f
    nop                                           ; $58f3: $00
    ld a, h                                       ; $58f4: $7c
    sbc a                                         ; $58f5: $9f
    or $da                                        ; $58f6: $f6 $da
    cp a                                          ; $58f8: $bf
    rst $28                                       ; $58f9: $ef
    rst $38                                       ; $58fa: $ff
    scf                                           ; $58fb: $37
    nop                                           ; $58fc: $00
    ld e, $8f                                     ; $58fd: $1e $8f
    add sp, -$72                                  ; $58ff: $e8 $8e
    add e                                         ; $5901: $83
    sbc d                                         ; $5902: $9a
    jr c, jr_05c_58d3                             ; $5903: $38 $ce

    add sp, $67                                   ; $5905: $e8 $67
    ld sp, hl                                     ; $5907: $f9

Call_05c_5908:
    adc $19                                       ; $5908: $ce $19
    ld l, e                                       ; $590a: $6b
    db $fd                                        ; $590b: $fd
    nop                                           ; $590c: $00
    ld e, $8f                                     ; $590d: $1e $8f
    add hl, sp                                    ; $590f: $39
    ld h, b                                       ; $5910: $60
    ld h, d                                       ; $5911: $62
    ld [hl], b                                    ; $5912: $70
    ld e, b                                       ; $5913: $58
    ld h, a                                       ; $5914: $67
    ld b, $00                                     ; $5915: $06 $00
    ld e, [hl]                                    ; $5917: $5e
    or c                                          ; $5918: $b1
    xor $3d                                       ; $5919: $ee $3d
    inc hl                                        ; $591b: $23
    cp d                                          ; $591c: $ba
    db $e3                                        ; $591d: $e3
    jr nz, jr_05c_5920                            ; $591e: $20 $00

jr_05c_5920:
    ld e, $8f                                     ; $5920: $1e $8f
    ld bc, $4af9                                  ; $5922: $01 $f9 $4a
    ld [hl], c                                    ; $5925: $71
    dec de                                        ; $5926: $1b
    ld [hl], e                                    ; $5927: $73
    ld a, [hl-]                                   ; $5928: $3a
    ld e, e                                       ; $5929: $5b
    ld de, $000d                                  ; $592a: $11 $0d $00
    ld c, $f6                                     ; $592d: $0e $f6
    sbc $f3                                       ; $592f: $de $f3
    cp [hl]                                       ; $5931: $be
    ccf                                           ; $5932: $3f
    db $fc                                        ; $5933: $fc
    sbc a                                         ; $5934: $9f
    di                                            ; $5935: $f3
    add a                                         ; $5936: $87
    ld bc, $94fc                                  ; $5937: $01 $fc $94
    or $ce                                        ; $593a: $f6 $ce
    ld h, a                                       ; $593c: $67
    db $dd                                        ; $593d: $dd
    rrca                                          ; $593e: $0f
    nop                                           ; $593f: $00

jr_05c_5940:
    ld c, $83                                     ; $5940: $0e $83
    dec h                                         ; $5942: $25
    db $f4                                        ; $5943: $f4
    ld [hl], a                                    ; $5944: $77
    ld d, h                                       ; $5945: $54
    rst $30                                       ; $5946: $f7
    ld [bc], a                                    ; $5947: $02
    sbc [hl]                                      ; $5948: $9e
    cp a                                          ; $5949: $bf
    push af                                       ; $594a: $f5
    rra                                           ; $594b: $1f
    and d                                         ; $594c: $a2
    add hl, de                                    ; $594d: $19
    nop                                           ; $594e: $00
    inc a                                         ; $594f: $3c
    pop de                                        ; $5950: $d1
    db $eb                                        ; $5951: $eb
    scf                                           ; $5952: $37
    ld a, [$c0ce]                                 ; $5953: $fa $ce $c0
    inc bc                                        ; $5956: $03
    rst $28                                       ; $5957: $ef
    rlca                                          ; $5958: $07
    inc a                                         ; $5959: $3c
    ld h, e                                       ; $595a: $63
    ld a, l                                       ; $595b: $7d
    ld a, a                                       ; $595c: $7f
    ld [hl], h                                    ; $595d: $74
    and h                                         ; $595e: $a4
    jr c, jr_05c_5940                             ; $595f: $38 $df

    call nz, $bd13                                ; $5961: $c4 $13 $bd
    ld a, [hl]                                    ; $5964: $7e
    and e                                         ; $5965: $a3
    rst $28                                       ; $5966: $ef
    inc c                                         ; $5967: $0c
    inc a                                         ; $5968: $3c
    ldh a, [$7e]                                  ; $5969: $f0 $7e
    nop                                           ; $596b: $00
    sbc [hl]                                      ; $596c: $9e
    xor $9c                                       ; $596d: $ee $9c
    rst $08                                       ; $596f: $cf
    ld b, $a6                                     ; $5970: $06 $a6
    add sp, $4c                                   ; $5972: $e8 $4c
    db $dd                                        ; $5974: $dd
    add hl, de                                    ; $5975: $19
    sbc e                                         ; $5976: $9b
    inc sp                                        ; $5977: $33

jr_05c_5978:
    add e                                         ; $5978: $83
    rlca                                          ; $5979: $07
    sbc $0f                                       ; $597a: $de $0f
    nop                                           ; $597c: $00
    sbc [hl]                                      ; $597d: $9e
    ld l, a                                       ; $597e: $6f
    rst $38                                       ; $597f: $ff
    cp l                                          ; $5980: $bd
    dec [hl]                                      ; $5981: $35
    call z, $7819                                 ; $5982: $cc $19 $78
    ldh [$fd], a                                  ; $5985: $e0 $fd
    nop                                           ; $5987: $00
    ld c, $d7                                     ; $5988: $0e $d7
    rst $30                                       ; $598a: $f7
    rlca                                          ; $598b: $07
    ld e, e                                       ; $598c: $5b
    ld a, b                                       ; $598d: $78
    ldh [$fd], a                                  ; $598e: $e0 $fd
    nop                                           ; $5990: $00
    inc a                                         ; $5991: $3c
    ld h, e                                       ; $5992: $63
    ld a, l                                       ; $5993: $7d
    ld a, a                                       ; $5994: $7f
    ld [hl], h                                    ; $5995: $74
    and h                                         ; $5996: $a4
    jr c, jr_05c_5978                             ; $5997: $38 $df

    db $e4                                        ; $5999: $e4
    xor a                                         ; $599a: $af
    rst $28                                       ; $599b: $ef
    adc h                                         ; $599c: $8c
    ccf                                           ; $599d: $3f
    ret c                                         ; $599e: $d8

    jp nz, $ef03                                  ; $599f: $c2 $03 $ef

    rlca                                          ; $59a2: $07
    db $fc                                        ; $59a3: $fc
    cp a                                          ; $59a4: $bf
    di                                            ; $59a5: $f3
    pop hl                                        ; $59a6: $e1
    add c                                         ; $59a7: $81
    rst $30                                       ; $59a8: $f7
    sbc a                                         ; $59a9: $9f
    rra                                           ; $59aa: $1f
    ld [hl], e                                    ; $59ab: $73
    ld c, $00                                     ; $59ac: $0e $00
    cp h                                          ; $59ae: $bc
    jr c, @+$13                                   ; $59af: $38 $11

    xor e                                         ; $59b1: $ab
    ld a, a                                       ; $59b2: $7f
    dec sp                                        ; $59b3: $3b
    cp d                                          ; $59b4: $ba
    ccf                                           ; $59b5: $3f
    ld a, a                                       ; $59b6: $7f
    dec d                                         ; $59b7: $15
    ld l, $e4                                     ; $59b8: $2e $e4
    ld l, e                                       ; $59ba: $6b
    ld a, [hl]                                    ; $59bb: $7e
    rst $30                                       ; $59bc: $f7
    sbc [hl]                                      ; $59bd: $9e
    rlca                                          ; $59be: $07
    cp h                                          ; $59bf: $bc
    jp $b67f                                      ; $59c0: $c3 $7f $b6


    dec d                                         ; $59c3: $15
    and l                                         ; $59c4: $a5
    jp nz, Jump_05c_7c85                          ; $59c5: $c2 $85 $7c

    call $deef                                    ; $59c8: $cd $ef $de
    di                                            ; $59cb: $f3
    nop                                           ; $59cc: $00
    ld a, h                                       ; $59cd: $7c
    ld h, c                                       ; $59ce: $61
    or [hl]                                       ; $59cf: $b6
    dec [hl]                                      ; $59d0: $35
    or a                                          ; $59d1: $b7
    and d                                         ; $59d2: $a2

jr_05c_59d3:
    ld d, h                                       ; $59d3: $54
    cp b                                          ; $59d4: $b8
    sub b                                         ; $59d5: $90
    xor a                                         ; $59d6: $af
    ld sp, hl                                     ; $59d7: $f9
    db $dd                                        ; $59d8: $dd
    ld a, e                                       ; $59d9: $7b
    ld e, $00                                     ; $59da: $1e $00
    inc a                                         ; $59dc: $3c
    add sp, -$39                                  ; $59dd: $e8 $c7
    ld d, [hl]                                    ; $59df: $56
    sub h                                         ; $59e0: $94
    ld a, [bc]                                    ; $59e1: $0a
    rla                                           ; $59e2: $17
    ld a, [c]                                     ; $59e3: $f2
    dec [hl]                                      ; $59e4: $35
    cp a                                          ; $59e5: $bf
    ld a, e                                       ; $59e6: $7b
    rst $08                                       ; $59e7: $cf
    inc bc                                        ; $59e8: $03
    ld e, $b6                                     ; $59e9: $1e $b6
    ld b, l                                       ; $59eb: $45
    ld c, d                                       ; $59ec: $4a
    rst $30                                       ; $59ed: $f7
    dec e                                         ; $59ee: $1d
    push de                                       ; $59ef: $d5
    sub h                                         ; $59f0: $94
    sub e                                         ; $59f1: $93
    ld a, [bc]                                    ; $59f2: $0a
    rla                                           ; $59f3: $17
    ld a, [c]                                     ; $59f4: $f2
    dec [hl]                                      ; $59f5: $35
    cp a                                          ; $59f6: $bf
    ld a, e                                       ; $59f7: $7b
    rst $08                                       ; $59f8: $cf
    inc bc                                        ; $59f9: $03
    ld e, $e3                                     ; $59fa: $1e $e3
    or [hl]                                       ; $59fc: $b6
    adc l                                         ; $59fd: $8d
    cp c                                          ; $59fe: $b9
    inc c                                         ; $59ff: $0c
    ld a, [hl]                                    ; $5a00: $7e
    nop                                           ; $5a01: $00
    cp h                                          ; $5a02: $bc
    jr c, jr_05c_59d3                             ; $5a03: $38 $ce

    sbc b                                         ; $5a05: $98
    set 4, b                                      ; $5a06: $cb $e0
    ld l, a                                       ; $5a08: $6f
    nop                                           ; $5a09: $00
    xor $e3                                       ; $5a0a: $ee $e3
    ld e, c                                       ; $5a0c: $59
    inc d                                         ; $5a0d: $14
    ccf                                           ; $5a0e: $3f
    ld e, e                                       ; $5a0f: $5b
    rst $38                                       ; $5a10: $ff
    ld l, h                                       ; $5a11: $6c
    ld [bc], a                                    ; $5a12: $02
    jp $ee00                                      ; $5a13: $c3 $00 $ee


    db $e3                                        ; $5a16: $e3
    ld e, c                                       ; $5a17: $59
    inc d                                         ; $5a18: $14
    rst $18                                       ; $5a19: $df
    daa                                           ; $5a1a: $27
    or h                                          ; $5a1b: $b4
    nop                                           ; $5a1c: $00
    ld a, h                                       ; $5a1d: $7c
    ld h, e                                       ; $5a1e: $63
    xor l                                         ; $5a1f: $ad
    ld [hl], a                                    ; $5a20: $77
    ld l, $83                                     ; $5a21: $2e $83
    rra                                           ; $5a23: $1f
    nop                                           ; $5a24: $00
    cp h                                          ; $5a25: $bc
    bit 6, b                                      ; $5a26: $cb $70
    ret c                                         ; $5a28: $d8

    ld e, h                                       ; $5a29: $5c
    ld b, $3f                                     ; $5a2a: $06 $3f
    nop                                           ; $5a2c: $00
    inc a                                         ; $5a2d: $3c
    rst $08                                       ; $5a2e: $cf
    ld e, b                                       ; $5a2f: $58
    ld d, [hl]                                    ; $5a30: $56
    ld [$f9df], a                                 ; $5a31: $ea $df $f9
    or $23                                        ; $5a34: $f6 $23
    ld a, a                                       ; $5a36: $7f
    nop                                           ; $5a37: $00
    db $fc                                        ; $5a38: $fc
    sbc a                                         ; $5a39: $9f
    rst $38                                       ; $5a3a: $ff
    add hl, sp                                    ; $5a3b: $39
    ld e, e                                       ; $5a3c: $5b
    ld d, c                                       ; $5a3d: $51
    ld a, [hl-]                                   ; $5a3e: $3a
    ld h, e                                       ; $5a3f: $63
    db $f4                                        ; $5a40: $f4
    inc bc                                        ; $5a41: $03
    cp h                                          ; $5a42: $bc
    ld a, b                                       ; $5a43: $78
    ld b, a                                       ; $5a44: $47
    ld [hl], h                                    ; $5a45: $74
    cp a                                          ; $5a46: $bf
    ld e, h                                       ; $5a47: $5c
    ld [hl], b                                    ; $5a48: $70
    push bc                                       ; $5a49: $c5
    add hl, sp                                    ; $5a4a: $39
    nop                                           ; $5a4b: $00
    db $fc                                        ; $5a4c: $fc
    sub h                                         ; $5a4d: $94
    ld b, d                                       ; $5a4e: $42
    and d                                         ; $5a4f: $a2
    ld c, [hl]                                    ; $5a50: $4e
    ld d, h                                       ; $5a51: $54
    inc hl                                        ; $5a52: $23
    nop                                           ; $5a53: $00
    ld c, $f6                                     ; $5a54: $0e $f6
    or $7e                                        ; $5a56: $f6 $7e
    sbc b                                         ; $5a58: $98
    ld e, h                                       ; $5a59: $5c
    ld [hl], b                                    ; $5a5a: $70
    adc $39                                       ; $5a5b: $ce $39
    rst $20                                       ; $5a5d: $e7
    nop                                           ; $5a5e: $00
    sbc h                                         ; $5a5f: $9c
    inc bc                                        ; $5a60: $03
    rst $08                                       ; $5a61: $cf
    ld e, $f8                                     ; $5a62: $1e $f8
    rra                                           ; $5a64: $1f
    nop                                           ; $5a65: $00
    sbc [hl]                                      ; $5a66: $9e
    ld c, l                                       ; $5a67: $4d
    xor h                                         ; $5a68: $ac
    db $f4                                        ; $5a69: $f4
    cp e                                          ; $5a6a: $bb
    rst $00                                       ; $5a6b: $c7
    inc bc                                        ; $5a6c: $03
    cp h                                          ; $5a6d: $bc
    ld h, e                                       ; $5a6e: $63
    di                                            ; $5a6f: $f3
    rst $28                                       ; $5a70: $ef
    ld e, $f0                                     ; $5a71: $1e $f0
    xor e                                         ; $5a73: $ab
    ld [hl], b                                    ; $5a74: $70
    ld c, [hl]                                    ; $5a75: $4e

jr_05c_5a76:
    or h                                          ; $5a76: $b4
    ld a, l                                       ; $5a77: $7d
    nop                                           ; $5a78: $00
    ld a, h                                       ; $5a79: $7c
    inc [hl]                                      ; $5a7a: $34
    rst $30                                       ; $5a7b: $f7
    adc [hl]                                      ; $5a7c: $8e
    ld h, l                                       ; $5a7d: $65
    ld a, a                                       ; $5a7e: $7f
    rst $28                                       ; $5a7f: $ef
    inc bc                                        ; $5a80: $03
    cp h                                          ; $5a81: $bc
    cp b                                          ; $5a82: $b8
    ld l, h                                       ; $5a83: $6c
    ld h, b                                       ; $5a84: $60
    adc d                                         ; $5a85: $8a
    rrca                                          ; $5a86: $0f
    nop                                           ; $5a87: $00
    ld l, [hl]                                    ; $5a88: $6e
    rra                                           ; $5a89: $1f
    ld [hl], $46                                  ; $5a8a: $36 $46
    db $fd                                        ; $5a8c: $fd
    inc bc                                        ; $5a8d: $03
    xor $20                                       ; $5a8e: $ee $20
    sbc $76                                       ; $5a90: $de $76
    cp [hl]                                       ; $5a92: $be
    ld [de], a                                    ; $5a93: $12

jr_05c_5a94:
    jp c, Jump_05c_7d52                           ; $5a94: $da $52 $7d

    ld a, [hl-]                                   ; $5a97: $3a
    rra                                           ; $5a98: $1f
    nop                                           ; $5a99: $00
    ld c, $77                                     ; $5a9a: $0e $77
    rst $20                                       ; $5a9c: $e7
    ld e, h                                       ; $5a9d: $5c
    db $db                                        ; $5a9e: $db
    cpl                                           ; $5a9f: $2f
    ld sp, hl                                     ; $5aa0: $f9
    cp e                                          ; $5aa1: $bb
    ld [hl], e                                    ; $5aa2: $73
    ld b, $4c                                     ; $5aa3: $06 $4c
    nop                                           ; $5aa5: $00
    ld a, h                                       ; $5aa6: $7c
    jp $e63a                                      ; $5aa7: $c3 $3a $e6


    sbc a                                         ; $5aaa: $9f
    add a                                         ; $5aab: $87
    ld a, a                                       ; $5aac: $7f

Call_05c_5aad:
    and h                                         ; $5aad: $a4
    pop de                                        ; $5aae: $d1
    db $fd                                        ; $5aaf: $fd
    nop                                           ; $5ab0: $00
    cp h                                          ; $5ab1: $bc
    add sp, -$05                                  ; $5ab2: $e8 $fb
    ccf                                           ; $5ab4: $3f
    rlca                                          ; $5ab5: $07
    or d                                          ; $5ab6: $b2
    db $fd                                        ; $5ab7: $fd
    or l                                          ; $5ab8: $b5
    jr z, jr_05c_5a94                             ; $5ab9: $28 $d9

    sbc [hl]                                      ; $5abb: $9e
    ld a, e                                       ; $5abc: $7b
    add hl, bc                                    ; $5abd: $09
    nop                                           ; $5abe: $00
    cp h                                          ; $5abf: $bc
    ccf                                           ; $5ac0: $3f
    ld l, l                                       ; $5ac1: $6d
    db $ed                                        ; $5ac2: $ed
    ld e, c                                       ; $5ac3: $59
    cp [hl]                                       ; $5ac4: $be
    ld d, $25                                     ; $5ac5: $16 $25
    ld a, e                                       ; $5ac7: $7b

Call_05c_5ac8:
    sub [hl]                                      ; $5ac8: $96
    cpl                                           ; $5ac9: $2f

Jump_05c_5aca:
    nop                                           ; $5aca: $00
    cp h                                          ; $5acb: $bc
    ld b, h                                       ; $5acc: $44
    db $ec                                        ; $5acd: $ec
    adc [hl]                                      ; $5ace: $8e
    jr z, jr_05c_5a76                             ; $5acf: $28 $a5

    ld a, a                                       ; $5ad1: $7f
    ei                                            ; $5ad2: $fb
    rst $38                                       ; $5ad3: $ff
    dec c                                         ; $5ad4: $0d
    nop                                           ; $5ad5: $00
    xor $84                                       ; $5ad6: $ee $84
    pop hl                                        ; $5ad8: $e1
    ccf                                           ; $5ad9: $3f
    db $db                                        ; $5ada: $db
    cp c                                          ; $5adb: $b9
    ld sp, hl                                     ; $5adc: $f9
    ld [bc], a                                    ; $5add: $02
    inc a                                         ; $5ade: $3c
    add sp, $5f                                   ; $5adf: $e8 $5f
    jp z, $ada6                                   ; $5ae1: $ca $a6 $ad

    dec a                                         ; $5ae4: $3d
    set 2, a                                      ; $5ae5: $cb $d7
    and d                                         ; $5ae7: $a2
    ld h, h                                       ; $5ae8: $64
    rst $08                                       ; $5ae9: $cf
    ld a, [c]                                     ; $5aea: $f2
    dec b                                         ; $5aeb: $05
    cp h                                          ; $5aec: $bc
    ld l, a                                       ; $5aed: $6f
    ld sp, hl                                     ; $5aee: $f9
    ld a, $b3                                     ; $5aef: $3e $b3
    xor b                                         ; $5af1: $a8
    sbc l                                         ; $5af2: $9d
    ld [hl], e                                    ; $5af3: $73
    ld bc, $4f6e                                  ; $5af4: $01 $6e $4f
    xor h                                         ; $5af7: $ac
    sbc l                                         ; $5af8: $9d
    db $e3                                        ; $5af9: $e3
    sbc $07                                       ; $5afa: $de $07
    ld e, $e1                                     ; $5afc: $1e $e1
    ld a, h                                       ; $5afe: $7c
    db $dd                                        ; $5aff: $dd
    ccf                                           ; $5b00: $3f
    ld c, d                                       ; $5b01: $4a
    db $ec                                        ; $5b02: $ec
    ld h, a                                       ; $5b03: $67
    ld l, h                                       ; $5b04: $6c
    ccf                                           ; $5b05: $3f
    nop                                           ; $5b06: $00
    sbc h                                         ; $5b07: $9c
    ld h, e                                       ; $5b08: $63
    sbc [hl]                                      ; $5b09: $9e
    ld a, a                                       ; $5b0a: $7f
    ei                                            ; $5b0b: $fb
    ei                                            ; $5b0c: $fb
    cp $89                                        ; $5b0d: $fe $89
    db $db                                        ; $5b0f: $db
    rrca                                          ; $5b10: $0f
    nop                                           ; $5b11: $00
    ld c, $9f                                     ; $5b12: $0e $9f
    cp l                                          ; $5b14: $bd
    inc sp                                        ; $5b15: $33
    sub $2f                                       ; $5b16: $d6 $2f
    rst $38                                       ; $5b18: $ff
    rst $00                                       ; $5b19: $c7
    sbc h                                         ; $5b1a: $9c
    jp Jump_05c_6c1f                              ; $5b1b: $c3 $1f $6c


    adc $7f                                       ; $5b1e: $ce $7f
    nop                                           ; $5b20: $00
    cp h                                          ; $5b21: $bc
    add e                                         ; $5b22: $83
    ld sp, hl                                     ; $5b23: $f9
    db $db                                        ; $5b24: $db
    or $27                                        ; $5b25: $f6 $27
    ld [hl], $c7                                  ; $5b27: $36 $c7
    ld l, c                                       ; $5b29: $69
    ei                                            ; $5b2a: $fb
    nop                                           ; $5b2b: $00
    ld c, $70                                     ; $5b2c: $0e $70
    ld hl, $f35f                                  ; $5b2e: $21 $5f $f3
    cp e                                          ; $5b31: $bb
    rst $30                                       ; $5b32: $f7
    db $fc                                        ; $5b33: $fc
    db $fc                                        ; $5b34: $fc
    add hl, sp                                    ; $5b35: $39
    rlca                                          ; $5b36: $07
    db $fc                                        ; $5b37: $fc
    nop                                           ; $5b38: $00
    ld e, $ff                                     ; $5b39: $1e $ff
    ld h, h                                       ; $5b3b: $64
    db $db                                        ; $5b3c: $db
    or [hl]                                       ; $5b3d: $b6
    or $23                                        ; $5b3e: $f6 $23
    ld b, a                                       ; $5b40: $47
    ld hl, sp+$01                                 ; $5b41: $f8 $01
    inc a                                         ; $5b43: $3c
    ld bc, $7849                                  ; $5b44: $01 $49 $78
    inc de                                        ; $5b47: $13
    ld [hl], d                                    ; $5b48: $72
    add $e7                                       ; $5b49: $c6 $e7
    ld a, [hl-]                                   ; $5b4b: $3a
    add a                                         ; $5b4c: $87
    dec bc                                        ; $5b4d: $0b
    nop                                           ; $5b4e: $00
    ld e, $0f                                     ; $5b4f: $1e $0f
    rst $38                                       ; $5b51: $ff
    rst $08                                       ; $5b52: $cf
    ei                                            ; $5b53: $fb
    cp $90                                        ; $5b54: $fe $90
    rst $20                                       ; $5b56: $e7
    cp e                                          ; $5b57: $bb
    sub $38                                       ; $5b58: $d6 $38
    rlca                                          ; $5b5a: $07
    db $fc                                        ; $5b5b: $fc
    rst $20                                       ; $5b5c: $e7
    inc b                                         ; $5b5d: $04
    nop                                           ; $5b5e: $00
    sbc [hl]                                      ; $5b5f: $9e
    cpl                                           ; $5b60: $2f
    sbc [hl]                                      ; $5b61: $9e
    add sp, $5e                                   ; $5b62: $e8 $5e
    pop bc                                        ; $5b64: $c1
    ld d, h                                       ; $5b65: $54
    ld l, e                                       ; $5b66: $6b
    nop                                           ; $5b67: $00
    sbc [hl]                                      ; $5b68: $9e
    xor $9c                                       ; $5b69: $ee $9c
    ld a, a                                       ; $5b6b: $7f
    sbc $5f                                       ; $5b6c: $de $5f
    inc b                                         ; $5b6e: $04
    inc a                                         ; $5b6f: $3c
    cp e                                          ; $5b70: $bb
    and a                                         ; $5b71: $a7
    add hl, bc                                    ; $5b72: $09
    nop                                           ; $5b73: $00
    cp h                                          ; $5b74: $bc
    ld e, a                                       ; $5b75: $5f
    rrca                                          ; $5b76: $0f
    nop                                           ; $5b77: $00
    sbc h                                         ; $5b78: $9c
    call $db46                                    ; $5b79: $cd $46 $db
    sub [hl]                                      ; $5b7c: $96
    adc l                                         ; $5b7d: $8d
    inc sp                                        ; $5b7e: $33
    rra                                           ; $5b7f: $1f
    nop                                           ; $5b80: $00
    sbc h                                         ; $5b81: $9c
    pop bc                                        ; $5b82: $c1
    db $fc                                        ; $5b83: $fc
    xor b                                         ; $5b84: $a8
    sbc $ad                                       ; $5b85: $de $ad
    push af                                       ; $5b87: $f5
    ld a, a                                       ; $5b88: $7f
    call z, Call_000_0039                         ; $5b89: $cc $39 $00
    ld c, $69                                     ; $5b8c: $0e $69
    ld [hl], e                                    ; $5b8e: $73
    ld a, [hl+]                                   ; $5b8f: $2a
    ld sp, hl                                     ; $5b90: $f9
    inc c                                         ; $5b91: $0c
    inc de                                        ; $5b92: $13
    adc h                                         ; $5b93: $8c
    add sp, $7e                                   ; $5b94: $e8 $7e
    nop                                           ; $5b96: $00
    sbc [hl]                                      ; $5b97: $9e
    ld a, a                                       ; $5b98: $7f
    and l                                         ; $5b99: $a5
    xor a                                         ; $5b9a: $af
    adc c                                         ; $5b9b: $89
    db $e3                                        ; $5b9c: $e3
    inc c                                         ; $5b9d: $0c
    jp $2f73                                      ; $5b9e: $c3 $73 $2f


    ld [bc], a                                    ; $5ba1: $02
    sbc h                                         ; $5ba2: $9c
    ld e, c                                       ; $5ba3: $59
    halt                                          ; $5ba4: $76
    xor b                                         ; $5ba5: $a8
    and $5b                                       ; $5ba6: $e6 $5b
    cp $3d                                        ; $5ba8: $fe $3d
    call z, $c19e                                 ; $5baa: $cc $9e $c1
    rrca                                          ; $5bad: $0f

jr_05c_5bae:
    nop                                           ; $5bae: $00
    ld l, $3b                                     ; $5baf: $2e $3b
    daa                                           ; $5bb1: $27
    ccf                                           ; $5bb2: $3f
    xor d                                         ; $5bb3: $aa
    or d                                          ; $5bb4: $b2
    jp nc, $b3c4                                  ; $5bb5: $d2 $c4 $b3

    ld [hl], e                                    ; $5bb8: $73
    ld [hl+], a                                   ; $5bb9: $22
    nop                                           ; $5bba: $00
    sbc [hl]                                      ; $5bbb: $9e
    rst $38                                       ; $5bbc: $ff
    ld sp, hl                                     ; $5bbd: $f9
    or l                                          ; $5bbe: $b5
    ret z                                         ; $5bbf: $c8

    rst $30                                       ; $5bc0: $f7
    push hl                                       ; $5bc1: $e5
    rst $38                                       ; $5bc2: $ff
    add hl, sp                                    ; $5bc3: $39
    ld [$003f], sp                                ; $5bc4: $08 $3f $00
    ld e, $e1                                     ; $5bc7: $1e $e1
    jr c, jr_05c_5bae                             ; $5bc9: $38 $e3

    ld a, h                                       ; $5bcb: $7c
    ld a, [bc]                                    ; $5bcc: $0a
    ccf                                           ; $5bcd: $3f
    nop                                           ; $5bce: $00
    inc a                                         ; $5bcf: $3c
    sbc a                                         ; $5bd0: $9f
    db $10                                        ; $5bd1: $10
    ld e, e                                       ; $5bd2: $5b
    ret z                                         ; $5bd3: $c8

    sub [hl]                                      ; $5bd4: $96
    db $ec                                        ; $5bd5: $ec
    dec sp                                        ; $5bd6: $3b
    and d                                         ; $5bd7: $a2
    ld a, [c]                                     ; $5bd8: $f2
    ld h, a                                       ; $5bd9: $67
    jr nc, jr_05c_5bde                            ; $5bda: $30 $02

    sbc [hl]                                      ; $5bdc: $9e
    rst $28                                       ; $5bdd: $ef

jr_05c_5bde:
    jp c, Jump_05c_475b                           ; $5bde: $da $5b $47

    ld l, c                                       ; $5be1: $69
    ld l, [hl]                                    ; $5be2: $6e
    cp [hl]                                       ; $5be3: $be
    nop                                           ; $5be4: $00
    ld a, h                                       ; $5be5: $7c
    ld h, e                                       ; $5be6: $63
    xor l                                         ; $5be7: $ad
    rst $10                                       ; $5be8: $d7
    rst $38                                       ; $5be9: $ff
    ld [hl], e                                    ; $5bea: $73
    stop                                          ; $5beb: $10 $00
    ld l, [hl]                                    ; $5bed: $6e
    ld l, a                                       ; $5bee: $6f
    add l                                         ; $5bef: $85
    call $f065                                    ; $5bf0: $cd $65 $f0
    inc bc                                        ; $5bf3: $03
    inc a                                         ; $5bf4: $3c
    ld h, e                                       ; $5bf5: $63
    rst $08                                       ; $5bf6: $cf
    nop                                           ; $5bf7: $00
    ld e, $47                                     ; $5bf8: $1e $47
    dec [hl]                                      ; $5bfa: $35
    push hl                                       ; $5bfb: $e5

Jump_05c_5bfc:
    and h                                         ; $5bfc: $a4
    rst $08                                       ; $5bfd: $cf
    ld a, a                                       ; $5bfe: $7f
    dec bc                                        ; $5bff: $0b
    nop                                           ; $5c00: $00
    sbc h                                         ; $5c01: $9c
    bit 7, h                                      ; $5c02: $cb $7c
    ccf                                           ; $5c04: $3f
    ld h, b                                       ; $5c05: $60
    ld [bc], a                                    ; $5c06: $02
    ld c, $9f                                     ; $5c07: $0e $9f
    ld a, l                                       ; $5c09: $7d
    push de                                       ; $5c0a: $d5
    or b                                          ; $5c0b: $b0
    ld [hl], h                                    ; $5c0c: $74
    ld c, a                                       ; $5c0d: $4f
    nop                                           ; $5c0e: $00
    ld c, $68                                     ; $5c0f: $0e $68
    ld h, [hl]                                    ; $5c11: $66
    scf                                           ; $5c12: $37
    ld [hl], l                                    ; $5c13: $75
    ld [hl], e                                    ; $5c14: $73
    db $dd                                        ; $5c15: $dd
    ld e, c                                       ; $5c16: $59
    ld h, [hl]                                    ; $5c17: $66
    ld sp, hl                                     ; $5c18: $f9
    ld l, [hl]                                    ; $5c19: $6e
    rst $30                                       ; $5c1a: $f7
    inc bc                                        ; $5c1b: $03
    cp h                                          ; $5c1c: $bc
    ret z                                         ; $5c1d: $c8

    cp d                                          ; $5c1e: $ba
    scf                                           ; $5c1f: $37
    ld c, e                                       ; $5c20: $4b
    ld hl, $1d6b                                  ; $5c21: $21 $6b $1d
    rst $20                                       ; $5c24: $e7
    ld h, $00                                     ; $5c25: $26 $00
    sbc h                                         ; $5c27: $9c
    ld e, e                                       ; $5c28: $5b
    db $e3                                        ; $5c29: $e3
    sbc h                                         ; $5c2a: $9c
    ld d, a                                       ; $5c2b: $57
    xor h                                         ; $5c2c: $ac
    ldh a, [$84]                                  ; $5c2d: $f0 $84
    jp nz, Jump_05c_62b6                          ; $5c2f: $c2 $b6 $62

    sbc e                                         ; $5c32: $9b
    cp b                                          ; $5c33: $b8
    ld bc, $63bc                                  ; $5c34: $01 $bc $63
    sbc h                                         ; $5c37: $9c
    or c                                          ; $5c38: $b1
    or [hl]                                       ; $5c39: $b6
    xor a                                         ; $5c3a: $af
    jp nz, $7ded                                  ; $5c3b: $c2 $ed $7d

    pop bc                                        ; $5c3e: $c1
    xor a                                         ; $5c3f: $af
    inc a                                         ; $5c40: $3c
    ld c, [hl]                                    ; $5c41: $4e
    adc d                                         ; $5c42: $8a
    adc $4c                                       ; $5c43: $ce $4c
    ld h, h                                       ; $5c45: $64
    db $dd                                        ; $5c46: $dd
    dec bc                                        ; $5c47: $0b
    nop                                           ; $5c48: $00
    cp h                                          ; $5c49: $bc
    sub h                                         ; $5c4a: $94
    ld [hl], l                                    ; $5c4b: $75
    inc [hl]                                      ; $5c4c: $34
    ld d, c                                       ; $5c4d: $51
    ld c, l                                       ; $5c4e: $4d
    ld l, $35                                     ; $5c4f: $2e $35
    dec [hl]                                      ; $5c51: $35
    add hl, hl                                    ; $5c52: $29
    ld l, h                                       ; $5c53: $6c
    dec hl                                        ; $5c54: $2b
    cp d                                          ; $5c55: $ba
    add hl, bc                                    ; $5c56: $09
    ld a, [bc]                                    ; $5c57: $0a
    nop                                           ; $5c58: $00
    adc c                                         ; $5c59: $89
    cp b                                          ; $5c5a: $b8
    push hl                                       ; $5c5b: $e5
    cp h                                          ; $5c5c: $bc
    nop                                           ; $5c5d: $00
    ld a, h                                       ; $5c5e: $7c
    db $db                                        ; $5c5f: $db
    ld b, h                                       ; $5c60: $44
    and l                                         ; $5c61: $a5
    ld e, b                                       ; $5c62: $58
    push af                                       ; $5c63: $f5
    ei                                            ; $5c64: $fb
    sbc a                                         ; $5c65: $9f
    ld b, d                                       ; $5c66: $42
    ld b, $37                                     ; $5c67: $06 $37
    nop                                           ; $5c69: $00
    ret nc                                        ; $5c6a: $d0

    xor l                                         ; $5c6b: $ad
    inc e                                         ; $5c6c: $1c
    ld d, a                                       ; $5c6d: $57
    sub e                                         ; $5c6e: $93
    or d                                          ; $5c6f: $b2
    ld l, [hl]                                    ; $5c70: $6e
    ld [hl+], a                                   ; $5c71: $22
    dec [hl]                                      ; $5c72: $35
    dec [hl]                                      ; $5c73: $35
    add hl, hl                                    ; $5c74: $29
    ld l, h                                       ; $5c75: $6c
    dec hl                                        ; $5c76: $2b
    cp d                                          ; $5c77: $ba
    ld c, c                                       ; $5c78: $49
    ldh a, [rNR23]                                ; $5c79: $f0 $18
    ld l, h                                       ; $5c7b: $6c
    ld d, l                                       ; $5c7c: $55
    ld e, c                                       ; $5c7d: $59
    ld [hl], e                                    ; $5c7e: $73
    inc bc                                        ; $5c7f: $03
    ld e, $7d                                     ; $5c80: $1e $7d
    rst $08                                       ; $5c82: $cf
    sub a                                         ; $5c83: $97
    rst $38                                       ; $5c84: $ff
    ld e, e                                       ; $5c85: $5b
    ld a, a                                       ; $5c86: $7f

jr_05c_5c87:
    rst $38                                       ; $5c87: $ff
    add hl, sp                                    ; $5c88: $39
    cpl                                           ; $5c89: $2f
    jr jr_05c_5c87                                ; $5c8a: $18 $fb

    or a                                          ; $5c8c: $b7
    ld d, h                                       ; $5c8d: $54
    rst $28                                       ; $5c8e: $ef
    ei                                            ; $5c8f: $fb
    ei                                            ; $5c90: $fb
    rla                                           ; $5c91: $17
    nop                                           ; $5c92: $00
    inc a                                         ; $5c93: $3c
    rst $08                                       ; $5c94: $cf
    ld e, b                                       ; $5c95: $58
    ld h, $fb                                     ; $5c96: $26 $fb
    sub a                                         ; $5c98: $97
    ld e, e                                       ; $5c99: $5b
    adc $6b                                       ; $5c9a: $ce $6b
    adc [hl]                                      ; $5c9c: $8e
    ld l, d                                       ; $5c9d: $6a
    db $f4                                        ; $5c9e: $f4
    rst $10                                       ; $5c9f: $d7
    ld a, [hl-]                                   ; $5ca0: $3a
    cp d                                          ; $5ca1: $ba
    jp hl                                         ; $5ca2: $e9


    ld [bc], a                                    ; $5ca3: $02
    inc a                                         ; $5ca4: $3c
    rst $08                                       ; $5ca5: $cf
    ld e, b                                       ; $5ca6: $58
    ld h, $fb                                     ; $5ca7: $26 $fb
    sub a                                         ; $5ca9: $97
    ld e, e                                       ; $5caa: $5b
    adc $ab                                       ; $5cab: $ce $ab
    ld a, a                                       ; $5cad: $7f
    rst $20                                       ; $5cae: $e7
    ei                                            ; $5caf: $fb
    ld l, e                                       ; $5cb0: $6b
    dec e                                         ; $5cb1: $1d
    db $dd                                        ; $5cb2: $dd
    ld [hl], h                                    ; $5cb3: $74
    ld bc, $bf7c                                  ; $5cb4: $01 $7c $bf
    sub $63                                       ; $5cb7: $d6 $63
    add sp, -$49                                  ; $5cb9: $e8 $b7
    ld e, [hl]                                    ; $5cbb: $5e
    ld e, c                                       ; $5cbc: $59
    jp c, $34a4                                   ; $5cbd: $da $a4 $34

    set 5, c                                      ; $5cc0: $cb $e9
    inc [hl]                                      ; $5cc2: $34
    ld [hl], c                                    ; $5cc3: $71
    ld c, e                                       ; $5cc4: $4b
    ld c, [hl]                                    ; $5cc5: $4e
    ld a, [hl-]                                   ; $5cc6: $3a
    db $ed                                        ; $5cc7: $ed
    sub [hl]                                      ; $5cc8: $96
    di                                            ; $5cc9: $f3
    ld [c], a                                     ; $5cca: $e2
    ld [hl], h                                    ; $5ccb: $74
    add sp, $14                                   ; $5ccc: $e8 $14
    nop                                           ; $5cce: $00
    ld c, $9f                                     ; $5ccf: $0e $9f
    push bc                                       ; $5cd1: $c5
    db $ed                                        ; $5cd2: $ed
    rst $38                                       ; $5cd3: $ff
    ld l, e                                       ; $5cd4: $6b
    adc [hl]                                      ; $5cd5: $8e
    dec l                                         ; $5cd6: $2d
    call $fcc1                                    ; $5cd7: $cd $c1 $fc
    ld l, l                                       ; $5cda: $6d
    ld a, e                                       ; $5cdb: $7b
    ld a, a                                       ; $5cdc: $7f
    sub a                                         ; $5cdd: $97
    db $fd                                        ; $5cde: $fd
    db $fc                                        ; $5cdf: $fc
    and $96                                       ; $5ce0: $e6 $96
    sbc h                                         ; $5ce2: $9c
    ld [hl], h                                    ; $5ce3: $74
    jp c, $e72d                                   ; $5ce4: $da $2d $e7

    push bc                                       ; $5ce7: $c5
    jp hl                                         ; $5ce8: $e9


    ret nc                                        ; $5ce9: $d0

    add hl, hl                                    ; $5cea: $29
    nop                                           ; $5ceb: $00
    ld c, $76                                     ; $5cec: $0e $76
    ld c, e                                       ; $5cee: $4b
    ld l, c                                       ; $5cef: $69
    sub [hl]                                      ; $5cf0: $96
    inc de                                        ; $5cf1: $13
    dec h                                         ; $5cf2: $25
    dec d                                         ; $5cf3: $15
    db $dd                                        ; $5cf4: $dd
    or c                                          ; $5cf5: $b1
    jp z, $0571                                   ; $5cf6: $ca $71 $05

    ld d, e                                       ; $5cf9: $53
    scf                                           ; $5cfa: $37
    sub c                                         ; $5cfb: $91
    xor $c1                                       ; $5cfc: $ee $c1
    add $cf                                       ; $5cfe: $c6 $cf
    rst $38                                       ; $5d00: $ff
    sub d                                         ; $5d01: $92
    ld h, l                                       ; $5d02: $65
    ld e, h                                       ; $5d03: $5c
    scf                                           ; $5d04: $37
    ld [hl], l                                    ; $5d05: $75
    inc de                                        ; $5d06: $13
    or a                                          ; $5d07: $b7
    db $e4                                        ; $5d08: $e4
    and h                                         ; $5d09: $a4
    db $d3                                        ; $5d0a: $d3
    ld l, [hl]                                    ; $5d0b: $6e
    add hl, sp                                    ; $5d0c: $39
    cpl                                           ; $5d0d: $2f
    ld c, [hl]                                    ; $5d0e: $4e
    add a                                         ; $5d0f: $87
    ld c, [hl]                                    ; $5d10: $4e
    ld bc, $bf7c                                  ; $5d11: $01 $7c $bf
    or l                                          ; $5d14: $b5
    ld e, b                                       ; $5d15: $58
    cp d                                          ; $5d16: $ba
    ld a, a                                       ; $5d17: $7f

Call_05c_5d18:
    adc [hl]                                      ; $5d18: $8e
    or l                                          ; $5d19: $b5
    ld a, [hl]                                    ; $5d1a: $7e
    ld l, [hl]                                    ; $5d1b: $6e
    ret                                           ; $5d1c: $c9


    ld c, c                                       ; $5d1d: $49
    and a                                         ; $5d1e: $a7
    db $dd                                        ; $5d1f: $dd
    ld [hl], d                                    ; $5d20: $72
    ld e, [hl]                                    ; $5d21: $5e
    sbc h                                         ; $5d22: $9c
    ld c, $9d                                     ; $5d23: $0e $9d
    ld [bc], a                                    ; $5d25: $02
    ld c, $9f                                     ; $5d26: $0e $9f
    cp l                                          ; $5d28: $bd
    push af                                       ; $5d29: $f5
    daa                                           ; $5d2a: $27
    ld [hl], l                                    ; $5d2b: $75
    ld l, a                                       ; $5d2c: $6f
    sub e                                         ; $5d2d: $93
    ldh a, [rLY]                                  ; $5d2e: $f0 $44
    ld l, c                                       ; $5d30: $69
    and d                                         ; $5d31: $a2
    call $d2ff                                    ; $5d32: $cd $ff $d2
    db $fd                                        ; $5d35: $fd
    ld l, e                                       ; $5d36: $6b
    db $fd                                        ; $5d37: $fd
    dec [hl]                                      ; $5d38: $35
    sbc d                                         ; $5d39: $9a
    ld e, e                                       ; $5d3a: $5b
    ld c, [hl]                                    ; $5d3b: $4e
    ld a, [hl-]                                   ; $5d3c: $3a
    db $ed                                        ; $5d3d: $ed
    sub [hl]                                      ; $5d3e: $96
    di                                            ; $5d3f: $f3
    ld [c], a                                     ; $5d40: $e2
    ld [hl], l                                    ; $5d41: $75
    add sp, $14                                   ; $5d42: $e8 $14
    nop                                           ; $5d44: $00
    ld c, $9f                                     ; $5d45: $0e $9f
    cp l                                          ; $5d47: $bd
    push af                                       ; $5d48: $f5
    daa                                           ; $5d49: $27
    ld [hl], l                                    ; $5d4a: $75
    ld l, a                                       ; $5d4b: $6f
    sub e                                         ; $5d4c: $93
    ldh a, [rLY]                                  ; $5d4d: $f0 $44
    ld l, c                                       ; $5d4f: $69
    and d                                         ; $5d50: $a2
    call $d2ff                                    ; $5d51: $cd $ff $d2
    db $fd                                        ; $5d54: $fd
    ld l, e                                       ; $5d55: $6b
    db $fd                                        ; $5d56: $fd
    dec [hl]                                      ; $5d57: $35
    sbc d                                         ; $5d58: $9a
    ld e, e                                       ; $5d59: $5b
    ld c, [hl]                                    ; $5d5a: $4e
    ld a, [hl-]                                   ; $5d5b: $3a
    db $ed                                        ; $5d5c: $ed
    sub [hl]                                      ; $5d5d: $96
    di                                            ; $5d5e: $f3
    ld [c], a                                     ; $5d5f: $e2
    ld [hl], l                                    ; $5d60: $75
    add sp, $14                                   ; $5d61: $e8 $14
    nop                                           ; $5d63: $00
    cp h                                          ; $5d64: $bc
    reti                                          ; $5d65: $d9


    add hl, sp                                    ; $5d66: $39
    inc b                                         ; $5d67: $04
    nop                                           ; $5d68: $00
    ret nc                                        ; $5d69: $d0

    dec bc                                        ; $5d6a: $0b
    nop                                           ; $5d6b: $00
    sub d                                         ; $5d6c: $92
    db $e4                                        ; $5d6d: $e4
    sub [hl]                                      ; $5d6e: $96
    di                                            ; $5d6f: $f3
    ld [hl-], a                                   ; $5d70: $32
    rra                                           ; $5d71: $1f
    nop                                           ; $5d72: $00
    and $03                                       ; $5d73: $e6 $03
    inc e                                         ; $5d75: $1c
    sub $0f                                       ; $5d76: $d6 $0f
    nop                                           ; $5d78: $00
    ld a, h                                       ; $5d79: $7c
    ld e, c                                       ; $5d7a: $59
    ld b, $00                                     ; $5d7b: $06 $00
    ld c, $71                                     ; $5d7d: $0e $71
    xor l                                         ; $5d7f: $ad
    rlca                                          ; $5d80: $07
    nop                                           ; $5d81: $00
    ld c, $b1                                     ; $5d82: $0e $b1
    ccf                                           ; $5d84: $3f
    and c                                         ; $5d85: $a1
    jr z, jr_05c_5d9d                             ; $5d86: $28 $15

    ld l, $e4                                     ; $5d88: $2e $e4
    ld l, e                                       ; $5d8a: $6b
    ld a, [hl]                                    ; $5d8b: $7e
    rst $30                                       ; $5d8c: $f7
    sbc [hl]                                      ; $5d8d: $9e
    rlca                                          ; $5d8e: $07
    db $fc                                        ; $5d8f: $fc
    pop bc                                        ; $5d90: $c1
    ld a, [c]                                     ; $5d91: $f2
    add sp, $71                                   ; $5d92: $e8 $71
    ldh a, [$e5]                                  ; $5d94: $f0 $e5
    db $10                                        ; $5d96: $10
    ei                                            ; $5d97: $fb
    inc de                                        ; $5d98: $13
    adc d                                         ; $5d99: $8a
    ld d, d                                       ; $5d9a: $52
    pop hl                                        ; $5d9b: $e1
    ld b, d                                       ; $5d9c: $42

jr_05c_5d9d:
    cp [hl]                                       ; $5d9d: $be
    and $77                                       ; $5d9e: $e6 $77
    rst $28                                       ; $5da0: $ef
    ld sp, hl                                     ; $5da1: $f9
    xor a                                         ; $5da2: $af
    dec bc                                        ; $5da3: $0b
    nop                                           ; $5da4: $00
    inc e                                         ; $5da5: $1c
    sub $7f                                       ; $5da6: $d6 $7f
    rst $18                                       ; $5da8: $df
    and c                                         ; $5da9: $a1
    ld a, e                                       ; $5daa: $7b
    db $e3                                        ; $5dab: $e3
    call nz, Call_05c_7439                        ; $5dac: $c4 $39 $74
    rst $18                                       ; $5daf: $df
    and c                                         ; $5db0: $a1
    inc [hl]                                      ; $5db1: $34
    bit 5, c                                      ; $5db2: $cb $69
    adc [hl]                                      ; $5db4: $8e
    ld l, d                                       ; $5db5: $6a
    ld e, h                                       ; $5db6: $5c
    db $db                                        ; $5db7: $db
    rst $10                                       ; $5db8: $d7
    and h                                         ; $5db9: $a4
    xor h                                         ; $5dba: $ac
    and e                                         ; $5dbb: $a3
    dec sp                                        ; $5dbc: $3b
    add e                                         ; $5dbd: $83
    ld c, c                                       ; $5dbe: $49
    dec a                                         ; $5dbf: $3d
    or b                                          ; $5dc0: $b0
    dec sp                                        ; $5dc1: $3b
    or [hl]                                       ; $5dc2: $b6
    rst $38                                       ; $5dc3: $ff
    ld [bc], a                                    ; $5dc4: $02
    ld a, h                                       ; $5dc5: $7c
    ld l, e                                       ; $5dc6: $6b
    ld c, l                                       ; $5dc7: $4d
    jp nz, $b6b3                                  ; $5dc8: $c2 $b3 $b6

    xor l                                         ; $5dcb: $ad
    cp c                                          ; $5dcc: $b9
    ld e, e                                       ; $5dcd: $5b
    add l                                         ; $5dce: $85
    sub $a3                                       ; $5dcf: $d6 $a3
    ld b, [hl]                                    ; $5dd1: $46
    ld b, e                                       ; $5dd2: $43
    ld bc, $743c                                  ; $5dd3: $01 $3c $74
    rst $18                                       ; $5dd6: $df
    ld d, c                                       ; $5dd7: $51
    ld c, l                                       ; $5dd8: $4d
    add hl, sp                                    ; $5dd9: $39
    sub l                                         ; $5dda: $95
    jp nc, $272c                                  ; $5ddb: $d2 $2c $27

    push hl                                       ; $5dde: $e5
    ld a, a                                       ; $5ddf: $7f
    or [hl]                                       ; $5de0: $b6
    ld a, [$712f]                                 ; $5de1: $fa $2f $71
    cp $da                                        ; $5de4: $fe $da
    ld c, [hl]                                    ; $5de6: $4e
    inc d                                         ; $5de7: $14
    sbc [hl]                                      ; $5de8: $9e
    di                                            ; $5de9: $f3
    cp d                                          ; $5dea: $ba
    or a                                          ; $5deb: $b7
    adc c                                         ; $5dec: $89
    ld c, d                                       ; $5ded: $4a

jr_05c_5dee:
    rst $30                                       ; $5dee: $f7
    jr jr_05c_5dee                                ; $5def: $18 $fd

    ld d, b                                       ; $5df1: $50
    nop                                           ; $5df2: $00
    inc a                                         ; $5df3: $3c
    rst $08                                       ; $5df4: $cf
    xor $bd                                       ; $5df5: $ee $bd
    call nz, Call_05c_4db7                        ; $5df7: $c4 $b7 $4d
    ld d, h                                       ; $5dfa: $54
    cp d                                          ; $5dfb: $ba
    rst $00                                       ; $5dfc: $c7
    add sp, -$79                                  ; $5dfd: $e8 $87
    ld [bc], a                                    ; $5dff: $02

Call_05c_5e00:
    db $fc                                        ; $5e00: $fc
    ld [hl], h                                    ; $5e01: $74
    sub e                                         ; $5e02: $93
    and $77                                       ; $5e03: $e6 $77
    rst $28                                       ; $5e05: $ef
    ld a, c                                       ; $5e06: $79
    db $dd                                        ; $5e07: $dd
    ccf                                           ; $5e08: $3f
    db $ed                                        ; $5e09: $ed
    ld e, a                                       ; $5e0a: $5f
    ld l, [hl]                                    ; $5e0b: $6e
    add hl, sp                                    ; $5e0c: $39
    cpl                                           ; $5e0d: $2f
    di                                            ; $5e0e: $f3
    cpl                                           ; $5e0f: $2f
    nop                                           ; $5e10: $00
    cp h                                          ; $5e11: $bc
    sub h                                         ; $5e12: $94
    ld [hl], l                                    ; $5e13: $75
    ld [hl], h                                    ; $5e14: $74
    ld h, [hl]                                    ; $5e15: $66
    ld c, l                                       ; $5e16: $4d
    jp z, Jump_05c_4b71                           ; $5e17: $ca $71 $4b

    rst $30                                       ; $5e1a: $f7
    ld c, a                                       ; $5e1b: $4f
    ei                                            ; $5e1c: $fb
    sub a                                         ; $5e1d: $97
    ld e, e                                       ; $5e1e: $5b

jr_05c_5e1f:
    adc $cb                                       ; $5e1f: $ce $cb
    db $fc                                        ; $5e21: $fc
    dec bc                                        ; $5e22: $0b
    nop                                           ; $5e23: $00
    db $fc                                        ; $5e24: $fc
    sub c                                         ; $5e25: $91
    ld b, d                                       ; $5e26: $42
    adc b                                         ; $5e27: $88
    ld l, d                                       ; $5e28: $6a
    ld [hl], d                                    ; $5e29: $72
    ld l, c                                       ; $5e2a: $69
    cp $f0                                        ; $5e2b: $fe $f0
    cp a                                          ; $5e2d: $bf
    and c                                         ; $5e2e: $a1
    nop                                           ; $5e2f: $00
    sbc h                                         ; $5e30: $9c
    ld e, e                                       ; $5e31: $5b
    db $e3                                        ; $5e32: $e3
    sbc h                                         ; $5e33: $9c
    ld d, a                                       ; $5e34: $57
    xor h                                         ; $5e35: $ac
    ld a, [$f217]                                 ; $5e36: $fa $17 $f2
    jp nz, Jump_05c_5e73                          ; $5e39: $c2 $73 $5e

    db $fd                                        ; $5e3c: $fd
    call z, $988f                                 ; $5e3d: $cc $8f $98
    or [hl]                                       ; $5e40: $b6
    ld h, d                                       ; $5e41: $62
    sbc a                                         ; $5e42: $9f
    cp $cb                                        ; $5e43: $fe $cb
    halt                                          ; $5e45: $76
    db $d3                                        ; $5e46: $d3
    xor b                                         ; $5e47: $a8
    dec bc                                        ; $5e48: $0b
    nop                                           ; $5e49: $00
    ld a, h                                       ; $5e4a: $7c
    db $e3                                        ; $5e4b: $e3
    ld hl, sp-$15                                 ; $5e4c: $f8 $eb
    ei                                            ; $5e4e: $fb
    add e                                         ; $5e4f: $83
    ld l, l                                       ; $5e50: $6d
    jp hl                                         ; $5e51: $e9


    ld a, l                                       ; $5e52: $7d
    db $ec                                        ; $5e53: $ec
    adc b                                         ; $5e54: $88
    add hl, sp                                    ; $5e55: $39
    rla                                           ; $5e56: $17
    nop                                           ; $5e57: $00
    sbc [hl]                                      ; $5e58: $9e
    ccf                                           ; $5e59: $3f
    ld a, e                                       ; $5e5a: $7b
    ld l, e                                       ; $5e5b: $6b
    cp h                                          ; $5e5c: $bc
    rst $28                                       ; $5e5d: $ef
    db $10                                        ; $5e5e: $10
    and $df                                       ; $5e5f: $e6 $df
    ld l, d                                       ; $5e61: $6a
    ld a, [hl-]                                   ; $5e62: $3a
    add a                                         ; $5e63: $87
    sub h                                         ; $5e64: $94
    ld b, [hl]                                    ; $5e65: $46
    rst $08                                       ; $5e66: $cf
    jr c, @-$77                                   ; $5e67: $38 $87

    sub h                                         ; $5e69: $94
    ld d, e                                       ; $5e6a: $53
    ld c, d                                       ; $5e6b: $4a
    and l                                         ; $5e6c: $a5
    db $fc                                        ; $5e6d: $fc
    cp a                                          ; $5e6e: $bf
    rst $30                                       ; $5e6f: $f7
    cp $6e                                        ; $5e70: $fe $6e

Call_05c_5e72:
    cp h                                          ; $5e72: $bc

Jump_05c_5e73:
    cp a                                          ; $5e73: $bf
    xor a                                         ; $5e74: $af
    db $eb                                        ; $5e75: $eb
    ld [bc], a                                    ; $5e76: $02
    ld a, h                                       ; $5e77: $7c
    db $db                                        ; $5e78: $db
    and h                                         ; $5e79: $a4
    dec sp                                        ; $5e7a: $3b
    res 3, d                                      ; $5e7b: $cb $9a
    ld [hl], d                                    ; $5e7d: $72
    ld [hl+], a                                   ; $5e7e: $22
    reti                                          ; $5e7f: $d9


    sub $38                                       ; $5e80: $d6 $38
    rst $20                                       ; $5e82: $e7
    add l                                         ; $5e83: $85
    dec b                                         ; $5e84: $05
    dec b                                         ; $5e85: $05
    nop                                           ; $5e86: $00
    sbc [hl]                                      ; $5e87: $9e
    ccf                                           ; $5e88: $3f
    ld a, e                                       ; $5e89: $7b
    ld l, e                                       ; $5e8a: $6b
    cp h                                          ; $5e8b: $bc
    rst $28                                       ; $5e8c: $ef
    db $10                                        ; $5e8d: $10
    and $df                                       ; $5e8e: $e6 $df
    ld l, d                                       ; $5e90: $6a
    ld a, [hl-]                                   ; $5e91: $3a
    add a                                         ; $5e92: $87
    sub h                                         ; $5e93: $94
    ld b, [hl]                                    ; $5e94: $46
    rst $08                                       ; $5e95: $cf
    jr c, jr_05c_5e1f                             ; $5e96: $38 $87

    sub h                                         ; $5e98: $94
    ld d, e                                       ; $5e99: $53
    ld c, d                                       ; $5e9a: $4a
    and l                                         ; $5e9b: $a5
    db $fc                                        ; $5e9c: $fc
    cp a                                          ; $5e9d: $bf
    rst $30                                       ; $5e9e: $f7
    cp $6e                                        ; $5e9f: $fe $6e
    cp h                                          ; $5ea1: $bc

jr_05c_5ea2:
    cp a                                          ; $5ea2: $bf
    xor a                                         ; $5ea3: $af
    db $eb                                        ; $5ea4: $eb
    ld [bc], a                                    ; $5ea5: $02
    ld a, h                                       ; $5ea6: $7c
    ld h, e                                       ; $5ea7: $63
    ld a, [hl]                                    ; $5ea8: $7e
    cp $9f                                        ; $5ea9: $fe $9f
    ld d, h                                       ; $5eab: $54
    ld [hl], h                                    ; $5eac: $74
    sub e                                         ; $5ead: $93
    ld c, $57                                     ; $5eae: $0e $57
    ld h, [hl]                                    ; $5eb0: $66
    db $db                                        ; $5eb1: $db
    add d                                         ; $5eb2: $82
    or c                                          ; $5eb3: $b1
    ld a, a                                       ; $5eb4: $7f
    ld c, e                                       ; $5eb5: $4b
    ld [hl], e                                    ; $5eb6: $73
    or a                                          ; $5eb7: $b7
    ld a, [bc]                                    ; $5eb8: $0a
    xor l                                         ; $5eb9: $ad
    ccf                                           ; $5eba: $3f
    rst $38                                       ; $5ebb: $ff
    cp a                                          ; $5ebc: $bf
    nop                                           ; $5ebd: $00
    sbc h                                         ; $5ebe: $9c
    pop hl                                        ; $5ebf: $e1
    sub e                                         ; $5ec0: $93
    jp nc, $f767                                  ; $5ec1: $d2 $67 $f7

    sbc [hl]                                      ; $5ec4: $9e
    or e                                          ; $5ec5: $b3
    sub $7f                                       ; $5ec6: $d6 $7f
    adc c                                         ; $5ec8: $89
    db $e3                                        ; $5ec9: $e3
    ld b, h                                       ; $5eca: $44
    ld c, a                                       ; $5ecb: $4f
    call nc, $fe6f                                ; $5ecc: $d4 $6f $fe
    and l                                         ; $5ecf: $a5
    db $fc                                        ; $5ed0: $fc
    reti                                          ; $5ed1: $d9


    db $fd                                        ; $5ed2: $fd
    ld d, b                                       ; $5ed3: $50
    nop                                           ; $5ed4: $00
    sbc h                                         ; $5ed5: $9c
    ld d, c                                       ; $5ed6: $51
    ld a, [hl+]                                   ; $5ed7: $2a
    ld h, h                                       ; $5ed8: $64
    rst $30                                       ; $5ed9: $f7
    rst $38                                       ; $5eda: $ff
    reti                                          ; $5edb: $d9


    ld [hl], h                                    ; $5edc: $74
    xor e                                         ; $5edd: $ab
    ld e, a                                       ; $5ede: $5f
    ld e, b                                       ; $5edf: $58
    ld [hl], d                                    ; $5ee0: $72
    bit 7, c                                      ; $5ee1: $cb $79
    sbc c                                         ; $5ee3: $99
    ld a, a                                       ; $5ee4: $7f
    ld bc, $68bc                                  ; $5ee5: $01 $bc $68
    di                                            ; $5ee8: $f3
    push de                                       ; $5ee9: $d5
    ld [hl], h                                    ; $5eea: $74
    sub e                                         ; $5eeb: $93
    ld h, d                                       ; $5eec: $62
    add l                                         ; $5eed: $85
    daa                                           ; $5eee: $27
    inc [hl]                                      ; $5eef: $34
    add [hl]                                      ; $5ef0: $86
    xor l                                         ; $5ef1: $ad
    db $ec                                        ; $5ef2: $ec
    cp a                                          ; $5ef3: $bf
    push hl                                       ; $5ef4: $e5
    sub [hl]                                      ; $5ef5: $96
    di                                            ; $5ef6: $f3
    ld [hl-], a                                   ; $5ef7: $32
    rst $38                                       ; $5ef8: $ff
    ld [de], a                                    ; $5ef9: $12
    cpl                                           ; $5efa: $2f
    ld h, l                                       ; $5efb: $65
    sub e                                         ; $5efc: $93
    ld c, e                                       ; $5efd: $4b
    ld d, $50                                     ; $5efe: $16 $50
    nop                                           ; $5f00: $00
    cp h                                          ; $5f01: $bc
    sub h                                         ; $5f02: $94
    ld c, l                                       ; $5f03: $4d
    ld l, $59                                     ; $5f04: $2e $59
    ld b, b                                       ; $5f06: $40
    ld bc, $5b9c                                  ; $5f07: $01 $9c $5b
    db $e3                                        ; $5f0a: $e3
    sbc h                                         ; $5f0b: $9c
    ld d, a                                       ; $5f0c: $57
    xor h                                         ; $5f0d: $ac
    ldh a, [$84]                                  ; $5f0e: $f0 $84
    ld a, [$1f99]                                 ; $5f10: $fa $99 $1f
    ld sp, $656d                                  ; $5f13: $31 $6d $65
    bit 7, h                                      ; $5f16: $cb $7c
    ccf                                           ; $5f18: $3f
    ld h, b                                       ; $5f19: $60
    cp d                                          ; $5f1a: $ba
    nop                                           ; $5f1b: $00
    sbc h                                         ; $5f1c: $9c
    jr c, jr_05c_5ea2                             ; $5f1d: $38 $83

    xor l                                         ; $5f1f: $ad
    ld b, l                                       ; $5f20: $45
    ld l, c                                       ; $5f21: $69
    ld a, $9b                                     ; $5f22: $3e $9b
    ld [hl], e                                    ; $5f24: $73
    rst $20                                       ; $5f25: $e7
    rrca                                          ; $5f26: $0f
    rst $18                                       ; $5f27: $df
    ld a, a                                       ; $5f28: $7f
    nop                                           ; $5f29: $00
    db $fc                                        ; $5f2a: $fc
    pop bc                                        ; $5f2b: $c1
    ld a, [c]                                     ; $5f2c: $f2
    add sp, $71                                   ; $5f2d: $e8 $71
    ldh a, [$c5]                                  ; $5f2f: $f0 $c5
    adc c                                         ; $5f31: $89

jr_05c_5f32:
    inc sp                                        ; $5f32: $33
    ret c                                         ; $5f33: $d8

    ld e, d                                       ; $5f34: $5a
    sub h                                         ; $5f35: $94
    ld a, [$fe77]                                 ; $5f36: $fa $77 $fe
    ld a, h                                       ; $5f39: $7c
    ld [hl], $e7                                  ; $5f3a: $36 $e7
    adc $1f                                       ; $5f3c: $ce $1f
    cp [hl]                                       ; $5f3e: $be
    rst $38                                       ; $5f3f: $ff
    ld e, a                                       ; $5f40: $5f
    rla                                           ; $5f41: $17
    nop                                           ; $5f42: $00
    ret nc                                        ; $5f43: $d0

    and l                                         ; $5f44: $a5
    db $ec                                        ; $5f45: $ec
    ld b, h                                       ; $5f46: $44
    sub h                                         ; $5f47: $94
    sub c                                         ; $5f48: $91
    ret nc                                        ; $5f49: $d0

    ld a, [$ff75]                                 ; $5f4a: $fa $75 $ff
    adc h                                         ; $5f4d: $8c
    or l                                          ; $5f4e: $b5
    ld a, l                                       ; $5f4f: $7d
    push af                                       ; $5f50: $f5
    rst $08                                       ; $5f51: $cf
    ld e, a                                       ; $5f52: $5f
    db $db                                        ; $5f53: $db
    cp d                                          ; $5f54: $ba
    xor [hl]                                      ; $5f55: $ae
    ld c, e                                       ; $5f56: $4b
    rst $30                                       ; $5f57: $f7
    ld [hl], $c9                                  ; $5f58: $36 $c9
    or [hl]                                       ; $5f5a: $b6
    add $39                                       ; $5f5b: $c6 $39
    cpl                                           ; $5f5d: $2f
    inc l                                         ; $5f5e: $2c
    push af                                       ; $5f5f: $f5
    inc sp                                        ; $5f60: $33
    jr jr_05c_5f32                                ; $5f61: $18 $cf

    ld a, c                                       ; $5f63: $79
    jr z, jr_05c_5f66                             ; $5f64: $28 $00

jr_05c_5f66:
    ld a, h                                       ; $5f66: $7c
    db $db                                        ; $5f67: $db
    inc h                                         ; $5f68: $24
    ei                                            ; $5f69: $fb
    or l                                          ; $5f6a: $b5
    dec d                                         ; $5f6b: $15
    sbc [hl]                                      ; $5f6c: $9e
    di                                            ; $5f6d: $f3
    ld d, b                                       ; $5f6e: $50
    nop                                           ; $5f6f: $00
    ld a, h                                       ; $5f70: $7c
    ccf                                           ; $5f71: $3f
    ld [hl], c                                    ; $5f72: $71
    db $ed                                        ; $5f73: $ed
    sub l                                         ; $5f74: $95
    rst $38                                       ; $5f75: $ff
    reti                                          ; $5f76: $d9


    ld [$16e7], a                                 ; $5f77: $ea $e7 $16
    rst $20                                       ; $5f7a: $e7
    xor a                                         ; $5f7b: $af
    db $ed                                        ; $5f7c: $ed
    ld b, h                                       ; $5f7d: $44

jr_05c_5f7e:
    pop hl                                        ; $5f7e: $e1
    add hl, sp                                    ; $5f7f: $39
    cpl                                           ; $5f80: $2f
    jr jr_05c_5f7e                                ; $5f81: $18 $fb

    or a                                          ; $5f83: $b7
    ld [hl], h                                    ; $5f84: $74
    adc a                                         ; $5f85: $8f
    pop de                                        ; $5f86: $d1
    rrca                                          ; $5f87: $0f
    dec b                                         ; $5f88: $05
    nop                                           ; $5f89: $00
    sbc h                                         ; $5f8a: $9c
    pop hl                                        ; $5f8b: $e1
    sub e                                         ; $5f8c: $93
    halt                                          ; $5f8d: $76
    ld d, d                                       ; $5f8e: $52
    ld c, [hl]                                    ; $5f8f: $4e
    ld [hl], h                                    ; $5f90: $74
    adc c                                         ; $5f91: $89
    ld l, a                                       ; $5f92: $6f
    sbc e                                         ; $5f93: $9b
    xor b                                         ; $5f94: $a8
    ld [hl], h                                    ; $5f95: $74
    adc a                                         ; $5f96: $8f
    pop de                                        ; $5f97: $d1
    rrca                                          ; $5f98: $0f
    dec b                                         ; $5f99: $05
    nop                                           ; $5f9a: $00
    sbc [hl]                                      ; $5f9b: $9e
    rst $38                                       ; $5f9c: $ff
    sub [hl]                                      ; $5f9d: $96
    call c, Call_05c_5e72                         ; $5f9e: $dc $72 $5e
    and $5f                                       ; $5fa1: $e6 $5f
    nop                                           ; $5fa3: $00
    db $fc                                        ; $5fa4: $fc
    rst $08                                       ; $5fa5: $cf
    ld h, b                                       ; $5fa6: $60
    db $fc                                        ; $5fa7: $fc
    ld d, d                                       ; $5fa8: $52
    ld a, [de]                                    ; $5fa9: $1a
    ld l, h                                       ; $5faa: $6c
    adc [hl]                                      ; $5fab: $8e
    ld [hl], e                                    ; $5fac: $73
    sub $a2                                       ; $5fad: $d6 $a2
    push hl                                       ; $5faf: $e5
    sub [hl]                                      ; $5fb0: $96
    di                                            ; $5fb1: $f3
    ld [hl-], a                                   ; $5fb2: $32
    rst $38                                       ; $5fb3: $ff
    ld [bc], a                                    ; $5fb4: $02
    cp h                                          ; $5fb5: $bc
    ld h, e                                       ; $5fb6: $63
    inc e                                         ; $5fb7: $1c
    or h                                          ; $5fb8: $b4
    cp $9f                                        ; $5fb9: $fe $9f
    xor b                                         ; $5fbb: $a8
    inc [hl]                                      ; $5fbc: $34
    set 5, c                                      ; $5fbd: $cb $e9
    inc [hl]                                      ; $5fbf: $34
    ld b, c                                       ; $5fc0: $41
    ld bc, $5b9c                                  ; $5fc1: $01 $9c $5b
    db $e3                                        ; $5fc4: $e3
    sbc h                                         ; $5fc5: $9c
    rla                                           ; $5fc6: $17
    sub [hl]                                      ; $5fc7: $96
    ld [hl], d                                    ; $5fc8: $72
    ld c, d                                       ; $5fc9: $4a
    xor c                                         ; $5fca: $a9
    call nc, $a583                                ; $5fcb: $d4 $83 $a5
    ld e, a                                       ; $5fce: $5f
    ld [$632c], a                                 ; $5fcf: $ea $2c $63
    ld l, e                                       ; $5fd2: $6b
    cp d                                          ; $5fd3: $ba
    ld a, a                                       ; $5fd4: $7f
    adc [hl]                                      ; $5fd5: $8e
    ld c, e                                       ; $5fd6: $4b
    sbc h                                         ; $5fd7: $9c
    cp a                                          ; $5fd8: $bf
    or [hl]                                       ; $5fd9: $b6
    inc de                                        ; $5fda: $13
    add l                                         ; $5fdb: $85
    rst $20                                       ; $5fdc: $e7
    cp h                                          ; $5fdd: $bc
    ld h, b                                       ; $5fde: $60
    db $ec                                        ; $5fdf: $ec
    rst $18                                       ; $5fe0: $df
    jp nc, $463d                                  ; $5fe1: $d2 $3d $46

    ccf                                           ; $5fe4: $3f
    inc d                                         ; $5fe5: $14
    nop                                           ; $5fe6: $00
    ld a, h                                       ; $5fe7: $7c
    rst $18                                       ; $5fe8: $df
    ld a, a                                       ; $5fe9: $7f
    xor a                                         ; $5fea: $af
    ld hl, sp-$02                                 ; $5feb: $f8 $fe
    call z, $002d                                 ; $5fed: $cc $2d $00
    db $fc                                        ; $5ff0: $fc
    pop bc                                        ; $5ff1: $c1
    ld a, [c]                                     ; $5ff2: $f2
    add sp, $71                                   ; $5ff3: $e8 $71
    ldh a, [$93]                                  ; $5ff5: $f0 $93
    ld l, d                                       ; $5ff7: $6a
    cp d                                          ; $5ff8: $ba
    ld c, c                                       ; $5ff9: $49
    ld e, b                                       ; $5ffa: $58
    cp d                                          ; $5ffb: $ba
    cp a                                          ; $5ffc: $bf
    rst $38                                       ; $5ffd: $ff
    ld e, [hl]                                    ; $5ffe: $5e
    pop af                                        ; $5fff: $f1
    db $fd                                        ; $6000: $fd
    sbc c                                         ; $6001: $99
    ld e, e                                       ; $6002: $5b
    ld e, e                                       ; $6003: $5b
    sbc d                                         ; $6004: $9a
    rst $38                                       ; $6005: $ff
    cp $80                                        ; $6006: $fe $80
    ld e, a                                       ; $6008: $5f
    di                                            ; $6009: $f3
    ld [hl], a                                    ; $600a: $77
    adc $dd                                       ; $600b: $ce $dd
    ld d, d                                       ; $600d: $52
    rst $28                                       ; $600e: $ef
    ld sp, hl                                     ; $600f: $f9
    or l                                          ; $6010: $b5
    ld sp, $eda6                                  ; $6011: $31 $a6 $ed
    sub $05                                       ; $6014: $d6 $05
    nop                                           ; $6016: $00
    inc a                                         ; $6017: $3c
    ld a, a                                       ; $6018: $7f
    add $af                                       ; $6019: $c6 $af
    ld l, l                                       ; $601b: $6d
    ld c, a                                       ; $601c: $4f
    call nc, $659d                                ; $601d: $d4 $9d $65
    db $10                                        ; $6020: $10
    ld [de], a                                    ; $6021: $12
    adc h                                         ; $6022: $8c
    db $fd                                        ; $6023: $fd
    ld e, e                                       ; $6024: $5b
    ld c, c                                       ; $6025: $49
    call $fa71                                    ; $6026: $cd $71 $fa
    dec l                                         ; $6029: $2d
    ld l, d                                       ; $602a: $6a
    and c                                         ; $602b: $a1
    call nz, Call_05c_6dfb                        ; $602c: $c4 $fb $6d
    ret c                                         ; $602f: $d8

    rst $38                                       ; $6030: $ff
    push hl                                       ; $6031: $e5

jr_05c_6032:
    cp a                                          ; $6032: $bf
    ld e, l                                       ; $6033: $5d
    nop                                           ; $6034: $00
    ld a, h                                       ; $6035: $7c
    db $db                                        ; $6036: $db
    inc h                                         ; $6037: $24
    inc a                                         ; $6038: $3c
    ld l, e                                       ; $6039: $6b
    db $db                                        ; $603a: $db
    jp z, $cf7f                                   ; $603b: $ca $7f $cf

    ld a, c                                       ; $603e: $79
    jr z, jr_05c_6032                             ; $603f: $28 $f1

    push bc                                       ; $6041: $c5
    sbc [hl]                                      ; $6042: $9e
    ld b, e                                       ; $6043: $43
    jp nz, $fe52                                  ; $6044: $c2 $52 $fe

    db $ec                                        ; $6047: $ec
    ld a, [hl]                                    ; $6048: $7e
    db $eb                                        ; $6049: $eb
    sub l                                         ; $604a: $95
    ld l, l                                       ; $604b: $6d
    adc l                                         ; $604c: $8d
    jp nc, $89c4                                  ; $604d: $d2 $c4 $89

    ld l, a                                       ; $6050: $6f
    ld a, e                                       ; $6051: $7b
    ld bc, $219c                                  ; $6052: $01 $9c $21
    ld a, a                                       ; $6055: $7f
    call z, $d908                                 ; $6056: $cc $08 $d9
    sub $f8                                       ; $6059: $d6 $f8
    ld c, e                                       ; $605b: $4b
    sbc h                                         ; $605c: $9c
    cp a                                          ; $605d: $bf
    or [hl]                                       ; $605e: $b6
    inc de                                        ; $605f: $13
    add l                                         ; $6060: $85
    rst $20                                       ; $6061: $e7
    cp h                                          ; $6062: $bc
    ld h, b                                       ; $6063: $60
    db $ec                                        ; $6064: $ec
    rst $18                                       ; $6065: $df
    jp nc, $463d                                  ; $6066: $d2 $3d $46

    ccf                                           ; $6069: $3f
    inc d                                         ; $606a: $14
    nop                                           ; $606b: $00
    inc a                                         ; $606c: $3c
    rst $08                                       ; $606d: $cf
    xor $2d                                       ; $606e: $ee $2d
    ld sp, hl                                     ; $6070: $f9
    cp a                                          ; $6071: $bf
    ld [hl], e                                    ; $6072: $73
    cp $25                                        ; $6073: $fe $25
    add sp, $74                                   ; $6075: $e8 $74
    sub d                                         ; $6077: $92
    ld c, a                                       ; $6078: $4f
    add d                                         ; $6079: $82
    or c                                          ; $607a: $b1
    ld a, a                                       ; $607b: $7f
    ld c, e                                       ; $607c: $4b

jr_05c_607d:
    rst $30                                       ; $607d: $f7
    jr jr_05c_607d                                ; $607e: $18 $fd

    ld d, b                                       ; $6080: $50
    nop                                           ; $6081: $00
    sbc h                                         ; $6082: $9c
    and c                                         ; $6083: $a1
    ei                                            ; $6084: $fb
    and a                                         ; $6085: $a7
    db $fd                                        ; $6086: $fd
    sra l                                         ; $6087: $cb $2d
    rst $20                                       ; $6089: $e7
    ld h, l                                       ; $608a: $65
    cp $05                                        ; $608b: $fe $05
    nop                                           ; $608d: $00
    sbc [hl]                                      ; $608e: $9e
    db $e3                                        ; $608f: $e3
    jp c, $be96                                   ; $6090: $da $96 $be

    ld a, [$4d5f]                                 ; $6093: $fa $5f $4d
    sub $24                                       ; $6096: $d6 $24
    or a                                          ; $6098: $b7
    sbc h                                         ; $6099: $9c
    sub a                                         ; $609a: $97
    ld sp, hl                                     ; $609b: $f9
    rla                                           ; $609c: $17

Jump_05c_609d:
    nop                                           ; $609d: $00
    sbc h                                         ; $609e: $9c
    add sp, -$51                                  ; $609f: $e8 $af
    db $ed                                        ; $60a1: $ed
    ld b, h                                       ; $60a2: $44
    ld e, c                                       ; $60a3: $59
    ld b, b                                       ; $60a4: $40
    ld bc, $5b9c                                  ; $60a5: $01 $9c $5b
    db $e3                                        ; $60a8: $e3
    sbc h                                         ; $60a9: $9c
    ld d, a                                       ; $60aa: $57
    xor h                                         ; $60ab: $ac
    ld a, [$f217]                                 ; $60ac: $fa $17 $f2
    jp nz, Jump_05c_5e73                          ; $60af: $c2 $73 $5e

    sbc e                                         ; $60b2: $9b
    ld a, [hl]                                    ; $60b3: $7e
    xor c                                         ; $60b4: $a9
    sbc a                                         ; $60b5: $9f
    ld sp, hl                                     ; $60b6: $f9
    ld de, $f6d3                                  ; $60b7: $11 $d3 $f6
    ld [de], a                                    ; $60ba: $12
    rst $20                                       ; $60bb: $e7
    xor a                                         ; $60bc: $af
    db $ed                                        ; $60bd: $ed
    ld b, h                                       ; $60be: $44

jr_05c_60bf:
    pop hl                                        ; $60bf: $e1
    add hl, sp                                    ; $60c0: $39
    cpl                                           ; $60c1: $2f
    jr jr_05c_60bf                                ; $60c2: $18 $fb

    or a                                          ; $60c4: $b7
    sub h                                         ; $60c5: $94
    cp $c9                                        ; $60c6: $fe $c9
    db $e3                                        ; $60c8: $e3
    or $ff                                        ; $60c9: $f6 $ff
    and c                                         ; $60cb: $a1
    nop                                           ; $60cc: $00
    cp h                                          ; $60cd: $bc
    rst $08                                       ; $60ce: $cf
    and $dc                                       ; $60cf: $e6 $dc
    ld c, c                                       ; $60d1: $49
    adc h                                         ; $60d2: $8c
    ld h, l                                       ; $60d3: $65
    nop                                           ; $60d4: $00
    sbc h                                         ; $60d5: $9c
    cp a                                          ; $60d6: $bf
    or [hl]                                       ; $60d7: $b6
    inc de                                        ; $60d8: $13
    ld c, l                                       ; $60d9: $4d
    ld a, b                                       ; $60da: $78
    adc $eb                                       ; $60db: $ce $eb
    cp $19                                        ; $60dd: $fe $19
    ld l, e                                       ; $60df: $6b
    ei                                            ; $60e0: $fb
    ld d, b                                       ; $60e1: $50

Call_05c_60e2:
    ld [c], a                                     ; $60e2: $e2
    ret c                                         ; $60e3: $d8

    add hl, de                                    ; $60e4: $19
    ld e, e                                       ; $60e5: $5b
    ld c, d                                       ; $60e6: $4a
    or e                                          ; $60e7: $b3
    ld a, h                                       ; $60e8: $7c
    ld c, c                                       ; $60e9: $49
    ld a, b                                       ; $60ea: $78
    sub $56                                       ; $60eb: $d6 $56
    di                                            ; $60ed: $f3

Call_05c_60ee:
    add a                                         ; $60ee: $87
    rst $38                                       ; $60ef: $ff
    ld [hl], l                                    ; $60f0: $75
    ld bc, $dfbc                                  ; $60f1: $01 $bc $df
    add [hl]                                      ; $60f4: $86
    db $fd                                        ; $60f5: $fd
    ld e, a                                       ; $60f6: $5f
    ld c, c                                       ; $60f7: $49
    db $dd                                        ; $60f8: $dd
    db $db                                        ; $60f9: $db
    inc h                                         ; $60fa: $24
    db $db                                        ; $60fb: $db
    ld a, [de]                                    ; $60fc: $1a
    rst $20                                       ; $60fd: $e7
    cp h                                          ; $60fe: $bc
    or b                                          ; $60ff: $b0
    ld l, $00                                     ; $6100: $2e $00
    ld a, h                                       ; $6102: $7c
    dec sp                                        ; $6103: $3b
    ld c, c                                       ; $6104: $49
    rst $30                                       ; $6105: $f7
    xor a                                         ; $6106: $af
    push af                                       ; $6107: $f5
    ld e, b                                       ; $6108: $58
    db $db                                        ; $6109: $db
    and h                                         ; $610a: $a4
    and $38                                       ; $610b: $e6 $38
    db $fd                                        ; $610d: $fd
    ld d, $b5                                     ; $610e: $16 $b5
    ld d, b                                       ; $6110: $50
    nop                                           ; $6111: $00
    ld c, $50                                     ; $6112: $0e $50
    sub l                                         ; $6114: $95
    or l                                          ; $6115: $b5
    ld c, $fa                                     ; $6116: $0e $fa
    cp $58                                        ; $6118: $fe $58
    call Call_05c_7367                            ; $611a: $cd $67 $73
    ld l, [hl]                                    ; $611d: $6e
    ld a, [$ffb7]                                 ; $611e: $fa $b7 $ff
    ld e, a                                       ; $6121: $5f
    sbc d                                         ; $6122: $9a
    ld a, b                                       ; $6123: $78
    or b                                          ; $6124: $b0
    add a                                         ; $6125: $87
    ld e, l                                       ; $6126: $5d
    add d                                         ; $6127: $82
    sbc $c9                                       ; $6128: $de $c9
    and l                                         ; $612a: $a5
    ld a, e                                       ; $612b: $7b
    adc h                                         ; $612c: $8c
    ld a, [hl]                                    ; $612d: $7e
    jr z, jr_05c_6130                             ; $612e: $28 $00

jr_05c_6130:
    ld c, $30                                     ; $6130: $0e $30
    xor c                                         ; $6132: $a9
    inc e                                         ; $6133: $1c
    ld d, a                                       ; $6134: $57
    add hl, sp                                    ; $6135: $39
    xor $25                                       ; $6136: $ee $25
    add sp, $74                                   ; $6138: $e8 $74
    sub d                                         ; $613a: $92
    ld h, b                                       ; $613b: $60
    db $ec                                        ; $613c: $ec
    rst $18                                       ; $613d: $df
    jp nc, $463d                                  ; $613e: $d2 $3d $46

    ccf                                           ; $6141: $3f
    inc d                                         ; $6142: $14
    nop                                           ; $6143: $00
    inc e                                         ; $6144: $1c
    dec sp                                        ; $6145: $3b
    ld h, e                                       ; $6146: $63
    ld c, e                                       ; $6147: $4b
    rst $30                                       ; $6148: $f7
    adc a                                         ; $6149: $8f
    add hl, sp                                    ; $614a: $39
    ld a, a                                       ; $614b: $7f
    ei                                            ; $614c: $fb
    dec b                                         ; $614d: $05
    cp a                                          ; $614e: $bf
    ld a, [c]                                     ; $614f: $f2
    rst $18                                       ; $6150: $df
    sub d                                         ; $6151: $92
    ld e, e                                       ; $6152: $5b
    adc $cb                                       ; $6153: $ce $cb
    db $fc                                        ; $6155: $fc
    dec bc                                        ; $6156: $0b
    nop                                           ; $6157: $00
    sbc [hl]                                      ; $6158: $9e
    db $e3                                        ; $6159: $e3
    jp c, $ee96                                   ; $615a: $da $96 $ee

    sbc a                                         ; $615d: $9f
    or $2f                                        ; $615e: $f6 $2f
    or a                                          ; $6160: $b7
    sbc h                                         ; $6161: $9c
    sub a                                         ; $6162: $97
    ld sp, hl                                     ; $6163: $f9
    rla                                           ; $6164: $17
    nop                                           ; $6165: $00
    db $fc                                        ; $6166: $fc
    db $e3                                        ; $6167: $e3
    db $ec                                        ; $6168: $ec
    ld b, h                                       ; $6169: $44
    call $fe1f                                    ; $616a: $cd $1f $fe
    scf                                           ; $616d: $37
    inc d                                         ; $616e: $14
    nop                                           ; $616f: $00
    sbc [hl]                                      ; $6170: $9e
    db $e3                                        ; $6171: $e3
    ld a, [hl+]                                   ; $6172: $2a
    rst $00                                       ; $6173: $c7
    ld c, l                                       ; $6174: $4d
    ld [$1ade], a                                 ; $6175: $ea $de $1a
    sub $af                                       ; $6178: $d6 $af
    ld e, $d5                                     ; $617a: $1e $d5
    ld h, e                                       ; $617c: $63
    jr z, @-$44                                   ; $617d: $28 $ba

    ld h, e                                       ; $617f: $63
    ld h, l                                       ; $6180: $65
    ld e, e                                       ; $6181: $5b
    db $e3                                        ; $6182: $e3
    sbc h                                         ; $6183: $9c
    rla                                           ; $6184: $17
    sbc [hl]                                      ; $6185: $9e
    ret nc                                        ; $6186: $d0

    and [hl]                                      ; $6187: $a6
    ld e, a                                       ; $6188: $5f
    ld [$7e67], a                                 ; $6189: $ea $67 $7e
    call nz, $15b4                                ; $618c: $c4 $b4 $15
    ei                                            ; $618f: $fb
    db $f4                                        ; $6190: $f4
    rst $38                                       ; $6191: $ff
    ld [bc], a                                    ; $6192: $02
    ld e, [hl]                                    ; $6193: $5e
    call nz, $89db                                ; $6194: $c4 $db $89
    ld c, h                                       ; $6197: $4c
    di                                            ; $6198: $f3
    reti                                          ; $6199: $d9


    sbc h                                         ; $619a: $9c
    db $eb                                        ; $619b: $eb
    ccf                                           ; $619c: $3f
    ei                                            ; $619d: $fb
    sbc $b5                                       ; $619e: $de $b5
    dec b                                         ; $61a0: $05
    db $fc                                        ; $61a1: $fc
    pop bc                                        ; $61a2: $c1
    ld a, [c]                                     ; $61a3: $f2
    add sp, $71                                   ; $61a4: $e8 $71
    ldh a, [$e5]                                  ; $61a6: $f0 $e5
    ld b, l                                       ; $61a8: $45
    cp h                                          ; $61a9: $bc
    sbc l                                         ; $61aa: $9d
    ret z                                         ; $61ab: $c8

    inc [hl]                                      ; $61ac: $34
    sbc a                                         ; $61ad: $9f
    call $feb9                                    ; $61ae: $cd $b9 $fe
    or e                                          ; $61b1: $b3
    rst $28                                       ; $61b2: $ef
    ld e, l                                       ; $61b3: $5d
    db $db                                        ; $61b4: $db
    xor l                                         ; $61b5: $ad
    dec bc                                        ; $61b6: $0b
    nop                                           ; $61b7: $00
    ld a, h                                       ; $61b8: $7c
    db $db                                        ; $61b9: $db
    and h                                         ; $61ba: $a4
    adc [hl]                                      ; $61bb: $8e
    dec a                                         ; $61bc: $3d
    add a                                         ; $61bd: $87
    add h                                         ; $61be: $84
    dec b                                         ; $61bf: $05
    dec b                                         ; $61c0: $05
    nop                                           ; $61c1: $00
    ld a, h                                       ; $61c2: $7c
    db $db                                        ; $61c3: $db
    and h                                         ; $61c4: $a4
    db $f4                                        ; $61c5: $f4
    rst $08                                       ; $61c6: $cf
    ld hl, sp-$4b                                 ; $61c7: $f8 $b5
    ld l, l                                       ; $61c9: $6d
    jr z, jr_05c_61cc                             ; $61ca: $28 $00

jr_05c_61cc:
    inc a                                         ; $61cc: $3c
    ld e, c                                       ; $61cd: $59
    ld c, [hl]                                    ; $61ce: $4e
    jp z, Jump_05c_6cff                           ; $61cf: $ca $ff $6c

    push af                                       ; $61d2: $f5
    ld e, a                                       ; $61d3: $5f
    ld [c], a                                     ; $61d4: $e2
    db $fc                                        ; $61d5: $fc
    or l                                          ; $61d6: $b5
    sbc l                                         ; $61d7: $9d
    jr z, jr_05c_6216                             ; $61d8: $28 $3c

    rst $20                                       ; $61da: $e7
    dec b                                         ; $61db: $05
    ld h, e                                       ; $61dc: $63
    rst $38                                       ; $61dd: $ff
    sub [hl]                                      ; $61de: $96
    xor $31                                       ; $61df: $ee $31
    ld a, [$00a1]                                 ; $61e1: $fa $a1 $00
    ret nc                                        ; $61e4: $d0

    jp hl                                         ; $61e5: $e9


    inc h                                         ; $61e6: $24
    db $dd                                        ; $61e7: $dd
    ld h, e                                       ; $61e8: $63
    db $f4                                        ; $61e9: $f4
    or a                                          ; $61ea: $b7
    xor $8d                                       ; $61eb: $ee $8d
    db $d3                                        ; $61ed: $d3
    ld h, h                                       ; $61ee: $64
    xor e                                         ; $61ef: $ab
    dec sp                                        ; $61f0: $3b
    db $e3                                        ; $61f1: $e3
    ld c, d                                       ; $61f2: $4a
    db $e3                                        ; $61f3: $e3
    cp [hl]                                       ; $61f4: $be
    or a                                          ; $61f5: $b7
    ld l, $79                                     ; $61f6: $2e $79
    add h                                         ; $61f8: $84
    db $fd                                        ; $61f9: $fd
    ld e, e                                       ; $61fa: $5b
    cp d                                          ; $61fb: $ba
    rst $00                                       ; $61fc: $c7
    add sp, -$79                                  ; $61fd: $e8 $87

Call_05c_61ff:
    ld [bc], a                                    ; $61ff: $02
    sbc h                                         ; $6200: $9c
    and c                                         ; $6201: $a1
    ei                                            ; $6202: $fb
    and a                                         ; $6203: $a7
    db $fd                                        ; $6204: $fd
    sra l                                         ; $6205: $cb $2d
    rst $20                                       ; $6207: $e7
    ld h, l                                       ; $6208: $65
    cp $05                                        ; $6209: $fe $05
    nop                                           ; $620b: $00
    cp h                                          ; $620c: $bc
    sub h                                         ; $620d: $94
    ld [hl], l                                    ; $620e: $75
    ld [hl], h                                    ; $620f: $74
    ld h, [hl]                                    ; $6210: $66
    ld c, l                                       ; $6211: $4d
    ld [$3067], a                                 ; $6212: $ea $67 $30
    ld a, [hl]                                    ; $6215: $7e

jr_05c_6216:
    ret                                           ; $6216: $c9


    dec l                                         ; $6217: $2d
    rst $20                                       ; $6218: $e7
    ld h, l                                       ; $6219: $65
    cp $25                                        ; $621a: $fe $25
    cp $48                                        ; $621c: $fe $48
    ld hl, $3544                                  ; $621e: $21 $44 $35
    cp c                                          ; $6221: $b9
    inc [hl]                                      ; $6222: $34
    ld a, a                                       ; $6223: $7f
    ld hl, sp-$21                                 ; $6224: $f8 $df
    ld d, b                                       ; $6226: $50
    nop                                           ; $6227: $00
    db $fc                                        ; $6228: $fc
    sub c                                         ; $6229: $91
    ld b, d                                       ; $622a: $42
    adc b                                         ; $622b: $88
    ld l, d                                       ; $622c: $6a
    ld [hl], d                                    ; $622d: $72
    ld l, c                                       ; $622e: $69
    cp $f0                                        ; $622f: $fe $f0
    cp a                                          ; $6231: $bf
    and c                                         ; $6232: $a1
    nop                                           ; $6233: $00
    sbc h                                         ; $6234: $9c
    ld e, e                                       ; $6235: $5b
    db $e3                                        ; $6236: $e3
    sbc h                                         ; $6237: $9c
    ld d, a                                       ; $6238: $57
    xor h                                         ; $6239: $ac
    ldh a, [$84]                                  ; $623a: $f0 $84
    ld a, [$1f99]                                 ; $623c: $fa $99 $1f
    ld sp, $c56d                                  ; $623f: $31 $6d $c5
    ld a, $fd                                     ; $6242: $3e $fd
    ld c, a                                       ; $6244: $4f
    adc d                                         ; $6245: $8a
    rst $20                                       ; $6246: $e7
    add hl, de                                    ; $6247: $19
    sra [hl]                                      ; $6248: $cb $2e
    nop                                           ; $624a: $00
    ld e, [hl]                                    ; $624b: $5e
    call nz, $89db                                ; $624c: $c4 $db $89
    ld c, h                                       ; $624f: $4c
    di                                            ; $6250: $f3
    and a                                         ; $6251: $a7
    and c                                         ; $6252: $a1
    ld [hl], l                                    ; $6253: $75
    sub h                                         ; $6254: $94
    jp nc, $fe3f                                  ; $6255: $d2 $3f $fe

    and a                                         ; $6258: $a7
    ld a, a                                       ; $6259: $7f
    adc $02                                       ; $625a: $ce $02
    db $fc                                        ; $625c: $fc
    pop bc                                        ; $625d: $c1
    ld a, [c]                                     ; $625e: $f2
    add sp, $71                                   ; $625f: $e8 $71
    ldh a, [$e5]                                  ; $6261: $f0 $e5
    ld b, l                                       ; $6263: $45
    cp h                                          ; $6264: $bc
    sbc l                                         ; $6265: $9d
    ret z                                         ; $6266: $c8

    sub h                                         ; $6267: $94
    ccf                                           ; $6268: $3f
    dec de                                        ; $6269: $1b
    sub $31                                       ; $626a: $d6 $31
    db $e3                                        ; $626c: $e3
    sbc h                                         ; $626d: $9c
    ld h, a                                       ; $626e: $67
    cp e                                          ; $626f: $bb
    ld [hl], l                                    ; $6270: $75
    ld bc, $db7c                                  ; $6271: $01 $7c $db
    and h                                         ; $6274: $a4
    adc [hl]                                      ; $6275: $8e
    dec a                                         ; $6276: $3d
    add a                                         ; $6277: $87
    add h                                         ; $6278: $84
    dec b                                         ; $6279: $05
    dec b                                         ; $627a: $05
    nop                                           ; $627b: $00
    ld a, h                                       ; $627c: $7c
    db $db                                        ; $627d: $db
    and h                                         ; $627e: $a4
    db $f4                                        ; $627f: $f4
    rst $08                                       ; $6280: $cf
    ld hl, sp-$4b                                 ; $6281: $f8 $b5
    ld l, l                                       ; $6283: $6d
    jr z, jr_05c_6286                             ; $6284: $28 $00

jr_05c_6286:
    sbc [hl]                                      ; $6286: $9e
    ccf                                           ; $6287: $3f
    cp e                                          ; $6288: $bb
    ld e, a                                       ; $6289: $5f
    ld sp, hl                                     ; $628a: $f9
    sbc a                                         ; $628b: $9f
    xor l                                         ; $628c: $ad
    cp $4b                                        ; $628d: $fe $4b
    ld e, $61                                     ; $628f: $1e $61
    rst $38                                       ; $6291: $ff
    sub [hl]                                      ; $6292: $96
    xor $31                                       ; $6293: $ee $31
    ld a, [$00a1]                                 ; $6295: $fa $a1 $00
    ld l, [hl]                                    ; $6298: $6e
    db $db                                        ; $6299: $db
    cp $7c                                        ; $629a: $fe $7c
    inc de                                        ; $629c: $13
    sub [hl]                                      ; $629d: $96
    ld a, [hl]                                    ; $629e: $7e
    db $eb                                        ; $629f: $eb
    add l                                         ; $62a0: $85

jr_05c_62a1:
    dec sp                                        ; $62a1: $3b
    db $e3                                        ; $62a2: $e3
    call Call_000_12fe                            ; $62a3: $cd $fe $12
    ld [hl], h                                    ; $62a6: $74
    ld a, [hl-]                                   ; $62a7: $3a
    ld c, c                                       ; $62a8: $49
    jr nc, jr_05c_62a1                            ; $62a9: $30 $f6

    ld l, a                                       ; $62ab: $6f
    jp hl                                         ; $62ac: $e9


    ld e, $a3                                     ; $62ad: $1e $a3
    rra                                           ; $62af: $1f
    ld a, [bc]                                    ; $62b0: $0a
    nop                                           ; $62b1: $00
    sbc h                                         ; $62b2: $9c
    and c                                         ; $62b3: $a1
    ei                                            ; $62b4: $fb
    and a                                         ; $62b5: $a7

Jump_05c_62b6:
    db $fd                                        ; $62b6: $fd
    sra l                                         ; $62b7: $cb $2d
    rst $20                                       ; $62b9: $e7
    ld h, l                                       ; $62ba: $65
    cp $05                                        ; $62bb: $fe $05
    nop                                           ; $62bd: $00
    cp h                                          ; $62be: $bc
    ld l, b                                       ; $62bf: $68
    di                                            ; $62c0: $f3
    ld h, l                                       ; $62c1: $65
    ld hl, $4d2c                                  ; $62c2: $21 $2c $4d
    jp z, $ba3a                                   ; $62c5: $ca $3a $ba

    or e                                          ; $62c8: $b3
    and h                                         ; $62c9: $a4
    ld [hl], d                                    ; $62ca: $72
    call c, Call_000_3f52                         ; $62cb: $dc $52 $3f
    add e                                         ; $62ce: $83
    or c                                          ; $62cf: $b1
    ld e, a                                       ; $62d0: $5f
    ld l, [hl]                                    ; $62d1: $6e
    add hl, sp                                    ; $62d2: $39
    cpl                                           ; $62d3: $2f
    di                                            ; $62d4: $f3
    cpl                                           ; $62d5: $2f
    nop                                           ; $62d6: $00
    db $fc                                        ; $62d7: $fc
    sub c                                         ; $62d8: $91
    ld b, d                                       ; $62d9: $42
    adc b                                         ; $62da: $88
    ld l, d                                       ; $62db: $6a
    ld [hl], d                                    ; $62dc: $72
    ld l, c                                       ; $62dd: $69
    cp $f0                                        ; $62de: $fe $f0
    cp a                                          ; $62e0: $bf
    and c                                         ; $62e1: $a1
    nop                                           ; $62e2: $00
    ret nc                                        ; $62e3: $d0

    rst $30                                       ; $62e4: $f7
    dec e                                         ; $62e5: $1d
    cp d                                          ; $62e6: $ba
    inc sp                                        ; $62e7: $33
    xor [hl]                                      ; $62e8: $ae
    ld a, [hl+]                                   ; $62e9: $2a
    jp nc, $d819                                  ; $62ea: $d2 $19 $d8

    adc l                                         ; $62ed: $8d
    ld a, a                                       ; $62ee: $7f
    ld e, l                                       ; $62ef: $5d
    sub a                                         ; $62f0: $97
    ld [c], a                                     ; $62f1: $e2
    cp [hl]                                       ; $62f2: $be
    ld b, e                                       ; $62f3: $43
    ld bc, $1309                                  ; $62f4: $01 $09 $13
    jp $c674                                      ; $62f7: $c3 $74 $c6


    reti                                          ; $62fa: $d9


    adc c                                         ; $62fb: $89
    rst $20                                       ; $62fc: $e7
    inc b                                         ; $62fd: $04
    scf                                           ; $62fe: $37
    nop                                           ; $62ff: $00
    cp h                                          ; $6300: $bc
    and e                                         ; $6301: $a3
    ld l, l                                       ; $6302: $6d
    db $f4                                        ; $6303: $f4
    ld a, a                                       ; $6304: $7f
    jp hl                                         ; $6305: $e9


    adc $b8                                       ; $6306: $ce $b8
    ld c, h                                       ; $6308: $4c
    ld [hl], e                                    ; $6309: $73
    call nc, $fcd6                                ; $630a: $d4 $d6 $fc
    cpl                                           ; $630d: $2f
    ei                                            ; $630e: $fb
    sub c                                         ; $630f: $91
    rst $38                                       ; $6310: $ff
    or h                                          ; $6311: $b4
    cp l                                          ; $6312: $bd
    inc b                                         ; $6313: $04
    ld l, l                                       ; $6314: $6d
    cp e                                          ; $6315: $bb
    push de                                       ; $6316: $d5
    ld e, c                                       ; $6317: $59
    and [hl]                                      ; $6318: $a6
    ld h, b                                       ; $6319: $60
    dec hl                                        ; $631a: $2b
    ld a, a                                       ; $631b: $7f
    ldh [$d9], a                                  ; $631c: $e0 $d9
    ld [hl], e                                    ; $631e: $73
    ld e, [hl]                                    ; $631f: $5e
    rst $30                                       ; $6320: $f7
    rst $38                                       ; $6321: $ff
    sbc [hl]                                      ; $6322: $9e
    ei                                            ; $6323: $fb
    ld e, a                                       ; $6324: $5f
    ldh a, [rOCPD]                                ; $6325: $f0 $6b
    ld d, d                                       ; $6327: $52
    sub $d1                                       ; $6328: $d6 $d1
    ld b, h                                       ; $632a: $44
    and l                                         ; $632b: $a5
    ld a, e                                       ; $632c: $7b
    adc h                                         ; $632d: $8c
    ld [hl], h                                    ; $632e: $74
    call nc, $d2dc                                ; $632f: $d4 $dc $d2
    inc e                                         ; $6332: $1c
    ld e, e                                       ; $6333: $5b
    ld [$89df], a                                 ; $6334: $ea $df $89
    sbc e                                         ; $6337: $9b
    ld l, [hl]                                    ; $6338: $6e
    ld e, l                                       ; $6339: $5d
    nop                                           ; $633a: $00
    db $fc                                        ; $633b: $fc
    call nc, $8ca4                                ; $633c: $d4 $a4 $8c
    ld [hl], l                                    ; $633f: $75
    cpl                                           ; $6340: $2f
    add hl, bc                                    ; $6341: $09
    ld c, e                                       ; $6342: $4b
    sub e                                         ; $6343: $93
    ld l, h                                       ; $6344: $6c
    dec sp                                        ; $6345: $3b
    ld c, [hl]                                    ; $6346: $4e
    ld d, e                                       ; $6347: $53
    ld c, [hl]                                    ; $6348: $4e
    jp z, $619f                                   ; $6349: $ca $9f $61

    cp $d6                                        ; $634c: $fe $d6
    sbc e                                         ; $634e: $9b
    call nc, $9b44                                ; $634f: $d4 $44 $9b
    cpl                                           ; $6352: $2f
    dec bc                                        ; $6353: $0b
    push hl                                       ; $6354: $e5
    cp b                                          ; $6355: $b8
    jp nz, Jump_05c_5e73                          ; $6356: $c2 $73 $5e

    ld [hl], a                                    ; $6359: $77
    add $66                                       ; $635a: $c6 $66
    halt                                          ; $635c: $76
    adc $56                                       ; $635d: $ce $56
    call nc, Call_000_0005                        ; $635f: $d4 $05 $00
    ld e, $ff                                     ; $6362: $1e $ff
    jp $4e7f                                      ; $6364: $c3 $7f $4e


    add sp, $44                                   ; $6367: $e8 $44
    cp [hl]                                       ; $6369: $be
    ld d, l                                       ; $636a: $55
    ld e, c                                       ; $636b: $59
    ld l, e                                       ; $636c: $6b
    cp [hl]                                       ; $636d: $be
    push hl                                       ; $636e: $e5
    sbc e                                         ; $636f: $9b
    inc d                                         ; $6370: $14
    adc h                                         ; $6371: $8c
    di                                            ; $6372: $f3
    add l                                         ; $6373: $85
    and l                                         ; $6374: $a5
    ld e, $55                                     ; $6375: $1e $55
    pop de                                        ; $6377: $d1
    dec a                                         ; $6378: $3d
    db $e4                                        ; $6379: $e4
    db $e3                                        ; $637a: $e3
    jp hl                                         ; $637b: $e9


    cp $7c                                        ; $637c: $fe $7c
    xor l                                         ; $637e: $ad
    ld e, a                                       ; $637f: $5f
    daa                                           ; $6380: $27
    ld d, d                                       ; $6381: $52
    ret z                                         ; $6382: $c8

    ld e, d                                       ; $6383: $5a
    inc de                                        ; $6384: $13
    push de                                       ; $6385: $d5
    dec h                                         ; $6386: $25
    ld bc, $a3fc                                  ; $6387: $01 $fc $a3
    ld a, [hl+]                                   ; $638a: $2a
    ld a, [$74bf]                                 ; $638b: $fa $bf $74
    ld h, a                                       ; $638e: $67
    ld e, h                                       ; $638f: $5c
    ld h, $ff                                     ; $6390: $26 $ff
    rst $08                                       ; $6392: $cf
    rst $20                                       ; $6393: $e7
    ld e, a                                       ; $6394: $5f
    cpl                                           ; $6395: $2f
    ccf                                           ; $6396: $3f
    jp z, $ebfe                                   ; $6397: $ca $fe $eb

    ld h, l                                       ; $639a: $65
    ld d, c                                       ; $639b: $51
    ld a, [bc]                                    ; $639c: $0a
    or [hl]                                       ; $639d: $b6
    db $dd                                        ; $639e: $dd
    ld [hl], h                                    ; $639f: $74
    ld l, a                                       ; $63a0: $6f
    sub h                                         ; $63a1: $94
    db $fc                                        ; $63a2: $fc
    ccf                                           ; $63a3: $3f
    sbc b                                         ; $63a4: $98
    ld b, $9b                                     ; $63a5: $06 $9b
    ld [hl], e                                    ; $63a7: $73
    and e                                         ; $63a8: $a3
    inc [hl]                                      ; $63a9: $34
    rst $38                                       ; $63aa: $ff
    ld l, l                                       ; $63ab: $6d
    ret nz                                        ; $63ac: $c0

    ld d, c                                       ; $63ad: $51
    jp z, $4e07                                   ; $63ae: $ca $07 $4e

    db $db                                        ; $63b1: $db
    ld c, e                                       ; $63b2: $4b
    sbc h                                         ; $63b3: $9c
    dec sp                                        ; $63b4: $3b
    ld l, l                                       ; $63b5: $6d
    push de                                       ; $63b6: $d5
    ld [hl], h                                    ; $63b7: $74
    ld d, e                                       ; $63b8: $53
    add hl, hl                                    ; $63b9: $29
    ld h, e                                       ; $63ba: $63
    cp l                                          ; $63bb: $bd
    and l                                         ; $63bc: $a5
    ld sp, hl                                     ; $63bd: $f9
    ld h, l                                       ; $63be: $65
    or $c2                                        ; $63bf: $f6 $c2
    ld [de], a                                    ; $63c1: $12
    sbc [hl]                                      ; $63c2: $9e
    cp $fc                                        ; $63c3: $fe $fc
    ld b, l                                       ; $63c5: $45
    call nz, $bef6                                ; $63c6: $c4 $f6 $be
    ld l, c                                       ; $63c9: $69
    dec l                                         ; $63ca: $2d
    ld c, d                                       ; $63cb: $4a
    ld sp, hl                                     ; $63cc: $f9
    inc sp                                        ; $63cd: $33
    call z, Call_000_2b7f                         ; $63ce: $cc $7f $2b
    ld [$d002], a                                 ; $63d1: $ea $02 $d0
    ld l, h                                       ; $63d4: $6c
    cp e                                          ; $63d5: $bb
    ld l, c                                       ; $63d6: $69
    ld c, e                                       ; $63d7: $4b
    di                                            ; $63d8: $f3
    ld e, c                                       ; $63d9: $59
    cp $5f                                        ; $63da: $fe $5f
    cp d                                          ; $63dc: $ba
    ld a, a                                       ; $63dd: $7f
    adc [hl]                                      ; $63de: $8e
    xor l                                         ; $63df: $ad
    jr z, jr_05c_6447                             ; $63e0: $28 $65

    xor h                                         ; $63e2: $ac
    ld a, e                                       ; $63e3: $7b
    sub e                                         ; $63e4: $93
    add d                                         ; $63e5: $82
    or c                                          ; $63e6: $b1
    ld e, a                                       ; $63e7: $5f
    ld e, b                                       ; $63e8: $58
    sbc d                                         ; $63e9: $9a
    sub h                                         ; $63ea: $94
    ld [hl], l                                    ; $63eb: $75
    ld [hl], h                                    ; $63ec: $74
    ld h, a                                       ; $63ed: $67
    cp d                                          ; $63ee: $ba
    rst $00                                       ; $63ef: $c7
    sub $af                                       ; $63f0: $d6 $af
    xor l                                         ; $63f2: $ad
    push af                                       ; $63f3: $f5
    db $eb                                        ; $63f4: $eb
    ld h, c                                       ; $63f5: $61
    ld e, h                                       ; $63f6: $5c
    db $eb                                        ; $63f7: $eb
    rst $10                                       ; $63f8: $d7
    ld e, e                                       ; $63f9: $5b
    rst $28                                       ; $63fa: $ef
    dec b                                         ; $63fb: $05
    nop                                           ; $63fc: $00
    sbc [hl]                                      ; $63fd: $9e
    db $e3                                        ; $63fe: $e3
    sbc $3f                                       ; $63ff: $de $3f
    rst $18                                       ; $6401: $df
    sub h                                         ; $6402: $94
    or c                                          ; $6403: $b1
    xor $4d                                       ; $6404: $ee $4d
    ld a, [bc]                                    ; $6406: $0a
    add $14                                       ; $6407: $c6 $14
    ld c, e                                       ; $6409: $4b
    ld h, a                                       ; $640a: $67
    or a                                          ; $640b: $b7
    dec sp                                        ; $640c: $3b
    bit 6, h                                      ; $640d: $cb $74
    ld h, e                                       ; $640f: $63
    db $ed                                        ; $6410: $ed
    dec bc                                        ; $6411: $0b
    ld h, $eb                                     ; $6412: $26 $eb
    adc l                                         ; $6414: $8d
    jp nc, $89b0                                  ; $6415: $d2 $b0 $89

    rst $30                                       ; $6418: $f7
    sbc b                                         ; $6419: $98
    or [hl]                                       ; $641a: $b6
    ld a, a                                       ; $641b: $7f
    ld bc, $20ee                                  ; $641c: $01 $ee $20
    sbc $76                                       ; $641f: $de $76
    cp [hl]                                       ; $6421: $be
    ld [de], a                                    ; $6422: $12
    ld [de], a                                    ; $6423: $12
    sub [hl]                                      ; $6424: $96
    xor $8c                                       ; $6425: $ee $8c
    call $9cec                                    ; $6427: $cd $ec $9c
    xor l                                         ; $642a: $ad
    jr z, @+$7f                                   ; $642b: $28 $7d

    add d                                         ; $642d: $82
    ld l, h                                       ; $642e: $6c
    rst $20                                       ; $642f: $e7
    db $fc                                        ; $6430: $fc
    di                                            ; $6431: $f3
    ld e, e                                       ; $6432: $5b
    ld d, c                                       ; $6433: $51
    ld a, [c]                                     ; $6434: $f2
    rst $00                                       ; $6435: $c7
    sbc b                                         ; $6436: $98
    ld b, h                                       ; $6437: $44
    db $ec                                        ; $6438: $ec
    adc [hl]                                      ; $6439: $8e
    ld c, e                                       ; $643a: $4b
    sbc h                                         ; $643b: $9c
    ld d, c                                       ; $643c: $51
    xor d                                         ; $643d: $aa
    ld c, a                                       ; $643e: $4f
    rst $20                                       ; $643f: $e7
    dec bc                                        ; $6440: $0b
    ld c, e                                       ; $6441: $4b
    inc sp                                        ; $6442: $33
    jr jr_05c_64ba                                ; $6443: $18 $75

    ld d, e                                       ; $6445: $53
    ld c, [hl]                                    ; $6446: $4e

jr_05c_6447:
    ld c, d                                       ; $6447: $4a
    and e                                         ; $6448: $a3
    ld d, a                                       ; $6449: $57
    push af                                       ; $644a: $f5
    jp hl                                         ; $644b: $e9


    rst $10                                       ; $644c: $d7
    add hl, de                                    ; $644d: $19
    ld a, b                                       ; $644e: $78
    xor a                                         ; $644f: $af
    ld b, l                                       ; $6450: $45
    add hl, bc                                    ; $6451: $09
    and [hl]                                      ; $6452: $a6
    inc sp                                        ; $6453: $33
    inc hl                                        ; $6454: $23
    ld [$0e02], a                                 ; $6455: $ea $02 $0e
    ld [hl], a                                    ; $6458: $77
    rst $20                                       ; $6459: $e7
    or [hl]                                       ; $645a: $b6
    ld h, d                                       ; $645b: $62
    ld [hl], e                                    ; $645c: $73
    ld l, d                                       ; $645d: $6a
    dec e                                         ; $645e: $1d
    db $f4                                        ; $645f: $f4
    add a                                         ; $6460: $87
    ld h, $da                                     ; $6461: $26 $da
    db $fc                                        ; $6463: $fc
    cpl                                           ; $6464: $2f
    call Call_000_19b0                            ; $6465: $cd $b0 $19
    sub l                                         ; $6468: $95
    sub h                                         ; $6469: $94
    db $ed                                        ; $646a: $ed
    add hl, sp                                    ; $646b: $39
    and h                                         ; $646c: $a4
    ld sp, $5f6c                                  ; $646d: $31 $6c $5f
    di                                            ; $6470: $f3
    dec l                                         ; $6471: $2d
    rst $38                                       ; $6472: $ff
    rst $10                                       ; $6473: $d7
    db $fc                                        ; $6474: $fc
    sbc l                                         ; $6475: $9d
    ld d, c                                       ; $6476: $51
    ld a, [$ff9d]                                 ; $6477: $fa $9d $ff
    sub a                                         ; $647a: $97
    inc e                                         ; $647b: $1c
    ld a, $4b                                     ; $647c: $3e $4b
    ld a, a                                       ; $647e: $7f
    ei                                            ; $647f: $fb
    add l                                         ; $6480: $85
    ld sp, hl                                     ; $6481: $f9
    or a                                          ; $6482: $b7
    db $fc                                        ; $6483: $fc
    db $dd                                        ; $6484: $dd
    cp c                                          ; $6485: $b9
    sbc l                                         ; $6486: $9d
    inc d                                         ; $6487: $14
    adc h                                         ; $6488: $8c
    dec a                                         ; $6489: $3d
    ld e, a                                       ; $648a: $5f
    adc d                                         ; $648b: $8a
    call $85a9                                    ; $648c: $cd $a9 $85
    daa                                           ; $648f: $27
    ld h, h                                       ; $6490: $64
    rst $18                                       ; $6491: $df
    and e                                         ; $6492: $a3
    ei                                            ; $6493: $fb
    dec hl                                        ; $6494: $2b
    and d                                         ; $6495: $a2
    dec [hl]                                      ; $6496: $35
    and e                                         ; $6497: $a3
    adc c                                         ; $6498: $89
    ld a, [bc]                                    ; $6499: $0a
    nop                                           ; $649a: $00
    ld e, $fd                                     ; $649b: $1e $fd
    ld c, b                                       ; $649d: $48
    and e                                         ; $649e: $a3
    ld a, e                                       ; $649f: $7b
    ld l, b                                       ; $64a0: $68
    adc [hl]                                      ; $64a1: $8e
    call $87bf                                    ; $64a2: $cd $bf $87
    push af                                       ; $64a5: $f5
    db $eb                                        ; $64a6: $eb
    ld e, $d6                                     ; $64a7: $1e $d6
    ld sp, $7cff                                  ; $64a9: $31 $ff $7c
    jp hl                                         ; $64ac: $e9


    ld l, h                                       ; $64ad: $6c
    ld a, [$7fd6]                                 ; $64ae: $fa $d6 $7f
    ret                                           ; $64b1: $c9


    pop hl                                        ; $64b2: $e1
    or e                                          ; $64b3: $b3
    xor a                                         ; $64b4: $af
    cp $57                                        ; $64b5: $fe $57
    rst $38                                       ; $64b7: $ff
    adc $87                                       ; $64b8: $ce $87

jr_05c_64ba:
    rlca                                          ; $64ba: $07
    sbc $1b                                       ; $64bb: $de $1b
    and l                                         ; $64bd: $a5
    adc [hl]                                      ; $64be: $8e
    inc d                                         ; $64bf: $14
    rst $20                                       ; $64c0: $e7
    inc e                                         ; $64c1: $1c
    and e                                         ; $64c2: $a3
    ei                                            ; $64c3: $fb
    cpl                                           ; $64c4: $2f
    nop                                           ; $64c5: $00
    ld c, $f7                                     ; $64c6: $0e $f7
    sbc h                                         ; $64c8: $9c
    ld h, b                                       ; $64c9: $60
    ld e, e                                       ; $64ca: $5b
    ld a, [hl]                                    ; $64cb: $7e
    add $c5                                       ; $64cc: $c6 $c5
    or [hl]                                       ; $64ce: $b6
    sbc e                                         ; $64cf: $9b
    ldh [$8d], a                                  ; $64d0: $e0 $8d
    sub d                                         ; $64d2: $92
    db $ed                                        ; $64d3: $ed
    cp c                                          ; $64d4: $b9
    xor c                                         ; $64d5: $a9
    ld h, l                                       ; $64d6: $65
    add sp, $6f                                   ; $64d7: $e8 $6f
    cp $ad                                        ; $64d9: $fe $ad
    ld h, b                                       ; $64db: $60
    db $db                                        ; $64dc: $db
    reti                                          ; $64dd: $d9


    ld e, d                                       ; $64de: $5a
    sub h                                         ; $64df: $94
    jp nc, $df2c                                  ; $64e0: $d2 $2c $df

    ld d, d                                       ; $64e3: $52
    rst $38                                       ; $64e4: $ff
    adc $87                                       ; $64e5: $ce $87
    rlca                                          ; $64e7: $07
    sbc $1b                                       ; $64e8: $de $1b
    and l                                         ; $64ea: $a5
    db $fc                                        ; $64eb: $fc
    rst $08                                       ; $64ec: $cf
    cp l                                          ; $64ed: $bd
    sub $63                                       ; $64ee: $d6 $63
    ld e, d                                       ; $64f0: $5a
    ld b, h                                       ; $64f1: $44
    ld e, l                                       ; $64f2: $5d
    nop                                           ; $64f3: $00
    cp h                                          ; $64f4: $bc
    ccf                                           ; $64f5: $3f
    ld l, l                                       ; $64f6: $6d
    db $ed                                        ; $64f7: $ed
    ld e, c                                       ; $64f8: $59
    cp [hl]                                       ; $64f9: $be
    ld d, $2d                                     ; $64fa: $16 $2d
    call z, $75bf                                 ; $64fc: $cc $bf $75
    ld [hl+], a                                   ; $64ff: $22
    cp l                                          ; $6500: $bd
    adc c                                         ; $6501: $89
    ld [hl], h                                    ; $6502: $74
    adc a                                         ; $6503: $8f
    or l                                          ; $6504: $b5
    ld e, $dd                                     ; $6505: $1e $dd
    sbc a                                         ; $6507: $9f
    rst $28                                       ; $6508: $ef
    dec hl                                        ; $6509: $2b
    rst $38                                       ; $650a: $ff
    ld h, a                                       ; $650b: $67
    ld a, a                                       ; $650c: $7f
    adc $da                                       ; $650d: $ce $da
    cp [hl]                                       ; $650f: $be
    ld a, [$3e77]                                 ; $6510: $fa $77 $3e
    sbc [hl]                                      ; $6513: $9e
    xor b                                         ; $6514: $a8
    ld b, [hl]                                    ; $6515: $46
    ld hl, sp+$2f                                 ; $6516: $f8 $2f
    pop af                                        ; $6518: $f1
    ld l, a                                       ; $6519: $6f
    ld [hl], h                                    ; $651a: $74
    or [hl]                                       ; $651b: $b6
    and l                                         ; $651c: $a5
    sbc h                                         ; $651d: $9c
    adc $3e                                       ; $651e: $ce $3e
    adc h                                         ; $6520: $8c
    ld e, e                                       ; $6521: $5b
    sbc d                                         ; $6522: $9a
    ccf                                           ; $6523: $3f
    ld l, l                                       ; $6524: $6d
    db $ed                                        ; $6525: $ed
    ld e, c                                       ; $6526: $59
    cp [hl]                                       ; $6527: $be
    dec d                                         ; $6528: $15
    dec h                                         ; $6529: $25
    ld a, a                                       ; $652a: $7f
    ld b, b                                       ; $652b: $40
    or b                                          ; $652c: $b0
    ei                                            ; $652d: $fb
    ld e, a                                       ; $652e: $5f
    or $2c                                        ; $652f: $f6 $2c
    adc a                                         ; $6531: $8f
    or d                                          ; $6532: $b2
    ld c, a                                       ; $6533: $4f
    ld a, [bc]                                    ; $6534: $0a
    add $9e                                       ; $6535: $c6 $9e
    xor a                                         ; $6537: $af
    inc e                                         ; $6538: $1c
    rla                                           ; $6539: $17
    ld a, [c]                                     ; $653a: $f2
    ld e, a                                       ; $653b: $5f
    sbc d                                         ; $653c: $9a
    pop bc                                        ; $653d: $c1
    xor b                                         ; $653e: $a8
    ld c, c                                       ; $653f: $49
    ld [hl], e                                    ; $6540: $73
    sub h                                         ; $6541: $94
    inc l                                         ; $6542: $2c
    inc d                                         ; $6543: $14
    xor e                                         ; $6544: $ab
    and d                                         ; $6545: $a2
    cp b                                          ; $6546: $b8
    nop                                           ; $6547: $00
    ld c, $68                                     ; $6548: $0e $68
    sbc e                                         ; $654a: $9b
    ld [hl], h                                    ; $654b: $74
    cp b                                          ; $654c: $b8
    or d                                          ; $654d: $b2
    adc $32                                       ; $654e: $ce $32
    or c                                          ; $6550: $b1
    ld d, c                                       ; $6551: $51
    or $5b                                        ; $6552: $f6 $5b
    cp d                                          ; $6554: $ba
    or a                                          ; $6555: $b7
    ld [hl], c                                    ; $6556: $71
    dec hl                                        ; $6557: $2b
    xor c                                         ; $6558: $a9
    ld a, e                                       ; $6559: $7b
    ld [hl], h                                    ; $655a: $74
    cp a                                          ; $655b: $bf
    ld a, [hl+]                                   ; $655c: $2a
    inc d                                         ; $655d: $14
    sbc e                                         ; $655e: $9b
    ld d, e                                       ; $655f: $53
    set 7, [hl]                                   ; $6560: $cb $fe
    add l                                         ; $6562: $85
    rst $20                                       ; $6563: $e7
    cp h                                          ; $6564: $bc
    xor $8c                                       ; $6565: $ee $8c
    call $9cec                                    ; $6567: $cd $ec $9c
    or l                                          ; $656a: $b5
    or l                                          ; $656b: $b5
    ld h, $4d                                     ; $656c: $26 $4d
    ld [hl+], a                                   ; $656e: $22
    halt                                          ; $656f: $76
    rst $00                                       ; $6570: $c7
    ld e, d                                       ; $6571: $5a
    db $d3                                        ; $6572: $d3
    dec b                                         ; $6573: $05
    nop                                           ; $6574: $00
    xor $84                                       ; $6575: $ee $84
    pop hl                                        ; $6577: $e1
    ccf                                           ; $6578: $3f
    db $db                                        ; $6579: $db
    cp c                                          ; $657a: $b9
    ld a, c                                       ; $657b: $79
    or h                                          ; $657c: $b4
    xor $81                                       ; $657d: $ee $81
    db $10                                        ; $657f: $10
    or h                                          ; $6580: $b4
    ld e, $f9                                     ; $6581: $1e $f9
    or a                                          ; $6583: $b7
    ld a, [c]                                     ; $6584: $f2
    add c                                         ; $6585: $81
    jp hl                                         ; $6586: $e9


    ld b, [hl]                                    ; $6587: $46
    adc c                                         ; $6588: $89
    dec c                                         ; $6589: $0d
    db $fc                                        ; $658a: $fc
    or d                                          ; $658b: $b2
    ld [hl], c                                    ; $658c: $71
    cp [hl]                                       ; $658d: $be
    add a                                         ; $658e: $87
    pop bc                                        ; $658f: $c1
    call nz, $b0e0                                ; $6590: $c4 $e0 $b0
    adc [hl]                                      ; $6593: $8e
    ld [hl], e                                    ; $6594: $73
    sub e                                         ; $6595: $93
    add hl, de                                    ; $6596: $19
    ld e, l                                       ; $6597: $5d
    ld [hl], d                                    ; $6598: $72
    db $10                                        ; $6599: $10
    ld l, d                                       ; $659a: $6a
    call c, $f37b                                 ; $659b: $dc $7b $f3
    ld l, a                                       ; $659e: $6f
    push hl                                       ; $659f: $e5
    ld l, a                                       ; $65a0: $6f
    db $fd                                        ; $65a1: $fd
    ld [hl], a                                    ; $65a2: $77
    add $e6                                       ; $65a3: $c6 $e6
    call z, Call_000_2e8a                         ; $65a5: $cc $8a $2e
    nop                                           ; $65a8: $00
    ret nc                                        ; $65a9: $d0

    ld l, h                                       ; $65aa: $6c
    cp e                                          ; $65ab: $bb
    ld l, c                                       ; $65ac: $69
    ld c, e                                       ; $65ad: $4b
    jp hl                                         ; $65ae: $e9


    or e                                          ; $65af: $b3
    ld a, h                                       ; $65b0: $7c
    db $eb                                        ; $65b1: $eb
    or a                                          ; $65b2: $b7
    and d                                         ; $65b3: $a2
    ld l, $f1                                     ; $65b4: $2e $f1
    cp [hl]                                       ; $65b6: $be
    push hl                                       ; $65b7: $e5
    rst $38                                       ; $65b8: $ff
    jp z, $4b7f                                   ; $65b9: $ca $7f $4b

    ld sp, hl                                     ; $65bc: $f9
    ld d, a                                       ; $65bd: $57
    cp d                                          ; $65be: $ba
    rst $30                                       ; $65bf: $f7
    cp l                                          ; $65c0: $bd
    rst $20                                       ; $65c1: $e7
    add h                                         ; $65c2: $84
    or d                                          ; $65c3: $b2
    ld l, c                                       ; $65c4: $69
    ld l, e                                       ; $65c5: $6b
    rst $08                                       ; $65c6: $cf
    ld a, [c]                                     ; $65c7: $f2
    or l                                          ; $65c8: $b5
    dec a                                         ; $65c9: $3d
    daa                                           ; $65ca: $27
    sub d                                         ; $65cb: $92
    add d                                         ; $65cc: $82
    ld e, a                                       ; $65cd: $5f
    dec d                                         ; $65ce: $15
    ld a, [c]                                     ; $65cf: $f2
    rlca                                          ; $65d0: $07
    inc b                                         ; $65d1: $04
    cp e                                          ; $65d2: $bb
    ccf                                           ; $65d3: $3f
    rst $38                                       ; $65d4: $ff
    sub [hl]                                      ; $65d5: $96
    dec a                                         ; $65d6: $3d
    set 6, a                                      ; $65d7: $cb $f7
    cp a                                          ; $65d9: $bf
    sub h                                         ; $65da: $94
    ld h, [hl]                                    ; $65db: $66
    ld sp, hl                                     ; $65dc: $f9

jr_05c_65dd:
    sub [hl]                                      ; $65dd: $96
    jp nz, $2327                                  ; $65de: $c2 $27 $23

    xor d                                         ; $65e1: $aa
    ld [c], a                                     ; $65e2: $e2
    ld a, [hl-]                                   ; $65e3: $3a
    ld h, a                                       ; $65e4: $67
    dec l                                         ; $65e5: $2d
    xor h                                         ; $65e6: $ac
    rst $30                                       ; $65e7: $f7
    ld [bc], a                                    ; $65e8: $02
    inc a                                         ; $65e9: $3c
    rst $08                                       ; $65ea: $cf
    ld a, [c]                                     ; $65eb: $f2

Jump_05c_65ec:
    xor l                                         ; $65ec: $ad
    rst $18                                       ; $65ed: $df
    adc d                                         ; $65ee: $8a
    ld d, d                                       ; $65ef: $52
    add $ba                                       ; $65f0: $c6 $ba
    scf                                           ; $65f2: $37
    add hl, hl                                    ; $65f3: $29
    jr jr_05c_65dd                                ; $65f4: $18 $e7

    ld l, e                                       ; $65f6: $6b
    cp [hl]                                       ; $65f7: $be
    push hl                                       ; $65f8: $e5
    rst $38                                       ; $65f9: $ff
    jp z, $4b7f                                   ; $65fa: $ca $7f $4b

    ld sp, hl                                     ; $65fd: $f9
    ld b, b                                       ; $65fe: $40
    or [hl]                                       ; $65ff: $b6
    sub $f8                                       ; $6600: $d6 $f8
    ld h, a                                       ; $6602: $67
    call nz, $f39e                                ; $6603: $c4 $9e $f3
    sub a                                         ; $6606: $97
    ld hl, sp-$61                                 ; $6607: $f8 $9f
    ld l, l                                       ; $6609: $6d
    pop hl                                        ; $660a: $e1
    ld b, d                                       ; $660b: $42
    and d                                         ; $660c: $a2
    ld [hl], h                                    ; $660d: $74
    adc a                                         ; $660e: $8f
    ld sp, hl                                     ; $660f: $f9
    ld e, a                                       ; $6610: $5f
    ld [$fdf7], a                                 ; $6611: $ea $f7 $fd
    ld a, a                                       ; $6614: $7f
    ld l, l                                       ; $6615: $6d
    ld a, d                                       ; $6616: $7a
    xor a                                         ; $6617: $af
    reti                                          ; $6618: $d9


    add b                                         ; $6619: $80
    ld b, h                                       ; $661a: $44
    daa                                           ; $661b: $27
    ld [hl], l                                    ; $661c: $75
    adc a                                         ; $661d: $8f
    xor $57                                       ; $661e: $ee $57
    ld d, e                                       ; $6620: $53
    sub e                                         ; $6621: $93
    ld h, d                                       ; $6622: $62
    add l                                         ; $6623: $85
    daa                                           ; $6624: $27
    call nc, Call_05c_5908                        ; $6625: $d4 $08 $59
    db $eb                                        ; $6628: $eb
    add sp, $1e                                   ; $6629: $e8 $1e
    rla                                           ; $662b: $17
    nop                                           ; $662c: $00
    ret nc                                        ; $662d: $d0

    ld d, l                                       ; $662e: $55
    ld d, c                                       ; $662f: $51
    ld a, [hl-]                                   ; $6630: $3a
    rst $38                                       ; $6631: $ff
    ldh a, [$9f]                                  ; $6632: $f0 $9f
    inc de                                        ; $6634: $13
    ld a, [hl-]                                   ; $6635: $3a
    sub c                                         ; $6636: $91
    ld l, a                                       ; $6637: $6f
    ld d, l                                       ; $6638: $55
    sub $ca                                       ; $6639: $d6 $ca
    ld e, b                                       ; $663b: $58
    rst $30                                       ; $663c: $f7
    ld h, $05                                     ; $663d: $26 $05
    db $e3                                        ; $663f: $e3
    ld a, h                                       ; $6640: $7c
    ld d, l                                       ; $6641: $55
    ld [hl], $33                                  ; $6642: $36 $33
    and d                                         ; $6644: $a2
    jp nc, $cb7c                                  ; $6645: $d2 $7c $cb

    rst $38                                       ; $6648: $ff
    sub l                                         ; $6649: $95
    rst $38                                       ; $664a: $ff
    sub [hl]                                      ; $664b: $96
    ld a, [c]                                     ; $664c: $f2

Call_05c_664d:
    dec a                                         ; $664d: $3d
    ld h, a                                       ; $664e: $67
    adc e                                         ; $664f: $8b
    ld l, $f1                                     ; $6650: $2e $f1
    adc [hl]                                      ; $6652: $8e
    add hl, sp                                    ; $6653: $39
    rst $30                                       ; $6654: $f7
    dec [hl]                                      ; $6655: $35
    add hl, hl                                    ; $6656: $29
    db $eb                                        ; $6657: $eb
    ld l, b                                       ; $6658: $68

Call_05c_6659:
    and d                                         ; $6659: $a2
    ld d, d                                       ; $665a: $52
    rst $38                                       ; $665b: $ff
    adc $87                                       ; $665c: $ce $87
    rlca                                          ; $665e: $07
    sbc $bb                                       ; $665f: $de $bb
    sub l                                         ; $6661: $95
    call nc, $ba3d                                ; $6662: $d4 $3d $ba
    ld e, a                                       ; $6665: $5f
    daa                                           ; $6666: $27
    ld d, d                                       ; $6667: $52
    ld c, b                                       ; $6668: $48
    or h                                          ; $6669: $b4
    jr nc, @+$01                                  ; $666a: $30 $ff

    ld d, [hl]                                    ; $666c: $56
    or b                                          ; $666d: $b0
    db $ed                                        ; $666e: $ed
    and [hl]                                      ; $666f: $a6
    dec l                                         ; $6670: $2d
    db $dd                                        ; $6671: $dd
    add hl, de                                    ; $6672: $19
    sbc e                                         ; $6673: $9b

Call_05c_6674:
    reti                                          ; $6674: $d9


    add hl, sp                                    ; $6675: $39
    ld l, e                                       ; $6676: $6b
    ld c, e                                       ; $6677: $4b
    rla                                           ; $6678: $17
    nop                                           ; $6679: $00
    inc a                                         ; $667a: $3c
    ld h, c                                       ; $667b: $61
    ld a, [hl]                                    ; $667c: $7e
    jr nc, jr_05c_66f0                            ; $667d: $30 $71

    or $b3                                        ; $667f: $f6 $b3
    add hl, de                                    ; $6681: $19
    add hl, de                                    ; $6682: $19
    nop                                           ; $6683: $00
    ld c, $9f                                     ; $6684: $0e $9f
    ld a, l                                       ; $6686: $7d
    ld [bc], a                                    ; $6687: $02
    ld [hl], c                                    ; $6688: $71
    ld l, h                                       ; $6689: $6c
    jr jr_05c_668c                                ; $668a: $18 $00

jr_05c_668c:
    ld l, [hl]                                    ; $668c: $6e
    or e                                          ; $668d: $b3
    inc b                                         ; $668e: $04

jr_05c_668f:
    jp nc, $fef5                                  ; $668f: $d2 $f5 $fe

    rrca                                          ; $6692: $0f
    ld b, h                                       ; $6693: $44
    ld l, [hl]                                    ; $6694: $6e
    rra                                           ; $6695: $1f
    ld c, b                                       ; $6696: $48
    or b                                          ; $6697: $b0
    add $02                                       ; $6698: $c6 $02
    ret nc                                        ; $669a: $d0

    rst $20                                       ; $669b: $e7
    inc a                                         ; $669c: $3c
    inc b                                         ; $669d: $04
    reti                                          ; $669e: $d9


    adc e                                         ; $669f: $8b
    scf                                           ; $66a0: $37
    cp d                                          ; $66a1: $ba
    add e                                         ; $66a2: $83
    dec l                                         ; $66a3: $2d
    inc h                                         ; $66a4: $24
    and c                                         ; $66a5: $a1
    nop                                           ; $66a6: $00
    ld e, $bc                                     ; $66a7: $1e $bc
    ld sp, hl                                     ; $66a9: $f9
    rst $08                                       ; $66aa: $cf
    jr nz, jr_05c_668f                            ; $66ab: $20 $e2

    ld c, h                                       ; $66ad: $4c
    or a                                          ; $66ae: $b7
    ld [de], a                                    ; $66af: $12
    ld a, [hl-]                                   ; $66b0: $3a
    pop de                                        ; $66b1: $d1
    ld e, b                                       ; $66b2: $58
    nop                                           ; $66b3: $00
    ld e, $1c                                     ; $66b4: $1e $1c
    call z, $8983                                 ; $66b6: $cc $83 $89
    ld h, a                                       ; $66b9: $67
    db $fd                                        ; $66ba: $fd
    add h                                         ; $66bb: $84
    sub c                                         ; $66bc: $91

Call_05c_66bd:
Jump_05c_66bd:
    ld [hl], l                                    ; $66bd: $75
    ld a, [bc]                                    ; $66be: $0a
    nop                                           ; $66bf: $00
    ld e, $b0                                     ; $66c0: $1e $b0
    ld c, b                                       ; $66c2: $48
    ld [$2659], sp                                ; $66c3: $08 $59 $26
    adc a                                         ; $66c6: $8f
    rst $10                                       ; $66c7: $d7
    adc a                                         ; $66c8: $8f
    sbc h                                         ; $66c9: $9c
    nop                                           ; $66ca: $00
    ld e, $7f                                     ; $66cb: $1e $7f
    ld e, $ac                                     ; $66cd: $1e $ac
    ld b, d                                       ; $66cf: $42
    xor $05                                       ; $66d0: $ee $05
    rra                                           ; $66d2: $1f
    ld d, [hl]                                    ; $66d3: $56
    rst $18                                       ; $66d4: $df
    ret z                                         ; $66d5: $c8

    and d                                         ; $66d6: $a2
    ld [de], a                                    ; $66d7: $12
    ret z                                         ; $66d8: $c8

    nop                                           ; $66d9: $00
    ld e, $26                                     ; $66da: $1e $26
    ld d, h                                       ; $66dc: $54
    rst $18                                       ; $66dd: $df
    ei                                            ; $66de: $fb
    ld a, [c]                                     ; $66df: $f2
    ld h, d                                       ; $66e0: $62
    rrca                                          ; $66e1: $0f
    call nz, $edee                                ; $66e2: $c4 $ee $ed
    inc d                                         ; $66e5: $14
    nop                                           ; $66e6: $00
    sbc h                                         ; $66e7: $9c
    sbc a                                         ; $66e8: $9f
    ld b, b                                       ; $66e9: $40
    ld a, [$cd6c]                                 ; $66ea: $fa $6c $cd
    ld e, [hl]                                    ; $66ed: $5e
    db $fc                                        ; $66ee: $fc
    inc hl                                        ; $66ef: $23

jr_05c_66f0:
    and c                                         ; $66f0: $a1
    add h                                         ; $66f1: $84
    ld de, $0021                                  ; $66f2: $11 $21 $00
    ld e, $9c                                     ; $66f5: $1e $9c
    xor a                                         ; $66f7: $af
    dec de                                        ; $66f8: $1b
    ld e, c                                       ; $66f9: $59
    ret z                                         ; $66fa: $c8

    ld h, c                                       ; $66fb: $61

jr_05c_66fc:
    db $fc                                        ; $66fc: $fc

Call_05c_66fd:
    inc c                                         ; $66fd: $0c
    inc bc                                        ; $66fe: $03
    xor $fc                                       ; $66ff: $ee $fc
    ld c, c                                       ; $6701: $49
    db $10                                        ; $6702: $10
    rlca                                          ; $6703: $07
    sub e                                         ; $6704: $93
    dec sp                                        ; $6705: $3b
    rst $20                                       ; $6706: $e7
    dec hl                                        ; $6707: $2b
    nop                                           ; $6708: $00
    xor $c7                                       ; $6709: $ee $c7
    reti                                          ; $670b: $d9


    ld b, h                                       ; $670c: $44
    call nz, $ee39                                ; $670d: $c4 $39 $ee
    dec sp                                        ; $6710: $3b
    sbc b                                         ; $6711: $98
    rst $30                                       ; $6712: $f7
    ld de, $1e00                                  ; $6713: $11 $00 $1e
    or b                                          ; $6716: $b0
    add sp, -$69                                  ; $6717: $e8 $97
    cp e                                          ; $6719: $bb
    rst $18                                       ; $671a: $df
    add hl, bc                                    ; $671b: $09
    and h                                         ; $671c: $a4
    rlca                                          ; $671d: $07
    di                                            ; $671e: $f3
    nop                                           ; $671f: $00
    inc a                                         ; $6720: $3c
    ld e, b                                       ; $6721: $58
    jr c, jr_05c_66fc                             ; $6722: $38 $d8

    cp [hl]                                       ; $6724: $be
    inc e                                         ; $6725: $1c
    adc h                                         ; $6726: $8c
    ld c, [hl]                                    ; $6727: $4e
    nop                                           ; $6728: $00
    ld l, a                                       ; $6729: $6f
    rst $28                                       ; $672a: $ef
    inc bc                                        ; $672b: $03
    nop                                           ; $672c: $00
    ld e, $6c                                     ; $672d: $1e $6c
    add d                                         ; $672f: $82
    add hl, bc                                    ; $6730: $09
    ld [hl+], a                                   ; $6731: $22
    add e                                         ; $6732: $83
    adc b                                         ; $6733: $88
    db $e3                                        ; $6734: $e3
    sbc h                                         ; $6735: $9c
    ld h, b                                       ; $6736: $60
    adc l                                         ; $6737: $8d
    dec b                                         ; $6738: $05
    nop                                           ; $6739: $00
    ld e, $61                                     ; $673a: $1e $61
    ld [bc], a                                    ; $673c: $02
    and e                                         ; $673d: $a3
    jr nz, jr_05c_676f                            ; $673e: $20 $2f

    adc $6c                                       ; $6740: $ce $6c
    add [hl]                                      ; $6742: $86
    ld bc, $0c9e                                  ; $6743: $01 $9e $0c
    xor h                                         ; $6746: $ac
    add h                                         ; $6747: $84
    db $e4                                        ; $6748: $e4
    db $10                                        ; $6749: $10
    ld bc, $21ee                                  ; $674a: $01 $ee $21
    ld c, e                                       ; $674d: $4b
    ldh [rKEY1], a                                ; $674e: $e0 $4d
    ld e, [hl]                                    ; $6750: $5e
    call nz, $de39                                ; $6751: $c4 $39 $de
    rst $00                                       ; $6754: $c7
    pop bc                                        ; $6755: $c1
    inc a                                         ; $6756: $3c
    jr nz, jr_05c_6759                            ; $6757: $20 $00

jr_05c_6759:
    ld a, h                                       ; $6759: $7c
    pop bc                                        ; $675a: $c1
    ld [de], a                                    ; $675b: $12
    adc $4a                                       ; $675c: $ce $4a
    ld c, $3f                                     ; $675e: $0e $3f
    db $fd                                        ; $6760: $fd
    or d                                          ; $6761: $b2
    add c                                         ; $6762: $81
    cp $03                                        ; $6763: $fe $03
    ld a, h                                       ; $6765: $7c
    ret z                                         ; $6766: $c8

    ld [de], a                                    ; $6767: $12
    ld a, [$09d2]                                 ; $6768: $fa $d2 $09
    cp c                                          ; $676b: $b9
    rst $38                                       ; $676c: $ff
    add hl, de                                    ; $676d: $19
    nop                                           ; $676e: $00

jr_05c_676f:
    xor $b2                                       ; $676f: $ee $b2
    dec [hl]                                      ; $6771: $35
    ld a, a                                       ; $6772: $7f
    ld c, e                                       ; $6773: $4b
    xor $32                                       ; $6774: $ee $32
    xor h                                         ; $6776: $ac
    add hl, bc                                    ; $6777: $09
    nop                                           ; $6778: $00
    ret nc                                        ; $6779: $d0

    sub $c1                                       ; $677a: $d6 $c1
    ld d, [hl]                                    ; $677c: $56
    ld l, [hl]                                    ; $677d: $6e
    ld l, a                                       ; $677e: $6f
    ld a, l                                       ; $677f: $7d
    cp $e7                                        ; $6780: $fe $e7
    ld e, [hl]                                    ; $6782: $5e
    inc bc                                        ; $6783: $03
    xor $c4                                       ; $6784: $ee $c4
    scf                                           ; $6786: $37
    db $db                                        ; $6787: $db
    ld b, h                                       ; $6788: $44
    db $e4                                        ; $6789: $e4
    adc $c1                                       ; $678a: $ce $c1
    ld b, h                                       ; $678c: $44
    cp $06                                        ; $678d: $fe $06
    ld l, [hl]                                    ; $678f: $6e
    rra                                           ; $6790: $1f
    rst $28                                       ; $6791: $ef
    add e                                         ; $6792: $83
    push af                                       ; $6793: $f5
    adc e                                         ; $6794: $8b
    rra                                           ; $6795: $1f
    or c                                          ; $6796: $b1
    db $d3                                        ; $6797: $d3
    dec a                                         ; $6798: $3d
    rlca                                          ; $6799: $07
    nop                                           ; $679a: $00
    ld e, [hl]                                    ; $679b: $5e
    ld a, [hl]                                    ; $679c: $7e
    cp [hl]                                       ; $679d: $be
    pop bc                                        ; $679e: $c1
    db $e4                                        ; $679f: $e4
    jp hl                                         ; $67a0: $e9


    ld e, e                                       ; $67a1: $5b
    or e                                          ; $67a2: $b3
    ld c, l                                       ; $67a3: $4d
    ld h, b                                       ; $67a4: $60
    ld [bc], a                                    ; $67a5: $02
    ld e, [hl]                                    ; $67a6: $5e
    dec a                                         ; $67a7: $3d
    add e                                         ; $67a8: $83
    sbc h                                         ; $67a9: $9c
    ret z                                         ; $67aa: $c8

    db $e4                                        ; $67ab: $e4
    ldh a, [$7c]                                  ; $67ac: $f0 $7c
    scf                                           ; $67ae: $37
    nop                                           ; $67af: $00
    xor $65                                       ; $67b0: $ee $65
    or a                                          ; $67b2: $b7
    sbc a                                         ; $67b3: $9f
    sub $cb                                       ; $67b4: $d6 $cb
    db $fd                                        ; $67b6: $fd
    pop bc                                        ; $67b7: $c1
    xor $4f                                       ; $67b8: $ee $4f
    jr z, jr_05c_67bc                             ; $67ba: $28 $00

jr_05c_67bc:
    xor $8f                                       ; $67bc: $ee $8f
    db $e3                                        ; $67be: $e3
    ld a, l                                       ; $67bf: $7d
    or b                                          ; $67c0: $b0
    sub [hl]                                      ; $67c1: $96
    jp $3838                                      ; $67c2: $c3 $38 $38


    rst $18                                       ; $67c5: $df
    nop                                           ; $67c6: $00
    inc e                                         ; $67c7: $1c
    ld h, a                                       ; $67c8: $67
    di                                            ; $67c9: $f3
    ld a, l                                       ; $67ca: $7d
    ld [hl], c                                    ; $67cb: $71
    adc h                                         ; $67cc: $8c
    ld b, [hl]                                    ; $67cd: $46
    nop                                           ; $67ce: $00
    db $fc                                        ; $67cf: $fc
    ld a, e                                       ; $67d0: $7b
    ld c, [hl]                                    ; $67d1: $4e
    ld h, $7e                                     ; $67d2: $26 $7e
    sbc h                                         ; $67d4: $9c
    ld bc, $ee00                                  ; $67d5: $01 $00 $ee
    ld a, $3b                                     ; $67d8: $3e $3b
    ret c                                         ; $67da: $d8

    db $fd                                        ; $67db: $fd
    ld [hl], d                                    ; $67dc: $72
    cp b                                          ; $67dd: $b8
    dec [hl]                                      ; $67de: $35
    xor l                                         ; $67df: $ad
    or c                                          ; $67e0: $b1
    ld [bc], a                                    ; $67e1: $02
    nop                                           ; $67e2: $00
    ret nc                                        ; $67e3: $d0

    sub b                                         ; $67e4: $90
    add h                                         ; $67e5: $84
    sbc [hl]                                      ; $67e6: $9e
    adc c                                         ; $67e7: $89
    or e                                          ; $67e8: $b3
    add hl, de                                    ; $67e9: $19
    adc [hl]                                      ; $67ea: $8e
    sub e                                         ; $67eb: $93
    ld d, b                                       ; $67ec: $50
    jr nc, jr_05c_67ef                            ; $67ed: $30 $00

jr_05c_67ef:
    inc a                                         ; $67ef: $3c
    sbc a                                         ; $67f0: $9f
    rst $00                                       ; $67f1: $c7
    pop bc                                        ; $67f2: $c1
    inc b                                         ; $67f3: $04
    and [hl]                                      ; $67f4: $a6
    jr c, jr_05c_680a                             ; $67f5: $38 $13

    adc [hl]                                      ; $67f7: $8e
    add sp, -$53                                  ; $67f8: $e8 $ad
    add h                                         ; $67fa: $84
    nop                                           ; $67fb: $00
    xor $9f                                       ; $67fc: $ee $9f
    rst $08                                       ; $67fe: $cf
    ld [hl], a                                    ; $67ff: $77
    sbc b                                         ; $6800: $98
    call c, $e389                                 ; $6801: $dc $89 $e3
    ld a, l                                       ; $6804: $7d
    ld b, $00                                     ; $6805: $06 $00
    ld e, $0d                                     ; $6807: $1e $0d
    db $eb                                        ; $6809: $eb

jr_05c_680a:
    ld h, c                                       ; $680a: $61
    ld [hl], d                                    ; $680b: $72
    cp b                                          ; $680c: $b8
    rst $20                                       ; $680d: $e7
    ld l, h                                       ; $680e: $6c
    jp nz, $c09b                                  ; $680f: $c2 $9b $c0

    inc a                                         ; $6812: $3c
    ld bc, $0e00                                  ; $6813: $01 $00 $0e
    sub b                                         ; $6816: $90
    push hl                                       ; $6817: $e5
    ld [hl], c                                    ; $6818: $71

jr_05c_6819:
    call nz, $309f                                ; $6819: $c4 $9f $30
    sub $04                                       ; $681c: $d6 $04
    inc e                                         ; $681e: $1c
    sub [hl]                                      ; $681f: $96
    ldh a, [$1f]                                  ; $6820: $f0 $1f
    adc b                                         ; $6822: $88
    call c, $bf89                                 ; $6823: $dc $89 $bf
    rst $10                                       ; $6826: $d7
    ld d, d                                       ; $6827: $52
    nop                                           ; $6828: $00
    xor $22                                       ; $6829: $ee $22
    xor e                                         ; $682b: $ab
    jr c, jr_05c_6869                             ; $682c: $38 $3b

    ld c, h                                       ; $682e: $4c
    ld l, [hl]                                    ; $682f: $6e
    daa                                           ; $6830: $27
    call nz, $f7d6                                ; $6831: $c4 $d6 $f7
    rra                                           ; $6834: $1f
    nop                                           ; $6835: $00
    ld e, $8c                                     ; $6836: $1e $8c
    ld [hl], e                                    ; $6838: $73
    ld [hl], $0f                                  ; $6839: $36 $0f
    ld h, $87                                     ; $683b: $26 $87
    jr c, @-$3b                                   ; $683d: $38 $c3

    ei                                            ; $683f: $fb
    inc c                                         ; $6840: $0c
    nop                                           ; $6841: $00
    ld e, $af                                     ; $6842: $1e $af
    ld c, l                                       ; $6844: $4d
    inc d                                         ; $6845: $14
    ld h, a                                       ; $6846: $67
    ld [bc], a                                    ; $6847: $02
    ld a, a                                       ; $6848: $7f
    ld a, a                                       ; $6849: $7f
    ld b, c                                       ; $684a: $41
    add d                                         ; $684b: $82
    ld bc, $9c1e                                  ; $684c: $01 $1e $9c
    jr z, jr_05c_6819                             ; $684f: $28 $c8

    set 3, l                                      ; $6851: $cb $dd
    ld [hl], h                                    ; $6853: $74
    cp e                                          ; $6854: $bb
    ld sp, $0981                                  ; $6855: $31 $81 $09
    nop                                           ; $6858: $00
    ld l, [hl]                                    ; $6859: $6e
    ld b, e                                       ; $685a: $43
    cp $78                                        ; $685b: $fe $78
    rra                                           ; $685d: $1f
    xor h                                         ; $685e: $ac
    push hl                                       ; $685f: $e5
    pop de                                        ; $6860: $d1
    ccf                                           ; $6861: $3f
    db $db                                        ; $6862: $db
    adc [hl]                                      ; $6863: $8e
    ld [hl], e                                    ; $6864: $73
    and d                                         ; $6865: $a2
    nop                                           ; $6866: $00

Call_05c_6867:
    ld c, $83                                     ; $6867: $0e $83

jr_05c_6869:
    ld sp, hl                                     ; $6869: $f9
    pop de                                        ; $686a: $d1
    db $e3                                        ; $686b: $e3
    push hl                                       ; $686c: $e5
    cp $57                                        ; $686d: $fe $57
    ld [bc], a                                    ; $686f: $02
    jr c, jr_05c_68ca                             ; $6870: $38 $58

    inc bc                                        ; $6872: $03
    cp h                                          ; $6873: $bc
    ld l, a                                       ; $6874: $6f
    or $05                                        ; $6875: $f6 $05
    ld h, c                                       ; $6877: $61
    cpl                                           ; $6878: $2f
    rst $08                                       ; $6879: $cf
    rst $18                                       ; $687a: $df
    ei                                            ; $687b: $fb
    di                                            ; $687c: $f3
    ld l, l                                       ; $687d: $6d
    ld [hl], e                                    ; $687e: $73
    ld bc, $e87c                                  ; $687f: $01 $7c $e8
    db $db                                        ; $6882: $db
    jr nc, jr_05c_6885                            ; $6883: $30 $00

jr_05c_6885:
    xor $9c                                       ; $6885: $ee $9c
    xor b                                         ; $6887: $a8
    inc [hl]                                      ; $6888: $34
    or $16                                        ; $6889: $f6 $16
    ld h, a                                       ; $688b: $67
    rst $38                                       ; $688c: $ff
    sbc c                                         ; $688d: $99
    nop                                           ; $688e: $00
    ld l, [hl]                                    ; $688f: $6e
    rra                                           ; $6890: $1f
    rst $28                                       ; $6891: $ef
    add e                                         ; $6892: $83
    ld l, l                                       ; $6893: $6d
    ld [bc], a                                    ; $6894: $02
    ld a, [c]                                     ; $6895: $f2
    add b                                         ; $6896: $80
    adc l                                         ; $6897: $8d
    xor d                                         ; $6898: $aa
    push bc                                       ; $6899: $c5
    ld [bc], a                                    ; $689a: $02
    ld a, h                                       ; $689b: $7c
    pop bc                                        ; $689c: $c1
    adc $16                                       ; $689d: $ce $16
    nop                                           ; $689f: $00
    ret nc                                        ; $68a0: $d0

    daa                                           ; $68a1: $27
    ld b, c                                       ; $68a2: $41
    or [hl]                                       ; $68a3: $b6
    sub b                                         ; $68a4: $90
    sub a                                         ; $68a5: $97
    cp e                                          ; $68a6: $bb
    rst $20                                       ; $68a7: $e7
    inc de                                        ; $68a8: $13
    ld c, d                                       ; $68a9: $4a

jr_05c_68aa:
    ld [$1e00], sp                                ; $68aa: $08 $00 $1e

jr_05c_68ad:
    jr nc, jr_05c_68fb                            ; $68ad: $30 $4c

    add sp, $4b                                   ; $68af: $e8 $4b
    db $fc                                        ; $68b1: $fc
    db $e3                                        ; $68b2: $e3

jr_05c_68b3:
    or $fd                                        ; $68b3: $f6 $fd
    dec b                                         ; $68b5: $05
    xor $0c                                       ; $68b6: $ee $0c
    ld b, $c1                                     ; $68b8: $06 $c1
    inc b                                         ; $68ba: $04
    and [hl]                                      ; $68bb: $a6
    ld hl, sp-$3a                                 ; $68bc: $f8 $c6
    add c                                         ; $68be: $81
    jr nz, jr_05c_68d7                            ; $68bf: $20 $16

    nop                                           ; $68c1: $00
    ld l, [hl]                                    ; $68c2: $6e
    sbc a                                         ; $68c3: $9f
    dec sp                                        ; $68c4: $3b
    ret c                                         ; $68c5: $d8

    ld h, $30                                     ; $68c6: $26 $30
    push bc                                       ; $68c8: $c5
    ld sp, hl                                     ; $68c9: $f9

jr_05c_68ca:
    add hl, bc                                    ; $68ca: $09
    ld a, e                                       ; $68cb: $7b
    rst $08                                       ; $68cc: $cf
    ld d, $92                                     ; $68cd: $16 $92
    ld d, b                                       ; $68cf: $50
    nop                                           ; $68d0: $00
    ld l, [hl]                                    ; $68d1: $6e
    or e                                          ; $68d2: $b3
    adc [hl]                                      ; $68d3: $8e
    ld a, e                                       ; $68d4: $7b
    ld l, l                                       ; $68d5: $6d
    ld e, a                                       ; $68d6: $5f

jr_05c_68d7:
    ld e, $8f                                     ; $68d7: $1e $8f
    inc b                                         ; $68d9: $04
    rst $20                                       ; $68da: $e7
    ld d, $00                                     ; $68db: $16 $00
    ld e, $60                                     ; $68dd: $1e $60
    ld b, c                                       ; $68df: $41
    ldh a, [$6c]                                  ; $68e0: $f0 $6c
    add l                                         ; $68e2: $85
    jr c, jr_05c_68b3                             ; $68e3: $38 $ce

    ld a, [$57e9]                                 ; $68e5: $fa $e9 $57
    inc bc                                        ; $68e8: $03
    ld a, h                                       ; $68e9: $7c
    ld e, b                                       ; $68ea: $58
    db $fd                                        ; $68eb: $fd
    add hl, bc                                    ; $68ec: $09
    adc l                                         ; $68ed: $8d
    db $10                                        ; $68ee: $10
    ccf                                           ; $68ef: $3f
    or d                                          ; $68f0: $b2
    jp c, $061e                                   ; $68f1: $da $1e $06

    nop                                           ; $68f4: $00
    inc a                                         ; $68f5: $3c
    rst $08                                       ; $68f6: $cf
    ld e, b                                       ; $68f7: $58
    ld h, $87                                     ; $68f8: $26 $87
    ret c                                         ; $68fa: $d8

jr_05c_68fb:
    dec e                                         ; $68fb: $1d
    inc c                                         ; $68fc: $0c
    nop                                           ; $68fd: $00
    xor $05                                       ; $68fe: $ee $05
    ld c, e                                       ; $6900: $4b
    jr c, jr_05c_68ad                             ; $6901: $38 $aa

    push bc                                       ; $6903: $c5
    sbc c                                         ; $6904: $99
    xor $ed                                       ; $6905: $ee $ed
    sbc a                                         ; $6907: $9f
    xor l                                         ; $6908: $ad
    add h                                         ; $6909: $84
    nop                                           ; $690a: $00
    ld e, $20                                     ; $690b: $1e $20
    or e                                          ; $690d: $b3
    cp b                                          ; $690e: $b8
    ld de, $96d9                                  ; $690f: $11 $d9 $96
    inc a                                         ; $6912: $3c
    jr jr_05c_68aa                                ; $6913: $18 $95

    xor $81                                       ; $6915: $ee $81
    inc a                                         ; $6917: $3c
    nop                                           ; $6918: $00
    xor $9e                                       ; $6919: $ee $9e
    ld b, l                                       ; $691b: $45
    ld c, b                                       ; $691c: $48
    dec a                                         ; $691d: $3d
    nop                                           ; $691e: $00
    xor $c4                                       ; $691f: $ee $c4
    adc a                                         ; $6921: $8f
    dec de                                        ; $6922: $1b
    xor e                                         ; $6923: $ab
    push bc                                       ; $6924: $c5
    rst $30                                       ; $6925: $f7
    inc c                                         ; $6926: $0c
    ld b, [hl]                                    ; $6927: $46
    or [hl]                                       ; $6928: $b6
    sbc $7f                                       ; $6929: $de $7f
    ld c, l                                       ; $692b: $4d
    inc bc                                        ; $692c: $03
    xor $a6                                       ; $692d: $ee $a6
    ccf                                           ; $692f: $3f
    ld a, [hl+]                                   ; $6930: $2a
    add c                                         ; $6931: $81
    ret z                                         ; $6932: $c8

    call nz, Call_000_2071                        ; $6933: $c4 $71 $20
    ld l, h                                       ; $6936: $6c
    ld hl, $0509                                  ; $6937: $21 $09 $05
    nop                                           ; $693a: $00
    ld a, h                                       ; $693b: $7c
    and e                                         ; $693c: $a3
    ld [de], a                                    ; $693d: $12
    ld b, d                                       ; $693e: $42
    cp c                                          ; $693f: $b9
    add e                                         ; $6940: $83
    sub l                                         ; $6941: $95
    cp $0d                                        ; $6942: $fe $0d
    nop                                           ; $6944: $00
    ld e, [hl]                                    ; $6945: $5e
    db $ec                                        ; $6946: $ec
    ld c, c                                       ; $6947: $49
    sub b                                         ; $6948: $90
    dec b                                         ; $6949: $05
    ld b, h                                       ; $694a: $44
    ret nc                                        ; $694b: $d0

    rst $00                                       ; $694c: $c7
    ld c, a                                       ; $694d: $4f
    scf                                           ; $694e: $37
    add c                                         ; $694f: $81
    add hl, bc                                    ; $6950: $09
    nop                                           ; $6951: $00
    xor $b0                                       ; $6952: $ee $b0
    add l                                         ; $6954: $85
    inc h                                         ; $6955: $24
    inc d                                         ; $6956: $14
    dec l                                         ; $6957: $2d
    cpl                                           ; $6958: $2f
    and d                                         ; $6959: $a2
    ld c, $26                                     ; $695a: $0e $26
    jr nc, @+$03                                  ; $695c: $30 $01

    ld e, $20                                     ; $695e: $1e $20
    add h                                         ; $6960: $84
    ld l, l                                       ; $6961: $6d
    ld [bc], a                                    ; $6962: $02
    ld a, [c]                                     ; $6963: $f2
    inc d                                         ; $6964: $14
    db $d3                                        ; $6965: $d3
    add hl, de                                    ; $6966: $19
    ld h, a                                       ; $6967: $67
    rst $20                                       ; $6968: $e7
    ld b, h                                       ; $6969: $44
    nop                                           ; $696a: $00
    ld a, h                                       ; $696b: $7c
    res 7, [hl]                                   ; $696c: $cb $be
    jr nz, jr_05c_699f                            ; $696e: $20 $2f

    sbc $af                                       ; $6970: $de $af
    ld c, a                                       ; $6972: $4f
    ld a, a                                       ; $6973: $7f
    call z, Call_000_00f9                         ; $6974: $cc $f9 $00
    sbc h                                         ; $6977: $9c
    ld a, a                                       ; $6978: $7f
    ld a, $d1                                     ; $6979: $3e $d1
    ld h, a                                       ; $697b: $67
    ld a, [c]                                     ; $697c: $f2
    ld a, b                                       ; $697d: $78
    ld l, h                                       ; $697e: $6c
    ld a, [hl-]                                   ; $697f: $3a
    or [hl]                                       ; $6980: $b6
    and d                                         ; $6981: $a2
    nop                                           ; $6982: $00
    cp h                                          ; $6983: $bc
    and e                                         ; $6984: $a3
    or [hl]                                       ; $6985: $b6
    ld [de], a                                    ; $6986: $12
    ld a, [$267e]                                 ; $6987: $fa $7e $26
    cp [hl]                                       ; $698a: $be
    adc a                                         ; $698b: $8f
    inc a                                         ; $698c: $3c
    nop                                           ; $698d: $00
    inc a                                         ; $698e: $3c
    ld [hl], c                                    ; $698f: $71
    ld [de], a                                    ; $6990: $12
    ld a, d                                       ; $6991: $7a
    add hl, sp                                    ; $6992: $39
    inc e                                         ; $6993: $1c
    jp $f0e6                                      ; $6994: $c3 $e6 $f0


    ld b, a                                       ; $6997: $47
    ld a, [bc]                                    ; $6998: $0a
    nop                                           ; $6999: $00
    sbc [hl]                                      ; $699a: $9e
    ld h, d                                       ; $699b: $62
    jp nz, Jump_000_2f51                          ; $699c: $c2 $51 $2f

jr_05c_699f:
    ld e, [hl]                                    ; $699f: $5e
    ld h, h                                       ; $69a0: $64
    cp $d6                                        ; $69a1: $fe $d6
    call z, $16ca                                 ; $69a3: $cc $ca $16
    nop                                           ; $69a6: $00
    inc a                                         ; $69a7: $3c
    ld d, c                                       ; $69a8: $51
    add hl, bc                                    ; $69a9: $09
    xor l                                         ; $69aa: $ad
    dec [hl]                                      ; $69ab: $35
    nop                                           ; $69ac: $00
    xor $fd                                       ; $69ad: $ee $fd
    ld e, d                                       ; $69af: $5a
    ld h, $f7                                     ; $69b0: $26 $f7
    db $10                                        ; $69b2: $10
    ld [bc], a                                    ; $69b3: $02
    add hl, bc                                    ; $69b4: $09
    or [hl]                                       ; $69b5: $b6
    sub b                                         ; $69b6: $90
    add h                                         ; $69b7: $84
    ld [bc], a                                    ; $69b8: $02
    nop                                           ; $69b9: $00
    ld l, [hl]                                    ; $69ba: $6e
    rra                                           ; $69bb: $1f
    rst $28                                       ; $69bc: $ef
    add a                                         ; $69bd: $87
    ret                                           ; $69be: $c9


    cp l                                          ; $69bf: $bd
    ld [hl], c                                    ; $69c0: $71
    ld a, e                                       ; $69c1: $7b
    ld a, a                                       ; $69c2: $7f
    ld [bc], a                                    ; $69c3: $02
    add d                                         ; $69c4: $82
    inc l                                         ; $69c5: $2c
    nop                                           ; $69c6: $00
    xor $61                                       ; $69c7: $ee $61
    ld a, l                                       ; $69c9: $7d
    ld b, d                                       ; $69ca: $42
    jp hl                                         ; $69cb: $e9


    sub a                                         ; $69cc: $97
    ld hl, sp+$59                                 ; $69cd: $f8 $59
    call c, $ba27                                 ; $69cf: $dc $27 $ba
    ld bc, $c37c                                  ; $69d2: $01 $7c $c3
    ld d, $82                                     ; $69d5: $16 $82
    db $ec                                        ; $69d7: $ec
    push hl                                       ; $69d8: $e5
    adc $b3                                       ; $69d9: $ce $b3
    sbc c                                         ; $69db: $99
    ldh a, [rPCM12]                               ; $69dc: $f0 $76
    ld a, [bc]                                    ; $69de: $0a
    nop                                           ; $69df: $00
    ld e, $2c                                     ; $69e0: $1e $2c
    inc h                                         ; $69e2: $24
    or b                                          ; $69e3: $b0
    db $e4                                        ; $69e4: $e4
    ld l, $1b                                     ; $69e5: $2e $1b
    or a                                          ; $69e7: $b7
    rst $30                                       ; $69e8: $f7
    nop                                           ; $69e9: $00
    inc a                                         ; $69ea: $3c
    pop bc                                        ; $69eb: $c1
    xor $2f                                       ; $69ec: $ee $2f
    ld a, c                                       ; $69ee: $79
    or c                                          ; $69ef: $b1
    push de                                       ; $69f0: $d5
    ld l, h                                       ; $69f1: $6c
    dec hl                                        ; $69f2: $2b
    and c                                         ; $69f3: $a1
    db $f4                                        ; $69f4: $f4
    ld l, a                                       ; $69f5: $6f
    nop                                           ; $69f6: $00
    cp h                                          ; $69f7: $bc
    bit 1, [hl]                                   ; $69f8: $cb $4e
    ld h, h                                       ; $69fa: $64
    ld [hl], d                                    ; $69fb: $72
    ld l, a                                       ; $69fc: $6f
    call z, Call_05c_7c00                         ; $69fd: $cc $00 $7c
    add hl, de                                    ; $6a00: $19
    jp Jump_05c_6f12                              ; $6a01: $c3 $12 $6f


    db $f4                                        ; $6a04: $f4
    inc e                                         ; $6a05: $1c
    db $dd                                        ; $6a06: $dd
    cp a                                          ; $6a07: $bf
    dec b                                         ; $6a08: $05
    nop                                           ; $6a09: $00
    inc e                                         ; $6a0a: $1c
    call z, Call_05c_50b6                         ; $6a0b: $cc $b6 $50
    ld c, $7f                                     ; $6a0e: $0e $7f
    call z, $0bd1                                 ; $6a10: $cc $d1 $0b
    nop                                           ; $6a13: $00
    sbc h                                         ; $6a14: $9c
    ld [hl], c                                    ; $6a15: $71
    jp nz, $eb7a                                  ; $6a16: $c2 $7a $eb

    push bc                                       ; $6a19: $c5
    rst $38                                       ; $6a1a: $ff
    sbc e                                         ; $6a1b: $9b
    db $10                                        ; $6a1c: $10
    or d                                          ; $6a1d: $b2
    dec b                                         ; $6a1e: $05
    inc a                                         ; $6a1f: $3c
    pop af                                        ; $6a20: $f1
    sbc l                                         ; $6a21: $9d
    ld h, $80                                     ; $6a22: $26 $80
    dec e                                         ; $6a24: $1d
    ld [hl], d                                    ; $6a25: $72
    rst $20                                       ; $6a26: $e7
    sbc c                                         ; $6a27: $99
    rst $30                                       ; $6a28: $f7
    rst $08                                       ; $6a29: $cf
    ld [hl-], a                                   ; $6a2a: $32
    nop                                           ; $6a2b: $00
    ld a, h                                       ; $6a2c: $7c
    pop bc                                        ; $6a2d: $c1
    ld a, [de]                                    ; $6a2e: $1a
    ld c, e                                       ; $6a2f: $4b
    ld e, $b0                                     ; $6a30: $1e $b0
    rst $08                                       ; $6a32: $cf
    jp $ee00                                      ; $6a33: $c3 $00 $ee


    ld h, b                                       ; $6a36: $60
    jp nz, $97f7                                  ; $6a37: $c2 $f7 $97

    cp h                                          ; $6a3a: $bc
    ld h, b                                       ; $6a3b: $60
    sbc e                                         ; $6a3c: $9b
    ld d, b                                       ; $6a3d: $50
    jp c, Jump_000_1e00                           ; $6a3e: $da $00 $1e

    and c                                         ; $6a41: $a1
    dec h                                         ; $6a42: $25
    db $10                                        ; $6a43: $10
    ld h, a                                       ; $6a44: $67
    dec bc                                        ; $6a45: $0b
    ld [hl+], a                                   ; $6a46: $22
    cpl                                           ; $6a47: $2f
    ld e, $92                                     ; $6a48: $1e $92
    nop                                           ; $6a4a: $00
    ld h, $30                                     ; $6a4b: $26 $30
    ld bc, $241e                                  ; $6a4d: $01 $1e $24
    inc e                                         ; $6a50: $1c
    add l                                         ; $6a51: $85
    add hl, bc                                    ; $6a52: $09
    ret                                           ; $6a53: $c9


    inc hl                                        ; $6a54: $23
    xor h                                         ; $6a55: $ac
    jr nc, jr_05c_6a58                            ; $6a56: $30 $00

jr_05c_6a58:
    xor $66                                       ; $6a58: $ee $66
    ld a, $db                                     ; $6a5a: $3e $db
    cpl                                           ; $6a5c: $2f
    ld a, c                                       ; $6a5d: $79
    add l                                         ; $6a5e: $85
    inc bc                                        ; $6a5f: $03
    ld [hl], d                                    ; $6a60: $72
    ld [bc], a                                    ; $6a61: $02
    nop                                           ; $6a62: $00
    xor $45                                       ; $6a63: $ee $45
    ld a, [hl]                                    ; $6a65: $7e
    or [hl]                                       ; $6a66: $b6
    db $e4                                        ; $6a67: $e4
    ld b, l                                       ; $6a68: $45
    cp d                                          ; $6a69: $ba
    dec e                                         ; $6a6a: $1d
    add hl, hl                                    ; $6a6b: $29
    or d                                          ; $6a6c: $b2
    ld [bc], a                                    ; $6a6d: $02
    xor $8d                                       ; $6a6e: $ee $8d
    ld a, [c]                                     ; $6a70: $f2
    cp $99                                        ; $6a71: $fe $99
    jr c, @+$14                                   ; $6a73: $38 $12

    ld a, [hl-]                                   ; $6a75: $3a
    pop de                                        ; $6a76: $d1
    add hl, hl                                    ; $6a77: $29
    ld [hl-], a                                   ; $6a78: $32
    ccf                                           ; $6a79: $3f
    nop                                           ; $6a7a: $00
    ld e, $07                                     ; $6a7b: $1e $07
    ld a, [$2078]                                 ; $6a7d: $fa $78 $20
    ld e, e                                       ; $6a80: $5b
    cpl                                           ; $6a81: $2f
    adc $3b                                       ; $6a82: $ce $3b
    ld a, [hl-]                                   ; $6a84: $3a
    ld c, l                                       ; $6a85: $4d
    jr c, jr_05c_6ad3                             ; $6a86: $38 $4b

    ld h, b                                       ; $6a88: $60
    ld [bc], a                                    ; $6a89: $02
    sbc [hl]                                      ; $6a8a: $9e
    ld [hl+], a                                   ; $6a8b: $22
    inc h                                         ; $6a8c: $24
    ret c                                         ; $6a8d: $d8

    ld h, $30                                     ; $6a8e: $26 $30
    push hl                                       ; $6a90: $e5
    ldh a, [$8c]                                  ; $6a91: $f0 $8c
    db $db                                        ; $6a93: $db
    ld l, a                                       ; $6a94: $6f
    inc l                                         ; $6a95: $2c
    nop                                           ; $6a96: $00
    sbc [hl]                                      ; $6a97: $9e
    ld [c], a                                     ; $6a98: $e2
    ld sp, hl                                     ; $6a99: $f9
    add d                                         ; $6a9a: $82
    adc b                                         ; $6a9b: $88
    scf                                           ; $6a9c: $37
    ld [de], a                                    ; $6a9d: $12
    ld c, d                                       ; $6a9e: $4a
    ld [$3c00], sp                                ; $6a9f: $08 $00 $3c
    pop bc                                        ; $6aa2: $c1
    ld a, h                                       ; $6aa3: $7c
    inc d                                         ; $6aa4: $14
    rst $28                                       ; $6aa5: $ef
    ld h, b                                       ; $6aa6: $60
    ldh a, [$03]                                  ; $6aa7: $f0 $03
    ld l, [hl]                                    ; $6aa9: $6e
    rla                                           ; $6aaa: $17
    add h                                         ; $6aab: $84
    and c                                         ; $6aac: $a1
    ret                                           ; $6aad: $c9


    ld [hl], e                                    ; $6aae: $73
    call c, $bfee                                 ; $6aaf: $dc $ee $bf
    cp a                                          ; $6ab2: $bf
    or c                                          ; $6ab3: $b1
    nop                                           ; $6ab4: $00
    sbc [hl]                                      ; $6ab5: $9e
    or c                                          ; $6ab6: $b1
    ld c, l                                       ; $6ab7: $4d
    ld b, b                                       ; $6ab8: $40
    ld e, $a6                                     ; $6ab9: $1e $a6
    ld [hl], a                                    ; $6abb: $77
    and h                                         ; $6abc: $a4
    ld e, c                                       ; $6abd: $59
    and $2f                                       ; $6abe: $e6 $2f
    rla                                           ; $6ac0: $17
    nop                                           ; $6ac1: $00
    ld e, $23                                     ; $6ac2: $1e $23
    add e                                         ; $6ac4: $83
    xor h                                         ; $6ac5: $ac
    jr c, jr_05c_6ae3                             ; $6ac6: $38 $1b

    ld hl, $6790                                  ; $6ac8: $21 $90 $67
    db $10                                        ; $6acb: $10
    ld a, c                                       ; $6acc: $79
    or c                                          ; $6acd: $b1
    sbc l                                         ; $6ace: $9d
    ld b, $33                                     ; $6acf: $06 $33
    nop                                           ; $6ad1: $00
    cp h                                          ; $6ad2: $bc

jr_05c_6ad3:
    bit 4, [hl]                                   ; $6ad3: $cb $66
    nop                                           ; $6ad5: $00
    ld a, h                                       ; $6ad6: $7c
    set 3, [hl]                                   ; $6ad7: $cb $de
    ei                                            ; $6ad9: $fb
    jr c, @-$17                                   ; $6ada: $38 $e7

    push hl                                       ; $6adc: $e5
    ldh a, [$8c]                                  ; $6add: $f0 $8c
    sbc d                                         ; $6adf: $9a
    pop de                                        ; $6ae0: $d1
    dec c                                         ; $6ae1: $0d
    nop                                           ; $6ae2: $00

jr_05c_6ae3:
    xor $04                                       ; $6ae3: $ee $04
    db $eb                                        ; $6ae5: $eb
    dec c                                         ; $6ae6: $0d
    cp c                                          ; $6ae7: $b9
    add e                                         ; $6ae8: $83
    db $dd                                        ; $6ae9: $dd
    nop                                           ; $6aea: $00
    db $fc                                        ; $6aeb: $fc
    jp hl                                         ; $6aec: $e9


    ld b, e                                       ; $6aed: $43
    jr nz, jr_05c_6b21                            ; $6aee: $20 $31

    ld c, h                                       ; $6af0: $4c
    db $fc                                        ; $6af1: $fc
    jp hl                                         ; $6af2: $e9


    ld h, b                                       ; $6af3: $60
    inc sp                                        ; $6af4: $33
    adc $01                                       ; $6af5: $ce $01
    db $fc                                        ; $6af7: $fc
    and e                                         ; $6af8: $a3
    ld a, [hl-]                                   ; $6af9: $3a
    xor $6f                                       ; $6afa: $ee $6f
    inc l                                         ; $6afc: $2c
    nop                                           ; $6afd: $00
    ld [bc], a                                    ; $6afe: $02
    cp h                                          ; $6aff: $bc
    sub h                                         ; $6b00: $94
    dec [hl]                                      ; $6b01: $35
    xor c                                         ; $6b02: $a9
    jp hl                                         ; $6b03: $e9


    and [hl]                                      ; $6b04: $a6
    jp nc, $d644                                  ; $6b05: $d2 $44 $d6

    ld e, e                                       ; $6b08: $5b
    ld c, d                                       ; $6b09: $4a
    inc sp                                        ; $6b0a: $33
    xor [hl]                                      ; $6b0b: $ae
    add hl, sp                                    ; $6b0c: $39
    add hl, hl                                    ; $6b0d: $29
    inc sp                                        ; $6b0e: $33
    nop                                           ; $6b0f: $00
    sub d                                         ; $6b10: $92
    or a                                          ; $6b11: $b7
    db $fc                                        ; $6b12: $fc
    and e                                         ; $6b13: $a3
    rst $20                                       ; $6b14: $e7
    ld l, d                                       ; $6b15: $6a
    adc [hl]                                      ; $6b16: $8e
    ld d, c                                       ; $6b17: $51
    jp z, $d37f                                   ; $6b18: $ca $7f $d3

    ld e, b                                       ; $6b1b: $58
    ld c, b                                       ; $6b1c: $48
    sub h                                         ; $6b1d: $94
    xor $60                                       ; $6b1e: $ee $60
    ld [hl], e                                    ; $6b20: $73

jr_05c_6b21:
    dec sp                                        ; $6b21: $3b
    or e                                          ; $6b22: $b3
    ld h, $f5                                     ; $6b23: $26 $f5
    rst $28                                       ; $6b25: $ef
    ld a, h                                       ; $6b26: $7c
    ld a, b                                       ; $6b27: $78
    ldh [$bd], a                                  ; $6b28: $e0 $bd
    ld d, c                                       ; $6b2a: $51
    jp z, $dcff                                   ; $6b2b: $ca $ff $dc

    ld l, e                                       ; $6b2e: $6b
    dec a                                         ; $6b2f: $3d
    and [hl]                                      ; $6b30: $a6
    add l                                         ; $6b31: $85
    reti                                          ; $6b32: $d9


    ld e, a                                       ; $6b33: $5f
    nop                                           ; $6b34: $00
    sub d                                         ; $6b35: $92
    or a                                          ; $6b36: $b7
    cp h                                          ; $6b37: $bc
    ld h, e                                       ; $6b38: $63
    sbc h                                         ; $6b39: $9c
    or c                                          ; $6b3a: $b1
    or [hl]                                       ; $6b3b: $b6
    and l                                         ; $6b3c: $a5
    add hl, de                                    ; $6b3d: $19
    ld [hl], $f7                                  ; $6b3e: $36 $f7
    ld [hl], a                                    ; $6b40: $77
    cp $da                                        ; $6b41: $fe $da
    ld e, d                                       ; $6b43: $5a
    cp a                                          ; $6b44: $bf
    cp $cc                                        ; $6b45: $fe $cc
    cp b                                          ; $6b47: $b8
    rst $10                                       ; $6b48: $d7
    ld a, [hl-]                                   ; $6b49: $3a
    sub $fa                                       ; $6b4a: $d6 $fa
    cpl                                           ; $6b4c: $2f
    nop                                           ; $6b4d: $00
    sub d                                         ; $6b4e: $92
    or a                                          ; $6b4f: $b7
    sbc [hl]                                      ; $6b50: $9e
    ld [de], a                                    ; $6b51: $12
    ld c, h                                       ; $6b52: $4c
    ld e, c                                       ; $6b53: $59
    rst $30                                       ; $6b54: $f7
    jp z, $39df                                   ; $6b55: $ca $df $39

    rst $00                                       ; $6b58: $c7
    call z, $950e                                 ; $6b59: $cc $0e $95
    ld a, [$ff37]                                 ; $6b5c: $fa $37 $ff
    cpl                                           ; $6b5f: $2f
    push af                                       ; $6b60: $f5
    jr jr_05c_6bca                                ; $6b61: $18 $67

    or a                                          ; $6b63: $b7
    ld [hl], h                                    ; $6b64: $74
    ld h, d                                       ; $6b65: $62
    ld a, l                                       ; $6b66: $7d
    inc c                                         ; $6b67: $0c
    or e                                          ; $6b68: $b3
    rst $38                                       ; $6b69: $ff
    ld d, d                                       ; $6b6a: $52
    rst $38                                       ; $6b6b: $ff
    adc $b7                                       ; $6b6c: $ce $b7
    xor h                                         ; $6b6e: $ac
    ld a, [hl-]                                   ; $6b6f: $3a
    cp e                                          ; $6b70: $bb

Jump_05c_6b71:
    ret                                           ; $6b71: $c9


    and a                                         ; $6b72: $a7
    call $fe69                                    ; $6b73: $cd $69 $fe
    sbc h                                         ; $6b76: $9c
    db $e3                                        ; $6b77: $e3
    cpl                                           ; $6b78: $2f
    nop                                           ; $6b79: $00
    sub d                                         ; $6b7a: $92
    or a                                          ; $6b7b: $b7
    cp h                                          ; $6b7c: $bc
    ld sp, $356d                                  ; $6b7d: $31 $6d $35
    rla                                           ; $6b80: $17
    ld [hl-], a                                   ; $6b81: $32
    adc h                                         ; $6b82: $8c
    dec c                                         ; $6b83: $0d
    ld c, h                                       ; $6b84: $4c
    or c                                          ; $6b85: $b1
    inc [hl]                                      ; $6b86: $34

jr_05c_6b87:
    add hl, hl                                    ; $6b87: $29
    db $eb                                        ; $6b88: $eb
    and $ea                                       ; $6b89: $e6 $ea
    ld h, a                                       ; $6b8b: $67

Jump_05c_6b8c:
    inc de                                        ; $6b8c: $13
    or a                                          ; $6b8d: $b7
    rst $00                                       ; $6b8e: $c7
    or h                                          ; $6b8f: $b4
    jr z, jr_05c_6b87                             ; $6b90: $28 $f5

    xor b                                         ; $6b92: $a8
    cp c                                          ; $6b93: $b9
    ld h, c                                       ; $6b94: $61
    or $5f                                        ; $6b95: $f6 $5f
    ld a, [c]                                     ; $6b97: $f2
    adc c                                         ; $6b98: $89
    jp z, Jump_05c_7948                           ; $6b99: $ca $48 $79

    ret c                                         ; $6b9c: $d8

    jp nc, $13ed                                  ; $6b9d: $d2 $ed $13

    db $db                                        ; $6ba0: $db
    xor l                                         ; $6ba1: $ad
    dec bc                                        ; $6ba2: $0b
    nop                                           ; $6ba3: $00
    sub d                                         ; $6ba4: $92
    or a                                          ; $6ba5: $b7
    ld e, $b6                                     ; $6ba6: $1e $b6
    ld b, l                                       ; $6ba8: $45
    ld c, d                                       ; $6ba9: $4a
    rst $30                                       ; $6baa: $f7
    dec e                                         ; $6bab: $1d
    push de                                       ; $6bac: $d5
    sub h                                         ; $6bad: $94
    ld d, e                                       ; $6bae: $53
    xor c                                         ; $6baf: $a9
    ld [hl], b                                    ; $6bb0: $70
    ld hl, $f35f                                  ; $6bb1: $21 $5f $f3
    cp e                                          ; $6bb4: $bb

jr_05c_6bb5:
    rst $30                                       ; $6bb5: $f7
    ld a, h                                       ; $6bb6: $7c
    ld l, c                                       ; $6bb7: $69
    add $b4                                       ; $6bb8: $c6 $b4
    add l                                         ; $6bba: $85
    jp hl                                         ; $6bbb: $e9


    ld [bc], a                                    ; $6bbc: $02
    sub d                                         ; $6bbd: $92
    or a                                          ; $6bbe: $b7
    cp h                                          ; $6bbf: $bc
    ld sp, $e56d                                  ; $6bc0: $31 $6d $e5
    xor a                                         ; $6bc3: $af
    rst $28                                       ; $6bc4: $ef
    rrca                                          ; $6bc5: $0f
    or [hl]                                       ; $6bc6: $b6
    ldh a, [$c0]                                  ; $6bc7: $f0 $c0
    ei                                            ; $6bc9: $fb

jr_05c_6bca:
    dec hl                                        ; $6bca: $2b
    add hl, hl                                    ; $6bcb: $29
    jr jr_05c_6bb5                                ; $6bcc: $18 $e7

    bit 7, a                                      ; $6bce: $cb $7f
    or $d5                                        ; $6bd0: $f6 $d5
    rst $38                                       ; $6bd2: $ff
    ld [$ffcf], a                                 ; $6bd3: $ea $cf $ff
    sbc h                                         ; $6bd6: $9c
    or l                                          ; $6bd7: $b5
    jr z, @+$27                                   ; $6bd8: $28 $25

    ld a, b                                       ; $6bda: $78
    ld b, [hl]                                    ; $6bdb: $46
    sbc c                                         ; $6bdc: $99
    ld a, l                                       ; $6bdd: $7d
    ld e, l                                       ; $6bde: $5d
    nop                                           ; $6bdf: $00
    sub d                                         ; $6be0: $92
    or a                                          ; $6be1: $b7
    ld e, $b0                                     ; $6be2: $1e $b0
    ld c, b                                       ; $6be4: $48
    ld [$5659], sp                                ; $6be5: $08 $59 $56
    cp d                                          ; $6be8: $ba
    ld a, a                                       ; $6be9: $7f
    add $de                                       ; $6bea: $c6 $de
    rst $30                                       ; $6bec: $f7
    sub a                                         ; $6bed: $97
    xor $5f                                       ; $6bee: $ee $5f
    ld d, $03                                     ; $6bf0: $16 $03
    ld [de], a                                    ; $6bf2: $12
    and l                                         ; $6bf3: $a5
    add hl, sp                                    ; $6bf4: $39
    add $19                                       ; $6bf5: $c6 $19
    ld l, e                                       ; $6bf7: $6b
    cpl                                           ; $6bf8: $2f
    db $f4                                        ; $6bf9: $f4
    db $fd                                        ; $6bfa: $fd
    ld [hl], l                                    ; $6bfb: $75
    ld h, [hl]                                    ; $6bfc: $66
    adc l                                         ; $6bfd: $8d
    ld l, $00                                     ; $6bfe: $2e $00
    sub d                                         ; $6c00: $92
    or a                                          ; $6c01: $b7
    ld e, $8f                                     ; $6c02: $1e $8f
    add hl, sp                                    ; $6c04: $39
    sub $3a                                       ; $6c05: $d6 $3a
    ld c, d                                       ; $6c07: $4a
    daa                                           ; $6c08: $27
    xor $3b                                       ; $6c09: $ee $3b
    ld a, [bc]                                    ; $6c0b: $0a
    ld e, $78                                     ; $6c0c: $1e $78
    ld l, a                                       ; $6c0e: $6f
    sub h                                         ; $6c0f: $94
    ld h, [hl]                                    ; $6c10: $66
    and h                                         ; $6c11: $a4
    db $db                                        ; $6c12: $db
    ld c, l                                       ; $6c13: $4d
    jr nc, jr_05c_6c73                            ; $6c14: $30 $5d

    nop                                           ; $6c16: $00
    sub d                                         ; $6c17: $92
    or a                                          ; $6c18: $b7
    ld c, $70                                     ; $6c19: $0e $70
    ei                                            ; $6c1b: $fb
    sub e                                         ; $6c1c: $93

Jump_05c_6c1d:
    add d                                         ; $6c1d: $82
    ld [hl], c                                    ; $6c1e: $71

Jump_05c_6c1f:
    cp [hl]                                       ; $6c1f: $be
    ld h, [hl]                                    ; $6c20: $66
    ld c, h                                       ; $6c21: $4c
    ld e, e                                       ; $6c22: $5b
    and l                                         ; $6c23: $a5
    ret z                                         ; $6c24: $c8

    xor $f5                                       ; $6c25: $ee $f5
    rst $00                                       ; $6c27: $c7
    ret                                           ; $6c28: $c9


    add e                                         ; $6c29: $83
    ld l, l                                       ; $6c2a: $6d
    ld e, l                                       ; $6c2b: $5d
    nop                                           ; $6c2c: $00
    sub d                                         ; $6c2d: $92
    or a                                          ; $6c2e: $b7
    cp h                                          ; $6c2f: $bc
    ld sp, $936d                                  ; $6c30: $31 $6d $93
    adc d                                         ; $6c33: $8a
    ld l, [hl]                                    ; $6c34: $6e
    sub d                                         ; $6c35: $92
    adc a                                         ; $6c36: $8f
    rst $20                                       ; $6c37: $e7
    ldh [$3d], a                                  ; $6c38: $e0 $3d
    jp nc, $e039                                  ; $6c3a: $d2 $39 $e0

    ld d, a                                       ; $6c3d: $57
    adc [hl]                                      ; $6c3e: $8e
    xor e                                         ; $6c3f: $ab
    ld c, c                                       ; $6c40: $49
    ld e, c                                       ; $6c41: $59
    scf                                           ; $6c42: $37
    sub c                                         ; $6c43: $91
    adc d                                         ; $6c44: $8a
    ld a, h                                       ; $6c45: $7c
    ccf                                           ; $6c46: $3f
    dec sp                                        ; $6c47: $3b
    ld e, h                                       ; $6c48: $5c
    dec bc                                        ; $6c49: $0b
    adc c                                         ; $6c4a: $89
    sub d                                         ; $6c4b: $92
    adc a                                         ; $6c4c: $8f
    ld l, e                                       ; $6c4d: $6b
    db $fd                                        ; $6c4e: $fd
    rst $30                                       ; $6c4f: $f7
    ld e, d                                       ; $6c50: $5a
    ld b, h                                       ; $6c51: $44
    ld e, l                                       ; $6c52: $5d
    nop                                           ; $6c53: $00
    sub d                                         ; $6c54: $92
    or a                                          ; $6c55: $b7
    db $fc                                        ; $6c56: $fc
    db $e3                                        ; $6c57: $e3
    xor h                                         ; $6c58: $ac
    and $18                                       ; $6c59: $e6 $18
    ld h, a                                       ; $6c5b: $67
    xor h                                         ; $6c5c: $ac
    db $fd                                        ; $6c5d: $fd
    or h                                          ; $6c5e: $b4
    ld d, l                                       ; $6c5f: $55
    rst $00                                       ; $6c60: $c7
    ld h, b                                       ; $6c61: $60

jr_05c_6c62:
    ld l, a                                       ; $6c62: $6f
    db $fd                                        ; $6c63: $fd
    rst $30                                       ; $6c64: $f7
    sbc a                                         ; $6c65: $9f
    di                                            ; $6c66: $f3
    ld [c], a                                     ; $6c67: $e2
    ld h, l                                       ; $6c68: $65
    ld a, b                                       ; $6c69: $78
    rlca                                          ; $6c6a: $07

jr_05c_6c6b:
    db $db                                        ; $6c6b: $db
    jp nc, Jump_05c_6c1d                          ; $6c6c: $d2 $1d $6c

    daa                                           ; $6c6f: $27
    ld de, $23bb                                  ; $6c70: $11 $bb $23

jr_05c_6c73:
    ld [$9202], a                                 ; $6c73: $ea $02 $92
    or a                                          ; $6c76: $b7
    ld c, $83                                     ; $6c77: $0e $83
    dec c                                         ; $6c79: $0d
    db $eb                                        ; $6c7a: $eb
    push de                                       ; $6c7b: $d5
    call nz, Call_05c_7119                        ; $6c7c: $c4 $19 $71
    adc $5a                                       ; $6c7f: $ce $5a
    ld b, a                                       ; $6c81: $47
    jp hl                                         ; $6c82: $e9


    ldh [$b6], a                                  ; $6c83: $e0 $b6
    dec c                                         ; $6c85: $0d
    jr c, jr_05c_6cd2                             ; $6c86: $38 $4a

    inc de                                        ; $6c88: $13
    rst $28                                       ; $6c89: $ef
    db $ed                                        ; $6c8a: $ed
    ld hl, sp-$46                                 ; $6c8b: $f8 $ba
    nop                                           ; $6c8d: $00
    sub d                                         ; $6c8e: $92
    or a                                          ; $6c8f: $b7
    ld e, $9e                                     ; $6c90: $1e $9e
    ld c, a                                       ; $6c92: $4f
    ld hl, $fba3                                  ; $6c93: $21 $a3 $fb
    rst $28                                       ; $6c96: $ef
    or l                                          ; $6c97: $b5
    add e                                         ; $6c98: $83
    db $db                                        ; $6c99: $db
    ld [hl], $e0                                  ; $6c9a: $36 $e0
    jr z, jr_05c_6c6b                             ; $6c9c: $28 $cd

    ld c, b                                       ; $6c9e: $48
    or a                                          ; $6c9f: $b7
    sbc e                                         ; $6ca0: $9b
    ld h, b                                       ; $6ca1: $60
    cp d                                          ; $6ca2: $ba
    nop                                           ; $6ca3: $00
    sub d                                         ; $6ca4: $92
    or a                                          ; $6ca5: $b7
    ld c, [hl]                                    ; $6ca6: $4e
    ld a, b                                       ; $6ca7: $78
    adc h                                         ; $6ca8: $8c
    sbc e                                         ; $6ca9: $9b
    ld b, d                                       ; $6caa: $42
    ld d, [hl]                                    ; $6cab: $56
    ld a, b                                       ; $6cac: $78
    cp a                                          ; $6cad: $bf
    ldh [$31], a                                  ; $6cae: $e0 $31
    xor h                                         ; $6cb0: $ac
    pop de                                        ; $6cb1: $d1
    sub $09                                       ; $6cb2: $d6 $09
    add hl, sp                                    ; $6cb4: $39
    inc sp                                        ; $6cb5: $33
    sub a                                         ; $6cb6: $97
    pop bc                                        ; $6cb7: $c1
    ld e, a                                       ; $6cb8: $5f
    sbc d                                         ; $6cb9: $9a
    bit 4, b                                      ; $6cba: $cb $60
    call c, $87ee                                 ; $6cbc: $dc $ee $87
    rst $38                                       ; $6cbf: $ff
    ld [bc], a                                    ; $6cc0: $02
    sub d                                         ; $6cc1: $92
    or a                                          ; $6cc2: $b7
    ld c, $83                                     ; $6cc3: $0e $83
    dec c                                         ; $6cc5: $0d
    db $eb                                        ; $6cc6: $eb
    sub l                                         ; $6cc7: $95
    ld de, $72f5                                  ; $6cc8: $11 $f5 $72
    sub l                                         ; $6ccb: $95
    ld a, [bc]                                    ; $6ccc: $0a
    or a                                          ; $6ccd: $b7
    rst $18                                       ; $6cce: $df
    sbc c                                         ; $6ccf: $99
    sbc a                                         ; $6cd0: $9f
    inc de                                        ; $6cd1: $13

jr_05c_6cd2:
    pop hl                                        ; $6cd2: $e1
    jr z, jr_05c_6c62                             ; $6cd3: $28 $8d

    ld bc, $7389                                  ; $6cd5: $01 $89 $73
    ld [hl+], a                                   ; $6cd8: $22
    jp z, $8999                                   ; $6cd9: $ca $99 $89

    db $e3                                        ; $6cdc: $e3
    adc h                                         ; $6cdd: $8c
    xor $bf                                       ; $6cde: $ee $bf
    rst $10                                       ; $6ce0: $d7
    ld h, d                                       ; $6ce1: $62
    jp c, $005e                                   ; $6ce2: $da $5e $00

    sub d                                         ; $6ce5: $92
    or a                                          ; $6ce6: $b7
    cp h                                          ; $6ce7: $bc
    ld h, e                                       ; $6ce8: $63
    sbc h                                         ; $6ce9: $9c
    or c                                          ; $6cea: $b1
    or $82                                        ; $6ceb: $f6 $82
    xor c                                         ; $6ced: $a9
    ld a, e                                       ; $6cee: $7b
    rrca                                          ; $6cef: $0f
    xor l                                         ; $6cf0: $ad
    ld b, l                                       ; $6cf1: $45
    push af                                       ; $6cf2: $f5
    ei                                            ; $6cf3: $fb
    cp $c3                                        ; $6cf4: $fe $c3
    ld a, a                                       ; $6cf6: $7f
    adc c                                         ; $6cf7: $89
    rst $38                                       ; $6cf8: $ff
    ld a, l                                       ; $6cf9: $7d
    rra                                           ; $6cfa: $1f
    ld d, a                                       ; $6cfb: $57
    ld e, [hl]                                    ; $6cfc: $5e
    dec e                                         ; $6cfd: $1d
    ld [hl], d                                    ; $6cfe: $72

Jump_05c_6cff:
    add $9d                                       ; $6cff: $c6 $9d
    ld h, a                                       ; $6d01: $67
    push de                                       ; $6d02: $d5
    ld e, b                                       ; $6d03: $58
    ld e, e                                       ; $6d04: $5b
    ld [c], a                                     ; $6d05: $e2
    adc c                                         ; $6d06: $89
    ld c, d                                       ; $6d07: $4a
    ld l, b                                       ; $6d08: $68
    xor l                                         ; $6d09: $ad
    push hl                                       ; $6d0a: $e5
    inc c                                         ; $6d0b: $0c
    ld c, h                                       ; $6d0c: $4c
    db $dd                                        ; $6d0d: $dd
    ld a, e                                       ; $6d0e: $7b
    ld l, b                                       ; $6d0f: $68
    dec l                                         ; $6d10: $2d
    ld [$9202], a                                 ; $6d11: $ea $02 $92
    or a                                          ; $6d14: $b7
    ret nc                                        ; $6d15: $d0

    ld h, l                                       ; $6d16: $65
    ld a, e                                       ; $6d17: $7b
    rst $18                                       ; $6d18: $df
    or h                                          ; $6d19: $b4
    dec d                                         ; $6d1a: $15
    sub l                                         ; $6d1b: $95
    inc d                                         ; $6d1c: $14
    adc h                                         ; $6d1d: $8c
    di                                            ; $6d1e: $f3
    ld [hl], l                                    ; $6d1f: $75
    and d                                         ; $6d20: $a2
    ld l, h                                       ; $6d21: $6c
    push hl                                       ; $6d22: $e5
    halt                                          ; $6d23: $76
    sbc a                                         ; $6d24: $9f
    xor a                                         ; $6d25: $af
    sbc $52                                       ; $6d26: $de $52
    halt                                          ; $6d28: $76
    ld d, [hl]                                    ; $6d29: $56
    ld h, a                                       ; $6d2a: $67
    inc c                                         ; $6d2b: $0c
    ret z                                         ; $6d2c: $c8

    sbc a                                         ; $6d2d: $9f
    di                                            ; $6d2e: $f3
    rla                                           ; $6d2f: $17
    nop                                           ; $6d30: $00
    sub d                                         ; $6d31: $92
    or a                                          ; $6d32: $b7
    cp h                                          ; $6d33: $bc
    cp e                                          ; $6d34: $bb
    push af                                       ; $6d35: $f5
    rst $20                                       ; $6d36: $e7
    or a                                          ; $6d37: $b7
    and d                                         ; $6d38: $a2
    sub h                                         ; $6d39: $94
    rst $00                                       ; $6d3a: $c7
    ld c, c                                       ; $6d3b: $49
    ld sp, $1829                                  ; $6d3c: $31 $29 $18
    rst $20                                       ; $6d3f: $e7
    ld l, e                                       ; $6d40: $6b
    add $b4                                       ; $6d41: $c6 $b4
    ld d, l                                       ; $6d43: $55
    sub h                                         ; $6d44: $94
    db $ed                                        ; $6d45: $ed
    ld a, l                                       ; $6d46: $7d
    db $d3                                        ; $6d47: $d3
    ld e, d                                       ; $6d48: $5a
    inc d                                         ; $6d49: $14
    add hl, bc                                    ; $6d4a: $09
    cp $91                                        ; $6d4b: $fe $91
    ld b, [hl]                                    ; $6d4d: $46
    rst $30                                       ; $6d4e: $f7
    add b                                         ; $6d4f: $80
    and e                                         ; $6d50: $a3
    db $e4                                        ; $6d51: $e4
    rst $38                                       ; $6d52: $ff
    add hl, sp                                    ; $6d53: $39
    ld l, b                                       ; $6d54: $68
    ld a, a                                       ; $6d55: $7f
    cp $fe                                        ; $6d56: $fe $fe
    cp d                                          ; $6d58: $ba
    ld b, a                                       ; $6d59: $47
    ld l, l                                       ; $6d5a: $6d
    sub h                                         ; $6d5b: $94
    ld h, $65                                     ; $6d5c: $26 $65
    db $dd                                        ; $6d5e: $dd
    ld e, h                                       ; $6d5f: $5c
    inc sp                                        ; $6d60: $33
    adc [hl]                                      ; $6d61: $8e
    adc a                                         ; $6d62: $8f
    ld l, e                                       ; $6d63: $6b
    ld h, e                                       ; $6d64: $63
    ld b, b                                       ; $6d65: $40
    and d                                         ; $6d66: $a2
    ld l, $00                                     ; $6d67: $2e $00
    sub d                                         ; $6d69: $92
    or a                                          ; $6d6a: $b7
    ld c, $83                                     ; $6d6b: $0e $83
    dec c                                         ; $6d6d: $0d
    db $eb                                        ; $6d6e: $eb
    sub l                                         ; $6d6f: $95
    ld de, $72f5                                  ; $6d70: $11 $f5 $72
    sub l                                         ; $6d73: $95
    ld a, $85                                     ; $6d74: $3e $85
    ld l, h                                       ; $6d76: $6c
    dec h                                         ; $6d77: $25
    add h                                         ; $6d78: $84
    ld h, [hl]                                    ; $6d79: $66
    cpl                                           ; $6d7a: $2f
    inc a                                         ; $6d7b: $3c
    sub c                                         ; $6d7c: $91
    ld l, a                                       ; $6d7d: $6f

Jump_05c_6d7e:
    sub h                                         ; $6d7e: $94
    ld a, [bc]                                    ; $6d7f: $0a
    or a                                          ; $6d80: $b7
    scf                                           ; $6d81: $37
    ld c, d                                       ; $6d82: $4a
    ccf                                           ; $6d83: $3f
    cp d                                          ; $6d84: $ba
    rst $38                                       ; $6d85: $ff
    ld e, [hl]                                    ; $6d86: $5e
    adc e                                         ; $6d87: $8b
    ld l, c                                       ; $6d88: $69

Jump_05c_6d89:
    ld a, e                                       ; $6d89: $7b
    ld bc, $b792                                  ; $6d8a: $01 $92 $b7
    inc a                                         ; $6d8d: $3c
    inc bc                                        ; $6d8e: $03
    dec bc                                        ; $6d8f: $0b
    ld c, e                                       ; $6d90: $4b
    ld e, b                                       ; $6d91: $58
    dec d                                         ; $6d92: $15
    and l                                         ; $6d93: $a5
    ld e, $08                                     ; $6d94: $1e $08
    cp a                                          ; $6d96: $bf
    ldh [$97], a                                  ; $6d97: $e0 $97
    rst $38                                       ; $6d99: $ff
    jp hl                                         ; $6d9a: $e9


    rst $10                                       ; $6d9b: $d7
    sbc [hl]                                      ; $6d9c: $9e
    ei                                            ; $6d9d: $fb
    db $eb                                        ; $6d9e: $eb
    ld l, h                                       ; $6d9f: $6c
    push af                                       ; $6da0: $f5
    add b                                         ; $6da1: $80
    and e                                         ; $6da2: $a3
    inc [hl]                                      ; $6da3: $34
    rst $00                                       ; $6da4: $c7
    jr c, jr_05c_6e0a                             ; $6da5: $38 $63

    db $ed                                        ; $6da7: $ed
    dec [hl]                                      ; $6da8: $35
    rst $18                                       ; $6da9: $df
    ld a, [c]                                     ; $6daa: $f2
    rst $28                                       ; $6dab: $ef
    ld a, [hl]                                    ; $6dac: $7e
    ld hl, sp+$2f                                 ; $6dad: $f8 $2f
    nop                                           ; $6daf: $00
    sub d                                         ; $6db0: $92
    or a                                          ; $6db1: $b7
    cp h                                          ; $6db2: $bc
    and e                                         ; $6db3: $a3
    or [hl]                                       ; $6db4: $b6
    ld [de], a                                    ; $6db5: $12
    ld a, d                                       ; $6db6: $7a
    sub e                                         ; $6db7: $93
    db $db                                        ; $6db8: $db
    xor h                                         ; $6db9: $ac
    db $d3                                        ; $6dba: $d3
    pop bc                                        ; $6dbb: $c1
    or [hl]                                       ; $6dbc: $b6
    ld h, h                                       ; $6dbd: $64
    ld l, e                                       ; $6dbe: $6b
    inc de                                        ; $6dbf: $13
    db $fd                                        ; $6dc0: $fd
    add c                                         ; $6dc1: $81
    ld h, a                                       ; $6dc2: $67
    cpl                                           ; $6dc3: $2f
    add hl, sp                                    ; $6dc4: $39
    call c, $a83b                                 ; $6dc5: $dc $3b $a8
    sub h                                         ; $6dc8: $94
    rst $00                                       ; $6dc9: $c7
    ld c, c                                       ; $6dca: $49
    or c                                          ; $6dcb: $b1
    sbc a                                         ; $6dcc: $9f
    add hl, bc                                    ; $6dcd: $09
    ld a, [hl]                                    ; $6dce: $7e
    pop af                                        ; $6dcf: $f1
    dec b                                         ; $6dd0: $05
    dec sp                                        ; $6dd1: $3b
    ld e, e                                       ; $6dd2: $5b
    ld e, e                                       ; $6dd3: $5b
    jp z, $c537                                   ; $6dd4: $ca $37 $c5

    ld [hl], e                                    ; $6dd7: $73
    or [hl]                                       ; $6dd8: $b6
    and d                                         ; $6dd9: $a2
    ld l, $00                                     ; $6dda: $2e $00

Call_05c_6ddc:
    sub d                                         ; $6ddc: $92
    or a                                          ; $6ddd: $b7
    ld e, $53                                     ; $6dde: $1e $53
    ld a, [de]                                    ; $6de0: $1a
    dec e                                         ; $6de1: $1d
    db $dd                                        ; $6de2: $dd
    cp e                                          ; $6de3: $bb
    dec h                                         ; $6de4: $25
    or a                                          ; $6de5: $b7
    inc de                                        ; $6de6: $13
    sbc l                                         ; $6de7: $9d
    rst $28                                       ; $6de8: $ef
    db $fd                                        ; $6de9: $fd
    rst $10                                       ; $6dea: $d7
    ld l, [hl]                                    ; $6deb: $6e
    dec h                                         ; $6dec: $25
    dec [hl]                                      ; $6ded: $35
    pop de                                        ; $6dee: $d1
    and $cb                                       ; $6def: $e6 $cb
    rst $18                                       ; $6df1: $df
    ld e, [hl]                                    ; $6df2: $5e
    ld e, c                                       ; $6df3: $59
    add d                                         ; $6df4: $82
    ld e, e                                       ; $6df5: $5b
    db $d3                                        ; $6df6: $d3
    ld [bc], a                                    ; $6df7: $02
    ld h, $f5                                     ; $6df8: $26 $f5
    rst $08                                       ; $6dfa: $cf

Call_05c_6dfb:
    rst $30                                       ; $6dfb: $f7
    scf                                           ; $6dfc: $37
    db $fd                                        ; $6dfd: $fd
    ld [hl], e                                    ; $6dfe: $73
    cp $eb                                        ; $6dff: $fe $eb
    ld [bc], a                                    ; $6e01: $02
    sub d                                         ; $6e02: $92
    or a                                          ; $6e03: $b7
    cp h                                          ; $6e04: $bc
    ld h, e                                       ; $6e05: $63
    sbc h                                         ; $6e06: $9c
    or c                                          ; $6e07: $b1
    or $ea                                        ; $6e08: $f6 $ea

jr_05c_6e0a:
    inc l                                         ; $6e0a: $2c
    add l                                         ; $6e0b: $85
    ret                                           ; $6e0c: $c9


    sbc d                                         ; $6e0d: $9a
    ld h, h                                       ; $6e0e: $64
    ld h, e                                       ; $6e0f: $63
    ld [hl], h                                    ; $6e10: $74
    rrca                                          ; $6e11: $0f
    ld hl, sp+$05                                 ; $6e12: $f8 $05
    cp a                                          ; $6e14: $bf
    ld a, [c]                                     ; $6e15: $f2
    db $fd                                        ; $6e16: $fd
    ld l, [hl]                                    ; $6e17: $6e
    cp h                                          ; $6e18: $bc
    scf                                           ; $6e19: $37
    ld c, d                                       ; $6e1a: $4a
    sbc b                                         ; $6e1b: $98
    xor $1c                                       ; $6e1c: $ee $1c
    ld h, a                                       ; $6e1e: $67
    ld l, $8c                                     ; $6e1f: $2e $8c
    dec bc                                        ; $6e21: $0b
    adc c                                         ; $6e22: $89
    jp nc, $865c                                  ; $6e23: $d2 $5c $86

    rrca                                          ; $6e26: $0f
    rst $38                                       ; $6e27: $ff
    dec b                                         ; $6e28: $05
    nop                                           ; $6e29: $00
    cp h                                          ; $6e2a: $bc
    bit 4, b                                      ; $6e2b: $cb $60
    call c, $95ee                                 ; $6e2d: $dc $ee $95
    inc de                                        ; $6e30: $13
    cp h                                          ; $6e31: $bc
    pop bc                                        ; $6e32: $c1
    ld a, [de]                                    ; $6e33: $1a
    rst $28                                       ; $6e34: $ef
    ld sp, $5f6d                                  ; $6e35: $31 $6d $5f
    sub e                                         ; $6e38: $93
    sbc b                                         ; $6e39: $98
    ld c, a                                       ; $6e3a: $4f
    ld h, [hl]                                    ; $6e3b: $66
    dec de                                        ; $6e3c: $1b
    dec d                                         ; $6e3d: $15
    and l                                         ; $6e3e: $a5
    ccf                                           ; $6e3f: $3f
    db $fd                                        ; $6e40: $fd
    ld c, [hl]                                    ; $6e41: $4e
    inc h                                         ; $6e42: $24
    ld [hl], l                                    ; $6e43: $75
    sbc $3a                                       ; $6e44: $de $3a
    ld l, d                                       ; $6e46: $6a
    ld l, $83                                     ; $6e47: $2e $83
    cp a                                          ; $6e49: $bf
    sub d                                         ; $6e4a: $92
    add d                                         ; $6e4b: $82
    ld [hl], c                                    ; $6e4c: $71
    cp [hl]                                       ; $6e4d: $be
    ld a, [hl]                                    ; $6e4e: $7e
    db $d3                                        ; $6e4f: $d3
    jr @-$21                                      ; $6e50: $18 $dd

    dec hl                                        ; $6e52: $2b
    sbc h                                         ; $6e53: $9c
    ld d, $d5                                     ; $6e54: $16 $d5
    ld [hl], c                                    ; $6e56: $71
    add $0b                                       ; $6e57: $c6 $0b
    ld a, [hl]                                    ; $6e59: $7e
    call Call_05c_738d                            ; $6e5a: $cd $8d $73
    and d                                         ; $6e5d: $a2
    ld a, e                                       ; $6e5e: $7b
    or a                                          ; $6e5f: $b7
    ld [hl], h                                    ; $6e60: $74
    ld h, a                                       ; $6e61: $67
    ld e, h                                       ; $6e62: $5c
    ld l, c                                       ; $6e63: $69
    call c, $d6f7                                 ; $6e64: $dc $f7 $d6
    dec b                                         ; $6e67: $05
    nop                                           ; $6e68: $00
    sub d                                         ; $6e69: $92
    or a                                          ; $6e6a: $b7
    ret nc                                        ; $6e6b: $d0

    sub l                                         ; $6e6c: $95
    ret nc                                        ; $6e6d: $d0

    ld sp, hl                                     ; $6e6e: $f9
    xor d                                         ; $6e6f: $aa
    dec l                                         ; $6e70: $2d
    push hl                                       ; $6e71: $e5
    ld [hl], c                                    ; $6e72: $71
    ld d, d                                       ; $6e73: $52
    add h                                         ; $6e74: $84
    and e                                         ; $6e75: $a3
    inc [hl]                                      ; $6e76: $34

jr_05c_6e77:
    ld a, a                                       ; $6e77: $7f
    jp c, $ff56                                   ; $6e78: $da $56 $ff

    ld e, d                                       ; $6e7b: $5a
    rst $00                                       ; $6e7c: $c7
    add hl, de                                    ; $6e7d: $19
    dec a                                         ; $6e7e: $3d
    ld e, b                                       ; $6e7f: $58
    db $fd                                        ; $6e80: $fd
    sbc b                                         ; $6e81: $98
    ld d, $a5                                     ; $6e82: $16 $a5
    inc e                                         ; $6e84: $1c
    or a                                          ; $6e85: $b7
    ei                                            ; $6e86: $fb
    pop hl                                        ; $6e87: $e1
    ld d, a                                       ; $6e88: $57
    ld a, $b0                                     ; $6e89: $3e $b0
    ld [$bce5], a                                 ; $6e8b: $ea $e5 $bc
    ld c, e                                       ; $6e8e: $4b
    ld l, $3a                                     ; $6e8f: $2e $3a
    ld [hl], a                                    ; $6e91: $77
    ld bc, $b792                                  ; $6e92: $01 $92 $b7
    ld c, $d9                                     ; $6e95: $0e $d9
    rst $18                                       ; $6e97: $df
    or c                                          ; $6e98: $b1
    daa                                           ; $6e99: $27
    ld a, [c]                                     ; $6e9a: $f2
    ld d, a                                       ; $6e9b: $57
    ld e, $27                                     ; $6e9c: $1e $27
    push bc                                       ; $6e9e: $c5
    ld a, h                                       ; $6e9f: $7c
    scf                                           ; $6ea0: $37
    add l                                         ; $6ea1: $85
    ld h, h                                       ; $6ea2: $64
    db $dd                                        ; $6ea3: $dd
    inc b                                         ; $6ea4: $04
    ld d, e                                       ; $6ea5: $53
    ld d, d                                       ; $6ea6: $52
    jr nc, jr_05c_6e77                            ; $6ea7: $30 $ce

    rst $10                                       ; $6ea9: $d7
    db $fc                                        ; $6eaa: $fc
    ld b, [hl]                                    ; $6eab: $46
    ld e, e                                       ; $6eac: $5b
    ld e, c                                       ; $6ead: $59
    sbc h                                         ; $6eae: $9c
    db $ed                                        ; $6eaf: $ed
    and [hl]                                      ; $6eb0: $a6
    sbc e                                         ; $6eb1: $9b
    cp d                                          ; $6eb2: $ba
    ld c, c                                       ; $6eb3: $49
    inc sp                                        ; $6eb4: $33
    ld l, h                                       ; $6eb5: $6c
    ld b, [hl]                                    ; $6eb6: $46
    ret                                           ; $6eb7: $c9


    ld a, [hl-]                                   ; $6eb8: $3a
    ld a, h                                       ; $6eb9: $7c
    rst $38                                       ; $6eba: $ff
    add a                                         ; $6ebb: $87
    push de                                       ; $6ebc: $d5
    cp b                                          ; $6ebd: $b8
    add e                                         ; $6ebe: $83
    ld h, c                                       ; $6ebf: $61
    ld e, l                                       ; $6ec0: $5d
    nop                                           ; $6ec1: $00
    sub d                                         ; $6ec2: $92
    or a                                          ; $6ec3: $b7
    ld a, h                                       ; $6ec4: $7c
    rst $38                                       ; $6ec5: $ff
    jp hl                                         ; $6ec6: $e9


    ld e, d                                       ; $6ec7: $5a
    ld b, a                                       ; $6ec8: $47
    ret                                           ; $6ec9: $c9


    sbc [hl]                                      ; $6eca: $9e
    pop bc                                        ; $6ecb: $c1
    ld a, a                                       ; $6ecc: $7f
    rrca                                          ; $6ecd: $0f
    sub [hl]                                      ; $6ece: $96
    cp $c3                                        ; $6ecf: $fe $c3
    ld a, a                                       ; $6ed1: $7f
    ld bc, $b792                                  ; $6ed2: $01 $92 $b7
    ret nc                                        ; $6ed5: $d0

    dec hl                                        ; $6ed6: $2b
    ei                                            ; $6ed7: $fb
    xor a                                         ; $6ed8: $af
    pop de                                        ; $6ed9: $d1
    or d                                          ; $6eda: $b2
    add c                                         ; $6edb: $81
    sub $a3                                       ; $6edc: $d6 $a3
    db $e3                                        ; $6ede: $e3
    db $f4                                        ; $6edf: $f4
    ld a, b                                       ; $6ee0: $78
    push af                                       ; $6ee1: $f5
    rst $28                                       ; $6ee2: $ef
    db $fc                                        ; $6ee3: $fc
    ld a, e                                       ; $6ee4: $7b
    ld l, e                                       ; $6ee5: $6b
    xor l                                         ; $6ee6: $ad
    add e                                         ; $6ee7: $83
    dec l                                         ; $6ee8: $2d
    ld d, a                                       ; $6ee9: $57
    sub e                                         ; $6eea: $93
    ld a, d                                       ; $6eeb: $7a
    and h                                         ; $6eec: $a4
    ld hl, sp-$09                                 ; $6eed: $f8 $f7
    ld a, a                                       ; $6eef: $7f
    ld l, c                                       ; $6ef0: $69
    cp $ce                                        ; $6ef1: $fe $ce
    cp c                                          ; $6ef3: $b9
    xor a                                         ; $6ef4: $af
    add hl, de                                    ; $6ef5: $19
    dec bc                                        ; $6ef6: $0b
    adc a                                         ; $6ef7: $8f
    ld sp, hl                                     ; $6ef8: $f9
    ld l, e                                       ; $6ef9: $6b
    ei                                            ; $6efa: $fb
    ld [hl], d                                    ; $6efb: $72

Jump_05c_6efc:
    ld h, d                                       ; $6efc: $62
    db $d3                                        ; $6efd: $d3
    ld a, e                                       ; $6efe: $7b
    ld l, l                                       ; $6eff: $6d
    adc [hl]                                      ; $6f00: $8e
    xor d                                         ; $6f01: $aa
    cpl                                           ; $6f02: $2f
    push de                                       ; $6f03: $d5
    sbc $6b                                       ; $6f04: $de $6b
    ld b, [hl]                                    ; $6f06: $46
    ld c, [hl]                                    ; $6f07: $4e
    ld e, h                                       ; $6f08: $5c
    nop                                           ; $6f09: $00
    ret nc                                        ; $6f0a: $d0

    dec hl                                        ; $6f0b: $2b
    rra                                           ; $6f0c: $1f
    rst $10                                       ; $6f0d: $d7
    ld a, d                                       ; $6f0e: $7a
    call nc, Call_05c_4d68                        ; $6f0f: $d4 $68 $4d

Jump_05c_6f12:
    or h                                          ; $6f12: $b4
    ld sp, hl                                     ; $6f13: $f9
    ld e, a                                       ; $6f14: $5f
    ld [$683f], a                                 ; $6f15: $ea $3f $68
    db $fd                                        ; $6f18: $fd

Call_05c_6f19:
    ld e, a                                       ; $6f19: $5f
    ld c, c                                       ; $6f1a: $49
    ld b, l                                       ; $6f1b: $45
    ld d, l                                       ; $6f1c: $55
    sub h                                         ; $6f1d: $94
    and $d8                                       ; $6f1e: $e6 $d8
    jp nc, Jump_05c_6efc                          ; $6f20: $d2 $fc $6e

    inc d                                         ; $6f23: $14
    jp $d3fb                                      ; $6f24: $c3 $fb $d3


    ld e, [hl]                                    ; $6f27: $5e
    reti                                          ; $6f28: $d9


    ld a, [de]                                    ; $6f29: $1a
    ld d, c                                       ; $6f2a: $51
    add hl, hl                                    ; $6f2b: $29
    ld a, h                                       ; $6f2c: $7c
    jp nz, $b5aa                                  ; $6f2d: $c2 $aa $b5

    ld e, $15                                     ; $6f30: $1e $15
    ld d, c                                       ; $6f32: $51
    ld a, [hl-]                                   ; $6f33: $3a
    cp b                                          ; $6f34: $b8
    ld l, l                                       ; $6f35: $6d
    and e                                         ; $6f36: $a3
    ld h, h                                       ; $6f37: $64
    ld sp, $8fd8                                  ; $6f38: $31 $d8 $8f
    ld l, c                                       ; $6f3b: $69
    ld d, c                                       ; $6f3c: $51
    ld a, a                                       ; $6f3d: $7f
    ld bc, $b792                                  ; $6f3e: $01 $92 $b7
    ld c, $b7                                     ; $6f41: $0e $b7
    ld d, a                                       ; $6f43: $57
    inc c                                         ; $6f44: $0c
    di                                            ; $6f45: $f3
    push bc                                       ; $6f46: $c5
    ld [hl], e                                    ; $6f47: $73
    ld e, [hl]                                    ; $6f48: $5e
    ld a, $9e                                     ; $6f49: $3e $9e
    xor $bf                                       ; $6f4b: $ee $bf
    rst $10                                       ; $6f4d: $d7
    jp nz, Jump_05c_55fa                          ; $6f4e: $c2 $fa $55

    cp e                                          ; $6f51: $bb
    dec h                                         ; $6f52: $25
    rst $38                                       ; $6f53: $ff
    rrca                                          ; $6f54: $0f
    adc h                                         ; $6f55: $8c
    sub l                                         ; $6f56: $95
    ld d, h                                       ; $6f57: $54
    ld [hl], h                                    ; $6f58: $74
    sub e                                         ; $6f59: $93
    ld h, b                                       ; $6f5a: $60
    ld h, d                                       ; $6f5b: $62
    ld [hl], b                                    ; $6f5c: $70
    ld e, b                                       ; $6f5d: $58
    xor a                                         ; $6f5e: $af
    or [hl]                                       ; $6f5f: $b6
    dec l                                         ; $6f60: $2d
    jp z, $0c48                                   ; $6f61: $ca $48 $0c

    di                                            ; $6f64: $f3
    push bc                                       ; $6f65: $c5
    ld [hl], e                                    ; $6f66: $73
    ld b, d                                       ; $6f67: $42
    ld l, $b9                                     ; $6f68: $2e $b9
    xor d                                         ; $6f6a: $aa
    add hl, de                                    ; $6f6b: $19
    xor h                                         ; $6f6c: $ac
    rst $38                                       ; $6f6d: $ff
    cpl                                           ; $6f6e: $2f
    nop                                           ; $6f6f: $00
    sub d                                         ; $6f70: $92
    or a                                          ; $6f71: $b7
    ld c, $e3                                     ; $6f72: $0e $e3
    cp h                                          ; $6f74: $bc
    push af                                       ; $6f75: $f5
    ld [$398c], a                                 ; $6f76: $ea $8c $39
    sub $f6                                       ; $6f79: $d6 $f6
    dec b                                         ; $6f7b: $05
    sub e                                         ; $6f7c: $93
    ld [hl], l                                    ; $6f7d: $75
    ret nz                                        ; $6f7e: $c0

    sub h                                         ; $6f7f: $94
    call nc, $a51c                                ; $6f80: $d4 $1c $a5
    add e                                         ; $6f83: $83
    jp hl                                         ; $6f84: $e9


    ld c, [hl]                                    ; $6f85: $4e
    ld [hl+], a                                   ; $6f86: $22
    halt                                          ; $6f87: $76
    add a                                         ; $6f88: $87
    jp nc, Jump_05c_6b8c                          ; $6f89: $d2 $8c $6b

    ld c, [hl]                                    ; $6f8c: $4e
    or d                                          ; $6f8d: $b2
    push de                                       ; $6f8e: $d5
    rrca                                          ; $6f8f: $0f
    or [hl]                                       ; $6f90: $b6
    dec [hl]                                      ; $6f91: $35
    sub c                                         ; $6f92: $91
    ld a, l                                       ; $6f93: $7d
    push de                                       ; $6f94: $d5
    sbc a                                         ; $6f95: $9f
    inc de                                        ; $6f96: $13
    rla                                           ; $6f97: $17
    nop                                           ; $6f98: $00
    sub d                                         ; $6f99: $92
    or a                                          ; $6f9a: $b7
    inc a                                         ; $6f9b: $3c
    ld a, a                                       ; $6f9c: $7f
    add [hl]                                      ; $6f9d: $86
    xor l                                         ; $6f9e: $ad
    ld c, $fa                                     ; $6f9f: $0e $fa
    pop de                                        ; $6fa1: $d1
    db $fd                                        ; $6fa2: $fd
    cpl                                           ; $6fa3: $2f
    ei                                            ; $6fa4: $fb
    di                                            ; $6fa5: $f3
    ld a, e                                       ; $6fa6: $7b
    ld b, [hl]                                    ; $6fa7: $46
    add hl, bc                                    ; $6fa8: $09
    ld a, [hl]                                    ; $6fa9: $7e
    call $8d60                                    ; $6faa: $cd $60 $8d
    cpl                                           ; $6fad: $2f
    sbc b                                         ; $6fae: $98
    xor h                                         ; $6faf: $ac
    ld h, e                                       ; $6fb0: $63
    rst $08                                       ; $6fb1: $cf
    add hl, bc                                    ; $6fb2: $09
    push hl                                       ; $6fb3: $e5
    ld [hl], c                                    ; $6fb4: $71
    ld d, d                                       ; $6fb5: $52
    add h                                         ; $6fb6: $84
    and e                                         ; $6fb7: $a3
    add h                                         ; $6fb8: $84
    daa                                           ; $6fb9: $27
    xor $37                                       ; $6fba: $ee $37
    ld a, e                                       ; $6fbc: $7b
    inc a                                         ; $6fbd: $3c
    ld l, b                                       ; $6fbe: $68
    db $fd                                        ; $6fbf: $fd
    rla                                           ; $6fc0: $17
    nop                                           ; $6fc1: $00
    sub d                                         ; $6fc2: $92
    or a                                          ; $6fc3: $b7
    ld e, $a6                                     ; $6fc4: $1e $a6
    rst $30                                       ; $6fc6: $f7
    jp c, $f444                                   ; $6fc7: $da $44 $f4

    or a                                          ; $6fca: $b7
    inc [hl]                                      ; $6fcb: $34
    ld h, e                                       ; $6fcc: $63

jr_05c_6fcd:
    jp c, Jump_05c_74c2                           ; $6fcd: $da $c2 $74

    ld bc, $b792                                  ; $6fd0: $01 $92 $b7
    ld e, [hl]                                    ; $6fd3: $5e
    ld c, l                                       ; $6fd4: $4d
    ld e, e                                       ; $6fd5: $5b
    ld a, e                                       ; $6fd6: $7b
    sub [hl]                                      ; $6fd7: $96
    xor a                                         ; $6fd8: $af
    ld [hl], l                                    ; $6fd9: $75
    sub h                                         ; $6fda: $94
    sbc $f6                                       ; $6fdb: $de $f6
    xor e                                         ; $6fdd: $ab
    ld b, a                                       ; $6fde: $47
    push af                                       ; $6fdf: $f5

jr_05c_6fe0:
    jp nz, $c97f                                  ; $6fe0: $c2 $7f $c9

    ld h, c                                       ; $6fe3: $61
    or b                                          ; $6fe4: $b0
    ld h, c                                       ; $6fe5: $61
    cp l                                          ; $6fe6: $bd
    jp z, $ada6                                   ; $6fe7: $ca $a6 $ad

    dec a                                         ; $6fea: $3d
    set 2, a                                      ; $6feb: $cb $d7
    ld a, [hl-]                                   ; $6fed: $3a
    ld c, d                                       ; $6fee: $4a
    ld [hl], $10                                  ; $6fef: $36 $10
    adc [hl]                                      ; $6ff1: $8e
    inc sp                                        ; $6ff2: $33
    cp $8c                                        ; $6ff3: $fe $8c
    ret c                                         ; $6ff5: $d8

    ld a, [hl]                                    ; $6ff6: $7e
    dec b                                         ; $6ff7: $05
    ld e, e                                       ; $6ff8: $5b
    ld sp, hl                                     ; $6ff9: $f9
    inc bc                                        ; $6ffa: $03
    rst $08                                       ; $6ffb: $cf
    sbc [hl]                                      ; $6ffc: $9e
    inc de                                        ; $6ffd: $13
    add d                                         ; $6ffe: $82
    xor [hl]                                      ; $6fff: $ae
    add h                                         ; $7000: $84
    adc $57                                       ; $7001: $ce $57
    rst $28                                       ; $7003: $ef
    ld e, a                                       ; $7004: $5f
    nop                                           ; $7005: $00
    sub d                                         ; $7006: $92
    or a                                          ; $7007: $b7
    ld l, [hl]                                    ; $7008: $6e
    ld l, a                                       ; $7009: $6f
    pop hl                                        ; $700a: $e1
    dec hl                                        ; $700b: $2b
    adc a                                         ; $700c: $8f
    sub e                                         ; $700d: $93
    ld h, d                                       ; $700e: $62
    ld d, d                                       ; $700f: $52
    jr nc, jr_05c_6fe0                            ; $7010: $30 $ce

    rla                                           ; $7012: $17
    sub [hl]                                      ; $7013: $96
    inc l                                         ; $7014: $2c
    ld c, [hl]                                    ; $7015: $4e
    cp [hl]                                       ; $7016: $be
    ld d, l                                       ; $7017: $55
    ld e, c                                       ; $7018: $59
    dec hl                                        ; $7019: $2b
    adc l                                         ; $701a: $8d
    ld c, d                                       ; $701b: $4a
    ld l, b                                       ; $701c: $68
    call $fd48                                    ; $701d: $cd $48 $fd
    cp [hl]                                       ; $7020: $be
    adc a                                         ; $7021: $8f
    rst $20                                       ; $7022: $e7
    ld l, l                                       ; $7023: $6d
    ld [c], a                                     ; $7024: $e2
    or h                                          ; $7025: $b4
    jr z, jr_05c_6fcd                             ; $7026: $28 $a5

    add hl, de                                    ; $7028: $19
    rst $10                                       ; $7029: $d7
    sbc h                                         ; $702a: $9c
    sub h                                         ; $702b: $94
    ld c, l                                       ; $702c: $4d
    dec bc                                        ; $702d: $0b
    ld l, e                                       ; $702e: $6b
    cp d                                          ; $702f: $ba
    nop                                           ; $7030: $00
    sub d                                         ; $7031: $92
    or a                                          ; $7032: $b7
    db $fc                                        ; $7033: $fc
    cp a                                          ; $7034: $bf
    ld [hl], e                                    ; $7035: $73
    inc c                                         ; $7036: $0c
    ld c, b                                       ; $7037: $48
    sub h                                         ; $7038: $94
    adc $cf                                       ; $7039: $ce $cf
    adc l                                         ; $703b: $8d
    ld d, d                                       ; $703c: $52
    cp $27                                        ; $703d: $fe $27
    rst $00                                       ; $703f: $c7
    ld [$7b47], a                                 ; $7040: $ea $47 $7b
    ld l, e                                       ; $7043: $6b
    inc l                                         ; $7044: $2c
    call $ce31                                    ; $7045: $cd $31 $ce
    ld e, b                                       ; $7048: $58
    ld a, e                                       ; $7049: $7b
    ld sp, hl                                     ; $704a: $f9
    ld b, h                                       ; $704b: $44
    rst $20                                       ; $704c: $e7
    db $ec                                        ; $704d: $ec
    sbc h                                         ; $704e: $9c
    ld e, h                                       ; $704f: $5c
    rla                                           ; $7050: $17
    nop                                           ; $7051: $00
    sub d                                         ; $7052: $92
    or a                                          ; $7053: $b7
    cp h                                          ; $7054: $bc
    inc bc                                        ; $7055: $03
    rst $08                                       ; $7056: $cf
    ld a, [hl+]                                   ; $7057: $2a
    ld h, e                                       ; $7058: $63
    db $db                                        ; $7059: $db
    ld c, l                                       ; $705a: $4d
    ld h, c                                       ; $705b: $61
    ld b, [hl]                                    ; $705c: $46
    ld d, h                                       ; $705d: $54
    ld a, [c]                                     ; $705e: $f2
    db $e3                                        ; $705f: $e3
    cp h                                          ; $7060: $bc
    push af                                       ; $7061: $f5
    cp a                                          ; $7062: $bf
    ld h, b                                       ; $7063: $60
    or d                                          ; $7064: $b2
    sbc $f3                                       ; $7065: $de $f3
    sub $af                                       ; $7067: $d6 $af
    ld sp, hl                                     ; $7069: $f9
    db $ec                                        ; $706a: $ec
    xor e                                         ; $706b: $ab
    ld [hl+], a                                   ; $706c: $22
    ld c, [hl]                                    ; $706d: $4e
    cp a                                          ; $706e: $bf
    xor $af                                       ; $706f: $ee $af
    sbc $89                                       ; $7071: $de $89
    ld l, h                                       ; $7073: $6c
    ld c, a                                       ; $7074: $4f
    rst $38                                       ; $7075: $ff
    dec b                                         ; $7076: $05
    nop                                           ; $7077: $00
    sub d                                         ; $7078: $92
    or a                                          ; $7079: $b7
    db $fc                                        ; $707a: $fc
    cp a                                          ; $707b: $bf
    sub $71                                       ; $707c: $d6 $71
    ld d, [hl]                                    ; $707e: $56
    rst $30                                       ; $707f: $f7
    ld a, a                                       ; $7080: $7f
    cp d                                          ; $7081: $ba
    sub $51                                       ; $7082: $d6 $51
    jp nz, Jump_000_319d                          ; $7084: $c2 $9d $31

    and [hl]                                      ; $7087: $a6
    ld l, l                                       ; $7088: $6d
    sub h                                         ; $7089: $94
    db $fc                                        ; $708a: $fc
    add c                                         ; $708b: $81
    daa                                           ; $708c: $27
    xor h                                         ; $708d: $ac
    rst $38                                       ; $708e: $ff
    ld [bc], a                                    ; $708f: $02
    sub d                                         ; $7090: $92
    or a                                          ; $7091: $b7
    cp h                                          ; $7092: $bc
    ld h, e                                       ; $7093: $63
    sbc h                                         ; $7094: $9c
    or c                                          ; $7095: $b1
    or $ca                                        ; $7096: $f6 $ca
    db $e3                                        ; $7098: $e3
    and h                                         ; $7099: $a4
    sbc b                                         ; $709a: $98
    inc d                                         ; $709b: $14
    adc h                                         ; $709c: $8c
    dec [hl]                                      ; $709d: $35
    ld e, a                                       ; $709e: $5f
    jr nc, jr_05c_70fa                            ; $709f: $30 $59

    ld l, a                                       ; $70a1: $6f
    dec hl                                        ; $70a2: $2b
    rst $38                                       ; $70a3: $ff
    ld c, d                                       ; $70a4: $4a
    ld l, b                                       ; $70a5: $68
    db $db                                        ; $70a6: $db
    ld [hl], $ff                                  ; $70a7: $36 $ff
    sub $5c                                       ; $70a9: $d6 $5c
    ld b, $e3                                     ; $70ab: $06 $e3
    or $98                                        ; $70ad: $f6 $98
    or [hl]                                       ; $70af: $b6
    ld d, c                                       ; $70b0: $51
    or $ca                                        ; $70b1: $f6 $ca
    rlca                                          ; $70b3: $07
    ld c, [hl]                                    ; $70b4: $4e
    db $db                                        ; $70b5: $db
    dec bc                                        ; $70b6: $0b
    nop                                           ; $70b7: $00
    sub d                                         ; $70b8: $92
    or a                                          ; $70b9: $b7
    db $fc                                        ; $70ba: $fc
    cp a                                          ; $70bb: $bf
    di                                            ; $70bc: $f3
    rst $08                                       ; $70bd: $cf
    ld d, [hl]                                    ; $70be: $56
    rrca                                          ; $70bf: $0f
    jr c, jr_05c_710c                             ; $70c0: $38 $4a

    ld l, a                                       ; $70c2: $6f
    ei                                            ; $70c3: $fb
    push de                                       ; $70c4: $d5
    and e                                         ; $70c5: $a3
    ld a, d                                       ; $70c6: $7a
    pop hl                                        ; $70c7: $e1
    cp a                                          ; $70c8: $bf
    call nz, $d31b                                ; $70c9: $c4 $1b $d3
    ld d, [hl]                                    ; $70cc: $56
    ld d, c                                       ; $70cd: $51
    or [hl]                                       ; $70ce: $b6
    rst $30                                       ; $70cf: $f7
    ld c, l                                       ; $70d0: $4d
    ld l, e                                       ; $70d1: $6b
    ld d, c                                       ; $70d2: $51
    and h                                         ; $70d3: $a4
    xor b                                         ; $70d4: $a8
    ld a, [de]                                    ; $70d5: $1a
    sub $c3                                       ; $70d6: $d6 $c3
    adc $8f                                       ; $70d8: $ce $8f
    inc sp                                        ; $70da: $33
    ld c, d                                       ; $70db: $4a
    ld [hl], a                                    ; $70dc: $77
    or b                                          ; $70dd: $b0
    cp c                                          ; $70de: $b9
    sbc l                                         ; $70df: $9d
    ld c, l                                       ; $70e0: $4d
    adc e                                         ; $70e1: $8b
    cp d                                          ; $70e2: $ba
    nop                                           ; $70e3: $00
    sub d                                         ; $70e4: $92
    or a                                          ; $70e5: $b7
    ld c, [hl]                                    ; $70e6: $4e
    ld a, b                                       ; $70e7: $78
    sbc b                                         ; $70e8: $98
    sbc $81                                       ; $70e9: $de $81
    dec a                                         ; $70eb: $3d
    and [hl]                                      ; $70ec: $a6
    ld b, l                                       ; $70ed: $45
    dec bc                                        ; $70ee: $0b
    ld a, [hl]                                    ; $70ef: $7e
    push de                                       ; $70f0: $d5
    ld l, $24                                     ; $70f1: $2e $24
    ld c, d                                       ; $70f3: $4a
    ld a, b                                       ; $70f4: $78
    or [hl]                                       ; $70f5: $b6
    db $fc                                        ; $70f6: $fc
    rst $18                                       ; $70f7: $df
    ld sp, hl                                     ; $70f8: $f9
    db $ed                                        ; $70f9: $ed

jr_05c_70fa:
    add h                                         ; $70fa: $84
    sbc h                                         ; $70fb: $9c
    sbc c                                         ; $70fc: $99
    set 4, b                                      ; $70fd: $cb $e0
    cpl                                           ; $70ff: $2f
    call Call_000_3065                            ; $7100: $cd $65 $30
    ld l, [hl]                                    ; $7103: $6e
    rst $30                                       ; $7104: $f7
    jp $017f                                      ; $7105: $c3 $7f $01


    sub d                                         ; $7108: $92
    or a                                          ; $7109: $b7
    ld e, $0d                                     ; $710a: $1e $0d

jr_05c_710c:
    inc l                                         ; $710c: $2c
    ld e, e                                       ; $710d: $5b
    ld a, c                                       ; $710e: $79
    xor $a9                                       ; $710f: $ee $a9
    rst $20                                       ; $7111: $e7
    ld l, [hl]                                    ; $7112: $6e
    sub h                                         ; $7113: $94
    sbc h                                         ; $7114: $9c
    db $f4                                        ; $7115: $f4
    inc a                                         ; $7116: $3c
    ld c, [hl]                                    ; $7117: $4e
    adc d                                         ; $7118: $8a

Call_05c_7119:
    sbc [hl]                                      ; $7119: $9e
    ld a, $64                                     ; $711a: $3e $64
    pop de                                        ; $711c: $d1
    di                                            ; $711d: $f3
    ld h, b                                       ; $711e: $60
    ld [hl], e                                    ; $711f: $73
    and d                                         ; $7120: $a2
    ld d, e                                       ; $7121: $53
    ld [hl], d                                    ; $7122: $72
    jp nz, $38f3                                  ; $7123: $c2 $f3 $38

    add hl, hl                                    ; $7126: $29
    or $a8                                        ; $7127: $f6 $a8
    ld e, [hl]                                    ; $7129: $5e
    daa                                           ; $712a: $27
    db $e4                                        ; $712b: $e4
    inc c                                         ; $712c: $0c
    and [hl]                                      ; $712d: $a6
    ld [hl], b                                    ; $712e: $70
    sbc h                                         ; $712f: $9c
    ei                                            ; $7130: $fb
    rst $38                                       ; $7131: $ff
    ld [bc], a                                    ; $7132: $02
    sub d                                         ; $7133: $92
    or a                                          ; $7134: $b7
    cp h                                          ; $7135: $bc
    ld h, e                                       ; $7136: $63
    sbc h                                         ; $7137: $9c
    or c                                          ; $7138: $b1
    or $ea                                        ; $7139: $f6 $ea
    rst $18                                       ; $713b: $df
    ld sp, hl                                     ; $713c: $f9
    dec e                                         ; $713d: $1d
    ret z                                         ; $713e: $c8

    ld [hl+], a                                   ; $713f: $22
    ld a, d                                       ; $7140: $7a
    rst $20                                       ; $7141: $e7
    call nz, $000b                                ; $7142: $c4 $0b $00
    sub d                                         ; $7145: $92
    or a                                          ; $7146: $b7
    ld e, $8f                                     ; $7147: $1e $8f
    ld a, d                                       ; $7149: $7a
    sbc e                                         ; $714a: $9b
    adc b                                         ; $714b: $88
    cp $96                                        ; $714c: $fe $96
    ld h, [hl]                                    ; $714e: $66
    ld c, h                                       ; $714f: $4c
    ld e, e                                       ; $7150: $5b
    sbc b                                         ; $7151: $98
    ld l, $00                                     ; $7152: $2e $00
    sub d                                         ; $7154: $92
    or a                                          ; $7155: $b7
    cp h                                          ; $7156: $bc
    ld h, e                                       ; $7157: $63
    sbc h                                         ; $7158: $9c
    or c                                          ; $7159: $b1
    or $8a                                        ; $715a: $f6 $8a
    xor d                                         ; $715c: $aa
    ld h, c                                       ; $715d: $61
    db $fd                                        ; $715e: $fd
    ldh a, [$27]                                  ; $715f: $f0 $27
    dec b                                         ; $7161: $05
    db $e3                                        ; $7162: $e3
    ld a, h                                       ; $7163: $7c
    call Call_000_3065                            ; $7164: $cd $65 $30
    ld l, [hl]                                    ; $7167: $6e
    rst $30                                       ; $7168: $f7
    jp z, $cf09                                   ; $7169: $ca $09 $cf

    inc l                                         ; $716c: $2c
    rst $38                                       ; $716d: $ff
    ld l, [hl]                                    ; $716e: $6e
    cp h                                          ; $716f: $bc
    cp a                                          ; $7170: $bf
    call nc, Call_05c_44e3                        ; $7171: $d4 $e3 $44
    cp $6b                                        ; $7174: $fe $6b
    ld h, e                                       ; $7176: $63
    ld b, b                                       ; $7177: $40
    and d                                         ; $7178: $a2
    sbc h                                         ; $7179: $9c
    cp b                                          ; $717a: $b8
    nop                                           ; $717b: $00
    sub d                                         ; $717c: $92
    or a                                          ; $717d: $b7
    ld a, h                                       ; $717e: $7c
    ld h, e                                       ; $717f: $63
    db $eb                                        ; $7180: $eb
    or a                                          ; $7181: $b7
    and d                                         ; $7182: $a2
    ld h, h                                       ; $7183: $64
    ld [hl], c                                    ; $7184: $71
    ld [hl], d                                    ; $7185: $72
    xor d                                         ; $7186: $aa
    and d                                         ; $7187: $a2
    cp c                                          ; $7188: $b9
    jr nc, jr_05c_71b0                            ; $7189: $30 $25

    dec b                                         ; $718b: $05
    db $e3                                        ; $718c: $e3
    ld a, h                                       ; $718d: $7c
    push bc                                       ; $718e: $c5
    ld l, d                                       ; $718f: $6a
    ld h, d                                       ; $7190: $62
    cp [hl]                                       ; $7191: $be
    and l                                         ; $7192: $a5
    dec de                                        ; $7193: $1b
    xor e                                         ; $7194: $ab
    rst $38                                       ; $7195: $ff
    ld h, l                                       ; $7196: $65
    ld [hl], c                                    ; $7197: $71
    ld [hl], d                                    ; $7198: $72

jr_05c_7199:
    ld [hl+], a                                   ; $7199: $22
    ld sp, hl                                     ; $719a: $f9
    or h                                          ; $719b: $b4
    add hl, sp                                    ; $719c: $39

Jump_05c_719d:
    sub c                                         ; $719d: $91
    adc d                                         ; $719e: $8a

Jump_05c_719f:
    jp nc, $faca                                  ; $719f: $d2 $ca $fa

    ld [bc], a                                    ; $71a2: $02
    sub d                                         ; $71a3: $92
    or a                                          ; $71a4: $b7
    ld e, $91                                     ; $71a5: $1e $91
    push af                                       ; $71a7: $f5
    cp [hl]                                       ; $71a8: $be
    db $ed                                        ; $71a9: $ed
    ld d, a                                       ; $71aa: $57
    adc a                                         ; $71ab: $8f
    ld [$3f85], a                                 ; $71ac: $ea $85 $3f
    add hl, hl                                    ; $71af: $29

jr_05c_71b0:
    jr jr_05c_7199                                ; $71b0: $18 $e7

    ld l, e                                       ; $71b2: $6b
    ld l, $83                                     ; $71b3: $2e $83
    ld [hl], c                                    ; $71b5: $71
    cp e                                          ; $71b6: $bb
    ld d, a                                       ; $71b7: $57
    ld h, a                                       ; $71b8: $67
    call z, $b6b1                                 ; $71b9: $cc $b1 $b6
    xor a                                         ; $71bc: $af
    cp c                                          ; $71bd: $b9
    inc c                                         ; $71be: $0c
    ld b, [hl]                                    ; $71bf: $46
    ld hl, sp-$6d                                 ; $71c0: $f8 $93
    cp d                                          ; $71c2: $ba
    rst $28                                       ; $71c3: $ef

Jump_05c_71c4:
    ld c, e                                       ; $71c4: $4b
    ld c, [hl]                                    ; $71c5: $4e
    ldh a, [$fe]                                  ; $71c6: $f0 $fe
    adc $b9                                       ; $71c8: $ce $b9

jr_05c_71ca:
    add d                                         ; $71ca: $82
    ret                                           ; $71cb: $c9


    ld a, d                                       ; $71cc: $7a
    ld e, e                                       ; $71cd: $5b
    or c                                          ; $71ce: $b1
    add hl, sp                                    ; $71cf: $39
    or l                                          ; $71d0: $b5
    ldh a, [$84]                                  ; $71d1: $f0 $84
    ld a, [hl-]                                   ; $71d3: $3a
    ld c, e                                       ; $71d4: $4b
    rst $28                                       ; $71d5: $ef
    dec h                                         ; $71d6: $25
    daa                                           ; $71d7: $27
    ld l, $00                                     ; $71d8: $2e $00
    sub d                                         ; $71da: $92
    or a                                          ; $71db: $b7
    sbc h                                         ; $71dc: $9c
    ld e, b                                       ; $71dd: $58
    db $fd                                        ; $71de: $fd
    ld a, $de                                     ; $71df: $3e $de
    rst $30                                       ; $71e1: $f7
    sub [hl]                                      ; $71e2: $96
    ld h, [hl]                                    ; $71e3: $66
    and h                                         ; $71e4: $a4
    db $db                                        ; $71e5: $db
    ld c, l                                       ; $71e6: $4d
    jr nc, @+$5f                                  ; $71e7: $30 $5d

    nop                                           ; $71e9: $00
    sub d                                         ; $71ea: $92
    or a                                          ; $71eb: $b7
    cp h                                          ; $71ec: $bc
    cp a                                          ; $71ed: $bf
    ld [hl], e                                    ; $71ee: $73
    ld l, [hl]                                    ; $71ef: $6e
    sub h                                         ; $71f0: $94
    ld a, [hl]                                    ; $71f1: $7e
    daa                                           ; $71f2: $27
    jp nz, $9a51                                  ; $71f3: $c2 $51 $9a

    ld h, e                                       ; $71f6: $63
    sbc h                                         ; $71f7: $9c
    or c                                          ; $71f8: $b1
    or [hl]                                       ; $71f9: $b6
    and l                                         ; $71fa: $a5
    inc a                                         ; $71fb: $3c
    ld c, [hl]                                    ; $71fc: $4e
    adc d                                         ; $71fd: $8a
    sub a                                         ; $71fe: $97
    ld hl, sp+$71                                 ; $71ff: $f8 $71
    rst $28                                       ; $7201: $ef
    push de                                       ; $7202: $d5
    inc e                                         ; $7203: $1c
    or l                                          ; $7204: $b5
    sub l                                         ; $7205: $95
    ret nc                                        ; $7206: $d0

    sbc e                                         ; $7207: $9b
    call c, $9d66                                 ; $7208: $dc $66 $9d
    ld c, $b6                                     ; $720b: $0e $b6
    and l                                         ; $720d: $a5
    inc d                                         ; $720e: $14
    di                                            ; $720f: $f3
    dec [hl]                                      ; $7210: $35
    ei                                            ; $7211: $fb
    dec bc                                        ; $7212: $0b
    nop                                           ; $7213: $00
    sub d                                         ; $7214: $92
    or a                                          ; $7215: $b7
    ld c, $70                                     ; $7216: $0e $70
    ei                                            ; $7218: $fb
    dec hl                                        ; $7219: $2b
    ld b, [hl]                                    ; $721a: $46
    adc [hl]                                      ; $721b: $8e
    sub $58                                       ; $721c: $d6 $58
    ld a, [c]                                     ; $721e: $f2
    ld b, a                                       ; $721f: $47
    ld a, [de]                                    ; $7220: $1a
    ld d, c                                       ; $7221: $51
    jr nc, jr_05c_71ca                            ; $7222: $30 $a6

    db $fd                                        ; $7224: $fd
    ldh a, [$cb]                                  ; $7225: $f0 $cb
    ld a, c                                       ; $7227: $79
    ld d, a                                       ; $7228: $57
    sbc h                                         ; $7229: $9c
    ld [hl], a                                    ; $722a: $77
    ld b, c                                       ; $722b: $41
    adc $c8                                       ; $722c: $ce $c8
    ld a, c                                       ; $722e: $79
    ld d, a                                       ; $722f: $57
    ld e, h                                       ; $7230: $5c
    ld [hl], e                                    ; $7231: $73
    push af                                       ; $7232: $f5
    ld [bc], a                                    ; $7233: $02
    sub d                                         ; $7234: $92
    or a                                          ; $7235: $b7
    sbc h                                         ; $7236: $9c
    inc bc                                        ; $7237: $03
    ld l, l                                       ; $7238: $6d
    cp e                                          ; $7239: $bb

jr_05c_723a:
    add a                                         ; $723a: $87
    ld a, [$fe77]                                 ; $723b: $fa $77 $fe
    cp l                                          ; $723e: $bd
    or l                                          ; $723f: $b5
    sub $c1                                       ; $7240: $d6 $c1
    ld [hl], $a9                                  ; $7242: $36 $a9
    jp c, Jump_000_3b7b                           ; $7244: $da $7b $3b

    cp d                                          ; $7247: $ba
    ld [hl], a                                    ; $7248: $77
    ld c, e                                       ; $7249: $4b
    dec e                                         ; $724a: $1d
    ld l, c                                       ; $724b: $69
    ld d, e                                       ; $724c: $53
    ld c, [hl]                                    ; $724d: $4e
    ld d, h                                       ; $724e: $54
    jp z, Jump_05c_5607                           ; $724f: $ca $07 $56

    cp l                                          ; $7252: $bd
    sbc h                                         ; $7253: $9c
    ld [hl], a                                    ; $7254: $77
    call $e779                                    ; $7255: $cd $79 $e7
    cpl                                           ; $7258: $2f
    nop                                           ; $7259: $00
    sub d                                         ; $725a: $92
    or a                                          ; $725b: $b7
    sbc [hl]                                      ; $725c: $9e
    rst $00                                       ; $725d: $c7
    ld c, c                                       ; $725e: $49
    or c                                          ; $725f: $b1
    ld h, d                                       ; $7260: $62
    db $e4                                        ; $7261: $e4
    ld l, b                                       ; $7262: $68
    adc l                                         ; $7263: $8d
    dec h                                         ; $7264: $25
    jr jr_05c_723a                                ; $7265: $18 $d3

    ld a, [hl]                                    ; $7267: $7e
    ld hl, sp-$1b                                 ; $7268: $f8 $e5
    cp h                                          ; $726a: $bc
    ld c, e                                       ; $726b: $4b
    ld l, $b9                                     ; $726c: $2e $b9
    ld h, $67                                     ; $726e: $26 $67
    db $e4                                        ; $7270: $e4
    or d                                          ; $7271: $b2
    ld [hl], e                                    ; $7272: $73
    rla                                           ; $7273: $17
    nop                                           ; $7274: $00
    sub d                                         ; $7275: $92
    or a                                          ; $7276: $b7
    db $fc                                        ; $7277: $fc
    db $e3                                        ; $7278: $e3
    xor h                                         ; $7279: $ac
    and $18                                       ; $727a: $e6 $18
    ld h, a                                       ; $727c: $67
    xor h                                         ; $727d: $ac
    db $fd                                        ; $727e: $fd
    or h                                          ; $727f: $b4
    push de                                       ; $7280: $d5
    inc e                                         ; $7281: $1c
    ld [hl], e                                    ; $7282: $73
    xor l                                         ; $7283: $ad
    and e                                         ; $7284: $a3
    ld a, e                                       ; $7285: $7b
    db $fc                                        ; $7286: $fc
    sub a                                         ; $7287: $97
    db $fc                                        ; $7288: $fc
    ret c                                         ; $7289: $d8

jr_05c_728a:
    adc c                                         ; $728a: $89
    sub l                                         ; $728b: $95
    inc d                                         ; $728c: $14
    adc h                                         ; $728d: $8c
    di                                            ; $728e: $f3
    push hl                                       ; $728f: $e5
    ld l, a                                       ; $7290: $6f
    xor a                                         ; $7291: $af
    jr c, jr_05c_728a                             ; $7292: $38 $f6

    sbc $69                                       ; $7294: $de $69
    db $eb                                        ; $7296: $eb
    inc c                                         ; $7297: $0c
    adc h                                         ; $7298: $8c
    ld d, c                                       ; $7299: $51
    jp z, Jump_05c_76ce                           ; $729a: $ca $ce $76

    inc de                                        ; $729d: $13
    cp h                                          ; $729e: $bc
    inc h                                         ; $729f: $24
    ccf                                           ; $72a0: $3f
    ld c, $96                                     ; $72a1: $0e $96
    ld a, [c]                                     ; $72a3: $f2
    ccf                                           ; $72a4: $3f
    rst $20                                       ; $72a5: $e7
    call $02fe                                    ; $72a6: $cd $fe $02
    sub d                                         ; $72a9: $92
    or a                                          ; $72aa: $b7
    cp h                                          ; $72ab: $bc
    cp a                                          ; $72ac: $bf
    ld [hl], e                                    ; $72ad: $73
    ld l, [hl]                                    ; $72ae: $6e
    sub h                                         ; $72af: $94
    ld a, [hl]                                    ; $72b0: $7e
    daa                                           ; $72b1: $27
    jp nz, $8a51                                  ; $72b2: $c2 $51 $8a

    or d                                          ; $72b5: $b2
    cp l                                          ; $72b6: $bd
    ld l, a                                       ; $72b7: $6f
    jp c, Jump_05c_528a                           ; $72b8: $da $8a $52

    rst $38                                       ; $72bb: $ff
    adc $bf                                       ; $72bc: $ce $bf
    or a                                          ; $72be: $b7
    sub $3a                                       ; $72bf: $d6 $3a
    ret c                                         ; $72c1: $d8

    ld e, [hl]                                    ; $72c2: $5e
    nop                                           ; $72c3: $00
    sub d                                         ; $72c4: $92
    or a                                          ; $72c5: $b7
    cp h                                          ; $72c6: $bc
    ld h, e                                       ; $72c7: $63
    sbc h                                         ; $72c8: $9c
    or c                                          ; $72c9: $b1
    or $f2                                        ; $72ca: $f6 $f2
    ld h, e                                       ; $72cc: $63
    rst $20                                       ; $72cd: $e7
    call nz, $3d1e                                ; $72ce: $c4 $1e $3d
    rla                                           ; $72d1: $17
    cp $4b                                        ; $72d2: $fe $4b
    ld c, $c6                                     ; $72d4: $0e $c6
    jp nz, $bddb                                  ; $72d6: $c2 $db $bd

jr_05c_72d9:
    ld e, e                                       ; $72d9: $5b
    sbc d                                         ; $72da: $9a
    inc bc                                        ; $72db: $03
    rst $08                                       ; $72dc: $cf
    cp $4f                                        ; $72dd: $fe $4f
    ld e, e                                       ; $72df: $5b
    ld sp, hl                                     ; $72e0: $f9
    cp e                                          ; $72e1: $bb
    xor h                                         ; $72e2: $ac
    add hl, hl                                    ; $72e3: $29
    call z, Call_05c_4a88                         ; $72e4: $cc $88 $4a
    ld h, a                                       ; $72e7: $67
    ld h, b                                       ; $72e8: $60
    dec d                                         ; $72e9: $15
    ld e, d                                       ; $72ea: $5a
    rst $38                                       ; $72eb: $ff
    dec b                                         ; $72ec: $05
    nop                                           ; $72ed: $00
    sub d                                         ; $72ee: $92
    or a                                          ; $72ef: $b7
    sbc [hl]                                      ; $72f0: $9e
    rst $00                                       ; $72f1: $c7
    ld c, c                                       ; $72f2: $49
    pop de                                        ; $72f3: $d1
    jp nc, $5b9f                                  ; $72f4: $d2 $9f $5b

    cp d                                          ; $72f7: $ba
    jp $d9fa                                      ; $72f8: $c3 $fa $d9


    ld a, [hl-]                                   ; $72fb: $3a
    db $e3                                        ; $72fc: $e3
    cp h                                          ; $72fd: $bc
    set 1, [hl]                                   ; $72fe: $cb $ce
    cp c                                          ; $7300: $b9
    ld [hl+], a                                   ; $7301: $22
    ld h, a                                       ; $7302: $67
    db $e4                                        ; $7303: $e4
    cp h                                          ; $7304: $bc

jr_05c_7305:
    res 5, [hl]                                   ; $7305: $cb $ae
    cp c                                          ; $7307: $b9
    halt                                          ; $7308: $76
    ld bc, $b792                                  ; $7309: $01 $92 $b7
    ld c, $71                                     ; $730c: $0e $71
    rst $20                                       ; $730e: $e7
    dec bc                                        ; $730f: $0b
    add $f9                                       ; $7310: $c6 $f9
    adc d                                         ; $7312: $8a
    ld b, e                                       ; $7313: $43
    ld [hl], h                                    ; $7314: $74
    ld bc, $b792                                  ; $7315: $01 $92 $b7
    sbc h                                         ; $7318: $9c
    ld e, h                                       ; $7319: $5c
    xor e                                         ; $731a: $ab
    adc c                                         ; $731b: $89
    inc de                                        ; $731c: $13
    db $eb                                        ; $731d: $eb
    rst $10                                       ; $731e: $d7
    and d                                         ; $731f: $a2
    ld [hl], h                                    ; $7320: $74
    ld h, a                                       ; $7321: $67
    ld l, h                                       ; $7322: $6c
    adc $6c                                       ; $7323: $ce $6c
    cp [hl]                                       ; $7325: $be
    push hl                                       ; $7326: $e5
    ld e, e                                       ; $7327: $5b
    add d                                         ; $7328: $82
    ld e, a                                       ; $7329: $5f
    jr nc, jr_05c_72d9                            ; $732a: $30 $ad

    ld [c], a                                     ; $732c: $e2
    jr nz, jr_05c_7305                            ; $732d: $20 $d6

    dec h                                         ; $732f: $25
    adc [hl]                                      ; $7330: $8e
    ld d, d                                       ; $7331: $52
    and e                                         ; $7332: $a3
    ld l, l                                       ; $7333: $6d
    add hl, hl                                    ; $7334: $29
    jr nz, jr_05c_73a8                            ; $7335: $20 $71

    ld c, [hl]                                    ; $7337: $4e
    ld b, h                                       ; $7338: $44
    add hl, hl                                    ; $7339: $29
    ld e, a                                       ; $733a: $5f
    inc a                                         ; $733b: $3c
    pop de                                        ; $733c: $d1
    ld e, e                                       ; $733d: $5b
    jp z, Jump_05c_6d89                           ; $733e: $ca $89 $6d

    ld b, l                                       ; $7341: $45
    ld e, l                                       ; $7342: $5d
    nop                                           ; $7343: $00
    sub d                                         ; $7344: $92
    or a                                          ; $7345: $b7
    ld e, [hl]                                    ; $7346: $5e
    ld c, l                                       ; $7347: $4d
    ld e, e                                       ; $7348: $5b
    db $db                                        ; $7349: $db
    ld [hl], e                                    ; $734a: $73
    db $d3                                        ; $734b: $d3
    ld d, [hl]                                    ; $734c: $56
    ld d, h                                       ; $734d: $54
    ld d, d                                       ; $734e: $52
    inc sp                                        ; $734f: $33
    db $e3                                        ; $7350: $e3
    cp d                                          ; $7351: $ba
    inc sp                                        ; $7352: $33
    adc e                                         ; $7353: $8b
    inc sp                                        ; $7354: $33
    ld l, c                                       ; $7355: $69
    dec hl                                        ; $7356: $2b
    ld c, d                                       ; $7357: $4a
    add l                                         ; $7358: $85
    db $db                                        ; $7359: $db
    sbc a                                         ; $735a: $9f
    inc d                                         ; $735b: $14
    adc h                                         ; $735c: $8c
    di                                            ; $735d: $f3
    dec [hl]                                      ; $735e: $35
    ld h, e                                       ; $735f: $63
    jp c, Jump_000_10ea                           ; $7360: $da $ea $10

    call Call_05c_5119                            ; $7363: $cd $19 $51
    ld a, [hl-]                                   ; $7366: $3a

Call_05c_7367:
    sbc b                                         ; $7367: $98
    xor $24                                       ; $7368: $ee $24
    ld h, d                                       ; $736a: $62
    ld [hl], a                                    ; $736b: $77

jr_05c_736c:
    jr nc, @-$62                                  ; $736c: $30 $9c

    inc de                                        ; $736e: $13
    or c                                          ; $736f: $b1
    ld l, $00                                     ; $7370: $2e $00
    sub d                                         ; $7372: $92
    or a                                          ; $7373: $b7
    ld e, $b2                                     ; $7374: $1e $b2
    di                                            ; $7376: $f3
    push de                                       ; $7377: $d5
    ld a, e                                       ; $7378: $7b
    ld a, [hl]                                    ; $7379: $7e
    dec hl                                        ; $737a: $2b
    ld c, d                                       ; $737b: $4a
    db $10                                        ; $737c: $10
    ld [hl], $16                                  ; $737d: $36 $16
    or d                                          ; $737f: $b2
    db $fd                                        ; $7380: $fd
    inc l                                         ; $7381: $2c
    add hl, hl                                    ; $7382: $29

Call_05c_7383:
    jr jr_05c_736c                                ; $7383: $18 $e7

    ld l, e                                       ; $7385: $6b

jr_05c_7386:
    add $b4                                       ; $7386: $c6 $b4
    ld c, l                                       ; $7388: $4d
    ld [$74de], a                                 ; $7389: $ea $de $74
    ld c, e                                       ; $738c: $4b

Call_05c_738d:
    di                                            ; $738d: $f3
    ld [hl], a                                    ; $738e: $77
    adc $88                                       ; $738f: $ce $88
    jp nc, $231c                                  ; $7391: $d2 $1c $23

    adc l                                         ; $7394: $8d
    ld [hl], e                                    ; $7395: $73
    rlca                                          ; $7396: $07
    add hl, hl                                    ; $7397: $29
    rst $00                                       ; $7398: $c7
    add l                                         ; $7399: $85
    db $fc                                        ; $739a: $fc
    sub a                                         ; $739b: $97
    ld h, $65                                     ; $739c: $26 $65
    db $dd                                        ; $739e: $dd
    ld b, h                                       ; $739f: $44
    rla                                           ; $73a0: $17
    nop                                           ; $73a1: $00
    sub d                                         ; $73a2: $92
    or a                                          ; $73a3: $b7
    ld e, [hl]                                    ; $73a4: $5e
    or c                                          ; $73a5: $b1
    xor $ed                                       ; $73a6: $ee $ed

jr_05c_73a8:
    dec c                                         ; $73a8: $0d
    ld [$d096], sp                                ; $73a9: $08 $96 $d0
    rst $30                                       ; $73ac: $f7
    rst $10                                       ; $73ad: $d7
    sbc c                                         ; $73ae: $99
    dec [hl]                                      ; $73af: $35
    ld [de], a                                    ; $73b0: $12
    db $fc                                        ; $73b1: $fc
    cp d                                          ; $73b2: $ba
    rst $38                                       ; $73b3: $ff
    inc de                                        ; $73b4: $13
    ld e, d                                       ; $73b5: $5a
    db $eb                                        ; $73b6: $eb

jr_05c_73b7:
    jr z, jr_05c_7386                             ; $73b7: $28 $cd

    or a                                          ; $73b9: $b7
    ld a, h                                       ; $73ba: $7c
    and e                                         ; $73bb: $a3
    sub h                                         ; $73bc: $94
    sub e                                         ; $73bd: $93
    ld h, l                                       ; $73be: $65
    scf                                           ; $73bf: $37
    dec [hl]                                      ; $73c0: $35
    ld d, a                                       ; $73c1: $57
    ld l, c                                       ; $73c2: $69
    ld b, $a3                                     ; $73c3: $06 $a3
    dec a                                         ; $73c5: $3d
    dec bc                                        ; $73c6: $0b
    db $d3                                        ; $73c7: $d3
    dec b                                         ; $73c8: $05
    nop                                           ; $73c9: $00
    sub d                                         ; $73ca: $92
    or a                                          ; $73cb: $b7
    ret nc                                        ; $73cc: $d0

    ld h, l                                       ; $73cd: $65
    ld a, e                                       ; $73ce: $7b
    rst $18                                       ; $73cf: $df
    or h                                          ; $73d0: $b4
    dec d                                         ; $73d1: $15
    and l                                         ; $73d2: $a5
    ld e, $55                                     ; $73d3: $1e $55
    pop de                                        ; $73d5: $d1
    dec a                                         ; $73d6: $3d
    ld [hl], h                                    ; $73d7: $74
    jr nc, jr_05c_73b7                            ; $73d8: $30 $dd

    ld c, c                                       ; $73da: $49
    call nz, Call_05c_60ee                        ; $73db: $c4 $ee $60
    jr c, @+$29                                   ; $73de: $38 $27

    ld h, d                                       ; $73e0: $62
    ret                                           ; $73e1: $c9


    ld a, [hl]                                    ; $73e2: $7e
    reti                                          ; $73e3: $d9


    ld e, e                                       ; $73e4: $5b
    adc a                                         ; $73e5: $8f
    ld a, [de]                                    ; $73e6: $1a
    ld a, l                                       ; $73e7: $7d
    ld bc, $b792                                  ; $73e8: $01 $92 $b7
    ld c, $83                                     ; $73eb: $0e $83
    dec c                                         ; $73ed: $0d
    db $eb                                        ; $73ee: $eb
    sub l                                         ; $73ef: $95
    jp $a52c                                      ; $73f0: $c3 $2c $a5


    ld [de], a                                    ; $73f3: $12
    rst $18                                       ; $73f4: $df
    xor b                                         ; $73f5: $a8
    add h                                         ; $73f6: $84
    or b                                          ; $73f7: $b0
    call nc, $f3bf                                ; $73f8: $d4 $bf $f3
    ei                                            ; $73fb: $fb
    ld b, a                                       ; $73fc: $47
    ld l, a                                       ; $73fd: $6f
    sub h                                         ; $73fe: $94
    ldh [$97], a                                  ; $73ff: $e0 $97
    inc sp                                        ; $7401: $33
    ld sp, hl                                     ; $7402: $f9
    rst $18                                       ; $7403: $df
    scf                                           ; $7404: $37
    jp nz, $b251                                  ; $7405: $c2 $51 $b2

    ld e, a                                       ; $7408: $5f
    or $7f                                        ; $7409: $f6 $7f
    cp [hl]                                       ; $740b: $be
    ld l, $00                                     ; $740c: $2e $00
    sub d                                         ; $740e: $92
    or a                                          ; $740f: $b7
    ret nc                                        ; $7410: $d0

    ld h, l                                       ; $7411: $65
    ld a, e                                       ; $7412: $7b
    rst $18                                       ; $7413: $df
    or h                                          ; $7414: $b4
    dec d                                         ; $7415: $15
    and l                                         ; $7416: $a5
    ld c, a                                       ; $7417: $4f
    sub b                                         ; $7418: $90
    db $ed                                        ; $7419: $ed
    sbc h                                         ; $741a: $9c
    ld a, a                                       ; $741b: $7f
    ld a, [hl]                                    ; $741c: $7e
    dec l                                         ; $741d: $2d
    ld c, d                                       ; $741e: $4a
    cp $60                                        ; $741f: $fe $60
    ld [hl], $23                                  ; $7421: $36 $23
    ld c, d                                       ; $7423: $4a
    inc hl                                        ; $7424: $23
    ld h, l                                       ; $7425: $65
    dec sp                                        ; $7426: $3b
    ld l, l                                       ; $7427: $6d
    dec b                                         ; $7428: $05
    db $e3                                        ; $7429: $e3
    add sp, $51                                   ; $742a: $e8 $51
    and e                                         ; $742c: $a3
    sub l                                         ; $742d: $95
    rst $00                                       ; $742e: $c7
    ld c, c                                       ; $742f: $49
    pop af                                        ; $7430: $f1
    ld [bc], a                                    ; $7431: $02
    sub d                                         ; $7432: $92
    or a                                          ; $7433: $b7
    cp h                                          ; $7434: $bc
    ld sp, $156d                                  ; $7435: $31 $6d $15
    ld h, l                                       ; $7438: $65

Call_05c_7439:
    ld a, e                                       ; $7439: $7b
    rst $18                                       ; $743a: $df
    or h                                          ; $743b: $b4
    ld d, $45                                     ; $743c: $16 $45
    xor d                                         ; $743e: $aa
    ld [hl], c                                    ; $743f: $71
    rlca                                          ; $7440: $07
    jp Jump_000_0983                              ; $7441: $c3 $83 $09


    ld l, l                                       ; $7444: $6d
    ld a, l                                       ; $7445: $7d
    ld d, d                                       ; $7446: $52
    pop de                                        ; $7447: $d1
    ld c, l                                       ; $7448: $4d
    xor d                                         ; $7449: $aa
    ld [hl], c                                    ; $744a: $71
    rlca                                          ; $744b: $07
    ld b, e                                       ; $744c: $43
    ld e, c                                       ; $744d: $59
    ld l, h                                       ; $744e: $6c
    ld e, e                                       ; $744f: $5b
    call c, $ea54                                 ; $7450: $dc $54 $ea
    add c                                         ; $7453: $81
    jp nz, $f8aa                                  ; $7454: $c2 $aa $f8

    dec bc                                        ; $7457: $0b
    nop                                           ; $7458: $00
    sub d                                         ; $7459: $92
    or a                                          ; $745a: $b7
    ld e, [hl]                                    ; $745b: $5e
    ld c, l                                       ; $745c: $4d
    ld e, e                                       ; $745d: $5b
    pop af                                        ; $745e: $f1
    ld h, a                                       ; $745f: $67
    daa                                           ; $7460: $27
    di                                            ; $7461: $f3
    ccf                                           ; $7462: $3f
    sbc l                                         ; $7463: $9d
    ld e, a                                       ; $7464: $5f
    ld a, [c]                                     ; $7465: $f2
    add e                                         ; $7466: $83
    dec c                                         ; $7467: $0d
    db $eb                                        ; $7468: $eb
    add a                                         ; $7469: $87
    rst $10                                       ; $746a: $d7
    ld a, [$792f]                                 ; $746b: $fa $2f $79
    dec [hl]                                      ; $746e: $35
    ld l, l                                       ; $746f: $6d
    ld d, l                                       ; $7470: $55
    ld [hl], c                                    ; $7471: $71
    ld h, b                                       ; $7472: $60
    or d                                          ; $7473: $b2
    ld h, $f5                                     ; $7474: $26 $f5
    ret z                                         ; $7476: $c8

    rst $18                                       ; $7477: $df
    ld a, [$7b55]                                 ; $7478: $fa $55 $7b
    ld b, a                                       ; $747b: $47
    rst $30                                       ; $747c: $f7
    ld l, [hl]                                    ; $747d: $6e
    add hl, hl                                    ; $747e: $29
    and l                                         ; $747f: $a5
    adc d                                         ; $7480: $8a
    jp nc, $e63d                                  ; $7481: $d2 $3d $e6

    ld a, a                                       ; $7484: $7f
    reti                                          ; $7485: $d9


    ld e, a                                       ; $7486: $5f
    nop                                           ; $7487: $00
    sub d                                         ; $7488: $92
    or a                                          ; $7489: $b7
    cp h                                          ; $748a: $bc
    ld h, e                                       ; $748b: $63
    sbc h                                         ; $748c: $9c
    or c                                          ; $748d: $b1
    or $3a                                        ; $748e: $f6 $3a
    cp b                                          ; $7490: $b8
    ld l, l                                       ; $7491: $6d
    ld h, e                                       ; $7492: $63
    ld l, $83                                     ; $7493: $2e $83
    ld de, $d28e                                  ; $7495: $11 $8e $d2
    ld e, h                                       ; $7498: $5c
    ld b, $e3                                     ; $7499: $06 $e3
    halt                                          ; $749b: $76
    ccf                                           ; $749c: $3f
    db $fc                                        ; $749d: $fc
    rla                                           ; $749e: $17
    nop                                           ; $749f: $00
    sub d                                         ; $74a0: $92
    or a                                          ; $74a1: $b7
    ld e, [hl]                                    ; $74a2: $5e
    ld c, l                                       ; $74a3: $4d
    ld e, e                                       ; $74a4: $5b
    pop af                                        ; $74a5: $f1
    ld h, a                                       ; $74a6: $67
    daa                                           ; $74a7: $27
    di                                            ; $74a8: $f3
    ccf                                           ; $74a9: $3f
    sbc l                                         ; $74aa: $9d
    ld e, a                                       ; $74ab: $5f
    ld a, [c]                                     ; $74ac: $f2
    add e                                         ; $74ad: $83
    dec c                                         ; $74ae: $0d
    db $eb                                        ; $74af: $eb
    add a                                         ; $74b0: $87
    rst $10                                       ; $74b1: $d7
    ld a, [$792f]                                 ; $74b2: $fa $2f $79
    dec [hl]                                      ; $74b5: $35
    ld l, l                                       ; $74b6: $6d
    ld d, l                                       ; $74b7: $55
    ld [hl], c                                    ; $74b8: $71
    ld h, b                                       ; $74b9: $60
    or d                                          ; $74ba: $b2
    ld h, $f5                                     ; $74bb: $26 $f5
    ret z                                         ; $74bd: $c8

    rst $18                                       ; $74be: $df
    ld a, [$7b55]                                 ; $74bf: $fa $55 $7b

Jump_05c_74c2:
    ld b, a                                       ; $74c2: $47
    rst $30                                       ; $74c3: $f7
    ld l, [hl]                                    ; $74c4: $6e
    add hl, hl                                    ; $74c5: $29
    and l                                         ; $74c6: $a5
    adc d                                         ; $74c7: $8a
    jp nc, $e63d                                  ; $74c8: $d2 $3d $e6

    ld a, a                                       ; $74cb: $7f
    reti                                          ; $74cc: $d9


    ld e, a                                       ; $74cd: $5f
    nop                                           ; $74ce: $00
    sub d                                         ; $74cf: $92
    or a                                          ; $74d0: $b7
    ld e, $47                                     ; $74d1: $1e $47
    ld b, d                                       ; $74d3: $42
    ld d, c                                       ; $74d4: $51
    sub b                                         ; $74d5: $90
    ld a, a                                       ; $74d6: $7f
    or [hl]                                       ; $74d7: $b6
    dec d                                         ; $74d8: $15
    and l                                         ; $74d9: $a5
    jp nz, Jump_05c_4fed                          ; $74da: $c2 $ed $4f

    ld a, [bc]                                    ; $74dd: $0a
    add $f9                                       ; $74de: $c6 $f9
    ld b, d                                       ; $74e0: $42
    ccf                                           ; $74e1: $3f
    cp d                                          ; $74e2: $ba
    ld d, a                                       ; $74e3: $57
    dec [hl]                                      ; $74e4: $35
    sub b                                         ; $74e5: $90
    db $ed                                        ; $74e6: $ed
    dec hl                                        ; $74e7: $2b
    adc a                                         ; $74e8: $8f
    sub e                                         ; $74e9: $93
    ld [hl+], a                                   ; $74ea: $22
    db $fc                                        ; $74eb: $fc
    ld a, [c]                                     ; $74ec: $f2
    sub b                                         ; $74ed: $90
    sbc l                                         ; $74ee: $9d
    xor a                                         ; $74ef: $af
    ld e, d                                       ; $74f0: $5a
    or e                                          ; $74f1: $b3
    cp a                                          ; $74f2: $bf
    nop                                           ; $74f3: $00
    sub d                                         ; $74f4: $92
    or a                                          ; $74f5: $b7
    ld e, [hl]                                    ; $74f6: $5e
    ld c, l                                       ; $74f7: $4d
    ld e, e                                       ; $74f8: $5b
    pop af                                        ; $74f9: $f1
    ld h, a                                       ; $74fa: $67
    daa                                           ; $74fb: $27
    di                                            ; $74fc: $f3
    ccf                                           ; $74fd: $3f
    sbc l                                         ; $74fe: $9d

Call_05c_74ff:
    ld e, a                                       ; $74ff: $5f
    ld a, [c]                                     ; $7500: $f2
    add e                                         ; $7501: $83
    dec c                                         ; $7502: $0d
    db $eb                                        ; $7503: $eb
    add a                                         ; $7504: $87
    rst $10                                       ; $7505: $d7
    ld a, [$792f]                                 ; $7506: $fa $2f $79
    dec [hl]                                      ; $7509: $35
    ld l, l                                       ; $750a: $6d
    ld d, l                                       ; $750b: $55
    ld [hl], c                                    ; $750c: $71
    ld h, b                                       ; $750d: $60
    or d                                          ; $750e: $b2
    ld h, $f5                                     ; $750f: $26 $f5
    ret z                                         ; $7511: $c8

    rst $18                                       ; $7512: $df
    ld a, [$7b55]                                 ; $7513: $fa $55 $7b
    ld b, a                                       ; $7516: $47
    rst $30                                       ; $7517: $f7
    ld l, [hl]                                    ; $7518: $6e
    add hl, hl                                    ; $7519: $29
    and l                                         ; $751a: $a5
    adc d                                         ; $751b: $8a
    jp nc, $e63d                                  ; $751c: $d2 $3d $e6

    ld a, a                                       ; $751f: $7f
    reti                                          ; $7520: $d9


    ld e, a                                       ; $7521: $5f
    nop                                           ; $7522: $00
    sub d                                         ; $7523: $92
    or a                                          ; $7524: $b7
    ld e, [hl]                                    ; $7525: $5e
    ld c, l                                       ; $7526: $4d
    ld e, e                                       ; $7527: $5b
    pop af                                        ; $7528: $f1
    ld h, a                                       ; $7529: $67
    daa                                           ; $752a: $27
    di                                            ; $752b: $f3
    ccf                                           ; $752c: $3f
    sbc l                                         ; $752d: $9d
    ld e, a                                       ; $752e: $5f
    ld a, [c]                                     ; $752f: $f2
    add e                                         ; $7530: $83
    dec c                                         ; $7531: $0d
    db $eb                                        ; $7532: $eb
    add a                                         ; $7533: $87
    rst $10                                       ; $7534: $d7
    ld a, [$792f]                                 ; $7535: $fa $2f $79
    dec [hl]                                      ; $7538: $35
    ld l, l                                       ; $7539: $6d
    ld d, l                                       ; $753a: $55
    ld [hl], c                                    ; $753b: $71
    ld h, b                                       ; $753c: $60
    or d                                          ; $753d: $b2
    ld h, $f5                                     ; $753e: $26 $f5
    ret z                                         ; $7540: $c8

    rst $18                                       ; $7541: $df
    ld a, [$7b55]                                 ; $7542: $fa $55 $7b
    ld b, a                                       ; $7545: $47
    rst $30                                       ; $7546: $f7
    ld l, [hl]                                    ; $7547: $6e
    add hl, hl                                    ; $7548: $29
    and l                                         ; $7549: $a5
    adc d                                         ; $754a: $8a
    jp nc, $e63d                                  ; $754b: $d2 $3d $e6

    ld a, a                                       ; $754e: $7f
    reti                                          ; $754f: $d9


    ld e, a                                       ; $7550: $5f
    nop                                           ; $7551: $00
    sub d                                         ; $7552: $92
    or a                                          ; $7553: $b7
    db $fc                                        ; $7554: $fc
    reti                                          ; $7555: $d9


    ret                                           ; $7556: $c9


    ld a, $c5                                     ; $7557: $3e $c5
    jp nc, Jump_000_0ecc                          ; $7559: $d2 $cc $0e

    sub l                                         ; $755c: $95
    db $fc                                        ; $755d: $fc
    ld h, b                                       ; $755e: $60
    jp $e1fa                                      ; $755f: $c3 $fa $e1


    cp a                                          ; $7562: $bf
    nop                                           ; $7563: $00
    sub d                                         ; $7564: $92
    or a                                          ; $7565: $b7
    sbc [hl]                                      ; $7566: $9e
    rrca                                          ; $7567: $0f
    db $ec                                        ; $7568: $ec
    rst $08                                       ; $7569: $cf
    cp a                                          ; $756a: $bf
    ld d, h                                       ; $756b: $54
    cp b                                          ; $756c: $b8

jr_05c_756d:
    sub b                                         ; $756d: $90
    xor a                                         ; $756e: $af
    ld sp, hl                                     ; $756f: $f9
    db $dd                                        ; $7570: $dd
    ld a, e                                       ; $7571: $7b
    cp [hl]                                       ; $7572: $be
    inc d                                         ; $7573: $14
    ld h, l                                       ; $7574: $65
    ld a, e                                       ; $7575: $7b
    rst $18                                       ; $7576: $df
    or h                                          ; $7577: $b4
    dec d                                         ; $7578: $15
    dec h                                         ; $7579: $25
    cp h                                          ; $757a: $bc
    rst $10                                       ; $757b: $d7
    ld a, [$bfe1]                                 ; $757c: $fa $e1 $bf
    nop                                           ; $757f: $00
    sub d                                         ; $7580: $92
    or a                                          ; $7581: $b7
    db $fc                                        ; $7582: $fc
    reti                                          ; $7583: $d9


    ret                                           ; $7584: $c9


    db $fc                                        ; $7585: $fc
    ld c, a                                       ; $7586: $4f
    rst $20                                       ; $7587: $e7
    sub a                                         ; $7588: $97
    ld e, b                                       ; $7589: $58
    and h                                         ; $758a: $a4
    adc l                                         ; $758b: $8d
    ld l, h                                       ; $758c: $6c
    cpl                                           ; $758d: $2f
    add hl, sp                                    ; $758e: $39
    ret c                                         ; $758f: $d8

    inc b                                         ; $7590: $04
    ldh a, [$bc]                                  ; $7591: $f0 $bc
    ret                                           ; $7593: $c9


Call_05c_7594:
    db $fd                                        ; $7594: $fd
    di                                            ; $7595: $f3
    ld [hl], a                                    ; $7596: $77
    sbc h                                         ; $7597: $9c
    xor l                                         ; $7598: $ad
    and h                                         ; $7599: $a4
    ld a, [c]                                     ; $759a: $f2
    ld e, l                                       ; $759b: $5d
    ld a, e                                       ; $759c: $7b
    db $eb                                        ; $759d: $eb
    jr z, jr_05c_756d                             ; $759e: $28 $cd

    call $d4a3                                    ; $75a0: $cd $a3 $d4
    ld sp, $a617                                  ; $75a3: $31 $17 $a6
    ld d, d                                       ; $75a6: $52
    ld h, [hl]                                    ; $75a7: $66
    ld c, l                                       ; $75a8: $4d

Jump_05c_75a9:
    add hl, sp                                    ; $75a9: $39
    ld e, l                                       ; $75aa: $5d
    nop                                           ; $75ab: $00
    sub d                                         ; $75ac: $92
    or a                                          ; $75ad: $b7
    sbc h                                         ; $75ae: $9c
    cp b                                          ; $75af: $b8
    db $dd                                        ; $75b0: $dd
    rst $38                                       ; $75b1: $ff
    ld a, [c]                                     ; $75b2: $f2
    cp $cd                                        ; $75b3: $fe $cd
    ldh a, [$c5]                                  ; $75b5: $f0 $c5
    adc e                                         ; $75b7: $8b
    ld l, c                                       ; $75b8: $69
    rst $38                                       ; $75b9: $ff
    pop bc                                        ; $75ba: $c1
    xor $67                                       ; $75bb: $ee $67
    ld l, e                                       ; $75bd: $6b
    or $49                                        ; $75be: $f6 $49
    call $ce31                                    ; $75c0: $cd $31 $ce
    ld e, b                                       ; $75c3: $58
    ld a, e                                       ; $75c4: $7b
    or e                                          ; $75c5: $b3
    ld d, a                                       ; $75c6: $57
    pop hl                                        ; $75c7: $e1
    or $67                                        ; $75c8: $f6 $67
    ld l, c                                       ; $75ca: $69
    ld h, a                                       ; $75cb: $67
    ld de, $7466                                  ; $75cc: $11 $66 $74
    ld bc, $b792                                  ; $75cf: $01 $92 $b7
    sbc h                                         ; $75d2: $9c
    sub h                                         ; $75d3: $94
    rst $00                                       ; $75d4: $c7
    or c                                          ; $75d5: $b1
    push de                                       ; $75d6: $d5
    inc c                                         ; $75d7: $0c
    sbc e                                         ; $75d8: $9b
    ld d, c                                       ; $75d9: $51
    pop bc                                        ; $75da: $c1
    ld l, b                                       ; $75db: $68
    dec l                                         ; $75dc: $2d
    and [hl]                                      ; $75dd: $a6
    xor l                                         ; $75de: $ad
    ld h, b                                       ; $75df: $60
    and d                                         ; $75e0: $a2
    adc d                                         ; $75e1: $8a
    jr z, @-$19                                   ; $75e2: $28 $e5

    ld [hl], c                                    ; $75e4: $71
    ld d, d                                       ; $75e5: $52
    or h                                          ; $75e6: $b4
    xor l                                         ; $75e7: $ad
    inc b                                         ; $75e8: $04
    or c                                          ; $75e9: $b1
    or $2b                                        ; $75ea: $f6 $2b
    add hl, hl                                    ; $75ec: $29
    jr jr_05c_7642                                ; $75ed: $18 $53

    inc l                                         ; $75ef: $2c
    call $ce31                                    ; $75f0: $cd $31 $ce
    ld e, b                                       ; $75f3: $58
    db $dd                                        ; $75f4: $dd
    rst $30                                       ; $75f5: $f7
    dec h                                         ; $75f6: $25
    ld b, [hl]                                    ; $75f7: $46
    jr nc, @-$59                                  ; $75f8: $30 $a5

    ld c, l                                       ; $75fa: $4d
    add hl, sp                                    ; $75fb: $39
    xor c                                         ; $75fc: $a9
    rst $00                                       ; $75fd: $c7
    ldh a, [$fe]                                  ; $75fe: $f0 $fe
    cpl                                           ; $7600: $2f
    nop                                           ; $7601: $00
    sub d                                         ; $7602: $92
    or a                                          ; $7603: $b7
    sbc h                                         ; $7604: $9c
    cp b                                          ; $7605: $b8
    db $dd                                        ; $7606: $dd
    rst $38                                       ; $7607: $ff
    ld [hl-], a                                   ; $7608: $32
    sbc d                                         ; $7609: $9a
    ld [hl], e                                    ; $760a: $73
    db $fd                                        ; $760b: $fd
    dec a                                         ; $760c: $3d
    ld h, a                                       ; $760d: $67
    ld c, c                                       ; $760e: $49
    cp h                                          ; $760f: $bc
    sbc b                                         ; $7610: $98
    or $1f                                        ; $7611: $f6 $1f
    db $ec                                        ; $7613: $ec
    ld a, [hl]                                    ; $7614: $7e
    or [hl]                                       ; $7615: $b6
    ld h, [hl]                                    ; $7616: $66
    sbc a                                         ; $7617: $9f
    call nc, $e31c                                ; $7618: $d4 $1c $e3
    adc h                                         ; $761b: $8c
    or l                                          ; $761c: $b5
    scf                                           ; $761d: $37
    ld a, e                                       ; $761e: $7b
    dec d                                         ; $761f: $15
    ld l, [hl]                                    ; $7620: $6e
    ld a, a                                       ; $7621: $7f
    sub [hl]                                      ; $7622: $96
    halt                                          ; $7623: $76
    ld d, $61                                     ; $7624: $16 $61
    ld b, [hl]                                    ; $7626: $46
    rla                                           ; $7627: $17
    nop                                           ; $7628: $00
    sub d                                         ; $7629: $92
    or a                                          ; $762a: $b7
    sbc h                                         ; $762b: $9c
    cp b                                          ; $762c: $b8
    db $dd                                        ; $762d: $dd
    rst $38                                       ; $762e: $ff
    ld a, [hl-]                                   ; $762f: $3a
    ld h, e                                       ; $7630: $63
    ld [hl], h                                    ; $7631: $74
    adc a                                         ; $7632: $8f
    rla                                           ; $7633: $17
    cpl                                           ; $7634: $2f
    and [hl]                                      ; $7635: $a6
    db $fd                                        ; $7636: $fd
    rlca                                          ; $7637: $07
    cp e                                          ; $7638: $bb
    sbc a                                         ; $7639: $9f
    xor l                                         ; $763a: $ad
    reti                                          ; $763b: $d9


    daa                                           ; $763c: $27
    dec [hl]                                      ; $763d: $35
    rst $00                                       ; $763e: $c7
    jr c, jr_05c_76a4                             ; $763f: $38 $63

    db $ed                                        ; $7641: $ed

jr_05c_7642:
    call $855e                                    ; $7642: $cd $5e $85
    db $db                                        ; $7645: $db
    sbc a                                         ; $7646: $9f
    and l                                         ; $7647: $a5
    sbc l                                         ; $7648: $9d
    ld b, l                                       ; $7649: $45
    sbc b                                         ; $764a: $98
    pop de                                        ; $764b: $d1
    dec b                                         ; $764c: $05
    nop                                           ; $764d: $00
    sub d                                         ; $764e: $92
    or a                                          ; $764f: $b7
    sbc h                                         ; $7650: $9c
    cp b                                          ; $7651: $b8
    db $dd                                        ; $7652: $dd
    rst $38                                       ; $7653: $ff
    ld [hl-], a                                   ; $7654: $32
    call nz, Call_05c_7383                        ; $7655: $c4 $83 $73
    ei                                            ; $7658: $fb
    reti                                          ; $7659: $d9


    cp a                                          ; $765a: $bf
    ld a, b                                       ; $765b: $78
    ld sp, $3fed                                  ; $765c: $31 $ed $3f
    ret c                                         ; $765f: $d8

    db $fd                                        ; $7660: $fd
    ld l, h                                       ; $7661: $6c
    call $a93e                                    ; $7662: $cd $3e $a9
    add hl, sp                                    ; $7665: $39
    add $19                                       ; $7666: $c6 $19
    ld l, e                                       ; $7668: $6b
    ld l, a                                       ; $7669: $6f
    or $2a                                        ; $766a: $f6 $2a
    call c, Call_000_2cfe                         ; $766c: $dc $fe $2c
    db $ed                                        ; $766f: $ed
    inc l                                         ; $7670: $2c
    jp nz, $2e8c                                  ; $7671: $c2 $8c $2e

    nop                                           ; $7674: $00
    sub d                                         ; $7675: $92
    or a                                          ; $7676: $b7
    cp h                                          ; $7677: $bc
    ld h, e                                       ; $7678: $63
    sbc h                                         ; $7679: $9c
    or c                                          ; $767a: $b1
    or $a5                                        ; $767b: $f6 $a5
    jp nz, $cfed                                  ; $767d: $c2 $ed $cf

    jp nc, $42ce                                  ; $7680: $d2 $ce $42

    cp h                                          ; $7683: $bc
    sbc b                                         ; $7684: $98
    or $1f                                        ; $7685: $f6 $1f
    db $ec                                        ; $7687: $ec
    ld a, [hl]                                    ; $7688: $7e
    or [hl]                                       ; $7689: $b6
    ld d, c                                       ; $768a: $51
    ld [hl-], a                                   ; $768b: $32
    inc a                                         ; $768c: $3c
    ld l, e                                       ; $768d: $6b
    cp l                                          ; $768e: $bd
    rla                                           ; $768f: $17
    nop                                           ; $7690: $00
    sub d                                         ; $7691: $92
    or a                                          ; $7692: $b7
    sbc h                                         ; $7693: $9c
    cp b                                          ; $7694: $b8
    db $dd                                        ; $7695: $dd
    rst $38                                       ; $7696: $ff
    ld h, d                                       ; $7697: $62
    db $e3                                        ; $7698: $e3
    or $07                                        ; $7699: $f6 $07
    db $fc                                        ; $769b: $fc
    ld [c], a                                     ; $769c: $e2
    push bc                                       ; $769d: $c5
    or h                                          ; $769e: $b4
    rst $38                                       ; $769f: $ff
    ld h, b                                       ; $76a0: $60
    rst $30                                       ; $76a1: $f7
    or e                                          ; $76a2: $b3
    dec [hl]                                      ; $76a3: $35

jr_05c_76a4:
    ei                                            ; $76a4: $fb
    and h                                         ; $76a5: $a4
    and $18                                       ; $76a6: $e6 $18
    ld h, a                                       ; $76a8: $67
    xor h                                         ; $76a9: $ac
    cp l                                          ; $76aa: $bd
    reti                                          ; $76ab: $d9


    xor e                                         ; $76ac: $ab
    ld [hl], b                                    ; $76ad: $70
    ei                                            ; $76ae: $fb
    or e                                          ; $76af: $b3
    or h                                          ; $76b0: $b4
    or e                                          ; $76b1: $b3
    ld [$ba33], sp                                ; $76b2: $08 $33 $ba
    nop                                           ; $76b5: $00
    sub d                                         ; $76b6: $92
    or a                                          ; $76b7: $b7
    sbc h                                         ; $76b8: $9c
    inc bc                                        ; $76b9: $03
    ld l, l                                       ; $76ba: $6d
    cp e                                          ; $76bb: $bb
    add a                                         ; $76bc: $87
    adc $8f                                       ; $76bd: $ce $8f
    di                                            ; $76bf: $f3
    ld sp, hl                                     ; $76c0: $f9
    dec hl                                        ; $76c1: $2b
    adc a                                         ; $76c2: $8f
    sub e                                         ; $76c3: $93
    ld h, d                                       ; $76c4: $62
    ccf                                           ; $76c5: $3f
    cp e                                          ; $76c6: $bb
    nop                                           ; $76c7: $00
    sub d                                         ; $76c8: $92
    or a                                          ; $76c9: $b7
    sbc h                                         ; $76ca: $9c
    cp b                                          ; $76cb: $b8
    db $dd                                        ; $76cc: $dd
    rst $38                                       ; $76cd: $ff

Jump_05c_76ce:
    sbc d                                         ; $76ce: $9a
    ld a, b                                       ; $76cf: $78
    ei                                            ; $76d0: $fb
    cp $ce                                        ; $76d1: $fe $ce
    db $ed                                        ; $76d3: $ed
    ld h, a                                       ; $76d4: $67
    rst $38                                       ; $76d5: $ff
    ld [c], a                                     ; $76d6: $e2
    push bc                                       ; $76d7: $c5
    or h                                          ; $76d8: $b4
    rst $38                                       ; $76d9: $ff
    ld h, b                                       ; $76da: $60
    rst $30                                       ; $76db: $f7
    or e                                          ; $76dc: $b3
    dec [hl]                                      ; $76dd: $35
    ei                                            ; $76de: $fb
    and h                                         ; $76df: $a4
    and $18                                       ; $76e0: $e6 $18
    ld h, a                                       ; $76e2: $67
    xor h                                         ; $76e3: $ac
    cp l                                          ; $76e4: $bd
    reti                                          ; $76e5: $d9


    xor e                                         ; $76e6: $ab
    ld [hl], b                                    ; $76e7: $70
    ei                                            ; $76e8: $fb
    or e                                          ; $76e9: $b3
    or h                                          ; $76ea: $b4
    or e                                          ; $76eb: $b3
    ld [$ba33], sp                                ; $76ec: $08 $33 $ba
    nop                                           ; $76ef: $00
    sub d                                         ; $76f0: $92
    or a                                          ; $76f1: $b7
    sbc h                                         ; $76f2: $9c
    cp b                                          ; $76f3: $b8
    db $dd                                        ; $76f4: $dd
    rst $38                                       ; $76f5: $ff
    or d                                          ; $76f6: $b2
    jr c, jr_05c_7700                             ; $76f7: $38 $07

    ld e, a                                       ; $76f9: $5f
    cp h                                          ; $76fa: $bc
    sbc b                                         ; $76fb: $98
    or $1f                                        ; $76fc: $f6 $1f
    db $ec                                        ; $76fe: $ec
    ld a, [hl]                                    ; $76ff: $7e

jr_05c_7700:
    or [hl]                                       ; $7700: $b6
    ld h, [hl]                                    ; $7701: $66
    sbc a                                         ; $7702: $9f
    call nc, $e31c                                ; $7703: $d4 $1c $e3

jr_05c_7706:
    adc h                                         ; $7706: $8c
    or l                                          ; $7707: $b5
    scf                                           ; $7708: $37
    ld a, e                                       ; $7709: $7b
    dec d                                         ; $770a: $15
    ld l, [hl]                                    ; $770b: $6e
    ld a, a                                       ; $770c: $7f
    sub [hl]                                      ; $770d: $96
    halt                                          ; $770e: $76
    ld d, $61                                     ; $770f: $16 $61
    ld b, [hl]                                    ; $7711: $46
    rla                                           ; $7712: $17
    nop                                           ; $7713: $00
    sub d                                         ; $7714: $92
    or a                                          ; $7715: $b7
    db $fc                                        ; $7716: $fc
    db $e3                                        ; $7717: $e3
    xor h                                         ; $7718: $ac
    and $18                                       ; $7719: $e6 $18
    ld h, a                                       ; $771b: $67
    xor h                                         ; $771c: $ac
    db $fd                                        ; $771d: $fd
    or h                                          ; $771e: $b4
    push de                                       ; $771f: $d5
    adc h                                         ; $7720: $8c
    ld [hl], h                                    ; $7721: $74
    cp e                                          ; $7722: $bb
    jp hl                                         ; $7723: $e9


    and [hl]                                      ; $7724: $a6
    ld [hl], e                                    ; $7725: $73
    ld c, b                                       ; $7726: $48
    ld [hl], e                                    ; $7727: $73
    sbc h                                         ; $7728: $9c
    cp $b5                                        ; $7729: $fe $b5

jr_05c_772b:
    jr z, jr_05c_7706                             ; $772b: $28 $d9

    add [hl]                                      ; $772d: $86
    cp a                                          ; $772e: $bf
    ld [hl], l                                    ; $772f: $75
    ld bc, $b70e                                  ; $7730: $01 $0e $b7
    adc c                                         ; $7733: $89
    sub h                                         ; $7734: $94
    cp $39                                        ; $7735: $fe $39
    jp $bfec                                      ; $7737: $c3 $ec $bf


    db $e4                                        ; $773a: $e4
    and c                                         ; $773b: $a1
    and c                                         ; $773c: $a1
    inc sp                                        ; $773d: $33
    xor $b0                                       ; $773e: $ee $b0
    db $ed                                        ; $7740: $ed
    xor a                                         ; $7741: $af
    jp c, $e52f                                   ; $7742: $da $2f $e5

    inc bc                                        ; $7745: $03
    ld l, l                                       ; $7746: $6d
    db $ed                                        ; $7747: $ed
    ld hl, $8a5f                                  ; $7748: $21 $5f $8a
    ld a, [hl+]                                   ; $774b: $2a
    ld [$9acc], a                                 ; $774c: $ea $cc $9a
    sub h                                         ; $774f: $94
    adc [hl]                                      ; $7750: $8e
    dec [hl]                                      ; $7751: $35
    rst $38                                       ; $7752: $ff
    add a                                         ; $7753: $87
    db $dd                                        ; $7754: $dd
    rst $38                                       ; $7755: $ff
    daa                                           ; $7756: $27
    sub $ec                                       ; $7757: $d6 $ec
    sub l                                         ; $7759: $95
    and l                                         ; $775a: $a5
    sub b                                         ; $775b: $90
    jr z, jr_05c_772b                             ; $775c: $28 $cd

    rra                                           ; $775e: $1f

jr_05c_775f:
    sub b                                         ; $775f: $90
    jr z, jr_05c_775f                             ; $7760: $28 $fd

    adc $af                                       ; $7762: $ce $af
    cp a                                          ; $7764: $bf
    nop                                           ; $7765: $00
    sub d                                         ; $7766: $92
    or a                                          ; $7767: $b7
    inc a                                         ; $7768: $3c
    add e                                         ; $7769: $83
    pop bc                                        ; $776a: $c1
    dec de                                        ; $776b: $1b
    and l                                         ; $776c: $a5
    db $f4                                        ; $776d: $f4
    sbc c                                         ; $776e: $99
    sbc a                                         ; $776f: $9f
    dec l                                         ; $7770: $2d
    adc h                                         ; $7771: $8c

jr_05c_7772:
    dec bc                                        ; $7772: $0b
    adc c                                         ; $7773: $89
    ld c, d                                       ; $7774: $4a
    ld [$f0b7], a                                 ; $7775: $ea $b7 $f0
    ld c, e                                       ; $7778: $4b
    inc de                                        ; $7779: $13
    daa                                           ; $777a: $27
    sub $7f                                       ; $777b: $d6 $7f
    xor c                                         ; $777d: $a9
    ld a, [hl]                                    ; $777e: $7e
    call Call_05c_781f                            ; $777f: $cd $1f $78
    sub $a2                                       ; $7782: $d6 $a2
    sub h                                         ; $7784: $94
    adc [hl]                                      ; $7785: $8e
    dec [hl]                                      ; $7786: $35
    rst $38                                       ; $7787: $ff
    add a                                         ; $7788: $87
    pop bc                                        ; $7789: $c1
    jr c, jr_05c_7772                             ; $778a: $38 $e6

    inc e                                         ; $778c: $1c
    ld de, $f9a5                                  ; $778d: $11 $a5 $f9
    ld a, [hl]                                    ; $7790: $7e
    ld b, a                                       ; $7791: $47
    call nc, $005e                                ; $7792: $d4 $5e $00
    sub d                                         ; $7795: $92
    or a                                          ; $7796: $b7
    ld l, [hl]                                    ; $7797: $6e
    ld l, a                                       ; $7798: $6f
    pop hl                                        ; $7799: $e1
    dec hl                                        ; $779a: $2b
    dec e                                         ; $779b: $1d
    ld l, e                                       ; $779c: $6b
    cp $0f                                        ; $779d: $fe $0f
    db $eb                                        ; $779f: $eb
    add c                                         ; $77a0: $81
    rst $30                                       ; $77a1: $f7
    or e                                          ; $77a2: $b3
    ld c, l                                       ; $77a3: $4d
    ld a, [bc]                                    ; $77a4: $0a
    add $f9                                       ; $77a5: $c6 $f9
    jp nz, Jump_000_1cd2                          ; $77a7: $c2 $d2 $1c

    ld a, b                                       ; $77aa: $78
    adc $68                                       ; $77ab: $ce $68
    ld h, c                                       ; $77ad: $61
    ld [hl], a                                    ; $77ae: $77
    sbc h                                         ; $77af: $9c
    ld d, c                                       ; $77b0: $51
    ld a, [$5f9d]                                 ; $77b1: $fa $9d $5f
    ld a, a                                       ; $77b4: $7f
    ld bc, $b792                                  ; $77b5: $01 $92 $b7
    ld c, $f6                                     ; $77b8: $0e $f6
    or $7e                                        ; $77ba: $f6 $7e
    sbc b                                         ; $77bc: $98
    inc sp                                        ; $77bd: $33
    ld h, a                                       ; $77be: $67
    adc h                                         ; $77bf: $8c
    cp $2c                                        ; $77c0: $fe $2c
    db $ed                                        ; $77c2: $ed
    push hl                                       ; $77c3: $e5
    ld a, [hl+]                                   ; $77c4: $2a
    ld sp, hl                                     ; $77c5: $f9
    pop bc                                        ; $77c6: $c1
    add [hl]                                      ; $77c7: $86
    push af                                       ; $77c8: $f5
    jp $017f                                      ; $77c9: $c3 $7f $01


    sub d                                         ; $77cc: $92
    or a                                          ; $77cd: $b7
    inc a                                         ; $77ce: $3c

jr_05c_77cf:
    ld h, e                                       ; $77cf: $63
    call Call_000_31ff                            ; $77d0: $cd $ff $31
    dec l                                         ; $77d3: $2d
    ld c, d                                       ; $77d4: $4a
    jp hl                                         ; $77d5: $e9


    sbc a                                         ; $77d6: $9f
    or e                                          ; $77d7: $b3
    push de                                       ; $77d8: $d5
    jr jr_05c_7842                                ; $77d9: $18 $67

    rst $28                                       ; $77db: $ef
    jr z, jr_05c_77cf                             ; $77dc: $28 $f1

    ld a, b                                       ; $77de: $78
    add $e7                                       ; $77df: $c6 $e7
    ret nc                                        ; $77e1: $d0

    ld h, e                                       ; $77e2: $63
    or a                                          ; $77e3: $b7

jr_05c_77e4:
    db $dd                                        ; $77e4: $dd
    jr z, @-$05                                   ; $77e5: $28 $f9

    inc hl                                        ; $77e7: $23
    adc l                                         ; $77e8: $8d
    jr z, jr_05c_7803                             ; $77e9: $28 $18

    db $d3                                        ; $77eb: $d3
    ld a, [hl]                                    ; $77ec: $7e
    ld hl, sp+$2f                                 ; $77ed: $f8 $2f
    nop                                           ; $77ef: $00
    sub d                                         ; $77f0: $92
    or a                                          ; $77f1: $b7
    ret nc                                        ; $77f2: $d0

    ld h, l                                       ; $77f3: $65
    ld a, e                                       ; $77f4: $7b
    rst $18                                       ; $77f5: $df
    or h                                          ; $77f6: $b4
    dec d                                         ; $77f7: $15
    and l                                         ; $77f8: $a5
    ld [hl], h                                    ; $77f9: $74
    xor h                                         ; $77fa: $ac
    ld sp, hl                                     ; $77fb: $f9
    ccf                                           ; $77fc: $3f
    inc c                                         ; $77fd: $0c
    cp e                                          ; $77fe: $bb
    db $e3                                        ; $77ff: $e3
    adc h                                         ; $7800: $8c
    ld d, d                                       ; $7801: $52
    rrca                                          ; $7802: $0f

jr_05c_7803:
    cp h                                          ; $7803: $bc
    sbc a                                         ; $7804: $9f
    pop hl                                        ; $7805: $e1
    sub $68                                       ; $7806: $d6 $68
    ld a, c                                       ; $7808: $79
    rst $08                                       ; $7809: $cf
    or [hl]                                       ; $780a: $b6
    ld a, e                                       ; $780b: $7b
    dec bc                                        ; $780c: $0b
    or a                                          ; $780d: $b7
    rst $38                                       ; $780e: $ff
    ld [bc], a                                    ; $780f: $02
    sub d                                         ; $7810: $92
    or a                                          ; $7811: $b7
    ld c, $b7                                     ; $7812: $0e $b7
    adc c                                         ; $7814: $89
    sub h                                         ; $7815: $94
    cp $39                                        ; $7816: $fe $39
    jp $bfec                                      ; $7818: $c3 $ec $bf


    db $e4                                        ; $781b: $e4
    and c                                         ; $781c: $a1
    and c                                         ; $781d: $a1
    inc sp                                        ; $781e: $33

Call_05c_781f:
    xor $b0                                       ; $781f: $ee $b0
    db $ed                                        ; $7821: $ed
    xor a                                         ; $7822: $af
    jp c, Jump_05c_452f                           ; $7823: $da $2f $45

    dec d                                         ; $7826: $15
    ld [hl], l                                    ; $7827: $75
    ld h, [hl]                                    ; $7828: $66
    ld c, l                                       ; $7829: $4d
    ld a, [hl+]                                   ; $782a: $2a
    db $f4                                        ; $782b: $f4
    ld h, e                                       ; $782c: $63
    ld l, a                                       ; $782d: $6f
    ld h, a                                       ; $782e: $67
    xor $37                                       ; $782f: $ee $37
    ld a, e                                       ; $7831: $7b
    reti                                          ; $7832: $d9


    add [hl]                                      ; $7833: $86
    cp a                                          ; $7834: $bf
    and l                                         ; $7835: $a5
    ld a, d                                       ; $7836: $7a
    rst $18                                       ; $7837: $df
    rst $38                                       ; $7838: $ff
    cp a                                          ; $7839: $bf
    rst $10                                       ; $783a: $d7
    jp nz, $ddec                                  ; $783b: $c2 $ec $dd

    ret nc                                        ; $783e: $d0

    call nz, $8773                                ; $783f: $c4 $73 $87

jr_05c_7842:
    ldh [$97], a                                  ; $7842: $e0 $97
    ccf                                           ; $7844: $3f
    ldh a, [$ac]                                  ; $7845: $f0 $ac
    inc l                                         ; $7847: $2c
    and $a8                                       ; $7848: $e6 $a8
    sbc $bf                                       ; $784a: $de $bf
    nop                                           ; $784c: $00
    sub d                                         ; $784d: $92
    or a                                          ; $784e: $b7
    inc a                                         ; $784f: $3c
    ld h, e                                       ; $7850: $63
    call Call_05c_61ff                            ; $7851: $cd $ff $61
    jr nc, jr_05c_77e4                            ; $7854: $30 $8e

    add hl, sp                                    ; $7856: $39
    ld b, a                                       ; $7857: $47
    ld [$12ba], sp                                ; $7858: $08 $ba $12
    ld a, [hl-]                                   ; $785b: $3a
    ld e, a                                       ; $785c: $5f
    or l                                          ; $785d: $b5
    and l                                         ; $785e: $a5
    cp c                                          ; $785f: $b9
    db $fd                                        ; $7860: $fd
    ld [hl], e                                    ; $7861: $73
    di                                            ; $7862: $f3
    adc l                                         ; $7863: $8d
    ld [de], a                                    ; $7864: $12
    adc h                                         ; $7865: $8c
    ld l, c                                       ; $7866: $69
    ccf                                           ; $7867: $3f
    db $fc                                        ; $7868: $fc
    rla                                           ; $7869: $17
    nop                                           ; $786a: $00
    sub d                                         ; $786b: $92
    or a                                          ; $786c: $b7
    ld e, $e3                                     ; $786d: $1e $e3
    ld a, [hl+]                                   ; $786f: $2a
    jp z, $bef6                                   ; $7870: $ca $f6 $be

    ld l, c                                       ; $7873: $69
    dec l                                         ; $7874: $2d
    adc d                                         ; $7875: $8a
    db $e4                                        ; $7876: $e4
    db $fd                                        ; $7877: $fd
    db $db                                        ; $7878: $db
    sbc [hl]                                      ; $7879: $9e

jr_05c_787a:
    or l                                          ; $787a: $b5
    cp c                                          ; $787b: $b9
    ld [hl], l                                    ; $787c: $75
    ld bc, $b792                                  ; $787d: $01 $92 $b7
    db $fc                                        ; $7880: $fc
    dec de                                        ; $7881: $1b
    sub b                                         ; $7882: $90
    add sp, -$5a                                  ; $7883: $e8 $a6
    sbc h                                         ; $7885: $9c
    xor h                                         ; $7886: $ac
    ld d, a                                       ; $7887: $57
    cp a                                          ; $7888: $bf
    add l                                         ; $7889: $85
    xor a                                         ; $788a: $af
    inc a                                         ; $788b: $3c
    ld c, [hl]                                    ; $788c: $4e
    adc d                                         ; $788d: $8a
    ld c, c                                       ; $788e: $49
    pop bc                                        ; $788f: $c1
    jr c, jr_05c_78f1                             ; $7890: $38 $5f

    ld e, b                                       ; $7892: $58
    jp nz, $b5aa                                  ; $7893: $c2 $aa $b5

    ld e, $35                                     ; $7896: $1e $35
    ld e, d                                       ; $7898: $5a
    rlca                                          ; $7899: $07
    or a                                          ; $789a: $b7
    ld l, l                                       ; $789b: $6d
    rst $28                                       ; $789c: $ef
    rst $38                                       ; $789d: $ff
    ld [de], a                                    ; $789e: $12
    ld c, h                                       ; $789f: $4c
    db $dd                                        ; $78a0: $dd
    ld a, e                                       ; $78a1: $7b
    ld l, b                                       ; $78a2: $68
    ld l, l                                       ; $78a3: $6d

Jump_05c_78a4:
    ld [c], a                                     ; $78a4: $e2
    call nz, Call_000_28b5                        ; $78a5: $c4 $b5 $28
    reti                                          ; $78a8: $d9


    ld b, b                                       ; $78a9: $40
    jr c, jr_05c_787a                             ; $78aa: $38 $ce

    adc [hl]                                      ; $78ac: $8e
    ld l, c                                       ; $78ad: $69
    ld d, c                                       ; $78ae: $51
    rla                                           ; $78af: $17
    nop                                           ; $78b0: $00
    sub d                                         ; $78b1: $92
    or a                                          ; $78b2: $b7
    ret nc                                        ; $78b3: $d0

    ld l, h                                       ; $78b4: $6c
    cp e                                          ; $78b5: $bb
    ld l, c                                       ; $78b6: $69
    ld c, e                                       ; $78b7: $4b
    ld a, b                                       ; $78b8: $78
    rst $38                                       ; $78b9: $ff
    ld sp, hl                                     ; $78ba: $f9
    rst $28                                       ; $78bb: $ef
    or c                                          ; $78bc: $b1
    dec d                                         ; $78bd: $15
    and l                                         ; $78be: $a5
    inc a                                         ; $78bf: $3c
    ld c, [hl]                                    ; $78c0: $4e
    adc d                                         ; $78c1: $8a
    ld c, c                                       ; $78c2: $49
    pop bc                                        ; $78c3: $c1
    jr c, jr_05c_7925                             ; $78c4: $38 $5f

    sub e                                         ; $78c6: $93
    or d                                          ; $78c7: $b2
    xor $d5                                       ; $78c8: $ee $d5
    dec e                                         ; $78ca: $1d
    sub b                                         ; $78cb: $90
    ld sp, $5fec                                  ; $78cc: $31 $ec $5f
    jp hl                                         ; $78cf: $e9


    ld [hl], a                                    ; $78d0: $77
    adc a                                         ; $78d1: $8f
    ld a, [$0baf]                                 ; $78d2: $fa $af $0b
    nop                                           ; $78d5: $00
    sub d                                         ; $78d6: $92
    or a                                          ; $78d7: $b7
    ld e, $47                                     ; $78d8: $1e $47
    dec [hl]                                      ; $78da: $35
    push hl                                       ; $78db: $e5
    dec de                                        ; $78dc: $1b
    and l                                         ; $78dd: $a5
    inc [hl]                                      ; $78de: $34
    ld [hl], d                                    ; $78df: $72
    or h                                          ; $78e0: $b4
    adc [hl]                                      ; $78e1: $8e
    jp nc, $cb7c                                  ; $78e2: $d2 $7c $cb

    cp a                                          ; $78e5: $bf
    ei                                            ; $78e6: $fb
    pop hl                                        ; $78e7: $e1
    cp a                                          ; $78e8: $bf
    nop                                           ; $78e9: $00
    sub d                                         ; $78ea: $92
    or a                                          ; $78eb: $b7
    ld a, h                                       ; $78ec: $7c
    ld h, e                                       ; $78ed: $63
    db $eb                                        ; $78ee: $eb
    or a                                          ; $78ef: $b7
    and d                                         ; $78f0: $a2

jr_05c_78f1:
    inc [hl]                                      ; $78f1: $34
    ld e, c                                       ; $78f2: $59
    db $ec                                        ; $78f3: $ec
    sbc h                                         ; $78f4: $9c
    ld a, a                                       ; $78f5: $7f
    ld a, [hl]                                    ; $78f6: $7e
    dec hl                                        ; $78f7: $2b
    ld [$f412], a                                 ; $78f8: $ea $12 $f4
    ld e, c                                       ; $78fb: $59
    cp c                                          ; $78fc: $b9
    dec e                                         ; $78fd: $1d
    rra                                           ; $78fe: $1f
    ld e, a                                       ; $78ff: $5f
    or d                                          ; $7900: $b2
    ld a, a                                       ; $7901: $7f
    ld d, $e7                                     ; $7902: $16 $e7
    db $fc                                        ; $7904: $fc
    dec h                                         ; $7905: $25
    cp $df                                        ; $7906: $fe $df
    cp $fc                                        ; $7908: $fe $fc
    ld [hl], l                                    ; $790a: $75
    adc a                                         ; $790b: $8f
    pop de                                        ; $790c: $d1
    db $fd                                        ; $790d: $fd
    rst $30                                       ; $790e: $f7
    ld a, a                                       ; $790f: $7f
    add hl, hl                                    ; $7910: $29
    and [hl]                                      ; $7911: $a6
    ld h, l                                       ; $7912: $65
    dec d                                         ; $7913: $15
    db $db                                        ; $7914: $db
    inc h                                         ; $7915: $24
    ld a, a                                       ; $7916: $7f
    jr nc, jr_05c_7951                            ; $7917: $30 $38

    jp nc, $185e                                  ; $7919: $d2 $5e $18

    or a                                          ; $791c: $b7
    ld e, a                                       ; $791d: $5f
    ld a, $32                                     ; $791e: $3e $32
    ei                                            ; $7920: $fb
    sbc l                                         ; $7921: $9d

jr_05c_7922:
    or [hl]                                       ; $7922: $b6
    rla                                           ; $7923: $17
    nop                                           ; $7924: $00

jr_05c_7925:
    sub d                                         ; $7925: $92
    or a                                          ; $7926: $b7
    sbc [hl]                                      ; $7927: $9e
    cp $7c                                        ; $7928: $fe $7c
    db $eb                                        ; $792a: $eb
    or c                                          ; $792b: $b1
    cp d                                          ; $792c: $ba
    add e                                         ; $792d: $83
    ld b, l                                       ; $792e: $45
    ld d, l                                       ; $792f: $55
    ld l, h                                       ; $7930: $6c
    inc hl                                        ; $7931: $23
    sub [hl]                                      ; $7932: $96
    ldh [$d7], a                                  ; $7933: $e0 $d7
    dec a                                         ; $7935: $3d
    ld b, [hl]                                    ; $7936: $46
    rst $30                                       ; $7937: $f7
    ld l, d                                       ; $7938: $6a
    db $db                                        ; $7939: $db
    and d                                         ; $793a: $a2
    adc h                                         ; $793b: $8c
    inc [hl]                                      ; $793c: $34
    pop af                                        ; $793d: $f1
    ret nz                                        ; $793e: $c0

    ccf                                           ; $793f: $3f
    ld l, l                                       ; $7940: $6d
    cpl                                           ; $7941: $2f
    nop                                           ; $7942: $00
    sub d                                         ; $7943: $92
    or a                                          ; $7944: $b7
    cp h                                          ; $7945: $bc
    sub c                                         ; $7946: $91
    ld l, [hl]                                    ; $7947: $6e

Jump_05c_7948:
    rst $30                                       ; $7948: $f7
    jp z, Jump_05c_609d                           ; $7949: $ca $9d $60

    cp l                                          ; $794c: $bd
    ld hl, $b077                                  ; $794d: $21 $77 $b0
    ld a, e                                       ; $7950: $7b

jr_05c_7951:
    ld c, e                                       ; $7951: $4b
    jr nc, jr_05c_7922                            ; $7952: $30 $ce

    rst $10                                       ; $7954: $d7
    db $fd                                        ; $7955: $fd
    and e                                         ; $7956: $a3
    call nz, Call_05c_467e                        ; $7957: $c4 $7e $46
    db $f4                                        ; $795a: $f4
    dec b                                         ; $795b: $05
    nop                                           ; $795c: $00
    sub d                                         ; $795d: $92
    or a                                          ; $795e: $b7
    sbc h                                         ; $795f: $9c
    cp a                                          ; $7960: $bf
    or d                                          ; $7961: $b2
    ret c                                         ; $7962: $d8

    or [hl]                                       ; $7963: $b6
    cp b                                          ; $7964: $b8
    xor c                                         ; $7965: $a9
    db $e4                                        ; $7966: $e4
    db $e3                                        ; $7967: $e3
    adc $ff                                       ; $7968: $ce $ff
    and h                                         ; $796a: $a4
    ldh [$d7], a                                  ; $796b: $e0 $d7
    dec a                                         ; $796d: $3d
    ld b, [hl]                                    ; $796e: $46
    rst $30                                       ; $796f: $f7
    xor d                                         ; $7970: $aa
    ld b, d                                       ; $7971: $42
    di                                            ; $7972: $f3
    ld [hl], a                                    ; $7973: $77
    adc $95                                       ; $7974: $ce $95
    db $ed                                        ; $7976: $ed
    sbc [hl]                                      ; $7977: $9e
    ret c                                         ; $7978: $d8

    ld l, c                                       ; $7979: $69
    ld a, e                                       ; $797a: $7b
    ld bc, $b792                                  ; $797b: $01 $92 $b7
    ret nc                                        ; $797e: $d0

    dec l                                         ; $797f: $2d
    inc a                                         ; $7980: $3c
    and c                                         ; $7981: $a1
    ld a, h                                       ; $7982: $7c
    db $e3                                        ; $7983: $e3
    sub b                                         ; $7984: $90
    ld c, $57                                     ; $7985: $0e $57
    sub $54                                       ; $7987: $d6 $54
    ld e, c                                       ; $7989: $59
    xor e                                         ; $798a: $ab
    xor c                                         ; $798b: $a9
    ld c, c                                       ; $798c: $49
    inc de                                        ; $798d: $13
    ld e, c                                       ; $798e: $59
    rst $30                                       ; $798f: $f7
    cp $05                                        ; $7990: $fe $05
    nop                                           ; $7992: $00
    sbc h                                         ; $7993: $9c
    ld e, e                                       ; $7994: $5b
    db $e3                                        ; $7995: $e3
    sbc h                                         ; $7996: $9c
    ld d, a                                       ; $7997: $57
    xor h                                         ; $7998: $ac
    ldh a, [$84]                                  ; $7999: $f0 $84
    ld h, $b2                                     ; $799b: $26 $b2
    xor $80                                       ; $799d: $ee $80
    rst $38                                       ; $799f: $ff
    ld [bc], a                                    ; $79a0: $02
    cp h                                          ; $79a1: $bc
    sub h                                         ; $79a2: $94
    dec [hl]                                      ; $79a3: $35
    xor c                                         ; $79a4: $a9
    jp hl                                         ; $79a5: $e9


    and [hl]                                      ; $79a6: $a6
    jp nc, $d644                                  ; $79a7: $d2 $44 $d6

    ld e, e                                       ; $79aa: $5b
    ld c, d                                       ; $79ab: $4a
    inc sp                                        ; $79ac: $33
    xor [hl]                                      ; $79ad: $ae
    add hl, sp                                    ; $79ae: $39
    add hl, hl                                    ; $79af: $29
    or e                                          ; $79b0: $b3
    and [hl]                                      ; $79b1: $a6
    dec bc                                        ; $79b2: $0b
    nop                                           ; $79b3: $00
    ld l, [hl]                                    ; $79b4: $6e
    sbc a                                         ; $79b5: $9f
    add hl, de                                    ; $79b6: $19
    rst $30                                       ; $79b7: $f7
    ld a, $00                                     ; $79b8: $3e $00
    ld e, $e3                                     ; $79ba: $1e $e3
    or [hl]                                       ; $79bc: $b6
    adc l                                         ; $79bd: $8d
    ld b, $bc                                     ; $79be: $06 $bc
    bit 6, b                                      ; $79c0: $cb $70
    ld c, h                                       ; $79c2: $4c
    adc e                                         ; $79c3: $8b
    ld b, $9c                                     ; $79c4: $06 $9c
    inc bc                                        ; $79c6: $03
    pop hl                                        ; $79c7: $e1
    rra                                           ; $79c8: $1f
    db $d3                                        ; $79c9: $d3
    and d                                         ; $79ca: $a2
    ld bc, $55d0                                  ; $79cb: $01 $d0 $55
    jp Jump_05c_4c7a                              ; $79ce: $c3 $7a $4c


    adc e                                         ; $79d1: $8b
    ld b, $5e                                     ; $79d2: $06 $5e
    sbc l                                         ; $79d4: $9d
    ld e, b                                       ; $79d5: $58
    adc e                                         ; $79d6: $8b
    ld b, $0e                                     ; $79d7: $06 $0e
    sbc a                                         ; $79d9: $9f
    ld a, l                                       ; $79da: $7d
    push af                                       ; $79db: $f5
    rst $20                                       ; $79dc: $e7
    rst $18                                       ; $79dd: $df
    nop                                           ; $79de: $00

jr_05c_79df:
    db $fc                                        ; $79df: $fc
    reti                                          ; $79e0: $d9


    ret                                           ; $79e1: $c9


    db $fc                                        ; $79e2: $fc
    ld c, a                                       ; $79e3: $4f
    rst $20                                       ; $79e4: $e7
    inc bc                                        ; $79e5: $03
    ld a, h                                       ; $79e6: $7c
    ld h, e                                       ; $79e7: $63
    ret c                                         ; $79e8: $d8

    ld c, [hl]                                    ; $79e9: $4e
    ld l, h                                       ; $79ea: $6c
    nop                                           ; $79eb: $00
    inc a                                         ; $79ec: $3c
    ld h, e                                       ; $79ed: $63
    call Call_05c_61ff                            ; $79ee: $cd $ff $61
    nop                                           ; $79f1: $00
    ld a, h                                       ; $79f2: $7c
    inc bc                                        ; $79f3: $03
    ld hl, $f758                                  ; $79f4: $21 $58 $f7
    jr @-$71                                      ; $79f7: $18 $8d

    db $d3                                        ; $79f9: $d3
    and d                                         ; $79fa: $a2
    ld bc, $1cbc                                  ; $79fb: $01 $bc $1c
    cp h                                          ; $79fe: $bc
    nop                                           ; $79ff: $00
    sbc h                                         ; $7a00: $9c
    set 7, h                                      ; $7a01: $cb $fc
    ld l, l                                       ; $7a03: $6d
    nop                                           ; $7a04: $00
    ld e, $73                                     ; $7a05: $1e $73
    ld h, l                                       ; $7a07: $65
    sbc l                                         ; $7a08: $9d
    dec l                                         ; $7a09: $2d
    nop                                           ; $7a0a: $00
    inc e                                         ; $7a0b: $1c
    sub $d1                                       ; $7a0c: $d6 $d1
    rst $38                                       ; $7a0e: $ff
    dec [hl]                                      ; $7a0f: $35
    ld de, $000a                                  ; $7a10: $11 $0a $00
    sub d                                         ; $7a13: $92
    call nz, $9d9b                                ; $7a14: $c4 $9b $9d
    ld b, e                                       ; $7a17: $43
    nop                                           ; $7a18: $00
    sub d                                         ; $7a19: $92
    inc b                                         ; $7a1a: $04
    cp l                                          ; $7a1b: $bd
    nop                                           ; $7a1c: $00
    inc e                                         ; $7a1d: $1c
    push hl                                       ; $7a1e: $e5
    cp a                                          ; $7a1f: $bf
    ld a, d                                       ; $7a20: $7a
    rst $00                                       ; $7a21: $c7
    ld a, h                                       ; $7a22: $7c
    db $eb                                        ; $7a23: $eb
    push de                                       ; $7a24: $d5
    add hl, de                                    ; $7a25: $19
    inc de                                        ; $7a26: $13
    call $1b9e                                    ; $7a27: $cd $9e $1b
    nop                                           ; $7a2a: $00
    ld e, $b2                                     ; $7a2b: $1e $b2
    inc a                                         ; $7a2d: $3c
    ld a, [$294b]                                 ; $7a2e: $fa $4b $29
    sbc [hl]                                      ; $7a31: $9e
    ld a, h                                       ; $7a32: $7c
    ld e, e                                       ; $7a33: $5b
    sbc b                                         ; $7a34: $98
    ld a, a                                       ; $7a35: $7f
    xor e                                         ; $7a36: $ab
    pop de                                        ; $7a37: $d1
    ld d, [hl]                                    ; $7a38: $56
    dec a                                         ; $7a39: $3d
    ld e, b                                       ; $7a3a: $58
    cp $e7                                        ; $7a3b: $fe $e7
    xor h                                         ; $7a3d: $ac
    db $ed                                        ; $7a3e: $ed
    ld [hl], e                                    ; $7a3f: $73
    inc bc                                        ; $7a40: $03
    cp h                                          ; $7a41: $bc
    ld h, e                                       ; $7a42: $63
    cp [hl]                                       ; $7a43: $be
    ld a, d                                       ; $7a44: $7a
    and e                                         ; $7a45: $a3
    adc c                                         ; $7a46: $89
    sub d                                         ; $7a47: $92
    cp d                                          ; $7a48: $ba
    or a                                          ; $7a49: $b7
    ld c, c                                       ; $7a4a: $49
    ld c, l                                       ; $7a4b: $4d
    scf                                           ; $7a4c: $37
    sub l                                         ; $7a4d: $95
    jr nc, jr_05c_79df                            ; $7a4e: $30 $8f

    ld d, d                                       ; $7a50: $52
    rst $38                                       ; $7a51: $ff
    db $fc                                        ; $7a52: $fc
    ld a, d                                       ; $7a53: $7a
    ld sp, hl                                     ; $7a54: $f9
    cp e                                          ; $7a55: $bb
    daa                                           ; $7a56: $27
    ld [bc], a                                    ; $7a57: $02
    ld c, d                                       ; $7a58: $4a
    ret nc                                        ; $7a59: $d0

    xor l                                         ; $7a5a: $ad
    rst $18                                       ; $7a5b: $df
    ld a, [$5ff9]                                 ; $7a5c: $fa $f9 $5f
    or d                                          ; $7a5f: $b2
    dec l                                         ; $7a60: $2d
    cp d                                          ; $7a61: $ba
    nop                                           ; $7a62: $00
    ld c, $76                                     ; $7a63: $0e $76
    ld c, e                                       ; $7a65: $4b
    cp $1f                                        ; $7a66: $fe $1f
    jr jr_05c_7ab5                                ; $7a68: $18 $4b

    ld h, a                                       ; $7a6a: $67
    call z, Call_000_1eed                         ; $7a6b: $cc $ed $1e
    ldh a, [$0b]                                  ; $7a6e: $f0 $0b
    di                                            ; $7a70: $f3
    ld a, l                                       ; $7a71: $7d
    ld l, [hl]                                    ; $7a72: $6e
    nop                                           ; $7a73: $00
    ld c, $89                                     ; $7a74: $0e $89
    inc l                                         ; $7a76: $2c
    ld e, d                                       ; $7a77: $5a
    ld sp, hl                                     ; $7a78: $f9
    ld l, a                                       ; $7a79: $6f
    add hl, bc                                    ; $7a7a: $09
    rst $28                                       ; $7a7b: $ef
    rst $38                                       ; $7a7c: $ff
    ld d, d                                       ; $7a7d: $52
    adc d                                         ; $7a7e: $8a
    daa                                           ; $7a7f: $27
    rst $18                                       ; $7a80: $df
    or l                                          ; $7a81: $b5
    cp l                                          ; $7a82: $bd
    nop                                           ; $7a83: $00
    ret nc                                        ; $7a84: $d0

    dec a                                         ; $7a85: $3d
    cp c                                          ; $7a86: $b9
    db $f4                                        ; $7a87: $f4
    ldh a, [rPCM34]                               ; $7a88: $f0 $77
    sbc h                                         ; $7a8a: $9c
    inc sp                                        ; $7a8b: $33
    ld e, d                                       ; $7a8c: $5a
    ld [hl], a                                    ; $7a8d: $77
    ld d, h                                       ; $7a8e: $54
    sub c                                         ; $7a8f: $91
    ldh a, [$fe]                                  ; $7a90: $f0 $fe
    cpl                                           ; $7a92: $2f
    and l                                         ; $7a93: $a5
    ld a, b                                       ; $7a94: $78
    ld a, [c]                                     ; $7a95: $f2
    ld e, l                                       ; $7a96: $5d
    ld e, e                                       ; $7a97: $5b
    jr z, jr_05c_7a9a                             ; $7a98: $28 $00

jr_05c_7a9a:
    db $fc                                        ; $7a9a: $fc
    ld [hl], h                                    ; $7a9b: $74
    sub e                                         ; $7a9c: $93
    jr nc, jr_05c_7afe                            ; $7a9d: $30 $5f

    ld h, c                                       ; $7a9f: $61
    ret                                           ; $7aa0: $c9


    di                                            ; $7aa1: $f3
    ld h, b                                       ; $7aa2: $60
    add l                                         ; $7aa3: $85
    push hl                                       ; $7aa4: $e5
    adc h                                         ; $7aa5: $8c
    ld b, l                                       ; $7aa6: $45
    inc de                                        ; $7aa7: $13
    call $f92d                                    ; $7aa8: $cd $2d $f9
    sbc a                                         ; $7aab: $9f
    add $7d                                       ; $7aac: $c6 $7d
    ld l, a                                       ; $7aae: $6f
    add hl, bc                                    ; $7aaf: $09
    ld e, $f7                                     ; $7ab0: $1e $f7
    sbc d                                         ; $7ab2: $9a
    db $fd                                        ; $7ab3: $fd
    dec b                                         ; $7ab4: $05

jr_05c_7ab5:
    nop                                           ; $7ab5: $00
    ld c, $30                                     ; $7ab6: $0e $30
    xor c                                         ; $7ab8: $a9
    rst $18                                       ; $7ab9: $df
    ld a, [$a5b9]                                 ; $7aba: $fa $b9 $a5
    and d                                         ; $7abd: $a2
    sbc e                                         ; $7abe: $9b
    ld [hl], h                                    ; $7abf: $74
    add $dc                                       ; $7ac0: $c6 $dc
    ld e, $2d                                     ; $7ac2: $1e $2d
    call z, $95a3                                 ; $7ac4: $cc $a3 $95
    ld b, $a3                                     ; $7ac7: $06 $a3
    ld l, [hl]                                    ; $7ac9: $6e
    jp z, Jump_05c_75a9                           ; $7aca: $ca $a9 $75

    ld b, $76                                     ; $7acd: $06 $76
    rst $38                                       ; $7acf: $ff
    dec a                                         ; $7ad0: $3d
    xor h                                         ; $7ad1: $ac
    ld e, a                                       ; $7ad2: $5f
    ld e, $b2                                     ; $7ad3: $1e $b2
    inc a                                         ; $7ad5: $3c
    ld a, [$2ebf]                                 ; $7ad6: $fa $bf $2e
    nop                                           ; $7ad9: $00
    inc e                                         ; $7ada: $1c
    push hl                                       ; $7adb: $e5
    cp a                                          ; $7adc: $bf
    xor c                                         ; $7add: $a9
    jp hl                                         ; $7ade: $e9


    ld h, $61                                     ; $7adf: $26 $61
    cp [hl]                                       ; $7ae1: $be
    cp d                                          ; $7ae2: $ba
    ccf                                           ; $7ae3: $3f
    add l                                         ; $7ae4: $85
    ld h, b                                       ; $7ae5: $60
    scf                                           ; $7ae6: $37
    sbc $5f                                       ; $7ae7: $de $5f
    ld a, [hl-]                                   ; $7ae9: $3a
    ld h, e                                       ; $7aea: $63
    and d                                         ; $7aeb: $a2
    reti                                          ; $7aec: $d9


    ld e, a                                       ; $7aed: $5f
    nop                                           ; $7aee: $00
    db $fc                                        ; $7aef: $fc
    ret c                                         ; $7af0: $d8

    pop af                                        ; $7af1: $f1
    sbc l                                         ; $7af2: $9d
    ld d, h                                       ; $7af3: $54
    ld [hl], h                                    ; $7af4: $74
    sub e                                         ; $7af5: $93
    jr nc, jr_05c_7b57                            ; $7af6: $30 $5f

    ld h, c                                       ; $7af8: $61
    ld l, c                                       ; $7af9: $69
    adc [hl]                                      ; $7afa: $8e
    ld a, [hl+]                                   ; $7afb: $2a
    inc a                                         ; $7afc: $3c
    rst $20                                       ; $7afd: $e7

jr_05c_7afe:
    ld [hl], l                                    ; $7afe: $75
    add $44                                       ; $7aff: $c6 $44
    or e                                          ; $7b01: $b3
    cp a                                          ; $7b02: $bf
    nop                                           ; $7b03: $00
    inc a                                         ; $7b04: $3c
    sbc a                                         ; $7b05: $9f
    db $10                                        ; $7b06: $10
    ld e, e                                       ; $7b07: $5b
    ret z                                         ; $7b08: $c8

    db $fc                                        ; $7b09: $fc
    cpl                                           ; $7b0a: $2f
    push bc                                       ; $7b0b: $c5
    jp z, Jump_05c_6d7e                           ; $7b0c: $ca $7e $6d

    push de                                       ; $7b0f: $d5
    call nc, $cc24                                ; $7b10: $d4 $24 $cc
    db $e3                                        ; $7b13: $e3
    push af                                       ; $7b14: $f5
    ld h, e                                       ; $7b15: $63
    xor $05                                       ; $7b16: $ee $05
    nop                                           ; $7b18: $00
    ld e, $8f                                     ; $7b19: $1e $8f
    cp c                                          ; $7b1b: $b9
    dec a                                         ; $7b1c: $3d
    ld c, d                                       ; $7b1d: $4a
    sbc b                                         ; $7b1e: $98
    ld b, a                                       ; $7b1f: $47
    xor c                                         ; $7b20: $a9
    ld [hl], c                                    ; $7b21: $71
    dec l                                         ; $7b22: $2d
    adc $79                                       ; $7b23: $ce $79
    ld sp, hl                                     ; $7b25: $f9
    inc bc                                        ; $7b26: $03
    ld c, a                                       ; $7b27: $4f
    sbc h                                         ; $7b28: $9c
    di                                            ; $7b29: $f3
    jp z, $8571                                   ; $7b2a: $ca $71 $85

    rst $20                                       ; $7b2d: $e7
    cp h                                          ; $7b2e: $bc
    ld [hl], $fd                                  ; $7b2f: $36 $fd
    jp nc, Jump_05c_4dbd                          ; $7b31: $d2 $bd $4d

    jp z, $8bff                                   ; $7b34: $ca $ff $8b

    ld e, e                                       ; $7b37: $5b
    ld c, $7f                                     ; $7b38: $0e $7f
    db $db                                        ; $7b3a: $db
    ld d, [hl]                                    ; $7b3b: $56
    cp l                                          ; $7b3c: $bd
    pop de                                        ; $7b3d: $d1
    ld d, c                                       ; $7b3e: $51
    ld [hl], e                                    ; $7b3f: $73
    ld c, e                                       ; $7b40: $4b
    or [hl]                                       ; $7b41: $b6
    ld b, l                                       ; $7b42: $45
    jp c, $b8b6                                   ; $7b43: $da $b6 $b8

    nop                                           ; $7b46: $00
    ld c, $76                                     ; $7b47: $0e $76
    ld c, e                                       ; $7b49: $4b
    cp $1f                                        ; $7b4a: $fe $1f
    jr @+$4d                                      ; $7b4c: $18 $4b

    ld h, a                                       ; $7b4e: $67
    call z, Call_000_1eed                         ; $7b4f: $cc $ed $1e
    ldh a, [$0b]                                  ; $7b52: $f0 $0b
    di                                            ; $7b54: $f3
    db $fd                                        ; $7b55: $fd
    db $eb                                        ; $7b56: $eb

jr_05c_7b57:
    cp d                                          ; $7b57: $ba
    inc b                                         ; $7b58: $04
    cp a                                          ; $7b59: $bf
    ld l, d                                       ; $7b5a: $6a
    or a                                          ; $7b5b: $b7
    sub h                                         ; $7b5c: $94
    ld d, e                                       ; $7b5d: $53
    ld c, d                                       ; $7b5e: $4a
    and l                                         ; $7b5f: $a5
    rst $08                                       ; $7b60: $cf
    ld a, a                                       ; $7b61: $7f
    rst $28                                       ; $7b62: $ef
    db $fd                                        ; $7b63: $fd
    dec bc                                        ; $7b64: $0b
    nop                                           ; $7b65: $00
    ld c, $89                                     ; $7b66: $0e $89
    inc l                                         ; $7b68: $2c
    ld e, d                                       ; $7b69: $5a
    ld sp, hl                                     ; $7b6a: $f9
    ld l, a                                       ; $7b6b: $6f
    add hl, bc                                    ; $7b6c: $09
    ld a, [hl]                                    ; $7b6d: $7e
    db $fd                                        ; $7b6e: $fd
    ld d, $be                                     ; $7b6f: $16 $be
    push af                                       ; $7b71: $f5
    ld a, a                                       ; $7b72: $7f
    add hl, bc                                    ; $7b73: $09
    rst $28                                       ; $7b74: $ef
    rst $38                                       ; $7b75: $ff
    ld d, d                                       ; $7b76: $52
    adc d                                         ; $7b77: $8a
    daa                                           ; $7b78: $27
    rst $18                                       ; $7b79: $df
    or l                                          ; $7b7a: $b5
    cp l                                          ; $7b7b: $bd
    nop                                           ; $7b7c: $00
    sbc [hl]                                      ; $7b7d: $9e
    db $e3                                        ; $7b7e: $e3
    jp c, $144e                                   ; $7b7f: $da $4e $14

    cp a                                          ; $7b82: $bf
    ld h, e                                       ; $7b83: $63
    ld a, h                                       ; $7b84: $7c
    adc [hl]                                      ; $7b85: $8e
    add hl, bc                                    ; $7b86: $09
    rst $08                                       ; $7b87: $cf
    ld a, c                                       ; $7b88: $79
    pop af                                        ; $7b89: $f1
    inc a                                         ; $7b8a: $3c
    ld h, e                                       ; $7b8b: $63
    sbc c                                         ; $7b8c: $99
    inc e                                         ; $7b8d: $1c
    ld h, d                                       ; $7b8e: $62
    ld [hl], a                                    ; $7b8f: $77
    or b                                          ; $7b90: $b0
    dec l                                         ; $7b91: $2d
    and l                                         ; $7b92: $a5
    ld a, b                                       ; $7b93: $78
    ld a, [c]                                     ; $7b94: $f2
    add l                                         ; $7b95: $85
    ld [de], a                                    ; $7b96: $12
    db $f4                                        ; $7b97: $f4
    ld a, [$1ca4]                                 ; $7b98: $fa $a4 $1c
    rst $10                                       ; $7b9b: $d7
    or $02                                        ; $7b9c: $f6 $02
    ret nc                                        ; $7b9e: $d0

    dec l                                         ; $7b9f: $2d
    sbc a                                         ; $7ba0: $9f
    ret z                                         ; $7ba1: $c8

    ld b, d                                       ; $7ba2: $42
    or [hl]                                       ; $7ba3: $b6
    ld b, [hl]                                    ; $7ba4: $46
    ld d, h                                       ; $7ba5: $54
    ld c, c                                       ; $7ba6: $49
    db $dd                                        ; $7ba7: $dd
    and e                                         ; $7ba8: $a3
    ei                                            ; $7ba9: $fb
    push af                                       ; $7baa: $f5
    ld e, e                                       ; $7bab: $5b
    ccf                                           ; $7bac: $3f
    rst $38                                       ; $7bad: $ff
    ld c, e                                       ; $7bae: $4b
    or [hl]                                       ; $7baf: $b6
    dec [hl]                                      ; $7bb0: $35
    ld c, d                                       ; $7bb1: $4a
    or c                                          ; $7bb2: $b1
    ld [$f967], a                                 ; $7bb3: $ea $67 $f9
    or [hl]                                       ; $7bb6: $b6
    add l                                         ; $7bb7: $85
    ld l, h                                       ; $7bb8: $6c
    cp e                                          ; $7bb9: $bb
    and e                                         ; $7bba: $a3
    sub h                                         ; $7bbb: $94
    or c                                          ; $7bbc: $b1
    db $ed                                        ; $7bbd: $ed
    ld h, $d2                                     ; $7bbe: $26 $d2
    jr c, jr_05c_7c2a                             ; $7bc0: $38 $68

    call c, Call_05c_5e00                         ; $7bc2: $dc $00 $5e
    sbc l                                         ; $7bc5: $9d
    ld b, e                                       ; $7bc6: $43
    sbc l                                         ; $7bc7: $9d
    reti                                          ; $7bc8: $d9


    ld [hl], l                                    ; $7bc9: $75
    ld e, l                                       ; $7bca: $5d
    jp nz, $857c                                  ; $7bcb: $c2 $7c $85

    and l                                         ; $7bce: $a5
    inc sp                                        ; $7bcf: $33
    ld h, $9a                                     ; $7bd0: $26 $9a
    db $fd                                        ; $7bd2: $fd
    dec b                                         ; $7bd3: $05
    nop                                           ; $7bd4: $00
    db $fc                                        ; $7bd5: $fc
    rst $38                                       ; $7bd6: $ff
    and [hl]                                      ; $7bd7: $a6
    ld l, h                                       ; $7bd8: $6c
    jp c, $8cea                                   ; $7bd9: $da $ea $8c

    cp c                                          ; $7bdc: $b9
    db $dd                                        ; $7bdd: $dd
    ld b, e                                       ; $7bde: $43
    add hl, hl                                    ; $7bdf: $29
    sbc [hl]                                      ; $7be0: $9e
    ld a, h                                       ; $7be1: $7c
    cpl                                           ; $7be2: $2f
    nop                                           ; $7be3: $00
    inc e                                         ; $7be4: $1c
    ld sp, hl                                     ; $7be5: $f9
    ld a, [bc]                                    ; $7be6: $0a
    ld c, e                                       ; $7be7: $4b
    ld h, a                                       ; $7be8: $67
    ld c, h                                       ; $7be9: $4c
    inc [hl]                                      ; $7bea: $34
    ei                                            ; $7beb: $fb
    dec bc                                        ; $7bec: $0b
    nop                                           ; $7bed: $00
    sbc [hl]                                      ; $7bee: $9e
    rst $38                                       ; $7bef: $ff
    reti                                          ; $7bf0: $d9


    or [hl]                                       ; $7bf1: $b6
    ret nc                                        ; $7bf2: $d0

    ld l, a                                       ; $7bf3: $6f
    push bc                                       ; $7bf4: $c5
    or h                                          ; $7bf5: $b4
    ld l, b                                       ; $7bf6: $68
    cp c                                          ; $7bf7: $b9
    db $ed                                        ; $7bf8: $ed
    ld c, h                                       ; $7bf9: $4c
    cp l                                          ; $7bfa: $bd
    rst $28                                       ; $7bfb: $ef
    rst $28                                       ; $7bfc: $ef
    dec bc                                        ; $7bfd: $0b
    ld a, [hl]                                    ; $7bfe: $7e
    ld e, c                                       ; $7bff: $59

Call_05c_7c00:
    ld c, h                                       ; $7c00: $4c
    call c, Call_05c_557e                         ; $7c01: $dc $7e $55
    adc b                                         ; $7c04: $88
    sub e                                         ; $7c05: $93
    rst $18                                       ; $7c06: $df
    ld l, l                                       ; $7c07: $6d
    ld c, a                                       ; $7c08: $4f
    ld sp, hl                                     ; $7c09: $f9
    sbc l                                         ; $7c0a: $9d
    xor c                                         ; $7c0b: $a9
    rst $30                                       ; $7c0c: $f7
    db $fd                                        ; $7c0d: $fd
    cp l                                          ; $7c0e: $bd
    nop                                           ; $7c0f: $00
    ld [bc], a                                    ; $7c10: $02
    ld [bc], a                                    ; $7c11: $02
    ld a, h                                       ; $7c12: $7c
    db $db                                        ; $7c13: $db
    ld b, h                                       ; $7c14: $44
    and l                                         ; $7c15: $a5
    ld e, b                                       ; $7c16: $58
    push af                                       ; $7c17: $f5
    ei                                            ; $7c18: $fb
    sbc a                                         ; $7c19: $9f
    ld b, d                                       ; $7c1a: $42
    add $25                                       ; $7c1b: $c6 $25
    cp [hl]                                       ; $7c1d: $be
    xor b                                         ; $7c1e: $a8
    ld l, b                                       ; $7c1f: $68
    ld l, d                                       ; $7c20: $6a
    ld c, l                                       ; $7c21: $4d
    jp z, $e9ba                                   ; $7c22: $ca $ba $e9

    ld h, $5b                                     ; $7c25: $26 $5b
    db $fd                                        ; $7c27: $fd
    ld d, [hl]                                    ; $7c28: $56
    ld c, h                                       ; $7c29: $4c

jr_05c_7c2a:
    adc e                                         ; $7c2a: $8b
    cp [hl]                                       ; $7c2b: $be
    nop                                           ; $7c2c: $00
    inc a                                         ; $7c2d: $3c
    dec de                                        ; $7c2e: $1b
    add l                                         ; $7c2f: $85
    rst $08                                       ; $7c30: $cf
    dec l                                         ; $7c31: $2d
    rlca                                          ; $7c32: $07
    ld e, c                                       ; $7c33: $59
    res 6, [hl]                                   ; $7c34: $cb $b6
    add $39                                       ; $7c36: $c6 $39
    cpl                                           ; $7c38: $2f
    inc l                                         ; $7c39: $2c
    scf                                           ; $7c3a: $37
    nop                                           ; $7c3b: $00
    sbc [hl]                                      ; $7c3c: $9e
    dec c                                         ; $7c3d: $0d
    ld e, e                                       ; $7c3e: $5b
    ld sp, hl                                     ; $7c3f: $f9
    ld [hl], c                                    ; $7c40: $71
    ld d, $00                                     ; $7c41: $16 $00
    ld e, $7f                                     ; $7c43: $1e $7f
    rst $38                                       ; $7c45: $ff
    res 1, a                                      ; $7c46: $cb $8f
    or e                                          ; $7c48: $b3
    nop                                           ; $7c49: $00
    cp h                                          ; $7c4a: $bc
    dec de                                        ; $7c4b: $1b
    daa                                           ; $7c4c: $27
    ld c, d                                       ; $7c4d: $4a
    ld sp, hl                                     ; $7c4e: $f9
    sbc a                                         ; $7c4f: $9f
    xor l                                         ; $7c50: $ad
    ld a, [hl]                                    ; $7c51: $7e
    nop                                           ; $7c52: $00
    xor $60                                       ; $7c53: $ee $60
    dec c                                         ; $7c55: $0d
    di                                            ; $7c56: $f3
    db $e3                                        ; $7c57: $e3
    ld l, h                                       ; $7c58: $6c
    inc bc                                        ; $7c59: $03
    cp h                                          ; $7c5a: $bc
    sub h                                         ; $7c5b: $94
    ld c, l                                       ; $7c5c: $4d
    ld l, $f1                                     ; $7c5d: $2e $f1
    inc b                                         ; $7c5f: $04
    cp e                                          ; $7c60: $bb
    rla                                           ; $7c61: $17
    dec hl                                        ; $7c62: $2b
    ld h, h                                       ; $7c63: $64
    ld e, e                                       ; $7c64: $5b
    and e                                         ; $7c65: $a3
    and $96                                       ; $7c66: $e6 $96
    jp nc, $3760                                  ; $7c68: $d2 $60 $37

    xor $39                                       ; $7c6b: $ee $39
    ld h, c                                       ; $7c6d: $61
    dec bc                                        ; $7c6e: $0b
    dec h                                         ; $7c6f: $25
    ld e, $2a                                     ; $7c70: $1e $2a
    ld h, c                                       ; $7c72: $61
    add hl, bc                                    ; $7c73: $09
    ld [hl], a                                    ; $7c74: $77
    add $ab                                       ; $7c75: $c6 $ab
    ld h, d                                       ; $7c77: $62
    ld a, e                                       ; $7c78: $7b
    dec [hl]                                      ; $7c79: $35
    ld a, a                                       ; $7c7a: $7f
    rst $20                                       ; $7c7b: $e7
    call c, $68de                                 ; $7c7c: $dc $de $68
    jp z, $02e9                                   ; $7c7f: $ca $e9 $02

    ret nc                                        ; $7c82: $d0

    xor e                                         ; $7c83: $ab
    ld c, l                                       ; $7c84: $4d

Jump_05c_7c85:
    rst $28                                       ; $7c85: $ef
    ld c, b                                       ; $7c86: $48
    ld a, [hl+]                                   ; $7c87: $2a
    cp d                                          ; $7c88: $ba
    ld c, c                                       ; $7c89: $49
    ld [hl], e                                    ; $7c8a: $73
    call z, Call_05c_52ff                         ; $7c8b: $cc $ff $52
    xor h                                         ; $7c8e: $ac
    ldh [$9f], a                                  ; $7c8f: $e0 $9f
    or $4a                                        ; $7c91: $f6 $4a
    xor c                                         ; $7c93: $a9
    sbc d                                         ; $7c94: $9a
    ld l, $00                                     ; $7c95: $2e $00
    ld a, h                                       ; $7c97: $7c
    db $db                                        ; $7c98: $db
    ld d, c                                       ; $7c99: $51
    rst $10                                       ; $7c9a: $d7
    ld [hl], l                                    ; $7c9b: $75
    jp hl                                         ; $7c9c: $e9


    sbc $8e                                       ; $7c9d: $de $8e

jr_05c_7c9f:
    ld d, d                                       ; $7c9f: $52
    ld a, [de]                                    ; $7ca0: $1a
    jp z, $f371                                   ; $7ca1: $ca $71 $f3

    ld l, a                                       ; $7ca4: $6f
    reti                                          ; $7ca5: $d9


    rla                                           ; $7ca6: $17
    cp [hl]                                       ; $7ca7: $be
    ld a, d                                       ; $7ca8: $7a
    ldh [$39], a                                  ; $7ca9: $e0 $39
    xor a                                         ; $7cab: $af
    cp $fc                                        ; $7cac: $fe $fc
    rst $08                                       ; $7cae: $cf
    ld sp, hl                                     ; $7caf: $f9
    db $eb                                        ; $7cb0: $eb
    cp d                                          ; $7cb1: $ba
    nop                                           ; $7cb2: $00
    inc a                                         ; $7cb3: $3c
    ld d, h                                       ; $7cb4: $54
    ld [$5b5f], a                                 ; $7cb5: $ea $5f $5b
    call $ce31                                    ; $7cb8: $cd $31 $ce
    ld sp, hl                                     ; $7cbb: $f9
    and h                                         ; $7cbc: $a4
    xor $6d                                       ; $7cbd: $ee $6d
    sub d                                         ; $7cbf: $92
    ccf                                           ; $7cc0: $3f
    jp nc, $f7b1                                  ; $7cc1: $d2 $b1 $f7

    dec e                                         ; $7cc4: $1d
    rst $10                                       ; $7cc5: $d7
    ld [hl], l                                    ; $7cc6: $75
    ld bc, $351c                                  ; $7cc7: $01 $1c $35
    ld d, c                                       ; $7cca: $51
    inc a                                         ; $7ccb: $3c
    pop bc                                        ; $7ccc: $c1
    xor $c5                                       ; $7ccd: $ee $c5
    ld a, [bc]                                    ; $7ccf: $0a
    ld a, c                                       ; $7cd0: $79
    ret nz                                        ; $7cd1: $c0

    cp [hl]                                       ; $7cd2: $be
    ld [de], a                                    ; $7cd3: $12
    ld a, [bc]                                    ; $7cd4: $0a
    and [hl]                                      ; $7cd5: $a6
    and d                                         ; $7cd6: $a2
    sbc c                                         ; $7cd7: $99
    ld d, l                                       ; $7cd8: $55
    sub $50                                       ; $7cd9: $d6 $50
    nop                                           ; $7cdb: $00
    ld c, $68                                     ; $7cdc: $0e $68
    ld c, e                                       ; $7cde: $4b
    add hl, hl                                    ; $7cdf: $29
    ld d, l                                       ; $7ce0: $55
    or h                                          ; $7ce1: $b4
    ld [hl], d                                    ; $7ce2: $72
    ld c, d                                       ; $7ce3: $4a
    xor c                                         ; $7ce4: $a9
    db $f4                                        ; $7ce5: $f4
    dec sp                                        ; $7ce6: $3b
    rst $38                                       ; $7ce7: $ff
    ld h, l                                       ; $7ce8: $65
    db $db                                        ; $7ce9: $db
    dec e                                         ; $7cea: $1d
    sub l                                         ; $7ceb: $95
    call nc, $ba3d                                ; $7cec: $d4 $3d $ba
    ld e, a                                       ; $7cef: $5f
    ld d, c                                       ; $7cf0: $51
    ld [$080d], a                                 ; $7cf1: $ea $0d $08
    dec h                                         ; $7cf4: $25
    ld [hl], l                                    ; $7cf5: $75
    ld l, a                                       ; $7cf6: $6f
    ld d, l                                       ; $7cf7: $55
    jr z, jr_05c_7c9f                             ; $7cf8: $28 $a5

    ld [de], a                                    ; $7cfa: $12
    sbc [hl]                                      ; $7cfb: $9e
    push de                                       ; $7cfc: $d5
    dec e                                         ; $7cfd: $1d
    add l                                         ; $7cfe: $85
    ld h, [hl]                                    ; $7cff: $66
    ld a, a                                       ; $7d00: $7f
    ld bc, $300e                                  ; $7d01: $01 $0e $30
    xor c                                         ; $7d04: $a9
    ld l, b                                       ; $7d05: $68
    db $db                                        ; $7d06: $db
    ld c, c                                       ; $7d07: $49
    and h                                         ; $7d08: $a4
    sub h                                         ; $7d09: $94
    ld a, [hl+]                                   ; $7d0a: $2a
    ld e, d                                       ; $7d0b: $5a
    jr nc, @+$5c                                  ; $7d0c: $30 $5a

    rst $38                                       ; $7d0e: $ff
    call c, $c4ba                                 ; $7d0f: $dc $ba $c4
    dec sp                                        ; $7d12: $3b
    sbc b                                         ; $7d13: $98
    cp a                                          ; $7d14: $bf
    ld l, l                                       ; $7d15: $6d
    rrca                                          ; $7d16: $0f
    adc a                                         ; $7d17: $8f
    db $f4                                        ; $7d18: $f4
    cp h                                          ; $7d19: $bc
    cp $cc                                        ; $7d1a: $fe $cc
    ld a, a                                       ; $7d1c: $7f
    push hl                                       ; $7d1d: $e5
    sub h                                         ; $7d1e: $94
    ld d, d                                       ; $7d1f: $52
    jp hl                                         ; $7d20: $e9


    pop hl                                        ; $7d21: $e1
    cpl                                           ; $7d22: $2f
    ld sp, hl                                     ; $7d23: $f9
    ld b, h                                       ; $7d24: $44
    sub $74                                       ; $7d25: $d6 $74
    ld bc, $b15e                                  ; $7d27: $01 $5e $b1
    db $ed                                        ; $7d2a: $ed
    ld l, b                                       ; $7d2b: $68
    and d                                         ; $7d2c: $a2
    sbc d                                         ; $7d2d: $9a
    ld e, h                                       ; $7d2e: $5c
    ld h, $db                                     ; $7d2f: $26 $db
    ld h, $9d                                     ; $7d31: $26 $9d
    or c                                          ; $7d33: $b1
    di                                            ; $7d34: $f3
    db $d3                                        ; $7d35: $d3
    cp $d7                                        ; $7d36: $fe $d7
    dec a                                         ; $7d38: $3d
    add $9f                                       ; $7d39: $c6 $9f
    inc de                                        ; $7d3b: $13
    ld d, b                                       ; $7d3c: $50
    add d                                         ; $7d3d: $82
    ld e, [hl]                                    ; $7d3e: $5e
    db $fd                                        ; $7d3f: $fd
    sub $cf                                       ; $7d40: $d6 $cf
    rst $38                                       ; $7d42: $ff
    jp nc, Jump_000_35bd                          ; $7d43: $d2 $bd $35

    ld c, d                                       ; $7d46: $4a
    sbc b                                         ; $7d47: $98
    ld l, [hl]                                    ; $7d48: $6e
    ld e, e                                       ; $7d49: $5b
    call nc, $f25e                                ; $7d4a: $d4 $5e $f2
    ld l, b                                       ; $7d4d: $68
    and h                                         ; $7d4e: $a4
    rst $20                                       ; $7d4f: $e7
    ld e, e                                       ; $7d50: $5b
    ld a, a                                       ; $7d51: $7f

Jump_05c_7d52:
    and $e7                                       ; $7d52: $e6 $e7
    rst $18                                       ; $7d54: $df
    sbc d                                         ; $7d55: $9a
    sbc b                                         ; $7d56: $98
    or $5f                                        ; $7d57: $f6 $5f
    nop                                           ; $7d59: $00
    sbc [hl]                                      ; $7d5a: $9e
    ccf                                           ; $7d5b: $3f
    db $eb                                        ; $7d5c: $eb
    push bc                                       ; $7d5d: $c5
    dec l                                         ; $7d5e: $2d
    dec [hl]                                      ; $7d5f: $35
    sbc c                                         ; $7d60: $99
    ld d, c                                       ; $7d61: $51
    ld d, d                                       ; $7d62: $52
    ld [hl], e                                    ; $7d63: $73
    ld d, h                                       ; $7d64: $54
    add l                                         ; $7d65: $85
    add hl, bc                                    ; $7d66: $09
    ld e, $e9                                     ; $7d67: $1e $e9
    ld sp, hl                                     ; $7d69: $f9
    sub $9f                                       ; $7d6a: $d6 $9f
    ld sp, hl                                     ; $7d6c: $f9
    ld sp, hl                                     ; $7d6d: $f9
    rst $30                                       ; $7d6e: $f7
    dec h                                         ; $7d6f: $25
    add sp, -$12                                  ; $7d70: $e8 $ee
    sub b                                         ; $7d72: $90
    db $fd                                        ; $7d73: $fd
    dec hl                                        ; $7d74: $2b
    and l                                         ; $7d75: $a5
    ld a, h                                       ; $7d76: $7c
    sbc e                                         ; $7d77: $9b
    add h                                         ; $7d78: $84
    rst $30                                       ; $7d79: $f7
    sbc [hl]                                      ; $7d7a: $9e
    inc de                                        ; $7d7b: $13
    ld [$73d8], a                                 ; $7d7c: $ea $d8 $73
    and d                                         ; $7d7f: $a2
    ld a, [hl+]                                   ; $7d80: $2a
    ld l, $00                                     ; $7d81: $2e $00
    ret nc                                        ; $7d83: $d0

    xor e                                         ; $7d84: $ab
    db $ec                                        ; $7d85: $ec
    and h                                         ; $7d86: $a4
    ld b, h                                       ; $7d87: $44
    rst $20                                       ; $7d88: $e7
    sub b                                         ; $7d89: $90
    ldh a, [$84]                                  ; $7d8a: $f0 $84
    xor $6d                                       ; $7d8c: $ee $6d
    and d                                         ; $7d8e: $a2
    ld d, d                                       ; $7d8f: $52
    ld d, c                                       ; $7d90: $51
    jp c, Jump_000_1394                           ; $7d91: $da $94 $13

    dec h                                         ; $7d94: $25
    push bc                                       ; $7d95: $c5
    di                                            ; $7d96: $f3
    adc h                                         ; $7d97: $8c
    ld h, l                                       ; $7d98: $65
    sub a                                         ; $7d99: $97
    inc a                                         ; $7d9a: $3c
    ld a, [de]                                    ; $7d9b: $1a
    jp hl                                         ; $7d9c: $e9


    ld sp, hl                                     ; $7d9d: $f9
    sub [hl]                                      ; $7d9e: $96
    cp a                                          ; $7d9f: $bf
    sub b                                         ; $7da0: $90
    ld l, b                                       ; $7da1: $68
    and d                                         ; $7da2: $a2
    ld d, d                                       ; $7da3: $52
    inc de                                        ; $7da4: $13
    sbc l                                         ; $7da5: $9d
    ld b, e                                       ; $7da6: $43
    call c, Call_05c_7c00                         ; $7da7: $dc $00 $7c
    ld e, e                                       ; $7daa: $5b
    and e                                         ; $7dab: $a3
    call nc, $bb19                                ; $7dac: $d4 $19 $bb
    adc c                                         ; $7daf: $89
    ld l, d                                       ; $7db0: $6a
    ld d, e                                       ; $7db1: $53
    ld a, [hl+]                                   ; $7db2: $2a
    ld b, l                                       ; $7db3: $45
    db $eb                                        ; $7db4: $eb
    adc [hl]                                      ; $7db5: $8e
    ld a, [bc]                                    ; $7db6: $0a
    add hl, de                                    ; $7db7: $19
    or $8c                                        ; $7db8: $f6 $8c
    ei                                            ; $7dba: $fb
    cp a                                          ; $7dbb: $bf
    sub d                                         ; $7dbc: $92
    sbc d                                         ; $7dbd: $9a
    and e                                         ; $7dbe: $a3
    inc b                                         ; $7dbf: $04
    adc a                                         ; $7dc0: $8f
    pop bc                                        ; $7dc1: $c1
    ld d, [hl]                                    ; $7dc2: $56
    ld d, $25                                     ; $7dc3: $16 $25
    db $db                                        ; $7dc5: $db
    call $b6d1                                    ; $7dc6: $cd $d1 $b6
    ld l, $39                                     ; $7dc9: $2e $39
    call z, Call_05c_532c                         ; $7dcb: $cc $2c $53
    cp $5b                                        ; $7dce: $fe $5b
    add d                                         ; $7dd0: $82
    ld b, a                                       ; $7dd1: $47
    ld a, d                                       ; $7dd2: $7a
    sub $ec                                       ; $7dd3: $d6 $ec
    xor a                                         ; $7dd5: $af
    db $eb                                        ; $7dd6: $eb
    ld d, d                                       ; $7dd7: $52
    db $ed                                        ; $7dd8: $ed
    ld b, d                                       ; $7dd9: $42
    and d                                         ; $7dda: $a2
    and $96                                       ; $7ddb: $e6 $96
    ld h, b                                       ; $7ddd: $60
    ld a, [hl-]                                   ; $7dde: $3a
    ldh a, [$9e]                                  ; $7ddf: $f0 $9e
    ld h, $d9                                     ; $7de1: $26 $d9
    cp a                                          ; $7de3: $bf
    ld l, h                                       ; $7de4: $6c
    scf                                           ; $7de5: $37
    rst $00                                       ; $7de6: $c7
    ld a, [hl]                                    ; $7de7: $7e
    ld l, l                                       ; $7de8: $6d
    ld a, [$7ea5]                                 ; $7de9: $fa $a5 $7e
    and $47                                       ; $7dec: $e6 $47
    ld c, h                                       ; $7dee: $4c
    db $db                                        ; $7def: $db
    dec bc                                        ; $7df0: $0b
    nop                                           ; $7df1: $00
    ret nc                                        ; $7df2: $d0

    db $eb                                        ; $7df3: $eb
    sub e                                         ; $7df4: $93
    jp hl                                         ; $7df5: $e9


    adc [hl]                                      ; $7df6: $8e
    ld a, [hl+]                                   ; $7df7: $2a
    ld d, d                                       ; $7df8: $52
    cp [hl]                                       ; $7df9: $be
    ld [hl], c                                    ; $7dfa: $71
    add sp, $12                                   ; $7dfb: $e8 $12
    cpl                                           ; $7dfd: $2f
    or d                                          ; $7dfe: $b2
    or l                                          ; $7dff: $b5
    adc [hl]                                      ; $7e00: $8e
    inc sp                                        ; $7e01: $33
    ld e, d                                       ; $7e02: $5a
    or c                                          ; $7e03: $b1
    add hl, sp                                    ; $7e04: $39
    or l                                          ; $7e05: $b5
    ldh a, [$84]                                  ; $7e06: $f0 $84
    ld a, [c]                                     ; $7e08: $f2
    ccf                                           ; $7e09: $3f
    rst $30                                       ; $7e0a: $f7
    ld l, [hl]                                    ; $7e0b: $6e
    rst $38                                       ; $7e0c: $ff
    dec b                                         ; $7e0d: $05
    nop                                           ; $7e0e: $00
    ret nc                                        ; $7e0f: $d0

    dec hl                                        ; $7e10: $2b
    jp $357c                                      ; $7e11: $c3 $7c $35


    adc $c4                                       ; $7e14: $ce $c4
    ld a, d                                       ; $7e16: $7a
    ld sp, hl                                     ; $7e17: $f9
    cp a                                          ; $7e18: $bf
    dec d                                         ; $7e19: $15
    rst $20                                       ; $7e1a: $e7
    cp h                                          ; $7e1b: $bc
    sbc d                                         ; $7e1c: $9a
    ld d, d                                       ; $7e1d: $52
    ld a, [hl+]                                   ; $7e1e: $2a
    db $fd                                        ; $7e1f: $fd
    adc $ff                                       ; $7e20: $ce $ff
    ld c, d                                       ; $7e22: $4a
    adc d                                         ; $7e23: $8a
    rst $20                                       ; $7e24: $e7

Call_05c_7e25:
    add hl, de                                    ; $7e25: $19
    sra [hl]                                      ; $7e26: $cb $2e
    nop                                           ; $7e28: $00

jr_05c_7e29:
    inc e                                         ; $7e29: $1c
    daa                                           ; $7e2a: $27
    ld a, d                                       ; $7e2b: $7a
    and d                                         ; $7e2c: $a2
    adc d                                         ; $7e2d: $8a

jr_05c_7e2e:
    jp nc, Jump_05c_5aca                          ; $7e2e: $d2 $ca $5a

    inc a                                         ; $7e31: $3c
    pop bc                                        ; $7e32: $c1
    xor $c5                                       ; $7e33: $ee $c5
    ld a, [bc]                                    ; $7e35: $0a
    jr z, jr_05c_7e38                             ; $7e36: $28 $00

jr_05c_7e38:
    inc a                                         ; $7e38: $3c
    ld d, h                                       ; $7e39: $54
    ld [$5b5f], a                                 ; $7e3a: $ea $5f $5b
    pop hl                                        ; $7e3d: $e1
    add hl, sp                                    ; $7e3e: $39
    cpl                                           ; $7e3f: $2f
    db $db                                        ; $7e40: $db
    call $d871                                    ; $7e41: $cd $71 $d8
    call nz, $183b                                ; $7e44: $c4 $3b $18
    sub [hl]                                      ; $7e47: $96
    adc $c0                                       ; $7e48: $ce $c0
    ld a, [$000b]                                 ; $7e4a: $fa $0b $00
    sbc h                                         ; $7e4d: $9c
    ld d, c                                       ; $7e4e: $51
    xor d                                         ; $7e4f: $aa
    jr z, jr_05c_7e64                             ; $7e50: $28 $12

    sub [hl]                                      ; $7e52: $96
    ld a, [hl]                                    ; $7e53: $7e
    db $eb                                        ; $7e54: $eb
    rst $20                                       ; $7e55: $e7
    sub [hl]                                      ; $7e56: $96
    and $6e                                       ; $7e57: $e6 $6e
    push de                                       ; $7e59: $d5
    ld l, d                                       ; $7e5a: $6a
    ld l, $83                                     ; $7e5b: $2e $83
    rst $18                                       ; $7e5d: $df

Call_05c_7e5e:
    db $ec                                        ; $7e5e: $ec
    sub e                                         ; $7e5f: $93
    cp d                                          ; $7e60: $ba
    rst $00                                       ; $7e61: $c7
    or b                                          ; $7e62: $b0
    ld a, [hl]                                    ; $7e63: $7e

jr_05c_7e64:
    or c                                          ; $7e64: $b1
    ld sp, $5dee                                  ; $7e65: $31 $ee $5d
    db $eb                                        ; $7e68: $eb
    ld d, a                                       ; $7e69: $57
    sub h                                         ; $7e6a: $94
    ld a, d                                       ; $7e6b: $7a
    inc bc                                        ; $7e6c: $03
    ld b, d                                       ; $7e6d: $42
    rla                                           ; $7e6e: $17
    nop                                           ; $7e6f: $00
    ret nc                                        ; $7e70: $d0

    jp hl                                         ; $7e71: $e9


    inc h                                         ; $7e72: $24
    and l                                         ; $7e73: $a5
    ld d, h                                       ; $7e74: $54
    jp nz, $8392                                  ; $7e75: $c2 $92 $83

    ret z                                         ; $7e78: $c8

    rst $30                                       ; $7e79: $f7
    sbc h                                         ; $7e7a: $9c
    jr z, jr_05c_7e2e                             ; $7e7b: $28 $b1

    pop hl                                        ; $7e7d: $e1
    rst $28                                       ; $7e7e: $ef
    call nz, Call_000_2faa                        ; $7e7f: $c4 $aa $2f
    call $b32f                                    ; $7e82: $cd $2f $b3
    rla                                           ; $7e85: $17
    db $fc                                        ; $7e86: $fc
    xor d                                         ; $7e87: $aa
    db $10                                        ; $7e88: $10
    and $df                                       ; $7e89: $e6 $df
    cp d                                          ; $7e8b: $ba
    pop af                                        ; $7e8c: $f1
    call nz, Call_05c_7f7d                        ; $7e8d: $c4 $7d $7f
    dec hl                                        ; $7e90: $2b
    dec e                                         ; $7e91: $1d
    di                                            ; $7e92: $f3
    call $02fe                                    ; $7e93: $cd $fe $02
    inc a                                         ; $7e96: $3c
    ld d, h                                       ; $7e97: $54
    jp nz, $9452                                  ; $7e98: $c2 $52 $94

    db $ed                                        ; $7e9b: $ed
    ld a, l                                       ; $7e9c: $7d
    db $d3                                        ; $7e9d: $d3
    ld e, d                                       ; $7e9e: $5a
    sub h                                         ; $7e9f: $94
    ld h, [hl]                                    ; $7ea0: $66
    jr nc, jr_05c_7e29                            ; $7ea1: $30 $86

    db $d3                                        ; $7ea3: $d3
    and d                                         ; $7ea4: $a2
    call nc, $3759                                ; $7ea5: $d4 $59 $37
    rla                                           ; $7ea8: $17
    inc e                                         ; $7ea9: $1c
    and l                                         ; $7eaa: $a5
    inc a                                         ; $7eab: $3c
    call z, $ecde                                 ; $7eac: $cc $de $ec
    sub l                                         ; $7eaf: $95
    db $e3                                        ; $7eb0: $e3
    add hl, sp                                    ; $7eb1: $39
    ret c                                         ; $7eb2: $d8

    db $fd                                        ; $7eb3: $fd
    rst $30                                       ; $7eb4: $f7
    sbc e                                         ; $7eb5: $9b
    ld a, l                                       ; $7eb6: $7d
    ld d, d                                       ; $7eb7: $52
    ld [hl], e                                    ; $7eb8: $73
    or a                                          ; $7eb9: $b7
    pop de                                        ; $7eba: $d1
    call nc, Call_000_10b1                        ; $7ebb: $d4 $b1 $10
    ld a, [hl+]                                   ; $7ebe: $2a
    ld l, [hl]                                    ; $7ebf: $6e
    nop                                           ; $7ec0: $00
    sbc [hl]                                      ; $7ec1: $9e
    db $e3                                        ; $7ec2: $e3
    ld a, [hl+]                                   ; $7ec3: $2a
    sub [hl]                                      ; $7ec4: $96
    ld e, e                                       ; $7ec5: $5b
    ret nc                                        ; $7ec6: $d0

    dec hl                                        ; $7ec7: $2b
    db $db                                        ; $7ec8: $db
    dec l                                         ; $7ec9: $2d
    ld d, d                                       ; $7eca: $52
    db $ed                                        ; $7ecb: $ed
    sub [hl]                                      ; $7ecc: $96
    db $fc                                        ; $7ecd: $fc
    ld l, l                                       ; $7ece: $6d
    xor d                                         ; $7ecf: $aa
    xor h                                         ; $7ed0: $ac
    dec [hl]                                      ; $7ed1: $35
    add hl, hl                                    ; $7ed2: $29
    add e                                         ; $7ed3: $83
    ret nc                                        ; $7ed4: $d0

    dec b                                         ; $7ed5: $05
    nop                                           ; $7ed6: $00
    ld c, $b3                                     ; $7ed7: $0e $b3
    inc c                                         ; $7ed9: $0c
    ld [de], a                                    ; $7eda: $12
    ld c, l                                       ; $7edb: $4d
    ld d, h                                       ; $7edc: $54
    ld a, [$88ea]                                 ; $7edd: $fa $ea $88
    ld l, c                                       ; $7ee0: $69
    sbc e                                         ; $7ee1: $9b
    call nc, $a51c                                ; $7ee2: $d4 $1c $a5
    sub h                                         ; $7ee5: $94
    ld c, d                                       ; $7ee6: $4a
    dec a                                         ; $7ee7: $3d
    ld c, [hl]                                    ; $7ee8: $4e
    add h                                         ; $7ee9: $84
    ld a, [$afe7]                                 ; $7eea: $fa $e7 $af
    ld l, l                                       ; $7eed: $6d
    ld e, l                                       ; $7eee: $5d
    nop                                           ; $7eef: $00
    cp h                                          ; $7ef0: $bc
    cp a                                          ; $7ef1: $bf
    ld [hl], e                                    ; $7ef2: $73
    xor [hl]                                      ; $7ef3: $ae
    ld l, h                                       ; $7ef4: $6c
    inc c                                         ; $7ef5: $0c
    ld d, $51                                     ; $7ef6: $16 $51
    or d                                          ; $7ef8: $b2
    ccf                                           ; $7ef9: $3f
    cp e                                          ; $7efa: $bb
    push bc                                       ; $7efb: $c5
    dec l                                         ; $7efc: $2d
    sbc $c1                                       ; $7efd: $de $c1
    db $fc                                        ; $7eff: $fc
    ld l, l                                       ; $7f00: $6d
    ld a, e                                       ; $7f01: $7b
    ld a, b                                       ; $7f02: $78
    and h                                         ; $7f03: $a4
    rst $20                                       ; $7f04: $e7
    ld e, e                                       ; $7f05: $5b
    ld a, a                                       ; $7f06: $7f
    and $e7                                       ; $7f07: $e6 $e7
    rst $18                                       ; $7f09: $df
    call c, $0e00                                 ; $7f0a: $dc $00 $0e
    jp $df19                                      ; $7f0d: $c3 $19 $df


    add hl, de                                    ; $7f10: $19
    ccf                                           ; $7f11: $3f
    halt                                          ; $7f12: $76
    ld c, [hl]                                    ; $7f13: $4e
    cp h                                          ; $7f14: $bc
    xor [hl]                                      ; $7f15: $ae
    ld c, e                                       ; $7f16: $4b
    pop hl                                        ; $7f17: $e1
    ld c, h                                       ; $7f18: $4c
    jr c, @+$15                                   ; $7f19: $38 $13

    ld h, l                                       ; $7f1b: $65
    ld a, e                                       ; $7f1c: $7b
    rst $18                                       ; $7f1d: $df
    or h                                          ; $7f1e: $b4
    ld d, $66                                     ; $7f1f: $16 $66
    and h                                         ; $7f21: $a4
    jp hl                                         ; $7f22: $e9


    call z, Call_05c_6674                         ; $7f23: $cc $74 $66
    ld b, $63                                     ; $7f26: $06 $63
    jr c, @+$2f                                   ; $7f28: $38 $2d

    call z, $bafe                                 ; $7f2a: $cc $fe $ba
    ld l, $b5                                     ; $7f2d: $2e $b5
    inc sp                                        ; $7f2f: $33
    db $ed                                        ; $7f30: $ed
    ld c, h                                       ; $7f31: $4c
    adc a                                         ; $7f32: $8f
    or e                                          ; $7f33: $b3
    and l                                         ; $7f34: $a5
    add hl, de                                    ; $7f35: $19
    xor h                                         ; $7f36: $ac
    pop af                                        ; $7f37: $f1
    cp $af                                        ; $7f38: $fe $af
    dec bc                                        ; $7f3a: $0b
    nop                                           ; $7f3b: $00
    sbc [hl]                                      ; $7f3c: $9e
    rst $38                                       ; $7f3d: $ff
    ret                                           ; $7f3e: $c9


    ld de, $f47e                                  ; $7f3f: $11 $7e $f4
    db $fd                                        ; $7f42: $fd
    dec a                                         ; $7f43: $3d
    rst $38                                       ; $7f44: $ff
    sbc l                                         ; $7f45: $9d
    ld d, h                                       ; $7f46: $54
    cp [hl]                                       ; $7f47: $be
    ld sp, $3489                                  ; $7f48: $31 $89 $34
    ld a, a                                       ; $7f4b: $7f
    rst $20                                       ; $7f4c: $e7
    ld e, h                                       ; $7f4d: $5c
    and l                                         ; $7f4e: $a5
    pop de                                        ; $7f4f: $d1
    xor e                                         ; $7f50: $ab
    cp $f9                                        ; $7f51: $fe $f9
    ld l, e                                       ; $7f53: $6b
    ld e, e                                       ; $7f54: $5b
    ld [$efe1], a                                 ; $7f55: $ea $e1 $ef
    sub [hl]                                      ; $7f58: $96
    dec a                                         ; $7f59: $3d
    scf                                           ; $7f5a: $37
    nop                                           ; $7f5b: $00
    ld c, $33                                     ; $7f5c: $0e $33
    sla [hl]                                      ; $7f5e: $cb $26
    sub c                                         ; $7f60: $91
    or d                                          ; $7f61: $b2
    inc d                                         ; $7f62: $14
    ld [de], a                                    ; $7f63: $12
    ld h, [hl]                                    ; $7f64: $66
    sub h                                         ; $7f65: $94
    ld d, h                                       ; $7f66: $54
    call z, Call_000_033f                         ; $7f67: $cc $3f $03
    rst $20                                       ; $7f6a: $e7
    db $fc                                        ; $7f6b: $fc
    di                                            ; $7f6c: $f3
    ld l, e                                       ; $7f6d: $6b
    pop de                                        ; $7f6e: $d1
    call c, $8ce2                                 ; $7f6f: $dc $e2 $8c
    pop bc                                        ; $7f72: $c1
    cp [hl]                                       ; $7f73: $be
    rst $20                                       ; $7f74: $e7
    cp a                                          ; $7f75: $bf
    xor $ad                                       ; $7f76: $ee $ad
    pop af                                        ; $7f78: $f1
    call c, $bc00                                 ; $7f79: $dc $00 $bc
    ld h, e                                       ; $7f7c: $63

Call_05c_7f7d:
    ld l, e                                       ; $7f7d: $6b
    cp [hl]                                       ; $7f7e: $be

Call_05c_7f7f:
    db $fc                                        ; $7f7f: $fc
    ret c                                         ; $7f80: $d8

    add hl, sp                                    ; $7f81: $39
    ld d, c                                       ; $7f82: $51
    ld e, b                                       ; $7f83: $58
    jp z, Jump_05c_6b71                           ; $7f84: $ca $71 $6b

    or h                                          ; $7f87: $b4
    ld a, h                                       ; $7f88: $7c
    ld [hl+], a                                   ; $7f89: $22
    ld l, e                                       ; $7f8a: $6b
    sub d                                         ; $7f8b: $92
    xor l                                         ; $7f8c: $ad
    ld de, $1415                                  ; $7f8d: $11 $15 $14
    nop                                           ; $7f90: $00
    ret nc                                        ; $7f91: $d0

    jp hl                                         ; $7f92: $e9


    inc h                                         ; $7f93: $24
    ld e, c                                       ; $7f94: $59
    ld [$cacf], sp                                ; $7f95: $08 $cf $ca
    db $d3                                        ; $7f98: $d3
    dec c                                         ; $7f99: $0d
    dec de                                        ; $7f9a: $1b
    and l                                         ; $7f9b: $a5
    ld a, e                                       ; $7f9c: $7b
    db $e3                                        ; $7f9d: $e3
    add h                                         ; $7f9e: $84
    dec [hl]                                      ; $7f9f: $35
    add hl, hl                                    ; $7fa0: $29
    db $fd                                        ; $7fa1: $fd
    ld h, c                                       ; $7fa2: $61
    di                                            ; $7fa3: $f3
    dec [hl]                                      ; $7fa4: $35
    jp $b1f7                                      ; $7fa5: $c3 $f7 $b1


    and d                                         ; $7fa8: $a2
    ld l, $00                                     ; $7fa9: $2e $00
    inc e                                         ; $7fab: $1c
    db $10                                        ; $7fac: $10
    db $ec                                        ; $7fad: $ec
    scf                                           ; $7fae: $37
    push hl                                       ; $7faf: $e5
    sub h                                         ; $7fb0: $94
    ld d, d                                       ; $7fb1: $52
    ld e, l                                       ; $7fb2: $5d
    rst $10                                       ; $7fb3: $d7
    dec h                                         ; $7fb4: $25
    sbc [hl]                                      ; $7fb5: $9e
    ld h, b                                       ; $7fb6: $60
    rst $30                                       ; $7fb7: $f7
    ld h, d                                       ; $7fb8: $62
    add l                                         ; $7fb9: $85
    ld h, d                                       ; $7fba: $62
    push de                                       ; $7fbb: $d5
    dec de                                        ; $7fbc: $1b
    db $10                                        ; $7fbd: $10
    jp nc, Jump_05c_4dbd                          ; $7fbe: $d2 $bd $4d

    ld d, h                                       ; $7fc1: $54
    ld a, [c]                                     ; $7fc2: $f2

Call_05c_7fc3:
    ld h, e                                       ; $7fc3: $63
    daa                                           ; $7fc4: $27
    ld e, d                                       ; $7fc5: $5a
    ccf                                           ; $7fc6: $3f
    or a                                          ; $7fc7: $b7
    ld hl, sp+$62                                 ; $7fc8: $f8 $62
    ld hl, $6a54                                  ; $7fca: $21 $54 $6a
    jp z, $cb3a                                   ; $7fcd: $ca $3a $cb

    sub h                                         ; $7fd0: $94
    ccf                                           ; $7fd1: $3f
    jp $feed                                      ; $7fd2: $c3 $ed $fe


    ld d, a                                       ; $7fd5: $57
    ld c, d                                       ; $7fd6: $4a
    push de                                       ; $7fd7: $d5
    call nz, Call_000_000d                        ; $7fd8: $c4 $0d $00
    ld a, h                                       ; $7fdb: $7c
    db $db                                        ; $7fdc: $db
    inc h                                         ; $7fdd: $24
    sbc $3f                                       ; $7fde: $de $3f
    di                                            ; $7fe0: $f3
    add hl, de                                    ; $7fe1: $19
    sbc d                                         ; $7fe2: $9a
    sbc d                                         ; $7fe3: $9a
    add sp, $1c                                   ; $7fe4: $e8 $1c
    ld d, d                                       ; $7fe6: $52
    rst $00                                       ; $7fe7: $c7
    ld e, h                                       ; $7fe8: $5c
    jr z, jr_05c_7feb                             ; $7fe9: $28 $00

jr_05c_7feb:
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
