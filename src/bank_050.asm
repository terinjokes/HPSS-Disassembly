; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    ld d, b                                       ; $4000: $50
    rrca                                          ; $4001: $0f
    and l                                         ; $4002: $a5
    ld a, [$b3da]                                 ; $4003: $fa $da $b3
    ld l, c                                       ; $4006: $69
    dec h                                         ; $4007: $25
    db $d3                                        ; $4008: $d3
    xor d                                         ; $4009: $aa
    and a                                         ; $400a: $a7
    rra                                           ; $400b: $1f
    adc h                                         ; $400c: $8c
    ld a, l                                       ; $400d: $7d
    adc c                                         ; $400e: $89
    ret c                                         ; $400f: $d8

    add sp, -$27                                  ; $4010: $e8 $d9
    sub b                                         ; $4012: $90
    ld de, $5ed3                                  ; $4013: $11 $d3 $5e
    di                                            ; $4016: $f3
    ld l, e                                       ; $4017: $6b
    rst $00                                       ; $4018: $c7
    inc l                                         ; $4019: $2c
    dec [hl]                                      ; $401a: $35
    cp l                                          ; $401b: $bd
    ld a, d                                       ; $401c: $7a
    ld l, c                                       ; $401d: $69
    db $d3                                        ; $401e: $d3
    ld e, [hl]                                    ; $401f: $5e
    db $ec                                        ; $4020: $ec
    rlca                                          ; $4021: $07
    sub [hl]                                      ; $4022: $96
    ld l, $64                                     ; $4023: $2e $64
    ld a, d                                       ; $4025: $7a
    and h                                         ; $4026: $a4
    ld c, b                                       ; $4027: $48
    db $ed                                        ; $4028: $ed
    add sp, $69                                   ; $4029: $e8 $69
    dec h                                         ; $402b: $25
    ei                                            ; $402c: $fb
    sub a                                         ; $402d: $97
    call nc, $9bb2                                ; $402e: $d4 $b2 $9b
    ld e, [hl]                                    ; $4031: $5e
    ld [hl], $74                                  ; $4032: $36 $74
    or $ca                                        ; $4034: $f6 $ca
    or d                                          ; $4036: $b2
    daa                                           ; $4037: $27
    xor d                                         ; $4038: $aa
    ldh [rLCDC], a                                ; $4039: $e0 $40
    rst $10                                       ; $403b: $d7
    rst $20                                       ; $403c: $e7
    inc c                                         ; $403d: $0c
    ld l, e                                       ; $403e: $6b
    and h                                         ; $403f: $a4
    ld h, h                                       ; $4040: $64
    and l                                         ; $4041: $a5
    rst $20                                       ; $4042: $e7
    ld a, a                                       ; $4043: $7f
    ld h, d                                       ; $4044: $62
    sub $ec                                       ; $4045: $d6 $ec
    ld d, l                                       ; $4047: $55
    sub e                                         ; $4048: $93
    and e                                         ; $4049: $a3
    sub a                                         ; $404a: $97
    dec c                                         ; $404b: $0d
    sbc l                                         ; $404c: $9d
    ld d, $3f                                     ; $404d: $16 $3f
    dec sp                                        ; $404f: $3b
    ld b, h                                       ; $4050: $44
    adc a                                         ; $4051: $8f
    ld l, e                                       ; $4052: $6b
    ld a, d                                       ; $4053: $7a
    ld hl, sp-$36                                 ; $4054: $f8 $ca
    ld a, l                                       ; $4056: $7d
    ld e, d                                       ; $4057: $5a
    ret                                           ; $4058: $c9


    xor [hl]                                      ; $4059: $ae
    ld a, b                                       ; $405a: $78
    adc h                                         ; $405b: $8c
    sub h                                         ; $405c: $94
    ld c, h                                       ; $405d: $4c
    xor a                                         ; $405e: $af
    ld de, $7abd                                  ; $405f: $11 $bd $7a
    sbc d                                         ; $4062: $9a

Jump_050_4063:
    ret                                           ; $4063: $c9


    and e                                         ; $4064: $a3
    pop bc                                        ; $4065: $c1
    inc e                                         ; $4066: $1c
    ld [hl], a                                    ; $4067: $77
    ld [$ffd5], a                                 ; $4068: $ea $d5 $ff
    ld a, [hl]                                    ; $406b: $7e
    db $ed                                        ; $406c: $ed
    reti                                          ; $406d: $d9


    ld l, b                                       ; $406e: $68
    ret z                                         ; $406f: $c8

    sbc b                                         ; $4070: $98
    and l                                         ; $4071: $a5
    ld b, [hl]                                    ; $4072: $46
    ld c, d                                       ; $4073: $4a
    halt                                          ; $4074: $76
    push bc                                       ; $4075: $c5
    ld h, e                                       ; $4076: $63
    ld sp, hl                                     ; $4077: $f9
    rra                                           ; $4078: $1f
    and d                                         ; $4079: $a2
    ld l, d                                       ; $407a: $6a
    adc c                                         ; $407b: $89
    ld c, a                                       ; $407c: $4f
    dec hl                                        ; $407d: $2b
    sbc c                                         ; $407e: $99
    ld d, $ff                                     ; $407f: $16 $ff
    ld b, a                                       ; $4081: $47
    ld b, e                                       ; $4082: $43
    inc b                                         ; $4083: $04
    and b                                         ; $4084: $a0
    xor a                                         ; $4085: $af
    inc l                                         ; $4086: $2c
    db $dd                                        ; $4087: $dd
    and [hl]                                      ; $4088: $a6
    rlca                                          ; $4089: $07
    ld b, h                                       ; $408a: $44
    xor e                                         ; $408b: $ab
    cp $37                                        ; $408c: $fe $37
    sub [hl]                                      ; $408e: $96
    dec a                                         ; $408f: $3d
    or c                                          ; $4090: $b1
    pop de                                        ; $4091: $d1
    push de                                       ; $4092: $d5
    or e                                          ; $4093: $b3
    ld e, l                                       ; $4094: $5d
    and h                                         ; $4095: $a4
    ld a, d                                       ; $4096: $7a
    ld [hl], a                                    ; $4097: $77
    jr @+$14                                      ; $4098: $18 $12

    ld a, d                                       ; $409a: $7a
    ret z                                         ; $409b: $c8

    dec c                                         ; $409c: $0d
    add c                                         ; $409d: $81
    ld a, e                                       ; $409e: $7b
    jr z, jr_050_40ba                             ; $409f: $28 $19

    add hl, hl                                    ; $40a1: $29
    ret                                           ; $40a2: $c9


    inc h                                         ; $40a3: $24
    ld b, [hl]                                    ; $40a4: $46
    ld c, d                                       ; $40a5: $4a
    and [hl]                                      ; $40a6: $a6
    ld e, l                                       ; $40a7: $5d
    rst $30                                       ; $40a8: $f7
    ld e, d                                       ; $40a9: $5a
    ret z                                         ; $40aa: $c8

    ldh a, [$5f]                                  ; $40ab: $f0 $5f
    sbc [hl]                                      ; $40ad: $9e
    rst $00                                       ; $40ae: $c7

jr_050_40af:
    ei                                            ; $40af: $fb
    inc [hl]                                      ; $40b0: $34
    inc hl                                        ; $40b1: $23
    add [hl]                                      ; $40b2: $86
    ld b, d                                       ; $40b3: $42
    inc b                                         ; $40b4: $04
    ld c, a                                       ; $40b5: $4f
    rst $28                                       ; $40b6: $ef
    ld [hl-], a                                   ; $40b7: $32
    cp c                                          ; $40b8: $b9
    add hl, hl                                    ; $40b9: $29

jr_050_40ba:
    ld d, d                                       ; $40ba: $52
    cp l                                          ; $40bb: $bd
    add a                                         ; $40bc: $87
    or b                                          ; $40bd: $b0
    adc h                                         ; $40be: $8c
    xor [hl]                                      ; $40bf: $ae
    ld a, [de]                                    ; $40c0: $1a
    dec c                                         ; $40c1: $0d
    cp e                                          ; $40c2: $bb
    ld [hl], b                                    ; $40c3: $70
    ld e, a                                       ; $40c4: $5f
    cp d                                          ; $40c5: $ba

Call_050_40c6:
    ld b, e                                       ; $40c6: $43
    sbc a                                         ; $40c7: $9f
    rst $18                                       ; $40c8: $df
    rst $38                                       ; $40c9: $ff
    and a                                         ; $40ca: $a7
    add hl, de                                    ; $40cb: $19
    ld sp, $ee14                                  ; $40cc: $31 $14 $ee
    ld l, c                                       ; $40cf: $69

jr_050_40d0:
    reti                                          ; $40d0: $d9


    push hl                                       ; $40d1: $e5
    ld b, e                                       ; $40d2: $43
    ld b, l                                       ; $40d3: $45
    rst $08                                       ; $40d4: $cf
    ld h, $67                                     ; $40d5: $26 $67
    ld a, e                                       ; $40d7: $7b
    jr z, jr_050_40af                             ; $40d8: $28 $d5

    rst $10                                       ; $40da: $d7
    ld a, $42                                     ; $40db: $3e $42
    ld h, b                                       ; $40dd: $60
    ld a, b                                       ; $40de: $78
    ld h, [hl]                                    ; $40df: $66
    sbc l                                         ; $40e0: $9d
    adc l                                         ; $40e1: $8d
    ld e, c                                       ; $40e2: $59
    dec hl                                        ; $40e3: $2b
    pop af                                        ; $40e4: $f1
    ld [$fb95], a                                 ; $40e5: $ea $95 $fb
    ld l, h                                       ; $40e8: $6c
    adc h                                         ; $40e9: $8c
    db $e3                                        ; $40ea: $e3
    ld a, e                                       ; $40eb: $7b
    jp hl                                         ; $40ec: $e9


    ld a, a                                       ; $40ed: $7f
    sub a                                         ; $40ee: $97
    ld a, c                                       ; $40ef: $79
    adc b                                         ; $40f0: $88
    nop                                           ; $40f1: $00
    rrca                                          ; $40f2: $0f
    push de                                       ; $40f3: $d5
    or e                                          ; $40f4: $b3
    ret                                           ; $40f5: $c9


    or h                                          ; $40f6: $b4
    db $eb                                        ; $40f7: $eb
    ld e, [hl]                                    ; $40f8: $5e
    cp [hl]                                       ; $40f9: $be
    or a                                          ; $40fa: $b7
    ld b, [hl]                                    ; $40fb: $46
    ld e, b                                       ; $40fc: $58
    add hl, hl                                    ; $40fd: $29
    ld a, [c]                                     ; $40fe: $f2
    xor a                                         ; $40ff: $af
    xor b                                         ; $4100: $a8
    ld [$721d], a                                 ; $4101: $ea $1d $72
    or [hl]                                       ; $4104: $b6
    add a                                         ; $4105: $87
    ld [$3d66], a                                 ; $4106: $ea $66 $3d
    ld b, d                                       ; $4109: $42
    jr nz, jr_050_40d0                            ; $410a: $20 $c4

    ld h, e                                       ; $410c: $63
    add a                                         ; $410d: $87
    ld b, b                                       ; $410e: $40
    inc b                                         ; $410f: $04
    ld c, a                                       ; $4110: $4f
    ld [$6c4b], sp                                ; $4111: $08 $4b $6c
    call $f306                                    ; $4114: $cd $06 $f3
    ld l, h                                       ; $4117: $6c
    sub [hl]                                      ; $4118: $96
    ld h, a                                       ; $4119: $67
    cp a                                          ; $411a: $bf
    add a                                         ; $411b: $87
    sub d                                         ; $411c: $92
    ld de, $6943                                  ; $411d: $11 $43 $69
    db $f4                                        ; $4120: $f4
    jp z, $dc7d                                   ; $4121: $ca $7d $dc

    xor c                                         ; $4124: $a9
    di                                            ; $4125: $f3
    adc c                                         ; $4126: $89
    call nc, $af0e                                ; $4127: $d4 $0e $af
    ld h, c                                       ; $412a: $61
    jr nc, jr_050_415f                            ; $412b: $30 $32

    ld b, e                                       ; $412d: $43
    ld h, a                                       ; $412e: $67
    sub e                                         ; $412f: $93
    ld e, l                                       ; $4130: $5d
    pop af                                        ; $4131: $f1
    sbc b                                         ; $4132: $98
    halt                                          ; $4133: $76
    db $dd                                        ; $4134: $dd
    xor e                                         ; $4135: $ab
    ld b, a                                       ; $4136: $47
    set 0, a                                      ; $4137: $cb $c7
    ei                                            ; $4139: $fb
    or h                                          ; $413a: $b4
    sub d                                         ; $413b: $92
    ld h, l                                       ; $413c: $65
    xor c                                         ; $413d: $a9
    halt                                          ; $413e: $76
    or $08                                        ; $413f: $f6 $08
    rst $20                                       ; $4141: $e7
    ld b, a                                       ; $4142: $47
    rst $28                                       ; $4143: $ef
    add sp, -$27                                  ; $4144: $e8 $d9
    ld h, h                                       ; $4146: $64
    call z, Call_050_6ce4                         ; $4147: $cc $e4 $6c
    rrca                                          ; $414a: $0f
    push de                                       ; $414b: $d5
    call $db82                                    ; $414c: $cd $82 $db
    db $d3                                        ; $414f: $d3
    dec sp                                        ; $4150: $3b
    xor l                                         ; $4151: $ad
    ld a, d                                       ; $4152: $7a
    ld a, [$5e21]                                 ; $4153: $fa $21 $5e
    ld a, $9c                                     ; $4156: $3e $9c
    sbc a                                         ; $4158: $9f
    cp l                                          ; $4159: $bd
    ld a, [bc]                                    ; $415a: $0a
    ld [hl+], a                                   ; $415b: $22
    adc a                                         ; $415c: $8f
    ld c, e                                       ; $415d: $4b
    dec l                                         ; $415e: $2d

jr_050_415f:
    ld a, a                                       ; $415f: $7f
    cp [hl]                                       ; $4160: $be
    and a                                         ; $4161: $a7
    sub a                                         ; $4162: $97
    sbc l                                         ; $4163: $9d
    and c                                         ; $4164: $a1
    dec hl                                        ; $4165: $2b
    rst $30                                       ; $4166: $f7
    dec a                                         ; $4167: $3d
    sub h                                         ; $4168: $94
    ld [$a76b], a                                 ; $4169: $ea $6b $a7
    ld d, l                                       ; $416c: $55
    ld c, a                                       ; $416d: $4f
    ld a, b                                       ; $416e: $78
    rst $18                                       ; $416f: $df
    dec d                                         ; $4170: $15
    rst $28                                       ; $4171: $ef
    ret z                                         ; $4172: $c8

    cp c                                          ; $4173: $b9
    call nz, $ee57                                ; $4174: $c4 $57 $ee
    ld c, e                                       ; $4177: $4b
    ld b, a                                       ; $4178: $47
    rra                                           ; $4179: $1f
    xor $35                                       ; $417a: $ee $35
    xor $d4                                       ; $417c: $ee $d4
    inc sp                                        ; $417e: $33
    add hl, sp                                    ; $417f: $39
    rst $08                                       ; $4180: $cf
    ret nc                                        ; $4181: $d0

    ld h, l                                       ; $4182: $65
    rrca                                          ; $4183: $0f
    add hl, bc                                    ; $4184: $09
    add c                                         ; $4185: $81
    ld [$cb4f], sp                                ; $4186: $08 $4f $cb
    ld c, [hl]                                    ; $4189: $4e
    sbc l                                         ; $418a: $9d
    ld a, d                                       ; $418b: $7a
    ld [hl], $99                                  ; $418c: $36 $99
    halt                                          ; $418e: $76
    db $f4                                        ; $418f: $f4
    reti                                          ; $4190: $d9


    ld b, b                                       ; $4191: $40
    rst $10                                       ; $4192: $d7
    rst $20                                       ; $4193: $e7
    inc c                                         ; $4194: $0c
    db $eb                                        ; $4195: $eb
    ld de, $8f02                                  ; $4196: $11 $02 $8f
    ld c, e                                       ; $4199: $4b
    dec l                                         ; $419a: $2d
    rla                                           ; $419b: $17
    db $fd                                        ; $419c: $fd
    push de                                       ; $419d: $d5
    dec bc                                        ; $419e: $0b
    ld e, c                                       ; $419f: $59
    ld a, [hl-]                                   ; $41a0: $3a
    ld hl, $bee1                                  ; $41a1: $21 $e1 $be
    db $f4                                        ; $41a4: $f4
    scf                                           ; $41a5: $37
    sub h                                         ; $41a6: $94
    sbc d                                         ; $41a7: $9a
    ld e, $ef                                     ; $41a8: $1e $ef
    dec bc                                        ; $41aa: $0b
    ld e, c                                       ; $41ab: $59
    db $fc                                        ; $41ac: $fc
    ret nc                                        ; $41ad: $d0

    ld h, a                                       ; $41ae: $67
    ld d, d                                       ; $41af: $52
    jp c, $92b4                                   ; $41b0: $da $b4 $92

    inc a                                         ; $41b3: $3c
    db $fd                                        ; $41b4: $fd
    db $10                                        ; $41b5: $10
    adc c                                         ; $41b6: $89
    ld e, [hl]                                    ; $41b7: $5e
    ld [hl], $74                                  ; $41b8: $36 $74
    ld e, c                                       ; $41ba: $59
    xor d                                         ; $41bb: $aa
    ld a, l                                       ; $41bc: $7d
    inc e                                         ; $41bd: $1c
    rst $18                                       ; $41be: $df
    db $e3                                        ; $41bf: $e3
    ld c, c                                       ; $41c0: $49
    ld c, l                                       ; $41c1: $4d
    dec bc                                        ; $41c2: $0b
    ld a, [bc]                                    ; $41c3: $0a
    ld de, $af18                                  ; $41c4: $11 $18 $af
    ld a, e                                       ; $41c7: $7b
    sbc l                                         ; $41c8: $9d
    db $ed                                        ; $41c9: $ed
    ld hl, $a32c                                  ; $41ca: $21 $2c $a3
    xor e                                         ; $41cd: $ab
    halt                                          ; $41ce: $76
    db $f4                                        ; $41cf: $f4
    db $fc                                        ; $41d0: $fc
    cp $9f                                        ; $41d1: $fe $9f
    ld l, $52                                     ; $41d3: $2e $52
    db $ec                                        ; $41d5: $ec
    ld de, $460f                                  ; $41d6: $11 $0f $46
    and [hl]                                      ; $41d9: $a6
    ld d, l                                       ; $41da: $55
    cpl                                           ; $41db: $2f
    call c, $c347                                 ; $41dc: $dc $47 $c3
    jp c, Jump_000_25f8                           ; $41df: $da $f8 $25

    ld [hl], $c6                                  ; $41e2: $36 $c6
    dec [hl]                                      ; $41e4: $35
    cpl                                           ; $41e5: $2f
    inc bc                                        ; $41e6: $03
    and d                                         ; $41e7: $a2
    ld d, l                                       ; $41e8: $55
    rst $38                                       ; $41e9: $ff
    dec de                                        ; $41ea: $1b
    ld [hl], b                                    ; $41eb: $70
    and b                                         ; $41ec: $a0
    adc [hl]                                      ; $41ed: $8e
    inc a                                         ; $41ee: $3c
    dec de                                        ; $41ef: $1b
    ld a, [hl]                                    ; $41f0: $7e
    ld [hl], $0c                                  ; $41f1: $36 $0c
    ld b, [hl]                                    ; $41f3: $46
    jr nz, jr_050_41f8                            ; $41f4: $20 $02

    rst $08                                       ; $41f6: $cf
    add e                                         ; $41f7: $83

jr_050_41f8:
    inc a                                         ; $41f8: $3c
    ld a, [hl-]                                   ; $41f9: $3a
    add [hl]                                      ; $41fa: $86
    pop bc                                        ; $41fb: $c1
    ret z                                         ; $41fc: $c8

    reti                                          ; $41fd: $d9


    di                                            ; $41fe: $f3
    ld [$3fcf], sp                                ; $41ff: $08 $cf $3f
    ld l, $35                                     ; $4202: $2e $35
    xor a                                         ; $4204: $af
    sbc [hl]                                      ; $4205: $9e
    ld a, [hl-]                                   ; $4206: $3a
    ld e, d                                       ; $4207: $5a

jr_050_4208:
    ld l, d                                       ; $4208: $6a
    ld b, c                                       ; $4209: $41
    adc l                                         ; $420a: $8d
    rst $08                                       ; $420b: $cf
    halt                                          ; $420c: $76
    sub c                                         ; $420d: $91
    sub b                                         ; $420e: $90
    or e                                          ; $420f: $b3
    pop de                                        ; $4210: $d1
    sub b                                         ; $4211: $90
    reti                                          ; $4212: $d9


    ldh a, [$a5]                                  ; $4213: $f0 $a5
    rst $38                                       ; $4215: $ff
    db $ed                                        ; $4216: $ed
    ld e, l                                       ; $4217: $5d
    pop af                                        ; $4218: $f1
    ret c                                         ; $4219: $d8

    ccf                                           ; $421a: $3f
    call c, $cee1                                 ; $421b: $dc $e1 $ce
    jp Jump_000_3e97                              ; $421e: $c3 $97 $3e


    or d                                          ; $4221: $b2
    rst $10                                       ; $4222: $d7
    ld [hl], h                                    ; $4223: $74
    db $d3                                        ; $4224: $d3
    or c                                          ; $4225: $b1
    ld [hl], d                                    ; $4226: $72
    ld e, a                                       ; $4227: $5f
    ld h, $37                                     ; $4228: $26 $37
    ld b, l                                       ; $422a: $45
    ld l, d                                       ; $422b: $6a
    daa                                           ; $422c: $27
    dec a                                         ; $422d: $3d
    ld a, d                                       ; $422e: $7a
    sbc d                                         ; $422f: $9a
    ld de, $4743                                  ; $4230: $11 $43 $47
    jp Jump_050_784e                              ; $4233: $c3 $4e $78


    push de                                       ; $4236: $d5
    or l                                          ; $4237: $b5
    jp nc, $af47                                  ; $4238: $d2 $47 $af

    call nc, $43f4                                ; $423b: $d4 $f4 $43
    inc h                                         ; $423e: $24
    ld a, d                                       ; $423f: $7a
    reti                                          ; $4240: $d9


    ret nc                                        ; $4241: $d0

    ld de, $6943                                  ; $4242: $11 $43 $69
    db $f4                                        ; $4245: $f4
    db $e4                                        ; $4246: $e4
    ret z                                         ; $4247: $c8

    ld e, [hl]                                    ; $4248: $5e
    db $d3                                        ; $4249: $d3

jr_050_424a:
    inc hl                                        ; $424a: $23
    ld b, l                                       ; $424b: $45
    ld a, [bc]                                    ; $424c: $0a
    ld c, $64                                     ; $424d: $0e $64
    ret                                           ; $424f: $c9


    db $e4                                        ; $4250: $e4
    adc [hl]                                      ; $4251: $8e
    db $e3                                        ; $4252: $e3
    sub a                                         ; $4253: $97
    ldh [$f8], a                                  ; $4254: $e0 $f8
    jr nc, jr_050_4208                            ; $4256: $30 $b0

    sub h                                         ; $4258: $94
    or d                                          ; $4259: $b2
    ld e, l                                       ; $425a: $5d
    inc h                                         ; $425b: $24
    ld h, h                                       ; $425c: $64
    ld [hl], a                                    ; $425d: $77
    ld [hl], $7c                                  ; $425e: $36 $7c
    jp c, Jump_050_6549                           ; $4260: $da $49 $65

    xor a                                         ; $4263: $af
    cp c                                          ; $4264: $b9
    ld l, c                                       ; $4265: $69
    add hl, bc                                    ; $4266: $09
    sbc a                                         ; $4267: $9f
    ld a, [hl]                                    ; $4268: $7e
    db $ed                                        ; $4269: $ed
    add sp, -$4b                                  ; $426a: $e8 $b5
    ld d, d                                       ; $426c: $52
    xor $c3                                       ; $426d: $ee $c3
    ld sp, hl                                     ; $426f: $f9
    db $fd                                        ; $4270: $fd
    ld d, e                                       ; $4271: $53
    db $db                                        ; $4272: $db
    ld d, d                                       ; $4273: $52
    adc a                                         ; $4274: $8f
    halt                                          ; $4275: $76
    ld e, $23                                     ; $4276: $1e $23
    dec h                                         ; $4278: $25

Jump_050_4279:
    and e                                         ; $4279: $a3
    daa                                           ; $427a: $27
    xor a                                         ; $427b: $af
    ld b, l                                       ; $427c: $45
    rst $08                                       ; $427d: $cf
    ld e, $3d                                     ; $427e: $1e $3d
    sub e                                         ; $4280: $93
    jp nc, $9dc6                                  ; $4281: $d2 $c6 $9d

    cp d                                          ; $4284: $ba
    sub [hl]                                      ; $4285: $96
    ld [hl], $ed                                  ; $4286: $36 $ed
    db $d3                                        ; $4288: $d3
    adc h                                         ; $4289: $8c
    jr @+$3c                                      ; $428a: $18 $3a

    ld a, [de]                                    ; $428c: $1a
    or [hl]                                       ; $428d: $b6
    ld h, h                                       ; $428e: $64
    ld [hl], $7c                                  ; $428f: $36 $7c
    sbc h                                         ; $4291: $9c
    ld l, c                                       ; $4292: $69
    rst $20                                       ; $4293: $e7
    xor d                                         ; $4294: $aa
    ld c, e                                       ; $4295: $4b
    ld l, h                                       ; $4296: $6c
    db $ec                                        ; $4297: $ec
    add sp, -$2f                                  ; $4298: $e8 $d1
    ld d, e                                       ; $429a: $53
    inc de                                        ; $429b: $13
    add a                                         ; $429c: $87
    ld a, e                                       ; $429d: $7b
    ld b, d                                       ; $429e: $42
    ld l, [hl]                                    ; $429f: $6e
    adc d                                         ; $42a0: $8a
    call nc, Call_050_55e8                        ; $42a1: $d4 $e8 $55
    dec bc                                        ; $42a4: $0b
    rst $30                                       ; $42a5: $f7
    ld h, l                                       ; $42a6: $65
    cp l                                          ; $42a7: $bd
    ld a, d                                       ; $42a8: $7a
    sbc c                                         ; $42a9: $99
    rra                                           ; $42aa: $1f
    ld h, a                                       ; $42ab: $67
    jp c, $0d97                                   ; $42ac: $da $97 $0d

    dec e                                         ; $42af: $1d
    dec a                                         ; $42b0: $3d
    ld sp, $55ff                                  ; $42b1: $31 $ff $55
    ld c, $9f                                     ; $42b4: $0e $9f
    ld b, a                                       ; $42b6: $47
    rst $08                                       ; $42b7: $cf
    ccf                                           ; $42b8: $3f
    jr nc, jr_050_424a                            ; $42b9: $30 $8f

    or $7f                                        ; $42bb: $f6 $7f
    ld d, l                                       ; $42bd: $55
    ld c, l                                       ; $42be: $4d
    dec sp                                        ; $42bf: $3b
    ld a, [hl]                                    ; $42c0: $7e
    sub [hl]                                      ; $42c1: $96
    dec hl                                        ; $42c2: $2b
    xor d                                         ; $42c3: $aa
    ld a, [$406c]                                 ; $42c4: $fa $6c $40
    or h                                          ; $42c7: $b4
    ld [$e37f], a                                 ; $42c8: $ea $7f $e3
    ld a, c                                       ; $42cb: $79
    adc b                                         ; $42cc: $88
    nop                                           ; $42cd: $00
    ld c, a                                       ; $42ce: $4f
    rst $28                                       ; $42cf: $ef
    ld c, b                                       ; $42d0: $48
    ret                                           ; $42d1: $c9


    ld c, d                                       ; $42d2: $4a
    db $f4                                        ; $42d3: $f4
    ld b, e                                       ; $42d4: $43
    ld l, h                                       ; $42d5: $6c
    dec c                                         ; $42d6: $0d
    ld l, h                                       ; $42d7: $6c
    ld h, [hl]                                    ; $42d8: $66
    ret                                           ; $42d9: $c9


    cp a                                          ; $42da: $bf
    ld c, d                                       ; $42db: $4a
    dec bc                                        ; $42dc: $0b
    rst $08                                       ; $42dd: $cf
    or h                                          ; $42de: $b4
    call nz, $cbe3                                ; $42df: $c4 $e3 $cb
    cp b                                          ; $42e2: $b8
    ld d, e                                       ; $42e3: $53
    xor a                                         ; $42e4: $af
    call c, Call_000_35e7                         ; $42e5: $dc $e7 $35
    ld a, [de]                                    ; $42e8: $1a
    halt                                          ; $42e9: $76
    sbc d                                         ; $42ea: $9a
    ld de, $e743                                  ; $42eb: $11 $43 $e7
    rst $30                                       ; $42ee: $f7
    rst $38                                       ; $42ef: $ff
    cp c                                          ; $42f0: $b9
    ld l, c                                       ; $42f1: $69
    add hl, bc                                    ; $42f2: $09
    add a                                         ; $42f3: $87
    ld a, e                                       ; $42f4: $7b
    ld e, h                                       ; $42f5: $5c
    ld l, d                                       ; $42f6: $6a
    sbc $a6                                       ; $42f7: $de $a6
    ld d, a                                       ; $42f9: $57
    xor $b3                                       ; $42fa: $ee $b3
    ld hl, $7a3b                                  ; $42fc: $21 $3b $7a
    reti                                          ; $42ff: $d9


    ld c, l                                       ; $4300: $4d
    ld c, a                                       ; $4301: $4f
    adc h                                         ; $4302: $8c
    ld e, d                                       ; $4303: $5a
    cp c                                          ; $4304: $b9
    rst $08                                       ; $4305: $cf
    adc a                                         ; $4306: $8f
    inc d                                         ; $4307: $14
    xor c                                         ; $4308: $a9
    cp c                                          ; $4309: $b9
    adc $af                                       ; $430a: $ce $af
    db $f4                                        ; $430c: $f4
    sbc c                                         ; $430d: $99
    sbc h                                         ; $430e: $9c
    add a                                         ; $430f: $87
    rst $38                                       ; $4310: $ff
    inc h                                         ; $4311: $24
    rrca                                          ; $4312: $0f
    adc h                                         ; $4313: $8c
    jp hl                                         ; $4314: $e9


    ld [hl], h                                    ; $4315: $74
    or h                                          ; $4316: $b4
    jp Jump_000_2e3d                              ; $4317: $c3 $3d $2e


    or l                                          ; $431a: $b5
    ld c, h                                       ; $431b: $4c
    ld l, [hl]                                    ; $431c: $6e
    adc d                                         ; $431d: $8a
    ld d, h                                       ; $431e: $54
    rst $08                                       ; $431f: $cf
    rst $28                                       ; $4320: $ef
    rst $38                                       ; $4321: $ff
    jp hl                                         ; $4322: $e9


    ld [hl+], a                                   ; $4323: $22
    or l                                          ; $4324: $b5
    add a                                         ; $4325: $87
    or b                                          ; $4326: $b0
    adc h                                         ; $4327: $8c
    xor [hl]                                      ; $4328: $ae
    ld a, [de]                                    ; $4329: $1a
    dec c                                         ; $432a: $0d
    cp e                                          ; $432b: $bb
    ld [hl], b                                    ; $432c: $70
    ld e, a                                       ; $432d: $5f
    sub $ab                                       ; $432e: $d6 $ab
    pop hl                                        ; $4330: $e1
    ret nz                                        ; $4331: $c0

    inc h                                         ; $4332: $24
    ld d, e                                       ; $4333: $53
    ld a, h                                       ; $4334: $7c
    ld c, a                                       ; $4335: $4f
    cp a                                          ; $4336: $bf
    inc sp                                        ; $4337: $33
    add hl, hl                                    ; $4338: $29
    ld l, l                                       ; $4339: $6d
    jp hl                                         ; $433a: $e9


    add sp, -$3d                                  ; $433b: $e8 $c3
    cp l                                          ; $433d: $bd
    ld a, d                                       ; $433e: $7a
    call c, $f7a9                                 ; $433f: $dc $a9 $f7
    ld d, b                                       ; $4342: $50
    xor d                                         ; $4343: $aa
    xor a                                         ; $4344: $af
    add l                                         ; $4345: $85
    ld [$4c60], sp                                ; $4346: $08 $60 $4c
    and a                                         ; $4349: $a7
    and e                                         ; $434a: $a3
    sbc l                                         ; $434b: $9d
    db $fd                                        ; $434c: $fd
    ld e, $4a                                     ; $434d: $1e $4a
    sub [hl]                                      ; $434f: $96
    ld l, c                                       ; $4350: $69
    jr c, @-$03                                   ; $4351: $38 $fb

    ld bc, $ed33                                  ; $4353: $01 $33 $ed
    ld a, e                                       ; $4356: $7b
    xor b                                         ; $4357: $a8
    ld l, [hl]                                    ; $4358: $6e
    sub $d9                                       ; $4359: $d6 $d9
    jr c, @+$60                                   ; $435b: $38 $5e

    ld d, h                                       ; $435d: $54
    ld c, l                                       ; $435e: $4d
    inc sp                                        ; $435f: $33
    ld h, d                                       ; $4360: $62
    jr z, @+$7d                                   ; $4361: $28 $7b

    inc b                                         ; $4363: $04
    rrca                                          ; $4364: $0f
    ld b, a                                       ; $4365: $47
    rst $28                                       ; $4366: $ef

Call_050_4367:
Jump_050_4367:
    add sp, $69                                   ; $4367: $e8 $69

Jump_050_4369:
    dec h                                         ; $4369: $25
    ld [hl], b                                    ; $436a: $70
    rst $20                                       ; $436b: $e7
    ret                                           ; $436c: $c9


    db $f4                                        ; $436d: $f4

jr_050_436e:
    ldh a, [$95]                                  ; $436e: $f0 $95
    ei                                            ; $4370: $fb
    ld l, h                                       ; $4371: $6c
    ld hl, sp-$4c                                 ; $4372: $f8 $b4
    and e                                         ; $4374: $a3
    ld b, a                                       ; $4375: $47
    inc c                                         ; $4376: $0c
    and l                                         ; $4377: $a5
    pop de                                        ; $4378: $d1
    dec hl                                        ; $4379: $2b
    rst $30                                       ; $437a: $f7
    ld l, c                                       ; $437b: $69
    add a                                         ; $437c: $87
    ret c                                         ; $437d: $d8

    sbc d                                         ; $437e: $9a
    ld d, $bf                                     ; $437f: $16 $bf
    and $d7                                       ; $4381: $e6 $d7
    add [hl]                                      ; $4383: $86
    sbc h                                         ; $4384: $9c
    dec l                                         ; $4385: $2d
    cp $8f                                        ; $4386: $fe $8f
    sbc [hl]                                      ; $4388: $9e
    sub [hl]                                      ; $4389: $96
    db $f4                                        ; $438a: $f4
    inc hl                                        ; $438b: $23
    inc b                                         ; $438c: $04
    adc a                                         ; $438d: $8f
    ld l, e                                       ; $438e: $6b
    ld a, d                                       ; $438f: $7a
    jr c, jr_050_436e                             ; $4390: $38 $dc

    db $e3                                        ; $4392: $e3
    ld a, [de]                                    ; $4393: $1a
    push hl                                       ; $4394: $e5
    or e                                          ; $4395: $b3
    rst $00                                       ; $4396: $c7
    ld e, [hl]                                    ; $4397: $5e
    ret z                                         ; $4398: $c8

    ld [hl], d                                    ; $4399: $72
    add hl, sp                                    ; $439a: $39
    xor $c5                                       ; $439b: $ee $c5
    ld h, l                                       ; $439d: $65
    ld [hl], d                                    ; $439e: $72
    ld d, e                                       ; $439f: $53
    and h                                         ; $43a0: $a4
    halt                                          ; $43a1: $76
    push af                                       ; $43a2: $f5
    ld b, e                                       ; $43a3: $43
    db $ed                                        ; $43a4: $ed
    rst $18                                       ; $43a5: $df
    rst $38                                       ; $43a6: $ff
    ld h, e                                       ; $43a7: $63
    ld h, b                                       ; $43a8: $60
    ld c, h                                       ; $43a9: $4c
    and a                                         ; $43aa: $a7
    and e                                         ; $43ab: $a3
    dec e                                         ; $43ac: $1d
    ld [hl+], a                                   ; $43ad: $22
    ld c, a                                       ; $43ae: $4f
    rst $28                                       ; $43af: $ef
    cp b                                          ; $43b0: $b8
    sbc e                                         ; $43b1: $9b
    ld [hl+], a                                   ; $43b2: $22
    dec bc                                        ; $43b3: $0b
    rst $30                                       ; $43b4: $f7
    and l                                         ; $43b5: $a5
    dec sp                                        ; $43b6: $3b
    db $f4                                        ; $43b7: $f4

Jump_050_43b8:
    ld [hl], c                                    ; $43b8: $71
    call $80cb                                    ; $43b9: $cd $cb $80
    ld l, b                                       ; $43bc: $68
    push de                                       ; $43bd: $d5
    rst $38                                       ; $43be: $ff
    add $30                                       ; $43bf: $c6 $30
    ld b, a                                       ; $43c1: $47
    push hl                                       ; $43c2: $e5
    rra                                           ; $43c3: $1f
    inc l                                         ; $43c4: $2c
    cp b                                          ; $43c5: $b8
    add a                                         ; $43c6: $87
    sub d                                         ; $43c7: $92
    ld l, c                                       ; $43c8: $69
    push de                                       ; $43c9: $d5
    inc de                                        ; $43ca: $13
    ld e, [hl]                                    ; $43cb: $5e

jr_050_43cc:
    ld [hl], l                                    ; $43cc: $75
    ld c, l                                       ; $43cd: $4d
    ccf                                           ; $43ce: $3f
    ld b, h                                       ; $43cf: $44
    and d                                         ; $43d0: $a2
    sub a                                         ; $43d1: $97
    dec c                                         ; $43d2: $0d

jr_050_43d3:
    dec e                                         ; $43d3: $1d
    add hl, hl                                    ; $43d4: $29
    sbc c                                         ; $43d5: $99
    halt                                          ; $43d6: $76
    ld d, b                                       ; $43d7: $50
    xor a                                         ; $43d8: $af
    add c                                         ; $43d9: $81
    ld sp, $8e9d                                  ; $43da: $31 $9d $8e
    or $c9                                        ; $43dd: $f6 $c9
    sub c                                         ; $43df: $91
    cp l                                          ; $43e0: $bd
    or $4f                                        ; $43e1: $f6 $4f
    ld l, l                                       ; $43e3: $6d
    ld c, e                                       ; $43e4: $4b
    ld c, l                                       ; $43e5: $4d
    cp a                                          ; $43e6: $bf
    halt                                          ; $43e7: $76
    db $f4                                        ; $43e8: $f4
    ld e, d                                       ; $43e9: $5a
    add hl, hl                                    ; $43ea: $29
    ld [hl], a                                    ; $43eb: $77
    adc b                                         ; $43ec: $88
    nop                                           ; $43ed: $00
    ld h, b                                       ; $43ee: $60
    ld c, c                                       ; $43ef: $49
    jr nc, jr_050_43d3                            ; $43f0: $30 $e1

    sbc [hl]                                      ; $43f2: $9e
    sbc $e5                                       ; $43f3: $de $e5
    ret z                                         ; $43f5: $c8

    or e                                          ; $43f6: $b3
    inc a                                         ; $43f7: $3c
    ld b, h                                       ; $43f8: $44
    ret nz                                        ; $43f9: $c0

    ld l, [hl]                                    ; $43fa: $6e
    adc d                                         ; $43fb: $8a
    call z, $f326                                 ; $43fc: $cc $26 $f3
    ld d, d                                       ; $43ff: $52
    jp Jump_050_69f9                              ; $4400: $c3 $f9 $69


    dec h                                         ; $4403: $25
    adc a                                         ; $4404: $8f
    db $10                                        ; $4405: $10
    jr nz, jr_050_43cc                            ; $4406: $20 $c4

    ld h, e                                       ; $4408: $63
    add a                                         ; $4409: $87
    ld b, b                                       ; $440a: $40
    inc b                                         ; $440b: $04
    ret nz                                        ; $440c: $c0

    ld c, [hl]                                    ; $440d: $4e
    sbc l                                         ; $440e: $9d
    ld c, a                                       ; $440f: $4f
    ld h, h                                       ; $4410: $64
    ld d, a                                       ; $4411: $57
    add l                                         ; $4412: $85
    sbc h                                         ; $4413: $9c
    db $ed                                        ; $4414: $ed
    and c                                         ; $4415: $a1
    cp d                                          ; $4416: $ba
    ld e, c                                       ; $4417: $59
    db $ec                                        ; $4418: $ec
    or a                                          ; $4419: $b7
    and a                                         ; $441a: $a7
    ld [hl], a                                    ; $441b: $77
    sub h                                         ; $441c: $94
    rst $08                                       ; $441d: $cf
    ld e, $d3                                     ; $441e: $1e $d3
    xor [hl]                                      ; $4420: $ae
    ld a, e                                       ; $4421: $7b
    ld c, l                                       ; $4422: $4d
    dec hl                                        ; $4423: $2b
    ld h, c                                       ; $4424: $61
    adc a                                         ; $4425: $8f
    nop                                           ; $4426: $00
    rst $20                                       ; $4427: $e7
    pop hl                                        ; $4428: $e1
    dec sp                                        ; $4429: $3b
    ld a, d                                       ; $442a: $7a
    jp hl                                         ; $442b: $e9


    inc hl                                        ; $442c: $23
    ei                                            ; $442d: $fb
    db $f4                                        ; $442e: $f4
    cp e                                          ; $442f: $bb
    ld a, h                                       ; $4430: $7c
    cp b                                          ; $4431: $b8
    ld b, a                                       ; $4432: $47
    rst $28                                       ; $4433: $ef
    ld a, [hl+]                                   ; $4434: $2a
    ld e, [hl]                                    ; $4435: $5e
    inc d                                         ; $4436: $14
    ld b, h                                       ; $4437: $44
    adc a                                         ; $4438: $8f
    ld c, e                                       ; $4439: $4b
    call Call_000_2959                            ; $443a: $cd $59 $29
    ld [de], a                                    ; $443d: $12
    dec a                                         ; $443e: $3d
    adc $b4                                       ; $443f: $ce $b4
    ld [hl], e                                    ; $4441: $73
    push de                                       ; $4442: $d5
    dec h                                         ; $4443: $25
    ld [hl], $56                                  ; $4444: $36 $56
    xor $63                                       ; $4446: $ee $63
    sub [hl]                                      ; $4448: $96
    ld e, d                                       ; $4449: $5a
    ld h, $c9                                     ; $444a: $26 $c9
    rst $38                                       ; $444c: $ff
    ld sp, $efc5                                  ; $444d: $31 $c5 $ef
    ld l, $fb                                     ; $4450: $2e $fb
    pop af                                        ; $4452: $f1
    ld a, a                                       ; $4453: $7f
    ld hl, sp-$48                                 ; $4454: $f8 $b8
    ld d, e                                       ; $4456: $53
    rst $08                                       ; $4457: $cf
    ld e, [hl]                                    ; $4458: $5e
    ld [hl], l                                    ; $4459: $75
    or [hl]                                       ; $445a: $b6
    add a                                         ; $445b: $87
    ld l, b                                       ; $445c: $68
    ld a, d                                       ; $445d: $7a
    adc l                                         ; $445e: $8d
    inc b                                         ; $445f: $04
    ld b, h                                       ; $4460: $44
    rst $20                                       ; $4461: $e7
    ret                                           ; $4462: $c9


    or h                                          ; $4463: $b4
    ld [$d5e9], a                                 ; $4464: $ea $e9 $d5
    rst $10                                       ; $4467: $d7
    sub a                                         ; $4468: $97
    sbc c                                         ; $4469: $99
    add hl, bc                                    ; $446a: $09
    add c                                         ; $446b: $81
    inc bc                                        ; $446c: $03
    sbc e                                         ; $446d: $9b
    jp nc, $2cc6                                  ; $446e: $d2 $c6 $2c

    dec [hl]                                      ; $4471: $35
    ld a, [c]                                     ; $4472: $f2
    xor e                                         ; $4473: $ab
    xor e                                         ; $4474: $ab
    ld h, a                                       ; $4475: $67
    jp Jump_000_2ff7                              ; $4476: $c3 $f7 $2f


    xor c                                         ; $4479: $a9
    and l                                         ; $447a: $a5
    cp e                                          ; $447b: $bb
    sub [hl]                                      ; $447c: $96
    dec c                                         ; $447d: $0d
    sbc l                                         ; $447e: $9d
    ld c, l                                       ; $447f: $4d
    jr nz, jr_050_4484                            ; $4480: $20 $02

    rst $20                                       ; $4482: $e7
    db $fc                                        ; $4483: $fc

jr_050_4484:
    adc [hl]                                      ; $4484: $8e
    sbc [hl]                                      ; $4485: $9e
    dec c                                         ; $4486: $0d
    ld e, a                                       ; $4487: $5f
    jp hl                                         ; $4488: $e9


    adc d                                         ; $4489: $8a
    ld l, c                                       ; $448a: $69
    jp c, $0fd9                                   ; $448b: $da $d9 $0f

    and h                                         ; $448e: $a4
    and c                                         ; $448f: $a1
    sub e                                         ; $4490: $93
    db $e4                                        ; $4491: $e4
    ld l, h                                       ; $4492: $6c
    rrca                                          ; $4493: $0f
    pop de                                        ; $4494: $d1
    db $f4                                        ; $4495: $f4
    ld a, [de]                                    ; $4496: $1a
    add hl, bc                                    ; $4497: $09
    adc b                                         ; $4498: $88
    nop                                           ; $4499: $00
    rst $20                                       ; $449a: $e7
    pop hl                                        ; $449b: $e1
    dec sp                                        ; $449c: $3b
    ld a, d                                       ; $449d: $7a
    or [hl]                                       ; $449e: $b6
    ld d, h                                       ; $449f: $54
    ld a, $db                                     ; $44a0: $3e $db
    ld b, e                                       ; $44a2: $43
    xor c                                         ; $44a3: $a9
    cp [hl]                                       ; $44a4: $be
    ld d, $22                                     ; $44a5: $16 $22
    rrca                                          ; $44a7: $0f
    dec h                                         ; $44a8: $25
    db $d3                                        ; $44a9: $d3
    xor d                                         ; $44aa: $aa
    and a                                         ; $44ab: $a7
    adc h                                         ; $44ac: $8c
    ei                                            ; $44ad: $fb
    inc c                                         ; $44ae: $0c
    dec e                                         ; $44af: $1d
    dec l                                         ; $44b0: $2d
    rra                                           ; $44b1: $1f
    ld [hl], a                                    ; $44b2: $77
    ld [$e475], a                                 ; $44b3: $ea $75 $e4
    ld [de], a                                    ; $44b6: $12
    cp b                                          ; $44b7: $b8
    ld h, a                                       ; $44b8: $67
    rst $00                                       ; $44b9: $c7
    xor h                                         ; $44ba: $ac
    pop hl                                        ; $44bb: $e1
    sub l                                         ; $44bc: $95
    ld [hl+], a                                   ; $44bd: $22
    ld h, l                                       ; $44be: $65

Call_050_44bf:
    ld h, e                                       ; $44bf: $63
    ld [de], a                                    ; $44c0: $12
    dec a                                         ; $44c1: $3d
    xor l                                         ; $44c2: $ad
    inc h                                         ; $44c3: $24
    ld c, a                                       ; $44c4: $4f
    ld [$d8ff], a                                 ; $44c5: $ea $ff $d8
    push hl                                       ; $44c8: $e5
    ld [$69ff], a                                 ; $44c9: $ea $ff $69
    dec h                                         ; $44cc: $25
    inc hl                                        ; $44cd: $23
    add a                                         ; $44ce: $87
    ld c, b                                       ; $44cf: $48
    db $f4                                        ; $44d0: $f4
    ld [hl], d                                    ; $44d1: $72
    jr nc, jr_050_44eb                            ; $44d2: $30 $17

    sub d                                         ; $44d4: $92
    adc e                                         ; $44d5: $8b
    ld b, d                                       ; $44d6: $42
    inc b                                         ; $44d7: $04
    rrca                                          ; $44d8: $0f
    dec h                                         ; $44d9: $25
    dec sp                                        ; $44da: $3b
    inc a                                         ; $44db: $3c
    ld a, d                                       ; $44dc: $7a
    ld h, d                                       ; $44dd: $62
    call nc, $fea4                                ; $44de: $d4 $a4 $fe
    rrca                                          ; $44e1: $0f
    add hl, de                                    ; $44e2: $19
    ld [hl], a                                    ; $44e3: $77
    ld [$10ec], a                                 ; $44e4: $ea $ec $10
    ld bc, $8f80                                  ; $44e7: $01 $80 $8f
    db $ec                                        ; $44ea: $ec

jr_050_44eb:
    dec hl                                        ; $44eb: $2b
    rst $30                                       ; $44ec: $f7
    jp hl                                         ; $44ed: $e9


    ld [hl], a                                    ; $44ee: $77
    ld a, l                                       ; $44ef: $7d
    ld [$fce1], a                                 ; $44f0: $ea $e1 $fc
    ld c, h                                       ; $44f3: $4c
    adc $33                                       ; $44f4: $ce $33
    ld [hl], h                                    ; $44f6: $74
    ld a, [$265d]                                 ; $44f7: $fa $5d $26
    dec [hl]                                      ; $44fa: $35
    db $ed                                        ; $44fb: $ed
    adc d                                         ; $44fc: $8a
    call nc, $fefc                                ; $44fd: $d4 $fc $fe
    ccf                                           ; $4500: $3f
    scf                                           ; $4501: $37
    jr c, jr_050_4522                             ; $4502: $38 $1e

    or d                                          ; $4504: $b2
    jp nc, $a6e7                                  ; $4505: $d2 $e7 $a6

    dec h                                         ; $4508: $25
    ld a, h                                       ; $4509: $7c
    ld [hl], a                                    ; $450a: $77
    ld a, [hl]                                    ; $450b: $7e
    dec l                                         ; $450c: $2d
    ld b, h                                       ; $450d: $44
    add b                                         ; $450e: $80
    sbc b                                         ; $450f: $98
    and a                                         ; $4510: $a7
    or e                                          ; $4511: $b3
    dec d                                         ; $4512: $15
    di                                            ; $4513: $f3
    ld [hl], h                                    ; $4514: $74
    ld [hl], $30                                  ; $4515: $36 $30
    and [hl]                                      ; $4517: $a6
    db $d3                                        ; $4518: $d3
    pop de                                        ; $4519: $d1
    adc $7e                                       ; $451a: $ce $7e
    adc a                                         ; $451c: $8f
    ld l, e                                       ; $451d: $6b
    sbc c                                         ; $451e: $99
    call nc, $dbea                                ; $451f: $d4 $ea $db

jr_050_4522:
    cp [hl]                                       ; $4522: $be

Call_050_4523:
    ld l, d                                       ; $4523: $6a
    ld [$289f], a                                 ; $4524: $ea $9f $28
    xor l                                         ; $4527: $ad
    reti                                          ; $4528: $d9


    xor e                                         ; $4529: $ab
    ret c                                         ; $452a: $d8

Call_050_452b:
    inc hl                                        ; $452b: $23
    ld c, a                                       ; $452c: $4f
    cp h                                          ; $452d: $bc
    adc e                                         ; $452e: $8b
    db $e3                                        ; $452f: $e3
    adc b                                         ; $4530: $88
    and c                                         ; $4531: $a1
    inc [hl]                                      ; $4532: $34
    call nz, Call_050_5f46                        ; $4533: $c4 $46 $5f
    ld d, c                                       ; $4536: $51
    ld h, a                                       ; $4537: $67
    inc sp                                        ; $4538: $33
    add hl, hl                                    ; $4539: $29
    ld l, l                                       ; $453a: $6d
    adc $4c                                       ; $453b: $ce $4c
    sub h                                         ; $453d: $94
    add hl, de                                    ; $453e: $19
    ld l, [hl]                                    ; $453f: $6e
    ld c, $51                                     ; $4540: $0e $51
    ld a, c                                       ; $4542: $79
    and l                                         ; $4543: $a5
    db $db                                        ; $4544: $db
    ld l, $35                                     ; $4545: $2e $35
    xor $d4                                       ; $4547: $ee $d4
    ld a, e                                       ; $4549: $7b
    ld a, [c]                                     ; $454a: $f2
    ld e, c                                       ; $454b: $59
    xor [hl]                                      ; $454c: $ae
    ld b, l                                       ; $454d: $45
    ld e, a                                       ; $454e: $5f
    add hl, sp                                    ; $454f: $39
    dec de                                        ; $4550: $1b
    ld [hl], a                                    ; $4551: $77
    ld [$fb95], a                                 ; $4552: $ea $95 $fb
    ld l, h                                       ; $4555: $6c
    ld [hl-], a                                   ; $4556: $32
    cp h                                          ; $4557: $bc
    dec c                                         ; $4558: $0d
    dec c                                         ; $4559: $0d
    adc c                                         ; $455a: $89
    xor [hl]                                      ; $455b: $ae
    sbc [hl]                                      ; $455c: $9e
    and c                                         ; $455d: $a1
    and h                                         ; $455e: $a4
    xor a                                         ; $455f: $af
    xor b                                         ; $4560: $a8
    pop de                                        ; $4561: $d1
    db $eb                                        ; $4562: $eb
    cp [hl]                                       ; $4563: $be
    dec sp                                        ; $4564: $3b
    add hl, hl                                    ; $4565: $29
    rst $30                                       ; $4566: $f7
    db $10                                        ; $4567: $10
    or $08                                        ; $4568: $f6 $08
    ld h, b                                       ; $456a: $60
    xor $b8                                       ; $456b: $ee $b8
    ld d, e                                       ; $456d: $53
    ld h, a                                       ; $456e: $67
    rst $20                                       ; $456f: $e7

jr_050_4570:
    ld a, e                                       ; $4570: $7b
    ld d, a                                       ; $4571: $57

Call_050_4572:
    inc a                                         ; $4572: $3c
    adc $86                                       ; $4573: $ce $86
    or a                                          ; $4575: $b7
    pop hl                                        ; $4576: $e1
    ld [hl+], a                                   ; $4577: $22
    ld h, a                                       ; $4578: $67
    db $d3                                        ; $4579: $d3
    ld [bc], a                                    ; $457a: $02
    rst $30                                       ; $457b: $f7
    ld d, b                                       ; $457c: $50
    db $dd                                        ; $457d: $dd
    xor h                                         ; $457e: $ac
    add c                                         ; $457f: $81

jr_050_4580:
    inc sp                                        ; $4580: $33
    xor $d1                                       ; $4581: $ee $d1
    dec sp                                        ; $4583: $3b
    ld a, d                                       ; $4584: $7a
    jr c, jr_050_45c6                             ; $4585: $38 $3f

    db $fd                                        ; $4587: $fd
    ld d, b                                       ; $4588: $50
    db $d3                                        ; $4589: $d3
    xor [hl]                                      ; $458a: $ae
    rst $08                                       ; $458b: $cf
    and h                                         ; $458c: $a4
    or h                                          ; $458d: $b4
    ld l, c                                       ; $458e: $69
    dec h                                         ; $458f: $25
    db $d3                                        ; $4590: $d3
    xor d                                         ; $4591: $aa
    rla                                           ; $4592: $17
    ld [hl-], a                                   ; $4593: $32
    db $db                                        ; $4594: $db
    ld b, l                                       ; $4595: $45
    add d                                         ; $4596: $82
    dec a                                         ; $4597: $3d
    ld [bc], a                                    ; $4598: $02
    ld c, a                                       ; $4599: $4f
    rst $28                                       ; $459a: $ef
    daa                                           ; $459b: $27
    pop hl                                        ; $459c: $e1
    set 3, [hl]                                   ; $459d: $cb $de
    adc c                                         ; $459f: $89
    jr c, jr_050_4580                             ; $45a0: $38 $de

    push hl                                       ; $45a2: $e5
    db $ec                                        ; $45a3: $ec
    rst $30                                       ; $45a4: $f7
    cp b                                          ; $45a5: $b8
    call nc, $a932                                ; $45a6: $d4 $32 $a9
    ld a, c                                       ; $45a9: $79
    db $fd                                        ; $45aa: $fd
    ld a, [de]                                    ; $45ab: $1a
    dec c                                         ; $45ac: $0d
    dec sp                                        ; $45ad: $3b
    cp h                                          ; $45ae: $bc
    dec c                                         ; $45af: $0d
    rla                                           ; $45b0: $17
    add hl, sp                                    ; $45b1: $39
    sbc e                                         ; $45b2: $9b
    sbc $13                                       ; $45b3: $de $13
    add hl, hl                                    ; $45b5: $29
    inc a                                         ; $45b6: $3c
    ld h, [hl]                                    ; $45b7: $66
    add sp, $6c                                   ; $45b8: $e8 $6c
    ld hl, sp-$4c                                 ; $45ba: $f8 $b4
    and e                                         ; $45bc: $a3
    reti                                          ; $45bd: $d9


    inc hl                                        ; $45be: $23
    jr jr_050_4570                                ; $45bf: $18 $af

    ld a, e                                       ; $45c1: $7b
    sbc l                                         ; $45c2: $9d
    call $bd1e                                    ; $45c3: $cd $1e $bd

jr_050_45c6:
    and e                                         ; $45c6: $a3
    ld h, a                                       ; $45c7: $67
    add e                                         ; $45c8: $83
    dec a                                         ; $45c9: $3d
    ld [bc], a                                    ; $45ca: $02
    ld c, a                                       ; $45cb: $4f
    rst $28                                       ; $45cc: $ef
    adc [hl]                                      ; $45cd: $8e
    sbc [hl]                                      ; $45ce: $9e
    halt                                          ; $45cf: $76
    db $f4                                        ; $45d0: $f4
    inc h                                         ; $45d1: $24
    ld a, [hl-]                                   ; $45d2: $3a
    ret c                                         ; $45d3: $d8

    inc hl                                        ; $45d4: $23
    jr jr_050_4602                                ; $45d5: $18 $2b

    ld b, l                                       ; $45d7: $45
    ld h, [hl]                                    ; $45d8: $66
    ld d, d                                       ; $45d9: $52
    jp c, $d1be                                   ; $45da: $da $be $d1

    ld d, a                                       ; $45dd: $57
    xor $b3                                       ; $45de: $ee $b3
    pop hl                                        ; $45e0: $e1
    dec sp                                        ; $45e1: $3b
    ld a, d                                       ; $45e2: $7a
    daa                                           ; $45e3: $27
    dec a                                         ; $45e4: $3d
    ld a, [de]                                    ; $45e5: $1a
    ld [hl+], a                                   ; $45e6: $22
    rst $20                                       ; $45e7: $e7
    pop hl                                        ; $45e8: $e1
    dec sp                                        ; $45e9: $3b
    ld a, d                                       ; $45ea: $7a
    ld d, a                                       ; $45eb: $57
    inc a                                         ; $45ec: $3c
    halt                                          ; $45ed: $76
    jp nc, Jump_050_77a3                          ; $45ee: $d2 $a3 $77

    ld [$d3dc], sp                                ; $45f1: $08 $dc $d3
    dec sp                                        ; $45f4: $3b
    jp z, $8f67                                   ; $45f5: $ca $67 $8f

    ld [hl], c                                    ; $45f8: $71
    and [hl]                                      ; $45f9: $a6
    sbc l                                         ; $45fa: $9d
    xor e                                         ; $45fb: $ab
    ld l, $b1                                     ; $45fc: $2e $b1
    ld sp, $ffbf                                  ; $45fe: $31 $bf $ff
    and a                                         ; $4601: $a7

jr_050_4602:
    adc e                                         ; $4602: $8b
    call nc, $fefc                                ; $4603: $d4 $fc $fe
    ccf                                           ; $4606: $3f
    ldh [$cd], a                                  ; $4607: $e0 $cd
    ld [c], a                                     ; $4609: $e2
    cp b                                          ; $460a: $b8
    dec hl                                        ; $460b: $2b
    sub $34                                       ; $460c: $d6 $34
    ld b, h                                       ; $460e: $44
    rrca                                          ; $460f: $0f
    pop de                                        ; $4610: $d1
    db $f4                                        ; $4611: $f4
    ld a, [de]                                    ; $4612: $1a
    add hl, bc                                    ; $4613: $09
    ld [$e3e1], sp                                ; $4614: $08 $e1 $e3
    ld d, d                                       ; $4617: $52
    ld d, e                                       ; $4618: $53
    rst $38                                       ; $4619: $ff
    ld b, h                                       ; $461a: $44
    ld l, l                                       ; $461b: $6d
    adc h                                         ; $461c: $8c
    ld e, [hl]                                    ; $461d: $5e
    sbc c                                         ; $461e: $99
    ret                                           ; $461f: $c9


    inc l                                         ; $4620: $2c
    ld sp, hl                                     ; $4621: $f9
    ld d, a                                       ; $4622: $57
    ld l, c                                       ; $4623: $69
    pop hl                                        ; $4624: $e1
    sbc c                                         ; $4625: $99
    sub [hl]                                      ; $4626: $96
    ld a, b                                       ; $4627: $78
    db $fc                                        ; $4628: $fc
    dec h                                         ; $4629: $25
    jr c, jr_050_464a                             ; $462a: $38 $1e

    cp e                                          ; $462c: $bb
    ld [hl], e                                    ; $462d: $73
    db $d3                                        ; $462e: $d3
    ld [de], a                                    ; $462f: $12
    adc $1e                                       ; $4630: $ce $1e
    ld bc, $9260                                  ; $4632: $01 $60 $92
    ld [hl], c                                    ; $4635: $71
    scf                                           ; $4636: $37
    ld b, l                                       ; $4637: $45
    add $2c                                       ; $4638: $c6 $2c
    or l                                          ; $463a: $b5
    ld l, b                                       ; $463b: $68
    or $08                                        ; $463c: $f6 $08
    rst $08                                       ; $463e: $cf
    adc c                                         ; $463f: $89
    rst $38                                       ; $4640: $ff
    xor e                                         ; $4641: $ab
    ld b, d                                       ; $4642: $42
    halt                                          ; $4643: $76
    db $f4                                        ; $4644: $f4
    add d                                         ; $4645: $82
    ld [hl], c                                    ; $4646: $71
    pop de                                        ; $4647: $d1
    sub b                                         ; $4648: $90
    adc h                                         ; $4649: $8c

jr_050_464a:
    or a                                          ; $464a: $b7
    pop de                                        ; $464b: $d1
    ld b, e                                       ; $464c: $43
    halt                                          ; $464d: $76
    jp nc, $d9a3                                  ; $464e: $d2 $a3 $d9

    rst $28                                       ; $4651: $ef
    adc c                                         ; $4652: $89
    ld d, h                                       ; $4653: $54
    ei                                            ; $4654: $fb
    or h                                          ; $4655: $b4
    ld [$77e9], a                                 ; $4656: $ea $e9 $77
    reti                                          ; $4659: $d9


    ld d, b                                       ; $465a: $50
    ld e, d                                       ; $465b: $5a
    db $fd                                        ; $465c: $fd
    adc l                                         ; $465d: $8d
    adc $1e                                       ; $465e: $ce $1e
    ld bc, $eb8f                                  ; $4660: $01 $8f $eb
    ld l, h                                       ; $4663: $6c
    ld [hl], $7c                                  ; $4664: $36 $7c
    call nz, $1a50                                ; $4666: $c4 $50 $1a
    dec a                                         ; $4669: $3d
    ld [hl+], a                                   ; $466a: $22
    add l                                         ; $466b: $85
    db $e3                                        ; $466c: $e3
    cp [hl]                                       ; $466d: $be
    ld [hl], d                                    ; $466e: $72
    sbc a                                         ; $466f: $9f
    ld e, [hl]                                    ; $4670: $5e
    ld e, l                                       ; $4671: $5d
    inc de                                        ; $4672: $13
    ld e, [hl]                                    ; $4673: $5e
    add hl, de                                    ; $4674: $19
    sbc c                                         ; $4675: $99
    halt                                          ; $4676: $76
    inc [hl]                                      ; $4677: $34
    inc e                                         ; $4678: $1c
    cp b                                          ; $4679: $b8
    adc [hl]                                      ; $467a: $8e
    call nc, $d3cd                                ; $467b: $d4 $cd $d3
    set 5, [hl]                                   ; $467e: $cb $ee
    adc c                                         ; $4680: $89
    inc d                                         ; $4681: $14
    ld e, $d3                                     ; $4682: $1e $d3
    rrca                                          ; $4684: $0f
    pop af                                        ; $4685: $f1
    ld [$3ce1], a                                 ; $4686: $ea $e1 $3c
    ld b, h                                       ; $4689: $44
    rrca                                          ; $468a: $0f
    push de                                       ; $468b: $d5
    call $9b3a                                    ; $468c: $cd $3a $9b
    ld a, [hl]                                    ; $468f: $7e
    and a                                         ; $4690: $a7
    add a                                         ; $4691: $87
    rst $28                                       ; $4692: $ef
    adc d                                         ; $4693: $8a
    rst $00                                       ; $4694: $c7
    ld b, d                                       ; $4695: $42
    ld a, [c]                                     ; $4696: $f2
    inc c                                         ; $4697: $0c
    sbc l                                         ; $4698: $9d
    ld d, [hl]                                    ; $4699: $56
    ld [hl-], a                                   ; $469a: $32
    dec a                                         ; $469b: $3d
    ld a, h                                       ; $469c: $7c
    ld e, d                                       ; $469d: $5a
    jp nc, Jump_000_25a3                          ; $469e: $d2 $a3 $25

    inc hl                                        ; $46a1: $23
    add [hl]                                      ; $46a2: $86
    jp nc, Jump_050_71e8                          ; $46a3: $d2 $e8 $71

    and a                                         ; $46a6: $a7
    ld c, [hl]                                    ; $46a7: $4e
    rst $18                                       ; $46a8: $df
    ld bc, $09fb                                  ; $46a9: $01 $fb $09
    rst $00                                       ; $46ac: $c7
    or c                                          ; $46ad: $b1
    jr nz, jr_050_46b2                            ; $46ae: $20 $02

    and b                                         ; $46b0: $a0
    ld b, e                                       ; $46b1: $43

jr_050_46b2:
    ld b, [hl]                                    ; $46b2: $46
    xor a                                         ; $46b3: $af
    ei                                            ; $46b4: $fb
    adc [hl]                                      ; $46b5: $8e
    xor $e9                                       ; $46b6: $ee $e9
    ld b, a                                       ; $46b8: $47
    sub e                                         ; $46b9: $93
    add sp, -$17                                  ; $46ba: $e8 $e9
    ld b, a                                       ; $46bc: $47
    ld [hl], a                                    ; $46bd: $77
    db $ec                                        ; $46be: $ec
    sub b                                         ; $46bf: $90
    add hl, bc                                    ; $46c0: $09
    xor a                                         ; $46c1: $af
    adc h                                         ; $46c2: $8c
    db $e4                                        ; $46c3: $e4
    dec hl                                        ; $46c4: $2b
    ld [hl], b                                    ; $46c5: $70
    adc a                                         ; $46c6: $8f
    ld c, e                                       ; $46c7: $4b
    call $f4db                                    ; $46c8: $cd $db $f4
    jp z, Jump_000_367d                           ; $46cb: $ca $7d $36

    ld a, h                                       ; $46ce: $7c
    jp hl                                         ; $46cf: $e9


    ld [hl], b                                    ; $46d0: $70
    sub [hl]                                      ; $46d1: $96
    adc l                                         ; $46d2: $8d
    ld e, [hl]                                    ; $46d3: $5e
    cp c                                          ; $46d4: $b9
    cpl                                           ; $46d5: $2f
    ld h, h                                       ; $46d6: $64
    ld e, h                                       ; $46d7: $5c
    ld [hl], l                                    ; $46d8: $75
    ld c, l                                       ; $46d9: $4d
    inc sp                                        ; $46da: $33
    ld e, [hl]                                    ; $46db: $5e
    dec c                                         ; $46dc: $0d
    ld de, $f50f                                  ; $46dd: $11 $0f $f5
    ccf                                           ; $46e0: $3f
    rst $08                                       ; $46e1: $cf
    ld a, [hl]                                    ; $46e2: $7e
    ld h, b                                       ; $46e3: $60
    sbc b                                         ; $46e4: $98
    adc c                                         ; $46e5: $89
    ld b, a                                       ; $46e6: $47
    ld c, a                                       ; $46e7: $4f
    xor $4a                                       ; $46e8: $ee $4a
    ld e, a                                       ; $46ea: $5f
    ld [hl], $3f                                  ; $46eb: $36 $3f
    ld h, h                                       ; $46ed: $64
    ld d, a                                       ; $46ee: $57
    and h                                         ; $46ef: $a4
    ld h, h                                       ; $46f0: $64
    ld [hl], d                                    ; $46f1: $72
    sub a                                         ; $46f2: $97
    ld c, c                                       ; $46f3: $49
    adc l                                         ; $46f4: $8d
    daa                                           ; $46f5: $27
    dec [hl]                                      ; $46f6: $35
    dec l                                         ; $46f7: $2d
    add sp, -$52                                  ; $46f8: $e8 $ae
    ld a, [bc]                                    ; $46fa: $0a
    ld a, c                                       ; $46fb: $79
    add h                                         ; $46fc: $84
    nop                                           ; $46fd: $00
    rrca                                          ; $46fe: $0f
    and l                                         ; $46ff: $a5
    ld a, [$b3da]                                 ; $4700: $fa $da $b3
    add hl, de                                    ; $4703: $19
    ld a, [hl-]                                   ; $4704: $3a
    pop hl                                        ; $4705: $e1
    sub l                                         ; $4706: $95
    sub c                                         ; $4707: $91
    ld h, l                                       ; $4708: $65
    sub d                                         ; $4709: $92
    db $fc                                        ; $470a: $fc
    rra                                           ; $470b: $1f
    db $d3                                        ; $470c: $d3
    rst $28                                       ; $470d: $ef
    ld h, a                                       ; $470e: $67
    sub $88                                       ; $470f: $d6 $88
    and c                                         ; $4711: $a1

Jump_050_4712:
    or h                                          ; $4712: $b4
    add $9d                                       ; $4713: $c6 $9d
    ld a, [hl-]                                   ; $4715: $3a
    ld a, l                                       ; $4716: $7d
    rlca                                          ; $4717: $07
    db $ec                                        ; $4718: $ec
    daa                                           ; $4719: $27
    inc e                                         ; $471a: $1c
    rst $00                                       ; $471b: $c7
    ld a, [hl-]                                   ; $471c: $3a
    sbc e                                         ; $471d: $9b
    sub [hl]                                      ; $471e: $96
    db $f4                                        ; $471f: $f4
    ld [hl-], a                                   ; $4720: $32
    ld c, c                                       ; $4721: $49
    cp $8f                                        ; $4722: $fe $8f
    reti                                          ; $4724: $d9


    sbc b                                         ; $4725: $98
    ld a, [hl-]                                   ; $4726: $3a

jr_050_4727:
    ld [hl], l                                    ; $4727: $75
    dec a                                         ; $4728: $3d
    ld b, d                                       ; $4729: $42
    rst $20                                       ; $472a: $e7
    or c                                          ; $472b: $b1
    ld e, b                                       ; $472c: $58
    ld [hl], $74                                  ; $472d: $36 $74
    call z, $ae5a                                 ; $472f: $cc $5a $ae
    ld sp, hl                                     ; $4732: $f9
    db $fd                                        ; $4733: $fd
    ld a, a                                       ; $4734: $7f
    ld e, h                                       ; $4735: $5c
    rra                                           ; $4736: $1f
    db $f4                                        ; $4737: $f4
    ld e, a                                       ; $4738: $5f
    ld d, c                                       ; $4739: $51
    ld hl, $cb67                                  ; $473a: $21 $67 $cb
    ld a, b                                       ; $473d: $78
    db $fc                                        ; $473e: $fc
    ld e, d                                       ; $473f: $5a
    cp d                                          ; $4740: $ba
    cp d                                          ; $4741: $ba
    or $af                                        ; $4742: $f6 $af
    rst $00                                       ; $4744: $c7
    ld l, b                                       ; $4745: $68
    sub d                                         ; $4746: $92
    cpl                                           ; $4747: $2f
    add hl, de                                    ; $4748: $19
    ld [hl], a                                    ; $4749: $77
    ld [$4669], a                                 ; $474a: $ea $69 $46
    inc c                                         ; $474d: $0c
    ld e, l                                       ; $474e: $5d
    and $97                                       ; $474f: $e6 $97
    dec c                                         ; $4751: $0d
    sub l                                         ; $4752: $95
    ld [$2569], a                                 ; $4753: $ea $69 $25
    ld c, e                                       ; $4756: $4b
    daa                                           ; $4757: $27
    inc [hl]                                      ; $4758: $34
    jp Jump_050_4a81                              ; $4759: $c3 $81 $4a


    or d                                          ; $475c: $b2
    ld e, a                                       ; $475d: $5f
    push hl                                       ; $475e: $e5
    dec hl                                        ; $475f: $2b
    rst $30                                       ; $4760: $f7
    ld l, c                                       ; $4761: $69
    dec h                                         ; $4762: $25
    sla h                                         ; $4763: $cb $24
    ld sp, hl                                     ; $4765: $f9
    ccf                                           ; $4766: $3f
    ld h, [hl]                                    ; $4767: $66
    ld e, c                                       ; $4768: $59
    and h                                         ; $4769: $a4
    ld h, [hl]                                    ; $476a: $66
    ld [hl], b                                    ; $476b: $70
    ld a, h                                       ; $476c: $7c
    inc [hl]                                      ; $476d: $34
    halt                                          ; $476e: $76
    jr z, jr_050_4786                             ; $476f: $28 $15

    ld a, $66                                     ; $4771: $3e $66
    sub d                                         ; $4773: $92
    ld a, l                                       ; $4774: $7d
    ld [hl], d                                    ; $4775: $72
    db $f4                                        ; $4776: $f4
    sbc b                                         ; $4777: $98
    and l                                         ; $4778: $a5
    halt                                          ; $4779: $76
    sub d                                         ; $477a: $92
    ld c, h                                       ; $477b: $4c
    jp z, Jump_050_68c6                           ; $477c: $ca $c6 $68

    jr nc, jr_050_4798                            ; $477f: $30 $17

    xor $10                                       ; $4781: $ee $10
    ld bc, $ef4f                                  ; $4783: $01 $4f $ef

jr_050_4786:
    jr z, jr_050_4727                             ; $4786: $28 $9f

    dec a                                         ; $4788: $3d
    sub [hl]                                      ; $4789: $96
    adc [hl]                                      ; $478a: $8e
    ld a, $dc                                     ; $478b: $3e $dc
    ld l, e                                       ; $478d: $6b
    ld [hl], $7c                                  ; $478e: $36 $7c
    call c, $77a9                                 ; $4790: $dc $a9 $77
    sbc [hl]                                      ; $4793: $9e
    ret nc                                        ; $4794: $d0

jr_050_4795:
    db $f4                                        ; $4795: $f4
    rrca                                          ; $4796: $0f
    ld l, e                                       ; $4797: $6b

jr_050_4798:
    ld a, [hl-]                                   ; $4798: $3a
    and [hl]                                      ; $4799: $a6
    ld b, d                                       ; $479a: $42
    ld a, [hl+]                                   ; $479b: $2a
    dec sp                                        ; $479c: $3b
    call c, $f879                                 ; $479d: $dc $79 $f8
    db $f4                                        ; $47a0: $f4
    ld [$913d], a                                 ; $47a1: $ea $3d $91
    jp nz, $d963                                  ; $47a4: $c2 $63 $d9

    ret nc                                        ; $47a7: $d0

    ld h, l                                       ; $47a8: $65

Call_050_47a9:
    cp $db                                        ; $47a9: $fe $db
    jr jr_050_47c5                                ; $47ab: $18 $18

    db $d3                                        ; $47ad: $d3
    jp hl                                         ; $47ae: $e9


    ld l, b                                       ; $47af: $68
    sbc a                                         ; $47b0: $9f
    rst $18                                       ; $47b1: $df
    rst $38                                       ; $47b2: $ff
    rst $30                                       ; $47b3: $f7
    ld d, b                                       ; $47b4: $50
    xor d                                         ; $47b5: $aa
    xor a                                         ; $47b6: $af
    add l                                         ; $47b7: $85
    ld [$43a0], sp                                ; $47b8: $08 $a0 $43
    and [hl]                                      ; $47bb: $a6
    rst $18                                       ; $47bc: $df
    jp hl                                         ; $47bd: $e9


    pop hl                                        ; $47be: $e1
    cp e                                          ; $47bf: $bb
    ld [c], a                                     ; $47c0: $e2
    ld sp, $7abd                                  ; $47c1: $31 $bd $7a
    rst $20                                       ; $47c4: $e7

jr_050_47c5:
    add hl, bc                                    ; $47c5: $09
    ld c, l                                       ; $47c6: $4d
    rst $38                                       ; $47c7: $ff
    or b                                          ; $47c8: $b0
    and [hl]                                      ; $47c9: $a6
    inc hl                                        ; $47ca: $23
    xor a                                         ; $47cb: $af
    inc de                                        ; $47cc: $13
    cp d                                          ; $47cd: $ba
    ld a, a                                       ; $47ce: $7f
    sub l                                         ; $47cf: $95
    adc d                                         ; $47d0: $8a
    add [hl]                                      ; $47d1: $86
    ld [$fce7], sp                                ; $47d2: $08 $e7 $fc
    jr c, jr_050_4795                             ; $47d5: $38 $be

Jump_050_47d7:
    and a                                         ; $47d7: $a7
    rst $18                                       ; $47d8: $df
    db $fd                                        ; $47d9: $fd
    ldh a, [$82]                                  ; $47da: $f0 $82
    db $db                                        ; $47dc: $db
    db $d3                                        ; $47dd: $d3
    dec sp                                        ; $47de: $3b
    dec de                                        ; $47df: $1b
    cp a                                          ; $47e0: $bf
    ld a, d                                       ; $47e1: $7a
    add hl, bc                                    ; $47e2: $09
    adc [hl]                                      ; $47e3: $8e
    rst $08                                       ; $47e4: $cf
    db $e4                                        ; $47e5: $e4
    inc a                                         ; $47e6: $3c
    sub e                                         ; $47e7: $93
    jp nc, Jump_050_7de6                          ; $47e8: $d2 $e6 $7d

    ld [hl], b                                    ; $47eb: $70
    ld e, h                                       ; $47ec: $5c
    push hl                                       ; $47ed: $e5
    db $dd                                        ; $47ee: $dd
    ld bc, $166f                                  ; $47ef: $01 $6f $16
    rst $00                                       ; $47f2: $c7
    ld e, l                                       ; $47f3: $5d
    or c                                          ; $47f4: $b1
    and [hl]                                      ; $47f5: $a6
    db $dd                                        ; $47f6: $dd
    or h                                          ; $47f7: $b4
    add h                                         ; $47f8: $84
    cpl                                           ; $47f9: $2f
    add a                                         ; $47fa: $87
    ld b, b                                       ; $47fb: $40
    inc b                                         ; $47fc: $04
    ld c, a                                       ; $47fd: $4f
    jp $9367                                      ; $47fe: $c3 $67 $93


    jp hl                                         ; $4801: $e9


    push de                                       ; $4802: $d5
    dec sp                                        ; $4803: $3b
    ld c, a                                       ; $4804: $4f
    ld l, b                                       ; $4805: $68
    ld a, [$3587]                                 ; $4806: $fa $87 $35
    dec e                                         ; $4809: $1d
    dec sp                                        ; $480a: $3b
    ld a, [$0211]                                 ; $480b: $fa $11 $02
    ld h, b                                       ; $480e: $60
    add d                                         ; $480f: $82
    ld a, c                                       ; $4810: $79
    ld [hl], $66                                  ; $4811: $36 $66
    xor c                                         ; $4813: $a9
    ld l, c                                       ; $4814: $69
    push de                                       ; $4815: $d5
    cp e                                          ; $4816: $bb
    ld [c], a                                     ; $4817: $e2
    or c                                          ; $4818: $b1
    inc e                                         ; $4819: $1c
    xor $d3                                       ; $481a: $ee $d3
    adc h                                         ; $481c: $8c
    jr jr_050_4859                                ; $481d: $18 $3a

    sbc h                                         ; $481f: $9c
    sbc a                                         ; $4820: $9f
    ld d, $bf                                     ; $4821: $16 $bf
    ld h, [hl]                                    ; $4823: $66
    ld c, e                                       ; $4824: $4b
    jr nz, jr_050_4829                            ; $4825: $20 $02

    adc a                                         ; $4827: $8f
    ld c, e                                       ; $4828: $4b

jr_050_4829:
    ld c, l                                       ; $4829: $4d
    dec sp                                        ; $482a: $3b
    or l                                          ; $482b: $b5
    adc l                                         ; $482c: $8d
    sub l                                         ; $482d: $95
    ei                                            ; $482e: $fb
    or h                                          ; $482f: $b4
    sub d                                         ; $4830: $92
    ld l, c                                       ; $4831: $69
    ld h, l                                       ; $4832: $65
    ld h, e                                       ; $4833: $63
    jp hl                                         ; $4834: $e9


jr_050_4835:
    ld a, a                                       ; $4835: $7f
    push af                                       ; $4836: $f5
    db $eb                                        ; $4837: $eb
    cp e                                          ; $4838: $bb
    ld a, [$48a1]                                 ; $4839: $fa $a1 $48
    db $fd                                        ; $483c: $fd
    ld e, a                                       ; $483d: $5f
    halt                                          ; $483e: $76
    ld [hl], a                                    ; $483f: $77
    ld a, [$7e25]                                 ; $4840: $fa $25 $7e
    ld d, l                                       ; $4843: $55
    xor l                                         ; $4844: $ad
    jr c, jr_050_4835                             ; $4845: $38 $ee

    add sp, $68                                   ; $4847: $e8 $68
    adc b                                         ; $4849: $88
    nop                                           ; $484a: $00
    jr nz, jr_050_4898                            ; $484b: $20 $4b

    ld h, [hl]                                    ; $484d: $66
    sub e                                         ; $484e: $93
    push hl                                       ; $484f: $e5
    ld b, e                                       ; $4850: $43
    push de                                       ; $4851: $d5
    db $f4                                        ; $4852: $f4
    ld [$4b31], a                                 ; $4853: $ea $31 $4b
    adc l                                         ; $4856: $8d
    sub h                                         ; $4857: $94
    ld c, h                                       ; $4858: $4c

jr_050_4859:
    cp e                                          ; $4859: $bb
    xor $b5                                       ; $485a: $ee $b5
    di                                            ; $485c: $f3

jr_050_485d:
    add h                                         ; $485d: $84
    and [hl]                                      ; $485e: $a6
    ld a, a                                       ; $485f: $7f
    ld e, b                                       ; $4860: $58
    db $d3                                        ; $4861: $d3
    pop af                                        ; $4862: $f1
    ld [$e701], sp                                ; $4863: $08 $01 $e7
    pop hl                                        ; $4866: $e1
    sla h                                         ; $4867: $cb $24
    ld sp, hl                                     ; $4869: $f9
    ccf                                           ; $486a: $3f
    add $2c                                       ; $486b: $c6 $2c
    or l                                          ; $486d: $b5
    dec hl                                        ; $486e: $2b
    ld e, $cb                                     ; $486f: $1e $cb
    add a                                         ; $4871: $87
    xor d                                         ; $4872: $aa
    dec e                                         ; $4873: $1d

Call_050_4874:
    ld a, d                                       ; $4874: $7a
    ret z                                         ; $4875: $c8

    inc c                                         ; $4876: $0c
    dec e                                         ; $4877: $1d
    or e                                          ; $4878: $b3
    call nc, $9bf4                                ; $4879: $d4 $f4 $9b
    or e                                          ; $487c: $b3
    rst $00                                       ; $487d: $c7
    ld l, h                                       ; $487e: $6c
    jr c, jr_050_485d                             ; $487f: $38 $dc

    ld b, e                                       ; $4881: $43
    ret                                           ; $4882: $c9


    adc [hl]                                      ; $4883: $8e
    ld e, [hl]                                    ; $4884: $5e
    ret z                                         ; $4885: $c8

    ld [de], a                                    ; $4886: $12
    inc e                                         ; $4887: $1c
    rst $30                                       ; $4888: $f7
    ld d, d                                       ; $4889: $52
    ld hl, $25a3                                  ; $488a: $21 $a3 $25
    db $10                                        ; $488d: $10
    ld bc, $c34f                                  ; $488e: $01 $4f $c3
    daa                                           ; $4891: $27
    ld [hl], a                                    ; $4892: $77
    ld a, d                                       ; $4893: $7a
    push af                                       ; $4894: $f5
    sbc b                                         ; $4895: $98
    and l                                         ; $4896: $a5
    ld b, [hl]                                    ; $4897: $46

jr_050_4898:
    ld c, d                                       ; $4898: $4a
    and [hl]                                      ; $4899: $a6
    ld e, l                                       ; $489a: $5d
    rst $30                                       ; $489b: $f7
    jp c, Jump_050_4279                           ; $489c: $da $79 $42

    db $d3                                        ; $489f: $d3
    ccf                                           ; $48a0: $3f
    xor h                                         ; $48a1: $ac
    jp hl                                         ; $48a2: $e9


    jr c, jr_050_48c0                             ; $48a3: $38 $1b

    sbc $86                                       ; $48a5: $de $86
    adc e                                         ; $48a7: $8b
    sbc h                                         ; $48a8: $9c
    ld c, l                                       ; $48a9: $4d
    dec bc                                        ; $48aa: $0b
    ld b, h                                       ; $48ab: $44
    adc a                                         ; $48ac: $8f
    ld c, e                                       ; $48ad: $4b
    ld c, l                                       ; $48ae: $4d
    dec sp                                        ; $48af: $3b
    or l                                          ; $48b0: $b5
    adc l                                         ; $48b1: $8d
    sub l                                         ; $48b2: $95
    ei                                            ; $48b3: $fb
    or h                                          ; $48b4: $b4
    sub d                                         ; $48b5: $92
    and l                                         ; $48b6: $a5
    rst $38                                       ; $48b7: $ff
    push de                                       ; $48b8: $d5
    xor a                                         ; $48b9: $af
    rst $28                                       ; $48ba: $ef
    ld [$2287], a                                 ; $48bb: $ea $87 $22
    push af                                       ; $48be: $f5
    ld a, a                                       ; $48bf: $7f

jr_050_48c0:
    ld e, c                                       ; $48c0: $59
    cp b                                          ; $48c1: $b8
    rst $00                                       ; $48c2: $c7
    and l                                         ; $48c3: $a5
    and [hl]                                      ; $48c4: $a6
    add a                                         ; $48c5: $87
    rst $28                                       ; $48c6: $ef
    adc d                                         ; $48c7: $8a
    rst $00                                       ; $48c8: $c7
    inc c                                         ; $48c9: $0c
    sbc l                                         ; $48ca: $9d
    ld d, [hl]                                    ; $48cb: $56
    ld [hl-], a                                   ; $48cc: $32
    xor l                                         ; $48cd: $ad
    ld a, d                                       ; $48ce: $7a
    inc a                                         ; $48cf: $3c
    pop af                                        ; $48d0: $f1
    dec e                                         ; $48d1: $1d
    ld [bc], a                                    ; $48d2: $02
    ld de, $4b8f                                  ; $48d3: $11 $8f $4b
    adc l                                         ; $48d6: $8d
    ld a, [c]                                     ; $48d7: $f2
    reti                                          ; $48d8: $d9


    ld h, e                                       ; $48d9: $63
    ld a, b                                       ; $48da: $78
    sub a                                         ; $48db: $97
    rst $10                                       ; $48dc: $d7
    ld l, b                                       ; $48dd: $68
    ret c                                         ; $48de: $d8

    sbc l                                         ; $48df: $9d
    daa                                           ; $48e0: $27
    inc [hl]                                      ; $48e1: $34
    db $fd                                        ; $48e2: $fd
    jp Jump_000_0e9a                              ; $48e3: $c3 $9a $0e


    cp b                                          ; $48e6: $b8
    di                                            ; $48e7: $f3
    ldh a, [rNR33]                                ; $48e8: $f0 $1d
    cp l                                          ; $48ea: $bd
    sub b                                         ; $48eb: $90
    ret                                           ; $48ec: $c9


    ret                                           ; $48ed: $c9


    and $eb                                       ; $48ee: $e6 $eb
    ld c, c                                       ; $48f0: $49
    ld sp, hl                                     ; $48f1: $f9
    dec [hl]                                      ; $48f2: $35
    jp nz, $011e                                  ; $48f3: $c2 $1e $01

    ldh [$da], a                                  ; $48f6: $e0 $da
    ld [hl], b                                    ; $48f8: $70
    sub c                                         ; $48f9: $91
    or e                                          ; $48fa: $b3
    jp hl                                         ; $48fb: $e9


    sbc l                                         ; $48fc: $9d
    daa                                           ; $48fd: $27
    inc [hl]                                      ; $48fe: $34
    db $fd                                        ; $48ff: $fd
    jp $8e9a                                      ; $4900: $c3 $9a $8e


    dec e                                         ; $4903: $1d
    cp l                                          ; $4904: $bd
    dec sp                                        ; $4905: $3b
    ld d, b                                       ; $4906: $50
    ld b, [hl]                                    ; $4907: $46
    xor h                                         ; $4908: $ac
    ld de, $87b8                                  ; $4909: $11 $b8 $87
    sub d                                         ; $490c: $92
    ld [hl], c                                    ; $490d: $71
    scf                                           ; $490e: $37
    ld b, l                                       ; $490f: $45
    ld d, $b2                                     ; $4910: $16 $b2
    ld [hl], h                                    ; $4912: $74
    di                                            ; $4913: $f3
    ld [hl], $93                                  ; $4914: $36 $93
    ld [de], a                                    ; $4916: $12
    dec de                                        ; $4917: $1b
    inc hl                                        ; $4918: $23
    push af                                       ; $4919: $f5
    ld a, a                                       ; $491a: $7f
    db $fc                                        ; $491b: $fc
    inc e                                         ; $491c: $1c

Jump_050_491d:
    db $e3                                        ; $491d: $e3
    sbc d                                         ; $491e: $9a
    sub a                                         ; $491f: $97
    ld h, c                                       ; $4920: $61
    ld l, h                                       ; $4921: $6c
    di                                            ; $4922: $f3
    cp a                                          ; $4923: $bf
    dec [hl]                                      ; $4924: $35
    inc [hl]                                      ; $4925: $34
    db $d3                                        ; $4926: $d3
    dec hl                                        ; $4927: $2b
    scf                                           ; $4928: $37
    ld a, e                                       ; $4929: $7b
    db $f4                                        ; $492a: $f4
    dec c                                         ; $492b: $0d
    add a                                         ; $492c: $87
    ld a, e                                       ; $492d: $7b
    ld e, d                                       ; $492e: $5a
    call Call_050_7a9d                            ; $492f: $cd $9d $7a

Call_050_4932:
    ld a, [$7ffd]                                 ; $4932: $fa $fd $7f
    ld [hl], $99                                  ; $4935: $36 $99
    rst $30                                       ; $4937: $f7
    pop bc                                        ; $4938: $c1
    ld [hl], c                                    ; $4939: $71
    dec [hl]                                      ; $493a: $35
    call $a188                                    ; $493b: $cd $88 $a1
    adc a                                         ; $493e: $8f
    db $10                                        ; $493f: $10
    rst $20                                       ; $4940: $e7
    pop hl                                        ; $4941: $e1
    db $10                                        ; $4942: $10
    ld b, d                                       ; $4943: $42
    ld [hl], l                                    ; $4944: $75
    db $fc                                        ; $4945: $fc
    rra                                           ; $4946: $1f
    cp l                                          ; $4947: $bd
    di                                            ; $4948: $f3
    ret c                                         ; $4949: $d8

    db $d3                                        ; $494a: $d3
    sbc e                                         ; $494b: $9b
    inc hl                                        ; $494c: $23
    rst $28                                       ; $494d: $ef
    adc c                                         ; $494e: $89
    add a                                         ; $494f: $87
    ld b, b                                       ; $4950: $40
    inc b                                         ; $4951: $04
    rrca                                          ; $4952: $0f
    ld c, c                                       ; $4953: $49
    adc a                                         ; $4954: $8f
    inc e                                         ; $4955: $1c
    ld [hl+], a                                   ; $4956: $22
    pop de                                        ; $4957: $d1
    or e                                          ; $4958: $b3
    ret                                           ; $4959: $c9


    db $fc                                        ; $495a: $fc
    cp $3f                                        ; $495b: $fe $3f
    dec de                                        ; $495d: $1b
    jp nz, $011e                                  ; $495e: $c2 $1e $01

    rst $20                                       ; $4961: $e7
    pop hl                                        ; $4962: $e1
    bit 7, b                                      ; $4963: $cb $78
    db $fc                                        ; $4965: $fc
    ld [$515d], a                                 ; $4966: $ea $5d $51
    ld hl, $f36b                                  ; $4969: $21 $6b $f3
    ccf                                           ; $496c: $3f
    call c, $2913                                 ; $496d: $dc $13 $29
    ld [$a1e1], sp                                ; $4970: $08 $e1 $a1
    dec h                                         ; $4973: $25
    db $f4                                        ; $4974: $f4
    ld l, h                                       ; $4975: $6c
    jp nz, $88cb                                  ; $4976: $c2 $cb $88

    and c                                         ; $4979: $a1
    inc [hl]                                      ; $497a: $34
    ld a, d                                       ; $497b: $7a
    push hl                                       ; $497c: $e5
    ld a, $ee                                     ; $497d: $3e $ee
    call nc, $44f9                                ; $497f: $d4 $f9 $44
    ld l, d                                       ; $4982: $6a
    reti                                          ; $4983: $d9


    sbc c                                         ; $4984: $99
    rst $00                                       ; $4985: $c7
    xor a                                         ; $4986: $af
    dec a                                         ; $4987: $3d
    pop af                                        ; $4988: $f1
    sub b                                         ; $4989: $90
    db $10                                        ; $498a: $10
    adc b                                         ; $498b: $88
    nop                                           ; $498c: $00
    jr nz, jr_050_49d3                            ; $498d: $20 $44

    add l                                         ; $498f: $85
    adc h                                         ; $4990: $8c
    sub h                                         ; $4991: $94
    ld c, h                                       ; $4992: $4c
    ld a, b                                       ; $4993: $78
    ld h, l                                       ; $4994: $65
    inc h                                         ; $4995: $24

jr_050_4996:
    ld e, a                                       ; $4996: $5f
    ld e, c                                       ; $4997: $59
    halt                                          ; $4998: $76
    and $f1                                       ; $4999: $e6 $f1
    ld l, e                                       ; $499b: $6b
    ld c, a                                       ; $499c: $4f
    inc a                                         ; $499d: $3c
    inc h                                         ; $499e: $24
    inc b                                         ; $499f: $04
    xor $3c                                       ; $49a0: $ee $3c
    and c                                         ; $49a2: $a1
    jp hl                                         ; $49a3: $e9


    rra                                           ; $49a4: $1f
    sub $74                                       ; $49a5: $d6 $74
    adc h                                         ; $49a7: $8c
    jr jr_050_49f4                                ; $49a8: $18 $4a

    and e                                         ; $49aa: $a3
    rst $20                                       ; $49ab: $e7
    rst $30                                       ; $49ac: $f7
    rst $38                                       ; $49ad: $ff
    ld [hl], h                                    ; $49ae: $74
    sub c                                         ; $49af: $91
    jp c, $351d                                   ; $49b0: $da $1d $35

    xor l                                         ; $49b3: $ad
    adc h                                         ; $49b4: $8c
    ret nz                                        ; $49b5: $c0

    dec a                                         ; $49b6: $3d
    ld l, $b5                                     ; $49b7: $2e $b5
    and e                                         ; $49b9: $a3
    sub a                                         ; $49ba: $97
    rrca                                          ; $49bb: $0f
    ld [de], a                                    ; $49bc: $12
    dec a                                         ; $49bd: $3d

jr_050_49be:
    sbc h                                         ; $49be: $9c
    ld e, a                                       ; $49bf: $5f
    cp c                                          ; $49c0: $b9
    ld c, a                                       ; $49c1: $4f
    dec hl                                        ; $49c2: $2b
    add hl, de                                    ; $49c3: $19
    ld sp, $4694                                  ; $49c4: $31 $94 $46
    xor a                                         ; $49c7: $af
    call c, $d5a7                                 ; $49c8: $dc $a7 $d5
    jp nz, $9f7d                                  ; $49cb: $c2 $7d $9f

    rla                                           ; $49ce: $17
    push hl                                       ; $49cf: $e5
    bit 0, l                                      ; $49d0: $cb $45
    cp l                                          ; $49d2: $bd

jr_050_49d3:
    cp $68                                        ; $49d3: $fe $68
    ret c                                         ; $49d5: $d8

    reti                                          ; $49d6: $d9


    xor e                                         ; $49d7: $ab
    ld h, [hl]                                    ; $49d8: $66
    add sp, $6c                                   ; $49d9: $e8 $6c
    ld hl, sp-$4c                                 ; $49db: $f8 $b4
    and e                                         ; $49dd: $a3
    ld hl, $6002                                  ; $49de: $21 $02 $60
    jp hl                                         ; $49e1: $e9


    inc [hl]                                      ; $49e2: $34
    inc hl                                        ; $49e3: $23
    db $d3                                        ; $49e4: $d3
    jp $ee57                                      ; $49e5: $c3 $57 $ee


    dec sp                                        ; $49e8: $3b
    ld c, a                                       ; $49e9: $4f
    ld l, b                                       ; $49ea: $68
    ld a, [$3587]                                 ; $49eb: $fa $87 $35
    dec e                                         ; $49ee: $1d
    dec sp                                        ; $49ef: $3b
    ld a, d                                       ; $49f0: $7a
    ld l, c                                       ; $49f1: $69
    db $d3                                        ; $49f2: $d3
    ld e, [hl]                                    ; $49f3: $5e

jr_050_49f4:
    ld h, a                                       ; $49f4: $67
    set 7, h                                      ; $49f5: $cb $fc
    db $f4                                        ; $49f7: $f4
    ldh a, [$3d]                                  ; $49f8: $f0 $3d
    sub c                                         ; $49fa: $91
    jp nz, Jump_000_2663                          ; $49fb: $c2 $63 $26

    ld b, l                                       ; $49fe: $45
    ld [hl-], a                                   ; $49ff: $32
    ccf                                           ; $4a00: $3f
    dec de                                        ; $4a01: $1b
    ld c, $f7                                     ; $4a02: $0e $f7
    ld d, b                                       ; $4a04: $50
    ld [hl-], a                                   ; $4a05: $32
    ld h, d                                       ; $4a06: $62
    jr z, jr_050_4996                             ; $4a07: $28 $8d

    ld e, [hl]                                    ; $4a09: $5e
    cp c                                          ; $4a0a: $b9
    adc a                                         ; $4a0b: $8f
    dec sp                                        ; $4a0c: $3b
    ld [hl], l                                    ; $4a0d: $75
    ld a, $91                                     ; $4a0e: $3e $91
    sbc d                                         ; $4a10: $9a
    rst $10                                       ; $4a11: $d7
    sbc [hl]                                      ; $4a12: $9e
    ld a, b                                       ; $4a13: $78
    ld c, b                                       ; $4a14: $48
    ret z                                         ; $4a15: $c8

    xor $a4                                       ; $4a16: $ee $a4
    call c, $23d9                                 ; $4a18: $dc $d9 $23
    rst $20                                       ; $4a1b: $e7
    db $fc                                        ; $4a1c: $fc
    jr z, jr_050_49be                             ; $4a1d: $28 $9f

    dec a                                         ; $4a1f: $3d
    add $2c                                       ; $4a20: $c6 $2c
    dec [hl]                                      ; $4a22: $35
    xor $d4                                       ; $4a23: $ee $d4
    ld sp, hl                                     ; $4a25: $f9
    ld b, h                                       ; $4a26: $44
    ld l, d                                       ; $4a27: $6a
    call nz, Call_050_5a50                        ; $4a28: $c4 $50 $5a
    db $e3                                        ; $4a2b: $e3
    ld c, [hl]                                    ; $4a2c: $4e
    sbc l                                         ; $4a2d: $9d
    ld a, l                                       ; $4a2e: $7d
    ld a, [hl]                                    ; $4a2f: $7e
    rst $38                                       ; $4a30: $ff
    rst $18                                       ; $4a31: $df
    inc de                                        ; $4a32: $13
    rrca                                          ; $4a33: $0f
    add hl, bc                                    ; $4a34: $09
    add c                                         ; $4a35: $81
    ld [$c420], sp                                ; $4a36: $08 $20 $c4
    ld h, e                                       ; $4a39: $63
    adc c                                         ; $4a3a: $89
    sub a                                         ; $4a3b: $97
    adc h                                         ; $4a3c: $8c
    ld e, [hl]                                    ; $4a3d: $5e
    dec b                                         ; $4a3e: $05
    ld de, $ff40                                  ; $4a3f: $11 $40 $ff
    adc a                                         ; $4a42: $8f
    ld e, $bd                                     ; $4a43: $1e $bd
    adc d                                         ; $4a45: $8a
    dec a                                         ; $4a46: $3d
    ld [bc], a                                    ; $4a47: $02
    rst $20                                       ; $4a48: $e7
    pop hl                                        ; $4a49: $e1
    dec sp                                        ; $4a4a: $3b
    ld a, d                                       ; $4a4b: $7a
    or [hl]                                       ; $4a4c: $b6
    ld d, h                                       ; $4a4d: $54
    add [hl]                                      ; $4a4e: $86
    inc bc                                        ; $4a4f: $03
    ld a, h                                       ; $4a50: $7c
    ld h, h                                       ; $4a51: $64
    ld e, a                                       ; $4a52: $5f
    cp c                                          ; $4a53: $b9
    ld c, a                                       ; $4a54: $4f
    cp a                                          ; $4a55: $bf
    res 0, a                                      ; $4a56: $cb $87
    ld a, e                                       ; $4a58: $7b
    db $f4                                        ; $4a59: $f4
    ld [hl], b                                    ; $4a5a: $70
    ld a, [hl]                                    ; $4a5b: $7e
    ld h, $e7                                     ; $4a5c: $26 $e7
    pop de                                        ; $4a5e: $d1
    ld [de], a                                    ; $4a5f: $12
    adc a                                         ; $4a60: $8f
    cpl                                           ; $4a61: $2f
    inc sp                                        ; $4a62: $33
    add hl, hl                                    ; $4a63: $29
    dec c                                         ; $4a64: $0d
    ld b, d                                       ; $4a65: $42
    adc b                                         ; $4a66: $88
    nop                                           ; $4a67: $00
    jr @+$3d                                      ; $4a68: $18 $3b

    ld [hl], h                                    ; $4a6a: $74
    db $d3                                        ; $4a6b: $d3
    adc a                                         ; $4a6c: $8f
    or $5c                                        ; $4a6d: $f6 $5c
    rst $08                                       ; $4a6f: $cf
    ld h, $d3                                     ; $4a70: $26 $d3
    adc [hl]                                      ; $4a72: $8e
    sbc [hl]                                      ; $4a73: $9e
    ld b, h                                       ; $4a74: $44
    rst $00                                       ; $4a75: $c7
    inc hl                                        ; $4a76: $23
    ld [$c3e1], sp                                ; $4a77: $08 $e1 $c3
    xor c                                         ; $4a7a: $a9
    daa                                           ; $4a7b: $27
    rst $30                                       ; $4a7c: $f7
    ld l, h                                       ; $4a7d: $6c
    ld a, d                                       ; $4a7e: $7a
    reti                                          ; $4a7f: $d9


    xor c                                         ; $4a80: $a9

Jump_050_4a81:
    ld d, e                                       ; $4a81: $53
    ld c, a                                       ; $4a82: $4f
    xor $23                                       ; $4a83: $ee $23
    inc b                                         ; $4a85: $04
    jr nz, jr_050_4acc                            ; $4a86: $20 $44

    add l                                         ; $4a88: $85
    ld hl, sp+$15                                 ; $4a89: $f8 $15
    ld [hl], l                                    ; $4a8b: $75
    ld [hl], $30                                  ; $4a8c: $36 $30
    and c                                         ; $4a8e: $a1
    rst $18                                       ; $4a8f: $df
    rst $38                                       ; $4a90: $ff
    inc bc                                        ; $4a91: $03
    ld [hl+], a                                   ; $4a92: $22
    ld h, b                                       ; $4a93: $60
    xor $8e                                       ; $4a94: $ee $8e
    sbc $15                                       ; $4a96: $de $15
    adc a                                         ; $4a98: $8f
    pop hl                                        ; $4a99: $e1
    db $fc                                        ; $4a9a: $fc
    db $f4                                        ; $4a9b: $f4
    ld b, e                                       ; $4a9c: $43
    dec l                                         ; $4a9d: $2d
    pop af                                        ; $4a9e: $f1
    ld e, l                                       ; $4a9f: $5d
    dec d                                         ; $4aa0: $15
    ld [hl], d                                    ; $4aa1: $72
    ld [hl], $bd                                  ; $4aa2: $36 $bd
    ld e, $21                                     ; $4aa4: $1e $21
    ld h, b                                       ; $4aa6: $60
    add d                                         ; $4aa7: $82
    ld a, c                                       ; $4aa8: $79
    ld [hl], $1b                                  ; $4aa9: $36 $1b
    cp [hl]                                       ; $4aab: $be
    and e                                         ; $4aac: $a3
    and a                                         ; $4aad: $a7
    rst $18                                       ; $4aae: $df
    ld e, l                                       ; $4aaf: $5d
    pop af                                        ; $4ab0: $f1
    add b                                         ; $4ab1: $80
    dec de                                        ; $4ab2: $1b
    ld [hl], b                                    ; $4ab3: $70
    ld a, [hl]                                    ; $4ab4: $7e
    ld h, $a5                                     ; $4ab5: $26 $a5
    db $ed                                        ; $4ab7: $ed
    rra                                           ; $4ab8: $1f
    ld c, d                                       ; $4ab9: $4a
    call Call_050_755e                            ; $4aba: $cd $5e $75
    ld [hl], $30                                  ; $4abd: $36 $30
    and c                                         ; $4abf: $a1
    rst $18                                       ; $4ac0: $df
    rst $38                                       ; $4ac1: $ff
    add e                                         ; $4ac2: $83
    dec a                                         ; $4ac3: $3d
    ld [bc], a                                    ; $4ac4: $02
    ld h, b                                       ; $4ac5: $60
    xor $38                                       ; $4ac6: $ee $38
    cp [hl]                                       ; $4ac8: $be
    ld [hl], a                                    ; $4ac9: $77
    push bc                                       ; $4aca: $c5
    ld h, e                                       ; $4acb: $63

jr_050_4acc:
    adc d                                         ; $4acc: $8a
    ld e, a                                       ; $4acd: $5f
    ld [c], a                                     ; $4ace: $e2
    ld [hl], b                                    ; $4acf: $70
    ld h, b                                       ; $4ad0: $60
    xor $78                                       ; $4ad1: $ee $78
    ld [de], a                                    ; $4ad3: $12
    dec a                                         ; $4ad4: $3d
    xor [hl]                                      ; $4ad5: $ae
    or d                                          ; $4ad6: $b2
    rst $28                                       ; $4ad7: $ef
    xor d                                         ; $4ad8: $aa
    sub b                                         ; $4ad9: $90
    sbc c                                         ; $4ada: $99
    sub h                                         ; $4adb: $94
    ld [hl], $ee                                  ; $4adc: $36 $ee
    call nc, Call_050_74df                        ; $4ade: $d4 $df $74
    push af                                       ; $4ae1: $f5
    ld c, $91                                     ; $4ae2: $0e $91
    ld h, h                                       ; $4ae4: $64
    call c, Call_000_1e8f                         ; $4ae5: $dc $8f $1e
    ld l, [hl]                                    ; $4ae8: $6e
    ld c, $51                                     ; $4ae9: $0e $51
    db $10                                        ; $4aeb: $10
    ld bc, $c9e7                                  ; $4aec: $01 $e7 $c9
    cp b                                          ; $4aef: $b8
    ld d, e                                       ; $4af0: $53
    ld h, a                                       ; $4af1: $67
    rst $20                                       ; $4af2: $e7
    ld a, e                                       ; $4af3: $7b
    ld d, a                                       ; $4af4: $57
    inc a                                         ; $4af5: $3c
    adc $66                                       ; $4af6: $ce $66
    jp $1da7                                      ; $4af8: $c3 $a7 $1d


    cp l                                          ; $4afb: $bd
    and e                                         ; $4afc: $a3
    and a                                         ; $4afd: $a7
    ld e, a                                       ; $4afe: $5f
    ld [c], a                                     ; $4aff: $e2
    ld d, a                                       ; $4b00: $57
    add hl, sp                                    ; $4b01: $39
    ld b, h                                       ; $4b02: $44
    adc a                                         ; $4b03: $8f
    ld c, e                                       ; $4b04: $4b
    call $210f                                    ; $4b05: $cd $0f $21
    pop de                                        ; $4b08: $d1
    cp e                                          ; $4b09: $bb
    ld [c], a                                     ; $4b0a: $e2
    or c                                          ; $4b0b: $b1
    rst $08                                       ; $4b0c: $cf
    ld a, e                                       ; $4b0d: $7b
    dec l                                         ; $4b0e: $2d
    ld a, d                                       ; $4b0f: $7a
    ld [$35d4], a                                 ; $4b10: $ea $d4 $35
    dec de                                        ; $4b13: $1b
    ld c, $07                                     ; $4b14: $0e $07
    and $4e                                       ; $4b16: $e6 $4e
    xor e                                         ; $4b18: $ab
    sbc $3f                                       ; $4b19: $de $3f
    jp c, $af47                                   ; $4b1b: $da $47 $af

    ld e, d                                       ; $4b1e: $5a
    cp c                                          ; $4b1f: $b9
    cpl                                           ; $4b20: $2f
    rra                                           ; $4b21: $1f
    xor d                                         ; $4b22: $aa
    halt                                          ; $4b23: $76
    cp c                                          ; $4b24: $b9
    and $05                                       ; $4b25: $e6 $05
    xor $71                                       ; $4b27: $ee $71
    add hl, hl                                    ; $4b29: $29
    ld [$b321], sp                                ; $4b2a: $08 $21 $b3
    call nc, Call_000_10fc                        ; $4b2d: $d4 $fc $10
    ld [de], a                                    ; $4b30: $12
    cp l                                          ; $4b31: $bd
    db $ec                                        ; $4b32: $ec
    ld b, $c7                                     ; $4b33: $06 $c7
    ld l, e                                       ; $4b35: $6b
    pop de                                        ; $4b36: $d1
    db $ec                                        ; $4b37: $ec
    ld de, $4b8f                                  ; $4b38: $11 $8f $4b
    dec l                                         ; $4b3b: $2d
    dec e                                         ; $4b3c: $1d
    cp l                                          ; $4b3d: $bd
    call z, $0b4f                                 ; $4b3e: $cc $4f $0b
    sbc d                                         ; $4b41: $9a
    adc c                                         ; $4b42: $89
    adc a                                         ; $4b43: $8f
    or d                                          ; $4b44: $b2
    ld d, d                                       ; $4b45: $52
    inc h                                         ; $4b46: $24
    ld a, h                                       ; $4b47: $7c
    add [hl]                                      ; $4b48: $86
    adc [hl]                                      ; $4b49: $8e
    dec sp                                        ; $4b4a: $3b
    push af                                       ; $4b4b: $f5
    rst $20                                       ; $4b4c: $e7
    dec a                                         ; $4b4d: $3d
    ld a, [hl]                                    ; $4b4e: $7e
    adc [hl]                                      ; $4b4f: $8e
    ld [hl], c                                    ; $4b50: $71
    and a                                         ; $4b51: $a7
    sbc [hl]                                      ; $4b52: $9e
    dec c                                         ; $4b53: $0d
    sbc a                                         ; $4b54: $9f
    halt                                          ; $4b55: $76
    db $f4                                        ; $4b56: $f4
    reti                                          ; $4b57: $d9


    ret nz                                        ; $4b58: $c0

    add h                                         ; $4b59: $84
    ld a, [hl]                                    ; $4b5a: $7e
    rst $38                                       ; $4b5b: $ff
    rrca                                          ; $4b5c: $0f
    jr c, @+$72                                   ; $4b5d: $38 $70

    pop hl                                        ; $4b5f: $e1
    ld a, l                                       ; $4b60: $7d
    cp c                                          ; $4b61: $b9
    sbc e                                         ; $4b62: $9b
    ld c, d                                       ; $4b63: $4a
    ld a, [c]                                     ; $4b64: $f2
    jr nc, jr_050_4b81                            ; $4b65: $30 $1a

    xor a                                         ; $4b67: $af
    sbc a                                         ; $4b68: $9f
    ld h, h                                       ; $4b69: $64
    or $08                                        ; $4b6a: $f6 $08
    rst $20                                       ; $4b6c: $e7
    ret                                           ; $4b6d: $c9


    adc b                                         ; $4b6e: $88
    and c                                         ; $4b6f: $a1
    inc [hl]                                      ; $4b70: $34
    ld a, d                                       ; $4b71: $7a
    push hl                                       ; $4b72: $e5
    ld a, $ee                                     ; $4b73: $3e $ee
    call nc, $f9d9                                ; $4b75: $d4 $d9 $f9
    push hl                                       ; $4b78: $e5
    sub b                                         ; $4b79: $90
    or e                                          ; $4b7a: $b3
    add c                                         ; $4b7b: $81
    add hl, bc                                    ; $4b7c: $09
    db $fd                                        ; $4b7d: $fd
    cp $1f                                        ; $4b7e: $fe $1f
    db $10                                        ; $4b80: $10

jr_050_4b81:
    ld bc, $21e7                                  ; $4b81: $01 $e7 $21
    dec sp                                        ; $4b84: $3b
    ld a, d                                       ; $4b85: $7a
    daa                                           ; $4b86: $27
    inc e                                         ; $4b87: $1c
    rrca                                          ; $4b88: $0f
    ld h, c                                       ; $4b89: $61
    cp a                                          ; $4b8a: $bf
    daa                                           ; $4b8b: $27
    ld d, d                                       ; $4b8c: $52
    ld a, b                                       ; $4b8d: $78
    adc h                                         ; $4b8e: $8c
    ld a, [c]                                     ; $4b8f: $f2
    reti                                          ; $4b90: $d9


    ld h, e                                       ; $4b91: $63
    dec e                                         ; $4b92: $1d
    or [hl]                                       ; $4b93: $b6
    ld h, h                                       ; $4b94: $64
    ld e, d                                       ; $4b95: $5a
    ld c, l                                       ; $4b96: $4d
    pop af                                        ; $4b97: $f1
    xor $bb                                       ; $4b98: $ee $bb
    ld [bc], a                                    ; $4b9a: $02
    ld de, $4b8f                                  ; $4b9b: $11 $8f $4b
    call $f4db                                    ; $4b9e: $cd $db $f4
    xor [hl]                                      ; $4ba1: $ae
    ld a, b                                       ; $4ba2: $78
    xor h                                         ; $4ba3: $ac
    call c, Call_050_4367                         ; $4ba4: $dc $67 $43
    ld b, [hl]                                    ; $4ba7: $46
    ld c, d                                       ; $4ba8: $4a
    sub [hl]                                      ; $4ba9: $96
    ld h, e                                       ; $4baa: $63
    ld h, $67                                     ; $4bab: $26 $67
    adc b                                         ; $4bad: $88
    nop                                           ; $4bae: $00
    ret nz                                        ; $4baf: $c0

    ld c, h                                       ; $4bb0: $4c
    ei                                            ; $4bb1: $fb
    reti                                          ; $4bb2: $d9


    ld e, $aa                                     ; $4bb3: $1e $aa
    sbc e                                         ; $4bb5: $9b
    ld [hl], l                                    ; $4bb6: $75
    or [hl]                                       ; $4bb7: $b6
    db $f4                                        ; $4bb8: $f4
    xor c                                         ; $4bb9: $a9
    sbc c                                         ; $4bba: $99
    or l                                          ; $4bbb: $b5
    adc h                                         ; $4bbc: $8c
    rst $00                                       ; $4bbd: $c7
    xor a                                         ; $4bbe: $af
    pop hl                                        ; $4bbf: $e1
    db $fc                                        ; $4bc0: $fc
    cp b                                          ; $4bc1: $b8
    ld a, a                                       ; $4bc2: $7f
    ld h, d                                       ; $4bc3: $62
    ld a, d                                       ; $4bc4: $7a
    ld [$8f44], sp                                ; $4bc5: $08 $44 $8f
    ld c, e                                       ; $4bc8: $4b
    ld c, l                                       ; $4bc9: $4d
    db $fd                                        ; $4bca: $fd
    inc de                                        ; $4bcb: $13
    or l                                          ; $4bcc: $b5
    ld sp, $c21b                                  ; $4bcd: $31 $1b $c2
    ld a, [hl]                                    ; $4bd0: $7e
    ld c, a                                       ; $4bd1: $4f
    rst $28                                       ; $4bd2: $ef
    jr z, @-$5f                                   ; $4bd3: $28 $9f

    dec a                                         ; $4bd5: $3d
    and [hl]                                      ; $4bd6: $a6
    ld hl, sp-$07                                 ; $4bd7: $f8 $f9
    db $fd                                        ; $4bd9: $fd
    ccf                                           ; $4bda: $3f
    ld e, l                                       ; $4bdb: $5d
    and h                                         ; $4bdc: $a4
    ret c                                         ; $4bdd: $d8

    inc hl                                        ; $4bde: $23
    rrca                                          ; $4bdf: $0f
    dec h                                         ; $4be0: $25
    bit 0, [hl]                                   ; $4be1: $cb $46
    adc a                                         ; $4be3: $8f
    add [hl]                                      ; $4be4: $86
    inc bc                                        ; $4be5: $03
    ld l, c                                       ; $4be6: $69
    add sp, $32                                   ; $4be7: $e8 $32
    ccf                                           ; $4be9: $3f
    adc $b4                                       ; $4bea: $ce $b4
    rst $20                                       ; $4bec: $e7
    jp Jump_050_7a3d                              ; $4bed: $c3 $3d $7a


    ld a, [$8f65]                                 ; $4bf0: $fa $65 $8f
    nop                                           ; $4bf3: $00
    ldh [$da], a                                  ; $4bf4: $e0 $da
    ld [hl], b                                    ; $4bf6: $70
    sub c                                         ; $4bf7: $91
    or e                                          ; $4bf8: $b3
    jp hl                                         ; $4bf9: $e9


    add c                                         ; $4bfa: $81
    ld c, [hl]                                    ; $4bfb: $4e
    ld bc, $5237                                  ; $4bfc: $01 $37 $52
    xor d                                         ; $4bff: $aa
    cp $5f                                        ; $4c00: $fe $5f
    ld a, $54                                     ; $4c02: $3e $54
    db $f4                                        ; $4c04: $f4
    jp z, $e77d                                   ; $4c05: $ca $7d $e7

    add hl, bc                                    ; $4c08: $09
    ld c, l                                       ; $4c09: $4d
    rst $38                                       ; $4c0a: $ff
    or b                                          ; $4c0b: $b0
    and [hl]                                      ; $4c0c: $a6
    ld h, e                                       ; $4c0d: $63
    ld b, a                                       ; $4c0e: $47
    rst $28                                       ; $4c0f: $ef
    ld c, $94                                     ; $4c10: $0e $94

jr_050_4c12:
    ld de, $046b                                  ; $4c12: $11 $6b $04
    ld [hl+], a                                   ; $4c15: $22
    ld c, a                                       ; $4c16: $4f
    jp $9367                                      ; $4c17: $c3 $67 $93


    jp hl                                         ; $4c1a: $e9


    push de                                       ; $4c1b: $d5
    dec sp                                        ; $4c1c: $3b
    ld c, a                                       ; $4c1d: $4f
    ld l, b                                       ; $4c1e: $68
    ld a, [$3587]                                 ; $4c1f: $fa $87 $35
    dec e                                         ; $4c22: $1d
    dec sp                                        ; $4c23: $3b
    ld a, [$0211]                                 ; $4c24: $fa $11 $02
    adc a                                         ; $4c27: $8f
    ld c, e                                       ; $4c28: $4b
    ld c, l                                       ; $4c29: $4d
    dec sp                                        ; $4c2a: $3b
    or l                                          ; $4c2b: $b5
    adc l                                         ; $4c2c: $8d
    sub l                                         ; $4c2d: $95
    ei                                            ; $4c2e: $fb
    or h                                          ; $4c2f: $b4
    sub d                                         ; $4c30: $92
    dec e                                         ; $4c31: $1d
    cp l                                          ; $4c32: $bd
    call nz, Call_000_2663                        ; $4c33: $c4 $63 $26
    and l                                         ; $4c36: $a5
    xor l                                         ; $4c37: $ad
    inc hl                                        ; $4c38: $23
    ld b, a                                       ; $4c39: $47
    ld b, e                                       ; $4c3a: $43
    inc b                                         ; $4c3b: $04
    rrca                                          ; $4c3c: $0f
    dec h                                         ; $4c3d: $25
    inc hl                                        ; $4c3e: $23
    dec h                                         ; $4c3f: $25
    db $d3                                        ; $4c40: $d3
    xor e                                         ; $4c41: $ab
    ld l, e                                       ; $4c42: $6b
    ld [hl], d                                    ; $4c43: $72
    ld h, h                                       ; $4c44: $64
    cpl                                           ; $4c45: $2f
    sbc c                                         ; $4c46: $99
    ld e, [hl]                                    ; $4c47: $5e
    cp l                                          ; $4c48: $bd
    ld l, h                                       ; $4c49: $6c
    add sp, -$4c                                  ; $4c4a: $e8 $b4

jr_050_4c4c:
    ld hl, sp-$27                                 ; $4c4c: $f8 $d9
    ld hl, $6002                                  ; $4c4e: $21 $02 $60
    add d                                         ; $4c51: $82
    add hl, bc                                    ; $4c52: $09
    rlca                                          ; $4c53: $07
    ld a, [hl-]                                   ; $4c54: $3a
    ld h, h                                       ; $4c55: $64
    call z, $d352                                 ; $4c56: $cc $52 $d3
    xor d                                         ; $4c59: $aa
    sub a                                         ; $4c5a: $97
    jp $9a7d                                      ; $4c5b: $c3 $7d $9a


    ld de, $6743                                  ; $4c5e: $11 $43 $67
    jr c, jr_050_4c12                             ; $4c61: $38 $af

Call_050_4c63:
    pop hl                                        ; $4c63: $e1
    db $fc                                        ; $4c64: $fc
    cp b                                          ; $4c65: $b8
    and b                                         ; $4c66: $a0
    ld e, $d3                                     ; $4c67: $1e $d3
    ld a, c                                       ; $4c69: $79
    cp c                                          ; $4c6a: $b9
    and d                                         ; $4c6b: $a2
    ld b, d                                       ; $4c6c: $42
    jr nz, jr_050_4c71                            ; $4c6d: $20 $02

    adc a                                         ; $4c6f: $8f
    ld c, e                                       ; $4c70: $4b

jr_050_4c71:
    ld c, l                                       ; $4c71: $4d
    xor e                                         ; $4c72: $ab
    sbc $15                                       ; $4c73: $de $15
    adc a                                         ; $4c75: $8f
    push hl                                       ; $4c76: $e5
    ld [hl], b                                    ; $4c77: $70
    sbc a                                         ; $4c78: $9f
    ld h, [hl]                                    ; $4c79: $66
    call nz, $e1d0                                ; $4c7a: $c4 $d0 $e1
    db $fc                                        ; $4c7d: $fc
    or h                                          ; $4c7e: $b4
    ld hl, sp+$35                                 ; $4c7f: $f8 $35
    ld e, e                                       ; $4c81: $5b
    ld [bc], a                                    ; $4c82: $02
    ld de, $4b8f                                  ; $4c83: $11 $8f $4b
    dec l                                         ; $4c86: $2d
    di                                            ; $4c87: $f3
    ld l, d                                       ; $4c88: $6a
    jp nz, $232b                                  ; $4c89: $c2 $2b $23

    db $e3                                        ; $4c8c: $e3
    ld a, $4b                                     ; $4c8d: $3e $4b
    push de                                       ; $4c8f: $d5
    xor [hl]                                      ; $4c90: $ae
    ld a, [hl]                                    ; $4c91: $7e
    jr z, jr_050_4c4c                             ; $4c92: $28 $b8

    di                                            ; $4c94: $f3
    ldh a, [$91]                                  ; $4c95: $f0 $91
    sub d                                         ; $4c97: $92
    ld c, h                                       ; $4c98: $4c
    ld h, d                                       ; $4c99: $62
    ld a, d                                       ; $4c9a: $7a
    push af                                       ; $4c9b: $f5
    or h                                          ; $4c9c: $b4
    ld [de], a                                    ; $4c9d: $12
    adc b                                         ; $4c9e: $88
    nop                                           ; $4c9f: $00
    ret nz                                        ; $4ca0: $c0

jr_050_4ca1:
    sbc d                                         ; $4ca1: $9a
    ld d, a                                       ; $4ca2: $57
    dec [hl]                                      ; $4ca3: $35
    ret nc                                        ; $4ca4: $d0

    add hl, hl                                    ; $4ca5: $29
    ldh [rDMA], a                                 ; $4ca6: $e0 $46
    ld c, d                                       ; $4ca8: $4a
    push de                                       ; $4ca9: $d5
    rst $38                                       ; $4caa: $ff
    ld [hl], b                                    ; $4cab: $70
    adc a                                         ; $4cac: $8f
    ld c, e                                       ; $4cad: $4b
    dec l                                         ; $4cae: $2d
    di                                            ; $4caf: $f3
    ld l, d                                       ; $4cb0: $6a
    ld [hl], $e8                                  ; $4cb1: $36 $e8
    or d                                          ; $4cb3: $b2
    di                                            ; $4cb4: $f3
    inc sp                                        ; $4cb5: $33
    add hl, hl                                    ; $4cb6: $29
    ld l, l                                       ; $4cb7: $6d
    ld a, b                                       ; $4cb8: $78
    sub a                                         ; $4cb9: $97
    rla                                           ; $4cba: $17
    ld b, h                                       ; $4cbb: $44
    rst $20                                       ; $4cbc: $e7
    pop hl                                        ; $4cbd: $e1
    dec sp                                        ; $4cbe: $3b
    ld a, d                                       ; $4cbf: $7a
    ld d, a                                       ; $4cc0: $57
    inc a                                         ; $4cc1: $3c
    ld b, [hl]                                    ; $4cc2: $46
    xor a                                         ; $4cc3: $af
    call z, $5e93                                 ; $4cc4: $cc $93 $5e
    cp c                                          ; $4cc7: $b9
    ld c, a                                       ; $4cc8: $4f
    db $e3                                        ; $4cc9: $e3
    rst $38                                       ; $4cca: $ff
    xor a                                         ; $4ccb: $af
    ld de, $fff3                                  ; $4ccc: $11 $f3 $ff
    ld [hl], b                                    ; $4ccf: $70
    ld a, [hl]                                    ; $4cd0: $7e
    sbc d                                         ; $4cd1: $9a
    ld de, $7743                                  ; $4cd2: $11 $43 $77
    ld h, a                                       ; $4cd5: $67
    ld c, e                                       ; $4cd6: $4b
    ld b, c                                       ; $4cd7: $41
    inc b                                         ; $4cd8: $04
    rrca                                          ; $4cd9: $0f
    dec h                                         ; $4cda: $25
    inc hl                                        ; $4cdb: $23
    dec h                                         ; $4cdc: $25
    sbc c                                         ; $4cdd: $99
    call nz, $e3b4                                ; $4cde: $c4 $b4 $e3
    rst $20                                       ; $4ce1: $e7
    ld [$fce1], a                                 ; $4ce2: $ea $e1 $fc
    ld e, $4a                                     ; $4ce5: $1e $4a
    push af                                       ; $4ce7: $f5
    or l                                          ; $4ce8: $b5
    ld [hl], b                                    ; $4ce9: $70
    rst $20                                       ; $4cea: $e7
    ld sp, $cbbc                                  ; $4ceb: $31 $bc $cb
    xor e                                         ; $4cee: $ab
    ld h, a                                       ; $4cef: $67
    jr c, jr_050_4ca1                             ; $4cf0: $38 $af

    pop de                                        ; $4cf2: $d1
    or b                                          ; $4cf3: $b0
    db $d3                                        ; $4cf4: $d3
    xor e                                         ; $4cf5: $ab
    ld c, e                                       ; $4cf6: $4b
    ld l, h                                       ; $4cf7: $6c
    rla                                           ; $4cf8: $17
    ld b, h                                       ; $4cf9: $44
    adc a                                         ; $4cfa: $8f
    ld c, e                                       ; $4cfb: $4b
    ld c, l                                       ; $4cfc: $4d
    dec sp                                        ; $4cfd: $3b
    or l                                          ; $4cfe: $b5
    adc l                                         ; $4cff: $8d
    add hl, bc                                    ; $4d00: $09
    rst $28                                       ; $4d01: $ef
    inc sp                                        ; $4d02: $33
    ld [hl], h                                    ; $4d03: $74
    push hl                                       ; $4d04: $e5
    ld a, $ad                                     ; $4d05: $3e $ad
    ld h, h                                       ; $4d07: $64
    sbc c                                         ; $4d08: $99

Jump_050_4d09:
    inc h                                         ; $4d09: $24
    rst $38                                       ; $4d0a: $ff
    rst $00                                       ; $4d0b: $c7
    ld [hl], b                                    ; $4d0c: $70
    ld a, [hl]                                    ; $4d0d: $7e
    ld hl, $a623                                  ; $4d0e: $21 $23 $a6
    ld a, l                                       ; $4d11: $7d
    add hl, sp                                    ; $4d12: $39
    ld l, b                                       ; $4d13: $68
    ld h, h                                       ; $4d14: $64
    adc a                                         ; $4d15: $8f
    add [hl]                                      ; $4d16: $86
    ld [$4b8f], sp                                ; $4d17: $08 $8f $4b
    ld c, l                                       ; $4d1a: $4d
    dec sp                                        ; $4d1b: $3b
    or l                                          ; $4d1c: $b5
    adc l                                         ; $4d1d: $8d
    ld l, c                                       ; $4d1e: $69
    ld b, [hl]                                    ; $4d1f: $46
    inc c                                         ; $4d20: $0c
    dec e                                         ; $4d21: $1d
    ld c, l                                       ; $4d22: $4d
    add sp, -$51                                  ; $4d23: $e8 $af
    add hl, bc                                    ; $4d25: $09
    rst $28                                       ; $4d26: $ef
    inc sp                                        ; $4d27: $33
    ld [hl], h                                    ; $4d28: $74
    pop hl                                        ; $4d29: $e1
    ld a, $fd                                     ; $4d2a: $3e $fd
    ld [de], a                                    ; $4d2c: $12
    cp a                                          ; $4d2d: $bf
    jp z, Jump_050_4f47                           ; $4d2e: $ca $47 $4f

    ld e, $10                                     ; $4d31: $1e $10
    ld bc, $4b8f                                  ; $4d33: $01 $8f $4b
    ld c, l                                       ; $4d36: $4d
    xor e                                         ; $4d37: $ab
    sbc $15                                       ; $4d38: $de $15
    adc a                                         ; $4d3a: $8f
    push hl                                       ; $4d3b: $e5
    ld [hl], b                                    ; $4d3c: $70
    sbc a                                         ; $4d3d: $9f
    ld h, [hl]                                    ; $4d3e: $66
    call nz, $e5d0                                ; $4d3f: $c4 $d0 $e5
    sub b                                         ; $4d42: $90
    pop de                                        ; $4d43: $d1
    ld l, e                                       ; $4d44: $6b
    ld l, l                                       ; $4d45: $6d
    xor c                                         ; $4d46: $a9
    sub b                                         ; $4d47: $90
    db $dd                                        ; $4d48: $dd
    add hl, hl                                    ; $4d49: $29
    cp [hl]                                       ; $4d4a: $be
    ld b, a                                       ; $4d4b: $47
    db $f4                                        ; $4d4c: $f4
    db $e3                                        ; $4d4d: $e3
    ld a, a                                       ; $4d4e: $7f
    adc b                                         ; $4d4f: $88
    nop                                           ; $4d50: $00
    ret nz                                        ; $4d51: $c0

    ld c, [hl]                                    ; $4d52: $4e
    cp l                                          ; $4d53: $bd
    ld a, [$c7df]                                 ; $4d54: $fa $df $c7
    inc l                                         ; $4d57: $2c
    dec [hl]                                      ; $4d58: $35
    dec a                                         ; $4d59: $3d
    ld a, h                                       ; $4d5a: $7c
    sbc c                                         ; $4d5b: $99
    inc h                                         ; $4d5c: $24
    rst $38                                       ; $4d5d: $ff
    rst $00                                       ; $4d5e: $c7
    adc $31                                       ; $4d5f: $ce $31
    adc l                                         ; $4d61: $8d
    inc h                                         ; $4d62: $24
    ld [hl+], a                                   ; $4d63: $22
    dec [hl]                                      ; $4d64: $35
    cp l                                          ; $4d65: $bd
    cp d                                          ; $4d66: $ba
    halt                                          ; $4d67: $76
    sbc [hl]                                      ; $4d68: $9e
    ret nc                                        ; $4d69: $d0

    db $f4                                        ; $4d6a: $f4

jr_050_4d6b:
    rrca                                          ; $4d6b: $0f
    ld l, e                                       ; $4d6c: $6b
    ld a, [hl-]                                   ; $4d6d: $3a
    jr nz, jr_050_4d72                            ; $4d6e: $20 $02

    ld h, b                                       ; $4d70: $60
    add d                                         ; $4d71: $82

jr_050_4d72:
    add hl, bc                                    ; $4d72: $09
    rst $30                                       ; $4d73: $f7
    cp b                                          ; $4d74: $b8
    call nc, $15e8                                ; $4d75: $d4 $e8 $15
    ret                                           ; $4d78: $c9


    cp e                                          ; $4d79: $bb
    ld [c], a                                     ; $4d7a: $e2
    or c                                          ; $4d7b: $b1
    ld [hl], d                                    ; $4d7c: $72
    rra                                           ; $4d7d: $1f
    or e                                          ; $4d7e: $b3
    call nc, $af32                                ; $4d7f: $d4 $32 $af
    and [hl]                                      ; $4d82: $a6
    add hl, de                                    ; $4d83: $19
    ld sp, $fa74                                  ; $4d84: $31 $74 $fa
    or l                                          ; $4d87: $b5
    db $e3                                        ; $4d88: $e3
    ld a, [hl-]                                   ; $4d89: $3a
    ld hl, $7b26                                  ; $4d8a: $21 $26 $7b
    ld [$8f44], sp                                ; $4d8d: $08 $44 $8f
    ld c, e                                       ; $4d90: $4b
    dec l                                         ; $4d91: $2d
    di                                            ; $4d92: $f3
    ld l, d                                       ; $4d93: $6a
    sbc d                                         ; $4d94: $9a
    ld de, $4743                                  ; $4d95: $11 $43 $47
    jp Jump_050_5f2e                              ; $4d98: $c3 $2e $5f


    add hl, de                                    ; $4d9b: $19
    pop de                                        ; $4d9c: $d1
    dec hl                                        ; $4d9d: $2b
    dec sp                                        ; $4d9e: $3b
    call c, $c943                                 ; $4d9f: $dc $43 $c9
    ld c, b                                       ; $4da2: $48
    ld c, c                                       ; $4da3: $49
    ld h, $31                                     ; $4da4: $26 $31
    adc l                                         ; $4da6: $8d
    rst $38                                       ; $4da7: $ff
    ccf                                           ; $4da8: $3f
    ld a, d                                       ; $4da9: $7a
    jr c, jr_050_4d6b                             ; $4daa: $38 $bf

    ld [hl], d                                    ; $4dac: $72
    ld e, a                                       ; $4dad: $5f
    or $c3                                        ; $4dae: $f6 $c3
    ld d, $44                                     ; $4db0: $16 $44
    adc a                                         ; $4db2: $8f
    ld c, e                                       ; $4db3: $4b
    ld c, l                                       ; $4db4: $4d
    rrca                                          ; $4db5: $0f
    rst $18                                       ; $4db6: $df
    dec d                                         ; $4db7: $15
    adc a                                         ; $4db8: $8f
    add l                                         ; $4db9: $85
    db $e4                                        ; $4dba: $e4
    jp hl                                         ; $4dbb: $e9


    push de                                       ; $4dbc: $d5
    db $d3                                        ; $4dbd: $d3
    ld c, d                                       ; $4dbe: $4a
    ld a, [c]                                     ; $4dbf: $f2
    ld a, [hl-]                                   ; $4dc0: $3a
    and c                                         ; $4dc1: $a1
    ei                                            ; $4dc2: $fb
    ld d, a                                       ; $4dc3: $57
    xor c                                         ; $4dc4: $a9
    ld l, b                                       ; $4dc5: $68
    adc b                                         ; $4dc6: $88
    nop                                           ; $4dc7: $00
    ld h, b                                       ; $4dc8: $60
    add d                                         ; $4dc9: $82
    add hl, bc                                    ; $4dca: $09
    rst $30                                       ; $4dcb: $f7
    cp b                                          ; $4dcc: $b8
    call nc, $e7f2                                ; $4dcd: $d4 $f2 $e7
    ld a, e                                       ; $4dd0: $7b
    ld a, d                                       ; $4dd1: $7a
    reti                                          ; $4dd2: $d9


    add hl, de                                    ; $4dd3: $19
    cp d                                          ; $4dd4: $ba
    ld [hl], d                                    ; $4dd5: $72
    sbc a                                         ; $4dd6: $9f
    ldh a, [$ca]                                  ; $4dd7: $f0 $ca
    ret z                                         ; $4dd9: $c8

    ld c, d                                       ; $4dda: $4a
    rst $18                                       ; $4ddb: $df
    ccf                                           ; $4ddc: $3f
    cp d                                          ; $4ddd: $ba
    ld e, d                                       ; $4dde: $5a
    ld l, d                                       ; $4ddf: $6a
    ld a, d                                       ; $4de0: $7a
    jr c, @+$46                                   ; $4de1: $38 $44

    adc a                                         ; $4de3: $8f
    ld c, e                                       ; $4de4: $4b
    dec l                                         ; $4de5: $2d
    di                                            ; $4de6: $f3
    ld l, d                                       ; $4de7: $6a
    sbc d                                         ; $4de8: $9a
    ld de, $7743                                  ; $4de9: $11 $43 $77
    dec h                                         ; $4dec: $25
    db $fd                                        ; $4ded: $fd
    ld c, e                                       ; $4dee: $4b
    ld l, h                                       ; $4def: $6c
    reti                                          ; $4df0: $d9


    db $dd                                        ; $4df1: $dd
    add l                                         ; $4df2: $85
    ei                                            ; $4df3: $fb
    ld [$bd7f], a                                 ; $4df4: $ea $7f $bd
    ld a, [$e55f]                                 ; $4df7: $fa $5f $e5
    bit 0, l                                      ; $4dfa: $cb $45
    cp l                                          ; $4dfc: $bd
    cp $68                                        ; $4dfd: $fe $68
    ret c                                         ; $4dff: $d8

    add c                                         ; $4e00: $81
    ld c, [hl]                                    ; $4e01: $4e
    ld bc, $5237                                  ; $4e02: $01 $37 $52
    xor d                                         ; $4e05: $aa
    cp $87                                        ; $4e06: $fe $87
    ld a, e                                       ; $4e08: $7b
    jr nc, jr_050_4e3d                            ; $4e09: $30 $32

    ld d, d                                       ; $4e0b: $52
    sub d                                         ; $4e0c: $92
    ld c, c                                       ; $4e0d: $49
    ld c, h                                       ; $4e0e: $4c
    rrca                                          ; $4e0f: $0f
    add a                                         ; $4e10: $87
    ld [$4b8f], sp                                ; $4e11: $08 $8f $4b
    ld c, l                                       ; $4e14: $4d
    rrca                                          ; $4e15: $0f
    rra                                           ; $4e16: $1f
    sub c                                         ; $4e17: $91
    jp nz, $9f71                                  ; $4e18: $c2 $71 $9f

    ld e, [hl]                                    ; $4e1b: $5e
    dec a                                         ; $4e1c: $3d
    ld h, [hl]                                    ; $4e1d: $66
    xor c                                         ; $4e1e: $a9
    ld h, l                                       ; $4e1f: $65
    and $f1                                       ; $4e20: $e6 $f1
    push af                                       ; $4e22: $f5
    dec e                                         ; $4e23: $1d
    cp l                                          ; $4e24: $bd
    sbc e                                         ; $4e25: $9b
    cp $25                                        ; $4e26: $fe $25
    ld d, $22                                     ; $4e28: $16 $22
    rrca                                          ; $4e2a: $0f
    dec h                                         ; $4e2b: $25
    inc hl                                        ; $4e2c: $23
    dec h                                         ; $4e2d: $25
    sbc c                                         ; $4e2e: $99
    call nz, $de8e                                ; $4e2f: $c4 $8e $de
    db $dd                                        ; $4e32: $dd
    inc de                                        ; $4e33: $13
    scf                                           ; $4e34: $37
    ld e, l                                       ; $4e35: $5d
    ld a, e                                       ; $4e36: $7b
    ld d, d                                       ; $4e37: $52
    ccf                                           ; $4e38: $3f
    ld h, h                                       ; $4e39: $64
    ld h, $a5                                     ; $4e3a: $26 $a5
    db $ed                                        ; $4e3c: $ed

jr_050_4e3d:
    and h                                         ; $4e3d: $a4
    ld d, a                                       ; $4e3e: $57
    rrca                                          ; $4e3f: $0f
    rst $20                                       ; $4e40: $e7
    sub a                                         ; $4e41: $97
    xor a                                         ; $4e42: $af
    ei                                            ; $4e43: $fb
    ld c, d                                       ; $4e44: $4a
    rst $08                                       ; $4e45: $cf
    ccf                                           ; $4e46: $3f
    ld [hl], c                                    ; $4e47: $71
    cp c                                          ; $4e48: $b9
    and d                                         ; $4e49: $a2
    or d                                          ; $4e4a: $b2
    rst $10                                       ; $4e4b: $d7
    add a                                         ; $4e4c: $87
    ld [$ab4f], sp                                ; $4e4d: $08 $4f $ab
    ld a, l                                       ; $4e50: $7d
    ld e, d                                       ; $4e51: $5a
    ret                                           ; $4e52: $c9


    db $f4                                        ; $4e53: $f4
    ei                                            ; $4e54: $fb
    rst $38                                       ; $4e55: $ff
    reti                                          ; $4e56: $d9


    ld c, d                                       ; $4e57: $4a
    cp h                                          ; $4e58: $bc
    ld a, d                                       ; $4e59: $7a
    call z, $1052                                 ; $4e5a: $cc $52 $10
    ld bc, $4b8f                                  ; $4e5d: $01 $8f $4b
    ld c, l                                       ; $4e60: $4d
    xor e                                         ; $4e61: $ab
    sbc $15                                       ; $4e62: $de $15
    adc a                                         ; $4e64: $8f
    push hl                                       ; $4e65: $e5
    ld [hl], b                                    ; $4e66: $70
    sbc a                                         ; $4e67: $9f
    ld h, [hl]                                    ; $4e68: $66
    call nz, $e1d0                                ; $4e69: $c4 $d0 $e1
    db $fc                                        ; $4e6c: $fc
    cp b                                          ; $4e6d: $b8
    rra                                           ; $4e6e: $1f
    ld e, l                                       ; $4e6f: $5d
    or e                                          ; $4e70: $b3
    push de                                       ; $4e71: $d5
    db $10                                        ; $4e72: $10
    ld bc, $9ac0                                  ; $4e73: $01 $c0 $9a
    ld d, a                                       ; $4e76: $57
    or l                                          ; $4e77: $b5
    sub b                                         ; $4e78: $90
    db $fd                                        ; $4e79: $fd
    and e                                         ; $4e7a: $a3
    xor e                                         ; $4e7b: $ab
    inc bc                                        ; $4e7c: $03
    xor $3c                                       ; $4e7d: $ee $3c
    and [hl]                                      ; $4e7f: $a6
    pop af                                        ; $4e80: $f1
    rst $38                                       ; $4e81: $ff
    ld b, a                                       ; $4e82: $47
    xor a                                         ; $4e83: $af
    cp $f7                                        ; $4e84: $fe $f7
    ld l, e                                       ; $4e86: $6b
    rst $10                                       ; $4e87: $d7
    ld h, c                                       ; $4e88: $61
    ld l, e                                       ; $4e89: $6b
    jr c, jr_050_4ecb                             ; $4e8a: $38 $3f

    cp l                                          ; $4e8c: $bd
    cp d                                          ; $4e8d: $ba
    call nz, $4176                                ; $4e8e: $c4 $76 $41
    inc b                                         ; $4e91: $04
    rrca                                          ; $4e92: $0f
    ld b, a                                       ; $4e93: $47
    rst $08                                       ; $4e94: $cf
    and h                                         ; $4e95: $a4
    or h                                          ; $4e96: $b4

Call_050_4e97:
    reti                                          ; $4e97: $d9


    and e                                         ; $4e98: $a3
    rst $08                                       ; $4e99: $cf
    sub [hl]                                      ; $4e9a: $96
    ldh [$78], a                                  ; $4e9b: $e0 $78
    call z, $b4a4                                 ; $4e9d: $cc $a4 $b4
    ld c, c                                       ; $4ea0: $49
    ld [hl], h                                    ; $4ea1: $74
    sbc h                                         ; $4ea2: $9c
    ld c, l                                       ; $4ea3: $4d
    dec sp                                        ; $4ea4: $3b
    ld a, [hl-]                                   ; $4ea5: $3a
    sub a                                         ; $4ea6: $97
    call z, $b4a4                                 ; $4ea7: $cc $a4 $b4
    cp c                                          ; $4eaa: $b9
    ld a, [hl]                                    ; $4eab: $7e
    ld [hl], h                                    ; $4eac: $74
    ld l, $81                                     ; $4ead: $2e $81

Call_050_4eaf:
    dec sp                                        ; $4eaf: $3b
    rrca                                          ; $4eb0: $0f
    rst $18                                       ; $4eb1: $df
    pop de                                        ; $4eb2: $d1
    ld c, e                                       ; $4eb3: $4b
    ld d, a                                       ; $4eb4: $57
    rst $10                                       ; $4eb5: $d7
    ld c, h                                       ; $4eb6: $4c
    ld c, d                                       ; $4eb7: $4a
    sbc e                                         ; $4eb8: $9b
    ld a, [hl]                                    ; $4eb9: $7e
    ld a, h                                       ; $4eba: $7c
    ld h, [hl]                                    ; $4ebb: $66
    ld b, c                                       ; $4ebc: $41
    inc b                                         ; $4ebd: $04
    adc a                                         ; $4ebe: $8f
    ld c, e                                       ; $4ebf: $4b
    ld c, l                                       ; $4ec0: $4d
    dec sp                                        ; $4ec1: $3b
    or l                                          ; $4ec2: $b5
    adc l                                         ; $4ec3: $8d
    sub l                                         ; $4ec4: $95
    ei                                            ; $4ec5: $fb
    or h                                          ; $4ec6: $b4
    sub d                                         ; $4ec7: $92
    ld h, l                                       ; $4ec8: $65
    sub d                                         ; $4ec9: $92
    db $fc                                        ; $4eca: $fc

jr_050_4ecb:
    rra                                           ; $4ecb: $1f
    ld c, e                                       ; $4ecc: $4b
    sbc e                                         ; $4ecd: $9b
    or $85                                        ; $4ece: $f6 $85
    ei                                            ; $4ed0: $fb
    cp h                                          ; $4ed1: $bc
    inc d                                         ; $4ed2: $14
    ld b, h                                       ; $4ed3: $44
    rrca                                          ; $4ed4: $0f
    dec h                                         ; $4ed5: $25
    inc hl                                        ; $4ed6: $23
    dec h                                         ; $4ed7: $25
    db $d3                                        ; $4ed8: $d3
    xor e                                         ; $4ed9: $ab
    ld l, e                                       ; $4eda: $6b
    ld a, d                                       ; $4edb: $7a
    push af                                       ; $4edc: $f5
    or d                                          ; $4edd: $b2
    and c                                         ; $4ede: $a1
    db $d3                                        ; $4edf: $d3
    ld [c], a                                     ; $4ee0: $e2
    ld h, a                                       ; $4ee1: $67
    add a                                         ; $4ee2: $87
    inc bc                                        ; $4ee3: $03
    ld c, e                                       ; $4ee4: $4b
    and a                                         ; $4ee5: $a7
    sub l                                         ; $4ee6: $95
    ld c, h                                       ; $4ee7: $4c
    cp a                                          ; $4ee8: $bf
    rst $38                                       ; $4ee9: $ff
    rst $00                                       ; $4eea: $c7
    ld [hl-], a                                   ; $4eeb: $32
    ld c, c                                       ; $4eec: $49
    cp $8f                                        ; $4eed: $fe $8f
    ld l, c                                       ; $4eef: $69
    dec h                                         ; $4ef0: $25
    di                                            ; $4ef1: $f3
    ei                                            ; $4ef2: $fb
    rst $38                                       ; $4ef3: $ff
    ld c, h                                       ; $4ef4: $4c
    ld c, d                                       ; $4ef5: $4a
    dec de                                        ; $4ef6: $1b
    dec c                                         ; $4ef7: $0d
    dec sp                                        ; $4ef8: $3b
    sub d                                         ; $4ef9: $92
    adc b                                         ; $4efa: $88
    call nc, $eaf4                                ; $4efb: $d4 $f4 $ea
    jp c, $8f49                                   ; $4efe: $da $49 $8f

    xor [hl]                                      ; $4f01: $ae
    rst $38                                       ; $4f02: $ff
    dec e                                         ; $4f03: $1d
    ld [hl+], a                                   ; $4f04: $22
    ld h, b                                       ; $4f05: $60
    ld b, d                                       ; $4f06: $42
    cp a                                          ; $4f07: $bf
    rst $38                                       ; $4f08: $ff
    rst $00                                       ; $4f09: $c7
    ld b, b                                       ; $4f0a: $40
    add hl, de                                    ; $4f0b: $19
    ld d, c                                       ; $4f0c: $51
    ld l, c                                       ; $4f0d: $69
    db $e3                                        ; $4f0e: $e3
    ld l, [hl]                                    ; $4f0f: $6e
    add sp, $48                                   ; $4f10: $e8 $48
    ld c, c                                       ; $4f12: $49
    ld h, $31                                     ; $4f13: $26 $31
    xor l                                         ; $4f15: $ad
    ld a, d                                       ; $4f16: $7a
    inc e                                         ; $4f17: $1c
    rst $28                                       ; $4f18: $ef
    ld a, $cd                                     ; $4f19: $3e $cd
    adc b                                         ; $4f1b: $88
    and c                                         ; $4f1c: $a1
    dec hl                                        ; $4f1d: $2b
    rst $30                                       ; $4f1e: $f7
    pop hl                                        ; $4f1f: $e1
    sub l                                         ; $4f20: $95
    ld [hl], e                                    ; $4f21: $73
    ld c, l                                       ; $4f22: $4d

jr_050_4f23:
    dec hl                                        ; $4f23: $2b
    ret                                           ; $4f24: $c9


    jp $dacb                                      ; $4f25: $c3 $cb $da


    add d                                         ; $4f28: $82
    ld [$4b8f], sp                                ; $4f29: $08 $8f $4b
    dec l                                         ; $4f2c: $2d
    di                                            ; $4f2d: $f3
    ld l, d                                       ; $4f2e: $6a
    sbc d                                         ; $4f2f: $9a
    ld de, $9743                                  ; $4f30: $11 $43 $97
    sbc l                                         ; $4f33: $9d
    sbc a                                         ; $4f34: $9f
    ld c, c                                       ; $4f35: $49
    ld l, c                                       ; $4f36: $69
    db $d3                                        ; $4f37: $d3
    ld l, a                                       ; $4f38: $6f
    ld h, $35                                     ; $4f39: $26 $35
    ld a, [de]                                    ; $4f3b: $1a
    halt                                          ; $4f3c: $76
    and b                                         ; $4f3d: $a0
    ld d, e                                       ; $4f3e: $53
    ret nz                                        ; $4f3f: $c0

    adc l                                         ; $4f40: $8d
    sub h                                         ; $4f41: $94
    xor d                                         ; $4f42: $aa
    rst $38                                       ; $4f43: $ff
    pop hl                                        ; $4f44: $e1
    add b                                         ; $4f45: $80
    dec [hl]                                      ; $4f46: $35

Jump_050_4f47:
    xor a                                         ; $4f47: $af
    ld l, d                                       ; $4f48: $6a
    ld e, d                                       ; $4f49: $5a
    adc b                                         ; $4f4a: $88
    inc b                                         ; $4f4b: $04
    ld b, h                                       ; $4f4c: $44
    adc a                                         ; $4f4d: $8f
    ld c, e                                       ; $4f4e: $4b
    ld c, l                                       ; $4f4f: $4d
    xor e                                         ; $4f50: $ab
    sbc [hl]                                      ; $4f51: $9e
    halt                                          ; $4f52: $76
    ld l, d                                       ; $4f53: $6a
    ld e, a                                       ; $4f54: $5f
    cp c                                          ; $4f55: $b9
    ld c, a                                       ; $4f56: $4f
    dec hl                                        ; $4f57: $2b
    sbc c                                         ; $4f58: $99
    cp d                                          ; $4f59: $ba
    rst $38                                       ; $4f5a: $ff
    ld d, a                                       ; $4f5b: $57
    xor a                                         ; $4f5c: $af
    call c, $9397                                 ; $4f5d: $dc $97 $93
    and $6a                                       ; $4f60: $e6 $6a
    jr c, jr_050_4f23                             ; $4f62: $38 $bf

    call z, $093c                                 ; $4f64: $cc $3c $09
    inc e                                         ; $4f67: $1c
    ret nc                                        ; $4f68: $d0

    rst $38                                       ; $4f69: $ff
    and e                                         ; $4f6a: $a3
    and a                                         ; $4f6b: $a7
    ld d, a                                       ; $4f6c: $57
    rst $08                                       ; $4f6d: $cf
    add [hl]                                      ; $4f6e: $86
    rrca                                          ; $4f6f: $0f
    ret c                                         ; $4f70: $d8

    db $fd                                        ; $4f71: $fd
    add hl, hl                                    ; $4f72: $29
    db $ed                                        ; $4f73: $ed
    ld de, $1802                                  ; $4f74: $11 $02 $18
    sbc c                                         ; $4f77: $99
    ld [hl], l                                    ; $4f78: $75
    ld [hl], $ad                                  ; $4f79: $36 $ad
    ld h, h                                       ; $4f7b: $64
    ld b, a                                       ; $4f7c: $47
    rst $28                                       ; $4f7d: $ef
    xor [hl]                                      ; $4f7e: $ae
    cp $af                                        ; $4f7f: $fe $af
    ld [hl], c                                    ; $4f81: $71
    push af                                       ; $4f82: $f5
    rst $38                                       ; $4f83: $ff
    xor [hl]                                      ; $4f84: $ae
    ld a, b                                       ; $4f85: $78

Call_050_4f86:
    ld c, h                                       ; $4f86: $4c
    dec sp                                        ; $4f87: $3b
    ld a, d                                       ; $4f88: $7a
    add hl, bc                                    ; $4f89: $09
    adc [hl]                                      ; $4f8a: $8e
    rlca                                          ; $4f8b: $07
    ld b, h                                       ; $4f8c: $44
    and b                                         ; $4f8d: $a0
    ld d, e                                       ; $4f8e: $53
    ret nz                                        ; $4f8f: $c0

    adc l                                         ; $4f90: $8d
    sub h                                         ; $4f91: $94
    xor d                                         ; $4f92: $aa
    rst $38                                       ; $4f93: $ff
    ld [hl], a                                    ; $4f94: $77
    db $f4                                        ; $4f95: $f4
    jp nc, $fbd7                                  ; $4f96: $d2 $d7 $fb

    or b                                          ; $4f99: $b0
    dec h                                         ; $4f9a: $25
    ld [hl], $d6                                  ; $4f9b: $36 $d6
    ld b, c                                       ; $4f9d: $41
    call c, $dc34                                 ; $4f9e: $dc $34 $dc
    add e                                         ; $4fa1: $83
    sub c                                         ; $4fa2: $91
    jp hl                                         ; $4fa3: $e9


    pop hl                                        ; $4fa4: $e1
    rlc a                                         ; $4fa5: $cb $07
    adc c                                         ; $4fa7: $89
    halt                                          ; $4fa8: $76
    adc b                                         ; $4fa9: $88
    nop                                           ; $4faa: $00
    adc a                                         ; $4fab: $8f
    ld c, e                                       ; $4fac: $4b
    ld c, l                                       ; $4fad: $4d
    xor e                                         ; $4fae: $ab
    sbc $15                                       ; $4faf: $de $15
    adc a                                         ; $4fb1: $8f
    push hl                                       ; $4fb2: $e5
    ld [hl], b                                    ; $4fb3: $70

jr_050_4fb4:
    sbc a                                         ; $4fb4: $9f
    ld h, [hl]                                    ; $4fb5: $66
    call nz, $ddd0                                ; $4fb6: $c4 $d0 $dd
    reti                                          ; $4fb9: $d9


    ld d, d                                       ; $4fba: $52
    db $10                                        ; $4fbb: $10
    ld bc, $4b8f                                  ; $4fbc: $01 $8f $4b
    dec l                                         ; $4fbf: $2d
    ld b, a                                       ; $4fc0: $47
    ld c, a                                       ; $4fc1: $4f
    inc sp                                        ; $4fc2: $33
    ld h, d                                       ; $4fc3: $62
    add sp, -$52                                  ; $4fc4: $e8 $ae
    ld a, b                                       ; $4fc6: $78
    inc l                                         ; $4fc7: $2c
    di                                            ; $4fc8: $f3
    inc sp                                        ; $4fc9: $33
    sbc h                                         ; $4fca: $9c
    rla                                           ; $4fcb: $17
    ld b, h                                       ; $4fcc: $44
    ldh [rNR12], a                                ; $4fcd: $e0 $12
    adc [hl]                                      ; $4fcf: $8e
    ld h, e                                       ; $4fd0: $63
    adc a                                         ; $4fd1: $8f
    nop                                           ; $4fd2: $00
    jr nz, @+$46                                  ; $4fd3: $20 $44

    push de                                       ; $4fd5: $d5
    ld [hl-], a                                   ; $4fd6: $32
    adc $f7                                       ; $4fd7: $ce $f7
    ld c, d                                       ; $4fd9: $4a
    rst $18                                       ; $4fda: $df
    inc de                                        ; $4fdb: $13
    add hl, hl                                    ; $4fdc: $29
    inc a                                         ; $4fdd: $3c
    jr nz, jr_050_4fe2                            ; $4fde: $20 $02

    adc a                                         ; $4fe0: $8f
    ld c, e                                       ; $4fe1: $4b

jr_050_4fe2:
    adc l                                         ; $4fe2: $8d
    sub h                                         ; $4fe3: $94
    db $ec                                        ; $4fe4: $ec
    adc d                                         ; $4fe5: $8a
    rst $00                                       ; $4fe6: $c7
    ld a, [$35d4]                                 ; $4fe7: $fa $d4 $35
    ld a, d                                       ; $4fea: $7a
    dec d                                         ; $4feb: $15
    ld a, e                                       ; $4fec: $7b
    inc b                                         ; $4fed: $04
    jr nz, jr_050_4fb4                            ; $4fee: $20 $c4

    ld h, e                                       ; $4ff0: $63
    call z, $d352                                 ; $4ff1: $cc $52 $d3

Call_050_4ff4:
    ld [c], a                                     ; $4ff4: $e2
    rst $38                                       ; $4ff5: $ff
    ld l, b                                       ; $4ff6: $68
    or $3b                                        ; $4ff7: $f6 $3b
    rrca                                          ; $4ff9: $0f
    sbc c                                         ; $4ffa: $99
    halt                                          ; $4ffb: $76
    db $f4                                        ; $4ffc: $f4
    db $f4                                        ; $4ffd: $f4
    add e                                         ; $4ffe: $83
    or c                                          ; $4fff: $b1
    add a                                         ; $5000: $87
    ld c, h                                       ; $5001: $4c
    xor e                                         ; $5002: $ab
    sbc $bf                                       ; $5003: $de $bf
    ld h, d                                       ; $5005: $62
    res 2, a                                      ; $5006: $cb $97
    xor a                                         ; $5008: $af
    ld e, d                                       ; $5009: $5a
    daa                                           ; $500a: $27
    ld [c], a                                     ; $500b: $e2
    inc sp                                        ; $500c: $33
    add hl, sp                                    ; $500d: $39
    jp $879d                                      ; $500e: $c3 $9d $87


    adc a                                         ; $5011: $8f
    ld a, [c]                                     ; $5012: $f2
    reti                                          ; $5013: $d9


    ld h, e                                       ; $5014: $63
    ld a, d                                       ; $5015: $7a
    ld [hl], l                                    ; $5016: $75
    ld b, c                                       ; $5017: $41
    ld [$99cf], sp                                ; $5018: $08 $cf $99
    add a                                         ; $501b: $87
    sbc [hl]                                      ; $501c: $9e
    db $fc                                        ; $501d: $fc
    sub b                                         ; $501e: $90
    cp h                                          ; $501f: $bc
    daa                                           ; $5020: $27
    ld d, d                                       ; $5021: $52
    ld e, l                                       ; $5022: $5d
    db $ec                                        ; $5023: $ec
    rst $30                                       ; $5024: $f7
    cp b                                          ; $5025: $b8
    call nc, $eab4                                ; $5026: $d4 $b4 $ea
    db $fd                                        ; $5029: $fd
    inc hl                                        ; $502a: $23
    ei                                            ; $502b: $fb
    inc c                                         ; $502c: $0c
    sbc l                                         ; $502d: $9d
    dec c                                         ; $502e: $0d
    ld h, c                                       ; $502f: $61
    ccf                                           ; $5030: $3f
    ld b, b                                       ; $5031: $40
    and d                                         ; $5032: $a2
    rra                                           ; $5033: $1f
    ld h, d                                       ; $5034: $62

jr_050_5035:
    rst $30                                       ; $5035: $f7
    sbc c                                         ; $5036: $99
    ld c, c                                       ; $5037: $49
    ld e, [hl]                                    ; $5038: $5e
    db $fc                                        ; $5039: $fc
    rra                                           ; $503a: $1f
    cp l                                          ; $503b: $bd
    ld hl, sp-$0a                                 ; $503c: $f8 $f6
    ld l, h                                       ; $503e: $6c
    rrca                                          ; $503f: $0f
    push de                                       ; $5040: $d5
    call $8f62                                    ; $5041: $cd $62 $8f
    nop                                           ; $5044: $00
    jr jr_050_5072                                ; $5045: $18 $2b

    ld b, l                                       ; $5047: $45
    adc $f6                                       ; $5048: $ce $f6
    ld d, b                                       ; $504a: $50
    db $dd                                        ; $504b: $dd
    xor h                                         ; $504c: $ac
    or e                                          ; $504d: $b3
    reti                                          ; $504e: $d9


    sub b                                         ; $504f: $90
    sub c                                         ; $5050: $91
    ld l, $5a                                     ; $5051: $2e $5a
    ld [hl], $f6                                  ; $5053: $36 $f6
    inc de                                        ; $5055: $13
    adc $43                                       ; $5056: $ce $43
    sub [hl]                                      ; $5058: $96
    db $f4                                        ; $5059: $f4
    add sp, $55                                   ; $505a: $e8 $55
    db $10                                        ; $505c: $10
    ld bc, $ef4f                                  ; $505d: $01 $4f $ef
    jr c, jr_050_5035                             ; $5060: $38 $d3

    sbc [hl]                                      ; $5062: $9e
    rrca                                          ; $5063: $0f
    rst $30                                       ; $5064: $f7
    ld l, b                                       ; $5065: $68
    cp b                                          ; $5066: $b8
    daa                                           ; $5067: $27
    ld d, d                                       ; $5068: $52
    ld a, b                                       ; $5069: $78
    db $ec                                        ; $506a: $ec
    add sp, $75                                   ; $506b: $e8 $75
    ret c                                         ; $506d: $d8

    sub d                                         ; $506e: $92
    ld a, l                                       ; $506f: $7d
    ld e, [hl]                                    ; $5070: $5e
    sub h                                         ; $5071: $94

jr_050_5072:
    adc a                                         ; $5072: $8f
    dec sp                                        ; $5073: $3b
    ld [hl], l                                    ; $5074: $75
    call z, Call_000_0ce4                         ; $5075: $cc $e4 $0c
    ld de, $ef4f                                  ; $5078: $11 $4f $ef
    ld a, [c]                                     ; $507b: $f2
    ld [hl], l                                    ; $507c: $75
    adc a                                         ; $507d: $8f
    ld e, $67                                     ; $507e: $1e $67
    jp c, $eab9                                   ; $5080: $da $b9 $ea

    ld [de], a                                    ; $5083: $12
    dec de                                        ; $5084: $1b
    db $e3                                        ; $5085: $e3

jr_050_5086:
    ld a, [hl+]                                   ; $5086: $2a
    ei                                            ; $5087: $fb
    reti                                          ; $5088: $d9


    ld e, $aa                                     ; $5089: $1e $aa
    sbc e                                         ; $508b: $9b
    push bc                                       ; $508c: $c5
    ld a, [hl]                                    ; $508d: $7e
    inc bc                                        ; $508e: $03
    halt                                          ; $508f: $76
    ld [$227c], a                                 ; $5090: $ea $7c $22
    cp e                                          ; $5093: $bb
    ld a, [hl+]                                   ; $5094: $2a
    add h                                         ; $5095: $84
    dec a                                         ; $5096: $3d
    ld [bc], a                                    ; $5097: $02
    ret nz                                        ; $5098: $c0

    ld a, b                                       ; $5099: $78
    push af                                       ; $509a: $f5
    xor e                                         ; $509b: $ab
    reti                                          ; $509c: $d9


    rrca                                          ; $509d: $0f
    ld h, e                                       ; $509e: $63
    sub d                                         ; $509f: $92
    ld b, e                                       ; $50a0: $43
    cp h                                          ; $50a1: $bc
    ld a, [hl]                                    ; $50a2: $7e
    ld e, $c7                                     ; $50a3: $1e $c7
    xor e                                         ; $50a5: $ab
    ld e, a                                       ; $50a6: $5f
    call $e77e                                    ; $50a7: $cd $7e $e7
    or c                                          ; $50aa: $b1
    ld [de], a                                    ; $50ab: $12
    xor [hl]                                      ; $50ac: $ae
    cp $8f                                        ; $50ad: $fe $8f
    sbc [hl]                                      ; $50af: $9e
    ret                                           ; $50b0: $c9


    ld a, c                                       ; $50b1: $79
    ld sp, hl                                     ; $50b2: $f9
    jr nz, jr_050_5086                            ; $50b3: $20 $d1

    ld a, $43                                     ; $50b5: $3e $43
    and a                                         ; $50b7: $a7
    rst $18                                       ; $50b8: $df
    add hl, hl                                    ; $50b9: $29
    cp [hl]                                       ; $50ba: $be
    and a                                         ; $50bb: $a7
    ld b, d                                       ; $50bc: $42
    inc c                                         ; $50bd: $0c
    ld e, l                                       ; $50be: $5d
    daa                                           ; $50bf: $27
    sub h                                         ; $50c0: $94
    add [hl]                                      ; $50c1: $86
    ld b, e                                       ; $50c2: $43
    inc b                                         ; $50c3: $04
    rst $20                                       ; $50c4: $e7
    pop hl                                        ; $50c5: $e1
    dec sp                                        ; $50c6: $3b
    ld a, d                                       ; $50c7: $7a
    ld d, a                                       ; $50c8: $57
    ld d, h                                       ; $50c9: $54
    adc l                                         ; $50ca: $8d
    db $e3                                        ; $50cb: $e3
    push de                                       ; $50cc: $d5
    xor a                                         ; $50cd: $af
    add [hl]                                      ; $50ce: $86
    db $10                                        ; $50cf: $10
    jp c, Jump_000_1df0                           ; $50d0: $da $f0 $1d

    cp l                                          ; $50d3: $bd
    ld [hl], h                                    ; $50d4: $74
    add sp, $57                                   ; $50d5: $e8 $57
    ld d, h                                       ; $50d7: $54
    reti                                          ; $50d8: $d9


    sbc b                                         ; $50d9: $98
    or b                                          ; $50da: $b0
    ld d, d                                       ; $50db: $52
    db $e4                                        ; $50dc: $e4
    ld d, a                                       ; $50dd: $57
    or e                                          ; $50de: $b3
    ld b, a                                       ; $50df: $47
    and b                                         ; $50e0: $a0
    ld hl, sp-$14                                 ; $50e1: $f8 $ec
    ld [hl], b                                    ; $50e3: $70
    ld b, b                                       ; $50e4: $40
    ld h, l                                       ; $50e5: $65
    and l                                         ; $50e6: $a5
    ld c, a                                       ; $50e7: $4f
    ld e, b                                       ; $50e8: $58
    add hl, hl                                    ; $50e9: $29
    ld a, [c]                                     ; $50ea: $f2
    xor e                                         ; $50eb: $ab
    and l                                         ; $50ec: $a5
    ld b, [hl]                                    ; $50ed: $46
    ld sp, hl                                     ; $50ee: $f9
    db $ec                                        ; $50ef: $ec
    or c                                          ; $50f0: $b1
    inc de                                        ; $50f1: $13
    adc [hl]                                      ; $50f2: $8e
    ld c, e                                       ; $50f3: $4b
    db $ed                                        ; $50f4: $ed
    di                                            ; $50f5: $f3
    add hl, sp                                    ; $50f6: $39
    inc e                                         ; $50f7: $1c
    ld [hl+], a                                   ; $50f8: $22

jr_050_50f9:
    and b                                         ; $50f9: $a0
    ld b, e                                       ; $50fa: $43
    and [hl]                                      ; $50fb: $a6
    rst $18                                       ; $50fc: $df
    ld c, a                                       ; $50fd: $4f
    ld b, d                                       ; $50fe: $42
    ld e, $21                                     ; $50ff: $1e $21
    rst $20                                       ; $5101: $e7
    ld hl, $47b3                                  ; $5102: $21 $b3 $47
    ld c, a                                       ; $5105: $4f
    ld e, b                                       ; $5106: $58
    add hl, hl                                    ; $5107: $29
    ld [de], a                                    ; $5108: $12
    ld e, a                                       ; $5109: $5f
    or $79                                        ; $510a: $f6 $79
    ld d, c                                       ; $510c: $51
    cp [hl]                                       ; $510d: $be
    inc b                                         ; $510e: $04
    rst $00                                       ; $510f: $c7
    sub a                                         ; $5110: $97
    and e                                         ; $5111: $a3
    rst $30                                       ; $5112: $f7
    xor a                                         ; $5113: $af
    rst $00                                       ; $5114: $c7
    ld c, d                                       ; $5115: $4a
    call nz, Call_050_4ff4                        ; $5116: $c4 $f4 $4f
    call nz, $12d6                                ; $5119: $c4 $d6 $12
    add a                                         ; $511c: $87
    ld [$43a0], sp                                ; $511d: $08 $a0 $43
    xor d                                         ; $5120: $aa
    ld h, a                                       ; $5121: $67
    sub e                                         ; $5122: $93

jr_050_5123:
    reti                                          ; $5123: $d9


    sub b                                         ; $5124: $90
    db $dd                                        ; $5125: $dd
    xor c                                         ; $5126: $a9
    db $e4                                        ; $5127: $e4
    db $db                                        ; $5128: $db
    or e                                          ; $5129: $b3
    pop de                                        ; $512a: $d1
    or b                                          ; $512b: $b0
    xor e                                         ; $512c: $ab
    rst $38                                       ; $512d: $ff
    ld l, e                                       ; $512e: $6b
    ld sp, hl                                     ; $512f: $f9
    ld a, [hl]                                    ; $5130: $7e
    dec a                                         ; $5131: $3d
    ld e, d                                       ; $5132: $5a
    ld e, b                                       ; $5133: $58
    add hl, hl                                    ; $5134: $29
    ld a, [c]                                     ; $5135: $f2
    xor e                                         ; $5136: $ab
    ld h, a                                       ; $5137: $67
    jr z, jr_050_5123                             ; $5138: $28 $e9

    dec hl                                        ; $513a: $2b
    ld l, d                                       ; $513b: $6a
    ld sp, hl                                     ; $513c: $f9
    xor d                                         ; $513d: $aa
    ld b, a                                       ; $513e: $47
    ld [$938f], sp                                ; $513f: $08 $8f $93
    db $ec                                        ; $5142: $ec
    or e                                          ; $5143: $b3
    pop hl                                        ; $5144: $e1
    ld [hl], b                                    ; $5145: $70
    rst $20                                       ; $5146: $e7
    ld hl, $2523                                  ; $5147: $21 $23 $25
    sbc c                                         ; $514a: $99
    call nz, Call_000_384e                        ; $514b: $c4 $4e $38
    ld l, $d5                                     ; $514e: $2e $d5
    or e                                          ; $5150: $b3
    and a                                         ; $5151: $a7
    xor $10                                       ; $5152: $ee $10
    adc b                                         ; $5154: $88
    nop                                           ; $5155: $00
    rst $20                                       ; $5156: $e7
    ret                                           ; $5157: $c9


    jr z, jr_050_50f9                             ; $5158: $28 $9f

    dec a                                         ; $515a: $3d
    add $7d                                       ; $515b: $c6 $7d
    sub [hl]                                      ; $515d: $96
    xor d                                         ; $515e: $aa
    dec h                                         ; $515f: $25
    jr c, jr_050_51a0                             ; $5160: $38 $3e

    sub e                                         ; $5162: $93
    jp nc, Jump_000_35e6                          ; $5163: $d2 $e6 $35

    dec de                                        ; $5166: $1b
    ld [hl], d                                    ; $5167: $72
    or [hl]                                       ; $5168: $b6
    ld [de], a                                    ; $5169: $12
    xor c                                         ; $516a: $a9
    adc $23                                       ; $516b: $ce $23
    add [hl]                                      ; $516d: $86
    jp nc, $e9e8                                  ; $516e: $d2 $e8 $e9

    ld [hl], a                                    ; $5171: $77
    push af                                       ; $5172: $f5
    ld l, l                                       ; $5173: $6d
    ld e, a                                       ; $5174: $5f
    dec [hl]                                      ; $5175: $35
    dec d                                         ; $5176: $15
    ld h, d                                       ; $5177: $62
    add sp, -$14                                  ; $5178: $e8 $ec
    xor c                                         ; $517a: $a9
    dec sp                                        ; $517b: $3b
    inc b                                         ; $517c: $04
    ld [hl+], a                                   ; $517d: $22
    and b                                         ; $517e: $a0
    ld b, e                                       ; $517f: $43
    add $2c                                       ; $5180: $c6 $2c
    dec [hl]                                      ; $5182: $35
    xor l                                         ; $5183: $ad
    ld a, d                                       ; $5184: $7a
    ld d, a                                       ; $5185: $57
    inc a                                         ; $5186: $3c
    ld b, [hl]                                    ; $5187: $46
    xor a                                         ; $5188: $af
    adc h                                         ; $5189: $8c
    add sp, -$6b                                  ; $518a: $e8 $95
    dec e                                         ; $518c: $1d
    ld [hl+], a                                   ; $518d: $22
    jr jr_050_51fb                                ; $518e: $18 $6b

    db $f4                                        ; $5190: $f4
    ld a, [bc]                                    ; $5191: $0a
    call c, $c879                                 ; $5192: $dc $79 $c8
    adc [hl]                                      ; $5195: $8e
    ld e, $77                                     ; $5196: $1e $77
    ld [$2b09], a                                 ; $5198: $ea $09 $2b
    ld a, l                                       ; $519b: $7d
    ld l, d                                       ; $519c: $6a
    ld h, [hl]                                    ; $519d: $66
    ld [hl], l                                    ; $519e: $75
    sbc h                                         ; $519f: $9c

jr_050_51a0:
    adc l                                         ; $51a0: $8d
    add [hl]                                      ; $51a1: $86
    ld c, h                                       ; $51a2: $4c
    cp a                                          ; $51a3: $bf
    db $d3                                        ; $51a4: $d3
    xor d                                         ; $51a5: $aa
    ld [hl], a                                    ; $51a6: $77
    ld b, l                                       ; $51a7: $45
    add l                                         ; $51a8: $85
    xor a                                         ; $51a9: $af
    ld b, h                                       ; $51aa: $44
    jp z, $d7a7                                   ; $51ab: $ca $a7 $d7

    add a                                         ; $51ae: $87
    ld [$4b8f], sp                                ; $51af: $08 $8f $4b
    ld c, l                                       ; $51b2: $4d
    xor e                                         ; $51b3: $ab
    sbc [hl]                                      ; $51b4: $9e
    or b                                          ; $51b5: $b0
    ld d, d                                       ; $51b6: $52
    inc h                                         ; $51b7: $24
    cp [hl]                                       ; $51b8: $be
    ret nz                                        ; $51b9: $c0

    dec c                                         ; $51ba: $0d
    and h                                         ; $51bb: $a4
    and c                                         ; $51bc: $a1
    cp e                                          ; $51bd: $bb
    ld a, [hl+]                                   ; $51be: $2a
    inc b                                         ; $51bf: $04
    ld [hl+], a                                   ; $51c0: $22
    ld c, a                                       ; $51c1: $4f
    sbc b                                         ; $51c2: $98
    adc c                                         ; $51c3: $89
    cp e                                          ; $51c4: $bb
    sub c                                         ; $51c5: $91
    sbc c                                         ; $51c6: $99
    inc d                                         ; $51c7: $14
    ret                                           ; $51c8: $c9


    db $fc                                        ; $51c9: $fc
    reti                                          ; $51ca: $d9


    sbc b                                         ; $51cb: $98
    and l                                         ; $51cc: $a5
    ld b, [hl]                                    ; $51cd: $46
    ld l, a                                       ; $51ce: $6f
    adc $65                                       ; $51cf: $ce $65
    ld h, e                                       ; $51d1: $63
    jp nz, $914a                                  ; $51d2: $c2 $4a $91

    ld hl, sp-$3e                                 ; $51d5: $f8 $c2
    ld a, [hl]                                    ; $51d7: $7e
    ld a, e                                       ; $51d8: $7b
    ld e, h                                       ; $51d9: $5c
    ld l, d                                       ; $51da: $6a
    inc e                                         ; $51db: $1c
    rst $18                                       ; $51dc: $df
    db $e3                                        ; $51dd: $e3
    ld c, [hl]                                    ; $51de: $4e
    sbc l                                         ; $51df: $9d
    ld c, a                                       ; $51e0: $4f
    and h                                         ; $51e1: $a4
    halt                                          ; $51e2: $76
    ld d, l                                       ; $51e3: $55
    ld [$047b], sp                                ; $51e4: $08 $7b $04
    ld c, a                                       ; $51e7: $4f
    ld d, d                                       ; $51e8: $52
    ld e, d                                       ; $51e9: $5a
    and l                                         ; $51ea: $a5
    ld [$3cce], sp                                ; $51eb: $08 $ce $3c
    ld [hl], d                                    ; $51ee: $72
    inc [hl]                                      ; $51ef: $34
    ei                                            ; $51f0: $fb
    add c                                         ; $51f1: $81
    ld c, $81                                     ; $51f2: $0e $81
    db $10                                        ; $51f4: $10
    jp c, $d1d8                                   ; $51f5: $da $d8 $d1

    set 7, h                                      ; $51f8: $cb $fc
    or d                                          ; $51fa: $b2

jr_050_51fb:
    sbc e                                         ; $51fb: $9b
    ld l, $f6                                     ; $51fc: $2e $f6
    ld [$31e7], sp                                ; $51fe: $08 $e7 $31
    db $ed                                        ; $5201: $ed
    add sp, -$1f                                  ; $5202: $e8 $e1
    call z, $4723                                 ; $5204: $cc $23 $47
    ld c, e                                       ; $5207: $4b
    db $ed                                        ; $5208: $ed
    add sp, $65                                   ; $5209: $e8 $65
    scf                                           ; $520b: $37
    ld e, l                                       ; $520c: $5d
    inc de                                        ; $520d: $13
    and e                                         ; $520e: $a3
    ld d, [hl]                                    ; $520f: $56
    xor $cb                                       ; $5210: $ee $cb
    and h                                         ; $5212: $a4
    ld l, h                                       ; $5213: $6c
    call $b55e                                    ; $5214: $cd $5e $b5
    cp e                                          ; $5217: $bb
    db $ec                                        ; $5218: $ec
    rst $00                                       ; $5219: $c7
    rst $38                                       ; $521a: $ff
    pop hl                                        ; $521b: $e1
    db $e3                                        ; $521c: $e3
    ld c, [hl]                                    ; $521d: $4e
    cp l                                          ; $521e: $bd
    ld [hl], d                                    ; $521f: $72
    ld e, a                                       ; $5220: $5f
    cp d                                          ; $5221: $ba
    cp d                                          ; $5222: $ba
    sub [hl]                                      ; $5223: $96
    rrca                                          ; $5224: $0f
    ld d, l                                       ; $5225: $55
    db $e3                                        ; $5226: $e3
    ld a, l                                       ; $5227: $7d
    or $aa                                        ; $5228: $f6 $aa
    sub l                                         ; $522a: $95
    ei                                            ; $522b: $fb
    cp b                                          ; $522c: $b8
    rst $08                                       ; $522d: $cf
    ld [hl], d                                    ; $522e: $72
    xor a                                         ; $522f: $af
    reti                                          ; $5230: $d9


    xor e                                         ; $5231: $ab
    jr nz, jr_050_5236                            ; $5232: $20 $02

    ld h, b                                       ; $5234: $60
    ld d, e                                       ; $5235: $53

jr_050_5236:
    jp c, $8c6c                                   ; $5236: $da $6c $8c

    ei                                            ; $5239: $fb
    sub c                                         ; $523a: $91
    cp l                                          ; $523b: $bd
    ld d, [hl]                                    ; $523c: $56
    ld a, [$d06c]                                 ; $523d: $fa $6c $d0
    ld h, l                                       ; $5240: $65
    rst $20                                       ; $5241: $e7
    ld a, e                                       ; $5242: $7b

Jump_050_5243:
    jp hl                                         ; $5243: $e9


    ld c, $ab                                     ; $5244: $0e $ab
    ld e, a                                       ; $5246: $5f
    cp e                                          ; $5247: $bb
    ld [hl], h                                    ; $5248: $74
    rra                                           ; $5249: $1f
    ld [hl], $1c                                  ; $524a: $36 $1c
    xor $3c                                       ; $524c: $ee $3c
    ld a, h                                       ; $524e: $7c
    rst $38                                       ; $524f: $ff
    ld [de], a                                    ; $5250: $12
    xor c                                         ; $5251: $a9
    ld e, $8d                                     ; $5252: $1e $8d
    ld e, [hl]                                    ; $5254: $5e
    ret z                                         ; $5255: $c8

    cp b                                          ; $5256: $b8
    db $e3                                        ; $5257: $e3
    rst $38                                       ; $5258: $ff
    jp c, $0b21                                   ; $5259: $da $21 $0b

    add hl, de                                    ; $525c: $19
    dec l                                         ; $525d: $2d
    ld c, a                                       ; $525e: $4f
    ld l, c                                       ; $525f: $69
    db $10                                        ; $5260: $10
    ld bc, $8c18                                  ; $5261: $01 $18 $8c
    sbc h                                         ; $5264: $9c
    ld c, l                                       ; $5265: $4d

Call_050_5266:
    add d                                         ; $5266: $82
    ret                                           ; $5267: $c9


    ld e, $01                                     ; $5268: $1e $01
    ld c, a                                       ; $526a: $4f
    xor e                                         ; $526b: $ab
    rst $00                                       ; $526c: $c7
    sbc l                                         ; $526d: $9d
    ld a, [hl-]                                   ; $526e: $3a
    ld e, a                                       ; $526f: $5f
    ld [c], a                                     ; $5270: $e2
    ld d, a                                       ; $5271: $57
    ld b, c                                       ; $5272: $41
    ld [$6011], sp                                ; $5273: $08 $11 $60
    ld d, e                                       ; $5276: $53
    jp c, Jump_000_2c72                           ; $5277: $da $72 $2c

    pop bc                                        ; $527a: $c1
    pop af                                        ; $527b: $f1
    ld [hl], c                                    ; $527c: $71
    and a                                         ; $527d: $a7
    sbc [hl]                                      ; $527e: $9e
    ld l, l                                       ; $527f: $6d
    db $e3                                        ; $5280: $e3
    ld l, $57                                     ; $5281: $2e $57
    ld d, h                                       ; $5283: $54
    ret z                                         ; $5284: $c8

    reti                                          ; $5285: $d9


    inc [hl]                                      ; $5286: $34
    inc hl                                        ; $5287: $23
    dec sp                                        ; $5288: $3b
    ld a, d                                       ; $5289: $7a
    ld [hl], $64                                  ; $528a: $36 $64
    reti                                          ; $528c: $d9


    xor e                                         ; $528d: $ab
    ld c, c                                       ; $528e: $49
    ld h, l                                       ; $528f: $65
    adc a                                         ; $5290: $8f
    pop hl                                        ; $5291: $e1
    call z, $8723                                 ; $5292: $cc $23 $87
    ld b, b                                       ; $5295: $40
    inc b                                         ; $5296: $04
    ld c, a                                       ; $5297: $4f
    ld h, d                                       ; $5298: $62
    add hl, bc                                    ; $5299: $09
    adc [hl]                                      ; $529a: $8e
    sbc a                                         ; $529b: $9f
    db $ed                                        ; $529c: $ed
    and c                                         ; $529d: $a1
    cp d                                          ; $529e: $ba
    ld e, c                                       ; $529f: $59
    db $ec                                        ; $52a0: $ec
    ld de, $490f                                  ; $52a1: $11 $0f $49
    rst $28                                       ; $52a4: $ef
    add sp, -$27                                  ; $52a5: $e8 $d9
    ldh a, [$d1]                                  ; $52a7: $f0 $d1
    or b                                          ; $52a9: $b0
    jp $e460                                      ; $52aa: $c3 $60 $e4


    ld de, $8f02                                  ; $52ad: $11 $02 $8f
    ld c, e                                       ; $52b0: $4b
    ld b, c                                       ; $52b1: $41
    ld [$a599], sp                                ; $52b2: $08 $99 $a5
    and $6d                                       ; $52b5: $e6 $6d
    ld a, d                                       ; $52b7: $7a
    push hl                                       ; $52b8: $e5
    ld a, $ad                                     ; $52b9: $3e $ad
    ld h, h                                       ; $52bb: $64
    db $e4                                        ; $52bc: $e4
    ld d, a                                       ; $52bd: $57
    ld d, a                                       ; $52be: $57
    cpl                                           ; $52bf: $2f
    ld e, a                                       ; $52c0: $5f
    dec b                                         ; $52c1: $05
    rlca                                          ; $52c2: $07
    ld a, [hl-]                                   ; $52c3: $3a
    ld h, h                                       ; $52c4: $64
    ld e, d                                       ; $52c5: $5a
    ret                                           ; $52c6: $c9


    adc [hl]                                      ; $52c7: $8e
    ld e, $67                                     ; $52c8: $1e $67
    jp c, $eab9                                   ; $52ca: $da $b9 $ea

    ld [de], a                                    ; $52cd: $12
    dec de                                        ; $52ce: $1b
    ld c, e                                       ; $52cf: $4b
    inc a                                         ; $52d0: $3c
    rst $38                                       ; $52d1: $ff
    ld d, d                                       ; $52d2: $52
    ld hl, $0110                                  ; $52d3: $21 $10 $01
    ld c, a                                       ; $52d6: $4f
    rst $28                                       ; $52d7: $ef
    ld c, b                                       ; $52d8: $48
    ret                                           ; $52d9: $c9


    xor [hl]                                      ; $52da: $ae
    ld a, b                                       ; $52db: $78
    inc l                                         ; $52dc: $2c
    ld a, e                                       ; $52dd: $7b
    adc c                                         ; $52de: $89
    call nc, $3924                                ; $52df: $d4 $24 $39
    sbc e                                         ; $52e2: $9b

Call_050_52e3:
    ld c, c                                       ; $52e3: $49
    ld l, c                                       ; $52e4: $69
    or e                                          ; $52e5: $b3
    pop hl                                        ; $52e6: $e1
    db $e3                                        ; $52e7: $e3
    xor [hl]                                      ; $52e8: $ae
    ld c, b                                       ; $52e9: $48
    sbc $15                                       ; $52ea: $de $15
    dec d                                         ; $52ec: $15
    ld a, $a2                                     ; $52ed: $3e $a2
    ld d, a                                       ; $52ef: $57
    cpl                                           ; $52f0: $2f
    dec de                                        ; $52f1: $1b
    ld a, [hl-]                                   ; $52f2: $3a
    ld d, d                                       ; $52f3: $52
    or d                                          ; $52f4: $b2
    ld c, h                                       ; $52f5: $4c
    jp z, Jump_000_34d6                           ; $52f6: $ca $d6 $34

    inc hl                                        ; $52f9: $23
    add [hl]                                      ; $52fa: $86
    jp nz, $bd3d                                  ; $52fb: $c2 $3d $bd

    db $e3                                        ; $52fe: $e3
    ld c, h                                       ; $52ff: $4c
    ld a, e                                       ; $5300: $7b
    ld a, $dc                                     ; $5301: $3e $dc
    and e                                         ; $5303: $a3
    rst $20                                       ; $5304: $e7
    rst $30                                       ; $5305: $f7
    rst $38                                       ; $5306: $ff
    ret                                           ; $5307: $c9


    sub c                                         ; $5308: $91
    cp l                                          ; $5309: $bd
    sub $09                                       ; $530a: $d6 $09
    add l                                         ; $530c: $85
    ld [$dd40], sp                                ; $530d: $08 $40 $dd
    rst $20                                       ; $5310: $e7
    ld l, l                                       ; $5311: $6d
    cp $67                                        ; $5312: $fe $67
    ccf                                           ; $5314: $3f
    db $10                                        ; $5315: $10
    ld [c], a                                     ; $5316: $e2
    or c                                          ; $5317: $b1
    sub b                                         ; $5318: $90
    add hl, hl                                    ; $5319: $29
    ld e, [hl]                                    ; $531a: $5e
    call nc, $fefc                                ; $531b: $d4 $fc $fe
    rst $08                                       ; $531e: $cf
    ld e, $01                                     ; $531f: $1e $01
    ld c, a                                       ; $5321: $4f
    xor e                                         ; $5322: $ab
    ld [hl], a                                    ; $5323: $77
    push bc                                       ; $5324: $c5
    ld h, e                                       ; $5325: $63
    ld a, l                                       ; $5326: $7d
    ld e, b                                       ; $5327: $58
    dec bc                                        ; $5328: $0b
    ld hl, $5c7c                                  ; $5329: $21 $7c $5c
    ld l, d                                       ; $532c: $6a
    sbc $a6                                       ; $532d: $de $a6
    ld d, a                                       ; $532f: $57
    xor $b3                                       ; $5330: $ee $b3
    pop hl                                        ; $5332: $e1
    dec sp                                        ; $5333: $3b
    ld a, d                                       ; $5334: $7a
    inc [hl]                                      ; $5335: $34
    xor h                                         ; $5336: $ac
    ld e, $9e                                     ; $5337: $1e $9e
    rst $38                                       ; $5339: $ff
    add hl, hl                                    ; $533a: $29
    dec sp                                        ; $533b: $3b
    call c, $f879                                 ; $533c: $dc $79 $f8
    or h                                          ; $533f: $b4
    ld [$cc85], a                                 ; $5340: $ea $85 $cc
    ld hl, sp-$6f                                 ; $5343: $f8 $91
    ld [hl+], a                                   ; $5345: $22
    ld c, e                                       ; $5346: $4b
    daa                                           ; $5347: $27
    cp a                                          ; $5348: $bf
    halt                                          ; $5349: $76
    and a                                         ; $534a: $a7
    dec h                                         ; $534b: $25
    ld a, d                                       ; $534c: $7a
    ld h, d                                       ; $534d: $62
    jp Jump_000_0221                              ; $534e: $c3 $21 $02


    rst $20                                       ; $5351: $e7
    pop hl                                        ; $5352: $e1
    db $d3                                        ; $5353: $d3
    xor d                                         ; $5354: $aa
    ld b, a                                       ; $5355: $47
    ld a, c                                       ; $5356: $79
    ld d, c                                       ; $5357: $51
    dec [hl]                                      ; $5358: $35
    db $e3                                        ; $5359: $e3
    ld b, a                                       ; $535a: $47
    adc d                                         ; $535b: $8a
    call nc, $9172                                ; $535c: $d4 $72 $91
    add sp, -$23                                  ; $535f: $e8 $dd
    ld l, c                                       ; $5361: $69
    adc c                                         ; $5362: $89
    sbc [hl]                                      ; $5363: $9e
    ret c                                         ; $5364: $d8

    ld [hl], b                                    ; $5365: $70
    adc b                                         ; $5366: $88
    nop                                           ; $5367: $00
    ld b, b                                       ; $5368: $40
    ld h, l                                       ; $5369: $65
    sbc b                                         ; $536a: $98
    xor a                                         ; $536b: $af
    ld d, d                                       ; $536c: $52
    ld hl, $e28c                                  ; $536d: $21 $8c $e2
    ld e, e                                       ; $5370: $5b
    db $db                                        ; $5371: $db
    xor h                                         ; $5372: $ac
    inc d                                         ; $5373: $14
    ld h, c                                       ; $5374: $61
    cp a                                          ; $5375: $bf
    and a                                         ; $5376: $a7
    rst $30                                       ; $5377: $f7
    sub e                                         ; $5378: $93
    sub b                                         ; $5379: $90
    ld a, c                                       ; $537a: $79
    jp nc, $f72b                                  ; $537b: $d2 $2b $f7

    reti                                          ; $537e: $d9


    ldh a, [$5d]                                  ; $537f: $f0 $5d
    pop af                                        ; $5381: $f1
    sbc b                                         ; $5382: $98
    ld d, [hl]                                    ; $5383: $56
    ld [hl+], a                                   ; $5384: $22
    dec hl                                        ; $5385: $2b
    pop de                                        ; $5386: $d1
    rrca                                          ; $5387: $0f
    or c                                          ; $5388: $b1
    dec [hl]                                      ; $5389: $35
    dec de                                        ; $538a: $1b
    jp nz, $011e                                  ; $538b: $c2 $1e $01

    ld c, a                                       ; $538e: $4f
    bit 1, [hl]                                   ; $538f: $cb $4e
    sbc l                                         ; $5391: $9d
    ld a, d                                       ; $5392: $7a
    ld a, [$249d]                                 ; $5393: $fa $9d $24
    adc a                                         ; $5396: $8f
    db $10                                        ; $5397: $10
    rrca                                          ; $5398: $0f
    and l                                         ; $5399: $a5
    ld a, [$e5da]                                 ; $539a: $fa $da $e5
    or d                                          ; $539d: $b2
    or c                                          ; $539e: $b1
    ld [hl], d                                    ; $539f: $72
    rra                                           ; $53a0: $1f
    rst $30                                       ; $53a1: $f7
    and e                                         ; $53a2: $a3
    ld l, e                                       ; $53a3: $6b
    rst $38                                       ; $53a4: $ff
    add sp, -$16                                  ; $53a5: $e8 $ea
    sbc b                                         ; $53a7: $98
    add $3c                                       ; $53a8: $c6 $3c
    ld a, $ee                                     ; $53aa: $3e $ee
    ld sp, $ffbf                                  ; $53ac: $31 $bf $ff
    xor a                                         ; $53af: $af
    call c, Call_000_0997                         ; $53b0: $dc $97 $09
    set 3, d                                      ; $53b3: $cb $da
    ld e, d                                       ; $53b5: $5a
    or $90                                        ; $53b6: $f6 $90
    db $10                                        ; $53b8: $10
    cp b                                          ; $53b9: $b8
    daa                                           ; $53ba: $27
    ld a, b                                       ; $53bb: $78
    sbc e                                         ; $53bc: $9b
    call nz, $f947                                ; $53bd: $c4 $47 $f9
    db $ec                                        ; $53c0: $ec
    ld sp, $f6ad                                  ; $53c1: $31 $ad $f6
    rrca                                          ; $53c4: $0f
    ld a, [hl+]                                   ; $53c5: $2a
    push hl                                       ; $53c6: $e5
    dec sp                                        ; $53c7: $3b
    ld h, a                                       ; $53c8: $67
    ld e, $7a                                     ; $53c9: $1e $7a
    ld a, [c]                                     ; $53cb: $f2
    ld b, e                                       ; $53cc: $43
    ld a, [c]                                     ; $53cd: $f2
    sbc [hl]                                      ; $53ce: $9e
    ld c, b                                       ; $53cf: $48
    ld [hl], l                                    ; $53d0: $75
    sbc l                                         ; $53d1: $9d
    dec c                                         ; $53d2: $0d
    ret c                                         ; $53d3: $d8

    cp a                                          ; $53d4: $bf
    adc $e8                                       ; $53d5: $ce $e8
    and [hl]                                      ; $53d7: $a6
    ret z                                         ; $53d8: $c8

    cp b                                          ; $53d9: $b8
    ld d, e                                       ; $53da: $53
    ld a, e                                       ; $53db: $7b
    sbc e                                         ; $53dc: $9b
    rst $38                                       ; $53dd: $ff
    set 0, [hl]                                   ; $53de: $cb $c6
    add h                                         ; $53e0: $84
    sub l                                         ; $53e1: $95
    ld [hl+], a                                   ; $53e2: $22
    cp a                                          ; $53e3: $bf
    ld e, d                                       ; $53e4: $5a
    ld l, d                                       ; $53e5: $6a
    ld h, $a5                                     ; $53e6: $26 $a5
    dec c                                         ; $53e8: $0d

Call_050_53e9:
    ld [hl], h                                    ; $53e9: $74
    ld a, [bc]                                    ; $53ea: $0a
    cp b                                          ; $53eb: $b8
    sub c                                         ; $53ec: $91
    ld d, d                                       ; $53ed: $52
    push af                                       ; $53ee: $f5
    rst $38                                       ; $53ef: $ff
    cp b                                          ; $53f0: $b8
    ld d, e                                       ; $53f1: $53
    db $eb                                        ; $53f2: $eb
    dec h                                         ; $53f3: $25
    or $97                                        ; $53f4: $f6 $97
    adc l                                         ; $53f6: $8d
    push hl                                       ; $53f7: $e5
    sub h                                         ; $53f8: $94
    ld d, [hl]                                    ; $53f9: $56
    add hl, hl                                    ; $53fa: $29
    add d                                         ; $53fb: $82
    inc sp                                        ; $53fc: $33
    adc a                                         ; $53fd: $8f
    inc e                                         ; $53fe: $1c
    dec l                                         ; $53ff: $2d
    dec b                                         ; $5400: $05
    ld [hl], a                                    ; $5401: $77
    ld e, $3e                                     ; $5402: $1e $3e
    db $ed                                        ; $5404: $ed
    add sp, $51                                   ; $5405: $e8 $51
    ld a, $7b                                     ; $5407: $3e $7b
    ld c, h                                       ; $5409: $4c
    xor a                                         ; $540a: $af
    xor [hl]                                      ; $540b: $ae
    dec a                                         ; $540c: $3d
    sub c                                         ; $540d: $91
    jp nz, $2f23                                  ; $540e: $c2 $23 $2f

    ld [hl], c                                    ; $5411: $71
    ld e, d                                       ; $5412: $5a
    ld [hl], d                                    ; $5413: $72
    ld b, l                                       ; $5414: $45
    pop bc                                        ; $5415: $c1
    dec a                                         ; $5416: $3d
    pop hl                                        ; $5417: $e1
    rst $00                                       ; $5418: $c7
    inc l                                         ; $5419: $2c
    or l                                          ; $541a: $b5
    ld [de], a                                    ; $541b: $12
    xor a                                         ; $541c: $af
    ld e, [hl]                                    ; $541d: $5e
    cp c                                          ; $541e: $b9
    ld c, a                                       ; $541f: $4f
    cp a                                          ; $5420: $bf
    and e                                         ; $5421: $a3
    ld a, h                                       ; $5422: $7c
    or $58                                        ; $5423: $f6 $58
    ld a, [$d897]                                 ; $5425: $fa $97 $d8

jr_050_5428:
    ld e, d                                       ; $5428: $5a
    ret z                                         ; $5429: $c8

    cp h                                          ; $542a: $bc
    call $b6ff                                    ; $542b: $cd $ff $b6
    ld e, c                                       ; $542e: $59
    add hl, hl                                    ; $542f: $29
    ld [bc], a                                    ; $5430: $02
    ld hl, $0f44                                  ; $5431: $21 $44 $0f
    ld c, c                                       ; $5434: $49
    cpl                                           ; $5435: $2f
    sub e                                         ; $5436: $93
    sbc d                                         ; $5437: $9a
    dec c                                         ; $5438: $0d
    rra                                           ; $5439: $1f
    ld c, c                                       ; $543a: $49
    ld b, h                                       ; $543b: $44
    ld l, d                                       ; $543c: $6a
    ld a, [de]                                    ; $543d: $1a
    di                                            ; $543e: $f3
    ld hl, sp+$78                                 ; $543f: $f8 $78
    call $fce4                                    ; $5441: $cd $e4 $fc
    ld [$8f01], sp                                ; $5444: $08 $01 $8f
    ld c, e                                       ; $5447: $4b
    ld c, l                                       ; $5448: $4d
    rrca                                          ; $5449: $0f
    rst $18                                       ; $544a: $df
    dec d                                         ; $544b: $15
    rrca                                          ; $544c: $0f
    cp b                                          ; $544d: $b8
    di                                            ; $544e: $f3
    ld h, [hl]                                    ; $544f: $66
    and l                                         ; $5450: $a5
    ld c, b                                       ; $5451: $48
    ret z                                         ; $5452: $c8

    ld c, b                                       ; $5453: $48
    ld c, c                                       ; $5454: $49
    ld h, $31                                     ; $5455: $26 $31
    dec d                                         ; $5457: $15
    cp l                                          ; $5458: $bd
    ld c, h                                       ; $5459: $4c
    ld e, b                                       ; $545a: $58
    sub $8e                                       ; $545b: $d6 $8e
    ld a, [de]                                    ; $545d: $1a
    ld e, a                                       ; $545e: $5f
    ld a, h                                       ; $545f: $7c
    dec bc                                        ; $5460: $0b
    rst $30                                       ; $5461: $f7
    db $f4                                        ; $5462: $f4
    adc [hl]                                      ; $5463: $8e
    db $e3                                        ; $5464: $e3
    ld a, e                                       ; $5465: $7b
    ld e, [hl]                                    ; $5466: $5e
    db $eb                                        ; $5467: $eb
    or b                                          ; $5468: $b0
    dec [hl]                                      ; $5469: $35
    sbc h                                         ; $546a: $9c
    sbc a                                         ; $546b: $9f
    dec c                                         ; $546c: $0d
    add a                                         ; $546d: $87
    ld [$e1e7], sp                                ; $546e: $08 $e7 $e1
    db $e3                                        ; $5471: $e3
    xor [hl]                                      ; $5472: $ae
    ld c, b                                       ; $5473: $48
    ld e, [hl]                                    ; $5474: $5e
    cp d                                          ; $5475: $ba
    cp d                                          ; $5476: $ba
    and $f7                                       ; $5477: $e6 $f7
    rst $38                                       ; $5479: $ff
    ld a, $52                                     ; $547a: $3e $52
    db $e4                                        ; $547c: $e4
    ld e, a                                       ; $547d: $5f
    push hl                                       ; $547e: $e5
    and e                                         ; $547f: $a3
    xor h                                         ; $5480: $ac
    inc d                                         ; $5481: $14
    add hl, bc                                    ; $5482: $09
    rra                                           ; $5483: $1f
    ld [hl], a                                    ; $5484: $77
    ld [$abd9], a                                 ; $5485: $ea $d9 $ab
    ldh [$80], a                                  ; $5488: $e0 $80
    sbc c                                         ; $548a: $99
    or $7c                                        ; $548b: $f6 $7c
    cp b                                          ; $548d: $b8
    rst $08                                       ; $548e: $cf
    ld h, $67                                     ; $548f: $26 $67
    ld h, e                                       ; $5491: $63
    sub [hl]                                      ; $5492: $96
    sbc d                                         ; $5493: $9a
    ld d, a                                       ; $5494: $57
    ld c, a                                       ; $5495: $4f
    dec hl                                        ; $5496: $2b
    or c                                          ; $5497: $b1
    inc sp                                        ; $5498: $33
    ld [hl], h                                    ; $5499: $74
    jr jr_050_5428                                ; $549a: $18 $8c

    call z, $b4a4                                 ; $549c: $cc $a4 $b4
    ld l, c                                       ; $549f: $69
    rlca                                          ; $54a0: $07
    push af                                       ; $54a1: $f5
    ld [$cc69], a                                 ; $54a2: $ea $69 $cc
    db $e3                                        ; $54a5: $e3
    db $e3                                        ; $54a6: $e3
    ld [hl], b                                    ; $54a7: $70
    and b                                         ; $54a8: $a0
    ld e, b                                       ; $54a9: $58
    add hl, hl                                    ; $54aa: $29
    ld d, d                                       ; $54ab: $52
    di                                            ; $54ac: $f3
    ei                                            ; $54ad: $fb
    rst $38                                       ; $54ae: $ff
    reti                                          ; $54af: $d9


jr_050_54b0:
    ld e, $aa                                     ; $54b0: $1e $aa
    sbc e                                         ; $54b2: $9b
    dec b                                         ; $54b3: $05
    ld hl, $c9b4                                  ; $54b4: $21 $b4 $c9
    adc [hl]                                      ; $54b7: $8e
    ld e, [hl]                                    ; $54b8: $5e
    ret z                                         ; $54b9: $c8

    or d                                          ; $54ba: $b2
    sbc e                                         ; $54bb: $9b
    sbc [hl]                                      ; $54bc: $9e
    or a                                          ; $54bd: $b7
    ld sp, hl                                     ; $54be: $f9
    sbc a                                         ; $54bf: $9f
    ld d, h                                       ; $54c0: $54
    ld a, a                                       ; $54c1: $7f
    adc b                                         ; $54c2: $88
    nop                                           ; $54c3: $00
    rst $20                                       ; $54c4: $e7
    pop hl                                        ; $54c5: $e1
    db $d3                                        ; $54c6: $d3
    sbc b                                         ; $54c7: $98
    rst $00                                       ; $54c8: $c7
    rst $00                                       ; $54c9: $c7
    dec a                                         ; $54ca: $3d
    halt                                          ; $54cb: $76

jr_050_54cc:
    push bc                                       ; $54cc: $c5
    inc bc                                        ; $54cd: $03
    ld l, [hl]                                    ; $54ce: $6e
    rst $08                                       ; $54cf: $cf
    ld l, d                                       ; $54d0: $6a
    sub e                                         ; $54d1: $93
    ld h, b                                       ; $54d2: $60
    sbc [hl]                                      ; $54d3: $9e
    ld c, l                                       ; $54d4: $4d
    sub d                                         ; $54d5: $92
    ld d, c                                       ; $54d6: $51
    ld a, $7b                                     ; $54d7: $3e $7b
    adc h                                         ; $54d9: $8c
    ld e, c                                       ; $54da: $59
    ld l, d                                       ; $54db: $6a
    jp hl                                         ; $54dc: $e9


    ld d, e                                       ; $54dd: $53
    inc sp                                        ; $54de: $33
    ld l, e                                       ; $54df: $6b
    add [hl]                                      ; $54e0: $86
    or d                                          ; $54e1: $b2
    ld b, a                                       ; $54e2: $47
    adc a                                         ; $54e3: $8f
    ld c, e                                       ; $54e4: $4b
    ld c, l                                       ; $54e5: $4d
    inc sp                                        ; $54e6: $33
    jr c, jr_050_5547                             ; $54e7: $38 $5e

    ld [hl], $f2                                  ; $54e9: $36 $f2
    jp z, Jump_000_367d                           ; $54eb: $ca $7d $36

    ld e, c                                       ; $54ee: $59
    ld h, $c9                                     ; $54ef: $26 $c9
    rst $38                                       ; $54f1: $ff
    ld sp, $baed                                  ; $54f2: $31 $ed $ba
    rst $10                                       ; $54f5: $d7
    or h                                          ; $54f6: $b4
    db $eb                                        ; $54f7: $eb
    ld h, a                                       ; $54f8: $67
    inc bc                                        ; $54f9: $03
    ld h, a                                       ; $54fa: $67
    call c, $21a3                                 ; $54fb: $dc $a3 $21
    ld [bc], a                                    ; $54fe: $02
    adc a                                         ; $54ff: $8f
    ld c, e                                       ; $5500: $4b
    call Call_050_58db                            ; $5501: $cd $db $58
    dec de                                        ; $5504: $1b
    dec hl                                        ; $5505: $2b
    rst $30                                       ; $5506: $f7
    reti                                          ; $5507: $d9


    ldh a, [$65]                                  ; $5508: $f0 $65
    sub d                                         ; $550a: $92
    db $fc                                        ; $550b: $fc
    rra                                           ; $550c: $1f
    db $d3                                        ; $550d: $d3
    xor e                                         ; $550e: $ab
    ld l, e                                       ; $550f: $6b
    ld c, a                                       ; $5510: $4f
    and h                                         ; $5511: $a4
    ldh a, [$80]                                  ; $5512: $f0 $80
    ld a, e                                       ; $5514: $7b
    jr z, jr_050_54b0                             ; $5515: $28 $99

    ld e, $4d                                     ; $5517: $1e $4d
    xor d                                         ; $5519: $aa
    and a                                         ; $551a: $a7
    sub l                                         ; $551b: $95
    rst $10                                       ; $551c: $d7
    add sp, $55                                   ; $551d: $e8 $55
    db $10                                        ; $551f: $10
    ld bc, $e1e7                                  ; $5520: $01 $e7 $e1
    ld d, e                                       ; $5523: $53
    and a                                         ; $5524: $a7
    sbc [hl]                                      ; $5525: $9e
    ld d, [hl]                                    ; $5526: $56
    ld [bc], a                                    ; $5527: $02
    rst $30                                       ; $5528: $f7
    ld d, b                                       ; $5529: $50
    ld [hl-], a                                   ; $552a: $32
    xor l                                         ; $552b: $ad
    cp h                                          ; $552c: $bc
    ld l, h                                       ; $552d: $6c
    call z, $195e                                 ; $552e: $cc $5e $19
    ld d, a                                       ; $5531: $57
    dec a                                         ; $5532: $3d
    sub e                                         ; $5533: $93
    ld [hl+], a                                   ; $5534: $22
    sbc c                                         ; $5535: $99
    sbc a                                         ; $5536: $9f
    inc e                                         ; $5537: $1c
    dec a                                         ; $5538: $3d
    dec de                                        ; $5539: $1b
    ld d, e                                       ; $553a: $53
    scf                                           ; $553b: $37
    ld b, l                                       ; $553c: $45
    add [hl]                                      ; $553d: $86
    di                                            ; $553e: $f3
    ld a, e                                       ; $553f: $7b
    jr nc, jr_050_54cc                            ; $5540: $30 $8a

    ld d, c                                       ; $5542: $51
    or l                                          ; $5543: $b5
    rst $20                                       ; $5544: $e7
    ld sp, hl                                     ; $5545: $f9
    db $fd                                        ; $5546: $fd

jr_050_5547:
    ccf                                           ; $5547: $3f
    rla                                           ; $5548: $17
    and l                                         ; $5549: $a5
    dec h                                         ; $554a: $25
    add hl, de                                    ; $554b: $19
    ld [hl+], a                                   ; $554c: $22
    adc a                                         ; $554d: $8f
    ld c, e                                       ; $554e: $4b
    dec l                                         ; $554f: $2d
    di                                            ; $5550: $f3
    ld l, d                                       ; $5551: $6a
    or $aa                                        ; $5552: $f6 $aa
    sbc c                                         ; $5554: $99
    sub h                                         ; $5555: $94
    or [hl]                                       ; $5556: $b6
    daa                                           ; $5557: $27
    ld d, d                                       ; $5558: $52
    ld a, b                                       ; $5559: $78
    call z, $ffef                                 ; $555a: $cc $ef $ff
    cp c                                          ; $555d: $b9
    jr z, jr_050_558d                             ; $555e: $28 $2d

    ret                                           ; $5560: $c9


    ld [hl], b                                    ; $5561: $70
    ld h, b                                       ; $5562: $60
    jp hl                                         ; $5563: $e9


    or h                                          ; $5564: $b4
    sub d                                         ; $5565: $92
    ld e, l                                       ; $5566: $5d
    pop af                                        ; $5567: $f1
    sbc b                                         ; $5568: $98
    ld e, [hl]                                    ; $5569: $5e
    cp l                                          ; $556a: $bd
    ldh [$3c], a                                  ; $556b: $e0 $3c
    ld a, d                                       ; $556d: $7a
    db $f4                                        ; $556e: $f4
    ld a, [hl+]                                   ; $556f: $2a
    ld [$e661], sp                                ; $5570: $08 $61 $e6
    ld b, a                                       ; $5573: $47
    ld sp, hl                                     ; $5574: $f9
    db $ec                                        ; $5575: $ec
    ld sp, $64ad                                  ; $5576: $31 $ad $64
    ld e, d                                       ; $5579: $5a
    ld c, l                                       ; $557a: $4d
    xor a                                         ; $557b: $af
    cp [hl]                                       ; $557c: $be
    cp [hl]                                       ; $557d: $be
    ldh [$3c], a                                  ; $557e: $e0 $3c
    ld a, d                                       ; $5580: $7a
    or $2a                                        ; $5581: $f6 $2a
    or $08                                        ; $5583: $f6 $08
    adc a                                         ; $5585: $8f
    db $eb                                        ; $5586: $eb
    ld l, h                                       ; $5587: $6c
    ld [hl], $7c                                  ; $5588: $36 $7c
    ld a, d                                       ; $558a: $7a
    push af                                       ; $558b: $f5
    or h                                          ; $558c: $b4

jr_050_558d:
    ld [de], a                                    ; $558d: $12
    cp b                                          ; $558e: $b8
    daa                                           ; $558f: $27
    inc l                                         ; $5590: $2c
    or c                                          ; $5591: $b1
    dec hl                                        ; $5592: $2b
    rst $30                                       ; $5593: $f7
    ld bc, $09fb                                  ; $5594: $01 $fb $09
    rst $00                                       ; $5597: $c7
    or c                                          ; $5598: $b1
    halt                                          ; $5599: $76
    push bc                                       ; $559a: $c5
    ld h, e                                       ; $559b: $63
    jp hl                                         ; $559c: $e9


    ldh a, [$95]                                  ; $559d: $f0 $95
    ld a, $cd                                     ; $559f: $3e $cd
    adc b                                         ; $55a1: $88
    and c                                         ; $55a2: $a1
    ld c, e                                       ; $55a3: $4b
    add a                                         ; $55a4: $87
    add h                                         ; $55a5: $84
    adc a                                         ; $55a6: $8f
    dec sp                                        ; $55a7: $3b
    ld [hl], l                                    ; $55a8: $75
    or $9a                                        ; $55a9: $f6 $9a
    ld [c], a                                     ; $55ab: $e2
    ld b, l                                       ; $55ac: $45
    add l                                         ; $55ad: $85
    ld c, h                                       ; $55ae: $4c
    dec hl                                        ; $55af: $2b
    ld e, c                                       ; $55b0: $59
    halt                                          ; $55b1: $76
    add e                                         ; $55b2: $83
    db $e3                                        ; $55b3: $e3
    ld h, l                                       ; $55b4: $65
    ld h, e                                       ; $55b5: $63
    db $f4                                        ; $55b6: $f4
    ld a, [hl+]                                   ; $55b7: $2a
    adc b                                         ; $55b8: $88
    nop                                           ; $55b9: $00
    and b                                         ; $55ba: $a0
    ld b, e                                       ; $55bb: $43
    ld h, [hl]                                    ; $55bc: $66
    add sp, -$4c                                  ; $55bd: $e8 $b4
    sub d                                         ; $55bf: $92
    ld e, l                                       ; $55c0: $5d
    pop af                                        ; $55c1: $f1
    sbc b                                         ; $55c2: $98
    ld h, [hl]                                    ; $55c3: $66
    cp h                                          ; $55c4: $bc
    ld l, h                                       ; $55c5: $6c
    call z, Call_050_755e                         ; $55c6: $cc $5e $75
    ld [hl], $3d                                  ; $55c9: $36 $3d
    add sp, -$0c                                  ; $55cb: $e8 $f4
    ld [$f0d9], a                                 ; $55cd: $ea $d9 $f0
    ld e, c                                       ; $55d0: $59
    cp $11                                        ; $55d1: $fe $11
    ld [bc], a                                    ; $55d3: $02
    rst $20                                       ; $55d4: $e7
    pop hl                                        ; $55d5: $e1
    db $d3                                        ; $55d6: $d3
    xor e                                         ; $55d7: $ab
    ld b, a                                       ; $55d8: $47
    xor a                                         ; $55d9: $af
    adc h                                         ; $55da: $8c
    ld e, $d9                                     ; $55db: $1e $d9
    xor e                                         ; $55dd: $ab
    inc bc                                        ; $55de: $03
    xor $a1                                       ; $55df: $ee $a1
    ld h, h                                       ; $55e1: $64
    sub h                                         ; $55e2: $94
    rst $08                                       ; $55e3: $cf
    ld e, $d3                                     ; $55e4: $1e $d3
    xor e                                         ; $55e6: $ab
    ld l, e                                       ; $55e7: $6b

Call_050_55e8:
    ld a, [de]                                    ; $55e8: $1a
    rst $18                                       ; $55e9: $df
    halt                                          ; $55ea: $76
    call nc, $e8f8                                ; $55eb: $d4 $f8 $e8
    ld d, l                                       ; $55ee: $55
    ld [hl], b                                    ; $55ef: $70
    rrca                                          ; $55f0: $0f
    dec h                                         ; $55f1: $25
    dec sp                                        ; $55f2: $3b

Jump_050_55f3:
    ld a, d                                       ; $55f3: $7a
    sbc c                                         ; $55f4: $99
    ld e, a                                       ; $55f5: $5f
    or $6a                                        ; $55f6: $f6 $6a
    ld [hl], d                                    ; $55f8: $72
    ld [hl], $93                                  ; $55f9: $36 $93
    jp nc, $2cc6                                  ; $55fb: $d2 $c6 $2c

    or l                                          ; $55fe: $b5
    and e                                         ; $55ff: $a3
    sub a                                         ; $5600: $97
    push af                                       ; $5601: $f5
    ld d, d                                       ; $5602: $52
    db $10                                        ; $5603: $10
    ld b, d                                       ; $5604: $42
    inc b                                         ; $5605: $04
    ld c, a                                       ; $5606: $4f
    xor e                                         ; $5607: $ab
    and a                                         ; $5608: $a7
    sub l                                         ; $5609: $95
    ld c, h                                       ; $560a: $4c
    dec sp                                        ; $560b: $3b
    ld a, d                                       ; $560c: $7a
    jr c, @-$3f                                   ; $560d: $38 $bf

    rlca                                          ; $560f: $07
    and e                                         ; $5610: $a3
    jr @+$57                                      ; $5611: $18 $55

    ld a, e                                       ; $5613: $7b
    ld a, $1b                                     ; $5614: $3e $1b
    dec c                                         ; $5616: $0d
    dec sp                                        ; $5617: $3b
    ld a, e                                       ; $5618: $7b
    push de                                       ; $5619: $d5
    inc hl                                        ; $561a: $23
    or $08                                        ; $561b: $f6 $08
    rrca                                          ; $561d: $0f
    dec h                                         ; $561e: $25
    dec sp                                        ; $561f: $3b
    ld a, d                                       ; $5620: $7a
    push af                                       ; $5621: $f5
    cp a                                          ; $5622: $bf
    ld e, a                                       ; $5623: $5f
    dec sp                                        ; $5624: $3b
    ld a, [de]                                    ; $5625: $1a
    halt                                          ; $5626: $76
    db $f4                                        ; $5627: $f4
    ld a, [hl+]                                   ; $5628: $2a
    cp b                                          ; $5629: $b8
    add a                                         ; $562a: $87
    and e                                         ; $562b: $a3
    rst $08                                       ; $562c: $cf
    ld h, [hl]                                    ; $562d: $66
    ld h, e                                       ; $562e: $63
    jp c, $3bd1                                   ; $562f: $da $d1 $3b

    ld a, d                                       ; $5632: $7a
    ld a, [hl]                                    ; $5633: $7e
    rst $38                                       ; $5634: $ff
    sbc a                                         ; $5635: $9f
    cp l                                          ; $5636: $bd
    ld a, [bc]                                    ; $5637: $0a
    ld [hl+], a                                   ; $5638: $22
    rst $20                                       ; $5639: $e7
    ret                                           ; $563a: $c9


    adc [hl]                                      ; $563b: $8e
    ld e, [hl]                                    ; $563c: $5e
    db $fd                                        ; $563d: $fd
    ld l, a                                       ; $563e: $6f
    db $e3                                        ; $563f: $e3
    ld b, a                                       ; $5640: $47
    ld e, $77                                     ; $5641: $1e $77
    ld [$8b09], a                                 ; $5643: $ea $09 $8b
    cp e                                          ; $5646: $bb
    inc h                                         ; $5647: $24
    db $e4                                        ; $5648: $e4
    ld l, h                                       ; $5649: $6c
    ldh [$8c], a                                  ; $564a: $e0 $8c
    ld a, e                                       ; $564c: $7b
    inc [hl]                                      ; $564d: $34
    call c, Call_050_52e3                         ; $564e: $dc $e3 $52
    di                                            ; $5651: $f3
    ld [$2569], a                                 ; $5652: $ea $69 $25
    halt                                          ; $5655: $76
    add [hl]                                      ; $5656: $86
    adc $5e                                       ; $5657: $ce $5e
    dec [hl]                                      ; $5659: $35
    add hl, sp                                    ; $565a: $39
    ld a, d                                       ; $565b: $7a
    call z, $d352                                 ; $565c: $cc $52 $d3
    xor d                                         ; $565f: $aa
    sub a                                         ; $5660: $97
    adc b                                         ; $5661: $88
    adc l                                         ; $5662: $8d
    adc $27                                       ; $5663: $ce $27
    ld [c], a                                     ; $5665: $e2
    or e                                          ; $5666: $b3
    ld hl, $8ed3                                  ; $5667: $21 $d3 $8e
    sbc $15                                       ; $566a: $de $15
    rst $28                                       ; $566c: $ef
    ret z                                         ; $566d: $c8

    cp c                                          ; $566e: $b9
    call nz, $196b                                ; $566f: $c4 $6b $19
    rrca                                          ; $5672: $0f
    dec d                                         ; $5673: $15
    ld e, a                                       ; $5674: $5f
    ldh [rNR34], a                                ; $5675: $e0 $1e
    sub a                                         ; $5677: $97
    sbc d                                         ; $5678: $9a
    or a                                          ; $5679: $b7
    jp hl                                         ; $567a: $e9


    sub l                                         ; $567b: $95
    ei                                            ; $567c: $fb
    ld l, h                                       ; $567d: $6c
    ret z                                         ; $567e: $c8

    adc [hl]                                      ; $567f: $8e
    sbc [hl]                                      ; $5680: $9e
    or b                                          ; $5681: $b0
    ld d, d                                       ; $5682: $52
    inc h                                         ; $5683: $24
    cp [hl]                                       ; $5684: $be
    call z, $ffef                                 ; $5685: $cc $ef $ff
    dec hl                                        ; $5688: $2b
    rst $30                                       ; $5689: $f7
    ld [hl], c                                    ; $568a: $71
    ld d, a                                       ; $568b: $57
    and h                                         ; $568c: $a4
    or $c4                                        ; $568d: $f6 $c4
    ld b, e                                       ; $568f: $43
    ld b, d                                       ; $5690: $42
    jr nz, jr_050_5695                            ; $5691: $20 $02

    adc a                                         ; $5693: $8f
    ld c, e                                       ; $5694: $4b

jr_050_5695:
    dec l                                         ; $5695: $2d
    ld b, a                                       ; $5696: $47
    rst $28                                       ; $5697: $ef
    adc c                                         ; $5698: $89
    add a                                         ; $5699: $87

Jump_050_569a:
    add h                                         ; $569a: $84
    sbc h                                         ; $569b: $9c
    adc l                                         ; $569c: $8d
    add [hl]                                      ; $569d: $86
    adc h                                         ; $569e: $8c
    ld e, c                                       ; $569f: $59
    ld l, d                                       ; $56a0: $6a
    call c, $b3a9                                 ; $56a1: $dc $a9 $b3
    di                                            ; $56a4: $f3
    cp l                                          ; $56a5: $bd
    dec hl                                        ; $56a6: $2b
    ld e, $70                                     ; $56a7: $1e $70
    rst $08                                       ; $56a9: $cf
    push af                                       ; $56aa: $f5
    ld l, h                                       ; $56ab: $6c
    ret z                                         ; $56ac: $c8

    xor [hl]                                      ; $56ad: $ae
    ld c, b                                       ; $56ae: $48
    db $ec                                        ; $56af: $ec
    ld l, $e3                                     ; $56b0: $2e $e3
    and c                                         ; $56b2: $a1
    ld [c], a                                     ; $56b3: $e2
    res 4, e                                      ; $56b4: $cb $a3
    dec a                                         ; $56b6: $3d
    inc h                                         ; $56b7: $24
    dec a                                         ; $56b8: $3d
    ld l, $11                                     ; $56b9: $2e $11
    dec d                                         ; $56bb: $15
    ld e, l                                       ; $56bc: $5d
    dec a                                         ; $56bd: $3d
    dec de                                        ; $56be: $1b
    ld a, [c]                                     ; $56bf: $f2
    ld l, b                                       ; $56c0: $68
    rrca                                          ; $56c1: $0f
    call z, $e3e3                                 ; $56c2: $cc $e3 $e3
    and e                                         ; $56c5: $a3
    ld d, a                                       ; $56c6: $57
    sbc l                                         ; $56c7: $9d
    adc l                                         ; $56c8: $8d
    ld e, $d9                                     ; $56c9: $1e $d9
    xor e                                         ; $56cb: $ab
    add e                                         ; $56cc: $83
    dec a                                         ; $56cd: $3d
    ld [bc], a                                    ; $56ce: $02
    add b                                         ; $56cf: $80
    ret nz                                        ; $56d0: $c0

    inc a                                         ; $56d1: $3c
    ld a, l                                       ; $56d2: $7d
    ld c, $cc                                     ; $56d3: $0e $cc
    ld sp, hl                                     ; $56d5: $f9
    ret nz                                        ; $56d6: $c0

jr_050_56d7:
    add c                                         ; $56d7: $81
    ld a, l                                       ; $56d8: $7d
    inc c                                         ; $56d9: $0c
    ld [de], a                                    ; $56da: $12
    jr z, jr_050_56f5                             ; $56db: $28 $18

    adc b                                         ; $56dd: $88
    nop                                           ; $56de: $00
    adc a                                         ; $56df: $8f
    dec bc                                        ; $56e0: $0b
    ld b, d                                       ; $56e1: $42
    ld c, b                                       ; $56e2: $48
    inc c                                         ; $56e3: $0c
    sbc l                                         ; $56e4: $9d
    halt                                          ; $56e5: $76
    db $fd                                        ; $56e6: $fd
    ld l, h                                       ; $56e7: $6c
    cp b                                          ; $56e8: $b8
    ld h, c                                       ; $56e9: $61
    sub d                                         ; $56ea: $92
    or e                                          ; $56eb: $b3
    sbc c                                         ; $56ec: $99
    sub h                                         ; $56ed: $94
    ld [hl], $af                                  ; $56ee: $36 $af
    ld e, a                                       ; $56f0: $5f
    inc sp                                        ; $56f1: $33
    ld [hl], h                                    ; $56f2: $74
    ld a, d                                       ; $56f3: $7a
    reti                                          ; $56f4: $d9


jr_050_56f5:
    reti                                          ; $56f5: $d9


    ld h, h                                       ; $56f6: $64
    add hl, sp                                    ; $56f7: $39
    ld a, [de]                                    ; $56f8: $1a

jr_050_56f9:
    ld [hl+], a                                   ; $56f9: $22
    rst $20                                       ; $56fa: $e7
    ld hl, $7a3b                                  ; $56fb: $21 $3b $7a
    ld a, d                                       ; $56fe: $7a
    inc [hl]                                      ; $56ff: $34
    ld sp, hl                                     ; $5700: $f9
    ld d, a                                       ; $5701: $57
    ld b, c                                       ; $5702: $41
    ld [$e8ef], sp                                ; $5703: $08 $ef $e8
    sub l                                         ; $5706: $95
    ld [hl], c                                    ; $5707: $71
    scf                                           ; $5708: $37
    ld b, l                                       ; $5709: $45
    ld a, [bc]                                    ; $570a: $0a
    ld b, d                                       ; $570b: $42
    ret z                                         ; $570c: $c8

    inc l                                         ; $570d: $2c
    dec [hl]                                      ; $570e: $35
    xor l                                         ; $570f: $ad
    ld a, d                                       ; $5710: $7a
    ld [hl], $04                                  ; $5711: $36 $04
    ld b, d                                       ; $5713: $42
    adc b                                         ; $5714: $88
    nop                                           ; $5715: $00
    ld c, a                                       ; $5716: $4f
    db $eb                                        ; $5717: $eb
    ld de, $8f02                                  ; $5718: $11 $02 $8f
    ld c, e                                       ; $571b: $4b
    dec l                                         ; $571c: $2d
    ld b, a                                       ; $571d: $47
    adc a                                         ; $571e: $8f
    ld e, [hl]                                    ; $571f: $5e
    or l                                          ; $5720: $b5
    call z, $be3c                                 ; $5721: $cc $3c $be
    ld a, [hl]                                    ; $5724: $7e
    ld [hl], $1a                                  ; $5725: $36 $1a
    halt                                          ; $5727: $76
    ldh [$93], a                                  ; $5728: $e0 $93
    ld l, e                                       ; $572a: $6b
    db $ed                                        ; $572b: $ed
    push af                                       ; $572c: $f5
    sub h                                         ; $572d: $94
    add [hl]                                      ; $572e: $86
    dec de                                        ; $572f: $1b
    ld d, d                                       ; $5730: $52
    ccf                                           ; $5731: $3f
    inc b                                         ; $5732: $04
    ld [hl+], a                                   ; $5733: $22
    rrca                                          ; $5734: $0f
    add b                                         ; $5735: $80
    ret nz                                        ; $5736: $c0

    inc c                                         ; $5737: $0c
    call nc, Call_050_4c63                        ; $5738: $d4 $63 $4c
    ret nz                                        ; $573b: $c0

    add c                                         ; $573c: $81
    ld h, d                                       ; $573d: $62
    add b                                         ; $573e: $80
    ld a, e                                       ; $573f: $7b
    add d                                         ; $5740: $82
    ld de, $1828                                  ; $5741: $11 $28 $18
    and b                                         ; $5744: $a0
    ld h, b                                       ; $5745: $60
    ld b, $0a                                     ; $5746: $06 $0a
    inc b                                         ; $5748: $04
    ld [hl], b                                    ; $5749: $70
    ldh [rLCDC], a                                ; $574a: $e0 $40
    ld sp, $c40c                                  ; $574c: $31 $0c $c4
    ld e, $00                                     ; $574f: $1e $00
    add c                                         ; $5751: $81
    ld a, c                                       ; $5752: $79
    ld [hl-], a                                   ; $5753: $32
    ld h, b                                       ; $5754: $60
    jr nz, jr_050_56d7                            ; $5755: $20 $80

    add b                                         ; $5757: $80
    inc b                                         ; $5758: $04
    inc b                                         ; $5759: $04
    ld de, $804f                                  ; $575a: $11 $4f $80
    ld h, d                                       ; $575d: $62
    ret c                                         ; $575e: $d8

    add hl, sp                                    ; $575f: $39

jr_050_5760:
    and [hl]                                      ; $5760: $a6
    dec a                                         ; $5761: $3d
    dec b                                         ; $5762: $05
    ld [hl], h                                    ; $5763: $74
    cp [hl]                                       ; $5764: $be
    ld [hl], e                                    ; $5765: $73
    and b                                         ; $5766: $a0
    jr jr_050_5760                                ; $5767: $18 $f7

    nop                                           ; $5769: $00
    ld [$00c3], sp                                ; $576a: $08 $c3 $00
    add e                                         ; $576d: $83
    ld [bc], a                                    ; $576e: $02
    pop af                                        ; $576f: $f1
    inc d                                         ; $5770: $14
    inc b                                         ; $5771: $04
    add $01                                       ; $5772: $c6 $01
    ld a, d                                       ; $5774: $7a
    ld a, [hl-]                                   ; $5775: $3a

jr_050_5776:
    ret nc                                        ; $5776: $d0

    jr nz, jr_050_56f9                            ; $5777: $20 $80

    ccf                                           ; $5779: $3f
    jp c, Jump_050_4063                           ; $577a: $da $63 $40

    ret nz                                        ; $577d: $c0

    add a                                         ; $577e: $87

jr_050_577f:
    ld de, $8610                                  ; $577f: $11 $10 $86
    ld bc, $8406                                  ; $5782: $01 $06 $84
    ld bc, $80d0                                  ; $5785: $01 $d0 $80
    add c                                         ; $5788: $81
    push bc                                       ; $5789: $c5
    nop                                           ; $578a: $00
    ld a, d                                       ; $578b: $7a
    ld h, b                                       ; $578c: $60
    sbc [hl]                                      ; $578d: $9e
    jp $c7b0                                      ; $578e: $c3 $b0 $c7


    add b                                         ; $5791: $80
    add b                                         ; $5792: $80
    rrca                                          ; $5793: $0f
    ret c                                         ; $5794: $d8

    or e                                          ; $5795: $b3
    jr jr_050_580e                                ; $5796: $18 $76

    ld c, $14                                     ; $5798: $0e $14
    inc d                                         ; $579a: $14
    and b                                         ; $579b: $a0
    add c                                         ; $579c: $81

jr_050_579d:
    ld a, c                                       ; $579d: $79
    ld d, $38                                     ; $579e: $16 $38
    ld e, b                                       ; $57a0: $58
    jr nc, jr_050_57f2                            ; $57a1: $30 $4f

    ld b, $12                                     ; $57a3: $06 $12
    inc bc                                        ; $57a5: $03

Jump_050_57a6:
    ld e, b                                       ; $57a6: $58
    ld [hl], b                                    ; $57a7: $70

jr_050_57a8:
    ldh [$e0], a                                  ; $57a8: $e0 $e0
    ld b, b                                       ; $57aa: $40

Call_050_57ab:
    inc bc                                        ; $57ab: $03
    dec b                                         ; $57ac: $05
    inc sp                                        ; $57ad: $33
    jr nc, jr_050_577f                            ; $57ae: $30 $cf

    ld h, c                                       ; $57b0: $61
    ret c                                         ; $57b1: $d8

    ld h, e                                       ; $57b2: $63
    ld b, b                                       ; $57b3: $40
    ret nz                                        ; $57b4: $c0

    rst $30                                       ; $57b5: $f7
    db $f4                                        ; $57b6: $f4
    add hl, sp                                    ; $57b7: $39
    ld d, b                                       ; $57b8: $50
    inc bc                                        ; $57b9: $03
    or $2c                                        ; $57ba: $f6 $2c
    add [hl]                                      ; $57bc: $86
    add c                                         ; $57bd: $81
    ld [bc], a                                    ; $57be: $02
    pop af                                        ; $57bf: $f1
    db $f4                                        ; $57c0: $f4
    add hl, bc                                    ; $57c1: $09
    ld d, b                                       ; $57c2: $50
    ld d, b                                       ; $57c3: $50
    jr nz, jr_050_5776                            ; $57c4: $20 $b0

    add b                                         ; $57c6: $80
    ret nz                                        ; $57c7: $c0

    nop                                           ; $57c8: $00
    inc d                                         ; $57c9: $14
    db $e3                                        ; $57ca: $e3
    ld b, b                                       ; $57cb: $40
    ld [bc], a                                    ; $57cc: $02
    ld [bc], a                                    ; $57cd: $02
    or e                                          ; $57ce: $b3
    rst $00                                       ; $57cf: $c7
    add b                                         ; $57d0: $80
    add b                                         ; $57d1: $80
    rst $28                                       ; $57d2: $ef
    add hl, bc                                    ; $57d3: $09
    ld c, b                                       ; $57d4: $48
    ld b, b                                       ; $57d5: $40
    ldh [rP1], a                                  ; $57d6: $e0 $00
    dec c                                         ; $57d8: $0d
    inc [hl]                                      ; $57d9: $34
    ld [$03e0], sp                                ; $57da: $08 $e0 $03
    ld a, [bc]                                    ; $57dd: $0a
    ld h, [hl]                                    ; $57de: $66
    ld h, b                                       ; $57df: $60
    or b                                          ; $57e0: $b0
    ld c, $24                                     ; $57e1: $0e $24
    ld b, $b0                                     ; $57e3: $06 $b0
    ldh [$c0], a                                  ; $57e5: $e0 $c0
    pop bc                                        ; $57e7: $c1
    dec a                                         ; $57e8: $3d
    ld a, c                                       ; $57e9: $79
    halt                                          ; $57ea: $76
    ret nz                                        ; $57eb: $c0

    add c                                         ; $57ec: $81
    ld c, $34                                     ; $57ed: $0e $34
    ld [$7be0], sp                                ; $57ef: $08 $e0 $7b

jr_050_57f2:
    add d                                         ; $57f2: $82
    ld de, $1828                                  ; $57f3: $11 $28 $18

jr_050_57f6:
    and b                                         ; $57f6: $a0
    ld h, b                                       ; $57f7: $60
    ld b, $14                                     ; $57f8: $06 $14
    inc d                                         ; $57fa: $14
    jr z, jr_050_579d                             ; $57fb: $28 $a0

    jr jr_050_5875                                ; $57fd: $18 $76

    adc [hl]                                      ; $57ff: $8e
    ld a, l                                       ; $5800: $7d
    ld c, a                                       ; $5801: $4f
    ret nz                                        ; $5802: $c0

    add d                                         ; $5803: $82
    sbc $39                                       ; $5804: $de $39
    ld [$8030], sp                                ; $5806: $08 $30 $80
    ld b, $0c                                     ; $5809: $06 $0c
    dec sp                                        ; $580b: $3b
    add [hl]                                      ; $580c: $86
    rst $20                                       ; $580d: $e7

jr_050_580e:
    ld b, b                                       ; $580e: $40
    sbc l                                         ; $580f: $9d
    ld h, e                                       ; $5810: $63
    nop                                           ; $5811: $00
    add h                                         ; $5812: $84
    ld h, c                                       ; $5813: $61
    ret nz                                        ; $5814: $c0

    rra                                           ; $5815: $1f
    add e                                         ; $5816: $83
    push bc                                       ; $5817: $c5
    ld [hl], b                                    ; $5818: $70
    ld c, $14                                     ; $5819: $0e $14
    ld b, d                                       ; $581b: $42
    ld [$e81a], sp                                ; $581c: $08 $1a $e8
    add hl, sp                                    ; $581f: $39
    jr nz, jr_050_5852                            ; $5820: $20 $30

    dec sp                                        ; $5822: $3b
    rlca                                          ; $5823: $07
    ld a, [hl-]                                   ; $5824: $3a
    adc h                                         ; $5825: $8c
    jr nz, jr_050_57a8                            ; $5826: $20 $80

    inc bc                                        ; $5828: $03
    ccf                                           ; $5829: $3f
    rlca                                          ; $582a: $07
    ld a, [hl-]                                   ; $582b: $3a
    or b                                          ; $582c: $b0
    and b                                         ; $582d: $a0
    rlca                                          ; $582e: $07
    inc c                                         ; $582f: $0c
    dec sp                                        ; $5830: $3b
    add [hl]                                      ; $5831: $86
    daa                                           ; $5832: $27
    jr nz, jr_050_57f6                            ; $5833: $20 $c1

    add d                                         ; $5835: $82
    ld bc, $0601                                  ; $5836: $01 $01 $06
    jr c, @+$46                                   ; $5839: $38 $44

    and b                                         ; $583b: $a0
    ld c, [hl]                                    ; $583c: $4e
    ld c, d                                       ; $583d: $4a
    xor d                                         ; $583e: $aa
    add e                                         ; $583f: $83
    dec a                                         ; $5840: $3d
    ld [bc], a                                    ; $5841: $02
    ret nz                                        ; $5842: $c0

    adc l                                         ; $5843: $8d
    ld e, l                                       ; $5844: $5d
    ld [hl], b                                    ; $5845: $70
    ld e, $4d                                     ; $5846: $1e $4d
    xor a                                         ; $5848: $af
    or l                                          ; $5849: $b5
    and l                                         ; $584a: $a5
    adc $f6                                       ; $584b: $ce $f6
    ld d, b                                       ; $584d: $50
    db $dd                                        ; $584e: $dd
    inc l                                         ; $584f: $2c
    adc b                                         ; $5850: $88
    nop                                           ; $5851: $00

jr_050_5852:
    ld c, a                                       ; $5852: $4f
    inc a                                         ; $5853: $3c
    inc h                                         ; $5854: $24
    add h                                         ; $5855: $84
    db $fd                                        ; $5856: $fd
    ret nz                                        ; $5857: $c0

    daa                                           ; $5858: $27
    or a                                          ; $5859: $b7
    dec sp                                        ; $585a: $3b
    cp $9f                                        ; $585b: $fe $9f
    ld d, [hl]                                    ; $585d: $56
    dec a                                         ; $585e: $3d
    dec de                                        ; $585f: $1b
    jp nz, $011e                                  ; $5860: $c2 $1e $01

    ld h, b                                       ; $5863: $60
    add d                                         ; $5864: $82
    ld a, c                                       ; $5865: $79
    ld [hl], $66                                  ; $5866: $36 $66
    xor c                                         ; $5868: $a9
    ld de, $7743                                  ; $5869: $11 $43 $77
    rst $20                                       ; $586c: $e7
    rst $10                                       ; $586d: $d7
    adc [hl]                                      ; $586e: $8e
    dec sp                                        ; $586f: $3b
    push af                                       ; $5870: $f5
    jp z, $dc7d                                   ; $5871: $ca $7d $dc

    xor c                                         ; $5874: $a9

jr_050_5875:
    or l                                          ; $5875: $b5
    dec hl                                        ; $5876: $2b
    or [hl]                                       ; $5877: $b6
    ld l, e                                       ; $5878: $6b
    ld [hl], $fc                                  ; $5879: $36 $fc
    ld l, h                                       ; $587b: $6c
    inc [hl]                                      ; $587c: $34
    ld h, h                                       ; $587d: $64
    ld [hl], $19                                  ; $587e: $36 $19
    ld sp, hl                                     ; $5880: $f9
    push de                                       ; $5881: $d5
    ld h, l                                       ; $5882: $65
    ld h, e                                       ; $5883: $63
    or $aa                                        ; $5884: $f6 $aa
    ld d, c                                       ; $5886: $51
    ld d, [hl]                                    ; $5887: $56
    adc d                                         ; $5888: $8a
    add h                                         ; $5889: $84
    cpl                                           ; $588a: $2f
    db $dd                                        ; $588b: $dd
    dec [hl]                                      ; $588c: $35
    sbc h                                         ; $588d: $9c
    ld e, a                                       ; $588e: $5f
    xor b                                         ; $588f: $a8
    sub b                                         ; $5890: $90
    ld l, c                                       ; $5891: $69
    dec h                                         ; $5892: $25
    ld d, $22                                     ; $5893: $16 $22
    adc a                                         ; $5895: $8f
    ld c, e                                       ; $5896: $4b
    ld c, l                                       ; $5897: $4d
    xor e                                         ; $5898: $ab
    sbc [hl]                                      ; $5899: $9e
    ldh a, [$aa]                                  ; $589a: $f0 $aa
    ld l, e                                       ; $589c: $6b
    ld e, h                                       ; $589d: $5c
    di                                            ; $589e: $f3
    jp z, $dc34                                   ; $589f: $ca $34 $dc

    ld [hl], e                                    ; $58a2: $73
    cp l                                          ; $58a3: $bd
    and a                                         ; $58a4: $a7

jr_050_58a5:
    and $db                                       ; $58a5: $e6 $db
    and b                                         ; $58a7: $a0
    and [hl]                                      ; $58a8: $a6
    ld a, l                                       ; $58a9: $7d
    or $64                                        ; $58aa: $f6 $64
    rra                                           ; $58ac: $1f
    ld hl, $8260                                  ; $58ad: $21 $60 $82
    add hl, bc                                    ; $58b0: $09
    or a                                          ; $58b1: $b7
    di                                            ; $58b2: $f3
    ldh a, [$65]                                  ; $58b3: $f0 $65
    ld b, e                                       ; $58b5: $43
    ld [hl], a                                    ; $58b6: $77
    push bc                                       ; $58b7: $c5
    ld h, e                                       ; $58b8: $63
    ld b, a                                       ; $58b9: $47
    xor a                                         ; $58ba: $af
    cpl                                           ; $58bb: $2f
    pop af                                        ; $58bc: $f1
    xor e                                         ; $58bd: $ab
    ld a, h                                       ; $58be: $7c
    ccf                                           ; $58bf: $3f
    db $f4                                        ; $58c0: $f4
    ld [de], a                                    ; $58c1: $12
    dec de                                        ; $58c2: $1b
    inc hl                                        ; $58c3: $23
    dec h                                         ; $58c4: $25
    cp e                                          ; $58c5: $bb
    ld [c], a                                     ; $58c6: $e2
    ld sp, $b27b                                  ; $58c7: $31 $7b $b2
    sub l                                         ; $58ca: $95
    pop hl                                        ; $58cb: $e1
    ld e, $4a                                     ; $58cc: $1e $4a
    halt                                          ; $58ce: $76
    db $f4                                        ; $58cf: $f4
    jr c, jr_050_58a5                             ; $58d0: $38 $d3

    adc $55                                       ; $58d2: $ce $55
    sub a                                         ; $58d4: $97
    ret c                                         ; $58d5: $d8

    sbc b                                         ; $58d6: $98
    dec a                                         ; $58d7: $3d
    ld a, d                                       ; $58d8: $7a
    adc c                                         ; $58d9: $89
    rst $00                                       ; $58da: $c7

Call_050_58db:
    add h                                         ; $58db: $84
    ld d, a                                       ; $58dc: $57
    ld b, [hl]                                    ; $58dd: $46
    or d                                          ; $58de: $b2
    sub a                                         ; $58df: $97
    ld h, h                                       ; $58e0: $64
    ld [$0221], sp                                ; $58e1: $08 $21 $02
    ld h, b                                       ; $58e4: $60
    ld d, e                                       ; $58e5: $53
    jp c, Jump_050_664c                           ; $58e6: $da $4c $66

    ret                                           ; $58e9: $c9


    cp a                                          ; $58ea: $bf
    ld c, d                                       ; $58eb: $4a
    dec bc                                        ; $58ec: $0b
    rst $08                                       ; $58ed: $cf
    or h                                          ; $58ee: $b4
    call nz, $cbe3                                ; $58ef: $c4 $e3 $cb
    ld e, [hl]                                    ; $58f2: $5e
    sbc [hl]                                      ; $58f3: $9e
    ld e, [hl]                                    ; $58f4: $5e
    dec a                                         ; $58f5: $3d
    dec de                                        ; $58f6: $1b
    ld a, $b9                                     ; $58f7: $3e $b9
    res 0, [hl]                                   ; $58f9: $cb $86
    ld l, $93                                     ; $58fb: $2e $93
    sbc e                                         ; $58fd: $9b
    ld [hl+], a                                   ; $58fe: $22
    ld h, l                                       ; $58ff: $65
    ld h, e                                       ; $5900: $63
    ld [hl], $64                                  ; $5901: $36 $64
    ld a, [hl]                                    ; $5903: $7e
    rst $38                                       ; $5904: $ff
    rra                                           ; $5905: $1f
    cp l                                          ; $5906: $bd
    ld [$0211], a                                 ; $5907: $ea $11 $02
    rst $20                                       ; $590a: $e7
    ld d, a                                       ; $590b: $57
    add [hl]                                      ; $590c: $86
    rla                                           ; $590d: $17
    adc [hl]                                      ; $590e: $8e
    rst $10                                       ; $590f: $d7
    cp $41                                        ; $5910: $fe $41
    and l                                         ; $5912: $a5
    ld l, h                                       ; $5913: $6c
    call z, $ec86                                 ; $5914: $cc $86 $ec
    adc [hl]                                      ; $5917: $8e
    ld e, [hl]                                    ; $5918: $5e
    rst $30                                       ; $5919: $f7
    ld [hl], c                                    ; $591a: $71
    and a                                         ; $591b: $a7
    sub $ab                                       ; $591c: $d6 $ab
    pop hl                                        ; $591e: $e1
    ld e, $97                                     ; $591f: $1e $97
    sbc d                                         ; $5921: $9a
    rra                                           ; $5922: $1f
    ld b, d                                       ; $5923: $42
    inc a                                         ; $5924: $3c
    ld d, [hl]                                    ; $5925: $56
    xor $b3                                       ; $5926: $ee $b3
    ret                                           ; $5928: $c9


    ld c, b                                       ; $5929: $48
    ld c, c                                       ; $592a: $49
    ld h, $b1                                     ; $592b: $26 $b1
    ld c, h                                       ; $592d: $4c
    sub d                                         ; $592e: $92
    rst $38                                       ; $592f: $ff
    ld h, e                                       ; $5930: $63
    adc $4a                                       ; $5931: $ce $4a
    sub c                                         ; $5933: $91
    sbc d                                         ; $5934: $9a
    and c                                         ; $5935: $a1
    or e                                          ; $5936: $b3
    ld hl, $0110                                  ; $5937: $21 $10 $01
    rst $20                                       ; $593a: $e7
    pop hl                                        ; $593b: $e1
    dec sp                                        ; $593c: $3b
    ld a, d                                       ; $593d: $7a
    jp nz, Jump_050_5f8b                          ; $593e: $c2 $8b $5f

    ld d, c                                       ; $5941: $51
    and e                                         ; $5942: $a3
    pop de                                        ; $5943: $d1
    db $10                                        ; $5944: $10
    ld b, d                                       ; $5945: $42
    inc b                                         ; $5946: $04
    ret nz                                        ; $5947: $c0

    sbc d                                         ; $5948: $9a
    ld d, a                                       ; $5949: $57
    dec [hl]                                      ; $594a: $35
    sbc h                                         ; $594b: $9c
    add a                                         ; $594c: $87
    ld [$ab4f], sp                                ; $594d: $08 $4f $ab
    cp c                                          ; $5950: $b9
    ld d, e                                       ; $5951: $53
    ld c, a                                       ; $5952: $4f
    dec hl                                        ; $5953: $2b
    xor a                                         ; $5954: $af
    ld e, $de                                     ; $5955: $1e $de
    add [hl]                                      ; $5957: $86
    adc e                                         ; $5958: $8b
    sbc h                                         ; $5959: $9c
    ld c, l                                       ; $595a: $4d
    rst $28                                       ; $595b: $ef
    adc c                                         ; $595c: $89
    inc d                                         ; $595d: $14
    ld e, $a3                                     ; $595e: $1e $a3
    ld d, a                                       ; $5960: $57
    dec a                                         ; $5961: $3d
    ld b, d                                       ; $5962: $42
    rst $20                                       ; $5963: $e7
    ld d, a                                       ; $5964: $57
    add [hl]                                      ; $5965: $86
    rla                                           ; $5966: $17
    adc [hl]                                      ; $5967: $8e
    rst $10                                       ; $5968: $d7
    ld a, [$b6b0]                                 ; $5969: $fa $b0 $b6
    ld l, h                                       ; $596c: $6c
    ld c, h                                       ; $596d: $4c
    dec hl                                        ; $596e: $2b
    ret                                           ; $596f: $c9


    ei                                            ; $5970: $fb
    ld d, a                                       ; $5971: $57
    sbc a                                         ; $5972: $9f
    ld c, c                                       ; $5973: $49
    ld l, c                                       ; $5974: $69
    db $d3                                        ; $5975: $d3
    ld c, d                                       ; $5976: $4a
    sub [hl]                                      ; $5977: $96
    sbc l                                         ; $5978: $9d
    rst $28                                       ; $5979: $ef
    ld e, l                                       ; $597a: $5d
    pop af                                        ; $597b: $f1
    ld e, b                                       ; $597c: $58
    ld [c], a                                     ; $597d: $e2
    and e                                         ; $597e: $a3
    ld h, c                                       ; $597f: $61
    ld d, a                                       ; $5980: $57
    xor $cb                                       ; $5981: $ee $cb
    adc $ef                                       ; $5983: $ce $ef
    ld l, $93                                     ; $5985: $2e $93
    db $e4                                        ; $5987: $e4
    db $db                                        ; $5988: $db
    ld sp, hl                                     ; $5989: $f9
    db $fd                                        ; $598a: $fd
    ld a, a                                       ; $598b: $7f
    sbc d                                         ; $598c: $9a
    ld de, $e143                                  ; $598d: $11 $43 $e1
    ld e, $97                                     ; $5990: $1e $97
    sbc d                                         ; $5992: $9a
    or a                                          ; $5993: $b7
    jp hl                                         ; $5994: $e9


    sub l                                         ; $5995: $95
    ei                                            ; $5996: $fb
    ld l, h                                       ; $5997: $6c
    ld hl, sp-$72                                 ; $5998: $f8 $8e
    sbc [hl]                                      ; $599a: $9e
    dec a                                         ; $599b: $3d
    sbc d                                         ; $599c: $9a
    dec sp                                        ; $599d: $3b
    push af                                       ; $599e: $f5
    or h                                          ; $599f: $b4
    sub d                                         ; $59a0: $92
    ld l, c                                       ; $59a1: $69
    push de                                       ; $59a2: $d5
    res 0, h                                      ; $59a3: $cb $84
    ld h, l                                       ; $59a5: $65
    ld l, l                                       ; $59a6: $6d
    ld sp, hl                                     ; $59a7: $f9
    db $ec                                        ; $59a8: $ec
    ld d, l                                       ; $59a9: $55
    db $d3                                        ; $59aa: $d3
    ld [c], a                                     ; $59ab: $e2
    rst $10                                       ; $59ac: $d7
    ld hl, sp+$0e                                 ; $59ad: $f8 $0e
    add a                                         ; $59af: $87
    ld a, e                                       ; $59b0: $7b
    ld h, d                                       ; $59b1: $62
    add sp, -$4c                                  ; $59b2: $e8 $b4
    sub d                                         ; $59b4: $92
    push hl                                       ; $59b5: $e5

Jump_050_59b6:
    add sp, -$27                                  ; $59b6: $e8 $d9
    ldh a, [$65]                                  ; $59b8: $f0 $65
    sub d                                         ; $59ba: $92
    db $fc                                        ; $59bb: $fc
    rra                                           ; $59bc: $1f
    or e                                          ; $59bd: $b3
    pop hl                                        ; $59be: $e1
    ld d, e                                       ; $59bf: $53
    and a                                         ; $59c0: $a7
    xor [hl]                                      ; $59c1: $ae
    ld l, c                                       ; $59c2: $69
    ld b, [hl]                                    ; $59c3: $46
    inc c                                         ; $59c4: $0c
    sbc l                                         ; $59c5: $9d
    ld c, c                                       ; $59c6: $49
    ld l, c                                       ; $59c7: $69
    or e                                          ; $59c8: $b3
    ld d, a                                       ; $59c9: $57
    add [hl]                                      ; $59ca: $86
    rla                                           ; $59cb: $17
    adc [hl]                                      ; $59cc: $8e
    rst $10                                       ; $59cd: $d7
    adc b                                         ; $59ce: $88
    ld a, [hl]                                    ; $59cf: $7e
    db $dd                                        ; $59d0: $dd
    ld hl, $0f02                                  ; $59d1: $21 $02 $0f
    ld c, c                                       ; $59d4: $49
    adc a                                         ; $59d5: $8f
    cp e                                          ; $59d6: $bb
    add hl, hl                                    ; $59d7: $29
    ld [hl-], a                                   ; $59d8: $32
    ld h, [hl]                                    ; $59d9: $66
    xor c                                         ; $59da: $a9
    dec h                                         ; $59db: $25
    cp [hl]                                       ; $59dc: $be
    daa                                           ; $59dd: $27
    ld e, $12                                     ; $59de: $1e $12
    or d                                          ; $59e0: $b2
    and h                                         ; $59e1: $a4
    sub a                                         ; $59e2: $97
    pop af                                        ; $59e3: $f1
    ld d, b                                       ; $59e4: $50
    pop af                                        ; $59e5: $f1
    push hl                                       ; $59e6: $e5
    ld de, $8f02                                  ; $59e7: $11 $02 $8f
    ld c, e                                       ; $59ea: $4b
    adc l                                         ; $59eb: $8d
    dec sp                                        ; $59ec: $3b
    or l                                          ; $59ed: $b5
    or a                                          ; $59ee: $b7
    ld sp, hl                                     ; $59ef: $f9
    cp a                                          ; $59f0: $bf
    ld l, h                                       ; $59f1: $6c
    inc l                                         ; $59f2: $2c
    db $e3                                        ; $59f3: $e3
    and c                                         ; $59f4: $a1
    ld [c], a                                     ; $59f5: $e2
    swap d                                        ; $59f6: $cb $32
    cp a                                          ; $59f8: $bf
    ld [hl], d                                    ; $59f9: $72
    ld e, a                                       ; $59fa: $5f
    cp d                                          ; $59fb: $ba
    cp d                                          ; $59fc: $ba
    ld h, [hl]                                    ; $59fd: $66
    ld b, e                                       ; $59fe: $43
    sub [hl]                                      ; $59ff: $96
    dec c                                         ; $5a00: $0d
    sbc l                                         ; $5a01: $9d
    ld a, [hl]                                    ; $5a02: $7e
    rst $38                                       ; $5a03: $ff
    adc a                                         ; $5a04: $8f
    ld l, c                                       ; $5a05: $69
    rst $10                                       ; $5a06: $d7
    cp l                                          ; $5a07: $bd
    or $c4                                        ; $5a08: $f6 $c4
    ld b, e                                       ; $5a0a: $43
    ld b, d                                       ; $5a0b: $42
    or $f2                                        ; $5a0c: $f6 $f2
    or h                                          ; $5a0e: $b4
    db $eb                                        ; $5a0f: $eb
    ld e, [hl]                                    ; $5a10: $5e
    or e                                          ; $5a11: $b3
    ld hl, $a367                                  ; $5a12: $21 $67 $a3
    ld hl, $e2bb                                  ; $5a15: $21 $bb $e2
    or c                                          ; $5a18: $b1
    ld [de], a                                    ; $5a19: $12
    db $fd                                        ; $5a1a: $fd
    db $10                                        ; $5a1b: $10
    ld e, e                                       ; $5a1c: $5b
    or e                                          ; $5a1d: $b3
    ld hl, $797b                                  ; $5a1e: $21 $7b $79
    sbc c                                         ; $5a21: $99
    inc h                                         ; $5a22: $24
    rst $38                                       ; $5a23: $ff
    rst $00                                       ; $5a24: $c7
    ld c, b                                       ; $5a25: $48
    ld [hl+], a                                   ; $5a26: $22
    ld d, d                                       ; $5a27: $52
    db $e3                                        ; $5a28: $e3
    ld hl, sp+$79                                 ; $5a29: $f8 $79
    xor c                                         ; $5a2b: $a9
    pop hl                                        ; $5a2c: $e1
    db $fc                                        ; $5a2d: $fc
    ld l, h                                       ; $5a2e: $6c
    ld [$d3dc], sp                                ; $5a2f: $08 $dc $d3
    ei                                            ; $5a32: $fb
    ld l, e                                       ; $5a33: $6b
    sub d                                         ; $5a34: $92
    sbc h                                         ; $5a35: $9c
    db $ed                                        ; $5a36: $ed
    and c                                         ; $5a37: $a1
    cp d                                          ; $5a38: $ba
    ld e, c                                       ; $5a39: $59
    ld [hl], b                                    ; $5a3a: $70
    rst $20                                       ; $5a3b: $e7
    pop hl                                        ; $5a3c: $e1
    dec sp                                        ; $5a3d: $3b
    ld a, d                                       ; $5a3e: $7a
    ld e, c                                       ; $5a3f: $59
    xor d                                         ; $5a40: $aa
    ld a, l                                       ; $5a41: $7d
    or [hl]                                       ; $5a42: $b6
    ld d, h                                       ; $5a43: $54
    ld e, $77                                     ; $5a44: $1e $77
    ld [$9e95], a                                 ; $5a46: $ea $95 $9e
    ld a, a                                       ; $5a49: $7f
    ld [c], a                                     ; $5a4a: $e2
    ld [hl], d                                    ; $5a4b: $72
    ld b, l                                       ; $5a4c: $45
    ld h, l                                       ; $5a4d: $65
    ld l, $b2                                     ; $5a4e: $2e $b2

Call_050_5a50:
    add a                                         ; $5a50: $87
    ld b, b                                       ; $5a51: $40
    inc b                                         ; $5a52: $04
    jr nz, jr_050_5a99                            ; $5a53: $20 $44

    ld c, d                                       ; $5a55: $4a
    sub [hl]                                      ; $5a56: $96
    ld l, $21                                     ; $5a57: $2e $21
    pop hl                                        ; $5a59: $e1
    ld e, $b2                                     ; $5a5a: $1e $b2
    db $f4                                        ; $5a5c: $f4
    xor c                                         ; $5a5d: $a9
    sbc c                                         ; $5a5e: $99
    push de                                       ; $5a5f: $d5
    and e                                         ; $5a60: $a3
    ld a, h                                       ; $5a61: $7c
    or $98                                        ; $5a62: $f6 $98
    ld a, [hl]                                    ; $5a64: $7e
    ld h, a                                       ; $5a65: $67
    db $e3                                        ; $5a66: $e3
    rst $10                                       ; $5a67: $d7
    ld [de], a                                    ; $5a68: $12
    ld e, a                                       ; $5a69: $5f
    db $fc                                        ; $5a6a: $fc
    ret nc                                        ; $5a6b: $d0

    or l                                          ; $5a6c: $b5
    and b                                         ; $5a6d: $a0
    add hl, de                                    ; $5a6e: $19
    scf                                           ; $5a6f: $37
    and h                                         ; $5a70: $a4
    ld a, [hl]                                    ; $5a71: $7e
    ld [$e81c], sp                                ; $5a72: $08 $1c $e8
    sub b                                         ; $5a75: $90
    ld [hl], c                                    ; $5a76: $71
    and a                                         ; $5a77: $a7
    adc $3e                                       ; $5a78: $ce $3e
    jp z, $8f67                                   ; $5a7a: $ca $67 $8f

    add hl, bc                                    ; $5a7d: $09
    db $eb                                        ; $5a7e: $eb
    ld e, a                                       ; $5a7f: $5f
    dec d                                         ; $5a80: $15
    or d                                          ; $5a81: $b2
    dec hl                                        ; $5a82: $2b
    sbc $07                                       ; $5a83: $de $07
    rst $00                                       ; $5a85: $c7
    sub l                                         ; $5a86: $95
    adc l                                         ; $5a87: $8d
    ld l, c                                       ; $5a88: $69
    add a                                         ; $5a89: $87
    ret c                                         ; $5a8a: $d8

    ld hl, sp+$39                                 ; $5a8b: $f8 $39
    ld a, d                                       ; $5a8d: $7a
    ld e, [hl]                                    ; $5a8e: $5e
    ld a, c                                       ; $5a8f: $79
    inc [hl]                                      ; $5a90: $34
    db $ec                                        ; $5a91: $ec
    xor $d2                                       ; $5a92: $ee $d2
    pop de                                        ; $5a94: $d1
    rlca                                          ; $5a95: $07
    sub c                                         ; $5a96: $91
    dec hl                                        ; $5a97: $2b
    ld a, [hl+]                                   ; $5a98: $2a

jr_050_5a99:
    ld h, h                                       ; $5a99: $64
    ld h, $a5                                     ; $5a9a: $26 $a5
    dec c                                         ; $5a9c: $0d
    scf                                           ; $5a9d: $37
    add a                                         ; $5a9e: $87
    xor b                                         ; $5a9f: $a8
    reti                                          ; $5aa0: $d9


    ld hl, sp-$6b                                 ; $5aa1: $f8 $95
    sub a                                         ; $5aa3: $97
    jr c, jr_050_5aea                             ; $5aa4: $38 $44

    jr nz, jr_050_5aec                            ; $5aa6: $20 $44

    ld c, d                                       ; $5aa8: $4a
    sub [hl]                                      ; $5aa9: $96
    ld l, $21                                     ; $5aaa: $2e $21
    pop hl                                        ; $5aac: $e1
    ld e, $b2                                     ; $5aad: $1e $b2
    db $f4                                        ; $5aaf: $f4
    xor c                                         ; $5ab0: $a9
    sbc c                                         ; $5ab1: $99
    push de                                       ; $5ab2: $d5
    and e                                         ; $5ab3: $a3
    ld a, h                                       ; $5ab4: $7c
    or $98                                        ; $5ab5: $f6 $98
    ld a, [hl]                                    ; $5ab7: $7e
    ld h, a                                       ; $5ab8: $67
    db $e3                                        ; $5ab9: $e3
    rst $10                                       ; $5aba: $d7
    ld [de], a                                    ; $5abb: $12
    ld e, a                                       ; $5abc: $5f
    db $fc                                        ; $5abd: $fc
    ret nc                                        ; $5abe: $d0

    or l                                          ; $5abf: $b5
    and b                                         ; $5ac0: $a0
    add hl, de                                    ; $5ac1: $19
    scf                                           ; $5ac2: $37
    and h                                         ; $5ac3: $a4
    ld a, [hl]                                    ; $5ac4: $7e
    ld [$b01c], sp                                ; $5ac5: $08 $1c $b0
    ld d, e                                       ; $5ac8: $53
    rst $08                                       ; $5ac9: $cf
    rst $28                                       ; $5aca: $ef
    rst $38                                       ; $5acb: $ff
    call c, Call_050_7ff1                         ; $5acc: $dc $f1 $7f
    ld hl, sp+$7e                                 ; $5acf: $f8 $7e
    ret c                                         ; $5ad1: $d8

    add sp, $3d                                   ; $5ad2: $e8 $3d
    ld sp, hl                                     ; $5ad4: $f9
    inc l                                         ; $5ad5: $2c
    rst $10                                       ; $5ad6: $d7
    and d                                         ; $5ad7: $a2
    xor a                                         ; $5ad8: $af
    ret nz                                        ; $5ad9: $c0

    add c                                         ; $5ada: $81
    ld c, $99                                     ; $5adb: $0e $99
    or b                                          ; $5add: $b0
    cp $55                                        ; $5ade: $fe $55
    ld hl, $e2bb                                  ; $5ae0: $21 $bb $e2
    ld a, l                                       ; $5ae3: $7d
    ld [hl], b                                    ; $5ae4: $70
    ld e, h                                       ; $5ae5: $5c
    reti                                          ; $5ae6: $d9


    sbc b                                         ; $5ae7: $98
    halt                                          ; $5ae8: $76
    adc b                                         ; $5ae9: $88

jr_050_5aea:
    adc l                                         ; $5aea: $8d
    sbc a                                         ; $5aeb: $9f

jr_050_5aec:
    and e                                         ; $5aec: $a3
    ld b, a                                       ; $5aed: $47
    ld sp, hl                                     ; $5aee: $f9
    db $ec                                        ; $5aef: $ec
    ld sp, $3caf                                  ; $5af0: $31 $af $3c
    ld a, [de]                                    ; $5af3: $1a
    halt                                          ; $5af4: $76
    ld [hl], a                                    ; $5af5: $77
    jp hl                                         ; $5af6: $e9


    add sp, -$7d                                  ; $5af7: $e8 $83
    ret z                                         ; $5af9: $c8

    dec d                                         ; $5afa: $15
    dec d                                         ; $5afb: $15
    ld [hl-], a                                   ; $5afc: $32
    sub e                                         ; $5afd: $93
    jp nc, $9b86                                  ; $5afe: $d2 $86 $9b

    ld b, e                                       ; $5b01: $43
    call nc, $9f28                                ; $5b02: $d4 $28 $9f

jr_050_5b05:
    dec a                                         ; $5b05: $3d
    ld h, [hl]                                    ; $5b06: $66
    db $e3                                        ; $5b07: $e3
    ld d, a                                       ; $5b08: $57
    ld e, [hl]                                    ; $5b09: $5e
    ld [c], a                                     ; $5b0a: $e2
    db $10                                        ; $5b0b: $10
    ld bc, $4420                                  ; $5b0c: $01 $20 $44
    ld c, d                                       ; $5b0f: $4a
    sub [hl]                                      ; $5b10: $96
    ld l, $21                                     ; $5b11: $2e $21
    pop hl                                        ; $5b13: $e1
    ld e, $b2                                     ; $5b14: $1e $b2
    db $f4                                        ; $5b16: $f4
    xor c                                         ; $5b17: $a9
    sbc c                                         ; $5b18: $99
    push de                                       ; $5b19: $d5
    inc hl                                        ; $5b1a: $23
    add [hl]                                      ; $5b1b: $86
    jp nc, Jump_000_31e8                          ; $5b1c: $d2 $e8 $31

    ld c, e                                       ; $5b1f: $4b
    xor l                                         ; $5b20: $ad
    call c, $e367                                 ; $5b21: $dc $67 $e3
    rst $10                                       ; $5b24: $d7
    ld [de], a                                    ; $5b25: $12
    ld e, a                                       ; $5b26: $5f
    db $fc                                        ; $5b27: $fc
    ret nc                                        ; $5b28: $d0

    or l                                          ; $5b29: $b5
    and b                                         ; $5b2a: $a0
    add hl, de                                    ; $5b2b: $19
    scf                                           ; $5b2c: $37
    and h                                         ; $5b2d: $a4
    ld a, [hl]                                    ; $5b2e: $7e
    ld [$b01c], sp                                ; $5b2f: $08 $1c $b0
    ld d, e                                       ; $5b32: $53
    ld c, a                                       ; $5b33: $4f
    adc [hl]                                      ; $5b34: $8e
    sub $ab                                       ; $5b35: $d6 $ab
    ld c, e                                       ; $5b37: $4b
    ld l, h                                       ; $5b38: $6c
    db $ec                                        ; $5b39: $ec
    add a                                         ; $5b3a: $87
    adc l                                         ; $5b3b: $8d
    ld e, $86                                     ; $5b3c: $1e $86
    jp nc, Jump_050_5243                          ; $5b3e: $d2 $43 $52

    cp a                                          ; $5b41: $bf
    jr jr_050_5b05                                ; $5b42: $18 $c1

    add c                                         ; $5b44: $81
    ld c, $99                                     ; $5b45: $0e $99
    or b                                          ; $5b47: $b0
    cp $55                                        ; $5b48: $fe $55
    ld hl, $e2bb                                  ; $5b4a: $21 $bb $e2
    ld a, l                                       ; $5b4d: $7d
    ld [hl], b                                    ; $5b4e: $70
    ld e, h                                       ; $5b4f: $5c
    reti                                          ; $5b50: $d9


    sbc b                                         ; $5b51: $98
    halt                                          ; $5b52: $76
    adc b                                         ; $5b53: $88
    adc l                                         ; $5b54: $8d
    sbc a                                         ; $5b55: $9f

Call_050_5b56:
    and e                                         ; $5b56: $a3
    ld b, a                                       ; $5b57: $47
    ld sp, hl                                     ; $5b58: $f9
    db $ec                                        ; $5b59: $ec
    ld sp, $3caf                                  ; $5b5a: $31 $af $3c
    ld a, [de]                                    ; $5b5d: $1a
    halt                                          ; $5b5e: $76
    ld [hl], a                                    ; $5b5f: $77
    jp hl                                         ; $5b60: $e9


    add sp, -$7d                                  ; $5b61: $e8 $83
    ret z                                         ; $5b63: $c8

    dec d                                         ; $5b64: $15
    dec d                                         ; $5b65: $15
    ld [bc], a                                    ; $5b66: $02
    ld de, $4420                                  ; $5b67: $11 $20 $44
    ld c, d                                       ; $5b6a: $4a
    sub [hl]                                      ; $5b6b: $96
    ld l, $21                                     ; $5b6c: $2e $21
    pop hl                                        ; $5b6e: $e1
    ld e, $b2                                     ; $5b6f: $1e $b2
    db $f4                                        ; $5b71: $f4
    xor c                                         ; $5b72: $a9
    sbc c                                         ; $5b73: $99
    push de                                       ; $5b74: $d5
    res 4, h                                      ; $5b75: $cb $a4
    cp $5f                                        ; $5b77: $fe $5f
    db $fc                                        ; $5b79: $fc
    ret nc                                        ; $5b7a: $d0

    or l                                          ; $5b7b: $b5
    and b                                         ; $5b7c: $a0
    add hl, de                                    ; $5b7d: $19
    scf                                           ; $5b7e: $37
    and h                                         ; $5b7f: $a4
    ld a, [hl]                                    ; $5b80: $7e
    ret z                                         ; $5b81: $c8

    ld l, h                                       ; $5b82: $6c
    db $fc                                        ; $5b83: $fc
    jp z, Jump_000_1c4b                           ; $5b84: $ca $4b $1c

    ld c, $d8                                     ; $5b87: $0e $d8
    xor c                                         ; $5b89: $a9
    daa                                           ; $5b8a: $27
    ld b, a                                       ; $5b8b: $47
    db $eb                                        ; $5b8c: $eb
    push de                                       ; $5b8d: $d5
    dec h                                         ; $5b8e: $25
    ld [hl], $f6                                  ; $5b8f: $36 $f6
    jp $ef46                                      ; $5b91: $c3 $46 $ef


    ld hl, $b8e1                                  ; $5b94: $21 $e1 $b8
    rra                                           ; $5b97: $1f
    ld a, b                                       ; $5b98: $78
    jp nz, Jump_050_7071                          ; $5b99: $c2 $71 $70

    and b                                         ; $5b9c: $a0
    ld b, e                                       ; $5b9d: $43
    ld h, $ac                                     ; $5b9e: $26 $ac
    ld a, a                                       ; $5ba0: $7f
    ld d, l                                       ; $5ba1: $55
    ret z                                         ; $5ba2: $c8

    xor [hl]                                      ; $5ba3: $ae
    ld a, b                                       ; $5ba4: $78
    rra                                           ; $5ba5: $1f
    inc e                                         ; $5ba6: $1c
    ld d, a                                       ; $5ba7: $57
    ld [hl], $a6                                  ; $5ba8: $36 $a6
    dec e                                         ; $5baa: $1d
    ld h, d                                       ; $5bab: $62
    db $e3                                        ; $5bac: $e3
    rst $20                                       ; $5bad: $e7
    add sp, $51                                   ; $5bae: $e8 $51
    ld a, $7b                                     ; $5bb0: $3e $7b
    call z, $8f2b                                 ; $5bb2: $cc $2b $8f
    add [hl]                                      ; $5bb5: $86
    db $dd                                        ; $5bb6: $dd
    ld e, l                                       ; $5bb7: $5d
    ld a, [hl-]                                   ; $5bb8: $3a
    ld a, [$7220]                                 ; $5bb9: $fa $20 $72
    ld b, l                                       ; $5bbc: $45
    add l                                         ; $5bbd: $85
    ld b, b                                       ; $5bbe: $40
    inc b                                         ; $5bbf: $04
    jr @-$0f                                      ; $5bc0: $18 $ef

    rst $38                                       ; $5bc2: $ff
    jp $6460                                      ; $5bc3: $c3 $60 $64


    sbc b                                         ; $5bc6: $98
    and e                                         ; $5bc7: $a3
    ld a, [c]                                     ; $5bc8: $f2
    rrca                                          ; $5bc9: $0f
    sub $d9                                       ; $5bca: $d6 $d9
    cp b                                          ; $5bcc: $b8
    ld d, e                                       ; $5bcd: $53
    cpl                                           ; $5bce: $2f
    ld [hl], c                                    ; $5bcf: $71
    ld a, d                                       ; $5bd0: $7a
    inc [hl]                                      ; $5bd1: $34
    pop af                                        ; $5bd2: $f1
    push hl                                       ; $5bd3: $e5
    sub h                                         ; $5bd4: $94
    ld d, [hl]                                    ; $5bd5: $56
    add hl, hl                                    ; $5bd6: $29
    sub d                                         ; $5bd7: $92
    cp l                                          ; $5bd8: $bd
    bit 0, e                                      ; $5bd9: $cb $43
    db $dd                                        ; $5bdb: $dd
    or e                                          ; $5bdc: $b3
    dec h                                         ; $5bdd: $25
    ld l, [hl]                                    ; $5bde: $6e
    db $e3                                        ; $5bdf: $e3
    ld d, a                                       ; $5be0: $57
    adc a                                         ; $5be1: $8f
    ld e, c                                       ; $5be2: $59
    ld l, d                                       ; $5be3: $6a
    ld l, a                                       ; $5be4: $6f
    cp l                                          ; $5be5: $bd
    ld a, [hl-]                                   ; $5be6: $3a
    call c, $a21c                                 ; $5be7: $dc $1c $a2
    and $f7                                       ; $5bea: $e6 $f7
    rst $38                                       ; $5bec: $ff
    ld bc, $166f                                  ; $5bed: $01 $6f $16
    rst $00                                       ; $5bf0: $c7
    ld e, l                                       ; $5bf1: $5d
    or c                                          ; $5bf2: $b1
    and [hl]                                      ; $5bf3: $a6
    ld hl, $1802                                  ; $5bf4: $21 $02 $18
    rst $28                                       ; $5bf7: $ef
    rst $38                                       ; $5bf8: $ff
    ld a, e                                       ; $5bf9: $7b
    adc b                                         ; $5bfa: $88
    and [hl]                                      ; $5bfb: $a6
    rst $10                                       ; $5bfc: $d7
    ld c, b                                       ; $5bfd: $48
    inc c                                         ; $5bfe: $0c
    ld a, b                                       ; $5bff: $78
    sub a                                         ; $5c00: $97
    xor b                                         ; $5c01: $a8
    add sp, -$4d                                  ; $5c02: $e8 $b3
    ld [hl], c                                    ; $5c04: $71
    and a                                         ; $5c05: $a7
    ld e, [hl]                                    ; $5c06: $5e
    cp d                                          ; $5c07: $ba
    inc de                                        ; $5c08: $13
    or d                                          ; $5c09: $b2
    jp nc, $5847                                  ; $5c0a: $d2 $47 $58

    rst $38                                       ; $5c0d: $ff
    xor d                                         ; $5c0e: $aa
    ld a, l                                       ; $5c0f: $7d
    and e                                         ; $5c10: $a3
    ld l, $d9                                     ; $5c11: $2e $d9
    dec e                                         ; $5c13: $1d
    dec a                                         ; $5c14: $3d
    ld a, c                                       ; $5c15: $79
    ld hl, sp+$68                                 ; $5c16: $f8 $68
    ret c                                         ; $5c18: $d8

    push bc                                       ; $5c19: $c5
    or a                                          ; $5c1a: $b7
    ld h, a                                       ; $5c1b: $67
    ld c, e                                       ; $5c1c: $4b
    call c, $afc6                                 ; $5c1d: $dc $c6 $af
    ld e, $b3                                     ; $5c20: $1e $b3
    call nc, Call_050_7ade                        ; $5c22: $d4 $de $7a
    ld [hl], l                                    ; $5c25: $75

jr_050_5c26:
    cp b                                          ; $5c26: $b8
    add hl, sp                                    ; $5c27: $39
    ld b, h                                       ; $5c28: $44
    call $ffef                                    ; $5c29: $cd $ef $ff
    inc bc                                        ; $5c2c: $03
    sbc $2c                                       ; $5c2d: $de $2c
    adc [hl]                                      ; $5c2f: $8e
    cp e                                          ; $5c30: $bb
    ld h, d                                       ; $5c31: $62
    ld c, l                                       ; $5c32: $4d
    ld b, e                                       ; $5c33: $43
    inc b                                         ; $5c34: $04
    jr jr_050_5c26                                ; $5c35: $18 $ef

    rst $38                                       ; $5c37: $ff
    ld a, e                                       ; $5c38: $7b
    xor b                                         ; $5c39: $a8
    ld l, [hl]                                    ; $5c3a: $6e
    sub $c0                                       ; $5c3b: $d6 $c0

Jump_050_5c3d:
    add hl, de                                    ; $5c3d: $19
    rst $30                                       ; $5c3e: $f7
    add sp, -$4d                                  ; $5c3f: $e8 $b3
    ld [hl], c                                    ; $5c41: $71
    and a                                         ; $5c42: $a7
    ld e, [hl]                                    ; $5c43: $5e
    ld c, b                                       ; $5c44: $48
    ld h, l                                       ; $5c45: $65
    rst $20                                       ; $5c46: $e7
    ld b, e                                       ; $5c47: $43
    ld l, h                                       ; $5c48: $6c
    adc h                                         ; $5c49: $8c
    ld a, [de]                                    ; $5c4a: $1a

jr_050_5c4b:
    ld a, e                                       ; $5c4b: $7b
    or [hl]                                       ; $5c4c: $b6
    call nz, $fc6d                                ; $5c4d: $c4 $6d $fc
    ld [$4b31], a                                 ; $5c50: $ea $31 $4b
    db $ed                                        ; $5c53: $ed
    db $ed                                        ; $5c54: $ed
    ld d, a                                       ; $5c55: $57
    add a                                         ; $5c56: $87
    sbc e                                         ; $5c57: $9b
    ld b, e                                       ; $5c58: $43
    call nc, $fefc                                ; $5c59: $d4 $fc $fe
    ccf                                           ; $5c5c: $3f
    ldh [$cd], a                                  ; $5c5d: $e0 $cd
    ld [c], a                                     ; $5c5f: $e2
    cp b                                          ; $5c60: $b8
    dec hl                                        ; $5c61: $2b
    sub $34                                       ; $5c62: $d6 $34
    ld b, h                                       ; $5c64: $44
    ld h, b                                       ; $5c65: $60
    ld d, e                                       ; $5c66: $53
    jp c, $f382                                   ; $5c67: $da $82 $f3

    add sp, $6c                                   ; $5c6a: $e8 $6c
    add sp, $6c                                   ; $5c6c: $e8 $6c
    ld hl, sp+$48                                 ; $5c6e: $f8 $48
    rra                                           ; $5c70: $1f
    ld a, d                                       ; $5c71: $7a
    ld e, [hl]                                    ; $5c72: $5e
    halt                                          ; $5c73: $76
    db $d3                                        ; $5c74: $d3
    ld a, $6a                                     ; $5c75: $3e $6a
    db $ec                                        ; $5c77: $ec
    cp b                                          ; $5c78: $b8
    ld d, e                                       ; $5c79: $53
    xor a                                         ; $5c7a: $af
    call c, $9d97                                 ; $5c7b: $dc $97 $9d
    ld e, a                                       ; $5c7e: $5f
    ld d, b                                       ; $5c7f: $50
    db $e3                                        ; $5c80: $e3
    db $d3                                        ; $5c81: $d3
    ld sp, hl                                     ; $5c82: $f9
    xor [hl]                                      ; $5c83: $ae
    ld [hl], c                                    ; $5c84: $71
    scf                                           ; $5c85: $37
    call nz, $9f46                                ; $5c86: $c4 $46 $9f
    adc l                                         ; $5c89: $8d
    add [hl]                                      ; $5c8a: $86
    db $ec                                        ; $5c8b: $ec
    ld e, a                                       ; $5c8c: $5f
    ld d, d                                       ; $5c8d: $52
    bit 5, [hl]                                   ; $5c8e: $cb $6e
    jp c, $8d47                                   ; $5c90: $da $47 $8d

    dec e                                         ; $5c93: $1d
    ld [hl], a                                    ; $5c94: $77
    ld [$fb95], a                                 ; $5c95: $ea $95 $fb
    ld [hl], h                                    ; $5c98: $74
    ld e, [hl]                                    ; $5c99: $5e
    push de                                       ; $5c9a: $d5
    or d                                          ; $5c9b: $b2
    di                                            ; $5c9c: $f3
    dec bc                                        ; $5c9d: $0b
    ld l, d                                       ; $5c9e: $6a
    ld a, h                                       ; $5c9f: $7c
    ld a, [hl-]                                   ; $5ca0: $3a
    rst $18                                       ; $5ca1: $df
    dec [hl]                                      ; $5ca2: $35
    db $fd                                        ; $5ca3: $fd
    db $10                                        ; $5ca4: $10
    adc c                                         ; $5ca5: $89
    ld a, $9b                                     ; $5ca6: $3e $9b
    rst $18                                       ; $5ca8: $df
    rst $38                                       ; $5ca9: $ff
    ld l, l                                       ; $5caa: $6d
    db $fc                                        ; $5cab: $fc
    ld [$4b31], a                                 ; $5cac: $ea $31 $4b
    dec c                                         ; $5caf: $0d
    ld c, h                                       ; $5cb0: $4c
    add sp, -$09                                  ; $5cb1: $e8 $f7
    rst $38                                       ; $5cb3: $ff
    jr jr_050_5cde                                ; $5cb4: $18 $28

    inc hl                                        ; $5cb6: $23
    ld a, [hl+]                                   ; $5cb7: $2a
    ld l, l                                       ; $5cb8: $6d
    call c, $dd0d                                 ; $5cb9: $dc $0d $dd
    ld l, e                                       ; $5cbc: $6b
    xor a                                         ; $5cbd: $af
    ld c, $37                                     ; $5cbe: $0e $37
    add a                                         ; $5cc0: $87
    jr z, jr_050_5c4b                             ; $5cc1: $28 $88

    nop                                           ; $5cc3: $00
    ret nz                                        ; $5cc4: $c0

    sbc e                                         ; $5cc5: $9b
    push bc                                       ; $5cc6: $c5
    ld [hl], c                                    ; $5cc7: $71
    ld d, a                                       ; $5cc8: $57
    xor h                                         ; $5cc9: $ac
    jp hl                                         ; $5cca: $e9


    jp hl                                         ; $5ccb: $e9


    ld d, a                                       ; $5ccc: $57
    inc h                                         ; $5ccd: $24
    sbc d                                         ; $5cce: $9a
    dec a                                         ; $5ccf: $3d
    ld [bc], a                                    ; $5cd0: $02
    ld c, a                                       ; $5cd1: $4f
    db $eb                                        ; $5cd2: $eb
    ld de, $047b                                  ; $5cd3: $11 $7b $04
    ld c, a                                       ; $5cd6: $4f
    sra [hl]                                      ; $5cd7: $cb $2e
    rra                                           ; $5cd9: $1f
    ld a, [hl+]                                   ; $5cda: $2a
    ld a, d                                       ; $5cdb: $7a
    ld [hl], $99                                  ; $5cdc: $36 $99

jr_050_5cde:
    inc h                                         ; $5cde: $24
    ld h, a                                       ; $5cdf: $67
    inc bc                                        ; $5ce0: $03
    ld e, l                                       ; $5ce1: $5d
    sbc a                                         ; $5ce2: $9f
    inc sp                                        ; $5ce3: $33
    inc l                                         ; $5ce4: $2c
    or $08                                        ; $5ce5: $f6 $08
    add b                                         ; $5ce7: $80
    rrca                                          ; $5ce8: $0f
    rst $30                                       ; $5ce9: $f7
    adc [hl]                                      ; $5cea: $8e
    ld a, l                                       ; $5ceb: $7d
    ld d, [hl]                                    ; $5cec: $56
    adc d                                         ; $5ced: $8a
    call nc, $e8e4                                ; $5cee: $d4 $e4 $e8
    reti                                          ; $5cf1: $d9


    ld h, h                                       ; $5cf2: $64
    ld e, d                                       ; $5cf3: $5a
    push af                                       ; $5cf4: $f5
    cp b                                          ; $5cf5: $b8
    ld d, e                                       ; $5cf6: $53
    dec sp                                        ; $5cf7: $3b
    di                                            ; $5cf8: $f3
    sub b                                         ; $5cf9: $90
    ld a, [c]                                     ; $5cfa: $f2
    reti                                          ; $5cfb: $d9


    ldh a, [$b3]                                  ; $5cfc: $f0 $b3
    add c                                         ; $5cfe: $81
    xor [hl]                                      ; $5cff: $ae
    rst $08                                       ; $5d00: $cf
    add hl, de                                    ; $5d01: $19
    ld d, $7b                                     ; $5d02: $16 $7b
    inc b                                         ; $5d04: $04
    ret nz                                        ; $5d05: $c0

    cp e                                          ; $5d06: $bb
    call c, Call_000_3e6f                         ; $5d07: $dc $6f $3e
    dec de                                        ; $5d0a: $1b
    ldh a, [$66]                                  ; $5d0b: $f0 $66
    ld [hl], c                                    ; $5d0d: $71
    call c, Call_050_6b15                         ; $5d0e: $dc $15 $6b
    sbc d                                         ; $5d11: $9a
    dec a                                         ; $5d12: $3d
    ld [bc], a                                    ; $5d13: $02
    rst $20                                       ; $5d14: $e7
    pop hl                                        ; $5d15: $e1
    db $d3                                        ; $5d16: $d3
    xor e                                         ; $5d17: $ab
    ld [hl], a                                    ; $5d18: $77
    ld d, a                                       ; $5d19: $57
    rst $38                                       ; $5d1a: $ff
    rst $10                                       ; $5d1b: $d7
    cp b                                          ; $5d1c: $b8
    ld a, [$577f]                                 ; $5d1d: $fa $7f $57
    inc a                                         ; $5d20: $3c
    or $e4                                        ; $5d21: $f6 $e4
    or e                                          ; $5d23: $b3
    ld e, h                                       ; $5d24: $5c
    adc e                                         ; $5d25: $8b
    cp [hl]                                       ; $5d26: $be
    or d                                          ; $5d27: $b2
    ld l, h                                       ; $5d28: $6c
    add sp, -$0c                                  ; $5d29: $e8 $f4
    ld [de], a                                    ; $5d2b: $12
    add c                                         ; $5d2c: $81
    ld [$d50f], sp                                ; $5d2d: $08 $0f $d5
    call $9b3a                                    ; $5d30: $cd $3a $9b
    ld c, l                                       ; $5d33: $4d
    ld b, [hl]                                    ; $5d34: $46
    ld a, [hl]                                    ; $5d35: $7e
    ld [hl], l                                    ; $5d36: $75
    reti                                          ; $5d37: $d9


    sbc b                                         ; $5d38: $98
    dec c                                         ; $5d39: $0d
    ld h, a                                       ; $5d3a: $67
    adc a                                         ; $5d3b: $8f
    nop                                           ; $5d3c: $00
    ld c, a                                       ; $5d3d: $4f
    rst $28                                       ; $5d3e: $ef
    or h                                          ; $5d3f: $b4
    or d                                          ; $5d40: $b2
    or c                                          ; $5d41: $b1
    ld a, [$afb6]                                 ; $5d42: $fa $b6 $af
    ld a, [de]                                    ; $5d45: $1a
    ld sp, hl                                     ; $5d46: $f9
    push de                                       ; $5d47: $d5
    push hl                                       ; $5d48: $e5
    or e                                          ; $5d49: $b3
    pop hl                                        ; $5d4a: $e1
    ld c, e                                       ; $5d4b: $4b
    cp h                                          ; $5d4c: $bc
    ld h, h                                       ; $5d4d: $64
    or $aa                                        ; $5d4e: $f6 $aa
    or e                                          ; $5d50: $b3
    add c                                         ; $5d51: $81
    add hl, bc                                    ; $5d52: $09
    db $fd                                        ; $5d53: $fd
    cp $1f                                        ; $5d54: $fe $1f
    db $10                                        ; $5d56: $10
    ld bc, $78a0                                  ; $5d57: $01 $a0 $78
    rra                                           ; $5d5a: $1f
    rla                                           ; $5d5b: $17
    reti                                          ; $5d5c: $d9


    ld b, e                                       ; $5d5d: $43
    sub [hl]                                      ; $5d5e: $96
    ld a, $35                                     ; $5d5f: $3e $35
    or e                                          ; $5d61: $b3
    ret c                                         ; $5d62: $d8

    inc hl                                        ; $5d63: $23
    ld c, a                                       ; $5d64: $4f
    db $fc                                        ; $5d65: $fc
    call nc, $e2bb                                ; $5d66: $d4 $bb $e2
    ld bc, $9037                                  ; $5d69: $01 $37 $90
    ld a, l                                       ; $5d6c: $7d
    or e                                          ; $5d6d: $b3
    rst $10                                       ; $5d6e: $d7
    rst $38                                       ; $5d6f: $ff
    inc h                                         ; $5d70: $24
    ld sp, hl                                     ; $5d71: $f9
    sub c                                         ; $5d72: $91
    add hl, bc                                    ; $5d73: $09
    ld l, a                                       ; $5d74: $6f
    push hl                                       ; $5d75: $e5
    adc d                                         ; $5d76: $8a
    add d                                         ; $5d77: $82
    ld [$43a0], sp                                ; $5d78: $08 $a0 $43
    ld h, [hl]                                    ; $5d7b: $66
    jp Jump_050_47d7                              ; $5d7c: $c3 $d7 $47


    adc d                                         ; $5d7f: $8a
    ld b, h                                       ; $5d80: $44
    rst $28                                       ; $5d81: $ef
    adc d                                         ; $5d82: $8a
    rst $00                                       ; $5d83: $c7
    cp b                                          ; $5d84: $b8
    ld d, e                                       ; $5d85: $53
    xor a                                         ; $5d86: $af
    call c, $f8a7                                 ; $5d87: $dc $a7 $f8
    add hl, de                                    ; $5d8a: $19
    cp d                                          ; $5d8b: $ba
    add a                                         ; $5d8c: $87
    add h                                         ; $5d8d: $84
    db $e3                                        ; $5d8e: $e3
    ld a, [hl]                                    ; $5d8f: $7e
    ldh [$09], a                                  ; $5d90: $e0 $09
    rst $00                                       ; $5d92: $c7
    call $b4a4                                    ; $5d93: $cd $a4 $b4
    reti                                          ; $5d96: $d9


    add sp, -$36                                  ; $5d97: $e8 $ca
    inc sp                                        ; $5d99: $33
    sbc $e6                                       ; $5d9a: $de $e6
    ld e, a                                       ; $5d9c: $5f
    ld d, l                                       ; $5d9d: $55
    ei                                            ; $5d9e: $fb
    ld h, c                                       ; $5d9f: $61
    push hl                                       ; $5da0: $e5
    adc d                                         ; $5da1: $8a
    ld h, d                                       ; $5da2: $62
    adc a                                         ; $5da3: $8f
    nop                                           ; $5da4: $00

jr_050_5da5:
    ld c, a                                       ; $5da5: $4f
    db $eb                                        ; $5da6: $eb
    pop de                                        ; $5da7: $d1
    ld e, $92                                     ; $5da8: $1e $92
    sbc [hl]                                      ; $5daa: $9e
    cp d                                          ; $5dab: $ba

Jump_050_5dac:
    add hl, hl                                    ; $5dac: $29
    ld [hl-], a                                   ; $5dad: $32
    dec de                                        ; $5dae: $1b
    ld a, $ed                                     ; $5daf: $3e $ed
    add sp, -$07                                  ; $5db1: $e8 $f9
    db $fd                                        ; $5db3: $fd
    sbc a                                         ; $5db4: $9f
    dec a                                         ; $5db5: $3d
    ld [bc], a                                    ; $5db6: $02
    ld h, b                                       ; $5db7: $60
    ld a, b                                       ; $5db8: $78
    ld h, [hl]                                    ; $5db9: $66
    sbc l                                         ; $5dba: $9d
    call Call_050_4f86                            ; $5dbb: $cd $86 $4f
    xor a                                         ; $5dbe: $af
    sbc $5d                                       ; $5dbf: $de $5d
    db $fd                                        ; $5dc1: $fd
    ld e, a                                       ; $5dc2: $5f
    db $e3                                        ; $5dc3: $e3
    ld [$5dff], a                                 ; $5dc4: $ea $ff $5d
    pop af                                        ; $5dc7: $f1
    ret c                                         ; $5dc8: $d8

    sub e                                         ; $5dc9: $93
    rst $08                                       ; $5dca: $cf
    ld [hl], d                                    ; $5dcb: $72
    dec l                                         ; $5dcc: $2d
    ld a, [$b2ca]                                 ; $5dcd: $fa $ca $b2
    and c                                         ; $5dd0: $a1
    db $d3                                        ; $5dd1: $d3
    ld c, e                                       ; $5dd2: $4b
    inc b                                         ; $5dd3: $04
    ld [hl+], a                                   ; $5dd4: $22
    ret nz                                        ; $5dd5: $c0

    cp e                                          ; $5dd6: $bb
    call c, $866f                                 ; $5dd7: $dc $6f $86
    ld [$2b18], sp                                ; $5dda: $08 $18 $2b
    ld b, l                                       ; $5ddd: $45
    adc $f6                                       ; $5dde: $ce $f6
    ld d, b                                       ; $5de0: $50
    db $dd                                        ; $5de1: $dd
    inc l                                         ; $5de2: $2c
    jr c, jr_050_5da5                             ; $5de3: $38 $c0

    add a                                         ; $5de5: $87
    ld a, e                                       ; $5de6: $7b
    rst $00                                       ; $5de7: $c7
    ld a, $2b                                     ; $5de8: $3e $2b
    ld b, l                                       ; $5dea: $45
    ld l, d                                       ; $5deb: $6a
    ld [hl], d                                    ; $5dec: $72
    ld h, h                                       ; $5ded: $64
    xor a                                         ; $5dee: $af
    pop af                                        ; $5def: $f1
    dec c                                         ; $5df0: $0d
    ld de, $43a0                                  ; $5df1: $11 $a0 $43
    ld h, [hl]                                    ; $5df4: $66
    jp Jump_050_47d7                              ; $5df5: $c3 $d7 $47


    adc d                                         ; $5df8: $8a
    ld b, h                                       ; $5df9: $44
    rst $28                                       ; $5dfa: $ef
    adc d                                         ; $5dfb: $8a
    rst $00                                       ; $5dfc: $c7
    cp b                                          ; $5dfd: $b8
    ld d, e                                       ; $5dfe: $53
    xor a                                         ; $5dff: $af
    call c, $f8a7                                 ; $5e00: $dc $a7 $f8
    add hl, de                                    ; $5e03: $19
    ld a, [hl-]                                   ; $5e04: $3a
    inc c                                         ; $5e05: $0c
    and l                                         ; $5e06: $a5
    add a                                         ; $5e07: $87
    and h                                         ; $5e08: $a4
    ld a, [hl]                                    ; $5e09: $7e
    ld sp, $499a                                  ; $5e0a: $31 $9a $49
    ld l, c                                       ; $5e0d: $69
    or e                                          ; $5e0e: $b3
    pop de                                        ; $5e0f: $d1
    sub l                                         ; $5e10: $95
    sub a                                         ; $5e11: $97
    ld c, $6f                                     ; $5e12: $0e $6f
    sub [hl]                                      ; $5e14: $96
    ld d, d                                       ; $5e15: $52
    dec h                                         ; $5e16: $25
    ld [hl], $f6                                  ; $5e17: $36 $f6
    jp Jump_000_15ca                              ; $5e19: $c3 $ca $15


    push bc                                       ; $5e1c: $c5
    ld e, $01                                     ; $5e1d: $1e $01
    jr jr_050_5e6b                                ; $5e1f: $18 $4a

    rrca                                          ; $5e21: $0f
    ld c, c                                       ; $5e22: $49
    db $fd                                        ; $5e23: $fd
    ld h, d                                       ; $5e24: $62
    db $f4                                        ; $5e25: $f4
    ld l, b                                       ; $5e26: $68
    rst $20                                       ; $5e27: $e7
    pop hl                                        ; $5e28: $e1
    dec sp                                        ; $5e29: $3b
    ld a, d                                       ; $5e2a: $7a
    ld a, [$1dd1]                                 ; $5e2b: $fa $d1 $1d
    dec sp                                        ; $5e2e: $3b
    ld h, h                                       ; $5e2f: $64
    ret nz                                        ; $5e30: $c0

    sbc e                                         ; $5e31: $9b
    push bc                                       ; $5e32: $c5
    ld [hl], c                                    ; $5e33: $71
    ld d, a                                       ; $5e34: $57
    xor h                                         ; $5e35: $ac
    ld l, c                                       ; $5e36: $69
    adc b                                         ; $5e37: $88

Call_050_5e38:
    nop                                           ; $5e38: $00
    rst $20                                       ; $5e39: $e7
    pop hl                                        ; $5e3a: $e1
    dec sp                                        ; $5e3b: $3b
    ld a, d                                       ; $5e3c: $7a
    db $f4                                        ; $5e3d: $f4
    cp d                                          ; $5e3e: $ba
    adc a                                         ; $5e3f: $8f
    adc e                                         ; $5e40: $8b
    rrca                                          ; $5e41: $0f
    rst $30                                       ; $5e42: $f7
    cp b                                          ; $5e43: $b8
    call nc, Call_050_4932                        ; $5e44: $d4 $32 $49
    cp $8f                                        ; $5e47: $fe $8f
    ld l, c                                       ; $5e49: $69
    dec [hl]                                      ; $5e4a: $35
    ld [hl], d                                    ; $5e4b: $72
    ld d, b                                       ; $5e4c: $50
    cp h                                          ; $5e4d: $bc
    ld a, h                                       ; $5e4e: $7c
    inc [hl]                                      ; $5e4f: $34
    ld a, d                                       ; $5e50: $7a
    call c, $57a9                                 ; $5e51: $dc $a9 $57
    xor $cb                                       ; $5e54: $ee $cb
    ld l, [hl]                                    ; $5e56: $6e
    ld [hl], b                                    ; $5e57: $70
    cp h                                          ; $5e58: $bc
    ld d, $3d                                     ; $5e59: $16 $3d
    dec de                                        ; $5e5b: $1b
    ld [hl-], a                                   ; $5e5c: $32
    ld a, e                                       ; $5e5d: $7b
    db $f4                                        ; $5e5e: $f4
    adc b                                         ; $5e5f: $88
    ld a, [hl]                                    ; $5e60: $7e
    db $fc                                        ; $5e61: $fc
    rra                                           ; $5e62: $1f
    ld [bc], a                                    ; $5e63: $02
    ld de, $e960                                  ; $5e64: $11 $60 $e9
    ld l, h                                       ; $5e67: $6c
    ld [hl-], a                                   ; $5e68: $32
    xor l                                         ; $5e69: $ad
    ld l, h                                       ; $5e6a: $6c

jr_050_5e6b:
    ld c, h                                       ; $5e6b: $4c
    ld sp, $fb4d                                  ; $5e6c: $31 $4d $fb
    ld l, h                                       ; $5e6f: $6c
    ld hl, sp-$4c                                 ; $5e70: $f8 $b4
    or d                                          ; $5e72: $b2
    ld sp, $8efd                                  ; $5e73: $31 $fd $8e
    dec sp                                        ; $5e76: $3b
    push af                                       ; $5e77: $f5
    scf                                           ; $5e78: $37
    ld e, l                                       ; $5e79: $5d
    ld a, $1a                                     ; $5e7a: $3e $1a
    halt                                          ; $5e7c: $76
    add a                                         ; $5e7d: $87
    ld c, b                                       ; $5e7e: $48
    ld [hl-], a                                   ; $5e7f: $32
    ld a, [de]                                    ; $5e80: $1a
    dec c                                         ; $5e81: $0d
    ld de, $43a0                                  ; $5e82: $11 $a0 $43
    ld h, [hl]                                    ; $5e85: $66
    jp Jump_050_47d7                              ; $5e86: $c3 $d7 $47


    adc d                                         ; $5e89: $8a
    ld b, h                                       ; $5e8a: $44
    rst $28                                       ; $5e8b: $ef
    adc d                                         ; $5e8c: $8a
    rst $00                                       ; $5e8d: $c7
    cp b                                          ; $5e8e: $b8
    ld d, e                                       ; $5e8f: $53
    xor a                                         ; $5e90: $af
    call c, $8e97                                 ; $5e91: $dc $97 $8e
    inc e                                         ; $5e94: $1c
    xor d                                         ; $5e95: $aa
    ld l, e                                       ; $5e96: $6b
    ld c, a                                       ; $5e97: $4f
    ld a, $cb                                     ; $5e98: $3e $cb
    or l                                          ; $5e9a: $b5
    add sp, $2b                                   ; $5e9b: $e8 $2b
    inc sp                                        ; $5e9d: $33
    add hl, hl                                    ; $5e9e: $29
    ld l, l                                       ; $5e9f: $6d
    ld [hl], $ba                                  ; $5ea0: $36 $ba
    ld a, [c]                                     ; $5ea2: $f2
    adc h                                         ; $5ea3: $8c
    or a                                          ; $5ea4: $b7
    ld sp, hl                                     ; $5ea5: $f9
    ld d, a                                       ; $5ea6: $57
    push de                                       ; $5ea7: $d5
    ld [hl], b                                    ; $5ea8: $70
    ld [hl], e                                    ; $5ea9: $73
    adc b                                         ; $5eaa: $88
    add d                                         ; $5eab: $82
    ld a, e                                       ; $5eac: $7b
    jp nz, Jump_000_3b8f                          ; $5ead: $c2 $8f $3b

    push af                                       ; $5eb0: $f5
    ld [hl-], a                                   ; $5eb1: $32
    inc sp                                        ; $5eb2: $33
    ld de, $e31b                                  ; $5eb3: $11 $1b $e3
    dec sp                                        ; $5eb6: $3b
    ld a, h                                       ; $5eb7: $7c
    ld [hl], a                                    ; $5eb8: $77
    ld e, l                                       ; $5eb9: $5d
    halt                                          ; $5eba: $76
    ld a, [$8915]                                 ; $5ebb: $fa $15 $89
    sbc $93                                       ; $5ebe: $de $93
    rst $08                                       ; $5ec0: $cf
    ld [hl], d                                    ; $5ec1: $72
    dec l                                         ; $5ec2: $2d
    ld a, [$e2ca]                                 ; $5ec3: $fa $ca $e2
    add a                                         ; $5ec6: $87
    xor [hl]                                      ; $5ec7: $ae
    dec b                                         ; $5ec8: $05
    call Call_000_21b8                            ; $5ec9: $cd $b8 $21
    push af                                       ; $5ecc: $f5
    ld b, e                                       ; $5ecd: $43

Jump_050_5ece:
    jr nz, jr_050_5ed2                            ; $5ece: $20 $02

    ld c, a                                       ; $5ed0: $4f
    rst $28                                       ; $5ed1: $ef

jr_050_5ed2:
    ld a, [$5220]                                 ; $5ed2: $fa $20 $52
    ld [hl], $46                                  ; $5ed5: $36 $46
    jp Jump_050_5ece                              ; $5ed7: $c3 $ce $5e


    ld [hl], l                                    ; $5eda: $75
    or [hl]                                       ; $5edb: $b6
    add a                                         ; $5edc: $87
    ld [$9d66], a                                 ; $5edd: $ea $66 $9d
    call $b4a4                                    ; $5ee0: $cd $a4 $b4
    reti                                          ; $5ee3: $d9


    ld h, h                                       ; $5ee4: $64
    ld e, c                                       ; $5ee5: $59
    rrca                                          ; $5ee6: $0f
    ld [hl-], a                                   ; $5ee7: $32
    sub e                                         ; $5ee8: $93
    di                                            ; $5ee9: $f3
    xor [hl]                                      ; $5eea: $ae
    ld a, b                                       ; $5eeb: $78
    or b                                          ; $5eec: $b0
    ld b, a                                       ; $5eed: $47
    jr jr_050_5f1b                                ; $5eee: $18 $2b

    ld b, l                                       ; $5ef0: $45
    sub [hl]                                      ; $5ef1: $96
    ld c, c                                       ; $5ef2: $49
    call $d326                                    ; $5ef3: $cd $26 $d3
    ld [$0f6c], a                                 ; $5ef6: $ea $6c $0f
    push de                                       ; $5ef9: $d5
    call $0382                                    ; $5efa: $cd $82 $03
    sub e                                         ; $5efd: $93
    inc l                                         ; $5efe: $2c
    db $fd                                        ; $5eff: $fd
    ld l, a                                       ; $5f00: $6f
    rst $08                                       ; $5f01: $cf
    add $0e                                       ; $5f02: $c6 $0e
    sub c                                         ; $5f04: $91
    ld h, h                                       ; $5f05: $64
    inc [hl]                                      ; $5f06: $34
    ld a, d                                       ; $5f07: $7a
    ld h, $71                                     ; $5f08: $26 $71
    db $ed                                        ; $5f0a: $ed
    ld l, b                                       ; $5f0b: $68
    ei                                            ; $5f0c: $fb
    xor a                                         ; $5f0d: $af
    xor d                                         ; $5f0e: $aa
    ret                                           ; $5f0f: $c9


    sub c                                         ; $5f10: $91
    cp l                                          ; $5f11: $bd
    add $37                                       ; $5f12: $c6 $37
    ld b, h                                       ; $5f14: $44
    add b                                         ; $5f15: $80
    cp e                                          ; $5f16: $bb
    add $9d                                       ; $5f17: $c6 $9d
    ld a, [hl-]                                   ; $5f19: $3a
    sbc a                                         ; $5f1a: $9f

jr_050_5f1b:
    ret z                                         ; $5f1b: $c8

    xor $f2                                       ; $5f1c: $ee $f2
    ld c, a                                       ; $5f1e: $4f
    inc a                                         ; $5f1f: $3c
    db $fc                                        ; $5f20: $fc
    ld l, h                                       ; $5f21: $6c
    ldh [$8c], a                                  ; $5f22: $e0 $8c
    ld a, e                                       ; $5f24: $7b
    inc [hl]                                      ; $5f25: $34
    inc e                                         ; $5f26: $1c
    add sp, -$70                                  ; $5f27: $e8 $90
    reti                                          ; $5f29: $d9


    ldh a, [rBCPD]                                ; $5f2a: $f0 $69
    ld b, a                                       ; $5f2c: $47
    ld c, a                                       ; $5f2d: $4f

Jump_050_5f2e:
    xor a                                         ; $5f2e: $af
    sbc [hl]                                      ; $5f2f: $9e
    ld c, c                                       ; $5f30: $49
    call nz, $97ea                                ; $5f31: $c4 $ea $97
    db $fc                                        ; $5f34: $fc
    xor e                                         ; $5f35: $ab
    inc e                                         ; $5f36: $1c
    ld [hl+], a                                   ; $5f37: $22
    add b                                         ; $5f38: $80
    rrca                                          ; $5f39: $0f
    rst $30                                       ; $5f3a: $f7
    adc [hl]                                      ; $5f3b: $8e
    ld a, l                                       ; $5f3c: $7d
    ld d, [hl]                                    ; $5f3d: $56
    adc d                                         ; $5f3e: $8a
    call nc, $c8e4                                ; $5f3f: $d4 $e4 $c8
    ld e, [hl]                                    ; $5f42: $5e
    db $e3                                        ; $5f43: $e3
    ei                                            ; $5f44: $fb
    ld l, h                                       ; $5f45: $6c

Call_050_5f46:
    rrca                                          ; $5f46: $0f
    push de                                       ; $5f47: $d5
    call $381a                                    ; $5f48: $cd $1a $38
    db $e3                                        ; $5f4b: $e3
    ld e, $0d                                     ; $5f4c: $1e $0d
    rlca                                          ; $5f4e: $07
    sub [hl]                                      ; $5f4f: $96
    adc $26                                       ; $5f50: $ce $26
    inc hl                                        ; $5f52: $23
    add [hl]                                      ; $5f53: $86
    jp nc, $f9e8                                  ; $5f54: $d2 $e8 $f9

    db $fd                                        ; $5f57: $fd
    ccf                                           ; $5f58: $3f
    ld e, l                                       ; $5f59: $5d
    and h                                         ; $5f5a: $a4
    adc $a6                                       ; $5f5b: $ce $a6
    rst $18                                       ; $5f5d: $df
    rst $38                                       ; $5f5e: $ff
    sub a                                         ; $5f5f: $97
    rrca                                          ; $5f60: $0f
    ld d, l                                       ; $5f61: $55
    db $10                                        ; $5f62: $10
    ld bc, $7860                                  ; $5f63: $01 $60 $78
    ld h, [hl]                                    ; $5f66: $66
    ld b, c                                       ; $5f67: $41
    ld [$a599], sp                                ; $5f68: $08 $99 $a5
    add $9d                                       ; $5f6b: $c6 $9d
    ld a, [hl-]                                   ; $5f6d: $3a
    sbc a                                         ; $5f6e: $9f
    adc b                                         ; $5f6f: $88
    rst $00                                       ; $5f70: $c7
    xor $ea                                       ; $5f71: $ee $ea
    rst $38                                       ; $5f73: $ff
    ld a, [de]                                    ; $5f74: $1a
    ld d, a                                       ; $5f75: $57
    rst $38                                       ; $5f76: $ff
    ld b, e                                       ; $5f77: $43
    inc b                                         ; $5f78: $04
    rrca                                          ; $5f79: $0f
    pop bc                                        ; $5f7a: $c1
    inc a                                         ; $5f7b: $3c
    db $db                                        ; $5f7c: $db
    ld b, e                                       ; $5f7d: $43
    ld [hl], l                                    ; $5f7e: $75
    or e                                          ; $5f7f: $b3
    jr nz, jr_050_5f84                            ; $5f80: $20 $02

    adc a                                         ; $5f82: $8f
    ld c, e                                       ; $5f83: $4b

jr_050_5f84:
    dec l                                         ; $5f84: $2d
    ld b, a                                       ; $5f85: $47
    xor a                                         ; $5f86: $af
    call c, $9367                                 ; $5f87: $dc $67 $93
    dec e                                         ; $5f8a: $1d

Jump_050_5f8b:
    cp l                                          ; $5f8b: $bd
    ld c, h                                       ; $5f8c: $4c
    jp z, $8596                                   ; $5f8d: $ca $96 $85

    ld a, e                                       ; $5f90: $7b
    ld a, d                                       ; $5f91: $7a
    rst $38                                       ; $5f92: $ff
    sbc a                                         ; $5f93: $9f
    ld c, l                                       ; $5f94: $4d
    ld d, [hl]                                    ; $5f95: $56
    xor $63                                       ; $5f96: $ee $63
    sub [hl]                                      ; $5f98: $96
    ld e, d                                       ; $5f99: $5a
    ld h, $35                                     ; $5f9a: $26 $35
    dec l                                         ; $5f9c: $2d
    ld a, [hl]                                    ; $5f9d: $7e
    call $f55e                                    ; $5f9e: $cd $5e $f5
    ld [$8f01], sp                                ; $5fa1: $08 $01 $8f
    db $eb                                        ; $5fa4: $eb
    ld l, h                                       ; $5fa5: $6c
    ld e, [hl]                                    ; $5fa6: $5e
    add hl, hl                                    ; $5fa7: $29
    jp nz, $011e                                  ; $5fa8: $c2 $1e $01

    ld c, a                                       ; $5fab: $4f
    ld a, b                                       ; $5fac: $78
    ld a, e                                       ; $5fad: $7b
    db $f4                                        ; $5fae: $f4
    reti                                          ; $5faf: $d9


    inc h                                         ; $5fb0: $24
    ld e, c                                       ; $5fb1: $59
    ld a, [$b3d4]                                 ; $5fb2: $fa $d4 $b3
    ret                                           ; $5fb5: $c9


    ret z                                         ; $5fb6: $c8

    ld hl, $b352                                  ; $5fb7: $21 $52 $b3
    ld d, a                                       ; $5fba: $57
    dec l                                         ; $5fbb: $2d
    ld a, l                                       ; $5fbc: $7d
    cp b                                          ; $5fbd: $b8
    ld [hl], a                                    ; $5fbe: $77
    ld b, b                                       ; $5fbf: $40
    inc b                                         ; $5fc0: $04
    jr @+$2d                                      ; $5fc1: $18 $2b

    ld b, l                                       ; $5fc3: $45
    adc $06                                       ; $5fc4: $ce $06

jr_050_5fc6:
    cp d                                          ; $5fc6: $ba
    ld l, h                                       ; $5fc7: $6c
    pop de                                        ; $5fc8: $d1
    add c                                         ; $5fc9: $81
    inc sp                                        ; $5fca: $33
    sub h                                         ; $5fcb: $94
    db $eb                                        ; $5fcc: $eb
    ld h, b                                       ; $5fcd: $60
    ld b, c                                       ; $5fce: $41
    inc b                                         ; $5fcf: $04
    jr nz, jr_050_5fdf                            ; $5fd0: $20 $0d

    sbc l                                         ; $5fd2: $9d
    rst $18                                       ; $5fd3: $df
    rst $38                                       ; $5fd4: $ff
    db $d3                                        ; $5fd5: $d3
    ld b, l                                       ; $5fd6: $45
    ld l, d                                       ; $5fd7: $6a
    sbc c                                         ; $5fd8: $99
    sbc a                                         ; $5fd9: $9f
    pop hl                                        ; $5fda: $e1
    cp h                                          ; $5fdb: $bc
    ld h, [hl]                                    ; $5fdc: $66
    sub e                                         ; $5fdd: $93
    jp hl                                         ; $5fde: $e9


jr_050_5fdf:
    rst $30                                       ; $5fdf: $f7
    ld a, a                                       ; $5fe0: $7f
    adc b                                         ; $5fe1: $88
    nop                                           ; $5fe2: $00
    jr jr_050_6020                                ; $5fe3: $18 $3b

    db $f4                                        ; $5fe5: $f4
    ld a, a                                       ; $5fe6: $7f
    sub l                                         ; $5fe7: $95
    xor a                                         ; $5fe8: $af
    db $f4                                        ; $5fe9: $f4
    reti                                          ; $5fea: $d9


    xor e                                         ; $5feb: $ab
    ld d, [hl]                                    ; $5fec: $56
    xor $f3                                       ; $5fed: $ee $f3
    db $eb                                        ; $5fef: $eb
    ld e, [hl]                                    ; $5ff0: $5e
    db $e3                                        ; $5ff1: $e3
    ld c, [hl]                                    ; $5ff2: $4e
    sbc l                                         ; $5ff3: $9d
    cp [hl]                                       ; $5ff4: $be
    db $10                                        ; $5ff5: $10
    ld bc, $c9e7                                  ; $5ff6: $01 $e7 $c9
    jr c, @-$40                                   ; $5ff9: $38 $be

    rlca                                          ; $5ffb: $07
    ldh a, [$b5]                                  ; $5ffc: $f0 $b5
    dec a                                         ; $5ffe: $3d
    cp c                                          ; $5fff: $b9
    db $e4                                        ; $6000: $e4
    ld d, a                                       ; $6001: $57
    or e                                          ; $6002: $b3
    ld b, a                                       ; $6003: $47
    rst $20                                       ; $6004: $e7
    ret                                           ; $6005: $c9


    jr c, jr_050_5fc6                             ; $6006: $38 $be

    rst $18                                       ; $6008: $df
    ld b, a                                       ; $6009: $47
    rst $20                                       ; $600a: $e7
    ret                                           ; $600b: $c9


    adc [hl]                                      ; $600c: $8e
    sbc [hl]                                      ; $600d: $9e
    ld d, $df                                     ; $600e: $16 $df
    rst $00                                       ; $6010: $c7

Call_050_6011:
Jump_050_6011:
    ld a, e                                       ; $6011: $7b
    ld [hl], h                                    ; $6012: $74
    or $e3                                        ; $6013: $f6 $e3
    ld a, a                                       ; $6015: $7f
    rr [hl]                                       ; $6016: $cb $1e
    ld bc, $bc4f                                  ; $6018: $01 $4f $bc
    inc a                                         ; $601b: $3c
    ret                                           ; $601c: $c9


    ld a, e                                       ; $601d: $7b
    ld h, l                                       ; $601e: $65
    sbc b                                         ; $601f: $98

jr_050_6020:
    cp h                                          ; $6020: $bc
    sub e                                         ; $6021: $93
    db $ec                                        ; $6022: $ec
    add l                                         ; $6023: $85
    nop                                           ; $6024: $00
    ret nz                                        ; $6025: $c0

    ld c, [hl]                                    ; $6026: $4e
    dec e                                         ; $6027: $1d
    sub h                                         ; $6028: $94
    rst $38                                       ; $6029: $ff
    ld [$4420], sp                                ; $602a: $08 $20 $44
    ld [hl], l                                    ; $602d: $75
    ret c                                         ; $602e: $d8

    dec de                                        ; $602f: $1b
    sub d                                         ; $6030: $92
    inc de                                        ; $6031: $13
    inc e                                         ; $6032: $1c
    rst $08                                       ; $6033: $cf
    cp a                                          ; $6034: $bf
    ld d, h                                       ; $6035: $54
    ld c, [hl]                                    ; $6036: $4e
    dec de                                        ; $6037: $1b
    add d                                         ; $6038: $82
    nop                                           ; $6039: $00
    ret nz                                        ; $603a: $c0

    call z, Call_050_66bf                         ; $603b: $cc $bf $66
    and b                                         ; $603e: $a0
    ld c, e                                       ; $603f: $4b
    ld e, l                                       ; $6040: $5d
    inc b                                         ; $6041: $04
    ret nz                                        ; $6042: $c0

jr_050_6043:
    call z, Call_050_66bf                         ; $6043: $cc $bf $66
    jr jr_050_6043                                ; $6046: $18 $fb

    ld [c], a                                     ; $6048: $e2
    rst $38                                       ; $6049: $ff
    and [hl]                                      ; $604a: $a6
    sub d                                         ; $604b: $92
    adc h                                         ; $604c: $8c
    nop                                           ; $604d: $00
    ld c, a                                       ; $604e: $4f
    ldh a, [$ea]                                  ; $604f: $f0 $ea
    sbc d                                         ; $6051: $9a
    and c                                         ; $6052: $a1
    adc d                                         ; $6053: $8a
    rla                                           ; $6054: $17
    add l                                         ; $6055: $85
    nop                                           ; $6056: $00
    ld h, b                                       ; $6057: $60
    xor [hl]                                      ; $6058: $ae
    adc $23                                       ; $6059: $ce $23
    ld b, b                                       ; $605b: $40
    sbc e                                         ; $605c: $9b
    xor e                                         ; $605d: $ab
    ld c, $d1                                     ; $605e: $0e $d1
    jp nz, Jump_050_6011                          ; $6060: $c2 $11 $60

    adc [hl]                                      ; $6063: $8e
    db $ec                                        ; $6064: $ec
    dec [hl]                                      ; $6065: $35
    cp c                                          ; $6066: $b9
    ld a, [hl-]                                   ; $6067: $3a
    adc a                                         ; $6068: $8f
    nop                                           ; $6069: $00
    ld c, a                                       ; $606a: $4f
    ld l, $f9                                     ; $606b: $2e $f9
    push de                                       ; $606d: $d5
    ld [$aea0], sp                                ; $606e: $08 $a0 $ae
    adc [hl]                                      ; $6071: $8e
    nop                                           ; $6072: $00
    and b                                         ; $6073: $a0
    ld c, e                                       ; $6074: $4b
    ld e, l                                       ; $6075: $5d
    inc b                                         ; $6076: $04
    ld c, a                                       ; $6077: $4f
    sbc h                                         ; $6078: $9c
    push de                                       ; $6079: $d5
    and h                                         ; $607a: $a4
    db $10                                        ; $607b: $10
    ret nz                                        ; $607c: $c0

    ld c, [hl]                                    ; $607d: $4e
    sbc l                                         ; $607e: $9d
    push af                                       ; $607f: $f5
    ld l, d                                       ; $6080: $6a
    inc b                                         ; $6081: $04
    ld c, a                                       ; $6082: $4f
    add sp, -$4b                                  ; $6083: $e8 $b5
    ld d, a                                       ; $6085: $57
    ld l, c                                       ; $6086: $69
    pop hl                                        ; $6087: $e1
    ld [$4ba0], sp                                ; $6088: $08 $a0 $4b
    db $dd                                        ; $608b: $dd
    db $ec                                        ; $608c: $ec
    xor h                                         ; $608d: $ac
    ld h, $85                                     ; $608e: $26 $85
    nop                                           ; $6090: $00
    and b                                         ; $6091: $a0
    ld c, e                                       ; $6092: $4b
    db $dd                                        ; $6093: $dd
    ld c, h                                       ; $6094: $4c
    ld e, b                                       ; $6095: $58
    sub $22                                       ; $6096: $d6 $22
    nop                                           ; $6098: $00
    ld e, a                                       ; $6099: $5f
    ld a, e                                       ; $609a: $7b
    dec b                                         ; $609b: $05
    ldh [$eb], a                                  ; $609c: $e0 $eb
    ld b, e                                       ; $609e: $43
    jr jr_050_610c                                ; $609f: $18 $6b

    and l                                         ; $60a1: $a5
    rst $08                                       ; $60a2: $cf
    ld e, [hl]                                    ; $60a3: $5e
    dec [hl]                                      ; $60a4: $35
    xor l                                         ; $60a5: $ad
    call nz, Call_050_5266                        ; $60a6: $c4 $66 $52
    dec l                                         ; $60a9: $2d
    add l                                         ; $60aa: $85
    nop                                           ; $60ab: $00
    rst $20                                       ; $60ac: $e7
    ld e, l                                       ; $60ad: $5d
    ld b, h                                       ; $60ae: $44
    dec hl                                        ; $60af: $2b

jr_050_60b0:
    or c                                          ; $60b0: $b1
    sbc c                                         ; $60b1: $99
    ld d, h                                       ; $60b2: $54
    inc hl                                        ; $60b3: $23
    ldh [$fa], a                                  ; $60b4: $e0 $fa
    jp nc, Jump_050_569a                          ; $60b6: $d2 $9a $56

    ld h, d                                       ; $60b9: $62
    inc sp                                        ; $60ba: $33
    xor c                                         ; $60bb: $a9
    ld b, [hl]                                    ; $60bc: $46

jr_050_60bd:
    rst $20                                       ; $60bd: $e7
    ld e, l                                       ; $60be: $5d
    add h                                         ; $60bf: $84
    ld a, h                                       ; $60c0: $7c
    di                                            ; $60c1: $f3
    or d                                          ; $60c2: $b2
    ld d, [hl]                                    ; $60c3: $56
    ld h, d                                       ; $60c4: $62
    inc sp                                        ; $60c5: $33
    xor c                                         ; $60c6: $a9
    ld b, [hl]                                    ; $60c7: $46
    ld c, a                                       ; $60c8: $4f
    add sp, -$4b                                  ; $60c9: $e8 $b5
    ld d, a                                       ; $60cb: $57
    push de                                       ; $60cc: $d5
    or h                                          ; $60cd: $b4
    ld [de], a                                    ; $60ce: $12
    sbc e                                         ; $60cf: $9b
    ld c, c                                       ; $60d0: $49
    dec [hl]                                      ; $60d1: $35
    ld [bc], a                                    ; $60d2: $02
    jr jr_050_60b0                                ; $60d3: $18 $db

    db $fc                                        ; $60d5: $fc
    ld c, a                                       ; $60d6: $4f
    xor d                                         ; $60d7: $aa
    ld a, a                                       ; $60d8: $7f
    ld a, [hl]                                    ; $60d9: $7e
    ld e, c                                       ; $60da: $59
    dec hl                                        ; $60db: $2b
    or c                                          ; $60dc: $b1
    sbc c                                         ; $60dd: $99
    ld d, h                                       ; $60de: $54
    inc hl                                        ; $60df: $23
    jr jr_050_60bd                                ; $60e0: $18 $db

    db $fc                                        ; $60e2: $fc
    sbc a                                         ; $60e3: $9f
    cp l                                          ; $60e4: $bd
    db $f4                                        ; $60e5: $f4
    db $fc                                        ; $60e6: $fc
    or d                                          ; $60e7: $b2
    ld d, [hl]                                    ; $60e8: $56
    ld h, d                                       ; $60e9: $62
    inc sp                                        ; $60ea: $33
    xor c                                         ; $60eb: $a9
    ld b, [hl]                                    ; $60ec: $46
    jr jr_050_615a                                ; $60ed: $18 $6b

    and l                                         ; $60ef: $a5
    rst $08                                       ; $60f0: $cf
    ld e, [hl]                                    ; $60f1: $5e
    dec [hl]                                      ; $60f2: $35
    xor l                                         ; $60f3: $ad
    call c, Call_000_1043                         ; $60f4: $dc $43 $10

Jump_050_60f7:
    ld c, a                                       ; $60f7: $4f
    ldh a, [$f0]                                  ; $60f8: $f0 $f0
    ld a, h                                       ; $60fa: $7c
    push de                                       ; $60fb: $d5
    or h                                          ; $60fc: $b4
    ld [hl], d                                    ; $60fd: $72
    ld b, a                                       ; $60fe: $47
    ldh [$fa], a                                  ; $60ff: $e0 $fa
    jp nc, $c65a                                  ; $6101: $d2 $5a $c6

    jp Jump_050_55f3                              ; $6104: $c3 $f3 $55


    db $d3                                        ; $6107: $d3
    jp z, $011d                                   ; $6108: $ca $1d $01

    ret nz                                        ; $610b: $c0

jr_050_610c:
    adc h                                         ; $610c: $8c
    db $ed                                        ; $610d: $ed
    or d                                          ; $610e: $b2
    db $d3                                        ; $610f: $d3
    jp z, $011d                                   ; $6110: $ca $1d $01

    ret c                                         ; $6113: $d8

    push af                                       ; $6114: $f5
    add sp, $7f                                   ; $6115: $e8 $7f
    xor b                                         ; $6117: $a8
    inc e                                         ; $6118: $1c
    ld [hl-], a                                   ; $6119: $32
    xor l                                         ; $611a: $ad
    call c, Call_000_0f11                         ; $611b: $dc $11 $0f
    daa                                           ; $611e: $27
    dec [hl]                                      ; $611f: $35
    adc l                                         ; $6120: $8d
    ld l, a                                       ; $6121: $6f
    dec sp                                        ; $6122: $3b
    xor l                                         ; $6123: $ad
    call c, Call_050_6011                         ; $6124: $dc $11 $60
    ld [hl], c                                    ; $6127: $71
    cp a                                          ; $6128: $bf
    or h                                          ; $6129: $b4
    cp $b4                                        ; $612a: $fe $b4
    ld [hl], d                                    ; $612c: $72
    ld b, a                                       ; $612d: $47
    jr jr_050_619b                                ; $612e: $18 $6b

    and l                                         ; $6130: $a5
    rst $08                                       ; $6131: $cf
    ld e, [hl]                                    ; $6132: $5e
    dec [hl]                                      ; $6133: $35
    ld a, [c]                                     ; $6134: $f2
    rrca                                          ; $6135: $0f
    dec hl                                        ; $6136: $2b
    ld h, l                                       ; $6137: $65
    ld b, e                                       ; $6138: $43
    db $10                                        ; $6139: $10
    ld c, a                                       ; $613a: $4f
    ld c, e                                       ; $613b: $4b
    cp $55                                        ; $613c: $fe $55
    xor e                                         ; $613e: $ab
    ld c, [hl]                                    ; $613f: $4e
    add a                                         ; $6140: $87
    ld h, a                                       ; $6141: $67
    ld a, [c]                                     ; $6142: $f2
    rrca                                          ; $6143: $0f
    dec hl                                        ; $6144: $2b
    ld h, l                                       ; $6145: $65
    ld de, $af4f                                  ; $6146: $11 $4f $af
    ld a, b                                       ; $6149: $78
    inc [hl]                                      ; $614a: $34
    dec l                                         ; $614b: $2d
    pop af                                        ; $614c: $f1
    ld hl, sp+$08                                 ; $614d: $f8 $08
    ldh [$fa], a                                  ; $614f: $e0 $fa
    jp nc, Jump_050_755a                          ; $6151: $d2 $5a $75

    ld a, [hl-]                                   ; $6154: $3a
    inc a                                         ; $6155: $3c
    sub e                                         ; $6156: $93
    ld a, a                                       ; $6157: $7f
    ld e, b                                       ; $6158: $58
    add hl, hl                                    ; $6159: $29

jr_050_615a:
    adc e                                         ; $615a: $8b
    nop                                           ; $615b: $00
    ldh [$fa], a                                  ; $615c: $e0 $fa

jr_050_615e:
    jp nc, Jump_050_7e9a                          ; $615e: $d2 $9a $7e

    push bc                                       ; $6161: $c5
    and e                                         ; $6162: $a3
    ld l, c                                       ; $6163: $69

jr_050_6164:
    adc c                                         ; $6164: $89
    rst $00                                       ; $6165: $c7
    ld b, a                                       ; $6166: $47
    rrca                                          ; $6167: $0f
    ld a, h                                       ; $6168: $7c
    db $db                                        ; $6169: $db
    add hl, sp                                    ; $616a: $39
    ld c, e                                       ; $616b: $4b
    sub c                                         ; $616c: $91
    ld a, a                                       ; $616d: $7f
    ld e, b                                       ; $616e: $58
    add hl, hl                                    ; $616f: $29
    adc e                                         ; $6170: $8b
    nop                                           ; $6171: $00
    ld c, a                                       ; $6172: $4f
    db $e4                                        ; $6173: $e4
    sub h                                         ; $6174: $94
    db $dd                                        ; $6175: $dd
    inc [hl]                                      ; $6176: $34
    call $c4b4                                    ; $6177: $cd $b4 $c4
    db $e3                                        ; $617a: $e3
    inc hl                                        ; $617b: $23
    jr jr_050_61e9                                ; $617c: $18 $6b

    and l                                         ; $617e: $a5
    rst $08                                       ; $617f: $cf
    ld e, [hl]                                    ; $6180: $5e
    or l                                          ; $6181: $b5
    db $f4                                        ; $6182: $f4
    pop af                                        ; $6183: $f1
    dec a                                         ; $6184: $3d
    inc e                                         ; $6185: $1c
    ld bc, $0ea0                                  ; $6186: $01 $a0 $0e
    dec de                                        ; $6189: $1b
    sbc l                                         ; $618a: $9d
    ld a, $be                                     ; $618b: $3e $be
    rlca                                          ; $618d: $07
    ld [bc], a                                    ; $618e: $02
    ret nz                                        ; $618f: $c0

    xor [hl]                                      ; $6190: $ae
    ld hl, sp-$2e                                 ; $6191: $f8 $d2
    rst $00                                       ; $6193: $c7
    rst $30                                       ; $6194: $f7
    ld b, b                                       ; $6195: $40
    and b                                         ; $6196: $a0
    xor [hl]                                      ; $6197: $ae
    sbc [hl]                                      ; $6198: $9e
    ld c, c                                       ; $6199: $49
    rla                                           ; $619a: $17

jr_050_619b:
    rst $20                                       ; $619b: $e7
    add hl, sp                                    ; $619c: $39
    ld a, l                                       ; $619d: $7d
    ld a, h                                       ; $619e: $7c
    rrca                                          ; $619f: $0f
    inc b                                         ; $61a0: $04
    jr nz, jr_050_615e                            ; $61a1: $20 $bb

    jr c, jr_050_6164                             ; $61a3: $38 $bf

    jp z, Jump_000_3e97                           ; $61a5: $ca $97 $3e

    cp [hl]                                       ; $61a8: $be
    rlca                                          ; $61a9: $07
    ld [bc], a                                    ; $61aa: $02
    jr jr_050_61f9                                ; $61ab: $18 $4c

    ld a, [hl-]                                   ; $61ad: $3a
    ret                                           ; $61ae: $c9


    cp [hl]                                       ; $61af: $be
    db $f4                                        ; $61b0: $f4
    pop af                                        ; $61b1: $f1
    dec a                                         ; $61b2: $3d
    db $10                                        ; $61b3: $10
    ret nz                                        ; $61b4: $c0

    adc [hl]                                      ; $61b5: $8e
    db $ec                                        ; $61b6: $ec
    ld [hl], d                                    ; $61b7: $72
    ld b, l                                       ; $61b8: $45
    push hl                                       ; $61b9: $e5
    db $f4                                        ; $61ba: $f4
    pop af                                        ; $61bb: $f1
    dec a                                         ; $61bc: $3d
    db $10                                        ; $61bd: $10
    jr jr_050_622b                                ; $61be: $18 $6b

    and l                                         ; $61c0: $a5
    rst $08                                       ; $61c1: $cf
    ld e, [hl]                                    ; $61c2: $5e
    or l                                          ; $61c3: $b5
    db $ec                                        ; $61c4: $ec
    daa                                           ; $61c5: $27
    db $fd                                        ; $61c6: $fd
    ld d, a                                       ; $61c7: $57
    ld c, e                                       ; $61c8: $4b
    ld hl, $4b4f                                  ; $61c9: $21 $4f $4b
    cp $55                                        ; $61cc: $fe $55
    or l                                          ; $61ce: $b5
    db $ec                                        ; $61cf: $ec
    daa                                           ; $61d0: $27
    db $fd                                        ; $61d1: $fd
    ld d, a                                       ; $61d2: $57
    inc hl                                        ; $61d3: $23
    ldh [$fa], a                                  ; $61d4: $e0 $fa
    jp nc, $f65a                                  ; $61d6: $d2 $5a $f6

    sub e                                         ; $61d9: $93
    cp $ab                                        ; $61da: $fe $ab
    ld de, $470f                                  ; $61dc: $11 $0f $47
    db $db                                        ; $61df: $db
    or d                                          ; $61e0: $b2
    or c                                          ; $61e1: $b1
    db $ec                                        ; $61e2: $ec
    daa                                           ; $61e3: $27
    db $fd                                        ; $61e4: $fd
    ld d, a                                       ; $61e5: $57
    inc hl                                        ; $61e6: $23
    ret c                                         ; $61e7: $d8

    push af                                       ; $61e8: $f5

jr_050_61e9:
    add sp, $7f                                   ; $61e9: $e8 $7f
    xor b                                         ; $61eb: $a8
    inc l                                         ; $61ec: $2c
    or l                                          ; $61ed: $b5
    db $ec                                        ; $61ee: $ec
    daa                                           ; $61ef: $27
    db $fd                                        ; $61f0: $fd
    ld d, a                                       ; $61f1: $57
    inc hl                                        ; $61f2: $23
    ld c, a                                       ; $61f3: $4f
    ld [$dacb], sp                                ; $61f4: $08 $cb $da
    sbc h                                         ; $61f7: $9c
    db $fd                                        ; $61f8: $fd

jr_050_61f9:
    and h                                         ; $61f9: $a4
    rst $38                                       ; $61fa: $ff
    ld l, d                                       ; $61fb: $6a
    inc b                                         ; $61fc: $04
    ld h, b                                       ; $61fd: $60
    ld [hl], c                                    ; $61fe: $71
    cp a                                          ; $61ff: $bf
    or h                                          ; $6200: $b4
    ld a, [hl]                                    ; $6201: $7e
    dec l                                         ; $6202: $2d
    ei                                            ; $6203: $fb
    ld c, c                                       ; $6204: $49
    rst $38                                       ; $6205: $ff
    push de                                       ; $6206: $d5
    ld [$6ea0], sp                                ; $6207: $08 $a0 $6e
    or $1a                                        ; $620a: $f6 $1a
    dec c                                         ; $620c: $0d
    cp e                                          ; $620d: $bb
    ld c, h                                       ; $620e: $4c
    call z, $bc4f                                 ; $620f: $cc $4f $bc
    sub e                                         ; $6212: $93
    db $ec                                        ; $6213: $ec
    ld [hl], d                                    ; $6214: $72
    ld b, l                                       ; $6215: $45

jr_050_6216:
    ld hl, $7f20                                  ; $6216: $21 $20 $7f
    push hl                                       ; $6219: $e5
    db $fc                                        ; $621a: $fc

jr_050_621b:
    ld l, a                                       ; $621b: $6f

jr_050_621c:
    or $42                                        ; $621c: $f6 $42
    ret c                                         ; $621e: $d8

    db $db                                        ; $621f: $db
    rst $38                                       ; $6220: $ff
    call Call_000_085e                            ; $6221: $cd $5e $08
    jr nz, jr_050_621b                            ; $6224: $20 $f5

    jp z, $c99e                                   ; $6226: $ca $9e $c9

    ret                                           ; $6229: $c9


    ld [hl], e                                    ; $622a: $73

jr_050_622b:
    db $fc                                        ; $622b: $fc
    sub a                                         ; $622c: $97
    ld [hl], e                                    ; $622d: $73
    ld a, c                                       ; $622e: $79
    ld b, [hl]                                    ; $622f: $46
    ldh [$8a], a                                  ; $6230: $e0 $8a
    add h                                         ; $6232: $84
    ld c, a                                       ; $6233: $4f
    adc d                                         ; $6234: $8a
    jp z, $1c2f                                   ; $6235: $ca $2f $1c

    xor a                                         ; $6238: $af
    ld b, [hl]                                    ; $6239: $46
    ld c, a                                       ; $623a: $4f
    sbc h                                         ; $623b: $9c
    ld a, c                                       ; $623c: $79
    or h                                          ; $623d: $b4
    sub b                                         ; $623e: $90
    ld l, d                                       ; $623f: $6a
    cpl                                           ; $6240: $2f
    inc b                                         ; $6241: $04
    ldh [$a2], a                                  ; $6242: $e0 $a2
    ld d, l                                       ; $6244: $55
    pop de                                        ; $6245: $d1

jr_050_6246:
    db $10                                        ; $6246: $10
    ld b, a                                       ; $6247: $47
    and b                                         ; $6248: $a0
    adc l                                         ; $6249: $8d
    xor e                                         ; $624a: $ab
    srl c                                         ; $624b: $cb $39
    ld [bc], a                                    ; $624d: $02
    sbc b                                         ; $624e: $98
    xor a                                         ; $624f: $af
    ld d, d                                       ; $6250: $52
    ld hl, $e28c                                  ; $6251: $21 $8c $e2
    ld e, e                                       ; $6254: $5b
    db $db                                        ; $6255: $db
    xor h                                         ; $6256: $ac
    inc d                                         ; $6257: $14
    ld b, c                                       ; $6258: $41
    jr nz, jr_050_6216                            ; $6259: $20 $bb

    jr c, jr_050_621c                             ; $625b: $38 $bf

Jump_050_625d:
    ld l, d                                       ; $625d: $6a
    sbc b                                         ; $625e: $98
    xor a                                         ; $625f: $af
    ld d, d                                       ; $6260: $52
    ld hl, $e28c                                  ; $6261: $21 $8c $e2

Call_050_6264:
    ld e, e                                       ; $6264: $5b
    db $db                                        ; $6265: $db
    xor h                                         ; $6266: $ac
    inc d                                         ; $6267: $14
    ld b, c                                       ; $6268: $41
    ret c                                         ; $6269: $d8

    db $db                                        ; $626a: $db
    ld c, e                                       ; $626b: $4b
    pop af                                        ; $626c: $f1
    ld l, l                                       ; $626d: $6d
    or e                                          ; $626e: $b3
    ld l, l                                       ; $626f: $6d
    ld d, [hl]                                    ; $6270: $56
    adc d                                         ; $6271: $8a
    jr nz, jr_050_62c3                            ; $6272: $20 $4f

    xor a                                         ; $6274: $af
    rla                                           ; $6275: $17
    cp l                                          ; $6276: $bd

jr_050_6277:
    adc h                                         ; $6277: $8c
    ld l, l                                       ; $6278: $6d
    or e                                          ; $6279: $b3
    ld d, d                                       ; $627a: $52
    inc b                                         ; $627b: $04
    ld bc, $7098                                  ; $627c: $01 $98 $70
    db $fc                                        ; $627f: $fc
    ld a, [hl+]                                   ; $6280: $2a
    dec h                                         ; $6281: $25
    ld d, a                                       ; $6282: $57
    ld d, h                                       ; $6283: $54
    or [hl]                                       ; $6284: $b6
    call Call_000_114a                            ; $6285: $cd $4a $11
    inc b                                         ; $6288: $04
    jr nz, jr_050_6246                            ; $6289: $20 $bb

    jr c, @-$3f                                   ; $628b: $38 $bf

    ld l, d                                       ; $628d: $6a
    add hl, bc                                    ; $628e: $09
    adc [hl]                                      ; $628f: $8e
    ld e, a                                       ; $6290: $5f
    and l                                         ; $6291: $a5
    db $e4                                        ; $6292: $e4
    adc d                                         ; $6293: $8a
    jp z, Jump_050_59b6                           ; $6294: $ca $b6 $59

    add hl, hl                                    ; $6297: $29
    add d                                         ; $6298: $82
    nop                                           ; $6299: $00
    jr jr_050_6277                                ; $629a: $18 $db

    db $fc                                        ; $629c: $fc
    ld l, a                                       ; $629d: $6f
    sbc e                                         ; $629e: $9b
    sub l                                         ; $629f: $95
    ld [hl+], a                                   ; $62a0: $22
    ld sp, hl                                     ; $62a1: $f9
    push hl                                       ; $62a2: $e5
    ld e, h                                       ; $62a3: $5c
    sbc [hl]                                      ; $62a4: $9e
    ld de, $060f                                  ; $62a5: $11 $0f $06
    rst $20                                       ; $62a8: $e7
    adc [hl]                                      ; $62a9: $8e
    rst $38                                       ; $62aa: $ff
    db $d3                                        ; $62ab: $d3
    push de                                       ; $62ac: $d5
    inc hl                                        ; $62ad: $23
    rst $10                                       ; $62ae: $d7
    dec a                                         ; $62af: $3d
    ld a, $02                                     ; $62b0: $3e $02
    jr nz, jr_050_62c1                            ; $62b2: $20 $0d

    adc [hl]                                      ; $62b4: $8e
    ld d, a                                       ; $62b5: $57
    sub e                                         ; $62b6: $93
    db $eb                                        ; $62b7: $eb

jr_050_62b8:
    ld e, $1f                                     ; $62b8: $1e $1f
    ld bc, $8fa0                                  ; $62ba: $01 $a0 $8f
    sbc h                                         ; $62bd: $9c
    xor a                                         ; $62be: $af
    xor b                                         ; $62bf: $a8
    ld c, h                                       ; $62c0: $4c

jr_050_62c1:
    xor [hl]                                      ; $62c1: $ae
    ld a, e                                       ; $62c2: $7b

jr_050_62c3:
    ld a, h                                       ; $62c3: $7c
    inc b                                         ; $62c4: $04
    ld c, a                                       ; $62c5: $4f
    xor $d7                                       ; $62c6: $ee $d7
    and e                                         ; $62c8: $a3
    ret                                           ; $62c9: $c9


    ld [hl], l                                    ; $62ca: $75
    adc a                                         ; $62cb: $8f
    adc a                                         ; $62cc: $8f
    nop                                           ; $62cd: $00
    ld c, a                                       ; $62ce: $4f
    sbc b                                         ; $62cf: $98
    rst $00                                       ; $62d0: $c7
    rst $10                                       ; $62d1: $d7
    adc c                                         ; $62d2: $89
    ld hl, $3625                                  ; $62d3: $21 $25 $36
    ld b, [hl]                                    ; $62d6: $46
    xor [hl]                                      ; $62d7: $ae
    ld a, e                                       ; $62d8: $7b
    ld a, h                                       ; $62d9: $7c
    inc b                                         ; $62da: $04
    jr jr_050_62b8                                ; $62db: $18 $db

    db $fc                                        ; $62dd: $fc
    ld c, a                                       ; $62de: $4f
    adc h                                         ; $62df: $8c
    ld h, h                                       ; $62e0: $64
    ld c, a                                       ; $62e1: $4f
    dec de                                        ; $62e2: $1b
    add d                                         ; $62e3: $82
    nop                                           ; $62e4: $00
    ld c, a                                       ; $62e5: $4f
    adc b                                         ; $62e6: $88
    ld sp, hl                                     ; $62e7: $f9
    jp hl                                         ; $62e8: $e9


    ld d, e                                       ; $62e9: $53
    adc d                                         ; $62ea: $8a
    ld b, h                                       ; $62eb: $44
    inc hl                                        ; $62ec: $23
    ret nz                                        ; $62ed: $c0

jr_050_62ee:
    call z, Call_050_66bf                         ; $62ee: $cc $bf $66
    jr jr_050_62ee                                ; $62f1: $18 $fb

    ld [c], a                                     ; $62f3: $e2
    rst $38                                       ; $62f4: $ff
    and [hl]                                      ; $62f5: $a6
    sub d                                         ; $62f6: $92
    adc h                                         ; $62f7: $8c
    nop                                           ; $62f8: $00
    ret nz                                        ; $62f9: $c0

    call z, Call_050_66bf                         ; $62fa: $cc $bf $66
    and b                                         ; $62fd: $a0
    ld c, e                                       ; $62fe: $4b
    ld e, l                                       ; $62ff: $5d
    inc b                                         ; $6300: $04
    add b                                         ; $6301: $80
    call nz, Call_050_4523                        ; $6302: $c4 $23 $45
    db $e4                                        ; $6305: $e4
    adc d                                         ; $6306: $8a
    jp z, Jump_050_4369                           ; $6307: $ca $69 $43

    db $10                                        ; $630a: $10
    ret nz                                        ; $630b: $c0

    ld c, [hl]                                    ; $630c: $4e
    xor l                                         ; $630d: $ad
    dec e                                         ; $630e: $1d
    adc h                                         ; $630f: $8c
    push hl                                       ; $6310: $e5
    adc d                                         ; $6311: $8a
    jp z, Jump_050_4369                           ; $6312: $ca $69 $43

    db $10                                        ; $6315: $10
    rrca                                          ; $6316: $0f
    push de                                       ; $6317: $d5
    call $f3ca                                    ; $6318: $cd $ca $f3
    ld [hl], $ff                                  ; $631b: $36 $ff
    ld h, a                                       ; $631d: $67
    cpl                                           ; $631e: $2f
    dec e                                         ; $631f: $1d
    ld bc, $4b4f                                  ; $6320: $01 $4f $4b
    cp $55                                        ; $6323: $fe $55
    inc hl                                        ; $6325: $23
    ld a, d                                       ; $6326: $7a
    ld h, l                                       ; $6327: $65
    daa                                           ; $6328: $27
    rlca                                          ; $6329: $07
    adc [hl]                                      ; $632a: $8e
    inc hl                                        ; $632b: $23
    jr nz, jr_050_633b                            ; $632c: $20 $0d

    dec c                                         ; $632e: $0d
    rst $18                                       ; $632f: $df
    db $eb                                        ; $6330: $eb
    ld l, a                                       ; $6331: $6f
    cp a                                          ; $6332: $bf
    adc d                                         ; $6333: $8a
    nop                                           ; $6334: $00
    ld c, a                                       ; $6335: $4f
    sbc h                                         ; $6336: $9c
    ld a, c                                       ; $6337: $79
    or h                                          ; $6338: $b4
    ld [hl], b                                    ; $6339: $70
    push af                                       ; $633a: $f5

jr_050_633b:
    ccf                                           ; $633b: $3f
    ld [bc], a                                    ; $633c: $02
    ld h, b                                       ; $633d: $60
    ld l, $4d                                     ; $633e: $2e $4d
    daa                                           ; $6340: $27
    ld a, c                                       ; $6341: $79
    xor a                                         ; $6342: $af
    cp a                                          ; $6343: $bf
    ld a, [$abea]                                 ; $6344: $fa $ea $ab
    ld [$3280], sp                                ; $6347: $08 $80 $32
    ld h, a                                       ; $634a: $67
    db $ec                                        ; $634b: $ec
    db $fd                                        ; $634c: $fd
    cp a                                          ; $634d: $bf
    adc l                                         ; $634e: $8d
    inc hl                                        ; $634f: $23
    and b                                         ; $6350: $a0
    inc de                                        ; $6351: $13
    ld hl, $d13f                                  ; $6352: $21 $3f $d1
    dec bc                                        ; $6355: $0b
    ld bc, $4d18                                  ; $6356: $01 $18 $4d
    sub e                                         ; $6359: $93
    or d                                          ; $635a: $b2
    ld sp, $7239                                  ; $635b: $31 $39 $72
    cp $a6                                        ; $635e: $fe $a6
    ld de, $d7e7                                  ; $6360: $11 $e7 $d7
    cp l                                          ; $6363: $bd
    add h                                         ; $6364: $84
    add l                                         ; $6365: $85
    nop                                           ; $6366: $00
    and b                                         ; $6367: $a0
    db $eb                                        ; $6368: $eb
    sbc a                                         ; $6369: $9f
    jp c, $a011                                   ; $636a: $da $11 $a0

    ld c, e                                       ; $636d: $4b
    ld l, h                                       ; $636e: $6c
    sub a                                         ; $636f: $97
    ld [hl-], a                                   ; $6370: $32
    ld e, l                                       ; $6371: $5d
    ld l, l                                       ; $6372: $6d
    inc e                                         ; $6373: $1c
    ld bc, $a520                                  ; $6374: $01 $20 $a5
    cp $cf                                        ; $6377: $fe $cf
    cp a                                          ; $6379: $bf
    ld b, h                                       ; $637a: $44
    push hl                                       ; $637b: $e5
    ld c, h                                       ; $637c: $4c
    xor [hl]                                      ; $637d: $ae
    ld [$e002], sp                                ; $637e: $08 $02 $e0
    xor [hl]                                      ; $6381: $ae
    ld d, d                                       ; $6382: $52
    ld e, c                                       ; $6383: $59
    cp a                                          ; $6384: $bf
    sub d                                         ; $6385: $92
    cp l                                          ; $6386: $bd
    sub h                                         ; $6387: $94
    xor d                                         ; $6388: $aa
    ld b, [hl]                                    ; $6389: $46
    add b                                         ; $638a: $80
    rst $38                                       ; $638b: $ff
    sub c                                         ; $638c: $91
    ld [hl+], a                                   ; $638d: $22
    call c, $04cd                                 ; $638e: $dc $cd $04
    ld c, a                                       ; $6391: $4f
    cp [hl]                                       ; $6392: $be
    ld e, $8d                                     ; $6393: $1e $8d
    nop                                           ; $6395: $00
    ld c, a                                       ; $6396: $4f
    ld c, b                                       ; $6397: $48
    db $fd                                        ; $6398: $fd
    ld [hl], h                                    ; $6399: $74
    add hl, hl                                    ; $639a: $29
    sub l                                         ; $639b: $95
    ld c, a                                       ; $639c: $4f
    jp z, Jump_000_0208                           ; $639d: $ca $08 $02

    jr @+$77                                      ; $63a0: $18 $75

    ld e, [hl]                                    ; $63a2: $5e
    dec sp                                        ; $63a3: $3b
    or l                                          ; $63a4: $b5
    ld e, h                                       ; $63a5: $5c
    ld d, c                                       ; $63a6: $51
    ld e, c                                       ; $63a7: $59
    inc sp                                        ; $63a8: $33
    dec l                                         ; $63a9: $2d
    ld [$9b60], sp                                ; $63aa: $08 $60 $9b
    ld a, [$3621]                                 ; $63ad: $fa $21 $36
    ld a, [de]                                    ; $63b0: $1a

jr_050_63b1:
    ld bc, $2380                                  ; $63b1: $01 $80 $23
    sbc e                                         ; $63b4: $9b
    ld [$21ec], a                                 ; $63b5: $ea $ec $21
    ld [$4540], sp                                ; $63b8: $08 $40 $45
    dec sp                                        ; $63bb: $3b
    or l                                          ; $63bc: $b5
    ld e, h                                       ; $63bd: $5c
    ld d, c                                       ; $63be: $51
    ld e, c                                       ; $63bf: $59
    inc sp                                        ; $63c0: $33
    dec l                                         ; $63c1: $2d
    cp e                                          ; $63c2: $bb
    set 6, a                                      ; $63c3: $cb $f7
    db $eb                                        ; $63c5: $eb
    pop de                                        ; $63c6: $d1
    ld [$dc4f], sp                                ; $63c7: $08 $4f $dc
    inc [hl]                                      ; $63ca: $34
    push de                                       ; $63cb: $d5
    jp z, $011d                                   ; $63cc: $ca $1d $01

    add b                                         ; $63cf: $80
    adc b                                         ; $63d0: $88
    sub c                                         ; $63d1: $91
    db $eb                                        ; $63d2: $eb
    ld [$4f80], sp                                ; $63d3: $08 $80 $4f
    ld h, d                                       ; $63d6: $62
    ld a, d                                       ; $63d7: $7a
    jr nz, jr_050_63e0                            ; $63d8: $20 $06

    add sp, -$01                                  ; $63da: $e8 $ff
    jp c, $5a13                                   ; $63dc: $da $13 $5a

    inc h                                         ; $63df: $24

jr_050_63e0:
    ld a, [de]                                    ; $63e0: $1a
    ld bc, $3440                                  ; $63e1: $01 $40 $34
    ld b, e                                       ; $63e4: $43
    ld a, [hl]                                    ; $63e5: $7e
    ld e, c                                       ; $63e6: $59
    push de                                       ; $63e7: $d5
    add $9a                                       ; $63e8: $c6 $9a
    ld b, [hl]                                    ; $63ea: $46
    add b                                         ; $63eb: $80
    adc a                                         ; $63ec: $8f
    db $ec                                        ; $63ed: $ec
    dec [hl]                                      ; $63ee: $35
    adc h                                         ; $63ef: $8c
    adc c                                         ; $63f0: $89
    ld d, d                                       ; $63f1: $52
    add hl, bc                                    ; $63f2: $09
    and l                                         ; $63f3: $a5
    rla                                           ; $63f4: $17
    ld bc, $12e0                                  ; $63f5: $01 $e0 $12
    adc d                                         ; $63f8: $8a
    rla                                           ; $63f9: $17
    ld e, [hl]                                    ; $63fa: $5e
    reti                                          ; $63fb: $d9


    add e                                         ; $63fc: $83
    add hl, de                                    ; $63fd: $19
    adc l                                         ; $63fe: $8d
    nop                                           ; $63ff: $00
    jr nz, jr_050_63b1                            ; $6400: $20 $af

    ld a, e                                       ; $6402: $7b
    ld a, h                                       ; $6403: $7c
    ld d, d                                       ; $6404: $52
    call nz, $0234                                ; $6405: $c4 $34 $02
    and b                                         ; $6408: $a0
    adc d                                         ; $6409: $8a
    db $f4                                        ; $640a: $f4
    push af                                       ; $640b: $f5
    sbc h                                         ; $640c: $9c
    cp l                                          ; $640d: $bd
    db $f4                                        ; $640e: $f4
    ld l, d                                       ; $640f: $6a
    inc b                                         ; $6410: $04
    sbc b                                         ; $6411: $98
    sub h                                         ; $6412: $94
    ld a, [$7b25]                                 ; $6413: $fa $25 $7b
    ld [$e8cb], sp                                ; $6416: $08 $cb $e8
    ld a, [hl+]                                   ; $6419: $2a
    inc b                                         ; $641a: $04
    rst $20                                       ; $641b: $e7
    or a                                          ; $641c: $b7
    sub h                                         ; $641d: $94
    ld de, $87d5                                  ; $641e: $11 $d5 $87
    ret c                                         ; $6421: $d8

    db $ec                                        ; $6422: $ec
    rst $30                                       ; $6423: $f7
    rst $38                                       ; $6424: $ff
    db $ec                                        ; $6425: $ec
    cp h                                          ; $6426: $bc
    ld e, b                                       ; $6427: $58
    inc b                                         ; $6428: $04
    and b                                         ; $6429: $a0
    xor $af                                       ; $642a: $ee $af
    sub c                                         ; $642c: $91
    sub d                                         ; $642d: $92
    dec hl                                        ; $642e: $2b
    ld [$0c4f], sp                                ; $642f: $08 $4f $0c
    sbc [hl]                                      ; $6432: $9e
    add hl, bc                                    ; $6433: $09
    adc e                                         ; $6434: $8b
    db $e3                                        ; $6435: $e3
    ld [c], a                                     ; $6436: $e2
    inc hl                                        ; $6437: $23
    jr nz, @-$31                                  ; $6438: $20 $cd

    ld b, a                                       ; $643a: $47
    ld hl, $ac23                                  ; $643b: $21 $23 $ac
    inc d                                         ; $643e: $14
    ld sp, hl                                     ; $643f: $f9
    ld d, a                                       ; $6440: $57
    inc d                                         ; $6441: $14
    ld [bc], a                                    ; $6442: $02
    ld c, a                                       ; $6443: $4f
    cp h                                          ; $6444: $bc
    inc de                                        ; $6445: $13
    rst $08                                       ; $6446: $cf
    inc e                                         ; $6447: $1c
    di                                            ; $6448: $f3
    or b                                          ; $6449: $b0
    pop de                                        ; $644a: $d1
    ld [$a24f], sp                                ; $644b: $08 $4f $a2
    pop af                                        ; $644e: $f1
    db $10                                        ; $644f: $10
    cp a                                          ; $6450: $bf
    add d                                         ; $6451: $82
    nop                                           ; $6452: $00
    rst $20                                       ; $6453: $e7
    ld [hl], l                                    ; $6454: $75
    ccf                                           ; $6455: $3f
    ld l, e                                       ; $6456: $6b
    ldh [$da], a                                  ; $6457: $e0 $da
    ldh [$5a], a                                  ; $6459: $e0 $5a
    jr c, jr_050_645f                             ; $645b: $38 $02

    ret nz                                        ; $645d: $c0

    adc e                                         ; $645e: $8b

jr_050_645f:
    jp nc, $cbfa                                  ; $645f: $d2 $fa $cb

    call nz, $fcfc                                ; $6462: $c4 $fc $fc
    cpl                                           ; $6465: $2f
    sbc [hl]                                      ; $6466: $9e
    ld de, $4fc0                                  ; $6467: $11 $c0 $4f
    cp l                                          ; $646a: $bd
    ld d, b                                       ; $646b: $50
    ld d, d                                       ; $646c: $52
    db $d3                                        ; $646d: $d3
    ld sp, hl                                     ; $646e: $f9
    halt                                          ; $646f: $76
    db $d3                                        ; $6470: $d3
    cpl                                           ; $6471: $2f
    rst $20                                       ; $6472: $e7
    ld a, [c]                                     ; $6473: $f2
    adc h                                         ; $6474: $8c
    nop                                           ; $6475: $00
    ld l, a                                       ; $6476: $6f
    cp l                                          ; $6477: $bd
    ld a, [$1e32]                                 ; $6478: $fa $32 $1e
    sub d                                         ; $647b: $92
    ld a, [bc]                                    ; $647c: $0a
    jp z, Jump_050_4712                           ; $647d: $ca $12 $47

    ld c, a                                       ; $6480: $4f
    sbc b                                         ; $6481: $98
    rst $00                                       ; $6482: $c7
    rst $10                                       ; $6483: $d7
    ccf                                           ; $6484: $3f
    dec hl                                        ; $6485: $2b
    sub a                                         ; $6486: $97
    ret c                                         ; $6487: $d8

    ld e, b                                       ; $6488: $58
    cp d                                          ; $6489: $ba
    cp $37                                        ; $648a: $fe $37
    and d                                         ; $648c: $a2
    and d                                         ; $648d: $a2
    ld de, $938f                                  ; $648e: $11 $8f $93
    ld c, a                                       ; $6491: $4f
    ld a, [hl]                                    ; $6492: $7e
    pop hl                                        ; $6493: $e1
    jr c, jr_050_6498                             ; $6494: $38 $02

    rrca                                          ; $6496: $0f
    and l                                         ; $6497: $a5

jr_050_6498:
    ld a, [$3cda]                                 ; $6498: $fa $da $3c
    cp h                                          ; $649b: $bc
    cp d                                          ; $649c: $ba
    ldh a, [$cf]                                  ; $649d: $f0 $cf
    ld b, d                                       ; $649f: $42
    rst $20                                       ; $64a0: $e7
    or c                                          ; $64a1: $b1
    and a                                         ; $64a2: $a7
    scf                                           ; $64a3: $37
    ld b, a                                       ; $64a4: $47
    sbc $13                                       ; $64a5: $de $13
    rrca                                          ; $64a7: $0f
    ld b, c                                       ; $64a8: $41
    and b                                         ; $64a9: $a0
    xor a                                         ; $64aa: $af
    ld c, b                                       ; $64ab: $48
    xor [hl]                                      ; $64ac: $ae
    rst $38                                       ; $64ad: $ff
    dec e                                         ; $64ae: $1d
    ld bc, $4420                                  ; $64af: $01 $20 $44
    ld [hl], l                                    ; $64b2: $75
    ret c                                         ; $64b3: $d8

    dec de                                        ; $64b4: $1b
    ld a, [c]                                     ; $64b5: $f2
    ld [hl], d                                    ; $64b6: $72
    ld c, [hl]                                    ; $64b7: $4e
    ld [hl], b                                    ; $64b8: $70
    inc a                                         ; $64b9: $3c
    rst $38                                       ; $64ba: $ff
    ld d, d                                       ; $64bb: $52
    add hl, sp                                    ; $64bc: $39
    ld l, l                                       ; $64bd: $6d
    ld [$c002], sp                                ; $64be: $08 $02 $c0
    cp $89                                        ; $64c1: $fe $89
    jp hl                                         ; $64c3: $e9


    ld [$3ec0], sp                                ; $64c4: $08 $c0 $3e
    ld c, e                                       ; $64c7: $4b
    sub l                                         ; $64c8: $95
    ret c                                         ; $64c9: $d8

    sbc b                                         ; $64ca: $98
    or b                                          ; $64cb: $b0
    ld d, d                                       ; $64cc: $52
    inc h                                         ; $64cd: $24
    ld a, $02                                     ; $64ce: $3e $02
    ld c, a                                       ; $64d0: $4f
    ld l, $f9                                     ; $64d1: $2e $f9
    push de                                       ; $64d3: $d5
    ld [$f10f], sp                                ; $64d4: $08 $0f $f1
    ld c, e                                       ; $64d7: $4b
    ld l, h                                       ; $64d8: $6c
    ld c, h                                       ; $64d9: $4c
    db $fd                                        ; $64da: $fd
    db $eb                                        ; $64db: $eb
    ld e, $8d                                     ; $64dc: $1e $8d
    nop                                           ; $64de: $00
    ld h, b                                       ; $64df: $60
    inc sp                                        ; $64e0: $33
    ld c, e                                       ; $64e1: $4b
    cp $55                                        ; $64e2: $fe $55

jr_050_64e4:
    ld e, d                                       ; $64e4: $5a
    ld a, b                                       ; $64e5: $78
    and [hl]                                      ; $64e6: $a6
    dec h                                         ; $64e7: $25
    ld e, $1f                                     ; $64e8: $1e $1f
    ld bc, $4d20                                  ; $64ea: $01 $20 $4d
    dec sp                                        ; $64ed: $3b
    ld sp, $7d34                                  ; $64ee: $31 $34 $7d
    and l                                         ; $64f1: $a5
    db $fc                                        ; $64f2: $fc
    ld a, [de]                                    ; $64f3: $1a
    ld b, c                                       ; $64f4: $41
    rst $20                                       ; $64f5: $e7
    ret                                           ; $64f6: $c9


    or h                                          ; $64f7: $b4
    ld [$515d], a                                 ; $64f8: $ea $5d $51
    dec [hl]                                      ; $64fb: $35
    xor $d4                                       ; $64fc: $ee $d4
    ld b, c                                       ; $64fe: $41
    ld sp, hl                                     ; $64ff: $f9

jr_050_6500:
    rst $08                                       ; $6500: $cf
    ld e, $01                                     ; $6501: $1e $01
    jr nz, jr_050_6552                            ; $6503: $20 $4d

    ei                                            ; $6505: $fb
    ld l, b                                       ; $6506: $68
    ret c                                         ; $6507: $d8

    and l                                         ; $6508: $a5
    and e                                         ; $6509: $a3
    ld c, a                                       ; $650a: $4f
    call nc, $b4d6                                ; $650b: $d4 $d6 $b4
    add e                                         ; $650e: $83
    or c                                          ; $650f: $b1
    jp hl                                         ; $6510: $e9


    sbc c                                         ; $6511: $99
    sub h                                         ; $6512: $94
    ld [hl], $6f                                  ; $6513: $36 $6f
    di                                            ; $6515: $f3
    ccf                                           ; $6516: $3f
    xor c                                         ; $6517: $a9
    cp $d5                                        ; $6518: $fe $d5
    ld [$4480], sp                                ; $651a: $08 $80 $44
    ccf                                           ; $651d: $3f
    call nz, $b8d6                                ; $651e: $c4 $d6 $b8
    ld d, e                                       ; $6521: $53
    rlca                                          ; $6522: $07
    push hl                                       ; $6523: $e5
    ld a, a                                       ; $6524: $7f
    ld hl, sp+$23                                 ; $6525: $f8 $23
    inc b                                         ; $6527: $04
    adc h                                         ; $6528: $8c
    ld bc, $36be                                  ; $6529: $01 $be $36
    inc b                                         ; $652c: $04
    jr nz, jr_050_6573                            ; $652d: $20 $44

    add l                                         ; $652f: $85
    ld c, a                                       ; $6530: $4f
    dec sp                                        ; $6531: $3b
    call nz, Call_050_7b06                        ; $6532: $c4 $06 $7b
    inc b                                         ; $6535: $04
    rst $20                                       ; $6536: $e7
    ret                                           ; $6537: $c9


    ld c, b                                       ; $6538: $48
    ret                                           ; $6539: $c9


    xor [hl]                                      ; $653a: $ae
    ld a, b                                       ; $653b: $78
    xor h                                         ; $653c: $ac
    ld b, h                                       ; $653d: $44
    ccf                                           ; $653e: $3f
    call nz, Call_050_6cd6                        ; $653f: $c4 $d6 $6c
    ld hl, sp+$24                                 ; $6542: $f8 $24
    ld h, c                                       ; $6544: $61
    adc a                                         ; $6545: $8f
    nop                                           ; $6546: $00
    jr jr_050_64e4                                ; $6547: $18 $9b

Jump_050_6549:
    sub l                                         ; $6549: $95
    ld [hl+], a                                   ; $654a: $22
    jp $e9f9                                      ; $654b: $c3 $f9 $e9


    push af                                       ; $654e: $f5
    cp c                                          ; $654f: $b9
    cp [hl]                                       ; $6550: $be
    inc hl                                        ; $6551: $23

jr_050_6552:
    ld d, d                                       ; $6552: $52
    jr c, jr_050_6593                             ; $6553: $38 $3e

    xor $d4                                       ; $6555: $ee $d4
    dec hl                                        ; $6557: $2b
    rst $30                                       ; $6558: $f7
    ld [hl], c                                    ; $6559: $71
    and [hl]                                      ; $655a: $a6
    dec a                                         ; $655b: $3d
    rra                                           ; $655c: $1f
    xor $05                                       ; $655d: $ee $05
    ld de, $d50f                                  ; $655f: $11 $0f $d5
    call $c71a                                    ; $6562: $cd $1a $c7
    rst $30                                       ; $6565: $f7
    db $fc                                        ; $6566: $fc
    cp $9f                                        ; $6567: $fe $9f
    ld l, $52                                     ; $6569: $2e $52
    inc bc                                        ; $656b: $03
    ld hl, sp-$26                                 ; $656c: $f8 $da
    cp $d5                                        ; $656e: $fe $d5
    inc sp                                        ; $6570: $33
    jp hl                                         ; $6571: $e9


    ld [c], a                                     ; $6572: $e2

jr_050_6573:
    inc e                                         ; $6573: $1c
    scf                                           ; $6574: $37
    add a                                         ; $6575: $87
    jr z, jr_050_6500                             ; $6576: $28 $88

    nop                                           ; $6578: $00
    rrca                                          ; $6579: $0f
    push de                                       ; $657a: $d5
    call $c71a                                    ; $657b: $cd $1a $c7
    rst $30                                       ; $657e: $f7
    db $fc                                        ; $657f: $fc
    cp $9f                                        ; $6580: $fe $9f
    ld l, $52                                     ; $6582: $2e $52
    inc bc                                        ; $6584: $03
    ld hl, sp-$26                                 ; $6585: $f8 $da
    ld l, b                                       ; $6587: $68
    xor c                                         ; $6588: $a9
    adc e                                         ; $6589: $8b
    sbc e                                         ; $658a: $9b
    ld b, e                                       ; $658b: $43
    inc d                                         ; $658c: $14
    ld b, h                                       ; $658d: $44
    rst $20                                       ; $658e: $e7
    ld hl, $a3d3                                  ; $658f: $21 $d3 $a3
    ld c, c                                       ; $6592: $49

jr_050_6593:
    push af                                       ; $6593: $f5
    ld [$bedb], a                                 ; $6594: $ea $db $be
    ld l, d                                       ; $6597: $6a
    ld e, [hl]                                    ; $6598: $5e
    jr c, jr_050_65f9                             ; $6599: $38 $5e

    res 6, h                                      ; $659b: $cb $b4
    ld c, b                                       ; $659d: $48
    ld [$edfb], sp                                ; $659e: $08 $fb $ed
    add l                                         ; $65a1: $85
    sub a                                         ; $65a2: $97
    nop                                           ; $65a3: $00
    cp [hl]                                       ; $65a4: $be
    ld [hl], $50                                  ; $65a5: $36 $50
    ldh [$5e], a                                  ; $65a7: $e0 $5e
    ld b, h                                       ; $65a9: $44
    add b                                         ; $65aa: $80
    rrca                                          ; $65ab: $0f
    rst $30                                       ; $65ac: $f7
    adc [hl]                                      ; $65ad: $8e
    dec e                                         ; $65ae: $1d
    ld [hl-], a                                   ; $65af: $32
    dec de                                        ; $65b0: $1b
    or d                                          ; $65b1: $b2
    db $f4                                        ; $65b2: $f4
    sub c                                         ; $65b3: $91
    cp l                                          ; $65b4: $bd
    add [hl]                                      ; $65b5: $86
    daa                                           ; $65b6: $27
    inc d                                         ; $65b7: $14
    cpl                                           ; $65b8: $2f
    cp h                                          ; $65b9: $bc
    sbc b                                         ; $65ba: $98
    db $ec                                        ; $65bb: $ec
    or a                                          ; $65bc: $b7
    rla                                           ; $65bd: $17
    ld e, [hl]                                    ; $65be: $5e
    ld [bc], a                                    ; $65bf: $02
    ld hl, sp-$26                                 ; $65c0: $f8 $da
    ld b, b                                       ; $65c2: $40
    add c                                         ; $65c3: $81
    ld a, e                                       ; $65c4: $7b
    ld de, $4f01                                  ; $65c5: $11 $01 $4f
    ld hl, sp+$29                                 ; $65c8: $f8 $29
    db $e3                                        ; $65ca: $e3
    cp [hl]                                       ; $65cb: $be
    ld [hl], d                                    ; $65cc: $72
    rra                                           ; $65cd: $1f
    dec l                                         ; $65ce: $2d
    reti                                          ; $65cf: $d9


    pop hl                                        ; $65d0: $e1
    pop de                                        ; $65d1: $d1
    ld c, e                                       ; $65d2: $4b
    ld [hl], b                                    ; $65d3: $70
    ld a, h                                       ; $65d4: $7c
    ld a, d                                       ; $65d5: $7a
    dec [hl]                                      ; $65d6: $35
    inc sp                                        ; $65d7: $33
    sub [hl]                                      ; $65d8: $96
    ld l, c                                       ; $65d9: $69
    ld a, [c]                                     ; $65da: $f2
    adc e                                         ; $65db: $8b
    db $fd                                        ; $65dc: $fd
    or $c2                                        ; $65dd: $f6 $c2
    ld c, e                                       ; $65df: $4b
    nop                                           ; $65e0: $00
    ld e, a                                       ; $65e1: $5f
    dec de                                        ; $65e2: $1b

Call_050_65e3:
    jr z, jr_050_6655                             ; $65e3: $28 $70

    cpl                                           ; $65e5: $2f
    ld [hl+], a                                   ; $65e6: $22
    rst $20                                       ; $65e7: $e7
    ld hl, $8ed3                                  ; $65e8: $21 $d3 $8e
    ld e, [hl]                                    ; $65eb: $5e
    and [hl]                                      ; $65ec: $a6
    ld b, l                                       ; $65ed: $45
    ld b, d                                       ; $65ee: $42
    halt                                          ; $65ef: $76
    db $f4                                        ; $65f0: $f4
    cp b                                          ; $65f1: $b8
    ld d, e                                       ; $65f2: $53
    ld a, e                                       ; $65f3: $7b
    sbc e                                         ; $65f4: $9b
    rst $38                                       ; $65f5: $ff
    ld c, e                                       ; $65f6: $4b
    ld l, h                                       ; $65f7: $6c
    or b                                          ; $65f8: $b0

jr_050_65f9:
    rst $18                                       ; $65f9: $df
    ld e, [hl]                                    ; $65fa: $5e
    ld a, b                                       ; $65fb: $78
    add hl, bc                                    ; $65fc: $09
    ldh [rOCPD], a                                ; $65fd: $e0 $6b
    inc bc                                        ; $65ff: $03
    dec b                                         ; $6600: $05
    xor $45                                       ; $6601: $ee $45
    inc b                                         ; $6603: $04
    rst $20                                       ; $6604: $e7
    pop hl                                        ; $6605: $e1
    ld d, e                                       ; $6606: $53
    add $56                                       ; $6607: $c6 $56
    or $18                                        ; $6609: $f6 $18
    or e                                          ; $660b: $b3
    call nc, $2d32                                ; $660c: $d4 $32 $2d
    ld d, d                                       ; $660f: $52
    adc $7e                                       ; $6610: $ce $7e
    cpl                                           ; $6612: $2f
    cp h                                          ; $6613: $bc
    inc b                                         ; $6614: $04
    ldh a, [$b5]                                  ; $6615: $f0 $b5
    dec a                                         ; $6617: $3d
    ld bc, $22f7                                  ; $6618: $01 $f7 $22

jr_050_661b:
    ld [bc], a                                    ; $661b: $02
    rst $20                                       ; $661c: $e7
    pop hl                                        ; $661d: $e1
    ld d, e                                       ; $661e: $53
    add $56                                       ; $661f: $c6 $56
    or $18                                        ; $6621: $f6 $18
    or e                                          ; $6623: $b3
    call nc, $2d32                                ; $6624: $d4 $32 $2d
    ld d, d                                       ; $6627: $52
    adc $7e                                       ; $6628: $ce $7e
    cpl                                           ; $662a: $2f
    cp h                                          ; $662b: $bc
    inc b                                         ; $662c: $04
    ldh a, [$b5]                                  ; $662d: $f0 $b5
    dec a                                         ; $662f: $3d
    ld bc, $22f7                                  ; $6630: $01 $f7 $22
    ld [bc], a                                    ; $6633: $02
    adc a                                         ; $6634: $8f
    dec bc                                        ; $6635: $0b
    ld bc, $8260                                  ; $6636: $01 $60 $82
    adc c                                         ; $6639: $89
    nop                                           ; $663a: $00
    db $db                                        ; $663b: $db
    ld b, $f0                                     ; $663c: $06 $f0
    or l                                          ; $663e: $b5
    dec a                                         ; $663f: $3d
    ld hl, $4f08                                  ; $6640: $21 $08 $4f
    ld [$2002], sp                                ; $6643: $08 $02 $20
    ld c, a                                       ; $6646: $4f
    jr c, jr_050_664b                             ; $6647: $38 $02

    ld c, a                                       ; $6649: $4f
    adc [hl]                                      ; $664a: $8e

jr_050_664b:
    rst $08                                       ; $664b: $cf

Jump_050_664c:
    ld b, h                                       ; $664c: $44
    ret nz                                        ; $664d: $c0

    ld sp, hl                                     ; $664e: $f9
    dec h                                         ; $664f: $25
    adc [hl]                                      ; $6650: $8e
    nop                                           ; $6651: $00
    ldh [$8c], a                                  ; $6652: $e0 $8c
    sub a                                         ; $6654: $97

jr_050_6655:
    adc d                                         ; $6655: $8a
    inc a                                         ; $6656: $3c
    ld [hl], d                                    ; $6657: $72
    db $dd                                        ; $6658: $dd
    ld a, a                                       ; $6659: $7f
    dec [hl]                                      ; $665a: $35
    ld [bc], a                                    ; $665b: $02
    ld c, a                                       ; $665c: $4f
    adc a                                         ; $665d: $8f
    ld c, a                                       ; $665e: $4f
    inc c                                         ; $665f: $0c
    and l                                         ; $6660: $a5
    ld hl, $fbf3                                  ; $6661: $21 $f3 $fb
    rst $38                                       ; $6664: $ff
    ret nz                                        ; $6665: $c0

    add hl, de                                    ; $6666: $19
    cpl                                           ; $6667: $2f
    dec d                                         ; $6668: $15
    ld a, c                                       ; $6669: $79
    jr nz, jr_050_661b                            ; $666a: $20 $af

    ei                                            ; $666c: $fb
    xor a                                         ; $666d: $af
    add [hl]                                      ; $666e: $86
    ld [$ef4f], sp                                ; $666f: $08 $4f $ef
    adc [hl]                                      ; $6672: $8e
    ld e, [hl]                                    ; $6673: $5e
    db $fd                                        ; $6674: $fd
    rst $28                                       ; $6675: $ef
    rst $10                                       ; $6676: $d7
    ld c, $e7                                     ; $6677: $0e $e7
    rst $00                                       ; $6679: $c7
    inc l                                         ; $667a: $2c
    ld [c], a                                     ; $667b: $e2
    dec bc                                        ; $667c: $0b
    adc $a3                                       ; $667d: $ce $a3
    sub a                                         ; $667f: $97
    xor $5a                                       ; $6680: $ee $5a
    ld a, [hl-]                                   ; $6682: $3a
    ld d, h                                       ; $6683: $54
    add hl, hl                                    ; $6684: $29
    add hl, hl                                    ; $6685: $29
    dec de                                        ; $6686: $1b
    db $d3                                        ; $6687: $d3
    xor e                                         ; $6688: $ab
    ld c, l                                       ; $6689: $4d
    ld b, e                                       ; $668a: $43
    inc b                                         ; $668b: $04
    ld c, a                                       ; $668c: $4f
    set 5, [hl]                                   ; $668d: $cb $ee
    add sp, -$27                                  ; $668f: $e8 $d9
    ld h, h                                       ; $6691: $64
    adc c                                         ; $6692: $89
    rst $00                                       ; $6693: $c7
    add d                                         ; $6694: $82
    di                                            ; $6695: $f3
    add sp, $47                                   ; $6696: $e8 $47
    dec de                                        ; $6698: $1b
    ld [bc], a                                    ; $6699: $02
    ld b, b                                       ; $669a: $40
    db $dd                                        ; $669b: $dd
    and a                                         ; $669c: $a7
    add l                                         ; $669d: $85
    ei                                            ; $669e: $fb
    db $f4                                        ; $669f: $f4
    ld a, [$6070]                                 ; $66a0: $fa $70 $60
    ld a, b                                       ; $66a3: $78
    ld h, l                                       ; $66a4: $65
    call nz, $a8af                                ; $66a5: $c4 $af $a8
    sub l                                         ; $66a8: $95
    ld c, b                                       ; $66a9: $48
    ld sp, hl                                     ; $66aa: $f9
    inc hl                                        ; $66ab: $23
    inc b                                         ; $66ac: $04
    ld c, a                                       ; $66ad: $4f
    ld hl, sp+$65                                 ; $66ae: $f8 $65
    sub [hl]                                      ; $66b0: $96
    ld e, b                                       ; $66b1: $58
    jr c, @+$32                                   ; $66b2: $38 $30

    cp h                                          ; $66b4: $bc
    ld [hl-], a                                   ; $66b5: $32
    ld [c], a                                     ; $66b6: $e2
    ld d, a                                       ; $66b7: $57
    call nc, $a44a                                ; $66b8: $d4 $4a $a4
    db $fc                                        ; $66bb: $fc
    ld de, $e702                                  ; $66bc: $11 $02 $e7

Call_050_66bf:
    ld hl, $d723                                  ; $66bf: $21 $23 $d7
    dec a                                         ; $66c2: $3d
    cp [hl]                                       ; $66c3: $be
    db $ec                                        ; $66c4: $ec
    add sp, -$07                                  ; $66c5: $e8 $f9
    db $fd                                        ; $66c7: $fd
    ld a, a                                       ; $66c8: $7f
    cp c                                          ; $66c9: $b9
    ld a, [hl]                                    ; $66ca: $7e
    ld [hl-], a                                   ; $66cb: $32
    xor $d4                                       ; $66cc: $ee $d4
    inc bc                                        ; $66ce: $03
    ld hl, sp-$26                                 ; $66cf: $f8 $da
    sbc [hl]                                      ; $66d1: $9e
    db $10                                        ; $66d2: $10
    adc b                                         ; $66d3: $88
    nop                                           ; $66d4: $00
    rst $20                                       ; $66d5: $e7
    ld hl, $7a3b                                  ; $66d6: $21 $3b $7a
    jp hl                                         ; $66d9: $e9


    ld d, b                                       ; $66da: $50
    and l                                         ; $66db: $a5
    and h                                         ; $66dc: $a4
    db $ec                                        ; $66dd: $ec
    reti                                          ; $66de: $d9


    ld l, h                                       ; $66df: $6c
    ld [hl-], a                                   ; $66e0: $32
    adc [hl]                                      ; $66e1: $8e
    rst $28                                       ; $66e2: $ef
    ld bc, $6d7c                                  ; $66e3: $01 $7c $6d
    sbc c                                         ; $66e6: $99
    ld b, b                                       ; $66e7: $40
    inc b                                         ; $66e8: $04
    rst $08                                       ; $66e9: $cf
    push af                                       ; $66ea: $f5
    ld l, h                                       ; $66eb: $6c
    ld hl, sp+$0c                                 ; $66ec: $f8 $0c
    add hl, bc                                    ; $66ee: $09
    and $23                                       ; $66ef: $e6 $23
    inc b                                         ; $66f1: $04
    rst $20                                       ; $66f2: $e7
    ret                                           ; $66f3: $c9


    or h                                          ; $66f4: $b4
    ld [$f15d], a                                 ; $66f5: $ea $5d $f1
    sbc b                                         ; $66f8: $98
    rst $18                                       ; $66f9: $df
    rst $38                                       ; $66fa: $ff
    dec d                                         ; $66fb: $15
    cpl                                           ; $66fc: $2f
    xor d                                         ; $66fd: $aa
    ld a, d                                       ; $66fe: $7a
    sbc c                                         ; $66ff: $99
    sbc a                                         ; $6700: $9f
    dec c                                         ; $6701: $0d
    ld e, a                                       ; $6702: $5f
    rra                                           ; $6703: $1f
    add hl, hl                                    ; $6704: $29
    ld [de], a                                    ; $6705: $12
    dec c                                         ; $6706: $0d
    ld de, $93a0                                  ; $6707: $11 $a0 $93
    adc a                                         ; $670a: $8f
    rlca                                          ; $670b: $07
    adc [hl]                                      ; $670c: $8e
    ld b, a                                       ; $670d: $47
    rst $20                                       ; $670e: $e7
    ld bc, $8dc2                                  ; $670f: $01 $c2 $8d
    rlca                                          ; $6712: $07
    xor c                                         ; $6713: $a9
    ld c, [hl]                                    ; $6714: $4e
    dec de                                        ; $6715: $1b
    adc e                                         ; $6716: $8b
    nop                                           ; $6717: $00
    ld c, a                                       ; $6718: $4f
    rst $28                                       ; $6719: $ef
    or h                                          ; $671a: $b4
    ld [$ebfd], a                                 ; $671b: $ea $fd $eb
    ld sp, $da62                                  ; $671e: $31 $62 $da
    ld h, a                                       ; $6721: $67
    add sp, -$0c                                  ; $6722: $e8 $f4
    ld l, d                                       ; $6724: $6a
    db $d3                                        ; $6725: $d3
    ld h, e                                       ; $6726: $63
    ld h, $d9                                     ; $6727: $26 $d9
    daa                                           ; $6729: $27
    add hl, bc                                    ; $672a: $09
    add h                                         ; $672b: $84
    db $10                                        ; $672c: $10
    ld bc, $cb4f                                  ; $672d: $01 $4f $cb
    ld c, [hl]                                    ; $6730: $4e
    xor e                                         ; $6731: $ab
    sbc [hl]                                      ; $6732: $9e
    ld c, l                                       ; $6733: $4d
    ld d, [hl]                                    ; $6734: $56
    xor $cb                                       ; $6735: $ee $cb
    rst $00                                       ; $6737: $c7
    ld h, a                                       ; $6738: $67
    sub $23                                       ; $6739: $d6 $23
    inc b                                         ; $673b: $04
    ld c, a                                       ; $673c: $4f
    rst $28                                       ; $673d: $ef
    or h                                          ; $673e: $b4
    ld [$ebfd], a                                 ; $673f: $ea $fd $eb
    ld sp, $da62                                  ; $6742: $31 $62 $da
    ld h, a                                       ; $6745: $67
    add sp, -$0c                                  ; $6746: $e8 $f4
    ld l, d                                       ; $6748: $6a
    db $d3                                        ; $6749: $d3

jr_050_674a:
    ld h, e                                       ; $674a: $63
    ld h, $d9                                     ; $674b: $26 $d9
    daa                                           ; $674d: $27
    add hl, bc                                    ; $674e: $09
    add h                                         ; $674f: $84
    db $10                                        ; $6750: $10
    ld bc, $4b8f                                  ; $6751: $01 $8f $4b
    db $ed                                        ; $6754: $ed
    add sp, -$57                                  ; $6755: $e8 $a9
    ld e, a                                       ; $6757: $5f
    halt                                          ; $6758: $76
    push hl                                       ; $6759: $e5
    ld a, $66                                     ; $675a: $3e $66
    xor c                                         ; $675c: $a9
    ld l, c                                       ; $675d: $69
    ld h, l                                       ; $675e: $65
    ld h, e                                       ; $675f: $63
    jp nz, Jump_050_6cfb                          ; $6760: $c2 $fb $6c

    ld [hl-], a                                   ; $6763: $32
    sub d                                         ; $6764: $92
    adc b                                         ; $6765: $88
    adc l                                         ; $6766: $8d
    sub c                                         ; $6767: $91
    inc de                                        ; $6768: $13
    ld e, [hl]                                    ; $6769: $5e
    db $10                                        ; $676a: $10
    ld bc, $f84f                                  ; $676b: $01 $4f $f8
    ld h, l                                       ; $676e: $65
    sub [hl]                                      ; $676f: $96
    ld e, b                                       ; $6770: $58
    cp b                                          ; $6771: $b8
    rst $20                                       ; $6772: $e7
    ld a, d                                       ; $6773: $7a
    ld [hl], $7c                                  ; $6774: $36 $7c
    ld sp, hl                                     ; $6776: $f9
    jr nz, jr_050_674a                            ; $6777: $20 $d1

    cp [hl]                                       ; $6779: $be
    ld [hl], d                                    ; $677a: $72
    sbc a                                         ; $677b: $9f
    ld c, l                                       ; $677c: $4d
    halt                                          ; $677d: $76
    push bc                                       ; $677e: $c5
    ld h, e                                       ; $677f: $63
    cp h                                          ; $6780: $bc
    xor b                                         ; $6781: $a8
    xor [hl]                                      ; $6782: $ae
    sbc [hl]                                      ; $6783: $9e
    cp l                                          ; $6784: $bd
    ld [$0211], a                                 ; $6785: $ea $11 $02
    ld c, a                                       ; $6788: $4f
    cp h                                          ; $6789: $bc
    call nz, Call_050_5b56                        ; $678a: $c4 $56 $5b
    cp h                                          ; $678d: $bc
    ld l, a                                       ; $678e: $6f
    ld c, $df                                     ; $678f: $0e $df
    pop de                                        ; $6791: $d1
    dec de                                        ; $6792: $1b
    ret nz                                        ; $6793: $c0

    rst $10                                       ; $6794: $d7
    or $84                                        ; $6795: $f6 $84
    ld b, b                                       ; $6797: $40
    inc b                                         ; $6798: $04
    rst $20                                       ; $6799: $e7
    ld hl, $7a3b                                  ; $679a: $21 $3b $7a
    ld d, a                                       ; $679d: $57
    inc a                                         ; $679e: $3c
    ld h, $2c                                     ; $679f: $26 $2c
    ld [$cee1], sp                                ; $67a1: $08 $e1 $ce
    sub e                                         ; $67a4: $93
    ld [hl], c                                    ; $67a5: $71
    ld a, h                                       ; $67a6: $7c
    rrca                                          ; $67a7: $0f
    ldh [rOCPD], a                                ; $67a8: $e0 $6b
    ld a, e                                       ; $67aa: $7b
    ld b, d                                       ; $67ab: $42
    jr nz, jr_050_67b0                            ; $67ac: $20 $02

    rst $08                                       ; $67ae: $cf
    push af                                       ; $67af: $f5

jr_050_67b0:
    db $f4                                        ; $67b0: $f4
    cp e                                          ; $67b1: $bb
    sub e                                         ; $67b2: $93
    ld e, $1d                                     ; $67b3: $1e $1d
    sub d                                         ; $67b5: $92
    rra                                           ; $67b6: $1f
    ld hl, $c9e7                                  ; $67b7: $21 $e7 $c9
    or h                                          ; $67ba: $b4
    ld [$f15d], a                                 ; $67bb: $ea $5d $f1
    ld e, b                                       ; $67be: $58
    and $47                                       ; $67bf: $e6 $47
    ld a, c                                       ; $67c1: $79
    ld d, c                                       ; $67c2: $51
    or l                                          ; $67c3: $b5
    ld a, h                                       ; $67c4: $7c
    ret                                           ; $67c5: $c9


    xor a                                         ; $67c6: $af
    add [hl]                                      ; $67c7: $86
    ld [$124f], sp                                ; $67c8: $08 $4f $12
    ld d, l                                       ; $67cb: $55
    adc l                                         ; $67cc: $8d
    rst $38                                       ; $67cd: $ff
    add h                                         ; $67ce: $84
    and $3d                                       ; $67cf: $e6 $3d
    sub c                                         ; $67d1: $91
    jp z, $0104                                   ; $67d2: $ca $04 $01

    ld c, a                                       ; $67d5: $4f
    adc a                                         ; $67d6: $8f
    ld c, a                                       ; $67d7: $4f
    inc c                                         ; $67d8: $0c
    and l                                         ; $67d9: $a5
    ld hl, $fbf3                                  ; $67da: $21 $f3 $fb
    rst $38                                       ; $67dd: $ff
    sbc [hl]                                      ; $67de: $9e
    inc h                                         ; $67df: $24
    xor d                                         ; $67e0: $aa
    ld a, [de]                                    ; $67e1: $1a
    rst $38                                       ; $67e2: $ff
    add hl, bc                                    ; $67e3: $09
    call $5d03                                    ; $67e4: $cd $03 $5d
    ld [$5266], a                                 ; $67e7: $ea $66 $52
    ld a, e                                       ; $67ea: $7b
    ld [hl+], a                                   ; $67eb: $22
    sub l                                         ; $67ec: $95
    add hl, bc                                    ; $67ed: $09
    ld [bc], a                                    ; $67ee: $02
    adc a                                         ; $67ef: $8f
    ld c, e                                       ; $67f0: $4b
    dec l                                         ; $67f1: $2d
    db $dd                                        ; $67f2: $dd
    add hl, bc                                    ; $67f3: $09
    xor c                                         ; $67f4: $a9
    sbc $15                                       ; $67f5: $de $15
    adc a                                         ; $67f7: $8f
    sub c                                         ; $67f8: $91
    inc de                                        ; $67f9: $13
    ld e, [hl]                                    ; $67fa: $5e
    di                                            ; $67fb: $f3
    ei                                            ; $67fc: $fb
    ld a, a                                       ; $67fd: $7f
    cp d                                          ; $67fe: $ba
    ld c, b                                       ; $67ff: $48
    ld c, l                                       ; $6800: $4d
    add hl, de                                    ; $6801: $19
    ld a, e                                       ; $6802: $7b
    inc sp                                        ; $6803: $33
    add h                                         ; $6804: $84
    ld d, b                                       ; $6805: $50
    cpl                                           ; $6806: $2f
    dec sp                                        ; $6807: $3b
    xor l                                         ; $6808: $ad
    ld a, d                                       ; $6809: $7a
    ld [hl], $79                                  ; $680a: $36 $79
    add h                                         ; $680c: $84
    nop                                           ; $680d: $00
    ld c, a                                       ; $680e: $4f
    res 1, [hl]                                   ; $680f: $cb $8e
    sub h                                         ; $6811: $94
    adc h                                         ; $6812: $8c
    ld e, c                                       ; $6813: $59
    ld l, d                                       ; $6814: $6a
    ld sp, hl                                     ; $6815: $f9
    ld hl, sp-$34                                 ; $6816: $f8 $cc
    sbc d                                         ; $6818: $9a
    rst $18                                       ; $6819: $df
    rst $38                                       ; $681a: $ff
    ld h, a                                       ; $681b: $67
    xor a                                         ; $681c: $af
    ld a, d                                       ; $681d: $7a
    or h                                          ; $681e: $b4
    ld hl, $6540                                  ; $681f: $21 $40 $65
    and l                                         ; $6822: $a5
    adc a                                         ; $6823: $8f
    ld e, [hl]                                    ; $6824: $5e
    xor c                                         ; $6825: $a9
    ld [hl], c                                    ; $6826: $71
    and l                                         ; $6827: $a5
    sbc e                                         ; $6828: $9b
    cp [hl]                                       ; $6829: $be
    ld e, $cd                                     ; $682a: $1e $cd
    ld a, [hl]                                    ; $682c: $7e
    ld h, b                                       ; $682d: $60
    ld a, b                                       ; $682e: $78
    pop af                                        ; $682f: $f1
    dec hl                                        ; $6830: $2b
    ld l, d                                       ; $6831: $6a
    dec h                                         ; $6832: $25
    ld d, d                                       ; $6833: $52
    cp $08                                        ; $6834: $fe $08
    ld bc, $4b8f                                  ; $6836: $01 $8f $4b
    xor e                                         ; $6839: $ab
    or e                                          ; $683a: $b3
    reti                                          ; $683b: $d9


    ldh a, [$e9]                                  ; $683c: $f0 $e9
    push de                                       ; $683e: $d5
    bit 1, c                                      ; $683f: $cb $49
    dec sp                                        ; $6841: $3b
    inc e                                         ; $6842: $1c
    jr jr_050_68a3                                ; $6843: $18 $5e

    db $fc                                        ; $6845: $fc
    adc d                                         ; $6846: $8a
    ld e, d                                       ; $6847: $5a
    adc c                                         ; $6848: $89
    sub h                                         ; $6849: $94
    ccf                                           ; $684a: $3f
    ld b, d                                       ; $684b: $42
    ld b, b                                       ; $684c: $40
    push bc                                       ; $684d: $c5
    ld d, [hl]                                    ; $684e: $56
    or $01                                        ; $684f: $f6 $01
    ld a, h                                       ; $6851: $7c
    ld l, l                                       ; $6852: $6d
    ld c, a                                       ; $6853: $4f
    ld [$8f44], sp                                ; $6854: $08 $44 $8f
    ld c, e                                       ; $6857: $4b
    adc l                                         ; $6858: $8d
    sub h                                         ; $6859: $94
    ld c, h                                       ; $685a: $4c
    push bc                                       ; $685b: $c5
    db $ec                                        ; $685c: $ec
    ld d, l                                       ; $685d: $55
    or e                                          ; $685e: $b3
    pop af                                        ; $685f: $f1
    cpl                                           ; $6860: $2f
    add hl, hl                                    ; $6861: $29
    xor a                                         ; $6862: $af
    dec c                                         ; $6863: $0d
    ldh [rOCPD], a                                ; $6864: $e0 $6b
    ld a, e                                       ; $6866: $7b
    ld b, d                                       ; $6867: $42
    jr nz, jr_050_686c                            ; $6868: $20 $02

    and b                                         ; $686a: $a0
    ld a, b                                       ; $686b: $78

jr_050_686c:
    adc a                                         ; $686c: $8f
    sbc [hl]                                      ; $686d: $9e
    dec c                                         ; $686e: $0d
    ld e, a                                       ; $686f: $5f
    and l                                         ; $6870: $a5
    ld d, d                                       ; $6871: $52
    add c                                         ; $6872: $81
    ld a, e                                       ; $6873: $7b
    and l                                         ; $6874: $a5
    db $e3                                        ; $6875: $e3
    ei                                            ; $6876: $fb
    inc hl                                        ; $6877: $23
    inc b                                         ; $6878: $04
    rst $20                                       ; $6879: $e7
    pop hl                                        ; $687a: $e1
    ld c, e                                       ; $687b: $4b
    rst $38                                       ; $687c: $ff
    db $db                                        ; $687d: $db
    db $e3                                        ; $687e: $e3
    ld c, [hl]                                    ; $687f: $4e
    dec a                                         ; $6880: $3d
    jp z, $914a                                   ; $6881: $ca $4a $91

    ldh a, [$71]                                  ; $6884: $f0 $71
    and a                                         ; $6886: $a7
    sbc [hl]                                      ; $6887: $9e
    cp l                                          ; $6888: $bd
    or d                                          ; $6889: $b2
    ld c, h                                       ; $688a: $4c
    adc e                                         ; $688b: $8b
    ret nz                                        ; $688c: $c0

    add c                                         ; $688d: $81
    pop hl                                        ; $688e: $e1
    push bc                                       ; $688f: $c5
    xor a                                         ; $6890: $af
    xor b                                         ; $6891: $a8
    sub l                                         ; $6892: $95
    ld c, b                                       ; $6893: $48
    ld sp, hl                                     ; $6894: $f9
    inc hl                                        ; $6895: $23
    inc b                                         ; $6896: $04
    and b                                         ; $6897: $a0
    rl [hl]                                       ; $6898: $cb $16
    dec e                                         ; $689a: $1d
    add sp, -$06                                  ; $689b: $e8 $fa
    db $e4                                        ; $689d: $e4

jr_050_689e:
    ld c, d                                       ; $689e: $4a
    ld b, [hl]                                    ; $689f: $46
    ld c, a                                       ; $68a0: $4f
    adc a                                         ; $68a1: $8f
    ld c, a                                       ; $68a2: $4f

jr_050_68a3:
    inc c                                         ; $68a3: $0c
    and l                                         ; $68a4: $a5
    ld hl, $fbf3                                  ; $68a5: $21 $f3 $fb
    rst $38                                       ; $68a8: $ff
    ld b, b                                       ; $68a9: $40
    sub a                                         ; $68aa: $97
    dec l                                         ; $68ab: $2d
    ld a, [hl-]                                   ; $68ac: $3a
    ret nc                                        ; $68ad: $d0

    push af                                       ; $68ae: $f5
    ret                                           ; $68af: $c9


    sub l                                         ; $68b0: $95
    inc a                                         ; $68b1: $3c
    sub b                                         ; $68b2: $90
    rst $38                                       ; $68b3: $ff
    or b                                          ; $68b4: $b0
    ld d, d                                       ; $68b5: $52
    ld [hl], $7a                                  ; $68b6: $36 $7a
    ret nz                                        ; $68b8: $c0

    ld c, [hl]                                    ; $68b9: $4e
    dec a                                         ; $68ba: $3d
    ld b, b                                       ; $68bb: $40
    rst $38                                       ; $68bc: $ff
    rst $10                                       ; $68bd: $d7
    jr nc, jr_050_689e                            ; $68be: $30 $de

    rst $38                                       ; $68c0: $ff
    cp c                                          ; $68c1: $b9
    db $e3                                        ; $68c2: $e3
    rst $38                                       ; $68c3: $ff
    db $10                                        ; $68c4: $10
    adc b                                         ; $68c5: $88

Call_050_68c6:
Jump_050_68c6:
    nop                                           ; $68c6: $00
    rrca                                          ; $68c7: $0f
    push de                                       ; $68c8: $d5
    or e                                          ; $68c9: $b3
    ret                                           ; $68ca: $c9


    add h                                         ; $68cb: $84
    rst $30                                       ; $68cc: $f7
    sub l                                         ; $68cd: $95
    ei                                            ; $68ce: $fb
    ld a, [c]                                     ; $68cf: $f2
    pop af                                        ; $68d0: $f1
    sbc c                                         ; $68d1: $99
    ld [hl], l                                    ; $68d2: $75
    ld [hl], $7a                                  ; $68d3: $36 $7a
    ld h, l                                       ; $68d5: $65
    db $e4                                        ; $68d6: $e4
    add sp, $7a                                   ; $68d7: $e8 $7a
    inc [hl]                                      ; $68d9: $34
    ld h, b                                       ; $68da: $60
    db $fc                                        ; $68db: $fc
    ld [hl], d                                    ; $68dc: $72
    ld c, h                                       ; $68dd: $4c
    cpl                                           ; $68de: $2f
    dec sp                                        ; $68df: $3b
    dec de                                        ; $68e0: $1b
    cp [hl]                                       ; $68e1: $be
    and e                                         ; $68e2: $a3
    ld hl, $4f02                                  ; $68e3: $21 $02 $4f
    sra [hl]                                      ; $68e6: $cb $2e
    dec e                                         ; $68e8: $1d
    jp c, $8f49                                   ; $68e9: $da $49 $8f

    sbc [hl]                                      ; $68ec: $9e
    ld c, l                                       ; $68ed: $4d
    ld e, $ed                                     ; $68ee: $1e $ed
    ld [hl], c                                    ; $68f0: $71
    xor c                                         ; $68f1: $a9
    ld a, c                                       ; $68f2: $79
    sbc e                                         ; $68f3: $9b
    ld e, [hl]                                    ; $68f4: $5e
    cp c                                          ; $68f5: $b9
    ld c, a                                       ; $68f6: $4f
    cp a                                          ; $68f7: $bf
    db $d3                                        ; $68f8: $d3
    xor d                                         ; $68f9: $aa
    ld h, a                                       ; $68fa: $67
    xor a                                         ; $68fb: $af
    inc l                                         ; $68fc: $2c
    cp e                                          ; $68fd: $bb
    jp hl                                         ; $68fe: $e9


    rra                                           ; $68ff: $1f
    inc b                                         ; $6900: $04
    ld [hl+], a                                   ; $6901: $22
    rst $20                                       ; $6902: $e7
    ld hl, $2bc3                                  ; $6903: $21 $c3 $2b
    rst $20                                       ; $6906: $e7
    ld [$bba5], a                                 ; $6907: $ea $a5 $bb
    add [hl]                                      ; $690a: $86
    di                                            ; $690b: $f3
    or e                                          ; $690c: $b3
    ld d, a                                       ; $690d: $57
    pop bc                                        ; $690e: $c1
    add c                                         ; $690f: $81
    pop hl                                        ; $6910: $e1
    push bc                                       ; $6911: $c5
    xor a                                         ; $6912: $af
    xor b                                         ; $6913: $a8
    sub l                                         ; $6914: $95
    ld c, b                                       ; $6915: $48
    ld sp, hl                                     ; $6916: $f9
    inc hl                                        ; $6917: $23
    inc b                                         ; $6918: $04
    rst $20                                       ; $6919: $e7
    pop hl                                        ; $691a: $e1
    db $d3                                        ; $691b: $d3
    xor e                                         ; $691c: $ab
    sub a                                         ; $691d: $97
    ld e, c                                       ; $691e: $59
    ld h, d                                       ; $691f: $62
    rst $08                                       ; $6920: $cf
    ld b, [hl]                                    ; $6921: $46
    adc [hl]                                      ; $6922: $8e
    xor [hl]                                      ; $6923: $ae
    reti                                          ; $6924: $d9


    inc b                                         ; $6925: $04
    ld c, $0c                                     ; $6926: $0e $0c
    cpl                                           ; $6928: $2f
    ld a, [hl]                                    ; $6929: $7e
    ld b, l                                       ; $692a: $45
    xor l                                         ; $692b: $ad
    ld b, h                                       ; $692c: $44
    jp z, Jump_000_211f                           ; $692d: $ca $1f $21

    rst $20                                       ; $6930: $e7
    pop hl                                        ; $6931: $e1
    inc hl                                        ; $6932: $23
    ld h, $7b                                     ; $6933: $26 $7b
    push af                                       ; $6935: $f5
    db $ec                                        ; $6936: $ec
    ld d, l                                       ; $6937: $55
    inc bc                                        ; $6938: $03
    ld hl, sp-$26                                 ; $6939: $f8 $da
    sbc [hl]                                      ; $693b: $9e
    db $10                                        ; $693c: $10
    adc b                                         ; $693d: $88
    nop                                           ; $693e: $00
    adc a                                         ; $693f: $8f
    ld c, e                                       ; $6940: $4b
    xor l                                         ; $6941: $ad
    call nz, Call_050_57ab                        ; $6942: $c4 $ab $57
    xor $63                                       ; $6945: $ee $63
    sub [hl]                                      ; $6947: $96
    ld a, [de]                                    ; $6948: $1a
    add hl, hl                                    ; $6949: $29
    sbc c                                         ; $694a: $99
    adc d                                         ; $694b: $8a
    reti                                          ; $694c: $d9


    xor e                                         ; $694d: $ab
    ld b, $f0                                     ; $694e: $06 $f0
    or l                                          ; $6950: $b5
    dec a                                         ; $6951: $3d
    ld hl, $0110                                  ; $6952: $21 $10 $01
    ldh [$2a], a                                  ; $6955: $e0 $2a
    rst $20                                       ; $6957: $e7
    ld [$f0d9], a                                 ; $6958: $ea $d9 $f0
    ld b, a                                       ; $695b: $47
    ld [$e1e7], sp                                ; $695c: $08 $e7 $e1
    dec sp                                        ; $695f: $3b
    ld a, d                                       ; $6960: $7a
    inc [hl]                                      ; $6961: $34
    ld a, d                                       ; $6962: $7a
    add a                                         ; $6963: $87
    call z, $d326                                 ; $6964: $cc $26 $d3
    xor d                                         ; $6967: $aa
    rst $08                                       ; $6968: $cf
    ld d, $ff                                     ; $6969: $16 $ff
    ld b, a                                       ; $696b: $47
    ld c, a                                       ; $696c: $4f
    ld c, e                                       ; $696d: $4b
    ld a, [$c0d1]                                 ; $696e: $fa $d1 $c0
    ldh a, [$ee]                                  ; $6971: $f0 $ee
    dec hl                                        ; $6973: $2b
    sub c                                         ; $6974: $91
    ld a, [c]                                     ; $6975: $f2
    ld b, a                                       ; $6976: $47
    ld [$8dc0], sp                                ; $6977: $08 $c0 $8d
    cp l                                          ; $697a: $bd
    ld e, c                                       ; $697b: $59
    cpl                                           ; $697c: $2f
    dec h                                         ; $697d: $25
    ld [$aea0], sp                                ; $697e: $08 $a0 $ae
    rst $00                                       ; $6981: $c7
    sub h                                         ; $6982: $94
    or c                                          ; $6983: $b1
    scf                                           ; $6984: $37
    sbc a                                         ; $6985: $9f
    adc l                                         ; $6986: $8d
    sub h                                         ; $6987: $94
    ld h, h                                       ; $6988: $64
    ld [de], a                                    ; $6989: $12
    adc a                                         ; $698a: $8f
    or [hl]                                       ; $698b: $b6
    di                                            ; $698c: $f3
    ldh a, [$71]                                  ; $698d: $f0 $71
    ld d, a                                       ; $698f: $57
    inc h                                         ; $6990: $24
    adc a                                         ; $6991: $8f
    or d                                          ; $6992: $b2
    ld d, d                                       ; $6993: $52
    inc h                                         ; $6994: $24
    ld a, h                                       ; $6995: $7c
    jp z, Jump_050_43b8                           ; $6996: $ca $b8 $43

    inc b                                         ; $6999: $04
    ret nz                                        ; $699a: $c0

    ld hl, sp-$1b                                 ; $699b: $f8 $e5
    sbc b                                         ; $699d: $98
    ld e, [hl]                                    ; $699e: $5e
    halt                                          ; $699f: $76
    ld [hl], $99                                  ; $69a0: $36 $99
    ld d, [hl]                                    ; $69a2: $56
    cp l                                          ; $69a3: $bd
    ld [hl], d                                    ; $69a4: $72
    ld e, a                                       ; $69a5: $5f
    ld [hl], h                                    ; $69a6: $74
    sbc d                                         ; $69a7: $9a
    sbc c                                         ; $69a8: $99
    ret c                                         ; $69a9: $d8

    add d                                         ; $69aa: $82
    ld [$cb4f], sp                                ; $69ab: $08 $4f $cb
    ld c, [hl]                                    ; $69ae: $4e
    cp a                                          ; $69af: $bf
    rst $38                                       ; $69b0: $ff
    rst $08                                       ; $69b1: $cf
    ld h, $d3                                     ; $69b2: $26 $d3
    ld l, d                                       ; $69b4: $6a
    sub [hl]                                      ; $69b5: $96
    ccf                                           ; $69b6: $3f
    db $db                                        ; $69b7: $db
    cp a                                          ; $69b8: $bf
    rst $38                                       ; $69b9: $ff
    rst $10                                       ; $69ba: $d7
    ld d, h                                       ; $69bb: $54
    sub d                                         ; $69bc: $92
    ld c, [hl]                                    ; $69bd: $4e
    add a                                         ; $69be: $87
    inc a                                         ; $69bf: $3c
    ld b, d                                       ; $69c0: $42
    rst $20                                       ; $69c1: $e7
    pop hl                                        ; $69c2: $e1
    res 4, h                                      ; $69c3: $cb $a4
    ld h, $46                                     ; $69c5: $26 $46
    dec l                                         ; $69c7: $2d
    ei                                            ; $69c8: $fb
    db $fd                                        ; $69c9: $fd
    cp a                                          ; $69ca: $bf
    sub [hl]                                      ; $69cb: $96
    inc de                                        ; $69cc: $13
    dec d                                         ; $69cd: $15
    ld c, $07                                     ; $69ce: $0e $07
    add [hl]                                      ; $69d0: $86
    rla                                           ; $69d1: $17
    cp a                                          ; $69d2: $bf
    and d                                         ; $69d3: $a2
    ld d, [hl]                                    ; $69d4: $56
    ld [hl+], a                                   ; $69d5: $22
    push hl                                       ; $69d6: $e5
    adc a                                         ; $69d7: $8f
    db $10                                        ; $69d8: $10
    adc a                                         ; $69d9: $8f
    ld c, e                                       ; $69da: $4b
    xor e                                         ; $69db: $ab
    or e                                          ; $69dc: $b3
    reti                                          ; $69dd: $d9


    ldh a, [$e9]                                  ; $69de: $f0 $e9
    push de                                       ; $69e0: $d5
    sra h                                         ; $69e1: $cb $2c
    or c                                          ; $69e3: $b1
    ld [hl], b                                    ; $69e4: $70
    inc bc                                        ; $69e5: $03
    jp Jump_050_5f8b                              ; $69e6: $c3 $8b $5f


    ld d, c                                       ; $69e9: $51
    dec hl                                        ; $69ea: $2b
    sub c                                         ; $69eb: $91
    ld a, [c]                                     ; $69ec: $f2
    ld b, a                                       ; $69ed: $47
    ld [$8f4f], sp                                ; $69ee: $08 $4f $8f
    ld l, a                                       ; $69f1: $6f
    xor a                                         ; $69f2: $af
    ld a, [c]                                     ; $69f3: $f2
    ld h, l                                       ; $69f4: $65
    ld e, d                                       ; $69f5: $5a
    db $e4                                        ; $69f6: $e4
    ld e, a                                       ; $69f7: $5f
    push hl                                       ; $69f8: $e5

Jump_050_69f9:
    inc sp                                        ; $69f9: $33
    add hl, hl                                    ; $69fa: $29
    ld l, l                                       ; $69fb: $6d
    jp hl                                         ; $69fc: $e9


    ld [$c01a], a                                 ; $69fd: $ea $1a $c0
    rst $10                                       ; $6a00: $d7
    or $84                                        ; $6a01: $f6 $84
    ld b, b                                       ; $6a03: $40
    inc b                                         ; $6a04: $04
    adc a                                         ; $6a05: $8f
    ld c, e                                       ; $6a06: $4b
    adc l                                         ; $6a07: $8d
    sbc h                                         ; $6a08: $9c
    ldh a, [$e8]                                  ; $6a09: $f0 $e8
    reti                                          ; $6a0b: $d9


    sub b                                         ; $6a0c: $90
    ld [hl], c                                    ; $6a0d: $71
    and a                                         ; $6a0e: $a7
    ld e, $c0                                     ; $6a0f: $1e $c0
    rst $10                                       ; $6a11: $d7
    or $84                                        ; $6a12: $f6 $84
    ld b, b                                       ; $6a14: $40
    inc b                                         ; $6a15: $04
    rst $20                                       ; $6a16: $e7
    db $fc                                        ; $6a17: $fc
    adc [hl]                                      ; $6a18: $8e
    sbc [hl]                                      ; $6a19: $9e
    dec c                                         ; $6a1a: $0d
    ld e, a                                       ; $6a1b: $5f
    jp hl                                         ; $6a1c: $e9


    adc d                                         ; $6a1d: $8a
    ld l, c                                       ; $6a1e: $69
    jp c, Jump_000_211f                           ; $6a1f: $da $1f $21

    ld h, b                                       ; $6a22: $60
    sbc c                                         ; $6a23: $99
    ld h, a                                       ; $6a24: $67
    ld h, e                                       ; $6a25: $63
    sub [hl]                                      ; $6a26: $96
    sbc d                                         ; $6a27: $9a
    or a                                          ; $6a28: $b7
    jp hl                                         ; $6a29: $e9


    ld e, l                                       ; $6a2a: $5d
    pop af                                        ; $6a2b: $f1
    ld e, b                                       ; $6a2c: $58
    cp c                                          ; $6a2d: $b9
    rst $08                                       ; $6a2e: $cf
    ld h, $d3                                     ; $6a2f: $26 $d3
    xor d                                         ; $6a31: $aa
    sub a                                         ; $6a32: $97
    ld sp, hl                                     ; $6a33: $f9
    ld d, c                                       ; $6a34: $51
    ld d, [hl]                                    ; $6a35: $56
    adc d                                         ; $6a36: $8a
    add h                                         ; $6a37: $84
    ld b, e                                       ; $6a38: $43
    inc b                                         ; $6a39: $04
    sbc b                                         ; $6a3a: $98
    and e                                         ; $6a3b: $a3
    ld a, [c]                                     ; $6a3c: $f2
    rrca                                          ; $6a3d: $0f
    ld d, [hl]                                    ; $6a3e: $56
    ld e, $e8                                     ; $6a3f: $1e $e8
    ld l, d                                       ; $6a41: $6a
    ld [hl+], a                                   ; $6a42: $22
    ld h, l                                       ; $6a43: $65
    ld de, $8f4f                                  ; $6a44: $11 $4f $8f
    ld c, a                                       ; $6a47: $4f
    inc c                                         ; $6a48: $0c
    and l                                         ; $6a49: $a5
    ld hl, $fbf3                                  ; $6a4a: $21 $f3 $fb
    rst $38                                       ; $6a4d: $ff
    jr nc, jr_050_6a97                            ; $6a4e: $30 $47

    push hl                                       ; $6a50: $e5
    rra                                           ; $6a51: $1f
    xor h                                         ; $6a52: $ac
    inc a                                         ; $6a53: $3c
    ld h, l                                       ; $6a54: $65
    db $ec                                        ; $6a55: $ec
    call $9ab4                                    ; $6a56: $cd $b4 $9a
    ld c, b                                       ; $6a59: $48
    ld e, c                                       ; $6a5a: $59
    adc b                                         ; $6a5b: $88
    nop                                           ; $6a5c: $00
    ld c, a                                       ; $6a5d: $4f
    bit 1, [hl]                                   ; $6a5e: $cb $4e
    xor e                                         ; $6a60: $ab
    sbc [hl]                                      ; $6a61: $9e
    ld c, l                                       ; $6a62: $4d
    ld e, $21                                     ; $6a63: $1e $21
    ld c, a                                       ; $6a65: $4f
    bit 1, [hl]                                   ; $6a66: $cb $4e
    cp a                                          ; $6a68: $bf
    rst $38                                       ; $6a69: $ff
    rst $08                                       ; $6a6a: $cf
    ld h, $d3                                     ; $6a6b: $26 $d3
    ld [$0211], a                                 ; $6a6d: $ea $11 $02
    add b                                         ; $6a70: $80
    cp $f7                                        ; $6a71: $fe $f7
    ld l, e                                       ; $6a73: $6b
    rst $30                                       ; $6a74: $f7
    cpl                                           ; $6a75: $2f
    xor c                                         ; $6a76: $a9

Call_050_6a77:
    pop hl                                        ; $6a77: $e1
    ld b, $4f                                     ; $6a78: $06 $4f
    cp $d1                                        ; $6a7a: $fe $d1
    ld [hl], b                                    ; $6a7c: $70
    inc bc                                        ; $6a7d: $03
    jp $232b                                      ; $6a7e: $c3 $2b $23


    ld a, [hl]                                    ; $6a81: $7e
    ld b, l                                       ; $6a82: $45
    xor l                                         ; $6a83: $ad
    ld b, h                                       ; $6a84: $44
    jp z, Jump_000_211f                           ; $6a85: $ca $1f $21

    rst $20                                       ; $6a88: $e7
    ret                                           ; $6a89: $c9


    ld c, b                                       ; $6a8a: $48
    ld c, c                                       ; $6a8b: $49
    ld h, $31                                     ; $6a8c: $26 $31
    ld e, [hl]                                    ; $6a8e: $5e
    ld d, h                                       ; $6a8f: $54
    ld d, a                                       ; $6a90: $57
    rst $08                                       ; $6a91: $cf
    ld e, [hl]                                    ; $6a92: $5e
    or l                                          ; $6a93: $b5
    inc e                                         ; $6a94: $1c
    ld d, d                                       ; $6a95: $52
    dec e                                         ; $6a96: $1d

jr_050_6a97:
    ld [hl], b                                    ; $6a97: $70
    inc bc                                        ; $6a98: $03
    jp $232b                                      ; $6a99: $c3 $2b $23


    ld a, [hl]                                    ; $6a9c: $7e
    ld b, l                                       ; $6a9d: $45
    xor l                                         ; $6a9e: $ad
    ld b, h                                       ; $6a9f: $44
    jp z, Jump_000_211f                           ; $6aa0: $ca $1f $21

    rst $20                                       ; $6aa3: $e7
    pop hl                                        ; $6aa4: $e1
    inc hl                                        ; $6aa5: $23
    ld h, $7b                                     ; $6aa6: $26 $7b
    push af                                       ; $6aa8: $f5
    nop                                           ; $6aa9: $00
    cp [hl]                                       ; $6aaa: $be
    or [hl]                                       ; $6aab: $b6
    daa                                           ; $6aac: $27
    inc b                                         ; $6aad: $04
    ld [hl+], a                                   ; $6aae: $22
    ld b, b                                       ; $6aaf: $40
    add hl, sp                                    ; $6ab0: $39
    adc a                                         ; $6ab1: $8f
    adc $86                                       ; $6ab2: $ce $86
    adc $86                                       ; $6ab4: $ce $86
    db $ec                                        ; $6ab6: $ec
    add sp, -$5b                                  ; $6ab7: $e8 $a5
    ld b, e                                       ; $6ab9: $43
    sub l                                         ; $6aba: $95
    sub d                                         ; $6abb: $92
    or d                                          ; $6abc: $b2
    inc hl                                        ; $6abd: $23
    dec h                                         ; $6abe: $25
    ld h, e                                       ; $6abf: $63
    sub [hl]                                      ; $6ac0: $96
    sbc d                                         ; $6ac1: $9a
    adc d                                         ; $6ac2: $8a
    reti                                          ; $6ac3: $d9


    xor e                                         ; $6ac4: $ab
    ld b, $f0                                     ; $6ac5: $06 $f0
    or l                                          ; $6ac7: $b5
    dec a                                         ; $6ac8: $3d
    ld hl, $0110                                  ; $6ac9: $21 $10 $01
    rst $08                                       ; $6acc: $cf
    push af                                       ; $6acd: $f5
    ld l, h                                       ; $6ace: $6c
    ld hl, sp+$0c                                 ; $6acf: $f8 $0c
    add hl, bc                                    ; $6ad1: $09
    and $23                                       ; $6ad2: $e6 $23
    inc b                                         ; $6ad4: $04
    rst $20                                       ; $6ad5: $e7
    ret                                           ; $6ad6: $c9


    or h                                          ; $6ad7: $b4
    ld [$f15d], a                                 ; $6ad8: $ea $5d $f1
    ld e, b                                       ; $6adb: $58
    di                                            ; $6adc: $f3
    halt                                          ; $6add: $76
    inc [hl]                                      ; $6ade: $34
    db $ec                                        ; $6adf: $ec
    ld l, h                                       ; $6ae0: $6c
    ld hl, sp-$27                                 ; $6ae1: $f8 $d9
    ld e, $aa                                     ; $6ae3: $1e $aa
    sbc e                                         ; $6ae5: $9b
    dec b                                         ; $6ae6: $05
    ld de, $a398                                  ; $6ae7: $11 $98 $a3
    ld a, [c]                                     ; $6aea: $f2
    rrca                                          ; $6aeb: $0f
    sub $cb                                       ; $6aec: $d6 $cb
    xor [hl]                                      ; $6aee: $ae
    rst $18                                       ; $6aef: $df
    rst $38                                       ; $6af0: $ff
    xor a                                         ; $6af1: $af
    xor b                                         ; $6af2: $a8
    ld l, d                                       ; $6af3: $6a
    xor c                                         ; $6af4: $a9
    inc a                                         ; $6af5: $3c
    ld h, b                                       ; $6af6: $60
    inc l                                         ; $6af7: $2c
    or c                                          ; $6af8: $b1
    ld [$8f4f], sp                                ; $6af9: $08 $4f $8f
    ld c, a                                       ; $6afc: $4f
    inc c                                         ; $6afd: $0c
    and l                                         ; $6afe: $a5
    ld hl, $fbf3                                  ; $6aff: $21 $f3 $fb
    rst $38                                       ; $6b02: $ff
    jr nc, jr_050_6b4c                            ; $6b03: $30 $47

    push hl                                       ; $6b05: $e5
    rra                                           ; $6b06: $1f
    xor h                                         ; $6b07: $ac
    inc a                                         ; $6b08: $3c
    ld [hl], b                                    ; $6b09: $70
    ld l, l                                       ; $6b0a: $6d
    db $f4                                        ; $6b0b: $f4
    ld e, e                                       ; $6b0c: $5b
    ld [c], a                                     ; $6b0d: $e2
    inc e                                         ; $6b0e: $1c
    ld c, e                                       ; $6b0f: $4b
    ld l, h                                       ; $6b10: $6c
    jp c, $8858                                   ; $6b11: $da $58 $88

    nop                                           ; $6b14: $00

Call_050_6b15:
    ld c, a                                       ; $6b15: $4f
    bit 1, [hl]                                   ; $6b16: $cb $4e
    xor e                                         ; $6b18: $ab
    sbc [hl]                                      ; $6b19: $9e
    ld c, l                                       ; $6b1a: $4d
    ld e, $21                                     ; $6b1b: $1e $21
    ld c, a                                       ; $6b1d: $4f
    bit 1, [hl]                                   ; $6b1e: $cb $4e
    cp a                                          ; $6b20: $bf
    rst $38                                       ; $6b21: $ff
    rst $08                                       ; $6b22: $cf
    ld h, $d3                                     ; $6b23: $26 $d3
    ld [$0211], a                                 ; $6b25: $ea $11 $02
    rst $20                                       ; $6b28: $e7
    pop hl                                        ; $6b29: $e1
    dec sp                                        ; $6b2a: $3b
    ld a, d                                       ; $6b2b: $7a
    ld hl, $bf23                                  ; $6b2c: $21 $23 $bf
    ld a, d                                       ; $6b2f: $7a
    ld e, h                                       ; $6b30: $5c
    jp hl                                         ; $6b31: $e9


    and [hl]                                      ; $6b32: $a6
    xor a                                         ; $6b33: $af
    cpl                                           ; $6b34: $2f
    db $fd                                        ; $6b35: $fd
    ld c, e                                       ; $6b36: $4b
    db $ec                                        ; $6b37: $ec
    jr z, jr_050_6b69                             ; $6b38: $28 $2f

    xor d                                         ; $6b3a: $aa
    ldh [rTMA], a                                 ; $6b3b: $e0 $06
    add [hl]                                      ; $6b3d: $86
    ld d, a                                       ; $6b3e: $57
    ld b, [hl]                                    ; $6b3f: $46
    db $fc                                        ; $6b40: $fc
    adc d                                         ; $6b41: $8a
    ld e, d                                       ; $6b42: $5a
    adc c                                         ; $6b43: $89
    sub h                                         ; $6b44: $94
    ccf                                           ; $6b45: $3f
    ld b, d                                       ; $6b46: $42
    rst $20                                       ; $6b47: $e7
    ret                                           ; $6b48: $c9


    db $f4                                        ; $6b49: $f4
    ldh a, [$a5]                                  ; $6b4a: $f0 $a5

jr_050_6b4c:
    adc a                                         ; $6b4c: $8f
    db $ec                                        ; $6b4d: $ec
    ld [hl], b                                    ; $6b4e: $70
    inc bc                                        ; $6b4f: $03
    jp $232b                                      ; $6b50: $c3 $2b $23


    ld a, [hl]                                    ; $6b53: $7e
    ld b, l                                       ; $6b54: $45
    xor l                                         ; $6b55: $ad
    ld b, h                                       ; $6b56: $44
    jp z, Jump_000_211f                           ; $6b57: $ca $1f $21

    rst $20                                       ; $6b5a: $e7
    pop hl                                        ; $6b5b: $e1
    inc hl                                        ; $6b5c: $23
    ld h, $7b                                     ; $6b5d: $26 $7b
    push af                                       ; $6b5f: $f5
    nop                                           ; $6b60: $00
    cp [hl]                                       ; $6b61: $be
    or [hl]                                       ; $6b62: $b6
    daa                                           ; $6b63: $27
    inc b                                         ; $6b64: $04
    ld [hl+], a                                   ; $6b65: $22
    ld b, b                                       ; $6b66: $40
    add hl, sp                                    ; $6b67: $39
    adc a                                         ; $6b68: $8f

jr_050_6b69:
    adc $86                                       ; $6b69: $ce $86
    adc $86                                       ; $6b6b: $ce $86
    db $ec                                        ; $6b6d: $ec
    add sp, -$5b                                  ; $6b6e: $e8 $a5
    ld b, e                                       ; $6b70: $43
    sub l                                         ; $6b71: $95
    sub d                                         ; $6b72: $92
    or d                                          ; $6b73: $b2
    inc hl                                        ; $6b74: $23
    dec h                                         ; $6b75: $25
    ld h, e                                       ; $6b76: $63
    sub [hl]                                      ; $6b77: $96
    sbc d                                         ; $6b78: $9a
    adc d                                         ; $6b79: $8a
    reti                                          ; $6b7a: $d9


    xor e                                         ; $6b7b: $ab
    ld b, $f0                                     ; $6b7c: $06 $f0
    or l                                          ; $6b7e: $b5
    dec a                                         ; $6b7f: $3d
    ld hl, $0110                                  ; $6b80: $21 $10 $01
    rst $08                                       ; $6b83: $cf
    push af                                       ; $6b84: $f5
    ld l, h                                       ; $6b85: $6c
    ld hl, sp+$0c                                 ; $6b86: $f8 $0c
    add hl, bc                                    ; $6b88: $09
    and $23                                       ; $6b89: $e6 $23
    inc b                                         ; $6b8b: $04
    ld c, a                                       ; $6b8c: $4f
    rst $28                                       ; $6b8d: $ef
    ld d, h                                       ; $6b8e: $54
    db $f4                                        ; $6b8f: $f4
    xor [hl]                                      ; $6b90: $ae
    xor b                                         ; $6b91: $a8
    sub b                                         ; $6b92: $90
    sub c                                         ; $6b93: $91
    ld c, $7b                                     ; $6b94: $0e $7b
    dec e                                         ; $6b96: $1d
    ld b, d                                       ; $6b97: $42
    ld a, b                                       ; $6b98: $78
    push bc                                       ; $6b99: $c5

jr_050_6b9a:
    ld h, e                                       ; $6b9a: $63
    ld hl, $7e79                                  ; $6b9b: $21 $79 $7e
    rst $38                                       ; $6b9e: $ff
    ld e, a                                       ; $6b9f: $5f
    ret z                                         ; $6ba0: $c8

    add b                                         ; $6ba1: $80
    scf                                           ; $6ba2: $37
    adc e                                         ; $6ba3: $8b
    db $e3                                        ; $6ba4: $e3
    xor [hl]                                      ; $6ba5: $ae
    ld e, b                                       ; $6ba6: $58
    db $d3                                        ; $6ba7: $d3
    pop af                                        ; $6ba8: $f1
    ld b, e                                       ; $6ba9: $43
    ld h, a                                       ; $6baa: $67
    adc a                                         ; $6bab: $8f
    nop                                           ; $6bac: $00
    jr nz, jr_050_6b9a                            ; $6bad: $20 $eb

    rst $38                                       ; $6baf: $ff
    jp z, $f43b                                   ; $6bb0: $ca $3b $f4

    sub b                                         ; $6bb3: $90
    add c                                         ; $6bb4: $81
    ld c, h                                       ; $6bb5: $4c
    ld b, h                                       ; $6bb6: $44
    push hl                                       ; $6bb7: $e5
    db $ec                                        ; $6bb8: $ec
    and l                                         ; $6bb9: $a5
    jp Jump_050_5c3d                              ; $6bba: $c3 $3d $5c


    rst $30                                       ; $6bbd: $f7
    jp z, $8fd3                                   ; $6bbe: $ca $d3 $8f

    cp $36                                        ; $6bc1: $fe $36
    ld h, h                                       ; $6bc3: $64
    daa                                           ; $6bc4: $27
    dec a                                         ; $6bc5: $3d
    ld a, d                                       ; $6bc6: $7a
    ld h, $a5                                     ; $6bc7: $26 $a5
    ld c, l                                       ; $6bc9: $4d
    xor e                                         ; $6bca: $ab
    ld e, $e5                                     ; $6bcb: $1e $e5
    ld b, l                                       ; $6bcd: $45
    push de                                       ; $6bce: $d5
    ld c, d                                       ; $6bcf: $4a
    db $f4                                        ; $6bd0: $f4
    ld b, e                                       ; $6bd1: $43
    xor h                                         ; $6bd2: $ac
    ld e, h                                       ; $6bd3: $5c
    ld d, c                                       ; $6bd4: $51
    reti                                          ; $6bd5: $d9


    ret nc                                        ; $6bd6: $d0

    and $6d                                       ; $6bd7: $e6 $6d
    ret z                                         ; $6bd9: $c8

    ld [de], a                                    ; $6bda: $12
    cpl                                           ; $6bdb: $2f
    pop hl                                        ; $6bdc: $e1
    ld c, [hl]                                    ; $6bdd: $4e
    dec a                                         ; $6bde: $3d
    ld e, d                                       ; $6bdf: $5a
    ld [$9e4a], a                                 ; $6be0: $ea $4a $9e
    ld a, [hl]                                    ; $6be3: $7e
    db $f4                                        ; $6be4: $f4
    or a                                          ; $6be5: $b7
    db $10                                        ; $6be6: $10
    ld bc, $21e7                                  ; $6be7: $01 $e7 $21
    ld d, d                                       ; $6bea: $52
    cp e                                          ; $6beb: $bb
    and d                                         ; $6bec: $a2
    ld a, [hl-]                                   ; $6bed: $3a
    db $ec                                        ; $6bee: $ec
    dec c                                         ; $6bef: $0d
    ret                                           ; $6bf0: $c9


    and e                                         ; $6bf1: $a3
    ld a, h                                       ; $6bf2: $7c
    or $98                                        ; $6bf3: $f6 $98
    ld d, [hl]                                    ; $6bf5: $56
    ld [c], a                                     ; $6bf6: $e2
    pop de                                        ; $6bf7: $d1
    sub l                                         ; $6bf8: $95
    and a                                         ; $6bf9: $a7
    ld d, a                                       ; $6bfa: $57
    rst $20                                       ; $6bfb: $e7
    and d                                         ; $6bfc: $a2
    ld a, $93                                     ; $6bfd: $3e $93
    jp nc, Jump_050_7786                          ; $6bff: $d2 $86 $77

    ldh [$d5], a                                  ; $6c02: $e0 $d5
    pop de                                        ; $6c04: $d1
    sub l                                         ; $6c05: $95
    rst $08                                       ; $6c06: $cf
    ld d, $9c                                     ; $6c07: $16 $9c
    ld b, a                                       ; $6c09: $47
    ld h, a                                       ; $6c0a: $67
    ld b, e                                       ; $6c0b: $43
    ld h, a                                       ; $6c0c: $67
    ld b, e                                       ; $6c0d: $43
    ld b, [hl]                                    ; $6c0e: $46
    ld c, d                                       ; $6c0f: $4a
    and [hl]                                      ; $6c10: $a6
    ld d, a                                       ; $6c11: $57
    rst $10                                       ; $6c12: $d7
    call nc, $fce5                                ; $6c13: $d4 $e5 $fc
    ld a, [hl+]                                   ; $6c16: $2a
    adc b                                         ; $6c17: $88
    nop                                           ; $6c18: $00
    ld b, b                                       ; $6c19: $40
    ld h, l                                       ; $6c1a: $65
    ld a, [$b5b5]                                 ; $6c1b: $fa $b5 $b5
    adc h                                         ; $6c1e: $8c
    rst $30                                       ; $6c1f: $f7
    or l                                          ; $6c20: $b5
    halt                                          ; $6c21: $76
    ld hl, sp+$2f                                 ; $6c22: $f8 $2f
    pop af                                        ; $6c24: $f1
    ld a, [hl-]                                   ; $6c25: $3a
    ld e, e                                       ; $6c26: $5b
    ld a, [hl-]                                   ; $6c27: $3a
    ld a, [$ed44]                                 ; $6c28: $fa $44 $ed
    cp b                                          ; $6c2b: $b8
    ld d, e                                       ; $6c2c: $53
    rst $08                                       ; $6c2d: $cf
    add $d2                                       ; $6c2e: $c6 $d2
    ld a, l                                       ; $6c30: $7d
    adc b                                         ; $6c31: $88

jr_050_6c32:
    sub h                                         ; $6c32: $94
    ret c                                         ; $6c33: $d8

    sbc b                                         ; $6c34: $98
    add $f7                                       ; $6c35: $c6 $f7
    or d                                          ; $6c37: $b2
    and c                                         ; $6c38: $a1
    db $d3                                        ; $6c39: $d3
    rrca                                          ; $6c3a: $0f
    add $d1                                       ; $6c3b: $c6 $d1
    jp $a5f9                                      ; $6c3d: $c3 $f9 $a5


    ld a, a                                       ; $6c40: $7f
    reti                                          ; $6c41: $d9


    db $10                                        ; $6c42: $10
    adc b                                         ; $6c43: $88
    nop                                           ; $6c44: $00
    jr nz, jr_050_6c32                            ; $6c45: $20 $eb

    rst $38                                       ; $6c47: $ff
    jp z, $f43b                                   ; $6c48: $ca $3b $f4

    sub b                                         ; $6c4b: $90
    ld bc, $2bee                                  ; $6c4c: $01 $ee $2b
    ld d, d                                       ; $6c4f: $52
    ld h, d                                       ; $6c50: $62
    ld h, e                                       ; $6c51: $63
    jp hl                                         ; $6c52: $e9


    inc h                                         ; $6c53: $24
    sub e                                         ; $6c54: $93
    sbc b                                         ; $6c55: $98
    ld c, c                                       ; $6c56: $49
    ld l, c                                       ; $6c57: $69
    set 7, a                                      ; $6c58: $cb $ff
    ret nz                                        ; $6c5a: $c0

    pop af                                        ; $6c5b: $f1
    add sp, -$23                                  ; $6c5c: $e8 $dd
    db $f4                                        ; $6c5e: $f4
    cpl                                           ; $6c5f: $2f
    or c                                          ; $6c60: $b1
    cp e                                          ; $6c61: $bb
    ld e, h                                       ; $6c62: $5c
    di                                            ; $6c63: $f3
    or d                                          ; $6c64: $b2
    ld a, h                                       ; $6c65: $7c
    push de                                       ; $6c66: $d5
    jp nc, Jump_050_625d                          ; $6c67: $d2 $5d $62

    cp c                                          ; $6c6a: $b9
    ld [$557f], a                                 ; $6c6b: $ea $7f $55
    ld c, l                                       ; $6c6e: $4d
    ld d, l                                       ; $6c6f: $55
    adc [hl]                                      ; $6c70: $8e
    add [hl]                                      ; $6c71: $86
    dec sp                                        ; $6c72: $3b
    ccf                                           ; $6c73: $3f
    sbc d                                         ; $6c74: $9a
    dec sp                                        ; $6c75: $3b
    push af                                       ; $6c76: $f5
    jp nc, $9ea7                                  ; $6c77: $d2 $a7 $9e

    dec c                                         ; $6c7a: $0d
    sbc c                                         ; $6c7b: $99
    ld d, [hl]                                    ; $6c7c: $56
    ld [c], a                                     ; $6c7d: $e2
    pop de                                        ; $6c7e: $d1
    sub l                                         ; $6c7f: $95
    ld b, a                                       ; $6c80: $47
    jp $3b8e                                      ; $6c81: $c3 $8e $3b


    ld [hl], l                                    ; $6c84: $75
    cp [hl]                                       ; $6c85: $be
    call nz, $d2af                                ; $6c86: $c4 $af $d2
    jp nz, Jump_000_0221                          ; $6c89: $c2 $21 $02

    ld b, b                                       ; $6c8c: $40
    ld h, l                                       ; $6c8d: $65
    jp hl                                         ; $6c8e: $e9


    db $eb                                        ; $6c8f: $eb
    ld e, $bd                                     ; $6c90: $1e $bd
    ld d, e                                       ; $6c92: $53
    ei                                            ; $6c93: $fb
    or d                                          ; $6c94: $b2
    and c                                         ; $6c95: $a1
    db $d3                                        ; $6c96: $d3
    xor d                                         ; $6c97: $aa
    ld d, a                                       ; $6c98: $57
    and d                                         ; $6c99: $a2
    rra                                           ; $6c9a: $1f
    ld [c], a                                     ; $6c9b: $e2
    ld a, c                                       ; $6c9c: $79
    add hl, sp                                    ; $6c9d: $39
    ld h, h                                       ; $6c9e: $64
    ld c, c                                       ; $6c9f: $49
    db $d3                                        ; $6ca0: $d3
    dec hl                                        ; $6ca1: $2b
    ld [de], a                                    ; $6ca2: $12
    ld a, c                                       ; $6ca3: $79
    ld a, [hl]                                    ; $6ca4: $7e
    ld l, l                                       ; $6ca5: $6d
    inc [hl]                                      ; $6ca6: $34
    ld b, h                                       ; $6ca7: $44
    ld b, b                                       ; $6ca8: $40
    ld h, l                                       ; $6ca9: $65
    and h                                         ; $6caa: $a4
    adc e                                         ; $6cab: $8b
    ld [hl], e                                    ; $6cac: $73
    ld l, $f9                                     ; $6cad: $2e $f9
    ld a, a                                       ; $6caf: $7f
    ld d, a                                       ; $6cb0: $57
    ld d, h                                       ; $6cb1: $54
    add a                                         ; $6cb2: $87
    cp l                                          ; $6cb3: $bd
    ld hl, $d979                                  ; $6cb4: $21 $79 $d9
    ret nc                                        ; $6cb7: $d0

    add hl, de                                    ; $6cb8: $19
    ld [$2bf5], a                                 ; $6cb9: $ea $f5 $2b
    rst $28                                       ; $6cbc: $ef
    adc [hl]                                      ; $6cbd: $8e
    ld a, [c]                                     ; $6cbe: $f2

Jump_050_6cbf:
    and d                                         ; $6cbf: $a2
    ld l, d                                       ; $6cc0: $6a
    and l                                         ; $6cc1: $a5
    adc a                                         ; $6cc2: $8f
    ld h, $4a                                     ; $6cc3: $26 $4a
    db $fd                                        ; $6cc5: $fd
    ld l, d                                       ; $6cc6: $6a
    xor c                                         ; $6cc7: $a9
    inc a                                         ; $6cc8: $3c
    db $fd                                        ; $6cc9: $fd
    jp c, $024c                                   ; $6cca: $da $4c $02

    adc a                                         ; $6ccd: $8f
    sbc a                                         ; $6cce: $9f
    and e                                         ; $6ccf: $a3
    ld hl, $2002                                  ; $6cd0: $21 $02 $20
    and l                                         ; $6cd3: $a5
    cp $cf                                        ; $6cd4: $fe $cf

Call_050_6cd6:
    cp a                                          ; $6cd6: $bf
    ld b, h                                       ; $6cd7: $44
    add l                                         ; $6cd8: $85
    db $ec                                        ; $6cd9: $ec
    add sp, -$7b                                  ; $6cda: $e8 $85
    ld c, h                                       ; $6cdc: $4c
    ld e, l                                       ; $6cdd: $5d
    adc $af                                       ; $6cde: $ce $af
    ld e, d                                       ; $6ce0: $5a
    ld [hl], c                                    ; $6ce1: $71
    ld a, l                                       ; $6ce2: $7d
    ld c, c                                       ; $6ce3: $49

Call_050_6ce4:
    ld c, c                                       ; $6ce4: $49
    ld h, $f3                                     ; $6ce5: $26 $f3
    ld a, $ac                                     ; $6ce7: $3e $ac
    ld l, c                                       ; $6ce9: $69
    ld a, [bc]                                    ; $6cea: $0a
    rst $30                                       ; $6ceb: $f7
    add h                                         ; $6cec: $84
    ld e, h                                       ; $6ced: $5c
    sub c                                         ; $6cee: $91
    ldh a, [rHDMA1]                               ; $6cef: $f0 $51
    ld a, $7b                                     ; $6cf1: $3e $7b
    inc l                                         ; $6cf3: $2c
    rla                                           ; $6cf4: $17
    db $fd                                        ; $6cf5: $fd
    sub l                                         ; $6cf6: $95
    ld [hl], a                                    ; $6cf7: $77
    ld h, l                                       ; $6cf8: $65
    sbc c                                         ; $6cf9: $99
    rra                                           ; $6cfa: $1f

Jump_050_6cfb:
    ld h, a                                       ; $6cfb: $67
    jp c, Jump_050_4367                           ; $6cfc: $da $67 $43

    and [hl]                                      ; $6cff: $a6
    ld d, l                                       ; $6d00: $55
    rst $28                                       ; $6d01: $ef
    ld b, h                                       ; $6d02: $44
    ld [hl], e                                    ; $6d03: $73
    ld sp, hl                                     ; $6d04: $f9
    ld l, h                                       ; $6d05: $6c
    jr c, jr_050_6d4c                             ; $6d06: $38 $44

    ldh [$ae], a                                  ; $6d08: $e0 $ae
    ld d, d                                       ; $6d0a: $52
    ld e, c                                       ; $6d0b: $59
    cp a                                          ; $6d0c: $bf
    sub d                                         ; $6d0d: $92
    cp l                                          ; $6d0e: $bd
    sub h                                         ; $6d0f: $94
    xor d                                         ; $6d10: $aa
    ld e, $77                                     ; $6d11: $1e $77
    ld b, l                                       ; $6d13: $45
    ld a, [c]                                     ; $6d14: $f2
    ld [$bf7f], a                                 ; $6d15: $ea $7f $bf
    halt                                          ; $6d18: $76
    push hl                                       ; $6d19: $e5
    ld a, $bf                                     ; $6d1a: $3e $bf
    rst $38                                       ; $6d1c: $ff
    dec hl                                        ; $6d1d: $2b
    ld a, [hl]                                    ; $6d1e: $7e
    pop bc                                        ; $6d1f: $c1
    ld a, c                                       ; $6d20: $79
    ld [hl], h                                    ; $6d21: $74
    ld [hl], $74                                  ; $6d22: $36 $74
    sub [hl]                                      ; $6d24: $96
    sbc c                                         ; $6d25: $99
    ld [hl], h                                    ; $6d26: $74
    ld hl, sp-$4e                                 ; $6d27: $f8 $b2
    rra                                           ; $6d29: $1f
    ld h, d                                       ; $6d2a: $62
    xor a                                         ; $6d2b: $af
    ld a, [c]                                     ; $6d2c: $f2
    ld [hl], c                                    ; $6d2d: $71
    ld a, h                                       ; $6d2e: $7c
    ld c, a                                       ; $6d2f: $4f
    ld e, b                                       ; $6d30: $58
    dec b                                         ; $6d31: $05
    add a                                         ; $6d32: $87
    or c                                          ; $6d33: $b1
    sub h                                         ; $6d34: $94
    xor d                                         ; $6d35: $aa
    sub [hl]                                      ; $6d36: $96
    ld e, d                                       ; $6d37: $5a
    ld [hl], $74                                  ; $6d38: $36 $74
    push af                                       ; $6d3a: $f5
    ld l, l                                       ; $6d3b: $6d
    ld e, a                                       ; $6d3c: $5f
    dec [hl]                                      ; $6d3d: $35
    xor l                                         ; $6d3e: $ad
    ld a, d                                       ; $6d3f: $7a
    sbc c                                         ; $6d40: $99
    sub h                                         ; $6d41: $94
    dec l                                         ; $6d42: $2d
    sbc a                                         ; $6d43: $9f
    ldh a, [$ca]                                  ; $6d44: $f0 $ca
    ret z                                         ; $6d46: $c8

    ld c, d                                       ; $6d47: $4a
    ld [hl], d                                    ; $6d48: $72
    db $e4                                        ; $6d49: $e4
    jp hl                                         ; $6d4a: $e9


    push de                                       ; $6d4b: $d5

jr_050_6d4c:
    dec [hl]                                      ; $6d4c: $35
    dec de                                        ; $6d4d: $1b
    ld c, e                                       ; $6d4e: $4b
    rra                                           ; $6d4f: $1f
    reti                                          ; $6d50: $d9


    dec bc                                        ; $6d51: $0b
    ld [hl+], a                                   ; $6d52: $22
    ld c, a                                       ; $6d53: $4f
    ld c, b                                       ; $6d54: $48
    pop hl                                        ; $6d55: $e1
    sub l                                         ; $6d56: $95
    ld d, a                                       ; $6d57: $57
    ld a, [$f86c]                                 ; $6d58: $fa $6c $f8
    call c, Call_000_2934                         ; $6d5b: $dc $34 $29
    dec de                                        ; $6d5e: $1b
    set 4, h                                      ; $6d5f: $cb $e4
    adc d                                         ; $6d61: $8a
    add h                                         ; $6d62: $84
    adc a                                         ; $6d63: $8f
    ld l, e                                       ; $6d64: $6b
    ld e, [hl]                                    ; $6d65: $5e
    ld d, $b2                                     ; $6d66: $16 $b2
    db $f4                                        ; $6d68: $f4
    ccf                                           ; $6d69: $3f
    ld d, d                                       ; $6d6a: $52
    add h                                         ; $6d6b: $84
    cp e                                          ; $6d6c: $bb
    sbc c                                         ; $6d6d: $99
    ret nz                                        ; $6d6e: $c0

    ld bc, $7f95                                  ; $6d6f: $01 $95 $7f
    sub l                                         ; $6d72: $95
    xor a                                         ; $6d73: $af
    dec bc                                        ; $6d74: $0b
    rst $00                                       ; $6d75: $c7
    ld c, l                                       ; $6d76: $4d
    ld a, e                                       ; $6d77: $7b
    or h                                          ; $6d78: $b4
    call nc, $a44e                                ; $6d79: $d4 $4e $a4
    ld a, d                                       ; $6d7c: $7a
    ld [hl], $64                                  ; $6d7d: $36 $64
    reti                                          ; $6d7f: $d9


    ld e, c                                       ; $6d80: $59
    ld c, l                                       ; $6d81: $4d
    ld c, d                                       ; $6d82: $4a
    and [hl]                                      ; $6d83: $a6
    sbc c                                         ; $6d84: $99
    inc a                                         ; $6d85: $3c
    ld l, a                                       ; $6d86: $6f
    di                                            ; $6d87: $f3
    cp a                                          ; $6d88: $bf
    ld l, l                                       ; $6d89: $6d
    ld d, [hl]                                    ; $6d8a: $56
    adc d                                         ; $6d8b: $8a
    ld b, h                                       ; $6d8c: $44
    ld b, e                                       ; $6d8d: $43
    inc b                                         ; $6d8e: $04
    ld c, a                                       ; $6d8f: $4f
    ld d, d                                       ; $6d90: $52
    push de                                       ; $6d91: $d5
    sub l                                         ; $6d92: $95
    ld a, [hl]                                    ; $6d93: $7e
    ld h, $7a                                     ; $6d94: $26 $7a
    ld a, [hl+]                                   ; $6d96: $2a
    ld a, d                                       ; $6d97: $7a
    ld sp, hl                                     ; $6d98: $f9
    add sp, $4c                                   ; $6d99: $e8 $4c
    xor $f7                                       ; $6d9b: $ee $f7
    ld [hl], c                                    ; $6d9d: $71
    ld d, a                                       ; $6d9e: $57
    ld l, d                                       ; $6d9f: $6a
    daa                                           ; $6da0: $27
    ld h, l                                       ; $6da1: $65
    ld h, h                                       ; $6da2: $64
    call c, $e7a9                                 ; $6da3: $dc $a9 $e7
    ld l, l                                       ; $6da6: $6d
    cp $b7                                        ; $6da7: $fe $b7
    call $914a                                    ; $6da9: $cd $4a $91
    db $ec                                        ; $6dac: $ec
    rst $30                                       ; $6dad: $f7
    ld a, a                                       ; $6dae: $7f
    dec a                                         ; $6daf: $3d
    sbc d                                         ; $6db0: $9a
    ret z                                         ; $6db1: $c8

    dec d                                         ; $6db2: $15
    dec b                                         ; $6db3: $05
    ld de, $7518                                  ; $6db4: $11 $18 $75
    ld e, [hl]                                    ; $6db7: $5e
    dec sp                                        ; $6db8: $3b
    or l                                          ; $6db9: $b5
    ld e, h                                       ; $6dba: $5c
    ld d, c                                       ; $6dbb: $51
    push de                                       ; $6dbc: $d5
    dec sp                                        ; $6dbd: $3b
    ld a, d                                       ; $6dbe: $7a
    ld e, h                                       ; $6dbf: $5c
    push af                                       ; $6dc0: $f5
    cp a                                          ; $6dc1: $bf
    xor d                                         ; $6dc2: $aa
    ld b, [hl]                                    ; $6dc3: $46
    call z, Call_050_44bf                         ; $6dc4: $cc $bf $44
    ld c, d                                       ; $6dc7: $4a
    ld l, h                                       ; $6dc8: $6c
    adc h                                         ; $6dc9: $8c
    sub [hl]                                      ; $6dca: $96
    cp d                                          ; $6dcb: $ba
    sbc c                                         ; $6dcc: $99
    call nc, $eaf4                                ; $6dcd: $d4 $f4 $ea
    ld hl, sp+$39                                 ; $6dd0: $f8 $39
    ld a, [de]                                    ; $6dd2: $1a
    xor $3c                                       ; $6dd3: $ee $3c
    halt                                          ; $6dd5: $76
    and d                                         ; $6dd6: $a2
    cp c                                          ; $6dd7: $b9
    ld a, d                                       ; $6dd8: $7a
    sbc d                                         ; $6dd9: $9a
    ld l, c                                       ; $6dda: $69
    add hl, de                                    ; $6ddb: $19
    rst $18                                       ; $6ddc: $df
    rst $38                                       ; $6ddd: $ff
    xor d                                         ; $6dde: $aa
    sub b                                         ; $6ddf: $90
    sbc c                                         ; $6de0: $99
    sub h                                         ; $6de1: $94
    ld [hl], $1b                                  ; $6de2: $36 $1b
    add hl, sp                                    ; $6de4: $39
    rst $10                                       ; $6de5: $d7
    ld [hl], d                                    ; $6de6: $72
    pop de                                        ; $6de7: $d1
    ld e, a                                       ; $6de8: $5f
    ld a, c                                       ; $6de9: $79
    ld d, a                                       ; $6dea: $57
    ld h, $47                                     ; $6deb: $26 $47
    rst $08                                       ; $6ded: $cf
    ld [hl], l                                    ; $6dee: $75
    ld e, [hl]                                    ; $6def: $5e
    dec sp                                        ; $6df0: $3b
    or l                                          ; $6df1: $b5
    ld e, h                                       ; $6df2: $5c
    ld d, c                                       ; $6df3: $51
    ld hl, $e2bb                                  ; $6df4: $21 $bb $e2
    ld sp, $eebf                                  ; $6df7: $31 $bf $ee
    push de                                       ; $6dfa: $d5
    db $10                                        ; $6dfb: $10
    ld bc, $6540                                  ; $6dfc: $01 $40 $65
    ld a, d                                       ; $6dff: $7a
    ret                                           ; $6e00: $c9


    cp a                                          ; $6e01: $bf
    ld l, d                                       ; $6e02: $6a
    ld d, a                                       ; $6e03: $57
    ld d, h                                       ; $6e04: $54
    add a                                         ; $6e05: $87
    cp l                                          ; $6e06: $bd
    ld hl, $6cf9                                  ; $6e07: $21 $f9 $6c
    ld [hl], $c6                                  ; $6e0a: $36 $c6
    pop af                                        ; $6e0c: $f1
    cp l                                          ; $6e0d: $bd
    dec hl                                        ; $6e0e: $2b
    ld e, $23                                     ; $6e0f: $1e $23
    add [hl]                                      ; $6e11: $86
    jp nc, $d71a                                  ; $6e12: $d2 $1a $d7

    cp h                                          ; $6e15: $bc
    ld c, h                                       ; $6e16: $4c
    ld e, l                                       ; $6e17: $5d
    adc $af                                       ; $6e18: $ce $af
    xor d                                         ; $6e1a: $aa
    sbc c                                         ; $6e1b: $99
    and [hl]                                      ; $6e1c: $a6
    push de                                       ; $6e1d: $d5
    db $10                                        ; $6e1e: $10
    ld bc, $2380                                  ; $6e1f: $01 $80 $23
    sbc e                                         ; $6e22: $9b
    ld [$21ec], a                                 ; $6e23: $ea $ec $21
    push de                                       ; $6e26: $d5
    res 4, h                                      ; $6e27: $cb $a4
    ldh a, [$ca]                                  ; $6e29: $f0 $ca
    cp e                                          ; $6e2b: $bb
    ld d, e                                       ; $6e2c: $53
    pop hl                                        ; $6e2d: $e1
    ld e, $2d                                     ; $6e2e: $1e $2d
    sub l                                         ; $6e30: $95
    ld b, a                                       ; $6e31: $47
    swap e                                        ; $6e32: $cb $33
    dec a                                         ; $6e34: $3d
    cp [hl]                                       ; $6e35: $be
    rl l                                          ; $6e36: $cb $15
    sub l                                         ; $6e38: $95
    ld c, l                                       ; $6e39: $4d
    xor e                                         ; $6e3a: $ab
    ld [de], a                                    ; $6e3b: $12
    cp b                                          ; $6e3c: $b8
    di                                            ; $6e3d: $f3
    ld e, b                                       ; $6e3e: $58
    ld a, $54                                     ; $6e3f: $3e $54
    ld e, $35                                     ; $6e41: $1e $35
    xor [hl]                                      ; $6e43: $ae
    ld b, a                                       ; $6e44: $47
    sub e                                         ; $6e45: $93
    sbc d                                         ; $6e46: $9a
    cp d                                          ; $6e47: $ba
    sbc h                                         ; $6e48: $9c
    ld b, a                                       ; $6e49: $47
    ld b, e                                       ; $6e4a: $43
    inc b                                         ; $6e4b: $04
    ld c, a                                       ; $6e4c: $4f
    adc a                                         ; $6e4d: $8f
    ld l, a                                       ; $6e4e: $6f
    xor a                                         ; $6e4f: $af
    ld a, [c]                                     ; $6e50: $f2
    push hl                                       ; $6e51: $e5
    db $e3                                        ; $6e52: $e3
    rst $38                                       ; $6e53: $ff
    call z, $af12                                 ; $6e54: $cc $12 $af
    dec b                                         ; $6e57: $05
    rst $20                                       ; $6e58: $e7
    pop de                                        ; $6e59: $d1
    reti                                          ; $6e5a: $d9


    ret nc                                        ; $6e5b: $d0

    reti                                          ; $6e5c: $d9


    ld e, b                                       ; $6e5d: $58
    cp d                                          ; $6e5e: $ba
    cp d                                          ; $6e5f: $ba
    and [hl]                                      ; $6e60: $a6
    rra                                           ; $6e61: $1f
    adc h                                         ; $6e62: $8c
    and e                                         ; $6e63: $a3
    add a                                         ; $6e64: $87
    di                                            ; $6e65: $f3
    or e                                          ; $6e66: $b3
    or c                                          ; $6e67: $b1
    db $e3                                        ; $6e68: $e3
    db $db                                        ; $6e69: $db
    db $ec                                        ; $6e6a: $ec
    or l                                          ; $6e6b: $b5
    db $10                                        ; $6e6c: $10
    db $ed                                        ; $6e6d: $ed
    call nc, Call_050_4572                        ; $6e6e: $d4 $72 $45
    ld d, l                                       ; $6e71: $55
    ld c, e                                       ; $6e72: $4b
    call $b4a4                                    ; $6e73: $cd $a4 $b4
    sbc l                                         ; $6e76: $9d
    ld l, b                                       ; $6e77: $68
    xor [hl]                                      ; $6e78: $ae
    inc a                                         ; $6e79: $3c
    db $fd                                        ; $6e7a: $fd
    ld hl, sp-$0a                                 ; $6e7b: $f8 $f6
    ld a, [hl+]                                   ; $6e7d: $2a
    ld e, a                                       ; $6e7e: $5f
    ld a, $fe                                     ; $6e7f: $3e $fe
    cpl                                           ; $6e81: $2f
    add c                                         ; $6e82: $81
    ld [$6540], sp                                ; $6e83: $08 $40 $65
    ld sp, hl                                     ; $6e86: $f9
    ld hl, sp+$3f                                 ; $6e87: $f8 $3f
    or e                                          ; $6e89: $b3
    call nz, Call_050_6a77                        ; $6e8a: $c4 $77 $6a
    ld e, a                                       ; $6e8d: $5f
    ld [hl], $74                                  ; $6e8e: $36 $74
    jp hl                                         ; $6e90: $e9


    ld [$7e9a], a                                 ; $6e91: $ea $9a $7e
    jr nc, @-$70                                  ; $6e94: $30 $8e

    sbc $5d                                       ; $6e96: $de $5d
    ld a, [hl-]                                   ; $6e98: $3a
    ld e, d                                       ; $6e99: $5a
    ld e, l                                       ; $6e9a: $5d
    ld d, l                                       ; $6e9b: $55
    inc sp                                        ; $6e9c: $33
    or h                                          ; $6e9d: $b4
    ld a, c                                       ; $6e9e: $79
    dec de                                        ; $6e9f: $1b
    ld [bc], a                                    ; $6ea0: $02
    rlca                                          ; $6ea1: $07
    adc [hl]                                      ; $6ea2: $8e
    rst $08                                       ; $6ea3: $cf
    adc $87                                       ; $6ea4: $ce $87
    ret c                                         ; $6ea6: $d8

    ldh a, [$95]                                  ; $6ea7: $f0 $95
    ei                                            ; $6ea9: $fb
    ld l, h                                       ; $6eaa: $6c
    ret z                                         ; $6eab: $c8

    db $ec                                        ; $6eac: $ec
    ret                                           ; $6ead: $c9


    ld d, [hl]                                    ; $6eae: $56
    ld c, a                                       ; $6eaf: $4f
    xor a                                         ; $6eb0: $af
    ld c, [hl]                                    ; $6eb1: $4e
    cp [hl]                                       ; $6eb2: $be
    ld e, [hl]                                    ; $6eb3: $5e
    cp l                                          ; $6eb4: $bd
    and e                                         ; $6eb5: $a3
    ld [hl], a                                    ; $6eb6: $77
    adc b                                         ; $6eb7: $88
    inc h                                         ; $6eb8: $24
    cp e                                          ; $6eb9: $bb
    ld [c], a                                     ; $6eba: $e2
    or c                                          ; $6ebb: $b1
    ld [hl], h                                    ; $6ebc: $74
    add sp, $37                                   ; $6ebd: $e8 $37
    sub a                                         ; $6ebf: $97
    ld b, e                                       ; $6ec0: $43
    inc b                                         ; $6ec1: $04
    ld b, b                                       ; $6ec2: $40
    ld h, l                                       ; $6ec3: $65
    adc d                                         ; $6ec4: $8a
    rla                                           ; $6ec5: $17
    dec [hl]                                      ; $6ec6: $35
    db $fd                                        ; $6ec7: $fd
    jp c, $c65a                                   ; $6ec8: $da $5a $c6

    ei                                            ; $6ecb: $fb
    ld e, d                                       ; $6ecc: $5a
    ld a, e                                       ; $6ecd: $7b
    ld [hl], $1a                                  ; $6ece: $36 $1a
    ld [hl-], a                                   ; $6ed0: $32
    ld c, c                                       ; $6ed1: $49
    ld l, b                                       ; $6ed2: $68
    db $f4                                        ; $6ed3: $f4
    db $f4                                        ; $6ed4: $f4
    add e                                         ; $6ed5: $83
    ld [hl], c                                    ; $6ed6: $71
    db $f4                                        ; $6ed7: $f4
    ld l, h                                       ; $6ed8: $6c
    ret z                                         ; $6ed9: $c8

    jp nc, $b5d5                                  ; $6eda: $d2 $d5 $b5

    dec sp                                        ; $6edd: $3b
    db $fd                                        ; $6ede: $fd
    ld a, [hl]                                    ; $6edf: $7e
    ld e, e                                       ; $6ee0: $5b
    inc sp                                        ; $6ee1: $33
    or h                                          ; $6ee2: $b4
    ld a, c                                       ; $6ee3: $79
    dec de                                        ; $6ee4: $1b
    ld [bc], a                                    ; $6ee5: $02
    rlca                                          ; $6ee6: $07
    ld hl, sp+$1b                                 ; $6ee7: $f8 $1b
    ld c, d                                       ; $6ee9: $4a
    ld c, l                                       ; $6eea: $4d
    ld c, e                                       ; $6eeb: $4b
    xor l                                         ; $6eec: $ad
    ld b, h                                       ; $6eed: $44
    ccf                                           ; $6eee: $3f
    call nz, $dde6                                ; $6eef: $c4 $e6 $dd
    reti                                          ; $6ef2: $d9


    ld h, [hl]                                    ; $6ef3: $66
    and l                                         ; $6ef4: $a5
    ld c, b                                       ; $6ef5: $48
    db $f4                                        ; $6ef6: $f4
    reti                                          ; $6ef7: $d9


    ld l, b                                       ; $6ef8: $68
    ret z                                         ; $6ef9: $c8

    jp nc, Jump_050_6cbf                          ; $6efa: $d2 $bf $6c

    ret z                                         ; $6efd: $c8

jr_050_6efe:
    adc [hl]                                      ; $6efe: $8e
    ld e, $65                                     ; $6eff: $1e $65
    and l                                         ; $6f01: $a5
    ld c, b                                       ; $6f02: $48
    ld hl, sp-$2c                                 ; $6f03: $f8 $d4
    push hl                                       ; $6f05: $e5
    db $fc                                        ; $6f06: $fc
    xor d                                         ; $6f07: $aa
    add d                                         ; $6f08: $82
    ld [$910f], sp                                ; $6f09: $08 $0f $91

jr_050_6f0c:
    pop af                                        ; $6f0c: $f1
    add sp, $3d                                   ; $6f0d: $e8 $3d
    pop af                                        ; $6f0f: $f1
    ld l, d                                       ; $6f10: $6a
    ld [de], a                                    ; $6f11: $12
    inc l                                         ; $6f12: $2c
    inc b                                         ; $6f13: $04
    ldh [$aa], a                                  ; $6f14: $e0 $aa
    dec hl                                        ; $6f16: $2b
    dec d                                         ; $6f17: $15
    ccf                                           ; $6f18: $3f
    daa                                           ; $6f19: $27
    add hl, de                                    ; $6f1a: $19
    ld bc, $3a80                                  ; $6f1b: $01 $80 $3a
    and l                                         ; $6f1e: $a5
    db $dd                                        ; $6f1f: $dd
    ld [hl], h                                    ; $6f20: $74
    ld a, l                                       ; $6f21: $7d
    dec sp                                        ; $6f22: $3b
    ld b, b                                       ; $6f23: $40
    rst $18                                       ; $6f24: $df
    ld b, [hl]                                    ; $6f25: $46
    cp e                                          ; $6f26: $bb
    ld de, $4004                                  ; $6f27: $11 $04 $40
    rst $38                                       ; $6f2a: $ff
    cpl                                           ; $6f2b: $2f
    ld l, e                                       ; $6f2c: $6b
    cp d                                          ; $6f2d: $ba
    ld b, $32                                     ; $6f2e: $06 $32
    call c, $afa3                                 ; $6f30: $dc $a3 $af
    ld d, l                                       ; $6f33: $55
    add c                                         ; $6f34: $81
    nop                                           ; $6f35: $00
    ret nz                                        ; $6f36: $c0

    dec hl                                        ; $6f37: $2b
    db $e3                                        ; $6f38: $e3
    push de                                       ; $6f39: $d5
    halt                                          ; $6f3a: $76
    ld c, a                                       ; $6f3b: $4f
    or h                                          ; $6f3c: $b4
    dec hl                                        ; $6f3d: $2b
    ld [$1b87], a                                 ; $6f3e: $ea $87 $1b
    ld b, c                                       ; $6f41: $41
    ret nz                                        ; $6f42: $c0

    cp a                                          ; $6f43: $bf

jr_050_6f44:
    pop de                                        ; $6f44: $d1
    and e                                         ; $6f45: $a3
    rst $30                                       ; $6f46: $f7
    ld [hl], b                                    ; $6f47: $70
    ld [hl], c                                    ; $6f48: $71
    ld b, [hl]                                    ; $6f49: $46
    and [hl]                                      ; $6f4a: $a6
    ld e, l                                       ; $6f4b: $5d
    ld b, e                                       ; $6f4c: $43
    ld c, a                                       ; $6f4d: $4f
    cp $cd                                        ; $6f4e: $fe $cd
    db $e4                                        ; $6f50: $e4
    xor d                                         ; $6f51: $aa
    jr jr_050_6f44                                ; $6f52: $18 $f0

    ld c, $65                                     ; $6f54: $0e $65
    sbc d                                         ; $6f56: $9a
    add l                                         ; $6f57: $85
    nop                                           ; $6f58: $00
    and b                                         ; $6f59: $a0
    ld c, d                                       ; $6f5a: $4a
    adc a                                         ; $6f5b: $8f
    sub [hl]                                      ; $6f5c: $96
    ret c                                         ; $6f5d: $d8

    ld a, c                                       ; $6f5e: $79
    add b                                         ; $6f5f: $80
    ld [hl], $e2                                  ; $6f60: $36 $e2
    call nc, Call_050_4874                        ; $6f62: $d4 $74 $48
    adc d                                         ; $6f65: $8a
    add l                                         ; $6f66: $85
    nop                                           ; $6f67: $00
    jr nz, jr_050_6efe                            ; $6f68: $20 $94

    sub h                                         ; $6f6a: $94
    rst $18                                       ; $6f6b: $df
    ld a, [de]                                    ; $6f6c: $1a
    and $fb                                       ; $6f6d: $e6 $fb
    ld l, l                                       ; $6f6f: $6d
    and [hl]                                      ; $6f70: $a6
    rst $10                                       ; $6f71: $d7
    dec [hl]                                      ; $6f72: $35
    inc b                                         ; $6f73: $04
    ld c, a                                       ; $6f74: $4f
    ld a, [hl+]                                   ; $6f75: $2a
    and l                                         ; $6f76: $a5
    ld d, l                                       ; $6f77: $55
    rst $18                                       ; $6f78: $df
    sbc h                                         ; $6f79: $9c
    ld l, e                                       ; $6f7a: $6b
    jr @+$15                                      ; $6f7b: $18 $13

    push bc                                       ; $6f7d: $c5
    ret z                                         ; $6f7e: $c8

    jr jr_050_6f0c                                ; $6f7f: $18 $8b

    nop                                           ; $6f81: $00
    ret nz                                        ; $6f82: $c0

    ld a, a                                       ; $6f83: $7f
    add hl, bc                                    ; $6f84: $09
    dec [hl]                                      ; $6f85: $35
    dec e                                         ; $6f86: $1d
    inc bc                                        ; $6f87: $03
    rla                                           ; $6f88: $17
    ld b, l                                       ; $6f89: $45
    ld [hl+], a                                   ; $6f8a: $22
    inc hl                                        ; $6f8b: $23
    add b                                         ; $6f8c: $80
    db $eb                                        ; $6f8d: $eb
    ld [hl], e                                    ; $6f8e: $73
    ld h, $e9                                     ; $6f8f: $26 $e9
    ld bc, $25fe                                  ; $6f91: $01 $fe $25
    add c                                         ; $6f94: $81
    nop                                           ; $6f95: $00
    ret nz                                        ; $6f96: $c0

    ld [c], a                                     ; $6f97: $e2
    ld e, a                                       ; $6f98: $5f
    add $7b                                       ; $6f99: $c6 $7b
    sub d                                         ; $6f9b: $92
    ld d, b                                       ; $6f9c: $50
    ld a, [de]                                    ; $6f9d: $1a
    sbc l                                         ; $6f9e: $9d
    adc [hl]                                      ; $6f9f: $8e
    ld b, b                                       ; $6fa0: $40
    ret nz                                        ; $6fa1: $c0

    dec sp                                        ; $6fa2: $3b
    cp h                                          ; $6fa3: $bc
    ld b, $a4                                     ; $6fa4: $06 $a4

jr_050_6fa6:
    inc a                                         ; $6fa6: $3c
    and l                                         ; $6fa7: $a5
    ld a, l                                       ; $6fa8: $7d
    and e                                         ; $6fa9: $a3
    rlca                                          ; $6faa: $07
    ld [bc], a                                    ; $6fab: $02
    rrca                                          ; $6fac: $0f
    ld b, [hl]                                    ; $6fad: $46
    ld c, h                                       ; $6fae: $4c
    jp nc, Jump_000_06b7                          ; $6faf: $d2 $b7 $06

    ld h, $f1                                     ; $6fb2: $26 $f1
    sub h                                         ; $6fb4: $94
    and c                                         ; $6fb5: $a1
    jp hl                                         ; $6fb6: $e9


    ld b, b                                       ; $6fb7: $40
    ret nz                                        ; $6fb8: $c0

    cpl                                           ; $6fb9: $2f
    rst $00                                       ; $6fba: $c7
    sbc c                                         ; $6fbb: $99
    or [hl]                                       ; $6fbc: $b6
    inc bc                                        ; $6fbd: $03
    ei                                            ; $6fbe: $fb
    ld a, a                                       ; $6fbf: $7f
    or h                                          ; $6fc0: $b4
    dec de                                        ; $6fc1: $1b
    ld b, c                                       ; $6fc2: $41
    adc a                                         ; $6fc3: $8f
    ld c, l                                       ; $6fc4: $4d
    ld a, [hl+]                                   ; $6fc5: $2a
    ld de, $7b5b                                  ; $6fc6: $11 $5b $7b
    jp nz, $9122                                  ; $6fc9: $c2 $22 $91

    ld de, $13e0                                  ; $6fcc: $11 $e0 $13
    inc hl                                        ; $6fcf: $23
    ld l, d                                       ; $6fd0: $6a
    ldh [$0c], a                                  ; $6fd1: $e0 $0c
    ld [bc], a                                    ; $6fd3: $02
    rst $20                                       ; $6fd4: $e7
    and [hl]                                      ; $6fd5: $a6
    ld d, e                                       ; $6fd6: $53
    sub l                                         ; $6fd7: $95
    add a                                         ; $6fd8: $87
    add hl, sp                                    ; $6fd9: $39
    cp $4f                                        ; $6fda: $fe $4f
    rst $00                                       ; $6fdc: $c7
    scf                                           ; $6fdd: $37
    ld a, d                                       ; $6fde: $7a
    ld e, b                                       ; $6fdf: $58
    inc b                                         ; $6fe0: $04
    and b                                         ; $6fe1: $a0
    and e                                         ; $6fe2: $a3
    add hl, de                                    ; $6fe3: $19
    or c                                          ; $6fe4: $b1
    ld h, h                                       ; $6fe5: $64
    ld [hl], $64                                  ; $6fe6: $36 $64
    and b                                         ; $6fe8: $a0
    ld e, c                                       ; $6fe9: $59
    reti                                          ; $6fea: $d9


    ld l, a                                       ; $6feb: $6f
    ld h, $81                                     ; $6fec: $26 $81
    nop                                           ; $6fee: $00
    and b                                         ; $6fef: $a0
    ld c, l                                       ; $6ff0: $4d
    xor e                                         ; $6ff1: $ab
    sub d                                         ; $6ff2: $92
    db $fd                                        ; $6ff3: $fd
    jr jr_050_6fa6                                ; $6ff4: $18 $b0

    ld h, d                                       ; $6ff6: $62
    ld hl, $fa40                                  ; $6ff7: $21 $40 $fa
    ld h, [hl]                                    ; $6ffa: $66
    db $fc                                        ; $6ffb: $fc
    jp z, $b480                                   ; $6ffc: $ca $80 $b4

    ld de, $0082                                  ; $6fff: $11 $82 $00
    ld b, b                                       ; $7002: $40
    ld e, l                                       ; $7003: $5d
    adc e                                         ; $7004: $8b
    rst $18                                       ; $7005: $df
    ld h, c                                       ; $7006: $61
    ld h, a                                       ; $7007: $67
    ld b, e                                       ; $7008: $43
    ld b, $54                                     ; $7009: $06 $54
    ld a, [hl+]                                   ; $700b: $2a
    dec sp                                        ; $700c: $3b
    rra                                           ; $700d: $1f
    ld h, d                                       ; $700e: $62
    inc bc                                        ; $700f: $03
    ld bc, $a380                                  ; $7010: $01 $80 $a3
    cp h                                          ; $7013: $bc
    cpl                                           ; $7014: $2f
    db $e3                                        ; $7015: $e3
    ld bc, $86fe                                  ; $7016: $01 $fe $86
    ld [hl], c                                    ; $7019: $71
    ld d, c                                       ; $701a: $51
    inc b                                         ; $701b: $04
    add b                                         ; $701c: $80
    ld a, [hl]                                    ; $701d: $7e
    ld a, [hl-]                                   ; $701e: $3a
    jp c, Jump_000_186b                           ; $701f: $da $6b $18

    adc l                                         ; $7022: $8d
    ld [hl], c                                    ; $7023: $71
    db $ed                                        ; $7024: $ed
    cp $8f                                        ; $7025: $fe $8f
    nop                                           ; $7027: $00
    ld e, b                                       ; $7028: $58
    ld c, d                                       ; $7029: $4a
    cp a                                          ; $702a: $bf
    pop de                                        ; $702b: $d1
    jp $d950                                      ; $702c: $c3 $50 $d9


    ei                                            ; $702f: $fb
    and [hl]                                      ; $7030: $a6
    ld [$5802], sp                                ; $7031: $08 $02 $58
    xor e                                         ; $7034: $ab
    db $ed                                        ; $7035: $ed
    rrca                                          ; $7036: $0f
    sub $c0                                       ; $7037: $d6 $c0
    db $fd                                        ; $7039: $fd
    ld [hl], d                                    ; $703a: $72
    ld b, a                                       ; $703b: $47
    rst $20                                       ; $703c: $e7
    inc l                                         ; $703d: $2c
    adc d                                         ; $703e: $8a
    ld l, e                                       ; $703f: $6b
    ld d, d                                       ; $7040: $52
    inc bc                                        ; $7041: $03
    sub [hl]                                      ; $7042: $96
    inc [hl]                                      ; $7043: $34
    dec l                                         ; $7044: $2d
    dec d                                         ; $7045: $15
    ld [$92c0], sp                                ; $7046: $08 $c0 $92
    sbc a                                         ; $7049: $9f
    adc [hl]                                      ; $704a: $8e
    or $d9                                        ; $704b: $f6 $d9
    sub b                                         ; $704d: $90
    ld bc, $7e4b                                  ; $704e: $01 $4b $7e
    jr nz, jr_050_70a2                            ; $7051: $20 $4f

    jp $9ffd                                      ; $7053: $c3 $fd $9f


    ld [hl], d                                    ; $7056: $72
    dec c                                         ; $7057: $0d
    ld [hl], e                                    ; $7058: $73
    adc b                                         ; $7059: $88
    adc l                                         ; $705a: $8d
    ld a, a                                       ; $705b: $7f
    dec b                                         ; $705c: $05
    ld bc, $ef18                                  ; $705d: $01 $18 $ef
    rst $38                                       ; $7060: $ff
    xor h                                         ; $7061: $ac
    ld h, c                                       ; $7062: $61
    inc [hl]                                      ; $7063: $34
    inc h                                         ; $7064: $24
    db $10                                        ; $7065: $10
    ld b, b                                       ; $7066: $40
    xor d                                         ; $7067: $aa
    cp a                                          ; $7068: $bf
    ld [hl], c                                    ; $7069: $71
    xor a                                         ; $706a: $af
    add c                                         ; $706b: $81
    cp e                                          ; $706c: $bb
    ld b, d                                       ; $706d: $42
    or d                                          ; $706e: $b2
    dec de                                        ; $706f: $1b
    add hl, bc                                    ; $7070: $09

Jump_050_7071:
    inc b                                         ; $7071: $04
    ld b, b                                       ; $7072: $40
    xor l                                         ; $7073: $ad
    xor d                                         ; $7074: $aa
    sbc $13                                       ; $7075: $de $13
    ld l, a                                       ; $7077: $6f
    sub e                                         ; $7078: $93
    ld a, h                                       ; $7079: $7c
    dec d                                         ; $707a: $15
    adc l                                         ; $707b: $8d
    nop                                           ; $707c: $00
    rrca                                          ; $707d: $0f
    and l                                         ; $707e: $a5
    rst $00                                       ; $707f: $c7
    scf                                           ; $7080: $37
    add hl, hl                                    ; $7081: $29
    or d                                          ; $7082: $b2
    daa                                           ; $7083: $27
    adc h                                         ; $7084: $8c
    ld [hl+], a                                   ; $7085: $22
    db $fc                                        ; $7086: $fc
    adc d                                         ; $7087: $8a
    ld b, d                                       ; $7088: $42
    ret nz                                        ; $7089: $c0

    ld a, [hl]                                    ; $708a: $7e
    jp hl                                         ; $708b: $e9


    scf                                           ; $708c: $37
    ret                                           ; $708d: $c9


    inc bc                                        ; $708e: $03
    inc e                                         ; $708f: $1c
    ccf                                           ; $7090: $3f
    call $8f42                                    ; $7091: $cd $42 $8f
    sub e                                         ; $7094: $93
    db $ec                                        ; $7095: $ec
    ld c, c                                       ; $7096: $49
    ld e, $b8                                     ; $7097: $1e $b8
    ei                                            ; $7099: $fb
    rst $38                                       ; $709a: $ff
    ld h, l                                       ; $709b: $65
    ld [hl], h                                    ; $709c: $74
    ld d, e                                       ; $709d: $53
    db $e4                                        ; $709e: $e4
    rlca                                          ; $709f: $07
    ld [bc], a                                    ; $70a0: $02
    ld h, b                                       ; $70a1: $60

jr_050_70a2:
    ld c, h                                       ; $70a2: $4c
    db $eb                                        ; $70a3: $eb
    pop af                                        ; $70a4: $f1
    add a                                         ; $70a5: $87
    sub c                                         ; $70a6: $91
    sub c                                         ; $70a7: $91
    ld de, $0082                                  ; $70a8: $11 $82 $00
    ld h, b                                       ; $70ab: $60
    inc sp                                        ; $70ac: $33
    and e                                         ; $70ad: $a3
    ld a, [$8076]                                 ; $70ae: $fa $76 $80
    and e                                         ; $70b1: $a3
    add sp, -$33                                  ; $70b2: $e8 $cd
    ld a, [de]                                    ; $70b4: $1a
    ld [bc], a                                    ; $70b5: $02
    ld b, b                                       ; $70b6: $40
    ld c, h                                       ; $70b7: $4c
    ld c, e                                       ; $70b8: $4b
    db $fc                                        ; $70b9: $fc
    sbc e                                         ; $70ba: $9b
    db $e4                                        ; $70bb: $e4
    ld bc, $7d52                                  ; $70bc: $01 $52 $7d
    ld [hl], c                                    ; $70bf: $71
    cp h                                          ; $70c0: $bc
    db $10                                        ; $70c1: $10
    ret nz                                        ; $70c2: $c0

    sub e                                         ; $70c3: $93
    rst $38                                       ; $70c4: $ff
    xor a                                         ; $70c5: $af
    ld e, $3d                                     ; $70c6: $1e $3d
    ld [hl], b                                    ; $70c8: $70
    add [hl]                                      ; $70c9: $86
    ld b, h                                       ; $70ca: $44
    sbc d                                         ; $70cb: $9a
    add l                                         ; $70cc: $85
    nop                                           ; $70cd: $00
    ld h, b                                       ; $70ce: $60
    add d                                         ; $70cf: $82
    sub c                                         ; $70d0: $91
    rst $28                                       ; $70d1: $ef
    ld c, c                                       ; $70d2: $49
    xor d                                         ; $70d3: $aa
    ld l, b                                       ; $70d4: $68
    adc c                                         ; $70d5: $89
    adc l                                         ; $70d6: $8d
    ld b, [hl]                                    ; $70d7: $46
    ret nz                                        ; $70d8: $c0

    ld a, a                                       ; $70d9: $7f
    adc b                                         ; $70da: $88
    xor l                                         ; $70db: $ad
    ld bc, $aed1                                  ; $70dc: $01 $d1 $ae
    cp e                                          ; $70df: $bb
    ld c, c                                       ; $70e0: $49
    ld de, $8004                                  ; $70e1: $11 $04 $80
    ld l, h                                       ; $70e4: $6c
    db $fd                                        ; $70e5: $fd
    ld [hl], h                                    ; $70e6: $74
    or h                                          ; $70e7: $b4
    rrca                                          ; $70e8: $0f
    ld [hl], e                                    ; $70e9: $73
    ld [hl], c                                    ; $70ea: $71
    call c, $a2bf                                 ; $70eb: $dc $bf $a2
    db $10                                        ; $70ee: $10
    ldh [$a2], a                                  ; $70ef: $e0 $a2
    pop af                                        ; $70f1: $f1
    ldh a, [$a4]                                  ; $70f2: $f0 $a4
    ld b, $ac                                     ; $70f4: $06 $ac
    inc h                                         ; $70f6: $24
    ld h, l                                       ; $70f7: $65
    sub d                                         ; $70f8: $92
    halt                                          ; $70f9: $76
    inc b                                         ; $70fa: $04
    ld b, b                                       ; $70fb: $40
    ld a, [hl+]                                   ; $70fc: $2a
    rst $20                                       ; $70fd: $e7
    ld [de], a                                    ; $70fe: $12
    db $db                                        ; $70ff: $db
    or l                                          ; $7100: $b5
    and a                                         ; $7101: $a7
    sub l                                         ; $7102: $95
    cp $e5                                        ; $7103: $fe $e5
    sbc c                                         ; $7105: $99
    or b                                          ; $7106: $b0
    db $10                                        ; $7107: $10
    and b                                         ; $7108: $a0
    dec c                                         ; $7109: $0d
    sbc [hl]                                      ; $710a: $9e
    sub e                                         ; $710b: $93
    adc h                                         ; $710c: $8c
    nop                                           ; $710d: $00
    add b                                         ; $710e: $80
    ld a, a                                       ; $710f: $7f
    adc b                                         ; $7110: $88
    ld d, $97                                     ; $7111: $16 $97
    xor $89                                       ; $7113: $ee $89
    rst $10                                       ; $7115: $d7
    daa                                           ; $7116: $27
    ld [$7e80], sp                                ; $7117: $08 $80 $7e
    ld a, [hl-]                                   ; $711a: $3a
    ld a, [$06a6]                                 ; $711b: $fa $a6 $06
    cp h                                          ; $711e: $bc
    inc de                                        ; $711f: $13
    sub c                                         ; $7120: $91
    ld l, e                                       ; $7121: $6b
    inc b                                         ; $7122: $04
    ld bc, $a3a0                                  ; $7123: $01 $a0 $a3
    rst $38                                       ; $7126: $ff
    dec d                                         ; $7127: $15
    inc b                                         ; $7128: $04
    ld b, b                                       ; $7129: $40
    ccf                                           ; $712a: $3f
    rst $10                                       ; $712b: $d7
    rst $10                                       ; $712c: $d7
    sub $80                                       ; $712d: $d6 $80
    db $fc                                        ; $712f: $fc
    ld d, d                                       ; $7130: $52
    ld a, [bc]                                    ; $7131: $0a
    ld bc, $dbc0                                  ; $7132: $01 $c0 $db
    xor b                                         ; $7135: $a8
    sub d                                         ; $7136: $92
    dec a                                         ; $7137: $3d
    pop af                                        ; $7138: $f1
    add h                                         ; $7139: $84
    ld [c], a                                     ; $713a: $e2
    ld [$9380], sp                                ; $713b: $08 $80 $93
    or [hl]                                       ; $713e: $b6
    ld h, $45                                     ; $713f: $26 $45
    ld b, $3a                                     ; $7141: $06 $3a
    ld sp, hl                                     ; $7143: $f9
    sub $18                                       ; $7144: $d6 $18
    ld b, c                                       ; $7146: $41
    add b                                         ; $7147: $80
    ld a, $8d                                     ; $7148: $3e $8d
    cp [hl]                                       ; $714a: $be
    add hl, hl                                    ; $714b: $29
    or d                                          ; $714c: $b2
    daa                                           ; $714d: $27
    push bc                                       ; $714e: $c5
    jr z, @-$21                                   ; $714f: $28 $dd

    rst $10                                       ; $7151: $d7
    xor d                                         ; $7152: $aa
    ld b, b                                       ; $7153: $40
    add b                                         ; $7154: $80
    jp c, $de83                                   ; $7155: $da $83 $de

    ld a, h                                       ; $7158: $7c
    ld l, e                                       ; $7159: $6b
    and b                                         ; $715a: $a0
    ld [de], a                                    ; $715b: $12
    adc [hl]                                      ; $715c: $8e
    ld e, h                                       ; $715d: $5c
    ld b, c                                       ; $715e: $41
    ret nz                                        ; $715f: $c0

    adc l                                         ; $7160: $8d
    ld e, b                                       ; $7161: $58
    di                                            ; $7162: $f3
    xor a                                         ; $7163: $af
    call nz, $fec0                                ; $7164: $c4 $c0 $fe
    adc e                                         ; $7167: $8b
    ld l, e                                       ; $7168: $6b
    dec h                                         ; $7169: $25
    adc [hl]                                      ; $716a: $8e
    nop                                           ; $716b: $00
    and b                                         ; $716c: $a0
    adc l                                         ; $716d: $8d
    ld a, b                                       ; $716e: $78
    xor c                                         ; $716f: $a9
    inc h                                         ; $7170: $24
    ld b, $52                                     ; $7171: $06 $52
    xor [hl]                                      ; $7173: $ae
    jp nc, Jump_000_07fc                          ; $7174: $d2 $fc $07

    dec bc                                        ; $7177: $0b
    ld bc, $d50f                                  ; $7178: $01 $0f $d5
    call $381a                                    ; $717b: $cd $1a $38
    db $e3                                        ; $717e: $e3
    ld e, $8d                                     ; $717f: $1e $8d
    nop                                           ; $7181: $00
    rst $20                                       ; $7182: $e7
    pop de                                        ; $7183: $d1
    adc h                                         ; $7184: $8c
    ld b, d                                       ; $7185: $42
    ld a, h                                       ; $7186: $7c
    ld c, a                                       ; $7187: $4f
    or h                                          ; $7188: $b4
    ld c, e                                       ; $7189: $4b
    pop af                                        ; $718a: $f1
    ld a, a                                       ; $718b: $7f
    ld b, l                                       ; $718c: $45
    ld hl, $13c0                                  ; $718d: $21 $c0 $13
    pop de                                        ; $7190: $d1
    xor $b7                                       ; $7191: $ee $b7
    or l                                          ; $7193: $b5
    jp nc, $dc07                                  ; $7194: $d2 $07 $dc

    ld [hl], h                                    ; $7197: $74
    ld c, $6a                                     ; $7198: $0e $6a
    ld c, h                                       ; $719a: $4c
    inc hl                                        ; $719b: $23
    ld b, b                                       ; $719c: $40
    cp $35                                        ; $719d: $fe $35
    ld d, [hl]                                    ; $719f: $56
    ld [bc], a                                    ; $71a0: $02
    ld bc, $a380                                  ; $71a1: $01 $80 $a3
    ld [de], a                                    ; $71a4: $12
    ld l, d                                       ; $71a5: $6a
    call nz, $ba07                                ; $71a6: $c4 $07 $ba
    sbc d                                         ; $71a9: $9a
    ld l, c                                       ; $71aa: $69
    ld a, [$4ba6]                                 ; $71ab: $fa $a6 $4b
    ld c, b                                       ; $71ae: $48
    ld b, [hl]                                    ; $71af: $46
    ld b, b                                       ; $71b0: $40
    or h                                          ; $71b1: $b4
    ld c, d                                       ; $71b2: $4a
    inc h                                         ; $71b3: $24
    dec d                                         ; $71b4: $15
    xor h                                         ; $71b5: $ac
    add c                                         ; $71b6: $81
    db $fd                                        ; $71b7: $fd
    or [hl]                                       ; $71b8: $b6
    xor a                                         ; $71b9: $af
    ld d, l                                       ; $71ba: $55
    add c                                         ; $71bb: $81
    nop                                           ; $71bc: $00

jr_050_71bd:
    and b                                         ; $71bd: $a0
    inc de                                        ; $71be: $13
    ld d, c                                       ; $71bf: $51
    ld h, [hl]                                    ; $71c0: $66
    add b                                         ; $71c1: $80
    adc l                                         ; $71c2: $8d
    ld l, b                                       ; $71c3: $68
    ld b, l                                       ; $71c4: $45
    ld de, $ef98                                  ; $71c5: $11 $98 $ef
    rst $20                                       ; $71c8: $e7
    ld a, [hl-]                                   ; $71c9: $3a
    db $ec                                        ; $71ca: $ec
    add b                                         ; $71cb: $80
    ld a, [hl]                                    ; $71cc: $7e
    ld e, h                                       ; $71cd: $5c
    cp e                                          ; $71ce: $bb
    add hl, hl                                    ; $71cf: $29
    add d                                         ; $71d0: $82
    nop                                           ; $71d1: $00
    add b                                         ; $71d2: $80
    ei                                            ; $71d3: $fb
    ld e, d                                       ; $71d4: $5a
    dec d                                         ; $71d5: $15
    ld a, $cc                                     ; $71d6: $3e $cc
    ld hl, $a4df                                  ; $71d8: $21 $df $a4
    ld [$c002], sp                                ; $71db: $08 $02 $c0
    adc l                                         ; $71de: $8d
    db $ed                                        ; $71df: $ed
    sbc e                                         ; $71e0: $9b
    ld a, [de]                                    ; $71e1: $1a
    ldh a, [$66]                                  ; $71e2: $f0 $66
    ld [hl], c                                    ; $71e4: $71
    call c, Call_050_6b15                         ; $71e5: $dc $15 $6b

Jump_050_71e8:
    ld a, [de]                                    ; $71e8: $1a

jr_050_71e9:
    ld bc, $6fa0                                  ; $71e9: $01 $a0 $6f
    sub a                                         ; $71ec: $97
    ret c                                         ; $71ed: $d8

    ld a, [de]                                    ; $71ee: $1a
    ld [hl], b                                    ; $71ef: $70
    sub e                                         ; $71f0: $93
    or l                                          ; $71f1: $b5
    ld h, d                                       ; $71f2: $62
    ld b, h                                       ; $71f3: $44
    db $10                                        ; $71f4: $10
    ld c, a                                       ; $71f5: $4f
    ld [$9b17], a                                 ; $71f6: $ea $17 $9b
    ld [$f93d], a                                 ; $71f9: $ea $3d $f9
    inc l                                         ; $71fc: $2c
    rst $10                                       ; $71fd: $d7
    and d                                         ; $71fe: $a2
    xor a                                         ; $71ff: $af
    jr nz, jr_050_71e9                            ; $7200: $20 $e7

    ld l, l                                       ; $7202: $6d
    call c, $8ae5                                 ; $7203: $dc $e5 $8a
    ld a, [de]                                    ; $7206: $1a
    add sp, $0a                                   ; $7207: $e8 $0a
    dec a                                         ; $7209: $3d
    db $10                                        ; $720a: $10
    rrca                                          ; $720b: $0f
    pop af                                        ; $720c: $f1
    ld d, l                                       ; $720d: $55
    db $ed                                        ; $720e: $ed
    ld hl, $b8e1                                  ; $720f: $21 $e1 $b8
    rra                                           ; $7212: $1f
    ld a, b                                       ; $7213: $78
    jp nz, Jump_000_0871                          ; $7214: $c2 $71 $08

    jr @+$0e                                      ; $7217: $18 $0c

    and e                                         ; $7219: $a3
    sub b                                         ; $721a: $90
    ld a, [de]                                    ; $721b: $1a
    add [hl]                                      ; $721c: $86
    jp nc, Jump_050_5243                          ; $721d: $d2 $43 $52

    cp a                                          ; $7220: $bf
    jr @+$23                                      ; $7221: $18 $21

    rrca                                          ; $7223: $0f
    ld hl, $66ea                                  ; $7224: $21 $ea $66
    ld e, a                                       ; $7227: $5f
    jp hl                                         ; $7228: $e9


    jp $8c6c                                      ; $7229: $c3 $6c $8c


    ld c, l                                       ; $722c: $4d
    or l                                          ; $722d: $b5
    pop hl                                        ; $722e: $e1
    inc e                                         ; $722f: $1c
    ld bc, $75e7                                  ; $7230: $01 $e7 $75
    inc sp                                        ; $7233: $33
    ld l, e                                       ; $7234: $6b
    rst $20                                       ; $7235: $e7
    add $da                                       ; $7236: $c6 $da
    add sp, $6b                                   ; $7238: $e8 $6b
    ld d, l                                       ; $723a: $55
    jr nz, jr_050_71bd                            ; $723b: $20 $80

    ld a, [hl]                                    ; $723d: $7e
    ld a, [hl-]                                   ; $723e: $3a
    ret                                           ; $723f: $c9


    dec sp                                        ; $7240: $3b
    ld c, a                                       ; $7241: $4f
    ld l, b                                       ; $7242: $68
    ld a, [$3587]                                 ; $7243: $fa $87 $35
    dec e                                         ; $7246: $1d
    ld [$46e7], sp                                ; $7247: $08 $e7 $46
    ld c, d                                       ; $724a: $4a
    ld l, c                                       ; $724b: $69
    dec h                                         ; $724c: $25
    jp $41d8                                      ; $724d: $c3 $d8 $41


    ld a, a                                       ; $7250: $7f
    cp b                                          ; $7251: $b8
    inc hl                                        ; $7252: $23
    and b                                         ; $7253: $a0
    sub e                                         ; $7254: $93
    ld a, h                                       ; $7255: $7c
    xor l                                         ; $7256: $ad
    jp hl                                         ; $7257: $e9


    ld a, [de]                                    ; $7258: $1a
    ldh [rOCPS], a                                ; $7259: $e0 $6a
    jp nz, $bae8                                  ; $725b: $c2 $e8 $ba

    add [hl]                                      ; $725e: $86
    nop                                           ; $725f: $00
    ret nz                                        ; $7260: $c0

    xor a                                         ; $7261: $af
    dec c                                         ; $7262: $0d
    inc hl                                        ; $7263: $23
    inc bc                                        ; $7264: $03
    jp nc, Jump_050_4d09                          ; $7265: $d2 $09 $4d

    inc hl                                        ; $7268: $23
    rrca                                          ; $7269: $0f
    pop de                                        ; $726a: $d1
    or h                                          ; $726b: $b4
    ld h, h                                       ; $726c: $64
    sbc b                                         ; $726d: $98
    xor a                                         ; $726e: $af
    ld a, b                                       ; $726f: $78
    ld e, a                                       ; $7270: $5f
    ld d, c                                       ; $7271: $51
    ld e, d                                       ; $7272: $5a
    ld d, c                                       ; $7273: $51
    inc b                                         ; $7274: $04
    jr nz, jr_050_72e6                            ; $7275: $20 $6f

    rst $38                                       ; $7277: $ff
    ld h, b                                       ; $7278: $60
    db $ed                                        ; $7279: $ed
    inc a                                         ; $727a: $3c
    ld hl, $0081                                  ; $727b: $21 $81 $00
    and b                                         ; $727e: $a0
    ld e, c                                       ; $727f: $59
    ld l, l                                       ; $7280: $6d
    ld h, h                                       ; $7281: $64
    sbc b                                         ; $7282: $98
    ld c, e                                       ; $7283: $4b
    ld a, c                                       ; $7284: $79

jr_050_7285:
    db $dd                                        ; $7285: $dd
    adc a                                         ; $7286: $8f
    nop                                           ; $7287: $00
    ld h, b                                       ; $7288: $60
    dec sp                                        ; $7289: $3b
    ld e, a                                       ; $728a: $5f
    ld sp, $a8c3                                  ; $728b: $31 $c3 $a8
    ld [hl], l                                    ; $728e: $75
    sub d                                         ; $728f: $92
    db $dd                                        ; $7290: $dd
    ld [$4002], sp                                ; $7291: $08 $02 $40
    ld [c], a                                     ; $7294: $e2
    ld b, a                                       ; $7295: $47
    or $2b                                        ; $7296: $f6 $2b
    dec [hl]                                      ; $7298: $35
    call z, $e9d5                                 ; $7299: $cc $d5 $e9
    ld c, b                                       ; $729c: $48
    ld de, $0f04                                  ; $729d: $11 $04 $0f
    ld d, c                                       ; $72a0: $51
    xor [hl]                                      ; $72a1: $ae
    and l                                         ; $72a2: $a5
    adc h                                         ; $72a3: $8c
    rst $00                                       ; $72a4: $c7
    nop                                           ; $72a5: $00
    ld d, a                                       ; $72a6: $57
    and a                                         ; $72a7: $a7
    xor e                                         ; $72a8: $ab
    ld e, c                                       ; $72a9: $59
    ld [$a3a0], sp                                ; $72aa: $08 $a0 $a3
    db $dd                                        ; $72ad: $dd
    ret z                                         ; $72ae: $c8

    add b                                         ; $72af: $80
    ld [hl], a                                    ; $72b0: $77
    jp hl                                         ; $72b1: $e9


    sub c                                         ; $72b2: $91
    ld de, $0d80                                  ; $72b3: $11 $80 $0d
    inc hl                                        ; $72b6: $23
    ld e, d                                       ; $72b7: $5a
    ld [hl-], a                                   ; $72b8: $32
    call z, $957d                                 ; $72b9: $cc $7d $95
    and $08                                       ; $72bc: $e6 $08
    adc a                                         ; $72be: $8f
    ld c, l                                       ; $72bf: $4d
    ld c, [hl]                                    ; $72c0: $4e
    push bc                                       ; $72c1: $c5

jr_050_72c2:
    cp a                                          ; $72c2: $bf
    ld h, d                                       ; $72c3: $62
    add a                                         ; $72c4: $87
    cp c                                          ; $72c5: $b9
    ld l, h                                       ; $72c6: $6c
    jp z, Jump_000_08a4                           ; $72c7: $ca $a4 $08

    ld [bc], a                                    ; $72ca: $02
    ret nz                                        ; $72cb: $c0

    add hl, de                                    ; $72cc: $19
    add l                                         ; $72cd: $85
    jr jr_050_7285                                ; $72ce: $18 $b5

    rst $00                                       ; $72d0: $c7
    ld b, [hl]                                    ; $72d1: $46
    ld [hl+], a                                   ; $72d2: $22
    inc hl                                        ; $72d3: $23
    ld b, b                                       ; $72d4: $40
    ld e, b                                       ; $72d5: $58
    ld a, b                                       ; $72d6: $78
    rst $18                                       ; $72d7: $df
    sub d                                         ; $72d8: $92
    ld h, c                                       ; $72d9: $61
    dec [hl]                                      ; $72da: $35
    adc c                                         ; $72db: $89
    db $fd                                        ; $72dc: $fd
    add c                                         ; $72dd: $81
    nop                                           ; $72de: $00

jr_050_72df:
    rst $20                                       ; $72df: $e7
    and c                                         ; $72e0: $a1
    rst $38                                       ; $72e1: $ff
    dec hl                                        ; $72e2: $2b
    jp Jump_050_5dac                              ; $72e3: $c3 $ac $5d


jr_050_72e6:
    rrca                                          ; $72e6: $0f
    call $20b4                                    ; $72e7: $cd $b4 $20
    rst $20                                       ; $72ea: $e7
    adc c                                         ; $72eb: $89
    and h                                         ; $72ec: $a4
    xor e                                         ; $72ed: $ab
    rlca                                          ; $72ee: $07
    ld d, [hl]                                    ; $72ef: $56
    db $fd                                        ; $72f0: $fd
    ld [hl], b                                    ; $72f1: $70
    call $1e34                                    ; $72f2: $cd $34 $1e
    ld [$c2a0], sp                                ; $72f5: $08 $a0 $c2
    ldh [$e6], a                                  ; $72f8: $e0 $e6
    db $db                                        ; $72fa: $db
    dec hl                                        ; $72fb: $2b
    or l                                          ; $72fc: $b5
    daa                                           ; $72fd: $27
    inc [hl]                                      ; $72fe: $34

Call_050_72ff:
    ld e, h                                       ; $72ff: $5c
    ld h, e                                       ; $7300: $63
    call nz, Call_000_114a                        ; $7301: $c4 $4a $11
    inc b                                         ; $7304: $04
    jr @-$72                                      ; $7305: $18 $8c

    adc l                                         ; $7307: $8d
    cp [hl]                                       ; $7308: $be
    add hl, hl                                    ; $7309: $29
    ld [hl-], a                                   ; $730a: $32
    ld [hl], b                                    ; $730b: $70
    ccf                                           ; $730c: $3f
    and c                                         ; $730d: $a1
    cp b                                          ; $730e: $b8
    dec de                                        ; $730f: $1b
    ld b, c                                       ; $7310: $41
    jr jr_050_72df                                ; $7311: $18 $cc

    cpl                                           ; $7313: $2f
    or c                                          ; $7314: $b1
    inc bc                                        ; $7315: $03
    add hl, de                                    ; $7316: $19
    ld c, d                                       ; $7317: $4a
    ld hl, $d10f                                  ; $7318: $21 $0f $d1

jr_050_731b:
    cp b                                          ; $731b: $b8
    sbc c                                         ; $731c: $99
    dec c                                         ; $731d: $0d
    reti                                          ; $731e: $d9


    ld b, e                                       ; $731f: $43
    ret nc                                        ; $7320: $d0

    ld c, h                                       ; $7321: $4c
    ld [bc], a                                    ; $7322: $02
    ld bc, $c480                                  ; $7323: $01 $80 $c4
    or [hl]                                       ; $7326: $b6
    ret                                           ; $7327: $c9


    or e                                          ; $7328: $b3
    ld hl, $f403                                  ; $7329: $21 $03 $f4
    ld a, a                                       ; $732c: $7f
    adc [hl]                                      ; $732d: $8e
    db $10                                        ; $732e: $10
    dec de                                        ; $732f: $1b
    ld [$7e98], sp                                ; $7330: $08 $98 $7e
    rst $18                                       ; $7333: $df
    call nc, $c86c                                ; $7334: $d4 $6c $c8
    jr nc, jr_050_72c2                            ; $7337: $30 $89

    adc l                                         ; $7339: $8d
    cp $57                                        ; $733a: $fe $57
    dec b                                         ; $733c: $05
    ld [bc], a                                    ; $733d: $02
    and b                                         ; $733e: $a0
    ld c, h                                       ; $733f: $4c
    db $db                                        ; $7340: $db
    dec a                                         ; $7341: $3d
    ld [hl], c                                    ; $7342: $71
    ld h, e                                       ; $7343: $63
    ld l, l                                       ; $7344: $6d
    or l                                          ; $7345: $b5
    dec e                                         ; $7346: $1d
    and $eb                                       ; $7347: $e6 $eb
    ld e, d                                       ; $7349: $5a
    ld [hl], h                                    ; $734a: $74
    ld b, [hl]                                    ; $734b: $46
    jr nz, jr_050_73bd                            ; $734c: $20 $6f

    sub e                                         ; $734e: $93
    ld b, b                                       ; $734f: $40
    and b                                         ; $7350: $a0
    ld l, a                                       ; $7351: $6f
    ld d, a                                       ; $7352: $57
    ld a, [hl-]                                   ; $7353: $3a
    cp $af                                        ; $7354: $fe $af
    add c                                         ; $7356: $81
    ei                                            ; $7357: $fb
    adc c                                         ; $7358: $89
    sub b                                         ; $7359: $90
    ld [hl], b                                    ; $735a: $70
    ld b, a                                       ; $735b: $47
    add b                                         ; $735c: $80
    and e                                         ; $735d: $a3
    db $fd                                        ; $735e: $fd
    add $00                                       ; $735f: $c6 $00
    dec de                                        ; $7361: $1b
    ld [hl], a                                    ; $7362: $77
    inc b                                         ; $7363: $04
    jr jr_050_731b                                ; $7364: $18 $b5

    or d                                          ; $7366: $b2
    ld [hl], $92                                  ; $7367: $36 $92
    inc a                                         ; $7369: $3c
    adc h                                         ; $736a: $8c
    ld e, d                                       ; $736b: $5a
    jp nc, $fe24                                  ; $736c: $d2 $24 $fe

    ld b, a                                       ; $736f: $47
    ld h, b                                       ; $7370: $60
    ret                                           ; $7371: $c9


    ld hl, $008e                                  ; $7372: $21 $8e $00
    ld b, e                                       ; $7375: $43
    ld c, a                                       ; $7376: $4f
    and e                                         ; $7377: $a3
    ld c, c                                       ; $7378: $49
    or $e3                                        ; $7379: $f6 $e3
    rst $38                                       ; $737b: $ff
    sub l                                         ; $737c: $95
    ld a, e                                       ; $737d: $7b
    and l                                         ; $737e: $a5
    ld [$1b02], sp                                ; $737f: $08 $02 $1b
    add e                                         ; $7382: $83
    daa                                           ; $7383: $27
    sbc [hl]                                      ; $7384: $9e
    ret c                                         ; $7385: $d8

    add sp, -$4e                                  ; $7386: $e8 $b2
    ld sp, $e92d                                  ; $7388: $31 $2d $e9
    ld d, c                                       ; $738b: $51
    ld e, [hl]                                    ; $738c: $5e
    ld b, d                                       ; $738d: $42
    ld a, [c]                                     ; $738e: $f2
    cp b                                          ; $738f: $b8
    jp z, $c3d1                                   ; $7390: $ca $d1 $c3

    ld a, c                                       ; $7393: $79
    dec a                                         ; $7394: $3d
    sbc d                                         ; $7395: $9a
    ld d, h                                       ; $7396: $54
    rst $08                                       ; $7397: $cf
    db $db                                        ; $7398: $db
    db $fc                                        ; $7399: $fc
    ld l, a                                       ; $739a: $6f
    sbc e                                         ; $739b: $9b
    sub l                                         ; $739c: $95
    ld [hl+], a                                   ; $739d: $22
    reti                                          ; $739e: $d9


    rst $28                                       ; $739f: $ef
    rst $38                                       ; $73a0: $ff
    ld a, d                                       ; $73a1: $7a
    inc [hl]                                      ; $73a2: $34
    sub c                                         ; $73a3: $91
    dec hl                                        ; $73a4: $2b
    ld a, [bc]                                    ; $73a5: $0a
    ld [hl+], a                                   ; $73a6: $22
    dec de                                        ; $73a7: $1b
    add e                                         ; $73a8: $83
    di                                            ; $73a9: $f3
    sub b                                         ; $73aa: $90
    ld h, l                                       ; $73ab: $65
    ccf                                           ; $73ac: $3f
    ld [hl], l                                    ; $73ad: $75
    or $58                                        ; $73ae: $f6 $58
    jp hl                                         ; $73b0: $e9


    xor e                                         ; $73b1: $ab
    rst $38                                       ; $73b2: $ff
    ld l, e                                       ; $73b3: $6b
    inc [hl]                                      ; $73b4: $34
    ld l, h                                       ; $73b5: $6c
    ld a, h                                       ; $73b6: $7c
    cp a                                          ; $73b7: $bf
    or [hl]                                       ; $73b8: $b6
    ld d, [hl]                                    ; $73b9: $56
    sbc a                                         ; $73ba: $9f
    inc b                                         ; $73bb: $04
    cp l                                          ; $73bc: $bd

jr_050_73bd:
    reti                                          ; $73bd: $d9


    and e                                         ; $73be: $a3
    ld hl, $1b02                                  ; $73bf: $21 $02 $1b
    add e                                         ; $73c2: $83
    daa                                           ; $73c3: $27
    ld a, b                                       ; $73c4: $78
    rra                                           ; $73c5: $1f
    and d                                         ; $73c6: $a2
    ld l, h                                       ; $73c7: $6c
    inc l                                         ; $73c8: $2c
    call $8192                                    ; $73c9: $cd $92 $81
    cp d                                          ; $73cc: $ba
    xor $3f                                       ; $73cd: $ee $3f
    halt                                          ; $73cf: $76
    sbc $06                                       ; $73d0: $de $06
    rst $00                                       ; $73d2: $c7
    xor a                                         ; $73d3: $af
    xor b                                         ; $73d4: $a8
    ret                                           ; $73d5: $c9


    pop de                                        ; $73d6: $d1
    db $d3                                        ; $73d7: $d3
    ld c, d                                       ; $73d8: $4a
    ld b, [hl]                                    ; $73d9: $46
    cpl                                           ; $73da: $2f
    db $e3                                        ; $73db: $e3

jr_050_73dc:
    or d                                          ; $73dc: $b2
    or c                                          ; $73dd: $b1
    sub b                                         ; $73de: $90
    pop de                                        ; $73df: $d1
    ld d, d                                       ; $73e0: $52
    scf                                           ; $73e1: $37
    sub e                                         ; $73e2: $93
    add hl, sp                                    ; $73e3: $39
    rst $18                                       ; $73e4: $df
    sbc [hl]                                      ; $73e5: $9e
    ld l, c                                       ; $73e6: $69
    jr c, jr_050_742d                             ; $73e7: $38 $44

    dec de                                        ; $73e9: $1b
    inc bc                                        ; $73ea: $03
    ld c, h                                       ; $73eb: $4c
    jr c, jr_050_73dc                             ; $73ec: $38 $ee

jr_050_73ee:
    ld b, a                                       ; $73ee: $47
    adc d                                         ; $73ef: $8a
    ld a, b                                       ; $73f0: $78
    ld c, h                                       ; $73f1: $4c
    ld e, b                                       ; $73f2: $58
    xor $25                                       ; $73f3: $ee $25
    dec hl                                        ; $73f5: $2b
    ld a, l                                       ; $73f6: $7d
    ret nz                                        ; $73f7: $c0

    ld e, c                                       ; $73f8: $59
    rst $38                                       ; $73f9: $ff
    add a                                         ; $73fa: $87
    xor b                                         ; $73fb: $a8
    ld a, $f2                                     ; $73fc: $3e $f2
    db $e4                                        ; $73fe: $e4
    add sp, $69                                   ; $73ff: $e8 $69
    ld b, [hl]                                    ; $7401: $46
    sub $3c                                       ; $7402: $d6 $3c
    add hl, hl                                    ; $7404: $29
    dec de                                        ; $7405: $1b
    bit 5, [hl]                                   ; $7406: $cb $6e
    ld [hl], b                                    ; $7408: $70
    cp h                                          ; $7409: $bc
    and [hl]                                      ; $740a: $a6
    dec h                                         ; $740b: $25
    ld a, d                                       ; $740c: $7a

jr_050_740d:
    ld h, d                                       ; $740d: $62
    jp $1777                                      ; $740e: $c3 $77 $17


    ld [hl-], a                                   ; $7411: $32
    db $ed                                        ; $7412: $ed
    ld a, [bc]                                    ; $7413: $0a
    add hl, de                                    ; $7414: $19
    dec c                                         ; $7415: $0d
    dec sp                                        ; $7416: $3b
    cp l                                          ; $7417: $bd
    call c, Call_000_2043                         ; $7418: $dc $43 $20
    ld [bc], a                                    ; $741b: $02
    dec de                                        ; $741c: $1b
    add e                                         ; $741d: $83
    rlca                                          ; $741e: $07
    sub $ff                                       ; $741f: $d6 $ff
    ld h, l                                       ; $7421: $65
    sub a                                         ; $7422: $97
    ldh [$38], a                                  ; $7423: $e0 $38
    ld [hl], a                                    ; $7425: $77
    ld b, l                                       ; $7426: $45
    xor d                                         ; $7427: $aa
    ld h, e                                       ; $7428: $63
    and l                                         ; $7429: $a5
    rst $08                                       ; $742a: $cf
    add [hl]                                      ; $742b: $86
    inc l                                         ; $742c: $2c

jr_050_742d:
    inc sp                                        ; $742d: $33
    adc a                                         ; $742e: $8f
    xor a                                         ; $742f: $af
    inc de                                        ; $7430: $13
    ld b, e                                       ; $7431: $43
    ld c, d                                       ; $7432: $4a
    ld l, h                                       ; $7433: $6c
    adc h                                         ; $7434: $8c
    ld e, h                                       ; $7435: $5c
    rst $30                                       ; $7436: $f7
    ld hl, sp+$02                                 ; $7437: $f8 $02
    ld de, $031b                                  ; $7439: $11 $1b $03
    ld c, h                                       ; $743c: $4c
    jr c, jr_050_740d                             ; $743d: $38 $ce

    ld e, l                                       ; $743f: $5d
    sub c                                         ; $7440: $91
    ld [$e958], a                                 ; $7441: $ea $58 $e9
    ld c, e                                       ; $7444: $4b
    ld [hl], b                                    ; $7445: $70
    db $fc                                        ; $7446: $fc
    ld a, [hl+]                                   ; $7447: $2a
    dec h                                         ; $7448: $25
    ld d, a                                       ; $7449: $57
    or d                                          ; $744a: $b2
    ld l, l                                       ; $744b: $6d
    ld d, [hl]                                    ; $744c: $56
    adc d                                         ; $744d: $8a

jr_050_744e:
    add h                                         ; $744e: $84
    sbc h                                         ; $744f: $9c
    dec l                                         ; $7450: $2d
    call c, $3697                                 ; $7451: $dc $97 $36
    ld e, $34                                     ; $7454: $1e $34
    ld l, h                                       ; $7456: $6c
    db $fc                                        ; $7457: $fc
    ld d, c                                       ; $7458: $51
    db $e3                                        ; $7459: $e3

jr_050_745a:
    db $d3                                        ; $745a: $d3
    ld c, e                                       ; $745b: $4b
    cp $55                                        ; $745c: $fe $55
    db $e3                                        ; $745e: $e3
    ld c, [hl]                                    ; $745f: $4e
    ld c, l                                       ; $7460: $4d
    ld e, b                                       ; $7461: $58
    ld e, a                                       ; $7462: $5f
    xor [hl]                                      ; $7463: $ae
    jr z, jr_050_73ee                             ; $7464: $28 $88

    nop                                           ; $7466: $00
    dec de                                        ; $7467: $1b
    inc bc                                        ; $7468: $03
    ret nz                                        ; $7469: $c0

    pop de                                        ; $746a: $d1
    daa                                           ; $746b: $27
    ld l, d                                       ; $746c: $6a
    sub a                                         ; $746d: $97
    ld c, c                                       ; $746e: $49
    pop hl                                        ; $746f: $e1
    push de                                       ; $7470: $d5
    or c                                          ; $7471: $b1
    jp nc, $bc07                                  ; $7472: $d2 $07 $bc

    ld b, e                                       ; $7475: $43
    sbc c                                         ; $7476: $99
    ld h, [hl]                                    ; $7477: $66
    push hl                                       ; $7478: $e5
    dec a                                         ; $7479: $3d
    xor c                                         ; $747a: $a9
    xor a                                         ; $747b: $af
    rst $00                                       ; $747c: $c7
    rst $08                                       ; $747d: $cf
    pop bc                                        ; $747e: $c1
    dec h                                         ; $747f: $25
    rst $38                                       ; $7480: $ff
    rst $10                                       ; $7481: $d7
    sbc [hl]                                      ; $7482: $9e
    call nc, $0bd7                                ; $7483: $d4 $d7 $0b
    ld [hl+], a                                   ; $7486: $22
    dec de                                        ; $7487: $1b
    inc bc                                        ; $7488: $03
    ld c, h                                       ; $7489: $4c
    jr c, jr_050_745a                             ; $748a: $38 $ce

    ld e, l                                       ; $748c: $5d
    sub c                                         ; $748d: $91
    ld [$e958], a                                 ; $748e: $ea $58 $e9
    and e                                         ; $7491: $a3
    cp h                                          ; $7492: $bc
    xor b                                         ; $7493: $a8
    ld a, [de]                                    ; $7494: $1a
    add hl, sp                                    ; $7495: $39
    ld a, [$c907]                                 ; $7496: $fa $07 $c9
    or [hl]                                       ; $7499: $b6
    ld e, c                                       ; $749a: $59
    add hl, hl                                    ; $749b: $29
    ld [de], a                                    ; $749c: $12
    dec c                                         ; $749d: $0d
    ld de, $831b                                  ; $749e: $11 $1b $83
    add a                                         ; $74a1: $87
    add e                                         ; $74a2: $83
    ld [hl], c                                    ; $74a3: $71
    ret                                           ; $74a4: $c9


    or d                                          ; $74a5: $b2
    and c                                         ; $74a6: $a1

jr_050_74a7:
    ld c, e                                       ; $74a7: $4b
    ld [hl], b                                    ; $74a8: $70
    sbc h                                         ; $74a9: $9c
    dec hl                                        ; $74aa: $2b
    sub c                                         ; $74ab: $91
    ld [hl], c                                    ; $74ac: $71
    cp a                                          ; $74ad: $bf
    jr z, jr_050_744e                             ; $74ae: $28 $9e

    ld a, h                                       ; $74b0: $7c
    dec a                                         ; $74b1: $3d
    ld a, [de]                                    ; $74b2: $1a
    ld [hl+], a                                   ; $74b3: $22
    dec de                                        ; $74b4: $1b
    inc bc                                        ; $74b5: $03
    ld c, h                                       ; $74b6: $4c
    jr c, jr_050_74a7                             ; $74b7: $38 $ee

    ld b, a                                       ; $74b9: $47
    adc d                                         ; $74ba: $8a
    ld a, b                                       ; $74bb: $78
    xor h                                         ; $74bc: $ac
    call c, Call_050_4e97                         ; $74bd: $dc $97 $4e
    jp nc, $93c6                                  ; $74c0: $d2 $c6 $93

    ld [hl], h                                    ; $74c3: $74
    ld [hl], h                                    ; $74c4: $74
    cp $41                                        ; $74c5: $fe $41
    sub a                                         ; $74c7: $97
    ld [hl], $5e                                  ; $74c8: $36 $5e
    dec a                                         ; $74ca: $3d
    xor $8a                                       ; $74cb: $ee $8a
    ld d, h                                       ; $74cd: $54
    ld b, e                                       ; $74ce: $43
    inc b                                         ; $74cf: $04
    dec de                                        ; $74d0: $1b
    inc bc                                        ; $74d1: $03
    ret nz                                        ; $74d2: $c0

    pop de                                        ; $74d3: $d1
    daa                                           ; $74d4: $27
    ld l, d                                       ; $74d5: $6a
    rst $00                                       ; $74d6: $c7
    sbc l                                         ; $74d7: $9d
    ld a, d                                       ; $74d8: $7a
    push hl                                       ; $74d9: $e5
    ld a, $ad                                     ; $74da: $3e $ad
    and $a5                                       ; $74dc: $e6 $a5
    xor [hl]                                      ; $74de: $ae

Call_050_74df:
    rst $08                                       ; $74df: $cf
    sbc [hl]                                      ; $74e0: $9e
    db $ec                                        ; $74e1: $ec
    ld [hl], b                                    ; $74e2: $70
    ld a, [hl]                                    ; $74e3: $7e
    rrca                                          ; $74e4: $0f
    and l                                         ; $74e5: $a5
    ld h, a                                       ; $74e6: $67
    db $d3                                        ; $74e7: $d3
    inc [hl]                                      ; $74e8: $34
    ld h, h                                       ; $74e9: $64
    ld e, h                                       ; $74ea: $5c

jr_050_74eb:
    di                                            ; $74eb: $f3
    ld [hl-], a                                   ; $74ec: $32
    jr nz, jr_050_755c                            ; $74ed: $20 $6d

    ld l, b                                       ; $74ef: $68
    inc [hl]                                      ; $74f0: $34
    ld b, h                                       ; $74f1: $44
    dec de                                        ; $74f2: $1b
    inc bc                                        ; $74f3: $03
    ldh [$9d], a                                  ; $74f4: $e0 $9d
    adc b                                         ; $74f6: $88
    xor l                                         ; $74f7: $ad
    adc [hl]                                      ; $74f8: $8e
    sub l                                         ; $74f9: $95
    ld a, $90                                     ; $74fa: $3e $90
    add [hl]                                      ; $74fc: $86
    jp nc, $feeb                                  ; $74fd: $d2 $eb $fe

    adc h                                         ; $7500: $8c
    adc h                                         ; $7501: $8c
    dec sp                                        ; $7502: $3b
    push af                                       ; $7503: $f5
    add b                                         ; $7504: $80
    ld [hl-], a                                   ; $7505: $32
    add $a3                                       ; $7506: $c6 $a3
    cpl                                           ; $7508: $2f
    dec c                                         ; $7509: $0d
    pop af                                        ; $750a: $f1
    add sp, $12                                   ; $750b: $e8 $12
    dec de                                        ; $750d: $1b
    ld c, e                                       ; $750e: $4b
    ld b, a                                       ; $750f: $47
    sub $8f                                       ; $7510: $d6 $8f
    ld h, [hl]                                    ; $7512: $66
    add $cf                                       ; $7513: $c6 $cf
    pop de                                        ; $7515: $d1
    db $10                                        ; $7516: $10
    ld bc, $031b                                  ; $7517: $01 $1b $03
    ld c, h                                       ; $751a: $4c
    jr c, jr_050_74eb                             ; $751b: $38 $ce

    ld e, l                                       ; $751d: $5d
    sub c                                         ; $751e: $91
    ld [$e958], a                                 ; $751f: $ea $58 $e9
    ld c, e                                       ; $7522: $4b
    ld [hl], b                                    ; $7523: $70
    sbc h                                         ; $7524: $9c
    ld h, $e2                                     ; $7525: $26 $e2
    ld a, l                                       ; $7527: $7d
    ld b, l                                       ; $7528: $45
    push hl                                       ; $7529: $e5
    ld [hl], h                                    ; $752a: $74
    ld h, h                                       ; $752b: $64
    db $fd                                        ; $752c: $fd
    ld l, b                                       ; $752d: $68
    ld h, [hl]                                    ; $752e: $66
    db $fc                                        ; $752f: $fc
    inc e                                         ; $7530: $1c
    ld [bc], a                                    ; $7531: $02
    ld de, $031b                                  ; $7532: $11 $1b $03
    ld h, b                                       ; $7535: $60
    and a                                         ; $7536: $a7
    and $ca                                       ; $7537: $e6 $ca
    cp l                                          ; $7539: $bd
    ld a, [hl-]                                   ; $753a: $3a
    and $f7                                       ; $753b: $e6 $f7
    rst $38                                       ; $753d: $ff
    dec a                                         ; $753e: $3d
    adc a                                         ; $753f: $8f
    or c                                          ; $7540: $b1
    call $35ff                                    ; $7541: $cd $ff $35
    xor [hl]                                      ; $7544: $ae
    adc e                                         ; $7545: $8b
    adc $5e                                       ; $7546: $ce $5e
    ld e, c                                       ; $7548: $59
    xor b                                         ; $7549: $a8
    sub b                                         ; $754a: $90
    sbc c                                         ; $754b: $99
    db $ec                                        ; $754c: $ec
    rst $08                                       ; $754d: $cf
    ld b, e                                       ; $754e: $43
    inc b                                         ; $754f: $04
    dec de                                        ; $7550: $1b
    inc bc                                        ; $7551: $03
    ldh [$9d], a                                  ; $7552: $e0 $9d
    adc b                                         ; $7554: $88
    dec l                                         ; $7555: $2d
    dec de                                        ; $7556: $1b
    db $e3                                        ; $7557: $e3
    ld c, [hl]                                    ; $7558: $4e
    dec e                                         ; $7559: $1d

Jump_050_755a:
    ld [hl], d                                    ; $755a: $72
    ld b, l                                       ; $755b: $45

jr_050_755c:
    add l                                         ; $755c: $85
    inc c                                         ; $755d: $0c

Call_050_755e:
    ld b, e                                       ; $755e: $43
    ld [hl], b                                    ; $755f: $70
    and [hl]                                      ; $7560: $a6
    ld l, c                                       ; $7561: $69
    ld [hl], h                                    ; $7562: $74
    reti                                          ; $7563: $d9


    ret c                                         ; $7564: $d8

    jp $d8c1                                      ; $7565: $c3 $c1 $d8


    inc [hl]                                      ; $7568: $34
    ld b, h                                       ; $7569: $44
    dec de                                        ; $756a: $1b
    inc bc                                        ; $756b: $03
    ret nz                                        ; $756c: $c0

    pop de                                        ; $756d: $d1
    daa                                           ; $756e: $27
    ld l, d                                       ; $756f: $6a
    rst $00                                       ; $7570: $c7
    inc a                                         ; $7571: $3c
    call c, Call_050_65e3                         ; $7572: $dc $e3 $65
    ld a, e                                       ; $7575: $7b
    or d                                          ; $7576: $b2
    push de                                       ; $7577: $d5
    ld bc, $7e77                                  ; $7578: $01 $77 $7e
    or d                                          ; $757b: $b2
    ld h, l                                       ; $757c: $65
    ld h, e                                       ; $757d: $63
    call z, Call_000_3dc3                         ; $757e: $cc $c3 $3d
    ld h, h                                       ; $7581: $64
    rrca                                          ; $7582: $0f
    ld hl, $66ea                                  ; $7583: $21 $ea $66
    rra                                           ; $7586: $1f
    rst $10                                       ; $7587: $d7
    cp h                                          ; $7588: $bc
    inc c                                         ; $7589: $0c
    cp e                                          ; $758a: $bb
    sbc $31                                       ; $758b: $de $31
    ret nz                                        ; $758d: $c0

    push de                                       ; $758e: $d5
    ld [c], a                                     ; $758f: $e2
    ld b, [hl]                                    ; $7590: $46
    jr nz, jr_050_7595                            ; $7591: $20 $02

    dec de                                        ; $7593: $1b
    add e                                         ; $7594: $83

jr_050_7595:
    di                                            ; $7595: $f3
    sub b                                         ; $7596: $90
    ld [hl], c                                    ; $7597: $71
    and a                                         ; $7598: $a7
    adc $5e                                       ; $7599: $ce $5e
    jp $b3a3                                      ; $759b: $c3 $a3 $b3


    sub c                                         ; $759e: $91
    sub b                                         ; $759f: $90
    ld h, l                                       ; $75a0: $65
    ld b, e                                       ; $75a1: $43
    rst $00                                       ; $75a2: $c7
    db $fd                                        ; $75a3: $fd
    sub e                                         ; $75a4: $93
    jp c, $8f49                                   ; $75a5: $da $49 $8f

    ld e, $20                                     ; $75a8: $1e $20
    rst $38                                       ; $75aa: $ff
    dec h                                         ; $75ab: $25
    ld e, $32                                     ; $75ac: $1e $32
    sbc h                                         ; $75ae: $9c
    ld e, a                                       ; $75af: $5f

jr_050_75b0:
    ret z                                         ; $75b0: $c8

    adc b                                         ; $75b1: $88
    ld e, [hl]                                    ; $75b2: $5e
    reti                                          ; $75b3: $d9


    ld hl, $1b02                                  ; $75b4: $21 $02 $1b
    inc bc                                        ; $75b7: $03
    sub b                                         ; $75b8: $90
    ld d, a                                       ; $75b9: $57
    ld [hl+], a                                   ; $75ba: $22
    rst $18                                       ; $75bb: $df
    ld c, h                                       ; $75bc: $4c
    and $6d                                       ; $75bd: $e6 $6d
    cp $27                                        ; $75bf: $fe $27
    push de                                       ; $75c1: $d5
    ld a, a                                       ; $75c2: $7f
    reti                                          ; $75c3: $d9


    ret nc                                        ; $75c4: $d0

    dec h                                         ; $75c5: $25
    jr c, @-$10                                   ; $75c6: $38 $ee

    ld b, a                                       ; $75c8: $47
    adc d                                         ; $75c9: $8a
    ld a, b                                       ; $75ca: $78
    ld c, h                                       ; $75cb: $4c
    ld e, b                                       ; $75cc: $58
    xor $25                                       ; $75cd: $ee $25
    dec hl                                        ; $75cf: $2b
    ld a, l                                       ; $75d0: $7d
    ld a, b                                       ; $75d1: $78
    ld a, [c]                                     ; $75d2: $f2
    push af                                       ; $75d3: $f5
    cp [hl]                                       ; $75d4: $be
    add hl, sp                                    ; $75d5: $39
    cp d                                          ; $75d6: $ba
    ld l, h                                       ; $75d7: $6c
    inc c                                         ; $75d8: $0c
    add sp, -$49                                  ; $75d9: $e8 $b7
    ld l, c                                       ; $75db: $69
    di                                            ; $75dc: $f3
    ld a, a                                       ; $75dd: $7f
    ld a, $94                                     ; $75de: $3e $94
    add d                                         ; $75e0: $82
    ld [$031b], sp                                ; $75e1: $08 $1b $03
    ldh [$9d], a                                  ; $75e4: $e0 $9d
    adc b                                         ; $75e6: $88
    xor l                                         ; $75e7: $ad
    adc [hl]                                      ; $75e8: $8e
    sub l                                         ; $75e9: $95
    ld a, $60                                     ; $75ea: $3e $60
    and a                                         ; $75ec: $a7
    ld c, $b9                                     ; $75ed: $0e $b9
    and d                                         ; $75ef: $a2
    ld b, d                                       ; $75f0: $42
    add $9d                                       ; $75f1: $c6 $9d
    ld a, d                                       ; $75f3: $7a
    ld h, b                                       ; $75f4: $60
    db $db                                        ; $75f5: $db
    db $fc                                        ; $75f6: $fc
    xor e                                         ; $75f7: $ab
    ld l, d                                       ; $75f8: $6a
    rrca                                          ; $75f9: $0f
    rlca                                          ; $75fa: $07
    ld h, e                                       ; $75fb: $63
    db $d3                                        ; $75fc: $d3
    db $10                                        ; $75fd: $10
    ld bc, $831b                                  ; $75fe: $01 $1b $83
    daa                                           ; $7601: $27
    add a                                         ; $7602: $87
    jp z, $6ad3                                   ; $7603: $ca $d3 $6a

    jp c, Jump_000_2f75                           ; $7606: $da $75 $2f

    rra                                           ; $7609: $1f
    adc $8f                                       ; $760a: $ce $8f
    ld a, [c]                                     ; $760c: $f2
    and d                                         ; $760d: $a2
    ld l, d                                       ; $760e: $6a
    add $3b                                       ; $760f: $c6 $3b
    db $f4                                        ; $7611: $f4
    ld a, a                                       ; $7612: $7f
    ld d, l                                       ; $7613: $55
    adc l                                         ; $7614: $8d
    dec sp                                        ; $7615: $3b
    or l                                          ; $7616: $b5
    halt                                          ; $7617: $76
    jr nc, jr_050_75b0                            ; $7618: $30 $96

    dec hl                                        ; $761a: $2b
    xor d                                         ; $761b: $aa
    ld a, d                                       ; $761c: $7a
    ld h, $a5                                     ; $761d: $26 $a5
    adc l                                         ; $761f: $8d
    dec sp                                        ; $7620: $3b
    ld [hl], l                                    ; $7621: $75
    cp d                                          ; $7622: $ba
    ld b, h                                       ; $7623: $44
    ld [c], a                                     ; $7624: $e2
    rst $20                                       ; $7625: $e7
    ld l, b                                       ; $7626: $68
    adc b                                         ; $7627: $88
    nop                                           ; $7628: $00
    dec de                                        ; $7629: $1b
    inc bc                                        ; $762a: $03
    sub b                                         ; $762b: $90
    adc c                                         ; $762c: $89
    xor b                                         ; $762d: $a8
    ld bc, $d76a                                  ; $762e: $01 $6a $d7
    sub d                                         ; $7631: $92
    adc $d3                                       ; $7632: $ce $d3
    ld [$99eb], a                                 ; $7634: $ea $eb $99
    sub l                                         ; $7637: $95
    dec a                                         ; $7638: $3d
    ld a, [de]                                    ; $7639: $1a
    xor $89                                       ; $763a: $ee $89
    ld e, [hl]                                    ; $763c: $5e
    db $ed                                        ; $763d: $ed
    call nz, Call_050_7648                        ; $763e: $c4 $48 $76
    add hl, sp                                    ; $7641: $39
    ld a, d                                       ; $7642: $7a
    ld h, $a5                                     ; $7643: $26 $a5
    dec c                                         ; $7645: $0d
    ld [hl], h                                    ; $7646: $74
    db $f4                                        ; $7647: $f4

Call_050_7648:
    cp a                                          ; $7648: $bf
    sub d                                         ; $7649: $92
    rst $00                                       ; $764a: $c7
    db $dd                                        ; $764b: $dd
    db $10                                        ; $764c: $10
    dec de                                        ; $764d: $1b
    db $10                                        ; $764e: $10
    ld bc, $831b                                  ; $764f: $01 $1b $83
    daa                                           ; $7652: $27
    db $e4                                        ; $7653: $e4
    and [hl]                                      ; $7654: $a6
    ld c, b                                       ; $7655: $48
    reti                                          ; $7656: $d9


    ret z                                         ; $7657: $c8

    di                                            ; $7658: $f3
    ei                                            ; $7659: $fb
    rst $38                                       ; $765a: $ff
    nop                                           ; $765b: $00
    or c                                          ; $765c: $b1
    ld hl, $2e95                                  ; $765d: $21 $95 $2e
    add hl, de                                    ; $7660: $19
    ld [hl], a                                    ; $7661: $77
    ld [$fb95], a                                 ; $7662: $ea $95 $fb
    or h                                          ; $7665: $b4
    sbc d                                         ; $7666: $9a
    ld d, [hl]                                    ; $7667: $56
    sbc h                                         ; $7668: $9c
    rst $28                                       ; $7669: $ef
    add hl, bc                                    ; $766a: $09
    ld [hl], a                                    ; $766b: $77
    add l                                         ; $766c: $85
    ld [hl], c                                    ; $766d: $71
    db $f4                                        ; $766e: $f4
    xor $f2                                       ; $766f: $ee $f2
    sub l                                         ; $7671: $95
    ld a, c                                       ; $7672: $79
    rra                                           ; $7673: $1f
    ld d, [hl]                                    ; $7674: $56
    pop af                                        ; $7675: $f1
    ld l, l                                       ; $7676: $6d
    ld hl, $1b02                                  ; $7677: $21 $02 $1b
    inc bc                                        ; $767a: $03
    ret nz                                        ; $767b: $c0

    pop de                                        ; $767c: $d1
    daa                                           ; $767d: $27
    ld l, d                                       ; $767e: $6a
    rst $00                                       ; $767f: $c7
    sbc l                                         ; $7680: $9d
    ld a, d                                       ; $7681: $7a
    push hl                                       ; $7682: $e5
    ld a, $ad                                     ; $7683: $3e $ad
    and $a5                                       ; $7685: $e6 $a5
    xor [hl]                                      ; $7687: $ae
    xor a                                         ; $7688: $af
    inc h                                         ; $7689: $24
    ei                                            ; $768a: $fb
    ret                                           ; $768b: $c9


    rst $00                                       ; $768c: $c7
    sbc l                                         ; $768d: $9d
    ld a, d                                       ; $768e: $7a
    ld d, a                                       ; $768f: $57
    ld d, h                                       ; $7690: $54
    adc b                                         ; $7691: $88
    ld e, a                                       ; $7692: $5f
    ld d, c                                       ; $7693: $51
    inc sp                                        ; $7694: $33
    add hl, hl                                    ; $7695: $29
    ld l, l                                       ; $7696: $6d
    call c, $b5a9                                 ; $7697: $dc $a9 $b5
    add e                                         ; $769a: $83
    ld [hl], c                                    ; $769b: $71
    ld sp, hl                                     ; $769c: $f9
    ld c, h                                       ; $769d: $4c
    ld h, $ac                                     ; $769e: $26 $ac
    ld l, a                                       ; $76a0: $6f
    xor a                                         ; $76a1: $af
    xor d                                         ; $76a2: $aa
    pop af                                        ; $76a3: $f1
    sbc c                                         ; $76a4: $99
    ldh a, [$b6]                                  ; $76a5: $f0 $b6
    ld a, [hl-]                                   ; $76a7: $3a
    jr nz, jr_050_76ac                            ; $76a8: $20 $02

    dec de                                        ; $76aa: $1b
    add e                                         ; $76ab: $83

jr_050_76ac:
    daa                                           ; $76ac: $27
    and h                                         ; $76ad: $a4
    ld b, e                                       ; $76ae: $43
    rra                                           ; $76af: $1f
    cp b                                          ; $76b0: $b8
    or d                                          ; $76b1: $b2
    or $65                                        ; $76b2: $f6 $65
    ld [hl], b                                    ; $76b4: $70
    ld l, l                                       ; $76b5: $6d
    ld [hl], d                                    ; $76b6: $72
    sbc l                                         ; $76b7: $9d
    dec l                                         ; $76b8: $2d
    ld e, l                                       ; $76b9: $5d
    dec l                                         ; $76ba: $2d
    jp hl                                         ; $76bb: $e9


    ld d, e                                       ; $76bc: $53
    adc d                                         ; $76bd: $8a
    ld b, h                                       ; $76be: $44
    cpl                                           ; $76bf: $2f
    dec de                                        ; $76c0: $1b
    ld a, [hl-]                                   ; $76c1: $3a
    ld c, c                                       ; $76c2: $49
    ld l, b                                       ; $76c3: $68
    db $f4                                        ; $76c4: $f4
    adc [hl]                                      ; $76c5: $8e
    ld e, $77                                     ; $76c6: $1e $77
    ld [$3334], a                                 ; $76c8: $ea $34 $33
    or c                                          ; $76cb: $b1
    ld d, d                                       ; $76cc: $52
    dec bc                                        ; $76cd: $0b
    adc $a3                                       ; $76ce: $ce $a3
    or e                                          ; $76d0: $b3
    and c                                         ; $76d1: $a1
    or e                                          ; $76d2: $b3
    ld sp, $8bae                                  ; $76d3: $31 $ae $8b
    sub d                                         ; $76d6: $92
    ld a, [$7abf]                                 ; $76d7: $fa $bf $7a
    and h                                         ; $76da: $a4
    rrca                                          ; $76db: $0f
    ld [hl+], a                                   ; $76dc: $22
    ld d, a                                       ; $76dd: $57
    ld d, h                                       ; $76de: $54
    dec [hl]                                      ; $76df: $35
    ld b, h                                       ; $76e0: $44
    dec de                                        ; $76e1: $1b
    add e                                         ; $76e2: $83
    and a                                         ; $76e3: $a7
    ld d, a                                       ; $76e4: $57
    and h                                         ; $76e5: $a4
    ld a, [hl-]                                   ; $76e6: $3a
    ld d, [hl]                                    ; $76e7: $56
    ld a, [$8a80]                                 ; $76e8: $fa $80 $8a
    ld a, [$3625]                                 ; $76eb: $fa $25 $36
    rrca                                          ; $76ee: $0f
    dec sp                                        ; $76ef: $3b
    adc [hl]                                      ; $76f0: $8e
    ld c, e                                       ; $76f1: $4b
    dec c                                         ; $76f2: $0d
    ld h, e                                       ; $76f3: $63
    sbc e                                         ; $76f4: $9b
    rst $38                                       ; $76f5: $ff
    ld c, c                                       ; $76f6: $49
    push af                                       ; $76f7: $f5
    rst $08                                       ; $76f8: $cf
    ld [hl], $89                                  ; $76f9: $36 $89
    rst $38                                       ; $76fb: $ff
    and e                                         ; $76fc: $a3
    rst $00                                       ; $76fd: $c7
    rst $30                                       ; $76fe: $f7
    ld e, [hl]                                    ; $76ff: $5e
    ld a, e                                       ; $7700: $7b
    di                                            ; $7701: $f3
    adc l                                         ; $7702: $8d
    ld d, a                                       ; $7703: $57
    ld hl, $1b02                                  ; $7704: $21 $02 $1b
    inc bc                                        ; $7707: $03
    ld c, h                                       ; $7708: $4c
    ld l, [hl]                                    ; $7709: $6e
    xor b                                         ; $770a: $a8
    ld l, c                                       ; $770b: $69
    dec de                                        ; $770c: $1b
    ld [c], a                                     ; $770d: $e2
    rst $38                                       ; $770e: $ff
    xor d                                         ; $770f: $aa
    ld a, c                                       ; $7710: $79
    sbc e                                         ; $7711: $9b
    rst $38                                       ; $7712: $ff
    ld c, c                                       ; $7713: $49
    push af                                       ; $7714: $f5
    rst $08                                       ; $7715: $cf
    push de                                       ; $7716: $d5
    ld a, [hl]                                    ; $7717: $7e
    or e                                          ; $7718: $b3
    cpl                                           ; $7719: $2f
    dec de                                        ; $771a: $1b
    ld a, [hl-]                                   ; $771b: $3a

Jump_050_771c:
    and e                                         ; $771c: $a3
    rra                                           ; $771d: $1f
    ld [c], a                                     ; $771e: $e2
    push hl                                       ; $771f: $e5
    db $e3                                        ; $7720: $e3
    ld c, [hl]                                    ; $7721: $4e
    sbc l                                         ; $7722: $9d
    push af                                       ; $7723: $f5
    ld [de], a                                    ; $7724: $12
    ld e, c                                       ; $7725: $59
    ld [hl+], a                                   ; $7726: $22
    ld [hl], $7a                                  ; $7727: $36 $7a
    pop hl                                        ; $7729: $e1
    cp [hl]                                       ; $772a: $be
    db $ec                                        ; $772b: $ec
    add c                                         ; $772c: $81
    db $e3                                        ; $772d: $e3
    sub d                                         ; $772e: $92
    ld d, b                                       ; $772f: $50
    ld a, [de]                                    ; $7730: $1a
    dec c                                         ; $7731: $0d
    ld de, $831b                                  ; $7732: $11 $1b $83
    daa                                           ; $7735: $27
    pop de                                        ; $7736: $d1
    scf                                           ; $7737: $37
    ld [$2f73], a                                 ; $7738: $ea $73 $2f
    db $d3                                        ; $773b: $d3
    ld d, e                                       ; $773c: $53
    db $db                                        ; $773d: $db
    ld [$0880], a                                 ; $773e: $ea $80 $08
    and b                                         ; $7741: $a0
    ld l, a                                       ; $7742: $6f
    adc $9f                                       ; $7743: $ce $9f
    sub l                                         ; $7745: $95
    ld [hl+], a                                   ; $7746: $22
    ld h, l                                       ; $7747: $65
    inc hl                                        ; $7748: $23
    adc a                                         ; $7749: $8f
    add [hl]                                      ; $774a: $86
    ld e, l                                       ; $774b: $5d
    cp c                                          ; $774c: $b9
    adc a                                         ; $774d: $8f
    db $e3                                        ; $774e: $e3
    add a                                         ; $774f: $87
    or c                                          ; $7750: $b1
    call $d6ff                                    ; $7751: $cd $ff $d6
    ret nc                                        ; $7754: $d0

    ld c, h                                       ; $7755: $4c
    xor a                                         ; $7756: $af
    call c, $d1ec                                 ; $7757: $dc $ec $d1
    scf                                           ; $775a: $37
    ld a, h                                       ; $775b: $7c
    push hl                                       ; $775c: $e5
    ld a, $c5                                     ; $775d: $3e $c5
    adc a                                         ; $775f: $8f
    add [hl]                                      ; $7760: $86
    dec e                                         ; $7761: $1d
    adc $af                                       ; $7762: $ce $af
    call c, $ff57                                 ; $7764: $dc $57 $ff
    rst $10                                       ; $7767: $d7
    ldh a, [$cb]                                  ; $7768: $f0 $cb
    ld hl, sp-$42                                 ; $776a: $f8 $be
    xor h                                         ; $776c: $ac
    call nz, $e8d0                                ; $776d: $c4 $d0 $e8
    ld h, l                                       ; $7770: $65
    sub d                                         ; $7771: $92
    db $fc                                        ; $7772: $fc
    rra                                           ; $7773: $1f
    dec hl                                        ; $7774: $2b
    db $fd                                        ; $7775: $fd
    ld e, a                                       ; $7776: $5f
    cp l                                          ; $7777: $bd
    ld a, [c]                                     ; $7778: $f2
    ld [hl], b                                    ; $7779: $70
    ld a, [hl]                                    ; $777a: $7e
    pop hl                                        ; $777b: $e1
    ld a, $2d                                     ; $777c: $3e $2d
    and c                                         ; $777e: $a1
    dec h                                         ; $777f: $25
    cp [hl]                                       ; $7780: $be
    ld a, h                                       ; $7781: $7c
    cp b                                          ; $7782: $b8
    ld b, e                                       ; $7783: $43
    inc b                                         ; $7784: $04
    dec de                                        ; $7785: $1b

Jump_050_7786:
    inc bc                                        ; $7786: $03
    ret nz                                        ; $7787: $c0

    pop de                                        ; $7788: $d1
    daa                                           ; $7789: $27
    ld l, d                                       ; $778a: $6a
    rst $00                                       ; $778b: $c7
    sbc l                                         ; $778c: $9d
    ld a, d                                       ; $778d: $7a
    push hl                                       ; $778e: $e5
    cp [hl]                                       ; $778f: $be
    ld a, [$afb6]                                 ; $7790: $fa $b6 $af
    sbc d                                         ; $7793: $9a
    ld d, [hl]                                    ; $7794: $56
    ei                                            ; $7795: $fb
    rlca                                          ; $7796: $07
    sub l                                         ; $7797: $95
    ld a, [c]                                     ; $7798: $f2
    push hl                                       ; $7799: $e5
    db $eb                                        ; $779a: $eb
    ld a, $2d                                     ; $779b: $3e $2d
    ret                                           ; $779d: $c9


    db $e3                                        ; $779e: $e3
    ld c, [hl]                                    ; $779f: $4e
    db $dd                                        ; $77a0: $dd
    add a                                         ; $77a1: $87
    inc l                                         ; $77a2: $2c

Jump_050_77a3:
    ld h, h                                       ; $77a3: $64
    call c, $bda9                                 ; $77a4: $dc $a9 $bd
    call Call_050_72ff                            ; $77a7: $cd $ff $72
    ld b, l                                       ; $77aa: $45
    ld c, l                                       ; $77ab: $4d
    db $dd                                        ; $77ac: $dd
    inc d                                         ; $77ad: $14
    add hl, de                                    ; $77ae: $19
    rla                                           ; $77af: $17
    ld a, a                                       ; $77b0: $7f
    ld h, $a5                                     ; $77b1: $26 $a5
    call $848b                                    ; $77b3: $cd $8b $84
    xor a                                         ; $77b6: $af
    dec hl                                        ; $77b7: $2b
    sub a                                         ; $77b8: $97
    adc l                                         ; $77b9: $8d
    ld e, l                                       ; $77ba: $5d
    add c                                         ; $77bb: $81
    ld [$031b], sp                                ; $77bc: $08 $1b $03
    ldh [$f7], a                                  ; $77bf: $e0 $f7
    rst $38                                       ; $77c1: $ff
    or d                                          ; $77c2: $b2
    or c                                          ; $77c3: $b1
    ld [hl], d                                    ; $77c4: $72
    ld e, a                                       ; $77c5: $5f
    cp d                                          ; $77c6: $ba
    rrca                                          ; $77c7: $0f
    sub c                                         ; $77c8: $91
    jp z, $f9c3                                   ; $77c9: $ca $c3 $f9

    and l                                         ; $77cc: $a5
    ld sp, hl                                     ; $77cd: $f9
    cp a                                          ; $77ce: $bf
    call z, $af0f                                 ; $77cf: $cc $0f $af
    sbc h                                         ; $77d2: $9c
    ld b, a                                       ; $77d3: $47
    ld e, c                                       ; $77d4: $59
    add hl, hl                                    ; $77d5: $29
    ld [de], a                                    ; $77d6: $12
    cp [hl]                                       ; $77d7: $be
    ld [hl], d                                    ; $77d8: $72
    sbc a                                         ; $77d9: $9f
    ld h, [hl]                                    ; $77da: $66
    ld h, h                                       ; $77db: $64
    sbc c                                         ; $77dc: $99
    ld d, a                                       ; $77dd: $57
    di                                            ; $77de: $f3
    ei                                            ; $77df: $fb
    rst $38                                       ; $77e0: $ff
    jp z, $e97d                                   ; $77e1: $ca $7d $e9

    ld a, a                                       ; $77e4: $7f
    add a                                         ; $77e5: $87
    di                                            ; $77e6: $f3
    ld a, [hl]                                    ; $77e7: $7e
    adc b                                         ; $77e8: $88
    db $dd                                        ; $77e9: $dd
    sbc e                                         ; $77ea: $9b
    rst $28                                       ; $77eb: $ef
    ld c, h                                       ; $77ec: $4c
    pop af                                        ; $77ed: $f1
    and d                                         ; $77ee: $a2
    and d                                         ; $77ef: $a2
    ld hl, $1b02                                  ; $77f0: $21 $02 $1b
    inc bc                                        ; $77f3: $03
    inc c                                         ; $77f4: $0c
    add a                                         ; $77f5: $87
    or l                                          ; $77f6: $b5
    ld h, l                                       ; $77f7: $65
    ld h, e                                       ; $77f8: $63
    sub h                                         ; $77f9: $94
    rla                                           ; $77fa: $17
    ld d, l                                       ; $77fb: $55
    and e                                         ; $77fc: $a3
    adc c                                         ; $77fd: $89
    ld d, d                                       ; $77fe: $52
    cp a                                          ; $77ff: $bf
    ld a, [hl-]                                   ; $7800: $3a
    ld h, $47                                     ; $7801: $26 $47
    cpl                                           ; $7803: $2f
    ld h, h                                       ; $7804: $64
    or [hl]                                       ; $7805: $b6
    adc e                                         ; $7806: $8b
    call nz, $1eb2                                ; $7807: $c4 $b2 $1e
    cp b                                          ; $780a: $b8
    rst $00                                       ; $780b: $c7
    inc h                                         ; $780c: $24
    ld a, d                                       ; $780d: $7a
    call nc, $42f8                                ; $780e: $d4 $f8 $42
    sub [hl]                                      ; $7811: $96
    cp l                                          ; $7812: $bd
    ld c, e                                       ; $7813: $4b
    db $ec                                        ; $7814: $ec
    cp b                                          ; $7815: $b8
    db $e4                                        ; $7816: $e4
    rst $38                                       ; $7817: $ff
    sub l                                         ; $7818: $95
    cp [hl]                                       ; $7819: $be
    ld l, h                                       ; $781a: $6c
    ld a, [hl]                                    ; $781b: $7e
    cp d                                          ; $781c: $ba
    ld l, h                                       ; $781d: $6c
    ld [hl], l                                    ; $781e: $75
    ld b, b                                       ; $781f: $40
    inc b                                         ; $7820: $04
    dec de                                        ; $7821: $1b
    inc bc                                        ; $7822: $03
    ld d, b                                       ; $7823: $50
    ld h, c                                       ; $7824: $61
    ld l, l                                       ; $7825: $6d
    inc l                                         ; $7826: $2c
    ld h, h                                       ; $7827: $64
    and h                                         ; $7828: $a4
    jr z, jr_050_7889                             ; $7829: $28 $5e

    jp nz, Jump_050_771c                          ; $782b: $c2 $1c $77

jr_050_782e:
    ld [$fb95], a                                 ; $782e: $ea $95 $fb
    or h                                          ; $7831: $b4
    ld b, e                                       ; $7832: $43
    xor a                                         ; $7833: $af
    dec a                                         ; $7834: $3d
    add hl, bc                                    ; $7835: $09
    jp nc, $91e1                                  ; $7836: $d2 $e1 $91

    di                                            ; $7839: $f3
    cpl                                           ; $783a: $2f
    dec d                                         ; $783b: $15
    ld [hl-], a                                   ; $783c: $32
    sub e                                         ; $783d: $93
    jp nc, $f5e6                                  ; $783e: $d2 $e6 $f5

    ld l, e                                       ; $7841: $6b
    add [hl]                                      ; $7842: $86
    adc [hl]                                      ; $7843: $8e
    dec sp                                        ; $7844: $3b
    push af                                       ; $7845: $f5
    ld l, b                                       ; $7846: $68
    and d                                         ; $7847: $a2
    call nc, $96af                                ; $7848: $d4 $af $96
    ld e, d                                       ; $784b: $5a
    cp c                                          ; $784c: $b9
    rst $08                                       ; $784d: $cf

Jump_050_784e:
    db $db                                        ; $784e: $db
    db $fc                                        ; $784f: $fc
    ld c, a                                       ; $7850: $4f
    xor d                                         ; $7851: $aa
    ld a, a                                       ; $7852: $7f
    push af                                       ; $7853: $f5
    add d                                         ; $7854: $82
    pop af                                        ; $7855: $f1
    call $5d1e                                    ; $7856: $cd $1e $5d
    dec c                                         ; $7859: $0d
    ld de, $031b                                  ; $785a: $11 $1b $03
    ld c, h                                       ; $785d: $4c
    jr c, jr_050_782e                             ; $785e: $38 $ce

    ld e, l                                       ; $7860: $5d
    sub c                                         ; $7861: $91
    ld [$e958], a                                 ; $7862: $ea $58 $e9
    bit 4, d                                      ; $7865: $cb $62
    adc b                                         ; $7867: $88
    ret                                           ; $7868: $c9


    call nz, $e1e0                                ; $7869: $c4 $e0 $e1
    db $10                                        ; $786c: $10
    ld bc, $031b                                  ; $786d: $01 $1b $03
    and b                                         ; $7870: $a0
    and d                                         ; $7871: $a2
    sbc l                                         ; $7872: $9d
    ld e, d                                       ; $7873: $5a
    xor [hl]                                      ; $7874: $ae
    xor b                                         ; $7875: $a8
    inc e                                         ; $7876: $1c
    adc h                                         ; $7877: $8c
    pop af                                        ; $7878: $f1
    ld l, b                                       ; $7879: $68
    add a                                         ; $787a: $87
    ld a, e                                       ; $787b: $7b
    ld h, b                                       ; $787c: $60
    ld e, $1f                                     ; $787d: $1e $1f
    rst $30                                       ; $787f: $f7
    sbc b                                         ; $7880: $98
    rst $18                                       ; $7881: $df
    rst $38                                       ; $7882: $ff
    ld d, a                                       ; $7883: $57
    xor $2b                                       ; $7884: $ee $2b
    ld sp, hl                                     ; $7886: $f9
    add a                                         ; $7887: $87
    ld d, d                                       ; $7888: $52

jr_050_7889:
    or l                                          ; $7889: $b5
    db $10                                        ; $788a: $10
    db $ed                                        ; $788b: $ed
    call nc, Call_050_4572                        ; $788c: $d4 $72 $45
    push hl                                       ; $788f: $e5
    adc [hl]                                      ; $7890: $8e
    inc e                                         ; $7891: $1c
    xor l                                         ; $7892: $ad
    sub a                                         ; $7893: $97
    rst $28                                       ; $7894: $ef
    and h                                         ; $7895: $a4
    ld b, a                                       ; $7896: $47
    ld c, a                                       ; $7897: $4f
    adc e                                         ; $7898: $8b
    ld e, a                                       ; $7899: $5f
    inc bc                                        ; $789a: $03
    ld a, [hl+]                                   ; $789b: $2a
    ld [$5897], a                                 ; $789c: $ea $97 $58
    adc b                                         ; $789f: $88
    nop                                           ; $78a0: $00
    dec de                                        ; $78a1: $1b
    add e                                         ; $78a2: $83
    di                                            ; $78a3: $f3
    sub b                                         ; $78a4: $90
    add l                                         ; $78a5: $85
    ret c                                         ; $78a6: $d8

    sbc d                                         ; $78a7: $9a
    or a                                          ; $78a8: $b7
    ld sp, hl                                     ; $78a9: $f9
    sbc a                                         ; $78aa: $9f
    ld d, h                                       ; $78ab: $54
    rst $38                                       ; $78ac: $ff
    ld h, l                                       ; $78ad: $65
    ld b, e                                       ; $78ae: $43
    ld [hl], a                                    ; $78af: $77
    jp nc, Jump_050_7fa3                          ; $78b0: $d2 $a3 $7f

    add sp, -$42                                  ; $78b3: $e8 $be
    sub b                                         ; $78b5: $90
    add c                                         ; $78b6: $81
    ld a, [bc]                                    ; $78b7: $0a
    rst $10                                       ; $78b8: $d7
    ld l, $67                                     ; $78b9: $2e $67
    cp [hl]                                       ; $78bb: $be
    ld a, l                                       ; $78bc: $7d
    cp c                                          ; $78bd: $b9
    call c, Call_050_452b                         ; $78be: $dc $2b $45
    jr nz, jr_050_78c5                            ; $78c1: $20 $02

    dec de                                        ; $78c3: $1b
    add e                                         ; $78c4: $83

jr_050_78c5:
    rlca                                          ; $78c5: $07
    sub $ff                                       ; $78c6: $d6 $ff
    ld h, l                                       ; $78c8: $65
    sub a                                         ; $78c9: $97
    jp nc, Jump_000_1b82                          ; $78ca: $d2 $82 $1b

    ld [hl], a                                    ; $78cd: $77
    ld [$2e81], a                                 ; $78ce: $ea $81 $2e
    ld [hl], l                                    ; $78d1: $75
    inc sp                                        ; $78d2: $33
    xor c                                         ; $78d3: $a9
    db $fd                                        ; $78d4: $fd
    ld d, d                                       ; $78d5: $52
    inc sp                                        ; $78d6: $33
    add hl, hl                                    ; $78d7: $29
    ld l, l                                       ; $78d8: $6d
    and [hl]                                      ; $78d9: $a6
    xor l                                         ; $78da: $ad
    ld e, h                                       ; $78db: $5c
    ld d, c                                       ; $78dc: $51
    add hl, de                                    ; $78dd: $19
    cpl                                           ; $78de: $2f
    rst $28                                       ; $78df: $ef
    db $e4                                        ; $78e0: $e4
    rst $38                                       ; $78e1: $ff
    db $10                                        ; $78e2: $10
    adc b                                         ; $78e3: $88
    nop                                           ; $78e4: $00
    dec de                                        ; $78e5: $1b
    add e                                         ; $78e6: $83
    ld [hl], e                                    ; $78e7: $73
    and e                                         ; $78e8: $a3
    ld h, $47                                     ; $78e9: $26 $47
    ld c, a                                       ; $78eb: $4f
    dec hl                                        ; $78ec: $2b
    ld e, c                                       ; $78ed: $59
    rra                                           ; $78ee: $1f
    sub $96                                       ; $78ef: $d6 $96
    adc l                                         ; $78f1: $8d
    add l                                         ; $78f2: $85
    ei                                            ; $78f3: $fb
    ld l, b                                       ; $78f4: $68
    and d                                         ; $78f5: $a2
    call nc, Call_050_4eaf                        ; $78f6: $d4 $af $4e
    ld d, a                                       ; $78f9: $57
    rl d                                          ; $78fa: $cb $12
    or c                                          ; $78fc: $b1
    dec h                                         ; $78fd: $25
    dec bc                                        ; $78fe: $0b
    add hl, de                                    ; $78ff: $19
    ld [hl], a                                    ; $7900: $77
    ld [$5166], a                                 ; $7901: $ea $66 $51
    dec sp                                        ; $7904: $3b

jr_050_7905:
    ld e, d                                       ; $7905: $5a
    ld [c], a                                     ; $7906: $e2
    sub a                                         ; $7907: $97
    sbc b                                         ; $7908: $98
    ld l, $88                                     ; $7909: $2e $88
    nop                                           ; $790b: $00
    dec de                                        ; $790c: $1b
    inc bc                                        ; $790d: $03
    ld [hl], b                                    ; $790e: $70
    rst $10                                       ; $790f: $d7
    ld [$e8f3], sp                                ; $7910: $08 $f3 $e8
    db $dd                                        ; $7913: $dd
    sub c                                         ; $7914: $91
    and d                                         ; $7915: $a2
    ld a, b                                       ; $7916: $78
    ret z                                         ; $7917: $c8

    cp b                                          ; $7918: $b8
    ld d, e                                       ; $7919: $53
    rrca                                          ; $791a: $0f
    ret nc                                        ; $791b: $d0

    rst $20                                       ; $791c: $e7
    and d                                         ; $791d: $a2
    and l                                         ; $791e: $a5
    ld a, [c]                                     ; $791f: $f2
    ld a, [$bf70]                                 ; $7920: $fa $70 $bf
    ld c, d                                       ; $7923: $4a
    dec bc                                        ; $7924: $0b
    adc a                                         ; $7925: $8f
    add [hl]                                      ; $7926: $86
    ld [$831b], sp                                ; $7927: $08 $1b $83
    rlca                                          ; $792a: $07
    sub $ff                                       ; $792b: $d6 $ff
    ld h, l                                       ; $792d: $65
    rst $20                                       ; $792e: $e7
    ld l, l                                       ; $792f: $6d
    cp $27                                        ; $7930: $fe $27
    push de                                       ; $7932: $d5
    ld a, a                                       ; $7933: $7f
    reti                                          ; $7934: $d9


    ret nc                                        ; $7935: $d0

    ld [hl], c                                    ; $7936: $71
    add a                                         ; $7937: $87
    xor b                                         ; $7938: $a8
    db $fc                                        ; $7939: $fc
    bit 0, [hl]                                   ; $793a: $cb $46
    ld e, [hl]                                    ; $793c: $5e
    jp hl                                         ; $793d: $e9


    and e                                         ; $793e: $a3
    adc c                                         ; $793f: $89
    ld d, d                                       ; $7940: $52
    cp a                                          ; $7941: $bf
    ld a, [hl-]                                   ; $7942: $3a
    add $9d                                       ; $7943: $c6 $9d
    ld a, d                                       ; $7945: $7a
    ld sp, hl                                     ; $7946: $f9
    ld c, d                                       ; $7947: $4a
    dec l                                         ; $7948: $2d
    sub e                                         ; $7949: $93
    cp [hl]                                       ; $794a: $be
    sbc h                                         ; $794b: $9c
    ld b, a                                       ; $794c: $47
    ld b, e                                       ; $794d: $43
    inc b                                         ; $794e: $04
    dec de                                        ; $794f: $1b
    inc bc                                        ; $7950: $03
    and b                                         ; $7951: $a0
    adc h                                         ; $7952: $8c
    pop af                                        ; $7953: $f1
    ld l, b                                       ; $7954: $68
    rra                                           ; $7955: $1f
    adc $8f                                       ; $7956: $ce $8f
    sub [hl]                                      ; $7958: $96
    cp d                                          ; $7959: $ba
    sbc c                                         ; $795a: $99
    call nc, Call_050_5e38                        ; $795b: $d4 $38 $5e
    db $fd                                        ; $795e: $fd
    ld l, d                                       ; $795f: $6a
    cp b                                          ; $7960: $b8
    di                                            ; $7961: $f3
    sub b                                         ; $7962: $90
    ld [hl], c                                    ; $7963: $71
    and a                                         ; $7964: $a7
    adc $1e                                       ; $7965: $ce $1e
    dec hl                                        ; $7967: $2b
    rst $30                                       ; $7968: $f7
    ld [hl], c                                    ; $7969: $71
    ld d, a                                       ; $796a: $57
    and h                                         ; $796b: $a4
    ld b, [hl]                                    ; $796c: $46
    ld b, e                                       ; $796d: $43
    xor [hl]                                      ; $796e: $ae
    xor b                                         ; $796f: $a8
    sub b                                         ; $7970: $90
    pop de                                        ; $7971: $d1
    or b                                          ; $7972: $b0
    inc bc                                        ; $7973: $03
    sub h                                         ; $7974: $94
    xor b                                         ; $7975: $a8
    and h                                         ; $7976: $a4
    ld e, c                                       ; $7977: $59
    sub d                                         ; $7978: $92
    sub a                                         ; $7979: $97
    adc l                                         ; $797a: $8d
    jr z, jr_050_7905                             ; $797b: $28 $88

    nop                                           ; $797d: $00
    dec de                                        ; $797e: $1b
    add e                                         ; $797f: $83
    rlca                                          ; $7980: $07
    sub $ff                                       ; $7981: $d6 $ff
    ld h, l                                       ; $7983: $65
    rst $00                                       ; $7984: $c7
    sbc l                                         ; $7985: $9d
    sbc d                                         ; $7986: $9a
    dec hl                                        ; $7987: $2b
    rst $30                                       ; $7988: $f7
    ld [$e958], a                                 ; $7989: $ea $58 $e9
    ld a, e                                       ; $798c: $7b
    ld e, $58                                     ; $798d: $1e $58
    adc c                                         ; $798f: $89
    ld d, a                                       ; $7990: $57
    or $9b                                        ; $7991: $f6 $9b
    ld c, c                                       ; $7993: $49
    ld c, l                                       ; $7994: $4d
    cp a                                          ; $7995: $bf
    ld [hl], $11                                  ; $7996: $36 $11
    dec de                                        ; $7998: $1b
    dec a                                         ; $7999: $3d
    sub e                                         ; $799a: $93
    jp nc, Jump_050_57a6                          ; $799b: $d2 $a6 $57

    adc a                                         ; $799e: $8f
    sub [hl]                                      ; $799f: $96
    ld c, h                                       ; $79a0: $4c
    cp e                                          ; $79a1: $bb
    xor $d5                                       ; $79a2: $ee $d5
    or e                                          ; $79a4: $b3
    ld b, c                                       ; $79a5: $41
    sbc a                                         ; $79a6: $9f
    add a                                         ; $79a7: $87
    ld [$031b], sp                                ; $79a8: $08 $1b $03
    ld [hl], b                                    ; $79ab: $70
    ld l, l                                       ; $79ac: $6d
    ld d, h                                       ; $79ad: $54
    rla                                           ; $79ae: $17
    db $fd                                        ; $79af: $fd
    ld h, c                                       ; $79b0: $61
    xor e                                         ; $79b1: $ab
    ld h, e                                       ; $79b2: $63
    call c, $87a9                                 ; $79b3: $dc $a9 $87
    ld de, $8462                                  ; $79b6: $11 $62 $84
    ld h, b                                       ; $79b9: $60
    ldh [$5e], a                                  ; $79ba: $e0 $5e
    ret nz                                        ; $79bc: $c0

    ret c                                         ; $79bd: $d8

    and $7f                                       ; $79be: $e6 $7f
    ld d, d                                       ; $79c0: $52
    db $fd                                        ; $79c1: $fd
    xor e                                         ; $79c2: $ab
    and l                                         ; $79c3: $a5
    ld a, [c]                                     ; $79c4: $f2
    jr nc, jr_050_79fd                            ; $79c5: $30 $36

    ld l, a                                       ; $79c7: $6f
    rst $38                                       ; $79c8: $ff
    add hl, hl                                    ; $79c9: $29
    rst $10                                       ; $79ca: $d7
    ret nz                                        ; $79cb: $c0

    inc e                                         ; $79cc: $1c
    xor [hl]                                      ; $79cd: $ae
    ld b, a                                       ; $79ce: $47
    sub e                                         ; $79cf: $93
    rla                                           ; $79d0: $17
    ld e, a                                       ; $79d1: $5f
    add $db                                       ; $79d2: $c6 $db
    xor b                                         ; $79d4: $a8
    ld l, $4a                                     ; $79d5: $2e $4a
    jp $fcf7                                      ; $79d7: $c3 $f7 $fc


    jp $d8c1                                      ; $79da: $c3 $c1 $d8


    cpl                                           ; $79dd: $2f
    and l                                         ; $79de: $a5
    ld hl, $43cf                                  ; $79df: $21 $cf $43
    inc b                                         ; $79e2: $04
    dec de                                        ; $79e3: $1b
    inc bc                                        ; $79e4: $03
    ret nz                                        ; $79e5: $c0

    pop de                                        ; $79e6: $d1
    daa                                           ; $79e7: $27
    ld l, d                                       ; $79e8: $6a
    ld b, a                                       ; $79e9: $47
    ld c, e                                       ; $79ea: $4b
    ld e, l                                       ; $79eb: $5d
    rrca                                          ; $79ec: $0f
    db $d3                                        ; $79ed: $d3
    pop hl                                        ; $79ee: $e1
    sub a                                         ; $79ef: $97
    ld b, h                                       ; $79f0: $44
    ld b, e                                       ; $79f1: $43
    inc b                                         ; $79f2: $04
    dec de                                        ; $79f3: $1b
    add e                                         ; $79f4: $83
    add a                                         ; $79f5: $87
    add e                                         ; $79f6: $83
    ld [hl], c                                    ; $79f7: $71
    dec l                                         ; $79f8: $2d
    dec de                                        ; $79f9: $1b
    cp d                                          ; $79fa: $ba
    inc b                                         ; $79fb: $04
    rst $00                                       ; $79fc: $c7

jr_050_79fd:
    cp c                                          ; $79fd: $b9
    ld [de], a                                    ; $79fe: $12
    reti                                          ; $79ff: $d9


    ld c, a                                       ; $7a00: $4f
    call nz, Call_050_6264                        ; $7a01: $c4 $64 $62
    ldh a, [rSVBK]                                ; $7a04: $f0 $70
    adc b                                         ; $7a06: $88
    nop                                           ; $7a07: $00
    dec de                                        ; $7a08: $1b
    add e                                         ; $7a09: $83
    rlca                                          ; $7a0a: $07
    sub $ff                                       ; $7a0b: $d6 $ff
    ld h, l                                       ; $7a0d: $65
    sub a                                         ; $7a0e: $97
    ld l, a                                       ; $7a0f: $6f
    ld [hl], h                                    ; $7a10: $74
    ld h, $35                                     ; $7a11: $26 $35
    sub e                                         ; $7a13: $93
    jp nc, $9dc6                                  ; $7a14: $d2 $c6 $9d

    sbc d                                         ; $7a17: $9a
    dec hl                                        ; $7a18: $2b

jr_050_7a19:
    rst $30                                       ; $7a19: $f7
    ld [$df98], a                                 ; $7a1a: $ea $98 $df
    rst $38                                       ; $7a1d: $ff
    rst $30                                       ; $7a1e: $f7
    inc a                                         ; $7a1f: $3c
    jr nz, jr_050_7a19                            ; $7a20: $20 $f7

    sub l                                         ; $7a22: $95
    sbc [hl]                                      ; $7a23: $9e
    rst $38                                       ; $7a24: $ff
    adc c                                         ; $7a25: $89
    ld e, c                                       ; $7a26: $59
    db $e3                                        ; $7a27: $e3
    cp d                                          ; $7a28: $ba
    xor b                                         ; $7a29: $a8
    ld e, a                                       ; $7a2a: $5f
    dec de                                        ; $7a2b: $1b
    ld a, [c]                                     ; $7a2c: $f2
    inc a                                         ; $7a2d: $3c
    ld b, h                                       ; $7a2e: $44
    dec de                                        ; $7a2f: $1b
    inc bc                                        ; $7a30: $03
    ld c, h                                       ; $7a31: $4c
    call $db7f                                    ; $7a32: $cd $7f $db
    ld d, a                                       ; $7a35: $57
    dec l                                         ; $7a36: $2d
    db $e3                                        ; $7a37: $e3
    inc a                                         ; $7a38: $3c
    dec l                                         ; $7a39: $2d
    ld e, c                                       ; $7a3a: $59
    ld [hl], $74                                  ; $7a3b: $36 $74

Jump_050_7a3d:
    ld sp, hl                                     ; $7a3d: $f9
    dec de                                        ; $7a3e: $1b
    or l                                          ; $7a3f: $b5
    ld a, h                                       ; $7a40: $7c
    xor e                                         ; $7a41: $ab

jr_050_7a42:
    ld b, e                                       ; $7a42: $43
    ld b, $a4                                     ; $7a43: $06 $a4
    ld a, [hl]                                    ; $7a45: $7e
    ld c, d                                       ; $7a46: $4a
    xor e                                         ; $7a47: $ab
    cp h                                          ; $7a48: $bc
    cp e                                          ; $7a49: $bb
    sub b                                         ; $7a4a: $90
    ld h, l                                       ; $7a4b: $65
    sbc h                                         ; $7a4c: $9c
    or a                                          ; $7a4d: $b7
    add [hl]                                      ; $7a4e: $86
    ld h, [hl]                                    ; $7a4f: $66
    ccf                                           ; $7a50: $3f
    db $f4                                        ; $7a51: $f4
    ld a, a                                       ; $7a52: $7f
    ld b, l                                       ; $7a53: $45
    ld b, c                                       ; $7a54: $41
    inc b                                         ; $7a55: $04
    dec de                                        ; $7a56: $1b
    inc bc                                        ; $7a57: $03
    ret nc                                        ; $7a58: $d0

    adc c                                         ; $7a59: $89
    ld d, d                                       ; $7a5a: $52
    cp a                                          ; $7a5b: $bf
    ld a, [hl-]                                   ; $7a5c: $3a
    jr jr_050_7a42                                ; $7a5d: $18 $e3

    pop de                                        ; $7a5f: $d1
    ld a, $93                                     ; $7a60: $3e $93
    jp nc, $9dc6                                  ; $7a62: $d2 $c6 $9d

    sbc d                                         ; $7a65: $9a
    dec hl                                        ; $7a66: $2b
    rst $30                                       ; $7a67: $f7
    ld [$df98], a                                 ; $7a68: $ea $98 $df
    rst $38                                       ; $7a6b: $ff
    ld b, a                                       ; $7a6c: $47
    ld a, c                                       ; $7a6d: $79
    ld d, c                                       ; $7a6e: $51
    or l                                          ; $7a6f: $b5
    db $f4                                        ; $7a70: $f4
    add hl, hl                                    ; $7a71: $29
    ld b, l                                       ; $7a72: $45
    and d                                         ; $7a73: $a2
    rst $08                                       ; $7a74: $cf
    halt                                          ; $7a75: $76
    add l                                         ; $7a76: $85
    db $fc                                        ; $7a77: $fc
    inc h                                         ; $7a78: $24
    ld e, a                                       ; $7a79: $5f
    dec a                                         ; $7a7a: $3d
    or $3c                                        ; $7a7b: $f6 $3c
    add sp, $44                                   ; $7a7d: $e8 $44
    xor c                                         ; $7a7f: $a9
    ld e, a                                       ; $7a80: $5f
    dec e                                         ; $7a81: $1d
    res 0, [hl]                                   ; $7a82: $cb $86
    adc [hl]                                      ; $7a84: $8e
    ld e, $4d                                     ; $7a85: $1e $4d
    and d                                         ; $7a87: $a2
    sbc a                                         ; $7a88: $9f
    add a                                         ; $7a89: $87
    ld [$031b], sp                                ; $7a8a: $08 $1b $03
    ld c, h                                       ; $7a8d: $4c
    jr c, @-$30                                   ; $7a8e: $38 $ce

    ld e, l                                       ; $7a90: $5d
    sub c                                         ; $7a91: $91
    ld [$e958], a                                 ; $7a92: $ea $58 $e9
    bit 7, [hl]                                   ; $7a95: $cb $7e
    add l                                         ; $7a97: $85
    and h                                         ; $7a98: $a4
    dec c                                         ; $7a99: $0d
    ld c, l                                       ; $7a9a: $4d
    add a                                         ; $7a9b: $87
    ld b, b                                       ; $7a9c: $40

Call_050_7a9d:
    inc b                                         ; $7a9d: $04
    dec de                                        ; $7a9e: $1b
    add e                                         ; $7a9f: $83
    di                                            ; $7aa0: $f3
    sub b                                         ; $7aa1: $90
    pop de                                        ; $7aa2: $d1
    ret z                                         ; $7aa3: $c8

    cp [hl]                                       ; $7aa4: $be
    ld [hl], h                                    ; $7aa5: $74
    db $f4                                        ; $7aa6: $f4
    adc c                                         ; $7aa7: $89
    jp c, $b798                                   ; $7aa8: $da $98 $b7

    ld sp, hl                                     ; $7aab: $f9
    sbc a                                         ; $7aac: $9f
    ld d, h                                       ; $7aad: $54
    rst $38                                       ; $7aae: $ff
    sub b                                         ; $7aaf: $90
    xor c                                         ; $7ab0: $a9
    db $10                                        ; $7ab1: $10
    ld b, e                                       ; $7ab2: $43
    rst $20                                       ; $7ab3: $e7
    rst $10                                       ; $7ab4: $d7
    ld b, [hl]                                    ; $7ab5: $46
    ld c, e                                       ; $7ab6: $4b
    pop bc                                        ; $7ab7: $c1
    ld bc, $9595                                  ; $7ab8: $01 $95 $95
    ld a, $3c                                     ; $7abb: $3e $3c
    ld a, [hl-]                                   ; $7abd: $3a
    dec de                                        ; $7abe: $1b
    adc c                                         ; $7abf: $89
    sub [hl]                                      ; $7ac0: $96
    jp c, Jump_050_491d                           ; $7ac1: $da $1d $49

    ld b, h                                       ; $7ac4: $44
    dec c                                         ; $7ac5: $0d
    ld d, b                                       ; $7ac6: $50
    cp e                                          ; $7ac7: $bb
    sub [hl]                                      ; $7ac8: $96
    ld [hl], h                                    ; $7ac9: $74
    sbc [hl]                                      ; $7aca: $9e
    ld h, [hl]                                    ; $7acb: $66
    ld [hl], h                                    ; $7acc: $74
    adc b                                         ; $7acd: $88
    nop                                           ; $7ace: $00
    dec de                                        ; $7acf: $1b
    inc bc                                        ; $7ad0: $03
    or b                                          ; $7ad1: $b0
    ld l, l                                       ; $7ad2: $6d
    cp c                                          ; $7ad3: $b9
    ld d, e                                       ; $7ad4: $53
    sub a                                         ; $7ad5: $97
    ret c                                         ; $7ad6: $d8

    jr jr_050_7b50                                ; $7ad7: $18 $77

    ld [$6c61], a                                 ; $7ad9: $ea $61 $6c
    di                                            ; $7adc: $f3
    ccf                                           ; $7add: $3f

Call_050_7ade:
    xor c                                         ; $7ade: $a9
    cp $b9                                        ; $7adf: $fe $b9
    ld a, c                                       ; $7ae1: $79
    dec de                                        ; $7ae2: $1b
    ld a, [hl]                                    ; $7ae3: $7e
    or [hl]                                       ; $7ae4: $b6
    rst $10                                       ; $7ae5: $d7
    sbc $7e                                       ; $7ae6: $de $7e
    db $ed                                        ; $7ae8: $ed
    push af                                       ; $7ae9: $f5
    cp l                                          ; $7aea: $bd
    cp h                                          ; $7aeb: $bc
    rst $10                                       ; $7aec: $d7
    sbc $7e                                       ; $7aed: $de $7e
    rst $30                                       ; $7aef: $f7
    dec e                                         ; $7af0: $1d
    adc b                                         ; $7af1: $88
    nop                                           ; $7af2: $00
    dec de                                        ; $7af3: $1b
    inc bc                                        ; $7af4: $03
    ld [hl], b                                    ; $7af5: $70
    ld b, $4f                                     ; $7af6: $06 $4f
    cp $d1                                        ; $7af8: $fe $d1
    jp $e6d8                                      ; $7afa: $c3 $d8 $e6


    ld a, a                                       ; $7afd: $7f
    ld l, e                                       ; $7afe: $6b
    ld l, b                                       ; $7aff: $68
    and [hl]                                      ; $7b00: $a6
    ld d, a                                       ; $7b01: $57
    ld l, [hl]                                    ; $7b02: $6e
    or $e8                                        ; $7b03: $f6 $e8
    or e                                          ; $7b05: $b3

Call_050_7b06:
    ld sp, hl                                     ; $7b06: $f9
    db $fd                                        ; $7b07: $fd
    ccf                                           ; $7b08: $3f
    sub a                                         ; $7b09: $97
    ld a, e                                       ; $7b0a: $7b
    db $e4                                        ; $7b0b: $e4
    cp l                                          ; $7b0c: $bd
    or $ee                                        ; $7b0d: $f6 $ee
    ld l, e                                       ; $7b0f: $6b
    xor a                                         ; $7b10: $af
    ld b, c                                       ; $7b11: $41
    inc b                                         ; $7b12: $04
    dec de                                        ; $7b13: $1b
    inc bc                                        ; $7b14: $03
    ld d, b                                       ; $7b15: $50
    ld h, c                                       ; $7b16: $61
    xor e                                         ; $7b17: $ab
    ld h, e                                       ; $7b18: $63
    call c, $87a9                                 ; $7b19: $dc $a9 $87
    or c                                          ; $7b1c: $b1
    call $a4ff                                    ; $7b1d: $cd $ff $a4
    ld a, [$4b57]                                 ; $7b20: $fa $57 $4b
    push hl                                       ; $7b23: $e5
    ld [hl], c                                    ; $7b24: $71
    and a                                         ; $7b25: $a7
    adc $45                                       ; $7b26: $ce $45
    rst $38                                       ; $7b28: $ff
    dec d                                         ; $7b29: $15
    or l                                          ; $7b2a: $b5
    rst $10                                       ; $7b2b: $d7
    sbc $7c                                       ; $7b2c: $de $7c
    di                                            ; $7b2e: $f3
    db $dd                                        ; $7b2f: $dd
    cp l                                          ; $7b30: $bd
    cp h                                          ; $7b31: $bc
    or a                                          ; $7b32: $b7
    ld e, [hl]                                    ; $7b33: $5e
    add l                                         ; $7b34: $85
    ld [$031b], sp                                ; $7b35: $08 $1b $03
    sub b                                         ; $7b38: $90
    add a                                         ; $7b39: $87
    ret c                                         ; $7b3a: $d8

    ld [hl], c                                    ; $7b3b: $71
    and a                                         ; $7b3c: $a7
    ld e, [hl]                                    ; $7b3d: $5e
    cp c                                          ; $7b3e: $b9
    ld c, a                                       ; $7b3f: $4f
    xor e                                         ; $7b40: $ab
    and l                                         ; $7b41: $a5
    inc hl                                        ; $7b42: $23
    add a                                         ; $7b43: $87
    ld [$79f2], a                                 ; $7b44: $ea $f2 $79
    sbc e                                         ; $7b47: $9b
    rst $38                                       ; $7b48: $ff
    jp $0d97                                      ; $7b49: $c3 $97 $0d


    sbc l                                         ; $7b4c: $9d
    ld b, a                                       ; $7b4d: $47
    or a                                          ; $7b4e: $b7
    jp hl                                         ; $7b4f: $e9


jr_050_7b50:
    sbc e                                         ; $7b50: $9b
    and e                                         ; $7b51: $a3
    set 0, [hl]                                   ; $7b52: $cb $c6
    ld [$5aff], a                                 ; $7b54: $ea $ff $5a
    ld [hl], $74                                  ; $7b57: $36 $74
    call c, $f3a9                                 ; $7b59: $dc $a9 $f3
    adc c                                         ; $7b5c: $89
    ld a, b                                       ; $7b5d: $78
    call z, $f96b                                 ; $7b5e: $cc $6b $f9
    xor d                                         ; $7b61: $aa
    sbc l                                         ; $7b62: $9d
    db $f4                                        ; $7b63: $f4
    add sp, $71                                   ; $7b64: $e8 $71
    rst $18                                       ; $7b66: $df
    ret c                                         ; $7b67: $d8

    sub b                                         ; $7b68: $90
    ld h, c                                       ; $7b69: $61
    ld h, [hl]                                    ; $7b6a: $66
    dec b                                         ; $7b6b: $05
    ld b, h                                       ; $7b6c: $44
    dec de                                        ; $7b6d: $1b
    add e                                         ; $7b6e: $83
    di                                            ; $7b6f: $f3
    sub b                                         ; $7b70: $90
    ld [hl], c                                    ; $7b71: $71
    and a                                         ; $7b72: $a7
    adc $5e                                       ; $7b73: $ce $5e
    db $d3                                        ; $7b75: $d3
    ld c, $c6                                     ; $7b76: $0e $c6
    dec h                                         ; $7b78: $25
    res 0, [hl]                                   ; $7b79: $cb $86
    ld l, $fd                                     ; $7b7b: $2e $fd
    ld b, e                                       ; $7b7d: $43
    rra                                           ; $7b7e: $1f
    add $36                                       ; $7b7f: $c6 $36
    rst $38                                       ; $7b81: $ff
    ld e, e                                       ; $7b82: $5b
    ld b, e                                       ; $7b83: $43
    inc sp                                        ; $7b84: $33
    cp l                                          ; $7b85: $bd
    ld [hl], d                                    ; $7b86: $72
    or e                                          ; $7b87: $b3
    ld b, a                                       ; $7b88: $47
    ld b, e                                       ; $7b89: $43
    inc b                                         ; $7b8a: $04
    dec de                                        ; $7b8b: $1b
    inc bc                                        ; $7b8c: $03
    ret nz                                        ; $7b8d: $c0

    pop de                                        ; $7b8e: $d1
    daa                                           ; $7b8f: $27
    ld l, d                                       ; $7b90: $6a
    rst $00                                       ; $7b91: $c7
    sbc l                                         ; $7b92: $9d
    ld a, d                                       ; $7b93: $7a
    ld sp, hl                                     ; $7b94: $f9
    ld c, d                                       ; $7b95: $4a
    call $fcdb                                    ; $7b96: $cd $db $fc
    sbc a                                         ; $7b99: $9f
    dec a                                         ; $7b9a: $3d
    or c                                          ; $7b9b: $b1
    scf                                           ; $7b9c: $37
    ld a, [de]                                    ; $7b9d: $1a
    ld c, $e4                                     ; $7b9e: $0e $e4
    ld c, a                                       ; $7ba0: $4f
    jp nc, $b2e9                                  ; $7ba1: $d2 $e9 $b2

    sub c                                         ; $7ba4: $91
    ld [hl], a                                    ; $7ba5: $77
    dec [hl]                                      ; $7ba6: $35
    and $f1                                       ; $7ba7: $e6 $f1
    daa                                           ; $7ba9: $27
    ld b, a                                       ; $7baa: $47
    ld c, a                                       ; $7bab: $4f
    dec hl                                        ; $7bac: $2b
    ld e, c                                       ; $7bad: $59
    ld e, a                                       ; $7bae: $5f
    cpl                                           ; $7baf: $2f
    dec de                                        ; $7bb0: $1b
    dec hl                                        ; $7bb1: $2b
    ld a, l                                       ; $7bb2: $7d
    pop hl                                        ; $7bb3: $e1
    ld c, $11                                     ; $7bb4: $0e $11

Call_050_7bb6:
    dec de                                        ; $7bb6: $1b
    inc bc                                        ; $7bb7: $03
    adc h                                         ; $7bb8: $8c
    ld l, l                                       ; $7bb9: $6d
    cp $27                                        ; $7bba: $fe $27
    push de                                       ; $7bbc: $d5
    ccf                                           ; $7bbd: $3f
    rst $20                                       ; $7bbe: $e7
    sub h                                         ; $7bbf: $94
    ld d, [hl]                                    ; $7bc0: $56
    add hl, hl                                    ; $7bc1: $29
    ld a, [c]                                     ; $7bc2: $f2
    ld [hl-], a                                   ; $7bc3: $32
    dec a                                         ; $7bc4: $3d
    or d                                          ; $7bc5: $b2
    ld d, a                                       ; $7bc6: $57
    rst $00                                       ; $7bc7: $c7
    ld e, [hl]                                    ; $7bc8: $5e
    ld a, e                                       ; $7bc9: $7b
    db $eb                                        ; $7bca: $eb
    push de                                       ; $7bcb: $d5
    or a                                          ; $7bcc: $b7
    rst $30                                       ; $7bcd: $f7
    ld a, [c]                                     ; $7bce: $f2
    ld e, [hl]                                    ; $7bcf: $5e
    ld a, e                                       ; $7bd0: $7b
    db $eb                                        ; $7bd1: $eb
    db $dd                                        ; $7bd2: $dd
    ld [hl], a                                    ; $7bd3: $77
    ld hl, $1b02                                  ; $7bd4: $21 $02 $1b
    inc bc                                        ; $7bd7: $03
    ld [hl], b                                    ; $7bd8: $70
    add [hl]                                      ; $7bd9: $86
    ld c, c                                       ; $7bda: $49
    ld b, d                                       ; $7bdb: $42
    sub [hl]                                      ; $7bdc: $96
    dec c                                         ; $7bdd: $0d
    db $dd                                        ; $7bde: $dd
    ld c, c                                       ; $7bdf: $49
    adc a                                         ; $7be0: $8f
    cp $a1                                        ; $7be1: $fe $a1
    db $db                                        ; $7be3: $db
    add b                                         ; $7be4: $80
    ld [$831b], sp                                ; $7be5: $08 $1b $83
    ld h, a                                       ; $7be8: $67
    ld a, l                                       ; $7be9: $7d
    ld hl, $e2d3                                  ; $7bea: $21 $d3 $e2
    ld c, a                                       ; $7bed: $4f
    ld e, l                                       ; $7bee: $5d
    adc $af                                       ; $7bef: $ce $af
    sbc d                                         ; $7bf1: $9a
    add a                                         ; $7bf2: $87
    ld a, b                                       ; $7bf3: $78
    and l                                         ; $7bf4: $a5
    sub d                                         ; $7bf5: $92
    ld e, a                                       ; $7bf6: $5f
    inc sp                                        ; $7bf7: $33
    add hl, hl                                    ; $7bf8: $29
    ld l, l                                       ; $7bf9: $6d
    daa                                           ; $7bfa: $27
    dec a                                         ; $7bfb: $3d
    ld a, [$6e87]                                 ; $7bfc: $fa $87 $6e
    db $e3                                        ; $7bff: $e3
    ld l, h                                       ; $7c00: $6c
    inc [hl]                                      ; $7c01: $34
    ld h, h                                       ; $7c02: $64
    ld b, a                                       ; $7c03: $47
    adc a                                         ; $7c04: $8f
    inc sp                                        ; $7c05: $33
    db $ed                                        ; $7c06: $ed
    ld e, h                                       ; $7c07: $5c
    ld [hl], l                                    ; $7c08: $75
    adc c                                         ; $7c09: $89
    adc l                                         ; $7c0a: $8d
    db $fd                                        ; $7c0b: $fd
    ei                                            ; $7c0c: $fb
    dec bc                                        ; $7c0d: $0b
    ld [hl+], a                                   ; $7c0e: $22
    dec de                                        ; $7c0f: $1b
    inc bc                                        ; $7c10: $03
    and b                                         ; $7c11: $a0
    ld [hl], d                                    ; $7c12: $72
    ld d, d                                       ; $7c13: $52
    or $6c                                        ; $7c14: $f6 $6c
    ld a, b                                       ; $7c16: $78
    sub d                                         ; $7c17: $92
    ld [hl+], a                                   ; $7c18: $22
    pop af                                        ; $7c19: $f1
    sbc e                                         ; $7c1a: $9b
    and l                                         ; $7c1b: $a5
    call nc, $d355                                ; $7c1c: $d4 $55 $d3
    ld c, $c6                                     ; $7c1f: $0e $c6
    or l                                          ; $7c21: $b5
    ld l, h                                       ; $7c22: $6c
    add sp, -$4c                                  ; $7c23: $e8 $b4
    db $eb                                        ; $7c25: $eb
    ld e, [hl]                                    ; $7c26: $5e
    ld [hl], $16                                  ; $7c27: $36 $16
    xor $4b                                       ; $7c29: $ee $4b
    dec de                                        ; $7c2b: $1b
    rrca                                          ; $7c2c: $0f
    ld a, [de]                                    ; $7c2d: $1a
    ld [hl], $fe                                  ; $7c2e: $36 $fe
    xor b                                         ; $7c30: $a8
    pop af                                        ; $7c31: $f1
    reti                                          ; $7c32: $d9


    ld l, $42                                     ; $7c33: $2e $42
    inc c                                         ; $7c35: $0c
    adc [hl]                                      ; $7c36: $8e
    sbc e                                         ; $7c37: $9b
    add [hl]                                      ; $7c38: $86
    ld [$031b], sp                                ; $7c39: $08 $1b $03
    db $10                                        ; $7c3c: $10
    db $fd                                        ; $7c3d: $fd
    rrca                                          ; $7c3e: $0f
    or c                                          ; $7c3f: $b1
    sbc c                                         ; $7c40: $99
    call z, $7276                                 ; $7c41: $cc $76 $72
    db $ed                                        ; $7c44: $ed
    or d                                          ; $7c45: $b2
    and c                                         ; $7c46: $a1
    ld c, e                                       ; $7c47: $4b
    ld [hl], b                                    ; $7c48: $70
    call c, $148f                                 ; $7c49: $dc $8f $14
    pop af                                        ; $7c4c: $f1
    ld e, b                                       ; $7c4d: $58
    xor b                                         ; $7c4e: $a8
    sub b                                         ; $7c4f: $90
    ld c, h                                       ; $7c50: $4c
    ld a, [bc]                                    ; $7c51: $0a
    adc a                                         ; $7c52: $8f
    sub [hl]                                      ; $7c53: $96
    sbc d                                         ; $7c54: $9a
    ld h, [hl]                                    ; $7c55: $66
    ld a, [c]                                     ; $7c56: $f2
    jr z, jr_050_7c88                             ; $7c57: $28 $2f

    or [hl]                                       ; $7c59: $b6
    sub h                                         ; $7c5a: $94
    add d                                         ; $7c5b: $82
    ld [$031b], sp                                ; $7c5c: $08 $1b $03
    ld [hl], b                                    ; $7c5f: $70
    rst $10                                       ; $7c60: $d7
    ld [$e8f3], sp                                ; $7c61: $08 $f3 $e8
    ld e, l                                       ; $7c64: $5d
    ld sp, $a774                                  ; $7c65: $31 $74 $a7
    or $7f                                        ; $7c68: $f6 $7f
    ld [hl], h                                    ; $7c6a: $74
    call $b4a4                                    ; $7c6b: $cd $a4 $b4
    push hl                                       ; $7c6e: $e5
    and d                                         ; $7c6f: $a2
    cp a                                          ; $7c70: $bf
    ld a, [hl-]                                   ; $7c71: $3a
    ld d, [hl]                                    ; $7c72: $56
    ld a, [$2f28]                                 ; $7c73: $fa $28 $2f
    xor d                                         ; $7c76: $aa
    ld b, [hl]                                    ; $7c77: $46
    ld c, e                                       ; $7c78: $4b
    db $dd                                        ; $7c79: $dd
    ld c, h                                       ; $7c7a: $4c
    ld l, d                                       ; $7c7b: $6a
    jp hl                                         ; $7c7c: $e9


    ld l, a                                       ; $7c7d: $6f
    jr z, jr_050_7cb5                             ; $7c7e: $28 $35

    dec c                                         ; $7c80: $0d
    ld de, $831b                                  ; $7c81: $11 $1b $83
    di                                            ; $7c84: $f3
    ldh a, [$71]                                  ; $7c85: $f0 $71
    and a                                         ; $7c87: $a7

jr_050_7c88:
    adc $5e                                       ; $7c88: $ce $5e
    inc hl                                        ; $7c8a: $23
    add a                                         ; $7c8b: $87
    ret c                                         ; $7c8c: $d8

    sbc d                                         ; $7c8d: $9a
    pop hl                                        ; $7c8e: $e1
    cp b                                          ; $7c8f: $b8
    ld c, $1f                                     ; $7c90: $0e $1f
    ld [hl], a                                    ; $7c92: $77
    ld [$2ed9], a                                 ; $7c93: $ea $d9 $2e
    ld b, d                                       ; $7c96: $42
    inc c                                         ; $7c97: $0c
    adc [hl]                                      ; $7c98: $8e
    sbc e                                         ; $7c99: $9b
    add [hl]                                      ; $7c9a: $86
    ld [$031b], sp                                ; $7c9b: $08 $1b $03
    ldh [$9d], a                                  ; $7c9e: $e0 $9d
    adc b                                         ; $7ca0: $88
    dec l                                         ; $7ca1: $2d
    dec de                                        ; $7ca2: $1b
    ld a, e                                       ; $7ca3: $7b
    ld d, d                                       ; $7ca4: $52
    ld b, d                                       ; $7ca5: $42
    ld a, h                                       ; $7ca6: $7c
    and b                                         ; $7ca7: $a0
    inc de                                        ; $7ca8: $13
    ld d, c                                       ; $7ca9: $51
    ld h, $2f                                     ; $7caa: $26 $2f
    inc sp                                        ; $7cac: $33
    inc de                                        ; $7cad: $13
    and d                                         ; $7cae: $a2
    dec h                                         ; $7caf: $25
    ld a, c                                       ; $7cb0: $79
    call c, Call_050_47a9                         ; $7cb1: $dc $a9 $47
    ld c, e                                       ; $7cb4: $4b

jr_050_7cb5:
    db $dd                                        ; $7cb5: $dd
    ld c, h                                       ; $7cb6: $4c
    ld l, d                                       ; $7cb7: $6a
    sbc c                                         ; $7cb8: $99
    sbc c                                         ; $7cb9: $99
    db $10                                        ; $7cba: $10
    ld l, e                                       ; $7cbb: $6b
    ld l, b                                       ; $7cbc: $68
    push af                                       ; $7cbd: $f5
    ld c, h                                       ; $7cbe: $4c
    ld c, d                                       ; $7cbf: $4a
    ld e, e                                       ; $7cc0: $5b
    ld h, $65                                     ; $7cc1: $26 $65
    ld c, l                                       ; $7cc3: $4d
    ld b, e                                       ; $7cc4: $43
    inc b                                         ; $7cc5: $04
    dec de                                        ; $7cc6: $1b
    add e                                         ; $7cc7: $83
    di                                            ; $7cc8: $f3
    ldh a, [$71]                                  ; $7cc9: $f0 $71
    and a                                         ; $7ccb: $a7
    adc $5e                                       ; $7ccc: $ce $5e
    di                                            ; $7cce: $f3
    ld [hl], $ff                                  ; $7ccf: $36 $ff
    sub e                                         ; $7cd1: $93
    ld [$b21f], a                                 ; $7cd2: $ea $1f $b2
    ld l, h                                       ; $7cd5: $6c
    add sp, $32                                   ; $7cd6: $e8 $32
    ld e, $9e                                     ; $7cd8: $1e $9e
    bit 0, [hl]                                   ; $7cda: $cb $46
    ld e, [hl]                                    ; $7cdc: $5e
    jp hl                                         ; $7cdd: $e9


    dec bc                                        ; $7cde: $0b
    ld e, c                                       ; $7cdf: $59
    ld [hl], c                                    ; $7ce0: $71
    ld a, l                                       ; $7ce1: $7d
    ld c, c                                       ; $7ce2: $49
    ld c, c                                       ; $7ce3: $49
    ld h, $03                                     ; $7ce4: $26 $03
    jp c, $c509                                   ; $7ce6: $da $09 $c5

    ld b, e                                       ; $7ce9: $43
    inc e                                         ; $7cea: $1c
    ld [hl+], a                                   ; $7ceb: $22
    dec de                                        ; $7cec: $1b
    add e                                         ; $7ced: $83
    di                                            ; $7cee: $f3
    sub b                                         ; $7cef: $90
    ld [hl], c                                    ; $7cf0: $71
    and a                                         ; $7cf1: $a7
    adc $5e                                       ; $7cf2: $ce $5e
    and e                                         ; $7cf4: $a3
    push hl                                       ; $7cf5: $e5
    ld b, c                                       ; $7cf6: $41
    ld c, e                                       ; $7cf7: $4b
    ld e, l                                       ; $7cf8: $5d
    ld [de], a                                    ; $7cf9: $12
    dec l                                         ; $7cfa: $2d
    res 0, [hl]                                   ; $7cfb: $cb $86
    adc [hl]                                      ; $7cfd: $8e
    xor e                                         ; $7cfe: $ab
    db $ec                                        ; $7cff: $ec
    reti                                          ; $7d00: $d9


    adc a                                         ; $7d01: $8f
    rst $38                                       ; $7d02: $ff
    ld l, l                                       ; $7d03: $6d
    call z, Call_050_68c6                         ; $7d04: $cc $c6 $68
    xor c                                         ; $7d07: $a9
    sbc e                                         ; $7d08: $9b
    ld c, c                                       ; $7d09: $49
    dec l                                         ; $7d0a: $2d
    ld d, h                                       ; $7d0b: $54
    ld c, b                                       ; $7d0c: $48
    ld h, $85                                     ; $7d0d: $26 $85
    ld b, a                                       ; $7d0f: $47
    ld c, e                                       ; $7d10: $4b
    ld c, l                                       ; $7d11: $4d
    inc sp                                        ; $7d12: $33
    ld a, c                                       ; $7d13: $79
    ld e, [hl]                                    ; $7d14: $5e
    ccf                                           ; $7d15: $3f
    ld a, h                                       ; $7d16: $7c
    sbc c                                         ; $7d17: $99
    sbc c                                         ; $7d18: $99
    ld b, b                                       ; $7d19: $40
    inc b                                         ; $7d1a: $04
    dec de                                        ; $7d1b: $1b
    inc bc                                        ; $7d1c: $03
    and b                                         ; $7d1d: $a0
    or d                                          ; $7d1e: $b2
    jp nc, Jump_050_60f7                          ; $7d1f: $d2 $f7 $60

    inc d                                         ; $7d22: $14
    and e                                         ; $7d23: $a3
    ld l, d                                       ; $7d24: $6a
    rst $08                                       ; $7d25: $cf
    ld d, e                                       ; $7d26: $53
    sbc l                                         ; $7d27: $9d
    adc b                                         ; $7d28: $88
    xor l                                         ; $7d29: $ad
    ld c, $38                                     ; $7d2a: $0e $38
    ldh [$a5], a                                  ; $7d2c: $e0 $a5
    cpl                                           ; $7d2e: $2f
    ld e, a                                       ; $7d2f: $5f
    rst $30                                       ; $7d30: $f7
    ld c, c                                       ; $7d31: $49
    ld d, c                                       ; $7d32: $51
    sbc c                                         ; $7d33: $99
    rst $18                                       ; $7d34: $df
    rst $38                                       ; $7d35: $ff
    rla                                           ; $7d36: $17
    xor $2b                                       ; $7d37: $ee $2b
    ld a, l                                       ; $7d39: $7d
    ld [hl], $c6                                  ; $7d3a: $36 $c6
    or c                                          ; $7d3c: $b1
    cp d                                          ; $7d3d: $ba
    ld d, $3f                                     ; $7d3e: $16 $3f
    ld [hl], h                                    ; $7d40: $74
    dec l                                         ; $7d41: $2d
    jr z, jr_050_7d51                             ; $7d42: $28 $0d

    add c                                         ; $7d44: $81
    ld [$031b], sp                                ; $7d45: $08 $1b $03
    ld h, b                                       ; $7d48: $60
    and a                                         ; $7d49: $a7
    and $ca                                       ; $7d4a: $e6 $ca
    cp l                                          ; $7d4c: $bd
    ld a, [hl-]                                   ; $7d4d: $3a
    and $f7                                       ; $7d4e: $e6 $f7
    rst $38                                       ; $7d50: $ff

jr_050_7d51:
    ld d, c                                       ; $7d51: $51
    ld e, [hl]                                    ; $7d52: $5e
    ld d, h                                       ; $7d53: $54
    call $fcdb                                    ; $7d54: $cd $db $fc
    ld l, a                                       ; $7d57: $6f
    dec c                                         ; $7d58: $0d
    call Call_050_53e9                            ; $7d59: $cd $e9 $53
    adc d                                         ; $7d5c: $8a
    ld b, h                                       ; $7d5d: $44
    ld b, e                                       ; $7d5e: $43
    inc b                                         ; $7d5f: $04
    dec de                                        ; $7d60: $1b
    inc bc                                        ; $7d61: $03
    and b                                         ; $7d62: $a0
    or d                                          ; $7d63: $b2
    jp nc, Jump_050_60f7                          ; $7d64: $d2 $f7 $60

    inc d                                         ; $7d67: $14
    and e                                         ; $7d68: $a3
    ld l, d                                       ; $7d69: $6a
    rst $08                                       ; $7d6a: $cf
    ld d, e                                       ; $7d6b: $53
    sbc l                                         ; $7d6c: $9d
    adc b                                         ; $7d6d: $88
    xor l                                         ; $7d6e: $ad
    ld c, $38                                     ; $7d6f: $0e $38
    ldh [$a5], a                                  ; $7d71: $e0 $a5
    cpl                                           ; $7d73: $2f
    ld e, a                                       ; $7d74: $5f
    rst $30                                       ; $7d75: $f7
    ld c, c                                       ; $7d76: $49
    ld d, c                                       ; $7d77: $51
    sbc c                                         ; $7d78: $99
    rst $18                                       ; $7d79: $df
    rst $38                                       ; $7d7a: $ff
    rla                                           ; $7d7b: $17
    xor $2b                                       ; $7d7c: $ee $2b
    ld a, l                                       ; $7d7e: $7d
    ld [hl], $c6                                  ; $7d7f: $36 $c6
    or c                                          ; $7d81: $b1
    cp d                                          ; $7d82: $ba
    ld d, $3f                                     ; $7d83: $16 $3f
    ld [hl], h                                    ; $7d85: $74
    dec l                                         ; $7d86: $2d
    jr z, jr_050_7d96                             ; $7d87: $28 $0d

    add c                                         ; $7d89: $81
    ld [$031b], sp                                ; $7d8a: $08 $1b $03
    ld d, b                                       ; $7d8d: $50
    and c                                         ; $7d8e: $a1
    ld b, d                                       ; $7d8f: $42
    ld l, h                                       ; $7d90: $6c
    push af                                       ; $7d91: $f5
    call $da64                                    ; $7d92: $cd $64 $da
    pop bc                                        ; $7d95: $c1

jr_050_7d96:
    cp b                                          ; $7d96: $b8
    sub [hl]                                      ; $7d97: $96
    dec c                                         ; $7d98: $0d
    ld e, l                                       ; $7d99: $5d
    ld [c], a                                     ; $7d9a: $e2
    jp hl                                         ; $7d9b: $e9


    ei                                            ; $7d9c: $fb
    ld l, l                                       ; $7d9d: $6d
    reti                                          ; $7d9e: $d9


    ld e, b                                       ; $7d9f: $58
    ld [hl+], a                                   ; $7da0: $22
    xor d                                         ; $7da1: $aa
    and [hl]                                      ; $7da2: $a6
    dec e                                         ; $7da3: $1d
    adc h                                         ; $7da4: $8c
    jp hl                                         ; $7da5: $e9


    sub c                                         ; $7da6: $91
    cp l                                          ; $7da7: $bd
    ld a, [hl-]                                   ; $7da8: $3a
    add [hl]                                      ; $7da9: $86
    di                                            ; $7daa: $f3
    inc bc                                        ; $7dab: $03
    pop de                                        ; $7dac: $d1
    cp a                                          ; $7dad: $bf
    call nz, Call_000_0442                        ; $7dae: $c4 $42 $04
    dec de                                        ; $7db1: $1b
    inc bc                                        ; $7db2: $03
    and b                                         ; $7db3: $a0
    or d                                          ; $7db4: $b2
    jp nc, Jump_050_60f7                          ; $7db5: $d2 $f7 $60

    inc d                                         ; $7db8: $14
    and e                                         ; $7db9: $a3
    ld l, d                                       ; $7dba: $6a
    rst $08                                       ; $7dbb: $cf
    ld d, e                                       ; $7dbc: $53
    sbc l                                         ; $7dbd: $9d
    adc b                                         ; $7dbe: $88
    xor l                                         ; $7dbf: $ad
    ld c, $38                                     ; $7dc0: $0e $38
    ldh [$a5], a                                  ; $7dc2: $e0 $a5
    cpl                                           ; $7dc4: $2f
    ld e, a                                       ; $7dc5: $5f
    rst $30                                       ; $7dc6: $f7
    ld c, c                                       ; $7dc7: $49
    ld d, c                                       ; $7dc8: $51
    sbc c                                         ; $7dc9: $99
    rst $18                                       ; $7dca: $df
    rst $38                                       ; $7dcb: $ff
    rla                                           ; $7dcc: $17
    xor $2b                                       ; $7dcd: $ee $2b
    ld a, l                                       ; $7dcf: $7d
    ld [hl], $c6                                  ; $7dd0: $36 $c6
    or c                                          ; $7dd2: $b1
    cp d                                          ; $7dd3: $ba
    ld d, $3f                                     ; $7dd4: $16 $3f
    ld [hl], h                                    ; $7dd6: $74
    dec l                                         ; $7dd7: $2d
    jr z, jr_050_7de7                             ; $7dd8: $28 $0d

    add c                                         ; $7dda: $81
    ld [$031b], sp                                ; $7ddb: $08 $1b $03
    and b                                         ; $7dde: $a0
    or d                                          ; $7ddf: $b2
    jp nc, Jump_050_60f7                          ; $7de0: $d2 $f7 $60

    inc d                                         ; $7de3: $14
    and e                                         ; $7de4: $a3
    ld l, d                                       ; $7de5: $6a

Jump_050_7de6:
    rst $08                                       ; $7de6: $cf

jr_050_7de7:
    ld d, e                                       ; $7de7: $53
    sbc l                                         ; $7de8: $9d
    adc b                                         ; $7de9: $88
    xor l                                         ; $7dea: $ad
    ld c, $38                                     ; $7deb: $0e $38
    ldh [$a5], a                                  ; $7ded: $e0 $a5
    cpl                                           ; $7def: $2f
    ld e, a                                       ; $7df0: $5f
    rst $30                                       ; $7df1: $f7
    ld c, c                                       ; $7df2: $49
    ld d, c                                       ; $7df3: $51
    sbc c                                         ; $7df4: $99
    rst $18                                       ; $7df5: $df
    rst $38                                       ; $7df6: $ff
    rla                                           ; $7df7: $17
    xor $2b                                       ; $7df8: $ee $2b
    ld a, l                                       ; $7dfa: $7d
    ld [hl], $c6                                  ; $7dfb: $36 $c6
    or c                                          ; $7dfd: $b1
    cp d                                          ; $7dfe: $ba
    ld d, $3f                                     ; $7dff: $16 $3f
    ld [hl], h                                    ; $7e01: $74
    dec l                                         ; $7e02: $2d
    jr z, jr_050_7e12                             ; $7e03: $28 $0d

    add c                                         ; $7e05: $81
    ld [$031b], sp                                ; $7e06: $08 $1b $03
    ldh [$9d], a                                  ; $7e09: $e0 $9d
    adc b                                         ; $7e0b: $88
    dec l                                         ; $7e0c: $2d
    dec de                                        ; $7e0d: $1b
    ld c, e                                       ; $7e0e: $4b
    or e                                          ; $7e0f: $b3
    ld h, h                                       ; $7e10: $64
    rrca                                          ; $7e11: $0f

jr_050_7e12:
    ld b, [hl]                                    ; $7e12: $46
    ld h, l                                       ; $7e13: $65
    ld a, [de]                                    ; $7e14: $1a
    ld h, l                                       ; $7e15: $65
    inc bc                                        ; $7e16: $03
    ld [hl+], a                                   ; $7e17: $22
    dec de                                        ; $7e18: $1b
    add e                                         ; $7e19: $83
    di                                            ; $7e1a: $f3
    sub b                                         ; $7e1b: $90
    ld [hl], c                                    ; $7e1c: $71
    and a                                         ; $7e1d: $a7
    adc $5e                                       ; $7e1e: $ce $5e
    dec sp                                        ; $7e20: $3b
    ld d, h                                       ; $7e21: $54
    ld [hl], l                                    ; $7e22: $75
    ret z                                         ; $7e23: $c8

    db $fc                                        ; $7e24: $fc
    cp $bf                                        ; $7e25: $fe $bf
    di                                            ; $7e27: $f3
    sub b                                         ; $7e28: $90
    add c                                         ; $7e29: $81
    ld a, [hl-]                                   ; $7e2a: $3a
    ld d, d                                       ; $7e2b: $52
    and h                                         ; $7e2c: $a4
    call nz, Call_050_40c6                        ; $7e2d: $c4 $c6 $40
    ld e, [hl]                                    ; $7e30: $5e
    rst $30                                       ; $7e31: $f7
    ld hl, sp+$02                                 ; $7e32: $f8 $02
    ld de, $031b                                  ; $7e34: $11 $1b $03
    inc c                                         ; $7e37: $0c
    ld b, c                                       ; $7e38: $41
    call c, $b8f4                                 ; $7e39: $dc $f4 $b8
    ld d, e                                       ; $7e3c: $53
    rst $28                                       ; $7e3d: $ef
    pop bc                                        ; $7e3e: $c1
    jr z, @+$48                                   ; $7e3f: $28 $46

    push de                                       ; $7e41: $d5
    sbc [hl]                                      ; $7e42: $9e
    pop hl                                        ; $7e43: $e1
    sbc [hl]                                      ; $7e44: $9e
    ld e, $32                                     ; $7e45: $1e $32
    ld a, [de]                                    ; $7e47: $1a
    halt                                          ; $7e48: $76
    ld h, b                                       ; $7e49: $60
    ld l, [hl]                                    ; $7e4a: $6e
    jp z, $cafc                                   ; $7e4b: $ca $fc $ca

    inc bc                                        ; $7e4e: $03

jr_050_7e4f:
    or $8b                                        ; $7e4f: $f6 $8b
    add $df                                       ; $7e51: $c6 $df
    set 0, e                                      ; $7e53: $cb $c3
    add h                                         ; $7e55: $84
    db $e3                                        ; $7e56: $e3
    call c, $a915                                 ; $7e57: $dc $15 $a9
    ld c, $59                                     ; $7e5a: $0e $59
    jp hl                                         ; $7e5c: $e9


    dec sp                                        ; $7e5d: $3b
    adc a                                         ; $7e5e: $8f
    dec a                                         ; $7e5f: $3d
    cp l                                          ; $7e60: $bd
    add hl, sp                                    ; $7e61: $39
    ld a, [c]                                     ; $7e62: $f2
    sbc [hl]                                      ; $7e63: $9e
    ld a, b                                       ; $7e64: $78
    ld [$1b44], sp                                ; $7e65: $08 $44 $1b
    add e                                         ; $7e68: $83
    daa                                           ; $7e69: $27
    ld a, b                                       ; $7e6a: $78
    db $fc                                        ; $7e6b: $fc
    or d                                          ; $7e6c: $b2
    or c                                          ; $7e6d: $b1
    ld [hl], h                                    ; $7e6e: $74

jr_050_7e6f:
    push hl                                       ; $7e6f: $e5
    db $dd                                        ; $7e70: $dd
    reti                                          ; $7e71: $d9


    sub b                                         ; $7e72: $90
    pop hl                                        ; $7e73: $e1
    ld b, $4f                                     ; $7e74: $06 $4f
    cp $d1                                        ; $7e76: $fe $d1
    dec [hl]                                      ; $7e78: $35
    ld l, a                                       ; $7e79: $6f
    di                                            ; $7e7a: $f3
    ccf                                           ; $7e7b: $3f
    xor c                                         ; $7e7c: $a9
    cp $59                                        ; $7e7d: $fe $59
    ld [hl], l                                    ; $7e7f: $75
    add d                                         ; $7e80: $82
    db $e3                                        ; $7e81: $e3
    ld hl, $a8c3                                  ; $7e82: $21 $c3 $a8

jr_050_7e85:
    push bc                                       ; $7e85: $c5
    jr nc, jr_050_7e4f                            ; $7e86: $30 $c7

    ld l, l                                       ; $7e88: $6d
    cp e                                          ; $7e89: $bb
    daa                                           ; $7e8a: $27
    scf                                           ; $7e8b: $37
    ld a, e                                       ; $7e8c: $7b
    ld [hl], h                                    ; $7e8d: $74
    add [hl]                                      ; $7e8e: $86
    ld [$031b], sp                                ; $7e8f: $08 $1b $03
    sub b                                         ; $7e92: $90
    add [hl]                                      ; $7e93: $86
    ld [c], a                                     ; $7e94: $e2
    ld h, $5f                                     ; $7e95: $26 $5f
    ccf                                           ; $7e97: $3f
    ld [hl], l                                    ; $7e98: $75
    ret z                                         ; $7e99: $c8

Jump_050_7e9a:
    jp nc, $0c45                                  ; $7e9a: $d2 $45 $0c

    sbc l                                         ; $7e9d: $9d
    dec c                                         ; $7e9e: $0d
    sbc c                                         ; $7e9f: $99
    pop hl                                        ; $7ea0: $e1
    sub d                                         ; $7ea1: $92
    rst $38                                       ; $7ea2: $ff
    db $d3                                        ; $7ea3: $d3
    and [hl]                                      ; $7ea4: $a6
    ld l, l                                       ; $7ea5: $6d
    reti                                          ; $7ea6: $d9


    jr jr_050_7e6f                                ; $7ea7: $18 $c6

    ld [hl], $ff                                  ; $7ea9: $36 $ff
    sub e                                         ; $7eab: $93
    ld [$b39f], a                                 ; $7eac: $ea $9f $b3
    ld a, [hl]                                    ; $7eaf: $7e
    dec a                                         ; $7eb0: $3d
    db $e4                                        ; $7eb1: $e4
    ld l, h                                       ; $7eb2: $6c
    reti                                          ; $7eb3: $d9


    ret nc                                        ; $7eb4: $d0

    ld e, l                                       ; $7eb5: $5d
    ld hl, $b13f                                  ; $7eb6: $21 $3f $b1
    pop de                                        ; $7eb9: $d1
    push de                                       ; $7eba: $d5
    dec bc                                        ; $7ebb: $0b
    ld e, c                                       ; $7ebc: $59
    jr nc, jr_050_7e85                            ; $7ebd: $30 $c6

    cp a                                          ; $7ebf: $bf
    or c                                          ; $7ec0: $b1
    pop de                                        ; $7ec1: $d1
    dec h                                         ; $7ec2: $25
    ld [hl], $e6                                  ; $7ec3: $36 $e6
    add hl, bc                                    ; $7ec5: $09
    ld c, l                                       ; $7ec6: $4d
    rla                                           ; $7ec7: $17
    ld b, h                                       ; $7ec8: $44
    dec de                                        ; $7ec9: $1b
    add e                                         ; $7eca: $83
    daa                                           ; $7ecb: $27
    ld a, b                                       ; $7ecc: $78
    db $fc                                        ; $7ecd: $fc
    ld [$23e5], a                                 ; $7ece: $ea $e5 $23
    ld b, l                                       ; $7ed1: $45
    ldh a, [$8b]                                  ; $7ed2: $f0 $8b
    rst $10                                       ; $7ed4: $d7
    xor $6c                                       ; $7ed5: $ee $6c
    ret z                                         ; $7ed7: $c8

    ld [hl], b                                    ; $7ed8: $70
    add e                                         ; $7ed9: $83
    daa                                           ; $7eda: $27
    rst $38                                       ; $7edb: $ff
    add sp, -$66                                  ; $7edc: $e8 $9a
    or a                                          ; $7ede: $b7
    ld sp, hl                                     ; $7edf: $f9
    sbc a                                         ; $7ee0: $9f
    ld d, h                                       ; $7ee1: $54
    rst $38                                       ; $7ee2: $ff
    xor h                                         ; $7ee3: $ac
    ld a, [hl-]                                   ; $7ee4: $3a
    pop bc                                        ; $7ee5: $c1
    pop af                                        ; $7ee6: $f1
    sub b                                         ; $7ee7: $90
    ld h, c                                       ; $7ee8: $61
    call nc, $9862                                ; $7ee9: $d4 $62 $98
    db $e3                                        ; $7eec: $e3
    or [hl]                                       ; $7eed: $b6
    db $dd                                        ; $7eee: $dd
    sub e                                         ; $7eef: $93
    sbc e                                         ; $7ef0: $9b
    dec a                                         ; $7ef1: $3d

jr_050_7ef2:
    ld a, [hl-]                                   ; $7ef2: $3a
    ld b, e                                       ; $7ef3: $43
    inc b                                         ; $7ef4: $04
    dec de                                        ; $7ef5: $1b
    add e                                         ; $7ef6: $83
    daa                                           ; $7ef7: $27
    ld a, b                                       ; $7ef8: $78
    db $fc                                        ; $7ef9: $fc
    ld [$c4fd], a                                 ; $7efa: $ea $fd $c4
    ld l, e                                       ; $7efd: $6b
    ld [hl], a                                    ; $7efe: $77
    ld [hl], $64                                  ; $7eff: $36 $64
    cp b                                          ; $7f01: $b8
    pop bc                                        ; $7f02: $c1
    sub e                                         ; $7f03: $93
    ld a, a                                       ; $7f04: $7f
    ld [hl], h                                    ; $7f05: $74
    call $fcdb                                    ; $7f06: $cd $db $fc
    ld c, a                                       ; $7f09: $4f
    xor d                                         ; $7f0a: $aa
    ld a, a                                       ; $7f0b: $7f
    ld d, [hl]                                    ; $7f0c: $56
    sbc l                                         ; $7f0d: $9d
    ldh [$78], a                                  ; $7f0e: $e0 $78
    ret z                                         ; $7f10: $c8

    jr nc, jr_050_7f7d                            ; $7f11: $30 $6a

    ld sp, $71cc                                  ; $7f13: $31 $cc $71
    db $db                                        ; $7f16: $db
    xor $c9                                       ; $7f17: $ee $c9
    call $9d1e                                    ; $7f19: $cd $1e $9d
    ld hl, $1b02                                  ; $7f1c: $21 $02 $1b
    add e                                         ; $7f1f: $83
    daa                                           ; $7f20: $27
    ld a, b                                       ; $7f21: $78
    db $fc                                        ; $7f22: $fc
    ld [$eba9], a                                 ; $7f23: $ea $a9 $eb
    push de                                       ; $7f26: $d5
    cp l                                          ; $7f27: $bd
    dec sp                                        ; $7f28: $3b
    dec de                                        ; $7f29: $1b
    ld [hl-], a                                   ; $7f2a: $32
    call c, $c9e0                                 ; $7f2b: $dc $e0 $c9
    ccf                                           ; $7f2e: $3f
    cp d                                          ; $7f2f: $ba
    and $6d                                       ; $7f30: $e6 $6d
    cp $27                                        ; $7f32: $fe $27
    push de                                       ; $7f34: $d5
    ccf                                           ; $7f35: $3f
    xor e                                         ; $7f36: $ab
    ld c, [hl]                                    ; $7f37: $4e
    ld [hl], b                                    ; $7f38: $70
    inc a                                         ; $7f39: $3c
    ld h, h                                       ; $7f3a: $64
    jr jr_050_7ef2                                ; $7f3b: $18 $b5

    jr @-$18                                      ; $7f3d: $18 $e6

    cp b                                          ; $7f3f: $b8
    ld l, l                                       ; $7f40: $6d
    rst $30                                       ; $7f41: $f7
    db $e4                                        ; $7f42: $e4
    ld h, [hl]                                    ; $7f43: $66
    adc a                                         ; $7f44: $8f
    adc $10                                       ; $7f45: $ce $10
    ld bc, $831b                                  ; $7f47: $01 $1b $83
    daa                                           ; $7f4a: $27
    cp h                                          ; $7f4b: $bc
    xor b                                         ; $7f4c: $a8
    ld [$9dd8], a                                 ; $7f4d: $ea $d8 $9d
    dec c                                         ; $7f50: $0d
    add hl, de                                    ; $7f51: $19
    ld l, [hl]                                    ; $7f52: $6e
    ldh a, [$e4]                                  ; $7f53: $f0 $e4
    rra                                           ; $7f55: $1f
    ld e, l                                       ; $7f56: $5d
    di                                            ; $7f57: $f3
    ld [hl], $ff                                  ; $7f58: $36 $ff
    sub e                                         ; $7f5a: $93
    ld [$559f], a                                 ; $7f5b: $ea $9f $55
    daa                                           ; $7f5e: $27
    jr c, @+$20                                   ; $7f5f: $38 $1e

    ld [hl-], a                                   ; $7f61: $32
    adc h                                         ; $7f62: $8c
    ld e, d                                       ; $7f63: $5a
    inc c                                         ; $7f64: $0c
    ld [hl], e                                    ; $7f65: $73
    call c, Call_050_7bb6                         ; $7f66: $dc $b6 $7b
    ld [hl], d                                    ; $7f69: $72
    or e                                          ; $7f6a: $b3
    ld b, a                                       ; $7f6b: $47
    ld h, a                                       ; $7f6c: $67
    adc b                                         ; $7f6d: $88
    nop                                           ; $7f6e: $00
    dec de                                        ; $7f6f: $1b
    add e                                         ; $7f70: $83
    daa                                           ; $7f71: $27
    ld a, b                                       ; $7f72: $78
    db $fc                                        ; $7f73: $fc
    ld [$2779], a                                 ; $7f74: $ea $79 $27
    sub h                                         ; $7f77: $94
    sbc d                                         ; $7f78: $9a
    sbc $9d                                       ; $7f79: $de $9d
    dec c                                         ; $7f7b: $0d
    add hl, de                                    ; $7f7c: $19

jr_050_7f7d:
    ld l, [hl]                                    ; $7f7d: $6e
    ldh a, [$e4]                                  ; $7f7e: $f0 $e4
    rra                                           ; $7f80: $1f
    ld e, l                                       ; $7f81: $5d
    di                                            ; $7f82: $f3
    ld [hl], $ff                                  ; $7f83: $36 $ff
    sub e                                         ; $7f85: $93
    ld [$559f], a                                 ; $7f86: $ea $9f $55
    daa                                           ; $7f89: $27
    jr c, jr_050_7faa                             ; $7f8a: $38 $1e

    ld [hl-], a                                   ; $7f8c: $32
    adc h                                         ; $7f8d: $8c
    ld e, d                                       ; $7f8e: $5a
    inc c                                         ; $7f8f: $0c
    ld [hl], e                                    ; $7f90: $73
    call c, Call_050_7bb6                         ; $7f91: $dc $b6 $7b
    ld [hl], d                                    ; $7f94: $72
    or e                                          ; $7f95: $b3
    ld b, a                                       ; $7f96: $47
    ld h, a                                       ; $7f97: $67
    adc b                                         ; $7f98: $88
    nop                                           ; $7f99: $00
    dec de                                        ; $7f9a: $1b
    inc bc                                        ; $7f9b: $03
    ld [hl], b                                    ; $7f9c: $70
    ld b, $4f                                     ; $7f9d: $06 $4f
    cp $d1                                        ; $7f9f: $fe $d1
    set 1, h                                      ; $7fa1: $cb $cc

Jump_050_7fa3:
    ld b, h                                       ; $7fa3: $44
    ld d, h                                       ; $7fa4: $54
    adc c                                         ; $7fa5: $89
    adc l                                         ; $7fa6: $8d
    ld a, c                                       ; $7fa7: $79
    sbc e                                         ; $7fa8: $9b
    rst $38                                       ; $7fa9: $ff

jr_050_7faa:
    adc c                                         ; $7faa: $89
    ld a, [hl]                                    ; $7fab: $7e
    ld b, l                                       ; $7fac: $45
    ld a, [bc]                                    ; $7fad: $0a
    ld [hl+], a                                   ; $7fae: $22
    dec de                                        ; $7faf: $1b
    add e                                         ; $7fb0: $83
    daa                                           ; $7fb1: $27
    ld a, b                                       ; $7fb2: $78
    db $fc                                        ; $7fb3: $fc
    ld [$4311], a                                 ; $7fb4: $ea $11 $43
    ld [hl], c                                    ; $7fb7: $71
    ld [hl], l                                    ; $7fb8: $75
    cp l                                          ; $7fb9: $bd
    cp d                                          ; $7fba: $ba
    ld [hl], a                                    ; $7fbb: $77
    ld h, a                                       ; $7fbc: $67
    ld b, e                                       ; $7fbd: $43
    add [hl]                                      ; $7fbe: $86
    dec de                                        ; $7fbf: $1b
    inc a                                         ; $7fc0: $3c
    ld sp, hl                                     ; $7fc1: $f9
    ld b, a                                       ; $7fc2: $47
    rst $10                                       ; $7fc3: $d7
    cp h                                          ; $7fc4: $bc
    call $a4ff                                    ; $7fc5: $cd $ff $a4
    ld a, [$d567]                                 ; $7fc8: $fa $67 $d5
    add hl, bc                                    ; $7fcb: $09
    adc [hl]                                      ; $7fcc: $8e
    add a                                         ; $7fcd: $87
    inc c                                         ; $7fce: $0c
    and e                                         ; $7fcf: $a3
    ld d, $c3                                     ; $7fd0: $16 $c3
    inc e                                         ; $7fd2: $1c
    or a                                          ; $7fd3: $b7
    db $ed                                        ; $7fd4: $ed
    sbc [hl]                                      ; $7fd5: $9e
    call c, $d1ec                                 ; $7fd6: $dc $ec $d1
    add hl, de                                    ; $7fd9: $19
    ld [hl+], a                                   ; $7fda: $22
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

Call_050_7ff1:
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
