; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    dec [hl]                                      ; $4000: $35
    or e                                          ; $4001: $b3
    ld c, a                                       ; $4002: $4f
    inc a                                         ; $4003: $3c
    ei                                            ; $4004: $fb
    call nz, Call_035_7fb3                        ; $4005: $c4 $b3 $7f
    cp $aa                                        ; $4008: $fe $aa
    cp l                                          ; $400a: $bd
    ld h, l                                       ; $400b: $65
    adc [hl]                                      ; $400c: $8e
    add hl, sp                                    ; $400d: $39
    ld b, $e0                                     ; $400e: $06 $e0
    ld a, [hl-]                                   ; $4010: $3a
    cp h                                          ; $4011: $bc
    dec h                                         ; $4012: $25
    xor e                                         ; $4013: $ab
    ld a, [hl+]                                   ; $4014: $2a
    ld bc, $f507                                  ; $4015: $01 $07 $f5
    sbc [hl]                                      ; $4018: $9e
    ld a, e                                       ; $4019: $7b
    daa                                           ; $401a: $27
    adc c                                         ; $401b: $89
    halt                                          ; $401c: $76
    add e                                         ; $401d: $83
    cp a                                          ; $401e: $bf
    ld [c], a                                     ; $401f: $e2
    rst $08                                       ; $4020: $cf
    cp h                                          ; $4021: $bc
    rst $20                                       ; $4022: $e7
    ld [$588f], a                                 ; $4023: $ea $8f $58
    ld h, e                                       ; $4026: $63
    ld sp, $ebf8                                  ; $4027: $31 $f8 $eb
    dec bc                                        ; $402a: $0b
    ld c, e                                       ; $402b: $4b
    push de                                       ; $402c: $d5
    ld d, c                                       ; $402d: $51
    db $ed                                        ; $402e: $ed
    db $ed                                        ; $402f: $ed
    ld c, b                                       ; $4030: $48
    push bc                                       ; $4031: $c5
    dec d                                         ; $4032: $15
    halt                                          ; $4033: $76
    xor b                                         ; $4034: $a8
    xor $ec                                       ; $4035: $ee $ec
    ld e, a                                       ; $4037: $5f
    and c                                         ; $4038: $a1
    push de                                       ; $4039: $d5
    pop de                                        ; $403a: $d1
    rst $30                                       ; $403b: $f7
    ld d, a                                       ; $403c: $57
    sbc e                                         ; $403d: $9b
    jp nz, $dab9                                  ; $403e: $c2 $b9 $da

    db $db                                        ; $4041: $db
    ld e, c                                       ; $4042: $59
    xor b                                         ; $4043: $a8
    ld [c], a                                     ; $4044: $e2
    xor a                                         ; $4045: $af
    jp c, Jump_035_51d2                           ; $4046: $da $d2 $51

    rst $10                                       ; $4049: $d7
    add b                                         ; $404a: $80
    jp hl                                         ; $404b: $e9


    sub b                                         ; $404c: $90
    inc e                                         ; $404d: $1c
    ld [hl], e                                    ; $404e: $73
    dec hl                                        ; $404f: $2b
    sbc b                                         ; $4050: $98
    jr jr_035_4067                                ; $4051: $18 $14

    inc c                                         ; $4053: $0c
    ret                                           ; $4054: $c9


    ld bc, $7f8c                                  ; $4055: $01 $8c $7f
    ret                                           ; $4058: $c9


    sub l                                         ; $4059: $95
    ldh [rIF], a                                  ; $405a: $e0 $0f
    ld [hl+], a                                   ; $405c: $22
    ld c, e                                       ; $405d: $4b
    sbc e                                         ; $405e: $9b
    jr nc, jr_035_40d2                            ; $405f: $30 $71

    jp nz, Jump_000_09c4                          ; $4061: $c2 $c4 $09

    db $fc                                        ; $4064: $fc
    push de                                       ; $4065: $d5
    ld [bc], a                                    ; $4066: $02

jr_035_4067:
    ld c, $ea                                     ; $4067: $0e $ea
    ld [$3a90], a                                 ; $4069: $ea $90 $3a
    sub $65                                       ; $406c: $d6 $65
    adc l                                         ; $406e: $8d
    rst $10                                       ; $406f: $d7
    ld l, d                                       ; $4070: $6a

Call_035_4071:
    adc e                                         ; $4071: $8b
    dec sp                                        ; $4072: $3b
    ld d, h                                       ; $4073: $54
    ld de, $67d9                                  ; $4074: $11 $d9 $67
    ld a, l                                       ; $4077: $7d
    xor [hl]                                      ; $4078: $ae
    ld c, $37                                     ; $4079: $0e $37
    ld hl, sp-$15                                 ; $407b: $f8 $eb
    ld e, [hl]                                    ; $407d: $5e
    ld [hl], d                                    ; $407e: $72
    ld a, h                                       ; $407f: $7c
    ld l, d                                       ; $4080: $6a
    cp c                                          ; $4081: $b9
    dec sp                                        ; $4082: $3b
    ret nc                                        ; $4083: $d0

    ld e, l                                       ; $4084: $5d
    dec h                                         ; $4085: $25
    call $92fe                                    ; $4086: $cd $fe $92
    ei                                            ; $4089: $fb
    ld h, $7e                                     ; $408a: $26 $7e
    inc de                                        ; $408c: $13
    ccf                                           ; $408d: $3f
    set 4, b                                      ; $408e: $cb $e0
    dec h                                         ; $4090: $25
    ld a, [c]                                     ; $4091: $f2
    inc sp                                        ; $4092: $33
    xor a                                         ; $4093: $af
    or $96                                        ; $4094: $f6 $96
    ret                                           ; $4096: $c9


    rra                                           ; $4097: $1f
    adc c                                         ; $4098: $89
    ld e, d                                       ; $4099: $5a
    or [hl]                                       ; $409a: $b6
    sbc c                                         ; $409b: $99
    ld e, c                                       ; $409c: $59
    ld l, a                                       ; $409d: $6f
    rst $28                                       ; $409e: $ef
    inc h                                         ; $409f: $24
    pop de                                        ; $40a0: $d1
    ld a, $f7                                     ; $40a1: $3e $f7
    or e                                          ; $40a3: $b3
    sub [hl]                                      ; $40a4: $96
    ld [$ad5f], a                                 ; $40a5: $ea $5f $ad
    ld a, d                                       ; $40a8: $7a
    ld [$f26f], a                                 ; $40a9: $ea $6f $f2
    call nz, Call_000_13c9                        ; $40ac: $c4 $c9 $13
    daa                                           ; $40af: $27

Call_035_40b0:
    ld a, a                                       ; $40b0: $7f
    sub c                                         ; $40b1: $91
    ld sp, $751d                                  ; $40b2: $31 $1d $75
    ld bc, $ca58                                  ; $40b5: $01 $58 $ca
    ld b, $42                                     ; $40b8: $06 $42
    db $d3                                        ; $40ba: $d3
    inc [hl]                                      ; $40bb: $34
    call $a301                                    ; $40bc: $cd $01 $a3
    ccf                                           ; $40bf: $3f
    ld [hl], $10                                  ; $40c0: $36 $10
    xor d                                         ; $40c2: $aa
    ccf                                           ; $40c3: $3f
    sub [hl]                                      ; $40c4: $96
    jr nz, jr_035_4110                            ; $40c5: $20 $49

    dec e                                         ; $40c7: $1d
    db $eb                                        ; $40c8: $eb
    ld c, $55                                     ; $40c9: $0e $55
    ld b, h                                       ; $40cb: $44
    or $59                                        ; $40cc: $f6 $59
    rst $08                                       ; $40ce: $cf
    ld e, b                                       ; $40cf: $58
    ld h, $7f                                     ; $40d0: $26 $7f

jr_035_40d2:
    dec de                                        ; $40d2: $1b
    ld h, $d2                                     ; $40d3: $26 $d2
    inc e                                         ; $40d5: $1c
    or e                                          ; $40d6: $b3
    call nz, Call_035_576a                        ; $40d7: $c4 $6a $57
    ld a, e                                       ; $40da: $7b
    srl b                                         ; $40db: $cb $38
    ld [hl], c                                    ; $40dd: $71
    ld [hl], $71                                  ; $40de: $36 $71
    and $cc                                       ; $40e0: $e6 $cc
    ld c, e                                       ; $40e2: $4b
    ld d, b                                       ; $40e3: $50
    push bc                                       ; $40e4: $c5
    ld e, a                                       ; $40e5: $5f
    sbc a                                         ; $40e6: $9f
    push hl                                       ; $40e7: $e5
    dec hl                                        ; $40e8: $2b
    ld c, h                                       ; $40e9: $4c
    dec sp                                        ; $40ea: $3b
    rst $08                                       ; $40eb: $cf
    ld [$76b2], a                                 ; $40ec: $ea $b2 $76
    ret nc                                        ; $40ef: $d0

    ld [$afe0], a                                 ; $40f0: $ea $e0 $af
    inc de                                        ; $40f3: $13
    ld d, a                                       ; $40f4: $57
    ld e, e                                       ; $40f5: $5b
    ld a, [hl-]                                   ; $40f6: $3a
    dec bc                                        ; $40f7: $0b
    ld d, l                                       ; $40f8: $55
    db $fc                                        ; $40f9: $fc
    ld d, l                                       ; $40fa: $55
    ld e, e                                       ; $40fb: $5b
    ld a, [hl-]                                   ; $40fc: $3a
    ld [$301a], a                                 ; $40fd: $ea $1a $30
    db $ed                                        ; $4100: $ed
    dec a                                         ; $4101: $3d
    ld b, h                                       ; $4102: $44
    ld d, a                                       ; $4103: $57
    rlca                                          ; $4104: $07
    ld a, a                                       ; $4105: $7f
    adc l                                         ; $4106: $8d
    db $e3                                        ; $4107: $e3
    or b                                          ; $4108: $b0
    db $f4                                        ; $4109: $f4
    xor $00                                       ; $410a: $ee $00
    ld c, e                                       ; $410c: $4b
    ld [hl], c                                    ; $410d: $71
    ld h, d                                       ; $410e: $62
    sbc h                                         ; $410f: $9c

jr_035_4110:
    jr @-$05                                      ; $4110: $18 $f9

    cp e                                          ; $4112: $bb
    daa                                           ; $4113: $27
    ld a, [c]                                     ; $4114: $f2
    rst $20                                       ; $4115: $e7
    dec a                                         ; $4116: $3d
    sub a                                         ; $4117: $97
    dec c                                         ; $4118: $0d
    db $ec                                        ; $4119: $ec
    pop af                                        ; $411a: $f1
    or a                                          ; $411b: $b7
    ld a, [hl-]                                   ; $411c: $3a
    ld hl, sp+$6b                                 ; $411d: $f8 $6b
    inc l                                         ; $411f: $2c
    halt                                          ; $4120: $76
    sbc b                                         ; $4121: $98
    ld bc, $138a                                  ; $4122: $01 $8a $13
    db $e3                                        ; $4125: $e3
    call nz, $e608                                ; $4126: $c4 $08 $e6
    scf                                           ; $4129: $37
    ld l, a                                       ; $412a: $6f
    rrca                                          ; $412b: $0f
    add l                                         ; $412c: $85
    sbc b                                         ; $412d: $98
    and $c9                                       ; $412e: $e6 $c9
    ld h, c                                       ; $4130: $61
    jp hl                                         ; $4131: $e9


    dec a                                         ; $4132: $3d
    inc b                                         ; $4133: $04
    and c                                         ; $4134: $a1
    ld e, d                                       ; $4135: $5a
    ld d, l                                       ; $4136: $55
    ld a, e                                       ; $4137: $7b
    srl b                                         ; $4138: $cb $38
    ld [hl], c                                    ; $413a: $71
    ld [hl], $71                                  ; $413b: $36 $71
    and $cc                                       ; $413d: $e6 $cc
    ld c, e                                       ; $413f: $4b
    ld d, b                                       ; $4140: $50
    push bc                                       ; $4141: $c5
    ld e, a                                       ; $4142: $5f
    scf                                           ; $4143: $37
    ld hl, sp-$7d                                 ; $4144: $f8 $83
    ld [de], a                                    ; $4146: $12
    or c                                          ; $4147: $b1
    jp c, Jump_035_6e7b                           ; $4148: $da $7b $6e

    ld a, [c]                                     ; $414b: $f2
    rla                                           ; $414c: $17
    add hl, de                                    ; $414d: $19
    inc sp                                        ; $414e: $33
    inc h                                         ; $414f: $24
    rlca                                          ; $4150: $07
    inc hl                                        ; $4151: $23
    ld b, e                                       ; $4152: $43
    sbc d                                         ; $4153: $9a
    and [hl]                                      ; $4154: $a6
    ld l, c                                       ; $4155: $69
    inc sp                                        ; $4156: $33
    ccf                                           ; $4157: $3f
    xor b                                         ; $4158: $a8
    or c                                          ; $4159: $b1
    dec de                                        ; $415a: $1b
    db $fc                                        ; $415b: $fc
    ld b, c                                       ; $415c: $41
    db $d3                                        ; $415d: $d3
    inc [hl]                                      ; $415e: $34
    dec l                                         ; $415f: $2d
    ld l, e                                       ; $4160: $6b
    cp h                                          ; $4161: $bc
    ld d, [hl]                                    ; $4162: $56
    ld e, e                                       ; $4163: $5b
    or b                                          ; $4164: $b0
    sbc c                                         ; $4165: $99
    add d                                         ; $4166: $82
    and [hl]                                      ; $4167: $a6
    ld l, c                                       ; $4168: $69
    sbc d                                         ; $4169: $9a
    inc bc                                        ; $416a: $03
    adc h                                         ; $416b: $8c
    ld a, [hl]                                    ; $416c: $7e
    ld d, b                                       ; $416d: $50
    ld h, e                                       ; $416e: $63
    ld [hl], l                                    ; $416f: $75
    ld c, b                                       ; $4170: $48
    sub c                                         ; $4171: $91
    cp a                                          ; $4172: $bf
    ld l, e                                       ; $4173: $6b
    rr d                                          ; $4174: $cb $1a
    pop de                                        ; $4176: $d1
    ld [hl-], a                                   ; $4177: $32
    ld h, e                                       ; $4178: $63
    sub e                                         ; $4179: $93
    ld d, h                                       ; $417a: $54
    pop af                                        ; $417b: $f1
    ccf                                           ; $417c: $3f
    add h                                         ; $417d: $84
    and d                                         ; $417e: $a2
    sbc a                                         ; $417f: $9f
    db $f4                                        ; $4180: $f4
    ld h, $7f                                     ; $4181: $26 $7f
    ld l, a                                       ; $4183: $6f
    db $fd                                        ; $4184: $fd
    ld a, [bc]                                    ; $4185: $0a
    rst $08                                       ; $4186: $cf
    db $fd                                        ; $4187: $fd
    inc d                                         ; $4188: $14
    ld a, e                                       ; $4189: $7b
    db $fc                                        ; $418a: $fc
    xor l                                         ; $418b: $ad
    ld c, $fe                                     ; $418c: $0e $fe
    cp d                                          ; $418e: $ba
    sbc a                                         ; $418f: $9f
    cp a                                          ; $4190: $bf
    cp [hl]                                       ; $4191: $be
    or b                                          ; $4192: $b0
    inc [hl]                                      ; $4193: $34
    inc sp                                        ; $4194: $33
    dec hl                                        ; $4195: $2b
    sbc a                                         ; $4196: $9f
    ccf                                           ; $4197: $3f
    add sp, -$05                                  ; $4198: $e8 $fb
    sub b                                         ; $419a: $90
    and $09                                       ; $419b: $e6 $09
    db $fc                                        ; $419d: $fc
    sub l                                         ; $419e: $95

Call_035_419f:
    adc l                                         ; $419f: $8d
    db $ed                                        ; $41a0: $ed
    ldh [$75], a                                  ; $41a1: $e0 $75
    ld [hl], h                                    ; $41a3: $74
    ld d, $aa                                     ; $41a4: $16 $aa
    ld hl, sp-$55                                 ; $41a6: $f8 $ab
    or [hl]                                       ; $41a8: $b6
    ld [hl], h                                    ; $41a9: $74
    call nc, Call_035_6035                        ; $41aa: $d4 $35 $60
    ld e, d                                       ; $41ad: $5a
    sub $68                                       ; $41ae: $d6 $68
    ld b, h                                       ; $41b0: $44
    ld l, a                                       ; $41b1: $6f

Jump_035_41b2:
    ld e, d                                       ; $41b2: $5a
    ld h, $7f                                     ; $41b3: $26 $7f
    dec de                                        ; $41b5: $1b
    ld h, $d2                                     ; $41b6: $26 $d2
    adc [hl]                                      ; $41b8: $8e
    sub d                                         ; $41b9: $92
    adc e                                         ; $41ba: $8b
    ld c, b                                       ; $41bb: $48
    dec sp                                        ; $41bc: $3b
    and a                                         ; $41bd: $a7
    ld a, [bc]                                    ; $41be: $0a
    ld de, $da53                                  ; $41bf: $11 $53 $da
    rst $30                                       ; $41c2: $f7
    and c                                         ; $41c3: $a1
    ld b, a                                       ; $41c4: $47
    ld c, b                                       ; $41c5: $48
    cp a                                          ; $41c6: $bf
    ld [hl+], a                                   ; $41c7: $22
    ld [hl-], a                                   ; $41c8: $32
    add e                                         ; $41c9: $83
    db $fc                                        ; $41ca: $fc
    call z, $ae7b                                 ; $41cb: $cc $7b $ae
    ld h, e                                       ; $41ce: $63
    cp l                                          ; $41cf: $bd
    ld h, l                                       ; $41d0: $65
    ld [hl], h                                    ; $41d1: $74
    and $25                                       ; $41d2: $e6 $25
    xor b                                         ; $41d4: $a8
    ld [c], a                                     ; $41d5: $e2
    xor a                                         ; $41d6: $af
    ld h, h                                       ; $41d7: $64

Call_035_41d8:
    ld d, l                                       ; $41d8: $55
    ld [hl+], a                                   ; $41d9: $22
    ld d, [hl]                                    ; $41da: $56
    ld a, e                                       ; $41db: $7b
    db $d3                                        ; $41dc: $d3
    adc [hl]                                      ; $41dd: $8e
    jr jr_035_425b                                ; $41de: $18 $7b

    rst $10                                       ; $41e0: $d7
    ld e, e                                       ; $41e1: $5b
    ld h, [hl]                                    ; $41e2: $66
    cp b                                          ; $41e3: $b8
    ld b, a                                       ; $41e4: $47
    ld c, b                                       ; $41e5: $48
    sbc a                                         ; $41e6: $9f
    add hl, hl                                    ; $41e7: $29
    pop hl                                        ; $41e8: $e1
    sbc l                                         ; $41e9: $9d
    ld sp, $b307                                  ; $41ea: $31 $07 $b3
    rst $00                                       ; $41ed: $c7
    ld [hl], c                                    ; $41ee: $71
    call nc, $ff70                                ; $41ef: $d4 $70 $ff
    ret c                                         ; $41f2: $d8

    pop bc                                        ; $41f3: $c1
    ld l, e                                       ; $41f4: $6b
    xor e                                         ; $41f5: $ab
    jp $a3e8                                      ; $41f6: $c3 $e8 $a3


    inc hl                                        ; $41f9: $23
    sbc l                                         ; $41fa: $9d
    db $fd                                        ; $41fb: $fd
    add c                                         ; $41fc: $81
    db $eb                                        ; $41fd: $eb
    ld l, [hl]                                    ; $41fe: $6e
    sbc c                                         ; $41ff: $99
    ld a, b                                       ; $4200: $78
    ld l, [hl]                                    ; $4201: $6e
    ld sp, hl                                     ; $4202: $f9
    ld a, e                                       ; $4203: $7b
    ld c, e                                       ; $4204: $4b
    sbc e                                         ; $4205: $9b
    ld h, h                                       ; $4206: $64
    jp hl                                         ; $4207: $e9


    inc l                                         ; $4208: $2c
    ld d, h                                       ; $4209: $54
    pop af                                        ; $420a: $f1
    rst $10                                       ; $420b: $d7
    db $db                                        ; $420c: $db
    rst $18                                       ; $420d: $df
    xor l                                         ; $420e: $ad
    cp $47                                        ; $420f: $fe $47
    ld b, b                                       ; $4211: $40
    scf                                           ; $4212: $37
    ld hl, sp-$7d                                 ; $4213: $f8 $83
    ld a, [hl]                                    ; $4215: $7e
    ld b, l                                       ; $4216: $45
    ld h, h                                       ; $4217: $64
    ld a, [hl]                                    ; $4218: $7e
    rla                                           ; $4219: $17
    db $eb                                        ; $421a: $eb
    db $ed                                        ; $421b: $ed
    db $dd                                        ; $421c: $dd
    and d                                         ; $421d: $a2
    cp l                                          ; $421e: $bd
    rst $20                                       ; $421f: $e7
    ld a, [hl]                                    ; $4220: $7e
    sub $52                                       ; $4221: $d6 $52
    ld h, e                                       ; $4223: $63
    rst $28                                       ; $4224: $ef
    ld hl, $3aba                                  ; $4225: $21 $ba $3a
    and h                                         ; $4228: $a4
    ret z                                         ; $4229: $c8

    rst $18                                       ; $422a: $df
    or l                                          ; $422b: $b5
    ld h, l                                       ; $422c: $65
    ccf                                           ; $422d: $3f
    push de                                       ; $422e: $d5
    dec e                                         ; $422f: $1d
    inc c                                         ; $4230: $0c
    db $d3                                        ; $4231: $d3
    or d                                          ; $4232: $b2
    ld b, [hl]                                    ; $4233: $46
    or h                                          ; $4234: $b4
    inc [hl]                                      ; $4235: $34
    di                                            ; $4236: $f3
    di                                            ; $4237: $f3
    and [hl]                                      ; $4238: $a6
    add hl, sp                                    ; $4239: $39
    di                                            ; $423a: $f3
    add [hl]                                      ; $423b: $86
    xor c                                         ; $423c: $a9
    or a                                          ; $423d: $b7
    ld c, c                                       ; $423e: $49
    ld a, a                                       ; $423f: $7f
    ld l, a                                       ; $4240: $6f
    rst $20                                       ; $4241: $e7
    adc [hl]                                      ; $4242: $8e
    db $fc                                        ; $4243: $fc
    ld a, [$1d1f]                                 ; $4244: $fa $1f $1d
    ld [hl], l                                    ; $4247: $75
    dec e                                         ; $4248: $1d
    add h                                         ; $4249: $84
    ld a, b                                       ; $424a: $78
    ld c, h                                       ; $424b: $4c
    sbc d                                         ; $424c: $9a
    inc bc                                        ; $424d: $03
    add hl, bc                                    ; $424e: $09
    db $fc                                        ; $424f: $fc
    push af                                       ; $4250: $f5
    ld a, l                                       ; $4251: $7d
    sub $d5                                       ; $4252: $d6 $d5
    ld hl, $17d5                                  ; $4254: $21 $d5 $17
    ld a, a                                       ; $4257: $7f
    call $3f8c                                    ; $4258: $cd $8c $3f

jr_035_425b:
    add e                                         ; $425b: $83
    ld [hl], e                                    ; $425c: $73
    push af                                       ; $425d: $f5
    ld b, a                                       ; $425e: $47
    xor h                                         ; $425f: $ac
    cp $d8                                        ; $4260: $fe $d8
    add c                                         ; $4262: $81
    adc a                                         ; $4263: $8f
    jr jr_035_427c                                ; $4264: $18 $16

    ld l, a                                       ; $4266: $6f
    rst $28                                       ; $4267: $ef
    inc h                                         ; $4268: $24
    pop de                                        ; $4269: $d1
    ld c, [hl]                                    ; $426a: $4e
    ld [hl], e                                    ; $426b: $73
    and e                                         ; $426c: $a3
    dec e                                         ; $426d: $1d
    db $e3                                        ; $426e: $e3
    ld b, b                                       ; $426f: $40
    or l                                          ; $4270: $b5
    ld a, [hl-]                                   ; $4271: $3a
    rst $30                                       ; $4272: $f7
    ld e, $ee                                     ; $4273: $1e $ee
    pop af                                        ; $4275: $f1
    or a                                          ; $4276: $b7
    jp c, Jump_035_59db                           ; $4277: $da $db $59

    xor b                                         ; $427a: $a8
    ld [c], a                                     ; $427b: $e2

jr_035_427c:
    xor a                                         ; $427c: $af
    add e                                         ; $427d: $83
    ld d, $10                                     ; $427e: $16 $10
    rlca                                          ; $4280: $07
    db $eb                                        ; $4281: $eb
    db $ed                                        ; $4282: $ed
    db $ed                                        ; $4283: $ed
    rst $28                                       ; $4284: $ef
    adc $98                                       ; $4285: $ce $98
    inc bc                                        ; $4287: $03
    ld c, c                                       ; $4288: $49
    di                                            ; $4289: $f3
    sub h                                         ; $428a: $94
    dec c                                         ; $428b: $0d
    add h                                         ; $428c: $84
    ld a, [hl-]                                   ; $428d: $3a
    or [hl]                                       ; $428e: $b6
    or e                                          ; $428f: $b3
    ld d, b                                       ; $4290: $50
    push bc                                       ; $4291: $c5
    rst $18                                       ; $4292: $df
    cp c                                          ; $4293: $b9
    and e                                         ; $4294: $a3
    ld l, $00                                     ; $4295: $2e $00
    ld c, e                                       ; $4297: $4b
    push de                                       ; $4298: $d5
    ld [$7f06], a                                 ; $4299: $ea $06 $7f
    cp l                                          ; $429c: $bd
    sub e                                         ; $429d: $93
    db $10                                        ; $429e: $10
    pop bc                                        ; $429f: $c1
    cp l                                          ; $42a0: $bd
    add a                                         ; $42a1: $87
    call c, $f068                                 ; $42a2: $dc $68 $f0
    rst $10                                       ; $42a5: $d7
    call z, $3eb2                                 ; $42a6: $cc $b2 $3e
    rst $30                                       ; $42a9: $f7
    ld e, $6e                                     ; $42aa: $1e $6e
    ldh a, [$57]                                  ; $42ac: $f0 $57
    dec e                                         ; $42ae: $1d
    db $fc                                        ; $42af: $fc
    ld [hl], l                                    ; $42b0: $75
    ret nc                                        ; $42b1: $d0

    ld [bc], a                                    ; $42b2: $02
    ld [c], a                                     ; $42b3: $e2
    ld h, b                                       ; $42b4: $60
    cp l                                          ; $42b5: $bd
    cp l                                          ; $42b6: $bd
    adc l                                         ; $42b7: $8d
    cp l                                          ; $42b8: $bd
    dec bc                                        ; $42b9: $0b
    ld c, [hl]                                    ; $42ba: $4e
    ld [hl], e                                    ; $42bb: $73
    ld c, c                                       ; $42bc: $49
    xor d                                         ; $42bd: $aa
    jr nz, @+$10                                  ; $42be: $20 $0e

    ld d, $a1                                     ; $42c0: $16 $a1
    ld a, [hl-]                                   ; $42c2: $3a
    ld hl, sp-$15                                 ; $42c3: $f8 $eb
    ld b, l                                       ; $42c5: $45
    ld b, b                                       ; $42c6: $40
    rst $28                                       ; $42c7: $ef
    adc c                                         ; $42c8: $89
    ld c, a                                       ; $42c9: $4f
    cp h                                          ; $42ca: $bc
    cp d                                          ; $42cb: $ba
    jp c, Jump_035_79d8                           ; $42cc: $da $d8 $79

    ld d, $2c                                     ; $42cf: $16 $2c
    ld [de], a                                    ; $42d1: $12
    db $fc                                        ; $42d2: $fc
    ld bc, $59f6                                  ; $42d3: $01 $f6 $59
    call nc, $6e71                                ; $42d6: $d4 $71 $6e
    ld a, [c]                                     ; $42d9: $f2
    rla                                           ; $42da: $17
    add hl, de                                    ; $42db: $19
    sub e                                         ; $42dc: $93
    and $09                                       ; $42dd: $e6 $09
    db $fc                                        ; $42df: $fc
    push af                                       ; $42e0: $f5
    xor [hl]                                      ; $42e1: $ae
    ld b, h                                       ; $42e2: $44
    cp e                                          ; $42e3: $bb
    add e                                         ; $42e4: $83
    ld d, $82                                     ; $42e5: $16 $82
    ld a, [hl+]                                   ; $42e7: $2a
    cp $e0                                        ; $42e8: $fe $e0
    ld e, h                                       ; $42ea: $5c
    db $e4                                        ; $42eb: $e4
    ld l, a                                       ; $42ec: $6f
    jp $9a44                                      ; $42ed: $c3 $44 $9a


    inc bc                                        ; $42f0: $03
    and e                                         ; $42f1: $a3
    dec l                                         ; $42f2: $2d
    ld a, l                                       ; $42f3: $7d
    rra                                           ; $42f4: $1f
    xor d                                         ; $42f5: $aa
    add e                                         ; $42f6: $83
    cp a                                          ; $42f7: $bf
    ld c, $5a                                     ; $42f8: $0e $5a
    ld [$f8aa], sp                                ; $42fa: $08 $aa $f8
    add e                                         ; $42fd: $83
    add hl, de                                    ; $42fe: $19
    ld [hl], e                                    ; $42ff: $73
    and e                                         ; $4300: $a3
    db $ec                                        ; $4301: $ec
    ld b, c                                       ; $4302: $41
    ld h, e                                       ; $4303: $63
    jp c, $d2e1                                   ; $4304: $da $e1 $d2

    rst $30                                       ; $4307: $f7
    and c                                         ; $4308: $a1
    jp c, Jump_035_59db                           ; $4309: $da $db $59

    xor b                                         ; $430c: $a8
    ld [c], a                                     ; $430d: $e2
    xor a                                         ; $430e: $af
    jp c, Jump_035_51d2                           ; $430f: $da $d2 $51

    rst $10                                       ; $4312: $d7
    add b                                         ; $4313: $80
    ld l, c                                       ; $4314: $69
    cp a                                          ; $4315: $bf
    ld [hl+], a                                   ; $4316: $22
    ld a, d                                       ; $4317: $7a
    inc b                                         ; $4318: $04
    ld a, a                                       ; $4319: $7f
    db $fd                                        ; $431a: $fd
    sbc e                                         ; $431b: $9b

Jump_035_431c:
    ld sp, hl                                     ; $431c: $f9
    cp $57                                        ; $431d: $fe $57
    ld b, e                                       ; $431f: $43
    push de                                       ; $4320: $d5
    ld [$a9ce], a                                 ; $4321: $ea $ce $a9
    ld b, d                                       ; $4324: $42
    call nz, $f694                                ; $4325: $c4 $94 $f6
    ld a, l                                       ; $4328: $7d
    add sp, $11                                   ; $4329: $e8 $11
    db $fc                                        ; $432b: $fc
    sub l                                         ; $432c: $95
    ld e, [hl]                                    ; $432d: $5e
    sbc b                                         ; $432e: $98
    add hl, de                                    ; $432f: $19
    ld sp, hl                                     ; $4330: $f9
    dec bc                                        ; $4331: $0b
    ld a, [hl]                                    ; $4332: $7e
    add e                                         ; $4333: $83
    ld [hl], e                                    ; $4334: $73
    dec e                                         ; $4335: $1d
    db $eb                                        ; $4336: $eb
    dec l                                         ; $4337: $2d
    and e                                         ; $4338: $a3
    inc sp                                        ; $4339: $33
    cpl                                           ; $433a: $2f
    ld b, c                                       ; $433b: $41
    dec d                                         ; $433c: $15
    ld a, a                                       ; $433d: $7f
    dec h                                         ; $433e: $25
    xor e                                         ; $433f: $ab
    ld [de], a                                    ; $4340: $12
    or c                                          ; $4341: $b1
    jp c, Jump_035_769b                           ; $4342: $da $9b $76

    ld l, [hl]                                    ; $4345: $6e
    dec b                                         ; $4346: $05
    inc de                                        ; $4347: $13
    add e                                         ; $4348: $83
    add d                                         ; $4349: $82
    inc [hl]                                      ; $434a: $34
    rlca                                          ; $434b: $07
    ld c, c                                       ; $434c: $49
    ld h, c                                       ; $434d: $61
    or h                                          ; $434e: $b4
    ld [hl], h                                    ; $434f: $74
    ld d, $aa                                     ; $4350: $16 $aa
    ld hl, sp-$15                                 ; $4352: $f8 $eb
    dec a                                         ; $4354: $3d
    ld b, h                                       ; $4355: $44
    ld d, a                                       ; $4356: $57
    rlca                                          ; $4357: $07
    ld a, a                                       ; $4358: $7f
    adc l                                         ; $4359: $8d
    db $e3                                        ; $435a: $e3
    or b                                          ; $435b: $b0
    db $f4                                        ; $435c: $f4
    xor $00                                       ; $435d: $ee $00
    ld c, e                                       ; $435f: $4b
    sub c                                         ; $4360: $91
    cp a                                          ; $4361: $bf
    ld a, e                                       ; $4362: $7b
    ld [hl+], a                                   ; $4363: $22
    ld a, a                                       ; $4364: $7f
    sbc $b4                                       ; $4365: $de $b4
    di                                            ; $4367: $f3
    add [hl]                                      ; $4368: $86
    add hl, hl                                    ; $4369: $29

Call_035_436a:
    ld [hl], l                                    ; $436a: $75
    ldh a, [rTAC]                                 ; $436b: $f0 $07
    dec h                                         ; $436d: $25
    ld h, d                                       ; $436e: $62
    or l                                          ; $436f: $b5
    ld de, $55aa                                  ; $4370: $11 $aa $55
    dec c                                         ; $4373: $0d
    rst $30                                       ; $4374: $f7
    adc a                                         ; $4375: $8f
    adc l                                         ; $4376: $8d
    xor l                                         ; $4377: $ad
    or [hl]                                       ; $4378: $b6
    ld [hl], h                                    ; $4379: $74
    ld e, b                                       ; $437a: $58
    or b                                          ; $437b: $b0
    inc [hl]                                      ; $437c: $34
    ld l, $78                                     ; $437d: $2e $78
    cp [hl]                                       ; $437f: $be
    sbc l                                         ; $4380: $9d
    xor e                                         ; $4381: $ab
    ccf                                           ; $4382: $3f
    ld d, [hl]                                    ; $4383: $56
    add a                                         ; $4384: $87
    db $f4                                        ; $4385: $f4
    sbc c                                         ; $4386: $99
    ld [de], a                                    ; $4387: $12
    sbc $de                                       ; $4388: $de $de
    cp $6e                                        ; $438a: $fe $6e
    sbc d                                         ; $438c: $9a
    inc bc                                        ; $438d: $03
    ret                                           ; $438e: $c9


    ld e, a                                       ; $438f: $5f
    ld h, h                                       ; $4390: $64
    call z, $8e90                                 ; $4391: $cc $90 $8e
    cp $a2                                        ; $4394: $fe $a2
    adc [hl]                                      ; $4396: $8e
    or d                                          ; $4397: $b2
    add c                                         ; $4398: $81
    ld d, b                                       ; $4399: $50
    xor l                                         ; $439a: $ad
    cp d                                          ; $439b: $ba
    pop bc                                        ; $439c: $c1
    rra                                           ; $439d: $1f
    inc [hl]                                      ; $439e: $34
    or [hl]                                       ; $439f: $b6
    jp c, $96b1                                   ; $43a0: $da $b1 $96

    adc [hl]                                      ; $43a3: $8e
    and b                                         ; $43a4: $a0
    rra                                           ; $43a5: $1f
    pop de                                        ; $43a6: $d1
    inc sp                                        ; $43a7: $33
    and $a3                                       ; $43a8: $e6 $a3
    db $e4                                        ; $43aa: $e4
    ld [hl+], a                                   ; $43ab: $22
    adc h                                         ; $43ac: $8c
    ld a, b                                       ; $43ad: $78
    ld c, c                                       ; $43ae: $49
    rst $20                                       ; $43af: $e7
    ld d, h                                       ; $43b0: $54
    ld hl, $4a62                                  ; $43b1: $21 $62 $4a
    ei                                            ; $43b4: $fb
    ld a, $f4                                     ; $43b5: $3e $f4
    ld [$57e9], sp                                ; $43b7: $08 $e9 $57
    ld b, h                                       ; $43ba: $44
    ld h, [hl]                                    ; $43bb: $66
    sub b                                         ; $43bc: $90
    sbc a                                         ; $43bd: $9f
    ld a, c                                       ; $43be: $79
    rst $08                                       ; $43bf: $cf
    ld [hl], l                                    ; $43c0: $75
    xor h                                         ; $43c1: $ac
    or a                                          ; $43c2: $b7
    adc h                                         ; $43c3: $8c
    adc $bc                                       ; $43c4: $ce $bc
    inc b                                         ; $43c6: $04
    ld d, l                                       ; $43c7: $55
    db $fc                                        ; $43c8: $fc
    sub l                                         ; $43c9: $95
    xor h                                         ; $43ca: $ac
    ld c, d                                       ; $43cb: $4a
    call nz, $ef6a                                ; $43cc: $c4 $6a $ef
    cp c                                          ; $43cf: $b9
    jp c, Jump_000_23d2                           ; $43d0: $da $d2 $23

    and h                                         ; $43d3: $a4
    cpl                                           ; $43d4: $2f
    jr z, jr_035_43d8                             ; $43d5: $28 $01

    ld l, c                                       ; $43d7: $69

jr_035_43d8:
    rst $20                                       ; $43d8: $e7
    ld d, [hl]                                    ; $43d9: $56
    jr nc, jr_035_440d                            ; $43da: $30 $31

    jr z, jr_035_4426                             ; $43dc: $28 $48

    ld [hl], e                                    ; $43de: $73
    or e                                          ; $43df: $b3
    ret z                                         ; $43e0: $c8

    rst $08                                       ; $43e1: $cf
    ld a, d                                       ; $43e2: $7a
    ld a, h                                       ; $43e3: $7c
    jp c, $5f91                                   ; $43e4: $da $91 $5f

    rst $38                                       ; $43e7: $ff
    and e                                         ; $43e8: $a3
    and e                                         ; $43e9: $a3
    ld h, d                                       ; $43ea: $62
    cp c                                          ; $43eb: $b9
    dec de                                        ; $43ec: $1b
    ld e, e                                       ; $43ed: $5b
    ld l, l                                       ; $43ee: $6d
    jp hl                                         ; $43ef: $e9


    or b                                          ; $43f0: $b0
    ld h, b                                       ; $43f1: $60
    ld l, c                                       ; $43f2: $69
    ld e, h                                       ; $43f3: $5c
    ldh a, [$7c]                                  ; $43f4: $f0 $7c
    ld c, e                                       ; $43f6: $4b
    dec sp                                        ; $43f7: $3b
    inc e                                         ; $43f8: $1c
    sbc e                                         ; $43f9: $9b
    dec b                                         ; $43fa: $05
    dec bc                                        ; $43fb: $0b
    push de                                       ; $43fc: $d5
    sub a                                         ; $43fd: $97
    ld b, b                                       ; $43fe: $40
    dec e                                         ; $43ff: $1d
    dec de                                        ; $4400: $1b
    sbc c                                         ; $4401: $99
    dec sp                                        ; $4402: $3b
    ei                                            ; $4403: $fb
    rst $20                                       ; $4404: $e7
    rrca                                          ; $4405: $0f
    ld sp, hl                                     ; $4406: $f9
    and e                                         ; $4407: $a3
    ccf                                           ; $4408: $3f
    di                                            ; $4409: $f3
    db $dd                                        ; $440a: $dd
    ld [hl], d                                    ; $440b: $72
    ld [hl], e                                    ; $440c: $73

jr_035_440d:
    ret                                           ; $440d: $c9


    ld [$dce8], a                                 ; $440e: $ea $e8 $dc
    rst $08                                       ; $4411: $cf
    rst $00                                       ; $4412: $c7
    cpl                                           ; $4413: $2f
    and e                                         ; $4414: $a3
    inc sp                                        ; $4415: $33
    cpl                                           ; $4416: $2f
    ld b, c                                       ; $4417: $41
    ld c, c                                       ; $4418: $49
    db $fc                                        ; $4419: $fc
    add hl, sp                                    ; $441a: $39
    call $a301                                    ; $441b: $cd $01 $a3
    dec e                                         ; $441e: $1d
    db $e3                                        ; $441f: $e3
    ld b, b                                       ; $4420: $40
    or l                                          ; $4421: $b5
    ld a, [hl-]                                   ; $4422: $3a
    rst $30                                       ; $4423: $f7
    ld e, $ee                                     ; $4424: $1e $ee

jr_035_4426:
    pop af                                        ; $4426: $f1
    or a                                          ; $4427: $b7

jr_035_4428:
    adc [hl]                                      ; $4428: $8e
    push af                                       ; $4429: $f5
    halt                                          ; $442a: $76
    ld d, $aa                                     ; $442b: $16 $aa
    ld hl, sp-$15                                 ; $442d: $f8 $eb
    ld d, a                                       ; $442f: $57
    ld [$60e2], sp                                ; $4430: $08 $e2 $60
    cp l                                          ; $4433: $bd
    cp l                                          ; $4434: $bd
    db $fd                                        ; $4435: $fd
    db $dd                                        ; $4436: $dd
    add hl, de                                    ; $4437: $19
    ld [hl], e                                    ; $4438: $73
    or e                                          ; $4439: $b3
    dec sp                                        ; $443a: $3b
    or $5c                                        ; $443b: $f6 $5c
    ld d, [hl]                                    ; $443d: $56
    ld h, d                                       ; $443e: $62
    or e                                          ; $443f: $b3
    add $db                                       ; $4440: $c6 $db
    or d                                          ; $4442: $b2
    ld bc, $6ee0                                  ; $4443: $01 $e0 $6e
    ldh a, [rTAC]                                 ; $4446: $f0 $07
    cp l                                          ; $4448: $bd
    add a                                         ; $4449: $87
    or l                                          ; $444a: $b5
    and l                                         ; $444b: $a5
    ld b, a                                       ; $444c: $47
    ld b, b                                       ; $444d: $40
    ret                                           ; $444e: $c9


    ld c, d                                       ; $444f: $4a
    ld c, b                                       ; $4450: $48
    db $fc                                        ; $4451: $fc
    sub $fd                                       ; $4452: $d6 $fd
    db $fc                                        ; $4454: $fc
    sub l                                         ; $4455: $95
    ld d, c                                       ; $4456: $51
    add $10                                       ; $4457: $c6 $10
    ld b, h                                       ; $4459: $44
    xor h                                         ; $445a: $ac
    cp [hl]                                       ; $445b: $be
    inc h                                         ; $445c: $24
    call $b301                                    ; $445d: $cd $01 $b3
    dec sp                                        ; $4460: $3b
    or $5c                                        ; $4461: $f6 $5c
    db $fd                                        ; $4463: $fd
    or c                                          ; $4464: $b1
    rst $28                                       ; $4465: $ef
    or e                                          ; $4466: $b3
    sbc $de                                       ; $4467: $de $de
    ld b, e                                       ; $4469: $43
    cp d                                          ; $446a: $ba
    rla                                           ; $446b: $17
    ld a, a                                       ; $446c: $7f
    db $dd                                        ; $446d: $dd
    ldh [rIF], a                                  ; $446e: $e0 $0f
    sbc d                                         ; $4470: $9a
    sbc c                                         ; $4471: $99
    ld e, d                                       ; $4472: $5a
    ld d, $d2                                     ; $4473: $16 $d2
    inc e                                         ; $4475: $1c
    ld [hl], e                                    ; $4476: $73
    cp h                                          ; $4477: $bc
    xor [hl]                                      ; $4478: $ae
    ld h, e                                       ; $4479: $63
    rst $08                                       ; $447a: $cf
    ld h, l                                       ; $447b: $65
    xor c                                         ; $447c: $a9
    add e                                         ; $447d: $83
    db $ed                                        ; $447e: $ed
    ld de, $c1d2                                  ; $447f: $11 $d2 $c1
    db $eb                                        ; $4482: $eb
    add sp, $6c                                   ; $4483: $e8 $6c
    ld c, $f6                                     ; $4485: $0e $f6
    call c, Call_035_77bb                         ; $4487: $dc $bb $77
    xor e                                         ; $448a: $ab
    ld d, l                                       ; $448b: $55
    rlca                                          ; $448c: $07
    dec l                                         ; $448d: $2d
    inc b                                         ; $448e: $04
    ld d, l                                       ; $448f: $55
    db $fc                                        ; $4490: $fc
    ld b, c                                       ; $4491: $41
    reti                                          ; $4492: $d9


    ld b, b                                       ; $4493: $40
    jr jr_035_4428                                ; $4494: $18 $92

    inc bc                                        ; $4496: $03
    inc hl                                        ; $4497: $23
    inc bc                                        ; $4498: $03
    ld [$1f58], a                                 ; $4499: $ea $58 $1f
    ld h, l                                       ; $449c: $65
    ld [hl], h                                    ; $449d: $74
    and $25                                       ; $449e: $e6 $25
    xor b                                         ; $44a0: $a8
    ld [c], a                                     ; $44a1: $e2
    rst $28                                       ; $44a2: $ef
    call c, $b87b                                 ; $44a3: $dc $7b $b8
    jp c, $c5bb                                   ; $44a6: $da $bb $c5

    ld l, e                                       ; $44a9: $6b
    ld de, $cc66                                  ; $44aa: $11 $66 $cc
    ld bc, $e4a3                                  ; $44ad: $01 $a3 $e4
    ld [hl+], a                                   ; $44b0: $22
    adc h                                         ; $44b1: $8c
    ld a, b                                       ; $44b2: $78
    ld c, c                                       ; $44b3: $49
    rst $20                                       ; $44b4: $e7
    ld d, h                                       ; $44b5: $54
    ld hl, $4a62                                  ; $44b6: $21 $62 $4a
    ld a, e                                       ; $44b9: $7b
    daa                                           ; $44ba: $27
    ld hl, $6b82                                  ; $44bb: $21 $82 $6b
    ld c, h                                       ; $44be: $4c
    ld [hl], e                                    ; $44bf: $73
    call z, $ebf0                                 ; $44c0: $cc $f0 $eb
    pop af                                        ; $44c3: $f1
    ld l, c                                       ; $44c4: $69
    ld h, e                                       ; $44c5: $63
    xor e                                         ; $44c6: $ab
    dec l                                         ; $44c7: $2d
    dec e                                         ; $44c8: $1d
    ld d, $2c                                     ; $44c9: $16 $2c
    adc l                                         ; $44cb: $8d
    dec bc                                        ; $44cc: $0b
    sbc [hl]                                      ; $44cd: $9e
    ld l, a                                       ; $44ce: $6f
    db $dd                                        ; $44cf: $dd
    rst $08                                       ; $44d0: $cf
    rst $18                                       ; $44d1: $df
    cp c                                          ; $44d2: $b9
    ld a, [$0b37]                                 ; $44d3: $fa $37 $0b
    ld d, $6a                                     ; $44d6: $16 $6a
    db $ec                                        ; $44d8: $ec
    jr nc, jr_035_44ed                            ; $44d9: $30 $12

    ld a, a                                       ; $44db: $7f
    sub [hl]                                      ; $44dc: $96
    sub d                                         ; $44dd: $92
    ld d, l                                       ; $44de: $55
    ld c, a                                       ; $44df: $4f
    or l                                          ; $44e0: $b5
    or $d1                                        ; $44e1: $f6 $d1
    cp c                                          ; $44e3: $b9
    sbc a                                         ; $44e4: $9f
    adc a                                         ; $44e5: $8f
    sbc a                                         ; $44e6: $9f
    and $09                                       ; $44e7: $e6 $09
    db $fc                                        ; $44e9: $fc
    sub l                                         ; $44ea: $95
    adc l                                         ; $44eb: $8d
    db $ed                                        ; $44ec: $ed

jr_035_44ed:
    dec bc                                        ; $44ed: $0b
    res 7, c                                      ; $44ee: $cb $b9
    ld [hl], a                                    ; $44f0: $77

jr_035_44f1:
    rlca                                          ; $44f1: $07
    ld l, l                                       ; $44f2: $6d
    ldh a, [$d7]                                  ; $44f3: $f0 $d7
    jp $deb1                                      ; $44f5: $c3 $b1 $de


    adc $42                                       ; $44f8: $ce $42
    dec d                                         ; $44fa: $15
    ld a, a                                       ; $44fb: $7f
    and l                                         ; $44fc: $a5
    rla                                           ; $44fd: $17
    sbc $2d                                       ; $44fe: $de $2d
    jp c, Jump_035_63db                           ; $4500: $da $db $63

    ld l, h                                       ; $4503: $6c
    cp $c0                                        ; $4504: $fe $c0
    ld l, c                                       ; $4506: $69
    sbc c                                         ; $4507: $99
    db $fc                                        ; $4508: $fc
    ld l, l                                       ; $4509: $6d
    sbc b                                         ; $450a: $98
    ld c, b                                       ; $450b: $48
    ld [hl], e                                    ; $450c: $73
    add hl, bc                                    ; $450d: $09
    db $fc                                        ; $450e: $fc
    push af                                       ; $450f: $f5
    ld c, [hl]                                    ; $4510: $4e
    ld [de], a                                    ; $4511: $12
    db $ed                                        ; $4512: $ed
    ld [$ee90], a                                 ; $4513: $ea $90 $ee
    dec h                                         ; $4516: $25
    rst $00                                       ; $4517: $c7
    and a                                         ; $4518: $a7
    sub [hl]                                      ; $4519: $96
    cp e                                          ; $451a: $bb

jr_035_451b:
    inc bc                                        ; $451b: $03
    ld e, l                                       ; $451c: $5d
    db $fd                                        ; $451d: $fd
    or c                                          ; $451e: $b1
    ld l, e                                       ; $451f: $6b
    ld h, l                                       ; $4520: $65
    inc b                                         ; $4521: $04
    scf                                           ; $4522: $37
    ld sp, hl                                     ; $4523: $f9
    xor a                                         ; $4524: $af
    ld h, [hl]                                    ; $4525: $66
    dec d                                         ; $4526: $15
    ld a, a                                       ; $4527: $7f
    dec h                                         ; $4528: $25
    ld c, b                                       ; $4529: $48
    ld d, d                                       ; $452a: $52
    ld b, [hl]                                    ; $452b: $46
    ld h, a                                       ; $452c: $67
    ld e, [hl]                                    ; $452d: $5e
    add d                                         ; $452e: $82
    sub d                                         ; $452f: $92
    ld hl, sp+$73                                 ; $4530: $f8 $73
    ld a, l                                       ; $4532: $7d
    inc c                                         ; $4533: $0c
    db $10                                        ; $4534: $10
    ld a, [hl]                                    ; $4535: $7e
    call nc, $ee7b                                ; $4536: $d4 $7b $ee
    ld h, a                                       ; $4539: $67
    dec l                                         ; $453a: $2d
    dec [hl]                                      ; $453b: $35
    ld d, $c1                                     ; $453c: $16 $c1
    rrca                                          ; $453e: $0f
    ld a, d                                       ; $453f: $7a
    xor d                                         ; $4540: $aa
    add c                                         ; $4541: $81
    inc c                                         ; $4542: $0c
    ld b, l                                       ; $4543: $45
    cp $ae                                        ; $4544: $fe $ae
    dec l                                         ; $4546: $2d
    ld a, [hl-]                                   ; $4547: $3a
    and b                                         ; $4548: $a0
    inc [hl]                                      ; $4549: $34
    ld [hl], c                                    ; $454a: $71
    inc sp                                        ; $454b: $33
    adc e                                         ; $454c: $8b
    and l                                         ; $454d: $a5
    daa                                           ; $454e: $27
    jr c, jr_035_44f1                             ; $454f: $38 $a0

    dec de                                        ; $4551: $1b
    db $fc                                        ; $4552: $fc
    ld b, c                                       ; $4553: $41
    rrca                                          ; $4554: $0f

jr_035_4555:
    ccf                                           ; $4555: $3f
    ld l, c                                       ; $4556: $69
    inc e                                         ; $4557: $1c
    sbc l                                         ; $4558: $9d
    set 3, c                                      ; $4559: $cb $d9
    and a                                         ; $455b: $a7
    ld l, c                                       ; $455c: $69
    ld c, $a3                                     ; $455d: $0e $a3
    dec l                                         ; $455f: $2d
    ld a, l                                       ; $4560: $7d
    rra                                           ; $4561: $1f
    ld l, d                                       ; $4562: $6a
    xor h                                         ; $4563: $ac
    or $6e                                        ; $4564: $f6 $6e
    cp a                                          ; $4566: $bf
    jp nz, $34cc                                  ; $4567: $c2 $cc $34

    db $fc                                        ; $456a: $fc
    cp h                                          ; $456b: $bc
    inc sp                                        ; $456c: $33
    halt                                          ; $456d: $76
    ld l, [hl]                                    ; $456e: $6e
    dec b                                         ; $456f: $05
    inc de                                        ; $4570: $13
    add e                                         ; $4571: $83
    add d                                         ; $4572: $82
    inc [hl]                                      ; $4573: $34
    rlca                                          ; $4574: $07
    inc hl                                        ; $4575: $23
    inc e                                         ; $4576: $1c
    ld l, e                                       ; $4577: $6b
    ld c, c                                       ; $4578: $49
    dec sp                                        ; $4579: $3b
    ld a, h                                       ; $457a: $7c
    pop hl                                        ; $457b: $e1
    ld l, [hl]                                    ; $457c: $6e
    ld l, l                                       ; $457d: $6d
    ld l, c                                       ; $457e: $69
    jr nz, jr_035_4555                            ; $457f: $20 $d4

    ret c                                         ; $4581: $d8

    call z, $d708                                 ; $4582: $cc $08 $d7
    and e                                         ; $4585: $a3
    sbc $de                                       ; $4586: $de $de
    cpl                                           ; $4588: $2f
    pop de                                        ; $4589: $d1
    sbc $5e                                       ; $458a: $de $5e
    jp c, Jump_035_53d2                           ; $458c: $da $d2 $53

    ld a, l                                       ; $458f: $7d
    db $fc                                        ; $4590: $fc
    push de                                       ; $4591: $d5
    push bc                                       ; $4592: $c5
    add c                                         ; $4593: $81
    jr nc, jr_035_451b                            ; $4594: $30 $85

    ld e, $21                                     ; $4596: $1e $21
    ld [hl], l                                    ; $4598: $75
    xor h                                         ; $4599: $ac
    or a                                          ; $459a: $b7
    ld c, h                                       ; $459b: $4c
    db $10                                        ; $459c: $10
    rlca                                          ; $459d: $07
    ld a, a                                       ; $459e: $7f
    ld l, c                                       ; $459f: $69
    inc de                                        ; $45a0: $13
    ld hl, sp-$15                                 ; $45a1: $f8 $eb
    ei                                            ; $45a3: $fb
    xor h                                         ; $45a4: $ac
    adc e                                         ; $45a5: $8b
    ld d, a                                       ; $45a6: $57
    or $a5                                        ; $45a7: $f6 $a5
    adc [hl]                                      ; $45a9: $8e
    ld [hl], l                                    ; $45aa: $75
    add a                                         ; $45ab: $87
    sbc c                                         ; $45ac: $99
    ld e, [hl]                                    ; $45ad: $5e
    ld l, a                                       ; $45ae: $6f
    push de                                       ; $45af: $d5
    ld h, [hl]                                    ; $45b0: $66

Call_035_45b1:
    dec h                                         ; $45b1: $25
    ld c, b                                       ; $45b2: $48
    ld d, d                                       ; $45b3: $52
    dec e                                         ; $45b4: $1d
    xor $e8                                       ; $45b5: $ee $e8
    or b                                          ; $45b7: $b0
    or [hl]                                       ; $45b8: $b6
    or b                                          ; $45b9: $b0
    ld b, [hl]                                    ; $45ba: $46
    cp $3e                                        ; $45bb: $fe $3e
    ld b, c                                       ; $45bd: $41
    xor b                                         ; $45be: $a8
    call $8daa                                    ; $45bf: $cd $aa $8d
    dec e                                         ; $45c2: $1d
    and [hl]                                      ; $45c3: $a6
    ld hl, sp+$33                                 ; $45c4: $f8 $33
    or $2b                                        ; $45c6: $f6 $2b
    call z, $068c                                 ; $45c8: $cc $8c $06
    ld [hl-], a                                   ; $45cb: $32
    and h                                         ; $45cc: $a4
    dec e                                         ; $45cd: $1d
    jp z, Jump_035_495f                           ; $45ce: $ca $5f $49

    xor h                                         ; $45d1: $ac
    ld b, h                                       ; $45d2: $44
    and $c5                                       ; $45d3: $e6 $c5
    ld [hl], e                                    ; $45d5: $73
    ld l, a                                       ; $45d6: $6f
    adc [hl]                                      ; $45d7: $8e
    dec l                                         ; $45d8: $2d
    and e                                         ; $45d9: $a3
    sbc a                                         ; $45da: $9f
    ld a, [de]                                    ; $45db: $1a
    ld [hl], b                                    ; $45dc: $70
    ld h, e                                       ; $45dd: $63
    xor e                                         ; $45de: $ab
    dec l                                         ; $45df: $2d
    dec e                                         ; $45e0: $1d
    ld d, $2c                                     ; $45e1: $16 $2c
    adc l                                         ; $45e3: $8d
    dec bc                                        ; $45e4: $0b
    sbc [hl]                                      ; $45e5: $9e
    ld l, a                                       ; $45e6: $6f
    rst $20                                       ; $45e7: $e7
    or d                                          ; $45e8: $b2
    ld bc, $34e0                                  ; $45e9: $01 $e0 $34
    rlca                                          ; $45ec: $07
    ld b, e                                       ; $45ed: $43
    add hl, hl                                    ; $45ee: $29
    dec [hl]                                      ; $45ef: $35
    or $46                                        ; $45f0: $f6 $46
    cp a                                          ; $45f2: $bf
    sbc h                                         ; $45f3: $9c
    dec sp                                        ; $45f4: $3b
    jp z, $341e                                   ; $45f5: $ca $1e $34

    sbc [hl]                                      ; $45f8: $9e
    xor e                                         ; $45f9: $ab
    ld d, l                                       ; $45fa: $55
    rst $18                                       ; $45fb: $df
    rlca                                          ; $45fc: $07
    jr nc, jr_035_4641                            ; $45fd: $30 $42

    ld c, a                                       ; $45ff: $4f
    dec [hl]                                      ; $4600: $35
    sub b                                         ; $4601: $90
    and c                                         ; $4602: $a1
    jp c, $deb1                                   ; $4603: $da $b1 $de

    ld [hl-], a                                   ; $4606: $32
    rlca                                          ; $4607: $07
    cp $38                                        ; $4608: $fe $38
    sbc l                                         ; $460a: $9d
    nop                                           ; $460b: $00
    ld sp, hl                                     ; $460c: $f9
    db $db                                        ; $460d: $db
    jr nc, jr_035_4641                            ; $460e: $30 $31

    ld h, c                                       ; $4610: $61
    jp c, $1fd1                                   ; $4611: $da $d1 $1f

    ld a, e                                       ; $4614: $7b
    ei                                            ; $4615: $fb
    cp e                                          ; $4616: $bb
    dec c                                         ; $4617: $0d
    cp $9a                                        ; $4618: $fe $9a
    add hl, sp                                    ; $461a: $39
    di                                            ; $461b: $f3
    ld d, [hl]                                    ; $461c: $56
    add a                                         ; $461d: $87
    pop de                                        ; $461e: $d1
    db $db                                        ; $461f: $db
    ld e, c                                       ; $4620: $59
    xor b                                         ; $4621: $a8
    ld [c], a                                     ; $4622: $e2
    xor a                                         ; $4623: $af
    ld l, d                                       ; $4624: $6a
    pop bc                                        ; $4625: $c1
    or d                                          ; $4626: $b2
    ld a, [hl]                                    ; $4627: $7e
    add a                                         ; $4628: $87
    ld [hl], a                                    ; $4629: $77
    add $1c                                       ; $462a: $c6 $1c
    ret                                           ; $462c: $c9


    rra                                           ; $462d: $1f
    xor d                                         ; $462e: $aa
    dec l                                         ; $462f: $2d
    ld b, l                                       ; $4630: $45
    jp nc, Jump_000_3e38                          ; $4631: $d2 $38 $3e

    rst $30                                       ; $4634: $f7
    ld b, [hl]                                    ; $4635: $46
    dec e                                         ; $4636: $1d
    db $eb                                        ; $4637: $eb
    ld c, $17                                     ; $4638: $0e $17
    add h                                         ; $463a: $84
    dec de                                        ; $463b: $1b
    ld c, l                                       ; $463c: $4d
    ld b, h                                       ; $463d: $44
    and h                                         ; $463e: $a4
    sub [hl]                                      ; $463f: $96
    ld [hl+], a                                   ; $4640: $22

jr_035_4641:
    ld a, a                                       ; $4641: $7f
    rst $10                                       ; $4642: $d7
    ld [hl], $b6                                  ; $4643: $36 $b6
    jp c, Jump_035_61d2                           ; $4645: $da $d2 $61

    pop bc                                        ; $4648: $c1
    jp nc, $e0b8                                  ; $4649: $d2 $b8 $e0

    ld sp, hl                                     ; $464c: $f9
    sub $fd                                       ; $464d: $d6 $fd
    db $fc                                        ; $464f: $fc
    ld h, l                                       ; $4650: $65
    ld b, [hl]                                    ; $4651: $46
    ccf                                           ; $4652: $3f
    rst $28                                       ; $4653: $ef
    adc h                                         ; $4654: $8c
    add hl, sp                                    ; $4655: $39
    or e                                          ; $4656: $b3
    cp $73                                        ; $4657: $fe $73
    or l                                          ; $4659: $b5
    and l                                         ; $465a: $a5

Call_035_465b:
Jump_035_465b:
    ld c, b                                       ; $465b: $48
    ld a, [de]                                    ; $465c: $1a
    rst $00                                       ; $465d: $c7
    ld c, l                                       ; $465e: $4d
    db $d3                                        ; $465f: $d3
    or h                                          ; $4660: $b4
    and a                                         ; $4661: $a7
    cp $73                                        ; $4662: $fe $73
    rst $18                                       ; $4664: $df
    ld h, a                                       ; $4665: $67
    dec de                                        ; $4666: $1b
    db $fc                                        ; $4667: $fc
    and l                                         ; $4668: $a5
    ld c, l                                       ; $4669: $4d
    ld a, [$61d8]                                 ; $466a: $fa $d8 $61
    adc d                                         ; $466d: $8a
    cp a                                          ; $466e: $bf
    ld b, $42                                     ; $466f: $06 $42
    scf                                           ; $4671: $37
    ld hl, sp-$7d                                 ; $4672: $f8 $83
    ld [$369f], a                                 ; $4674: $ea $9f $36
    ld sp, hl                                     ; $4677: $f9
    inc bc                                        ; $4678: $03
    ld a, [c]                                     ; $4679: $f2
    rla                                           ; $467a: $17
    ld b, e                                       ; $467b: $43
    ld [hl], d                                    ; $467c: $72
    add hl, bc                                    ; $467d: $09
    db $fc                                        ; $467e: $fc
    push af                                       ; $467f: $f5
    ld a, l                                       ; $4680: $7d
    sub $35                                       ; $4681: $d6 $35
    halt                                          ; $4683: $76
    add e                                         ; $4684: $83
    ccf                                           ; $4685: $3f
    ld c, b                                       ; $4686: $48
    dec sp                                        ; $4687: $3b
    inc l                                         ; $4688: $2c
    ldh a, [$59]                                  ; $4689: $f0 $59
    ld c, d                                       ; $468b: $4a
    ld d, [hl]                                    ; $468c: $56
    ld b, a                                       ; $468d: $47
    xor h                                         ; $468e: $ac
    ld [hl], $42                                  ; $468f: $36 $42
    scf                                           ; $4691: $37
    ld hl, sp-$7d                                 ; $4692: $f8 $83
    or h                                          ; $4694: $b4
    and e                                         ; $4695: $a3
    xor a                                         ; $4696: $af
    sbc $c6                                       ; $4697: $de $c6
    sbc $05                                       ; $4699: $de $05
    rst $10                                       ; $469b: $d7
    ret c                                         ; $469c: $d8

    ld c, a                                       ; $469d: $4f
    pop af                                        ; $469e: $f1
    ld a, [hl+]                                   ; $469f: $2a
    ld a, [hl-]                                   ; $46a0: $3a
    halt                                          ; $46a1: $76
    add $ce                                       ; $46a2: $c6 $ce
    dec de                                        ; $46a4: $1b
    and [hl]                                      ; $46a5: $a6
    call nc, $1fc1                                ; $46a6: $d4 $c1 $1f
    db $f4                                        ; $46a9: $f4
    ld a, l                                       ; $46aa: $7d

jr_035_46ab:
    xor b                                         ; $46ab: $a8
    or c                                          ; $46ac: $b1
    jr jr_035_46ab                                ; $46ad: $18 $fc

    push de                                       ; $46af: $d5
    or c                                          ; $46b0: $b1
    dec e                                         ; $46b1: $1d
    xor c                                         ; $46b2: $a9
    or d                                          ; $46b3: $b2
    call z, Call_035_6ab4                         ; $46b4: $cc $b4 $6a
    pop bc                                        ; $46b7: $c1
    ld d, d                                       ; $46b8: $52
    db $ed                                        ; $46b9: $ed
    db $ed                                        ; $46ba: $ed
    db $ec                                        ; $46bb: $ec
    ccf                                           ; $46bc: $3f
    inc sp                                        ; $46bd: $33
    ld l, l                                       ; $46be: $6d
    ld h, [hl]                                    ; $46bf: $66
    add hl, bc                                    ; $46c0: $09
    ld b, h                                       ; $46c1: $44
    ld l, a                                       ; $46c2: $6f
    db $d3                                        ; $46c3: $d3
    inc [hl]                                      ; $46c4: $34
    call Call_000_0901                            ; $46c5: $cd $01 $09
    db $fc                                        ; $46c8: $fc
    sub l                                         ; $46c9: $95
    adc l                                         ; $46ca: $8d
    db $ed                                        ; $46cb: $ed
    ldh [$75], a                                  ; $46cc: $e0 $75
    ld [hl], h                                    ; $46ce: $74
    ld d, $aa                                     ; $46cf: $16 $aa
    ld hl, sp-$55                                 ; $46d1: $f8 $ab
    or [hl]                                       ; $46d3: $b6
    ld [hl], h                                    ; $46d4: $74
    call nc, Call_035_6035                        ; $46d5: $d4 $35 $60
    ld e, d                                       ; $46d8: $5a
    sub $68                                       ; $46d9: $d6 $68
    ld b, h                                       ; $46db: $44
    ld l, a                                       ; $46dc: $6f
    ld e, d                                       ; $46dd: $5a
    ld h, $7f                                     ; $46de: $26 $7f
    dec de                                        ; $46e0: $1b
    ld h, $d2                                     ; $46e1: $26 $d2
    adc [hl]                                      ; $46e3: $8e
    sub d                                         ; $46e4: $92
    adc e                                         ; $46e5: $8b
    ld c, b                                       ; $46e6: $48
    dec sp                                        ; $46e7: $3b
    and a                                         ; $46e8: $a7
    ld a, [bc]                                    ; $46e9: $0a
    ld de, $da53                                  ; $46ea: $11 $53 $da
    rst $30                                       ; $46ed: $f7
    and c                                         ; $46ee: $a1
    ld b, a                                       ; $46ef: $47
    ldh a, [$57]                                  ; $46f0: $f0 $57
    ld a, d                                       ; $46f2: $7a
    ld h, c                                       ; $46f3: $61
    ld h, [hl]                                    ; $46f4: $66
    db $e4                                        ; $46f5: $e4
    cpl                                           ; $46f6: $2f
    ld hl, sp+$0d                                 ; $46f7: $f8 $0d
    adc $75                                       ; $46f9: $ce $75
    xor h                                         ; $46fb: $ac
    or a                                          ; $46fc: $b7
    adc h                                         ; $46fd: $8c
    adc $bc                                       ; $46fe: $ce $bc
    inc b                                         ; $4700: $04
    ld d, l                                       ; $4701: $55
    db $fc                                        ; $4702: $fc
    sub l                                         ; $4703: $95
    xor h                                         ; $4704: $ac
    ld c, d                                       ; $4705: $4a
    call nz, Call_035_6f6a                        ; $4706: $c4 $6a $6f
    jp c, Jump_000_15b9                           ; $4709: $da $b9 $15

    ld c, h                                       ; $470c: $4c
    inc c                                         ; $470d: $0c
    ld a, [bc]                                    ; $470e: $0a
    jp nc, $f88e                                  ; $470f: $d2 $8e $f8

    cp e                                          ; $4712: $bb
    ld [$aad5], sp                                ; $4713: $08 $d5 $aa
    ld b, a                                       ; $4716: $47
    ld c, b                                       ; $4717: $48
    sbc a                                         ; $4718: $9f
    add hl, hl                                    ; $4719: $29
    pop hl                                        ; $471a: $e1
    sbc l                                         ; $471b: $9d
    ld sp, $0907                                  ; $471c: $31 $07 $09
    db $fc                                        ; $471f: $fc
    push af                                       ; $4720: $f5
    ld c, [hl]                                    ; $4721: $4e
    ld [de], a                                    ; $4722: $12
    db $ed                                        ; $4723: $ed
    ld e, $21                                     ; $4724: $1e $21
    dec a                                         ; $4726: $3d
    ld a, $ad                                     ; $4727: $3e $ad
    cp $58                                        ; $4729: $fe $58
    ld h, $28                                     ; $472b: $26 $28
    dec e                                         ; $472d: $1d
    ld d, $72                                     ; $472e: $16 $72
    inc e                                         ; $4730: $1c
    add a                                         ; $4731: $87
    and l                                         ; $4732: $a5
    jp c, $91d2                                   ; $4733: $da $d2 $91

    ld a, [hl+]                                   ; $4736: $2a
    bit 1, h                                      ; $4737: $cb $4c
    sbc e                                         ; $4739: $9b
    ld a, c                                       ; $473a: $79
    cp a                                          ; $473b: $bf
    or d                                          ; $473c: $b2
    db $f4                                        ; $473d: $f4
    cpl                                           ; $473e: $2f
    ld a, [$d379]                                 ; $473f: $fa $79 $d3
    ld [hl], $81                                  ; $4742: $36 $81
    cp a                                          ; $4744: $bf
    cp [hl]                                       ; $4745: $be
    rst $08                                       ; $4746: $cf

Jump_035_4747:
    cp d                                          ; $4747: $ba
    sbc c                                         ; $4748: $99
    pop de                                        ; $4749: $d1
    rst $08                                       ; $474a: $cf
    ld a, e                                       ; $474b: $7b
    xor [hl]                                      ; $474c: $ae
    cp $88                                        ; $474d: $fe $88
    dec e                                         ; $474f: $1d
    ld h, l                                       ; $4750: $65
    rrca                                          ; $4751: $0f
    ld a, [de]                                    ; $4752: $1a
    ld a, e                                       ; $4753: $7b
    inc hl                                        ; $4754: $23
    add hl, bc                                    ; $4755: $09
    sbc c                                         ; $4756: $99
    ld b, $7f                                     ; $4757: $06 $7f
    push de                                       ; $4759: $d5
    sub a                                         ; $475a: $97
    ld b, b                                       ; $475b: $40
    sbc a                                         ; $475c: $9f
    ld b, l                                       ; $475d: $45
    dec e                                         ; $475e: $1d
    sbc c                                         ; $475f: $99
    sub c                                         ; $4760: $91
    ccf                                           ; $4761: $3f
    ld a, [de]                                    ; $4762: $1a
    db $fc                                        ; $4763: $fc
    ld a, c                                       ; $4764: $79
    dec de                                        ; $4765: $1b
    ld [$0e69], sp                                ; $4766: $08 $69 $0e
    ld c, h                                       ; $4769: $4c
    push bc                                       ; $476a: $c5
    rra                                           ; $476b: $1f
    ld b, d                                       ; $476c: $42
    or l                                          ; $476d: $b5
    xor d                                         ; $476e: $aa
    pop hl                                        ; $476f: $e1
    cp $b1                                        ; $4770: $fe $b1
    ld h, h                                       ; $4772: $64
    ld [hl], l                                    ; $4773: $75
    ld [hl], h                                    ; $4774: $74
    ld [hl], $a3                                  ; $4775: $36 $a3
    ld [hl], a                                    ; $4777: $77
    add $1c                                       ; $4778: $c6 $1c
    and e                                         ; $477a: $a3
    xor a                                         ; $477b: $af
    ld b, $42                                     ; $477c: $06 $42
    push af                                       ; $477e: $f5
    rst $00                                       ; $477f: $c7
    ld c, $53                                     ; $4780: $0e $53
    db $fc                                        ; $4782: $fc
    sbc l                                         ; $4783: $9d
    dec sp                                        ; $4784: $3b
    jp z, $341e                                   ; $4785: $ca $1e $34

    adc $98                                       ; $4788: $ce $98
    inc bc                                        ; $478a: $03
    or e                                          ; $478b: $b3
    add hl, de                                    ; $478c: $19
    cp l                                          ; $478d: $bd
    dec c                                         ; $478e: $0d
    add h                                         ; $478f: $84
    ld [$bf8b], a                                 ; $4790: $ea $8b $bf
    ld [c], a                                     ; $4793: $e2
    ld d, l                                       ; $4794: $55
    ld a, [$bb37]                                 ; $4795: $fa $37 $bb
    dec sp                                        ; $4798: $3b
    ld l, b                                       ; $4799: $68
    ld h, h                                       ; $479a: $64
    ld l, c                                       ; $479b: $69
    sbc c                                         ; $479c: $99
    db $fc                                        ; $479d: $fc
    ld a, l                                       ; $479e: $7d
    ld d, l                                       ; $479f: $55
    dec e                                         ; $47a0: $1d
    ld d, d                                       ; $47a1: $52
    ld a, l                                       ; $47a2: $7d
    pop af                                        ; $47a3: $f1
    ld d, a                                       ; $47a4: $57
    ld a, [de]                                    ; $47a5: $1a
    ld h, [hl]                                    ; $47a6: $66
    dec l                                         ; $47a7: $2d
    dec [hl]                                      ; $47a8: $35
    call c, Call_000_363f                         ; $47a9: $dc $3f $36
    adc [hl]                                      ; $47ac: $8e
    adc $62                                       ; $47ad: $ce $62
    ld e, c                                       ; $47af: $59
    db $f4                                        ; $47b0: $f4
    di                                            ; $47b1: $f3
    or $6f                                        ; $47b2: $f6 $6f
    sbc d                                         ; $47b4: $9a
    inc bc                                        ; $47b5: $03
    call z, $dceb                                 ; $47b6: $cc $eb $dc
    ld d, e                                       ; $47b9: $53
    dec c                                         ; $47ba: $0d
    ld h, h                                       ; $47bb: $64
    jr z, jr_035_47d9                             ; $47bc: $28 $1b

    ld [$aad5], sp                                ; $47be: $08 $d5 $aa
    call nz, $e847                                ; $47c1: $c4 $47 $e8
    dec a                                         ; $47c4: $3d
    xor h                                         ; $47c5: $ac
    dec l                                         ; $47c6: $2d
    push de                                       ; $47c7: $d5
    sub [hl]                                      ; $47c8: $96
    ld c, $a5                                     ; $47c9: $0e $a5
    ldh [$34], a                                  ; $47cb: $e0 $34
    rlca                                          ; $47cd: $07
    ld c, c                                       ; $47ce: $49
    ld a, a                                       ; $47cf: $7f
    ld l, a                                       ; $47d0: $6f
    ld c, [hl]                                    ; $47d1: $4e
    dec sp                                        ; $47d2: $3b
    or a                                          ; $47d3: $b7
    add d                                         ; $47d4: $82
    adc c                                         ; $47d5: $89
    ld b, c                                       ; $47d6: $41
    ld b, c                                       ; $47d7: $41
    sbc d                                         ; $47d8: $9a

jr_035_47d9:
    inc bc                                        ; $47d9: $03
    or e                                          ; $47da: $b3
    rst $38                                       ; $47db: $ff
    sbc [hl]                                      ; $47dc: $9e
    ld a, [$0dcf]                                 ; $47dd: $fa $cf $0d
    cp $8a                                        ; $47e0: $fe $8a
    ccf                                           ; $47e2: $3f
    inc bc                                        ; $47e3: $03
    rst $30                                       ; $47e4: $f7
    call nc, $afdf                                ; $47e5: $d4 $df $af
    ld hl, sp-$15                                 ; $47e8: $f8 $eb
    ld hl, sp-$3c                                 ; $47ea: $f8 $c4
    ld b, a                                       ; $47ec: $47
    jr jr_035_482e                                ; $47ed: $18 $3f

    call $c901                                    ; $47ef: $cd $01 $c9
    sbc a                                         ; $47f2: $9f
    jp nc, $dceb                                  ; $47f3: $d2 $eb $dc

    db $e4                                        ; $47f6: $e4
    cpl                                           ; $47f7: $2f
    ld [hl-], a                                   ; $47f8: $32
    ld h, $2d                                     ; $47f9: $26 $2d
    and e                                         ; $47fb: $a3
    rra                                           ; $47fc: $1f
    call nc, Call_000_1d58                        ; $47fd: $d4 $58 $1d
    ld d, d                                       ; $4800: $52
    sub $88                                       ; $4801: $d6 $88
    sub [hl]                                      ; $4803: $96
    add hl, de                                    ; $4804: $19
    ld [hl], e                                    ; $4805: $73
    or e                                          ; $4806: $b3
    cp $73                                        ; $4807: $fe $73
    sub c                                         ; $4809: $91
    cp a                                          ; $480a: $bf
    dec c                                         ; $480b: $0d
    inc de                                        ; $480c: $13
    rst $20                                       ; $480d: $e7
    ld a, [hl]                                    ; $480e: $7e
    sub $d2                                       ; $480f: $d6 $d2
    ldh [$af], a                                  ; $4811: $e0 $af
    ld l, h                                       ; $4813: $6c
    ld l, h                                       ; $4814: $6c
    db $e3                                        ; $4815: $e3
    jr c, jr_035_4844                             ; $4816: $38 $2c

    db $dd                                        ; $4818: $dd
    adc e                                         ; $4819: $8b
    cp a                                          ; $481a: $bf
    ld l, [hl]                                    ; $481b: $6e
    ldh a, [rTAC]                                 ; $481c: $f0 $07
    call $92fe                                    ; $481e: $cd $fe $92
    sbc e                                         ; $4821: $9b
    add hl, de                                    ; $4822: $19
    push de                                       ; $4823: $d5
    ld [$0734], a                                 ; $4824: $ea $34 $07
    ld b, e                                       ; $4827: $43
    rst $18                                       ; $4828: $df
    cp c                                          ; $4829: $b9
    and a                                         ; $482a: $a7
    ld a, [de]                                    ; $482b: $1a
    ret z                                         ; $482c: $c8

    ret nc                                        ; $482d: $d0

jr_035_482e:
    call z, Call_035_6a0f                         ; $482e: $cc $0f $6a
    db $ec                                        ; $4831: $ec
    ld de, $d652                                  ; $4832: $11 $52 $d6
    adc b                                         ; $4835: $88
    sub [hl]                                      ; $4836: $96
    or h                                          ; $4837: $b4
    add hl, bc                                    ; $4838: $09
    db $fc                                        ; $4839: $fc
    dec [hl]                                      ; $483a: $35
    and e                                         ; $483b: $a3
    ld e, a                                       ; $483c: $5f
    or c                                          ; $483d: $b1
    ld a, $37                                     ; $483e: $3e $37
    ld hl, sp+$2b                                 ; $4840: $f8 $2b
    ld e, [hl]                                    ; $4842: $5e
    sub h                                         ; $4843: $94

jr_035_4844:
    add d                                         ; $4844: $82
    ld a, e                                       ; $4845: $7b
    add h                                         ; $4846: $84
    ld d, h                                       ; $4847: $54
    add a                                         ; $4848: $87
    pop de                                        ; $4849: $d1
    db $db                                        ; $484a: $db
    inc de                                        ; $484b: $13
    cp [hl]                                       ; $484c: $be
    ld h, d                                       ; $484d: $62
    dec l                                         ; $484e: $2d
    db $fd                                        ; $484f: $fd
    adc d                                         ; $4850: $8a
    cp a                                          ; $4851: $bf
    ld e, $96                                     ; $4852: $1e $96
    sbc e                                         ; $4854: $9b
    scf                                           ; $4855: $37
    call Call_000_0901                            ; $4856: $cd $01 $09
    db $fc                                        ; $4859: $fc
    push af                                       ; $485a: $f5
    ld a, l                                       ; $485b: $7d
    sub $d5                                       ; $485c: $d6 $d5
    rra                                           ; $485e: $1f
    dec sp                                        ; $485f: $3b
    ld c, h                                       ; $4860: $4c
    pop af                                        ; $4861: $f1
    rst $10                                       ; $4862: $d7
    inc hl                                        ; $4863: $23
    and b                                         ; $4864: $a0
    jp c, Jump_035_465b                           ; $4865: $da $5b $46

    ld h, a                                       ; $4868: $67
    ld e, [hl]                                    ; $4869: $5e
    add d                                         ; $486a: $82
    sub d                                         ; $486b: $92
    ld hl, sp-$0d                                 ; $486c: $f8 $f3
    ld [hl], $33                                  ; $486e: $36 $33
    and c                                         ; $4870: $a1
    ld d, [hl]                                    ; $4871: $56
    ld a, e                                       ; $4872: $7b
    db $d3                                        ; $4873: $d3
    inc e                                         ; $4874: $1c
    and e                                         ; $4875: $a3
    xor a                                         ; $4876: $af
    cp [hl]                                       ; $4877: $be
    adc a                                         ; $4878: $8f
    ld d, b                                       ; $4879: $50
    xor l                                         ; $487a: $ad
    ld l, d                                       ; $487b: $6a
    ld l, h                                       ; $487c: $6c
    ld h, [hl]                                    ; $487d: $66
    ld b, d                                       ; $487e: $42
    xor l                                         ; $487f: $ad
    or $ce                                        ; $4880: $f6 $ce
    sbc b                                         ; $4882: $98
    inc bc                                        ; $4883: $03
    and e                                         ; $4884: $a3
    db $ec                                        ; $4885: $ec
    ld b, c                                       ; $4886: $41
    ld h, e                                       ; $4887: $63
    rst $18                                       ; $4888: $df
    rlca                                          ; $4889: $07
    ld [hl], b                                    ; $488a: $70
    adc l                                         ; $488b: $8d
    adc l                                         ; $488c: $8d
    and e                                         ; $488d: $a3
    ld c, h                                       ; $488e: $4c
    ld d, b                                       ; $488f: $50
    ld a, [hl-]                                   ; $4890: $3a
    inc l                                         ; $4891: $2c
    db $e4                                        ; $4892: $e4
    jr c, jr_035_48a3                             ; $4893: $38 $0e

    ld c, e                                       ; $4895: $4b
    or l                                          ; $4896: $b5

Jump_035_4897:
    and l                                         ; $4897: $a5
    inc hl                                        ; $4898: $23
    ld d, l                                       ; $4899: $55
    sub [hl]                                      ; $489a: $96
    sbc c                                         ; $489b: $99
    halt                                          ; $489c: $76
    ret nc                                        ; $489d: $d0

    add d                                         ; $489e: $82
    ld h, b                                       ; $489f: $60
    ld a, [hl]                                    ; $48a0: $7e
    add e                                         ; $48a1: $83
    inc [hl]                                      ; $48a2: $34

jr_035_48a3:
    rlca                                          ; $48a3: $07
    add hl, bc                                    ; $48a4: $09
    db $fc                                        ; $48a5: $fc
    push af                                       ; $48a6: $f5
    dec h                                         ; $48a7: $25
    ld [bc], a                                    ; $48a8: $02
    cp b                                          ; $48a9: $b8
    rst $30                                       ; $48aa: $f7
    ld b, b                                       ; $48ab: $40
    db $f4                                        ; $48ac: $f4
    or $20                                        ; $48ad: $f6 $20
    ld hl, $cf7a                                  ; $48af: $21 $7a $cf
    push de                                       ; $48b2: $d5
    rra                                           ; $48b3: $1f
    or c                                          ; $48b4: $b1
    and e                                         ; $48b5: $a3
    db $ec                                        ; $48b6: $ec
    ld b, c                                       ; $48b7: $41
    ld h, e                                       ; $48b8: $63
    push af                                       ; $48b9: $f5
    ld a, a                                       ; $48ba: $7f
    or c                                          ; $48bb: $b1
    ld h, b                                       ; $48bc: $60
    add hl, hl                                    ; $48bd: $29
    add d                                         ; $48be: $82
    ld sp, hl                                     ; $48bf: $f9
    dec c                                         ; $48c0: $0d
    jp nc, $f026                                  ; $48c1: $d2 $26 $f0

    rst $10                                       ; $48c4: $d7
    call z, $abac                                 ; $48c5: $cc $ac $ab
    ld b, e                                       ; $48c8: $43
    ld c, d                                       ; $48c9: $4a
    sub b                                         ; $48ca: $90
    sub [hl]                                      ; $48cb: $96
    ld d, b                                       ; $48cc: $50
    xor e                                         ; $48cd: $ab
    ret                                           ; $48ce: $c9


    rst $30                                       ; $48cf: $f7
    cp a                                          ; $48d0: $bf
    db $e4                                        ; $48d1: $e4
    ret z                                         ; $48d2: $c8

    ld a, [hl-]                                   ; $48d3: $3a
    ld c, d                                       ; $48d4: $4a
    db $ed                                        ; $48d5: $ed
    dec c                                         ; $48d6: $0d
    ld a, h                                       ; $48d7: $7c
    xor $dd                                       ; $48d8: $ee $dd
    ld b, c                                       ; $48da: $41
    xor e                                         ; $48db: $ab
    ld d, l                                       ; $48dc: $55
    push af                                       ; $48dd: $f5
    rst $00                                       ; $48de: $c7
    ld h, [hl]                                    ; $48df: $66
    ld b, [hl]                                    ; $48e0: $46
    cp b                                          ; $48e1: $b8
    ld e, $f5                                     ; $48e2: $1e $f5
    cp d                                          ; $48e4: $ba
    jp $7f14                                      ; $48e5: $c3 $14 $7f


    call $a84c                                    ; $48e8: $cd $4c $a8
    push de                                       ; $48eb: $d5
    sbc $aa                                       ; $48ec: $de $aa
    push de                                       ; $48ee: $d5
    dec h                                         ; $48ef: $25
    dec hl                                        ; $48f0: $2b
    ld hl, $5bf1                                  ; $48f1: $21 $f1 $5b
    ld h, [hl]                                    ; $48f4: $66
    ld d, [hl]                                    ; $48f5: $56
    ld a, $7f                                     ; $48f6: $3e $7f
    ret nc                                        ; $48f8: $d0

    rst $30                                       ; $48f9: $f7
    ld de, $ced2                                  ; $48fa: $11 $d2 $ce
    ld l, d                                       ; $48fd: $6a
    jr nz, jr_035_4943                            ; $48fe: $20 $43

    inc sp                                        ; $4900: $33

Call_035_4901:
    cp a                                          ; $4901: $bf
    ld a, [hl]                                    ; $4902: $7e
    sub $d2                                       ; $4903: $d6 $d2
    ld a, e                                       ; $4905: $7b
    ld e, b                                       ; $4906: $58
    ld e, e                                       ; $4907: $5b
    ld c, d                                       ; $4908: $4a
    ld d, [hl]                                    ; $4909: $56
    ld b, d                                       ; $490a: $42
    ld [c], a                                     ; $490b: $e2
    or a                                          ; $490c: $b7
    sub d                                         ; $490d: $92
    push de                                       ; $490e: $d5
    pop de                                        ; $490f: $d1
    ld a, c                                       ; $4910: $79
    ld d, $2c                                     ; $4911: $16 $2c
    ld [de], a                                    ; $4913: $12
    db $fc                                        ; $4914: $fc
    ld b, c                                       ; $4915: $41
    ld h, e                                       ; $4916: $63
    dec sp                                        ; $4917: $3b
    xor a                                         ; $4918: $af
    dec b                                         ; $4919: $05
    inc e                                         ; $491a: $1c
    ld a, [hl-]                                   ; $491b: $3a

Jump_035_491c:
    ld [hl-], a                                   ; $491c: $32
    or l                                          ; $491d: $b5
    ld e, c                                       ; $491e: $59
    inc sp                                        ; $491f: $33
    ld h, a                                       ; $4920: $67
    sbc $ea                                       ; $4921: $de $ea
    ld [hl], b                                    ; $4923: $70
    sub c                                         ; $4924: $91
    cp a                                          ; $4925: $bf
    ei                                            ; $4926: $fb
    rla                                           ; $4927: $17
    or d                                          ; $4928: $b2
    or a                                          ; $4929: $b7
    inc hl                                        ; $492a: $23
    ld c, b                                       ; $492b: $48
    adc e                                         ; $492c: $8b
    ldh [$73], a                                  ; $492d: $e0 $73
    push de                                       ; $492f: $d5
    ld d, c                                       ; $4930: $51
    db $ed                                        ; $4931: $ed
    ld e, b                                       ; $4932: $58
    ld [hl], a                                    ; $4933: $77
    xor b                                         ; $4934: $a8
    ld [hl+], a                                   ; $4935: $22
    or d                                          ; $4936: $b2
    rst $08                                       ; $4937: $cf
    cp d                                          ; $4938: $ba
    sbc a                                         ; $4939: $9f
    dec h                                         ; $493a: $25
    dec hl                                        ; $493b: $2b
    db $e4                                        ; $493c: $e4
    adc a                                         ; $493d: $8f
    add [hl]                                      ; $493e: $86
    rst $00                                       ; $493f: $c7
    pop af                                        ; $4940: $f1
    and [hl]                                      ; $4941: $a6
    add hl, sp                                    ; $4942: $39

jr_035_4943:
    adc h                                         ; $4943: $8c
    ld a, [hl]                                    ; $4944: $7e
    ld d, b                                       ; $4945: $50
    ld h, e                                       ; $4946: $63
    ld [hl], l                                    ; $4947: $75

Jump_035_4948:
    ld c, b                                       ; $4948: $48
    ld e, c                                       ; $4949: $59
    inc hl                                        ; $494a: $23
    ld e, d                                       ; $494b: $5a
    adc $4d                                       ; $494c: $ce $4d
    cp $22                                        ; $494e: $fe $22
    ld h, e                                       ; $4950: $63
    ld h, [hl]                                    ; $4951: $66
    call z, $b301                                 ; $4952: $cc $01 $b3
    cp $73                                        ; $4955: $fe $73
    add e                                         ; $4957: $83
    cp a                                          ; $4958: $bf
    cp [hl]                                       ; $4959: $be
    rst $08                                       ; $495a: $cf
    cp d                                          ; $495b: $ba
    ld a, [$8763]                                 ; $495c: $fa $63 $87

Jump_035_495f:
    add hl, hl                                    ; $495f: $29
    cp $7a                                        ; $4960: $fe $7a
    inc b                                         ; $4962: $04
    ld d, h                                       ; $4963: $54
    ld a, e                                       ; $4964: $7b
    set 5, b                                      ; $4965: $cb $e8
    call z, $504b                                 ; $4967: $cc $4b $50
    ld [de], a                                    ; $496a: $12
    ld a, a                                       ; $496b: $7f
    sbc $66                                       ; $496c: $de $66
    ld h, $d4                                     ; $496e: $26 $d4
    ld l, d                                       ; $4970: $6a
    ld l, a                                       ; $4971: $6f
    sbc d                                         ; $4972: $9a
    inc bc                                        ; $4973: $03
    adc h                                         ; $4974: $8c
    ld a, [bc]                                    ; $4975: $0a
    sbc d                                         ; $4976: $9a
    ld sp, hl                                     ; $4977: $f9
    ld hl, sp-$04                                 ; $4978: $f8 $fc
    pop bc                                        ; $497a: $c1
    cp c                                          ; $497b: $b9
    ret                                           ; $497c: $c9


    ld e, a                                       ; $497d: $5f
    ld h, h                                       ; $497e: $64
    ld c, h                                       ; $497f: $4c
    jp c, $5f91                                   ; $4980: $da $91 $5f

    rst $38                                       ; $4983: $ff
    and e                                         ; $4984: $a3
    and e                                         ; $4985: $a3
    ld h, d                                       ; $4986: $62
    cp c                                          ; $4987: $b9
    ld a, e                                       ; $4988: $7b
    rrca                                          ; $4989: $0f
    pop de                                        ; $498a: $d1
    push bc                                       ; $498b: $c5
    ldh [$cf], a                                  ; $498c: $e0 $cf
    ld d, d                                       ; $498e: $52
    db $f4                                        ; $498f: $f4
    sub e                                         ; $4990: $93
    ld [de], a                                    ; $4991: $12
    ld [hl], d                                    ; $4992: $72
    cp l                                          ; $4993: $bd
    ld [$242f], a                                 ; $4994: $ea $2f $24
    sub $52                                       ; $4997: $d6 $52
    ld [hl], h                                    ; $4999: $74
    db $ec                                        ; $499a: $ec
    cp c                                          ; $499b: $b9
    ld a, [$5623]                                 ; $499c: $fa $23 $56
    ld a, a                                       ; $499f: $7f
    db $ec                                        ; $49a0: $ec
    jr nc, @-$39                                  ; $49a1: $30 $c5

    ld e, a                                       ; $49a3: $5f
    rst $28                                       ; $49a4: $ef
    ld h, c                                       ; $49a5: $61
    ld l, l                                       ; $49a6: $6d
    jp hl                                         ; $49a7: $e9


    ld d, a                                       ; $49a8: $57
    ld b, h                                       ; $49a9: $44
    pop de                                        ; $49aa: $d1
    or c                                          ; $49ab: $b1
    ld a, $fa                                     ; $49ac: $3e $fa
    add hl, hl                                    ; $49ae: $29
    ld a, b                                       ; $49af: $78
    dec sp                                        ; $49b0: $3b
    adc d                                         ; $49b1: $8a
    ld a, [hl]                                    ; $49b2: $7e
    jr nz, jr_035_49cc                            ; $49b3: $20 $17

    pop bc                                        ; $49b5: $c1
    rrca                                          ; $49b6: $0f
    jp nc, $c91c                                  ; $49b7: $d2 $1c $c9

    ld e, a                                       ; $49ba: $5f
    ld h, h                                       ; $49bb: $64
    call z, $2690                                 ; $49bc: $cc $90 $26
    ldh a, [$d7]                                  ; $49bf: $f0 $d7
    scf                                           ; $49c1: $37
    or [hl]                                       ; $49c2: $b6
    ld hl, sp+$5c                                 ; $49c3: $f8 $5c
    xor l                                         ; $49c5: $ad
    ld a, [$7e26]                                 ; $49c6: $fa $26 $7e
    inc de                                        ; $49c9: $13
    ccf                                           ; $49ca: $3f
    dec [hl]                                      ; $49cb: $35

jr_035_49cc:
    add b                                         ; $49cc: $80
    ret nc                                        ; $49cd: $d0

    ld d, e                                       ; $49ce: $53
    ld a, a                                       ; $49cf: $7f
    or e                                          ; $49d0: $b3
    cpl                                           ; $49d1: $2f
    db $dd                                        ; $49d2: $dd
    ldh [rIF], a                                  ; $49d3: $e0 $0f
    ld a, d                                       ; $49d5: $7a
    ld hl, sp+$49                                 ; $49d6: $f8 $49
    sbc d                                         ; $49d8: $9a
    inc bc                                        ; $49d9: $03
    add hl, bc                                    ; $49da: $09
    db $fc                                        ; $49db: $fc
    push af                                       ; $49dc: $f5
    ld a, l                                       ; $49dd: $7d
    sub $d5                                       ; $49de: $d6 $d5
    rra                                           ; $49e0: $1f
    dec hl                                        ; $49e1: $2b
    pop bc                                        ; $49e2: $c1
    rra                                           ; $49e3: $1f
    ld b, h                                       ; $49e4: $44
    and $0e                                       ; $49e5: $e6 $0e
    ld d, e                                       ; $49e7: $53
    db $fc                                        ; $49e8: $fc
    push af                                       ; $49e9: $f5
    ld [$f6a8], sp                                ; $49ea: $08 $a8 $f6
    ld d, c                                       ; $49ed: $51
    add hl, bc                                    ; $49ee: $09
    cp $20                                        ; $49ef: $fe $20
    ld [hl-], a                                   ; $49f1: $32
    ld l, a                                       ; $49f2: $6f
    add hl, de                                    ; $49f3: $19
    sbc l                                         ; $49f4: $9d
    ld a, c                                       ; $49f5: $79
    add hl, bc                                    ; $49f6: $09
    xor d                                         ; $49f7: $aa
    ld hl, sp+$6b                                 ; $49f8: $f8 $6b
    ld h, [hl]                                    ; $49fa: $66
    ld b, d                                       ; $49fb: $42
    xor l                                         ; $49fc: $ad
    or $56                                        ; $49fd: $f6 $56
    xor l                                         ; $49ff: $ad
    xor [hl]                                      ; $4a00: $ae
    or c                                          ; $4a01: $b1
    ld a, [$96ef]                                 ; $4a02: $fa $ef $96
    xor h                                         ; $4a05: $ac
    and h                                         ; $4a06: $a4
    jp $a582                                      ; $4a07: $c3 $82 $a5


    ld [hl], c                                    ; $4a0a: $71
    pop bc                                        ; $4a0b: $c1
    di                                            ; $4a0c: $f3
    xor l                                         ; $4a0d: $ad
    ld h, h                                       ; $4a0e: $64
    dec h                                         ; $4a0f: $25
    inc h                                         ; $4a10: $24
    ld a, [hl]                                    ; $4a11: $7e
    set 1, h                                      ; $4a12: $cb $cc
    jp z, Jump_000_0fe7                           ; $4a14: $ca $e7 $0f

    jp nc, Jump_035_4c1c                          ; $4a17: $d2 $1c $4c

    ccf                                           ; $4a1a: $3f
    ld l, c                                       ; $4a1b: $69
    and [hl]                                      ; $4a1c: $a6
    ret nz                                        ; $4a1d: $c0

    dec e                                         ; $4a1e: $1d
    ld a, [hl-]                                   ; $4a1f: $3a
    pop af                                        ; $4a20: $f1
    ret nc                                        ; $4a21: $d0

    adc c                                         ; $4a22: $89
    add a                                         ; $4a23: $87
    ld a, [bc]                                    ; $4a24: $0a
    db $eb                                        ; $4a25: $eb
    add b                                         ; $4a26: $80
    ld [hl], e                                    ; $4a27: $73
    sub e                                         ; $4a28: $93
    cp a                                          ; $4a29: $bf
    ret z                                         ; $4a2a: $c8

    sbc b                                         ; $4a2b: $98
    or h                                          ; $4a2c: $b4
    add hl, bc                                    ; $4a2d: $09
    db $fc                                        ; $4a2e: $fc
    push af                                       ; $4a2f: $f5
    ld a, l                                       ; $4a30: $7d
    sub $75                                       ; $4a31: $d6 $75
    ld h, h                                       ; $4a33: $64
    ld e, [hl]                                    ; $4a34: $5e
    and b                                         ; $4a35: $a0
    pop bc                                        ; $4a36: $c1
    ld e, a                                       ; $4a37: $5f
    cp a                                          ; $4a38: $bf
    ld [c], a                                     ; $4a39: $e2
    xor a                                         ; $4a3a: $af
    dec de                                        ; $4a3b: $1b
    db $fc                                        ; $4a3c: $fc
    ld bc, $aff6                                  ; $4a3d: $01 $f6 $af
    or [hl]                                       ; $4a40: $b6
    jr jr_035_4aae                                ; $4a41: $18 $6b

    cp c                                          ; $4a43: $b9
    ld a, a                                       ; $4a44: $7f
    ld bc, $da43                                  ; $4a45: $01 $43 $da
    inc de                                        ; $4a48: $13
    db $fc                                        ; $4a49: $fc
    or [hl]                                       ; $4a4a: $b6
    and e                                         ; $4a4b: $a3
    call nc, $c0de                                ; $4a4c: $d4 $de $c0
    dec h                                         ; $4a4f: $25
    ld c, b                                       ; $4a50: $48
    ld d, d                                       ; $4a51: $52
    ld b, [hl]                                    ; $4a52: $46
    sbc c                                         ; $4a53: $99
    sbc b                                         ; $4a54: $98
    ld d, c                                       ; $4a55: $51
    ld h, $66                                     ; $4a56: $26 $66
    sub h                                         ; $4a58: $94
    ld sp, $1104                                  ; $4a59: $31 $04 $11
    xor e                                         ; $4a5c: $ab
    cpl                                           ; $4a5d: $2f
    ld c, c                                       ; $4a5e: $49
    ld [hl], e                                    ; $4a5f: $73
    add hl, bc                                    ; $4a60: $09
    db $fc                                        ; $4a61: $fc
    push af                                       ; $4a62: $f5
    ld a, l                                       ; $4a63: $7d
    sub $d5                                       ; $4a64: $d6 $d5
    rra                                           ; $4a66: $1f
    dec hl                                        ; $4a67: $2b
    pop bc                                        ; $4a68: $c1
    rra                                           ; $4a69: $1f
    ld b, h                                       ; $4a6a: $44
    and $0e                                       ; $4a6b: $e6 $0e
    ld d, e                                       ; $4a6d: $53
    db $fc                                        ; $4a6e: $fc
    push af                                       ; $4a6f: $f5
    ld [$f6a8], sp                                ; $4a70: $08 $a8 $f6
    ld d, [hl]                                    ; $4a73: $56
    add d                                         ; $4a74: $82
    ccf                                           ; $4a75: $3f
    adc b                                         ; $4a76: $88
    call z, Call_035_465b                         ; $4a77: $cc $5b $46
    ld h, a                                       ; $4a7a: $67
    ld e, [hl]                                    ; $4a7b: $5e
    add d                                         ; $4a7c: $82
    sub d                                         ; $4a7d: $92
    ld hl, sp-$0d                                 ; $4a7e: $f8 $f3
    ld [hl], $33                                  ; $4a80: $36 $33
    and c                                         ; $4a82: $a1
    ld d, [hl]                                    ; $4a83: $56
    ld a, e                                       ; $4a84: $7b
    db $d3                                        ; $4a85: $d3
    inc e                                         ; $4a86: $1c
    ld c, h                                       ; $4a87: $4c
    ccf                                           ; $4a88: $3f
    ld l, c                                       ; $4a89: $69
    and [hl]                                      ; $4a8a: $a6
    ret nz                                        ; $4a8b: $c0

    dec e                                         ; $4a8c: $1d
    ld a, [hl-]                                   ; $4a8d: $3a
    pop af                                        ; $4a8e: $f1
    ret nc                                        ; $4a8f: $d0

    adc c                                         ; $4a90: $89
    add a                                         ; $4a91: $87
    ld a, [bc]                                    ; $4a92: $0a
    db $eb                                        ; $4a93: $eb
    add b                                         ; $4a94: $80
    ld [hl], e                                    ; $4a95: $73
    sub e                                         ; $4a96: $93
    cp a                                          ; $4a97: $bf
    ret z                                         ; $4a98: $c8

    sbc b                                         ; $4a99: $98
    or h                                          ; $4a9a: $b4
    add hl, bc                                    ; $4a9b: $09
    db $fc                                        ; $4a9c: $fc
    push af                                       ; $4a9d: $f5
    ld a, l                                       ; $4a9e: $7d
    sub $75                                       ; $4a9f: $d6 $75
    ld h, h                                       ; $4aa1: $64
    ld e, [hl]                                    ; $4aa2: $5e
    and b                                         ; $4aa3: $a0
    pop bc                                        ; $4aa4: $c1
    ld e, a                                       ; $4aa5: $5f
    cp a                                          ; $4aa6: $bf
    ld [c], a                                     ; $4aa7: $e2
    xor a                                         ; $4aa8: $af
    dec de                                        ; $4aa9: $1b
    db $fc                                        ; $4aaa: $fc
    ld bc, $aff6                                  ; $4aab: $01 $f6 $af

jr_035_4aae:
    or [hl]                                       ; $4aae: $b6
    jr jr_035_4b1c                                ; $4aaf: $18 $6b

    cp c                                          ; $4ab1: $b9
    ld a, a                                       ; $4ab2: $7f
    ld bc, $da43                                  ; $4ab3: $01 $43 $da
    inc de                                        ; $4ab6: $13
    db $fc                                        ; $4ab7: $fc
    or [hl]                                       ; $4ab8: $b6
    and e                                         ; $4ab9: $a3
    call nc, $c0de                                ; $4aba: $d4 $de $c0
    dec h                                         ; $4abd: $25
    ld c, b                                       ; $4abe: $48
    ld d, d                                       ; $4abf: $52
    ld b, [hl]                                    ; $4ac0: $46
    sbc c                                         ; $4ac1: $99
    sbc b                                         ; $4ac2: $98
    ld d, c                                       ; $4ac3: $51
    ld h, $66                                     ; $4ac4: $26 $66
    sub h                                         ; $4ac6: $94
    ld sp, $1104                                  ; $4ac7: $31 $04 $11
    xor e                                         ; $4aca: $ab
    cpl                                           ; $4acb: $2f
    ld c, c                                       ; $4acc: $49

jr_035_4acd:
    rr b                                          ; $4acd: $cb $18
    ld l, h                                       ; $4acf: $6c
    adc a                                         ; $4ad0: $8f
    sub b                                         ; $4ad1: $90
    ld [$1d8f], a                                 ; $4ad2: $ea $8f $1d
    ld [hl], $f1                                  ; $4ad5: $36 $f1
    or b                                          ; $4ad7: $b0
    adc c                                         ; $4ad8: $89
    add a                                         ; $4ad9: $87
    add hl, hl                                    ; $4ada: $29
    cp $aa                                        ; $4adb: $fe $aa
    ld d, [hl]                                    ; $4add: $56
    scf                                           ; $4ade: $37
    ld hl, sp+$2b                                 ; $4adf: $f8 $2b
    dec hl                                        ; $4ae1: $2b
    or c                                          ; $4ae2: $b1
    sbc c                                         ; $4ae3: $99
    ld l, e                                       ; $4ae4: $6b
    db $ec                                        ; $4ae5: $ec
    ret z                                         ; $4ae6: $c8

    xor a                                         ; $4ae7: $af
    rst $38                                       ; $4ae8: $ff
    pop de                                        ; $4ae9: $d1
    ld d, c                                       ; $4aea: $51
    or c                                          ; $4aeb: $b1
    call c, $2b25                                 ; $4aec: $dc $25 $2b
    ld hl, $5bf1                                  ; $4aef: $21 $f1 $5b
    sbc d                                         ; $4af2: $9a
    inc bc                                        ; $4af3: $03
    ret                                           ; $4af4: $c9


    ld h, c                                       ; $4af5: $61
    ld l, c                                       ; $4af6: $69
    jr nz, jr_035_4acd                            ; $4af7: $20 $d4

    sbc b                                         ; $4af9: $98
    and $23                                       ; $4afa: $e6 $23
    xor [hl]                                      ; $4afc: $ae
    db $e3                                        ; $4afd: $e3
    ld b, b                                       ; $4afe: $40
    xor b                                         ; $4aff: $a8
    ld d, [hl]                                    ; $4b00: $56
    ld h, l                                       ; $4b01: $65
    dec e                                         ; $4b02: $1d
    push de                                       ; $4b03: $d5
    adc [hl]                                      ; $4b04: $8e
    or l                                          ; $4b05: $b5
    sub h                                         ; $4b06: $94
    add hl, sp                                    ; $4b07: $39
    ld sp, $6273                                  ; $4b08: $31 $73 $62
    and [hl]                                      ; $4b0b: $a6
    ld [c], a                                     ; $4b0c: $e2
    rst $08                                       ; $4b0d: $cf
    dec e                                         ; $4b0e: $1d
    cp h                                          ; $4b0f: $bc

jr_035_4b10:
    db $e4                                        ; $4b10: $e4
    rst $28                                       ; $4b11: $ef
    cp c                                          ; $4b12: $b9
    ret                                           ; $4b13: $c9


    ld e, a                                       ; $4b14: $5f
    ld h, h                                       ; $4b15: $64
    call z, Call_000_398c                         ; $4b16: $cc $8c $39
    ld c, h                                       ; $4b19: $4c
    cp $36                                        ; $4b1a: $fe $36

jr_035_4b1c:
    ld c, h                                       ; $4b1c: $4c
    sbc h                                         ; $4b1d: $9c
    ei                                            ; $4b1e: $fb
    ld a, $20                                     ; $4b1f: $3e $20
    ld a, a                                       ; $4b21: $7f
    pop de                                        ; $4b22: $d1
    inc [hl]                                      ; $4b23: $34
    ld c, l                                       ; $4b24: $4d
    ld [hl], e                                    ; $4b25: $73
    ld c, h                                       ; $4b26: $4c
    push bc                                       ; $4b27: $c5
    ld e, a                                       ; $4b28: $5f
    jp hl                                         ; $4b29: $e9


    call nz, Call_035_6274                        ; $4b2a: $c4 $74 $62
    ld a, [de]                                    ; $4b2d: $1a
    ld h, [hl]                                    ; $4b2e: $66
    dec l                                         ; $4b2f: $2d
    cp l                                          ; $4b30: $bd
    dec sp                                        ; $4b31: $3b
    ret nz                                        ; $4b32: $c0

    ld [hl], d                                    ; $4b33: $72
    ld l, [hl]                                    ; $4b34: $6e
    ld a, [c]                                     ; $4b35: $f2
    rla                                           ; $4b36: $17
    add hl, de                                    ; $4b37: $19
    sub e                                         ; $4b38: $93
    and $49                                       ; $4b39: $e6 $49
    xor d                                         ; $4b3b: $aa
    rst $28                                       ; $4b3c: $ef
    inc hl                                        ; $4b3d: $23
    ld d, h                                       ; $4b3e: $54
    ld a, e                                       ; $4b3f: $7b
    dec sp                                        ; $4b40: $3b
    rst $08                                       ; $4b41: $cf
    add d                                         ; $4b42: $82
    ld b, l                                       ; $4b43: $45
    add d                                         ; $4b44: $82
    ccf                                           ; $4b45: $3f
    ld l, b                                       ; $4b46: $68
    ld h, [hl]                                    ; $4b47: $66
    add h                                         ; $4b48: $84
    or c                                          ; $4b49: $b1
    dec b                                         ; $4b4a: $05
    add [hl]                                      ; $4b4b: $86
    ld [hl], h                                    ; $4b4c: $74
    ld d, $d2                                     ; $4b4d: $16 $d2
    ld [de], a                                    ; $4b4f: $12
    ld h, l                                       ; $4b50: $65
    add d                                         ; $4b51: $82
    ld a, h                                       ; $4b52: $7c
    ld h, d                                       ; $4b53: $62
    ld b, b                                       ; $4b54: $40
    db $ed                                        ; $4b55: $ed
    dec c                                         ; $4b56: $0d
    inc a                                         ; $4b57: $3c
    inc h                                         ; $4b58: $24
    rlca                                          ; $4b59: $07
    ld l, c                                       ; $4b5a: $69
    sbc d                                         ; $4b5b: $9a
    or $9e                                        ; $4b5c: $f6 $9e
    ld hl, sp-$3c                                 ; $4b5e: $f8 $c4
    xor e                                         ; $4b60: $ab
    xor e                                         ; $4b61: $ab
    adc l                                         ; $4b62: $8d
    dec e                                         ; $4b63: $1d
    dec e                                         ; $4b64: $1d
    ld d, h                                       ; $4b65: $54
    rst $18                                       ; $4b66: $df
    ld a, $90                                     ; $4b67: $3e $90
    cp l                                          ; $4b69: $bd
    inc de                                        ; $4b6a: $13
    adc a                                         ; $4b6b: $8f
    jr nc, jr_035_4b10                            ; $4b6c: $30 $a2

    jp hl                                         ; $4b6e: $e9


    call nz, Call_000_104c                        ; $4b6f: $c4 $4c $10
    rst $00                                       ; $4b72: $c7
    dec c                                         ; $4b73: $0d
    dec de                                        ; $4b74: $1b
    ld b, a                                       ; $4b75: $47
    ld h, a                                       ; $4b76: $67
    db $fd                                        ; $4b77: $fd
    ld c, a                                       ; $4b78: $4f
    call c, $a6c9                                 ; $4b79: $dc $c9 $a6
    sbc e                                         ; $4b7c: $9b
    ld l, h                                       ; $4b7d: $6c
    or d                                          ; $4b7e: $b2
    ld [hl], e                                    ; $4b7f: $73
    ld l, a                                       ; $4b80: $6f
    rst $38                                       ; $4b81: $ff
    xor b                                         ; $4b82: $a8
    or c                                          ; $4b83: $b1
    ld h, h                                       ; $4b84: $64
    ld d, l                                       ; $4b85: $55
    rst $00                                       ; $4b86: $c7
    ld a, [$dce8]                                 ; $4b87: $fa $e8 $dc
    ld [de], a                                    ; $4b8a: $12
    ld [$7818], a                                 ; $4b8b: $ea $18 $78
    push de                                       ; $4b8e: $d5
    sub [hl]                                      ; $4b8f: $96
    adc [hl]                                      ; $4b90: $8e
    ld c, $aa                                     ; $4b91: $0e $aa
    ld l, a                                       ; $4b93: $6f
    rra                                           ; $4b94: $1f
    ret z                                         ; $4b95: $c8

    sbc $73                                       ; $4b96: $de $73
    ccf                                           ; $4b98: $3f
    push bc                                       ; $4b99: $c5
    and [hl]                                      ; $4b9a: $a6
    ld l, c                                       ; $4b9b: $69
    sbc d                                         ; $4b9c: $9a
    inc bc                                        ; $4b9d: $03
    di                                            ; $4b9e: $f3
    add [hl]                                      ; $4b9f: $86
    ld l, c                                       ; $4ba0: $69
    sbc c                                         ; $4ba1: $99
    inc bc                                        ; $4ba2: $03
    ld a, a                                       ; $4ba3: $7f
    sbc h                                         ; $4ba4: $9c
    ld e, $01                                     ; $4ba5: $1e $01
    push de                                       ; $4ba7: $d5
    sbc $12                                       ; $4ba8: $de $12
    and h                                         ; $4baa: $a4
    dec h                                         ; $4bab: $25
    jp z, $f904                                   ; $4bac: $ca $04 $f9

    call nz, $da80                                ; $4baf: $c4 $80 $da
    dec de                                        ; $4bb2: $1b
    ld a, b                                       ; $4bb3: $78
    rst $08                                       ; $4bb4: $cf
    push de                                       ; $4bb5: $d5
    pop hl                                        ; $4bb6: $e1
    ld l, d                                       ; $4bb7: $6a
    ld d, l                                       ; $4bb8: $55
    sub $b7                                       ; $4bb9: $d6 $b7
    db $eb                                        ; $4bbb: $eb
    jr c, @+$12                                   ; $4bbc: $38 $10

    adc $bd                                       ; $4bbe: $ce $bd
    dec sp                                        ; $4bc0: $3b
    ld l, b                                       ; $4bc1: $68
    or l                                          ; $4bc2: $b5
    ld [$58e1], a                                 ; $4bc3: $ea $e1 $58
    ld l, a                                       ; $4bc6: $6f
    rst $20                                       ; $4bc7: $e7
    ld e, c                                       ; $4bc8: $59
    or b                                          ; $4bc9: $b0
    ld c, b                                       ; $4bca: $48
    ldh a, [rTAC]                                 ; $4bcb: $f0 $07
    call Call_000_308c                            ; $4bcd: $cd $8c $30
    or [hl]                                       ; $4bd0: $b6
    ld b, b                                       ; $4bd1: $40
    rst $18                                       ; $4bd2: $df
    ld b, a                                       ; $4bd3: $47
    jr c, jr_035_4c4d                             ; $4bd4: $38 $77

    call nc, Call_035_6005                        ; $4bd6: $d4 $05 $60
    add hl, de                                    ; $4bd9: $19
    sub d                                         ; $4bda: $92
    inc bc                                        ; $4bdb: $03
    or e                                          ; $4bdc: $b3
    sub b                                         ; $4bdd: $90
    sub [hl]                                      ; $4bde: $96
    jr z, jr_035_4bf4                             ; $4bdf: $28 $13

    db $e4                                        ; $4be1: $e4
    inc de                                        ; $4be2: $13
    inc bc                                        ; $4be3: $03

Call_035_4be4:
    ld l, d                                       ; $4be4: $6a
    ld l, a                                       ; $4be5: $6f
    ldh [$73], a                                  ; $4be6: $e0 $73
    sub e                                         ; $4be8: $93
    cp a                                          ; $4be9: $bf
    ret z                                         ; $4bea: $c8

    sbc b                                         ; $4beb: $98
    ld [hl], e                                    ; $4bec: $73
    rst $28                                       ; $4bed: $ef
    ld c, $5a                                     ; $4bee: $0e $5a
    xor l                                         ; $4bf0: $ad
    ld a, [$d115]                                 ; $4bf1: $fa $15 $d1

jr_035_4bf4:
    jp $3eb1                                      ; $4bf4: $c3 $b1 $3e


    ld a, [hl-]                                   ; $4bf7: $3a
    adc e                                         ; $4bf8: $8b
    xor c                                         ; $4bf9: $a9
    ld l, [hl]                                    ; $4bfa: $6e
    ld h, [hl]                                    ; $4bfb: $66
    ld a, [$1b57]                                 ; $4bfc: $fa $57 $1b
    jp z, $c206                                   ; $4bff: $ca $06 $c2

    sub b                                         ; $4c02: $90
    inc e                                         ; $4c03: $1c
    call z, Call_035_419f                         ; $4c04: $cc $9f $41
    ccf                                           ; $4c07: $3f
    and l                                         ; $4c08: $a5
    xor $f8                                       ; $4c09: $ee $f8
    ret                                           ; $4c0b: $c9


    sbc a                                         ; $4c0c: $9f
    jp nc, $fc6b                                  ; $4c0d: $d2 $6b $fc

    sub d                                         ; $4c10: $92
    ld d, l                                       ; $4c11: $55
    sub e                                         ; $4c12: $93
    cp a                                          ; $4c13: $bf
    ret z                                         ; $4c14: $c8

    sbc b                                         ; $4c15: $98
    xor d                                         ; $4c16: $aa
    push de                                       ; $4c17: $d5
    dec e                                         ; $4c18: $1d
    ld a, a                                       ; $4c19: $7f
    ld l, [hl]                                    ; $4c1a: $6e
    db $e4                                        ; $4c1b: $e4

Jump_035_4c1c:
    adc a                                         ; $4c1c: $8f
    inc [hl]                                      ; $4c1d: $34
    adc $f8                                       ; $4c1e: $ce $f8
    dec h                                         ; $4c20: $25
    xor e                                         ; $4c21: $ab
    ld [de], a                                    ; $4c22: $12
    and h                                         ; $4c23: $a4
    dec h                                         ; $4c24: $25
    sbc d                                         ; $4c25: $9a
    db $fc                                        ; $4c26: $fc
    dec d                                         ; $4c27: $15
    ld c, $a8                                     ; $4c28: $0e $a8
    cp l                                          ; $4c2a: $bd
    add c                                         ; $4c2b: $81
    rst $30                                       ; $4c2c: $f7
    call c, $83bb                                 ; $4c2d: $dc $bb $83
    ld [hl], $f9                                  ; $4c30: $36 $f9
    adc e                                         ; $4c32: $8b
    adc h                                         ; $4c33: $8c
    xor c                                         ; $4c34: $a9
    or $76                                        ; $4c35: $f6 $76
    sbc [hl]                                      ; $4c37: $9e
    dec b                                         ; $4c38: $05
    adc e                                         ; $4c39: $8b
    inc b                                         ; $4c3a: $04
    ld a, a                                       ; $4c3b: $7f
    ret nc                                        ; $4c3c: $d0

    call z, Call_035_6308                         ; $4c3d: $cc $08 $63
    dec bc                                        ; $4c40: $0b
    db $f4                                        ; $4c41: $f4
    ld a, l                                       ; $4c42: $7d
    ld c, b                                       ; $4c43: $48
    ld [hl], e                                    ; $4c44: $73
    ld c, c                                       ; $4c45: $49
    xor d                                         ; $4c46: $aa
    ld l, h                                       ; $4c47: $6c
    jr nz, @-$0a                                  ; $4c48: $20 $f4

    call nc, $ecdf                                ; $4c4a: $d4 $df $ec

jr_035_4c4d:
    cpl                                           ; $4c4d: $2f
    cp c                                          ; $4c4e: $b9
    sbc c                                         ; $4c4f: $99
    sub b                                         ; $4c50: $90
    or [hl]                                       ; $4c51: $b6
    ld [hl], c                                    ; $4c52: $71

jr_035_4c53:
    sub h                                         ; $4c53: $94
    pop de                                        ; $4c54: $d1
    jr jr_035_4c53                                ; $4c55: $18 $fc

    pop bc                                        ; $4c57: $c1
    cp c                                          ; $4c58: $b9
    ret                                           ; $4c59: $c9


    ld e, a                                       ; $4c5a: $5f
    ld h, h                                       ; $4c5b: $64
    ld c, h                                       ; $4c5c: $4c
    sbc d                                         ; $4c5d: $9a
    inc bc                                        ; $4c5e: $03
    ld b, e                                       ; $4c5f: $43
    add hl, hl                                    ; $4c60: $29
    dec [hl]                                      ; $4c61: $35
    ld [hl], $b6                                  ; $4c62: $36 $b6
    ld [hl], e                                    ; $4c64: $73
    adc b                                         ; $4c65: $88
    ld e, [hl]                                    ; $4c66: $5e
    or l                                          ; $4c67: $b5
    reti                                          ; $4c68: $d9


    cp c                                          ; $4c69: $b9
    ret                                           ; $4c6a: $c9


    ld e, a                                       ; $4c6b: $5f
    ld h, h                                       ; $4c6c: $64
    call z, Call_000_398c                         ; $4c6d: $cc $8c $39
    ld c, c                                       ; $4c70: $49
    sub [hl]                                      ; $4c71: $96
    adc $42                                       ; $4c72: $ce $42
    dec d                                         ; $4c74: $15
    ld a, a                                       ; $4c75: $7f
    dec c                                         ; $4c76: $0d
    add h                                         ; $4c77: $84
    ld c, $5a                                     ; $4c78: $0e $5a
    sub b                                         ; $4c7a: $90
    cp a                                          ; $4c7b: $bf
    cp e                                          ; $4c7c: $bb
    ld e, d                                       ; $4c7d: $5a
    db $ed                                        ; $4c7e: $ed
    dec e                                         ; $4c7f: $1d
    sub d                                         ; $4c80: $92
    inc bc                                        ; $4c81: $03
    or e                                          ; $4c82: $b3
    sub b                                         ; $4c83: $90
    ld e, $45                                     ; $4c84: $1e $45
    xor b                                         ; $4c86: $a8
    ld d, [hl]                                    ; $4c87: $56
    push de                                       ; $4c88: $d5
    pop bc                                        ; $4c89: $c1
    ld e, a                                       ; $4c8a: $5f
    scf                                           ; $4c8b: $37
    ld hl, sp-$7d                                 ; $4c8c: $f8 $83
    ld h, [hl]                                    ; $4c8e: $66
    ld a, [bc]                                    ; $4c8f: $0a
    adc $4d                                       ; $4c90: $ce $4d
    cp $22                                        ; $4c92: $fe $22
    ld h, e                                       ; $4c94: $63
    ld h, [hl]                                    ; $4c95: $66
    call z, $b301                                 ; $4c96: $cc $01 $b3
    dec sp                                        ; $4c99: $3b
    or $5c                                        ; $4c9a: $f6 $5c
    db $e4                                        ; $4c9c: $e4
    ld l, a                                       ; $4c9d: $6f
    jp $b9c4                                      ; $4c9e: $c3 $c4 $b9


    and b                                         ; $4ca1: $a0
    ld h, b                                       ; $4ca2: $60
    ld h, d                                       ; $4ca3: $62
    ld d, b                                       ; $4ca4: $50
    sub b                                         ; $4ca5: $90
    halt                                          ; $4ca6: $76
    sub h                                         ; $4ca7: $94
    dec a                                         ; $4ca8: $3d
    ld l, b                                       ; $4ca9: $68
    db $ec                                        ; $4caa: $ec
    ei                                            ; $4cab: $fb
    ret nc                                        ; $4cac: $d0

    inc hl                                        ; $4cad: $23
    ld hl, sp-$15                                 ; $4cae: $f8 $eb
    ld de, $c750                                  ; $4cb0: $11 $50 $c7
    ld a, [$2ce8]                                 ; $4cb3: $fa $e8 $2c
    ld d, h                                       ; $4cb6: $54
    pop af                                        ; $4cb7: $f1
    ld d, a                                       ; $4cb8: $57
    sub $d4                                       ; $4cb9: $d6 $d4
    add hl, de                                    ; $4cbb: $19
    and h                                         ; $4cbc: $a4
    add hl, sp                                    ; $4cbd: $39
    jp $c7a5                                      ; $4cbe: $c3 $a5 $c7


    rst $20                                       ; $4cc1: $e7
    rrca                                          ; $4cc2: $0f
    ld [$e258], a                                 ; $4cc3: $ea $58 $e2
    di                                            ; $4cc6: $f3
    rst $10                                       ; $4cc7: $d7
    ld d, e                                       ; $4cc8: $53
    xor l                                         ; $4cc9: $ad
    cp l                                          ; $4cca: $bd
    cp l                                          ; $4ccb: $bd
    ret                                           ; $4ccc: $c9


    rst $18                                       ; $4ccd: $df
    ld e, e                                       ; $4cce: $5b
    jp c, $f932                                   ; $4ccf: $da $32 $f9

    ld [hl], e                                    ; $4cd2: $73
    inc l                                         ; $4cd3: $2c
    db $f4                                        ; $4cd4: $f4
    ld [$3de9], sp                                ; $4cd5: $08 $e9 $3d
    db $e4                                        ; $4cd8: $e4
    ld b, [hl]                                    ; $4cd9: $46
    add e                                         ; $4cda: $83
    cp a                                          ; $4cdb: $bf
    ld a, [hl-]                                   ; $4cdc: $3a
    or [hl]                                       ; $4cdd: $b6
    or e                                          ; $4cde: $b3
    ld d, b                                       ; $4cdf: $50
    push bc                                       ; $4ce0: $c5
    ld e, a                                       ; $4ce1: $5f
    ret                                           ; $4ce2: $c9


    xor d                                         ; $4ce3: $aa
    add sp, -$28                                  ; $4ce4: $e8 $d8
    or h                                          ; $4ce6: $b4
    ld c, c                                       ; $4ce7: $49
    xor d                                         ; $4ce8: $aa
    ld a, b                                       ; $4ce9: $78
    ld d, c                                       ; $4cea: $51
    ld a, [bc]                                    ; $4ceb: $0a
    ld b, [hl]                                    ; $4cec: $46
    add sp, $28                                   ; $4ced: $e8 $28
    cp c                                          ; $4cef: $b9
    ld [$5e23], sp                                ; $4cf0: $08 $23 $5e
    jp nc, Jump_035_5539                          ; $4cf3: $d2 $39 $55

    adc b                                         ; $4cf6: $88
    sbc b                                         ; $4cf7: $98
    jp nc, Jump_035_51c6                          ; $4cf8: $d2 $c6 $51

    dec l                                         ; $4cfb: $2d
    ld bc, $2de0                                  ; $4cfc: $01 $e0 $2d
    inc de                                        ; $4cff: $13
    ld l, $7e                                     ; $4d00: $2e $7e
    db $eb                                        ; $4d02: $eb
    ld d, a                                       ; $4d03: $57
    inc b                                         ; $4d04: $04
    ld a, [hl+]                                   ; $4d05: $2a
    cp $bc                                        ; $4d06: $fe $bc
    ld l, c                                       ; $4d08: $69
    add a                                         ; $4d09: $87
    ld c, e                                       ; $4d0a: $4b
    inc bc                                        ; $4d0b: $03
    and c                                         ; $4d0c: $a1
    cpl                                           ; $4d0d: $2f
    inc l                                         ; $4d0e: $2c
    push de                                       ; $4d0f: $d5
    sub [hl]                                      ; $4d10: $96
    adc $42                                       ; $4d11: $ce $42
    dec d                                         ; $4d13: $15
    ld a, a                                       ; $4d14: $7f
    ld a, $7d                                     ; $4d15: $3e $7d
    ret nz                                        ; $4d17: $c0

    ld [bc], a                                    ; $4d18: $02
    ld c, [hl]                                    ; $4d19: $4e
    ld [hl], e                                    ; $4d1a: $73
    ld c, c                                       ; $4d1b: $49
    xor d                                         ; $4d1c: $aa
    ld a, b                                       ; $4d1d: $78
    ld d, c                                       ; $4d1e: $51
    ld a, [bc]                                    ; $4d1f: $0a
    ld b, [hl]                                    ; $4d20: $46
    add sp, $28                                   ; $4d21: $e8 $28
    cp c                                          ; $4d23: $b9
    ld [$5e23], sp                                ; $4d24: $08 $23 $5e
    jp nc, Jump_035_5539                          ; $4d27: $d2 $39 $55

    adc b                                         ; $4d2a: $88
    sbc b                                         ; $4d2b: $98
    jp nc, Jump_035_51c6                          ; $4d2c: $d2 $c6 $51

    dec l                                         ; $4d2f: $2d
    ld bc, $2de0                                  ; $4d30: $01 $e0 $2d
    inc de                                        ; $4d33: $13
    ld l, $7e                                     ; $4d34: $2e $7e
    xor e                                         ; $4d36: $ab
    ld h, e                                       ; $4d37: $63
    cp l                                          ; $4d38: $bd
    dec e                                         ; $4d39: $1d
    ld h, [hl]                                    ; $4d3a: $66
    ld d, h                                       ; $4d3b: $54
    db $fc                                        ; $4d3c: $fc
    push af                                       ; $4d3d: $f5
    or e                                          ; $4d3e: $b3
    ld [$c01f], sp                                ; $4d3f: $08 $1f $c0
    sbc e                                         ; $4d42: $9b
    halt                                          ; $4d43: $76
    cp b                                          ; $4d44: $b8
    inc [hl]                                      ; $4d45: $34
    db $10                                        ; $4d46: $10
    ld a, [$52c2]                                 ; $4d47: $fa $c2 $52
    ld l, l                                       ; $4d4a: $6d
    jp hl                                         ; $4d4b: $e9


    inc l                                         ; $4d4c: $2c
    ld d, h                                       ; $4d4d: $54
    pop af                                        ; $4d4e: $f1
    rst $20                                       ; $4d4f: $e7
    db $d3                                        ; $4d50: $d3
    rlca                                          ; $4d51: $07
    inc l                                         ; $4d52: $2c
    ldh [$34], a                                  ; $4d53: $e0 $34
    rlca                                          ; $4d55: $07
    add hl, bc                                    ; $4d56: $09
    db $fc                                        ; $4d57: $fc
    push af                                       ; $4d58: $f5
    cp $a5                                        ; $4d59: $fe $a5
    add h                                         ; $4d5b: $84
    sub b                                         ; $4d5c: $90
    sbc [hl]                                      ; $4d5d: $9e
    and l                                         ; $4d5e: $a5
    rst $00                                       ; $4d5f: $c7
    and a                                         ; $4d60: $a7
    db $fd                                        ; $4d61: $fd
    adc d                                         ; $4d62: $8a
    xor b                                         ; $4d63: $a8
    or [hl]                                       ; $4d64: $b6
    db $f4                                        ; $4d65: $f4
    add h                                         ; $4d66: $84
    xor a                                         ; $4d67: $af
    ld e, b                                       ; $4d68: $58
    bit 1, l                                      ; $4d69: $cb $4d
    dec l                                         ; $4d6b: $2d
    ld [bc], a                                    ; $4d6c: $02
    ld a, [c]                                     ; $4d6d: $f2
    and a                                         ; $4d6e: $a7
    xor b                                         ; $4d6f: $a8
    rst $08                                       ; $4d70: $cf
    db $fd                                        ; $4d71: $fd
    xor h                                         ; $4d72: $ac
    and l                                         ; $4d73: $a5
    ld a, b                                       ; $4d74: $78
    push de                                       ; $4d75: $d5
    ld [hl], b                                    ; $4d76: $70
    rst $38                                       ; $4d77: $ff
    ret c                                         ; $4d78: $d8

    ld b, b                                       ; $4d79: $40
    add sp, $11                                   ; $4d7a: $e8 $11
    ld d, d                                       ; $4d7c: $52
    db $fd                                        ; $4d7d: $fd
    cp e                                          ; $4d7e: $bb
    pop bc                                        ; $4d7f: $c1
    rra                                           ; $4d80: $1f
    ld d, h                                       ; $4d81: $54
    dec l                                         ; $4d82: $2d
    ld e, b                                       ; $4d83: $58
    ld [hl-], a                                   ; $4d84: $32
    rst $18                                       ; $4d85: $df
    xor [hl]                                      ; $4d86: $ae
    db $e3                                        ; $4d87: $e3
    ldh a, [$a6]                                  ; $4d88: $f0 $a6
    add hl, sp                                    ; $4d8a: $39
    inc hl                                        ; $4d8b: $23
    dec e                                         ; $4d8c: $1d
    db $eb                                        ; $4d8d: $eb
    adc [hl]                                      ; $4d8e: $8e
    ld d, h                                       ; $4d8f: $54
    nop                                           ; $4d90: $00
    sub [hl]                                      ; $4d91: $96
    ld [c], a                                     ; $4d92: $e2
    rst $08                                       ; $4d93: $cf
    ldh [$dc], a                                  ; $4d94: $e0 $dc
    ldh [$af], a                                  ; $4d96: $e0 $af
    ld [hl], a                                    ; $4d98: $77
    sub d                                         ; $4d99: $92
    ld l, b                                       ; $4d9a: $68
    ld [hl], a                                    ; $4d9b: $77
    ldh a, [$da]                                  ; $4d9c: $f0 $da
    adc $fe                                       ; $4d9e: $ce $fe
    ld b, c                                       ; $4da0: $41
    ld c, c                                       ; $4da1: $49
    cp a                                          ; $4da2: $bf
    jp nz, Jump_035_5892                          ; $4da3: $c2 $92 $58

    ld c, e                                       ; $4da6: $4b
    dec e                                         ; $4da7: $1d
    db $eb                                        ; $4da8: $eb
    ld l, l                                       ; $4da9: $6d
    and $7b                                       ; $4daa: $e6 $7b

jr_035_4dac:
    jr nz, jr_035_4e28                            ; $4dac: $20 $7a

    ld a, e                                       ; $4dae: $7b
    jp nz, $ac57                                  ; $4daf: $c2 $57 $ac

    and l                                         ; $4db2: $a5
    add e                                         ; $4db3: $83
    ld d, $82                                     ; $4db4: $16 $82
    sub h                                         ; $4db6: $94
    ld a, c                                       ; $4db7: $79
    rst $08                                       ; $4db8: $cf
    db $fd                                        ; $4db9: $fd
    xor h                                         ; $4dba: $ac
    and l                                         ; $4dbb: $a5
    pop bc                                        ; $4dbc: $c1
    ld e, a                                       ; $4dbd: $5f
    inc sp                                        ; $4dbe: $33
    ld a, [$eb15]                                 ; $4dbf: $fa $15 $eb
    ld [hl], e                                    ; $4dc2: $73
    push af                                       ; $4dc3: $f5
    rst $00                                       ; $4dc4: $c7
    cp [hl]                                       ; $4dc5: $be
    and b                                         ; $4dc6: $a0
    inc b                                         ; $4dc7: $04
    ld d, h                                       ; $4dc8: $54
    add a                                         ; $4dc9: $87
    inc [hl]                                      ; $4dca: $34
    or [hl]                                       ; $4dcb: $b6
    ld a, [hl-]                                   ; $4dcc: $3a
    adc h                                         ; $4dcd: $8c
    ld a, $3a                                     ; $4dce: $3e $3a
    res 4, a                                      ; $4dd0: $cb $a7
    or h                                          ; $4dd2: $b4
    ld e, a                                       ; $4dd3: $5f
    pop af                                        ; $4dd4: $f1
    rst $10                                       ; $4dd5: $d7
    dec c                                         ; $4dd6: $0d
    cp $a0                                        ; $4dd7: $fe $a0
    ld [hl], a                                    ; $4dd9: $77
    rlca                                          ; $4dda: $07
    ld e, b                                       ; $4ddb: $58
    jp nc, Jump_035_491c                          ; $4ddc: $d2 $1c $49

    xor d                                         ; $4ddf: $aa
    rst $28                                       ; $4de0: $ef
    inc hl                                        ; $4de1: $23
    ld d, h                                       ; $4de2: $54
    ld a, a                                       ; $4de3: $7f
    db $ec                                        ; $4de4: $ec
    jr nc, jr_035_4dac                            ; $4de5: $30 $c5

    ld e, a                                       ; $4de7: $5f
    adc a                                         ; $4de8: $8f
    add b                                         ; $4de9: $80
    ld l, d                                       ; $4dea: $6a
    ld l, a                                       ; $4deb: $6f
    add hl, de                                    ; $4dec: $19
    sbc l                                         ; $4ded: $9d
    ld a, c                                       ; $4dee: $79
    add hl, bc                                    ; $4def: $09
    ld c, d                                       ; $4df0: $4a
    ld [c], a                                     ; $4df1: $e2
    rst $08                                       ; $4df2: $cf
    db $db                                        ; $4df3: $db
    dec c                                         ; $4df4: $0d
    cp $a0                                        ; $4df5: $fe $a0
    add e                                         ; $4df7: $83
    sub [hl]                                      ; $4df8: $96
    cp e                                          ; $4df9: $bb
    ld d, a                                       ; $4dfa: $57
    dec de                                        ; $4dfb: $1b
    adc $55                                       ; $4dfc: $ce $55
    ld b, a                                       ; $4dfe: $47
    or l                                          ; $4dff: $b5
    ld h, e                                       ; $4e00: $63
    cp l                                          ; $4e01: $bd
    sbc l                                         ; $4e02: $9d
    add l                                         ; $4e03: $85
    ld a, [hl+]                                   ; $4e04: $2a
    cp $4a                                        ; $4e05: $fe $4a
    cpl                                           ; $4e07: $2f
    inc h                                         ; $4e08: $24
    xor e                                         ; $4e09: $ab
    cp e                                          ; $4e0a: $bb
    ld b, l                                       ; $4e0b: $45
    ld a, e                                       ; $4e0c: $7b
    db $d3                                        ; $4e0d: $d3
    ld [hl], $81                                  ; $4e0e: $36 $81
    cp a                                          ; $4e10: $bf
    sbc $2d                                       ; $4e11: $de $2d
    jp c, $b78d                                   ; $4e13: $da $8d $b7

    dec h                                         ; $4e16: $25
    ld c, b                                       ; $4e17: $48
    ld d, d                                       ; $4e18: $52
    dec e                                         ; $4e19: $1d
    db $fc                                        ; $4e1a: $fc
    ld [hl], l                                    ; $4e1b: $75
    ret nc                                        ; $4e1c: $d0

    ld [hl], d                                    ; $4e1d: $72
    ld [$bccf], a                                 ; $4e1e: $ea $cf $bc
    ld l, c                                       ; $4e21: $69
    ld c, $b3                                     ; $4e22: $0e $b3
    dec sp                                        ; $4e24: $3b
    or $5c                                        ; $4e25: $f6 $5c
    ld d, [hl]                                    ; $4e27: $56

jr_035_4e28:
    ld h, d                                       ; $4e28: $62
    or e                                          ; $4e29: $b3
    add $db                                       ; $4e2a: $c6 $db
    or d                                          ; $4e2c: $b2
    ld bc, $6ee0                                  ; $4e2d: $01 $e0 $6e
    ldh a, [rTAC]                                 ; $4e30: $f0 $07
    cp l                                          ; $4e32: $bd
    add a                                         ; $4e33: $87
    or l                                          ; $4e34: $b5
    and l                                         ; $4e35: $a5
    ld b, a                                       ; $4e36: $47
    ld b, b                                       ; $4e37: $40
    ret                                           ; $4e38: $c9


    ld c, d                                       ; $4e39: $4a
    ld c, b                                       ; $4e3a: $48
    db $fc                                        ; $4e3b: $fc
    sub $fd                                       ; $4e3c: $d6 $fd
    db $fc                                        ; $4e3e: $fc
    sub l                                         ; $4e3f: $95
    ld d, c                                       ; $4e40: $51
    add $10                                       ; $4e41: $c6 $10
    ld b, h                                       ; $4e43: $44
    xor h                                         ; $4e44: $ac
    cp [hl]                                       ; $4e45: $be
    inc h                                         ; $4e46: $24
    call Call_035_4901                            ; $4e47: $cd $01 $49
    cp a                                          ; $4e4a: $bf
    ld a, b                                       ; $4e4b: $78
    ld d, c                                       ; $4e4c: $51
    ld a, [bc]                                    ; $4e4d: $0a
    ld b, [hl]                                    ; $4e4e: $46
    xor b                                         ; $4e4f: $a8
    ld d, [hl]                                    ; $4e50: $56
    ld h, l                                       ; $4e51: $65
    adc l                                         ; $4e52: $8d
    ld l, b                                       ; $4e53: $68
    xor c                                         ; $4e54: $a9
    ld h, e                                       ; $4e55: $63
    cp l                                          ; $4e56: $bd
    sbc l                                         ; $4e57: $9d
    call $2c4f                                    ; $4e58: $cd $4f $2c
    dec h                                         ; $4e5b: $25
    db $e4                                        ; $4e5c: $e4
    ld h, a                                       ; $4e5d: $67
    sbc $34                                       ; $4e5e: $de $34
    rlca                                          ; $4e60: $07
    ld c, h                                       ; $4e61: $4c
    inc bc                                        ; $4e62: $03
    cp c                                          ; $4e63: $b9
    pop af                                        ; $4e64: $f1
    or [hl]                                       ; $4e65: $b6
    jp c, Jump_035_4747                           ; $4e66: $da $47 $47

    ld e, [hl]                                    ; $4e69: $5e
    xor e                                         ; $4e6a: $ab
    ld l, c                                       ; $4e6b: $69
    ldh a, [rTAC]                                 ; $4e6c: $f0 $07
    db $fd                                        ; $4e6e: $fd
    ld a, [bc]                                    ; $4e6f: $0a
    db $d3                                        ; $4e70: $d3
    adc $ee                                       ; $4e71: $ce $ee
    ret c                                         ; $4e73: $d8

    ld [hl], e                                    ; $4e74: $73
    rst $28                                       ; $4e75: $ef
    ld e, a                                       ; $4e76: $5f
    ret nz                                        ; $4e77: $c0

    rst $20                                       ; $4e78: $e7
    ld [$7d8f], a                                 ; $4e79: $ea $8f $7d
    rra                                           ; $4e7c: $1f
    ret nz                                        ; $4e7d: $c0

    dec a                                         ; $4e7e: $3d
    push de                                       ; $4e7f: $d5
    ld b, b                                       ; $4e80: $40
    add [hl]                                      ; $4e81: $86
    add [hl]                                      ; $4e82: $86
    ld h, h                                       ; $4e83: $64
    ld e, [hl]                                    ; $4e84: $5e
    ld a, l                                       ; $4e85: $7d
    rst $38                                       ; $4e86: $ff
    ret c                                         ; $4e87: $d8

    inc hl                                        ; $4e88: $23
    and b                                         ; $4e89: $a0
    and e                                         ; $4e8a: $a3
    cp a                                          ; $4e8b: $bf
    sub b                                         ; $4e8c: $90
    cp l                                          ; $4e8d: $bd
    dec h                                         ; $4e8e: $25
    xor e                                         ; $4e8f: $ab
    add d                                         ; $4e90: $82
    jp c, Jump_000_0734                           ; $4e91: $da $34 $07

    ld [hl], e                                    ; $4e94: $73
    dec hl                                        ; $4e95: $2b
    add sp, $11                                   ; $4e96: $e8 $11
    jp nc, Jump_000_1cd9                          ; $4e98: $d2 $d9 $1c

    ld a, [$e0dc]                                 ; $4e9b: $fa $dc $e0
    xor a                                         ; $4e9e: $af
    cpl                                           ; $4e9f: $2f
    ld de, $d5c0                                  ; $4ea0: $11 $c0 $d5
    ld hl, $87bd                                  ; $4ea3: $21 $bd $87
    call c, $f068                                 ; $4ea6: $dc $68 $f0
    rst $10                                       ; $4ea9: $d7
    call z, Call_035_6eb2                         ; $4eaa: $cc $b2 $6e
    and $77                                       ; $4ead: $e6 $77
    ld d, c                                       ; $4eaf: $51
    jp nz, $e69b                                  ; $4eb0: $c2 $9b $e6

    inc hl                                        ; $4eb3: $23
    inc e                                         ; $4eb4: $1c
    db $eb                                        ; $4eb5: $eb
    ld c, $7d                                     ; $4eb6: $0e $7d
    xor e                                         ; $4eb8: $ab
    ld [hl], $4b                                  ; $4eb9: $36 $4b
    ld [hl], e                                    ; $4ebb: $73
    ret                                           ; $4ebc: $c9


    rra                                           ; $4ebd: $1f
    and c                                         ; $4ebe: $a1
    ld e, d                                       ; $4ebf: $5a
    push de                                       ; $4ec0: $d5
    ld e, b                                       ; $4ec1: $58
    db $e4                                        ; $4ec2: $e4
    rst $28                                       ; $4ec3: $ef
    jp c, $011e                                   ; $4ec4: $da $1e $01

    dec e                                         ; $4ec7: $1d
    db $fd                                        ; $4ec8: $fd
    ld de, $552d                                  ; $4ec9: $11 $2d $55
    xor e                                         ; $4ecc: $ab
    bit 6, h                                      ; $4ecd: $cb $74
    db $10                                        ; $4ecf: $10
    xor $a0                                       ; $4ed0: $ee $a0
    dec b                                         ; $4ed2: $05
    dec d                                         ; $4ed3: $15
    ld a, a                                       ; $4ed4: $7f
    jr nc, jr_035_4f3a                            ; $4ed5: $30 $63

    ld c, $b3                                     ; $4ed7: $0e $b3
    dec sp                                        ; $4ed9: $3b
    or $dc                                        ; $4eda: $f6 $dc
    rst $08                                       ; $4edc: $cf
    ld e, d                                       ; $4edd: $5a
    xor d                                         ; $4ede: $aa
    ld d, l                                       ; $4edf: $55
    ld l, a                                       ; $4ee0: $6f
    ld h, e                                       ; $4ee1: $63
    rst $28                                       ; $4ee2: $ef
    add d                                         ; $4ee3: $82
    ld de, $921a                                  ; $4ee4: $11 $1a $92
    ld a, c                                       ; $4ee7: $79
    push af                                       ; $4ee8: $f5
    db $fd                                        ; $4ee9: $fd
    ld [$fe7e], a                                 ; $4eea: $ea $7e $fe
    ret nc                                        ; $4eed: $d0

    rst $08                                       ; $4eee: $cf
    sbc e                                         ; $4eef: $9b
    and $09                                       ; $4ef0: $e6 $09
    db $fc                                        ; $4ef2: $fc
    push af                                       ; $4ef3: $f5
    xor $18                                       ; $4ef4: $ee $18
    and a                                         ; $4ef6: $a7
    and a                                         ; $4ef7: $a7
    cp $ee                                        ; $4ef8: $fe $ee
    push bc                                       ; $4efa: $c5
    ld e, a                                       ; $4efb: $5f
    scf                                           ; $4efc: $37
    ld hl, sp-$7d                                 ; $4efd: $f8 $83
    ld e, $9f                                     ; $4eff: $1e $9f
    sbc [hl]                                      ; $4f01: $9e
    ld a, e                                       ; $4f02: $7b
    rrca                                          ; $4f03: $0f
    rst $30                                       ; $4f04: $f7
    ld hl, sp+$5b                                 ; $4f05: $f8 $5b
    rst $00                                       ; $4f07: $c7
    ld a, d                                       ; $4f08: $7a
    dec sp                                        ; $4f09: $3b
    ld a, [c]                                     ; $4f0a: $f2
    bit 4, c                                      ; $4f0b: $cb $61
    ld a, [$97b5]                                 ; $4f0d: $fa $b5 $97
    and b                                         ; $4f10: $a0
    and $b7                                       ; $4f11: $e6 $b7
    sbc $9d                                       ; $4f13: $de $9d
    or c                                          ; $4f15: $b1
    cp [hl]                                       ; $4f16: $be
    ld e, l                                       ; $4f17: $5d
    rst $00                                       ; $4f18: $c7
    ld bc, $0e69                                  ; $4f19: $01 $69 $0e
    ld [hl], e                                    ; $4f1c: $73
    cp h                                          ; $4f1d: $bc
    xor [hl]                                      ; $4f1e: $ae
    ld h, e                                       ; $4f1f: $63
    rst $08                                       ; $4f20: $cf
    push de                                       ; $4f21: $d5
    xor d                                         ; $4f22: $aa
    ld l, h                                       ; $4f23: $6c
    jr nz, jr_035_4f9a                            ; $4f24: $20 $74

    ret nc                                        ; $4f26: $d0

    ld b, d                                       ; $4f27: $42
    ld d, b                                       ; $4f28: $50
    push bc                                       ; $4f29: $c5
    rra                                           ; $4f2a: $1f
    sbc h                                         ; $4f2b: $9c
    bit 2, d                                      ; $4f2c: $cb $52
    rlca                                          ; $4f2e: $07
    db $db                                        ; $4f2f: $db
    inc hl                                        ; $4f30: $23
    and h                                         ; $4f31: $a4
    add e                                         ; $4f32: $83
    rst $10                                       ; $4f33: $d7
    pop de                                        ; $4f34: $d1
    reti                                          ; $4f35: $d9


    inc e                                         ; $4f36: $1c
    db $ec                                        ; $4f37: $ec
    sub b                                         ; $4f38: $90
    inc e                                         ; $4f39: $1c

jr_035_4f3a:
    adc h                                         ; $4f3a: $8c
    ld b, d                                       ; $4f3b: $42
    ld e, d                                       ; $4f3c: $5a
    ld c, l                                       ; $4f3d: $4d
    add e                                         ; $4f3e: $83
    cp a                                          ; $4f3f: $bf
    ld a, [hl]                                    ; $4f40: $7e
    ld d, $f9                                     ; $4f41: $16 $f9
    inc de                                        ; $4f43: $13
    push bc                                       ; $4f44: $c5
    or d                                          ; $4f45: $b2
    sbc $1e                                       ; $4f46: $de $1e
    inc h                                         ; $4f48: $24
    ld b, h                                       ; $4f49: $44
    ld [hl], b                                    ; $4f4a: $70
    sbc a                                         ; $4f4b: $9f
    add hl, hl                                    ; $4f4c: $29
    pop hl                                        ; $4f4d: $e1
    ld c, l                                       ; $4f4e: $4d
    ld [hl], e                                    ; $4f4f: $73
    add hl, bc                                    ; $4f50: $09
    db $fc                                        ; $4f51: $fc
    push af                                       ; $4f52: $f5
    ld a, l                                       ; $4f53: $7d
    ld a, [bc]                                    ; $4f54: $0a
    xor $11                                       ; $4f55: $ee $11
    db $fc                                        ; $4f57: $fc
    dec [hl]                                      ; $4f58: $35
    adc [hl]                                      ; $4f59: $8e
    jp $c1d2                                      ; $4f5a: $c3 $d2 $c1


    ld l, e                                       ; $4f5d: $6b
    dec sp                                        ; $4f5e: $3b
    dec bc                                        ; $4f5f: $0b
    dec h                                         ; $4f60: $25
    pop af                                        ; $4f61: $f1
    rst $20                                       ; $4f62: $e7
    dec l                                         ; $4f63: $2d
    ld h, c                                       ; $4f64: $61
    reti                                          ; $4f65: $d9


    inc [hl]                                      ; $4f66: $34
    rlca                                          ; $4f67: $07
    or e                                          ; $4f68: $b3
    dec sp                                        ; $4f69: $3b
    or $dc                                        ; $4f6a: $f6 $dc
    rst $08                                       ; $4f6c: $cf
    ld e, d                                       ; $4f6d: $5a
    ld a, [de]                                    ; $4f6e: $1a
    db $fc                                        ; $4f6f: $fc
    push af                                       ; $4f70: $f5
    ld [hl], $f6                                  ; $4f71: $36 $f6
    ld l, $b8                                     ; $4f73: $2e $b8
    ld b, a                                       ; $4f75: $47
    ld c, b                                       ; $4f76: $48
    inc sp                                        ; $4f77: $33
    dec b                                         ; $4f78: $05
    dec e                                         ; $4f79: $1d
    cp h                                          ; $4f7a: $bc
    inc b                                         ; $4f7b: $04
    pop bc                                        ; $4f7c: $c1
    sub h                                         ; $4f7d: $94
    ld a, d                                       ; $4f7e: $7a
    rst $08                                       ; $4f7f: $cf
    push de                                       ; $4f80: $d5
    rra                                           ; $4f81: $1f
    or c                                          ; $4f82: $b1
    add $86                                       ; $4f83: $c6 $86
    ld h, h                                       ; $4f85: $64
    ld e, [hl]                                    ; $4f86: $5e
    ld a, l                                       ; $4f87: $7d
    cp a                                          ; $4f88: $bf
    ld [$0ed8], a                                 ; $4f89: $ea $d8 $0e
    ld d, e                                       ; $4f8c: $53
    db $fc                                        ; $4f8d: $fc
    dec [hl]                                      ; $4f8e: $35
    dec bc                                        ; $4f8f: $0b
    ld d, $ce                                     ; $4f90: $16 $ce
    push de                                       ; $4f92: $d5
    rra                                           ; $4f93: $1f
    xor e                                         ; $4f94: $ab
    ld b, e                                       ; $4f95: $43
    ld a, d                                       ; $4f96: $7a
    ld [hl], a                                    ; $4f97: $77
    add b                                         ; $4f98: $80
    push hl                                       ; $4f99: $e5

jr_035_4f9a:
    sbc c                                         ; $4f9a: $99
    ld [de], a                                    ; $4f9b: $12
    sbc $de                                       ; $4f9c: $de $de
    add $de                                       ; $4f9e: $c6 $de
    dec b                                         ; $4fa0: $05
    and a                                         ; $4fa1: $a7
    add hl, sp                                    ; $4fa2: $39
    ld c, c                                       ; $4fa3: $49
    xor d                                         ; $4fa4: $aa
    ld l, h                                       ; $4fa5: $6c
    jr nz, @+$76                                  ; $4fa6: $20 $74

    ldh a, [$da]                                  ; $4fa8: $f0 $da
    ld a, [hl-]                                   ; $4faa: $3a
    sub $47                                       ; $4fab: $d6 $47
    ld h, a                                       ; $4fad: $67
    and c                                         ; $4fae: $a1
    adc d                                         ; $4faf: $8a
    cp a                                          ; $4fb0: $bf
    or d                                          ; $4fb1: $b2
    ld b, [hl]                                    ; $4fb2: $46
    inc hl                                        ; $4fb3: $23
    ld a, d                                       ; $4fb4: $7a
    ld h, a                                       ; $4fb5: $67
    db $ec                                        ; $4fb6: $ec
    jr nc, jr_035_4fc2                            ; $4fb7: $30 $09

    ld c, d                                       ; $4fb9: $4a
    rst $38                                       ; $4fba: $ff
    jp nz, $2690                                  ; $4fbb: $c2 $90 $26

    ldh a, [$d7]                                  ; $4fbe: $f0 $d7
    dec sp                                        ; $4fc0: $3b
    ld l, c                                       ; $4fc1: $69

jr_035_4fc2:
    sub c                                         ; $4fc2: $91

Jump_035_4fc3:
    ccf                                           ; $4fc3: $3f
    ldh a, [$b9]                                  ; $4fc4: $f0 $b9
    ld b, a                                       ; $4fc6: $47
    ldh a, [$d7]                                  ; $4fc7: $f0 $d7
    dec sp                                        ; $4fc9: $3b
    ld c, c                                       ; $4fca: $49
    or h                                          ; $4fcb: $b4
    ld a, e                                       ; $4fcc: $7b
    ld a, h                                       ; $4fcd: $7c
    jp c, Jump_035_7d53                           ; $4fce: $da $53 $7d

    db $fc                                        ; $4fd1: $fc
    push de                                       ; $4fd2: $d5
    dec e                                         ; $4fd3: $1d
    or h                                          ; $4fd4: $b4
    db $10                                        ; $4fd5: $10
    ld d, h                                       ; $4fd6: $54
    pop af                                        ; $4fd7: $f1
    rst $20                                       ; $4fd8: $e7
    dec e                                         ; $4fd9: $1d
    sub d                                         ; $4fda: $92
    inc bc                                        ; $4fdb: $03
    add hl, bc                                    ; $4fdc: $09
    db $fc                                        ; $4fdd: $fc
    push af                                       ; $4fde: $f5
    ld a, l                                       ; $4fdf: $7d
    sub $d5                                       ; $4fe0: $d6 $d5
    rra                                           ; $4fe2: $1f
    cp e                                          ; $4fe3: $bb
    rla                                           ; $4fe4: $17
    ld a, a                                       ; $4fe5: $7f
    db $dd                                        ; $4fe6: $dd
    ldh [rIF], a                                  ; $4fe7: $e0 $0f
    sbc d                                         ; $4fe9: $9a
    sbc c                                         ; $4fea: $99
    ld e, d                                       ; $4feb: $5a
    ld d, $d2                                     ; $4fec: $16 $d2
    inc e                                         ; $4fee: $1c
    inc hl                                        ; $4fef: $23
    dec e                                         ; $4ff0: $1d
    db $db                                        ; $4ff1: $db
    add hl, sp                                    ; $4ff2: $39
    or $66                                        ; $4ff3: $f6 $66
    jp c, $b1d1                                   ; $4ff5: $da $d1 $b1

    ld [$f6d7], sp                                ; $4ff8: $08 $d7 $f6
    cp $a5                                        ; $4ffb: $fe $a5
    adc [hl]                                      ; $4ffd: $8e
    dec a                                         ; $4ffe: $3d
    ld a, $ed                                     ; $4fff: $3e $ed
    ldh [$b5], a                                  ; $5001: $e0 $b5
    ld [hl], l                                    ; $5003: $75
    xor h                                         ; $5004: $ac
    adc a                                         ; $5005: $8f
    adc $42                                       ; $5006: $ce $42
    dec d                                         ; $5008: $15
    ld a, a                                       ; $5009: $7f
    ld h, l                                       ; $500a: $65
    adc l                                         ; $500b: $8d
    ld b, [hl]                                    ; $500c: $46
    db $f4                                        ; $500d: $f4
    and [hl]                                      ; $500e: $a6
    dec e                                         ; $500f: $1d
    ld l, $0d                                     ; $5010: $2e $0d
    add h                                         ; $5012: $84
    add $db                                       ; $5013: $c6 $db
    ld l, [hl]                                    ; $5015: $6e
    ld hl, sp-$08                                 ; $5016: $f8 $f8
    inc d                                         ; $5018: $14
    ld c, e                                       ; $5019: $4b
    cpl                                           ; $501a: $2f
    call z, $bf7c                                 ; $501b: $cc $7c $bf
    ld b, h                                       ; $501e: $44
    ld a, e                                       ; $501f: $7b
    db $d3                                        ; $5020: $d3
    inc e                                         ; $5021: $1c
    add hl, bc                                    ; $5022: $09
    db $fc                                        ; $5023: $fc
    push af                                       ; $5024: $f5
    ld a, l                                       ; $5025: $7d
    sub $fd                                       ; $5026: $d6 $fd
    inc l                                         ; $5028: $2c
    ld e, [hl]                                    ; $5029: $5e
    ld d, h                                       ; $502a: $54
    ld b, c                                       ; $502b: $41
    ld l, a                                       ; $502c: $6f
    adc [hl]                                      ; $502d: $8e
    ld [hl], l                                    ; $502e: $75
    add a                                         ; $502f: $87
    cp [hl]                                       ; $5030: $be
    ld d, l                                       ; $5031: $55
    sbc e                                         ; $5032: $9b
    ld [hl], l                                    ; $5033: $75
    ldh a, [$da]                                  ; $5034: $f0 $da
    adc $42                                       ; $5036: $ce $42
    ld c, c                                       ; $5038: $49
    db $fc                                        ; $5039: $fc
    ld a, c                                       ; $503a: $79
    db $d3                                        ; $503b: $d3
    inc e                                         ; $503c: $1c
    and e                                         ; $503d: $a3
    db $e4                                        ; $503e: $e4

jr_035_503f:
    ld [hl+], a                                   ; $503f: $22
    adc h                                         ; $5040: $8c
    ld a, b                                       ; $5041: $78
    ld c, c                                       ; $5042: $49
    rst $20                                       ; $5043: $e7
    ld d, h                                       ; $5044: $54
    ld hl, $4a62                                  ; $5045: $21 $62 $4a
    ld a, e                                       ; $5048: $7b
    daa                                           ; $5049: $27
    ld hl, $6b82                                  ; $504a: $21 $82 $6b
    ld c, h                                       ; $504d: $4c
    ld [hl], e                                    ; $504e: $73
    ld c, c                                       ; $504f: $49
    xor d                                         ; $5050: $aa
    ld l, d                                       ; $5051: $6a
    ld [hl], l                                    ; $5052: $75
    or l                                          ; $5053: $b5
    ld h, e                                       ; $5054: $63
    set 2, d                                      ; $5055: $cb $d2
    or c                                          ; $5057: $b1
    or l                                          ; $5058: $b5
    and l                                         ; $5059: $a5
    or e                                          ; $505a: $b3
    ld d, b                                       ; $505b: $50
    push bc                                       ; $505c: $c5
    ld e, a                                       ; $505d: $5f
    daa                                           ; $505e: $27
    xor $fb                                       ; $505f: $ee $fb
    xor d                                         ; $5061: $aa
    sbc a                                         ; $5062: $9f
    dec e                                         ; $5063: $1d
    sub d                                         ; $5064: $92
    inc bc                                        ; $5065: $03
    add hl, bc                                    ; $5066: $09
    db $fc                                        ; $5067: $fc
    push af                                       ; $5068: $f5
    ld a, l                                       ; $5069: $7d
    sub $bd                                       ; $506a: $d6 $bd
    add hl, sp                                    ; $506c: $39
    sub $5b                                       ; $506d: $d6 $5b
    sub [hl]                                      ; $506f: $96
    ld a, [hl]                                    ; $5070: $7e
    ld b, h                                       ; $5071: $44
    ld l, a                                       ; $5072: $6f
    sbc c                                         ; $5073: $99
    db $fc                                        ; $5074: $fc
    push bc                                       ; $5075: $c5
    ld [hl], c                                    ; $5076: $71
    ld e, b                                       ; $5077: $58
    jp nc, $231c                                  ; $5078: $d2 $1c $23

    rst $38                                       ; $507b: $ff
    or $f6                                        ; $507c: $f6 $f6
    ld [hl], a                                    ; $507e: $77
    ld a, e                                       ; $507f: $7b
    rst $38                                       ; $5080: $ff
    ret c                                         ; $5081: $d8

    call z, $b799                                 ; $5082: $cc $99 $b7
    or e                                          ; $5085: $b3
    ld d, b                                       ; $5086: $50
    ld [de], a                                    ; $5087: $12
    ld a, a                                       ; $5088: $7f
    xor $f1                                       ; $5089: $ee $f1
    ld sp, hl                                     ; $508b: $f9
    di                                            ; $508c: $f3
    adc $d8                                       ; $508d: $ce $d8
    and h                                         ; $508f: $a4
    adc a                                         ; $5090: $8f
    dec c                                         ; $5091: $0d
    add h                                         ; $5092: $84
    sbc [hl]                                      ; $5093: $9e
    ld a, [$0b1b]                                 ; $5094: $fa $1b $0b
    ld d, $23                                     ; $5097: $16 $23
    cp $85                                        ; $5099: $fe $85
    inc [hl]                                      ; $509b: $34
    rlca                                          ; $509c: $07
    call z, Call_035_6bf0                         ; $509d: $cc $f0 $6b
    ld l, h                                       ; $50a0: $6c
    or l                                          ; $50a1: $b5
    and l                                         ; $50a2: $a5
    jp $a582                                      ; $50a3: $c3 $82 $a5


    ld [hl], c                                    ; $50a6: $71
    pop bc                                        ; $50a7: $c1
    di                                            ; $50a8: $f3
    xor l                                         ; $50a9: $ad
    ei                                            ; $50aa: $fb
    ld sp, hl                                     ; $50ab: $f9
    ld c, e                                       ; $50ac: $4b
    sbc e                                         ; $50ad: $9b
    db $f4                                        ; $50ae: $f4
    sbc e                                         ; $50af: $9b
    dec b                                         ; $50b0: $05
    dec bc                                        ; $50b1: $0b
    dec [hl]                                      ; $50b2: $35
    halt                                          ; $50b3: $76
    jr jr_035_503f                                ; $50b4: $18 $89

    ccf                                           ; $50b6: $3f
    ld c, e                                       ; $50b7: $4b
    ret                                           ; $50b8: $c9


    xor d                                         ; $50b9: $aa
    and a                                         ; $50ba: $a7
    ld e, d                                       ; $50bb: $5a
    ei                                            ; $50bc: $fb
    add sp, -$24                                  ; $50bd: $e8 $dc
    rst $08                                       ; $50bf: $cf
    rst $00                                       ; $50c0: $c7
    ld c, a                                       ; $50c1: $4f
    ld [hl], e                                    ; $50c2: $73
    ld c, c                                       ; $50c3: $49
    xor d                                         ; $50c4: $aa
    or a                                          ; $50c5: $b7
    or c                                          ; $50c6: $b1
    ld [hl], a                                    ; $50c7: $77
    pop bc                                        ; $50c8: $c1
    ld [$2b25], sp                                ; $50c9: $08 $25 $2b
    jp hl                                         ; $50cc: $e9


    ld c, c                                       ; $50cd: $49
    xor h                                         ; $50ce: $ac
    jp c, $c7ac                                   ; $50cf: $da $ac $c7

    and a                                         ; $50d2: $a7
    dec e                                         ; $50d3: $1d
    or h                                          ; $50d4: $b4
    and b                                         ; $50d5: $a0
    ld [c], a                                     ; $50d6: $e2
    rst $08                                       ; $50d7: $cf
    ld a, e                                       ; $50d8: $7b
    xor [hl]                                      ; $50d9: $ae
    ld c, $fe                                     ; $50da: $0e $fe
    adc d                                         ; $50dc: $8a
    and [hl]                                      ; $50dd: $a6
    inc l                                         ; $50de: $2c
    ld b, d                                       ; $50df: $42
    ret                                           ; $50e0: $c9


    xor d                                         ; $50e1: $aa
    xor h                                         ; $50e2: $ac
    pop de                                        ; $50e3: $d1
    ld bc, $7991                                  ; $50e4: $01 $91 $79
    db $d3                                        ; $50e7: $d3
    inc e                                         ; $50e8: $1c
    di                                            ; $50e9: $f3
    add [hl]                                      ; $50ea: $86
    add hl, hl                                    ; $50eb: $29
    ld [hl], l                                    ; $50ec: $75
    ldh a, [rTAC]                                 ; $50ed: $f0 $07
    call $a0fc                                    ; $50ef: $cd $fc $a0
    sub [hl]                                      ; $50f2: $96
    ld c, $5e                                     ; $50f3: $0e $5e
    ld e, e                                       ; $50f5: $5b
    inc [hl]                                      ; $50f6: $34
    ld h, l                                       ; $50f7: $65
    dec l                                         ; $50f8: $2d
    cp l                                          ; $50f9: $bd
    dec sp                                        ; $50fa: $3b
    dec sp                                        ; $50fb: $3b
    rst $30                                       ; $50fc: $f7
    xor $dd                                       ; $50fd: $ee $dd
    ld l, d                                       ; $50ff: $6a
    push de                                       ; $5100: $d5
    ld a, b                                       ; $5101: $78
    ld e, e                                       ; $5102: $5b
    rst $00                                       ; $5103: $c7
    ld [de], a                                    ; $5104: $12
    sbc a                                         ; $5105: $9f
    cp a                                          ; $5106: $bf
    ld b, [hl]                                    ; $5107: $46
    or [hl]                                       ; $5108: $b6
    sub a                                         ; $5109: $97
    add h                                         ; $510a: $84
    dec b                                         ; $510b: $05
    ld hl, $01cd                                  ; $510c: $21 $cd $01
    inc hl                                        ; $510f: $23
    dec e                                         ; $5110: $1d
    db $eb                                        ; $5111: $eb
    ld c, $a7                                     ; $5112: $0e $a7
    ld h, b                                       ; $5114: $60
    reti                                          ; $5115: $d9


    cp [hl]                                       ; $5116: $be
    rst $08                                       ; $5117: $cf
    ld a, d                                       ; $5118: $7a
    ld a, e                                       ; $5119: $7b
    add h                                         ; $511a: $84
    ld [hl], h                                    ; $511b: $74
    ret nc                                        ; $511c: $d0

    jp nz, $e05e                                  ; $511d: $c2 $5e $e0

    dec l                                         ; $5120: $2d
    ld e, c                                       ; $5121: $59
    sub l                                         ; $5122: $95
    and b                                         ; $5123: $a0
    adc d                                         ; $5124: $8a
    ccf                                           ; $5125: $3f
    rst $28                                       ; $5126: $ef
    cp c                                          ; $5127: $b9
    jp c, Jump_000_3ef8                           ; $5128: $da $f8 $3e

    ld h, l                                       ; $512b: $65
    ei                                            ; $512c: $fb
    ld a, $eb                                     ; $512d: $3e $eb
    ld b, $7f                                     ; $512f: $06 $7f
    cp l                                          ; $5131: $bd
    add a                                         ; $5132: $87
    call c, $f068                                 ; $5133: $dc $68 $f0
    rst $10                                       ; $5136: $d7
    sbc e                                         ; $5137: $9b
    ld h, e                                       ; $5138: $63
    db $dd                                        ; $5139: $dd
    and c                                         ; $513a: $a1
    ld l, a                                       ; $513b: $6f
    push de                                       ; $513c: $d5
    ld h, [hl]                                    ; $513d: $66
    ld l, c                                       ; $513e: $69
    ld c, $b3                                     ; $513f: $0e $b3
    dec sp                                        ; $5141: $3b
    or $dc                                        ; $5142: $f6 $dc
    rst $08                                       ; $5144: $cf
    ld e, d                                       ; $5145: $5a
    ld a, [de]                                    ; $5146: $1a
    db $fc                                        ; $5147: $fc
    push af                                       ; $5148: $f5
    ld c, [hl]                                    ; $5149: $4e
    ld b, d                                       ; $514a: $42
    inc b                                         ; $514b: $04
    scf                                           ; $514c: $37
    or e                                          ; $514d: $b3
    xor h                                         ; $514e: $ac
    rst $08                                       ; $514f: $cf
    cp l                                          ; $5150: $bd
    add a                                         ; $5151: $87

Jump_035_5152:
    ld a, e                                       ; $5152: $7b
    db $fc                                        ; $5153: $fc
    db $ed                                        ; $5154: $ed
    xor c                                         ; $5155: $a9
    ld a, $fe                                     ; $5156: $3e $fe
    ld l, d                                       ; $5158: $6a
    rra                                           ; $5159: $1f
    ld [hl], l                                    ; $515a: $75
    xor h                                         ; $515b: $ac
    or a                                          ; $515c: $b7
    or e                                          ; $515d: $b3
    ld d, b                                       ; $515e: $50
    push bc                                       ; $515f: $c5
    ld e, a                                       ; $5160: $5f
    cp a                                          ; $5161: $bf
    ld [hl+], a                                   ; $5162: $22
    inc l                                         ; $5163: $2c
    call nc, $a419                                ; $5164: $d4 $19 $a4

Jump_035_5167:
    ld c, l                                       ; $5167: $4d
    ld a, [$7bd8]                                 ; $5168: $fa $d8 $7b
    and d                                         ; $516b: $a2
    cp b                                          ; $516c: $b8
    ld a, [$afe2]                                 ; $516d: $fa $e2 $af
    ld [hl], b                                    ; $5170: $70
    pop bc                                        ; $5171: $c1
    and a                                         ; $5172: $a7
    push hl                                       ; $5173: $e5
    rst $10                                       ; $5174: $d7
    ld b, l                                       ; $5175: $45
    add a                                         ; $5176: $87
    db $e4                                        ; $5177: $e4
    or e                                          ; $5178: $b3
    ret z                                         ; $5179: $c8

    rst $08                                       ; $517a: $cf
    xor d                                         ; $517b: $aa

jr_035_517c:
    cpl                                           ; $517c: $2f
    cp $7a                                        ; $517d: $fe $7a
    ld a, h                                       ; $517f: $7c
    jp c, $5f91                                   ; $5180: $da $91 $5f

    rst $38                                       ; $5183: $ff
    and e                                         ; $5184: $a3
    and e                                         ; $5185: $a3
    ld h, d                                       ; $5186: $62
    cp c                                          ; $5187: $b9
    dec de                                        ; $5188: $1b
    ld e, e                                       ; $5189: $5b
    ld l, l                                       ; $518a: $6d
    jp hl                                         ; $518b: $e9


    or b                                          ; $518c: $b0
    ld h, b                                       ; $518d: $60
    ld l, c                                       ; $518e: $69
    ld e, h                                       ; $518f: $5c
    ldh a, [$7c]                                  ; $5190: $f0 $7c
    ld c, e                                       ; $5192: $4b
    rrc h                                         ; $5193: $cb $0c
    rst $30                                       ; $5195: $f7
    or $77                                        ; $5196: $f6 $77
    xor e                                         ; $5198: $ab
    ld b, e                                       ; $5199: $43
    ld a, [hl-]                                   ; $519a: $3a
    jr @-$58                                      ; $519b: $18 $a6

    call nc, $1fc1                                ; $519d: $d4 $c1 $1f
    call nc, $deb1                                ; $51a0: $d4 $b1 $de
    adc $1d                                       ; $51a3: $ce $1d
    inc bc                                        ; $51a5: $03
    inc bc                                        ; $51a6: $03
    call Call_035_7acc                            ; $51a7: $cd $cc $7a
    db $d3                                        ; $51aa: $d3
    inc e                                         ; $51ab: $1c
    inc hl                                        ; $51ac: $23
    dec e                                         ; $51ad: $1d
    db $eb                                        ; $51ae: $eb
    ld c, $a7                                     ; $51af: $0e $a7
    ld h, b                                       ; $51b1: $60
    reti                                          ; $51b2: $d9


    cp [hl]                                       ; $51b3: $be
    rst $08                                       ; $51b4: $cf
    ld a, d                                       ; $51b5: $7a
    dec de                                        ; $51b6: $1b
    rst $00                                       ; $51b7: $c7
    ld h, c                                       ; $51b8: $61
    ld l, c                                       ; $51b9: $69
    ld h, [hl]                                    ; $51ba: $66
    db $fc                                        ; $51bb: $fc
    add hl, de                                    ; $51bc: $19
    sbc h                                         ; $51bd: $9c
    dec de                                        ; $51be: $1b
    db $fc                                        ; $51bf: $fc
    dec d                                         ; $51c0: $15
    dec e                                         ; $51c1: $1d
    ld [hl], l                                    ; $51c2: $75
    ld l, h                                       ; $51c3: $6c
    rst $28                                       ; $51c4: $ef
    rst $38                                       ; $51c5: $ff

Jump_035_51c6:
    adc c                                         ; $51c6: $89
    and l                                         ; $51c7: $a5
    or e                                          ; $51c8: $b3
    ld d, b                                       ; $51c9: $50
    push bc                                       ; $51ca: $c5
    ld e, a                                       ; $51cb: $5f
    ld e, d                                       ; $51cc: $5a
    ld h, [hl]                                    ; $51cd: $66
    cp b                                          ; $51ce: $b8
    jr jr_035_517c                                ; $51cf: $18 $ab

    ld a, e                                       ; $51d1: $7b

Jump_035_51d2:
    inc b                                         ; $51d2: $04
    ld a, a                                       ; $51d3: $7f
    and l                                         ; $51d4: $a5
    rla                                           ; $51d5: $17
    ld h, [hl]                                    ; $51d6: $66
    cp [hl]                                       ; $51d7: $be
    ld e, a                                       ; $51d8: $5f
    and d                                         ; $51d9: $a2
    cp l                                          ; $51da: $bd

Jump_035_51db:
    rst $20                                       ; $51db: $e7
    add $6a                                       ; $51dc: $c6 $6a
    rra                                           ; $51de: $1f
    push bc                                       ; $51df: $c5
    ld [hl], b                                    ; $51e0: $70
    adc a                                         ; $51e1: $8f
    ldh [$af], a                                  ; $51e2: $e0 $af
    ei                                            ; $51e4: $fb
    ld sp, hl                                     ; $51e5: $f9
    db $eb                                        ; $51e6: $eb
    dec bc                                        ; $51e7: $0b
    ld c, e                                       ; $51e8: $4b
    inc sp                                        ; $51e9: $33
    inc hl                                        ; $51ea: $23
    ld a, a                                       ; $51eb: $7f
    pop bc                                        ; $51ec: $c1
    ld l, a                                       ; $51ed: $6f
    ret nc                                        ; $51ee: $d0

    rst $30                                       ; $51ef: $f7
    ld e, c                                       ; $51f0: $59
    ld l, a                                       ; $51f1: $6f
    sbc d                                         ; $51f2: $9a
    inc bc                                        ; $51f3: $03
    or e                                          ; $51f4: $b3
    dec sp                                        ; $51f5: $3b
    or $dc                                        ; $51f6: $f6 $dc
    ldh [$af], a                                  ; $51f8: $e0 $af
    ld l, h                                       ; $51fa: $6c
    ld l, h                                       ; $51fb: $6c
    cp a                                          ; $51fc: $bf
    ld [c], a                                     ; $51fd: $e2
    xor a                                         ; $51fe: $af
    adc [hl]                                      ; $51ff: $8e
    db $ed                                        ; $5200: $ed
    ld [hl], b                                    ; $5201: $70
    ld b, c                                       ; $5202: $41
    cp b                                          ; $5203: $b8
    pop de                                        ; $5204: $d1
    ld b, h                                       ; $5205: $44
    ld b, h                                       ; $5206: $44
    ld l, d                                       ; $5207: $6a
    ld c, c                                       ; $5208: $49
    ld [hl], e                                    ; $5209: $73
    ld c, c                                       ; $520a: $49
    xor d                                         ; $520b: $aa
    add a                                         ; $520c: $87
    ld b, d                                       ; $520d: $42
    add h                                         ; $520e: $84
    ld [$afe0], a                                 ; $520f: $ea $e0 $af
    rst $30                                       ; $5212: $f7
    db $eb                                        ; $5213: $eb
    pop de                                        ; $5214: $d1
    ld a, [hl-]                                   ; $5215: $3a
    ld [hl], $f3                                  ; $5216: $36 $f3
    di                                            ; $5218: $f3
    ld [$011e], a                                 ; $5219: $ea $1e $01
    push de                                       ; $521c: $d5
    sub [hl]                                      ; $521d: $96
    ld [hl-], a                                   ; $521e: $32
    ccf                                           ; $521f: $3f
    ld a, a                                       ; $5220: $7f
    ld l, $6b                                     ; $5221: $2e $6b
    db $e4                                        ; $5223: $e4
    cpl                                           ; $5224: $2f
    sub c                                         ; $5225: $91
    add b                                         ; $5226: $80
    ret z                                         ; $5227: $c8

    cp h                                          ; $5228: $bc
    rst $20                                       ; $5229: $e7
    xor d                                         ; $522a: $aa
    and e                                         ; $522b: $a3
    ld h, h                                       ; $522c: $64
    ld d, l                                       ; $522d: $55
    dec bc                                        ; $522e: $0b
    pop af                                        ; $522f: $f1
    sbc a                                         ; $5230: $9f
    ld a, b                                       ; $5231: $78
    rst $08                                       ; $5232: $cf
    cp l                                          ; $5233: $bd
    add a                                         ; $5234: $87
    ld a, e                                       ; $5235: $7b
    db $fc                                        ; $5236: $fc
    xor l                                         ; $5237: $ad
    ld h, e                                       ; $5238: $63
    cp l                                          ; $5239: $bd
    sbc l                                         ; $523a: $9d
    add l                                         ; $523b: $85
    ld a, [hl+]                                   ; $523c: $2a
    cp $fa                                        ; $523d: $fe $fa
    dec d                                         ; $523f: $15
    add d                                         ; $5240: $82
    jr c, jr_035_529b                             ; $5241: $38 $58

    ld c, b                                       ; $5243: $48
    ld [hl], e                                    ; $5244: $73
    ld [hl], e                                    ; $5245: $73
    dec hl                                        ; $5246: $2b
    add sp, $11                                   ; $5247: $e8 $11
    ld d, d                                       ; $5249: $52
    ld [$e7d0], a                                 ; $524a: $ea $d0 $e7
    ld a, [hl]                                    ; $524d: $7e
    sub $d2                                       ; $524e: $d6 $d2
    ld a, e                                       ; $5250: $7b
    ld c, b                                       ; $5251: $48
    rst $18                                       ; $5252: $df
    ld h, a                                       ; $5253: $67
    cp l                                          ; $5254: $bd
    push de                                       ; $5255: $d5
    ld h, c                                       ; $5256: $61
    inc [hl]                                      ; $5257: $34
    halt                                          ; $5258: $76
    xor $e7                                       ; $5259: $ee $e7
    db $e3                                        ; $525b: $e3
    ld [hl], a                                    ; $525c: $77
    cpl                                           ; $525d: $2f
    cp $ba                                        ; $525e: $fe $ba
    pop bc                                        ; $5260: $c1
    rra                                           ; $5261: $1f
    ld d, h                                       ; $5262: $54
    dec hl                                        ; $5263: $2b
    pop hl                                        ; $5264: $e1
    cpl                                           ; $5265: $2f
    di                                            ; $5266: $f3
    ld e, [hl]                                    ; $5267: $5e
    rst $00                                       ; $5268: $c7
    pop hl                                        ; $5269: $e1
    ld c, l                                       ; $526a: $4d
    ld [hl], e                                    ; $526b: $73
    and e                                         ; $526c: $a3
    ccf                                           ; $526d: $3f
    or $7d                                        ; $526e: $f6 $7d
    add h                                         ; $5270: $84
    ld l, d                                       ; $5271: $6a
    ld d, l                                       ; $5272: $55
    db $ed                                        ; $5273: $ed
    db $dd                                        ; $5274: $dd
    ld [$ee7f], a                                 ; $5275: $ea $7f $ee
    db $ec                                        ; $5278: $ec
    ld e, $0c                                     ; $5279: $1e $0c
    ld c, d                                       ; $527b: $4a
    dec a                                         ; $527c: $3d
    ld h, e                                       ; $527d: $63
    ld c, $c3                                     ; $527e: $0e $c3
    ld h, e                                       ; $5280: $63
    dec sp                                        ; $5281: $3b
    ld e, h                                       ; $5282: $5c
    ld h, d                                       ; $5283: $62
    rst $10                                       ; $5284: $d7
    ld [hl], d                                    ; $5285: $72
    inc b                                         ; $5286: $04

jr_035_5287:
    ld a, a                                       ; $5287: $7f
    rst $20                                       ; $5288: $e7
    cp [hl]                                       ; $5289: $be
    rrca                                          ; $528a: $0f

Call_035_528b:
    dec a                                         ; $528b: $3d
    inc e                                         ; $528c: $1c
    db $eb                                        ; $528d: $eb
    adc $71                                       ; $528e: $ce $71
    db $fc                                        ; $5290: $fc
    ld e, $21                                     ; $5291: $1e $21
    call $fc8c                                    ; $5293: $cd $8c $fc
    dec b                                         ; $5296: $05
    cp a                                          ; $5297: $bf
    ld b, c                                       ; $5298: $41
    ld e, d                                       ; $5299: $5a
    ld h, [hl]                                    ; $529a: $66

jr_035_529b:
    cp b                                          ; $529b: $b8
    ld [hl], a                                    ; $529c: $77
    rst $00                                       ; $529d: $c7
    jr c, jr_035_5287                             ; $529e: $38 $e7

    ld [$d88f], a                                 ; $52a0: $ea $8f $d8
    ldh [$af], a                                  ; $52a3: $e0 $af
    ld [$ab89], sp                                ; $52a5: $08 $89 $ab
    inc hl                                        ; $52a8: $23
    db $eb                                        ; $52a9: $eb
    and a                                         ; $52aa: $a7
    call nc, Call_035_41d8                        ; $52ab: $d4 $d8 $41
    ld c, e                                       ; $52ae: $4b
    ld h, [hl]                                    ; $52af: $66
    ld b, h                                       ; $52b0: $44
    and a                                         ; $52b1: $a7
    add hl, sp                                    ; $52b2: $39
    or e                                          ; $52b3: $b3
    ld e, d                                       ; $52b4: $5a
    ld e, e                                       ; $52b5: $5b
    adc d                                         ; $52b6: $8a
    ld h, b                                       ; $52b7: $60

jr_035_52b8:
    ld c, d                                       ; $52b8: $4a
    and c                                         ; $52b9: $a1
    jr jr_035_52b8                                ; $52ba: $18 $fc

    sub l                                         ; $52bc: $95
    ld [hl], l                                    ; $52bd: $75
    inc d                                         ; $52be: $14
    dec e                                         ; $52bf: $1d
    db $eb                                        ; $52c0: $eb
    and e                                         ; $52c1: $a3
    jp $de8c                                      ; $52c2: $c3 $8c $de


    ld a, [hl]                                    ; $52c5: $7e
    ld b, l                                       ; $52c6: $45
    inc c                                         ; $52c7: $0c
    ret                                           ; $52c8: $c9


    ld bc, $104c                                  ; $52c9: $01 $4c $10
    di                                            ; $52cc: $f3
    dec de                                        ; $52cd: $1b
    ld d, h                                       ; $52ce: $54
    add a                                         ; $52cf: $87
    dec hl                                        ; $52d0: $2b
    and $0f                                       ; $52d1: $e6 $0f
    call c, $bfe4                                 ; $52d3: $dc $e4 $bf
    cp d                                          ; $52d6: $ba
    inc h                                         ; $52d7: $24
    sub $52                                       ; $52d8: $d6 $52
    dec hl                                        ; $52da: $2b
    pop af                                        ; $52db: $f1
    halt                                          ; $52dc: $76
    sbc b                                         ; $52dd: $98
    pop de                                        ; $52de: $d1
    db $db                                        ; $52df: $db
    xor a                                         ; $52e0: $af
    or b                                          ; $52e1: $b0
    ld l, d                                       ; $52e2: $6a
    ld [hl], l                                    ; $52e3: $75
    pop af                                        ; $52e4: $f1
    ld h, a                                       ; $52e5: $67
    ret nc                                        ; $52e6: $d0

    pop af                                        ; $52e7: $f1
    sub e                                         ; $52e8: $93
    cpl                                           ; $52e9: $2f
    cp $86                                        ; $52ea: $fe $86
    adc h                                         ; $52ec: $8c
    sbc a                                         ; $52ed: $9f
    inc bc                                        ; $52ee: $03
    ret                                           ; $52ef: $c9


    rla                                           ; $52f0: $17
    ld a, a                                       ; $52f1: $7f
    ld b, e                                       ; $52f2: $43
    ld [hl], d                                    ; $52f3: $72
    ret                                           ; $52f4: $c9


    rla                                           ; $52f5: $17
    ld a, a                                       ; $52f6: $7f
    ld b, e                                       ; $52f7: $43
    ld [hl], d                                    ; $52f8: $72
    ret                                           ; $52f9: $c9


    rla                                           ; $52fa: $17
    ld a, a                                       ; $52fb: $7f
    ld b, e                                       ; $52fc: $43
    ld [hl], d                                    ; $52fd: $72
    inc hl                                        ; $52fe: $23
    xor [hl]                                      ; $52ff: $ae
    db $e3                                        ; $5300: $e3
    jr z, jr_035_535c                             ; $5301: $28 $59

    add hl, bc                                    ; $5303: $09
    adc c                                         ; $5304: $89
    rst $18                                       ; $5305: $df
    adc $9d                                       ; $5306: $ce $9d
    ld d, l                                       ; $5308: $55
    ld l, l                                       ; $5309: $6d
    and $21                                       ; $530a: $e6 $21
    add hl, sp                                    ; $530c: $39
    ld c, h                                       ; $530d: $4c
    jr @-$03                                      ; $530e: $18 $fb

    ld l, l                                       ; $5310: $6d
    db $d3                                        ; $5311: $d3
    inc [hl]                                      ; $5312: $34
    ld c, l                                       ; $5313: $4d
    db $d3                                        ; $5314: $d3
    inc e                                         ; $5315: $1c
    call z, $83f0                                 ; $5316: $cc $f0 $83
    xor $e7                                       ; $5319: $ee $e7
    xor a                                         ; $531b: $af
    adc [hl]                                      ; $531c: $8e
    push af                                       ; $531d: $f5
    pop de                                        ; $531e: $d1
    call z, Call_035_5cac                         ; $531f: $cc $ac $5c
    db $fc                                        ; $5322: $fc
    ld a, c                                       ; $5323: $79
    cp l                                          ; $5324: $bd
    ld c, l                                       ; $5325: $4d
    cp $ab                                        ; $5326: $fe $ab
    inc sp                                        ; $5328: $33
    ld d, e                                       ; $5329: $53
    rst $28                                       ; $532a: $ef
    xor l                                         ; $532b: $ad
    ld e, a                                       ; $532c: $5f
    ld h, c                                       ; $532d: $61
    jp c, $8e11                                   ; $532e: $da $11 $8e

    or l                                          ; $5331: $b5
    ld [hl], h                                    ; $5332: $74
    ldh a, [$da]                                  ; $5333: $f0 $da
    ld e, d                                       ; $5335: $5a
    pop af                                        ; $5336: $f1
    ld d, a                                       ; $5337: $57
    ld hl, $813d                                  ; $5338: $21 $3d $81
    ld h, d                                       ; $533b: $62
    ldh a, [rPCM34]                               ; $533c: $f0 $77
    xor $3d                                       ; $533e: $ee $3d
    pop af                                        ; $5340: $f1
    adc c                                         ; $5341: $89
    ld d, a                                       ; $5342: $57
    scf                                           ; $5343: $37
    ld hl, sp-$55                                 ; $5344: $f8 $ab
    ld c, $a3                                     ; $5346: $0e $a3
    or a                                          ; $5348: $b7
    or e                                          ; $5349: $b3
    xor d                                         ; $534a: $aa
    call $8dbc                                    ; $534b: $cd $bc $8d
    xor l                                         ; $534e: $ad
    or $76                                        ; $534f: $f6 $76
    add h                                         ; $5351: $84
    db $fc                                        ; $5352: $fc
    cp l                                          ; $5353: $bd
    ld a, c                                       ; $5354: $79
    rst $18                                       ; $5355: $df
    ld d, a                                       ; $5356: $57
    ld c, b                                       ; $5357: $48
    ld d, b                                       ; $5358: $50
    ld d, d                                       ; $5359: $52
    ld h, [hl]                                    ; $535a: $66
    ld e, d                                       ; $535b: $5a

jr_035_535c:
    ld d, [hl]                                    ; $535c: $56
    ld h, d                                       ; $535d: $62
    inc sp                                        ; $535e: $33
    and a                                         ; $535f: $a7
    add hl, sp                                    ; $5360: $39
    ret                                           ; $5361: $c9


    rst $38                                       ; $5362: $ff
    db $fd                                        ; $5363: $fd
    rst $30                                       ; $5364: $f7
    add a                                         ; $5365: $87
    inc [hl]                                      ; $5366: $34
    pop hl                                        ; $5367: $e1
    ld c, c                                       ; $5368: $49
    ld e, a                                       ; $5369: $5f
    ld [hl+], a                                   ; $536a: $22
    add b                                         ; $536b: $80
    and c                                         ; $536c: $a1
    rst $00                                       ; $536d: $c7
    and a                                         ; $536e: $a7
    push de                                       ; $536f: $d5
    rra                                           ; $5370: $1f
    bit 5, b                                      ; $5371: $cb $68
    inc c                                         ; $5373: $0c
    cp $a0                                        ; $5374: $fe $a0
    add e                                         ; $5376: $83
    rst $10                                       ; $5377: $d7
    ld d, [hl]                                    ; $5378: $56
    add a                                         ; $5379: $87
    pop de                                        ; $537a: $d1
    ld b, a                                       ; $537b: $47
    rst $20                                       ; $537c: $e7
    ld a, [bc]                                    ; $537d: $0a
    and e                                         ; $537e: $a3
    rla                                           ; $537f: $17
    db $e4                                        ; $5380: $e4
    rra                                           ; $5381: $1f
    inc bc                                        ; $5382: $03
    and [hl]                                      ; $5383: $a6
    ld b, l                                       ; $5384: $45
    ccf                                           ; $5385: $3f
    ld l, a                                       ; $5386: $6f
    pop af                                        ; $5387: $f1
    and d                                         ; $5388: $a2
    call nc, $243b                                ; $5389: $d4 $3b $24
    rlca                                          ; $538c: $07
    ret                                           ; $538d: $c9


    sbc a                                         ; $538e: $9f
    ld b, d                                       ; $538f: $42
    or l                                          ; $5390: $b5
    or a                                          ; $5391: $b7
    inc hl                                        ; $5392: $23
    push de                                       ; $5393: $d5
    ld [$4773], a                                 ; $5394: $ea $73 $47
    ld a, [hl]                                    ; $5397: $7e
    ld c, d                                       ; $5398: $4a
    ld e, h                                       ; $5399: $5c
    ld h, e                                       ; $539a: $63
    add [hl]                                      ; $539b: $86
    db $e4                                        ; $539c: $e4
    and e                                         ; $539d: $a3
    ccf                                           ; $539e: $3f
    ld [hl], $10                                  ; $539f: $36 $10
    xor d                                         ; $53a1: $aa
    cp l                                          ; $53a2: $bd
    ld e, e                                       ; $53a3: $5b
    db $fd                                        ; $53a4: $fd
    ld [hl], c                                    ; $53a5: $71
    add $1c                                       ; $53a6: $c6 $1c
    ld c, c                                       ; $53a8: $49
    rra                                           ; $53a9: $1f
    dec de                                        ; $53aa: $1b
    ld [$1fd5], sp                                ; $53ab: $08 $d5 $1f
    set 2, d                                      ; $53ae: $cb $d2
    or c                                          ; $53b0: $b1
    or l                                          ; $53b1: $b5
    sbc e                                         ; $53b2: $9b
    inc d                                         ; $53b3: $14
    sbc e                                         ; $53b4: $9b
    sbc l                                         ; $53b5: $9d
    xor e                                         ; $53b6: $ab
    ccf                                           ; $53b7: $3f
    halt                                          ; $53b8: $76
    or [hl]                                       ; $53b9: $b6
    ld l, e                                       ; $53ba: $6b
    inc sp                                        ; $53bb: $33
    or $02                                        ; $53bc: $f6 $02
    cp b                                          ; $53be: $b8
    adc [hl]                                      ; $53bf: $8e
    ld c, $5e                                     ; $53c0: $0e $5e
    ld e, e                                       ; $53c2: $5b
    ld [hl], h                                    ; $53c3: $74
    xor h                                         ; $53c4: $ac
    and l                                         ; $53c5: $a5
    ld [hl], e                                    ; $53c6: $73
    inc e                                         ; $53c7: $1c
    cp a                                          ; $53c8: $bf
    xor h                                         ; $53c9: $ac
    ld l, a                                       ; $53ca: $6f
    rst $10                                       ; $53cb: $d7
    ld [hl], c                                    ; $53cc: $71
    ld a, b                                       ; $53cd: $78
    ei                                            ; $53ce: $fb
    ld a, $a4                                     ; $53cf: $3e $a4
    add hl, sp                                    ; $53d1: $39

Jump_035_53d2:
    ld c, c                                       ; $53d2: $49
    rra                                           ; $53d3: $1f
    dec de                                        ; $53d4: $1b
    ld [$dd9d], sp                                ; $53d5: $08 $9d $dd
    add e                                         ; $53d8: $83
    ld b, c                                       ; $53d9: $41
    xor c                                         ; $53da: $a9
    or c                                          ; $53db: $b1
    jp Jump_035_7625                              ; $53dc: $c3 $25 $76


    dec l                                         ; $53df: $2d
    ld b, a                                       ; $53e0: $47
    ldh a, [$37]                                  ; $53e1: $f0 $37
    and h                                         ; $53e3: $a4

jr_035_53e4:
    adc h                                         ; $53e4: $8c
    pop bc                                        ; $53e5: $c1
    sub $d8                                       ; $53e6: $d6 $d8
    ld h, a                                       ; $53e8: $67
    add hl, de                                    ; $53e9: $19
    sub d                                         ; $53ea: $92
    inc bc                                        ; $53eb: $03
    inc hl                                        ; $53ec: $23
    xor [hl]                                      ; $53ed: $ae
    db $e3                                        ; $53ee: $e3
    xor b                                         ; $53ef: $a8
    ld e, d                                       ; $53f0: $5a
    db $dd                                        ; $53f1: $dd
    ld [hl], a                                    ; $53f2: $77
    pop de                                        ; $53f3: $d1
    pop af                                        ; $53f4: $f1
    or c                                          ; $53f5: $b1
    ld a, [hl-]                                   ; $53f6: $3a
    and h                                         ; $53f7: $a4
    ld a, [$efe2]                                 ; $53f8: $fa $e2 $ef
    call c, Call_000_1751                         ; $53fb: $dc $51 $17
    add b                                         ; $53fe: $80
    ld h, l                                       ; $53ff: $65
    ld c, b                                       ; $5400: $48
    ld c, $a3                                     ; $5401: $0e $a3
    dec e                                         ; $5403: $1d
    ld h, b                                       ; $5404: $60
    add hl, hl                                    ; $5405: $29
    ld e, [hl]                                    ; $5406: $5e
    rst $20                                       ; $5407: $e7
    ld h, $7f                                     ; $5408: $26 $7f
    sub c                                         ; $540a: $91
    ld sp, $7243                                  ; $540b: $31 $43 $72
    ret                                           ; $540e: $c9


    ld e, a                                       ; $540f: $5f
    ld h, h                                       ; $5410: $64
    call z, Call_035_5ab9                         ; $5411: $cc $b9 $5a
    sub l                                         ; $5414: $95
    sub l                                         ; $5415: $95
    ret c                                         ; $5416: $d8

    inc c                                         ; $5417: $0c
    and c                                         ; $5418: $a1
    ld l, d                                       ; $5419: $6a
    or c                                          ; $541a: $b1
    ld a, e                                       ; $541b: $7b
    pop af                                        ; $541c: $f1

jr_035_541d:
    rst $10                                       ; $541d: $d7
    ld c, a                                       ; $541e: $4f
    xor c                                         ; $541f: $a9
    dec de                                        ; $5420: $1b
    ld e, e                                       ; $5421: $5b
    ld h, $7f                                     ; $5422: $26 $7f
    rst $30                                       ; $5424: $f7
    or b                                          ; $5425: $b0
    ld b, h                                       ; $5426: $44
    halt                                          ; $5427: $76
    ld [hl], e                                    ; $5428: $73
    add b                                         ; $5429: $80
    ld [hl], a                                    ; $542a: $77
    ld c, b                                       ; $542b: $48
    ld c, $b3                                     ; $542c: $0e $b3
    ld a, e                                       ; $542e: $7b
    jr nc, jr_035_5459                            ; $542f: $30 $28

    push af                                       ; $5431: $f5
    sub b                                         ; $5432: $90
    adc [hl]                                      ; $5433: $8e
    ld c, $37                                     ; $5434: $0e $37
    di                                            ; $5436: $f3
    add e                                         ; $5437: $83
    ld a, [de]                                    ; $5438: $1a
    xor e                                         ; $5439: $ab
    ld b, e                                       ; $543a: $43
    ld h, [hl]                                    ; $543b: $66
    call z, $2301                                 ; $543c: $cc $01 $23
    cp a                                          ; $543f: $bf
    cp $47                                        ; $5440: $fe $47
    ld b, a                                       ; $5442: $47
    ld e, l                                       ; $5443: $5d
    rlca                                          ; $5444: $07
    ld hl, $d31e                                  ; $5445: $21 $1e $d3
    jr c, jr_035_53e4                             ; $5448: $38 $9a

    ld a, h                                       ; $544a: $7c
    pop hl                                        ; $544b: $e1
    ld b, b                                       ; $544c: $40
    ret nz                                        ; $544d: $c0

    and a                                         ; $544e: $a7
    inc b                                         ; $544f: $04
    dec h                                         ; $5450: $25
    ld h, l                                       ; $5451: $65
    and [hl]                                      ; $5452: $a6
    ld a, l                                       ; $5453: $7d
    rra                                           ; $5454: $1f
    ld a, d                                       ; $5455: $7a
    inc b                                         ; $5456: $04
    ld a, a                                       ; $5457: $7f
    cp l                                          ; $5458: $bd

jr_035_5459:
    add a                                         ; $5459: $87
    or l                                          ; $545a: $b5
    and l                                         ; $545b: $a5
    ld h, h                                       ; $545c: $64
    add l                                         ; $545d: $85
    rst $38                                       ; $545e: $ff
    jr c, jr_035_541d                             ; $545f: $38 $bc

    sbc c                                         ; $5461: $99
    add hl, bc                                    ; $5462: $09
    ld a, [de]                                    ; $5463: $1a
    db $fc                                        ; $5464: $fc
    ld b, $69                                     ; $5465: $06 $69
    ld c, $09                                     ; $5467: $0e $09
    db $fc                                        ; $5469: $fc
    push af                                       ; $546a: $f5
    ld a, l                                       ; $546b: $7d
    sub $d5                                       ; $546c: $d6 $d5
    adc [hl]                                      ; $546e: $8e
    push af                                       ; $546f: $f5
    or $46                                        ; $5470: $f6 $46
    dec e                                         ; $5472: $1d
    db $eb                                        ; $5473: $eb
    db $ed                                        ; $5474: $ed
    ld d, b                                       ; $5475: $50
    add l                                         ; $5476: $85
    inc b                                         ; $5477: $04
    ld d, l                                       ; $5478: $55
    ld e, c                                       ; $5479: $59
    ld e, c                                       ; $547a: $59
    ld e, a                                       ; $547b: $5f
    db $ec                                        ; $547c: $ec
    rst $20                                       ; $547d: $e7
    rrca                                          ; $547e: $0f
    inc c                                         ; $547f: $0c
    rst $20                                       ; $5480: $e7
    ld h, $7f                                     ; $5481: $26 $7f
    sub c                                         ; $5483: $91
    ld sp, $751d                                  ; $5484: $31 $1d $75
    ld bc, $d258                                  ; $5487: $01 $58 $d2
    inc e                                         ; $548a: $1c
    or e                                          ; $548b: $b3
    xor e                                         ; $548c: $ab
    db $ed                                        ; $548d: $ed
    xor c                                         ; $548e: $a9
    cp a                                          ; $548f: $bf
    ld l, c                                       ; $5490: $69
    sbc d                                         ; $5491: $9a
    ld [hl], $f1                                  ; $5492: $36 $f1
    dec e                                         ; $5494: $1d
    ld c, l                                       ; $5495: $4d
    db $d3                                        ; $5496: $d3
    or h                                          ; $5497: $b4
    ld a, [$ef63]                                 ; $5498: $fa $63 $ef
    ld e, a                                       ; $549b: $5f
    adc $bd                                       ; $549c: $ce $bd
    dec sp                                        ; $549e: $3b
    ld l, b                                       ; $549f: $68
    db $d3                                        ; $54a0: $d3
    inc [hl]                                      ; $54a1: $34
    call $a301                                    ; $54a2: $cd $01 $a3
    ld b, e                                       ; $54a5: $43
    adc d                                         ; $54a6: $8a
    inc bc                                        ; $54a7: $03
    ld h, d                                       ; $54a8: $62
    cp $bc                                        ; $54a9: $fe $bc
    ld d, l                                       ; $54ab: $55
    adc e                                         ; $54ac: $8b
    push bc                                       ; $54ad: $c5
    add c                                         ; $54ae: $81
    ld b, h                                       ; $54af: $44
    or b                                          ; $54b0: $b0
    ld [hl], h                                    ; $54b1: $74
    cpl                                           ; $54b2: $2f
    cp $d2                                        ; $54b3: $fe $d2
    ld h, $59                                     ; $54b5: $26 $59
    ld a, [hl-]                                   ; $54b7: $3a
    rst $08                                       ; $54b8: $cf
    add d                                         ; $54b9: $82
    ld b, l                                       ; $54ba: $45
    add d                                         ; $54bb: $82
    ccf                                           ; $54bc: $3f
    ld l, b                                       ; $54bd: $68
    jr nz, @-$0a                                  ; $54be: $20 $f4

    add l                                         ; $54c0: $85
    push hl                                       ; $54c1: $e5
    ld [$6b28], sp                                ; $54c2: $08 $28 $6b
    xor a                                         ; $54c5: $af
    ld [hl], $a4                                  ; $54c6: $36 $a4
    add hl, sp                                    ; $54c8: $39
    ret                                           ; $54c9: $c9


    sbc a                                         ; $54ca: $9f
    jp nc, $dceb                                  ; $54cb: $d2 $eb $dc

    cp c                                          ; $54ce: $b9
    xor [hl]                                      ; $54cf: $ae
    ld c, l                                       ; $54d0: $4d
    ld [hl], e                                    ; $54d1: $73
    and e                                         ; $54d2: $a3
    db $10                                        ; $54d3: $10
    pop hl                                        ; $54d4: $e1
    ld e, h                                       ; $54d5: $5c
    inc [hl]                                      ; $54d6: $34
    sub b                                         ; $54d7: $90
    xor e                                         ; $54d8: $ab
    add e                                         ; $54d9: $83
    cp a                                          ; $54da: $bf
    or d                                          ; $54db: $b2
    db $f4                                        ; $54dc: $f4
    ld a, [de]                                    ; $54dd: $1a
    and a                                         ; $54de: $a7
    dec de                                        ; $54df: $1b
    db $fc                                        ; $54e0: $fc
    ld b, c                                       ; $54e1: $41
    rst $10                                       ; $54e2: $d7
    xor h                                         ; $54e3: $ac
    or a                                          ; $54e4: $b7
    ret                                           ; $54e5: $c9


    sub [hl]                                      ; $54e6: $96
    inc hl                                        ; $54e7: $23
    sub $69                                       ; $54e8: $d6 $69
    sbc c                                         ; $54ea: $99
    pop hl                                        ; $54eb: $e1
    ld b, $42                                     ; $54ec: $06 $42
    dec e                                         ; $54ee: $1d
    db $eb                                        ; $54ef: $eb
    add $71                                       ; $54f0: $c6 $71
    ld e, b                                       ; $54f2: $58
    ld h, $fe                                     ; $54f3: $26 $fe
    sub h                                         ; $54f5: $94
    ld a, [de]                                    ; $54f6: $1a
    daa                                           ; $54f7: $27
    ld e, $1d                                     ; $54f8: $1e $1d
    adc b                                         ; $54fa: $88
    sub [hl]                                      ; $54fb: $96
    ret c                                         ; $54fc: $d8

    inc [hl]                                      ; $54fd: $34
    rlca                                          ; $54fe: $07
    jp $dd63                                      ; $54ff: $c3 $63 $dd


    ei                                            ; $5502: $fb
    rst $00                                       ; $5503: $c7
    add hl, de                                    ; $5504: $19
    ld [hl], e                                    ; $5505: $73
    ret                                           ; $5506: $c9


    ld e, a                                       ; $5507: $5f
    ld h, h                                       ; $5508: $64
    call z, Call_035_68b9                         ; $5509: $cc $b9 $68
    jr nz, @+$59                                  ; $550c: $20 $57

    rlca                                          ; $550e: $07
    ld a, a                                       ; $550f: $7f
    push de                                       ; $5510: $d5
    rla                                           ; $5511: $17
    ld a, a                                       ; $5512: $7f
    ld e, l                                       ; $5513: $5d
    or e                                          ; $5514: $b3
    sbc $1e                                       ; $5515: $de $1e
    pop bc                                        ; $5517: $c1
    ld e, a                                       ; $5518: $5f
    jp c, $fe04                                   ; $5519: $da $04 $fe

    ld a, d                                       ; $551c: $7a
    ld [hl], a                                    ; $551d: $77
    adc h                                         ; $551e: $8c
    db $d3                                        ; $551f: $d3
    ret c                                         ; $5520: $d8

    adc [hl]                                      ; $5521: $8e
    sub b                                         ; $5522: $90
    ld b, h                                       ; $5523: $44
    dec b                                         ; $5524: $05
    sub [hl]                                      ; $5525: $96
    sbc e                                         ; $5526: $9b
    ld e, d                                       ; $5527: $5a
    db $ed                                        ; $5528: $ed
    or d                                          ; $5529: $b2
    ld b, [hl]                                    ; $552a: $46
    ldh a, [$62]                                  ; $552b: $f0 $62
    add a                                         ; $552d: $87
    add hl, de                                    ; $552e: $19
    ld sp, hl                                     ; $552f: $f9
    ld [hl], e                                    ; $5530: $73
    add sp, $34                                   ; $5531: $e8 $34
    rlca                                          ; $5533: $07
    ld b, e                                       ; $5534: $43
    add hl, hl                                    ; $5535: $29
    ld [hl], l                                    ; $5536: $75
    ld e, a                                       ; $5537: $5f
    inc l                                         ; $5538: $2c

Jump_035_5539:
    ld a, [de]                                    ; $5539: $1a
    ret z                                         ; $553a: $c8

    ldh [$3d], a                                  ; $553b: $e0 $3d
    sub a                                         ; $553d: $97
    dec c                                         ; $553e: $0d
    nop                                           ; $553f: $00
    and a                                         ; $5540: $a7
    add hl, sp                                    ; $5541: $39
    and e                                         ; $5542: $a3
    call nc, Call_035_573b                        ; $5543: $d4 $3b $57
    ld a, a                                       ; $5546: $7f
    db $ec                                        ; $5547: $ec
    db $fd                                        ; $5548: $fd
    ld c, e                                       ; $5549: $4b
    ld l, a                                       ; $554a: $6f
    ei                                            ; $554b: $fb
    rlca                                          ; $554c: $07
    ld b, $d2                                     ; $554d: $06 $d2
    inc e                                         ; $554f: $1c
    ld c, c                                       ; $5550: $49
    pop hl                                        ; $5551: $e1
    ld e, d                                       ; $5552: $5a
    db $10                                        ; $5553: $10
    call c, Call_000_1679                         ; $5554: $dc $79 $16
    inc l                                         ; $5557: $2c
    ld [de], a                                    ; $5558: $12
    db $fc                                        ; $5559: $fc
    ld bc, $a822                                  ; $555a: $01 $22 $a8
    push de                                       ; $555d: $d5
    ld l, $6b                                     ; $555e: $2e $6b
    ld [c], a                                     ; $5560: $e2
    inc hl                                        ; $5561: $23
    ld b, d                                       ; $5562: $42
    ld sp, $ebf8                                  ; $5563: $31 $f8 $eb
    ld de, $6d50                                  ; $5566: $11 $50 $6d
    jp hl                                         ; $5569: $e9


Call_035_556a:
    jr nc, jr_035_558f                            ; $556a: $30 $23

    call nz, $a871                                ; $556c: $c4 $71 $a8
    call $2daa                                    ; $556f: $cd $aa $2d
    ld [hl], l                                    ; $5572: $75
    inc l                                         ; $5573: $2c
    reti                                          ; $5574: $d9


    ld [hl], h                                    ; $5575: $74
    cp l                                          ; $5576: $bd
    dec e                                         ; $5577: $1d
    ld hl, $0a89                                  ; $5578: $21 $89 $0a
    inc l                                         ; $557b: $2c
    ld l, c                                       ; $557c: $69
    ld b, a                                       ; $557d: $47
    ld c, b                                       ; $557e: $48
    and d                                         ; $557f: $a2
    ld [bc], a                                    ; $5580: $02
    ld c, e                                       ; $5581: $4b

jr_035_5582:
    inc sp                                        ; $5582: $33
    cp a                                          ; $5583: $bf
    or c                                          ; $5584: $b1
    push bc                                       ; $5585: $c5
    ld e, e                                       ; $5586: $5b
    or d                                          ; $5587: $b2
    xor d                                         ; $5588: $aa
    or $f6                                        ; $5589: $f6 $f6
    ld e, $fc                                     ; $558b: $1e $fc
    ld b, c                                       ; $558d: $41
    ld h, h                                       ; $558e: $64

jr_035_558f:
    ld [$0ede], sp                                ; $558f: $08 $de $0e
    inc sp                                        ; $5592: $33
    jp nz, Jump_000_0d5f                          ; $5593: $c2 $5f $0d

    ld c, $ea                                     ; $5596: $0e $ea
    db $ed                                        ; $5598: $ed
    ld h, b                                       ; $5599: $60
    sbc b                                         ; $559a: $98
    ld e, d                                       ; $559b: $5a
    ld a, d                                       ; $559c: $7a
    jp nz, $ac57                                  ; $559d: $c2 $57 $ac

    add l                                         ; $55a0: $85
    cp b                                          ; $55a1: $b8
    db $e4                                        ; $55a2: $e4
    jr nc, jr_035_5582                            ; $55a3: $30 $dd

    ld [hl], e                                    ; $55a5: $73
    cp a                                          ; $55a6: $bf
    jp nz, Jump_000_30ea                          ; $55a7: $c2 $ea $30

    ld a, [$a328]                                 ; $55aa: $fa $28 $a3
    xor b                                         ; $55ad: $a8
    push de                                       ; $55ae: $d5
    dec c                                         ; $55af: $0d
    add h                                         ; $55b0: $84
    ld a, [de]                                    ; $55b1: $1a

Jump_035_55b2:
    ld a, e                                       ; $55b2: $7b
    rrca                                          ; $55b3: $0f
    cp $20                                        ; $55b4: $fe $20
    or d                                          ; $55b6: $b2
    ld [hl], e                                    ; $55b7: $73
    push af                                       ; $55b8: $f5
    ld b, a                                       ; $55b9: $47
    ld l, h                                       ; $55ba: $6c
    inc a                                         ; $55bb: $3c
    xor c                                         ; $55bc: $a9
    ld c, $77                                     ; $55bd: $0e $77
    ret nc                                        ; $55bf: $d0

    add d                                         ; $55c0: $82
    db $fc                                        ; $55c1: $fc
    add l                                         ; $55c2: $85
    or l                                          ; $55c3: $b5
    rst $10                                       ; $55c4: $d7
    db $db                                        ; $55c5: $db
    ld de, $a892                                  ; $55c6: $11 $92 $a8
    ret nz                                        ; $55c9: $c0

    jp nc, Jump_035_6bc1                          ; $55ca: $d2 $c1 $6b

    dec e                                         ; $55cd: $1d
    ei                                            ; $55ce: $fb
    ld d, a                                       ; $55cf: $57
    ld e, e                                       ; $55d0: $5b
    xor d                                         ; $55d1: $aa
    ld d, $2c                                     ; $55d2: $16 $2c
    ret z                                         ; $55d4: $c8

    sbc a                                         ; $55d5: $9f
    ld b, e                                       ; $55d6: $43
    ld a, e                                       ; $55d7: $7b
    ld a, e                                       ; $55d8: $7b
    dec de                                        ; $55d9: $1b
    ld a, e                                       ; $55da: $7b
    rla                                           ; $55db: $17
    jp nc, $091c                                  ; $55dc: $d2 $1c $09

    db $fc                                        ; $55df: $fc
    push af                                       ; $55e0: $f5
    or $77                                        ; $55e1: $f6 $77
    xor e                                         ; $55e3: $ab
    ccf                                           ; $55e4: $3f
    ld d, $f9                                     ; $55e5: $16 $f9
    cp e                                          ; $55e7: $bb
    or [hl]                                       ; $55e8: $b6
    sbc a                                         ; $55e9: $9f
    ld d, d                                       ; $55ea: $52
    db $e3                                        ; $55eb: $e3

jr_035_55ec:
    sub b                                         ; $55ec: $90
    inc e                                         ; $55ed: $1c
    ld c, h                                       ; $55ee: $4c
    jr jr_035_55ec                                ; $55ef: $18 $fb

    ld l, l                                       ; $55f1: $6d
    sbc d                                         ; $55f2: $9a
    inc bc                                        ; $55f3: $03
    ld c, c                                       ; $55f4: $49
    rra                                           ; $55f5: $1f
    dec de                                        ; $55f6: $1b
    ld [$f53d], sp                                ; $55f7: $08 $3d $f5
    rst $30                                       ; $55fa: $f7
    ld e, $d6                                     ; $55fb: $1e $d6
    sub [hl]                                      ; $55fd: $96
    ld e, $9f                                     ; $55fe: $1e $9f
    ld d, $c6                                     ; $5600: $16 $c6
    inc c                                         ; $5602: $0c
    inc b                                         ; $5603: $04
    ld a, [c]                                     ; $5604: $f2
    sub a                                         ; $5605: $97
    and $09                                       ; $5606: $e6 $09
    db $fc                                        ; $5608: $fc
    dec [hl]                                      ; $5609: $35
    inc sp                                        ; $560a: $33
    db $eb                                        ; $560b: $eb
    sbc [hl]                                      ; $560c: $9e
    ld l, d                                       ; $560d: $6a
    db $ed                                        ; $560e: $ed
    and e                                         ; $560f: $a3
    add e                                         ; $5610: $83
    rst $10                                       ; $5611: $d7

jr_035_5612:
    sub $8a                                       ; $5612: $d6 $8a
    cp a                                          ; $5614: $bf
    ld a, [hl-]                                   ; $5615: $3a
    or [hl]                                       ; $5616: $b6
    daa                                           ; $5617: $27
    jr z, jr_035_5612                             ; $5618: $28 $f8

    ldh [$a5], a                                  ; $561a: $e0 $a5
    ld a, $3d                                     ; $561c: $3e $3d
    ld l, [hl]                                    ; $561e: $6e
    rst $10                                       ; $561f: $d7
    and [hl]                                      ; $5620: $a6
    dec e                                         ; $5621: $1d
    add hl, de                                    ; $5622: $19
    ret nc                                        ; $5623: $d0

    db $e4                                        ; $5624: $e4
    and b                                         ; $5625: $a0
    add h                                         ; $5626: $84
    xor e                                         ; $5627: $ab
    dec l                                         ; $5628: $2d
    dec e                                         ; $5629: $1d
    jp z, Jump_035_41b2                           ; $562a: $ca $b2 $41

    or l                                          ; $562d: $b5
    jp c, $dbcc                                   ; $562e: $da $cc $db

    db $db                                        ; $5631: $db
    ret c                                         ; $5632: $d8

    cp e                                          ; $5633: $bb
    ret nc                                        ; $5634: $d0

    ld a, b                                       ; $5635: $78
    jp nc, $a94f                                  ; $5636: $d2 $4f $a9

    dec sp                                        ; $5639: $3b
    ld b, d                                       ; $563a: $42
    ld [de], a                                    ; $563b: $12
    dec d                                         ; $563c: $15
    ld e, b                                       ; $563d: $58
    jp z, Jump_000_211a                           ; $563e: $ca $1a $21

    adc [hl]                                      ; $5641: $8e
    jp $e69b                                      ; $5642: $c3 $9b $e6


    and e                                         ; $5645: $a3
    cp l                                          ; $5646: $bd
    db $db                                        ; $5647: $db
    ld a, b                                       ; $5648: $78
    jp nc, $9211                                  ; $5649: $d2 $11 $92

    xor b                                         ; $564c: $a8
    ret nz                                        ; $564d: $c0

    jp nc, Jump_035_5b4b                          ; $564e: $d2 $4b $5b

    ld a, [$5b57]                                 ; $5651: $fa $57 $5b
    call c, Call_000_1413                         ; $5654: $dc $13 $14
    ld a, h                                       ; $5657: $7c
    ldh a, [$96]                                  ; $5658: $f0 $96
    adc b                                         ; $565a: $88
    push de                                       ; $565b: $d5
    add [hl]                                      ; $565c: $86
    ld [hl], e                                    ; $565d: $73
    ld [hl], l                                    ; $565e: $75
    cp b                                          ; $565f: $b8
    pop af                                        ; $5660: $f1
    and h                                         ; $5661: $a4
    dec de                                        ; $5662: $1b
    db $fc                                        ; $5663: $fc
    ld b, c                                       ; $5664: $41
    cp a                                          ; $5665: $bf
    ld [hl+], a                                   ; $5666: $22
    ld a, [hl-]                                   ; $5667: $3a
    ld [hl], h                                    ; $5668: $74
    ld e, a                                       ; $5669: $5f
    sbc b                                         ; $566a: $98
    dec l                                         ; $566b: $2d
    ld e, c                                       ; $566c: $59
    ld e, l                                       ; $566d: $5d
    and d                                         ; $566e: $a2
    rst $10                                       ; $566f: $d7
    db $db                                        ; $5670: $db
    db $db                                        ; $5671: $db
    ret c                                         ; $5672: $d8

    cp e                                          ; $5673: $bb
    ld [hl], b                                    ; $5674: $70
    xor $41                                       ; $5675: $ee $41
    ld b, d                                       ; $5677: $42
    add h                                         ; $5678: $84
    add $93                                       ; $5679: $c6 $93
    ld [$ba30], a                                 ; $567b: $ea $30 $ba
    adc [hl]                                      ; $567e: $8e
    dec h                                         ; $567f: $25
    ld a, $7f                                     ; $5680: $3e $7f
    ld e, l                                       ; $5682: $5d
    dec h                                         ; $5683: $25
    adc l                                         ; $5684: $8d
    xor l                                         ; $5685: $ad
    sub l                                         ; $5686: $95
    and l                                         ; $5687: $a5
    or e                                          ; $5688: $b3
    ld sp, hl                                     ; $5689: $f9
    db $f4                                        ; $568a: $f4
    cp b                                          ; $568b: $b8
    ld e, l                                       ; $568c: $5d
    ld e, e                                       ; $568d: $5b
    ld [$9bcc], a                                 ; $568e: $ea $cc $9b
    sub [hl]                                      ; $5691: $96
    add hl, de                                    ; $5692: $19
    xor $dd                                       ; $5693: $ee $dd
    and d                                         ; $5695: $a2
    cp l                                          ; $5696: $bd
    push de                                       ; $5697: $d5
    ld a, a                                       ; $5698: $7f
    or a                                          ; $5699: $b7
    ld e, a                                       ; $569a: $5f
    pop bc                                        ; $569b: $c1
    ld [hl], l                                    ; $569c: $75
    ld a, h                                       ; $569d: $7c
    ld [$afe4], sp                                ; $569e: $08 $e4 $af
    xor h                                         ; $56a1: $ac
    ld de, $38e2                                  ; $56a2: $11 $e2 $38
    and b                                         ; $56a5: $a0
    ld l, d                                       ; $56a6: $6a
    ld [hl], l                                    ; $56a7: $75
    cp l                                          ; $56a8: $bd
    add b                                         ; $56a9: $80
    inc bc                                        ; $56aa: $03
    ld h, d                                       ; $56ab: $62
    cp $bc                                        ; $56ac: $fe $bc
    cp d                                          ; $56ae: $ba

Jump_035_56af:
    ld h, h                                       ; $56af: $64
    sub l                                         ; $56b0: $95
    ld sp, hl                                     ; $56b1: $f9
    ld [de], a                                    ; $56b2: $12
    cp l                                          ; $56b3: $bd
    add [hl]                                      ; $56b4: $86
    or h                                          ; $56b5: $b4
    or e                                          ; $56b6: $b3
    ei                                            ; $56b7: $fb
    dec e                                         ; $56b8: $1d
    ret nc                                        ; $56b9: $d0

    ld d, l                                       ; $56ba: $55
    ld e, e                                       ; $56bb: $5b
    dec hl                                        ; $56bc: $2b
    ld [hl], c                                    ; $56bd: $71
    ld h, a                                       ; $56be: $67
    di                                            ; $56bf: $f3
    jp hl                                         ; $56c0: $e9


    ld [hl], c                                    ; $56c1: $71
    ei                                            ; $56c2: $fb
    ld d, l                                       ; $56c3: $55
    xor e                                         ; $56c4: $ab
    adc e                                         ; $56c5: $8b
    adc d                                         ; $56c6: $8a
    ccf                                           ; $56c7: $3f
    xor b                                         ; $56c8: $a8
    cp $58                                        ; $56c9: $fe $58
    ld h, $7f                                     ; $56cb: $26 $7f
    adc d                                         ; $56cd: $8a
    ld h, [hl]                                    ; $56ce: $66
    and [hl]                                      ; $56cf: $a6
    adc c                                         ; $56d0: $89
    xor e                                         ; $56d1: $ab
    db $dd                                        ; $56d2: $dd
    db $fd                                        ; $56d3: $fd
    db $fc                                        ; $56d4: $fc
    ld [hl], l                                    ; $56d5: $75
    add h                                         ; $56d6: $84
    inc h                                         ; $56d7: $24
    ld a, [hl+]                                   ; $56d8: $2a
    or b                                          ; $56d9: $b0
    ld l, h                                       ; $56da: $6c
    ccf                                           ; $56db: $3f
    sbc e                                         ; $56dc: $9b
    sub [hl]                                      ; $56dd: $96
    pop de                                        ; $56de: $d1
    rrca                                          ; $56df: $0f
    ld a, d                                       ; $56e0: $7a
    xor d                                         ; $56e1: $aa
    push af                                       ; $56e2: $f5
    push bc                                       ; $56e3: $c5
    ld e, a                                       ; $56e4: $5f
    cp a                                          ; $56e5: $bf
    ld [hl+], a                                   ; $56e6: $22
    ld a, d                                       ; $56e7: $7a
    ld [hl], e                                    ; $56e8: $73
    xor h                                         ; $56e9: $ac
    or a                                          ; $56ea: $b7
    or e                                          ; $56eb: $b3
    ld a, h                                       ; $56ec: $7c
    ld c, d                                       ; $56ed: $4a
    dec de                                        ; $56ee: $1b
    ld e, e                                       ; $56ef: $5b
    db $ed                                        ; $56f0: $ed
    db $ed                                        ; $56f1: $ed
    and b                                         ; $56f2: $a0
    add l                                         ; $56f3: $85
    cp l                                          ; $56f4: $bd
    ret nz                                        ; $56f5: $c0

    db $eb                                        ; $56f6: $eb
    db $ed                                        ; $56f7: $ed
    add sp, $4f                                   ; $56f8: $e8 $4f
    ld [hl], l                                    ; $56fa: $75
    push de                                       ; $56fb: $d5
    ld [$aede], a                                 ; $56fc: $ea $de $ae
    db $e3                                        ; $56ff: $e3
    add b                                         ; $5700: $80
    ld e, d                                       ; $5701: $5a
    db $10                                        ; $5702: $10
    xor d                                         ; $5703: $aa
    rst $38                                       ; $5704: $ff
    ld l, [hl]                                    ; $5705: $6e
    ret                                           ; $5706: $c9


    ld c, d                                       ; $5707: $4a
    ld c, b                                       ; $5708: $48
    db $fc                                        ; $5709: $fc
    halt                                          ; $570a: $76
    xor $dd                                       ; $570b: $ee $dd
    cp e                                          ; $570d: $bb
    adc l                                         ; $570e: $8d
    daa                                           ; $570f: $27
    dec a                                         ; $5710: $3d
    ld h, d                                       ; $5711: $62
    or l                                          ; $5712: $b5
    ld de, $58bc                                  ; $5713: $11 $bc $58
    inc [hl]                                      ; $5716: $34
    ld a, a                                       ; $5717: $7f
    ret c                                         ; $5718: $d8

    ld de, $a892                                  ; $5719: $11 $92 $a8
    ret nz                                        ; $571c: $c0

    jp nc, $84cc                                  ; $571d: $d2 $cc $84

    ld e, d                                       ; $5720: $5a
    db $ed                                        ; $5721: $ed
    db $ed                                        ; $5722: $ed
    ei                                            ; $5723: $fb
    xor h                                         ; $5724: $ac
    scf                                           ; $5725: $37
    call Call_035_4901                            ; $5726: $cd $01 $49
    xor d                                         ; $5729: $aa
    or a                                          ; $572a: $b7
    cp a                                          ; $572b: $bf
    adc e                                         ; $572c: $8b
    ret nc                                        ; $572d: $d0

    inc hl                                        ; $572e: $23
    and h                                         ; $572f: $a4
    call nz, $3345                                ; $5730: $c4 $45 $33
    rst $28                                       ; $5733: $ef
    cp c                                          ; $5734: $b9
    ld [hl], a                                    ; $5735: $77
    rst $28                                       ; $5736: $ef
    ld d, [hl]                                    ; $5737: $56
    xor e                                         ; $5738: $ab
    adc $a6                                       ; $5739: $ce $a6

Call_035_573b:
    db $10                                        ; $573b: $10
    ld a, [$423e]                                 ; $573c: $fa $3e $42
    jp c, $fe04                                   ; $573f: $da $04 $fe

    ld a, d                                       ; $5742: $7a
    di                                            ; $5743: $f3
    xor [hl]                                      ; $5744: $ae
    bit 3, d                                      ; $5745: $cb $5a
    inc e                                         ; $5747: $1c
    add b                                         ; $5748: $80
    push de                                       ; $5749: $d5
    pop hl                                        ; $574a: $e1
    ld e, $0e                                     ; $574b: $1e $0e
    inc b                                         ; $574d: $04
    ld l, a                                       ; $574e: $6f
    ld b, a                                       ; $574f: $47
    ld c, b                                       ; $5750: $48
    and d                                         ; $5751: $a2
    ld [bc], a                                    ; $5752: $02
    ld c, e                                       ; $5753: $4b
    sbc d                                         ; $5754: $9a
    inc bc                                        ; $5755: $03
    or e                                          ; $5756: $b3
    dec sp                                        ; $5757: $3b
    or $dc                                        ; $5758: $f6 $dc
    ldh [$af], a                                  ; $575a: $e0 $af
    ld a, b                                       ; $575c: $78
    ld d, c                                       ; $575d: $51
    ld a, [bc]                                    ; $575e: $0a
    xor [hl]                                      ; $575f: $ae
    or c                                          ; $5760: $b1
    ld d, $84                                     ; $5761: $16 $84
    ld e, $9f                                     ; $5763: $1e $9f
    ld d, $4d                                     ; $5765: $16 $4d
    ld e, c                                       ; $5767: $59
    ld c, e                                       ; $5768: $4b
    xor c                                         ; $5769: $a9

Call_035_576a:
    ld h, l                                       ; $576a: $65
    cp l                                          ; $576b: $bd
    ld l, c                                       ; $576c: $69
    ld c, $a3                                     ; $576d: $0e $a3
    ld [$e24a], sp                                ; $576f: $08 $4a $e2
    or a                                          ; $5772: $b7
    or d                                          ; $5773: $b2
    db $f4                                        ; $5774: $f4
    ld a, [de]                                    ; $5775: $1a
    and a                                         ; $5776: $a7
    scf                                           ; $5777: $37
    rst $00                                       ; $5778: $c7
    cp d                                          ; $5779: $ba
    ld c, c                                       ; $577a: $49
    sub a                                         ; $577b: $97
    xor h                                         ; $577c: $ac
    ld [hl], a                                    ; $577d: $77
    ld c, b                                       ; $577e: $48
    ld c, $8c                                     ; $577f: $0e $8c
    ld a, [bc]                                    ; $5781: $0a
    adc $d5                                       ; $5782: $ce $d5
    ld a, a                                       ; $5784: $7f
    or a                                          ; $5785: $b7
    add e                                         ; $5786: $83
    ld d, $54                                     ; $5787: $16 $54
    db $fc                                        ; $5789: $fc
    ld d, l                                       ; $578a: $55
    dec sp                                        ; $578b: $3b
    or [hl]                                       ; $578c: $b6
    adc h                                         ; $578d: $8c
    sub h                                         ; $578e: $94
    call nz, Call_035_696f                        ; $578f: $c4 $6f $69
    ld c, $c3                                     ; $5792: $0e $c3
    ld [bc], a                                    ; $5794: $02
    adc e                                         ; $5795: $8b
    inc bc                                        ; $5796: $03
    adc c                                         ; $5797: $89
    ld h, b                                       ; $5798: $60
    add hl, sp                                    ; $5799: $39
    scf                                           ; $579a: $37
    ld sp, hl                                     ; $579b: $f9
    adc e                                         ; $579c: $8b
    adc h                                         ; $579d: $8c
    ld c, c                                       ; $579e: $49
    ld [hl], e                                    ; $579f: $73
    ld c, c                                       ; $57a0: $49
    xor d                                         ; $57a1: $aa
    ld a, b                                       ; $57a2: $78
    ld d, c                                       ; $57a3: $51
    ld a, [bc]                                    ; $57a4: $0a
    ld b, [hl]                                    ; $57a5: $46
    xor b                                         ; $57a6: $a8
    sub [hl]                                      ; $57a7: $96
    xor a                                         ; $57a8: $af
    add $f1                                       ; $57a9: $c6 $f1
    halt                                          ; $57ab: $76
    ccf                                           ; $57ac: $3f
    ld a, a                                       ; $57ad: $7f
    add sp, -$19                                  ; $57ae: $e8 $e7
    dec a                                         ; $57b0: $3d
    scf                                           ; $57b1: $37
    ld sp, hl                                     ; $57b2: $f9
    adc e                                         ; $57b3: $8b
    adc h                                         ; $57b4: $8c
    ld c, c                                       ; $57b5: $49
    ld [hl], e                                    ; $57b6: $73
    ret                                           ; $57b7: $c9


    ld h, c                                       ; $57b8: $61
    xor c                                         ; $57b9: $a9
    sub [hl]                                      ; $57ba: $96
    ret c                                         ; $57bb: $d8

    push af                                       ; $57bc: $f5
    or $fe                                        ; $57bd: $f6 $fe
    ld sp, hl                                     ; $57bf: $f9
    ld b, e                                       ; $57c0: $43
    ld l, a                                       ; $57c1: $6f
    ld l, a                                       ; $57c2: $6f
    adc [hl]                                      ; $57c3: $8e
    ld [hl], l                                    ; $57c4: $75
    ld b, a                                       ; $57c5: $47
    ld c, b                                       ; $57c6: $48
    and d                                         ; $57c7: $a2
    ld [bc], a                                    ; $57c8: $02
    res 7, c                                      ; $57c9: $cb $b9
    ret                                           ; $57cb: $c9


    ld e, a                                       ; $57cc: $5f
    ld h, h                                       ; $57cd: $64
    ld c, h                                       ; $57ce: $4c
    sbc d                                         ; $57cf: $9a
    inc bc                                        ; $57d0: $03
    and e                                         ; $57d1: $a3
    cp l                                          ; $57d2: $bd
    ld e, e                                       ; $57d3: $5b
    xor l                                         ; $57d4: $ad
    xor d                                         ; $57d5: $aa
    jp $aa1d                                      ; $57d6: $c3 $1d $aa


    adc b                                         ; $57d9: $88
    db $ec                                        ; $57da: $ec
    or e                                          ; $57db: $b3
    ld l, $1d                                     ; $57dc: $2e $1d
    dec de                                        ; $57de: $1b
    cp l                                          ; $57df: $bd
    cp l                                          ; $57e0: $bd
    rlca                                          ; $57e1: $07
    and l                                         ; $57e2: $a5
    ld [$1ee7], sp                                ; $57e3: $08 $e7 $1e
    ld a, [bc]                                    ; $57e6: $0a
    ld de, $55aa                                  ; $57e7: $11 $aa $55
    sub c                                         ; $57ea: $91
    cp a                                          ; $57eb: $bf
    ld l, e                                       ; $57ec: $6b
    cp e                                          ; $57ed: $bb
    sbc a                                         ; $57ee: $9f
    cp a                                          ; $57ef: $bf
    ld l, d                                       ; $57f0: $6a
    ld sp, hl                                     ; $57f1: $f9
    ld l, d                                       ; $57f2: $6a
    inc e                                         ; $57f3: $1c
    ld l, a                                       ; $57f4: $6f
    inc sp                                        ; $57f5: $33
    ccf                                           ; $57f6: $3f
    rst $28                                       ; $57f7: $ef
    cp c                                          ; $57f8: $b9
    ret                                           ; $57f9: $c9


    ld e, a                                       ; $57fa: $5f
    ld h, h                                       ; $57fb: $64
    ld c, h                                       ; $57fc: $4c
    sbc d                                         ; $57fd: $9a
    inc bc                                        ; $57fe: $03
    and e                                         ; $57ff: $a3
    dec e                                         ; $5800: $1d
    db $e3                                        ; $5801: $e3
    ld b, b                                       ; $5802: $40
    or l                                          ; $5803: $b5
    ld a, [hl-]                                   ; $5804: $3a
    rst $30                                       ; $5805: $f7
    ld a, [hl]                                    ; $5806: $7e
    push af                                       ; $5807: $f5
    ld hl, sp-$25                                 ; $5808: $f8 $db
    xor a                                         ; $580a: $af
    adc b                                         ; $580b: $88
    ld l, d                                       ; $580c: $6a
    rra                                           ; $580d: $1f
    ld h, l                                       ; $580e: $65
    ld a, [c]                                     ; $580f: $f2
    and a                                         ; $5810: $a7
    ld l, b                                       ; $5811: $68
    ld h, [hl]                                    ; $5812: $66
    sbc d                                         ; $5813: $9a
    cp b                                          ; $5814: $b8
    jp c, Jump_000_211d                           ; $5815: $da $1d $21

    adc c                                         ; $5818: $89
    ld a, [bc]                                    ; $5819: $0a
    inc l                                         ; $581a: $2c
    dec h                                         ; $581b: $25
    ld h, d                                       ; $581c: $62
    or l                                          ; $581d: $b5
    or a                                          ; $581e: $b7
    or a                                          ; $581f: $b7
    cp a                                          ; $5820: $bf
    dec sp                                        ; $5821: $3b
    ld h, e                                       ; $5822: $63
    ld c, $c9                                     ; $5823: $0e $c9
    sbc a                                         ; $5825: $9f
    add d                                         ; $5826: $82
    and c                                         ; $5827: $a1
    xor h                                         ; $5828: $ac
    pop af                                        ; $5829: $f1
    ld e, d                                       ; $582a: $5a
    ld l, l                                       ; $582b: $6d
    pop bc                                        ; $582c: $c1
    xor $e7                                       ; $582d: $ee $e7
    xor a                                         ; $582f: $af
    ld l, d                                       ; $5830: $6a
    inc sp                                        ; $5831: $33
    rst $18                                       ; $5832: $df
    rst $00                                       ; $5833: $c7
    ld a, [hl]                                    ; $5834: $7e
    ld c, e                                       ; $5835: $4b
    add e                                         ; $5836: $83
    cp a                                          ; $5837: $bf
    ld a, [hl]                                    ; $5838: $7e
    add l                                         ; $5839: $85
    add sp, -$19                                  ; $583a: $e8 $e7
    push de                                       ; $583c: $d5
    sbc $32                                       ; $583d: $de $32
    jp z, $9647                                   ; $583f: $ca $47 $96

    add h                                         ; $5842: $84
    db $fc                                        ; $5843: $fc
    sbc c                                         ; $5844: $99
    ld l, [hl]                                    ; $5845: $6e
    add a                                         ; $5846: $87
    ld a, [hl+]                                   ; $5847: $2a
    ld b, h                                       ; $5848: $44
    cp $be                                        ; $5849: $fe $be
    ld c, d                                       ; $584b: $4a
    rrc h                                         ; $584c: $cb $0c
    sub a                                         ; $584e: $97
    inc e                                         ; $584f: $1c
    ld a, [hl]                                    ; $5850: $7e
    sbc $8e                                       ; $5851: $de $8e
    sub b                                         ; $5853: $90
    ld b, h                                       ; $5854: $44
    dec b                                         ; $5855: $05
    sub [hl]                                      ; $5856: $96
    xor d                                         ; $5857: $aa
    push de                                       ; $5858: $d5
    db $fd                                        ; $5859: $fd
    xor e                                         ; $585a: $ab
    dec l                                         ; $585b: $2d
    xor $09                                       ; $585c: $ee $09
    ld e, a                                       ; $585e: $5f
    or c                                          ; $585f: $b1
    ld d, $90                                     ; $5860: $16 $90
    cp a                                          ; $5862: $bf
    scf                                           ; $5863: $37
    or d                                          ; $5864: $b2
    add d                                         ; $5865: $82
    rrca                                          ; $5866: $0f
    sbc $ee                                       ; $5867: $de $ee
    ld a, a                                       ; $5869: $7f
    ld h, $ab                                     ; $586a: $26 $ab
    ld e, $3f                                     ; $586c: $1e $3f
    dec bc                                        ; $586e: $0b
    db $e4                                        ; $586f: $e4
    xor a                                         ; $5870: $af
    ld a, a                                       ; $5871: $7f
    db $d3                                        ; $5872: $d3
    inc e                                         ; $5873: $1c
    daa                                           ; $5874: $27
    add h                                         ; $5875: $84
    rra                                           ; $5876: $1f
    db $f4                                        ; $5877: $f4
    ld d, h                                       ; $5878: $54
    db $eb                                        ; $5879: $eb
    adc e                                         ; $587a: $8b
    cp a                                          ; $587b: $bf
    add $71                                       ; $587c: $c6 $71
    ld e, b                                       ; $587e: $58
    ld l, d                                       ; $587f: $6a
    dec h                                         ; $5880: $25
    ld l, [hl]                                    ; $5881: $6e
    sub d                                         ; $5882: $92
    ld a, h                                       ; $5883: $7c
    cp $bc                                        ; $5884: $fe $bc
    rst $28                                       ; $5886: $ef
    dec hl                                        ; $5887: $2b
    ld a, b                                       ; $5888: $78
    ld a, a                                       ; $5889: $7f
    dec [hl]                                      ; $588a: $35
    ld a, [c]                                     ; $588b: $f2
    and a                                         ; $588c: $a7
    call c, $e7bf                                 ; $588d: $dc $bf $e7
    sbc $bd                                       ; $5890: $de $bd

Jump_035_5892:
    db $db                                        ; $5892: $db
    ld a, b                                       ; $5893: $78
    jp nc, $9211                                  ; $5894: $d2 $11 $92

    xor b                                         ; $5897: $a8
    ret nz                                        ; $5898: $c0

    jp nc, Jump_000_0ecf                          ; $5899: $d2 $cf $0e

    db $10                                        ; $589c: $10
    sub h                                         ; $589d: $94
    call nz, Call_035_706f                        ; $589e: $c4 $6f $70
    xor [hl]                                      ; $58a1: $ae
    or $6e                                        ; $58a2: $f6 $6e
    pop af                                        ; $58a4: $f1
    ld e, d                                       ; $58a5: $5a
    add h                                         ; $58a6: $84
    sbc $c6                                       ; $58a7: $de $c6
    sbc $05                                       ; $58a9: $de $05
    ld b, e                                       ; $58ab: $43
    db $e3                                        ; $58ac: $e3
    ld c, c                                       ; $58ad: $49
    xor l                                         ; $58ae: $ad
    ld hl, sp-$15                                 ; $58af: $f8 $eb
    db $dd                                        ; $58b1: $dd
    rrca                                          ; $58b2: $0f
    call nc, $39a6                                ; $58b3: $d4 $a6 $39
    ret                                           ; $58b6: $c9


    ccf                                           ; $58b7: $3f
    sub e                                         ; $58b8: $93
    ret nc                                        ; $58b9: $d0

    rst $20                                       ; $58ba: $e7
    sbc $af                                       ; $58bb: $de $af
    ld [de], a                                    ; $58bd: $12
    or c                                          ; $58be: $b1
    jp c, $e3d0                                   ; $58bf: $da $d0 $e3

    ld l, a                                       ; $58c2: $6f
    ld e, a                                       ; $58c3: $5f
    ld e, b                                       ; $58c4: $58
    ld a, [hl-]                                   ; $58c5: $3a
    ld b, d                                       ; $58c6: $42
    ld [de], a                                    ; $58c7: $12
    dec d                                         ; $58c8: $15
    ld e, b                                       ; $58c9: $58
    ld h, [hl]                                    ; $58ca: $66
    call z, $b301                                 ; $58cb: $cc $01 $b3
    sub b                                         ; $58ce: $90
    jr z, jr_035_5916                             ; $58cf: $28 $45

    xor b                                         ; $58d1: $a8
    halt                                          ; $58d2: $76
    ld l, h                                       ; $58d3: $6c
    ld h, a                                       ; $58d4: $67
    di                                            ; $58d5: $f3
    jp hl                                         ; $58d6: $e9


    ld [hl], c                                    ; $58d7: $71
    cp e                                          ; $58d8: $bb
    or $dc                                        ; $58d9: $f6 $dc
    ei                                            ; $58db: $fb
    rst $00                                       ; $58dc: $c7
    add hl, de                                    ; $58dd: $19
    bit 2, h                                      ; $58de: $cb $54
    db $fc                                        ; $58e0: $fc
    sub l                                         ; $58e1: $95
    ld [hl], l                                    ; $58e2: $75
    ld d, h                                       ; $58e3: $54
    ld a, e                                       ; $58e4: $7b
    sra b                                         ; $58e5: $cb $28
    rra                                           ; $58e7: $1f
    ld e, c                                       ; $58e8: $59
    ld [de], a                                    ; $58e9: $12
    ld a, [c]                                     ; $58ea: $f2
    ld h, a                                       ; $58eb: $67
    cp d                                          ; $58ec: $ba
    rst $20                                       ; $58ed: $e7
    ld [$5f70], a                                 ; $58ee: $ea $70 $5f
    ld e, b                                       ; $58f1: $58
    xor d                                         ; $58f2: $aa
    ld d, [hl]                                    ; $58f3: $56
    ld d, a                                       ; $58f4: $57
    rst $38                                       ; $58f5: $ff
    ld [hl+], a                                   ; $58f6: $22
    ld hl, sp+$79                                 ; $58f7: $f8 $79
    db $d3                                        ; $58f9: $d3
    ld h, $7f                                     ; $58fa: $26 $7f
    or [hl]                                       ; $58fc: $b6
    cpl                                           ; $58fd: $2f
    inc l                                         ; $58fe: $2c
    dec c                                         ; $58ff: $0d
    ret                                           ; $5900: $c9


    cp h                                          ; $5901: $bc
    ld a, [$357e]                                 ; $5902: $fa $7e $35
    add hl, hl                                    ; $5905: $29
    ld b, $e0                                     ; $5906: $06 $e0
    rra                                           ; $5908: $1f
    cp l                                          ; $5909: $bd
    ld a, a                                       ; $590a: $7f
    cp $d0                                        ; $590b: $fe $d0
    ld e, e                                       ; $590d: $5b
    db $f4                                        ; $590e: $f4
    di                                            ; $590f: $f3
    sbc [hl]                                      ; $5910: $9e
    ei                                            ; $5911: $fb
    ld a, $5b                                     ; $5912: $3e $5b
    ld h, e                                       ; $5914: $63
    ld c, a                                       ; $5915: $4f

jr_035_5916:
    or l                                          ; $5916: $b5
    cp [hl]                                       ; $5917: $be
    ld hl, sp+$6b                                 ; $5918: $f8 $6b
    and $01                                       ; $591a: $e6 $01
    add d                                         ; $591c: $82
    sub d                                         ; $591d: $92
    ld hl, sp+$0d                                 ; $591e: $f8 $0d
    adc $bd                                       ; $5920: $ce $bd
    dec sp                                        ; $5922: $3b
    ld l, b                                       ; $5923: $68
    sub e                                         ; $5924: $93
    db $e4                                        ; $5925: $e4
    di                                            ; $5926: $f3
    rst $20                                       ; $5927: $e7
    xor l                                         ; $5928: $ad
    cp $83                                        ; $5929: $fe $83
    rst $10                                       ; $592b: $d7
    halt                                          ; $592c: $76
    jp $ede8                                      ; $592d: $c3 $e8 $ed


    ld b, c                                       ; $5930: $41
    ld b, d                                       ; $5931: $42
    db $f4                                        ; $5932: $f4
    and [hl]                                      ; $5933: $a6
    add hl, sp                                    ; $5934: $39
    ld c, c                                       ; $5935: $49
    ld a, [c]                                     ; $5936: $f2
    ld sp, hl                                     ; $5937: $f9
    di                                            ; $5938: $f3
    adc $98                                       ; $5939: $ce $98
    inc bc                                        ; $593b: $03
    ld [hl], e                                    ; $593c: $73
    cp h                                          ; $593d: $bc
    and [hl]                                      ; $593e: $a6
    ld l, c                                       ; $593f: $69
    jp c, $cfe4                                   ; $5940: $da $e4 $cf

    ld [hl], $f8                                  ; $5943: $36 $f8
    ld l, e                                       ; $5945: $6b
    ld h, [hl]                                    ; $5946: $66
    ld sp, hl                                     ; $5947: $f9
    jp c, $dc35                                   ; $5948: $da $35 $dc

    ld a, a                                       ; $594b: $7f
    sub e                                         ; $594c: $93
    db $e4                                        ; $594d: $e4
    di                                            ; $594e: $f3
    rst $20                                       ; $594f: $e7
    ld l, l                                       ; $5950: $6d
    ld h, [hl]                                    ; $5951: $66
    db $fc                                        ; $5952: $fc
    add hl, de                                    ; $5953: $19
    call z, $91d8                                 ; $5954: $cc $d8 $91
    adc [hl]                                      ; $5957: $8e
    dec b                                         ; $5958: $05
    rst $30                                       ; $5959: $f7
    ld [hl], b                                    ; $595a: $70
    xor h                                         ; $595b: $ac
    or a                                          ; $595c: $b7
    ret                                           ; $595d: $c9


    ld l, d                                       ; $595e: $6a
    ld [hl], l                                    ; $595f: $75
    ld h, a                                       ; $5960: $67
    ld sp, hl                                     ; $5961: $f9
    sbc e                                         ; $5962: $9b
    dec [hl]                                      ; $5963: $35
    ld c, l                                       ; $5964: $4d
    db $d3                                        ; $5965: $d3
    adc $f2                                       ; $5966: $ce $f2
    scf                                           ; $5968: $37
    db $eb                                        ; $5969: $eb
    and c                                         ; $596a: $a1
    db $10                                        ; $596b: $10
    xor e                                         ; $596c: $ab
    rst $38                                       ; $596d: $ff
    ldh [$b5], a                                  ; $596e: $e0 $b5
    db $dd                                        ; $5970: $dd
    jr nc, @+$7c                                  ; $5971: $30 $7a

    db $d3                                        ; $5973: $d3
    ld [hl-], a                                   ; $5974: $32
    db $fd                                        ; $5975: $fd
    cp h                                          ; $5976: $bc
    ld d, l                                       ; $5977: $55
    adc e                                         ; $5978: $8b
    push bc                                       ; $5979: $c5
    add c                                         ; $597a: $81
    ld b, h                                       ; $597b: $44
    or b                                          ; $597c: $b0
    sbc h                                         ; $597d: $9c
    sbc e                                         ; $597e: $9b
    db $fc                                        ; $597f: $fc
    ld b, l                                       ; $5980: $45
    add $a4                                       ; $5981: $c6 $a4
    add hl, sp                                    ; $5983: $39
    ret                                           ; $5984: $c9


    sbc a                                         ; $5985: $9f
    jp nc, $c9ab                                  ; $5986: $d2 $ab $c9

    ld e, a                                       ; $5989: $5f
    ld h, h                                       ; $598a: $64
    call z, $f7b9                                 ; $598b: $cc $b9 $f7
    adc a                                         ; $598e: $8f
    ld a, l                                       ; $598f: $7d
    rra                                           ; $5990: $1f
    and c                                         ; $5991: $a1
    ld e, d                                       ; $5992: $5a
    ld d, l                                       ; $5993: $55
    ld a, e                                       ; $5994: $7b

jr_035_5995:
    or a                                          ; $5995: $b7
    ld a, [$98cf]                                 ; $5996: $fa $cf $98
    inc bc                                        ; $5999: $03
    daa                                           ; $599a: $27
    jr z, jr_035_5995                             ; $599b: $28 $f8

    ldh [$a5], a                                  ; $599d: $e0 $a5
    ld a, $3d                                     ; $599f: $3e $3d
    ld l, [hl]                                    ; $59a1: $6e
    rst $10                                       ; $59a2: $d7
    sub [hl]                                      ; $59a3: $96
    jr nz, jr_035_59ef                            ; $59a4: $20 $49

    or l                                          ; $59a6: $b5
    or a                                          ; $59a7: $b7
    inc hl                                        ; $59a8: $23
    inc h                                         ; $59a9: $24
    ld d, c                                       ; $59aa: $51
    add c                                         ; $59ab: $81
    push hl                                       ; $59ac: $e5
    and [hl]                                      ; $59ad: $a6
    ld d, [hl]                                    ; $59ae: $56
    ld c, a                                       ; $59af: $4f
    ld l, h                                       ; $59b0: $6c
    or l                                          ; $59b1: $b5
    ld h, b                                       ; $59b2: $60
    sub c                                         ; $59b3: $91
    ldh [rIF], a                                  ; $59b4: $e0 $0f
    jp nc, Jump_035_431c                          ; $59b6: $d2 $1c $43

    ld sp, hl                                     ; $59b9: $f9
    dec hl                                        ; $59ba: $2b
    ld e, [hl]                                    ; $59bb: $5e
    rst $20                                       ; $59bc: $e7
    ld l, d                                       ; $59bd: $6a
    ld d, l                                       ; $59be: $55
    ld d, h                                       ; $59bf: $54
    db $fc                                        ; $59c0: $fc
    ld hl, $53f4                                  ; $59c1: $21 $f4 $53
    cp h                                          ; $59c4: $bc
    cp d                                          ; $59c5: $ba
    sbc a                                         ; $59c6: $9f
    cp a                                          ; $59c7: $bf
    adc [hl]                                      ; $59c8: $8e
    sub b                                         ; $59c9: $90
    ld b, h                                       ; $59ca: $44
    dec b                                         ; $59cb: $05
    sub [hl]                                      ; $59cc: $96
    ld c, l                                       ; $59cd: $4d
    db $db                                        ; $59ce: $db
    inc h                                         ; $59cf: $24
    ld d, l                                       ; $59d0: $55
    cp h                                          ; $59d1: $bc

Jump_035_59d2:
    jr z, jr_035_59d9                             ; $59d2: $28 $05

    inc hl                                        ; $59d4: $23
    sub h                                         ; $59d5: $94
    dec [hl]                                      ; $59d6: $35
    and d                                         ; $59d7: $a2
    and l                                         ; $59d8: $a5

jr_035_59d9:
    ld e, d                                       ; $59d9: $5a
    cp [hl]                                       ; $59da: $be

Jump_035_59db:
    ld a, [de]                                    ; $59db: $1a
    rst $00                                       ; $59dc: $c7
    ld e, e                                       ; $59dd: $5b
    ld d, h                                       ; $59de: $54
    db $fc                                        ; $59df: $fc
    ld a, c                                       ; $59e0: $79
    rst $08                                       ; $59e1: $cf
    cp l                                          ; $59e2: $bd
    ld a, e                                       ; $59e3: $7b
    or a                                          ; $59e4: $b7
    ld e, d                                       ; $59e5: $5a
    push de                                       ; $59e6: $d5
    ld e, b                                       ; $59e7: $58
    add hl, bc                                    ; $59e8: $09
    cp $20                                        ; $59e9: $fe $20
    or d                                          ; $59eb: $b2
    ld e, $9f                                     ; $59ec: $1e $9f
    ccf                                           ; $59ee: $3f

jr_035_59ef:
    ld l, a                                       ; $59ef: $6f
    rst $28                                       ; $59f0: $ef
    ld b, c                                       ; $59f1: $41
    add hl, hl                                    ; $59f2: $29
    ld b, d                                       ; $59f3: $42
    sbc d                                         ; $59f4: $9a
    inc bc                                        ; $59f5: $03
    add hl, bc                                    ; $59f6: $09
    db $fc                                        ; $59f7: $fc
    push af                                       ; $59f8: $f5
    ld [hl], $f6                                  ; $59f9: $36 $f6
    ld l, $b8                                     ; $59fb: $2e $b8
    ret z                                         ; $59fd: $c8

    rst $18                                       ; $59fe: $df
    ld a, l                                       ; $59ff: $7d
    ld l, h                                       ; $5a00: $6c
    pop af                                        ; $5a01: $f1
    sbc [hl]                                      ; $5a02: $9e
    xor e                                         ; $5a03: $ab
    ccf                                           ; $5a04: $3f
    ld h, d                                       ; $5a05: $62
    push af                                       ; $5a06: $f5
    rst $00                                       ; $5a07: $c7
    cp [hl]                                       ; $5a08: $be
    or b                                          ; $5a09: $b0
    call nc, $1db1                                ; $5a0a: $d4 $b1 $1d
    ld hl, $415f                                  ; $5a0d: $21 $5f $41
    inc bc                                        ; $5a10: $03
    ld hl, $01cd                                  ; $5a11: $21 $cd $01
    add hl, bc                                    ; $5a14: $09
    db $fc                                        ; $5a15: $fc
    push af                                       ; $5a16: $f5
    ld a, l                                       ; $5a17: $7d
    nop                                           ; $5a18: $00
    ld [hl], a                                    ; $5a19: $77
    ld l, $f3                                     ; $5a1a: $2e $f3
    rlca                                          ; $5a1c: $07
    rst $20                                       ; $5a1d: $e7
    ld a, [de]                                    ; $5a1e: $1a
    dec de                                        ; $5a1f: $1b
    ld [$ca1d], sp                                ; $5a20: $08 $1d $ca
    xor a                                         ; $5a23: $af
    dec c                                         ; $5a24: $0d
    ld d, b                                       ; $5a25: $50
    ld b, a                                       ; $5a26: $47
    sbc d                                         ; $5a27: $9a
    inc bc                                        ; $5a28: $03
    jp Jump_035_7b62                              ; $5a29: $c3 $62 $7b


    ld a, h                                       ; $5a2c: $7c
    jp c, Jump_000_38cc                           ; $5a2d: $da $cc $38

    ldh a, [rPCM34]                               ; $5a30: $f0 $77
    pop hl                                        ; $5a32: $e1
    call c, $c7fb                                 ; $5a33: $dc $fb $c7
    ld [$9d8f], a                                 ; $5a36: $ea $8f $9d
    call $c7a7                                    ; $5a39: $cd $a7 $c7
    db $ed                                        ; $5a3c: $ed
    jp c, $b0be                                   ; $5a3d: $da $be $b0

    sub b                                         ; $5a40: $90
    ld d, l                                       ; $5a41: $55
    pop af                                        ; $5a42: $f1
    ld h, a                                       ; $5a43: $67
    sub b                                         ; $5a44: $90
    and $43                                       ; $5a45: $e6 $43
    push de                                       ; $5a47: $d5
    rra                                           ; $5a48: $1f
    jp nc, $8fa4                                  ; $5a49: $d2 $a4 $8f

    dec e                                         ; $5a4c: $1d
    ld [$837e], sp                                ; $5a4d: $08 $7e $83
    ld hl, $4939                                  ; $5a50: $21 $39 $49
    rra                                           ; $5a53: $1f
    dec de                                        ; $5a54: $1b
    ld [$8a4d], sp                                ; $5a55: $08 $4d $8a
    ld bc, $47f8                                  ; $5a58: $01 $f8 $47
    sbc d                                         ; $5a5b: $9a
    inc bc                                        ; $5a5c: $03
    add hl, bc                                    ; $5a5d: $09
    db $fc                                        ; $5a5e: $fc
    dec [hl]                                      ; $5a5f: $35
    and e                                         ; $5a60: $a3
    ld e, a                                       ; $5a61: $5f
    or c                                          ; $5a62: $b1
    ld a, $37                                     ; $5a63: $3e $37
    ld hl, sp-$15                                 ; $5a65: $f8 $eb
    call $aebb                                    ; $5a67: $cd $bb $ae
    ld c, $a3                                     ; $5a6a: $0e $a3
    or c                                          ; $5a6c: $b1
    inc hl                                        ; $5a6d: $23
    db $e4                                        ; $5a6e: $e4
    dec hl                                        ; $5a6f: $2b
    ld c, b                                       ; $5a70: $48
    ld [hl], e                                    ; $5a71: $73
    ld b, e                                       ; $5a72: $43
    push de                                       ; $5a73: $d5
    ccf                                           ; $5a74: $3f
    ld d, a                                       ; $5a75: $57
    ld a, a                                       ; $5a76: $7f
    inc l                                         ; $5a77: $2c
    dec hl                                        ; $5a78: $2b
    sbc $85                                       ; $5a79: $de $85
    inc [hl]                                      ; $5a7b: $34
    rlca                                          ; $5a7c: $07
    add hl, bc                                    ; $5a7d: $09
    db $fc                                        ; $5a7e: $fc
    ld d, l                                       ; $5a7f: $55
    ld a, a                                       ; $5a80: $7f
    cp $c0                                        ; $5a81: $fe $c0
    dec [hl]                                      ; $5a83: $35
    or $08                                        ; $5a84: $f6 $08
    add hl, hl                                    ; $5a86: $29
    ld a, [c]                                     ; $5a87: $f2
    ld [hl], a                                    ; $5a88: $77
    db $ed                                        ; $5a89: $ed
    cp c                                          ; $5a8a: $b9
    jp $bbc4                                      ; $5a8b: $c3 $c4 $bb


    ld l, e                                       ; $5a8e: $6b
    ld b, h                                       ; $5a8f: $44
    db $d3                                        ; $5a90: $d3
    ld c, l                                       ; $5a91: $4d
    sbc e                                         ; $5a92: $9b
    ld h, h                                       ; $5a93: $64
    add hl, hl                                    ; $5a94: $29
    db $e3                                        ; $5a95: $e3
    rla                                           ; $5a96: $17
    ldh a, [rRP]                                  ; $5a97: $f0 $56
    ld e, e                                       ; $5a99: $5b
    sbc d                                         ; $5a9a: $9a
    and h                                         ; $5a9b: $a4
    inc b                                         ; $5a9c: $04
    xor c                                         ; $5a9d: $a9
    rst $00                                       ; $5a9e: $c7
    ld h, b                                       ; $5a9f: $60
    rst $28                                       ; $5aa0: $ef
    ld e, a                                       ; $5aa1: $5f
    ld a, [hl-]                                   ; $5aa2: $3a
    ld a, b                                       ; $5aa3: $78
    ld d, c                                       ; $5aa4: $51
    ld e, d                                       ; $5aa5: $5a
    db $fd                                        ; $5aa6: $fd
    rlca                                          ; $5aa7: $07
    xor a                                         ; $5aa8: $af
    ld c, l                                       ; $5aa9: $4d
    ld [hl], e                                    ; $5aaa: $73
    ld c, c                                       ; $5aab: $49
    rra                                           ; $5aac: $1f
    adc e                                         ; $5aad: $8b
    pop hl                                        ; $5aae: $e1
    rlca                                          ; $5aaf: $07
    db $fd                                        ; $5ab0: $fd
    xor h                                         ; $5ab1: $ac
    and l                                         ; $5ab2: $a5
    or a                                          ; $5ab3: $b7
    db $eb                                        ; $5ab4: $eb
    ld [$afe4], sp                                ; $5ab5: $08 $e4 $af
    ld e, a                                       ; $5ab8: $5f

Call_035_5ab9:
    ld h, c                                       ; $5ab9: $61
    jp c, $b161                                   ; $5aba: $da $61 $b1

    dec a                                         ; $5abd: $3d
    ld a, $6d                                     ; $5abe: $3e $6d
    ld h, [hl]                                    ; $5ac0: $66
    inc e                                         ; $5ac1: $1c
    ld hl, sp-$45                                 ; $5ac2: $f8 $bb
    ld [hl], b                                    ; $5ac4: $70
    xor $fd                                       ; $5ac5: $ee $fd
    ld h, e                                       ; $5ac7: $63
    push af                                       ; $5ac8: $f5
    rst $00                                       ; $5ac9: $c7
    ld b, $42                                     ; $5aca: $06 $42
    sbc d                                         ; $5acc: $9a
    inc bc                                        ; $5acd: $03
    jp $dd63                                      ; $5ace: $c3 $63 $dd


    and c                                         ; $5ad1: $a1
    ld d, h                                       ; $5ad2: $54
    cp [hl]                                       ; $5ad3: $be
    ld e, d                                       ; $5ad4: $5a
    sbc a                                         ; $5ad5: $9f
    adc e                                         ; $5ad6: $8b
    ldh [rTAC], a                                 ; $5ad7: $e0 $07
    dec h                                         ; $5ad9: $25
    xor e                                         ; $5ada: $ab
    inc hl                                        ; $5adb: $23
    ld d, [hl]                                    ; $5adc: $56

jr_035_5add:
    dec de                                        ; $5add: $1b
    and c                                         ; $5ade: $a1
    ld a, b                                       ; $5adf: $78
    dec [hl]                                      ; $5ae0: $35
    adc [hl]                                      ; $5ae1: $8e
    ld c, $53                                     ; $5ae2: $0e $53
    db $fc                                        ; $5ae4: $fc
    and l                                         ; $5ae5: $a5
    add hl, sp                                    ; $5ae6: $39
    jp $bd03                                      ; $5ae7: $c3 $03 $bd


    ld c, a                                       ; $5aea: $4f
    ld b, c                                       ; $5aeb: $41
    jp c, $dfa4                                   ; $5aec: $da $a4 $df

    rla                                           ; $5aef: $17
    dec bc                                        ; $5af0: $0b
    sbc $22                                       ; $5af1: $de $22
    ld hl, sp+$41                                 ; $5af3: $f8 $41
    rst $30                                       ; $5af5: $f7
    ld [c], a                                     ; $5af6: $e2
    xor a                                         ; $5af7: $af
    adc [hl]                                      ; $5af8: $8e
    or l                                          ; $5af9: $b5
    and h                                         ; $5afa: $a4
    add hl, sp                                    ; $5afb: $39
    and e                                         ; $5afc: $a3
    dec l                                         ; $5afd: $2d
    add a                                         ; $5afe: $87
    add d                                         ; $5aff: $82
    or h                                          ; $5b00: $b4
    ld c, c                                       ; $5b01: $49
    rra                                           ; $5b02: $1f
    dec de                                        ; $5b03: $1b
    ld [$acfd], sp                                ; $5b04: $08 $fd $ac
    and l                                         ; $5b07: $a5
    adc [hl]                                      ; $5b08: $8e
    dec l                                         ; $5b09: $2d
    sbc d                                         ; $5b0a: $9a
    ld [bc], a                                    ; $5b0b: $02
    cp $c3                                        ; $5b0c: $fe $c3
    jp nc, $ffd9                                  ; $5b0e: $d2 $d9 $ff

    pop hl                                        ; $5b11: $e1
    inc [hl]                                      ; $5b12: $34
    rlca                                          ; $5b13: $07
    ld c, c                                       ; $5b14: $49
    rra                                           ; $5b15: $1f
    ld a, e                                       ; $5b16: $7b
    jr z, jr_035_5add                             ; $5b17: $28 $c4

    ld a, [hl-]                                   ; $5b19: $3a
    sub $d8                                       ; $5b1a: $d6 $d8
    pop bc                                        ; $5b1c: $c1
    ld l, e                                       ; $5b1d: $6b
    xor e                                         ; $5b1e: $ab
    jp $ede8                                      ; $5b1f: $c3 $e8 $ed


    ld [$5449], sp                                ; $5b22: $08 $49 $54
    ld h, b                                       ; $5b25: $60
    reti                                          ; $5b26: $d9


    and d                                         ; $5b27: $a2
    ld h, e                                       ; $5b28: $63
    db $d3                                        ; $5b29: $d3
    inc e                                         ; $5b2a: $1c
    call z, $dceb                                 ; $5b2b: $cc $eb $dc
    ld d, l                                       ; $5b2e: $55
    db $db                                        ; $5b2f: $db
    rst $30                                       ; $5b30: $f7
    ld e, c                                       ; $5b31: $59
    scf                                           ; $5b32: $37
    ld hl, sp-$15                                 ; $5b33: $f8 $eb
    ld d, b                                       ; $5b35: $50
    add d                                         ; $5b36: $82
    cp b                                          ; $5b37: $b8
    ld [hl], h                                    ; $5b38: $74
    ret nc                                        ; $5b39: $d0

    cp e                                          ; $5b3a: $bb
    ld [de], a                                    ; $5b3b: $12
    or d                                          ; $5b3c: $b2
    ld l, c                                       ; $5b3d: $69
    sbc d                                         ; $5b3e: $9a
    inc bc                                        ; $5b3f: $03
    ld c, c                                       ; $5b40: $49
    xor d                                         ; $5b41: $aa
    ld l, h                                       ; $5b42: $6c
    jr nz, jr_035_5bb9                            ; $5b43: $20 $74

    cpl                                           ; $5b45: $2f
    cp $ba                                        ; $5b46: $fe $ba
    pop bc                                        ; $5b48: $c1
    rra                                           ; $5b49: $1f
    sub h                                         ; $5b4a: $94

Jump_035_5b4b:
    or b                                          ; $5b4b: $b0
    ld b, b                                       ; $5b4c: $40
    ld h, h                                       ; $5b4d: $64
    rst $20                                       ; $5b4e: $e7
    ld h, $7f                                     ; $5b4f: $26 $7f
    sub c                                         ; $5b51: $91
    ld sp, $1969                                  ; $5b52: $31 $69 $19
    db $fd                                        ; $5b55: $fd
    ld a, d                                       ; $5b56: $7a
    rrca                                          ; $5b57: $0f
    ld l, e                                       ; $5b58: $6b
    ld c, e                                       ; $5b59: $4b
    rst $30                                       ; $5b5a: $f7
    di                                            ; $5b5b: $f3
    ld d, a                                       ; $5b5c: $57
    dec l                                         ; $5b5d: $2d
    ld e, a                                       ; $5b5e: $5f
    adc l                                         ; $5b5f: $8d
    db $e3                                        ; $5b60: $e3
    ld c, l                                       ; $5b61: $4d

jr_035_5b62:
    ld [hl], e                                    ; $5b62: $73
    ld c, c                                       ; $5b63: $49
    rra                                           ; $5b64: $1f
    ld a, e                                       ; $5b65: $7b
    rst $38                                       ; $5b66: $ff
    jp nc, $fe0d                                  ; $5b67: $d2 $0d $fe

    and b                                         ; $5b6a: $a0
    xor h                                         ; $5b6b: $ac
    pop af                                        ; $5b6c: $f1
    ld e, d                                       ; $5b6d: $5a
    ld l, l                                       ; $5b6e: $6d
    pop bc                                        ; $5b6f: $c1
    ld h, [hl]                                    ; $5b70: $66
    ld a, [bc]                                    ; $5b71: $0a
    adc $4d                                       ; $5b72: $ce $4d
    cp $22                                        ; $5b74: $fe $22
    ld h, e                                       ; $5b76: $63
    jp nc, Jump_035_6bce                          ; $5b77: $d2 $ce $6b

    ld b, c                                       ; $5b7a: $41
    push bc                                       ; $5b7b: $c5
    ld e, a                                       ; $5b7c: $5f
    adc l                                         ; $5b7d: $8d
    db $dd                                        ; $5b7e: $dd
    adc e                                         ; $5b7f: $8b
    cp a                                          ; $5b80: $bf
    ld a, [hl-]                                   ; $5b81: $3a
    or $f8                                        ; $5b82: $f6 $f8
    inc [hl]                                      ; $5b84: $34
    call Call_035_4901                            ; $5b85: $cd $01 $49
    rra                                           ; $5b88: $1f
    dec de                                        ; $5b89: $1b
    ld [$1fd5], sp                                ; $5b8a: $08 $d5 $1f
    xor e                                         ; $5b8d: $ab
    dec h                                         ; $5b8e: $25
    nop                                           ; $5b8f: $00
    call c, $9f91                                 ; $5b90: $dc $91 $9f
    sbc [hl]                                      ; $5b93: $9e
    xor e                                         ; $5b94: $ab
    ccf                                           ; $5b95: $3f
    ld h, d                                       ; $5b96: $62
    or l                                          ; $5b97: $b5
    xor d                                         ; $5b98: $aa
    ld h, e                                       ; $5b99: $63
    ld e, l                                       ; $5b9a: $5d
    or l                                          ; $5b9b: $b5
    add h                                         ; $5b9c: $84
    dec b                                         ; $5b9d: $05
    ld [hl+], a                                   ; $5b9e: $22
    ld [hl], e                                    ; $5b9f: $73
    add a                                         ; $5ba0: $87
    ld a, [bc]                                    ; $5ba1: $0a
    db $eb                                        ; $5ba2: $eb
    add b                                         ; $5ba3: $80
    ld a, [hl]                                    ; $5ba4: $7e
    ld [hl], $33                                  ; $5ba5: $36 $33
    dec c                                         ; $5ba7: $0d
    inc de                                        ; $5ba8: $13
    ld d, $e8                                     ; $5ba9: $16 $e8
    ei                                            ; $5bab: $fb
    ld [$1369], sp                                ; $5bac: $08 $69 $13
    ld hl, sp-$15                                 ; $5baf: $f8 $eb
    db $dd                                        ; $5bb1: $dd
    and d                                         ; $5bb2: $a2
    ld e, l                                       ; $5bb3: $5d
    dec e                                         ; $5bb4: $1d
    jp nc, $ad53                                  ; $5bb5: $d2 $53 $ad

    adc l                                         ; $5bb8: $8d

jr_035_5bb9:
    dec e                                         ; $5bb9: $1d
    ld sp, hl                                     ; $5bba: $f9
    ld l, c                                       ; $5bbb: $69
    daa                                           ; $5bbc: $27
    ld l, e                                       ; $5bbd: $6b
    ld a, [c]                                     ; $5bbe: $f2
    ld d, a                                       ; $5bbf: $57
    jr c, jr_035_5b62                             ; $5bc0: $38 $a0

    or $06                                        ; $5bc2: $f6 $06
    db $fd                                        ; $5bc4: $fd
    inc l                                         ; $5bc5: $2c
    add hl, sp                                    ; $5bc6: $39
    db $fc                                        ; $5bc7: $fc
    cp h                                          ; $5bc8: $bc
    rst $20                                       ; $5bc9: $e7
    sbc $bd                                       ; $5bca: $de $bd
    ld e, e                                       ; $5bcc: $5b
    rst $00                                       ; $5bcd: $c7
    cp d                                          ; $5bce: $ba
    ld l, d                                       ; $5bcf: $6a
    add hl, bc                                    ; $5bd0: $09
    dec bc                                        ; $5bd1: $0b
    ld b, h                                       ; $5bd2: $44
    and $0e                                       ; $5bd3: $e6 $0e
    dec d                                         ; $5bd5: $15
    sub $01                                       ; $5bd6: $d6 $01
    db $fd                                        ; $5bd8: $fd
    inc l                                         ; $5bd9: $2c
    dec c                                         ; $5bda: $0d
    inc de                                        ; $5bdb: $13
    ld d, $84                                     ; $5bdc: $16 $84
    inc [hl]                                      ; $5bde: $34
    rlca                                          ; $5bdf: $07
    ld c, h                                       ; $5be0: $4c
    ccf                                           ; $5be1: $3f
    ld l, c                                       ; $5be2: $69
    and [hl]                                      ; $5be3: $a6
    ldh [$dc], a                                  ; $5be4: $e0 $dc
    db $e4                                        ; $5be6: $e4
    cpl                                           ; $5be7: $2f
    ld [hl-], a                                   ; $5be8: $32
    ld h, $6d                                     ; $5be9: $26 $6d
    sub d                                         ; $5beb: $92
    ld a, [hl+]                                   ; $5bec: $2a
    dec de                                        ; $5bed: $1b
    ld [$96d5], sp                                ; $5bee: $08 $d5 $96
    ld c, $17                                     ; $5bf1: $0e $17
    inc b                                         ; $5bf3: $04
    sbc a                                         ; $5bf4: $9f
    xor e                                         ; $5bf5: $ab
    dec l                                         ; $5bf6: $2d
    push de                                       ; $5bf7: $d5
    pop hl                                        ; $5bf8: $e1
    ld c, $55                                     ; $5bf9: $0e $55
    ld b, h                                       ; $5bfb: $44
    or $59                                        ; $5bfc: $f6 $59
    ld [hl], a                                    ; $5bfe: $77
    ldh a, [$a2]                                  ; $5bff: $f0 $a2
    inc d                                         ; $5c01: $14
    ld hl, $7571                                  ; $5c02: $21 $71 $75
    ld h, h                                       ; $5c05: $64
    or l                                          ; $5c06: $b5
    db $10                                        ; $5c07: $10
    inc h                                         ; $5c08: $24
    ld c, d                                       ; $5c09: $4a
    and c                                         ; $5c0a: $a1
    rst $28                                       ; $5c0b: $ef
    ld b, e                                       ; $5c0c: $43
    jp c, $9413                                   ; $5c0d: $da $13 $94

    ld [hl], h                                    ; $5c10: $74
    sbc b                                         ; $5c11: $98
    jp hl                                         ; $5c12: $e9


    push af                                       ; $5c13: $f5
    ld d, [hl]                                    ; $5c14: $56
    ld l, l                                       ; $5c15: $6d
    ld d, [hl]                                    ; $5c16: $56
    sub $b7                                       ; $5c17: $d6 $b7
    db $eb                                        ; $5c19: $eb
    jr c, jr_035_5c2c                             ; $5c1a: $38 $10

    xor d                                         ; $5c1c: $aa
    ld d, l                                       ; $5c1d: $55
    ret                                           ; $5c1e: $c9


    ld [hl], a                                    ; $5c1f: $77
    ld b, a                                       ; $5c20: $47
    ld c, a                                       ; $5c21: $4f
    ld hl, sp-$76                                 ; $5c22: $f8 $8a
    or l                                          ; $5c24: $b5
    db $10                                        ; $5c25: $10
    sub a                                         ; $5c26: $97
    inc e                                         ; $5c27: $1c
    and [hl]                                      ; $5c28: $a6
    sbc e                                         ; $5c29: $9b
    sub [hl]                                      ; $5c2a: $96
    pop de                                        ; $5c2b: $d1

jr_035_5c2c:
    xor a                                         ; $5c2c: $af
    ld h, h                                       ; $5c2d: $64
    push de                                       ; $5c2e: $d5
    ld d, c                                       ; $5c2f: $51
    ld [hl], d                                    ; $5c30: $72
    ld de, $bc46                                  ; $5c31: $11 $46 $bc
    and h                                         ; $5c34: $a4
    call z, Call_000_03fd                         ; $5c35: $cc $fd $03
    xor [hl]                                      ; $5c38: $ae
    ld e, d                                       ; $5c39: $5a
    ld e, l                                       ; $5c3a: $5d
    db $fc                                        ; $5c3b: $fc
    sbc c                                         ; $5c3c: $99
    dec de                                        ; $5c3d: $1b
    rst $28                                       ; $5c3e: $ef
    jr c, jr_035_5c98                             ; $5c3f: $38 $57

    ld a, a                                       ; $5c41: $7f
    call nz, $7f06                                ; $5c42: $c4 $06 $7f
    push de                                       ; $5c45: $d5
    pop bc                                        ; $5c46: $c1
    ld e, a                                       ; $5c47: $5f
    inc sp                                        ; $5c48: $33
    inc hl                                        ; $5c49: $23

Call_035_5c4a:
    ld a, a                                       ; $5c4a: $7f
    pop bc                                        ; $5c4b: $c1
    ld l, a                                       ; $5c4c: $6f
    ret nc                                        ; $5c4d: $d0

    rst $30                                       ; $5c4e: $f7
    ld e, c                                       ; $5c4f: $59
    and a                                         ; $5c50: $a7
    add hl, sp                                    ; $5c51: $39
    and e                                         ; $5c52: $a3
    db $e4                                        ; $5c53: $e4
    ld [hl+], a                                   ; $5c54: $22
    adc h                                         ; $5c55: $8c
    ld a, b                                       ; $5c56: $78
    ld c, c                                       ; $5c57: $49
    sbc c                                         ; $5c58: $99
    ei                                            ; $5c59: $fb
    rlca                                          ; $5c5a: $07
    inc a                                         ; $5c5b: $3c
    db $e3                                        ; $5c5c: $e3
    sub b                                         ; $5c5d: $90
    inc e                                         ; $5c5e: $1c
    daa                                           ; $5c5f: $27
    xor b                                         ; $5c60: $a8
    sbc $7d                                       ; $5c61: $de $7d
    ld d, h                                       ; $5c63: $54
    ld a, e                                       ; $5c64: $7b
    or a                                          ; $5c65: $b7
    ld a, b                                       ; $5c66: $78
    dec l                                         ; $5c67: $2d
    jp nz, $9d8c                                  ; $5c68: $c2 $8c $9d

    rst $20                                       ; $5c6b: $e7
    xor b                                         ; $5c6c: $a8
    ld c, $a3                                     ; $5c6d: $0e $a3
    ld a, e                                       ; $5c6f: $7b
    add d                                         ; $5c70: $82
    inc bc                                        ; $5c71: $03
    ld a, d                                       ; $5c72: $7a
    sub b                                         ; $5c73: $90
    db $10                                        ; $5c74: $10
    pop bc                                        ; $5c75: $c1
    or l                                          ; $5c76: $b5
    call nc, Call_035_7991                        ; $5c77: $d4 $91 $79
    add c                                         ; $5c7a: $81
    ld b, $7f                                     ; $5c7b: $06 $7f
    adc l                                         ; $5c7d: $8d
    dec l                                         ; $5c7e: $2d
    ld a, [hl-]                                   ; $5c7f: $3a
    sub $47                                       ; $5c80: $d6 $47
    add a                                         ; $5c82: $87
    sub c                                         ; $5c83: $91
    db $e4                                        ; $5c84: $e4
    ld a, [hl+]                                   ; $5c85: $2a
    ld a, [hl-]                                   ; $5c86: $3a
    ld [hl], $ed                                  ; $5c87: $36 $ed
    db $ec                                        ; $5c89: $ec
    cp a                                          ; $5c8a: $bf
    db $f4                                        ; $5c8b: $f4
    jp nz, $e973                                  ; $5c8c: $c2 $73 $e9

    ld d, a                                       ; $5c8f: $57
    ld b, h                                       ; $5c90: $44
    sub c                                         ; $5c91: $91
    cp a                                          ; $5c92: $bf
    ld l, e                                       ; $5c93: $6b
    db $d3                                        ; $5c94: $d3
    inc e                                         ; $5c95: $1c
    and e                                         ; $5c96: $a3
    ccf                                           ; $5c97: $3f

jr_035_5c98:
    or $1e                                        ; $5c98: $f6 $1e
    sub h                                         ; $5c9a: $94
    ld [hl+], a                                   ; $5c9b: $22
    ld d, h                                       ; $5c9c: $54
    xor e                                         ; $5c9d: $ab
    ld [hl], e                                    ; $5c9e: $73
    ld b, a                                       ; $5c9f: $47
    ld e, l                                       ; $5ca0: $5d
    nop                                           ; $5ca1: $00
    sub [hl]                                      ; $5ca2: $96
    add hl, de                                    ; $5ca3: $19
    ld [hl], e                                    ; $5ca4: $73
    add hl, bc                                    ; $5ca5: $09
    db $fc                                        ; $5ca6: $fc
    push af                                       ; $5ca7: $f5
    ld a, l                                       ; $5ca8: $7d
    sub $3d                                       ; $5ca9: $d6 $3d
    inc e                                         ; $5cab: $1c

Call_035_5cac:
    db $eb                                        ; $5cac: $eb
    ld c, $55                                     ; $5cad: $0e $55
    ld b, h                                       ; $5caf: $44
    or $59                                        ; $5cb0: $f6 $59
    scf                                           ; $5cb2: $37
    or [hl]                                       ; $5cb3: $b6
    inc hl                                        ; $5cb4: $23
    inc h                                         ; $5cb5: $24
    ld d, c                                       ; $5cb6: $51
    add c                                         ; $5cb7: $81
    push hl                                       ; $5cb8: $e5
    and [hl]                                      ; $5cb9: $a6
    ld d, [hl]                                    ; $5cba: $56
    cp e                                          ; $5cbb: $bb
    sbc a                                         ; $5cbc: $9f
    ld h, d                                       ; $5cbd: $62
    add a                                         ; $5cbe: $87
    dec bc                                        ; $5cbf: $0b
    add d                                         ; $5cc0: $82
    and l                                         ; $5cc1: $a5
    ld d, $82                                     ; $5cc2: $16 $82
    ld b, h                                       ; $5cc4: $44
    add hl, hl                                    ; $5cc5: $29
    ld d, h                                       ; $5cc6: $54
    xor l                                         ; $5cc7: $ad
    xor $28                                       ; $5cc8: $ee $28
    cp c                                          ; $5cca: $b9
    ld [$5e23], sp                                ; $5ccb: $08 $23 $5e
    ld d, d                                       ; $5cce: $52
    and $80                                       ; $5ccf: $e6 $80
    ld e, h                                       ; $5cd1: $5c
    ld a, [bc]                                    ; $5cd2: $0a
    ld a, [$f43e]                                 ; $5cd3: $fa $3e $f4
    ld [$4afe], sp                                ; $5cd6: $08 $fe $4a
    ld d, [hl]                                    ; $5cd9: $56
    ld c, l                                       ; $5cda: $4d
    ld a, b                                       ; $5cdb: $78
    db $eb                                        ; $5cdc: $eb
    ld l, l                                       ; $5cdd: $6d
    ld h, [hl]                                    ; $5cde: $66
    db $e4                                        ; $5cdf: $e4

Call_035_5ce0:
    cpl                                           ; $5ce0: $2f
    ld hl, sp+$0d                                 ; $5ce1: $f8 $0d
    adc $d5                                       ; $5ce3: $ce $d5
    rst $38                                       ; $5ce5: $ff
    ld [$3328], sp                                ; $5ce6: $08 $28 $33
    call c, $a423                                 ; $5ce9: $dc $23 $a4
    sbc a                                         ; $5cec: $9f
    ld h, d                                       ; $5ced: $62
    add a                                         ; $5cee: $87
    sbc c                                         ; $5cef: $99
    ld e, [hl]                                    ; $5cf0: $5e
    ld l, a                                       ; $5cf1: $6f
    push de                                       ; $5cf2: $d5
    ld h, [hl]                                    ; $5cf3: $66
    dec h                                         ; $5cf4: $25
    rst $18                                       ; $5cf5: $df
    dec e                                         ; $5cf6: $1d
    dec a                                         ; $5cf7: $3d
    pop hl                                        ; $5cf8: $e1
    dec hl                                        ; $5cf9: $2b
    sub $42                                       ; $5cfa: $d6 $42
    ld e, h                                       ; $5cfc: $5c
    ld [hl], d                                    ; $5cfd: $72
    sbc b                                         ; $5cfe: $98
    ld l, [hl]                                    ; $5cff: $6e
    inc sp                                        ; $5d00: $33
    or e                                          ; $5d01: $b3
    sbc $34                                       ; $5d02: $de $34
    rlca                                          ; $5d04: $07
    call z, $ef70                                 ; $5d05: $cc $70 $ef
    ld e, a                                       ; $5d08: $5f
    adc d                                         ; $5d09: $8a
    db $fc                                        ; $5d0a: $fc
    ld e, l                                       ; $5d0b: $5d
    db $db                                        ; $5d0c: $db
    jr c, jr_035_5d1d                             ; $5d0d: $38 $0e

    ld c, e                                       ; $5d0f: $4b
    rlca                                          ; $5d10: $07
    jp $64b4                                      ; $5d11: $c3 $b4 $64


    push de                                       ; $5d14: $d5
    ld c, h                                       ; $5d15: $4c
    xor [hl]                                      ; $5d16: $ae
    ld [hl], c                                    ; $5d17: $71
    ret z                                         ; $5d18: $c8

    and h                                         ; $5d19: $a4
    inc l                                         ; $5d1a: $2c
    or d                                          ; $5d1b: $b2
    or h                                          ; $5d1c: $b4

jr_035_5d1d:
    ld [hl], e                                    ; $5d1d: $73
    add hl, sp                                    ; $5d1e: $39
    ld hl, sp-$15                                 ; $5d1f: $f8 $eb
    ld de, $e3d2                                  ; $5d21: $11 $d2 $e3
    db $d3                                        ; $5d24: $d3
    ld l, d                                       ; $5d25: $6a
    rst $00                                       ; $5d26: $c7
    halt                                          ; $5d27: $76
    ld [hl], $9f                                  ; $5d28: $36 $9f
    ld e, $b7                                     ; $5d2a: $1e $b7
    ld l, e                                       ; $5d2c: $6b
    rst $08                                       ; $5d2d: $cf
    dec e                                         ; $5d2e: $1d
    ld [hl], l                                    ; $5d2f: $75
    ld bc, $d258                                  ; $5d30: $01 $58 $d2
    inc e                                         ; $5d33: $1c
    ret                                           ; $5d34: $c9


    ld h, c                                       ; $5d35: $61
    add hl, hl                                    ; $5d36: $29
    add $ea                                       ; $5d37: $c6 $ea
    ld l, d                                       ; $5d39: $6a
    rst $00                                       ; $5d3a: $c7
    cp d                                          ; $5d3b: $ba
    or e                                          ; $5d3c: $b3
    ld e, h                                       ; $5d3d: $5c
    ld [hl], d                                    ; $5d3e: $72
    sbc b                                         ; $5d3f: $98
    xor $b9                                       ; $5d40: $ee $b9
    and e                                         ; $5d42: $a3
    ld l, $00                                     ; $5d43: $2e $00
    ld c, e                                       ; $5d45: $4b
    jp c, $aece                                   ; $5d46: $da $ce $ae

    or [hl]                                       ; $5d49: $b6
    sbc a                                         ; $5d4a: $9f
    or l                                          ; $5d4b: $b5
    ld d, h                                       ; $5d4c: $54
    cp [hl]                                       ; $5d4d: $be
    jp nz, $857e                                  ; $5d4e: $c2 $7e $85

    dec a                                         ; $5d51: $3d
    inc e                                         ; $5d52: $1c
    db $eb                                        ; $5d53: $eb
    and e                                         ; $5d54: $a3
    jp Jump_035_7248                              ; $5d55: $c3 $48 $72


    and l                                         ; $5d58: $a5
    add hl, sp                                    ; $5d59: $39
    add hl, bc                                    ; $5d5a: $09
    db $fc                                        ; $5d5b: $fc
    push af                                       ; $5d5c: $f5
    ld a, l                                       ; $5d5d: $7d
    sub $fd                                       ; $5d5e: $d6 $fd
    sub h                                         ; $5d60: $94
    cp d                                          ; $5d61: $ba
    sbc c                                         ; $5d62: $99
    add hl, bc                                    ; $5d63: $09
    or l                                          ; $5d64: $b5
    jp c, $a43b                                   ; $5d65: $da $3b $a4

    add hl, bc                                    ; $5d68: $09
    db $fc                                        ; $5d69: $fc
    dec [hl]                                      ; $5d6a: $35
    ld c, l                                       ; $5d6b: $4d
    db $d3                                        ; $5d6c: $d3
    ld e, [hl]                                    ; $5d6d: $5e
    rst $28                                       ; $5d6e: $ef
    call c, Call_000_2fe4                         ; $5d6f: $dc $e4 $2f
    ld [hl-], a                                   ; $5d72: $32
    ld h, $6d                                     ; $5d73: $26 $6d
    ld [bc], a                                    ; $5d75: $02
    ld a, a                                       ; $5d76: $7f
    push de                                       ; $5d77: $d5
    sbc a                                         ; $5d78: $9f
    ccf                                           ; $5d79: $3f
    ldh a, [$b9]                                  ; $5d7a: $f0 $b9
    pop bc                                        ; $5d7c: $c1
    ld e, a                                       ; $5d7d: $5f
    rst $28                                       ; $5d7e: $ef
    adc c                                         ; $5d7f: $89
    ld [c], a                                     ; $5d80: $e2
    ld [$8770], a                                 ; $5d81: $ea $70 $87
    dec bc                                        ; $5d84: $0b
    add d                                         ; $5d85: $82
    db $d3                                        ; $5d86: $d3
    inc e                                         ; $5d87: $1c
    or e                                          ; $5d88: $b3
    dec sp                                        ; $5d89: $3b
    or $dc                                        ; $5d8a: $f6 $dc
    db $e4                                        ; $5d8c: $e4
    cpl                                           ; $5d8d: $2f
    ld [hl-], a                                   ; $5d8e: $32
    and [hl]                                      ; $5d8f: $a6
    rst $30                                       ; $5d90: $f7
    cpl                                           ; $5d91: $2f
    db $fd                                        ; $5d92: $fd
    inc d                                         ; $5d93: $14
    dec sp                                        ; $5d94: $3b
    ld e, h                                       ; $5d95: $5c
    db $10                                        ; $5d96: $10
    inc l                                         ; $5d97: $2c
    dec h                                         ; $5d98: $25
    inc l                                         ; $5d99: $2c
    db $10                                        ; $5d9a: $10
    ld e, c                                       ; $5d9b: $59
    push de                                       ; $5d9c: $d5
    ld [$fa5a], a                                 ; $5d9d: $ea $5a $fa
    ld a, $94                                     ; $5da0: $3e $94
    or l                                          ; $5da2: $b5
    jr c, jr_035_5da5                             ; $5da3: $38 $00

jr_035_5da5:
    db $eb                                        ; $5da5: $eb
    ld e, b                                       ; $5da6: $58
    sub a                                         ; $5da7: $97
    dec [hl]                                      ; $5da8: $35
    ld e, [hl]                                    ; $5da9: $5e
    xor e                                         ; $5daa: $ab
    dec l                                         ; $5dab: $2d
    xor $30                                       ; $5dac: $ee $30
    db $d3                                        ; $5dae: $d3
    db $eb                                        ; $5daf: $eb
    xor l                                         ; $5db0: $ad
    jp c, $96ac                                   ; $5db1: $da $ac $96

    rst $30                                       ; $5db4: $f7
    add hl, hl                                    ; $5db5: $29
    ld a, b                                       ; $5db6: $78
    db $d3                                        ; $5db7: $d3
    inc e                                         ; $5db8: $1c
    jp $bb7c                                      ; $5db9: $c3 $7c $bb


    adc [hl]                                      ; $5dbc: $8e
    jp $fe0d                                      ; $5dbd: $c3 $0d $fe


    ld a, [$7f15]                                 ; $5dc0: $fa $15 $7f
    cp l                                          ; $5dc3: $bd
    ld a, a                                       ; $5dc4: $7f
    inc a                                         ; $5dc5: $3c
    rst $30                                       ; $5dc6: $f7
    xor $a0                                       ; $5dc7: $ee $a0
    dec c                                         ; $5dc9: $0d
    cp $7a                                        ; $5dca: $fe $7a
    jp nz, Jump_000_01dd                          ; $5dcc: $c2 $dd $01

    ld l, $1b                                     ; $5dcf: $2e $1b
    dec sp                                        ; $5dd1: $3b
    ld h, e                                       ; $5dd2: $63
    ld c, $b3                                     ; $5dd3: $0e $b3
    xor e                                         ; $5dd5: $ab
    dec a                                         ; $5dd6: $3d
    rst $30                                       ; $5dd7: $f7
    xor $dd                                       ; $5dd8: $ee $dd
    ld l, d                                       ; $5dda: $6a
    ld d, l                                       ; $5ddb: $55
    dec e                                         ; $5ddc: $1d
    db $fc                                        ; $5ddd: $fc
    dec d                                         ; $5dde: $15
    xor a                                         ; $5ddf: $af
    ld h, [hl]                                    ; $5de0: $66
    ld a, [bc]                                    ; $5de1: $0a
    ld a, d                                       ; $5de2: $7a
    inc b                                         ; $5de3: $04
    ld [hl], h                                    ; $5de4: $74
    add h                                         ; $5de5: $84
    inc h                                         ; $5de6: $24
    ld a, [hl+]                                   ; $5de7: $2a
    or b                                          ; $5de8: $b0
    ld l, h                                       ; $5de9: $6c
    cp a                                          ; $5dea: $bf
    jp nz, Jump_035_779b                          ; $5deb: $c2 $9b $77

    ld de, $bdce                                  ; $5dee: $11 $ce $bd
    ld a, a                                       ; $5df1: $7f
    ld d, c                                       ; $5df2: $51
    ld b, a                                       ; $5df3: $47
    ld c, a                                       ; $5df4: $4f
    ld c, l                                       ; $5df5: $4d
    inc b                                         ; $5df6: $04
    inc hl                                        ; $5df7: $23
    ld d, h                                       ; $5df8: $54
    xor e                                         ; $5df9: $ab
    ld [$dbbf], a                                 ; $5dfa: $ea $bf $db
    dec c                                         ; $5dfd: $0d
    cp $a0                                        ; $5dfe: $fe $a0
    jp c, $c65b                                   ; $5e00: $da $5b $c6

    cpl                                           ; $5e03: $2f
    ldh [$9d], a                                  ; $5e04: $e0 $9d
    or c                                          ; $5e06: $b1
    ld c, c                                       ; $5e07: $49
    rra                                           ; $5e08: $1f
    ld a, e                                       ; $5e09: $7b
    daa                                           ; $5e0a: $27
    adc c                                         ; $5e0b: $89
    halt                                          ; $5e0c: $76
    ld [hl], l                                    ; $5e0d: $75
    ld c, b                                       ; $5e0e: $48
    push af                                       ; $5e0f: $f5
    push bc                                       ; $5e10: $c5
    ld e, a                                       ; $5e11: $5f
    ld sp, $b3f8                                  ; $5e12: $31 $f8 $b3
    sub h                                         ; $5e15: $94
    add hl, sp                                    ; $5e16: $39
    ldh a, [$c7]                                  ; $5e17: $f0 $c7
    jp hl                                         ; $5e19: $e9


    pop af                                        ; $5e1a: $f1
    ld sp, hl                                     ; $5e1b: $f9
    di                                            ; $5e1c: $f3
    sbc [hl]                                      ; $5e1d: $9e
    cp e                                          ; $5e1e: $bb
    pop bc                                        ; $5e1f: $c1
    rra                                           ; $5e20: $1f
    db $f4                                        ; $5e21: $f4
    cp $9f                                        ; $5e22: $fe $9f
    call z, $0398                                 ; $5e24: $cc $98 $03
    ld b, e                                       ; $5e27: $43
    ld e, c                                       ; $5e28: $59
    ld c, e                                       ; $5e29: $4b
    db $d3                                        ; $5e2a: $d3
    inc [hl]                                      ; $5e2b: $34
    call $c901                                    ; $5e2c: $cd $01 $c9
    ld d, $32                                     ; $5e2f: $16 $32
    dec c                                         ; $5e31: $0d
    cp $bc                                        ; $5e32: $fe $bc
    ld h, l                                       ; $5e34: $65
    and h                                         ; $5e35: $a4
    inc h                                         ; $5e36: $24
    ld a, [hl]                                    ; $5e37: $7e
    cp e                                          ; $5e38: $bb
    xor e                                         ; $5e39: $ab
    ld b, l                                       ; $5e3a: $45
    cp $ce                                        ; $5e3b: $fe $ce
    dec e                                         ; $5e3d: $1d
    add hl, hl                                    ; $5e3e: $29
    sbc b                                         ; $5e3f: $98
    sub [hl]                                      ; $5e40: $96
    ld d, c                                       ; $5e41: $51
    cp $66                                        ; $5e42: $fe $66
    sub [hl]                                      ; $5e44: $96
    inc [hl]                                      ; $5e45: $34
    rlca                                          ; $5e46: $07
    add hl, bc                                    ; $5e47: $09
    db $fc                                        ; $5e48: $fc
    push af                                       ; $5e49: $f5
    ld e, l                                       ; $5e4a: $5d
    inc b                                         ; $5e4b: $04
    pop hl                                        ; $5e4c: $e1
    ld [hl], e                                    ; $5e4d: $73
    add e                                         ; $5e4e: $83
    cp a                                          ; $5e4f: $bf
    or d                                          ; $5e50: $b2
    or c                                          ; $5e51: $b1
    db $dd                                        ; $5e52: $dd
    ldh [rIF], a                                  ; $5e53: $e0 $0f
    sbc d                                         ; $5e55: $9a
    add hl, sp                                    ; $5e56: $39
    di                                            ; $5e57: $f3
    ld [hl], $24                                  ; $5e58: $36 $24
    di                                            ; $5e5a: $f3
    ld [$29bb], a                                 ; $5e5b: $ea $bb $29
    ld a, a                                       ; $5e5e: $7f
    xor $08                                       ; $5e5f: $ee $08
    ld c, c                                       ; $5e61: $49
    ld d, h                                       ; $5e62: $54
    ld h, b                                       ; $5e63: $60
    jp hl                                         ; $5e64: $e9


    and a                                         ; $5e65: $a7
    call nc, $0592                                ; $5e66: $d4 $92 $05
    ld a, [c]                                     ; $5e69: $f2
    sub a                                         ; $5e6a: $97
    and $a3                                       ; $5e6b: $e6 $a3
    ld c, l                                       ; $5e6d: $4d
    ld sp, hl                                     ; $5e6e: $f9
    ld [hl], e                                    ; $5e6f: $73
    add hl, de                                    ; $5e70: $19
    push hl                                       ; $5e71: $e5
    inc hl                                        ; $5e72: $23
    ld c, e                                       ; $5e73: $4b
    ld b, d                                       ; $5e74: $42
    cp $4c                                        ; $5e75: $fe $4c
    adc e                                         ; $5e77: $8b
    rla                                           ; $5e78: $17
    and l                                         ; $5e79: $a5
    sbc $6a                                       ; $5e7a: $de $6a
    rst $28                                       ; $5e7c: $ef
    or $85                                        ; $5e7d: $f6 $85
    and l                                         ; $5e7f: $a5
    or a                                          ; $5e80: $b7
    db $eb                                        ; $5e81: $eb
    ld [$afe4], sp                                ; $5e82: $08 $e4 $af
    ld e, a                                       ; $5e85: $5f
    ld hl, $79fa                                  ; $5e86: $21 $fa $79
    ld h, a                                       ; $5e89: $67
    call z, $2301                                 ; $5e8a: $cc $01 $23
    dec e                                         ; $5e8d: $1d
    db $eb                                        ; $5e8e: $eb
    adc $71                                       ; $5e8f: $ce $71
    db $fc                                        ; $5e91: $fc
    cp [hl]                                       ; $5e92: $be
    rrca                                          ; $5e93: $0f
    push de                                       ; $5e94: $d5
    ld h, c                                       ; $5e95: $61
    ld [hl], h                                    ; $5e96: $74
    ld b, a                                       ; $5e97: $47
    ld c, b                                       ; $5e98: $48
    and d                                         ; $5e99: $a2
    ld [bc], a                                    ; $5e9a: $02
    ld c, e                                       ; $5e9b: $4b
    db $e3                                        ; $5e9c: $e3
    jr c, jr_035_5ecb                             ; $5e9d: $38 $2c

    adc l                                         ; $5e9f: $8d

jr_035_5ea0:
    xor l                                         ; $5ea0: $ad
    ld c, $97                                     ; $5ea1: $0e $97
    xor c                                         ; $5ea3: $a9
    ld b, $06                                     ; $5ea4: $06 $06
    call c, $f0cc                                 ; $5ea6: $dc $cc $f0
    scf                                           ; $5ea9: $37
    call Call_000_0901                            ; $5eaa: $cd $01 $09
    db $fc                                        ; $5ead: $fc
    dec [hl]                                      ; $5eae: $35
    and e                                         ; $5eaf: $a3
    ld e, a                                       ; $5eb0: $5f
    or c                                          ; $5eb1: $b1
    ld a, $d7                                     ; $5eb2: $3e $d7
    ret c                                         ; $5eb4: $d8

    inc l                                         ; $5eb5: $2c
    ld e, b                                       ; $5eb6: $58
    add sp, $60                                   ; $5eb7: $e8 $60
    ld e, b                                       ; $5eb9: $58
    jp z, $1f28                                   ; $5eba: $ca $28 $1f

    ld e, c                                       ; $5ebd: $59
    ld [de], a                                    ; $5ebe: $12
    ld a, [c]                                     ; $5ebf: $f2
    ld h, a                                       ; $5ec0: $67
    ld a, d                                       ; $5ec1: $7a
    ld l, [hl]                                    ; $5ec2: $6e
    ld l, h                                       ; $5ec3: $6c
    or l                                          ; $5ec4: $b5
    rst $10                                       ; $5ec5: $d7
    ld e, e                                       ; $5ec6: $5b
    inc c                                         ; $5ec7: $0c
    cp $7a                                        ; $5ec8: $fe $7a
    add d                                         ; $5eca: $82

jr_035_5ecb:
    add d                                         ; $5ecb: $82
    rrca                                          ; $5ecc: $0f
    sbc $b2                                       ; $5ecd: $de $b2
    ld h, $62                                     ; $5ecf: $26 $62
    or l                                          ; $5ed1: $b5
    rst $30                                       ; $5ed2: $f7
    call c, $5acf                                 ; $5ed3: $dc $cf $5a
    adc d                                         ; $5ed6: $8a
    pop bc                                        ; $5ed7: $c1
    sbc a                                         ; $5ed8: $9f
    and l                                         ; $5ed9: $a5

jr_035_5eda:
    ld l, h                                       ; $5eda: $6c
    ld l, h                                       ; $5edb: $6c
    add e                                         ; $5edc: $83
    cp a                                          ; $5edd: $bf
    ld e, $21                                     ; $5ede: $1e $21
    db $dd                                        ; $5ee0: $dd
    ldh [rIF], a                                  ; $5ee1: $e0 $0f
    jp nc, $091c                                  ; $5ee3: $d2 $1c $09

    db $fc                                        ; $5ee6: $fc
    sub l                                         ; $5ee7: $95
    adc l                                         ; $5ee8: $8d
    db $ed                                        ; $5ee9: $ed
    ld de, $0c52                                  ; $5eea: $11 $52 $0c
    cp $2c                                        ; $5eed: $fe $2c
    rst $20                                       ; $5eef: $e7
    ld [$588f], a                                 ; $5ef0: $ea $8f $58
    ld h, e                                       ; $5ef3: $63
    db $e3                                        ; $5ef4: $e3
    jr z, jr_035_5eda                             ; $5ef5: $28 $e3

    rla                                           ; $5ef7: $17
    ldh a, [rPCM12]                               ; $5ef8: $f0 $76
    add h                                         ; $5efa: $84
    inc h                                         ; $5efb: $24
    ld a, [hl+]                                   ; $5efc: $2a
    or b                                          ; $5efd: $b0
    inc [hl]                                      ; $5efe: $34
    dec bc                                        ; $5eff: $0b
    ld d, $d2                                     ; $5f00: $16 $d2
    inc e                                         ; $5f02: $1c
    ret                                           ; $5f03: $c9


    sbc a                                         ; $5f04: $9f
    jp nc, $dceb                                  ; $5f05: $d2 $eb $dc

    reti                                          ; $5f08: $d9


    dec a                                         ; $5f09: $3d
    jr jr_035_5ea0                                ; $5f0a: $18 $94

    ld a, [hl-]                                   ; $5f0c: $3a
    call $a301                                    ; $5f0d: $cd $01 $a3
    db $10                                        ; $5f10: $10
    add [hl]                                      ; $5f11: $86
    ld [hl], h                                    ; $5f12: $74
    cp b                                          ; $5f13: $b8
    inc d                                         ; $5f14: $14
    ld sp, hl                                     ; $5f15: $f9
    and e                                         ; $5f16: $a3
    adc c                                         ; $5f17: $89
    inc b                                         ; $5f18: $04
    and h                                         ; $5f19: $a4
    add hl, sp                                    ; $5f1a: $39
    or e                                          ; $5f1b: $b3
    dec sp                                        ; $5f1c: $3b
    or $5c                                        ; $5f1d: $f6 $5c
    ld c, e                                       ; $5f1f: $4b
    sub c                                         ; $5f20: $91
    ccf                                           ; $5f21: $3f
    sbc d                                         ; $5f22: $9a
    ld c, b                                       ; $5f23: $48
    ld b, b                                       ; $5f24: $40
    scf                                           ; $5f25: $37
    ld hl, sp-$7d                                 ; $5f26: $f8 $83
    or h                                          ; $5f28: $b4
    jp Jump_000_08a5                              ; $5f29: $c3 $a5 $08


Call_035_5f2c:
    ld a, [hl]                                    ; $5f2c: $7e
    ld d, b                                       ; $5f2d: $50
    ld a, l                                       ; $5f2e: $7d
    pop af                                        ; $5f2f: $f1
    ld d, a                                       ; $5f30: $57
    db $fd                                        ; $5f31: $fd
    xor e                                         ; $5f32: $ab
    ld d, [hl]                                    ; $5f33: $56
    rla                                           ; $5f34: $17
    jp Jump_035_7a0f                              ; $5f35: $c3 $0f $7a


    inc b                                         ; $5f38: $04
    ld a, a                                       ; $5f39: $7f
    db $fd                                        ; $5f3a: $fd
    sbc e                                         ; $5f3b: $9b
    and $49                                       ; $5f3c: $e6 $49
    rra                                           ; $5f3e: $1f
    dec de                                        ; $5f3f: $1b
    ld [$e0dd], sp                                ; $5f40: $08 $dd $e0
    rrca                                          ; $5f43: $0f
    ld a, [hl-]                                   ; $5f44: $3a
    cp e                                          ; $5f45: $bb
    rlca                                          ; $5f46: $07
    add e                                         ; $5f47: $83
    ld d, d                                       ; $5f48: $52
    sbc a                                         ; $5f49: $9f
    xor e                                         ; $5f4a: $ab
    ccf                                           ; $5f4b: $3f
    ld [hl], $10                                  ; $5f4c: $36 $10
    ld a, [hl-]                                   ; $5f4e: $3a
    ld c, d                                       ; $5f4f: $4a
    ld l, $c2                                     ; $5f50: $2e $c2

jr_035_5f52:
    adc b                                         ; $5f52: $88
    sub a                                         ; $5f53: $97
    ld [hl], h                                    ; $5f54: $74
    ld e, b                                       ; $5f55: $58
    db $ec                                        ; $5f56: $ec
    ld [c], a                                     ; $5f57: $e2
    sub b                                         ; $5f58: $90
    inc e                                         ; $5f59: $1c
    ld c, h                                       ; $5f5a: $4c
    cp $f6                                        ; $5f5b: $fe $f6
    dec bc                                        ; $5f5d: $0b
    ld a, a                                       ; $5f5e: $7f
    ld c, l                                       ; $5f5f: $4d
    db $d3                                        ; $5f60: $d3
    inc [hl]                                      ; $5f61: $34
    rlca                                          ; $5f62: $07
    call z, Call_035_528b                         ; $5f63: $cc $8b $52
    ldh a, [$f6]                                  ; $5f66: $f0 $f6
    ld e, $d2                                     ; $5f68: $1e $d2
    ld a, b                                       ; $5f6a: $78
    db $db                                        ; $5f6b: $db
    dec c                                         ; $5f6c: $0d
    cp $a0                                        ; $5f6d: $fe $a0
    xor h                                         ; $5f6f: $ac
    ld de, $fd2d                                  ; $5f70: $11 $2d $fd
    adc d                                         ; $5f73: $8a
    cp b                                          ; $5f74: $b8
    sbc e                                         ; $5f75: $9b
    rst $18                                       ; $5f76: $df
    cp h                                          ; $5f77: $bc
    inc sp                                        ; $5f78: $33
    and $09                                       ; $5f79: $e6 $09
    db $fc                                        ; $5f7b: $fc
    push af                                       ; $5f7c: $f5
    xor $18                                       ; $5f7d: $ee $18
    and a                                         ; $5f7f: $a7
    dec de                                        ; $5f80: $1b
    db $fc                                        ; $5f81: $fc
    pop bc                                        ; $5f82: $c1
    cp c                                          ; $5f83: $b9
    rla                                           ; $5f84: $17
    db $db                                        ; $5f85: $db
    db $e3                                        ; $5f86: $e3
    ld l, a                                       ; $5f87: $6f
    dec e                                         ; $5f88: $1d
    db $eb                                        ; $5f89: $eb
    dec l                                         ; $5f8a: $2d
    and e                                         ; $5f8b: $a3
    inc bc                                        ; $5f8c: $03
    and c                                         ; $5f8d: $a1
    ld e, a                                       ; $5f8e: $5f
    ld de, $f377                                  ; $5f8f: $11 $77 $f3
    sbc e                                         ; $5f92: $9b
    or a                                          ; $5f93: $b7
    inc hl                                        ; $5f94: $23
    add [hl]                                      ; $5f95: $86
    adc $3e                                       ; $5f96: $ce $3e
    ld a, e                                       ; $5f98: $7b
    jp c, $ded1                                   ; $5f99: $da $d1 $de

    xor l                                         ; $5f9c: $ad
    ld d, [hl]                                    ; $5f9d: $56
    dec e                                         ; $5f9e: $1d
    or h                                          ; $5f9f: $b4
    and b                                         ; $5fa0: $a0
    ld [c], a                                     ; $5fa1: $e2
    rrca                                          ; $5fa2: $0f
    and c                                         ; $5fa3: $a1
    pop af                                        ; $5fa4: $f1
    or [hl]                                       ; $5fa5: $b6
    ld h, h                                       ; $5fa6: $64
    ld d, l                                       ; $5fa7: $55
    db $e4                                        ; $5fa8: $e4
    adc a                                         ; $5fa9: $8f
    inc b                                         ; $5faa: $04
    ld h, b                                       ; $5fab: $60
    cp d                                          ; $5fac: $ba
    rst $20                                       ; $5fad: $e7
    ld h, [hl]                                    ; $5fae: $66
    ld [c], a                                     ; $5faf: $e2
    jr nz, jr_035_5f52                            ; $5fb0: $20 $a0

    jp c, Jump_035_6eb1                           ; $5fb2: $da $b1 $6e

    ld a, [c]                                     ; $5fb5: $f2
    ld e, a                                       ; $5fb6: $5f
    ld e, l                                       ; $5fb7: $5d
    xor l                                         ; $5fb8: $ad
    add h                                         ; $5fb9: $84
    cp a                                          ; $5fba: $bf
    add $db                                       ; $5fbb: $c6 $db

jr_035_5fbd:
    cp [hl]                                       ; $5fbd: $be
    ld e, b                                       ; $5fbe: $58
    xor l                                         ; $5fbf: $ad
    add h                                         ; $5fc0: $84
    cp a                                          ; $5fc1: $bf
    inc [hl]                                      ; $5fc2: $34
    rlca                                          ; $5fc3: $07
    ld c, h                                       ; $5fc4: $4c
    cp $f6                                        ; $5fc5: $fe $f6
    dec bc                                        ; $5fc7: $0b

Call_035_5fc8:
    ld a, a                                       ; $5fc8: $7f
    ld c, l                                       ; $5fc9: $4d
    db $d3                                        ; $5fca: $d3
    or h                                          ; $5fcb: $b4
    ld l, d                                       ; $5fcc: $6a
    ld [hl], l                                    ; $5fcd: $75
    add a                                         ; $5fce: $87
    xor a                                         ; $5fcf: $af
    halt                                          ; $5fd0: $76
    or l                                          ; $5fd1: $b5
    or c                                          ; $5fd2: $b1
    sub e                                         ; $5fd3: $93
    ld c, l                                       ; $5fd4: $4d
    sub e                                         ; $5fd5: $93
    halt                                          ; $5fd6: $76
    sub $ff                                       ; $5fd7: $d6 $ff
    db $e4                                        ; $5fd9: $e4
    xor c                                         ; $5fda: $a9
    push de                                       ; $5fdb: $d5
    ld d, $c0                                     ; $5fdc: $16 $c0
    cp [hl]                                       ; $5fde: $be
    rst $08                                       ; $5fdf: $cf
    ld a, d                                       ; $5fe0: $7a
    ld a, e                                       ; $5fe1: $7b
    rrca                                          ; $5fe2: $0f
    xor c                                         ; $5fe3: $a9
    ld e, d                                       ; $5fe4: $5a
    db $ec                                        ; $5fe5: $ec
    ld e, [hl]                                    ; $5fe6: $5e

jr_035_5fe7:
    db $fc                                        ; $5fe7: $fc
    push af                                       ; $5fe8: $f5
    and $58                                       ; $5fe9: $e6 $58
    sub a                                         ; $5feb: $97
    pop de                                        ; $5fec: $d1
    ld a, [$cdef]                                 ; $5fed: $fa $ef $cd
    ld e, e                                       ; $5ff0: $5b
    ld [hl], l                                    ; $5ff1: $75
    inc [hl]                                      ; $5ff2: $34
    ld c, l                                       ; $5ff3: $4d
    db $d3                                        ; $5ff4: $d3
    ld h, $7f                                     ; $5ff5: $26 $7f
    sub c                                         ; $5ff7: $91
    ld sp, $751d                                  ; $5ff8: $31 $1d $75
    ld bc, $8658                                  ; $5ffb: $01 $58 $86
    inc [hl]                                      ; $5ffe: $34
    add c                                         ; $5fff: $81
    cp a                                          ; $6000: $bf
    or d                                          ; $6001: $b2
    or c                                          ; $6002: $b1
    push bc                                       ; $6003: $c5
    xor e                                         ; $6004: $ab

Call_035_6005:
    add h                                         ; $6005: $84
    ld e, h                                       ; $6006: $5c
    rst $28                                       ; $6007: $ef
    ld e, h                                       ; $6008: $5c
    db $fd                                        ; $6009: $fd
    ld de, $55ab                                  ; $600a: $11 $ab $55
    ld h, e                                       ; $600d: $63
    ld a, e                                       ; $600e: $7b
    jr c, jr_035_5fe7                             ; $600f: $38 $d6

    jp nc, $f411                                  ; $6011: $d2 $11 $f4

    inc hl                                        ; $6014: $23
    cp d                                          ; $6015: $ba
    ld l, h                                       ; $6016: $6c
    jr nz, jr_035_5fbd                            ; $6017: $20 $a4

    ld c, l                                       ; $6019: $4d
    ldh [$af], a                                  ; $601a: $e0 $af
    or a                                          ; $601c: $b7
    cp a                                          ; $601d: $bf
    db $db                                        ; $601e: $db
    inc hl                                        ; $601f: $23
    ld hl, sp-$15                                 ; $6020: $f8 $eb
    ld e, [hl]                                    ; $6022: $5e
    db $fc                                        ; $6023: $fc
    dec d                                         ; $6024: $15
    db $fd                                        ; $6025: $fd
    and h                                         ; $6026: $a4
    sbc c                                         ; $6027: $99
    add d                                         ; $6028: $82
    cp $ad                                        ; $6029: $fe $ad
    halt                                          ; $602b: $76
    xor h                                         ; $602c: $ac
    or a                                          ; $602d: $b7
    di                                            ; $602e: $f3
    ld a, [hl]                                    ; $602f: $7e
    or b                                          ; $6030: $b0
    call nc, $bb12                                ; $6031: $d4 $12 $bb
    sub [hl]                                      ; $6034: $96

Call_035_6035:
    ld c, l                                       ; $6035: $4d
    ld [hl], e                                    ; $6036: $73
    ld c, c                                       ; $6037: $49
    ld a, a                                       ; $6038: $7f
    ld l, a                                       ; $6039: $6f
    ld a, $77                                     ; $603a: $3e $77
    sub h                                         ; $603c: $94
    ld e, h                                       ; $603d: $5c
    add h                                         ; $603e: $84
    ld de, $e92f                                  ; $603f: $11 $2f $e9
    or b                                          ; $6042: $b0
    ret c                                         ; $6043: $d8

    push bc                                       ; $6044: $c5
    inc [hl]                                      ; $6045: $34
    rlca                                          ; $6046: $07
    call z, Call_000_1c7f                         ; $6047: $cc $7f $1c
    and [hl]                                      ; $604a: $a6
    ld [$aad5], sp                                ; $604b: $08 $d5 $aa
    jp $ea82                                      ; $604e: $c3 $82 $ea


    db $db                                        ; $6051: $db
    rla                                           ; $6052: $17
    ldh a, [rPCM12]                               ; $6053: $f0 $76
    ldh a, [$da]                                  ; $6055: $f0 $da
    or d                                          ; $6057: $b2
    ld d, $d2                                     ; $6058: $16 $d2
    dec sp                                        ; $605a: $3b
    ret nz                                        ; $605b: $c0

    db $db                                        ; $605c: $db
    ld h, h                                       ; $605d: $64
    sbc a                                         ; $605e: $9f
    xor $ad                                       ; $605f: $ee $ad
    ld e, d                                       ; $6061: $5a
    db $dd                                        ; $6062: $dd
    inc de                                        ; $6063: $13
    cp [hl]                                       ; $6064: $be
    ld h, d                                       ; $6065: $62
    dec l                                         ; $6066: $2d
    sub [hl]                                      ; $6067: $96
    sbc l                                         ; $6068: $9d
    or c                                          ; $6069: $b1
    ld c, c                                       ; $606a: $49
    adc [hl]                                      ; $606b: $8e
    db $ed                                        ; $606c: $ed
    cp h                                          ; $606d: $bc
    rra                                           ; $606e: $1f
    inc l                                         ; $606f: $2c
    ld a, l                                       ; $6070: $7d
    rra                                           ; $6071: $1f
    adc d                                         ; $6072: $8a
    pop hl                                        ; $6073: $e1
    ld h, [hl]                                    ; $6074: $66
    add $7f                                       ; $6075: $c6 $7f
    inc e                                         ; $6077: $1c
    and [hl]                                      ; $6078: $a6
    sub b                                         ; $6079: $90
    ld [hl], $81                                  ; $607a: $36 $81
    cp a                                          ; $607c: $bf
    cp [hl]                                       ; $607d: $be
    rst $08                                       ; $607e: $cf
    cp d                                          ; $607f: $ba
    pop af                                        ; $6080: $f1
    adc [hl]                                      ; $6081: $8e
    ld a, [hl-]                                   ; $6082: $3a
    or $f8                                        ; $6083: $f6 $f8
    or h                                          ; $6085: $b4
    adc [hl]                                      ; $6086: $8e
    ld [hl], l                                    ; $6087: $75
    ld b, a                                       ; $6088: $47
    ld a, h                                       ; $6089: $7c
    ld bc, $f077                                  ; $608a: $01 $77 $f0
    jp c, Jump_000_1cce                           ; $608d: $da $ce $1c

    jp nz, $ccdd                                  ; $6090: $c2 $dd $cc

    sbc c                                         ; $6093: $99
    ld e, c                                       ; $6094: $59
    ld l, a                                       ; $6095: $6f
    jp c, $d2e1                                   ; $6096: $da $e1 $d2

    ei                                            ; $6099: $fb
    sub a                                         ; $609a: $97
    and d                                         ; $609b: $a2
    sbc a                                         ; $609c: $9f
    inc d                                         ; $609d: $14
    pop hl                                        ; $609e: $e1
    and d                                         ; $609f: $a2
    db $e4                                        ; $60a0: $e4
    ld [$5f2f], a                                 ; $60a1: $ea $2f $5f
    ld de, $4769                                  ; $60a4: $11 $69 $47
    sub e                                         ; $60a7: $93
    ld b, h                                       ; $60a8: $44
    cp e                                          ; $60a9: $bb
    rst $00                                       ; $60aa: $c7
    and a                                         ; $60ab: $a7
    call $eb2c                                    ; $60ac: $cd $2c $eb
    sbc $03                                       ; $60af: $de $03
    pop de                                        ; $60b1: $d1
    ld a, e                                       ; $60b2: $7b
    xor $fd                                       ; $60b3: $ee $fd
    ld h, e                                       ; $60b5: $63
    push af                                       ; $60b6: $f5
    ccf                                           ; $60b7: $3f
    ld [bc], a                                    ; $60b8: $02
    ld a, [hl-]                                   ; $60b9: $3a
    ldh a, [rNR11]                                ; $60ba: $f0 $11
    jp $0d02                                      ; $60bc: $c3 $02 $0d


    add h                                         ; $60bf: $84
    and [hl]                                      ; $60c0: $a6
    ld l, c                                       ; $60c1: $69
    sbc d                                         ; $60c2: $9a
    inc bc                                        ; $60c3: $03
    add hl, bc                                    ; $60c4: $09
    db $fc                                        ; $60c5: $fc
    push de                                       ; $60c6: $d5
    ld [de], a                                    ; $60c7: $12
    cp e                                          ; $60c8: $bb
    ld d, $f7                                     ; $60c9: $16 $f7
    ld [$aafe], sp                                ; $60cb: $08 $fe $aa
    cp a                                          ; $60ce: $bf
    db $fc                                        ; $60cf: $fc
    dec a                                         ; $60d0: $3d
    ld d, a                                       ; $60d1: $57
    ld a, a                                       ; $60d2: $7f
    call nz, $ea9e                                ; $60d3: $c4 $9e $ea
    db $e3                                        ; $60d6: $e3
    xor a                                         ; $60d7: $af
    ld l, [hl]                                    ; $60d8: $6e
    ld l, h                                       ; $60d9: $6c
    or l                                          ; $60da: $b5
    and l                                         ; $60db: $a5
    and e                                         ; $60dc: $a3
    ld h, e                                       ; $60dd: $63
    ld l, a                                       ; $60de: $6f
    and [hl]                                      ; $60df: $a6
    reti                                          ; $60e0: $d9


    ld b, a                                       ; $60e1: $47
    ld [hl], h                                    ; $60e2: $74
    rlca                                          ; $60e3: $07
    dec l                                         ; $60e4: $2d
    xor b                                         ; $60e5: $a8
    ld hl, sp-$7d                                 ; $60e6: $f8 $83
    cp [hl]                                       ; $60e8: $be
    rrca                                          ; $60e9: $0f
    rst $20                                       ; $60ea: $e7
    ld e, $21                                     ; $60eb: $1e $21
    push de                                       ; $60ed: $d5
    ld h, c                                       ; $60ee: $61
    ld [hl], h                                    ; $60ef: $74
    ld b, a                                       ; $60f0: $47
    ld a, h                                       ; $60f1: $7c
    ld bc, $ac97                                  ; $60f2: $01 $97 $ac
    ld a, [hl-]                                   ; $60f5: $3a
    ld l, b                                       ; $60f6: $68
    cp c                                          ; $60f7: $b9
    ld a, l                                       ; $60f8: $7d
    ld b, l                                       ; $60f9: $45
    ld a, b                                       ; $60fa: $78
    db $d3                                        ; $60fb: $d3
    inc e                                         ; $60fc: $1c
    and e                                         ; $60fd: $a3
    ccf                                           ; $60fe: $3f
    ld d, [hl]                                    ; $60ff: $56
    xor e                                         ; $6100: $ab
    ld l, [hl]                                    ; $6101: $6e
    ldh a, [rTAC]                                 ; $6102: $f0 $07
    push bc                                       ; $6104: $c5
    sbc a                                         ; $6105: $9f
    ld hl, $690c                                  ; $6106: $21 $0c $69
    rst $20                                       ; $6109: $e7
    dec c                                         ; $610a: $0d
    ld d, e                                       ; $610b: $53
    ld [$0fe0], a                                 ; $610c: $ea $e0 $0f
    ld a, d                                       ; $610f: $7a
    rst $38                                       ; $6110: $ff
    ld d, d                                       ; $6111: $52
    ld h, e                                       ; $6112: $63
    ld [hl], l                                    ; $6113: $75
    cp b                                          ; $6114: $b8
    add hl, de                                    ; $6115: $19
    ld [hl], l                                    ; $6116: $75
    ldh a, [$e7]                                  ; $6117: $f0 $e7
    adc [hl]                                      ; $6119: $8e
    ld hl, sp+$02                                 ; $611a: $f8 $02
    ld c, [hl]                                    ; $611c: $4e
    dec sp                                        ; $611d: $3b
    jp c, Jump_000_0dbb                           ; $611e: $da $bb $0d

    cp $ea                                        ; $6121: $fe $ea
    ld e, b                                       ; $6123: $58
    ld l, a                                       ; $6124: $6f
    add a                                         ; $6125: $87
    pop de                                        ; $6126: $d1
    ldh [$b7], a                                  ; $6127: $e0 $b7
    ld [$5f2f], a                                 ; $6129: $ea $2f $5f
    ld de, $5bbd                                  ; $612c: $11 $bd $5b
    ld [$6f6f], sp                                ; $612f: $08 $6f $6f
    ld h, e                                       ; $6132: $63
    rst $28                                       ; $6133: $ef
    add d                                         ; $6134: $82
    rst $08                                       ; $6135: $cf
    cp l                                          ; $6136: $bd
    adc l                                         ; $6137: $8d
    cp l                                          ; $6138: $bd
    dec bc                                        ; $6139: $0b
    dec c                                         ; $613a: $0d
    cp $aa                                        ; $613b: $fe $aa
    ld b, e                                       ; $613d: $43
    adc d                                         ; $613e: $8a
    ccf                                           ; $613f: $3f
    di                                            ; $6140: $f3
    sbc [hl]                                      ; $6141: $9e
    ld a, e                                       ; $6142: $7b
    or c                                          ; $6143: $b1
    dec [hl]                                      ; $6144: $35
    ld d, [hl]                                    ; $6145: $56
    add a                                         ; $6146: $87
    sbc e                                         ; $6147: $9b
    ld d, c                                       ; $6148: $51
    rlca                                          ; $6149: $07
    ld a, a                                       ; $614a: $7f
    xor $88                                       ; $614b: $ee $88
    cpl                                           ; $614d: $2f
    ldh [rTMA], a                                 ; $614e: $e0 $06
    ld b, d                                       ; $6150: $42
    cpl                                           ; $6151: $2f
    ld l, l                                       ; $6152: $6d
    jp hl                                         ; $6153: $e9


    ld b, $7f                                     ; $6154: $06 $7f
    sub b                                         ; $6156: $90
    and $cc                                       ; $6157: $e6 $cc
    adc e                                         ; $6159: $8b
    jp nc, $7f06                                  ; $615a: $d2 $06 $7f

    push bc                                       ; $615d: $c5
    ld [hl], b                                    ; $615e: $70
    add hl, bc                                    ; $615f: $09
    sub d                                         ; $6160: $92
    sub h                                         ; $6161: $94
    add hl, de                                    ; $6162: $19
    ld l, $6b                                     ; $6163: $2e $6b
    db $e4                                        ; $6165: $e4
    rst $28                                       ; $6166: $ef
    inc de                                        ; $6167: $13
    add h                                         ; $6168: $84
    ld [hl], a                                    ; $6169: $77
    add $1c                                       ; $616a: $c6 $1c
    jp $dd63                                      ; $616c: $c3 $63 $dd


    xor a                                         ; $616f: $af
    jr nc, jr_035_61a5                            ; $6170: $30 $33

    reti                                          ; $6172: $d9


    pop bc                                        ; $6173: $c1
    rst $18                                       ; $6174: $df
    ld a, [de]                                    ; $6175: $1a
    call c, Call_035_6d04                         ; $6176: $dc $04 $6d
    and a                                         ; $6179: $a7
    ld c, l                                       ; $617a: $4d
    ld a, [bc]                                    ; $617b: $0a
    ld [hl], a                                    ; $617c: $77
    ld d, $4b                                     ; $617d: $16 $4b
    ld a, b                                       ; $617f: $78
    srl d                                         ; $6180: $cb $3a
    adc e                                         ; $6182: $8b
    ld e, l                                       ; $6183: $5d
    ld l, a                                       ; $6184: $6f
    sbc a                                         ; $6185: $9f
    dec d                                         ; $6186: $15
    ld hl, sp+$5c                                 ; $6187: $f8 $5c
    ld l, l                                       ; $6189: $6d
    ld a, h                                       ; $618a: $7c
    sbc a                                         ; $618b: $9f
    or d                                          ; $618c: $b2
    cp l                                          ; $618d: $bd
    db $fd                                        ; $618e: $fd
    ld e, l                                       ; $618f: $5d
    add h                                         ; $6190: $84
    ld l, d                                       ; $6191: $6a
    ld d, l                                       ; $6192: $55
    ld d, c                                       ; $6193: $51
    cpl                                           ; $6194: $2f
    or d                                          ; $6195: $b2
    add $56                                       ; $6196: $c6 $56
    add a                                         ; $6198: $87
    dec sp                                        ; $6199: $3b
    ld a, [hl-]                                   ; $619a: $3a
    or $66                                        ; $619b: $f6 $66
    sbc d                                         ; $619d: $9a
    ld a, l                                       ; $619e: $7d
    ld b, h                                       ; $619f: $44
    scf                                           ; $61a0: $37
    di                                            ; $61a1: $f3
    di                                            ; $61a2: $f3
    and [hl]                                      ; $61a3: $a6
    ld h, l                                       ; $61a4: $65

jr_035_61a5:
    inc c                                         ; $61a5: $0c
    or [hl]                                       ; $61a6: $b6
    ret                                           ; $61a7: $c9


    ccf                                           ; $61a8: $3f
    sub e                                         ; $61a9: $93
    ret nc                                        ; $61aa: $d0

    push de                                       ; $61ab: $d5
    ld h, c                                       ; $61ac: $61
    db $f4                                        ; $61ad: $f4
    halt                                          ; $61ae: $76
    xor b                                         ; $61af: $a8
    jp nz, $03bb                                  ; $61b0: $c2 $bb $03

    ei                                            ; $61b3: $fb
    jp nz, $ae72                                  ; $61b4: $c2 $72 $ae

    and l                                         ; $61b7: $a5
    rst $30                                       ; $61b8: $f7
    db $10                                        ; $61b9: $10
    ld e, l                                       ; $61ba: $5d
    dec e                                         ; $61bb: $1d
    db $fc                                        ; $61bc: $fc
    sub l                                         ; $61bd: $95
    ld [hl], l                                    ; $61be: $75
    ld b, [hl]                                    ; $61bf: $46
    dec e                                         ; $61c0: $1d
    ldh [rKEY1], a                                ; $61c1: $e0 $4d
    dec sp                                        ; $61c3: $3b
    ld a, [hl-]                                   ; $61c4: $3a
    call c, $97fb                                 ; $61c5: $dc $fb $97
    xor $c5                                       ; $61c8: $ee $c5
    ld e, a                                       ; $61ca: $5f
    inc sp                                        ; $61cb: $33
    ld [$afe0], a                                 ; $61cc: $ea $e0 $af
    jp c, $9db1                                   ; $61cf: $da $b1 $9d

Jump_035_61d2:
    db $fd                                        ; $61d2: $fd
    rra                                           ; $61d3: $1f
    sbc [hl]                                      ; $61d4: $9e
    ld sp, $c907                                  ; $61d5: $31 $07 $c9
    ld e, a                                       ; $61d8: $5f
    ld h, h                                       ; $61d9: $64
    ld c, h                                       ; $61da: $4c
    ld b, a                                       ; $61db: $47
    ld e, l                                       ; $61dc: $5d
    nop                                           ; $61dd: $00
    sub [hl]                                      ; $61de: $96
    inc [hl]                                      ; $61df: $34
    rlca                                          ; $61e0: $07
    ld b, e                                       ; $61e1: $43
    ld sp, hl                                     ; $61e2: $f9
    db $eb                                        ; $61e3: $eb
    xor c                                         ; $61e4: $a9
    rst $38                                       ; $61e5: $ff
    call c, Call_000_2fe4                         ; $61e6: $dc $e4 $2f
    ld [hl-], a                                   ; $61e9: $32
    and [hl]                                      ; $61ea: $a6
    and e                                         ; $61eb: $a3
    ld l, $00                                     ; $61ec: $2e $00
    ld c, e                                       ; $61ee: $4b
    jp c, $b1e1                                   ; $61ef: $da $e1 $b1

    ld e, l                                       ; $61f2: $5d
    inc bc                                        ; $61f3: $03
    ld e, b                                       ; $61f4: $58
    ld a, [hl-]                                   ; $61f5: $3a
    xor e                                         ; $61f6: $ab
    jp c, $e7cc                                   ; $61f7: $da $cc $e7

    ld b, $7f                                     ; $61fa: $06 $7f
    ld a, l                                       ; $61fc: $7d
    sbc a                                         ; $61fd: $9f
    ld [hl], l                                    ; $61fe: $75
    inc sp                                        ; $61ff: $33
    set 2, a                                      ; $6200: $cb $d7
    xor $5e                                       ; $6202: $ee $5e
    db $fc                                        ; $6204: $fc
    push af                                       ; $6205: $f5
    ld [$bc68], sp                                ; $6206: $08 $68 $bc
    and e                                         ; $6209: $a3
    sbc c                                         ; $620a: $99
    ld [hl], c                                    ; $620b: $71
    ld b, b                                       ; $620c: $40
    ld l, $fe                                     ; $620d: $2e $fe
    cp h                                          ; $620f: $bc
    ld l, c                                       ; $6210: $69
    ld c, $c9                                     ; $6211: $0e $c9
    ccf                                           ; $6213: $3f
    sub e                                         ; $6214: $93
    ret nc                                        ; $6215: $d0

    ld b, e                                       ; $6216: $43
    sbc d                                         ; $6217: $9a
    ret nz                                        ; $6218: $c0

    ld e, a                                       ; $6219: $5f
    rst $28                                       ; $621a: $ef
    ld e, a                                       ; $621b: $5f
    sbc d                                         ; $621c: $9a
    ld e, c                                       ; $621d: $59
    cp [hl]                                       ; $621e: $be
    halt                                          ; $621f: $76
    cp a                                          ; $6220: $bf
    ld [hl+], a                                   ; $6221: $22
    xor d                                         ; $6222: $aa
    ld a, l                                       ; $6223: $7d
    ld [hl], h                                    ; $6224: $74
    or h                                          ; $6225: $b4
    or e                                          ; $6226: $b3
    sub d                                         ; $6227: $92
    ld d, l                                       ; $6228: $55
    ld [hl], l                                    ; $6229: $75
    ld c, b                                       ; $622a: $48
    sbc d                                         ; $622b: $9a
    inc bc                                        ; $622c: $03
    ret                                           ; $622d: $c9


    sbc a                                         ; $622e: $9f
    jp nc, $dceb                                  ; $622f: $d2 $eb $dc

    db $e4                                        ; $6232: $e4
    cpl                                           ; $6233: $2f
    ld [hl-], a                                   ; $6234: $32
    ld h, $2d                                     ; $6235: $26 $2d
    ld d, e                                       ; $6237: $53
    pop af                                        ; $6238: $f1
    rst $20                                       ; $6239: $e7
    xor $e7                                       ; $623a: $ee $e7
    xor a                                         ; $623c: $af
    ret                                           ; $623d: $c9


    sub a                                         ; $623e: $97
    call c, Call_000_3aa8                         ; $623f: $dc $a8 $3a
    ld b, $30                                     ; $6242: $06 $30
    dec l                                         ; $6244: $2d
    di                                            ; $6245: $f3
    and d                                         ; $6246: $a2
    or h                                          ; $6247: $b4
    ld hl, $5799                                  ; $6248: $21 $99 $57
    rst $18                                       ; $624b: $df
    xor a                                         ; $624c: $af
    cp [hl]                                       ; $624d: $be
    or b                                          ; $624e: $b0
    inc [hl]                                      ; $624f: $34
    adc [hl]                                      ; $6250: $8e
    ld [hl-], a                                   ; $6251: $32
    sbc d                                         ; $6252: $9a
    ld c, l                                       ; $6253: $4d
    ld d, h                                       ; $6254: $54
    jp c, Jump_035_6c75                           ; $6255: $da $75 $6c

    ld h, a                                       ; $6258: $67
    scf                                           ; $6259: $37
    ld b, d                                       ; $625a: $42
    inc sp                                        ; $625b: $33
    or e                                          ; $625c: $b3
    sbc $34                                       ; $625d: $de $34
    rlca                                          ; $625f: $07
    and e                                         ; $6260: $a3
    db $e4                                        ; $6261: $e4
    ld [hl+], a                                   ; $6262: $22
    adc h                                         ; $6263: $8c
    ld a, b                                       ; $6264: $78
    ld c, c                                       ; $6265: $49
    add a                                         ; $6266: $87
    push bc                                       ; $6267: $c5
    ld l, $f6                                     ; $6268: $2e $f6
    ld a, l                                       ; $626a: $7d
    add sp, $11                                   ; $626b: $e8 $11
    ld d, d                                       ; $626d: $52
    rst $00                                       ; $626e: $c7
    ld a, d                                       ; $626f: $7a
    dec sp                                        ; $6270: $3b
    ld d, h                                       ; $6271: $54
    pop hl                                        ; $6272: $e1
    db $dd                                        ; $6273: $dd

Call_035_6274:
    add c                                         ; $6274: $81
    ld l, [hl]                                    ; $6275: $6e
    and $cc                                       ; $6276: $e6 $cc
    xor h                                         ; $6278: $ac
    rst $30                                       ; $6279: $f7
    call c, $a023                                 ; $627a: $dc $23 $a0
    jp c, $8f47                                   ; $627d: $da $47 $8f

    cp a                                          ; $6280: $bf
    dec h                                         ; $6281: $25
    dec hl                                        ; $6282: $2b
    jp hl                                         ; $6283: $e9


    add sp, -$28                                  ; $6284: $e8 $d8
    sbc e                                         ; $6286: $9b
    ld l, c                                       ; $6287: $69
    or $11                                        ; $6288: $f6 $11
    db $dd                                        ; $628a: $dd
    call z, Call_035_6ff4                         ; $628b: $cc $f4 $6f
    and $ed                                       ; $628e: $e6 $ed
    db $ed                                        ; $6290: $ed
    rst $28                                       ; $6291: $ef
    and [hl]                                      ; $6292: $a6
    dec e                                         ; $6293: $1d

jr_035_6294:
    ld l, $7d                                     ; $6294: $2e $7d
    rra                                           ; $6296: $1f
    sbc d                                         ; $6297: $9a
    add hl, de                                    ; $6298: $19
    ld a, a                                       ; $6299: $7f
    ld b, $e7                                     ; $629a: $06 $e7
    ld b, $7f                                     ; $629c: $06 $7f
    push bc                                       ; $629e: $c5
    adc e                                         ; $629f: $8b
    jp nc, $dbc6                                  ; $62a0: $d2 $c6 $db

    ld [$6690], a                                 ; $62a3: $ea $90 $66
    ld h, [hl]                                    ; $62a6: $66
    cp l                                          ; $62a7: $bd
    ld l, c                                       ; $62a8: $69
    inc de                                        ; $62a9: $13
    ld hl, sp-$15                                 ; $62aa: $f8 $eb
    ld sp, $7f36                                  ; $62ac: $31 $36 $7f
    ldh [$ea], a                                  ; $62af: $e0 $ea
    ld c, e                                       ; $62b1: $4b
    and b                                         ; $62b2: $a0
    adc [hl]                                      ; $62b3: $8e
    ld [hl], l                                    ; $62b4: $75
    add a                                         ; $62b5: $87
    dec b                                         ; $62b6: $05
    push de                                       ; $62b7: $d5
    or a                                          ; $62b8: $b7
    cpl                                           ; $62b9: $2f
    ldh [$0e], a                                  ; $62ba: $e0 $0e
    ld e, [hl]                                    ; $62bc: $5e
    ld e, e                                       ; $62bd: $5b
    sub $42                                       ; $62be: $d6 $42
    ld a, d                                       ; $62c0: $7a
    rlca                                          ; $62c1: $07
    ld a, b                                       ; $62c2: $78
    sbc e                                         ; $62c3: $9b
    db $ec                                        ; $62c4: $ec
    db $d3                                        ; $62c5: $d3
    cp l                                          ; $62c6: $bd
    ld d, l                                       ; $62c7: $55
    xor e                                         ; $62c8: $ab
    ld a, e                                       ; $62c9: $7b
    jp nz, $ac57                                  ; $62ca: $c2 $57 $ac

    push bc                                       ; $62cd: $c5
    or d                                          ; $62ce: $b2
    ld a, l                                       ; $62cf: $7d
    rla                                           ; $62d0: $17
    push af                                       ; $62d1: $f5
    sbc [hl]                                      ; $62d2: $9e
    xor e                                         ; $62d3: $ab
    jp $161d                                      ; $62d4: $c3 $1d $16


    cp e                                          ; $62d7: $bb
    ret c                                         ; $62d8: $d8

    ld h, e                                       ; $62d9: $63
    db $ec                                        ; $62da: $ec
    adc h                                         ; $62db: $8c
    ld b, $7f                                     ; $62dc: $06 $7f
    sub [hl]                                      ; $62de: $96
    cp e                                          ; $62df: $bb
    inc bc                                        ; $62e0: $03
    ld e, l                                       ; $62e1: $5d
    ld b, d                                       ; $62e2: $42
    ld c, b                                       ; $62e3: $48
    rst $08                                       ; $62e4: $cf
    ld d, d                                       ; $62e5: $52
    rst $00                                       ; $62e6: $c7
    ld e, $9f                                     ; $62e7: $1e $9f
    or $70                                        ; $62e9: $f6 $70
    xor h                                         ; $62eb: $ac
    adc a                                         ; $62ec: $8f
    adc $fb                                       ; $62ed: $ce $fb
    pop bc                                        ; $62ef: $c1
    jp nc, $c8cc                                  ; $62f0: $d2 $cc $c8

    sbc a                                         ; $62f3: $9f
    rst $30                                       ; $62f4: $f7
    ld b, $7d                                     ; $62f5: $06 $7d
    rra                                           ; $62f7: $1f
    jp nc, $231c                                  ; $62f8: $d2 $1c $23

    ld c, b                                       ; $62fb: $48
    rst $00                                       ; $62fc: $c7
    ld h, c                                       ; $62fd: $61
    ld [hl], c                                    ; $62fe: $71
    adc a                                         ; $62ff: $8f
    ldh [$af], a                                  ; $6300: $e0 $af
    jr c, jr_035_6294                             ; $6302: $38 $90

    ld [$aa96], sp                                ; $6304: $08 $96 $aa
    and e                                         ; $6307: $a3

Call_035_6308:
    ld a, [hl-]                                   ; $6308: $3a
    call c, Call_035_4be4                         ; $6309: $dc $e4 $4b
    ld l, [hl]                                    ; $630c: $6e
    ld d, h                                       ; $630d: $54
    dec e                                         ; $630e: $1d
    inc bc                                        ; $630f: $03
    sbc b                                         ; $6310: $98
    or [hl]                                       ; $6311: $b6
    or e                                          ; $6312: $b3
    ld e, l                                       ; $6313: $5d
    ret c                                         ; $6314: $d8

    call z, $c60f                                 ; $6315: $cc $0f $c6
    rst $00                                       ; $6318: $c7
    ld [hl], e                                    ; $6319: $73
    sub e                                         ; $631a: $93
    cp a                                          ; $631b: $bf
    ret z                                         ; $631c: $c8

    sbc b                                         ; $631d: $98
    ld hl, $a339                                  ; $631e: $21 $39 $a3
    cp a                                          ; $6321: $bf
    add b                                         ; $6322: $80
    ei                                            ; $6323: $fb
    jp nz, $afd2                                  ; $6324: $c2 $d2 $af

    adc b                                         ; $6327: $88
    ld [$efe0], a                                 ; $6328: $ea $e0 $ef
    call c, Call_000_2fe4                         ; $632b: $dc $e4 $2f
    ld [hl-], a                                   ; $632e: $32
    ld h, $ed                                     ; $632f: $26 $ed
    jr nc, @-$05                                  ; $6331: $30 $f9

    adc d                                         ; $6333: $8a
    ccf                                           ; $6334: $3f
    add h                                         ; $6335: $84
    ld e, $c1                                     ; $6336: $1e $c1
    ld e, a                                       ; $6338: $5f
    scf                                           ; $6339: $37
    ld hl, sp-$7d                                 ; $633a: $f8 $83
    ld [hl], e                                    ; $633c: $73
    push de                                       ; $633d: $d5
    ld d, c                                       ; $633e: $51
    rst $00                                       ; $633f: $c7
    ld a, d                                       ; $6340: $7a
    db $eb                                        ; $6341: $eb
    ld e, b                                       ; $6342: $58
    ld [c], a                                     ; $6343: $e2
    di                                            ; $6344: $f3
    rst $20                                       ; $6345: $e7
    ld l, l                                       ; $6346: $6d
    ld a, [c]                                     ; $6347: $f2
    ld e, a                                       ; $6348: $5f
    ld l, l                                       ; $6349: $6d
    jp c, $b87b                                   ; $634a: $da $7b $b8

    ld a, [hl-]                                   ; $634d: $3a
    adc h                                         ; $634e: $8c
    sbc $92                                       ; $634f: $de $92
    ld d, l                                       ; $6351: $55
    adc a                                         ; $6352: $8f
    rst $08                                       ; $6353: $cf
    sbc a                                         ; $6354: $9f
    scf                                           ; $6355: $37
    call $c901                                    ; $6356: $cd $01 $c9
    sbc a                                         ; $6359: $9f
    push af                                       ; $635a: $f5
    sub [hl]                                      ; $635b: $96
    add hl, de                                    ; $635c: $19
    xor [hl]                                      ; $635d: $ae
    ld h, e                                       ; $635e: $63
    cp l                                          ; $635f: $bd
    dec e                                         ; $6360: $1d
    ld sp, hl                                     ; $6361: $f9
    ld [hl], a                                    ; $6362: $77
    sbc e                                         ; $6363: $9b
    add hl, de                                    ; $6364: $19
    db $fd                                        ; $6365: $fd
    cp h                                          ; $6366: $bc
    rst $20                                       ; $6367: $e7
    ld l, d                                       ; $6368: $6a
    ld c, e                                       ; $6369: $4b
    dec e                                         ; $636a: $1d
    db $eb                                        ; $636b: $eb
    ld c, $0b                                     ; $636c: $0e $0b
    xor d                                         ; $636e: $aa
    ld l, a                                       ; $636f: $6f
    ld e, a                                       ; $6370: $5f
    ret nz                                        ; $6371: $c0

    dec e                                         ; $6372: $1d
    cp h                                          ; $6373: $bc
    or [hl]                                       ; $6374: $b6
    xor h                                         ; $6375: $ac
    add l                                         ; $6376: $85
    db $f4                                        ; $6377: $f4
    ld c, $f0                                     ; $6378: $0e $f0
    ld [hl], $d9                                  ; $637a: $36 $d9
    and a                                         ; $637c: $a7
    ld a, e                                       ; $637d: $7b
    xor e                                         ; $637e: $ab
    ld d, [hl]                                    ; $637f: $56
    rst $30                                       ; $6380: $f7
    add h                                         ; $6381: $84
    xor a                                         ; $6382: $af
    ld e, b                                       ; $6383: $58
    adc e                                         ; $6384: $8b
    ld h, l                                       ; $6385: $65
    ld c, e                                       ; $6386: $4b
    ld d, [hl]                                    ; $6387: $56
    ld b, a                                       ; $6388: $47
    ld b, a                                       ; $6389: $47
    ld a, h                                       ; $638a: $7c
    ld b, l                                       ; $638b: $45
    db $f4                                        ; $638c: $f4
    ld l, a                                       ; $638d: $6f
    ld h, [hl]                                    ; $638e: $66
    or $02                                        ; $638f: $f6 $02
    ld l, a                                       ; $6391: $6f
    rst $18                                       ; $6392: $df
    add a                                         ; $6393: $87
    add hl, de                                    ; $6394: $19
    ld [hl], e                                    ; $6395: $73
    add hl, bc                                    ; $6396: $09
    db $fc                                        ; $6397: $fc
    dec [hl]                                      ; $6398: $35
    and e                                         ; $6399: $a3
    ld e, a                                       ; $639a: $5f
    or c                                          ; $639b: $b1
    ld a, $d7                                     ; $639c: $3e $d7
    jp nc, Jump_035_4897                          ; $639e: $d2 $97 $48

    and c                                         ; $63a1: $a1
    jr @-$02                                      ; $63a2: $18 $fc

    push af                                       ; $63a4: $f5
    ld e, c                                       ; $63a5: $59
    add c                                         ; $63a6: $81
    dec de                                        ; $63a7: $1b
    sub d                                         ; $63a8: $92
    ld a, c                                       ; $63a9: $79
    push af                                       ; $63aa: $f5
    db $fd                                        ; $63ab: $fd
    ld l, d                                       ; $63ac: $6a
    ld l, h                                       ; $63ad: $6c
    or l                                          ; $63ae: $b5
    and l                                         ; $63af: $a5
    or e                                          ; $63b0: $b3
    daa                                           ; $63b1: $27
    ld a, $77                                     ; $63b2: $3e $77
    ldh a, [$da]                                  ; $63b4: $f0 $da
    ld [hl-], a                                   ; $63b6: $32
    ld c, d                                       ; $63b7: $4a
    ld l, h                                       ; $63b8: $6c
    halt                                          ; $63b9: $76
    ld bc, $bf60                                  ; $63ba: $01 $60 $bf
    ld [hl+], a                                   ; $63bd: $22
    jp nc, $b31c                                  ; $63be: $d2 $1c $b3

    dec sp                                        ; $63c1: $3b
    or $dc                                        ; $63c2: $f6 $dc
    rst $30                                       ; $63c4: $f7
    ld e, c                                       ; $63c5: $59
    scf                                           ; $63c6: $37
    ld hl, sp-$15                                 ; $63c7: $f8 $eb
    ld b, $7f                                     ; $63c9: $06 $7f
    sub b                                         ; $63cb: $90
    and $b3                                       ; $63cc: $e6 $b3
    dec sp                                        ; $63ce: $3b
    or $5c                                        ; $63cf: $f6 $5c
    db $ed                                        ; $63d1: $ed
    and e                                         ; $63d2: $a3
    ld l, h                                       ; $63d3: $6c
    ld l, h                                       ; $63d4: $6c
    add e                                         ; $63d5: $83
    cp a                                          ; $63d6: $bf
    xor $c5                                       ; $63d7: $ee $c5
    ld e, a                                       ; $63d9: $5f
    scf                                           ; $63da: $37

Jump_035_63db:
    ld e, h                                       ; $63db: $5c
    sub $99                                       ; $63dc: $d6 $99
    or e                                          ; $63de: $b3
    dec [hl]                                      ; $63df: $35
    and h                                         ; $63e0: $a4
    add hl, sp                                    ; $63e1: $39
    add hl, bc                                    ; $63e2: $09
    db $fc                                        ; $63e3: $fc
    dec d                                         ; $63e4: $15
    db $fd                                        ; $63e5: $fd
    call c, Call_000_30c1                         ; $63e6: $dc $c1 $30
    ld [hl], l                                    ; $63e9: $75
    ld h, a                                       ; $63ea: $67
    or e                                          ; $63eb: $b3
    ld [bc], a                                    ; $63ec: $02
    sbc a                                         ; $63ed: $9f
    xor e                                         ; $63ee: $ab
    jp $161d                                      ; $63ef: $c3 $1d $16


    ld d, h                                       ; $63f2: $54
    rst $18                                       ; $63f3: $df
    cp [hl]                                       ; $63f4: $be
    add b                                         ; $63f5: $80
    or a                                          ; $63f6: $b7
    add e                                         ; $63f7: $83
    rst $10                                       ; $63f8: $d7
    sub [hl]                                      ; $63f9: $96
    or l                                          ; $63fa: $b5
    sub b                                         ; $63fb: $90
    sbc $01                                       ; $63fc: $de $01
    sbc $26                                       ; $63fe: $de $26
    ei                                            ; $6400: $fb
    ld [hl], h                                    ; $6401: $74
    ld l, a                                       ; $6402: $6f
    push de                                       ; $6403: $d5
    ld [$f09e], a                                 ; $6404: $ea $9e $f0
    dec d                                         ; $6407: $15
    ld l, e                                       ; $6408: $6b
    or c                                          ; $6409: $b1
    ld l, h                                       ; $640a: $6c
    rlca                                          ; $640b: $07
    dec l                                         ; $640c: $2d
    or a                                          ; $640d: $b7
    xor a                                         ; $640e: $af
    ld [$ef6f], sp                                ; $640f: $08 $6f $ef
    rla                                           ; $6412: $17
    and l                                         ; $6413: $a5
    sbc $34                                       ; $6414: $de $34
    rlca                                          ; $6416: $07
    ld b, e                                       ; $6417: $43
    dec d                                         ; $6418: $15
    ld d, c                                       ; $6419: $51
    cp h                                          ; $641a: $bc
    ld a, d                                       ; $641b: $7a
    rst $38                                       ; $641c: $ff
    ret c                                         ; $641d: $d8

    rst $08                                       ; $641e: $cf
    rra                                           ; $641f: $1f
    cp b                                          ; $6420: $b8
    pop bc                                        ; $6421: $c1
    ld e, a                                       ; $6422: $5f
    scf                                           ; $6423: $37
    ld hl, sp-$7d                                 ; $6424: $f8 $83
    inc [hl]                                      ; $6426: $34
    rlca                                          ; $6427: $07
    or e                                          ; $6428: $b3
    dec sp                                        ; $6429: $3b
    or $5c                                        ; $642a: $f6 $5c
    ld h, e                                       ; $642c: $63
    ld l, a                                       ; $642d: $6f
    ld a, a                                       ; $642e: $7f
    or a                                          ; $642f: $b7
    sbc a                                         ; $6430: $9f
    or l                                          ; $6431: $b5
    db $f4                                        ; $6432: $f4
    dec hl                                        ; $6433: $2b
    cp $8a                                        ; $6434: $fe $8a
    adc [hl]                                      ; $6436: $8e
    dec a                                         ; $6437: $3d
    ld d, a                                       ; $6438: $57
    ld a, a                                       ; $6439: $7f
    call nz, $7f06                                ; $643a: $c4 $06 $7f
    adc l                                         ; $643d: $8d
    or a                                          ; $643e: $b7
    ld [hl], l                                    ; $643f: $75
    inc l                                         ; $6440: $2c
    pop af                                        ; $6441: $f1
    ld sp, hl                                     ; $6442: $f9
    db $eb                                        ; $6443: $eb
    ld b, $7f                                     ; $6444: $06 $7f
    ld d, b                                       ; $6446: $50
    sub $87                                       ; $6447: $d6 $87
    push hl                                       ; $6449: $e5
    ld b, $7d                                     ; $644a: $06 $7d
    sbc a                                         ; $644c: $9f
    ld [hl], l                                    ; $644d: $75
    sbc d                                         ; $644e: $9a
    inc bc                                        ; $644f: $03
    add hl, bc                                    ; $6450: $09
    db $fc                                        ; $6451: $fc
    dec [hl]                                      ; $6452: $35
    and e                                         ; $6453: $a3
    ld e, a                                       ; $6454: $5f
    or c                                          ; $6455: $b1
    ld a, $37                                     ; $6456: $3e $37
    ld hl, sp-$15                                 ; $6458: $f8 $eb
    ei                                            ; $645a: $fb
    xor h                                         ; $645b: $ac
    adc e                                         ; $645c: $8b
    rla                                           ; $645d: $17
    push hl                                       ; $645e: $e5
    xor a                                         ; $645f: $af
    adc [hl]                                      ; $6460: $8e
    push af                                       ; $6461: $f5
    halt                                          ; $6462: $76
    db $e4                                        ; $6463: $e4
    rst $18                                       ; $6464: $df
    ld l, l                                       ; $6465: $6d
    ld l, h                                       ; $6466: $6c
    or l                                          ; $6467: $b5
    and l                                         ; $6468: $a5
    or e                                          ; $6469: $b3
    daa                                           ; $646a: $27
    ld a, $57                                     ; $646b: $3e $57
    ld e, e                                       ; $646d: $5b
    ld a, [hl-]                                   ; $646e: $3a
    db $ec                                        ; $646f: $ec
    rst $28                                       ; $6470: $ef
    xor l                                         ; $6471: $ad
    sbc c                                         ; $6472: $99
    pop de                                        ; $6473: $d1
    rst $08                                       ; $6474: $cf
    sbc e                                         ; $6475: $9b
    and $09                                       ; $6476: $e6 $09
    inc sp                                        ; $6478: $33
    daa                                           ; $6479: $27
    rst $30                                       ; $647a: $f7
    ld a, l                                       ; $647b: $7d
    sub $75                                       ; $647c: $d6 $75
    xor h                                         ; $647e: $ac
    dec sp                                        ; $647f: $3b

jr_035_6480:
    inc l                                         ; $6480: $2c
    xor b                                         ; $6481: $a8
    cp [hl]                                       ; $6482: $be
    ld a, l                                       ; $6483: $7d
    ld bc, $f077                                  ; $6484: $01 $77 $f0
    jp c, $16b2                                   ; $6487: $da $b2 $16

    jp nc, $c03b                                  ; $648a: $d2 $3b $c0

    db $db                                        ; $648d: $db
    ld h, h                                       ; $648e: $64
    sbc a                                         ; $648f: $9f
    xor $ad                                       ; $6490: $ee $ad
    ld e, d                                       ; $6492: $5a
    db $dd                                        ; $6493: $dd
    inc de                                        ; $6494: $13
    cp [hl]                                       ; $6495: $be
    ld h, d                                       ; $6496: $62
    dec l                                         ; $6497: $2d
    sub [hl]                                      ; $6498: $96
    dec l                                         ; $6499: $2d
    ld e, c                                       ; $649a: $59
    ld [hl], l                                    ; $649b: $75
    ret nc                                        ; $649c: $d0

    ld [hl], d                                    ; $649d: $72
    ei                                            ; $649e: $fb
    adc d                                         ; $649f: $8a
    ldh a, [$a6]                                  ; $64a0: $f0 $a6
    ld h, l                                       ; $64a2: $65
    add [hl]                                      ; $64a3: $86
    dec de                                        ; $64a4: $1b
    ld [$d53d], sp                                ; $64a5: $08 $3d $d5
    ld a, [$afe2]                                 ; $64a8: $fa $e2 $af
    or c                                          ; $64ab: $b1
    dec a                                         ; $64ac: $3d
    inc e                                         ; $64ad: $1c
    db $eb                                        ; $64ae: $eb
    and e                                         ; $64af: $a3
    di                                            ; $64b0: $f3
    ld e, d                                       ; $64b1: $5a
    ld l, b                                       ; $64b2: $68
    jr jr_035_6480                                ; $64b3: $18 $cb

    ld a, [hl-]                                   ; $64b5: $3a
    jp z, $b128                                   ; $64b6: $ca $28 $b1

    reti                                          ; $64b9: $d9


    dec b                                         ; $64ba: $05
    add b                                         ; $64bb: $80
    ld l, c                                       ; $64bc: $69
    ld b, a                                       ; $64bd: $47
    ld a, e                                       ; $64be: $7b
    or a                                          ; $64bf: $b7
    call z, Call_000_3170                         ; $64c0: $cc $70 $31
    ld e, h                                       ; $64c3: $5c
    inc [hl]                                      ; $64c4: $34
    ld h, l                                       ; $64c5: $65
    dec l                                         ; $64c6: $2d
    db $fd                                        ; $64c7: $fd
    db $ec                                        ; $64c8: $ec
    cp e                                          ; $64c9: $bb
    xor b                                         ; $64ca: $a8
    rst $30                                       ; $64cb: $f7
    ld e, h                                       ; $64cc: $5c
    inc [hl]                                      ; $64cd: $34
    sub b                                         ; $64ce: $90
    db $dd                                        ; $64cf: $dd
    ldh [$af], a                                  ; $64d0: $e0 $af
    jp c, Jump_035_51db                           ; $64d2: $da $db $51

    ld [c], a                                     ; $64d5: $e2
    ret nz                                        ; $64d6: $c0

    ld c, $5e                                     ; $64d7: $0e $5e
    ld e, e                                       ; $64d9: $5b
    rst $00                                       ; $64da: $c7
    ld a, [$30e8]                                 ; $64db: $fa $e8 $30
    sub e                                         ; $64de: $93
    xor a                                         ; $64df: $af
    cpl                                           ; $64e0: $2f
    db $fd                                        ; $64e1: $fd
    adc d                                         ; $64e2: $8a
    add sp, $64                                   ; $64e3: $e8 $64
    sub e                                         ; $64e5: $93
    sub [hl]                                      ; $64e6: $96
    add hl, de                                    ; $64e7: $19
    db $fc                                        ; $64e8: $fc
    ld h, [hl]                                    ; $64e9: $66
    jp c, Jump_035_5167                           ; $64ea: $da $67 $51

    dec bc                                        ; $64ed: $0b
    sub [hl]                                      ; $64ee: $96
    inc [hl]                                      ; $64ef: $34
    rlca                                          ; $64f0: $07
    ld b, e                                       ; $64f1: $43
    reti                                          ; $64f2: $d9


    call z, $e7c7                                 ; $64f3: $cc $c7 $e7
    rrca                                          ; $64f6: $0f
    jp nc, Jump_035_4c1c                          ; $64f7: $d2 $1c $4c

    ccf                                           ; $64fa: $3f
    ld l, c                                       ; $64fb: $69

jr_035_64fc:
    and [hl]                                      ; $64fc: $a6
    jr nz, jr_035_656c                            ; $64fd: $20 $6d

    jp nc, Jump_035_6ddf                          ; $64ff: $d2 $df $6d

    and $e7                                       ; $6502: $e6 $e7
    db $ed                                        ; $6504: $ed
    dec a                                         ; $6505: $3d
    and h                                         ; $6506: $a4
    xor e                                         ; $6507: $ab
    or [hl]                                       ; $6508: $b6
    ld h, h                                       ; $6509: $64
    ld d, l                                       ; $650a: $55
    ld b, [hl]                                    ; $650b: $46
    adc c                                         ; $650c: $89
    call Call_000_002e                            ; $650d: $cd $2e $00
    xor h                                         ; $6510: $ac
    ld e, d                                       ; $6511: $5a
    db $dd                                        ; $6512: $dd
    ldh [$af], a                                  ; $6513: $e0 $af
    ld a, b                                       ; $6515: $78
    ld c, c                                       ; $6516: $49
    and $ea                                       ; $6517: $e6 $ea
    ld c, a                                       ; $6519: $4f
    sub b                                         ; $651a: $90
    db $e4                                        ; $651b: $e4
    ld e, h                                       ; $651c: $5c
    db $fd                                        ; $651d: $fd
    ld de, $0ccb                                  ; $651e: $11 $cb $0c
    rst $30                                       ; $6521: $f7
    inc b                                         ; $6522: $04
    sub l                                         ; $6523: $95
    db $fd                                        ; $6524: $fd
    call $564a                                    ; $6525: $cd $4a $56
    dec a                                         ; $6528: $3d
    inc e                                         ; $6529: $1c
    db $eb                                        ; $652a: $eb
    and e                                         ; $652b: $a3
    di                                            ; $652c: $f3
    ld e, d                                       ; $652d: $5a
    ld l, b                                       ; $652e: $68
    jr jr_035_64fc                                ; $652f: $18 $cb

    ld a, [$1d76]                                 ; $6531: $fa $76 $1d
    add a                                         ; $6534: $87
    scf                                           ; $6535: $37
    call $c301                                    ; $6536: $cd $01 $c3
    or c                                          ; $6539: $b1
    and b                                         ; $653a: $a0
    and b                                         ; $653b: $a0
    ld b, a                                       ; $653c: $47
    ld c, b                                       ; $653d: $48
    ld h, a                                       ; $653e: $67
    ld [hl], e                                    ; $653f: $73
    add sp, $73                                   ; $6540: $e8 $73
    ccf                                           ; $6542: $3f
    ld l, e                                       ; $6543: $6b
    ld l, c                                       ; $6544: $69
    ldh a, [$d7]                                  ; $6545: $f0 $d7
    rst $30                                       ; $6547: $f7
    ld e, c                                       ; $6548: $59
    ld [hl], a                                    ; $6549: $77
    add e                                         ; $654a: $83
    ccf                                           ; $654b: $3f
    jr z, jr_035_65ac                             ; $654c: $28 $5e

    dec e                                         ; $654e: $1d
    inc c                                         ; $654f: $0c
    db $d3                                        ; $6550: $d3
    ld [hl-], a                                   ; $6551: $32
    sbc d                                         ; $6552: $9a
    ld [$0734], a                                 ; $6553: $ea $34 $07
    ld c, c                                       ; $6556: $49
    rra                                           ; $6557: $1f
    dec de                                        ; $6558: $1b
    ld [$fe45], sp                                ; $6559: $08 $45 $fe
    cp [hl]                                       ; $655c: $be
    halt                                          ; $655d: $76
    jp c, $d711                                   ; $655e: $da $11 $d7

    ld [hl], c                                    ; $6561: $71
    ld a, b                                       ; $6562: $78
    rrc h                                         ; $6563: $cb $0c
    rst $10                                       ; $6565: $d7
    or c                                          ; $6566: $b1
    call nz, $afe7                                ; $6567: $c4 $e7 $af
    ld h, h                                       ; $656a: $64
    dec h                                         ; $656b: $25

jr_035_656c:
    inc h                                         ; $656c: $24
    ld a, [hl]                                    ; $656d: $7e
    dec sp                                        ; $656e: $3b
    rst $30                                       ; $656f: $f7
    xor $dd                                       ; $6570: $ee $dd
    ld [hl-], a                                   ; $6572: $32
    jp $bccd                                      ; $6573: $c3 $cd $bc


    ld a, [hl+]                                   ; $6576: $2a
    dec hl                                        ; $6577: $2b
    and e                                         ; $6578: $a3
    xor c                                         ; $6579: $a9
    xor $fb                                       ; $657a: $ee $fb
    xor h                                         ; $657c: $ac
    scf                                           ; $657d: $37
    ld l, l                                       ; $657e: $6d
    ld [bc], a                                    ; $657f: $02
    ld a, a                                       ; $6580: $7f
    cp l                                          ; $6581: $bd
    ld e, e                                       ; $6582: $5b
    or h                                          ; $6583: $b4
    ei                                            ; $6584: $fb
    jp nz, Jump_035_7452                          ; $6585: $c2 $52 $74

    ld l, h                                       ; $6588: $6c
    sbc d                                         ; $6589: $9a
    inc bc                                        ; $658a: $03
    ld c, c                                       ; $658b: $49
    pop hl                                        ; $658c: $e1
    adc [hl]                                      ; $658d: $8e
    ld hl, sp+$02                                 ; $658e: $f8 $02
    xor $ed                                       ; $6590: $ee $ed
    ld b, d                                       ; $6592: $42
    jr nc, jr_035_6609                            ; $6593: $30 $74

    or d                                          ; $6595: $b2
    ld c, c                                       ; $6596: $49
    rrc h                                         ; $6597: $cb $0c
    ld a, [hl]                                    ; $6599: $7e
    inc sp                                        ; $659a: $33
    dec a                                         ; $659b: $3d
    rst $30                                       ; $659c: $f7
    or e                                          ; $659d: $b3
    sub [hl]                                      ; $659e: $96
    ld b, $7f                                     ; $659f: $06 $7f
    ld a, l                                       ; $65a1: $7d
    sbc a                                         ; $65a2: $9f
    ld [hl], l                                    ; $65a3: $75
    scf                                           ; $65a4: $37
    ld hl, sp-$7d                                 ; $65a5: $f8 $83
    ld [c], a                                     ; $65a7: $e2
    push de                                       ; $65a8: $d5
    pop bc                                        ; $65a9: $c1
    jr nc, @+$4f                                  ; $65aa: $30 $4d

jr_035_65ac:
    db $db                                        ; $65ac: $db
    ld de, $177f                                  ; $65ad: $11 $7f $17
    and c                                         ; $65b0: $a1
    ld e, d                                       ; $65b1: $5a
    push af                                       ; $65b2: $f5
    ld [$64e9], sp                                ; $65b3: $08 $e9 $64
    sub e                                         ; $65b6: $93
    sub [hl]                                      ; $65b7: $96
    add hl, de                                    ; $65b8: $19
    db $fc                                        ; $65b9: $fc
    ld h, [hl]                                    ; $65ba: $66

Jump_035_65bb:
    jp c, $accc                                   ; $65bb: $da $cc $ac

    ld [hl], a                                    ; $65be: $77
    add $1c                                       ; $65bf: $c6 $1c
    or e                                          ; $65c1: $b3
    cp $34                                        ; $65c2: $fe $34
    rlca                                          ; $65c4: $07
    and e                                         ; $65c5: $a3
    jp $fdbd                                      ; $65c6: $c3 $bd $fd


    db $dd                                        ; $65c9: $dd
    ld b, $7f                                     ; $65ca: $06 $7f

Call_035_65cc:
    ld c, l                                       ; $65cc: $4d
    ld a, b                                       ; $65cd: $78
    db $eb                                        ; $65ce: $eb
    db $ed                                        ; $65cf: $ed
    inc sp                                        ; $65d0: $33
    dec h                                         ; $65d1: $25
    cp h                                          ; $65d2: $bc
    inc sp                                        ; $65d3: $33
    and $b3                                       ; $65d4: $e6 $b3
    sub b                                         ; $65d6: $90
    sbc [hl]                                      ; $65d7: $9e
    ld a, b                                       ; $65d8: $78
    rrc h                                         ; $65d9: $cb $0c
    ld [hl], a                                    ; $65db: $77
    and h                                         ; $65dc: $a4
    and h                                         ; $65dd: $a4
    dec e                                         ; $65de: $1d
    ld [hl], l                                    ; $65df: $75
    ld bc, $4a58                                  ; $65e0: $01 $58 $4a
    ld d, [hl]                                    ; $65e3: $56
    dec a                                         ; $65e4: $3d
    inc e                                         ; $65e5: $1c
    db $eb                                        ; $65e6: $eb
    and e                                         ; $65e7: $a3
    di                                            ; $65e8: $f3
    ld e, d                                       ; $65e9: $5a
    ld l, b                                       ; $65ea: $68
    jr jr_035_6668                                ; $65eb: $18 $7b

    inc b                                         ; $65ed: $04
    ld d, h                                       ; $65ee: $54
    ld e, e                                       ; $65ef: $5b
    ld a, [hl-]                                   ; $65f0: $3a
    cp e                                          ; $65f1: $bb
    ld a, [hl-]                                   ; $65f2: $3a
    ld c, $4b                                     ; $65f3: $0e $4b
    and a                                         ; $65f5: $a7
    sbc e                                         ; $65f6: $9b
    ld l, [hl]                                    ; $65f7: $6e
    jp c, $09b4                                   ; $65f8: $da $b4 $09

    db $fc                                        ; $65fb: $fc
    push de                                       ; $65fc: $d5
    ld [bc], a                                    ; $65fd: $02
    ld c, $ea                                     ; $65fe: $0e $ea
    add $3b                                       ; $6600: $c6 $3b
    xor d                                         ; $6602: $aa
    jp Jump_000_2e1d                              ; $6603: $c3 $1d $2e


    db $f4                                        ; $6606: $f4
    dec hl                                        ; $6607: $2b
    halt                                          ; $6608: $76

jr_035_6609:
    inc bc                                        ; $6609: $03
    rst $08                                       ; $660a: $cf
    ld [hl], l                                    ; $660b: $75
    xor h                                         ; $660c: $ac
    dec sp                                        ; $660d: $3b
    inc l                                         ; $660e: $2c
    xor b                                         ; $660f: $a8
    cp [hl]                                       ; $6610: $be
    ld a, l                                       ; $6611: $7d
    ld bc, $08f7                                  ; $6612: $01 $f7 $08
    jr z, jr_035_6682                             ; $6615: $28 $6b

    ld hl, $03bd                                  ; $6617: $21 $bd $03
    cp h                                          ; $661a: $bc
    ld c, l                                       ; $661b: $4d
    or $e9                                        ; $661c: $f6 $e9
    sbc $aa                                       ; $661e: $de $aa
    push de                                       ; $6620: $d5
    dec a                                         ; $6621: $3d
    pop hl                                        ; $6622: $e1
    dec hl                                        ; $6623: $2b
    sub $62                                       ; $6624: $d6 $62
    reti                                          ; $6626: $d9


    ld a, [hl]                                    ; $6627: $7e
    add l                                         ; $6628: $85
    dec a                                         ; $6629: $3d
    inc e                                         ; $662a: $1c
    db $eb                                        ; $662b: $eb
    and e                                         ; $662c: $a3
    di                                            ; $662d: $f3
    ld e, d                                       ; $662e: $5a
    ld l, b                                       ; $662f: $68
    jr jr_035_667d                                ; $6630: $18 $4b

    ld d, [hl]                                    ; $6632: $56
    ld a, l                                       ; $6633: $7d
    rla                                           ; $6634: $17
    push af                                       ; $6635: $f5
    and [hl]                                      ; $6636: $a6
    add hl, sp                                    ; $6637: $39
    inc hl                                        ; $6638: $23
    add $de                                       ; $6639: $c6 $de
    dec b                                         ; $663b: $05
    scf                                           ; $663c: $37
    ld hl, sp+$2b                                 ; $663d: $f8 $2b
    dec de                                        ; $663f: $1b
    nop                                           ; $6640: $00
    ld l, [hl]                                    ; $6641: $6e
    jp nz, Jump_035_6f13                          ; $6642: $c2 $13 $6f

    sbc c                                         ; $6645: $99
    db $fc                                        ; $6646: $fc
    ld d, c                                       ; $6647: $51
    ld [de], a                                    ; $6648: $12
    and d                                         ; $6649: $a2
    ld l, c                                       ; $664a: $69
    pop de                                        ; $664b: $d1
    rst $08                                       ; $664c: $cf
    ld a, e                                       ; $664d: $7b
    ld l, $33                                     ; $664e: $2e $33
    ld h, h                                       ; $6650: $64
    add $1c                                       ; $6651: $c6 $1c
    or e                                          ; $6653: $b3
    cp $73                                        ; $6654: $fe $73
    ld e, a                                       ; $6656: $5f
    ld e, b                                       ; $6657: $58
    ld a, [de]                                    ; $6658: $1a
    ld [$a4b5], sp                                ; $6659: $08 $b5 $a4
    dec e                                         ; $665c: $1d

jr_035_665d:
    add hl, hl                                    ; $665d: $29
    ld l, c                                       ; $665e: $69
    ld b, a                                       ; $665f: $47
    ld e, l                                       ; $6660: $5d
    nop                                           ; $6661: $00
    sub [hl]                                      ; $6662: $96
    sbc $43                                       ; $6663: $de $43
    ld [hl], h                                    ; $6665: $74
    xor a                                         ; $6666: $af
    or a                                          ; $6667: $b7

jr_035_6668:
    xor $11                                       ; $6668: $ee $11
    db $fc                                        ; $666a: $fc
    dec [hl]                                      ; $666b: $35
    di                                            ; $666c: $f3
    di                                            ; $666d: $f3
    and [hl]                                      ; $666e: $a6
    dec e                                         ; $666f: $1d
    dec e                                         ; $6670: $1d
    ld d, d                                       ; $6671: $52
    db $f4                                        ; $6672: $f4
    di                                            ; $6673: $f3
    ld d, [hl]                                    ; $6674: $56
    dec l                                         ; $6675: $2d
    ld d, $07                                     ; $6676: $16 $07
    ld [de], a                                    ; $6678: $12
    pop bc                                        ; $6679: $c1
    ld [hl], d                                    ; $667a: $72
    xor $48                                       ; $667b: $ee $48

jr_035_667d:
    ld c, c                                       ; $667d: $49
    dec sp                                        ; $667e: $3b
    ld [$b002], a                                 ; $667f: $ea $02 $b0

jr_035_6682:
    and h                                         ; $6682: $a4
    add hl, sp                                    ; $6683: $39
    ld b, e                                       ; $6684: $43
    add hl, hl                                    ; $6685: $29
    dec [hl]                                      ; $6686: $35
    or $46                                        ; $6687: $f6 $46
    cp a                                          ; $6689: $bf
    and h                                         ; $668a: $a4
    ld c, l                                       ; $668b: $4d
    ldh [$af], a                                  ; $668c: $e0 $af
    inc b                                         ; $668e: $04
    jp hl                                         ; $668f: $e9


    adc c                                         ; $6690: $89
    rrc h                                         ; $6691: $cb $0c
    ld [hl], a                                    ; $6693: $77
    push de                                       ; $6694: $d5
    sub [hl]                                      ; $6695: $96
    xor h                                         ; $6696: $ac
    xor d                                         ; $6697: $aa
    cp l                                          ; $6698: $bd
    ld e, l                                       ; $6699: $5d
    dec hl                                        ; $669a: $2b
    ld l, a                                       ; $669b: $6f
    rst $20                                       ; $669c: $e7
    or l                                          ; $669d: $b5
    ret nc                                        ; $669e: $d0

    jr nc, jr_035_671b                            ; $669f: $30 $7a

    db $d3                                        ; $66a1: $d3
    ld c, $0b                                     ; $66a2: $0e $0b
    nop                                           ; $66a4: $00
    sub a                                         ; $66a5: $97
    cp b                                          ; $66a6: $b8
    ld l, b                                       ; $66a7: $68
    and $2d                                       ; $66a8: $e6 $2d
    inc sp                                        ; $66aa: $33
    call c, Call_000_2423                         ; $66ab: $dc $23 $24
    call $f301                                    ; $66ae: $cd $01 $f3
    ld e, d                                       ; $66b1: $5a
    ld l, b                                       ; $66b2: $68
    jr jr_035_66f0                                ; $66b3: $18 $3b

    db $dd                                        ; $66b5: $dd
    ld [hl], h                                    ; $66b6: $74
    db $d3                                        ; $66b7: $d3
    ld [hl], $10                                  ; $66b8: $36 $10
    xor d                                         ; $66ba: $aa
    cpl                                           ; $66bb: $2f
    add c                                         ; $66bc: $81
    cp [hl]                                       ; $66bd: $be
    ld e, b                                       ; $66be: $58
    ldh a, [$a6]                                  ; $66bf: $f0 $a6
    dec e                                         ; $66c1: $1d
    ld d, $00                                     ; $66c2: $16 $00
    ld l, $6b                                     ; $66c4: $2e $6b
    db $10                                        ; $66c6: $10
    add e                                         ; $66c7: $83
    or a                                          ; $66c8: $b7
    call z, $5770                                 ; $66c9: $cc $70 $57
    ld c, c                                       ; $66cc: $49
    ld [hl], l                                    ; $66cd: $75
    jr jr_035_665d                                ; $66ce: $18 $8d

    ld [hl], l                                    ; $66d0: $75
    xor h                                         ; $66d1: $ac
    dec sp                                        ; $66d2: $3b
    xor a                                         ; $66d3: $af
    add l                                         ; $66d4: $85
    add [hl]                                      ; $66d5: $86
    ld sp, $e8ed                                  ; $66d6: $31 $ed $e8
    sub b                                         ; $66d9: $90
    sub d                                         ; $66da: $92
    ld e, b                                       ; $66db: $58
    set 7, d                                      ; $66dc: $cb $fa
    dec e                                         ; $66de: $1d
    sbc $de                                       ; $66df: $de $de
    inc e                                         ; $66e1: $1c
    db $eb                                        ; $66e2: $eb
    adc $6b                                       ; $66e3: $ce $6b
    ld sp, hl                                     ; $66e5: $f9
    dec bc                                        ; $66e6: $0b
    rst $30                                       ; $66e7: $f7
    ld c, e                                       ; $66e8: $4b
    ld b, b                                       ; $66e9: $40
    ld l, l                                       ; $66ea: $6d
    ld d, [hl]                                    ; $66eb: $56
    add d                                         ; $66ec: $82
    inc h                                         ; $66ed: $24
    dec e                                         ; $66ee: $1d
    or h                                          ; $66ef: $b4

jr_035_66f0:
    ret nc                                        ; $66f0: $d0

    ld c, e                                       ; $66f1: $4b
    cp h                                          ; $66f2: $bc
    ld l, $a3                                     ; $66f3: $2e $a3
    inc sp                                        ; $66f5: $33
    cpl                                           ; $66f6: $2f
    ld b, d                                       ; $66f7: $42
    ld [c], a                                     ; $66f8: $e2
    ld l, d                                       ; $66f9: $6a
    rst $30                                       ; $66fa: $f7
    jp nc, Jump_000_3296                          ; $66fb: $d2 $96 $32

    jp nc, Jump_000_3eb0                          ; $66fe: $d2 $b0 $3e

    cp $38                                        ; $6701: $fe $38
    sbc $34                                       ; $6703: $de $34
    rlca                                          ; $6705: $07
    jp $a0b1                                      ; $6706: $c3 $b1 $a0


    and b                                         ; $6709: $a0
    ld b, a                                       ; $670a: $47
    ld c, b                                       ; $670b: $48
    ld h, a                                       ; $670c: $67
    ld [hl], e                                    ; $670d: $73
    add sp, $73                                   ; $670e: $e8 $73
    sbc c                                         ; $6710: $99
    ld hl, $7ee7                                  ; $6711: $21 $e7 $7e
    sub $d2                                       ; $6714: $d6 $d2
    ldh [$af], a                                  ; $6716: $e0 $af
    add a                                         ; $6718: $87
    ld b, d                                       ; $6719: $42
    db $ec                                        ; $671a: $ec

jr_035_671b:
    xor d                                         ; $671b: $aa
    ld l, l                                       ; $671c: $6d
    inc l                                         ; $671d: $2c
    halt                                          ; $671e: $76
    sub [hl]                                      ; $671f: $96
    ld l, e                                       ; $6720: $6b
    adc h                                         ; $6721: $8c
    and l                                         ; $6722: $a5
    ld h, h                                       ; $6723: $64
    dec h                                         ; $6724: $25
    inc h                                         ; $6725: $24
    ld a, [hl]                                    ; $6726: $7e
    set 7, h                                      ; $6727: $cb $fc
    cp h                                          ; $6729: $bc
    ld l, c                                       ; $672a: $69
    ld c, $49                                     ; $672b: $0e $49
    ld h, c                                       ; $672d: $61
    or h                                          ; $672e: $b4
    sub h                                         ; $672f: $94
    ret                                           ; $6730: $c9


    rst $18                                       ; $6731: $df
    and a                                         ; $6732: $a7
    ld h, b                                       ; $6733: $60
    ld l, c                                       ; $6734: $69
    jr nz, @-$6a                                  ; $6735: $20 $94

    ld a, [hl-]                                   ; $6737: $3a
    or h                                          ; $6738: $b4
    and l                                         ; $6739: $a5
    sbc c                                         ; $673a: $99
    sub c                                         ; $673b: $91
    ccf                                           ; $673c: $3f
    ld a, d                                       ; $673d: $7a
    ld hl, $d37a                                  ; $673e: $21 $7a $d3
    inc e                                         ; $6741: $1c
    jp $c002                                      ; $6742: $c3 $02 $c0


Jump_035_6745:
    call $bcfc                                    ; $6745: $cd $fc $bc
    ld h, l                                       ; $6748: $65
    add [hl]                                      ; $6749: $86
    ld c, e                                       ; $674a: $4b
    ld d, [hl]                                    ; $674b: $56
    ld b, a                                       ; $674c: $47
    scf                                           ; $674d: $37
    sub c                                         ; $674e: $91
    ccf                                           ; $674f: $3f
    inc b                                         ; $6750: $04
    ld l, a                                       ; $6751: $6f
    ld b, a                                       ; $6752: $47
    ld a, h                                       ; $6753: $7c
    call nz, $58b0                                ; $6754: $c4 $b0 $58
    jp nc, $c31c                                  ; $6757: $d2 $1c $c3

    ld [bc], a                                    ; $675a: $02
    ret nz                                        ; $675b: $c0

    call $bcfc                                    ; $675c: $cd $fc $bc
    ld h, l                                       ; $675f: $65
    add [hl]                                      ; $6760: $86
    ld c, e                                       ; $6761: $4b
    ld d, [hl]                                    ; $6762: $56
    ld b, a                                       ; $6763: $47
    rlca                                          ; $6764: $07
    cpl                                           ; $6765: $2f
    ld a, c                                       ; $6766: $79
    sub [hl]                                      ; $6767: $96
    ret z                                         ; $6768: $c8

    cp h                                          ; $6769: $bc
    dec e                                         ; $676a: $1d
    pop af                                        ; $676b: $f1
    ld de, $62c3                                  ; $676c: $11 $c3 $62
    ld c, c                                       ; $676f: $49
    ld [hl], e                                    ; $6770: $73
    jp $9017                                      ; $6771: $c3 $17 $90


    ccf                                           ; $6774: $3f
    ld b, l                                       ; $6775: $45
    ld [hl], l                                    ; $6776: $75

Call_035_6777:
    ld h, h                                       ; $6777: $64
    ld l, d                                       ; $6778: $6a
    or e                                          ; $6779: $b3
    ld [hl], e                                    ; $677a: $73
    sbc c                                         ; $677b: $99
    ld hl, $1ee7                                  ; $677c: $21 $e7 $1e
    adc [hl]                                      ; $677f: $8e
    ld [hl], l                                    ; $6780: $75
    ld b, a                                       ; $6781: $47
    ld a, h                                       ; $6782: $7c
    ld b, h                                       ; $6783: $44
    scf                                           ; $6784: $37
    db $10                                        ; $6785: $10
    ld a, d                                       ; $6786: $7a
    ei                                            ; $6787: $fb
    inc bc                                        ; $6788: $03
    ld a, [bc]                                    ; $6789: $0a
    jr nz, @-$31                                  ; $678a: $20 $cd

    ld bc, $5ef3                                  ; $678c: $01 $f3 $5e
    add d                                         ; $678f: $82
    pop bc                                        ; $6790: $c1
    rra                                           ; $6791: $1f
    sbc h                                         ; $6792: $9c
    rrc h                                         ; $6793: $cb $0c
    add hl, sp                                    ; $6795: $39
    ld d, a                                       ; $6796: $57
    ld e, e                                       ; $6797: $5b
    ld a, [hl-]                                   ; $6798: $3a
    db $ec                                        ; $6799: $ec
    jp nc, Jump_000_06de                          ; $679a: $d2 $de $06

    ld b, d                                       ; $679d: $42
    rst $10                                       ; $679e: $d7
    xor d                                         ; $679f: $aa
    ld l, d                                       ; $67a0: $6a
    ld [hl], l                                    ; $67a1: $75
    rst $30                                       ; $67a2: $f7
    ld [c], a                                     ; $67a3: $e2
    xor a                                         ; $67a4: $af
    add sp, $27                                   ; $67a5: $e8 $27
    dec d                                         ; $67a7: $15
    dec b                                         ; $67a8: $05
    ret z                                         ; $67a9: $c8

    ld e, a                                       ; $67aa: $5f
    ld h, h                                       ; $67ab: $64
    ld l, c                                       ; $67ac: $69
    ld c, $c9                                     ; $67ad: $0e $c9
    sbc a                                         ; $67af: $9f
    push af                                       ; $67b0: $f5
    sub [hl]                                      ; $67b1: $96
    add hl, de                                    ; $67b2: $19
    xor [hl]                                      ; $67b3: $ae
    ld c, $77                                     ; $67b4: $0e $77
    call nz, $f017                                ; $67b6: $c4 $17 $f0
    adc h                                         ; $67b9: $8c
    add hl, sp                                    ; $67ba: $39
    or e                                          ; $67bb: $b3
    dec sp                                        ; $67bc: $3b
    ld [hl], $cd                                  ; $67bd: $36 $cd
    ld bc, $17c9                                  ; $67bf: $01 $c9 $17
    push af                                       ; $67c2: $f5
    sub [hl]                                      ; $67c3: $96
    add hl, de                                    ; $67c4: $19
    ld l, $86                                     ; $67c5: $2e $86
    adc e                                         ; $67c7: $8b
    db $fc                                        ; $67c8: $fc
    xor l                                         ; $67c9: $ad
    add hl, hl                                    ; $67ca: $29
    ld c, l                                       ; $67cb: $4d
    sbc e                                         ; $67cc: $9b
    ret nz                                        ; $67cd: $c0

jr_035_67ce:
    ld e, a                                       ; $67ce: $5f
    rst $18                                       ; $67cf: $df
    ld h, a                                       ; $67d0: $67
    db $dd                                        ; $67d1: $dd
    dec c                                         ; $67d2: $0d
    cp $a0                                        ; $67d3: $fe $a0
    jp c, $ecdb                                   ; $67d5: $da $db $ec

    cpl                                           ; $67d8: $2f
    reti                                          ; $67d9: $d9


    db $db                                        ; $67da: $db
    cp c                                          ; $67db: $b9
    ld a, a                                       ; $67dc: $7f
    sub $13                                       ; $67dd: $d6 $13
    inc e                                         ; $67df: $1c
    sub b                                         ; $67e0: $90
    and $a3                                       ; $67e1: $e6 $a3
    cp l                                          ; $67e3: $bd
    ld e, e                                       ; $67e4: $5b
    xor l                                         ; $67e5: $ad
    ld c, d                                       ; $67e6: $4a
    ld e, b                                       ; $67e7: $58
    jr nz, @-$4c                                  ; $67e8: $20 $b2

    or d                                          ; $67ea: $b2
    add c                                         ; $67eb: $81
    ld [hl], b                                    ; $67ec: $70
    ld l, [hl]                                    ; $67ed: $6e
    ld a, [c]                                     ; $67ee: $f2
    rla                                           ; $67ef: $17
    add hl, de                                    ; $67f0: $19
    ld [hl], e                                    ; $67f1: $73
    xor $6d                                       ; $67f2: $ee $6d
    db $ec                                        ; $67f4: $ec
    ld e, l                                       ; $67f5: $5d
    ld l, a                                       ; $67f6: $6f
    rst $28                                       ; $67f7: $ef
    ld hl, $2b25                                  ; $67f8: $21 $25 $2b
    ld hl, $5bf1                                  ; $67fb: $21 $f1 $5b
    rst $30                                       ; $67fe: $f7
    di                                            ; $67ff: $f3
    rst $10                                       ; $6800: $d7
    db $e4                                        ; $6801: $e4
    dec hl                                        ; $6802: $2b
    cp e                                          ; $6803: $bb
    ld a, a                                       ; $6804: $7f
    ld bc, $734c                                  ; $6805: $01 $4c $73
    call z, $ef70                                 ; $6808: $cc $70 $ef
    ld c, d                                       ; $680b: $4a
    or h                                          ; $680c: $b4
    or a                                          ; $680d: $b7
    ret z                                         ; $680e: $c8

    rst $18                                       ; $680f: $df
    db $dd                                        ; $6810: $dd
    jp nc, $0b41                                  ; $6811: $d2 $41 $0b

    dec [hl]                                      ; $6814: $35
    sub b                                         ; $6815: $90
    pop hl                                        ; $6816: $e1
    call c, $5acf                                 ; $6817: $dc $cf $5a
    ld a, [de]                                    ; $681a: $1a
    ld c, a                                       ; $681b: $4f
    call c, $6ad1                                 ; $681c: $dc $d1 $6a
    or l                                          ; $681f: $b5
    or a                                          ; $6820: $b7
    jr jr_035_67ce                                ; $6821: $18 $ab

    ld a, e                                       ; $6823: $7b
    xor d                                         ; $6824: $aa
    add c                                         ; $6825: $81
    inc c                                         ; $6826: $0c
    call $1cfc                                    ; $6827: $cd $fc $1c
    inc d                                         ; $682a: $14
    jp nc, $cc1c                                  ; $682b: $d2 $1c $cc

    ld [hl], b                                    ; $682e: $70
    rst $28                                       ; $682f: $ef
    ld e, a                                       ; $6830: $5f
    cp h                                          ; $6831: $bc
    ld h, l                                       ; $6832: $65
    dec e                                         ; $6833: $1d
    ld b, a                                       ; $6834: $47
    sub e                                         ; $6835: $93
    dec e                                         ; $6836: $1d
    call nc, $ee72                                ; $6837: $d4 $72 $ee
    dec a                                         ; $683a: $3d
    call c, $afe0                                 ; $683b: $dc $e0 $af
    add sp, -$19                                  ; $683e: $e8 $e7
    inc [hl]                                      ; $6840: $34
    rlca                                          ; $6841: $07
    or e                                          ; $6842: $b3
    ld a, [de]                                    ; $6843: $1a
    ret z                                         ; $6844: $c8

    ld d, b                                       ; $6845: $50
    db $f4                                        ; $6846: $f4
    di                                            ; $6847: $f3
    sub [hl]                                      ; $6848: $96
    add hl, de                                    ; $6849: $19
    ld l, $f2                                     ; $684a: $2e $f2
    ld [hl], a                                    ; $684c: $77
    ld l, l                                       ; $684d: $6d
    rlca                                          ; $684e: $07
    jp $acb4                                      ; $684f: $c3 $b4 $ac


    ld de, $fd2d                                  ; $6852: $11 $2d $fd
    ld a, [bc]                                    ; $6855: $0a
    ei                                            ; $6856: $fb
    add hl, hl                                    ; $6857: $29
    sub [hl]                                      ; $6858: $96
    ld [hl], l                                    ; $6859: $75
    inc e                                         ; $685a: $1c
    and l                                         ; $685b: $a5
    ld b, $32                                     ; $685c: $06 $32
    ld a, b                                       ; $685e: $78
    dec sp                                        ; $685f: $3b
    ld a, [c]                                     ; $6860: $f2
    db $d3                                        ; $6861: $d3
    inc [hl]                                      ; $6862: $34
    rlca                                          ; $6863: $07
    add hl, bc                                    ; $6864: $09
    db $fc                                        ; $6865: $fc
    push af                                       ; $6866: $f5
    ld e, l                                       ; $6867: $5d
    inc b                                         ; $6868: $04
    pop hl                                        ; $6869: $e1
    ld [hl], e                                    ; $686a: $73
    ld [hl], l                                    ; $686b: $75
    jr @-$6f                                      ; $686c: $18 $8f

    ld c, a                                       ; $686e: $4f
    adc e                                         ; $686f: $8b
    db $fc                                        ; $6870: $fc
    pop de                                        ; $6871: $d1
    sbc a                                         ; $6872: $9f
    ld a, c                                       ; $6873: $79
    rrc h                                         ; $6874: $cb $0c
    rla                                           ; $6876: $17
    add e                                         ; $6877: $83
    cp a                                          ; $6878: $bf
    or d                                          ; $6879: $b2
    ld b, [hl]                                    ; $687a: $46
    or h                                          ; $687b: $b4
    sbc h                                         ; $687c: $9c
    rrc h                                         ; $687d: $cb $0c
    ld c, c                                       ; $687f: $49
    ld [hl], e                                    ; $6880: $73
    and e                                         ; $6881: $a3
    ld b, e                                       ; $6882: $43
    ld a, d                                       ; $6883: $7a
    or a                                          ; $6884: $b7
    ld l, b                                       ; $6885: $68
    ld l, a                                       ; $6886: $6f
    dec e                                         ; $6887: $1d
    db $eb                                        ; $6888: $eb
    ld [hl-], a                                   ; $6889: $32
    ld e, d                                       ; $688a: $5a
    ld a, e                                       ; $688b: $7b
    ld l, a                                       ; $688c: $6f
    rlca                                          ; $688d: $07
    ld l, c                                       ; $688e: $69
    ret                                           ; $688f: $c9


    xor $11                                       ; $6890: $ee $11
    ret nc                                        ; $6892: $d0

    add h                                         ; $6893: $84
    daa                                           ; $6894: $27
    ld a, $3a                                     ; $6895: $3e $3a
    inc l                                         ; $6897: $2c
    xor b                                         ; $6898: $a8
    xor $b3                                       ; $6899: $ee $b3
    ld a, h                                       ; $689b: $7c
    add l                                         ; $689c: $85
    sbc c                                         ; $689d: $99
    ld e, c                                       ; $689e: $59
    rst $28                                       ; $689f: $ef
    cp c                                          ; $68a0: $b9
    ld [hl], a                                    ; $68a1: $77
    rst $28                                       ; $68a2: $ef
    sub [hl]                                      ; $68a3: $96
    add hl, de                                    ; $68a4: $19
    xor [hl]                                      ; $68a5: $ae
    or $76                                        ; $68a6: $f6 $76
    call nz, Call_000_063f                        ; $68a8: $c4 $3f $06
    adc b                                         ; $68ab: $88
    ld c, $5a                                     ; $68ac: $0e $5a
    ld l, b                                       ; $68ae: $68
    ld e, b                                       ; $68af: $58
    cp h                                          ; $68b0: $bc
    ld l, c                                       ; $68b1: $69
    ld c, $09                                     ; $68b2: $0e $09
    db $fc                                        ; $68b4: $fc
    push af                                       ; $68b5: $f5
    ld e, l                                       ; $68b6: $5d
    inc b                                         ; $68b7: $04
    pop hl                                        ; $68b8: $e1

Call_035_68b9:
    ld [hl], e                                    ; $68b9: $73
    sbc c                                         ; $68ba: $99
    pop hl                                        ; $68bb: $e1
    cp [hl]                                       ; $68bc: $be
    rst $08                                       ; $68bd: $cf

jr_035_68be:
    ld a, d                                       ; $68be: $7a
    xor e                                         ; $68bf: $ab
    jp Jump_035_7c78                              ; $68c0: $c3 $78 $7c


    jp c, Jump_035_4fc3                           ; $68c3: $da $c3 $4f

    jp z, Jump_035_4948                           ; $68c6: $ca $48 $49

    db $fc                                        ; $68c9: $fc
    halt                                          ; $68ca: $76
    ld l, $33                                     ; $68cb: $2e $33
    inc h                                         ; $68cd: $24
    call Call_000_0901                            ; $68ce: $cd $01 $09
    db $fc                                        ; $68d1: $fc
    push af                                       ; $68d2: $f5
    ld e, l                                       ; $68d3: $5d
    inc b                                         ; $68d4: $04
    pop hl                                        ; $68d5: $e1
    ld [hl], e                                    ; $68d6: $73
    sbc c                                         ; $68d7: $99
    pop hl                                        ; $68d8: $e1
    sbc $2d                                       ; $68d9: $de $2d
    jp c, Jump_000_1d5b                           ; $68db: $da $5b $1d

    add $e3                                       ; $68de: $c6 $e3
    db $d3                                        ; $68e0: $d3
    ld l, [hl]                                    ; $68e1: $6e
    ldh a, [rTAC]                                 ; $68e2: $f0 $07
    cp l                                          ; $68e4: $bd
    add a                                         ; $68e5: $87
    or l                                          ; $68e6: $b5
    and l                                         ; $68e7: $a5
    ld a, b                                       ; $68e8: $78
    dec d                                         ; $68e9: $15
    ld sp, hl                                     ; $68ea: $f9
    cp e                                          ; $68eb: $bb
    ld e, e                                       ; $68ec: $5b
    ld a, [hl-]                                   ; $68ed: $3a
    ld l, b                                       ; $68ee: $68
    and c                                         ; $68ef: $a1
    ld b, $32                                     ; $68f0: $06 $32
    sbc h                                         ; $68f2: $9c
    rrc h                                         ; $68f3: $cb $0c
    ld c, c                                       ; $68f5: $49
    ld [hl], e                                    ; $68f6: $73
    call z, Call_000_3170                         ; $68f7: $cc $70 $31
    ld d, [hl]                                    ; $68fa: $56
    rla                                           ; $68fb: $17
    db $fd                                        ; $68fc: $fd
    and h                                         ; $68fd: $a4
    add a                                         ; $68fe: $87
    add d                                         ; $68ff: $82
    ret z                                         ; $6900: $c8

    adc $65                                       ; $6901: $ce $65
    add [hl]                                      ; $6903: $86
    and h                                         ; $6904: $a4
    add hl, sp                                    ; $6905: $39
    ld c, h                                       ; $6906: $4c
    ccf                                           ; $6907: $3f
    jp hl                                         ; $6908: $e9


    and c                                         ; $6909: $a1
    jr nz, jr_035_68be                            ; $690a: $20 $b2

    ld [hl], e                                    ; $690c: $73
    push af                                       ; $690d: $f5
    ld b, a                                       ; $690e: $47
    inc l                                         ; $690f: $2c
    inc sp                                        ; $6910: $33
    ld e, h                                       ; $6911: $5c
    db $ed                                        ; $6912: $ed
    db $ed                                        ; $6913: $ed
    adc b                                         ; $6914: $88
    ld a, a                                       ; $6915: $7f
    inc c                                         ; $6916: $0c
    db $10                                        ; $6917: $10
    db $dd                                        ; $6918: $dd
    adc e                                         ; $6919: $8b
    cp a                                          ; $691a: $bf
    ld a, [hl-]                                   ; $691b: $3a
    or $f8                                        ; $691c: $f6 $f8
    or h                                          ; $691e: $b4
    ld e, a                                       ; $691f: $5f
    ld de, $77eb                                  ; $6920: $11 $eb $77
    ld a, b                                       ; $6923: $78
    ld a, e                                       ; $6924: $7b
    adc h                                         ; $6925: $8c
    call Call_035_781f                            ; $6926: $cd $1f $78
    rst $08                                       ; $6929: $cf
    ld h, l                                       ; $692a: $65
    add [hl]                                      ; $692b: $86
    db $e4                                        ; $692c: $e4
    call z, $df70                                 ; $692d: $cc $70 $df
    ld h, a                                       ; $6930: $67
    cp l                                          ; $6931: $bd
    cp l                                          ; $6932: $bd
    add a                                         ; $6933: $87
    call c, $f068                                 ; $6934: $dc $68 $f0
    rst $10                                       ; $6937: $d7
    and c                                         ; $6938: $a1
    ld a, [bc]                                    ; $6939: $0a
    push af                                       ; $693a: $f5
    ld d, a                                       ; $693b: $57
    sub [hl]                                      ; $693c: $96
    ld [hl], e                                    ; $693d: $73
    sbc c                                         ; $693e: $99
    ld hl, $0e69                                  ; $693f: $21 $69 $0e
    ld c, c                                       ; $6942: $49
    sub [hl]                                      ; $6943: $96
    ld h, $3b                                     ; $6944: $26 $3b
    xor b                                         ; $6946: $a8
    and l                                         ; $6947: $a5
    rlca                                          ; $6948: $07
    add hl, bc                                    ; $6949: $09
    ld de, $665c                                  ; $694a: $11 $5c $66
    cp b                                          ; $694d: $b8
    and a                                         ; $694e: $a7
    ld a, [de]                                    ; $694f: $1a
    ret z                                         ; $6950: $c8

    ld d, b                                       ; $6951: $50
    ld b, a                                       ; $6952: $47
    and $05                                       ; $6953: $e6 $05
    ld a, [de]                                    ; $6955: $1a
    db $fc                                        ; $6956: $fc
    dec d                                         ; $6957: $15
    ld sp, hl                                     ; $6958: $f9
    cp e                                          ; $6959: $bb
    or [hl]                                       ; $695a: $b6
    reti                                          ; $695b: $d9


    ld e, a                                       ; $695c: $5f
    ld [hl], d                                    ; $695d: $72
    inc sp                                        ; $695e: $33
    dec b                                         ; $695f: $05
    cp l                                          ; $6960: $bd
    ld a, c                                       ; $6961: $79
    rst $10                                       ; $6962: $d7
    ld a, e                                       ; $6963: $7b
    ld l, $33                                     ; $6964: $2e $33
    inc h                                         ; $6966: $24
    call $cc01                                    ; $6967: $cd $01 $cc
    ld [hl], b                                    ; $696a: $70
    rst $28                                       ; $696b: $ef
    ld d, $ed                                     ; $696c: $16 $ed
    db $ed                                        ; $696e: $ed

Call_035_696f:
    ld e, [hl]                                    ; $696f: $5e
    db $fc                                        ; $6970: $fc
    sub l                                         ; $6971: $95
    xor h                                         ; $6972: $ac
    xor d                                         ; $6973: $aa
    ld d, $2d                                     ; $6974: $16 $2d
    ld a, $3a                                     ; $6976: $3e $3a
    ld e, e                                       ; $6978: $5b
    sbc b                                         ; $6979: $98
    and l                                         ; $697a: $a5
    or c                                          ; $697b: $b1
    add hl, de                                    ; $697c: $19
    sbc $d4                                       ; $697d: $de $d4
    ld l, d                                       ; $697f: $6a
    rst $28                                       ; $6980: $ef
    cp c                                          ; $6981: $b9
    call z, Call_000_3490                         ; $6982: $cc $90 $34
    rlca                                          ; $6985: $07
    ret                                           ; $6986: $c9


    sbc a                                         ; $6987: $9f
    push af                                       ; $6988: $f5
    sub [hl]                                      ; $6989: $96
    add hl, de                                    ; $698a: $19
    xor [hl]                                      ; $698b: $ae
    ld c, $77                                     ; $698c: $0e $77
    call nz, $f017                                ; $698e: $c4 $17 $f0
    adc h                                         ; $6991: $8c
    add hl, sp                                    ; $6992: $39
    or e                                          ; $6993: $b3
    cp $73                                        ; $6994: $fe $73
    add e                                         ; $6996: $83
    cp a                                          ; $6997: $bf
    cp [hl]                                       ; $6998: $be
    rst $08                                       ; $6999: $cf
    cp d                                          ; $699a: $ba
    jr jr_035_69eb                                ; $699b: $18 $4e

    sbc e                                         ; $699d: $9b
    inc e                                         ; $699e: $1c
    sub [hl]                                      ; $699f: $96
    ld b, $42                                     ; $69a0: $06 $42
    inc de                                        ; $69a2: $13
    sbc [hl]                                      ; $69a3: $9e
    ld [hl], h                                    ; $69a4: $74
    ld e, [hl]                                    ; $69a5: $5e
    dec bc                                        ; $69a6: $0b
    dec c                                         ; $69a7: $0d
    inc hl                                        ; $69a8: $23
    ld a, [c]                                     ; $69a9: $f2
    ld b, a                                       ; $69aa: $47
    ld c, c                                       ; $69ab: $49
    adc b                                         ; $69ac: $88
    and [hl]                                      ; $69ad: $a6
    ld l, c                                       ; $69ae: $69
    ld b, a                                       ; $69af: $47
    dec hl                                        ; $69b0: $2b
    ld b, h                                       ; $69b1: $44
    ldh a, [$96]                                  ; $69b2: $f0 $96
    add hl, de                                    ; $69b4: $19
    ld a, $57                                     ; $69b5: $3e $57
    ld a, a                                       ; $69b7: $7f
    call nz, $f062                                ; $69b8: $c4 $62 $f0
    ld d, a                                       ; $69bb: $57

Call_035_69bc:
    rst $00                                       ; $69bc: $c7
    halt                                          ; $69bd: $76
    db $e4                                        ; $69be: $e4

Jump_035_69bf:
    or l                                          ; $69bf: $b5
    ld [$c696], sp                                ; $69c0: $08 $96 $c6
    ld [hl], $e1                                  ; $69c3: $36 $e1
    adc c                                         ; $69c5: $89
    adc a                                         ; $69c6: $8f
    adc $6b                                       ; $69c7: $ce $6b
    and c                                         ; $69c9: $a1
    ld h, c                                       ; $69ca: $61
    inc l                                         ; $69cb: $2c
    ld l, e                                       ; $69cc: $6b
    ld [hl+], a                                   ; $69cd: $22
    ld d, [hl]                                    ; $69ce: $56
    dec de                                        ; $69cf: $1b
    ld h, [hl]                                    ; $69d0: $66
    call z, $a301                                 ; $69d1: $cc $01 $a3
    cp a                                          ; $69d4: $bf
    xor b                                         ; $69d5: $a8
    ld h, e                                       ; $69d6: $63
    add $ce                                       ; $69d7: $c6 $ce
    xor $d8                                       ; $69d9: $ee $d8
    ld [hl], e                                    ; $69db: $73
    push af                                       ; $69dc: $f5
    rst $00                                       ; $69dd: $c7
    sbc $15                                       ; $69de: $de $15
    ld [hl+], a                                   ; $69e0: $22
    cp b                                          ; $69e1: $b8
    pop bc                                        ; $69e2: $c1
    ld e, a                                       ; $69e3: $5f
    scf                                           ; $69e4: $37
    ld hl, sp-$7d                                 ; $69e5: $f8 $83
    or h                                          ; $69e7: $b4
    add hl, bc                                    ; $69e8: $09
    db $fc                                        ; $69e9: $fc
    ld d, l                                       ; $69ea: $55

jr_035_69eb:
    ld a, a                                       ; $69eb: $7f
    cp $c0                                        ; $69ec: $fe $c0
    cp l                                          ; $69ee: $bd
    add a                                         ; $69ef: $87
    call c, $f068                                 ; $69f0: $dc $68 $f0
    ld [hl], a                                    ; $69f3: $77
    xor [hl]                                      ; $69f4: $ae
    ld c, $77                                     ; $69f5: $0e $77
    db $e4                                        ; $69f7: $e4
    or l                                          ; $69f8: $b5
    ld [$db96], sp                                ; $69f9: $08 $96 $db
    or l                                          ; $69fc: $b5
    jr nz, jr_035_6a16                            ; $69fd: $20 $17

    and l                                         ; $69ff: $a5
    sbc $b2                                       ; $6a00: $de $b2
    adc [hl]                                      ; $6a02: $8e
    ld [hl-], a                                   ; $6a03: $32
    ld c, d                                       ; $6a04: $4a
    ld l, h                                       ; $6a05: $6c
    halt                                          ; $6a06: $76
    ld bc, $ef60                                  ; $6a07: $01 $60 $ef
    adc c                                         ; $6a0a: $89
    ld [c], a                                     ; $6a0b: $e2
    dec l                                         ; $6a0c: $2d
    ld a, [c]                                     ; $6a0d: $f2
    sub a                                         ; $6a0e: $97

Call_035_6a0f:
    jr z, @-$7a                                   ; $6a0f: $28 $84

    dec h                                         ; $6a11: $25
    ld l, l                                       ; $6a12: $6d
    ld [bc], a                                    ; $6a13: $02
    ld a, a                                       ; $6a14: $7f
    ld h, l                                       ; $6a15: $65

jr_035_6a16:
    dec c                                         ; $6a16: $0d
    ld a, [c]                                     ; $6a17: $f2
    ld sp, hl                                     ; $6a18: $f9
    inc bc                                        ; $6a19: $03
    ld d, a                                       ; $6a1a: $57
    dec l                                         ; $6a1b: $2d
    ld e, d                                       ; $6a1c: $5a
    jp z, $e468                                   ; $6a1d: $ca $68 $e4

    cpl                                           ; $6a20: $2f
    sub c                                         ; $6a21: $91
    add b                                         ; $6a22: $80
    cp [hl]                                       ; $6a23: $be
    or b                                          ; $6a24: $b0
    inc e                                         ; $6a25: $1c
    ld bc, $14fd                                  ; $6a26: $01 $fd $14
    ei                                            ; $6a29: $fb
    reti                                          ; $6a2a: $d9


    call z, Call_000_1fc8                         ; $6a2b: $cc $c8 $1f
    cp l                                          ; $6a2e: $bd
    db $10                                        ; $6a2f: $10
    cp l                                          ; $6a30: $bd
    ld l, c                                       ; $6a31: $69
    inc de                                        ; $6a32: $13
    ld hl, sp-$15                                 ; $6a33: $f8 $eb
    sbc l                                         ; $6a35: $9d
    or h                                          ; $6a36: $b4
    ret z                                         ; $6a37: $c8

    sbc a                                         ; $6a38: $9f
    sbc e                                         ; $6a39: $9b
    ldh a, [$d6]                                  ; $6a3a: $f0 $d6
    ld e, e                                       ; $6a3c: $5b
    rst $00                                       ; $6a3d: $c7
    cp d                                          ; $6a3e: $ba
    sbc c                                         ; $6a3f: $99
    ld [bc], a                                    ; $6a40: $02
    scf                                           ; $6a41: $37
    reti                                          ; $6a42: $d9


    ld [hl], c                                    ; $6a43: $71
    adc b                                         ; $6a44: $88
    inc bc                                        ; $6a45: $03
    sbc l                                         ; $6a46: $9d
    and $b3                                       ; $6a47: $e6 $b3
    ld e, b                                       ; $6a49: $58
    jr nz, @-$4c                                  ; $6a4a: $20 $b2

    ld [hl], e                                    ; $6a4c: $73
    sub e                                         ; $6a4d: $93
    cp a                                          ; $6a4e: $bf
    ret z                                         ; $6a4f: $c8

    sbc b                                         ; $6a50: $98
    add hl, de                                    ; $6a51: $19
    ld [hl], e                                    ; $6a52: $73
    add hl, bc                                    ; $6a53: $09
    db $fc                                        ; $6a54: $fc
    dec [hl]                                      ; $6a55: $35
    and e                                         ; $6a56: $a3
    ld e, a                                       ; $6a57: $5f
    or c                                          ; $6a58: $b1
    xor $a9                                       ; $6a59: $ee $a9
    ccf                                           ; $6a5b: $3f
    ld l, l                                       ; $6a5c: $6d
    jp nc, $dec7                                  ; $6a5d: $d2 $c7 $de

    xor [hl]                                      ; $6a60: $ae
    db $e3                                        ; $6a61: $e3
    add b                                         ; $6a62: $80
    ld e, $21                                     ; $6a63: $1e $21
    db $fd                                        ; $6a65: $fd
    sub h                                         ; $6a66: $94
    ld a, [de]                                    ; $6a67: $1a
    adc e                                         ; $6a68: $8b
    ld d, a                                       ; $6a69: $57
    ld l, a                                       ; $6a6a: $6f
    rst $10                                       ; $6a6b: $d7
    ld de, $5fc8                                  ; $6a6c: $11 $c8 $5f
    rlca                                          ; $6a6f: $07
    cpl                                           ; $6a70: $2f
    ld l, c                                       ; $6a71: $69
    sbc d                                         ; $6a72: $9a
    and [hl]                                      ; $6a73: $a6
    add hl, sp                                    ; $6a74: $39
    jp $81a5                                      ; $6a75: $c3 $a5 $81


    ret nc                                        ; $6a78: $d0

    dec c                                         ; $6a79: $0d
    cp $a0                                        ; $6a7a: $fe $a0
    or c                                          ; $6a7c: $b1
    push de                                       ; $6a7d: $d5
    pop hl                                        ; $6a7e: $e1
    adc $f2                                       ; $6a7f: $ce $f2
    add hl, hl                                    ; $6a81: $29
    ld [hl], l                                    ; $6a82: $75
    inc sp                                        ; $6a83: $33
    jp Jump_000_181f                              ; $6a84: $c3 $1f $18


    add b                                         ; $6a87: $80
    or h                                          ; $6a88: $b4
    jp $81a5                                      ; $6a89: $c3 $a5 $81


    ld d, b                                       ; $6a8c: $50
    add h                                         ; $6a8d: $84
    ld b, h                                       ; $6a8e: $44
    cp c                                          ; $6a8f: $b9
    ld e, c                                       ; $6a90: $59
    ld a, [$3629]                                 ; $6a91: $fa $29 $36
    ld hl, sp-$55                                 ; $6a94: $f8 $ab
    cp $fc                                        ; $6a96: $fe $fc
    add c                                         ; $6a98: $81
    rst $08                                       ; $6a99: $cf
    push de                                       ; $6a9a: $d5
    ld h, c                                       ; $6a9b: $61
    or h                                          ; $6a9c: $b4
    inc [hl]                                      ; $6a9d: $34
    ld sp, hl                                     ; $6a9e: $f9
    adc e                                         ; $6a9f: $8b
    adc h                                         ; $6aa0: $8c
    jp hl                                         ; $6aa1: $e9


    xor b                                         ; $6aa2: $a8
    dec bc                                        ; $6aa3: $0b
    ret nz                                        ; $6aa4: $c0

    sub d                                         ; $6aa5: $92
    and $09                                       ; $6aa6: $e6 $09

jr_035_6aa8:
    ld [$1fd5], sp                                ; $6aa8: $08 $d5 $1f
    cp e                                          ; $6aab: $bb
    pop bc                                        ; $6aac: $c1
    rra                                           ; $6aad: $1f
    call nc, Call_035_45b1                        ; $6aae: $d4 $b1 $45
    cp $c6                                        ; $6ab1: $fe $c6
    ld e, [hl]                                    ; $6ab3: $5e

Call_035_6ab4:
    ld c, e                                       ; $6ab4: $4b
    rst $20                                       ; $6ab5: $e7
    cp $59                                        ; $6ab6: $fe $59
    sbc a                                         ; $6ab8: $9f
    dec d                                         ; $6ab9: $15
    ld a, b                                       ; $6aba: $78
    add $1c                                       ; $6abb: $c6 $1c
    add hl, bc                                    ; $6abd: $09
    db $fc                                        ; $6abe: $fc
    push de                                       ; $6abf: $d5
    ld [de], a                                    ; $6ac0: $12
    cp e                                          ; $6ac1: $bb
    ld d, $f7                                     ; $6ac2: $16 $f7
    ld [$bafe], sp                                ; $6ac4: $08 $fe $ba
    rla                                           ; $6ac7: $17
    ld a, a                                       ; $6ac8: $7f
    call $92fe                                    ; $6ac9: $cd $fe $92
    sbc e                                         ; $6acc: $9b
    ld a, c                                       ; $6acd: $79
    cp a                                          ; $6ace: $bf
    ld [$1edf], a                                 ; $6acf: $ea $df $1e
    adc [hl]                                      ; $6ad2: $8e
    ld [hl], l                                    ; $6ad3: $75
    sbc c                                         ; $6ad4: $99
    db $fc                                        ; $6ad5: $fc
    add hl, hl                                    ; $6ad6: $29
    ld c, d                                       ; $6ad7: $4a
    halt                                          ; $6ad8: $76
    ld b, b                                       ; $6ad9: $40
    ld h, e                                       ; $6ada: $63
    sbc e                                         ; $6adb: $9b
    ld a, h                                       ; $6adc: $7c
    ld h, l                                       ; $6add: $65
    rst $30                                       ; $6ade: $f7
    cpl                                           ; $6adf: $2f
    add b                                         ; $6ae0: $80
    ld l, c                                       ; $6ae1: $69
    sub e                                         ; $6ae2: $93
    sub h                                         ; $6ae3: $94
    ldh a, [$57]                                  ; $6ae4: $f0 $57
    dec e                                         ; $6ae6: $1d
    ld l, [hl]                                    ; $6ae7: $6e
    and $e7                                       ; $6ae8: $e6 $e7
    jr c, jr_035_6aa8                             ; $6aea: $38 $bc

    ld h, l                                       ; $6aec: $65
    ld c, h                                       ; $6aed: $4c
    call c, Call_035_65cc                         ; $6aee: $dc $cc $65
    ld h, e                                       ; $6af1: $63
    dec de                                        ; $6af2: $1b
    db $fc                                        ; $6af3: $fc
    dec [hl]                                      ; $6af4: $35
    adc [hl]                                      ; $6af5: $8e
    jp $c1d2                                      ; $6af6: $c3 $d2 $c1


    jr nc, jr_035_6b28                            ; $6af9: $30 $2d

    ld a, [c]                                     ; $6afb: $f2
    or a                                          ; $6afc: $b7
    and [hl]                                      ; $6afd: $a6
    call nc, $d8d2                                ; $6afe: $d4 $d2 $d8
    ld [$4770], a                                 ; $6b01: $ea $70 $47
    ret nc                                        ; $6b04: $d0

    adc a                                         ; $6b05: $8f
    add sp, -$6b                                  ; $6b06: $e8 $95
    ld b, h                                       ; $6b08: $44
    ld [hl], l                                    ; $6b09: $75
    cp b                                          ; $6b0a: $b8
    sbc c                                         ; $6b0b: $99
    jp hl                                         ; $6b0c: $e9


    rst $18                                       ; $6b0d: $df
    inc c                                         ; $6b0e: $0c
    jp nc, $c91c                                  ; $6b0f: $d2 $1c $c9

    sbc a                                         ; $6b12: $9f
    push af                                       ; $6b13: $f5
    sub [hl]                                      ; $6b14: $96
    add hl, de                                    ; $6b15: $19
    xor $57                                       ; $6b16: $ee $57
    db $fc                                        ; $6b18: $fc
    ld [hl], l                                    ; $6b19: $75
    sbc [hl]                                      ; $6b1a: $9e
    dec b                                         ; $6b1b: $05
    adc e                                         ; $6b1c: $8b
    inc b                                         ; $6b1d: $04
    ld a, a                                       ; $6b1e: $7f
    ld d, b                                       ; $6b1f: $50
    sub $d1                                       ; $6b20: $d6 $d1
    ld d, c                                       ; $6b22: $51
    ld [hl], d                                    ; $6b23: $72
    ld de, $bc46                                  ; $6b24: $11 $46 $bc
    and h                                         ; $6b27: $a4

jr_035_6b28:
    ld [hl], e                                    ; $6b28: $73
    xor d                                         ; $6b29: $aa
    db $10                                        ; $6b2a: $10
    ld sp, $33a5                                  ; $6b2b: $31 $a5 $33
    ld [hl], $e9                                  ; $6b2e: $36 $e9
    ld h, e                                       ; $6b30: $63
    xor c                                         ; $6b31: $a9
    add c                                         ; $6b32: $81
    inc c                                         ; $6b33: $0c
    xor $c8                                       ; $6b34: $ee $c8
    ld c, a                                       ; $6b36: $4f
    ei                                            ; $6b37: $fb
    add hl, hl                                    ; $6b38: $29
    ld [hl], $f8                                  ; $6b39: $36 $f8
    ld l, e                                       ; $6b3b: $6b
    cp h                                          ; $6b3c: $bc
    ld l, l                                       ; $6b3d: $6d
    ld h, [hl]                                    ; $6b3e: $66
    db $f4                                        ; $6b3f: $f4
    di                                            ; $6b40: $f3
    or $7d                                        ; $6b41: $f6 $7d
    sub $e7                                       ; $6b43: $d6 $e7
    cp [hl]                                       ; $6b45: $be
    rrca                                          ; $6b46: $0f
    ldh [rTMA], a                                 ; $6b47: $e0 $06
    ld a, a                                       ; $6b49: $7f
    push de                                       ; $6b4a: $d5
    sbc $0e                                       ; $6b4b: $de $0e
    adc a                                         ; $6b4d: $8f
    push de                                       ; $6b4e: $d5
    and d                                         ; $6b4f: $a2
    ld hl, sp-$13                                 ; $6b50: $f8 $ed
    call c, $b14f                                 ; $6b52: $dc $4f $b1
    cpl                                           ; $6b55: $2f
    ld de, $b5c0                                  ; $6b56: $11 $c0 $b5
    ld [hl], h                                    ; $6b59: $74
    add e                                         ; $6b5a: $83
    ccf                                           ; $6b5b: $3f
    add sp, -$1f                                  ; $6b5c: $e8 $e1
    daa                                           ; $6b5e: $27
    db $fd                                        ; $6b5f: $fd
    sub h                                         ; $6b60: $94
    cp d                                          ; $6b61: $ba
    call z, Call_035_75d8                         ; $6b62: $cc $d8 $75
    ld e, c                                       ; $6b65: $59
    rlca                                          ; $6b66: $07
    cp $e3                                        ; $6b67: $fe $e3
    ldh a, [$a6]                                  ; $6b69: $f0 $a6
    add hl, sp                                    ; $6b6b: $39
    or e                                          ; $6b6c: $b3
    add hl, de                                    ; $6b6d: $19
    ret z                                         ; $6b6e: $c8

    ldh [$ce], a                                  ; $6b6f: $e0 $ce
    cp $f9                                        ; $6b71: $fe $f9
    add e                                         ; $6b73: $83
    cp [hl]                                       ; $6b74: $be
    rst $08                                       ; $6b75: $cf
    cp d                                          ; $6b76: $ba
    pop bc                                        ; $6b77: $c1
    ld e, a                                       ; $6b78: $5f
    dec e                                         ; $6b79: $1d
    db $eb                                        ; $6b7a: $eb
    ld l, d                                       ; $6b7b: $6a
    or l                                          ; $6b7c: $b5
    scf                                           ; $6b7d: $37
    ld [$1a32], a                                 ; $6b7e: $ea $32 $1a
    pop hl                                        ; $6b81: $e1
    ld d, e                                       ; $6b82: $53
    add sp, $0b                                   ; $6b83: $e8 $0b
    ld c, e                                       ; $6b85: $4b
    sbc a                                         ; $6b86: $9f
    ld b, l                                       ; $6b87: $45
    dec e                                         ; $6b88: $1d
    ret z                                         ; $6b89: $c8

    rra                                           ; $6b8a: $1f
    ld [hl], l                                    ; $6b8b: $75
    ldh a, [$e7]                                  ; $6b8c: $f0 $e7
    dec l                                         ; $6b8e: $2d
    ld a, [$d379]                                 ; $6b8f: $fa $79 $d3
    ld c, $65                                     ; $6b92: $0e $65
    dec l                                         ; $6b94: $2d
    dec e                                         ; $6b95: $1d
    inc c                                         ; $6b96: $0c
    ld d, e                                       ; $6b97: $53
    ld [$0fe0], a                                 ; $6b98: $ea $e0 $0f
    ld a, [$eb3e]                                 ; $6b9b: $fa $3e $eb
    ld b, $7f                                     ; $6b9e: $06 $7f
    dec a                                         ; $6ba0: $3d
    ld b, d                                       ; $6ba1: $42
    xor d                                         ; $6ba2: $aa
    ccf                                           ; $6ba3: $3f
    halt                                          ; $6ba4: $76
    sub l                                         ; $6ba5: $95
    call nc, $99b1                                ; $6ba6: $d4 $b1 $99
    reti                                          ; $6ba9: $d9


    and b                                         ; $6baa: $a0
    jp c, $e690                                   ; $6bab: $da $90 $e6

    add hl, bc                                    ; $6bae: $09
    db $fc                                        ; $6baf: $fc
    push af                                       ; $6bb0: $f5
    ld a, l                                       ; $6bb1: $7d
    sub $a5                                       ; $6bb2: $d6 $a5
    ld b, $32                                     ; $6bb4: $06 $32
    cp b                                          ; $6bb6: $b8
    or e                                          ; $6bb7: $b3
    ld a, a                                       ; $6bb8: $7f
    cp $a0                                        ; $6bb9: $fe $a0
    or c                                          ; $6bbb: $b1
    dec a                                         ; $6bbc: $3d
    inc e                                         ; $6bbd: $1c
    db $eb                                        ; $6bbe: $eb
    and e                                         ; $6bbf: $a3
    sbc a                                         ; $6bc0: $9f

Call_035_6bc1:
Jump_035_6bc1:
    add d                                         ; $6bc1: $82
    or a                                          ; $6bc2: $b7
    or e                                          ; $6bc3: $b3
    ld e, h                                       ; $6bc4: $5c
    inc [hl]                                      ; $6bc5: $34
    xor [hl]                                      ; $6bc6: $ae
    adc [hl]                                      ; $6bc7: $8e
    db $fc                                        ; $6bc8: $fc
    ld e, c                                       ; $6bc9: $59
    inc [hl]                                      ; $6bca: $34
    inc sp                                        ; $6bcb: $33
    dec [hl]                                      ; $6bcc: $35
    ld a, d                                       ; $6bcd: $7a

Jump_035_6bce:
    db $d3                                        ; $6bce: $d3
    ld h, $f0                                     ; $6bcf: $26 $f0
    rst $10                                       ; $6bd1: $d7
    rst $30                                       ; $6bd2: $f7
    ld bc, $4fdc                                  ; $6bd3: $01 $dc $4f
    xor c                                         ; $6bd6: $a9
    ld a, e                                       ; $6bd7: $7b
    db $fc                                        ; $6bd8: $fc
    inc l                                         ; $6bd9: $2c
    sub b                                         ; $6bda: $90
    ccf                                           ; $6bdb: $3f
    ld l, a                                       ; $6bdc: $6f
    ld b, a                                       ; $6bdd: $47
    ld a, h                                       ; $6bde: $7c
    ld bc, $edef                                  ; $6bdf: $01 $ef $ed
    ld a, [hl-]                                   ; $6be2: $3a
    ret c                                         ; $6be3: $d8

    ret c                                         ; $6be4: $d8

    rrca                                          ; $6be5: $0f
    ld [hl], c                                    ; $6be6: $71
    xor l                                         ; $6be7: $ad
    or a                                          ; $6be8: $b7
    add e                                         ; $6be9: $83
    sub [hl]                                      ; $6bea: $96
    call z, $de88                                 ; $6beb: $cc $88 $de
    inc [hl]                                      ; $6bee: $34
    rlca                                          ; $6bef: $07

Call_035_6bf0:
    or e                                          ; $6bf0: $b3
    rst $38                                       ; $6bf1: $ff
    ld [hl], e                                    ; $6bf2: $73
    rst $28                                       ; $6bf3: $ef
    ld h, c                                       ; $6bf4: $61
    ld l, l                                       ; $6bf5: $6d
    add hl, hl                                    ; $6bf6: $29
    ld e, c                                       ; $6bf7: $59
    add hl, bc                                    ; $6bf8: $09
    adc c                                         ; $6bf9: $89
    rst $18                                       ; $6bfa: $df
    adc $1d                                       ; $6bfb: $ce $1d
    add hl, hl                                    ; $6bfd: $29
    ld l, c                                       ; $6bfe: $69
    ld b, a                                       ; $6bff: $47
    ld e, l                                       ; $6c00: $5d
    nop                                           ; $6c01: $00
    sub [hl]                                      ; $6c02: $96
    add hl, de                                    ; $6c03: $19
    sbc e                                         ; $6c04: $9b
    ret nz                                        ; $6c05: $c0

    ld e, a                                       ; $6c06: $5f
    add hl, bc                                    ; $6c07: $09
    or c                                          ; $6c08: $b1
    ld [hl], d                                    ; $6c09: $72
    adc a                                         ; $6c0a: $8f
    ldh [$af], a                                  ; $6c0b: $e0 $af
    ld [hl], c                                    ; $6c0d: $71
    inc e                                         ; $6c0e: $1c
    sub [hl]                                      ; $6c0f: $96
    ld [hl], e                                    ; $6c10: $73
    rst $28                                       ; $6c11: $ef
    sbc $6d                                       ; $6c12: $de $6d
    ldh a, [$57]                                  ; $6c14: $f0 $57
    rst $00                                       ; $6c16: $c7
    ld a, d                                       ; $6c17: $7a
    dec sp                                        ; $6c18: $3b
    ld [$b002], a                                 ; $6c19: $ea $02 $b0
    inc [hl]                                      ; $6c1c: $34
    or [hl]                                       ; $6c1d: $b6
    jp c, $d1d2                                   ; $6c1e: $da $d2 $d1

    or c                                          ; $6c21: $b1
    scf                                           ; $6c22: $37
    db $d3                                        ; $6c23: $d3
    db $ec                                        ; $6c24: $ec
    inc hl                                        ; $6c25: $23
    cp d                                          ; $6c26: $ba
    add sp, -$19                                  ; $6c27: $e8 $e7
    inc [hl]                                      ; $6c29: $34
    rlca                                          ; $6c2a: $07
    ld [hl], e                                    ; $6c2b: $73
    dec b                                         ; $6c2c: $05
    ld a, a                                       ; $6c2d: $7f
    ldh [$2d], a                                  ; $6c2e: $e0 $2d
    add [hl]                                      ; $6c30: $86
    sbc e                                         ; $6c31: $9b
    and h                                         ; $6c32: $a4
    ld c, $96                                     ; $6c33: $0e $96
    ld e, d                                       ; $6c35: $5a
    ld e, a                                       ; $6c36: $5f
    ld [c], a                                     ; $6c37: $e2
    ld [hl+], a                                   ; $6c38: $22
    ld a, a                                       ; $6c39: $7f
    ld h, e                                       ; $6c3a: $63
    xor a                                         ; $6c3b: $af
    sra b                                         ; $6c3c: $cb $28
    and h                                         ; $6c3e: $a4
    ld [hl], c                                    ; $6c3f: $71
    call c, Call_035_6bc1                         ; $6c40: $dc $c1 $6b
    ld a, e                                       ; $6c43: $7b
    add h                                         ; $6c44: $84
    db $f4                                        ; $6c45: $f4
    dec hl                                        ; $6c46: $2b
    inc a                                         ; $6c47: $3c
    ld [hl], a                                    ; $6c48: $77
    and h                                         ; $6c49: $a4
    and h                                         ; $6c4a: $a4
    dec e                                         ; $6c4b: $1d
    ld [hl], l                                    ; $6c4c: $75
    ld bc, $d258                                  ; $6c4d: $01 $58 $d2
    inc e                                         ; $6c50: $1c
    call z, $4481                                 ; $6c51: $cc $81 $44
    or b                                          ; $6c54: $b0
    sbc h                                         ; $6c55: $9c
    dec de                                        ; $6c56: $1b
    db $fc                                        ; $6c57: $fc
    push af                                       ; $6c58: $f5
    ld d, b                                       ; $6c59: $50
    adc b                                         ; $6c5a: $88
    or l                                          ; $6c5b: $b5
    jr nz, jr_035_6cb2                            ; $6c5c: $20 $54

    add a                                         ; $6c5e: $87
    pop de                                        ; $6c5f: $d1
    ld e, e                                       ; $6c60: $5b
    ld h, $7f                                     ; $6c61: $26 $7f
    sub h                                         ; $6c63: $94
    add h                                         ; $6c64: $84
    ld l, b                                       ; $6c65: $68
    ld e, d                                       ; $6c66: $5a
    or d                                          ; $6c67: $b2
    ld [de], a                                    ; $6c68: $12
    ld [de], a                                    ; $6c69: $12
    cp a                                          ; $6c6a: $bf
    or c                                          ; $6c6b: $b1
    ld [de], a                                    ; $6c6c: $12
    sbc e                                         ; $6c6d: $9b
    ld a, c                                       ; $6c6e: $79
    db $d3                                        ; $6c6f: $d3
    inc e                                         ; $6c70: $1c
    and e                                         ; $6c71: $a3
    db $e4                                        ; $6c72: $e4
    ld [hl+], a                                   ; $6c73: $22
    adc h                                         ; $6c74: $8c

Jump_035_6c75:
    ld a, b                                       ; $6c75: $78
    ld c, c                                       ; $6c76: $49
    add a                                         ; $6c77: $87
    push bc                                       ; $6c78: $c5
    ld l, $ce                                     ; $6c79: $2e $ce
    sbc b                                         ; $6c7b: $98
    inc bc                                        ; $6c7c: $03
    ld c, h                                       ; $6c7d: $4c
    cp $f6                                        ; $6c7e: $fe $f6
    dec bc                                        ; $6c80: $0b
    ld a, a                                       ; $6c81: $7f
    ld c, l                                       ; $6c82: $4d
    db $d3                                        ; $6c83: $d3
    or h                                          ; $6c84: $b4
    ld l, d                                       ; $6c85: $6a
    ld [hl], l                                    ; $6c86: $75
    scf                                           ; $6c87: $37
    ld a, h                                       ; $6c88: $7c
    db $fc                                        ; $6c89: $fc
    push de                                       ; $6c8a: $d5
    ld a, l                                       ; $6c8b: $7d
    rra                                           ; $6c8c: $1f
    ld a, d                                       ; $6c8d: $7a
    xor d                                         ; $6c8e: $aa
    sbc e                                         ; $6c8f: $9b
    ld sp, hl                                     ; $6c90: $f9
    or b                                          ; $6c91: $b0
    call c, Call_035_5ce0                         ; $6c92: $dc $e0 $5c
    db $fd                                        ; $6c95: $fd
    ld de, $e23b                                  ; $6c96: $11 $3b $e2
    xor e                                         ; $6c99: $ab
    ld c, h                                       ; $6c9a: $4c
    dec e                                         ; $6c9b: $1d
    ld b, a                                       ; $6c9c: $47
    inc [hl]                                      ; $6c9d: $34
    or [hl]                                       ; $6c9e: $b6
    and e                                         ; $6c9f: $a3
    ld b, e                                       ; $6ca0: $43
    ld l, [hl]                                    ; $6ca1: $6e
    inc [hl]                                      ; $6ca2: $34
    ld hl, sp-$45                                 ; $6ca3: $f8 $bb
    add hl, sp                                    ; $6ca5: $39
    and b                                         ; $6ca6: $a0
    rst $00                                       ; $6ca7: $c7
    rst $08                                       ; $6ca8: $cf
    ld [bc], a                                    ; $6ca9: $02
    ld sp, hl                                     ; $6caa: $f9
    ld l, e                                       ; $6cab: $6b
    jr nz, jr_035_6ce2                            ; $6cac: $20 $34

    ld c, l                                       ; $6cae: $4d
    db $d3                                        ; $6caf: $d3
    adc $f1                                       ; $6cb0: $ce $f1

jr_035_6cb2:
    adc $7d                                       ; $6cb2: $ce $7d
    sbc a                                         ; $6cb4: $9f
    jp nc, $c9ab                                  ; $6cb5: $d2 $ab $c9

    ld e, a                                       ; $6cb8: $5f
    ld h, h                                       ; $6cb9: $64
    ld c, h                                       ; $6cba: $4c
    sbc d                                         ; $6cbb: $9a
    inc bc                                        ; $6cbc: $03
    add hl, bc                                    ; $6cbd: $09
    db $fc                                        ; $6cbe: $fc
    push af                                       ; $6cbf: $f5
    ld a, l                                       ; $6cc0: $7d
    sub $d5                                       ; $6cc1: $d6 $d5
    pop hl                                        ; $6cc3: $e1
    ld c, $0b                                     ; $6cc4: $0e $0b
    xor d                                         ; $6cc6: $aa
    ld l, a                                       ; $6cc7: $6f
    ld e, a                                       ; $6cc8: $5f
    ret nz                                        ; $6cc9: $c0

    ld h, l                                       ; $6cca: $65
    dec l                                         ; $6ccb: $2d
    and h                                         ; $6ccc: $a4
    ld [hl], a                                    ; $6ccd: $77
    add b                                         ; $6cce: $80
    and l                                         ; $6ccf: $a5
    ret                                           ; $6cd0: $c9


    ld a, $dd                                     ; $6cd1: $3e $dd
    ld e, e                                       ; $6cd3: $5b
    or l                                          ; $6cd4: $b5
    cp d                                          ; $6cd5: $ba
    daa                                           ; $6cd6: $27
    ld a, h                                       ; $6cd7: $7c
    push bc                                       ; $6cd8: $c5
    ld e, d                                       ; $6cd9: $5a
    inc l                                         ; $6cda: $2c
    db $fd                                        ; $6cdb: $fd
    adc d                                         ; $6cdc: $8a
    xor b                                         ; $6cdd: $a8
    or [hl]                                       ; $6cde: $b6
    ld [hl], h                                    ; $6cdf: $74
    and $10                                       ; $6ce0: $e6 $10

jr_035_6ce2:
    xor $7e                                       ; $6ce2: $ee $7e
    ld [hl], $33                                  ; $6ce4: $36 $33
    dec de                                        ; $6ce6: $1b
    ld d, h                                       ; $6ce7: $54
    dec de                                        ; $6ce8: $1b
    ld a, [de]                                    ; $6ce9: $1a
    ld [$0e69], sp                                ; $6cea: $08 $69 $0e
    or e                                          ; $6ced: $b3
    cp $73                                        ; $6cee: $fe $73
    add e                                         ; $6cf0: $83
    cp a                                          ; $6cf1: $bf
    ld l, d                                       ; $6cf2: $6a
    rst $28                                       ; $6cf3: $ef
    call Call_000_1ae7                            ; $6cf4: $cd $e7 $1a
    dec de                                        ; $6cf7: $1b
    ld [$e1d5], sp                                ; $6cf8: $08 $d5 $e1
    and d                                         ; $6cfb: $a2
    add hl, hl                                    ; $6cfc: $29
    db $eb                                        ; $6cfd: $eb
    adc [hl]                                      ; $6cfe: $8e
    ld hl, sp+$02                                 ; $6cff: $f8 $02
    ld c, [hl]                                    ; $6d01: $4e
    sbc e                                         ; $6d02: $9b
    ret nz                                        ; $6d03: $c0

Call_035_6d04:
    ld e, a                                       ; $6d04: $5f
    inc sp                                        ; $6d05: $33
    ld a, [$eb15]                                 ; $6d06: $fa $15 $eb
    ld [hl], e                                    ; $6d09: $73
    or l                                          ; $6d0a: $b5
    ld h, e                                       ; $6d0b: $63
    dec sp                                        ; $6d0c: $3b
    rst $28                                       ; $6d0d: $ef
    rlca                                          ; $6d0e: $07
    ld c, e                                       ; $6d0f: $4b
    rst $28                                       ; $6d10: $ef
    inc h                                         ; $6d11: $24
    pop de                                        ; $6d12: $d1
    xor $57                                       ; $6d13: $ee $57
    db $fc                                        ; $6d15: $fc
    push af                                       ; $6d16: $f5
    ld a, [hl]                                    ; $6d17: $7e
    ld d, c                                       ; $6d18: $51
    ld [$573d], a                                 ; $6d19: $ea $3d $57
    ld a, a                                       ; $6d1c: $7f
    call nz, Call_035_556a                        ; $6d1d: $c4 $6a $55
    dec e                                         ; $6d20: $1d
    xor $88                                       ; $6d21: $ee $88
    cpl                                           ; $6d23: $2f
    ldh [$b2], a                                  ; $6d24: $e0 $b2
    add $00                                       ; $6d26: $c6 $00
    ld [hl-], a                                   ; $6d28: $32
    and h                                         ; $6d29: $a4
    add hl, sp                                    ; $6d2a: $39
    di                                            ; $6d2b: $f3
    add [hl]                                      ; $6d2c: $86
    xor c                                         ; $6d2d: $a9
    or a                                          ; $6d2e: $b7
    ld c, c                                       ; $6d2f: $49
    ld a, a                                       ; $6d30: $7f
    ld l, a                                       ; $6d31: $6f
    rst $20                                       ; $6d32: $e7
    adc [hl]                                      ; $6d33: $8e
    sub d                                         ; $6d34: $92
    adc e                                         ; $6d35: $8b
    jr nc, @-$1c                                  ; $6d36: $30 $e2

    dec h                                         ; $6d38: $25
    dec e                                         ; $6d39: $1d
    ld d, $bb                                     ; $6d3a: $16 $bb
    jr c, jr_035_6d62                             ; $6d3c: $38 $24

    rlca                                          ; $6d3e: $07
    ld c, c                                       ; $6d3f: $49
    sub [hl]                                      ; $6d40: $96
    adc $b3                                       ; $6d41: $ce $b3
    ld h, b                                       ; $6d43: $60
    sub c                                         ; $6d44: $91
    ldh [rIF], a                                  ; $6d45: $e0 $0f
    ld a, [de]                                    ; $6d47: $1a
    ld [$617d], sp                                ; $6d48: $08 $7d $61
    add hl, sp                                    ; $6d4b: $39
    ld [bc], a                                    ; $6d4c: $02
    jp z, $abda                                   ; $6d4d: $ca $da $ab

    dec c                                         ; $6d50: $0d
    ld c, l                                       ; $6d51: $4d
    db $d3                                        ; $6d52: $d3
    or h                                          ; $6d53: $b4
    ret z                                         ; $6d54: $c8

    rst $18                                       ; $6d55: $df
    ld a, [hl]                                    ; $6d56: $7e
    pop hl                                        ; $6d57: $e1
    xor a                                         ; $6d58: $af
    ld l, c                                       ; $6d59: $69
    sbc d                                         ; $6d5a: $9a
    and $4c                                       ; $6d5b: $e6 $4c
    cp $f6                                        ; $6d5d: $fe $f6
    dec bc                                        ; $6d5f: $0b
    ld a, a                                       ; $6d60: $7f
    ld c, l                                       ; $6d61: $4d

jr_035_6d62:
    db $d3                                        ; $6d62: $d3
    inc [hl]                                      ; $6d63: $34
    rlca                                          ; $6d64: $07
    call z, $d28b                                 ; $6d65: $cc $8b $d2
    ld [$7d8f], a                                 ; $6d68: $ea $8f $7d
    ld h, c                                       ; $6d6b: $61
    xor c                                         ; $6d6c: $a9
    ld h, e                                       ; $6d6d: $63
    db $dd                                        ; $6d6e: $dd
    ld a, c                                       ; $6d6f: $79
    ld d, $2c                                     ; $6d70: $16 $2c
    ld [de], a                                    ; $6d72: $12
    db $fc                                        ; $6d73: $fc
    ld bc, $a822                                  ; $6d74: $01 $22 $a8
    push de                                       ; $6d77: $d5
    xor $a5                                       ; $6d78: $ee $a5
    dec l                                         ; $6d7a: $2d
    ld [hl], l                                    ; $6d7b: $75
    ld l, h                                       ; $6d7c: $6c
    ld b, a                                       ; $6d7d: $47
    ld b, $c0                                     ; $6d7e: $06 $c0
    rst $08                                       ; $6d80: $cf
    ld [hl], b                                    ; $6d81: $70
    jr nz, jr_035_6dd5                            ; $6d82: $20 $51

    ld hl, $e7f2                                  ; $6d84: $21 $f2 $e7
    dec l                                         ; $6d87: $2d
    ld a, [hl-]                                   ; $6d88: $3a
    halt                                          ; $6d89: $76
    add $1c                                       ; $6d8a: $c6 $1c
    inc hl                                        ; $6d8c: $23
    rst $38                                       ; $6d8d: $ff
    ld [hl], $10                                  ; $6d8e: $36 $10
    xor d                                         ; $6d90: $aa
    ccf                                           ; $6d91: $3f
    sub [hl]                                      ; $6d92: $96
    cp $cd                                        ; $6d93: $fe $cd
    xor $0e                                       ; $6d95: $ee $0e
    ld a, [de]                                    ; $6d97: $1a
    ld e, c                                       ; $6d98: $59
    jp c, $fe04                                   ; $6d99: $da $04 $fe

    ld a, [$0112]                                 ; $6d9c: $fa $12 $01
    call c, $a423                                 ; $6d9f: $dc $23 $a4
    rst $30                                       ; $6da2: $f7
    adc a                                         ; $6da3: $8f
    dec h                                         ; $6da4: $25
    xor e                                         ; $6da5: $ab
    adc $66                                       ; $6da6: $ce $66
    db $f4                                        ; $6da8: $f4
    or $08                                        ; $6da9: $f6 $08
    ld h, b                                       ; $6dab: $60
    dec h                                         ; $6dac: $25
    ld [hl], $f3                                  ; $6dad: $36 $f3
    ld d, $2f                                     ; $6daf: $16 $2f
    ld c, d                                       ; $6db1: $4a
    cp l                                          ; $6db2: $bd
    ld l, c                                       ; $6db3: $69
    ld c, $c9                                     ; $6db4: $0e $c9
    sbc a                                         ; $6db6: $9f
    jp nc, $dceb                                  ; $6db7: $d2 $eb $dc

    ld d, c                                       ; $6dba: $51
    ld [hl], d                                    ; $6dbb: $72
    ld de, $bc46                                  ; $6dbc: $11 $46 $bc
    and h                                         ; $6dbf: $a4
    or e                                          ; $6dc0: $b3
    ret nc                                        ; $6dc1: $d0

    add b                                         ; $6dc2: $80
    ld a, e                                       ; $6dc3: $7b
    ldh a, [$5b]                                  ; $6dc4: $f0 $5b
    sbc d                                         ; $6dc6: $9a
    inc bc                                        ; $6dc7: $03
    ret                                           ; $6dc8: $c9


    ld d, [hl]                                    ; $6dc9: $56
    ldh [$0e], a                                  ; $6dca: $e0 $0e
    ld e, d                                       ; $6dcc: $5a
    ld d, b                                       ; $6dcd: $50
    pop af                                        ; $6dce: $f1
    rst $20                                       ; $6dcf: $e7
    db $ed                                        ; $6dd0: $ed
    dec a                                         ; $6dd1: $3d
    db $e4                                        ; $6dd2: $e4
    ld e, h                                       ; $6dd3: $5c
    rst $00                                       ; $6dd4: $c7

jr_035_6dd5:
    cp d                                          ; $6dd5: $ba
    or e                                          ; $6dd6: $b3
    ld e, b                                       ; $6dd7: $58
    ld e, e                                       ; $6dd8: $5b
    ld c, d                                       ; $6dd9: $4a
    ld d, [hl]                                    ; $6dda: $56
    ld b, a                                       ; $6ddb: $47
    sbc c                                         ; $6ddc: $99
    db $fc                                        ; $6ddd: $fc
    db $dd                                        ; $6dde: $dd

Jump_035_6ddf:
    call $4b7a                                    ; $6ddf: $cd $7a $4b
    ld d, [hl]                                    ; $6de2: $56
    ld h, l                                       ; $6de3: $65
    dec h                                         ; $6de4: $25
    ld [hl], $f3                                  ; $6de5: $36 $f3
    and [hl]                                      ; $6de7: $a6
    ld l, l                                       ; $6de8: $6d
    jp nc, Jump_035_56af                          ; $6de9: $d2 $af $56

    dec a                                         ; $6dec: $3d
    push af                                       ; $6ded: $f5
    rla                                           ; $6dee: $17
    ld sp, hl                                     ; $6def: $f9

jr_035_6df0:
    cp e                                          ; $6df0: $bb
    or [hl]                                       ; $6df1: $b6
    cpl                                           ; $6df2: $2f
    inc l                                         ; $6df3: $2c
    dec d                                         ; $6df4: $15
    ld [hl], l                                    ; $6df5: $75
    jr nz, jr_035_6df0                            ; $6df6: $20 $f8

    ld hl, $9b9c                                  ; $6df8: $21 $9c $9b
    db $fc                                        ; $6dfb: $fc
    ld b, l                                       ; $6dfc: $45
    add $9c                                       ; $6dfd: $c6 $9c
    ld a, e                                       ; $6dff: $7b
    dec de                                        ; $6e00: $1b
    ld a, e                                       ; $6e01: $7b
    rla                                           ; $6e02: $17
    adc h                                         ; $6e03: $8c
    ld d, b                                       ; $6e04: $50
    xor l                                         ; $6e05: $ad
    ld a, d                                       ; $6e06: $7a
    add h                                         ; $6e07: $84
    sub h                                         ; $6e08: $94
    ld [hl], l                                    ; $6e09: $75
    ld d, h                                       ; $6e0a: $54
    ld e, e                                       ; $6e0b: $5b
    ld a, [hl-]                                   ; $6e0c: $3a
    rst $28                                       ; $6e0d: $ef
    dec h                                         ; $6e0e: $25
    inc b                                         ; $6e0f: $04
    jp hl                                         ; $6e10: $e9


    adc c                                         ; $6e11: $89
    jp c, $daac                                   ; $6e12: $da $ac $da

    ret c                                         ; $6e15: $d8

    pop hl                                        ; $6e16: $e1
    and a                                         ; $6e17: $a7
    rrca                                          ; $6e18: $0f
    ld e, b                                       ; $6e19: $58
    ld [c], a                                     ; $6e1a: $e2
    ldh a, [rSC]                                  ; $6e1b: $f0 $02
    sub [hl]                                      ; $6e1d: $96
    push af                                       ; $6e1e: $f5
    dec bc                                        ; $6e1f: $0b
    ld c, d                                       ; $6e20: $4a
    ret nc                                        ; $6e21: $d0

    ldh [$af], a                                  ; $6e22: $e0 $af
    add sp, -$28                                  ; $6e24: $e8 $d8
    inc [hl]                                      ; $6e26: $34
    rlca                                          ; $6e27: $07
    jp Jump_000_2fa5                              ; $6e28: $c3 $a5 $2f


    ld de, $65c0                                  ; $6e2b: $11 $c0 $65
    adc l                                         ; $6e2e: $8d
    ld l, b                                       ; $6e2f: $68
    jp hl                                         ; $6e30: $e9


    ld de, $75fc                                  ; $6e31: $11 $fc $75
    db $fd                                        ; $6e34: $fd
    ld c, $6f                                     ; $6e35: $0e $6f
    pop af                                        ; $6e37: $f1
    and d                                         ; $6e38: $a2
    call nc, Call_000_369b                        ; $6e39: $d4 $9b $36
    add c                                         ; $6e3c: $81
    cp a                                          ; $6e3d: $bf
    sbc $fe                                       ; $6e3e: $de $fe
    ld l, [hl]                                    ; $6e40: $6e
    push af                                       ; $6e41: $f5
    rst $00                                       ; $6e42: $c7
    ld [$bf8b], a                                 ; $6e43: $ea $8b $bf
    ld [hl+], a                                   ; $6e46: $22
    ld a, a                                       ; $6e47: $7f
    rst $10                                       ; $6e48: $d7
    or $53                                        ; $6e49: $f6 $53
    ld l, d                                       ; $6e4b: $6a
    ld c, h                                       ; $6e4c: $4c
    ld [hl], e                                    ; $6e4d: $73
    ld [hl], e                                    ; $6e4e: $73
    cp h                                          ; $6e4f: $bc
    sbc [hl]                                      ; $6e50: $9e
    ld a, [$d5cf]                                 ; $6e51: $fa $cf $d5
    xor d                                         ; $6e54: $aa
    ld l, h                                       ; $6e55: $6c
    jr nz, @-$2a                                  ; $6e56: $20 $d4

    or c                                          ; $6e58: $b1
    xor $91                                       ; $6e59: $ee $91
    ret z                                         ; $6e5b: $c8

    rra                                           ; $6e5c: $1f
    ld b, h                                       ; $6e5d: $44
    and $9e                                       ; $6e5e: $e6 $9e
    ldh a, [$15]                                  ; $6e60: $f0 $15
    ld l, e                                       ; $6e62: $6b
    adc c                                         ; $6e63: $89
    ld c, l                                       ; $6e64: $4d
    rrc h                                         ; $6e65: $cb $0c
    ccf                                           ; $6e67: $3f
    add h                                         ; $6e68: $84
    ld l, d                                       ; $6e69: $6a
    ld [hl], l                                    ; $6e6a: $75
    xor [hl]                                      ; $6e6b: $ae
    ld d, [hl]                                    ; $6e6c: $56
    ld a, l                                       ; $6e6d: $7d
    rra                                           ; $6e6e: $1f
    and c                                         ; $6e6f: $a1
    add $66                                       ; $6e70: $c6 $66
    ld b, [hl]                                    ; $6e72: $46
    cp $3e                                        ; $6e73: $fe $3e
    ld b, c                                       ; $6e75: $41
    ret nz                                        ; $6e76: $c0

    cp c                                          ; $6e77: $b9
    add a                                         ; $6e78: $87
    ld h, e                                       ; $6e79: $63
    db $dd                                        ; $6e7a: $dd

Jump_035_6e7b:
    and c                                         ; $6e7b: $a1
    ld a, [hl+]                                   ; $6e7c: $2a
    di                                            ; $6e7d: $f3
    sub [hl]                                      ; $6e7e: $96
    xor h                                         ; $6e7f: $ac
    adc [hl]                                      ; $6e80: $8e
    adc $75                                       ; $6e81: $ce $75
    ld d, c                                       ; $6e83: $51
    ld [$592d], a                                 ; $6e84: $ea $2d $59
    sub l                                         ; $6e87: $95
    sub l                                         ; $6e88: $95
    ret c                                         ; $6e89: $d8

    call z, $243b                                 ; $6e8a: $cc $3b $24
    rlca                                          ; $6e8d: $07
    adc h                                         ; $6e8e: $8c
    ld a, [bc]                                    ; $6e8f: $0a
    sbc d                                         ; $6e90: $9a
    ld sp, hl                                     ; $6e91: $f9
    ld hl, sp-$04                                 ; $6e92: $f8 $fc
    pop bc                                        ; $6e94: $c1
    cp c                                          ; $6e95: $b9
    ret                                           ; $6e96: $c9


    ld e, a                                       ; $6e97: $5f
    ld h, h                                       ; $6e98: $64
    ld c, h                                       ; $6e99: $4c
    jp c, Jump_000_3aa9                           ; $6e9a: $da $a9 $3a

    ld c, d                                       ; $6e9d: $4a
    db $ed                                        ; $6e9e: $ed
    call $4825                                    ; $6e9f: $cd $25 $48
    ld d, d                                       ; $6ea2: $52
    dec e                                         ; $6ea3: $1d
    ld b, [hl]                                    ; $6ea4: $46
    scf                                           ; $6ea5: $37
    ld d, e                                       ; $6ea6: $53
    ldh [$ce], a                                  ; $6ea7: $e0 $ce
    ld a, e                                       ; $6ea9: $7b
    add hl, bc                                    ; $6eaa: $09
    add d                                         ; $6eab: $82
    add hl, hl                                    ; $6eac: $29
    ld d, l                                       ; $6ead: $55
    sbc e                                         ; $6eae: $9b
    and l                                         ; $6eaf: $a5
    add hl, sp                                    ; $6eb0: $39

Jump_035_6eb1:
    or e                                          ; $6eb1: $b3

Call_035_6eb2:
    db $fc                                        ; $6eb2: $fc
    add l                                         ; $6eb3: $85
    adc a                                         ; $6eb4: $8f
    db $10                                        ; $6eb5: $10
    ret z                                         ; $6eb6: $c8

    rst $18                                       ; $6eb7: $df
    sub b                                         ; $6eb8: $90
    ld c, $0b                                     ; $6eb9: $0e $0b
    add h                                         ; $6ebb: $84
    ld l, d                                       ; $6ebc: $6a
    ld d, l                                       ; $6ebd: $55
    inc c                                         ; $6ebe: $0c
    cp $2c                                        ; $6ebf: $fe $2c
    rst $20                                       ; $6ec1: $e7
    ld [$588f], a                                 ; $6ec2: $ea $8f $58
    xor l                                         ; $6ec5: $ad
    xor d                                         ; $6ec6: $aa
    ccf                                           ; $6ec7: $3f
    halt                                          ; $6ec8: $76
    cpl                                           ; $6ec9: $2f
    cp $ba                                        ; $6eca: $fe $ba
    pop hl                                        ; $6ecc: $e1
    sub d                                         ; $6ecd: $92
    push de                                       ; $6ece: $d5
    ldh [rNR51], a                                ; $6ecf: $e0 $25
    call Call_035_7c7c                            ; $6ed1: $cd $7c $7c
    cp $a0                                        ; $6ed4: $fe $a0
    rst $28                                       ; $6ed6: $ef
    inc hl                                        ; $6ed7: $23
    call z, Call_000_13d8                         ; $6ed8: $cc $d8 $13
    db $fc                                        ; $6edb: $fc
    or [hl]                                       ; $6edc: $b6
    and e                                         ; $6edd: $a3
    call nc, $c0de                                ; $6ede: $d4 $de $c0
    dec h                                         ; $6ee1: $25
    ld c, b                                       ; $6ee2: $48
    ld d, d                                       ; $6ee3: $52
    dec e                                         ; $6ee4: $1d
    ld b, [hl]                                    ; $6ee5: $46
    scf                                           ; $6ee6: $37
    sub e                                         ; $6ee7: $93
    ld l, e                                       ; $6ee8: $6b
    sbc h                                         ; $6ee9: $9c
    cpl                                           ; $6eea: $2f
    db $10                                        ; $6eeb: $10
    sbc c                                         ; $6eec: $99
    dec sp                                        ; $6eed: $3b
    sbc e                                         ; $6eee: $9b
    inc bc                                        ; $6eef: $03
    ld b, c                                       ; $6ef0: $41
    ld l, l                                       ; $6ef1: $6d
    ld [hl], $24                                  ; $6ef2: $36 $24
    rlca                                          ; $6ef4: $07
    ld c, c                                       ; $6ef5: $49
    xor d                                         ; $6ef6: $aa
    rst $28                                       ; $6ef7: $ef
    inc hl                                        ; $6ef8: $23
    ld d, h                                       ; $6ef9: $54
    add a                                         ; $6efa: $87
    pop de                                        ; $6efb: $d1
    dec a                                         ; $6efc: $3d
    adc c                                         ; $6efd: $89
    ld d, l                                       ; $6efe: $55
    sbc e                                         ; $6eff: $9b
    ld [hl], l                                    ; $6f00: $75
    ret nz                                        ; $6f01: $c0

    ld b, d                                       ; $6f02: $42
    ld hl, sp+$06                                 ; $6f03: $f8 $06
    call $387c                                    ; $6f05: $cd $7c $38
    db $10                                        ; $6f08: $10
    inc l                                         ; $6f09: $2c
    ld [hl], b                                    ; $6f0a: $70
    ld l, [hl]                                    ; $6f0b: $6e
    ld a, [c]                                     ; $6f0c: $f2
    rla                                           ; $6f0d: $17
    add hl, de                                    ; $6f0e: $19
    inc sp                                        ; $6f0f: $33
    and h                                         ; $6f10: $a4
    sub e                                         ; $6f11: $93
    ld c, l                                       ; $6f12: $4d

Jump_035_6f13:
    push de                                       ; $6f13: $d5
    ld d, c                                       ; $6f14: $51
    ld l, d                                       ; $6f15: $6a
    ld l, a                                       ; $6f16: $6f
    ld l, $41                                     ; $6f17: $2e $41
    sub d                                         ; $6f19: $92
    ld [$9f70], a                                 ; $6f1a: $ea $70 $9f
    ld h, l                                       ; $6f1d: $65
    ldh a, [rNR12]                                ; $6f1e: $f0 $12
    ld sp, hl                                     ; $6f20: $f9
    sbc c                                         ; $6f21: $99
    ld d, a                                       ; $6f22: $57
    cp e                                          ; $6f23: $bb
    ld b, e                                       ; $6f24: $43
    add l                                         ; $6f25: $85
    ld [hl], l                                    ; $6f26: $75
    ret nz                                        ; $6f27: $c0

    sub b                                         ; $6f28: $90
    inc e                                         ; $6f29: $1c
    ld c, c                                       ; $6f2a: $49
    xor d                                         ; $6f2b: $aa
    rst $28                                       ; $6f2c: $ef
    inc hl                                        ; $6f2d: $23
    ld d, h                                       ; $6f2e: $54
    add a                                         ; $6f2f: $87
    dec sp                                        ; $6f30: $3b
    ld d, h                                       ; $6f31: $54
    ld de, $e587                                  ; $6f32: $11 $87 $e5
    add [hl]                                      ; $6f35: $86
    rst $38                                       ; $6f36: $ff
    cp b                                          ; $6f37: $b8
    add hl, sp                                    ; $6f38: $39
    and b                                         ; $6f39: $a0
    jp c, Jump_035_59d2                           ; $6f3a: $da $d2 $59

    xor h                                         ; $6f3d: $ac
    dec l                                         ; $6f3e: $2d
    db $dd                                        ; $6f3f: $dd
    adc e                                         ; $6f40: $8b
    cp a                                          ; $6f41: $bf
    ld l, [hl]                                    ; $6f42: $6e
    ldh a, [rTAC]                                 ; $6f43: $f0 $07
    or l                                          ; $6f45: $b5
    adc b                                         ; $6f46: $88
    inc sp                                        ; $6f47: $33
    ld c, b                                       ; $6f48: $48
    dec sp                                        ; $6f49: $3b
    xor a                                         ; $6f4a: $af
    dec b                                         ; $6f4b: $05
    dec d                                         ; $6f4c: $15
    ld a, a                                       ; $6f4d: $7f
    dec [hl]                                      ; $6f4e: $35
    sub $b1                                       ; $6f4f: $d6 $b1
    call nz, $afe7                                ; $6f51: $c4 $e7 $af
    ld a, e                                       ; $6f54: $7b
    pop af                                        ; $6f55: $f1
    ld d, a                                       ; $6f56: $57
    rst $00                                       ; $6f57: $c7
    ld e, $9f                                     ; $6f58: $1e $9f
    and [hl]                                      ; $6f5a: $a6
    add hl, sp                                    ; $6f5b: $39
    inc hl                                        ; $6f5c: $23
    ccf                                           ; $6f5d: $3f
    ld a, a                                       ; $6f5e: $7f
    ld e, l                                       ; $6f5f: $5d
    or l                                          ; $6f60: $b5
    call $5fbc                                    ; $6f61: $cd $bc $5f
    ld d, l                                       ; $6f64: $55
    add a                                         ; $6f65: $87
    dec sp                                        ; $6f66: $3b
    call z, Call_035_6777                         ; $6f67: $cc $77 $67

Call_035_6f6a:
    ld l, d                                       ; $6f6a: $6a
    or e                                          ; $6f6b: $b3
    xor $e7                                       ; $6f6c: $ee $e7
    rst $28                                       ; $6f6e: $ef
    ld e, h                                       ; $6f6f: $5c
    dec e                                         ; $6f70: $1d
    ld l, [hl]                                    ; $6f71: $6e
    ldh a, [$57]                                  ; $6f72: $f0 $57
    dec e                                         ; $6f74: $1d
    jp nc, $a023                                  ; $6f75: $d2 $23 $a0

    add a                                         ; $6f78: $87
    ld h, e                                       ; $6f79: $63
    ld a, l                                       ; $6f7a: $7d
    db $f4                                        ; $6f7b: $f4
    add h                                         ; $6f7c: $84
    xor a                                         ; $6f7d: $af
    ld e, b                                       ; $6f7e: $58
    dec bc                                        ; $6f7f: $0b
    jp nz, $3b67                                  ; $6f80: $c2 $67 $3b

    ld a, b                                       ; $6f83: $78
    ret                                           ; $6f84: $c9


    pop af                                        ; $6f85: $f1
    ld sp, hl                                     ; $6f86: $f9
    di                                            ; $6f87: $f3
    cp c                                          ; $6f88: $b9
    ret                                           ; $6f89: $c9


    ld e, a                                       ; $6f8a: $5f
    ld h, h                                       ; $6f8b: $64
    ld c, h                                       ; $6f8c: $4c
    jp c, Jump_035_70a4                           ; $6f8d: $da $a4 $70

    rst $38                                       ; $6f90: $ff
    ld l, d                                       ; $6f91: $6a
    adc e                                         ; $6f92: $8b
    or a                                          ; $6f93: $b7
    add sp, -$19                                  ; $6f94: $e8 $e7
    dec l                                         ; $6f96: $2d
    dec de                                        ; $6f97: $1b
    nop                                           ; $6f98: $00
    ld l, [hl]                                    ; $6f99: $6e
    or $97                                        ; $6f9a: $f6 $97
    call c, $fbcc                                 ; $6f9c: $dc $cc $fb
    ld d, l                                       ; $6f9f: $55
    ret                                           ; $6fa0: $c9


    ld a, [hl+]                                   ; $6fa1: $2a
    call $8c01                                    ; $6fa2: $cd $01 $8c
    ld a, [bc]                                    ; $6fa5: $0a
    sbc d                                         ; $6fa6: $9a
    ld sp, hl                                     ; $6fa7: $f9
    ld hl, sp-$04                                 ; $6fa8: $f8 $fc
    pop bc                                        ; $6faa: $c1
    cp c                                          ; $6fab: $b9
    ret                                           ; $6fac: $c9


    ld e, a                                       ; $6fad: $5f
    ld h, h                                       ; $6fae: $64
    call z, $3290                                 ; $6faf: $cc $90 $32
    jp z, $8218                                   ; $6fb2: $ca $18 $82

    adc b                                         ; $6fb5: $88
    push de                                       ; $6fb6: $d5
    sub a                                         ; $6fb7: $97
    db $f4                                        ; $6fb8: $f4
    or $77                                        ; $6fb9: $f6 $77
    adc e                                         ; $6fbb: $8b
    ld [hl], b                                    ; $6fbc: $70
    ld d, c                                       ; $6fbd: $51
    ld [hl], d                                    ; $6fbe: $72
    cp a                                          ; $6fbf: $bf
    ld [hl+], a                                   ; $6fc0: $22
    xor d                                         ; $6fc1: $aa
    add e                                         ; $6fc2: $83
    cp a                                          ; $6fc3: $bf
    and d                                         ; $6fc4: $a2
    ld h, e                                       ; $6fc5: $63
    add a                                         ; $6fc6: $87
    db $e4                                        ; $6fc7: $e4
    or e                                          ; $6fc8: $b3
    cp $73                                        ; $6fc9: $fe $73
    sub e                                         ; $6fcb: $93
    cp a                                          ; $6fcc: $bf
    ret z                                         ; $6fcd: $c8

    sbc b                                         ; $6fce: $98
    ld [hl], e                                    ; $6fcf: $73
    pop af                                        ; $6fd0: $f1
    jp z, Jump_000_34be                           ; $6fd1: $ca $be $34

    ld hl, sp-$15                                 ; $6fd4: $f8 $eb
    ld c, e                                       ; $6fd6: $4b
    inc b                                         ; $6fd7: $04
    ld [hl], b                                    ; $6fd8: $70
    adc l                                         ; $6fd9: $8d
    db $dd                                        ; $6fda: $dd
    ldh [rIF], a                                  ; $6fdb: $e0 $0f
    jp z, $d11a                                   ; $6fdd: $ca $1a $d1

    jp nc, $f3e3                                  ; $6fe0: $d2 $e3 $f3

    rst $20                                       ; $6fe3: $e7
    db $ed                                        ; $6fe4: $ed
    ld l, l                                       ; $6fe5: $6d
    db $ec                                        ; $6fe6: $ec
    ld e, l                                       ; $6fe7: $5d
    ld l, a                                       ; $6fe8: $6f
    sbc d                                         ; $6fe9: $9a
    inc bc                                        ; $6fea: $03
    inc hl                                        ; $6feb: $23
    dec e                                         ; $6fec: $1d
    db $eb                                        ; $6fed: $eb
    jp nc, $eb30                                  ; $6fee: $d2 $30 $eb

    dec l                                         ; $6ff1: $2d
    sub e                                         ; $6ff2: $93
    ccf                                           ; $6ff3: $3f

Call_035_6ff4:
    ld [de], a                                    ; $6ff4: $12
    or l                                          ; $6ff5: $b5
    sbc h                                         ; $6ff6: $9c
    ld c, e                                       ; $6ff7: $4b
    ld h, d                                       ; $6ff8: $62
    and c                                         ; $6ff9: $a1
    ld l, h                                       ; $6ffa: $6c
    ld h, b                                       ; $6ffb: $60
    ret                                           ; $6ffc: $c9


    ld c, d                                       ; $6ffd: $4a
    cp d                                          ; $6ffe: $ba
    adc c                                         ; $6fff: $89
    db $fc                                        ; $7000: $fc
    ld hl, $cb78                                  ; $7001: $21 $78 $cb
    inc b                                         ; $7004: $04
    or l                                          ; $7005: $b5
    jp c, $e1d5                                   ; $7006: $da $d5 $e1

    ld c, $f3                                     ; $7009: $0e $f3
    db $dd                                        ; $700b: $dd
    sbc c                                         ; $700c: $99
    jp c, $dbcc                                   ; $700d: $da $cc $db

    inc hl                                        ; $7010: $23
    and b                                         ; $7011: $a0
    jp c, $4f47                                   ; $7012: $da $47 $4f

    ld hl, sp-$76                                 ; $7015: $f8 $8a
    or l                                          ; $7017: $b5
    jr nz, jr_035_7096                            ; $7018: $20 $7c

    or $5c                                        ; $701a: $f6 $5c
    dec e                                         ; $701c: $1d
    ld l, [hl]                                    ; $701d: $6e
    ld a, [c]                                     ; $701e: $f2
    rla                                           ; $701f: $17
    add hl, de                                    ; $7020: $19
    ld d, e                                       ; $7021: $53
    or l                                          ; $7022: $b5
    cp d                                          ; $7023: $ba
    pop bc                                        ; $7024: $c1
    ld e, a                                       ; $7025: $5f
    xor l                                         ; $7026: $ad
    ld hl, sp-$15                                 ; $7027: $f8 $eb
    ldh [rNR51], a                                ; $7029: $e0 $25
    sbc c                                         ; $702b: $99
    adc a                                         ; $702c: $8f
    rst $08                                       ; $702d: $cf
    rra                                           ; $702e: $1f
    db $f4                                        ; $702f: $f4
    ld a, l                                       ; $7030: $7d
    sub $5b                                       ; $7031: $d6 $5b
    or l                                          ; $7033: $b5
    cp d                                          ; $7034: $ba
    ld e, a                                       ; $7035: $5f
    pop af                                        ; $7036: $f1
    ld d, a                                       ; $7037: $57
    db $ed                                        ; $7038: $ed
    db $ed                                        ; $7039: $ed
    add hl, bc                                    ; $703a: $09
    ld e, a                                       ; $703b: $5f
    or c                                          ; $703c: $b1
    sub [hl]                                      ; $703d: $96
    ld e, $01                                     ; $703e: $1e $01
    push de                                       ; $7040: $d5
    sub [hl]                                      ; $7041: $96
    adc $62                                       ; $7042: $ce $62
    ld l, l                                       ; $7044: $6d
    ld c, c                                       ; $7045: $49
    sbc e                                         ; $7046: $9b
    inc e                                         ; $7047: $1c
    sub [hl]                                      ; $7048: $96
    inc hl                                        ; $7049: $23
    and b                                         ; $704a: $a0
    add c                                         ; $704b: $81
    ld d, b                                       ; $704c: $50
    ld l, l                                       ; $704d: $6d
    jp hl                                         ; $704e: $e9


    inc a                                         ; $704f: $3c
    dec bc                                        ; $7050: $0b
    ld d, $09                                     ; $7051: $16 $09
    cp $a0                                        ; $7053: $fe $a0
    xor h                                         ; $7055: $ac
    cp l                                          ; $7056: $bd
    jp c, $e690                                   ; $7057: $da $90 $e6

    jp $a0ec                                      ; $705a: $c3 $ec $a0


    push de                                       ; $705d: $d5
    pop bc                                        ; $705e: $c1
    rst $18                                       ; $705f: $df
    cp c                                          ; $7060: $b9
    ret                                           ; $7061: $c9


    ld e, a                                       ; $7062: $5f
    ld h, h                                       ; $7063: $64
    ld c, h                                       ; $7064: $4c
    jp c, $ded1                                   ; $7065: $da $d1 $de

    xor l                                         ; $7068: $ad
    ld d, [hl]                                    ; $7069: $56
    dec h                                         ; $706a: $25
    xor e                                         ; $706b: $ab
    ld [c], a                                     ; $706c: $e2
    ld b, b                                       ; $706d: $40
    ld [hl+], a                                   ; $706e: $22

Call_035_706f:
    db $f4                                        ; $706f: $f4
    halt                                          ; $7070: $76
    dec e                                         ; $7071: $1d
    rlca                                          ; $7072: $07
    jp nz, $83b9                                  ; $7073: $c2 $b9 $83

    ld d, $1a                                     ; $7076: $16 $1a
    ld d, $84                                     ; $7078: $16 $84
    ld l, d                                       ; $707a: $6a
    ld d, l                                       ; $707b: $55
    dec e                                         ; $707c: $1d
    ld l, $59                                     ; $707d: $2e $59
    dec c                                         ; $707f: $0d
    ld e, [hl]                                    ; $7080: $5e
    jp nc, $f7cc                                  ; $7081: $d2 $cc $f7

    ld l, e                                       ; $7084: $6b
    rst $10                                       ; $7085: $d7
    db $db                                        ; $7086: $db
    ld d, c                                       ; $7087: $51
    ld l, d                                       ; $7088: $6a
    ld l, a                                       ; $7089: $6f
    ldh [$e2], a                                  ; $708a: $e0 $e2
    ld b, l                                       ; $708c: $45
    ld e, h                                       ; $708d: $5c
    ld [bc], a                                    ; $708e: $02
    cp l                                          ; $708f: $bd
    add a                                         ; $7090: $87
    or l                                          ; $7091: $b5
    dec h                                         ; $7092: $25

jr_035_7093:
    call $b301                                    ; $7093: $cd $01 $b3

jr_035_7096:
    xor e                                         ; $7096: $ab
    db $ed                                        ; $7097: $ed
    ld h, a                                       ; $7098: $67
    dec l                                         ; $7099: $2d
    db $fd                                        ; $709a: $fd
    adc d                                         ; $709b: $8a
    jr z, jr_035_70f7                             ; $709c: $28 $59

    ld c, c                                       ; $709e: $49
    scf                                           ; $709f: $37
    sub c                                         ; $70a0: $91
    ccf                                           ; $70a1: $3f
    inc b                                         ; $70a2: $04
    ld l, a                                       ; $70a3: $6f

Jump_035_70a4:
    sbc c                                         ; $70a4: $99
    and b                                         ; $70a5: $a0
    ld d, [hl]                                    ; $70a6: $56
    ei                                            ; $70a7: $fb
    call c, Call_000_2fe4                         ; $70a8: $dc $e4 $2f
    ld [hl-], a                                   ; $70ab: $32
    ld h, $cd                                     ; $70ac: $26 $cd
    ld bc, $b1c3                                  ; $70ae: $01 $c3 $b1
    ld e, c                                       ; $70b1: $59
    or b                                          ; $70b2: $b0
    ret nc                                        ; $70b3: $d0

    sbc e                                         ; $70b4: $9b
    ld h, e                                       ; $70b5: $63
    cp l                                          ; $70b6: $bd
    ld h, l                                       ; $70b7: $65
    inc d                                         ; $70b8: $14
    or l                                          ; $70b9: $b5
    ld a, [$bddc]                                 ; $70ba: $fa $dc $bd
    ld hl, sp+$2b                                 ; $70bd: $f8 $2b
    ld c, l                                       ; $70bf: $4d
    call c, $d2cc                                 ; $70c0: $dc $cc $d2
    rla                                           ; $70c3: $17
    sub [hl]                                      ; $70c4: $96
    sub d                                         ; $70c5: $92
    ld d, l                                       ; $70c6: $55

jr_035_70c7:
    ld e, c                                       ; $70c7: $59
    ld [$bd60], a                                 ; $70c8: $ea $60 $bd
    rst $20                                       ; $70cb: $e7
    sbc $bd                                       ; $70cc: $de $bd
    ld e, e                                       ; $70ce: $5b
    ld l, l                                       ; $70cf: $6d
    jp hl                                         ; $70d0: $e9


    inc a                                         ; $70d1: $3c
    dec bc                                        ; $70d2: $0b
    ld d, $09                                     ; $70d3: $16 $09
    cp $a0                                        ; $70d5: $fe $a0
    add e                                         ; $70d7: $83
    sub a                                         ; $70d8: $97
    or b                                          ; $70d9: $b0
    adc [hl]                                      ; $70da: $8e
    ld b, $42                                     ; $70db: $06 $42
    jp c, $aba1                                   ; $70dd: $da $a1 $ab

    dec l                                         ; $70e0: $2d
    ld a, b                                       ; $70e1: $78
    cp a                                          ; $70e2: $bf
    sbc d                                         ; $70e3: $9a
    dec b                                         ; $70e4: $05
    dec bc                                        ; $70e5: $0b
    dec [hl]                                      ; $70e6: $35
    halt                                          ; $70e7: $76
    cpl                                           ; $70e8: $2f
    cp $3a                                        ; $70e9: $fe $3a
    jr jr_035_7093                                ; $70eb: $18 $a6

    dec a                                         ; $70ed: $3d
    db $fc                                        ; $70ee: $fc
    and h                                         ; $70ef: $a4
    ld h, h                                       ; $70f0: $64
    ld d, l                                       ; $70f1: $55
    ld l, d                                       ; $70f2: $6a
    ld e, c                                       ; $70f3: $59
    ld l, a                                       ; $70f4: $6f
    sbc d                                         ; $70f5: $9a
    inc bc                                        ; $70f6: $03

jr_035_70f7:
    and e                                         ; $70f7: $a3
    cp a                                          ; $70f8: $bf
    xor b                                         ; $70f9: $a8
    and e                                         ; $70fa: $a3
    jr jr_035_717b                                ; $70fb: $18 $7e

    ret nc                                        ; $70fd: $d0

    ld d, c                                       ; $70fe: $51
    ld [hl], d                                    ; $70ff: $72
    ld de, $bc46                                  ; $7100: $11 $46 $bc
    and h                                         ; $7103: $a4
    ld [hl], e                                    ; $7104: $73
    xor d                                         ; $7105: $aa
    db $10                                        ; $7106: $10
    ld sp, $8da5                                  ; $7107: $31 $a5 $8d
    db $e3                                        ; $710a: $e3
    or b                                          ; $710b: $b0
    inc d                                         ; $710c: $14
    xor a                                         ; $710d: $af
    xor [hl]                                      ; $710e: $ae
    ld h, l                                       ; $710f: $65
    ld [hl], b                                    ; $7110: $70
    ld l, h                                       ; $7111: $6c
    db $ec                                        ; $7112: $ec
    ld d, a                                       ; $7113: $57
    jr c, jr_035_7179                             ; $7114: $38 $63

    ld c, $73                                     ; $7116: $0e $73
    xor d                                         ; $7118: $aa
    db $10                                        ; $7119: $10
    ld sp, $bda5                                  ; $711a: $31 $a5 $bd
    dec sp                                        ; $711d: $3b
    add $69                                       ; $711e: $c6 $69
    inc e                                         ; $7120: $1c
    add a                                         ; $7121: $87
    push hl                                       ; $7122: $e5
    call c, $c7fb                                 ; $7123: $dc $fb $c7
    ld l, d                                       ; $7126: $6a
    push de                                       ; $7127: $d5
    call z, $b5f2                                 ; $7128: $cc $f2 $b5
    dec bc                                        ; $712b: $0b
    ld a, [bc]                                    ; $712c: $0a
    ld hl, $70ed                                  ; $712d: $21 $ed $70
    ld l, h                                       ; $7130: $6c
    jr nz, jr_035_70c7                            ; $7131: $20 $94

    ld hl, sp+$08                                 ; $7133: $f8 $08
    push bc                                       ; $7135: $c5
    db $eb                                        ; $7136: $eb
    call c, $b14f                                 ; $7137: $dc $4f $b1
    cpl                                           ; $713a: $2f
    ld de, $b5c0                                  ; $713b: $11 $c0 $b5
    ld [hl], h                                    ; $713e: $74
    xor b                                         ; $713f: $a8
    jp z, $fdbc                                   ; $7140: $ca $bc $fd

    ld b, a                                       ; $7143: $47
    sub e                                         ; $7144: $93
    ld h, e                                       ; $7145: $63
    pop bc                                        ; $7146: $c1
    ld [hl], d                                    ; $7147: $72
    cp e                                          ; $7148: $bb
    ld b, $88                                     ; $7149: $06 $88
    inc [hl]                                      ; $714b: $34
    rlca                                          ; $714c: $07
    add hl, bc                                    ; $714d: $09
    db $fc                                        ; $714e: $fc
    push af                                       ; $714f: $f5
    ld c, [hl]                                    ; $7150: $4e
    ld [de], a                                    ; $7151: $12
    db $ed                                        ; $7152: $ed
    ld e, $9f                                     ; $7153: $1e $9f
    ld [hl], $b3                                  ; $7155: $36 $b3
    xor h                                         ; $7157: $ac
    ld a, e                                       ; $7158: $7b
    rrca                                          ; $7159: $0f
    ld b, h                                       ; $715a: $44
    rst $28                                       ; $715b: $ef
    cp c                                          ; $715c: $b9
    rst $30                                       ; $715d: $f7
    ld [hl], b                                    ; $715e: $70
    add e                                         ; $715f: $83
    cp a                                          ; $7160: $bf
    ld e, $01                                     ; $7161: $1e $01
    ld [hl], l                                    ; $7163: $75
    xor h                                         ; $7164: $ac
    adc a                                         ; $7165: $8f
    adc $ad                                       ; $7166: $ce $ad
    add h                                         ; $7168: $84
    db $fd                                        ; $7169: $fd
    db $db                                        ; $716a: $db
    xor a                                         ; $716b: $af
    db $10                                        ; $716c: $10
    inc de                                        ; $716d: $13
    sbc a                                         ; $716e: $9f
    db $d3                                        ; $716f: $d3
    inc e                                         ; $7170: $1c
    ld c, c                                       ; $7171: $49
    ld h, c                                       ; $7172: $61
    inc [hl]                                      ; $7173: $34
    halt                                          ; $7174: $76
    inc b                                         ; $7175: $04
    db $fd                                        ; $7176: $fd
    adc b                                         ; $7177: $88
    ld e, [hl]                                    ; $7178: $5e

jr_035_7179:
    ld [hl], d                                    ; $7179: $72
    inc e                                         ; $717a: $1c

jr_035_717b:
    add a                                         ; $717b: $87
    and l                                         ; $717c: $a5
    add c                                         ; $717d: $81
    ld d, b                                       ; $717e: $50
    rst $00                                       ; $717f: $c7
    or $ee                                        ; $7180: $f6 $ee
    adc l                                         ; $7182: $8d
    xor h                                         ; $7183: $ac
    ld l, d                                       ; $7184: $6a
    sbc a                                         ; $7185: $9f
    db $e3                                        ; $7186: $e3
    and b                                         ; $7187: $a0
    pop bc                                        ; $7188: $c1
    ld e, a                                       ; $7189: $5f
    sbc d                                         ; $718a: $9a
    inc bc                                        ; $718b: $03
    ret                                           ; $718c: $c9


    ld e, a                                       ; $718d: $5f
    ld h, h                                       ; $718e: $64
    ld c, h                                       ; $718f: $4c
    ld b, a                                       ; $7190: $47
    ld e, l                                       ; $7191: $5d
    nop                                           ; $7192: $00
    sub [hl]                                      ; $7193: $96
    ld hl, $5465                                  ; $7194: $21 $65 $54
    ld [hl], b                                    ; $7197: $70
    xor [hl]                                      ; $7198: $ae
    cp $88                                        ; $7199: $fe $88
    push de                                       ; $719b: $d5
    xor d                                         ; $719c: $aa
    ld a, [$0d97]                                 ; $719d: $fa $97 $0d
    add h                                         ; $71a0: $84
    ld hl, $c339                                  ; $71a1: $21 $39 $c3
    ld h, e                                       ; $71a4: $63
    dec sp                                        ; $71a5: $3b
    rst $08                                       ; $71a6: $cf
    ld [de], a                                    ; $71a7: $12
    sbc a                                         ; $71a8: $9f
    jp nc, Jump_000_0fbe                          ; $71a9: $d2 $be $0f

    push bc                                       ; $71ac: $c5
    ldh [$af], a                                  ; $71ad: $e0 $af
    ld d, $47                                     ; $71af: $16 $47
    or [hl]                                       ; $71b1: $b6
    add [hl]                                      ; $71b2: $86
    or h                                          ; $71b3: $b4
    jp $dd63                                      ; $71b4: $c3 $63 $dd


    ld de, $b216                                  ; $71b7: $11 $16 $b2
    ei                                            ; $71ba: $fb
    ld a, $14                                     ; $71bb: $3e $14
    add e                                         ; $71bd: $83
    cp a                                          ; $71be: $bf
    add $d6                                       ; $71bf: $c6 $d6
    or c                                          ; $71c1: $b1
    sbc $26                                       ; $71c2: $de $26
    ld a, a                                       ; $71c4: $7f
    db $f4                                        ; $71c5: $f4
    halt                                          ; $71c6: $76
    ret nc                                        ; $71c7: $d0

    ld [hl], d                                    ; $71c8: $72
    rst $38                                       ; $71c9: $ff
    xor e                                         ; $71ca: $ab
    ld c, l                                       ; $71cb: $4d
    ld hl, $01cd                                  ; $71cc: $21 $cd $01
    ld c, c                                       ; $71cf: $49
    rra                                           ; $71d0: $1f
    ei                                            ; $71d1: $fb
    add $16                                       ; $71d2: $c6 $16
    jr z, jr_035_71dc                             ; $71d4: $28 $06

    ld a, a                                       ; $71d6: $7f
    add l                                         ; $71d7: $85
    rrca                                          ; $71d8: $0f
    sbc b                                         ; $71d9: $98
    ret z                                         ; $71da: $c8

    rra                                           ; $71db: $1f

jr_035_71dc:
    dec c                                         ; $71dc: $0d
    cp $ba                                        ; $71dd: $fe $ba
    sbc a                                         ; $71df: $9f
    cp a                                          ; $71e0: $bf
    ld a, [hl-]                                   ; $71e1: $3a
    sub $47                                       ; $71e2: $d6 $47
    rst $20                                       ; $71e4: $e7
    ld e, c                                       ; $71e5: $59
    ld [c], a                                     ; $71e6: $e2
    ld d, e                                       ; $71e7: $53
    jp c, Jump_035_69bf                           ; $71e8: $da $bf $69

    ld c, $49                                     ; $71eb: $0e $49
    pop hl                                        ; $71ed: $e1
    adc [hl]                                      ; $71ee: $8e
    or b                                          ; $71ef: $b0
    sub b                                         ; $71f0: $90
    ld e, l                                       ; $71f1: $5d
    ld d, [hl]                                    ; $71f2: $56
    cp $2e                                        ; $71f3: $fe $2e
    ld hl, sp+$5c                                 ; $71f5: $f8 $5c
    db $fd                                        ; $71f7: $fd
    ld [hl], a                                    ; $71f8: $77
    dec de                                        ; $71f9: $1b
    ld [$70c5], sp                                ; $71fa: $08 $c5 $70
    ccf                                           ; $71fd: $3f
    push bc                                       ; $71fe: $c5
    ld h, $7f                                     ; $71ff: $26 $7f
    ld [hl], h                                    ; $7201: $74
    cp l                                          ; $7202: $bd
    ld [hl], b                                    ; $7203: $70
    cp e                                          ; $7204: $bb
    adc [hl]                                      ; $7205: $8e
    jp $a43b                                      ; $7206: $c3 $3b $a4


    ld l, l                                       ; $7209: $6d
    ld [bc], a                                    ; $720a: $02
    ld a, a                                       ; $720b: $7f
    ld a, l                                       ; $720c: $7d
    sbc a                                         ; $720d: $9f
    ld [hl], l                                    ; $720e: $75
    add a                                         ; $720f: $87
    ld l, [hl]                                    ; $7210: $6e
    add [hl]                                      ; $7211: $86
    ld [hl], b                                    ; $7212: $70
    xor [hl]                                      ; $7213: $ae
    cp $88                                        ; $7214: $fe $88
    dec c                                         ; $7216: $0d
    ret                                           ; $7217: $c9


    cp h                                          ; $7218: $bc
    ld a, [$d57e]                                 ; $7219: $fa $7e $d5
    or c                                          ; $721c: $b1
    sbc l                                         ; $721d: $9d
    push bc                                       ; $721e: $c5
    jp z, $afd2                                   ; $721f: $ca $d2 $af

    sub b                                         ; $7222: $90
    sub l                                         ; $7223: $95
    ldh [rIF], a                                  ; $7224: $e0 $0f
    jp nc, $f026                                  ; $7226: $d2 $26 $f0

    ld d, a                                       ; $7229: $57
    ld d, [hl]                                    ; $722a: $56
    cp [hl]                                       ; $722b: $be
    ld [c], a                                     ; $722c: $e2
    rst $08                                       ; $722d: $cf
    dec a                                         ; $722e: $3d
    push de                                       ; $722f: $d5
    rst $00                                       ; $7230: $c7
    ld e, a                                       ; $7231: $5f
    db $ed                                        ; $7232: $ed
    dec a                                         ; $7233: $3d
    ld d, a                                       ; $7234: $57
    ld e, e                                       ; $7235: $5b
    xor d                                         ; $7236: $aa
    cp l                                          ; $7237: $bd
    ld c, l                                       ; $7238: $4d
    cp $e8                                        ; $7239: $fe $e8
    xor l                                         ; $723b: $ad
    ld h, e                                       ; $723c: $63
    adc c                                         ; $723d: $89
    call nz, Call_000_20cd                        ; $723e: $c4 $cd $20
    ld l, l                                       ; $7241: $6d
    ld [bc], a                                    ; $7242: $02
    ld a, a                                       ; $7243: $7f
    dec e                                         ; $7244: $1d
    or h                                          ; $7245: $b4
    add b                                         ; $7246: $80
    ld a, h                                       ; $7247: $7c

Jump_035_7248:
    push hl                                       ; $7248: $e5
    ld [$ea90], a                                 ; $7249: $ea $90 $ea
    jr nc, @-$44                                  ; $724c: $30 $ba

    ld b, e                                       ; $724e: $43
    dec d                                         ; $724f: $15
    sub c                                         ; $7250: $91

Jump_035_7251:
    ld a, l                                       ; $7251: $7d
    sub $fd                                       ; $7252: $d6 $fd
    sbc e                                         ; $7254: $9b
    and $a3                                       ; $7255: $e6 $a3
    cpl                                           ; $7257: $2f
    ld sp, hl                                     ; $7258: $f9
    db $db                                        ; $7259: $db
    db $db                                        ; $725a: $db
    rst $18                                       ; $725b: $df
    ld l, l                                       ; $725c: $6d
    ldh a, [$57]                                  ; $725d: $f0 $57
    db $ed                                        ; $725f: $ed
    ld l, l                                       ; $7260: $6d
    ld a, [c]                                     ; $7261: $f2
    ld b, a                                       ; $7262: $47
    ld l, a                                       ; $7263: $6f
    or l                                          ; $7264: $b5
    ld [hl], a                                    ; $7265: $77
    ld l, e                                       ; $7266: $6b
    cp c                                          ; $7267: $b9
    ld a, c                                       ; $7268: $79
    rst $10                                       ; $7269: $d7
    dec sp                                        ; $726a: $3b
    ld h, e                                       ; $726b: $63
    ld c, $c3                                     ; $726c: $0e $c3
    and l                                         ; $726e: $a5
    add c                                         ; $726f: $81
    ret nc                                        ; $7270: $d0

    pop bc                                        ; $7271: $c1
    cp b                                          ; $7272: $b8
    xor b                                         ; $7273: $a8
    ld bc, $26d2                                  ; $7274: $01 $d2 $26
    ld a, l                                       ; $7277: $7d
    ld l, h                                       ; $7278: $6c
    jr nz, jr_035_72cf                            ; $7279: $20 $54

    ld l, l                                       ; $727b: $6d
    and $fb                                       ; $727c: $e6 $fb
    ret c                                         ; $727e: $d8

    ld l, a                                       ; $727f: $6f
    ld l, c                                       ; $7280: $69
    ldh a, [rPCM34]                               ; $7281: $f0 $77
    ld l, $5e                                     ; $7283: $2e $5e
    reti                                          ; $7285: $d9


    sub a                                         ; $7286: $97
    add $36                                       ; $7287: $c6 $36
    ld sp, hl                                     ; $7289: $f9
    jp z, $5fee                                   ; $728a: $ca $ee $5f

    nop                                           ; $728d: $00
    db $d3                                        ; $728e: $d3
    adc [hl]                                      ; $728f: $8e
    or $6e                                        ; $7290: $f6 $6e
    or l                                          ; $7292: $b5
    xor d                                         ; $7293: $aa
    or c                                          ; $7294: $b1
    ret z                                         ; $7295: $c8

    rst $18                                       ; $7296: $df
    daa                                           ; $7297: $27
    ld [$7384], sp                                ; $7298: $08 $84 $73
    db $e3                                        ; $729b: $e3
    ld l, l                                       ; $729c: $6d
    dec e                                         ; $729d: $1d
    ld c, e                                       ; $729e: $4b
    ld d, [hl]                                    ; $729f: $56
    call nz, $ccdf                                ; $72a0: $c4 $df $cc
    ld e, e                                       ; $72a3: $5b
    or l                                          ; $72a4: $b5
    cp d                                          ; $72a5: $ba
    ld h, h                                       ; $72a6: $64
    dec h                                         ; $72a7: $25
    inc h                                         ; $72a8: $24
    ld a, [hl]                                    ; $72a9: $7e
    inc hl                                        ; $72aa: $23
    dec hl                                        ; $72ab: $2b
    ld d, [hl]                                    ; $72ac: $56
    ld h, d                                       ; $72ad: $62
    inc sp                                        ; $72ae: $33
    rst $28                                       ; $72af: $ef
    cp c                                          ; $72b0: $b9
    xor h                                         ; $72b1: $ac
    call nz, $6e66                                ; $72b2: $c4 $66 $6e
    ldh a, [$57]                                  ; $72b5: $f0 $57
    dec e                                         ; $72b7: $1d
    ld d, d                                       ; $72b8: $52
    rst $00                                       ; $72b9: $c7
    ld a, d                                       ; $72ba: $7a
    cp e                                          ; $72bb: $bb
    ld d, [hl]                                    ; $72bc: $56
    sbc $9e                                       ; $72bd: $de $9e
    ldh a, [$15]                                  ; $72bf: $f0 $15
    ld l, e                                       ; $72c1: $6b
    pop bc                                        ; $72c2: $c1
    ld bc, $fc51                                  ; $72c3: $01 $51 $fc
    sub l                                         ; $72c6: $95
    ld [hl], l                                    ; $72c7: $75
    and h                                         ; $72c8: $a4
    add hl, sp                                    ; $72c9: $39
    add hl, bc                                    ; $72ca: $09
    db $fc                                        ; $72cb: $fc

jr_035_72cc:
    sub l                                         ; $72cc: $95
    adc l                                         ; $72cd: $8d
    xor l                                         ; $72ce: $ad

jr_035_72cf:
    cp $83                                        ; $72cf: $fe $83
    rst $10                                       ; $72d1: $d7
    sub [hl]                                      ; $72d2: $96
    call nz, $c85a                                ; $72d3: $c4 $5a $c8
    ld d, [hl]                                    ; $72d6: $56
    add hl, de                                    ; $72d7: $19
    sbc h                                         ; $72d8: $9c
    xor e                                         ; $72d9: $ab
    ccf                                           ; $72da: $3f
    ld h, d                                       ; $72db: $62
    dec l                                         ; $72dc: $2d
    dec e                                         ; $72dd: $1d
    or h                                          ; $72de: $b4
    and b                                         ; $72df: $a0
    ld [c], a                                     ; $72e0: $e2
    rst $08                                       ; $72e1: $cf
    db $db                                        ; $72e2: $db
    ld a, e                                       ; $72e3: $7b
    adc b                                         ; $72e4: $88
    ld a, $77                                     ; $72e5: $3e $77
    ccf                                           ; $72e7: $3f
    ld a, a                                       ; $72e8: $7f
    push de                                       ; $72e9: $d5
    ld a, [c]                                     ; $72ea: $f2
    push de                                       ; $72eb: $d5
    jr c, jr_035_72cc                             ; $72ec: $38 $de

    sub d                                         ; $72ee: $92
    ld d, l                                       ; $72ef: $55
    inc sp                                        ; $72f0: $33
    db $d3                                        ; $72f1: $d3
    cp a                                          ; $72f2: $bf
    sbc c                                         ; $72f3: $99
    scf                                           ; $72f4: $37
    call $f301                                    ; $72f5: $cd $01 $f3
    add [hl]                                      ; $72f8: $86
    ld l, c                                       ; $72f9: $69
    add hl, de                                    ; $72fa: $19
    add hl, hl                                    ; $72fb: $29
    adc c                                         ; $72fc: $89
    rst $18                                       ; $72fd: $df
    adc $4d                                       ; $72fe: $ce $4d
    cp $22                                        ; $7300: $fe $22
    ld h, e                                       ; $7302: $63
    jp nc, $fa8e                                  ; $7303: $d2 $8e $fa

    adc b                                         ; $7306: $88
    db $fd                                        ; $7307: $fd
    adc d                                         ; $7308: $8a
    jr c, jr_035_7362                             ; $7309: $38 $57

    ld a, a                                       ; $730b: $7f
    call nz, Call_035_556a                        ; $730c: $c4 $6a $55
    dec e                                         ; $730f: $1d
    db $fc                                        ; $7310: $fc
    ld [hl], l                                    ; $7311: $75
    add e                                         ; $7312: $83
    ccf                                           ; $7313: $3f
    add sp, -$60                                  ; $7314: $e8 $a0
    add l                                         ; $7316: $85
    dec d                                         ; $7317: $15
    rst $28                                       ; $7318: $ef
    ld [hl+], a                                   ; $7319: $22
    and h                                         ; $731a: $a4
    add hl, sp                                    ; $731b: $39
    ld c, c                                       ; $731c: $49
    sub [hl]                                      ; $731d: $96
    ld h, $7f                                     ; $731e: $26 $7f
    ld [hl], h                                    ; $7320: $74
    inc bc                                        ; $7321: $03
    and c                                         ; $7322: $a1
    dec de                                        ; $7323: $1b
    db $fc                                        ; $7324: $fc
    ld b, c                                       ; $7325: $41
    ld e, a                                       ; $7326: $5f
    ld e, b                                       ; $7327: $58
    adc $4d                                       ; $7328: $ce $4d
    cp $22                                        ; $732a: $fe $22
    ld h, e                                       ; $732c: $63
    add [hl]                                      ; $732d: $86
    inc [hl]                                      ; $732e: $34
    ld c, c                                       ; $732f: $49
    push af                                       ; $7330: $f5
    ld d, b                                       ; $7331: $50
    adc b                                         ; $7332: $88
    ret nc                                        ; $7333: $d0

    ld a, b                                       ; $7334: $78
    ld e, e                                       ; $7335: $5b
    cp h                                          ; $7336: $bc
    adc d                                         ; $7337: $8a
    db $fc                                        ; $7338: $fc
    xor l                                         ; $7339: $ad
    add hl, hl                                    ; $733a: $29
    db $ed                                        ; $733b: $ed
    dec a                                         ; $733c: $3d
    call c, $ec63                                 ; $733d: $dc $63 $ec
    adc h                                         ; $7340: $8c
    ld b, $7f                                     ; $7341: $06 $7f
    dec h                                         ; $7343: $25
    ld h, d                                       ; $7344: $62
    or l                                          ; $7345: $b5
    ld [hl], a                                    ; $7346: $77
    ld c, b                                       ; $7347: $48
    ld c, $c9                                     ; $7348: $0e $c9
    rra                                           ; $734a: $1f
    and c                                         ; $734b: $a1
    ld e, d                                       ; $734c: $5a
    push de                                       ; $734d: $d5
    or c                                          ; $734e: $b1
    sbc $0e                                       ; $734f: $de $0e
    add $45                                       ; $7351: $c6 $45
    dec c                                         ; $7353: $0d
    ldh [$6d], a                                  ; $7354: $e0 $6d
    ld a, [c]                                     ; $7356: $f2
    ld b, a                                       ; $7357: $47
    ld l, a                                       ; $7358: $6f
    inc sp                                        ; $7359: $33
    and e                                         ; $735a: $a3
    sbc a                                         ; $735b: $9f
    ld [hl], a                                    ; $735c: $77
    add $1c                                       ; $735d: $c6 $1c
    or e                                          ; $735f: $b3
    cp $73                                        ; $7360: $fe $73

jr_035_7362:
    dec l                                         ; $7362: $2d
    dec c                                         ; $7363: $0d
    add h                                         ; $7364: $84
    ld a, [hl]                                    ; $7365: $7e
    ld b, l                                       ; $7366: $45
    ld d, h                                       ; $7367: $54
    add a                                         ; $7368: $87
    rlc h                                         ; $7369: $cb $04
    ld b, l                                       ; $736b: $45
    ld a, b                                       ; $736c: $78
    xor e                                         ; $736d: $ab
    cpl                                           ; $736e: $2f
    add c                                         ; $736f: $81
    sub d                                         ; $7370: $92
    ld d, l                                       ; $7371: $55
    and $77                                       ; $7372: $e6 $77
    dec c                                         ; $7374: $0d
    inc c                                         ; $7375: $0c
    sbc b                                         ; $7376: $98
    ld b, d                                       ; $7377: $42
    sbc d                                         ; $7378: $9a
    inc bc                                        ; $7379: $03
    add hl, bc                                    ; $737a: $09
    db $fc                                        ; $737b: $fc
    push af                                       ; $737c: $f5
    ld a, l                                       ; $737d: $7d
    sub $75                                       ; $737e: $d6 $75
    xor h                                         ; $7380: $ac
    or a                                          ; $7381: $b7
    ret                                           ; $7382: $c9


    rra                                           ; $7383: $1f
    cp l                                          ; $7384: $bd
    db $fd                                        ; $7385: $fd
    adc d                                         ; $7386: $8a
    xor b                                         ; $7387: $a8
    or [hl]                                       ; $7388: $b6
    ld [hl], h                                    ; $7389: $74
    ld l, [hl]                                    ; $738a: $6e
    pop af                                        ; $738b: $f1
    ret nz                                        ; $738c: $c0

    add b                                         ; $738d: $80
    sbc e                                         ; $738e: $9b
    add hl, de                                    ; $738f: $19
    db $fd                                        ; $7390: $fd
    cp h                                          ; $7391: $bc
    rst $20                                       ; $7392: $e7
    ld [$6370], a                                 ; $7393: $ea $70 $63
    or c                                          ; $7396: $b1
    jp Jump_035_6745                              ; $7397: $c3 $45 $67


    ld b, [hl]                                    ; $739a: $46
    cp $2e                                        ; $739b: $fe $2e
    call nz, $a412                                ; $739d: $c4 $12 $a4
    daa                                           ; $73a0: $27
    sub b                                         ; $73a1: $90
    ld [hl], $81                                  ; $73a2: $36 $81
    cp a                                          ; $73a4: $bf
    sbc $1d                                       ; $73a5: $de $1d
    db $e3                                        ; $73a7: $e3
    ld [hl], h                                    ; $73a8: $74
    sub l                                         ; $73a9: $95
    ld [hl], h                                    ; $73aa: $74
    add e                                         ; $73ab: $83
    ccf                                           ; $73ac: $3f
    add sp, -$1f                                  ; $73ad: $e8 $e1
    daa                                           ; $73af: $27
    rst $20                                       ; $73b0: $e7
    sbc $4d                                       ; $73b1: $de $4d
    ld sp, hl                                     ; $73b3: $f9
    ld [hl], e                                    ; $73b4: $73
    ld h, a                                       ; $73b5: $67
    ld sp, hl                                     ; $73b6: $f9
    jp nz, $96ba                                  ; $73b7: $c2 $ba $96

    cp [hl]                                       ; $73ba: $be
    rrca                                          ; $73bb: $0f
    ldh [$34], a                                  ; $73bc: $e0 $34
    rlca                                          ; $73be: $07
    ld c, c                                       ; $73bf: $49
    xor d                                         ; $73c0: $aa
    ret z                                         ; $73c1: $c8

    sbc a                                         ; $73c2: $9f
    ld h, e                                       ; $73c3: $63
    ld de, $c1ba                                  ; $73c4: $11 $ba $c1
    rra                                           ; $73c7: $1f
    sub h                                         ; $73c8: $94
    dec [hl]                                      ; $73c9: $35
    ld e, [hl]                                    ; $73ca: $5e
    xor e                                         ; $73cb: $ab
    dec l                                         ; $73cc: $2d
    ret c                                         ; $73cd: $d8

    adc e                                         ; $73ce: $8b
    add b                                         ; $73cf: $80
    cp $a3                                        ; $73d0: $fe $a3
    di                                            ; $73d2: $f3
    inc l                                         ; $73d3: $2c
    ld e, b                                       ; $73d4: $58
    inc h                                         ; $73d5: $24
    ld hl, sp-$7d                                 ; $73d6: $f8 $83
    add d                                         ; $73d8: $82
    add e                                         ; $73d9: $83
    sub d                                         ; $73da: $92
    push de                                       ; $73db: $d5
    ld a, [$de1d]                                 ; $73dc: $fa $1d $de
    ld [hl], e                                    ; $73df: $73
    sub e                                         ; $73e0: $93
    cp a                                          ; $73e1: $bf
    ret z                                         ; $73e2: $c8

    sbc b                                         ; $73e3: $98
    inc [hl]                                      ; $73e4: $34
    rlca                                          ; $73e5: $07
    and e                                         ; $73e6: $a3
    inc l                                         ; $73e7: $2c
    ld a, h                                       ; $73e8: $7c
    call z, $efb9                                 ; $73e9: $cc $b9 $ef
    inc hl                                        ; $73ec: $23
    ld d, h                                       ; $73ed: $54
    xor e                                         ; $73ee: $ab
    cp [hl]                                       ; $73ef: $be
    or b                                          ; $73f0: $b0
    inc [hl]                                      ; $73f1: $34
    inc h                                         ; $73f2: $24
    di                                            ; $73f3: $f3
    ld [$55fb], a                                 ; $73f4: $ea $fb $55
    rst $00                                       ; $73f7: $c7
    ld a, d                                       ; $73f8: $7a
    dec sp                                        ; $73f9: $3b
    jr jr_035_7413                                ; $73fa: $18 $17

    dec [hl]                                      ; $73fc: $35
    add b                                         ; $73fd: $80
    or a                                          ; $73fe: $b7
    ret                                           ; $73ff: $c9


    rra                                           ; $7400: $1f
    cp l                                          ; $7401: $bd
    call Call_035_7e8c                            ; $7402: $cd $8c $7e
    sbc $19                                       ; $7405: $de $19
    ld [hl], e                                    ; $7407: $73
    or e                                          ; $7408: $b3
    cp $73                                        ; $7409: $fe $73
    dec l                                         ; $740b: $2d
    dec c                                         ; $740c: $0d
    add h                                         ; $740d: $84
    ld l, d                                       ; $740e: $6a
    dec h                                         ; $740f: $25
    db $fc                                        ; $7410: $fc
    ld d, l                                       ; $7411: $55
    add a                                         ; $7412: $87

jr_035_7413:
    dec sp                                        ; $7413: $3b
    scf                                           ; $7414: $37
    ld c, c                                       ; $7415: $49
    ld a, [de]                                    ; $7416: $1a
    adc e                                         ; $7417: $8b
    dec e                                         ; $7418: $1d
    ld l, $3a                                     ; $7419: $2e $3a
    inc sp                                        ; $741b: $33
    ld a, [c]                                     ; $741c: $f2
    ld [hl], a                                    ; $741d: $77
    ld hl, $f336                                  ; $741e: $21 $36 $f3
    cp e                                          ; $7421: $bb
    ld b, $06                                     ; $7422: $06 $06
    ld c, h                                       ; $7424: $4c
    ld hl, $e8ed                                  ; $7425: $21 $ed $e8
    cpl                                           ; $7428: $2f
    ld [$2068], a                                 ; $7429: $ea $68 $20
    call nc, $c1d2                                ; $742c: $d4 $d2 $c1
    cp b                                          ; $742f: $b8
    xor b                                         ; $7430: $a8
    ld bc, $cc66                                  ; $7431: $01 $66 $cc
    ld bc, $23c3                                  ; $7434: $01 $c3 $23
    di                                            ; $7437: $f3
    ld [bc], a                                    ; $7438: $02
    dec c                                         ; $7439: $0d
    cp $1a                                        ; $743a: $fe $1a
    ld [$d4b5], sp                                ; $743c: $08 $b5 $d4
    or c                                          ; $743f: $b1
    ld l, $2b                                     ; $7440: $2e $2b
    sbc $f5                                       ; $7442: $de $f5
    ld l, d                                       ; $7444: $6a
    ld [hl], a                                    ; $7445: $77
    add h                                         ; $7446: $84
    add l                                         ; $7447: $85
    db $ec                                        ; $7448: $ec
    ld [hl], e                                    ; $7449: $73
    ld [hl], l                                    ; $744a: $75
    cp b                                          ; $744b: $b8
    add e                                         ; $744c: $83
    ld d, $f4                                     ; $744d: $16 $f4
    di                                            ; $744f: $f3
    ld [bc], a                                    ; $7450: $02
    dec c                                         ; $7451: $0d

Jump_035_7452:
    cp $1a                                        ; $7452: $fe $1a
    ld e, e                                       ; $7454: $5b
    rst $00                                       ; $7455: $c7
    ld a, d                                       ; $7456: $7a
    sbc e                                         ; $7457: $9b
    db $fc                                        ; $7458: $fc
    pop de                                        ; $7459: $d1
    db $db                                        ; $745a: $db
    ld b, c                                       ; $745b: $41
    set 7, l                                      ; $745c: $cb $fd
    xor a                                         ; $745e: $af
    ld [hl], $85                                  ; $745f: $36 $85
    sbc $95                                       ; $7461: $de $95
    ld l, b                                       ; $7463: $68
    and a                                         ; $7464: $a7
    add hl, sp                                    ; $7465: $39
    ld b, e                                       ; $7466: $43
    ld sp, hl                                     ; $7467: $f9
    dec hl                                        ; $7468: $2b
    ld e, [hl]                                    ; $7469: $5e
    rst $20                                       ; $746a: $e7
    ld [$2cff], a                                 ; $746b: $ea $ff $2c
    cp l                                          ; $746e: $bd
    ld e, l                                       ; $746f: $5d
    rst $00                                       ; $7470: $c7
    ld bc, $96d5                                  ; $7471: $01 $d5 $96
    adc [hl]                                      ; $7474: $8e
    cp $fc                                        ; $7475: $fe $fc
    ld h, c                                       ; $7477: $61
    cp a                                          ; $7478: $bf
    ld [hl+], a                                   ; $7479: $22
    xor d                                         ; $747a: $aa
    ld a, l                                       ; $747b: $7d
    ld [hl], h                                    ; $747c: $74
    ret c                                         ; $747d: $d8

    and l                                         ; $747e: $a5
    cp l                                          ; $747f: $bd
    ld c, l                                       ; $7480: $4d
    db $d3                                        ; $7481: $d3
    inc [hl]                                      ; $7482: $34
    rlca                                          ; $7483: $07
    and e                                         ; $7484: $a3
    db $e4                                        ; $7485: $e4
    ld [hl+], a                                   ; $7486: $22
    adc h                                         ; $7487: $8c
    ld a, b                                       ; $7488: $78
    ld c, c                                       ; $7489: $49
    ld b, a                                       ; $748a: $47
    ld [hl], d                                    ; $748b: $72
    add $6b                                       ; $748c: $c6 $6b
    ld a, a                                       ; $748e: $7f
    or $29                                        ; $748f: $f6 $29
    db $ed                                        ; $7491: $ed
    ei                                            ; $7492: $fb
    ret nc                                        ; $7493: $d0

    inc hl                                        ; $7494: $23
    and h                                         ; $7495: $a4
    ld e, a                                       ; $7496: $5f
    ld de, $4199                                  ; $7497: $11 $99 $41
    ld a, [hl]                                    ; $749a: $7e
    and $3d                                       ; $749b: $e6 $3d
    scf                                           ; $749d: $37
    sbc $96                                       ; $749e: $de $96
    xor h                                         ; $74a0: $ac
    ld c, d                                       ; $74a1: $4a
    db $fc                                        ; $74a2: $fc
    call Call_035_69bc                            ; $74a3: $cd $bc $69
    ld c, $09                                     ; $74a6: $0e $09
    db $fc                                        ; $74a8: $fc
    push af                                       ; $74a9: $f5
    ld a, l                                       ; $74aa: $7d
    sub $cd                                       ; $74ab: $d6 $cd
    inc l                                         ; $74ad: $2c
    ld e, a                                       ; $74ae: $5f
    cp e                                          ; $74af: $bb
    ld h, [hl]                                    ; $74b0: $66
    cp l                                          ; $74b1: $bd
    ld [hl], l                                    ; $74b2: $75
    xor h                                         ; $74b3: $ac
    or a                                          ; $74b4: $b7
    ld [hl], c                                    ; $74b5: $71
    ld [hl], h                                    ; $74b6: $74
    cp b                                          ; $74b7: $b8
    add sp, -$34                                  ; $74b8: $e8 $cc
    ret z                                         ; $74ba: $c8

    rst $18                                       ; $74bb: $df
    add l                                         ; $74bc: $85
    ret c                                         ; $74bd: $d8

    call z, $e7e8                                 ; $74be: $cc $e8 $e7
    ld c, l                                       ; $74c1: $4d
    ld [hl], e                                    ; $74c2: $73
    or e                                          ; $74c3: $b3
    dec sp                                        ; $74c4: $3b
    or $5c                                        ; $74c5: $f6 $5c
    xor l                                         ; $74c7: $ad
    ld h, [hl]                                    ; $74c8: $66
    call z, Call_000_0901                         ; $74c9: $cc $01 $09
    db $fc                                        ; $74cc: $fc
    push af                                       ; $74cd: $f5
    xor $18                                       ; $74ce: $ee $18
    and a                                         ; $74d0: $a7
    dec de                                        ; $74d1: $1b
    db $fc                                        ; $74d2: $fc
    ld bc, $f076                                  ; $74d3: $01 $76 $f0
    jp c, $d63a                                   ; $74d6: $da $3a $d6

    ld b, a                                       ; $74d9: $47
    rlca                                          ; $74da: $07
    db $e3                                        ; $74db: $e3
    and d                                         ; $74dc: $a2
    ld b, $f0                                     ; $74dd: $06 $f0
    ld [hl], $f9                                  ; $74df: $36 $f9
    and e                                         ; $74e1: $a3
    scf                                           ; $74e2: $37
    call $b301                                    ; $74e3: $cd $01 $b3
    dec sp                                        ; $74e6: $3b
    or $5c                                        ; $74e7: $f6 $5c
    cp h                                          ; $74e9: $bc
    jr z, @+$07                                   ; $74ea: $28 $05

    scf                                           ; $74ec: $37
    ld hl, sp-$65                                 ; $74ed: $f8 $9b
    ld sp, $0907                                  ; $74ef: $31 $07 $09
    db $fc                                        ; $74f2: $fc
    push af                                       ; $74f3: $f5
    ld a, l                                       ; $74f4: $7d
    sub $dd                                       ; $74f5: $d6 $dd
    adc e                                         ; $74f7: $8b
    cp a                                          ; $74f8: $bf
    ld l, [hl]                                    ; $74f9: $6e
    cp b                                          ; $74fa: $b8
    adc [hl]                                      ; $74fb: $8e
    push af                                       ; $74fc: $f5
    ld [hl], $f9                                  ; $74fd: $36 $f9
    and e                                         ; $74ff: $a3
    or a                                          ; $7500: $b7
    sbc c                                         ; $7501: $99
    pop de                                        ; $7502: $d1
    rst $08                                       ; $7503: $cf
    sbc e                                         ; $7504: $9b
    and $43                                       ; $7505: $e6 $43
    add hl, hl                                    ; $7507: $29
    dec [hl]                                      ; $7508: $35

jr_035_7509:
    or $46                                        ; $7509: $f6 $46
    cp a                                          ; $750b: $bf
    sub h                                         ; $750c: $94
    ld [hl], l                                    ; $750d: $75
    ld d, h                                       ; $750e: $54
    add a                                         ; $750f: $87
    sbc h                                         ; $7510: $9c
    sbc e                                         ; $7511: $9b
    db $fc                                        ; $7512: $fc
    ld b, l                                       ; $7513: $45
    add $cc                                       ; $7514: $c6 $cc
    sbc b                                         ; $7516: $98
    inc bc                                        ; $7517: $03
    or e                                          ; $7518: $b3
    ld e, e                                       ; $7519: $5b
    ld b, $ab                                     ; $751a: $06 $ab
    cpl                                           ; $751c: $2f
    cp $7a                                        ; $751d: $fe $7a
    xor d                                         ; $751f: $aa
    adc a                                         ; $7520: $8f
    cp a                                          ; $7521: $bf
    cp d                                          ; $7522: $ba
    ld a, a                                       ; $7523: $7f
    or l                                          ; $7524: $b5
    dec b                                         ; $7525: $05
    ld a, e                                       ; $7526: $7b
    inc b                                         ; $7527: $04
    ld d, h                                       ; $7528: $54
    dec sp                                        ; $7529: $3b
    sub $5b                                       ; $752a: $d6 $5b
    ld a, l                                       ; $752c: $7d
    ld e, l                                       ; $752d: $5d
    add h                                         ; $752e: $84
    or a                                          ; $752f: $b7
    or e                                          ; $7530: $b3
    ret z                                         ; $7531: $c8

    rst $08                                       ; $7532: $cf
    cp h                                          ; $7533: $bc
    ld b, e                                       ; $7534: $43
    ld [hl], d                                    ; $7535: $72
    or e                                          ; $7536: $b3
    ld a, h                                       ; $7537: $7c
    push bc                                       ; $7538: $c5
    ld e, a                                       ; $7539: $5f
    sbc d                                         ; $753a: $9a
    inc bc                                        ; $753b: $03
    or e                                          ; $753c: $b3
    dec sp                                        ; $753d: $3b
    or $dc                                        ; $753e: $f6 $dc
    dec sp                                        ; $7540: $3b
    ld c, c                                       ; $7541: $49
    or h                                          ; $7542: $b4
    dec de                                        ; $7543: $1b
    db $fc                                        ; $7544: $fc
    push af                                       ; $7545: $f5
    or e                                          ; $7546: $b3
    sub [hl]                                      ; $7547: $96
    ld h, [hl]                                    ; $7548: $66
    sub [hl]                                      ; $7549: $96
    ld [hl], l                                    ; $754a: $75
    sbc d                                         ; $754b: $9a
    inc bc                                        ; $754c: $03
    add hl, bc                                    ; $754d: $09
    db $fc                                        ; $754e: $fc
    push af                                       ; $754f: $f5
    ld a, l                                       ; $7550: $7d
    sub $bd                                       ; $7551: $d6 $bd
    add hl, sp                                    ; $7553: $39
    sub $3d                                       ; $7554: $d6 $3d
    pop bc                                        ; $7556: $c1
    ld bc, $4825                                  ; $7557: $01 $25 $48
    jp nc, Jump_000_3eb9                          ; $755a: $d2 $b9 $3e

    jr jr_035_7566                                ; $755d: $18 $07

    jp nz, $e7d4                                  ; $755f: $c2 $d4 $e7

    adc [hl]                                      ; $7562: $8e
    cp d                                          ; $7563: $ba
    nop                                           ; $7564: $00
    inc l                                         ; $7565: $2c

jr_035_7566:
    ld l, c                                       ; $7566: $69
    ld c, $b3                                     ; $7567: $0e $b3
    ret z                                         ; $7569: $c8

    rst $08                                       ; $756a: $cf
    xor d                                         ; $756b: $aa
    cpl                                           ; $756c: $2f
    cp $7a                                        ; $756d: $fe $7a
    ld a, h                                       ; $756f: $7c
    jp c, $9fe4                                   ; $7570: $da $e4 $9f

    ld c, c                                       ; $7573: $49
    add sp, -$4c                                  ; $7574: $e8 $b4
    jp Jump_035_77a5                              ; $7576: $c3 $a5 $77


    rst $00                                       ; $7579: $c7
    jr c, jr_035_7509                             ; $757a: $38 $8d

    db $e3                                        ; $757c: $e3
    or b                                          ; $757d: $b0
    sbc h                                         ; $757e: $9c
    ld a, e                                       ; $757f: $7b
    scf                                           ; $7580: $37
    push hl                                       ; $7581: $e5
    rst $08                                       ; $7582: $cf
    sbc l                                         ; $7583: $9d
    dec sp                                        ; $7584: $3b
    inc l                                         ; $7585: $2c
    ld l, $06                                     ; $7586: $2e $06
    ld a, a                                       ; $7588: $7f
    cp l                                          ; $7589: $bd
    ld e, a                                       ; $758a: $5f
    dec d                                         ; $758b: $15
    ld [hl], l                                    ; $758c: $75
    add b                                         ; $758d: $80
    jr c, jr_035_75e8                             ; $758e: $38 $58

    ld l, a                                       ; $7590: $6f
    sbc d                                         ; $7591: $9a
    inc bc                                        ; $7592: $03
    and e                                         ; $7593: $a3
    inc bc                                        ; $7594: $03
    ret z                                         ; $7595: $c8

    sub c                                         ; $7596: $91
    sbc l                                         ; $7597: $9d
    xor e                                         ; $7598: $ab
    ccf                                           ; $7599: $3f
    ld h, d                                       ; $759a: $62
    or l                                          ; $759b: $b5
    xor d                                         ; $759c: $aa
    cp $58                                        ; $759d: $fe $58
    ld b, d                                       ; $759f: $42
    ld a, [hl]                                    ; $75a0: $7e
    add [hl]                                      ; $75a1: $86
    sub b                                         ; $75a2: $90
    ld [hl], $f9                                  ; $75a3: $36 $f9
    or e                                          ; $75a5: $b3
    db $dd                                        ; $75a6: $dd
    call nz, $0683                                ; $75a7: $c4 $83 $06
    ld a, a                                       ; $75aa: $7f
    call Call_035_5f2c                            ; $75ab: $cd $2c $5f
    cp e                                          ; $75ae: $bb
    adc [hl]                                      ; $75af: $8e

jr_035_75b0:
    push af                                       ; $75b0: $f5
    ld [hl], $33                                  ; $75b1: $36 $33
    ld a, [$d379]                                 ; $75b3: $fa $79 $d3
    adc $7e                                       ; $75b6: $ce $7e
    ret                                           ; $75b8: $c9


    pop af                                        ; $75b9: $f1
    xor c                                         ; $75ba: $a9
    push hl                                       ; $75bb: $e5
    xor $40                                       ; $75bc: $ee $40
    rst $30                                       ; $75be: $f7
    sbc [hl]                                      ; $75bf: $9e
    jr z, jr_035_75b0                             ; $75c0: $28 $ee

    inc l                                         ; $75c2: $2c
    ld a, a                                       ; $75c3: $7f
    or e                                          ; $75c4: $b3
    ld [hl+], a                                   ; $75c5: $22
    ld a, a                                       ; $75c6: $7f
    rst $10                                       ; $75c7: $d7
    or $c5                                        ; $75c8: $f6 $c5
    add d                                         ; $75ca: $82
    push hl                                       ; $75cb: $e5
    ld e, c                                       ; $75cc: $59
    ld [hl-], a                                   ; $75cd: $32
    db $d3                                        ; $75ce: $d3
    xor a                                         ; $75cf: $af
    ld [$b9ef], sp                                ; $75d0: $08 $ef $b9
    jp c, $3f47                                   ; $75d3: $da $47 $3f

    ld l, e                                       ; $75d6: $6b
    jp hl                                         ; $75d7: $e9


Call_035_75d8:
    ld b, $7f                                     ; $75d8: $06 $7f
    sub b                                         ; $75da: $90
    and $c3                                       ; $75db: $e6 $c3
    or c                                          ; $75dd: $b1
    rst $28                                       ; $75de: $ef
    xor a                                         ; $75df: $af
    ld [hl], $85                                  ; $75e0: $36 $85
    ld h, d                                       ; $75e2: $62
    ldh a, [$d7]                                  ; $75e3: $f0 $d7
    xor a                                         ; $75e5: $af
    ld hl, sp-$15                                 ; $75e6: $f8 $eb

jr_035_75e8:
    ld b, $7f                                     ; $75e8: $06 $7f
    ld d, b                                       ; $75ea: $50
    ld [hl], l                                    ; $75eb: $75
    call nc, $deb1                                ; $75ec: $d4 $b1 $de
    ld c, d                                       ; $75ef: $4a
    ldh a, [rTAC]                                 ; $75f0: $f0 $07
    sub c                                         ; $75f2: $91
    ld a, c                                       ; $75f3: $79
    sbc e                                         ; $75f4: $9b
    db $fc                                        ; $75f5: $fc
    pop de                                        ; $75f6: $d1
    rst $20                                       ; $75f7: $e7
    ld [c], a                                     ; $75f8: $e2
    or l                                          ; $75f9: $b5
    jp c, Jump_035_55b2                           ; $75fa: $da $b2 $55

    ld b, a                                       ; $75fd: $47
    dec e                                         ; $75fe: $1d
    db $eb                                        ; $75ff: $eb
    or d                                          ; $7600: $b2
    ld [c], a                                     ; $7601: $e2
    ld e, l                                       ; $7602: $5d
    xor a                                         ; $7603: $af
    halt                                          ; $7604: $76
    ld b, a                                       ; $7605: $47
    ld e, b                                       ; $7606: $58
    ret z                                         ; $7607: $c8

    ld a, $57                                     ; $7608: $3e $57
    add a                                         ; $760a: $87
    dec sp                                        ; $760b: $3b
    ld l, b                                       ; $760c: $68
    cp c                                          ; $760d: $b9
    rst $38                                       ; $760e: $ff
    push de                                       ; $760f: $d5
    and [hl]                                      ; $7610: $a6
    ret nc                                        ; $7611: $d0

    cp e                                          ; $7612: $bb
    ld [de], a                                    ; $7613: $12
    db $ed                                        ; $7614: $ed
    ld hl, $4339                                  ; $7615: $21 $39 $43
    ld sp, hl                                     ; $7618: $f9
    dec hl                                        ; $7619: $2b
    ld e, [hl]                                    ; $761a: $5e
    rst $20                                       ; $761b: $e7
    ld l, d                                       ; $761c: $6a
    db $e3                                        ; $761d: $e3
    ei                                            ; $761e: $fb
    sub h                                         ; $761f: $94
    xor l                                         ; $7620: $ad
    ld e, h                                       ; $7621: $5c
    db $fc                                        ; $7622: $fc
    push de                                       ; $7623: $d5
    ld e, b                                       ; $7624: $58

Jump_035_7625:
    cp h                                          ; $7625: $bc
    cp d                                          ; $7626: $ba
    sbc a                                         ; $7627: $9f
    cp a                                          ; $7628: $bf
    adc $62                                       ; $7629: $ce $62
    ld h, l                                       ; $762b: $65
    ld l, c                                       ; $762c: $69
    sbc d                                         ; $762d: $9a
    and [hl]                                      ; $762e: $a6
    add hl, sp                                    ; $762f: $39
    and e                                         ; $7630: $a3
    xor a                                         ; $7631: $af
    ld b, $42                                     ; $7632: $06 $42
    dec l                                         ; $7634: $2d
    push de                                       ; $7635: $d5
    sbc $be                                       ; $7636: $de $be
    ret c                                         ; $7638: $d8

    call z, Call_000_1aef                         ; $7639: $cc $ef $1a
    jr jr_035_766e                                ; $763c: $18 $30

    add l                                         ; $763e: $85
    add hl, de                                    ; $763f: $19
    ld [hl], e                                    ; $7640: $73
    ld [hl], e                                    ; $7641: $73
    dec b                                         ; $7642: $05
    ld a, a                                       ; $7643: $7f
    and b                                         ; $7644: $a0
    ld [hl], $2b                                  ; $7645: $36 $2b
    and e                                         ; $7647: $a3
    rst $28                                       ; $7648: $ef
    adc c                                         ; $7649: $89
    db $fc                                        ; $764a: $fc
    pop hl                                        ; $764b: $e1
    ei                                            ; $764c: $fb
    ld a, [bc]                                    ; $764d: $0a
    db $d3                                        ; $764e: $d3
    ld [hl-], a                                   ; $764f: $32
    dec d                                         ; $7650: $15
    ld a, a                                       ; $7651: $7f
    ld d, b                                       ; $7652: $50
    inc c                                         ; $7653: $0c
    cp $2c                                        ; $7654: $fe $2c
    db $dd                                        ; $7656: $dd
    rst $08                                       ; $7657: $cf
    ld e, a                                       ; $7658: $5f
    ld b, a                                       ; $7659: $47
    ld a, a                                       ; $765a: $7f
    cp $30                                        ; $765b: $fe $30
    di                                            ; $765d: $f3
    ld b, c                                       ; $765e: $41
    ld b, d                                       ; $765f: $42
    and a                                         ; $7660: $a7
    add hl, sp                                    ; $7661: $39
    jp $a0ec                                      ; $7662: $c3 $ec $a0


    push de                                       ; $7665: $d5
    pop bc                                        ; $7666: $c1
    ld e, a                                       ; $7667: $5f
    ld l, c                                       ; $7668: $69
    sbc b                                         ; $7669: $98
    or l                                          ; $766a: $b5
    sbc h                                         ; $766b: $9c
    sbc e                                         ; $766c: $9b
    db $fc                                        ; $766d: $fc

jr_035_766e:
    ld b, l                                       ; $766e: $45
    add $a4                                       ; $766f: $c6 $a4
    ld l, l                                       ; $7671: $6d
    ld [bc], a                                    ; $7672: $02
    ld a, a                                       ; $7673: $7f
    cp l                                          ; $7674: $bd
    db $fd                                        ; $7675: $fd
    db $dd                                        ; $7676: $dd
    ld a, [hl]                                    ; $7677: $7e
    ld b, l                                       ; $7678: $45
    call nc, $deb1                                ; $7679: $d4 $b1 $de
    adc [hl]                                      ; $767c: $8e
    cp $54                                        ; $767d: $fe $54
    or e                                          ; $767f: $b3
    ld a, [c]                                     ; $7680: $f2
    ld d, a                                       ; $7681: $57
    ld [hl], a                                    ; $7682: $77
    ret nc                                        ; $7683: $d0

    ld b, d                                       ; $7684: $42
    ld c, $fe                                     ; $7685: $0e $fe
    ret nz                                        ; $7687: $c0

    sbc e                                         ; $7688: $9b
    and $c9                                       ; $7689: $e6 $c9
    rst $00                                       ; $768b: $c7
    cp c                                          ; $768c: $b9
    add e                                         ; $768d: $83
    ld h, c                                       ; $768e: $61
    ld c, d                                       ; $768f: $4a
    dec e                                         ; $7690: $1d
    db $fc                                        ; $7691: $fc
    ld b, c                                       ; $7692: $41
    rst $28                                       ; $7693: $ef
    ld e, a                                       ; $7694: $5f
    ld l, d                                       ; $7695: $6a
    xor h                                         ; $7696: $ac
    cp $d8                                        ; $7697: $fe $d8
    pop bc                                        ; $7699: $c1
    cp b                                          ; $769a: $b8

Jump_035_769b:
    xor b                                         ; $769b: $a8
    ld bc, $e1dc                                  ; $769c: $01 $dc $e1
    ld [hl], b                                    ; $769f: $70
    rst $38                                       ; $76a0: $ff
    ld a, b                                       ; $76a1: $78
    xor [hl]                                      ; $76a2: $ae
    cp $88                                        ; $76a3: $fe $88
    dec c                                         ; $76a5: $0d
    cp $fa                                        ; $76a6: $fe $fa
    jp nz, Jump_035_5152                          ; $76a8: $c2 $52 $51

    rst $00                                       ; $76ab: $c7
    cp e                                          ; $76ac: $bb
    ld b, $06                                     ; $76ad: $06 $06
    ld c, h                                       ; $76af: $4c
    or a                                          ; $76b0: $b7
    ld hl, sp+$5f                                 ; $76b1: $f8 $5f
    ld e, d                                       ; $76b3: $5a
    ld b, [hl]                                    ; $76b4: $46
    cp a                                          ; $76b5: $bf
    or c                                          ; $76b6: $b1
    dec b                                         ; $76b7: $05
    ld l, d                                       ; $76b8: $6a
    xor c                                         ; $76b9: $a9
    ld c, $99                                     ; $76ba: $0e $99
    ld sp, $b307                                  ; $76bc: $31 $07 $b3
    dec sp                                        ; $76bf: $3b
    or $5c                                        ; $76c0: $f6 $5c
    ld c, e                                       ; $76c2: $4b
    inc bc                                        ; $76c3: $03
    and c                                         ; $76c4: $a1
    adc [hl]                                      ; $76c5: $8e
    call z, $340b                                 ; $76c6: $cc $0b $34
    ld hl, sp-$15                                 ; $76c9: $f8 $eb
    ld a, [hl+]                                   ; $76cb: $2a
    xor c                                         ; $76cc: $a9
    ld h, e                                       ; $76cd: $63
    dec sp                                        ; $76ce: $3b
    xor a                                         ; $76cf: $af
    dec b                                         ; $76d0: $05
    db $fd                                        ; $76d1: $fd
    cp h                                          ; $76d2: $bc
    ld l, c                                       ; $76d3: $69
    ld b, a                                       ; $76d4: $47
    ret                                           ; $76d5: $c9


    ld b, l                                       ; $76d6: $45
    jr @-$0d                                      ; $76d7: $18 $f1

    sub d                                         ; $76d9: $92
    adc [hl]                                      ; $76da: $8e
    db $e4                                        ; $76db: $e4
    adc h                                         ; $76dc: $8c
    rst $10                                       ; $76dd: $d7
    cp $ec                                        ; $76de: $fe $ec
    ld d, e                                       ; $76e0: $53
    jp c, $a1f7                                   ; $76e1: $da $f7 $a1

    ld b, a                                       ; $76e4: $47
    ldh a, [$d7]                                  ; $76e5: $f0 $d7
    call z, Call_035_5fc8                         ; $76e7: $cc $c8 $5f
    ldh a, [rNR31]                                ; $76ea: $f0 $1b
    sbc h                                         ; $76ec: $9c
    dec de                                        ; $76ed: $1b
    ld l, a                                       ; $76ee: $6f
    db $eb                                        ; $76ef: $eb
    ld e, b                                       ; $76f0: $58
    or d                                          ; $76f1: $b2
    ld [hl+], a                                   ; $76f2: $22
    cp $66                                        ; $76f3: $fe $66
    sbc $34                                       ; $76f5: $de $34
    rlca                                          ; $76f7: $07
    or e                                          ; $76f8: $b3
    rst $38                                       ; $76f9: $ff
    ld [$dbbf], a                                 ; $76fa: $ea $bf $db
    cp l                                          ; $76fd: $bd
    ld hl, sp-$15                                 ; $76fe: $f8 $eb
    ld h, b                                       ; $7700: $60
    sbc b                                         ; $7701: $98
    sub [hl]                                      ; $7702: $96
    sub c                                         ; $7703: $91
    sub d                                         ; $7704: $92
    ld hl, sp+$2d                                 ; $7705: $f8 $2d
    ld l, l                                       ; $7707: $6d
    ld [bc], a                                    ; $7708: $02
    ld a, a                                       ; $7709: $7f
    cp l                                          ; $770a: $bd
    sub e                                         ; $770b: $93
    ld b, h                                       ; $770c: $44
    cp e                                          ; $770d: $bb
    ld a, [hl-]                                   ; $770e: $3a
    and h                                         ; $770f: $a4
    and a                                         ; $7710: $a7
    cp $66                                        ; $7711: $fe $66
    sub [hl]                                      ; $7713: $96
    ld [hl], l                                    ; $7714: $75
    sbc a                                         ; $7715: $9f
    add hl, hl                                    ; $7716: $29
    pop hl                                        ; $7717: $e1
    dec a                                         ; $7718: $3d
    rst $30                                       ; $7719: $f7
    or e                                          ; $771a: $b3
    sub [hl]                                      ; $771b: $96
    ld b, $7f                                     ; $771c: $06 $7f
    dec a                                         ; $771e: $3d
    inc d                                         ; $771f: $14
    ld h, d                                       ; $7720: $62
    xor c                                         ; $7721: $a9
    ld b, e                                       ; $7722: $43
    ld e, e                                       ; $7723: $5b
    xor d                                         ; $7724: $aa
    cp l                                          ; $7725: $bd

jr_035_7726:
    dec e                                         ; $7726: $1d
    dec e                                         ; $7727: $1d
    ld d, h                                       ; $7728: $54
    adc e                                         ; $7729: $8b
    inc bc                                        ; $772a: $03
    sla [hl]                                      ; $772b: $cb $26
    xor [hl]                                      ; $772d: $ae
    adc [hl]                                      ; $772e: $8e
    call z, $e69b                                 ; $772f: $cc $9b $e6
    ld c, c                                       ; $7732: $49
    rra                                           ; $7733: $1f
    ld a, e                                       ; $7734: $7b
    jr z, @-$3a                                   ; $7735: $28 $c4

    ld e, d                                       ; $7737: $5a
    adc d                                         ; $7738: $8a
    adc [hl]                                      ; $7739: $8e
    dec e                                         ; $773a: $1d
    sub d                                         ; $773b: $92
    inc bc                                        ; $773c: $03
    ld b, e                                       ; $773d: $43
    add hl, hl                                    ; $773e: $29
    dec [hl]                                      ; $773f: $35
    or $46                                        ; $7740: $f6 $46
    cp a                                          ; $7742: $bf
    sbc h                                         ; $7743: $9c
    sbc e                                         ; $7744: $9b
    db $fc                                        ; $7745: $fc
    ld b, l                                       ; $7746: $45
    add $a4                                       ; $7747: $c6 $a4
    add hl, sp                                    ; $7749: $39
    ld c, c                                       ; $774a: $49
    rra                                           ; $774b: $1f
    dec de                                        ; $774c: $1b
    ld [$96d5], sp                                ; $774d: $08 $d5 $96
    ld a, [hl-]                                   ; $7750: $3a
    sub [hl]                                      ; $7751: $96
    inc e                                         ; $7752: $1c
    sbc c                                         ; $7753: $99
    dec sp                                        ; $7754: $3b
    jr jr_035_776e                                ; $7755: $18 $17

    dec [hl]                                      ; $7757: $35
    add b                                         ; $7758: $80
    sbc e                                         ; $7759: $9b
    db $fc                                        ; $775a: $fc
    pop de                                        ; $775b: $d1
    rst $20                                       ; $775c: $e7
    ld l, d                                       ; $775d: $6a
    ld l, a                                       ; $775e: $6f
    add e                                         ; $775f: $83
    cp a                                          ; $7760: $bf
    ld [de], a                                    ; $7761: $12
    or c                                          ; $7762: $b1
    jp c, $dbdb                                   ; $7763: $da $db $db

    or l                                          ; $7766: $b5
    dec bc                                        ; $7767: $0b
    ld c, [hl]                                    ; $7768: $4e
    ld [hl], e                                    ; $7769: $73
    adc h                                         ; $776a: $8c
    ld a, [bc]                                    ; $776b: $0a
    sbc d                                         ; $776c: $9a
    ld sp, hl                                     ; $776d: $f9

jr_035_776e:
    ld hl, sp-$04                                 ; $776e: $f8 $fc
    pop bc                                        ; $7770: $c1
    cp c                                          ; $7771: $b9
    ret                                           ; $7772: $c9


    ld e, a                                       ; $7773: $5f
    ld h, h                                       ; $7774: $64
    call z, $ce90                                 ; $7775: $cc $90 $ce
    ld b, d                                       ; $7778: $42
    ld e, d                                       ; $7779: $5a
    ld b, d                                       ; $777a: $42
    xor l                                         ; $777b: $ad
    ld h, $df                                     ; $777c: $26 $df
    rst $38                                       ; $777e: $ff
    sub d                                         ; $777f: $92
    inc hl                                        ; $7780: $23
    ld l, e                                       ; $7781: $6b
    ld a, [c]                                     ; $7782: $f2
    ld d, a                                       ; $7783: $57
    jr c, jr_035_7726                             ; $7784: $38 $a0

    or $06                                        ; $7786: $f6 $06
    ld l, $41                                     ; $7788: $2e $41
    sub d                                         ; $778a: $92
    ld [hl-], a                                   ; $778b: $32
    jp z, $8218                                   ; $778c: $ca $18 $82

    adc b                                         ; $778f: $88
    push de                                       ; $7790: $d5
    sub a                                         ; $7791: $97
    and h                                         ; $7792: $a4
    dec e                                         ; $7793: $1d
    xor d                                         ; $7794: $aa
    add $b1                                       ; $7795: $c6 $b1
    ld l, b                                       ; $7797: $68
    rra                                           ; $7798: $1f
    ld h, l                                       ; $7799: $65
    ld c, l                                       ; $779a: $4d

Jump_035_779b:
    call nz, Call_035_436a                        ; $779b: $c4 $6a $43
    ld sp, $abf8                                  ; $779e: $31 $f8 $ab
    ld h, e                                       ; $77a1: $63
    cp e                                          ; $77a2: $bb
    ld d, [hl]                                    ; $77a3: $56
    sub [hl]                                      ; $77a4: $96

Jump_035_77a5:
    sbc [hl]                                      ; $77a5: $9e
    ldh a, [$15]                                  ; $77a6: $f0 $15
    ld l, e                                       ; $77a8: $6b
    pop bc                                        ; $77a9: $c1
    ld bc, $fc51                                  ; $77aa: $01 $51 $fc
    dec [hl]                                      ; $77ad: $35
    or [hl]                                       ; $77ae: $b6
    jp c, $3eb1                                   ; $77af: $da $b1 $3e

    ld a, d                                       ; $77b2: $7a
    jp nz, $ac57                                  ; $77b3: $c2 $57 $ac

    add l                                         ; $77b6: $85
    ld d, l                                       ; $77b7: $55
    db $fc                                        ; $77b8: $fc
    and l                                         ; $77b9: $a5
    add hl, sp                                    ; $77ba: $39

Call_035_77bb:
    ret                                           ; $77bb: $c9


    rra                                           ; $77bc: $1f
    and c                                         ; $77bd: $a1
    ld e, d                                       ; $77be: $5a
    ld d, l                                       ; $77bf: $55
    ld a, e                                       ; $77c0: $7b
    sbc e                                         ; $77c1: $9b
    db $fc                                        ; $77c2: $fc
    pop de                                        ; $77c3: $d1
    ld a, e                                       ; $77c4: $7b
    ld l, [hl]                                    ; $77c5: $6e
    ld a, [c]                                     ; $77c6: $f2
    rla                                           ; $77c7: $17
    add hl, de                                    ; $77c8: $19
    inc sp                                        ; $77c9: $33
    ld h, e                                       ; $77ca: $63
    ld c, $b3                                     ; $77cb: $0e $b3
    dec sp                                        ; $77cd: $3b
    or $dc                                        ; $77ce: $f6 $dc
    ldh [$af], a                                  ; $77d0: $e0 $af
    or a                                          ; $77d2: $b7
    ld l, e                                       ; $77d3: $6b
    rla                                           ; $77d4: $17
    call c, $db78                                 ; $77d5: $dc $78 $db
    dec c                                         ; $77d8: $0d
    cp $a0                                        ; $77d9: $fe $a0
    ld b, h                                       ; $77db: $44
    xor h                                         ; $77dc: $ac
    or $a6                                        ; $77dd: $f6 $a6
    add hl, sp                                    ; $77df: $39
    or e                                          ; $77e0: $b3
    xor e                                         ; $77e1: $ab
    dec a                                         ; $77e2: $3d
    ld d, a                                       ; $77e3: $57
    rst $38                                       ; $77e4: $ff
    db $dd                                        ; $77e5: $dd
    and d                                         ; $77e6: $a2
    ld [c], a                                     ; $77e7: $e2
    xor a                                         ; $77e8: $af
    ld [hl], a                                    ; $77e9: $77
    rlca                                          ; $77ea: $07
    ld e, b                                       ; $77eb: $58
    jp nc, $f026                                  ; $77ec: $d2 $26 $f0

    rst $10                                       ; $77ef: $d7
    ld a, e                                       ; $77f0: $7b
    ld d, b                                       ; $77f1: $50
    jp c, $fe0d                                   ; $77f2: $da $0d $fe

    ldh [$5c], a                                  ; $77f5: $e0 $5c
    db $fd                                        ; $77f7: $fd
    ld de, $17bb                                  ; $77f8: $11 $bb $17
    ld a, a                                       ; $77fb: $7f
    dec [hl]                                      ; $77fc: $35
    call c, $963f                                 ; $77fd: $dc $3f $96
    ret                                           ; $7800: $c9


    rra                                           ; $7801: $1f
    adc l                                         ; $7802: $8d
    db $e3                                        ; $7803: $e3
    jr nc, @+$78                                  ; $7804: $30 $76

    ldh [rNR44], a                                ; $7806: $e0 $23
    add [hl]                                      ; $7808: $86
    dec b                                         ; $7809: $05
    add [hl]                                      ; $780a: $86
    db $e4                                        ; $780b: $e4
    ret                                           ; $780c: $c9


    rra                                           ; $780d: $1f
    and c                                         ; $780e: $a1
    ld e, d                                       ; $780f: $5a
    ld d, l                                       ; $7810: $55
    ld a, e                                       ; $7811: $7b
    sbc e                                         ; $7812: $9b
    db $fc                                        ; $7813: $fc
    pop de                                        ; $7814: $d1
    db $db                                        ; $7815: $db
    ld d, e                                       ; $7816: $53
    dec c                                         ; $7817: $0d
    ld h, h                                       ; $7818: $64
    ld l, b                                       ; $7819: $68
    ld h, [hl]                                    ; $781a: $66
    ld b, d                                       ; $781b: $42
    xor l                                         ; $781c: $ad
    or $9e                                        ; $781d: $f6 $9e

Call_035_781f:
    sbc e                                         ; $781f: $9b
    db $fc                                        ; $7820: $fc
    ld b, l                                       ; $7821: $45
    add $cc                                       ; $7822: $c6 $cc
    sbc b                                         ; $7824: $98
    inc bc                                        ; $7825: $03
    or e                                          ; $7826: $b3
    dec sp                                        ; $7827: $3b
    or $5c                                        ; $7828: $f6 $5c
    ld c, e                                       ; $782a: $4b
    rra                                           ; $782b: $1f
    ld l, c                                       ; $782c: $69
    add b                                         ; $782d: $80
    add b                                         ; $782e: $80
    xor $c5                                       ; $782f: $ee $c5
    ld e, a                                       ; $7831: $5f
    ld b, e                                       ; $7832: $43
    ld [hl-], a                                   ; $7833: $32
    xor a                                         ; $7834: $af
    cp [hl]                                       ; $7835: $be
    ld e, a                                       ; $7836: $5f
    dec d                                         ; $7837: $15
    ld [hl], l                                    ; $7838: $75
    and h                                         ; $7839: $a4
    add hl, sp                                    ; $783a: $39
    ld c, c                                       ; $783b: $49
    xor d                                         ; $783c: $aa
    add a                                         ; $783d: $87
    ld b, d                                       ; $783e: $42
    add h                                         ; $783f: $84
    add $db                                       ; $7840: $c6 $db
    ld [de], a                                    ; $7842: $12
    or c                                          ; $7843: $b1
    jp c, Jump_035_769b                           ; $7844: $da $9b $76

    ld e, b                                       ; $7847: $58
    nop                                           ; $7848: $00
    cp b                                          ; $7849: $b8
    ld e, [hl]                                    ; $784a: $5e
    add b                                         ; $784b: $80
    ld b, h                                       ; $784c: $44
    add l                                         ; $784d: $85
    db $fc                                        ; $784e: $fc
    cp c                                          ; $784f: $b9
    ld b, a                                       ; $7850: $47
    ldh a, [$d7]                                  ; $7851: $f0 $d7
    dec c                                         ; $7853: $0d
    cp $a0                                        ; $7854: $fe $a0
    ld a, e                                       ; $7856: $7b
    pop af                                        ; $7857: $f1
    ld d, a                                       ; $7858: $57
    rst $00                                       ; $7859: $c7
    ld e, $9f                                     ; $785a: $1e $9f
    ld c, $c9                                     ; $785c: $0e $c9
    ld bc, $aa49                                  ; $785e: $01 $49 $aa
    rst $28                                       ; $7861: $ef
    inc hl                                        ; $7862: $23
    ld d, h                                       ; $7863: $54
    dec sp                                        ; $7864: $3b
    sub $1d                                       ; $7865: $d6 $1d
    xor d                                         ; $7867: $aa
    adc b                                         ; $7868: $88
    db $ec                                        ; $7869: $ec
    or e                                          ; $786a: $b3
    xor $06                                       ; $786b: $ee $06
    ld a, a                                       ; $786d: $7f
    ld d, b                                       ; $786e: $50
    dec bc                                        ; $786f: $0b
    ld b, c                                       ; $7870: $41
    and d                                         ; $7871: $a2
    inc d                                         ; $7872: $14
    jp nc, $8f0e                                  ; $7873: $d2 $0e $8f

    push af                                       ; $7876: $f5
    sub [hl]                                      ; $7877: $96
    add hl, bc                                    ; $7878: $09
    ld a, [c]                                     ; $7879: $f2
    adc c                                         ; $787a: $89
    ld bc, $37b5                                  ; $787b: $01 $b5 $37
    jr z, jr_035_78c1                             ; $787e: $28 $41

    sub d                                         ; $7880: $92
    ld [hl-], a                                   ; $7881: $32
    jp z, $8218                                   ; $7882: $ca $18 $82

    adc b                                         ; $7885: $88
    push de                                       ; $7886: $d5
    sub a                                         ; $7887: $97
    and h                                         ; $7888: $a4
    add hl, sp                                    ; $7889: $39
    ld l, c                                       ; $788a: $69
    sbc d                                         ; $788b: $9a
    or $2b                                        ; $788c: $f6 $2b
    and d                                         ; $788e: $a2
    jp c, Jump_035_7bdb                           ; $788f: $da $db $7b

    ld [$7f20], sp                                ; $7892: $08 $20 $7f
    sbc a                                         ; $7895: $9f
    nop                                           ; $7896: $00
    ld a, [de]                                    ; $7897: $1a
    db $fc                                        ; $7898: $fc
    ld a, c                                       ; $7899: $79
    dec sp                                        ; $789a: $3b
    adc h                                         ; $789b: $8c
    ld a, [hl]                                    ; $789c: $7e
    db $f4                                        ; $789d: $f4
    ld a, [hl]                                    ; $789e: $7e
    ld d, $f9                                     ; $789f: $16 $f9
    cp e                                          ; $78a1: $bb
    xor e                                         ; $78a2: $ab
    call Call_035_5c4a                            ; $78a3: $cd $4a $5c
    inc [hl]                                      ; $78a6: $34
    inc bc                                        ; $78a7: $03
    scf                                           ; $78a8: $37
    adc [hl]                                      ; $78a9: $8e
    adc $fa                                       ; $78aa: $ce $fa
    sbc a                                         ; $78ac: $9f
    cp b                                          ; $78ad: $b8
    sub e                                         ; $78ae: $93
    ld c, l                                       ; $78af: $4d
    ld sp, $b4cd                                  ; $78b0: $31 $cd $b4
    push de                                       ; $78b3: $d5
    sub [hl]                                      ; $78b4: $96
    ld [hl-], a                                   ; $78b5: $32
    dec e                                         ; $78b6: $1d
    add h                                         ; $78b7: $84
    rst $30                                       ; $78b8: $f7
    dec hl                                        ; $78b9: $2b
    ld [bc], a                                    ; $78ba: $02
    ld sp, hl                                     ; $78bb: $f9
    cp e                                          ; $78bc: $bb
    xor e                                         ; $78bd: $ab
    call $a69a                                    ; $78be: $cd $9a $a6

jr_035_78c1:
    ld l, c                                       ; $78c1: $69
    ld c, $c9                                     ; $78c2: $0e $c9
    ld e, a                                       ; $78c4: $5f
    ld h, h                                       ; $78c5: $64
    call z, Call_035_5ab9                         ; $78c6: $cc $b9 $5a
    push af                                       ; $78c9: $f5
    ld a, l                                       ; $78ca: $7d
    add h                                         ; $78cb: $84
    ld e, $c1                                     ; $78cc: $1e $c1
    ld e, a                                       ; $78ce: $5f
    rlca                                          ; $78cf: $07
    jp Jump_000_3a94                              ; $78d0: $c3 $94 $3a


    ld hl, sp-$7d                                 ; $78d3: $f8 $83
    ld e, d                                       ; $78d5: $5a
    sub b                                         ; $78d6: $90
    ccf                                           ; $78d7: $3f
    ld sp, $c1bf                                  ; $78d8: $31 $bf $c1
    sub b                                         ; $78db: $90
    ld h, $f0                                     ; $78dc: $26 $f0
    ld d, a                                       ; $78de: $57
    ld [hl], d                                    ; $78df: $72
    ld hl, sp-$47                                 ; $78e0: $f8 $b9
    ld a, [hl-]                                   ; $78e2: $3a
    and h                                         ; $78e3: $a4
    and a                                         ; $78e4: $a7
    ld e, d                                       ; $78e5: $5a
    ld e, a                                       ; $78e6: $5f
    db $fc                                        ; $78e7: $fc
    push af                                       ; $78e8: $f5
    and $58                                       ; $78e9: $e6 $58
    sub a                                         ; $78eb: $97
    xor h                                         ; $78ec: $ac
    jr nc, @+$13                                  ; $78ed: $30 $11

    ret z                                         ; $78ef: $c8

    inc [hl]                                      ; $78f0: $34
    ld hl, sp-$0d                                 ; $78f1: $f8 $f3
    ld [hl], $f9                                  ; $78f3: $36 $f9
    dec hl                                        ; $78f5: $2b
    inc e                                         ; $78f6: $1c
    ld d, b                                       ; $78f7: $50
    ld a, e                                       ; $78f8: $7b
    inc bc                                        ; $78f9: $03
    rst $30                                       ; $78fa: $f7
    or e                                          ; $78fb: $b3
    rst $20                                       ; $78fc: $e7
    xor [hl]                                      ; $78fd: $ae
    sub d                                         ; $78fe: $92
    ld [$4970], a                                 ; $78ff: $ea $70 $49
    inc l                                         ; $7902: $2c
    dec c                                         ; $7903: $0d
    cp $bc                                        ; $7904: $fe $bc
    sbc l                                         ; $7906: $9d
    xor d                                         ; $7907: $aa
    ld [hl], a                                    ; $7908: $77
    ld h, a                                       ; $7909: $67
    sbc $32                                       ; $790a: $de $32
    ld h, c                                       ; $790c: $61
    ld l, h                                       ; $790d: $6c
    pop af                                        ; $790e: $f1
    ld h, d                                       ; $790f: $62
    sbc d                                         ; $7910: $9a
    inc bc                                        ; $7911: $03
    ld c, c                                       ; $7912: $49
    xor d                                         ; $7913: $aa
    or a                                          ; $7914: $b7
    cp a                                          ; $7915: $bf
    adc e                                         ; $7916: $8b
    ld d, b                                       ; $7917: $50
    ld h, e                                       ; $7918: $63
    cp a                                          ; $7919: $bf
    ld [c], a                                     ; $791a: $e2
    xor a                                         ; $791b: $af
    dec de                                        ; $791c: $1b
    db $fc                                        ; $791d: $fc
    ld b, c                                       ; $791e: $41
    jp hl                                         ; $791f: $e9


    ld b, a                                       ; $7920: $47
    db $f4                                        ; $7921: $f4
    sbc [hl]                                      ; $7922: $9e
    adc e                                         ; $7923: $8b
    sub b                                         ; $7924: $90
    cp b                                          ; $7925: $b8
    ld a, [hl-]                                   ; $7926: $3a

jr_035_7927:
    or d                                          ; $7927: $b2
    add $f6                                       ; $7928: $c6 $f6
    ld [hl], b                                    ; $792a: $70
    xor h                                         ; $792b: $ac
    or a                                          ; $792c: $b7
    di                                            ; $792d: $f3
    inc l                                         ; $792e: $2c
    ld e, b                                       ; $792f: $58
    inc h                                         ; $7930: $24
    ld hl, sp-$7d                                 ; $7931: $f8 $83
    sub d                                         ; $7933: $92
    ld d, l                                       ; $7934: $55
    rlca                                          ; $7935: $07
    add sp, $07                                   ; $7936: $e8 $07
    or d                                          ; $7938: $b2
    scf                                           ; $7939: $37
    db $ed                                        ; $793a: $ed
    ld [hl], b                                    ; $793b: $70
    inc l                                         ; $793c: $2c
    jr z, jr_035_7927                             ; $793d: $28 $e8

    ld de, $d9d2                                  ; $793f: $11 $d2 $d9
    inc e                                         ; $7942: $1c
    ld a, [$cfdc]                                 ; $7943: $fa $dc $cf
    ld e, d                                       ; $7946: $5a
    ld a, [de]                                    ; $7947: $1a
    db $fc                                        ; $7948: $fc
    push af                                       ; $7949: $f5
    ld d, b                                       ; $794a: $50
    adc b                                         ; $794b: $88
    push de                                       ; $794c: $d5
    ld hl, $4825                                  ; $794d: $21 $25 $48
    ld c, e                                       ; $7950: $4b
    sub h                                         ; $7951: $94
    add hl, bc                                    ; $7952: $09
    ld a, [c]                                     ; $7953: $f2
    adc c                                         ; $7954: $89
    ld bc, $37b5                                  ; $7955: $01 $b5 $37
    ld [hl], b                                    ; $7958: $70
    inc sp                                        ; $7959: $33
    or e                                          ; $795a: $b3
    sbc $34                                       ; $795b: $de $34
    rlca                                          ; $795d: $07
    add hl, bc                                    ; $795e: $09
    db $fc                                        ; $795f: $fc
    push af                                       ; $7960: $f5
    ld a, l                                       ; $7961: $7d
    sub $75                                       ; $7962: $d6 $75
    xor h                                         ; $7964: $ac
    or a                                          ; $7965: $b7
    ret                                           ; $7966: $c9


    rra                                           ; $7967: $1f
    cp l                                          ; $7968: $bd
    call Call_035_7e8c                            ; $7969: $cd $8c $7e
    sbc $73                                       ; $796c: $de $73
    or l                                          ; $796e: $b5
    and l                                         ; $796f: $a5
    ld e, a                                       ; $7970: $5f
    ld h, c                                       ; $7971: $61
    or l                                          ; $7972: $b5
    and l                                         ; $7973: $a5
    jp $b363                                      ; $7974: $c3 $63 $b3


    cp a                                          ; $7977: $bf
    add hl, de                                    ; $7978: $19
    ld [bc], a                                    ; $7979: $02
    ld c, c                                       ; $797a: $49
    sbc d                                         ; $797b: $9a
    ld sp, hl                                     ; $797c: $f9
    ld e, l                                       ; $797d: $5d
    inc bc                                        ; $797e: $03
    inc bc                                        ; $797f: $03
    and [hl]                                      ; $7980: $a6
    ret nc                                        ; $7981: $d0

    ld b, b                                       ; $7982: $40
    ld c, b                                       ; $7983: $48
    sbc e                                         ; $7984: $9b
    ld h, h                                       ; $7985: $64
    add hl, hl                                    ; $7986: $29
    cp $d7                                        ; $7987: $fe $d7
    ld d, e                                       ; $7989: $53
    xor l                                         ; $798a: $ad
    cpl                                           ; $798b: $2f
    cp $7a                                        ; $798c: $fe $7a
    ld hl, sp+$49                                 ; $798e: $f8 $49
    rst $30                                       ; $7990: $f7

Call_035_7991:
    di                                            ; $7991: $f3
    rst $10                                       ; $7992: $d7
    reti                                          ; $7993: $d9


    cp $a0                                        ; $7994: $fe $a0
    ld d, a                                       ; $7996: $57
    sbc e                                         ; $7997: $9b
    or d                                          ; $7998: $b2
    ld a, [bc]                                    ; $7999: $0a
    ld sp, hl                                     ; $799a: $f9
    db $eb                                        ; $799b: $eb
    and a                                         ; $799c: $a7
    ret c                                         ; $799d: $d8

    db $fd                                        ; $799e: $fd
    db $fc                                        ; $799f: $fc
    dec [hl]                                      ; $79a0: $35
    ld sp, hl                                     ; $79a1: $f9
    and e                                         ; $79a2: $a3
    ei                                            ; $79a3: $fb
    dec d                                         ; $79a4: $15
    and [hl]                                      ; $79a5: $a6
    add hl, sp                                    ; $79a6: $39
    or e                                          ; $79a7: $b3
    dec sp                                        ; $79a8: $3b
    or $dc                                        ; $79a9: $f6 $dc
    rst $08                                       ; $79ab: $cf
    ld e, d                                       ; $79ac: $5a
    ld a, [de]                                    ; $79ad: $1a
    db $fc                                        ; $79ae: $fc
    push af                                       ; $79af: $f5
    ld a, l                                       ; $79b0: $7d
    sub $fd                                       ; $79b1: $d6 $fd
    adc d                                         ; $79b3: $8a
    cp a                                          ; $79b4: $bf
    ld l, [hl]                                    ; $79b5: $6e
    ldh a, [rTAC]                                 ; $79b6: $f0 $07
    push de                                       ; $79b8: $d5
    ld e, a                                       ; $79b9: $5f
    cp [hl]                                       ; $79ba: $be
    ld [hl+], a                                   ; $79bb: $22
    sbc d                                         ; $79bc: $9a
    ld sp, hl                                     ; $79bd: $f9
    di                                            ; $79be: $f3
    rlca                                          ; $79bf: $07
    add [hl]                                      ; $79c0: $86
    inc [hl]                                      ; $79c1: $34
    rlca                                          ; $79c2: $07
    or e                                          ; $79c3: $b3
    dec sp                                        ; $79c4: $3b
    or $dc                                        ; $79c5: $f6 $dc
    rst $08                                       ; $79c7: $cf
    ld e, d                                       ; $79c8: $5a
    ld a, d                                       ; $79c9: $7a
    rst $30                                       ; $79ca: $f7
    ld l, [hl]                                    ; $79cb: $6e
    rst $28                                       ; $79cc: $ef
    ld hl, $1a37                                  ; $79cd: $21 $37 $1a
    db $fc                                        ; $79d0: $fc
    push de                                       ; $79d1: $d5
    or c                                          ; $79d2: $b1
    sub [hl]                                      ; $79d3: $96
    add $51                                       ; $79d4: $c6 $51
    ld h, $7f                                     ; $79d6: $26 $7f

Jump_035_79d8:
    adc d                                         ; $79d8: $8a
    ld h, [hl]                                    ; $79d9: $66
    ld h, [hl]                                    ; $79da: $66
    inc de                                        ; $79db: $13
    sub l                                         ; $79dc: $95
    halt                                          ; $79dd: $76
    pop de                                        ; $79de: $d1
    or c                                          ; $79df: $b1
    push bc                                       ; $79e0: $c5
    adc e                                         ; $79e1: $8b
    ld d, d                                       ; $79e2: $52
    ldh a, [$b9]                                  ; $79e3: $f0 $b9
    rst $30                                       ; $79e5: $f7
    db $10                                        ; $79e6: $10
    ld e, l                                       ; $79e7: $5d
    ld c, e                                       ; $79e8: $4b
    ld sp, $b3f8                                  ; $79e9: $31 $f8 $b3
    ld [hl], h                                    ; $79ec: $74
    ret nc                                        ; $79ed: $d0

    add d                                         ; $79ee: $82
    adc d                                         ; $79ef: $8a
    ccf                                           ; $79f0: $3f
    rst $28                                       ; $79f1: $ef
    cp c                                          ; $79f2: $b9
    ei                                            ; $79f3: $fb
    ld sp, hl                                     ; $79f4: $f9
    xor e                                         ; $79f5: $ab
    sub [hl]                                      ; $79f6: $96
    xor a                                         ; $79f7: $af
    add $f1                                       ; $79f8: $c6 $f1
    sub [hl]                                      ; $79fa: $96
    xor h                                         ; $79fb: $ac
    sbc d                                         ; $79fc: $9a
    sbc c                                         ; $79fd: $99
    cp $cd                                        ; $79fe: $fe $cd
    cp h                                          ; $7a00: $bc
    ld l, c                                       ; $7a01: $69
    ld c, $09                                     ; $7a02: $0e $09
    db $fc                                        ; $7a04: $fc
    push af                                       ; $7a05: $f5
    ld a, l                                       ; $7a06: $7d
    sub $dd                                       ; $7a07: $d6 $dd
    adc e                                         ; $7a09: $8b
    cp a                                          ; $7a0a: $bf
    ld l, [hl]                                    ; $7a0b: $6e
    cp b                                          ; $7a0c: $b8
    adc [hl]                                      ; $7a0d: $8e
    push af                                       ; $7a0e: $f5

Jump_035_7a0f:
    halt                                          ; $7a0f: $76
    jr nc, jr_035_7a40                            ; $7a10: $30 $2e

    ld l, d                                       ; $7a12: $6a
    nop                                           ; $7a13: $00
    ld l, a                                       ; $7a14: $6f
    sub e                                         ; $7a15: $93
    ccf                                           ; $7a16: $3f
    ld a, d                                       ; $7a17: $7a
    sbc e                                         ; $7a18: $9b
    add hl, de                                    ; $7a19: $19
    db $fd                                        ; $7a1a: $fd
    cp h                                          ; $7a1b: $bc
    ld l, c                                       ; $7a1c: $69
    inc de                                        ; $7a1d: $13
    ld hl, sp-$15                                 ; $7a1e: $f8 $eb
    cp e                                          ; $7a20: $bb
    ld [$fdc2], sp                                ; $7a21: $08 $c2 $fd
    adc d                                         ; $7a24: $8a
    cp a                                          ; $7a25: $bf
    ld [hl], e                                    ; $7a26: $73
    push af                                       ; $7a27: $f5
    ld b, a                                       ; $7a28: $47
    ld l, h                                       ; $7a29: $6c
    ldh a, [$d7]                                  ; $7a2a: $f0 $d7
    dec c                                         ; $7a2c: $0d
    rra                                           ; $7a2d: $1f
    sbc a                                         ; $7a2e: $9f
    ld h, d                                       ; $7a2f: $62
    dec e                                         ; $7a30: $1d
    db $eb                                        ; $7a31: $eb
    and e                                         ; $7a32: $a3
    xor h                                         ; $7a33: $ac
    inc sp                                        ; $7a34: $33
    ld h, a                                       ; $7a35: $67
    db $eb                                        ; $7a36: $eb
    db $ed                                        ; $7a37: $ed
    db $dd                                        ; $7a38: $dd
    and d                                         ; $7a39: $a2
    sbc l                                         ; $7a3a: $9d
    and $09                                       ; $7a3b: $e6 $09
    db $fc                                        ; $7a3d: $fc
    push af                                       ; $7a3e: $f5
    ld a, l                                       ; $7a3f: $7d

jr_035_7a40:
    sub $3d                                       ; $7a40: $d6 $3d
    ld a, $ed                                     ; $7a42: $3e $ed
    ldh [$b5], a                                  ; $7a44: $e0 $b5
    ld [hl], l                                    ; $7a46: $75
    xor h                                         ; $7a47: $ac
    adc a                                         ; $7a48: $8f
    ld h, [hl]                                    ; $7a49: $66
    ld b, $49                                     ; $7a4a: $06 $49
    ld d, h                                       ; $7a4c: $54
    rlca                                          ; $7a4d: $07
    sbc h                                         ; $7a4e: $9c
    cp e                                          ; $7a4f: $bb
    sbc a                                         ; $7a50: $9f

jr_035_7a51:
    ccf                                           ; $7a51: $3f
    db $ed                                        ; $7a52: $ed
    and e                                         ; $7a53: $a3
    pop bc                                        ; $7a54: $c1
    ld e, a                                       ; $7a55: $5f
    ret                                           ; $7a56: $c9


    xor d                                         ; $7a57: $aa
    add e                                         ; $7a58: $83
    ld h, c                                       ; $7a59: $61
    ld [$208e], a                                 ; $7a5a: $ea $8e $20
    add hl, bc                                    ; $7a5d: $09
    dec de                                        ; $7a5e: $1b
    jr c, jr_035_7a51                             ; $7a5f: $38 $f0

    ld de, $de0c                                  ; $7a61: $11 $0c $de
    ld h, [hl]                                    ; $7a64: $66
    adc $8c                                       ; $7a65: $ce $8c
    add sp, -$13                                  ; $7a67: $e8 $ed
    ei                                            ; $7a69: $fb
    nop                                           ; $7a6a: $00
    ld c, [hl]                                    ; $7a6b: $4e
    ld [hl], e                                    ; $7a6c: $73
    or e                                          ; $7a6d: $b3
    dec sp                                        ; $7a6e: $3b
    or $dc                                        ; $7a6f: $f6 $dc
    ld d, l                                       ; $7a71: $55
    jp nc, $b8c1                                  ; $7a72: $d2 $c1 $b8

    xor b                                         ; $7a75: $a8
    ld bc, $11dc                                  ; $7a76: $01 $dc $11
    ld [hl-], a                                   ; $7a79: $32
    ld [hl], $78                                  ; $7a7a: $36 $78
    db $d3                                        ; $7a7c: $d3
    inc e                                         ; $7a7d: $1c
    or e                                          ; $7a7e: $b3
    dec sp                                        ; $7a7f: $3b
    ld [hl], $6d                                  ; $7a80: $36 $6d
    ld [bc], a                                    ; $7a82: $02
    ld a, a                                       ; $7a83: $7f
    ld a, l                                       ; $7a84: $7d
    sbc a                                         ; $7a85: $9f

jr_035_7a86:
    ld [hl], l                                    ; $7a86: $75
    ccf                                           ; $7a87: $3f
    and l                                         ; $7a88: $a5
    ld d, $1d                                     ; $7a89: $16 $1d
    sbc e                                         ; $7a8b: $9b
    ld h, c                                       ; $7a8c: $61
    dec e                                         ; $7a8d: $1d
    ld a, e                                       ; $7a8e: $7b
    ld a, h                                       ; $7a8f: $7c
    ld e, d                                       ; $7a90: $5a
    rst $00                                       ; $7a91: $c7
    cp d                                          ; $7a92: $ba
    rst $28                                       ; $7a93: $ef
    and e                                         ; $7a94: $a3
    sub a                                         ; $7a95: $97
    jr jr_035_7af3                                ; $7a96: $18 $5b

    adc [hl]                                      ; $7a98: $8e
    ret z                                         ; $7a99: $c8

    call c, $8aa1                                 ; $7a9a: $dc $a1 $8a
    or l                                          ; $7a9d: $b5
    ld h, h                                       ; $7a9e: $64
    or c                                          ; $7a9f: $b1
    ld l, [hl]                                    ; $7aa0: $6e
    ld h, [hl]                                    ; $7aa1: $66
    db $f4                                        ; $7aa2: $f4
    di                                            ; $7aa3: $f3
    and [hl]                                      ; $7aa4: $a6
    add hl, sp                                    ; $7aa5: $39
    add hl, bc                                    ; $7aa6: $09
    db $fc                                        ; $7aa7: $fc
    push af                                       ; $7aa8: $f5
    xor $18                                       ; $7aa9: $ee $18
    and a                                         ; $7aab: $a7
    rst $30                                       ; $7aac: $f7
    sub b                                         ; $7aad: $90
    dec de                                        ; $7aae: $1b
    dec c                                         ; $7aaf: $0d
    cp $ba                                        ; $7ab0: $fe $ba
    pop bc                                        ; $7ab2: $c1
    rra                                           ; $7ab3: $1f
    db $f4                                        ; $7ab4: $f4
    ld a, [hl]                                    ; $7ab5: $7e
    dec c                                         ; $7ab6: $0d
    ld e, [hl]                                    ; $7ab7: $5e
    ld e, e                                       ; $7ab8: $5b
    xor l                                         ; $7ab9: $ad
    adc d                                         ; $7aba: $8a
    inc bc                                        ; $7abb: $03
    ld [de], a                                    ; $7abc: $12
    db $fc                                        ; $7abd: $fc
    ld hl, $39a4                                  ; $7abe: $21 $a4 $39
    ret                                           ; $7ac1: $c9


    rra                                           ; $7ac2: $1f
    and c                                         ; $7ac3: $a1
    ld e, d                                       ; $7ac4: $5a
    push de                                       ; $7ac5: $d5
    or c                                          ; $7ac6: $b1
    sbc $0e                                       ; $7ac7: $de $0e
    add $45                                       ; $7ac9: $c6 $45
    dec c                                         ; $7acb: $0d

Call_035_7acc:
    ldh [$6d], a                                  ; $7acc: $e0 $6d
    ld a, [c]                                     ; $7ace: $f2
    ld b, a                                       ; $7acf: $47
    ld l, a                                       ; $7ad0: $6f
    inc sp                                        ; $7ad1: $33
    and e                                         ; $7ad2: $a3
    sbc a                                         ; $7ad3: $9f
    ld [hl], a                                    ; $7ad4: $77
    add $1c                                       ; $7ad5: $c6 $1c
    or e                                          ; $7ad7: $b3
    dec sp                                        ; $7ad8: $3b
    or $dc                                        ; $7ad9: $f6 $dc
    rst $08                                       ; $7adb: $cf
    ld e, d                                       ; $7adc: $5a
    ld a, [hl-]                                   ; $7add: $3a
    jr jr_035_7a86                                ; $7ade: $18 $a6

    call nc, $1fc1                                ; $7ae0: $d4 $c1 $1f
    db $f4                                        ; $7ae3: $f4
    ld [hl], $f6                                  ; $7ae4: $36 $f6
    ld l, $18                                     ; $7ae6: $2e $18
    and c                                         ; $7ae8: $a1
    ld e, d                                       ; $7ae9: $5a
    push de                                       ; $7aea: $d5
    or c                                          ; $7aeb: $b1
    sbc $fe                                       ; $7aec: $de $fe
    and l                                         ; $7aee: $a5
    rla                                           ; $7aef: $17
    cp a                                          ; $7af0: $bf
    ld a, c                                       ; $7af1: $79
    rst $08                                       ; $7af2: $cf

jr_035_7af3:
    cp l                                          ; $7af3: $bd
    ld a, e                                       ; $7af4: $7b
    or a                                          ; $7af5: $b7
    ld e, d                                       ; $7af6: $5a
    push de                                       ; $7af7: $d5
    or c                                          ; $7af8: $b1
    xor $60                                       ; $7af9: $ee $60
    ld e, h                                       ; $7afb: $5c
    call nc, $ee00                                ; $7afc: $d4 $00 $ee
    ret z                                         ; $7aff: $c8

    db $eb                                        ; $7b00: $eb
    adc c                                         ; $7b01: $89
    sub b                                         ; $7b02: $90
    ld e, b                                       ; $7b03: $58
    rst $30                                       ; $7b04: $f7
    dec h                                         ; $7b05: $25
    ld [bc], a                                    ; $7b06: $02
    jr jr_035_7b2a                                ; $7b07: $18 $21

    call $b301                                    ; $7b09: $cd $01 $b3
    dec sp                                        ; $7b0c: $3b
    or $dc                                        ; $7b0d: $f6 $dc
    ldh [$af], a                                  ; $7b0f: $e0 $af
    rst $28                                       ; $7b11: $ef
    or e                                          ; $7b12: $b3
    xor $2a                                       ; $7b13: $ee $2a
    xor c                                         ; $7b15: $a9
    ld h, e                                       ; $7b16: $63
    cp l                                          ; $7b17: $bd
    call Call_035_7e8c                            ; $7b18: $cd $8c $7e
    sbc $73                                       ; $7b1b: $de $73
    or l                                          ; $7b1d: $b5
    and l                                         ; $7b1e: $a5
    reti                                          ; $7b1f: $d9


    ld e, a                                       ; $7b20: $5f
    ld [hl], d                                    ; $7b21: $72
    push hl                                       ; $7b22: $e5
    add d                                         ; $7b23: $82
    ld c, $5e                                     ; $7b24: $0e $5e
    jp nc, Jump_000_0ad1                          ; $7b26: $d2 $d1 $0a

    ld a, d                                       ; $7b29: $7a

jr_035_7b2a:
    rst $38                                       ; $7b2a: $ff
    sub d                                         ; $7b2b: $92
    and $b3                                       ; $7b2c: $e6 $b3
    dec sp                                        ; $7b2e: $3b
    or $dc                                        ; $7b2f: $f6 $dc
    rst $08                                       ; $7b31: $cf
    ld e, d                                       ; $7b32: $5a
    xor d                                         ; $7b33: $aa
    ld d, l                                       ; $7b34: $55
    pop af                                        ; $7b35: $f1
    and d                                         ; $7b36: $a2
    inc d                                         ; $7b37: $14
    adc h                                         ; $7b38: $8c
    ld d, b                                       ; $7b39: $50
    sub $88                                       ; $7b3a: $d6 $88
    sub [hl]                                      ; $7b3c: $96
    ld e, $9f                                     ; $7b3d: $1e $9f
    ld d, [hl]                                    ; $7b3f: $56
    bit 2, a                                      ; $7b40: $cb $57
    db $e3                                        ; $7b42: $e3
    ld a, b                                       ; $7b43: $78
    cp e                                          ; $7b44: $bb
    sbc a                                         ; $7b45: $9f
    ccf                                           ; $7b46: $3f
    db $f4                                        ; $7b47: $f4
    di                                            ; $7b48: $f3
    and [hl]                                      ; $7b49: $a6
    ld c, l                                       ; $7b4a: $4d
    cp $e8                                        ; $7b4b: $fe $e8
    dec l                                         ; $7b4d: $2d
    add d                                         ; $7b4e: $82
    inc hl                                        ; $7b4f: $23
    di                                            ; $7b50: $f3
    halt                                          ; $7b51: $76
    add e                                         ; $7b52: $83
    ccf                                           ; $7b53: $3f
    jr z, jr_035_7bb4                             ; $7b54: $28 $5e

    call $eb2c                                    ; $7b56: $cd $2c $eb
    adc $2d                                       ; $7b59: $ce $2d
    ld e, $18                                     ; $7b5b: $1e $18
    ldh a, [$f6]                                  ; $7b5d: $f0 $f6
    push bc                                       ; $7b5f: $c5
    ld a, [hl]                                    ; $7b60: $7e
    ld b, l                                       ; $7b61: $45

Jump_035_7b62:
    and h                                         ; $7b62: $a4
    add hl, sp                                    ; $7b63: $39
    or e                                          ; $7b64: $b3
    dec sp                                        ; $7b65: $3b
    or $5c                                        ; $7b66: $f6 $5c
    cp h                                          ; $7b68: $bc
    jr z, @+$07                                   ; $7b69: $28 $05

    scf                                           ; $7b6b: $37
    ld hl, sp-$55                                 ; $7b6c: $f8 $ab
    pop hl                                        ; $7b6e: $e1
    cp $67                                        ; $7b6f: $fe $67
    call z, $b301                                 ; $7b71: $cc $01 $b3
    dec sp                                        ; $7b74: $3b
    or $dc                                        ; $7b75: $f6 $dc
    rst $08                                       ; $7b77: $cf
    ld e, d                                       ; $7b78: $5a
    ld a, d                                       ; $7b79: $7a
    rst $30                                       ; $7b7a: $f7
    ld l, [hl]                                    ; $7b7b: $6e
    add e                                         ; $7b7c: $83
    cp a                                          ; $7b7d: $bf
    ld a, [hl-]                                   ; $7b7e: $3a
    sub $5b                                       ; $7b7f: $d6 $5b
    db $f4                                        ; $7b81: $f4
    di                                            ; $7b82: $f3
    sbc [hl]                                      ; $7b83: $9e
    dec hl                                        ; $7b84: $2b
    pop bc                                        ; $7b85: $c1
    rra                                           ; $7b86: $1f
    cp b                                          ; $7b87: $b8
    pop bc                                        ; $7b88: $c1
    ld e, a                                       ; $7b89: $5f
    db $e3                                        ; $7b8a: $e3
    dec e                                         ; $7b8b: $1d
    db $fd                                        ; $7b8c: $fd
    ld a, [bc]                                    ; $7b8d: $0a
    rst $08                                       ; $7b8e: $cf
    push de                                       ; $7b8f: $d5
    rra                                           ; $7b90: $1f
    or c                                          ; $7b91: $b1
    ld e, d                                       ; $7b92: $5a
    dec [hl]                                      ; $7b93: $35
    sbc $16                                       ; $7b94: $de $16
    dec d                                         ; $7b96: $15
    ld a, a                                       ; $7b97: $7f
    ld [$0e69], sp                                ; $7b98: $08 $69 $0e
    ld c, h                                       ; $7b9b: $4c
    ld d, e                                       ; $7b9c: $53
    ld d, $a1                                     ; $7b9d: $16 $a1
    ld [hl], a                                    ; $7b9f: $77
    rst $28                                       ; $7ba0: $ef
    sbc [hl]                                      ; $7ba1: $9e
    xor e                                         ; $7ba2: $ab
    rst $38                                       ; $7ba3: $ff
    ld l, [hl]                                    ; $7ba4: $6e
    rst $28                                       ; $7ba5: $ef
    inc h                                         ; $7ba6: $24
    pop de                                        ; $7ba7: $d1
    ld l, [hl]                                    ; $7ba8: $6e
    ldh a, [$57]                                  ; $7ba9: $f0 $57
    ld h, e                                       ; $7bab: $63
    ld [hl], l                                    ; $7bac: $75
    ld c, b                                       ; $7bad: $48
    ld e, c                                       ; $7bae: $59
    inc hl                                        ; $7baf: $23
    call nz, Call_035_4071                        ; $7bb0: $c4 $71 $40
    scf                                           ; $7bb3: $37

jr_035_7bb4:
    ld hl, sp-$7d                                 ; $7bb4: $f8 $83
    ld c, $5a                                     ; $7bb6: $0e $5a
    db $e4                                        ; $7bb8: $e4
    add e                                         ; $7bb9: $83
    ld [hl], a                                    ; $7bba: $77
    ld c, b                                       ; $7bbb: $48
    ld c, $a3                                     ; $7bbc: $0e $a3
    ccf                                           ; $7bbe: $3f
    ld d, $2f                                     ; $7bbf: $16 $2f
    ld c, d                                       ; $7bc1: $4a
    pop bc                                        ; $7bc2: $c1
    ld [hl], l                                    ; $7bc3: $75
    ld l, h                                       ; $7bc4: $6c
    sub e                                         ; $7bc5: $93
    ccf                                           ; $7bc6: $3f
    cp d                                          ; $7bc7: $ba
    jp c, Jump_035_65bb                           ; $7bc8: $da $bb $65

    inc bc                                        ; $7bcb: $03
    ret nz                                        ; $7bcc: $c0

    ld b, l                                       ; $7bcd: $45
    cp $c6                                        ; $7bce: $fe $c6
    sbc $be                                       ; $7bd0: $de $be
    or b                                          ; $7bd2: $b0
    db $f4                                        ; $7bd3: $f4
    ld h, d                                       ; $7bd4: $62
    cp l                                          ; $7bd5: $bd
    dec a                                         ; $7bd6: $3d
    ld a, $7f                                     ; $7bd7: $3e $7f
    sbc $19                                       ; $7bd9: $de $19

Jump_035_7bdb:
    ld [hl], e                                    ; $7bdb: $73
    add hl, bc                                    ; $7bdc: $09
    db $fc                                        ; $7bdd: $fc
    push af                                       ; $7bde: $f5
    ld a, l                                       ; $7bdf: $7d
    sub $dd                                       ; $7be0: $d6 $dd
    adc e                                         ; $7be2: $8b
    cp a                                          ; $7be3: $bf
    ld l, [hl]                                    ; $7be4: $6e
    cp b                                          ; $7be5: $b8
    adc [hl]                                      ; $7be6: $8e
    push af                                       ; $7be7: $f5
    ld [hl], $f9                                  ; $7be8: $36 $f9
    and e                                         ; $7bea: $a3
    or a                                          ; $7beb: $b7
    sbc c                                         ; $7bec: $99
    pop de                                        ; $7bed: $d1
    rst $08                                       ; $7bee: $cf
    sbc e                                         ; $7bef: $9b
    and $b3                                       ; $7bf0: $e6 $b3
    dec sp                                        ; $7bf2: $3b
    ld [hl], $ed                                  ; $7bf3: $36 $ed
    ld e, h                                       ; $7bf5: $5c
    rst $10                                       ; $7bf6: $d7
    halt                                          ; $7bf7: $76
    or h                                          ; $7bf8: $b4
    ccf                                           ; $7bf9: $3f
    ld d, d                                       ; $7bfa: $52
    adc a                                         ; $7bfb: $8f
    jp hl                                         ; $7bfc: $e9


    ei                                            ; $7bfd: $fb
    ld d, b                                       ; $7bfe: $50
    rst $00                                       ; $7bff: $c7
    cp d                                          ; $7c00: $ba
    sbc c                                         ; $7c01: $99
    add hl, hl                                    ; $7c02: $29
    db $eb                                        ; $7c03: $eb
    adc $f5                                       ; $7c04: $ce $f5
    ld bc, $769c                                  ; $7c06: $01 $9c $76
    ld [hl], h                                    ; $7c09: $74
    cp b                                          ; $7c0a: $b8
    rst $30                                       ; $7c0b: $f7
    ld b, h                                       ; $7c0c: $44
    add hl, de                                    ; $7c0d: $19
    rra                                           ; $7c0e: $1f
    xor e                                         ; $7c0f: $ab
    cp l                                          ; $7c10: $bd
    ld e, e                                       ; $7c11: $5b
    db $fd                                        ; $7c12: $fd
    adc a                                         ; $7c13: $8f
    add b                                         ; $7c14: $80
    add hl, de                                    ; $7c15: $19
    ld [hl], e                                    ; $7c16: $73
    ld c, c                                       ; $7c17: $49
    xor d                                         ; $7c18: $aa
    ld a, b                                       ; $7c19: $78
    ld d, c                                       ; $7c1a: $51

jr_035_7c1b:
    ld a, [bc]                                    ; $7c1b: $0a
    ld b, [hl]                                    ; $7c1c: $46
    add sp, -$0f                                  ; $7c1d: $e8 $f1
    ld l, c                                       ; $7c1f: $69
    rst $38                                       ; $7c20: $ff
    ld d, [hl]                                    ; $7c21: $56
    add a                                         ; $7c22: $87
    ld c, e                                       ; $7c23: $4b
    ld c, b                                       ; $7c24: $48
    jr nz, jr_035_7ca6                            ; $7c25: $20 $7f

    xor $6c                                       ; $7c27: $ee $6c
    adc d                                         ; $7c29: $8a
    add b                                         ; $7c2a: $80
    ld h, [hl]                                    ; $7c2b: $66
    ld a, [hl]                                    ; $7c2c: $7e
    sbc $73                                       ; $7c2d: $de $73
    sub e                                         ; $7c2f: $93
    cp a                                          ; $7c30: $bf
    ret z                                         ; $7c31: $c8

    sbc b                                         ; $7c32: $98
    inc [hl]                                      ; $7c33: $34
    rlca                                          ; $7c34: $07
    ld b, e                                       ; $7c35: $43
    add hl, hl                                    ; $7c36: $29
    dec [hl]                                      ; $7c37: $35
    or $46                                        ; $7c38: $f6 $46
    cp a                                          ; $7c3a: $bf
    sub h                                         ; $7c3b: $94
    ld [hl], l                                    ; $7c3c: $75
    ld d, h                                       ; $7c3d: $54
    add a                                         ; $7c3e: $87
    sbc h                                         ; $7c3f: $9c
    sbc e                                         ; $7c40: $9b
    db $fc                                        ; $7c41: $fc
    ld b, l                                       ; $7c42: $45
    add $cc                                       ; $7c43: $c6 $cc
    sbc b                                         ; $7c45: $98
    inc bc                                        ; $7c46: $03
    add hl, bc                                    ; $7c47: $09
    db $fc                                        ; $7c48: $fc
    push af                                       ; $7c49: $f5
    ld a, l                                       ; $7c4a: $7d
    sub $cd                                       ; $7c4b: $d6 $cd
    inc l                                         ; $7c4d: $2c
    ld e, a                                       ; $7c4e: $5f
    cp e                                          ; $7c4f: $bb
    ld h, [hl]                                    ; $7c50: $66
    cp l                                          ; $7c51: $bd
    db $fd                                        ; $7c52: $fd
    ld a, [bc]                                    ; $7c53: $0a
    xor e                                         ; $7c54: $ab
    ld a, l                                       ; $7c55: $7d
    ld [hl], h                                    ; $7c56: $74
    ld d, $2f                                     ; $7c57: $16 $2f
    add d                                         ; $7c59: $82
    and l                                         ; $7c5a: $a5
    sbc c                                         ; $7c5b: $99
    pop de                                        ; $7c5c: $d1
    rst $08                                       ; $7c5d: $cf
    ld e, e                                       ; $7c5e: $5b
    or l                                          ; $7c5f: $b5
    cp d                                          ; $7c60: $ba
    add [hl]                                      ; $7c61: $86
    ei                                            ; $7c62: $fb
    rst $00                                       ; $7c63: $c7
    adc $1b                                       ; $7c64: $ce $1b
    rla                                           ; $7c66: $17
    dec [hl]                                      ; $7c67: $35
    add b                                         ; $7c68: $80
    or c                                          ; $7c69: $b1
    ld e, d                                       ; $7c6a: $5a
    cp [hl]                                       ; $7c6b: $be
    ld a, [de]                                    ; $7c6c: $1a
    rst $00                                       ; $7c6d: $c7
    db $db                                        ; $7c6e: $db
    ld h, a                                       ; $7c6f: $67
    ld d, c                                       ; $7c70: $51
    rst $00                                       ; $7c71: $c7
    inc hl                                        ; $7c72: $23
    dec c                                         ; $7c73: $0d
    db $10                                        ; $7c74: $10
    sbc $a2                                       ; $7c75: $de $a2
    sbc a                                         ; $7c77: $9f

Jump_035_7c78:
    scf                                           ; $7c78: $37
    call $b301                                    ; $7c79: $cd $01 $b3

Call_035_7c7c:
    dec sp                                        ; $7c7c: $3b
    or $dc                                        ; $7c7d: $f6 $dc
    db $fd                                        ; $7c7f: $fd
    ld b, b                                       ; $7c80: $40
    ld [de], a                                    ; $7c81: $12
    ld a, [de]                                    ; $7c82: $1a
    db $fc                                        ; $7c83: $fc
    ld [hl], l                                    ; $7c84: $75
    add e                                         ; $7c85: $83
    ccf                                           ; $7c86: $3f
    jr jr_035_7c1b                                ; $7c87: $18 $92

    inc bc                                        ; $7c89: $03
    and e                                         ; $7c8a: $a3
    db $10                                        ; $7c8b: $10
    add [hl]                                      ; $7c8c: $86
    inc [hl]                                      ; $7c8d: $34
    add c                                         ; $7c8e: $81

jr_035_7c8f:
    cp a                                          ; $7c8f: $bf
    cp [hl]                                       ; $7c90: $be
    or c                                          ; $7c91: $b1
    push bc                                       ; $7c92: $c5
    call Call_035_5f2c                            ; $7c93: $cd $2c $5f
    cp e                                          ; $7c96: $bb
    jp c, Jump_035_4747                           ; $7c97: $da $47 $47

    ret                                           ; $7c9a: $c9


    ld b, l                                       ; $7c9b: $45
    jr jr_035_7c8f                                ; $7c9c: $18 $f1

    sub d                                         ; $7c9e: $92
    sub d                                         ; $7c9f: $92
    push de                                       ; $7ca0: $d5
    sub b                                         ; $7ca1: $90
    inc e                                         ; $7ca2: $1c
    and e                                         ; $7ca3: $a3
    cp l                                          ; $7ca4: $bd
    ld e, e                                       ; $7ca5: $5b

jr_035_7ca6:
    xor l                                         ; $7ca6: $ad
    ld a, d                                       ; $7ca7: $7a
    adc h                                         ; $7ca8: $8c
    call Call_000_181f                            ; $7ca9: $cd $1f $18
    pop hl                                        ; $7cac: $e1
    call c, $dfdb                                 ; $7cad: $dc $db $df
    ld l, l                                       ; $7cb0: $6d
    ldh a, [$d7]                                  ; $7cb1: $f0 $d7
    reti                                          ; $7cb3: $d9


    cpl                                           ; $7cb4: $2f
    ld [$b7b2], sp                                ; $7cb5: $08 $b2 $b7
    inc b                                         ; $7cb8: $04
    ld c, c                                       ; $7cb9: $49
    xor d                                         ; $7cba: $aa
    add e                                         ; $7cbb: $83
    cp a                                          ; $7cbc: $bf
    ld e, $9f                                     ; $7cbd: $1e $9f
    ccf                                           ; $7cbf: $3f
    ld l, a                                       ; $7cc0: $6f
    push de                                       ; $7cc1: $d5
    ld [$90ea], a                                 ; $7cc2: $ea $ea $90
    ld [c], a                                     ; $7cc5: $e2
    ld b, b                                       ; $7cc6: $40
    ld [hl+], a                                   ; $7cc7: $22
    ld e, b                                       ; $7cc8: $58
    ld a, [$3529]                                 ; $7cc9: $fa $29 $35
    sub $72                                       ; $7ccc: $d6 $72
    and e                                         ; $7cce: $a3
    adc c                                         ; $7ccf: $89
    ld [c], a                                     ; $7cd0: $e2
    ld c, l                                       ; $7cd1: $4d
    ld [hl], e                                    ; $7cd2: $73
    and e                                         ; $7cd3: $a3
    cp l                                          ; $7cd4: $bd
    ld e, e                                       ; $7cd5: $5b
    xor l                                         ; $7cd6: $ad
    ld a, d                                       ; $7cd7: $7a
    rrca                                          ; $7cd8: $0f
    ld c, d                                       ; $7cd9: $4a
    ld de, $d5ce                                  ; $7cda: $11 $ce $d5
    rra                                           ; $7cdd: $1f
    or c                                          ; $7cde: $b1
    pop bc                                        ; $7cdf: $c1
    ld e, a                                       ; $7ce0: $5f
    ld [hl], l                                    ; $7ce1: $75
    ld c, b                                       ; $7ce2: $48
    dec c                                         ; $7ce3: $0d
    rst $30                                       ; $7ce4: $f7
    adc a                                         ; $7ce5: $8f
    or l                                          ; $7ce6: $b5
    call c, $a268                                 ; $7ce7: $dc $68 $a2
    ld hl, sp+$5c                                 ; $7cea: $f8 $5c
    db $fd                                        ; $7cec: $fd
    ld [hl], a                                    ; $7ced: $77
    ld a, e                                       ; $7cee: $7b
    rst $38                                       ; $7cef: $ff
    ld [bc], a                                    ; $7cf0: $02
    ld a, $97                                     ; $7cf1: $3e $97
    dec c                                         ; $7cf3: $0d
    xor h                                         ; $7cf4: $ac
    or [hl]                                       ; $7cf5: $b6
    ld [hl], h                                    ; $7cf6: $74
    sbc [hl]                                      ; $7cf7: $9e
    dec b                                         ; $7cf8: $05
    adc e                                         ; $7cf9: $8b
    inc b                                         ; $7cfa: $04
    ld a, a                                       ; $7cfb: $7f
    ret nc                                        ; $7cfc: $d0

    pop bc                                        ; $7cfd: $c1
    ld c, e                                       ; $7cfe: $4b
    ld e, b                                       ; $7cff: $58
    ld b, a                                       ; $7d00: $47
    inc bc                                        ; $7d01: $03
    ld h, c                                       ; $7d02: $61
    ld c, b                                       ; $7d03: $48
    ld c, $a3                                     ; $7d04: $0e $a3
    db $10                                        ; $7d06: $10
    add [hl]                                      ; $7d07: $86
    inc [hl]                                      ; $7d08: $34
    ret                                           ; $7d09: $c9


    jp nc, Jump_035_7251                          ; $7d0a: $d2 $51 $72

    ld de, $bc46                                  ; $7d0d: $11 $46 $bc
    and h                                         ; $7d10: $a4
    or a                                          ; $7d11: $b7
    or c                                          ; $7d12: $b1
    ld [hl], a                                    ; $7d13: $77
    pop bc                                        ; $7d14: $c1
    call Call_035_5f2c                            ; $7d15: $cd $2c $5f
    cp e                                          ; $7d18: $bb
    add [hl]                                      ; $7d19: $86
    ei                                            ; $7d1a: $fb
    rst $00                                       ; $7d1b: $c7
    adc [hl]                                      ; $7d1c: $8e
    ld c, $fe                                     ; $7d1d: $0e $fe
    jr nz, jr_035_7d53                            ; $7d1f: $20 $32

    ld h, e                                       ; $7d21: $63
    dec l                                         ; $7d22: $2d
    scf                                           ; $7d23: $37
    sbc d                                         ; $7d24: $9a
    jr z, @-$20                                   ; $7d25: $28 $de

    xor d                                         ; $7d27: $aa
    push de                                       ; $7d28: $d5
    dec c                                         ; $7d29: $0d
    cp $7a                                        ; $7d2a: $fe $7a
    rrca                                          ; $7d2c: $0f
    ld c, d                                       ; $7d2d: $4a
    ei                                            ; $7d2e: $fb
    dec d                                         ; $7d2f: $15
    pop de                                        ; $7d30: $d1
    sbc e                                         ; $7d31: $9b
    ld h, e                                       ; $7d32: $63
    cp l                                          ; $7d33: $bd
    sbc l                                         ; $7d34: $9d
    push hl                                       ; $7d35: $e5
    ld d, e                                       ; $7d36: $53
    ld e, d                                       ; $7d37: $5a
    jp $63fd                                      ; $7d38: $c3 $fd $63


    rlca                                          ; $7d3b: $07
    dec l                                         ; $7d3c: $2d
    inc bc                                        ; $7d3d: $03
    rra                                           ; $7d3e: $1f
    pop de                                        ; $7d3f: $d1
    sbc e                                         ; $7d40: $9b
    and $a3                                       ; $7d41: $e6 $a3
    db $10                                        ; $7d43: $10
    add [hl]                                      ; $7d44: $86
    ld [hl], h                                    ; $7d45: $74
    db $f4                                        ; $7d46: $f4
    rst $08                                       ; $7d47: $cf
    ld l, d                                       ; $7d48: $6a
    inc l                                         ; $7d49: $2c
    ld c, e                                       ; $7d4a: $4b
    xor a                                         ; $7d4b: $af
    ld [hl], c                                    ; $7d4c: $71
    cp d                                          ; $7d4d: $ba
    pop bc                                        ; $7d4e: $c1
    rra                                           ; $7d4f: $1f
    sbc h                                         ; $7d50: $9c
    ld a, e                                       ; $7d51: $7b
    inc b                                         ; $7d52: $04

Jump_035_7d53:
jr_035_7d53:
    ld a, a                                       ; $7d53: $7f
    adc l                                         ; $7d54: $8d
    dec l                                         ; $7d55: $2d
    sub e                                         ; $7d56: $93
    cp a                                          ; $7d57: $bf
    ld a, e                                       ; $7d58: $7b
    ld e, b                                       ; $7d59: $58
    ld [hl+], a                                   ; $7d5a: $22
    cp e                                          ; $7d5b: $bb
    add hl, sp                                    ; $7d5c: $39
    ret nz                                        ; $7d5d: $c0

    ld e, e                                       ; $7d5e: $5b
    or d                                          ; $7d5f: $b2

jr_035_7d60:
    ld a, [hl+]                                   ; $7d60: $2a
    dec hl                                        ; $7d61: $2b
    or c                                          ; $7d62: $b1
    sbc c                                         ; $7d63: $99
    ld [hl], a                                    ; $7d64: $77
    ld c, b                                       ; $7d65: $48
    ld c, $a3                                     ; $7d66: $0e $a3
    ld b, e                                       ; $7d68: $43
    xor d                                         ; $7d69: $aa
    ld c, c                                       ; $7d6a: $49
    ld b, d                                       ; $7d6b: $42
    ld a, b                                       ; $7d6c: $78
    cp e                                          ; $7d6d: $bb
    pop bc                                        ; $7d6e: $c1
    rra                                           ; $7d6f: $1f
    db $f4                                        ; $7d70: $f4
    sbc [hl]                                      ; $7d71: $9e
    ld hl, sp-$3c                                 ; $7d72: $f8 $c4
    xor e                                         ; $7d74: $ab
    xor e                                         ; $7d75: $ab
    adc l                                         ; $7d76: $8d
    sbc l                                         ; $7d77: $9d
    ld h, a                                       ; $7d78: $67
    pop bc                                        ; $7d79: $c1
    ld [hl+], a                                   ; $7d7a: $22
    pop bc                                        ; $7d7b: $c1
    rra                                           ; $7d7c: $1f
    ld h, b                                       ; $7d7d: $60
    ld [hl], c                                    ; $7d7e: $71
    ld b, b                                       ; $7d7f: $40
    call z, $379f                                 ; $7d80: $cc $9f $37
    call $c301                                    ; $7d83: $cd $01 $c3
    or c                                          ; $7d86: $b1
    rst $30                                       ; $7d87: $f7
    ld b, h                                       ; $7d88: $44
    ld [hl], c                                    ; $7d89: $71
    ld e, c                                       ; $7d8a: $59
    inc hl                                        ; $7d8b: $23
    ld e, d                                       ; $7d8c: $5a
    adc $bd                                       ; $7d8d: $ce $bd
    ld a, e                                       ; $7d8f: $7b
    or a                                          ; $7d90: $b7
    ld e, d                                       ; $7d91: $5a
    dec [hl]                                      ; $7d92: $35
    di                                            ; $7d93: $f3
    ld b, e                                       ; $7d94: $43
    jr c, jr_035_7dee                             ; $7d95: $38 $57

    rst $38                                       ; $7d97: $ff
    db $dd                                        ; $7d98: $dd
    or d                                          ; $7d99: $b2
    cp [hl]                                       ; $7d9a: $be

jr_035_7d9b:
    ld e, l                                       ; $7d9b: $5d
    rst $00                                       ; $7d9c: $c7
    add c                                         ; $7d9d: $81
    ld d, b                                       ; $7d9e: $50
    xor l                                         ; $7d9f: $ad
    ld a, [$7f15]                                 ; $7da0: $fa $15 $7f
    cp l                                          ; $7da3: $bd
    add hl, sp                                    ; $7da4: $39
    sub $db                                       ; $7da5: $d6 $db
    ld [hl], c                                    ; $7da7: $71
    dec h                                         ; $7da8: $25
    or e                                          ; $7da9: $b3
    and h                                         ; $7daa: $a4
    add hl, sp                                    ; $7dab: $39
    and e                                         ; $7dac: $a3
    db $10                                        ; $7dad: $10
    add [hl]                                      ; $7dae: $86
    inc [hl]                                      ; $7daf: $34
    add c                                         ; $7db0: $81
    cp a                                          ; $7db1: $bf
    ld h, [hl]                                    ; $7db2: $66
    db $f4                                        ; $7db3: $f4
    dec hl                                        ; $7db4: $2b
    sub $e7                                       ; $7db5: $d6 $e7
    ld l, d                                       ; $7db7: $6a
    ld c, e                                       ; $7db8: $4b
    ld h, a                                       ; $7db9: $67
    di                                            ; $7dba: $f3
    inc de                                        ; $7dbb: $13
    ld c, e                                       ; $7dbc: $4b
    rst $18                                       ; $7dbd: $df
    add a                                         ; $7dbe: $87
    xor d                                         ; $7dbf: $aa
    push bc                                       ; $7dc0: $c5
    ld [hl+], a                                   ; $7dc1: $22
    ld a, a                                       ; $7dc2: $7f
    rst $10                                       ; $7dc3: $d7
    ld [hl], $8e                                  ; $7dc4: $36 $8e
    adc $1b                                       ; $7dc6: $ce $1b
    jr jr_035_7d60                                ; $7dc8: $18 $96

    inc [hl]                                      ; $7dca: $34
    rlca                                          ; $7dcb: $07
    and e                                         ; $7dcc: $a3
    ld b, e                                       ; $7dcd: $43
    adc d                                         ; $7dce: $8a
    rla                                           ; $7dcf: $17
    and l                                         ; $7dd0: $a5
    ldh [$2d], a                                  ; $7dd1: $e0 $2d
    ld l, e                                       ; $7dd3: $6b
    ld b, h                                       ; $7dd4: $44
    ld c, e                                       ; $7dd5: $4b
    scf                                           ; $7dd6: $37
    ld hl, sp-$7d                                 ; $7dd7: $f8 $83
    sbc $13                                       ; $7dd9: $de $13
    sbc a                                         ; $7ddb: $9f
    ld a, b                                       ; $7ddc: $78
    ld [hl], l                                    ; $7ddd: $75
    or l                                          ; $7dde: $b5
    or c                                          ; $7ddf: $b1
    di                                            ; $7de0: $f3
    inc l                                         ; $7de1: $2c
    ld e, b                                       ; $7de2: $58
    inc h                                         ; $7de3: $24
    ld hl, sp+$03                                 ; $7de4: $f8 $03
    inc l                                         ; $7de6: $2c
    ld c, $88                                     ; $7de7: $0e $88
    ld sp, hl                                     ; $7de9: $f9
    di                                            ; $7dea: $f3
    sbc [hl]                                      ; $7deb: $9e
    adc e                                         ; $7dec: $8b
    rst $10                                       ; $7ded: $d7

jr_035_7dee:
    ld [hl+], a                                   ; $7dee: $22
    db $f4                                        ; $7def: $f4
    ld l, [hl]                                    ; $7df0: $6e
    pop de                                        ; $7df1: $d1
    sbc $de                                       ; $7df2: $de $de
    ld b, e                                       ; $7df4: $43
    cp d                                          ; $7df5: $ba
    rla                                           ; $7df6: $17
    ld a, a                                       ; $7df7: $7f
    ld h, l                                       ; $7df8: $65
    adc l                                         ; $7df9: $8d
    jr nz, jr_035_7d9b                            ; $7dfa: $20 $9f

    add b                                         ; $7dfc: $80
    inc [hl]                                      ; $7dfd: $34
    rlca                                          ; $7dfe: $07
    di                                            ; $7dff: $f3
    ld e, d                                       ; $7e00: $5a
    sub b                                         ; $7e01: $90
    cp a                                          ; $7e02: $bf
    ld a, e                                       ; $7e03: $7b
    xor h                                         ; $7e04: $ac
    or $90                                        ; $7e05: $f6 $90
    ld h, $f0                                     ; $7e07: $26 $f0
    rst $10                                       ; $7e09: $d7
    ld a, e                                       ; $7e0a: $7b
    ld d, b                                       ; $7e0b: $50
    jp c, $fe0d                                   ; $7e0c: $da $0d $fe

    ldh [$5c], a                                  ; $7e0f: $e0 $5c
    db $fd                                        ; $7e11: $fd
    ld de, $2dab                                  ; $7e12: $11 $ab $2d
    sbc l                                         ; $7e15: $9d
    call $2c4f                                    ; $7e16: $cd $4f $2c
    ld h, l                                       ; $7e19: $65
    rst $00                                       ; $7e1a: $c7
    ld b, [hl]                                    ; $7e1b: $46
    rst $30                                       ; $7e1c: $f7
    ld e, $a2                                     ; $7e1d: $1e $a2
    db $d3                                        ; $7e1f: $d3
    inc e                                         ; $7e20: $1c
    add hl, bc                                    ; $7e21: $09
    db $fc                                        ; $7e22: $fc
    push af                                       ; $7e23: $f5
    ld c, [hl]                                    ; $7e24: $4e
    ld [de], a                                    ; $7e25: $12
    db $ed                                        ; $7e26: $ed
    ld h, [hl]                                    ; $7e27: $66
    sub [hl]                                      ; $7e28: $96
    ld [hl], l                                    ; $7e29: $75
    adc a                                         ; $7e2a: $8f
    add b                                         ; $7e2b: $80
    db $db                                        ; $7e2c: $db
    ld [hl], l                                    ; $7e2d: $75
    inc e                                         ; $7e2e: $1c
    sbc $aa                                       ; $7e2f: $de $aa
    push de                                       ; $7e31: $d5
    push de                                       ; $7e32: $d5
    ld hl, $a67d                                  ; $7e33: $21 $7d $a6
    add h                                         ; $7e36: $84
    rst $30                                       ; $7e37: $f7
    call c, $5acf                                 ; $7e38: $dc $cf $5a
    ld a, [de]                                    ; $7e3b: $1a
    db $fc                                        ; $7e3c: $fc
    push af                                       ; $7e3d: $f5
    ld d, b                                       ; $7e3e: $50
    adc b                                         ; $7e3f: $88
    and l                                         ; $7e40: $a5
    ld c, $6d                                     ; $7e41: $0e $6d
    jp hl                                         ; $7e43: $e9


    dec bc                                        ; $7e44: $0b
    ld c, e                                       ; $7e45: $4b
    ld e, c                                       ; $7e46: $59
    ld [$bd60], a                                 ; $7e47: $ea $60 $bd
    ld l, c                                       ; $7e4a: $69
    ld c, $f3                                     ; $7e4b: $0e $f3
    add [hl]                                      ; $7e4d: $86
    ld l, c                                       ; $7e4e: $69
    add hl, de                                    ; $7e4f: $19
    add hl, hl                                    ; $7e50: $29
    adc c                                         ; $7e51: $89
    rst $18                                       ; $7e52: $df
    adc $4d                                       ; $7e53: $ce $4d
    cp $22                                        ; $7e55: $fe $22
    ld h, e                                       ; $7e57: $63
    jp nc, $a926                                  ; $7e58: $d2 $26 $a9

    ld e, $0a                                     ; $7e5b: $1e $0a
    ld de, $847a                                  ; $7e5d: $11 $7a $84
    inc d                                         ; $7e60: $14
    rlca                                          ; $7e61: $07
    ld [de], a                                    ; $7e62: $12
    pop bc                                        ; $7e63: $c1
    ld d, d                                       ; $7e64: $52
    sub $12                                       ; $7e65: $d6 $12
    db $fc                                        ; $7e67: $fc
    add c                                         ; $7e68: $81
    rst $30                                       ; $7e69: $f7
    call c, $c7fb                                 ; $7e6a: $dc $fb $c7
    ld c, $7c                                     ; $7e6d: $0e $7c
    call nz, Call_035_40b0                        ; $7e6f: $c4 $b0 $40
    inc bc                                        ; $7e72: $03
    ld hl, $01cd                                  ; $7e73: $21 $cd $01
    ld c, c                                       ; $7e76: $49
    xor d                                         ; $7e77: $aa
    ld a, b                                       ; $7e78: $78
    ld d, c                                       ; $7e79: $51
    ld a, [bc]                                    ; $7e7a: $0a
    ld b, [hl]                                    ; $7e7b: $46
    jr z, @+$0f                                   ; $7e7c: $28 $0d

    or e                                          ; $7e7e: $b3
    sub [hl]                                      ; $7e7f: $96
    ld c, $5a                                     ; $7e80: $0e $5a
    sub b                                         ; $7e82: $90
    cp a                                          ; $7e83: $bf
    ld a, e                                       ; $7e84: $7b
    xor h                                         ; $7e85: $ac
    or $9e                                        ; $7e86: $f6 $9e
    bit 7, d                                      ; $7e88: $cb $7a
    ldh a, [$92]                                  ; $7e8a: $f0 $92

Call_035_7e8c:
    ld l, d                                       ; $7e8c: $6a
    ld c, e                                       ; $7e8d: $4b
    ld h, a                                       ; $7e8e: $67
    di                                            ; $7e8f: $f3
    inc de                                        ; $7e90: $13
    ld c, e                                       ; $7e91: $4b
    reti                                          ; $7e92: $d9


    or c                                          ; $7e93: $b1
    pop de                                        ; $7e94: $d1
    cp l                                          ; $7e95: $bd
    add a                                         ; $7e96: $87
    add sp, $34                                   ; $7e97: $e8 $34
    rlca                                          ; $7e99: $07
    di                                            ; $7e9a: $f3
    add [hl]                                      ; $7e9b: $86
    ld l, c                                       ; $7e9c: $69
    add hl, de                                    ; $7e9d: $19
    add hl, hl                                    ; $7e9e: $29
    adc c                                         ; $7e9f: $89
    rst $18                                       ; $7ea0: $df
    adc $4d                                       ; $7ea1: $ce $4d
    cp $22                                        ; $7ea3: $fe $22
    ld h, e                                       ; $7ea5: $63
    jp nc, $f026                                  ; $7ea6: $d2 $26 $f0

    rst $10                                       ; $7ea9: $d7
    cp e                                          ; $7eaa: $bb
    ld h, e                                       ; $7eab: $63
    sbc h                                         ; $7eac: $9c
    ld [hl], e                                    ; $7ead: $73
    or l                                          ; $7eae: $b5
    ld [$043d], a                                 ; $7eaf: $ea $3d $04
    and c                                         ; $7eb2: $a1
    add $22                                       ; $7eb3: $c6 $22
    ld a, a                                       ; $7eb5: $7f
    sbc a                                         ; $7eb6: $9f
    jr nz, @-$42                                  ; $7eb7: $20 $bc

    ld l, c                                       ; $7eb9: $69
    ld c, $f3                                     ; $7eba: $0e $f3
    ld e, d                                       ; $7ebc: $5a
    sub b                                         ; $7ebd: $90
    cp a                                          ; $7ebe: $bf
    ld a, e                                       ; $7ebf: $7b
    xor h                                         ; $7ec0: $ac
    halt                                          ; $7ec1: $76
    ld l, c                                       ; $7ec2: $69
    sbc b                                         ; $7ec3: $98
    or l                                          ; $7ec4: $b5
    sbc h                                         ; $7ec5: $9c
    xor e                                         ; $7ec6: $ab
    dec l                                         ; $7ec7: $2d
    sbc l                                         ; $7ec8: $9d
    call $2c4f                                    ; $7ec9: $cd $4f $2c
    push bc                                       ; $7ecc: $c5
    ldh a, [$83]                                  ; $7ecd: $f0 $83
    ld [hl+], a                                   ; $7ecf: $22
    ld a, a                                       ; $7ed0: $7f
    rst $10                                       ; $7ed1: $d7
    sub [hl]                                      ; $7ed2: $96
    xor h                                         ; $7ed3: $ac
    xor d                                         ; $7ed4: $aa
    ld b, e                                       ; $7ed5: $43
    ld a, [hl+]                                   ; $7ed6: $2a
    inc h                                         ; $7ed7: $24
    sub $92                                       ; $7ed8: $d6 $92
    and $8c                                       ; $7eda: $e6 $8c
    cp [hl]                                       ; $7edc: $be
    daa                                           ; $7edd: $27
    ld a, [c]                                     ; $7ede: $f2
    add a                                         ; $7edf: $87
    cpl                                           ; $7ee0: $2f
    ld d, c                                       ; $7ee1: $51
    and c                                         ; $7ee2: $a1
    ld h, l                                       ; $7ee3: $65
    ld a, [$f676]                                 ; $7ee4: $fa $76 $f6
    ld c, e                                       ; $7ee7: $4b
    db $f4                                        ; $7ee8: $f4
    db $dd                                        ; $7ee9: $dd
    ld [$b4de], sp                                ; $7eea: $08 $de $b4
    ld c, l                                       ; $7eed: $4d
    cp $99                                        ; $7eee: $fe $99
    add h                                         ; $7ef0: $84
    add $26                                       ; $7ef1: $c6 $26
    sub e                                         ; $7ef3: $93
    nop                                           ; $7ef4: $00
    inc a                                         ; $7ef5: $3c
    ld a, l                                       ; $7ef6: $7d
    sla h                                         ; $7ef7: $cb $24
    jp hl                                         ; $7ef9: $e9


    cp e                                          ; $7efa: $bb
    ld de, $69bc                                  ; $7efb: $11 $bc $69
    ld c, $49                                     ; $7efe: $0e $49
    sub [hl]                                      ; $7f00: $96
    adc $b3                                       ; $7f01: $ce $b3
    ld h, b                                       ; $7f03: $60
    sub c                                         ; $7f04: $91
    ldh [rIF], a                                  ; $7f05: $e0 $0f
    ld a, [de]                                    ; $7f07: $1a
    ld [$ab25], sp                                ; $7f08: $08 $25 $ab
    ld c, $5f                                     ; $7f0b: $0e $5f
    db $ed                                        ; $7f0d: $ed
    or h                                          ; $7f0e: $b4
    dec e                                         ; $7f0f: $1d
    and $cc                                       ; $7f10: $e6 $cc
    inc l                                         ; $7f12: $2c
    call nc, $bf8a                                ; $7f13: $d4 $8a $bf
    sub d                                         ; $7f16: $92
    push de                                       ; $7f17: $d5
    pop de                                        ; $7f18: $d1
    pop hl                                        ; $7f19: $e1
    adc b                                         ; $7f1a: $88
    sbc $c6                                       ; $7f1b: $de $c6
    ld d, [hl]                                    ; $7f1d: $56
    add a                                         ; $7f1e: $87
    sra b                                         ; $7f1f: $cb $28
    rst $10                                       ; $7f21: $d7
    jr c, jr_035_7f92                             ; $7f22: $38 $6e

    ld a, [c]                                     ; $7f24: $f2
    and a                                         ; $7f25: $a7
    call nc, Call_000_0e69                        ; $7f26: $d4 $69 $0e
    ld c, c                                       ; $7f29: $49
    sbc $9b                                       ; $7f2a: $de $9b
    cp e                                          ; $7f2c: $bb
    pop bc                                        ; $7f2d: $c1
    rra                                           ; $7f2e: $1f
    sbc h                                         ; $7f2f: $9c
    dec de                                        ; $7f30: $1b
    db $fc                                        ; $7f31: $fc
    push af                                       ; $7f32: $f5
    ld c, [hl]                                    ; $7f33: $4e
    ld [de], a                                    ; $7f34: $12
    db $ed                                        ; $7f35: $ed
    xor d                                         ; $7f36: $aa
    ld b, l                                       ; $7f37: $45
    adc e                                         ; $7f38: $8b
    or a                                          ; $7f39: $b7
    ld c, h                                       ; $7f3a: $4c
    db $10                                        ; $7f3b: $10
    rlca                                          ; $7f3c: $07
    db $f4                                        ; $7f3d: $f4
    sbc [hl]                                      ; $7f3e: $9e
    ld hl, sp-$3c                                 ; $7f3f: $f8 $c4
    xor e                                         ; $7f41: $ab
    xor e                                         ; $7f42: $ab
    dec l                                         ; $7f43: $2d
    sbc l                                         ; $7f44: $9d
    add l                                         ; $7f45: $85
    xor d                                         ; $7f46: $aa
    inc c                                         ; $7f47: $0c
    ld b, c                                       ; $7f48: $41
    xor l                                         ; $7f49: $ad
    halt                                          ; $7f4a: $76
    dec e                                         ; $7f4b: $1d
    ld c, e                                       ; $7f4c: $4b
    ld a, h                                       ; $7f4d: $7c
    cp $8a                                        ; $7f4e: $fe $8a
    ld d, a                                       ; $7f50: $57
    rlca                                          ; $7f51: $07
    dec l                                         ; $7f52: $2d
    sbc c                                         ; $7f53: $99
    ld de, $e7bd                                  ; $7f54: $11 $bd $e7

jr_035_7f57:
    adc [hl]                                      ; $7f57: $8e
    cp d                                          ; $7f58: $ba
    nop                                           ; $7f59: $00
    inc l                                         ; $7f5a: $2c
    ld l, c                                       ; $7f5b: $69
    ld c, $c9                                     ; $7f5c: $0e $c9
    ld h, c                                       ; $7f5e: $61
    xor c                                         ; $7f5f: $a9
    ld e, d                                       ; $7f60: $5a
    ldh a, [$96]                                  ; $7f61: $f0 $96
    dec c                                         ; $7f63: $0d
    add h                                         ; $7f64: $84
    ld l, d                                       ; $7f65: $6a
    push de                                       ; $7f66: $d5
    pop bc                                        ; $7f67: $c1
    jr nc, jr_035_7f57                            ; $7f68: $30 $ed

    and c                                         ; $7f6a: $a1
    jr nz, jr_035_7f9f                            ; $7f6b: $20 $32

    res 7, c                                      ; $7f6d: $cb $b9
    ld [hl], a                                    ; $7f6f: $77
    rlca                                          ; $7f70: $07
    xor l                                         ; $7f71: $ad
    halt                                          ; $7f72: $76
    xor h                                         ; $7f73: $ac
    or a                                          ; $7f74: $b7
    scf                                           ; $7f75: $37
    ld [$6f58], a                                 ; $7f76: $ea $58 $6f
    ld b, a                                       ; $7f79: $47
    xor b                                         ; $7f7a: $a8
    ld h, e                                       ; $7f7b: $63
    ret nz                                        ; $7f7c: $c0

    or h                                          ; $7f7d: $b4
    and a                                         ; $7f7e: $a7
    ld a, [de]                                    ; $7f7f: $1a
    ret z                                         ; $7f80: $c8

    ret nc                                        ; $7f81: $d0

    ld a, e                                       ; $7f82: $7b
    ld e, b                                       ; $7f83: $58
    ld e, e                                       ; $7f84: $5b
    jp z, $aa3a                                   ; $7f85: $ca $3a $aa

    ld b, e                                       ; $7f88: $43
    adc d                                         ; $7f89: $8a
    or c                                          ; $7f8a: $b1
    ld a, [$0ddc]                                 ; $7f8b: $fa $dc $0d
    cp $a0                                        ; $7f8e: $fe $a0
    rst $30                                       ; $7f90: $f7
    rst $38                                       ; $7f91: $ff

jr_035_7f92:
    ld h, h                                       ; $7f92: $64
    add $1c                                       ; $7f93: $c6 $1c
    inc hl                                        ; $7f95: $23
    inc bc                                        ; $7f96: $03
    xor d                                         ; $7f97: $aa
    ld b, e                                       ; $7f98: $43
    ld a, d                                       ; $7f99: $7a
    or a                                          ; $7f9a: $b7
    ld l, b                                       ; $7f9b: $68
    scf                                           ; $7f9c: $37
    ld hl, sp+$2b                                 ; $7f9d: $f8 $2b

jr_035_7f9f:
    ld a, [c]                                     ; $7f9f: $f2
    ld [hl], a                                    ; $7fa0: $77
    ld l, l                                       ; $7fa1: $6d
    ccf                                           ; $7fa2: $3f
    and l                                         ; $7fa3: $a5
    adc [hl]                                      ; $7fa4: $8e
    ld [hl], l                                    ; $7fa5: $75
    add hl, bc                                    ; $7fa6: $09
    dec bc                                        ; $7fa7: $0b
    ld b, h                                       ; $7fa8: $44
    sub [hl]                                      ; $7fa9: $96
    halt                                          ; $7faa: $76
    ld [hl], h                                    ; $7fab: $74
    cp b                                          ; $7fac: $b8
    rst $30                                       ; $7fad: $f7
    ld b, h                                       ; $7fae: $44
    ld [hl], c                                    ; $7faf: $71
    adc l                                         ; $7fb0: $8d
    dec a                                         ; $7fb1: $3d
    ld [bc], a                                    ; $7fb2: $02

Call_035_7fb3:
    ld [$1f58], a                                 ; $7fb3: $ea $58 $1f
    dec a                                         ; $7fb6: $3d
    pop hl                                        ; $7fb7: $e1
    dec hl                                        ; $7fb8: $2b
    sub $a2                                       ; $7fb9: $d6 $a2
    sub l                                         ; $7fbb: $95
    add hl, hl                                    ; $7fbc: $29
    sbc l                                         ; $7fbd: $9d
    or c                                          ; $7fbe: $b1
    ret                                           ; $7fbf: $c9


    ld d, [hl]                                    ; $7fc0: $56
    ldh [$ce], a                                  ; $7fc1: $e0 $ce
    cp $f9                                        ; $7fc3: $fe $f9
    add e                                         ; $7fc5: $83
    xor d                                         ; $7fc6: $aa
    push de                                       ; $7fc7: $d5
    ld e, l                                       ; $7fc8: $5d
    dec h                                         ; $7fc9: $25
    dec a                                         ; $7fca: $3d
    ld [bc], a                                    ; $7fcb: $02
    ld a, d                                       ; $7fcc: $7a
    jp nz, $ac57                                  ; $7fcd: $c2 $57 $ac

    dec b                                         ; $7fd0: $05
    ld hl, $f591                                  ; $7fd1: $21 $91 $f5
    and [hl]                                      ; $7fd4: $a6
    add hl, sp                                    ; $7fd5: $39
    inc hl                                        ; $7fd6: $23
    inc bc                                        ; $7fd7: $03
    ld [$1f58], a                                 ; $7fd8: $ea $58 $1f
    cp l                                          ; $7fdb: $bd
    ld a, a                                       ; $7fdc: $7f
    sbc h                                         ; $7fdd: $9c
    ld sp, $c307                                  ; $7fde: $31 $07 $c3
    ld h, e                                       ; $7fe1: $63
    rlca                                          ; $7fe2: $07
    dec l                                         ; $7fe3: $2d
    ld [$b57f], sp                                ; $7fe4: $08 $7f $b5
    scf                                           ; $7fe7: $37
    ld l, l                                       ; $7fe8: $6d
    ld [bc], a                                    ; $7fe9: $02
    ld a, a                                       ; $7fea: $7f
    ld h, l                                       ; $7feb: $65
    ld h, e                                       ; $7fec: $63
    adc e                                         ; $7fed: $8b
    adc [hl]                                      ; $7fee: $8e
    dec l                                         ; $7fef: $2d
    db $d3                                        ; $7ff0: $d3
    scf                                           ; $7ff1: $37
    or l                                          ; $7ff2: $b5
    ld a, [$a42f]                                 ; $7ff3: $fa $2f $a4
    add hl, sp                                    ; $7ff6: $39
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
