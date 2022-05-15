; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0f0", ROMX[$4000], BANK[$f0]

    ldh a, [$27]                                  ; $4000: $f0 $27
    ld de, $2ded                                  ; $4002: $11 $ed $2d
    call nc, $d423                                ; $4005: $d4 $23 $d4
    db $f4                                        ; $4008: $f4
    sbc $fc                                       ; $4009: $de $fc
    and $ef                                       ; $400b: $e6 $ef
    db $e4                                        ; $400d: $e4
    rst $30                                       ; $400e: $f7
    and $ff                                       ; $400f: $e6 $ff
    add sp, $05                                   ; $4011: $e8 $05
    db $f4                                        ; $4013: $f4
    or $f4                                        ; $4014: $f6 $f4
    cp $f8                                        ; $4016: $fe $f8
    ld b, $f8                                     ; $4018: $06 $f8
    dec c                                         ; $401a: $0d
    inc b                                         ; $401b: $04
    or $04                                        ; $401c: $f6 $04
    cp $08                                        ; $401e: $fe $08
    inc bc                                        ; $4020: $03
    inc d                                         ; $4021: $14
    ld a, [c]                                     ; $4022: $f2
    inc d                                         ; $4023: $14
    or $14                                        ; $4024: $f6 $14
    ld [bc], a                                    ; $4026: $02
    inc d                                         ; $4027: $14
    rlca                                          ; $4028: $07
    ld [bc], a                                    ; $4029: $02
    ld a, $9e                                     ; $402a: $3e $9e
    db $ed                                        ; $402c: $ed
    rst $38                                       ; $402d: $ff
    xor e                                         ; $402e: $ab
    rst $38                                       ; $402f: $ff
    xor c                                         ; $4030: $a9
    rst $38                                       ; $4031: $ff
    adc e                                         ; $4032: $8b
    rst $38                                       ; $4033: $ff
    sbc c                                         ; $4034: $99
    rst $38                                       ; $4035: $ff
    ld d, a                                       ; $4036: $57
    ld a, a                                       ; $4037: $7f
    ld b, l                                       ; $4038: $45
    ld a, a                                       ; $4039: $7f
    ld d, a                                       ; $403a: $57
    ld a, a                                       ; $403b: $7f
    ld b, l                                       ; $403c: $45
    ld a, a                                       ; $403d: $7f
    ld c, a                                       ; $403e: $4f
    ld a, a                                       ; $403f: $7f
    dec l                                         ; $4040: $2d
    ccf                                           ; $4041: $3f
    daa                                           ; $4042: $27
    ccf                                           ; $4043: $3f
    dec l                                         ; $4044: $2d
    ccf                                           ; $4045: $3f
    daa                                           ; $4046: $27
    ccf                                           ; $4047: $3f
    ld [hl+], a                                   ; $4048: $22
    ld a, $02                                     ; $4049: $3e $02
    ret nz                                        ; $404b: $c0

    add d                                         ; $404c: $82
    ld b, b                                       ; $404d: $40
    ret nz                                        ; $404e: $c0

    ld [bc], a                                    ; $404f: $02
    add b                                         ; $4050: $80
    inc c                                         ; $4051: $0c
    nop                                           ; $4052: $00
    ld [bc], a                                    ; $4053: $02
    ld bc, $028c                                  ; $4054: $01 $8c $02
    inc bc                                        ; $4057: $03

jr_0f0_4058:
    add l                                         ; $4058: $85
    add a                                         ; $4059: $87
    inc c                                         ; $405a: $0c
    rrca                                          ; $405b: $0f
    rra                                           ; $405c: $1f
    ld [de], a                                    ; $405d: $12
    rra                                           ; $405e: $1f
    inc d                                         ; $405f: $14
    ld d, $19                                     ; $4060: $16 $19
    ld [$0201], sp                                ; $4062: $08 $01 $02
    inc bc                                        ; $4065: $03
    sub h                                         ; $4066: $94
    rlca                                          ; $4067: $07
    dec b                                         ; $4068: $05
    rrca                                          ; $4069: $0f
    add hl, bc                                    ; $406a: $09
    ld e, $13                                     ; $406b: $1e $13
    ld a, $21                                     ; $406d: $3e $21
    ld a, h                                       ; $406f: $7c
    ld l, e                                       ; $4070: $6b
    db $fc                                        ; $4071: $fc
    add e                                         ; $4072: $83
    ld sp, hl                                     ; $4073: $f9
    and a                                         ; $4074: $a7
    and c                                         ; $4075: $a1
    rst $18                                       ; $4076: $df
    ld b, d                                       ; $4077: $42
    ld a, a                                       ; $4078: $7f
    dec a                                         ; $4079: $3d
    ccf                                           ; $407a: $3f
    ld [bc], a                                    ; $407b: $02
    rrca                                          ; $407c: $0f
    add e                                         ; $407d: $83
    ret nc                                        ; $407e: $d0

    ldh a, [$b0]                                  ; $407f: $f0 $b0
    inc bc                                        ; $4081: $03
    ldh a, [$9a]                                  ; $4082: $f0 $9a
    ld l, b                                       ; $4084: $68
    sbc b                                         ; $4085: $98
    add sp, $78                                   ; $4086: $e8 $78
    ld h, b                                       ; $4088: $60
    sbc b                                         ; $4089: $98
    ld hl, sp+$78                                 ; $408a: $f8 $78
    ld l, b                                       ; $408c: $68
    sbc b                                         ; $408d: $98
    ld hl, sp+$78                                 ; $408e: $f8 $78
    ret c                                         ; $4090: $d8

    ld hl, sp+$50                                 ; $4091: $f8 $50
    ldh a, [$e9]                                  ; $4093: $f0 $e9
    ld sp, hl                                     ; $4095: $f9
    rst $18                                       ; $4096: $df
    rst $38                                       ; $4097: $ff
    db $eb                                        ; $4098: $eb
    rst $38                                       ; $4099: $ff
    call $ebfb                                    ; $409a: $cd $fb $eb
    dec a                                         ; $409d: $3d
    ld [bc], a                                    ; $409e: $02
    dec b                                         ; $409f: $05
    ld [bc], a                                    ; $40a0: $02
    ld b, $85                                     ; $40a1: $06 $85
    rlca                                          ; $40a3: $07
    ld bc, $0702                                  ; $40a4: $01 $02 $07
    dec b                                         ; $40a7: $05
    ld [bc], a                                    ; $40a8: $02
    rlca                                          ; $40a9: $07
    add e                                         ; $40aa: $83
    nop                                           ; $40ab: $00
    inc b                                         ; $40ac: $04
    inc bc                                        ; $40ad: $03
    ld [bc], a                                    ; $40ae: $02
    rlca                                          ; $40af: $07
    sub b                                         ; $40b0: $90
    ld l, a                                       ; $40b1: $6f
    ld a, a                                       ; $40b2: $7f
    sbc d                                         ; $40b3: $9a
    rst $28                                       ; $40b4: $ef
    cpl                                           ; $40b5: $2f
    ldh a, [$f9]                                  ; $40b6: $f0 $f9
    ccf                                           ; $40b8: $3f
    cp $9e                                        ; $40b9: $fe $9e
    db $db                                        ; $40bb: $db
    rst $30                                       ; $40bc: $f7
    or l                                          ; $40bd: $b5
    rst $38                                       ; $40be: $ff
    db $eb                                        ; $40bf: $eb
    sbc a                                         ; $40c0: $9f
    ld b, $20                                     ; $40c1: $06 $20
    add d                                         ; $40c3: $82
    jr nc, jr_0f0_40d6                            ; $40c4: $30 $10

    ld [bc], a                                    ; $40c6: $02
    jr nz, jr_0f0_40cd                            ; $40c7: $20 $04

    nop                                           ; $40c9: $00
    inc b                                         ; $40ca: $04
    jr nz, jr_0f0_40d1                            ; $40cb: $20 $04

jr_0f0_40cd:
    nop                                           ; $40cd: $00
    ld [bc], a                                    ; $40ce: $02
    jr nz, jr_0f0_40d3                            ; $40cf: $20 $02

jr_0f0_40d1:
    jr nc, jr_0f0_4058                            ; $40d1: $30 $85

jr_0f0_40d3:
    jr z, jr_0f0_410d                             ; $40d3: $28 $38

    or [hl]                                       ; $40d5: $b6

jr_0f0_40d6:
    ld a, [hl]                                    ; $40d6: $7e
    push de                                       ; $40d7: $d5
    ld [bc], a                                    ; $40d8: $02
    dec sp                                        ; $40d9: $3b
    add e                                         ; $40da: $83
    ld e, [hl]                                    ; $40db: $5e
    ld c, e                                       ; $40dc: $4b
    ld a, a                                       ; $40dd: $7f
    ld [bc], a                                    ; $40de: $02
    rst $38                                       ; $40df: $ff
    inc b                                         ; $40e0: $04
    rrca                                          ; $40e1: $0f
    ld b, $1f                                     ; $40e2: $06 $1f
    add d                                         ; $40e4: $82
    ld e, $1f                                     ; $40e5: $1e $1f
    ld [bc], a                                    ; $40e7: $02
    rrca                                          ; $40e8: $0f
    adc h                                         ; $40e9: $8c
    inc c                                         ; $40ea: $0c
    rrca                                          ; $40eb: $0f
    ld c, $0f                                     ; $40ec: $0e $0f
    ld a, [de]                                    ; $40ee: $1a
    rra                                           ; $40ef: $1f
    inc d                                         ; $40f0: $14
    rra                                           ; $40f1: $1f
    ld a, [de]                                    ; $40f2: $1a
    rra                                           ; $40f3: $1f
    inc l                                         ; $40f4: $2c
    ccf                                           ; $40f5: $3f
    ld [bc], a                                    ; $40f6: $02
    add b                                         ; $40f7: $80
    or l                                          ; $40f8: $b5
    nop                                           ; $40f9: $00
    add b                                         ; $40fa: $80
    db $fc                                        ; $40fb: $fc
    jp nz, $c2fe                                  ; $40fc: $c2 $fe $c2

    ldh [rIE], a                                  ; $40ff: $e0 $ff
    ld a, l                                       ; $4101: $7d
    rst $38                                       ; $4102: $ff
    jp nz, $9fff                                  ; $4103: $c2 $ff $9f

    ldh [$b7], a                                  ; $4106: $e0 $b7
    ret z                                         ; $4108: $c8

    cpl                                           ; $4109: $2f
    ret nc                                        ; $410a: $d0

    ccf                                           ; $410b: $3f
    ret nz                                        ; $410c: $c0

jr_0f0_410d:
    ld a, l                                       ; $410d: $7d
    add d                                         ; $410e: $82
    ld c, a                                       ; $410f: $4f
    or d                                          ; $4110: $b2
    ld c, l                                       ; $4111: $4d
    or d                                          ; $4112: $b2
    db $eb                                        ; $4113: $eb
    sub [hl]                                      ; $4114: $96
    ld a, e                                       ; $4115: $7b
    add [hl]                                      ; $4116: $86
    xor l                                         ; $4117: $ad
    ld [hl], e                                    ; $4118: $73
    cp a                                          ; $4119: $bf
    ldh a, [$73]                                  ; $411a: $f0 $73
    db $fd                                        ; $411c: $fd
    ld a, [hl]                                    ; $411d: $7e
    rst $38                                       ; $411e: $ff
    and $67                                       ; $411f: $e6 $67
    and e                                         ; $4121: $a3
    ld h, e                                       ; $4122: $63
    pop hl                                        ; $4123: $e1
    ld hl, $20e0                                  ; $4124: $21 $e0 $20
    and c                                         ; $4127: $a1
    ld h, c                                       ; $4128: $61
    and b                                         ; $4129: $a0
    ld h, b                                       ; $412a: $60
    ldh [rNR41], a                                ; $412b: $e0 $20
    and b                                         ; $412d: $a0
    ld [bc], a                                    ; $412e: $02
    ld h, b                                       ; $412f: $60
    add e                                         ; $4130: $83
    ldh [rLCDC], a                                ; $4131: $e0 $40
    ret nz                                        ; $4133: $c0

    inc b                                         ; $4134: $04
    ldh [rSC], a                                  ; $4135: $e0 $02
    ld b, b                                       ; $4137: $40
    sub h                                         ; $4138: $94
    jr nz, jr_0f0_419b                            ; $4139: $20 $60

    jr nc, @+$52                                  ; $413b: $30 $50

    ld a, b                                       ; $413d: $78
    jr z, jr_0f0_41b8                             ; $413e: $28 $78

    ld [$641c], sp                                ; $4140: $08 $1c $64
    ld l, [hl]                                    ; $4143: $6e
    ld a, [hl]                                    ; $4144: $7e
    ld e, [hl]                                    ; $4145: $5e
    ld h, d                                       ; $4146: $62
    dec a                                         ; $4147: $3d
    ld l, e                                       ; $4148: $6b
    ld a, e                                       ; $4149: $7b
    ld l, l                                       ; $414a: $6d
    dec e                                         ; $414b: $1d
    rra                                           ; $414c: $1f
    ld [bc], a                                    ; $414d: $02
    ld c, $08                                     ; $414e: $0e $08
    nop                                           ; $4150: $00
    add e                                         ; $4151: $83
    ld a, [hl-]                                   ; $4152: $3a
    ccf                                           ; $4153: $3f
    dec a                                         ; $4154: $3d
    inc bc                                        ; $4155: $03
    ccf                                           ; $4156: $3f
    sbc a                                         ; $4157: $9f
    ld [hl], a                                    ; $4158: $77
    ld a, a                                       ; $4159: $7f
    ld d, a                                       ; $415a: $57
    ld a, e                                       ; $415b: $7b
    ld h, a                                       ; $415c: $67
    ld a, e                                       ; $415d: $7b
    ld l, d                                       ; $415e: $6a
    ld [hl], a                                    ; $415f: $77
    ld c, h                                       ; $4160: $4c
    ld [hl], a                                    ; $4161: $77
    ld l, d                                       ; $4162: $6a
    ld e, l                                       ; $4163: $5d
    ld l, e                                       ; $4164: $6b
    ld e, h                                       ; $4165: $5c
    sub a                                         ; $4166: $97
    add sp, -$5a                                  ; $4167: $e8 $a6
    reti                                          ; $4169: $d9


    rst $28                                       ; $416a: $ef
    sub c                                         ; $416b: $91
    db $fd                                        ; $416c: $fd
    db $d3                                        ; $416d: $d3
    db $db                                        ; $416e: $db
    rst $38                                       ; $416f: $ff
    xor [hl]                                      ; $4170: $ae
    sbc $75                                       ; $4171: $de $75
    adc [hl]                                      ; $4173: $8e
    ld [de], a                                    ; $4174: $12
    db $fd                                        ; $4175: $fd
    ld c, b                                       ; $4176: $48
    dec c                                         ; $4177: $0d
    rst $38                                       ; $4178: $ff
    adc b                                         ; $4179: $88
    ld a, a                                       ; $417a: $7f
    rst $38                                       ; $417b: $ff
    ld a, a                                       ; $417c: $7f
    rst $38                                       ; $417d: $ff
    cp $ff                                        ; $417e: $fe $ff
    cp [hl]                                       ; $4180: $be
    cp a                                          ; $4181: $bf
    ld [bc], a                                    ; $4182: $02
    add e                                         ; $4183: $83

jr_0f0_4184:
    inc b                                         ; $4184: $04
    ld bc, $1c04                                  ; $4185: $01 $04 $1c
    adc l                                         ; $4188: $8d
    ld [de], a                                    ; $4189: $12
    ld e, $02                                     ; $418a: $1e $02
    ld e, $0a                                     ; $418c: $1e $0a
    ld d, $0d                                     ; $418e: $16 $0d
    inc de                                        ; $4190: $13
    dec c                                         ; $4191: $0d
    inc de                                        ; $4192: $13
    dec e                                         ; $4193: $1d
    inc bc                                        ; $4194: $03
    inc de                                        ; $4195: $13
    ld [bc], a                                    ; $4196: $02
    rrca                                          ; $4197: $0f
    and c                                         ; $4198: $a1
    add hl, de                                    ; $4199: $19
    rra                                           ; $419a: $1f

jr_0f0_419b:
    rrca                                          ; $419b: $0f
    dec b                                         ; $419c: $05
    rra                                           ; $419d: $1f
    ld e, e                                       ; $419e: $5b
    ld [hl], l                                    ; $419f: $75
    or l                                          ; $41a0: $b5
    db $db                                        ; $41a1: $db
    ld l, c                                       ; $41a2: $69
    sbc a                                         ; $41a3: $9f
    dec [hl]                                      ; $41a4: $35
    db $eb                                        ; $41a5: $eb
    dec d                                         ; $41a6: $15
    rra                                           ; $41a7: $1f
    rla                                           ; $41a8: $17
    inc e                                         ; $41a9: $1c
    ld [de], a                                    ; $41aa: $12
    dec e                                         ; $41ab: $1d
    ld d, $19                                     ; $41ac: $16 $19
    ld a, [hl-]                                   ; $41ae: $3a
    daa                                           ; $41af: $27
    ld e, e                                       ; $41b0: $5b
    ld l, h                                       ; $41b1: $6c
    ld c, d                                       ; $41b2: $4a
    ld [hl], l                                    ; $41b3: $75
    ld l, d                                       ; $41b4: $6a
    ld a, a                                       ; $41b5: $7f
    ld l, b                                       ; $41b6: $68
    ld d, a                                       ; $41b7: $57

jr_0f0_41b8:
    and [hl]                                      ; $41b8: $a6
    ei                                            ; $41b9: $fb
    ld [bc], a                                    ; $41ba: $02
    ld a, a                                       ; $41bb: $7f
    add h                                         ; $41bc: $84
    ld d, a                                       ; $41bd: $57
    ld l, h                                       ; $41be: $6c
    ld [hl], l                                    ; $41bf: $75
    ld c, [hl]                                    ; $41c0: $4e
    ld [bc], a                                    ; $41c1: $02
    dec sp                                        ; $41c2: $3b
    inc b                                         ; $41c3: $04
    nop                                           ; $41c4: $00
    sbc d                                         ; $41c5: $9a
    ld b, $0e                                     ; $41c6: $06 $0e
    ld a, [bc]                                    ; $41c8: $0a
    ld c, $0a                                     ; $41c9: $0e $0a
    ld c, $06                                     ; $41cb: $0e $06
    ld c, $06                                     ; $41cd: $0e $06
    ld c, $0a                                     ; $41cf: $0e $0a
    ld c, $0d                                     ; $41d1: $0e $0d
    dec bc                                        ; $41d3: $0b
    ld b, $0a                                     ; $41d4: $06 $0a
    add hl, bc                                    ; $41d6: $09
    rlca                                          ; $41d7: $07
    dec b                                         ; $41d8: $05
    rrca                                          ; $41d9: $0f
    ld a, [bc]                                    ; $41da: $0a
    ld c, $06                                     ; $41db: $0e $06
    ld c, $04                                     ; $41dd: $0e $04
    inc c                                         ; $41df: $0c
    ld [bc], a                                    ; $41e0: $02
    ld [$0008], sp                                ; $41e1: $08 $08 $00
    inc b                                         ; $41e4: $04
    add b                                         ; $41e5: $80
    adc [hl]                                      ; $41e6: $8e
    db $ed                                        ; $41e7: $ed
    db $db                                        ; $41e8: $db
    ld d, a                                       ; $41e9: $57
    ld l, e                                       ; $41ea: $6b
    jr z, jr_0f0_422c                             ; $41eb: $28 $3f

    inc de                                        ; $41ed: $13
    rra                                           ; $41ee: $1f
    dec e                                         ; $41ef: $1d
    rra                                           ; $41f0: $1f
    dec bc                                        ; $41f1: $0b
    inc c                                         ; $41f2: $0c
    dec b                                         ; $41f3: $05
    ld b, $02                                     ; $41f4: $06 $02
    inc bc                                        ; $41f6: $03
    stop                                          ; $41f7: $10 $00
    ld [bc], a                                    ; $41f9: $02
    jr jr_0f0_4184                                ; $41fa: $18 $88

    inc c                                         ; $41fc: $0c
    inc e                                         ; $41fd: $1c
    inc d                                         ; $41fe: $14
    inc e                                         ; $41ff: $1c
    dec bc                                        ; $4200: $0b
    rla                                           ; $4201: $17
    ld d, $1a                                     ; $4202: $16 $1a
    ld [bc], a                                    ; $4204: $02
    inc e                                         ; $4205: $1c
    ld [bc], a                                    ; $4206: $02
    db $10                                        ; $4207: $10
    ld a, [bc]                                    ; $4208: $0a
    nop                                           ; $4209: $00
    rst $38                                       ; $420a: $ff
    dec h                                         ; $420b: $25
    db $10                                        ; $420c: $10
    db $ed                                        ; $420d: $ed
    dec l                                         ; $420e: $2d
    call nc, $d523                                ; $420f: $d4 $23 $d5
    or $da                                        ; $4212: $f6 $da
    cp $ea                                        ; $4214: $fe $ea
    db $f4                                        ; $4216: $f4
    jp hl                                         ; $4217: $e9


    db $fc                                        ; $4218: $fc
    add sp, $03                                   ; $4219: $e8 $03
    ld sp, hl                                     ; $421b: $f9
    ld hl, sp-$08                                 ; $421c: $f8 $f8
    nop                                           ; $421e: $00
    ld hl, sp+$08                                 ; $421f: $f8 $08
    ld b, $f4                                     ; $4221: $06 $f4
    ld [$08fc], sp                                ; $4223: $08 $fc $08
    inc b                                         ; $4226: $04
    ld [$1505], sp                                ; $4227: $08 $05 $15
    ld a, [c]                                     ; $422a: $f2
    dec d                                         ; $422b: $15

jr_0f0_422c:
    ld a, [$0215]                                 ; $422c: $fa $15 $02
    dec d                                         ; $422f: $15
    dec b                                         ; $4230: $05
    ld [bc], a                                    ; $4231: $02
    ld a, $9a                                     ; $4232: $3e $9a
    ld e, d                                       ; $4234: $5a
    ld a, [hl]                                    ; $4235: $7e
    and l                                         ; $4236: $a5
    rst $38                                       ; $4237: $ff
    sub a                                         ; $4238: $97
    rst $38                                       ; $4239: $ff
    ld c, e                                       ; $423a: $4b
    ld a, a                                       ; $423b: $7f
    ld c, d                                       ; $423c: $4a
    ld a, a                                       ; $423d: $7f
    dec hl                                        ; $423e: $2b
    ccf                                           ; $423f: $3f
    dec h                                         ; $4240: $25
    ccf                                           ; $4241: $3f
    ld de, $0b1f                                  ; $4242: $11 $1f $0b
    rrca                                          ; $4245: $0f
    ld [$050f], sp                                ; $4246: $08 $0f $05
    rlca                                          ; $4249: $07
    inc b                                         ; $424a: $04
    rlca                                          ; $424b: $07
    ld [bc], a                                    ; $424c: $02
    inc bc                                        ; $424d: $03
    inc b                                         ; $424e: $04
    ld bc, $8004                                  ; $424f: $01 $04 $80
    add e                                         ; $4252: $83
    ld b, b                                       ; $4253: $40
    ret nz                                        ; $4254: $c0

    ld b, b                                       ; $4255: $40
    inc bc                                        ; $4256: $03
    ret nz                                        ; $4257: $c0

    add c                                         ; $4258: $81
    or b                                          ; $4259: $b0
    inc bc                                        ; $425a: $03
    ldh a, [$92]                                  ; $425b: $f0 $92
    and b                                         ; $425d: $a0
    ldh [$50], a                                  ; $425e: $e0 $50
    ldh a, [$50]                                  ; $4260: $f0 $50
    ldh a, [$28]                                  ; $4262: $f0 $28
    ld hl, sp-$58                                 ; $4264: $f8 $a8
    ld hl, sp-$68                                 ; $4266: $f8 $98
    ld hl, sp+$74                                 ; $4268: $f8 $74
    ld l, h                                       ; $426a: $6c
    cp $ce                                        ; $426b: $fe $ce
    ld e, e                                       ; $426d: $5b
    rst $20                                       ; $426e: $e7
    ld [bc], a                                    ; $426f: $02
    inc bc                                        ; $4270: $03
    sub h                                         ; $4271: $94
    dec c                                         ; $4272: $0d
    ld c, $37                                     ; $4273: $0e $37
    jr c, jr_0f0_42d6                             ; $4275: $38 $5f

    ld h, h                                       ; $4277: $64
    ld a, a                                       ; $4278: $7f
    ld b, d                                       ; $4279: $42
    cp $b1                                        ; $427a: $fe $b1
    ld sp, hl                                     ; $427c: $f9
    rst $20                                       ; $427d: $e7
    di                                            ; $427e: $f3
    rst $08                                       ; $427f: $cf
    ld e, a                                       ; $4280: $5f
    ld a, h                                       ; $4281: $7c
    dec h                                         ; $4282: $25
    ld a, $1a                                     ; $4283: $3e $1a
    rra                                           ; $4285: $1f
    ld [bc], a                                    ; $4286: $02
    rlca                                          ; $4287: $07
    ld b, $01                                     ; $4288: $06 $01
    ld [bc], a                                    ; $428a: $02
    inc bc                                        ; $428b: $03
    ld [bc], a                                    ; $428c: $02
    ret nz                                        ; $428d: $c0

    sub a                                         ; $428e: $97
    di                                            ; $428f: $f3
    dec e                                         ; $4290: $1d
    push af                                       ; $4291: $f5
    ld c, [hl]                                    ; $4292: $4e
    rst $20                                       ; $4293: $e7
    rra                                           ; $4294: $1f
    adc [hl]                                      ; $4295: $8e
    ld a, a                                       ; $4296: $7f
    scf                                           ; $4297: $37
    push af                                       ; $4298: $f5
    ld b, [hl]                                    ; $4299: $46
    push bc                                       ; $429a: $c5
    add [hl]                                      ; $429b: $86
    add a                                         ; $429c: $87
    ld l, a                                       ; $429d: $6f
    jp hl                                         ; $429e: $e9


    call c, $be7f                                 ; $429f: $dc $7f $be
    ld l, l                                       ; $42a2: $6d
    xor a                                         ; $42a3: $af
    ld a, [hl]                                    ; $42a4: $7e
    ld a, d                                       ; $42a5: $7a
    ld [bc], a                                    ; $42a6: $02
    rst $38                                       ; $42a7: $ff
    add l                                         ; $42a8: $85
    cp $ff                                        ; $42a9: $fe $ff
    cp $f6                                        ; $42ab: $fe $f6
    rst $38                                       ; $42ad: $ff
    ld [bc], a                                    ; $42ae: $02
    db $10                                        ; $42af: $10
    ld [bc], a                                    ; $42b0: $02
    ld [$388c], sp                                ; $42b1: $08 $8c $38
    ld a, b                                       ; $42b4: $78
    ld a, h                                       ; $42b5: $7c
    ld h, h                                       ; $42b6: $64
    ld l, $72                                     ; $42b7: $2e $72
    ld e, [hl]                                    ; $42b9: $5e
    ld a, [hl]                                    ; $42ba: $7e
    ld [hl-], a                                   ; $42bb: $32
    ld a, [hl]                                    ; $42bc: $7e
    ld c, a                                       ; $42bd: $4f
    ld a, c                                       ; $42be: $79
    ld [bc], a                                    ; $42bf: $02
    ld a, [hl]                                    ; $42c0: $7e
    add [hl]                                      ; $42c1: $86
    inc h                                         ; $42c2: $24
    ld a, h                                       ; $42c3: $7c
    ld e, b                                       ; $42c4: $58
    jr c, jr_0f0_433b                             ; $42c5: $38 $74

    ld c, h                                       ; $42c7: $4c
    ld [bc], a                                    ; $42c8: $02
    ld a, b                                       ; $42c9: $78
    ld [bc], a                                    ; $42ca: $02
    ld a, h                                       ; $42cb: $7c
    add h                                         ; $42cc: $84
    ld l, d                                       ; $42cd: $6a
    ld a, $57                                     ; $42ce: $3e $57
    dec a                                         ; $42d0: $3d
    ld [bc], a                                    ; $42d1: $02
    rrca                                          ; $42d2: $0f
    ld [bc], a                                    ; $42d3: $02
    ld a, a                                       ; $42d4: $7f
    add d                                         ; $42d5: $82

jr_0f0_42d6:
    ld a, e                                       ; $42d6: $7b
    ld a, a                                       ; $42d7: $7f
    ld [bc], a                                    ; $42d8: $02
    ccf                                           ; $42d9: $3f
    ret c                                         ; $42da: $d8

    inc e                                         ; $42db: $1c
    rra                                           ; $42dc: $1f
    ld e, $1f                                     ; $42dd: $1e $1f
    inc d                                         ; $42df: $14
    rra                                           ; $42e0: $1f
    ld a, [hl-]                                   ; $42e1: $3a
    ccf                                           ; $42e2: $3f
    ld l, h                                       ; $42e3: $6c
    ld a, a                                       ; $42e4: $7f
    ld e, b                                       ; $42e5: $58
    ld a, a                                       ; $42e6: $7f
    add l                                         ; $42e7: $85
    rst $38                                       ; $42e8: $ff
    ldh a, [rIE]                                  ; $42e9: $f0 $ff
    ld a, [$fcff]                                 ; $42eb: $fa $ff $fc
    rst $38                                       ; $42ee: $ff
    ld a, a                                       ; $42ef: $7f
    rst $38                                       ; $42f0: $ff
    adc a                                         ; $42f1: $8f
    rst $38                                       ; $42f2: $ff
    rrca                                          ; $42f3: $0f
    ld [bc], a                                    ; $42f4: $02
    rst $30                                       ; $42f5: $f7
    cp $fa                                        ; $42f6: $fe $fa
    rst $38                                       ; $42f8: $ff
    add l                                         ; $42f9: $85
    rst $38                                       ; $42fa: $ff
    ld c, l                                       ; $42fb: $4d
    di                                            ; $42fc: $f3
    ld l, $d1                                     ; $42fd: $2e $d1
    ld e, a                                       ; $42ff: $5f
    and b                                         ; $4300: $a0
    rst $38                                       ; $4301: $ff
    nop                                           ; $4302: $00
    ei                                            ; $4303: $fb
    inc b                                         ; $4304: $04
    cp $01                                        ; $4305: $fe $01
    ld a, [de]                                    ; $4307: $1a
    push hl                                       ; $4308: $e5
    scf                                           ; $4309: $37
    call z, Call_000_1cef                         ; $430a: $cc $ef $1c
    ld l, d                                       ; $430d: $6a
    sbc l                                         ; $430e: $9d
    dec b                                         ; $430f: $05
    ei                                            ; $4310: $fb
    ld d, e                                       ; $4311: $53
    rst $38                                       ; $4312: $ff
    cp b                                          ; $4313: $b8
    ret c                                         ; $4314: $d8

    ld a, h                                       ; $4315: $7c
    call nz, $eed2                                ; $4316: $c4 $d2 $ee
    or $fe                                        ; $4319: $f6 $fe
    xor [hl]                                      ; $431b: $ae
    or d                                          ; $431c: $b2
    cp l                                          ; $431d: $bd
    or e                                          ; $431e: $b3
    cp l                                          ; $431f: $bd
    and a                                         ; $4320: $a7
    cp l                                          ; $4321: $bd
    and e                                         ; $4322: $a3
    sbc l                                         ; $4323: $9d
    sbc e                                         ; $4324: $9b
    sbc a                                         ; $4325: $9f
    sub e                                         ; $4326: $93
    sbc a                                         ; $4327: $9f
    sub l                                         ; $4328: $95
    xor l                                         ; $4329: $ad
    or e                                          ; $432a: $b3
    cp a                                          ; $432b: $bf
    and c                                         ; $432c: $a1
    cp l                                          ; $432d: $bd
    xor e                                         ; $432e: $ab
    dec l                                         ; $432f: $2d
    dec sp                                        ; $4330: $3b
    ld e, $16                                     ; $4331: $1e $16
    ld b, $10                                     ; $4333: $06 $10
    sbc d                                         ; $4335: $9a
    ld d, $19                                     ; $4336: $16 $19
    dec h                                         ; $4338: $25
    dec sp                                        ; $4339: $3b
    dec hl                                        ; $433a: $2b

jr_0f0_433b:
    ld [hl], $33                                  ; $433b: $36 $33
    inc l                                         ; $433d: $2c
    scf                                           ; $433e: $37
    jr z, jr_0f0_4364                             ; $433f: $28 $23

    inc a                                         ; $4341: $3c
    ld [hl-], a                                   ; $4342: $32
    dec l                                         ; $4343: $2d
    ld d, h                                       ; $4344: $54
    ld l, e                                       ; $4345: $6b
    ld a, c                                       ; $4346: $79
    ld c, a                                       ; $4347: $4f
    ld l, e                                       ; $4348: $6b
    ld a, a                                       ; $4349: $7f
    ld [hl], a                                    ; $434a: $77
    ld c, a                                       ; $434b: $4f
    rst $38                                       ; $434c: $ff
    rst $28                                       ; $434d: $ef
    add e                                         ; $434e: $83
    rst $38                                       ; $434f: $ff
    ld [bc], a                                    ; $4350: $02
    rrca                                          ; $4351: $0f
    ld [bc], a                                    ; $4352: $02
    rst $38                                       ; $4353: $ff
    adc l                                         ; $4354: $8d
    ld a, a                                       ; $4355: $7f
    rst $38                                       ; $4356: $ff
    cp a                                          ; $4357: $bf
    ld a, a                                       ; $4358: $7f
    cp a                                          ; $4359: $bf
    ld a, a                                       ; $435a: $7f
    cp a                                          ; $435b: $bf
    ld a, a                                       ; $435c: $7f
    rra                                           ; $435d: $1f
    rst $38                                       ; $435e: $ff
    ccf                                           ; $435f: $3f
    rst $38                                       ; $4360: $ff
    ld e, a                                       ; $4361: $5f
    inc bc                                        ; $4362: $03
    rst $18                                       ; $4363: $df

jr_0f0_4364:
    ld [bc], a                                    ; $4364: $02
    add b                                         ; $4365: $80
    ld b, $00                                     ; $4366: $06 $00
    ld [bc], a                                    ; $4368: $02
    ld bc, $0282                                  ; $4369: $01 $82 $02
    inc bc                                        ; $436c: $03
    ld [bc], a                                    ; $436d: $02
    ld sp, hl                                     ; $436e: $f9
    ld [bc], a                                    ; $436f: $02
    ld hl, sp+$02                                 ; $4370: $f8 $02
    ldh a, [$9a]                                  ; $4372: $f0 $9a
    add sp, -$08                                  ; $4374: $e8 $f8
    call nz, $cafc                                ; $4376: $c4 $fc $ca
    or $ee                                        ; $4379: $f6 $ee
    ld a, [c]                                     ; $437b: $f2
    rst $28                                       ; $437c: $ef
    pop de                                        ; $437d: $d1
    sbc l                                         ; $437e: $9d
    db $e3                                        ; $437f: $e3
    push de                                       ; $4380: $d5
    db $eb                                        ; $4381: $eb
    ld [hl+], a                                   ; $4382: $22
    ccf                                           ; $4383: $3f
    dec hl                                        ; $4384: $2b
    inc a                                         ; $4385: $3c
    ld b, a                                       ; $4386: $47
    ld a, a                                       ; $4387: $7f
    push de                                       ; $4388: $d5
    db $eb                                        ; $4389: $eb
    dec l                                         ; $438a: $2d
    di                                            ; $438b: $f3
    ld a, d                                       ; $438c: $7a
    or [hl]                                       ; $438d: $b6
    ld [bc], a                                    ; $438e: $02
    ld bc, $0012                                  ; $438f: $01 $12 $00
    inc b                                         ; $4392: $04
    ld bc, $000a                                  ; $4393: $01 $0a $00
    sub [hl]                                      ; $4396: $96
    add hl, hl                                    ; $4397: $29
    ccf                                           ; $4398: $3f
    ld h, $39                                     ; $4399: $26 $39
    ld h, h                                       ; $439b: $64
    ld e, e                                       ; $439c: $5b
    ld a, e                                       ; $439d: $7b
    ld h, [hl]                                    ; $439e: $66
    ld b, c                                       ; $439f: $41
    ld a, [hl]                                    ; $43a0: $7e
    halt                                          ; $43a1: $76
    ld e, l                                       ; $43a2: $5d
    ld e, c                                       ; $43a3: $59
    ld h, [hl]                                    ; $43a4: $66
    adc h                                         ; $43a5: $8c
    rst $30                                       ; $43a6: $f7
    or a                                          ; $43a7: $b7
    rst $38                                       ; $43a8: $ff
    cp $cd                                        ; $43a9: $fe $cd
    xor d                                         ; $43ab: $aa
    db $dd                                        ; $43ac: $dd
    ld [bc], a                                    ; $43ad: $02
    ld [hl], a                                    ; $43ae: $77
    ld [$8600], sp                                ; $43af: $08 $00 $86
    ld b, b                                       ; $43b2: $40
    ret nz                                        ; $43b3: $c0

    ld b, b                                       ; $43b4: $40
    ret nz                                        ; $43b5: $c0

    ld h, c                                       ; $43b6: $61
    pop hl                                        ; $43b7: $e1
    ld [bc], a                                    ; $43b8: $02
    ldh [$89], a                                  ; $43b9: $e0 $89
    and b                                         ; $43bb: $a0
    ldh [$a0], a                                  ; $43bc: $e0 $a0
    ld h, b                                       ; $43be: $60
    ld b, b                                       ; $43bf: $40
    ret nz                                        ; $43c0: $c0

    and b                                         ; $43c1: $a0
    ldh [rLCDC], a                                ; $43c2: $e0 $40
    inc bc                                        ; $43c4: $03
    ret nz                                        ; $43c5: $c0

    ld [bc], a                                    ; $43c6: $02
    add b                                         ; $43c7: $80
    ld c, $00                                     ; $43c8: $0e $00
    adc [hl]                                      ; $43ca: $8e
    ld d, e                                       ; $43cb: $53
    cp l                                          ; $43cc: $bd
    sub l                                         ; $43cd: $95
    ei                                            ; $43ce: $fb
    xor $d7                                       ; $43cf: $ee $d7
    ld h, c                                       ; $43d1: $61
    ld a, a                                       ; $43d2: $7f
    ld e, [hl]                                    ; $43d3: $5e
    ld a, a                                       ; $43d4: $7f
    dec sp                                        ; $43d5: $3b
    scf                                           ; $43d6: $37
    dec d                                         ; $43d7: $15
    dec de                                        ; $43d8: $1b
    ld [bc], a                                    ; $43d9: $02
    ld c, $10                                     ; $43da: $0e $10
    nop                                           ; $43dc: $00
    inc b                                         ; $43dd: $04
    inc b                                         ; $43de: $04
    ld [bc], a                                    ; $43df: $02
    ld b, $81                                     ; $43e0: $06 $81
    dec b                                         ; $43e2: $05
    ld [bc], a                                    ; $43e3: $02
    inc bc                                        ; $43e4: $03
    add c                                         ; $43e5: $81
    dec b                                         ; $43e6: $05
    ld [bc], a                                    ; $43e7: $02
    ld b, $0e                                     ; $43e8: $06 $0e
    nop                                           ; $43ea: $00
    rst $38                                       ; $43eb: $ff
    inc hl                                        ; $43ec: $23
    rrca                                          ; $43ed: $0f
    db $ed                                        ; $43ee: $ed
    dec l                                         ; $43ef: $2d
    call nc, $d723                                ; $43f0: $d4 $23 $d7
    inc bc                                        ; $43f3: $03
    reti                                          ; $43f4: $d9


    ld b, $ed                                     ; $43f5: $06 $ed
    ei                                            ; $43f7: $fb
    jp hl                                         ; $43f8: $e9


    inc bc                                        ; $43f9: $03
    jp hl                                         ; $43fa: $e9


    ld [$f7f7], sp                                ; $43fb: $08 $f7 $f7
    ld sp, hl                                     ; $43fe: $f9
    rst $38                                       ; $43ff: $ff
    ld sp, hl                                     ; $4400: $f9
    ld b, $07                                     ; $4401: $06 $07
    di                                            ; $4403: $f3
    rlca                                          ; $4404: $07
    ei                                            ; $4405: $fb
    add hl, bc                                    ; $4406: $09
    inc bc                                        ; $4407: $03
    db $10                                        ; $4408: $10
    dec b                                         ; $4409: $05
    rla                                           ; $440a: $17
    ld a, [c]                                     ; $440b: $f2
    rla                                           ; $440c: $17
    ld a, [$fd17]                                 ; $440d: $fa $17 $fd
    ld [bc], a                                    ; $4410: $02
    ccf                                           ; $4411: $3f
    sbc [hl]                                      ; $4412: $9e
    ld d, l                                       ; $4413: $55
    ld a, a                                       ; $4414: $7f
    adc d                                         ; $4415: $8a
    rst $38                                       ; $4416: $ff
    adc d                                         ; $4417: $8a
    rst $38                                       ; $4418: $ff
    adc d                                         ; $4419: $8a
    rst $38                                       ; $441a: $ff
    ld b, [hl]                                    ; $441b: $46
    ld a, a                                       ; $441c: $7f
    ld b, [hl]                                    ; $441d: $46
    ld a, a                                       ; $441e: $7f
    ld b, l                                       ; $441f: $45
    ld a, a                                       ; $4420: $7f
    ld hl, $213f                                  ; $4421: $21 $3f $21
    ccf                                           ; $4424: $3f
    dec d                                         ; $4425: $15
    rra                                           ; $4426: $1f
    ld de, $1b1f                                  ; $4427: $11 $1f $1b
    rra                                           ; $442a: $1f
    ld [$0c0f], sp                                ; $442b: $08 $0f $0c
    rrca                                          ; $442e: $0f
    inc b                                         ; $442f: $04
    rlca                                          ; $4430: $07
    ld a, [bc]                                    ; $4431: $0a
    inc b                                         ; $4432: $04
    add e                                         ; $4433: $83
    ld [bc], a                                    ; $4434: $02
    ld b, $02                                     ; $4435: $06 $02
    inc bc                                        ; $4437: $03
    ld b, $83                                     ; $4438: $06 $83
    ld [bc], a                                    ; $443a: $02
    ld b, $02                                     ; $443b: $06 $02
    inc bc                                        ; $443d: $03
    ld b, $04                                     ; $443e: $06 $04
    rlca                                          ; $4440: $07
    add [hl]                                      ; $4441: $86
    dec b                                         ; $4442: $05
    rlca                                          ; $4443: $07
    daa                                           ; $4444: $27
    ccf                                           ; $4445: $3f
    dec d                                         ; $4446: $15
    rra                                           ; $4447: $1f
    ld [bc], a                                    ; $4448: $02
    rrca                                          ; $4449: $0f
    sub c                                         ; $444a: $91
    ld a, [de]                                    ; $444b: $1a
    rla                                           ; $444c: $17
    ccf                                           ; $444d: $3f
    jr nc, jr_0f0_447d                            ; $444e: $30 $2d

    ccf                                           ; $4450: $3f
    add hl, sp                                    ; $4451: $39
    ld a, $50                                     ; $4452: $3e $50
    ld a, a                                       ; $4454: $7f
    ld e, h                                       ; $4455: $5c
    ld a, a                                       ; $4456: $7f
    ld d, e                                       ; $4457: $53
    ld a, a                                       ; $4458: $7f
    ld [hl], a                                    ; $4459: $77
    ld a, c                                       ; $445a: $79
    ei                                            ; $445b: $fb
    inc bc                                        ; $445c: $03
    rst $38                                       ; $445d: $ff
    add c                                         ; $445e: $81
    db $fd                                        ; $445f: $fd
    inc bc                                        ; $4460: $03
    rst $38                                       ; $4461: $ff
    xor l                                         ; $4462: $ad
    rst $18                                       ; $4463: $df
    rst $38                                       ; $4464: $ff
    db $fd                                        ; $4465: $fd
    rst $38                                       ; $4466: $ff
    ld hl, sp-$01                                 ; $4467: $f8 $ff
    ld [bc], a                                    ; $4469: $02
    inc bc                                        ; $446a: $03
    ld a, [hl+]                                   ; $446b: $2a
    dec hl                                        ; $446c: $2b
    ld e, $1f                                     ; $446d: $1e $1f
    ld l, a                                       ; $446f: $6f
    ld [hl], e                                    ; $4470: $73
    db $ed                                        ; $4471: $ed
    di                                            ; $4472: $f3
    db $db                                        ; $4473: $db
    ld a, a                                       ; $4474: $7f
    and $3f                                       ; $4475: $e6 $3f
    ld a, h                                       ; $4477: $7c
    add a                                         ; $4478: $87
    ld a, [$c505]                                 ; $4479: $fa $05 $c5
    ccf                                           ; $447c: $3f

jr_0f0_447d:
    dec sp                                        ; $447d: $3b
    rst $38                                       ; $447e: $ff
    sbc $fe                                       ; $447f: $de $fe
    or $ee                                        ; $4481: $f6 $ee
    ld a, [hl]                                    ; $4483: $7e
    cp $ed                                        ; $4484: $fe $ed
    rst $38                                       ; $4486: $ff
    db $dd                                        ; $4487: $dd
    cp a                                          ; $4488: $bf
    inc d                                         ; $4489: $14
    inc e                                         ; $448a: $1c
    inc c                                         ; $448b: $0c
    inc e                                         ; $448c: $1c
    inc b                                         ; $448d: $04
    inc e                                         ; $448e: $1c
    inc d                                         ; $448f: $14
    inc bc                                        ; $4490: $03
    inc e                                         ; $4491: $1c
    adc l                                         ; $4492: $8d
    ld c, $12                                     ; $4493: $0e $12
    rra                                           ; $4495: $1f
    dec c                                         ; $4496: $0d
    ld c, $12                                     ; $4497: $0e $12
    rra                                           ; $4499: $1f
    dec b                                         ; $449a: $05
    ld a, [de]                                    ; $449b: $1a
    ld e, $14                                     ; $449c: $1e $14
    inc e                                         ; $449e: $1c
    inc d                                         ; $449f: $14
    inc bc                                        ; $44a0: $03
    inc e                                         ; $44a1: $1c
    add [hl]                                      ; $44a2: $86
    inc d                                         ; $44a3: $14
    inc e                                         ; $44a4: $1c
    inc d                                         ; $44a5: $14
    inc e                                         ; $44a6: $1c
    inc d                                         ; $44a7: $14
    inc e                                         ; $44a8: $1c
    inc b                                         ; $44a9: $04
    db $10                                        ; $44aa: $10
    inc b                                         ; $44ab: $04
    jr nc, jr_0f0_44b0                            ; $44ac: $30 $02

    db $10                                        ; $44ae: $10
    ld [bc], a                                    ; $44af: $02

jr_0f0_44b0:
    nop                                           ; $44b0: $00
    ld [bc], a                                    ; $44b1: $02
    rrca                                          ; $44b2: $0f
    adc a                                         ; $44b3: $8f
    ld a, [bc]                                    ; $44b4: $0a
    rrca                                          ; $44b5: $0f
    inc c                                         ; $44b6: $0c
    rrca                                          ; $44b7: $0f
    ld d, $1f                                     ; $44b8: $16 $1f
    dec a                                         ; $44ba: $3d
    ccf                                           ; $44bb: $3f
    ld a, [hl+]                                   ; $44bc: $2a
    ccf                                           ; $44bd: $3f
    ld h, l                                       ; $44be: $65
    ld a, [hl]                                    ; $44bf: $7e
    ld a, c                                       ; $44c0: $79
    ld a, a                                       ; $44c1: $7f
    db $fd                                        ; $44c2: $fd
    inc bc                                        ; $44c3: $03
    rst $38                                       ; $44c4: $ff
    and b                                         ; $44c5: $a0
    rlca                                          ; $44c6: $07
    add hl, bc                                    ; $44c7: $09
    ld a, [bc]                                    ; $44c8: $0a
    dec c                                         ; $44c9: $0d
    inc c                                         ; $44ca: $0c
    rrca                                          ; $44cb: $0f
    inc bc                                        ; $44cc: $03
    rrca                                          ; $44cd: $0f
    ld d, c                                       ; $44ce: $51
    rst $38                                       ; $44cf: $ff
    xor [hl]                                      ; $44d0: $ae
    di                                            ; $44d1: $f3
    ccf                                           ; $44d2: $3f
    ret nz                                        ; $44d3: $c0

    ld a, e                                       ; $44d4: $7b
    add h                                         ; $44d5: $84
    rla                                           ; $44d6: $17
    add sp, -$41                                  ; $44d7: $e8 $bf
    ret nz                                        ; $44d9: $c0

    ld c, [hl]                                    ; $44da: $4e
    or c                                          ; $44db: $b1
    adc [hl]                                      ; $44dc: $8e
    ld [hl], c                                    ; $44dd: $71
    ld e, e                                       ; $44de: $5b
    and a                                         ; $44df: $a7
    ld a, [de]                                    ; $44e0: $1a
    rst $20                                       ; $44e1: $e7
    sub b                                         ; $44e2: $90
    rst $38                                       ; $44e3: $ff
    push bc                                       ; $44e4: $c5
    rst $38                                       ; $44e5: $ff
    ld [bc], a                                    ; $44e6: $02
    ld a, [hl]                                    ; $44e7: $7e
    add c                                         ; $44e8: $81
    ld l, h                                       ; $44e9: $6c
    ld [bc], a                                    ; $44ea: $02
    ld a, h                                       ; $44eb: $7c
    cp e                                          ; $44ec: $bb
    ld d, h                                       ; $44ed: $54
    ld d, [hl]                                    ; $44ee: $56
    ld a, [hl]                                    ; $44ef: $7e
    ld a, d                                       ; $44f0: $7a
    ld a, [hl]                                    ; $44f1: $7e
    halt                                          ; $44f2: $76
    ld a, d                                       ; $44f3: $7a
    ld a, $72                                     ; $44f4: $3e $72
    ld a, [hl]                                    ; $44f6: $7e
    ld [hl-], a                                   ; $44f7: $32
    ld d, [hl]                                    ; $44f8: $56
    ld a, [hl-]                                   ; $44f9: $3a
    ld a, c                                       ; $44fa: $79
    rra                                           ; $44fb: $1f
    ld e, l                                       ; $44fc: $5d
    ccf                                           ; $44fd: $3f
    ld e, e                                       ; $44fe: $5b
    dec a                                         ; $44ff: $3d
    ld a, a                                       ; $4500: $7f
    ld sp, $7b3d                                  ; $4501: $31 $3d $7b
    ld a, [hl]                                    ; $4504: $7e
    ld [hl], d                                    ; $4505: $72
    ld a, h                                       ; $4506: $7c
    ld h, h                                       ; $4507: $64
    dec bc                                        ; $4508: $0b
    rrca                                          ; $4509: $0f
    inc c                                         ; $450a: $0c
    rrca                                          ; $450b: $0f
    add hl, bc                                    ; $450c: $09
    ld c, $1a                                     ; $450d: $0e $1a
    dec e                                         ; $450f: $1d
    dec d                                         ; $4510: $15
    dec de                                        ; $4511: $1b
    dec e                                         ; $4512: $1d
    ld [de], a                                    ; $4513: $12
    dec de                                        ; $4514: $1b
    inc d                                         ; $4515: $14
    ld hl, $2b3e                                  ; $4516: $21 $3e $2b
    inc [hl]                                      ; $4519: $34
    jr z, jr_0f0_4553                             ; $451a: $28 $37

    inc [hl]                                      ; $451c: $34
    cpl                                           ; $451d: $2f
    ld l, a                                       ; $451e: $6f
    ld a, a                                       ; $451f: $7f
    ld [hl], a                                    ; $4520: $77
    ld c, a                                       ; $4521: $4f
    ld [hl], a                                    ; $4522: $77
    ld a, a                                       ; $4523: $7f
    xor c                                         ; $4524: $a9
    rst $30                                       ; $4525: $f7
    call nz, $02bf                                ; $4526: $c4 $bf $02
    ldh a, [$82]                                  ; $4529: $f0 $82
    ld [hl], b                                    ; $452b: $70
    ldh a, [rSC]                                  ; $452c: $f0 $02
    rst $38                                       ; $452e: $ff
    adc l                                         ; $452f: $8d
    cp a                                          ; $4530: $bf
    rst $38                                       ; $4531: $ff
    rst $18                                       ; $4532: $df
    ccf                                           ; $4533: $3f
    rst $38                                       ; $4534: $ff
    rra                                           ; $4535: $1f
    rst $18                                       ; $4536: $df
    ccf                                           ; $4537: $3f
    sbc a                                         ; $4538: $9f
    ld a, a                                       ; $4539: $7f
    rra                                           ; $453a: $1f
    rst $38                                       ; $453b: $ff
    ld l, a                                       ; $453c: $6f
    inc bc                                        ; $453d: $03
    rst $28                                       ; $453e: $ef
    ld [bc], a                                    ; $453f: $02
    adc $02                                       ; $4540: $ce $02
    add b                                         ; $4542: $80
    inc b                                         ; $4543: $04
    nop                                           ; $4544: $00
    ld [bc], a                                    ; $4545: $02
    add c                                         ; $4546: $81
    ld [bc], a                                    ; $4547: $02
    ei                                            ; $4548: $fb
    ld [bc], a                                    ; $4549: $02
    db $fc                                        ; $454a: $fc
    ld [bc], a                                    ; $454b: $02
    ld hl, sp-$66                                 ; $454c: $f8 $9a
    db $e4                                        ; $454e: $e4
    db $fc                                        ; $454f: $fc
    ld [$fdf6], a                                 ; $4550: $ea $f6 $fd

jr_0f0_4553:
    di                                            ; $4553: $f3
    rst $10                                       ; $4554: $d7
    ld sp, hl                                     ; $4555: $f9
    rst $10                                       ; $4556: $d7
    add sp, -$32                                  ; $4557: $e8 $ce
    pop af                                        ; $4559: $f1
    ld sp, $153f                                  ; $455a: $31 $3f $15
    ld e, $63                                     ; $455d: $1e $63
    ld a, a                                       ; $455f: $7f
    sub [hl]                                      ; $4560: $96
    ld sp, hl                                     ; $4561: $f9
    ld h, l                                       ; $4562: $65
    cp e                                          ; $4563: $bb
    ld e, l                                       ; $4564: $5d
    or a                                          ; $4565: $b7
    ld l, d                                       ; $4566: $6a
    or $04                                        ; $4567: $f6 $04
    ld [bc], a                                    ; $4569: $02
    add c                                         ; $456a: $81
    ld bc, $0302                                  ; $456b: $01 $02 $03
    add c                                         ; $456e: $81
    ld bc, $0204                                  ; $456f: $01 $04 $02
    ld b, $00                                     ; $4572: $06 $00
    add l                                         ; $4574: $85
    ld e, b                                       ; $4575: $58
    cp b                                          ; $4576: $b8
    db $ec                                        ; $4577: $ec
    ld a, h                                       ; $4578: $7c
    ld e, $02                                     ; $4579: $1e $02
    ld a, [c]                                     ; $457b: $f2
    add l                                         ; $457c: $85
    cp $5c                                        ; $457d: $fe $5c
    cp h                                          ; $457f: $bc
    or b                                          ; $4580: $b0
    ret nc                                        ; $4581: $d0

    ld [bc], a                                    ; $4582: $02
    ld [hl], b                                    ; $4583: $70
    sub h                                         ; $4584: $94
    ld c, h                                       ; $4585: $4c
    ld [hl], e                                    ; $4586: $73
    ld l, d                                       ; $4587: $6a
    ld [hl], l                                    ; $4588: $75
    ld d, [hl]                                    ; $4589: $56
    ld l, l                                       ; $458a: $6d
    ld h, c                                       ; $458b: $61
    ld e, a                                       ; $458c: $5f
    xor [hl]                                      ; $458d: $ae
    ei                                            ; $458e: $fb
    or e                                          ; $458f: $b3
    call z, $ef98                                 ; $4590: $cc $98 $ef
    or a                                          ; $4593: $b7
    rst $38                                       ; $4594: $ff
    ei                                            ; $4595: $fb
    call $d9ae                                    ; $4596: $cd $ae $d9
    ld [bc], a                                    ; $4599: $02
    ld [hl], a                                    ; $459a: $77
    ld a, [bc]                                    ; $459b: $0a
    nop                                           ; $459c: $00
    add e                                         ; $459d: $83
    ld b, c                                       ; $459e: $41
    pop bc                                        ; $459f: $c1
    ld b, c                                       ; $45a0: $41
    inc bc                                        ; $45a1: $03
    pop bc                                        ; $45a2: $c1
    add h                                         ; $45a3: $84
    ld hl, $a0e1                                  ; $45a4: $21 $e1 $a0
    ld h, b                                       ; $45a7: $60
    ld [bc], a                                    ; $45a8: $02
    ret nz                                        ; $45a9: $c0

    add e                                         ; $45aa: $83
    and b                                         ; $45ab: $a0
    ldh [rLCDC], a                                ; $45ac: $e0 $40
    inc bc                                        ; $45ae: $03
    ret nz                                        ; $45af: $c0

    ld [bc], a                                    ; $45b0: $02
    add b                                         ; $45b1: $80
    dec c                                         ; $45b2: $0d
    nop                                           ; $45b3: $00
    ld [bc], a                                    ; $45b4: $02
    inc b                                         ; $45b5: $04
    adc c                                         ; $45b6: $89
    nop                                           ; $45b7: $00
    ld bc, $0607                                  ; $45b8: $01 $07 $06
    dec b                                         ; $45bb: $05
    ld b, $07                                     ; $45bc: $06 $07
    dec b                                         ; $45be: $05
    rlca                                          ; $45bf: $07
    ld [bc], a                                    ; $45c0: $02
    inc bc                                        ; $45c1: $03
    ld [bc], a                                    ; $45c2: $02
    ld bc, $0010                                  ; $45c3: $01 $10 $00
    rst $38                                       ; $45c6: $ff
    daa                                           ; $45c7: $27
    ld de, $2ded                                  ; $45c8: $11 $ed $2d
    call nc, $f523                                ; $45cb: $d4 $23 $f5
    ld sp, hl                                     ; $45ce: $f9
    db $ec                                        ; $45cf: $ec
    ld bc, $06ec                                  ; $45d0: $01 $ec $06
    inc bc                                        ; $45d3: $03
    or $fc                                        ; $45d4: $f6 $fc
    cp $fc                                        ; $45d6: $fe $fc
    ld b, $fc                                     ; $45d8: $06 $fc
    ld c, $01                                     ; $45da: $0e $01
    ld d, $fe                                     ; $45dc: $16 $fe
    ld e, $fd                                     ; $45de: $1e $fd
    ld h, $0c                                     ; $45e0: $26 $0c
    ld a, [c]                                     ; $45e2: $f2
    inc c                                         ; $45e3: $0c
    ld a, [$020c]                                 ; $45e4: $fa $0c $02
    ld c, $05                                     ; $45e7: $0e $05
    inc e                                         ; $45e9: $1c
    ld a, [c]                                     ; $45ea: $f2
    inc e                                         ; $45eb: $1c
    push af                                       ; $45ec: $f5
    inc e                                         ; $45ed: $1c
    ld bc, $0702                                  ; $45ee: $01 $02 $07
    add c                                         ; $45f1: $81
    dec bc                                        ; $45f2: $0b
    ld [bc], a                                    ; $45f3: $02
    inc c                                         ; $45f4: $0c
    add [hl]                                      ; $45f5: $86
    dec bc                                        ; $45f6: $0b
    dec de                                        ; $45f7: $1b
    ld e, $7a                                     ; $45f8: $1e $7a
    ld a, a                                       ; $45fa: $7f
    cp $03                                        ; $45fb: $fe $03
    rst $38                                       ; $45fd: $ff
    add h                                         ; $45fe: $84
    ld a, [hl]                                    ; $45ff: $7e
    ld a, a                                       ; $4600: $7f
    ld [hl], a                                    ; $4601: $77
    ld a, a                                       ; $4602: $7f
    ld [bc], a                                    ; $4603: $02
    ccf                                           ; $4604: $3f
    adc h                                         ; $4605: $8c
    dec a                                         ; $4606: $3d
    ccf                                           ; $4607: $3f
    ld [hl-], a                                   ; $4608: $32
    ccf                                           ; $4609: $3f
    ld e, c                                       ; $460a: $59
    ld a, [hl]                                    ; $460b: $7e
    xor h                                         ; $460c: $ac
    rst $38                                       ; $460d: $ff
    sub a                                         ; $460e: $97
    ld hl, sp-$35                                 ; $460f: $f8 $cb
    db $f4                                        ; $4611: $f4
    ld [bc], a                                    ; $4612: $02
    ld [bc], a                                    ; $4613: $02
    ld [bc], a                                    ; $4614: $02
    inc bc                                        ; $4615: $03
    sbc h                                         ; $4616: $9c
    dec b                                         ; $4617: $05
    ld b, $08                                     ; $4618: $06 $08
    rrca                                          ; $461a: $0f
    add hl, de                                    ; $461b: $19
    rra                                           ; $461c: $1f
    ccf                                           ; $461d: $3f
    inc h                                         ; $461e: $24
    dec sp                                        ; $461f: $3b
    inc l                                         ; $4620: $2c
    add hl, hl                                    ; $4621: $29
    ld [hl], $3f                                  ; $4622: $36 $3f
    dec sp                                        ; $4624: $3b
    and $fb                                       ; $4625: $e6 $fb
    ld a, a                                       ; $4627: $7f
    ld hl, sp-$02                                 ; $4628: $f8 $fe
    rrca                                          ; $462a: $0f
    rst $38                                       ; $462b: $ff
    daa                                           ; $462c: $27
    ret c                                         ; $462d: $d8

    scf                                           ; $462e: $37
    ld l, a                                       ; $462f: $6f
    ld hl, sp+$5f                                 ; $4630: $f8 $5f
    ld hl, sp+$04                                 ; $4632: $f8 $04
    db $10                                        ; $4634: $10
    add e                                         ; $4635: $83
    inc e                                         ; $4636: $1c
    inc c                                         ; $4637: $0c
    inc e                                         ; $4638: $1c
    ld [bc], a                                    ; $4639: $02
    inc b                                         ; $463a: $04
    ld [bc], a                                    ; $463b: $02
    inc e                                         ; $463c: $1c
    add l                                         ; $463d: $85
    inc d                                         ; $463e: $14
    ld d, $0a                                     ; $463f: $16 $0a
    inc c                                         ; $4641: $0c
    inc e                                         ; $4642: $1c
    ld [bc], a                                    ; $4643: $02
    jr @-$78                                      ; $4644: $18 $86

    inc d                                         ; $4646: $14
    inc e                                         ; $4647: $1c
    inc d                                         ; $4648: $14
    inc c                                         ; $4649: $0c
    ld [$0218], sp                                ; $464a: $08 $18 $02
    db $10                                        ; $464d: $10
    ld [bc], a                                    ; $464e: $02
    jr @-$7a                                      ; $464f: $18 $84

    ld d, $0e                                     ; $4651: $16 $0e
    dec e                                         ; $4653: $1d
    inc de                                        ; $4654: $13
    inc b                                         ; $4655: $04
    jr nz, @-$7d                                  ; $4656: $20 $81

    dec a                                         ; $4658: $3d
    inc bc                                        ; $4659: $03
    ccf                                           ; $465a: $3f
    ld [bc], a                                    ; $465b: $02
    ld a, a                                       ; $465c: $7f
    or e                                          ; $465d: $b3
    ld l, a                                       ; $465e: $6f
    ld a, a                                       ; $465f: $7f
    ld c, a                                       ; $4660: $4f
    ld [hl], a                                    ; $4661: $77
    sub l                                         ; $4662: $95
    rst $28                                       ; $4663: $ef
    xor $99                                       ; $4664: $ee $99
    ld h, a                                       ; $4666: $67
    sbc b                                         ; $4667: $98
    ld c, [hl]                                    ; $4668: $4e
    or c                                          ; $4669: $b1
    inc c                                         ; $466a: $0c
    di                                            ; $466b: $f3
    reti                                          ; $466c: $d9


    daa                                           ; $466d: $27
    add e                                         ; $466e: $83
    rst $38                                       ; $466f: $ff
    daa                                           ; $4670: $27
    rst $38                                       ; $4671: $ff
    inc a                                         ; $4672: $3c

jr_0f0_4673:
    db $fc                                        ; $4673: $fc
    inc e                                         ; $4674: $1c
    rra                                           ; $4675: $1f
    ld [bc], a                                    ; $4676: $02
    rra                                           ; $4677: $1f
    add hl, de                                    ; $4678: $19
    rra                                           ; $4679: $1f
    ld c, $1f                                     ; $467a: $0e $1f
    dec c                                         ; $467c: $0d
    inc de                                        ; $467d: $13
    rra                                           ; $467e: $1f
    nop                                           ; $467f: $00
    add hl, de                                    ; $4680: $19
    ld b, $1f                                     ; $4681: $06 $1f
    nop                                           ; $4683: $00
    rra                                           ; $4684: $1f
    nop                                           ; $4685: $00
    ld l, a                                       ; $4686: $6f
    sub b                                         ; $4687: $90
    ld b, a                                       ; $4688: $47
    cp b                                          ; $4689: $b8
    ld l, h                                       ; $468a: $6c
    sub e                                         ; $468b: $93
    cp b                                          ; $468c: $b8
    rst $00                                       ; $468d: $c7
    ret nc                                        ; $468e: $d0

    rst $38                                       ; $468f: $ff
    ld a, [c]                                     ; $4690: $f2
    inc bc                                        ; $4691: $03
    rst $38                                       ; $4692: $ff
    sbc h                                         ; $4693: $9c
    ld a, a                                       ; $4694: $7f
    add b                                         ; $4695: $80

jr_0f0_4696:
    rra                                           ; $4696: $1f
    ld [$f897], a                                 ; $4697: $ea $97 $f8
    pop hl                                        ; $469a: $e1
    cp $7c                                        ; $469b: $fe $7c
    rst $38                                       ; $469d: $ff
    and e                                         ; $469e: $a3
    ld h, e                                       ; $469f: $63
    ret nc                                        ; $46a0: $d0

    jr nc, jr_0f0_4673                            ; $46a1: $30 $d0

    jr nc, jr_0f0_4696                            ; $46a3: $30 $f1

    ld de, $17f7                                  ; $46a5: $11 $f7 $17
    ld e, d                                       ; $46a8: $5a
    cp a                                          ; $46a9: $bf
    rst $18                                       ; $46aa: $df
    cp a                                          ; $46ab: $bf
    or b                                          ; $46ac: $b0
    ldh a, [$50]                                  ; $46ad: $f0 $50
    ldh a, [rSC]                                  ; $46af: $f0 $02
    ldh [rDIV], a                                 ; $46b1: $e0 $04
    ret nz                                        ; $46b3: $c0

    sub [hl]                                      ; $46b4: $96
    or b                                          ; $46b5: $b0
    ld [hl], b                                    ; $46b6: $70
    add sp, -$68                                  ; $46b7: $e8 $98
    db $f4                                        ; $46b9: $f4
    inc c                                         ; $46ba: $0c
    ld a, d                                       ; $46bb: $7a
    sub $3d                                       ; $46bc: $d6 $3d
    jp $e3df                                      ; $46be: $c3 $df $e3


    jr c, @+$39                                   ; $46c1: $38 $37

    ld sp, hl                                     ; $46c3: $f9
    cp $2b                                        ; $46c4: $fe $2b
    db $fc                                        ; $46c6: $fc
    ld a, [$0dfd]                                 ; $46c7: $fa $fd $0d
    rrca                                          ; $46ca: $0f
    ld [bc], a                                    ; $46cb: $02
    ld [bc], a                                    ; $46cc: $02
    ld b, $00                                     ; $46cd: $06 $00
    ld [bc], a                                    ; $46cf: $02
    rrca                                          ; $46d0: $0f
    adc d                                         ; $46d1: $8a
    or b                                          ; $46d2: $b0
    cp a                                          ; $46d3: $bf
    ld [c], a                                     ; $46d4: $e2
    ld a, a                                       ; $46d5: $7f
    jp hl                                         ; $46d6: $e9


    ccf                                           ; $46d7: $3f
    cp $3f                                        ; $46d8: $fe $3f
    ld a, a                                       ; $46da: $7f
    rst $38                                       ; $46db: $ff
    ld [bc], a                                    ; $46dc: $02
    ret nz                                        ; $46dd: $c0

    ld [de], a                                    ; $46de: $12
    nop                                           ; $46df: $00
    ld [bc], a                                    ; $46e0: $02
    ld bc, $1e8e                                  ; $46e1: $01 $8e $1e
    rra                                           ; $46e4: $1f
    ldh [rIE], a                                  ; $46e5: $e0 $ff
    nop                                           ; $46e7: $00
    rst $38                                       ; $46e8: $ff
    dec c                                         ; $46e9: $0d
    rst $38                                       ; $46ea: $ff
    ld d, a                                       ; $46eb: $57
    rst $38                                       ; $46ec: $ff
    jp hl                                         ; $46ed: $e9


    rst $38                                       ; $46ee: $ff
    rra                                           ; $46ef: $1f
    rst $38                                       ; $46f0: $ff
    ld [bc], a                                    ; $46f1: $02
    ldh [$0e], a                                  ; $46f2: $e0 $0e
    nop                                           ; $46f4: $00
    ld [bc], a                                    ; $46f5: $02
    ld e, $8e                                     ; $46f6: $1e $8e
    ld [c], a                                     ; $46f8: $e2
    cp $41                                        ; $46f9: $fe $41
    rst $38                                       ; $46fb: $ff
    rlca                                          ; $46fc: $07
    rst $38                                       ; $46fd: $ff
    ld sp, hl                                     ; $46fe: $f9
    rst $38                                       ; $46ff: $ff
    rra                                           ; $4700: $1f
    rst $38                                       ; $4701: $ff
    push hl                                       ; $4702: $e5
    rst $38                                       ; $4703: $ff
    ld e, $fe                                     ; $4704: $1e $fe
    ld [bc], a                                    ; $4706: $02
    ldh [$0e], a                                  ; $4707: $e0 $0e
    nop                                           ; $4709: $00
    ld a, [bc]                                    ; $470a: $0a
    db $10                                        ; $470b: $10
    inc bc                                        ; $470c: $03
    jr nc, @-$6b                                  ; $470d: $30 $93

    jr nz, jr_0f0_4740                            ; $470f: $20 $2f

    scf                                           ; $4711: $37
    inc sp                                        ; $4712: $33
    ccf                                           ; $4713: $3f
    ld b, h                                       ; $4714: $44

jr_0f0_4715:
    ld a, e                                       ; $4715: $7b
    ld h, d                                       ; $4716: $62

jr_0f0_4717:
    ld e, a                                       ; $4717: $5f
    ld l, h                                       ; $4718: $6c
    ld [hl], e                                    ; $4719: $73
    ld c, d                                       ; $471a: $4a
    ld [hl], l                                    ; $471b: $75
    ld d, [hl]                                    ; $471c: $56
    ld l, l                                       ; $471d: $6d
    and c                                         ; $471e: $a1
    rst $18                                       ; $471f: $df
    xor [hl]                                      ; $4720: $ae
    ei                                            ; $4721: $fb
    ld a, [bc]                                    ; $4722: $0a
    rrca                                          ; $4723: $0f
    inc b                                         ; $4724: $04
    rlca                                          ; $4725: $07
    ld [bc], a                                    ; $4726: $02
    add a                                         ; $4727: $87
    ld [bc], a                                    ; $4728: $02
    add [hl]                                      ; $4729: $86
    inc b                                         ; $472a: $04
    add b                                         ; $472b: $80
    ld [bc], a                                    ; $472c: $02
    add c                                         ; $472d: $81
    add c                                         ; $472e: $81
    ld b, c                                       ; $472f: $41
    inc bc                                        ; $4730: $03
    pop bc                                        ; $4731: $c1
    add h                                         ; $4732: $84
    jr nz, jr_0f0_4715                            ; $4733: $20 $e0

    and b                                         ; $4735: $a0
    ld h, b                                       ; $4736: $60
    ld [bc], a                                    ; $4737: $02
    cp $9e                                        ; $4738: $fe $9e
    pop af                                        ; $473a: $f1
    rst $38                                       ; $473b: $ff
    cp $f9                                        ; $473c: $fe $f9
    ei                                            ; $473e: $fb
    db $fc                                        ; $473f: $fc

jr_0f0_4740:
    push hl                                       ; $4740: $e5
    cp $ef                                        ; $4741: $fe $ef
    ldh a, [$f9]                                  ; $4743: $f0 $f9
    rst $38                                       ; $4745: $ff
    ld hl, sp-$01                                 ; $4746: $f8 $ff
    dec hl                                        ; $4748: $2b
    ccf                                           ; $4749: $3f
    ld d, e                                       ; $474a: $53
    ld a, h                                       ; $474b: $7c
    or h                                          ; $474c: $b4
    db $db                                        ; $474d: $db
    ld c, e                                       ; $474e: $4b
    cp a                                          ; $474f: $bf
    dec h                                         ; $4750: $25
    ei                                            ; $4751: $fb
    ld e, e                                       ; $4752: $5b
    rst $20                                       ; $4753: $e7
    adc l                                         ; $4754: $8d
    rst $38                                       ; $4755: $ff
    db $d3                                        ; $4756: $d3
    xor $02                                       ; $4757: $ee $02
    inc b                                         ; $4759: $04
    add c                                         ; $475a: $81
    ld [bc], a                                    ; $475b: $02
    ld [bc], a                                    ; $475c: $02
    ld b, $82                                     ; $475d: $06 $82
    ld [bc], a                                    ; $475f: $02
    inc bc                                        ; $4760: $03
    ld [bc], a                                    ; $4761: $02
    rlca                                          ; $4762: $07
    add d                                         ; $4763: $82
    ld bc, $0302                                  ; $4764: $01 $02 $03
    ld b, $04                                     ; $4767: $06 $04
    inc b                                         ; $4769: $04
    ld b, $00                                     ; $476a: $06 $00
    ld [bc], a                                    ; $476c: $02
    inc b                                         ; $476d: $04
    sub b                                         ; $476e: $90
    ld [bc], a                                    ; $476f: $02
    ld b, $f6                                     ; $4770: $06 $f6
    ld a, [$be5e]                                 ; $4772: $fa $5e $be
    ld [hl], e                                    ; $4775: $73
    ld c, h                                       ; $4776: $4c
    ret c                                         ; $4777: $d8

    rst $28                                       ; $4778: $ef
    or a                                          ; $4779: $b7
    rst $38                                       ; $477a: $ff
    ei                                            ; $477b: $fb
    call $d9ae                                    ; $477c: $cd $ae $d9
    ld [bc], a                                    ; $477f: $02
    ld [hl], a                                    ; $4780: $77
    inc d                                         ; $4781: $14
    nop                                           ; $4782: $00
    ld [bc], a                                    ; $4783: $02
    ld b, $83                                     ; $4784: $06 $83
    dec b                                         ; $4786: $05
    rlca                                          ; $4787: $07
    ld [bc], a                                    ; $4788: $02
    inc bc                                        ; $4789: $03
    ld b, $02                                     ; $478a: $06 $02
    inc b                                         ; $478c: $04
    ld d, $00                                     ; $478d: $16 $00
    add d                                         ; $478f: $82
    ld d, b                                       ; $4790: $50
    ld [hl], b                                    ; $4791: $70
    ld [bc], a                                    ; $4792: $02
    jr nc, jr_0f0_4717                            ; $4793: $30 $82

    rla                                           ; $4795: $17
    add hl, de                                    ; $4796: $19
    ld [bc], a                                    ; $4797: $02
    ld c, $18                                     ; $4798: $0e $18
    nop                                           ; $479a: $00
    rst $38                                       ; $479b: $ff
    ld hl, $ed0e                                  ; $479c: $21 $0e $ed
    dec l                                         ; $479f: $2d
    call nc, $f723                                ; $47a0: $d4 $23 $f7
    ld sp, hl                                     ; $47a3: $f9
    push af                                       ; $47a4: $f5
    ld bc, $08f2                                  ; $47a5: $01 $f2 $08
    rlca                                          ; $47a8: $07
    di                                            ; $47a9: $f3
    dec b                                         ; $47aa: $05
    ei                                            ; $47ab: $fb
    ld [bc], a                                    ; $47ac: $02
    inc bc                                        ; $47ad: $03
    rlca                                          ; $47ae: $07
    ld a, [bc]                                    ; $47af: $0a
    ld d, $f2                                     ; $47b0: $16 $f2
    dec d                                         ; $47b2: $15
    ld a, [$0212]                                 ; $47b3: $fa $12 $02
    rla                                           ; $47b6: $17
    ld a, [bc]                                    ; $47b7: $0a
    rla                                           ; $47b8: $17
    ld [de], a                                    ; $47b9: $12
    add hl, de                                    ; $47ba: $19
    ld a, [de]                                    ; $47bb: $1a
    dec de                                        ; $47bc: $1b
    ld [hl+], a                                   ; $47bd: $22
    ld [bc], a                                    ; $47be: $02
    inc bc                                        ; $47bf: $03
    add e                                         ; $47c0: $83
    inc b                                         ; $47c1: $04
    rlca                                          ; $47c2: $07
    dec c                                         ; $47c3: $0d
    ld [bc], a                                    ; $47c4: $02
    rrca                                          ; $47c5: $0f
    add l                                         ; $47c6: $85
    add hl, bc                                    ; $47c7: $09
    inc d                                         ; $47c8: $14
    dec de                                        ; $47c9: $1b
    dec e                                         ; $47ca: $1d
    inc de                                        ; $47cb: $13
    inc b                                         ; $47cc: $04
    rra                                           ; $47cd: $1f
    ld [bc], a                                    ; $47ce: $02
    ccf                                           ; $47cf: $3f
    adc [hl]                                      ; $47d0: $8e
    cpl                                           ; $47d1: $2f
    ccf                                           ; $47d2: $3f
    rst $18                                       ; $47d3: $df
    rst $28                                       ; $47d4: $ef
    rst $20                                       ; $47d5: $e7
    cp a                                          ; $47d6: $bf
    sbc $bf                                       ; $47d7: $de $bf
    ld [hl], a                                    ; $47d9: $77
    ld a, a                                       ; $47da: $7f
    dec hl                                        ; $47db: $2b
    ccf                                           ; $47dc: $3f
    dec [hl]                                      ; $47dd: $35
    dec sp                                        ; $47de: $3b
    ld [bc], a                                    ; $47df: $02
    ld bc, $0302                                  ; $47e0: $01 $02 $03
    add [hl]                                      ; $47e3: $86
    rst $30                                       ; $47e4: $f7
    db $f4                                        ; $47e5: $f4
    rst $28                                       ; $47e6: $ef
    dec e                                         ; $47e7: $1d
    dec a                                         ; $47e8: $3d
    cp $02                                        ; $47e9: $fe $02
    rst $38                                       ; $47eb: $ff
    sub h                                         ; $47ec: $94
    sbc h                                         ; $47ed: $9c
    rst $38                                       ; $47ee: $ff
    rst $20                                       ; $47ef: $e7
    sbc a                                         ; $47f0: $9f
    rra                                           ; $47f1: $1f
    db $e3                                        ; $47f2: $e3
    ld a, a                                       ; $47f3: $7f
    add c                                         ; $47f4: $81
    ld a, l                                       ; $47f5: $7d
    add e                                         ; $47f6: $83
    dec sp                                        ; $47f7: $3b
    rst $00                                       ; $47f8: $c7
    sbc e                                         ; $47f9: $9b
    push hl                                       ; $47fa: $e5
    or $f9                                        ; $47fb: $f6 $f9
    db $eb                                        ; $47fd: $eb
    db $fc                                        ; $47fe: $fc
    push hl                                       ; $47ff: $e5
    cp $02                                        ; $4800: $fe $02
    jr z, jr_0f0_4806                             ; $4802: $28 $02

    jr c, @-$79                                   ; $4804: $38 $85

jr_0f0_4806:
    ld e, [hl]                                    ; $4806: $5e
    ld h, [hl]                                    ; $4807: $66
    ld c, $72                                     ; $4808: $0e $72
    ld [de], a                                    ; $480a: $12
    ld [bc], a                                    ; $480b: $02
    ld a, [hl]                                    ; $480c: $7e
    adc a                                         ; $480d: $8f
    ld c, d                                       ; $480e: $4a
    dec sp                                        ; $480f: $3b
    ld b, l                                       ; $4810: $45
    ld d, $6e                                     ; $4811: $16 $6e
    ld a, h                                       ; $4813: $7c
    inc a                                         ; $4814: $3c
    ld l, d                                       ; $4815: $6a
    ld a, $7a                                     ; $4816: $3e $7a
    ld b, $64                                     ; $4818: $06 $64
    ld a, h                                       ; $481a: $7c
    jr c, jr_0f0_4895                             ; $481b: $38 $78

    ld [bc], a                                    ; $481d: $02
    ld h, b                                       ; $481e: $60
    inc b                                         ; $481f: $04
    ld b, b                                       ; $4820: $40
    ld [bc], a                                    ; $4821: $02
    ld bc, $0302                                  ; $4822: $01 $02 $03
    ld [bc], a                                    ; $4825: $02
    rlca                                          ; $4826: $07
    sbc d                                         ; $4827: $9a
    dec e                                         ; $4828: $1d
    dec de                                        ; $4829: $1b
    dec l                                         ; $482a: $2d
    inc sp                                        ; $482b: $33
    ld e, e                                       ; $482c: $5b
    ld h, [hl]                                    ; $482d: $66
    ld a, d                                       ; $482e: $7a
    ld b, l                                       ; $482f: $45
    db $d3                                        ; $4830: $d3
    db $fc                                        ; $4831: $fc
    and $99                                       ; $4832: $e6 $99
    sbc b                                         ; $4834: $98
    rst $38                                       ; $4835: $ff
    db $ed                                        ; $4836: $ed
    rst $18                                       ; $4837: $df
    rst $20                                       ; $4838: $e7
    sbc a                                         ; $4839: $9f
    adc $fe                                       ; $483a: $ce $fe
    ld [c], a                                     ; $483c: $e2
    cp $92                                        ; $483d: $fe $92
    xor $73                                       ; $483f: $ee $73
    rst $18                                       ; $4841: $df
    ld [bc], a                                    ; $4842: $02
    inc bc                                        ; $4843: $03
    sub l                                         ; $4844: $95
    ld [bc], a                                    ; $4845: $02
    inc bc                                        ; $4846: $03
    xor d                                         ; $4847: $aa
    rst $30                                       ; $4848: $f7
    push de                                       ; $4849: $d5
    db $eb                                        ; $484a: $eb
    xor $f1                                       ; $484b: $ee $f1
    rst $30                                       ; $484d: $f7
    ld hl, sp-$01                                 ; $484e: $f8 $ff
    db $fc                                        ; $4850: $fc
    ld a, l                                       ; $4851: $7d
    rst $38                                       ; $4852: $ff
    ccf                                           ; $4853: $3f
    rst $38                                       ; $4854: $ff
    ccf                                           ; $4855: $3f
    rst $38                                       ; $4856: $ff
    ccf                                           ; $4857: $3f
    rst $38                                       ; $4858: $ff
    ld a, a                                       ; $4859: $7f
    inc bc                                        ; $485a: $03
    rst $38                                       ; $485b: $ff
    ld [bc], a                                    ; $485c: $02
    sbc a                                         ; $485d: $9f
    inc b                                         ; $485e: $04
    rra                                           ; $485f: $1f
    inc b                                         ; $4860: $04
    ld [bc], a                                    ; $4861: $02
    sub l                                         ; $4862: $95
    ld bc, $5f03                                  ; $4863: $01 $03 $5f
    pop hl                                        ; $4866: $e1
    ld e, a                                       ; $4867: $5f
    pop hl                                        ; $4868: $e1
    xor [hl]                                      ; $4869: $ae
    ld [hl], l                                    ; $486a: $75
    ld a, [$d63f]                                 ; $486b: $fa $3f $d6
    ccf                                           ; $486e: $3f
    di                                            ; $486f: $f3
    ld e, $f5                                     ; $4870: $1e $f5
    ld a, [de]                                    ; $4872: $1a
    ld l, a                                       ; $4873: $6f
    sbc b                                         ; $4874: $98
    ld c, e                                       ; $4875: $4b
    db $fc                                        ; $4876: $fc
    ei                                            ; $4877: $fb
    ld [bc], a                                    ; $4878: $02
    db $fd                                        ; $4879: $fd
    add l                                         ; $487a: $85
    cp $fd                                        ; $487b: $fe $fd
    cp $f2                                        ; $487d: $fe $f2
    rst $38                                       ; $487f: $ff
    ld b, $40                                     ; $4880: $06 $40
    sbc d                                         ; $4882: $9a
    ld h, b                                       ; $4883: $60
    jr nz, jr_0f0_48e6                            ; $4884: $20 $60

    jr nz, jr_0f0_48f8                            ; $4886: $20 $70

    ld d, b                                       ; $4888: $50
    ld [hl], b                                    ; $4889: $70
    db $10                                        ; $488a: $10
    ld a, b                                       ; $488b: $78
    jr z, jr_0f0_4906                             ; $488c: $28 $78

    ld [$2878], sp                                ; $488e: $08 $78 $28
    ld a, b                                       ; $4891: $78
    ld [$a47c], sp                                ; $4892: $08 $7c $a4

jr_0f0_4895:
    cp h                                          ; $4895: $bc
    call nc, $e45c                                ; $4896: $d4 $5c $e4
    and $fa                                       ; $4899: $e6 $fa
    scf                                           ; $489b: $37
    rst $38                                       ; $489c: $ff
    ld [bc], a                                    ; $489d: $02
    add b                                         ; $489e: $80
    adc a                                         ; $489f: $8f
    ld h, [hl]                                    ; $48a0: $66
    ld a, c                                       ; $48a1: $79
    ld h, h                                       ; $48a2: $64
    ld e, e                                       ; $48a3: $5b
    ld a, e                                       ; $48a4: $7b
    ld h, [hl]                                    ; $48a5: $66
    add c                                         ; $48a6: $81
    cp $76                                        ; $48a7: $fe $76
    ld e, l                                       ; $48a9: $5d
    ld e, c                                       ; $48aa: $59
    ld h, [hl]                                    ; $48ab: $66
    adc l                                         ; $48ac: $8d
    rst $30                                       ; $48ad: $f7
    or a                                          ; $48ae: $b7
    ld [bc], a                                    ; $48af: $02
    rst $38                                       ; $48b0: $ff
    add e                                         ; $48b1: $83
    call $ddaa                                    ; $48b2: $cd $aa $dd
    ld [bc], a                                    ; $48b5: $02
    ld [hl], a                                    ; $48b6: $77
    ld [$0200], sp                                ; $48b7: $08 $00 $02
    inc bc                                        ; $48ba: $03
    ld [bc], a                                    ; $48bb: $02
    nop                                           ; $48bc: $00
    ld [bc], a                                    ; $48bd: $02
    add c                                         ; $48be: $81
    ld [bc], a                                    ; $48bf: $02
    pop bc                                        ; $48c0: $c1
    adc e                                         ; $48c1: $8b
    and b                                         ; $48c2: $a0
    ldh [$a0], a                                  ; $48c3: $e0 $a0
    ldh [$c0], a                                  ; $48c5: $e0 $c0
    ld b, b                                       ; $48c7: $40
    and b                                         ; $48c8: $a0
    ldh [rLCDC], a                                ; $48c9: $e0 $40
    ret nz                                        ; $48cb: $c0

    ld b, b                                       ; $48cc: $40
    inc bc                                        ; $48cd: $03
    ret nz                                        ; $48ce: $c0

    ld [bc], a                                    ; $48cf: $02
    add b                                         ; $48d0: $80
    ld [$9a00], sp                                ; $48d1: $08 $00 $9a
    ld [hl], a                                    ; $48d4: $77
    ld a, c                                       ; $48d5: $79
    ld [hl], b                                    ; $48d6: $70
    ld a, a                                       ; $48d7: $7f
    ld l, $7f                                     ; $48d8: $2e $7f
    pop hl                                        ; $48da: $e1
    rst $38                                       ; $48db: $ff
    db $dd                                        ; $48dc: $dd
    rst $38                                       ; $48dd: $ff
    ld c, e                                       ; $48de: $4b
    cp a                                          ; $48df: $bf
    dec h                                         ; $48e0: $25
    ei                                            ; $48e1: $fb
    db $db                                        ; $48e2: $db
    rst $20                                       ; $48e3: $e7
    adc l                                         ; $48e4: $8d
    rst $38                                       ; $48e5: $ff

jr_0f0_48e6:
    db $d3                                        ; $48e6: $d3
    xor $7c                                       ; $48e7: $ee $7c
    ld a, a                                       ; $48e9: $7f
    ld e, a                                       ; $48ea: $5f
    ld h, a                                       ; $48eb: $67
    ld a, [hl+]                                   ; $48ec: $2a
    ld [hl], $02                                  ; $48ed: $36 $02
    inc a                                         ; $48ef: $3c
    inc b                                         ; $48f0: $04
    nop                                           ; $48f1: $00
    adc h                                         ; $48f2: $8c
    and e                                         ; $48f3: $a3
    db $fd                                        ; $48f4: $fd
    di                                            ; $48f5: $f3
    db $ed                                        ; $48f6: $ed
    ld e, a                                       ; $48f7: $5f

jr_0f0_48f8:
    ld h, c                                       ; $48f8: $61
    ld l, a                                       ; $48f9: $6f
    ld [hl], e                                    ; $48fa: $73
    sbc d                                         ; $48fb: $9a
    sbc [hl]                                      ; $48fc: $9e
    add $46                                       ; $48fd: $c6 $46
    ld [bc], a                                    ; $48ff: $02
    add b                                         ; $4900: $80
    ld [de], a                                    ; $4901: $12
    nop                                           ; $4902: $00
    ld [bc], a                                    ; $4903: $02
    ldh [$8c], a                                  ; $4904: $e0 $8c

jr_0f0_4906:
    ld e, $fe                                     ; $4906: $1e $fe
    ld b, c                                       ; $4908: $41
    rst $38                                       ; $4909: $ff
    ret nz                                        ; $490a: $c0

    rst $38                                       ; $490b: $ff
    ld hl, sp-$01                                 ; $490c: $f8 $ff
    scf                                           ; $490e: $37
    ccf                                           ; $490f: $3f
    inc c                                         ; $4910: $0c
    rrca                                          ; $4911: $0f
    ld [bc], a                                    ; $4912: $02
    inc bc                                        ; $4913: $03
    stop                                          ; $4914: $10 $00
    ld [bc], a                                    ; $4916: $02
    ldh [$8e], a                                  ; $4917: $e0 $8e
    rra                                           ; $4919: $1f
    rst $38                                       ; $491a: $ff
    nop                                           ; $491b: $00
    rst $38                                       ; $491c: $ff
    jr nz, @+$01                                  ; $491d: $20 $ff

    ld hl, sp-$01                                 ; $491f: $f8 $ff
    rra                                           ; $4921: $1f
    rst $38                                       ; $4922: $ff
    rst $20                                       ; $4923: $e7
    rst $38                                       ; $4924: $ff
    inc e                                         ; $4925: $1c
    rra                                           ; $4926: $1f
    ld [bc], a                                    ; $4927: $02
    inc bc                                        ; $4928: $03
    ld c, $00                                     ; $4929: $0e $00
    ld [bc], a                                    ; $492b: $02
    ldh a, [$8e]                                  ; $492c: $f0 $8e
    ld c, $fe                                     ; $492e: $0e $fe
    ld [bc], a                                    ; $4930: $02
    cp $82                                        ; $4931: $fe $82
    cp $79                                        ; $4933: $fe $79
    rst $38                                       ; $4935: $ff
    rst $20                                       ; $4936: $e7
    rst $38                                       ; $4937: $ff
    ld e, d                                       ; $4938: $5a
    cp $e4                                        ; $4939: $fe $e4
    db $fc                                        ; $493b: $fc
    ld [bc], a                                    ; $493c: $02
    jr @+$10                                      ; $493d: $18 $0e

    nop                                           ; $493f: $00
    rst $38                                       ; $4940: $ff
    ld hl, $ed0e                                  ; $4941: $21 $0e $ed
    dec l                                         ; $4944: $2d
    call nc, $f823                                ; $4945: $d4 $23 $f8
    ei                                            ; $4948: $fb
    db $f4                                        ; $4949: $f4
    inc bc                                        ; $494a: $03
    di                                            ; $494b: $f3
    ld [$f307], sp                                ; $494c: $08 $07 $f3
    ld [$04fb], sp                                ; $494f: $08 $fb $04
    inc bc                                        ; $4952: $03
    rlca                                          ; $4953: $07
    dec bc                                        ; $4954: $0b
    inc de                                        ; $4955: $13
    ld a, [c]                                     ; $4956: $f2
    inc de                                        ; $4957: $13
    ld a, [$0213]                                 ; $4958: $fa $13 $02
    inc de                                        ; $495b: $13
    ld a, [bc]                                    ; $495c: $0a
    inc de                                        ; $495d: $13
    ld [de], a                                    ; $495e: $12
    inc de                                        ; $495f: $13
    ld a, [de]                                    ; $4960: $1a
    inc de                                        ; $4961: $13
    ld hl, $0302                                  ; $4962: $21 $02 $03
    sub e                                         ; $4965: $93
    rrca                                          ; $4966: $0f
    inc c                                         ; $4967: $0c
    dec d                                         ; $4968: $15
    dec de                                        ; $4969: $1b
    rla                                           ; $496a: $17
    rra                                           ; $496b: $1f
    cpl                                           ; $496c: $2f
    ld a, $2d                                     ; $496d: $3e $2d
    ccf                                           ; $496f: $3f
    dec a                                         ; $4970: $3d
    ld a, $5d                                     ; $4971: $3e $5d
    ld a, [hl]                                    ; $4973: $7e
    ld a, l                                       ; $4974: $7d
    ld a, [hl]                                    ; $4975: $7e
    cp $ff                                        ; $4976: $fe $ff
    cp a                                          ; $4978: $bf
    inc bc                                        ; $4979: $03
    rst $38                                       ; $497a: $ff
    adc b                                         ; $497b: $88
    rst $28                                       ; $497c: $ef
    rst $38                                       ; $497d: $ff
    adc $ff                                       ; $497e: $ce $ff
    and a                                         ; $4980: $a7
    rst $38                                       ; $4981: $ff
    db $db                                        ; $4982: $db
    rst $20                                       ; $4983: $e7
    ld [bc], a                                    ; $4984: $02
    ld bc, $029e                                  ; $4985: $01 $9e $02
    inc bc                                        ; $4988: $03
    inc b                                         ; $4989: $04
    rlca                                          ; $498a: $07
    inc c                                         ; $498b: $0c
    rrca                                          ; $498c: $0f
    rst $38                                       ; $498d: $ff
    ld a, [c]                                     ; $498e: $f2
    ld a, l                                       ; $498f: $7d
    or $f4                                        ; $4990: $f6 $f4
    ei                                            ; $4992: $fb
    ld l, a                                       ; $4993: $6f
    db $fd                                        ; $4994: $fd
    sub e                                         ; $4995: $93
    ld a, l                                       ; $4996: $7d
    db $ed                                        ; $4997: $ed
    sbc [hl]                                      ; $4998: $9e
    ld a, [hl]                                    ; $4999: $7e
    add a                                         ; $499a: $87
    push af                                       ; $499b: $f5
    rrca                                          ; $499c: $0f
    push hl                                       ; $499d: $e5
    rra                                           ; $499e: $1f
    rst $28                                       ; $499f: $ef
    rra                                           ; $49a0: $1f
    db $db                                        ; $49a1: $db
    rst $20                                       ; $49a2: $e7
    rst $28                                       ; $49a3: $ef
    di                                            ; $49a4: $f3
    ld [bc], a                                    ; $49a5: $02
    inc d                                         ; $49a6: $14
    ld [bc], a                                    ; $49a7: $02
    jr @-$7b                                      ; $49a8: $18 $83

    inc e                                         ; $49aa: $1c
    inc b                                         ; $49ab: $04
    ld c, $02                                     ; $49ac: $0e $02
    ld [de], a                                    ; $49ae: $12
    ld [bc], a                                    ; $49af: $02
    ld e, $85                                     ; $49b0: $1e $85
    ld a, [bc]                                    ; $49b2: $0a
    dec de                                        ; $49b3: $1b
    dec b                                         ; $49b4: $05
    ld d, $0e                                     ; $49b5: $16 $0e
    ld [bc], a                                    ; $49b7: $02
    inc e                                         ; $49b8: $1c
    add [hl]                                      ; $49b9: $86
    ld a, [bc]                                    ; $49ba: $0a
    ld e, $1a                                     ; $49bb: $1e $1a
    ld b, $04                                     ; $49bd: $06 $04
    inc e                                         ; $49bf: $1c
    ld [bc], a                                    ; $49c0: $02
    jr jr_0f0_49c9                                ; $49c1: $18 $06

    nop                                           ; $49c3: $00
    ld [bc], a                                    ; $49c4: $02
    ld bc, $0302                                  ; $49c5: $01 $02 $03
    ld [bc], a                                    ; $49c8: $02

jr_0f0_49c9:
    rlca                                          ; $49c9: $07
    xor e                                         ; $49ca: $ab
    dec e                                         ; $49cb: $1d
    dec de                                        ; $49cc: $1b
    dec l                                         ; $49cd: $2d
    inc sp                                        ; $49ce: $33
    ld e, e                                       ; $49cf: $5b
    ld h, [hl]                                    ; $49d0: $66
    ld a, d                                       ; $49d1: $7a
    ld b, l                                       ; $49d2: $45
    db $d3                                        ; $49d3: $d3
    db $fc                                        ; $49d4: $fc
    and $99                                       ; $49d5: $e6 $99
    sbc b                                         ; $49d7: $98
    rst $38                                       ; $49d8: $ff
    db $ed                                        ; $49d9: $ed
    rst $18                                       ; $49da: $df
    rst $20                                       ; $49db: $e7
    sbc a                                         ; $49dc: $9f
    adc $fe                                       ; $49dd: $ce $fe
    ld [c], a                                     ; $49df: $e2
    cp $92                                        ; $49e0: $fe $92
    xor $73                                       ; $49e2: $ee $73
    rst $18                                       ; $49e4: $df
    db $ed                                        ; $49e5: $ed
    di                                            ; $49e6: $f3
    xor $f1                                       ; $49e7: $ee $f1
    rst $30                                       ; $49e9: $f7
    ld hl, sp-$05                                 ; $49ea: $f8 $fb
    db $fc                                        ; $49ec: $fc
    ld a, h                                       ; $49ed: $7c
    rst $38                                       ; $49ee: $ff
    ld a, a                                       ; $49ef: $7f
    rst $38                                       ; $49f0: $ff
    ccf                                           ; $49f1: $3f
    rst $38                                       ; $49f2: $ff
    ld a, a                                       ; $49f3: $7f
    rst $38                                       ; $49f4: $ff
    ld a, a                                       ; $49f5: $7f
    inc bc                                        ; $49f6: $03
    rst $38                                       ; $49f7: $ff
    ld [bc], a                                    ; $49f8: $02
    sbc a                                         ; $49f9: $9f
    ld [bc], a                                    ; $49fa: $02
    rra                                           ; $49fb: $1f
    ld b, $0f                                     ; $49fc: $06 $0f
    and d                                         ; $49fe: $a2
    ld [bc], a                                    ; $49ff: $02
    inc bc                                        ; $4a00: $03
    sub l                                         ; $4a01: $95
    ei                                            ; $4a02: $fb
    rst $38                                       ; $4a03: $ff
    pop bc                                        ; $4a04: $c1
    ld e, a                                       ; $4a05: $5f
    pop hl                                        ; $4a06: $e1
    xor [hl]                                      ; $4a07: $ae
    ld [hl], l                                    ; $4a08: $75
    ei                                            ; $4a09: $fb
    ld a, $d6                                     ; $4a0a: $3e $d6
    ccf                                           ; $4a0c: $3f
    push af                                       ; $4a0d: $f5
    ld e, $f3                                     ; $4a0e: $1e $f3
    inc e                                         ; $4a10: $1c

jr_0f0_4a11:
    rst $28                                       ; $4a11: $ef
    sbc b                                         ; $4a12: $98
    cpl                                           ; $4a13: $2f
    ld sp, hl                                     ; $4a14: $f9
    ei                                            ; $4a15: $fb
    db $fc                                        ; $4a16: $fc
    rst $38                                       ; $4a17: $ff
    db $fc                                        ; $4a18: $fc
    rst $38                                       ; $4a19: $ff
    db $fc                                        ; $4a1a: $fc
    push af                                       ; $4a1b: $f5
    cp $eb                                        ; $4a1c: $fe $eb
    or $e2                                        ; $4a1e: $f6 $e2
    rst $38                                       ; $4a20: $ff
    inc b                                         ; $4a21: $04
    add b                                         ; $4a22: $80

jr_0f0_4a23:
    add c                                         ; $4a23: $81
    ld b, b                                       ; $4a24: $40
    ld [bc], a                                    ; $4a25: $02
    ret nz                                        ; $4a26: $c0

    add d                                         ; $4a27: $82
    ld b, b                                       ; $4a28: $40
    and b                                         ; $4a29: $a0
    ld [bc], a                                    ; $4a2a: $02
    ldh [$95], a                                  ; $4a2b: $e0 $95
    jr nz, @-$1e                                  ; $4a2d: $20 $e0

    jr nz, jr_0f0_4a11                            ; $4a2f: $20 $e0

    jr nz, jr_0f0_4a23                            ; $4a31: $20 $f0

    ld d, b                                       ; $4a33: $50
    ldh a, [$90]                                  ; $4a34: $f0 $90
    ldh a, [rNR10]                                ; $4a36: $f0 $10
    ldh a, [$90]                                  ; $4a38: $f0 $90
    ldh a, [$50]                                  ; $4a3a: $f0 $50
    ld [hl], b                                    ; $4a3c: $70
    sub b                                         ; $4a3d: $90
    sbc b                                         ; $4a3e: $98
    add sp, -$21                                  ; $4a3f: $e8 $df
    rst $38                                       ; $4a41: $ff
    ld b, $00                                     ; $4a42: $06 $00
    ld [bc], a                                    ; $4a44: $02
    add b                                         ; $4a45: $80
    adc a                                         ; $4a46: $8f
    ld h, [hl]                                    ; $4a47: $66
    ld a, c                                       ; $4a48: $79
    ld h, h                                       ; $4a49: $64
    ld e, e                                       ; $4a4a: $5b
    ld a, e                                       ; $4a4b: $7b
    ld h, [hl]                                    ; $4a4c: $66
    add c                                         ; $4a4d: $81
    cp $76                                        ; $4a4e: $fe $76
    ld e, l                                       ; $4a50: $5d
    ld e, c                                       ; $4a51: $59
    ld h, [hl]                                    ; $4a52: $66
    adc l                                         ; $4a53: $8d
    rst $30                                       ; $4a54: $f7
    or a                                          ; $4a55: $b7
    ld [bc], a                                    ; $4a56: $02
    rst $38                                       ; $4a57: $ff
    add e                                         ; $4a58: $83
    call $ddaa                                    ; $4a59: $cd $aa $dd
    ld [bc], a                                    ; $4a5c: $02
    ld [hl], a                                    ; $4a5d: $77
    ld a, [bc]                                    ; $4a5e: $0a
    nop                                           ; $4a5f: $00
    ld [bc], a                                    ; $4a60: $02
    add b                                         ; $4a61: $80
    ld [bc], a                                    ; $4a62: $02
    pop bc                                        ; $4a63: $c1
    adc e                                         ; $4a64: $8b
    and b                                         ; $4a65: $a0
    ldh [$a0], a                                  ; $4a66: $e0 $a0
    ldh [$c0], a                                  ; $4a68: $e0 $c0
    ld b, b                                       ; $4a6a: $40
    and b                                         ; $4a6b: $a0
    ldh [rLCDC], a                                ; $4a6c: $e0 $40
    ret nz                                        ; $4a6e: $c0

    ld b, b                                       ; $4a6f: $40
    inc bc                                        ; $4a70: $03
    ret nz                                        ; $4a71: $c0

    ld [bc], a                                    ; $4a72: $02
    add b                                         ; $4a73: $80
    ld b, $00                                     ; $4a74: $06 $00
    sub [hl]                                      ; $4a76: $96
    ld a, [hl]                                    ; $4a77: $7e
    ld a, a                                       ; $4a78: $7f
    daa                                           ; $4a79: $27
    ld a, a                                       ; $4a7a: $7f
    ld a, c                                       ; $4a7b: $79
    ld a, a                                       ; $4a7c: $7f
    ld c, a                                       ; $4a7d: $4f
    ccf                                           ; $4a7e: $3f
    dec h                                         ; $4a7f: $25
    ei                                            ; $4a80: $fb
    db $db                                        ; $4a81: $db
    rst $20                                       ; $4a82: $e7
    adc l                                         ; $4a83: $8d
    rst $38                                       ; $4a84: $ff
    db $d3                                        ; $4a85: $d3
    xor $7c                                       ; $4a86: $ee $7c
    ld a, a                                       ; $4a88: $7f
    ld e, a                                       ; $4a89: $5f
    ld h, a                                       ; $4a8a: $67
    ld a, [hl+]                                   ; $4a8b: $2a
    ld [hl], $02                                  ; $4a8c: $36 $02
    inc a                                         ; $4a8e: $3c
    ld [$0400], sp                                ; $4a8f: $08 $00 $04
    add b                                         ; $4a92: $80
    adc [hl]                                      ; $4a93: $8e
    nop                                           ; $4a94: $00
    add b                                         ; $4a95: $80
    ld b, [hl]                                    ; $4a96: $46
    ei                                            ; $4a97: $fb
    xor $d3                                       ; $4a98: $ee $d3
    cp a                                          ; $4a9a: $bf
    jp $e7db                                      ; $4a9b: $c3 $db $e7


    or [hl]                                       ; $4a9e: $b6
    cp [hl]                                       ; $4a9f: $be
    call z, $024c                                 ; $4aa0: $cc $4c $02
    add b                                         ; $4aa3: $80
    stop                                          ; $4aa4: $10 $00
    ld [bc], a                                    ; $4aa6: $02
    ld b, b                                       ; $4aa7: $40
    adc h                                         ; $4aa8: $8c
    ccf                                           ; $4aa9: $3f
    rst $38                                       ; $4aaa: $ff
    ld b, c                                       ; $4aab: $41
    rst $38                                       ; $4aac: $ff
    nop                                           ; $4aad: $00
    rst $38                                       ; $4aae: $ff
    cp c                                          ; $4aaf: $b9
    rst $38                                       ; $4ab0: $ff
    ld [hl], a                                    ; $4ab1: $77
    ld a, a                                       ; $4ab2: $7f
    inc e                                         ; $4ab3: $1c
    rra                                           ; $4ab4: $1f
    ld [bc], a                                    ; $4ab5: $02
    rlca                                          ; $4ab6: $07
    ld [de], a                                    ; $4ab7: $12
    nop                                           ; $4ab8: $00
    ld [bc], a                                    ; $4ab9: $02
    add b                                         ; $4aba: $80
    ld [bc], a                                    ; $4abb: $02
    rst $38                                       ; $4abc: $ff
    adc [hl]                                      ; $4abd: $8e
    nop                                           ; $4abe: $00
    rst $38                                       ; $4abf: $ff
    jr nz, @+$01                                  ; $4ac0: $20 $ff

    add b                                         ; $4ac2: $80
    rst $38                                       ; $4ac3: $ff
    ld l, c                                       ; $4ac4: $69
    rst $38                                       ; $4ac5: $ff
    adc [hl]                                      ; $4ac6: $8e
    rst $38                                       ; $4ac7: $ff
    ld a, c                                       ; $4ac8: $79
    ld a, a                                       ; $4ac9: $7f
    ld c, $0f                                     ; $4aca: $0e $0f
    ld [bc], a                                    ; $4acc: $02
    inc bc                                        ; $4acd: $03
    stop                                          ; $4ace: $10 $00
    ld [bc], a                                    ; $4ad0: $02
    ld a, h                                       ; $4ad1: $7c
    adc [hl]                                      ; $4ad2: $8e
    ld [bc], a                                    ; $4ad3: $02
    ld a, [hl]                                    ; $4ad4: $7e
    ld [bc], a                                    ; $4ad5: $02
    ld a, [hl]                                    ; $4ad6: $7e
    ld h, c                                       ; $4ad7: $61
    ld a, a                                       ; $4ad8: $7f
    rra                                           ; $4ad9: $1f
    ld a, a                                       ; $4ada: $7f
    ld [hl], c                                    ; $4adb: $71
    ld a, a                                       ; $4adc: $7f
    dec l                                         ; $4add: $2d
    ld a, a                                       ; $4ade: $7f
    ld b, d                                       ; $4adf: $42
    ld a, [hl]                                    ; $4ae0: $7e
    ld [bc], a                                    ; $4ae1: $02
    inc a                                         ; $4ae2: $3c
    ld [bc], a                                    ; $4ae3: $02
    nop                                           ; $4ae4: $00
    rst $38                                       ; $4ae5: $ff
    rra                                           ; $4ae6: $1f
    dec c                                         ; $4ae7: $0d
    db $ed                                        ; $4ae8: $ed
    dec l                                         ; $4ae9: $2d
    call nc, Call_000_0423                        ; $4aea: $d4 $23 $04
    ld a, [c]                                     ; $4aed: $f2
    inc d                                         ; $4aee: $14
    ld a, [c]                                     ; $4aef: $f2
    or $fa                                        ; $4af0: $f6 $fa
    ld b, $fa                                     ; $4af2: $06 $fa
    ld d, $fa                                     ; $4af4: $16 $fa
    rst $28                                       ; $4af6: $ef
    ld [bc], a                                    ; $4af7: $02
    rst $38                                       ; $4af8: $ff
    ld [bc], a                                    ; $4af9: $02
    rrca                                          ; $4afa: $0f
    ld [bc], a                                    ; $4afb: $02
    pop af                                        ; $4afc: $f1
    ld a, [bc]                                    ; $4afd: $0a
    ld bc, $110a                                  ; $4afe: $01 $0a $11
    ld a, [bc]                                    ; $4b01: $0a
    ld d, $12                                     ; $4b02: $16 $12
    add hl, de                                    ; $4b04: $19
    ld a, [de]                                    ; $4b05: $1a
    inc b                                         ; $4b06: $04
    ld bc, $0302                                  ; $4b07: $01 $02 $03
    ld [bc], a                                    ; $4b0a: $02
    rlca                                          ; $4b0b: $07
    add l                                         ; $4b0c: $85
    ld b, $07                                     ; $4b0d: $06 $07
    inc b                                         ; $4b0f: $04
    rlca                                          ; $4b10: $07
    add hl, bc                                    ; $4b11: $09
    ld [bc], a                                    ; $4b12: $02
    ld c, $8e                                     ; $4b13: $0e $8e
    add hl, bc                                    ; $4b15: $09
    ld d, $19                                     ; $4b16: $16 $19
    inc d                                         ; $4b18: $14
    dec de                                        ; $4b19: $1b
    db $10                                        ; $4b1a: $10
    rra                                           ; $4b1b: $1f
    dec e                                         ; $4b1c: $1d
    ld [de], a                                    ; $4b1d: $12
    jr @+$21                                      ; $4b1e: $18 $1f

    ld [hl-], a                                   ; $4b20: $32
    ccf                                           ; $4b21: $3f
    inc sp                                        ; $4b22: $33
    ld [bc], a                                    ; $4b23: $02
    cpl                                           ; $4b24: $2f
    sbc e                                         ; $4b25: $9b
    scf                                           ; $4b26: $37
    inc sp                                        ; $4b27: $33
    ccf                                           ; $4b28: $3f
    ld b, h                                       ; $4b29: $44
    ld a, e                                       ; $4b2a: $7b
    ld h, d                                       ; $4b2b: $62
    ld e, a                                       ; $4b2c: $5f
    ld l, h                                       ; $4b2d: $6c
    ld [hl], e                                    ; $4b2e: $73
    ld c, d                                       ; $4b2f: $4a
    ld [hl], l                                    ; $4b30: $75
    ld d, [hl]                                    ; $4b31: $56
    ld l, l                                       ; $4b32: $6d
    and c                                         ; $4b33: $a1
    rst $18                                       ; $4b34: $df
    xor [hl]                                      ; $4b35: $ae
    ei                                            ; $4b36: $fb
    ld [hl], e                                    ; $4b37: $73
    ld c, h                                       ; $4b38: $4c
    ret c                                         ; $4b39: $d8

    rst $28                                       ; $4b3a: $ef
    or a                                          ; $4b3b: $b7
    rst $38                                       ; $4b3c: $ff
    ei                                            ; $4b3d: $fb
    call $d9ae                                    ; $4b3e: $cd $ae $d9
    ld [bc], a                                    ; $4b41: $02
    ld [hl], a                                    ; $4b42: $77
    inc b                                         ; $4b43: $04
    nop                                           ; $4b44: $00
    ld [bc], a                                    ; $4b45: $02
    ld bc, $0702                                  ; $4b46: $01 $02 $07
    inc b                                         ; $4b49: $04
    rrca                                          ; $4b4a: $0f
    inc b                                         ; $4b4b: $04
    rra                                           ; $4b4c: $1f
    xor [hl]                                      ; $4b4d: $ae
    ld a, $39                                     ; $4b4e: $3e $39
    dec [hl]                                      ; $4b50: $35
    ld a, $6f                                     ; $4b51: $3e $6f
    ld [hl], b                                    ; $4b53: $70
    ld a, a                                       ; $4b54: $7f
    ld h, b                                       ; $4b55: $60
    db $eb                                        ; $4b56: $eb
    db $f4                                        ; $4b57: $f4
    ld [hl], e                                    ; $4b58: $73
    ld a, h                                       ; $4b59: $7c
    ld sp, hl                                     ; $4b5a: $f9
    cp $bd                                        ; $4b5b: $fe $bd
    cp $57                                        ; $4b5d: $fe $57
    db $fc                                        ; $4b5f: $fc
    sub c                                         ; $4b60: $91
    cp $e9                                        ; $4b61: $fe $e9
    cp $fd                                        ; $4b63: $fe $fd
    ld a, [$fdfb]                                 ; $4b65: $fa $fb $fd
    rst $38                                       ; $4b68: $ff
    ld a, a                                       ; $4b69: $7f
    ld e, [hl]                                    ; $4b6a: $5e
    rst $38                                       ; $4b6b: $ff
    db $ed                                        ; $4b6c: $ed
    sbc a                                         ; $4b6d: $9f
    ld a, [hl]                                    ; $4b6e: $7e
    adc a                                         ; $4b6f: $8f
    xor $1f                                       ; $4b70: $ee $1f
    rst $08                                       ; $4b72: $cf
    ccf                                           ; $4b73: $3f
    sbc a                                         ; $4b74: $9f
    ld a, a                                       ; $4b75: $7f
    ccf                                           ; $4b76: $3f
    rst $38                                       ; $4b77: $ff
    ld [hl], l                                    ; $4b78: $75
    rst $30                                       ; $4b79: $f7
    add $c7                                       ; $4b7a: $c6 $c7
    ld [bc], a                                    ; $4b7c: $02
    add a                                         ; $4b7d: $87
    ld b, $80                                     ; $4b7e: $06 $80
    ld [bc], a                                    ; $4b80: $02
    add c                                         ; $4b81: $81
    add c                                         ; $4b82: $81
    ld b, c                                       ; $4b83: $41
    inc bc                                        ; $4b84: $03
    pop bc                                        ; $4b85: $c1
    add h                                         ; $4b86: $84
    ld hl, $a0e1                                  ; $4b87: $21 $e1 $a0
    ld h, b                                       ; $4b8a: $60
    ld [bc], a                                    ; $4b8b: $02
    ret nz                                        ; $4b8c: $c0

    add e                                         ; $4b8d: $83
    and b                                         ; $4b8e: $a0
    ldh [rLCDC], a                                ; $4b8f: $e0 $40
    inc bc                                        ; $4b91: $03
    ret nz                                        ; $4b92: $c0

    ld [bc], a                                    ; $4b93: $02
    add b                                         ; $4b94: $80
    ld a, [bc]                                    ; $4b95: $0a
    nop                                           ; $4b96: $00
    ld [bc], a                                    ; $4b97: $02
    dec b                                         ; $4b98: $05
    ld [bc], a                                    ; $4b99: $02
    ld c, $9f                                     ; $4b9a: $0e $9f
    rla                                           ; $4b9c: $17
    add hl, de                                    ; $4b9d: $19
    ld a, [hl+]                                   ; $4b9e: $2a
    ccf                                           ; $4b9f: $3f
    ld l, l                                       ; $4ba0: $6d
    ld [hl], a                                    ; $4ba1: $77
    rst $38                                       ; $4ba2: $ff
    sub b                                         ; $4ba3: $90
    rst $38                                       ; $4ba4: $ff
    and b                                         ; $4ba5: $a0
    xor l                                         ; $4ba6: $ad
    rst $10                                       ; $4ba7: $d7
    and $ff                                       ; $4ba8: $e6 $ff
    dec l                                         ; $4baa: $2d
    jp nc, $917f                                  ; $4bab: $d2 $7f $91

    rst $28                                       ; $4bae: $ef
    cp a                                          ; $4baf: $bf
    rst $00                                       ; $4bb0: $c7
    ei                                            ; $4bb1: $fb
    push af                                       ; $4bb2: $f5
    ei                                            ; $4bb3: $fb
    ld l, e                                       ; $4bb4: $6b
    rst $38                                       ; $4bb5: $ff
    db $ed                                        ; $4bb6: $ed
    scf                                           ; $4bb7: $37
    xor e                                         ; $4bb8: $ab
    ld [hl], l                                    ; $4bb9: $75
    cp l                                          ; $4bba: $bd
    ld [bc], a                                    ; $4bbb: $02
    ld [hl], a                                    ; $4bbc: $77
    cp e                                          ; $4bbd: $bb
    rst $38                                       ; $4bbe: $ff
    ld [$72fe], a                                 ; $4bbf: $ea $fe $72
    cp $be                                        ; $4bc2: $fe $be
    ld [hl], d                                    ; $4bc4: $72
    db $fd                                        ; $4bc5: $fd
    inc sp                                        ; $4bc6: $33
    rst $28                                       ; $4bc7: $ef
    ld sp, $31ef                                  ; $4bc8: $31 $ef $31
    cp a                                          ; $4bcb: $bf
    ld h, c                                       ; $4bcc: $61
    sbc l                                         ; $4bcd: $9d
    di                                            ; $4bce: $f3
    db $eb                                        ; $4bcf: $eb
    sbc a                                         ; $4bd0: $9f
    ld a, [hl]                                    ; $4bd1: $7e
    add [hl]                                      ; $4bd2: $86
    ld a, [hl]                                    ; $4bd3: $7e
    add d                                         ; $4bd4: $82
    db $fd                                        ; $4bd5: $fd
    ld b, e                                       ; $4bd6: $43
    ld a, a                                       ; $4bd7: $7f
    sub c                                         ; $4bd8: $91
    ld a, $c5                                     ; $4bd9: $3e $c5
    sbc a                                         ; $4bdb: $9f
    ldh a, [$c1]                                  ; $4bdc: $f0 $c1
    cp $b4                                        ; $4bde: $fe $b4
    rst $38                                       ; $4be0: $ff
    adc $ff                                       ; $4be1: $ce $ff
    ld l, b                                       ; $4be3: $68
    ld a, a                                       ; $4be4: $7f
    ld e, d                                       ; $4be5: $5a
    ld a, l                                       ; $4be6: $7d
    cp e                                          ; $4be7: $bb
    call c, $df2d                                 ; $4be8: $dc $2d $df
    or a                                          ; $4beb: $b7
    ld a, e                                       ; $4bec: $7b
    dec hl                                        ; $4bed: $2b
    rst $30                                       ; $4bee: $f7
    db $dd                                        ; $4bef: $dd
    xor a                                         ; $4bf0: $af
    jp $befe                                      ; $4bf1: $c3 $fe $be


    rst $38                                       ; $4bf4: $ff
    ld l, e                                       ; $4bf5: $6b
    ld [hl], a                                    ; $4bf6: $77
    ld [hl], $3a                                  ; $4bf7: $36 $3a
    ld b, $80                                     ; $4bf9: $06 $80
    add d                                         ; $4bfb: $82
    ret nz                                        ; $4bfc: $c0

    ld b, b                                       ; $4bfd: $40
    inc b                                         ; $4bfe: $04
    add b                                         ; $4bff: $80
    inc bc                                        ; $4c00: $03
    ret nz                                        ; $4c01: $c0

    add c                                         ; $4c02: $81
    ld b, b                                       ; $4c03: $40
    ld [bc], a                                    ; $4c04: $02
    add b                                         ; $4c05: $80
    ld a, [hl+]                                   ; $4c06: $2a
    nop                                           ; $4c07: $00
    ld b, $80                                     ; $4c08: $06 $80
    sub [hl]                                      ; $4c0a: $96
    ld b, b                                       ; $4c0b: $40
    ret nz                                        ; $4c0c: $c0

    ldh [$60], a                                  ; $4c0d: $e0 $60
    ldh a, [rNR10]                                ; $4c0f: $f0 $10
    cp h                                          ; $4c11: $bc
    ld a, h                                       ; $4c12: $7c
    jp $dc7f                                      ; $4c13: $c3 $7f $dc


    ld a, a                                       ; $4c16: $7f
    ld [hl], e                                    ; $4c17: $73
    rst $38                                       ; $4c18: $ff
    cp h                                          ; $4c19: $bc
    cp a                                          ; $4c1a: $bf
    adc e                                         ; $4c1b: $8b
    adc a                                         ; $4c1c: $8f
    add $47                                       ; $4c1d: $c6 $47
    ld b, c                                       ; $4c1f: $41
    pop bc                                        ; $4c20: $c1
    ld [bc], a                                    ; $4c21: $02
    add b                                         ; $4c22: $80
    ld b, $00                                     ; $4c23: $06 $00
    ld [bc], a                                    ; $4c25: $02
    adc h                                         ; $4c26: $8c
    sub d                                         ; $4c27: $92
    ld [hl], d                                    ; $4c28: $72
    cp $0e                                        ; $4c29: $fe $0e
    cp $01                                        ; $4c2b: $fe $01
    rst $38                                       ; $4c2d: $ff
    jr nz, @+$01                                  ; $4c2e: $20 $ff

    ret nz                                        ; $4c30: $c0

    rst $38                                       ; $4c31: $ff
    cp d                                          ; $4c32: $ba
    rst $38                                       ; $4c33: $ff
    ld h, [hl]                                    ; $4c34: $66
    ld a, a                                       ; $4c35: $7f
    rla                                           ; $4c36: $17
    rra                                           ; $4c37: $1f
    dec c                                         ; $4c38: $0d
    rrca                                          ; $4c39: $0f
    ld [bc], a                                    ; $4c3a: $02

jr_0f0_4c3b:
    inc bc                                        ; $4c3b: $03
    ld a, [bc]                                    ; $4c3c: $0a
    nop                                           ; $4c3d: $00
    ld [bc], a                                    ; $4c3e: $02
    ret nz                                        ; $4c3f: $c0

    sub b                                         ; $4c40: $90
    jr c, jr_0f0_4c3b                             ; $4c41: $38 $f8

    ld b, $fe                                     ; $4c43: $06 $fe
    ld bc, $e1ff                                  ; $4c45: $01 $ff $e1
    rst $38                                       ; $4c48: $ff
    sbc a                                         ; $4c49: $9f
    rst $38                                       ; $4c4a: $ff
    pop hl                                        ; $4c4b: $e1
    rst $38                                       ; $4c4c: $ff
    ld a, [de]                                    ; $4c4d: $1a
    cp $c4                                        ; $4c4e: $fe $c4
    db $fc                                        ; $4c50: $fc
    ld [bc], a                                    ; $4c51: $02
    jr c, jr_0f0_4c60                             ; $4c52: $38 $0c

    nop                                           ; $4c54: $00
    rst $38                                       ; $4c55: $ff
    ld hl, $ed0e                                  ; $4c56: $21 $0e $ed
    dec l                                         ; $4c59: $2d
    call nc, $ee23                                ; $4c5a: $d4 $23 $ee
    rst $30                                       ; $4c5d: $f7
    jp hl                                         ; $4c5e: $e9


    rst $38                                       ; $4c5f: $ff

jr_0f0_4c60:
    xor $02                                       ; $4c60: $ee $02
    cp $f3                                        ; $4c62: $fe $f3
    ld sp, hl                                     ; $4c64: $f9
    ei                                            ; $4c65: $fb
    cp $03                                        ; $4c66: $fe $03
    inc b                                         ; $4c68: $04
    ld b, $09                                     ; $4c69: $06 $09
    ld a, [c]                                     ; $4c6b: $f2
    add hl, bc                                    ; $4c6c: $09
    ld a, [$0209]                                 ; $4c6d: $fa $09 $02
    inc d                                         ; $4c70: $14
    add hl, bc                                    ; $4c71: $09
    add hl, de                                    ; $4c72: $19
    ld a, [c]                                     ; $4c73: $f2
    add hl, de                                    ; $4c74: $19
    ld a, [$0119]                                 ; $4c75: $fa $19 $01
    ld b, $01                                     ; $4c78: $06 $01
    ld [bc], a                                    ; $4c7a: $02
    nop                                           ; $4c7b: $00
    ld [bc], a                                    ; $4c7c: $02
    inc bc                                        ; $4c7d: $03
    add h                                         ; $4c7e: $84
    ld c, $0f                                     ; $4c7f: $0e $0f
    rra                                           ; $4c81: $1f
    ld e, $02                                     ; $4c82: $1e $02
    ccf                                           ; $4c84: $3f
    sub b                                         ; $4c85: $90
    dec hl                                        ; $4c86: $2b
    scf                                           ; $4c87: $37
    ld e, a                                       ; $4c88: $5f
    ld h, e                                       ; $4c89: $63
    cp [hl]                                       ; $4c8a: $be
    jp $c3bf                                      ; $4c8b: $c3 $bf $c3


    or e                                          ; $4c8e: $b3
    rst $08                                       ; $4c8f: $cf
    rst $10                                       ; $4c90: $d7
    rst $28                                       ; $4c91: $ef
    sbc e                                         ; $4c92: $9b
    rst $20                                       ; $4c93: $e7
    rst $38                                       ; $4c94: $ff
    add e                                         ; $4c95: $83
    ld [bc], a                                    ; $4c96: $02
    ld a, [bc]                                    ; $4c97: $0a
    ld [bc], a                                    ; $4c98: $02
    inc e                                         ; $4c99: $1c
    sbc c                                         ; $4c9a: $99
    ld a, $22                                     ; $4c9b: $3e $22
    ld b, l                                       ; $4c9d: $45
    ld a, e                                       ; $4c9e: $7b
    db $db                                        ; $4c9f: $db
    rst $28                                       ; $4ca0: $ef
    rst $38                                       ; $4ca1: $ff
    jr nz, @-$1f                                  ; $4ca2: $20 $df

    ld h, c                                       ; $4ca4: $61
    ld d, a                                       ; $4ca5: $57
    xor a                                         ; $4ca6: $af
    cp e                                          ; $4ca7: $bb
    db $ec                                        ; $4ca8: $ec
    dec de                                        ; $4ca9: $1b
    rst $20                                       ; $4caa: $e7
    ld a, a                                       ; $4cab: $7f
    or c                                          ; $4cac: $b1
    sbc a                                         ; $4cad: $9f
    ld a, a                                       ; $4cae: $7f
    ld e, e                                       ; $4caf: $5b
    rst $30                                       ; $4cb0: $f7
    add hl, hl                                    ; $4cb1: $29
    rst $30                                       ; $4cb2: $f7
    db $db                                        ; $4cb3: $db
    ld [bc], a                                    ; $4cb4: $02
    rst $38                                       ; $4cb5: $ff
    add c                                         ; $4cb6: $81
    add b                                         ; $4cb7: $80
    ld [bc], a                                    ; $4cb8: $02
    inc b                                         ; $4cb9: $04
    ld [bc], a                                    ; $4cba: $02
    nop                                           ; $4cbb: $00
    inc b                                         ; $4cbc: $04
    inc b                                         ; $4cbd: $04
    ld b, $00                                     ; $4cbe: $06 $00
    ld [bc], a                                    ; $4cc0: $02
    inc b                                         ; $4cc1: $04
    ld [bc], a                                    ; $4cc2: $02
    ld b, $81                                     ; $4cc3: $06 $81
    rlca                                          ; $4cc5: $07
    ld [bc], a                                    ; $4cc6: $02
    dec b                                         ; $4cc7: $05
    sub b                                         ; $4cc8: $90
    rlca                                          ; $4cc9: $07
    rst $38                                       ; $4cca: $ff
    inc hl                                        ; $4ccb: $23
    sbc a                                         ; $4ccc: $9f
    ld h, e                                       ; $4ccd: $63
    ld d, e                                       ; $4cce: $53
    rst $38                                       ; $4ccf: $ff
    adc a                                         ; $4cd0: $8f
    rst $38                                       ; $4cd1: $ff
    ld [hl], a                                    ; $4cd2: $77
    xor a                                         ; $4cd3: $af
    rla                                           ; $4cd4: $17
    jr jr_0f0_4cea                                ; $4cd5: $18 $13

    inc e                                         ; $4cd7: $1c
    dec de                                        ; $4cd8: $1b
    ld [bc], a                                    ; $4cd9: $02
    inc e                                         ; $4cda: $1c
    sbc h                                         ; $4cdb: $9c
    rra                                           ; $4cdc: $1f
    inc d                                         ; $4cdd: $14
    rra                                           ; $4cde: $1f
    ld [$0d0f], sp                                ; $4cdf: $08 $0f $0d
    ld c, $09                                     ; $4ce2: $0e $09
    ld c, $0b                                     ; $4ce4: $0e $0b
    ld c, $0b                                     ; $4ce6: $0e $0b
    inc c                                         ; $4ce8: $0c
    adc c                                         ; $4ce9: $89

jr_0f0_4cea:
    adc [hl]                                      ; $4cea: $8e
    ld l, l                                       ; $4ceb: $6d
    xor $dd                                       ; $4cec: $ee $dd
    rst $38                                       ; $4cee: $ff
    ld c, h                                       ; $4cef: $4c
    ld a, a                                       ; $4cf0: $7f
    ld [hl-], a                                   ; $4cf1: $32
    ccf                                           ; $4cf2: $3f
    ld a, [de]                                    ; $4cf3: $1a
    rra                                           ; $4cf4: $1f
    ld c, $08                                     ; $4cf5: $0e $08
    ld c, $02                                     ; $4cf7: $0e $02
    ld [$0ebb], sp                                ; $4cf9: $08 $bb $0e
    ld b, $0e                                     ; $4cfc: $06 $0e
    inc c                                         ; $4cfe: $0c
    ld c, $fc                                     ; $4cff: $0e $fc
    ccf                                           ; $4d01: $3f
    cp a                                          ; $4d02: $bf
    ld a, h                                       ; $4d03: $7c
    ld [hl], a                                    ; $4d04: $77
    db $fc                                        ; $4d05: $fc
    ld a, c                                       ; $4d06: $79
    cp $eb                                        ; $4d07: $fe $eb
    inc a                                         ; $4d09: $3c
    call nc, $f82b                                ; $4d0a: $d4 $2b $f8
    rla                                           ; $4d0d: $17
    push af                                       ; $4d0e: $f5
    ld a, [de]                                    ; $4d0f: $1a
    pop af                                        ; $4d10: $f1
    ld e, $e9                                     ; $4d11: $1e $e9
    sbc a                                         ; $4d13: $9f
    db $fc                                        ; $4d14: $fc
    rrca                                          ; $4d15: $0f
    db $ec                                        ; $4d16: $ec
    inc e                                         ; $4d17: $1c
    or $0e                                        ; $4d18: $f6 $0e
    cp [hl]                                       ; $4d1a: $be
    ld b, [hl]                                    ; $4d1b: $46
    ld a, e                                       ; $4d1c: $7b
    add a                                         ; $4d1d: $87
    rst $38                                       ; $4d1e: $ff
    inc bc                                        ; $4d1f: $03
    db $eb                                        ; $4d20: $eb
    rla                                           ; $4d21: $17
    ld [$bf17], a                                 ; $4d22: $ea $17 $bf
    halt                                          ; $4d25: $76
    or l                                          ; $4d26: $b5
    ld a, a                                       ; $4d27: $7f
    ld c, $ff                                     ; $4d28: $0e $ff
    ld e, a                                       ; $4d2a: $5f
    cp $ff                                        ; $4d2b: $fe $ff
    cp $f3                                        ; $4d2d: $fe $f3
    rst $38                                       ; $4d2f: $ff
    db $e3                                        ; $4d30: $e3
    rst $38                                       ; $4d31: $ff
    db $eb                                        ; $4d32: $eb
    rst $30                                       ; $4d33: $f7
    db $ed                                        ; $4d34: $ed
    di                                            ; $4d35: $f3
    inc b                                         ; $4d36: $04
    inc b                                         ; $4d37: $04
    adc h                                         ; $4d38: $8c
    ld b, $02                                     ; $4d39: $06 $02
    dec b                                         ; $4d3b: $05
    inc bc                                        ; $4d3c: $03
    rlca                                          ; $4d3d: $07
    dec b                                         ; $4d3e: $05
    rlca                                          ; $4d3f: $07
    dec b                                         ; $4d40: $05
    ld b, $02                                     ; $4d41: $06 $02
    ld b, $02                                     ; $4d43: $06 $02
    ld [bc], a                                    ; $4d45: $02
    inc b                                         ; $4d46: $04
    ld [bc], a                                    ; $4d47: $02
    nop                                           ; $4d48: $00
    add l                                         ; $4d49: $85
    ld l, b                                       ; $4d4a: $68
    sbc b                                         ; $4d4b: $98
    add sp, $18                                   ; $4d4c: $e8 $18
    sbc b                                         ; $4d4e: $98

jr_0f0_4d4f:
    ld [bc], a                                    ; $4d4f: $02
    ld a, b                                       ; $4d50: $78
    add l                                         ; $4d51: $85
    ret z                                         ; $4d52: $c8

    ld hl, sp+$78                                 ; $4d53: $f8 $78
    jr z, jr_0f0_4d4f                             ; $4d55: $28 $f8

    ld [bc], a                                    ; $4d57: $02
    add b                                         ; $4d58: $80
    ld [$8300], sp                                ; $4d59: $08 $00 $83
    dec bc                                        ; $4d5c: $0b
    rrca                                          ; $4d5d: $0f
    dec c                                         ; $4d5e: $0d
    ld [bc], a                                    ; $4d5f: $02
    rrca                                          ; $4d60: $0f
    ld [bc], a                                    ; $4d61: $02
    dec bc                                        ; $4d62: $0b
    ld [bc], a                                    ; $4d63: $02
    dec c                                         ; $4d64: $0d
    xor l                                         ; $4d65: $ad
    rrca                                          ; $4d66: $0f
    ld [$1f0f], sp                                ; $4d67: $08 $0f $1f
    add hl, de                                    ; $4d6a: $19
    rla                                           ; $4d6b: $17
    inc e                                         ; $4d6c: $1c
    ld [de], a                                    ; $4d6d: $12
    dec e                                         ; $4d6e: $1d
    inc [hl]                                      ; $4d6f: $34
    dec sp                                        ; $4d70: $3b
    ld a, [hl-]                                   ; $4d71: $3a
    daa                                           ; $4d72: $27
    ld a, a                                       ; $4d73: $7f
    rlca                                          ; $4d74: $07
    ld a, a                                       ; $4d75: $7f
    rlca                                          ; $4d76: $07
    ccf                                           ; $4d77: $3f
    ld h, a                                       ; $4d78: $67
    ld [hl], a                                    ; $4d79: $77
    ld c, a                                       ; $4d7a: $4f
    rra                                           ; $4d7b: $1f
    ld l, a                                       ; $4d7c: $6f
    rst $18                                       ; $4d7d: $df
    rst $28                                       ; $4d7e: $ef
    cp a                                          ; $4d7f: $bf
    rst $20                                       ; $4d80: $e7
    ld [hl], a                                    ; $4d81: $77
    adc e                                         ; $4d82: $8b
    rst $30                                       ; $4d83: $f7
    rrca                                          ; $4d84: $0f
    ld e, l                                       ; $4d85: $5d
    xor a                                         ; $4d86: $af
    cp h                                          ; $4d87: $bc
    rst $28                                       ; $4d88: $ef
    ld l, d                                       ; $4d89: $6a
    rst $38                                       ; $4d8a: $ff
    ld [hl], h                                    ; $4d8b: $74
    rst $38                                       ; $4d8c: $ff
    xor d                                         ; $4d8d: $aa
    rst $28                                       ; $4d8e: $ef
    ld h, a                                       ; $4d8f: $67
    rst $20                                       ; $4d90: $e7
    ld h, e                                       ; $4d91: $63
    db $e3                                        ; $4d92: $e3
    ld a, [bc]                                    ; $4d93: $0a
    add b                                         ; $4d94: $80
    ld [bc], a                                    ; $4d95: $02
    ldh a, [$83]                                  ; $4d96: $f0 $83
    ldh [$f0], a                                  ; $4d98: $e0 $f0
    ldh [$03], a                                  ; $4d9a: $e0 $03
    ldh a, [rSC]                                  ; $4d9c: $f0 $02
    sub b                                         ; $4d9e: $90
    adc h                                         ; $4d9f: $8c
    ld d, b                                       ; $4da0: $50
    ret nc                                        ; $4da1: $d0

    dec a                                         ; $4da2: $3d
    cp $02                                        ; $4da3: $fe $02
    rst $38                                       ; $4da5: $ff
    ld d, $ff                                     ; $4da6: $16 $ff
    add c                                         ; $4da8: $81
    rst $38                                       ; $4da9: $ff
    ld d, b                                       ; $4daa: $50

jr_0f0_4dab:
    rst $38                                       ; $4dab: $ff
    ld [$9240], sp                                ; $4dac: $08 $40 $92
    jr nz, jr_0f0_4e11                            ; $4daf: $20 $60

    jr jr_0f0_4dab                                ; $4db1: $18 $f8

    inc b                                         ; $4db3: $04
    db $fc                                        ; $4db4: $fc
    add d                                         ; $4db5: $82
    cp $61                                        ; $4db6: $fe $61
    rst $38                                       ; $4db8: $ff
    sbc c                                         ; $4db9: $99
    rst $38                                       ; $4dba: $ff
    ld b, [hl]                                    ; $4dbb: $46
    cp $22                                        ; $4dbc: $fe $22
    cp $94                                        ; $4dbe: $fe $94
    db $fc                                        ; $4dc0: $fc
    ld [bc], a                                    ; $4dc1: $02
    ld a, b                                       ; $4dc2: $78
    inc b                                         ; $4dc3: $04
    nop                                           ; $4dc4: $00
    sub b                                         ; $4dc5: $90
    ld e, e                                       ; $4dc6: $5b
    ld l, h                                       ; $4dc7: $6c
    ld a, [hl+]                                   ; $4dc8: $2a
    dec [hl]                                      ; $4dc9: $35
    ld d, l                                       ; $4dca: $55
    ld a, a                                       ; $4dcb: $7f
    ld l, b                                       ; $4dcc: $68
    ld d, a                                       ; $4dcd: $57
    and [hl]                                      ; $4dce: $a6
    ei                                            ; $4dcf: $fb
    ld e, a                                       ; $4dd0: $5f
    ld a, a                                       ; $4dd1: $7f
    ld [hl], l                                    ; $4dd2: $75
    ld l, [hl]                                    ; $4dd3: $6e
    ld e, l                                       ; $4dd4: $5d
    ld h, [hl]                                    ; $4dd5: $66
    ld [bc], a                                    ; $4dd6: $02
    dec sp                                        ; $4dd7: $3b
    ld c, $00                                     ; $4dd8: $0e $00
    sub b                                         ; $4dda: $90
    and c                                         ; $4ddb: $a1
    pop hl                                        ; $4ddc: $e1
    or b                                          ; $4ddd: $b0
    ldh a, [$50]                                  ; $4dde: $f0 $50
    or b                                          ; $4de0: $b0
    and b                                         ; $4de1: $a0
    ld h, b                                       ; $4de2: $60
    ld d, b                                       ; $4de3: $50
    ldh a, [$a0]                                  ; $4de4: $f0 $a0
    ldh [$60], a                                  ; $4de6: $e0 $60
    ldh [$c0], a                                  ; $4de8: $e0 $c0
    ld b, b                                       ; $4dea: $40
    ld [bc], a                                    ; $4deb: $02
    ret nz                                        ; $4dec: $c0

    ld c, $00                                     ; $4ded: $0e $00
    adc h                                         ; $4def: $8c
    ld d, h                                       ; $4df0: $54
    ld a, a                                       ; $4df1: $7f
    ld l, d                                       ; $4df2: $6a
    ld a, a                                       ; $4df3: $7f
    dec [hl]                                      ; $4df4: $35
    ccf                                           ; $4df5: $3f
    ld e, $1f                                     ; $4df6: $1e $1f
    dec b                                         ; $4df8: $05
    rlca                                          ; $4df9: $07
    ld [bc], a                                    ; $4dfa: $02
    inc bc                                        ; $4dfb: $03
    ld [bc], a                                    ; $4dfc: $02
    ld bc, $0012                                  ; $4dfd: $01 $12 $00
    rst $38                                       ; $4e00: $ff
    ld hl, $ed0e                                  ; $4e01: $21 $0e $ed
    dec l                                         ; $4e04: $2d
    call nc, $e923                                ; $4e05: $d4 $23 $e9
    db $f4                                        ; $4e08: $f4
    and $fc                                       ; $4e09: $e6 $fc
    di                                            ; $4e0b: $f3
    inc bc                                        ; $4e0c: $03
    rst $30                                       ; $4e0d: $f7
    di                                            ; $4e0e: $f3
    or $fb                                        ; $4e0f: $f6 $fb

jr_0f0_4e11:
    inc bc                                        ; $4e11: $03
    inc bc                                        ; $4e12: $03
    inc bc                                        ; $4e13: $03
    dec b                                         ; $4e14: $05
    ld b, $ef                                     ; $4e15: $06 $ef
    ld b, $f7                                     ; $4e17: $06 $f7
    ld b, $ff                                     ; $4e19: $06 $ff
    inc de                                        ; $4e1b: $13
    rlca                                          ; $4e1c: $07
    ld d, $f3                                     ; $4e1d: $16 $f3
    ld d, $fb                                     ; $4e1f: $16 $fb
    ld d, $ff                                     ; $4e21: $16 $ff
    ld [bc], a                                    ; $4e23: $02
    ld bc, $0302                                  ; $4e24: $01 $02 $03
    add [hl]                                      ; $4e27: $86
    dec b                                         ; $4e28: $05
    ld b, $07                                     ; $4e29: $06 $07

jr_0f0_4e2b:
    dec b                                         ; $4e2b: $05
    rlca                                          ; $4e2c: $07
    inc b                                         ; $4e2d: $04
    ld [bc], a                                    ; $4e2e: $02
    inc bc                                        ; $4e2f: $03
    sub h                                         ; $4e30: $94
    ld b, $07                                     ; $4e31: $06 $07
    inc c                                         ; $4e33: $0c
    rrca                                          ; $4e34: $0f
    rra                                           ; $4e35: $1f
    inc e                                         ; $4e36: $1c
    dec a                                         ; $4e37: $3d
    ld a, $7f                                     ; $4e38: $3e $7f
    ld a, [hl]                                    ; $4e3a: $7e
    adc $ff                                       ; $4e3b: $ce $ff
    cp e                                          ; $4e3d: $bb
    rst $08                                       ; $4e3e: $cf
    cp $8f                                        ; $4e3f: $fe $8f
    ld l, a                                       ; $4e41: $6f
    sbc a                                         ; $4e42: $9f
    ld l, a                                       ; $4e43: $6f
    sbc a                                         ; $4e44: $9f
    ld [bc], a                                    ; $4e45: $02
    db $10                                        ; $4e46: $10
    ld [bc], a                                    ; $4e47: $02
    ld a, h                                       ; $4e48: $7c
    sbc h                                         ; $4e49: $9c
    cp b                                          ; $4e4a: $b8
    ret z                                         ; $4e4b: $c8

    ld d, h                                       ; $4e4c: $54
    cp h                                          ; $4e4d: $bc
    ld l, h                                       ; $4e4e: $6c
    db $fc                                        ; $4e4f: $fc
    xor $92                                       ; $4e50: $ee $92
    ld [hl], h                                    ; $4e52: $74
    adc h                                         ; $4e53: $8c
    xor b                                         ; $4e54: $a8
    ret c                                         ; $4e55: $d8

    ld a, h                                       ; $4e56: $7c
    cp h                                          ; $4e57: $bc
    ld l, [hl]                                    ; $4e58: $6e
    cp d                                          ; $4e59: $ba
    ld a, [$e486]                                 ; $4e5a: $fa $86 $e4
    db $fc                                        ; $4e5d: $fc
    cp d                                          ; $4e5e: $ba
    ld a, [hl]                                    ; $4e5f: $7e
    ld e, e                                       ; $4e60: $5b
    rst $20                                       ; $4e61: $e7
    ld [hl], c                                    ; $4e62: $71
    rst $38                                       ; $4e63: $ff
    dec de                                        ; $4e64: $1b
    rst $38                                       ; $4e65: $ff
    ld [bc], a                                    ; $4e66: $02
    ld b, b                                       ; $4e67: $40
    ld [bc], a                                    ; $4e68: $02
    ld h, b                                       ; $4e69: $60
    add e                                         ; $4e6a: $83
    ld d, b                                       ; $4e6b: $50
    ld [hl], b                                    ; $4e6c: $70
    ld a, b                                       ; $4e6d: $78
    ld [bc], a                                    ; $4e6e: $02
    add sp, -$69                                  ; $4e6f: $e8 $97
    jr c, jr_0f0_4e2b                             ; $4e71: $38 $b8

    ld a, b                                       ; $4e73: $78
    ld hl, sp-$18                                 ; $4e74: $f8 $e8
    ld [hl], h                                    ; $4e76: $74
    db $ec                                        ; $4e77: $ec
    xor h                                         ; $4e78: $ac
    ld [hl], h                                    ; $4e79: $74
    call nc, $fe3c                                ; $4e7a: $d4 $3c $fe
    ld e, $ea                                     ; $4e7d: $1e $ea
    ld e, $fa                                     ; $4e7f: $1e $fa
    ld c, $4d                                     ; $4e81: $0e $4d
    cp e                                          ; $4e83: $bb
    ld l, e                                       ; $4e84: $6b
    sbc a                                         ; $4e85: $9f
    cp e                                          ; $4e86: $bb
    call $8004                                    ; $4e87: $cd $04 $80
    call c, $dfae                                 ; $4e8a: $dc $ae $df
    rst $30                                       ; $4e8d: $f7
    rst $08                                       ; $4e8e: $cf
    rst $18                                       ; $4e8f: $df
    rst $20                                       ; $4e90: $e7
    db $db                                        ; $4e91: $db
    and a                                         ; $4e92: $a7
    cp e                                          ; $4e93: $bb
    rst $00                                       ; $4e94: $c7
    rst $38                                       ; $4e95: $ff
    rst $00                                       ; $4e96: $c7
    rst $10                                       ; $4e97: $d7
    rst $28                                       ; $4e98: $ef
    cp [hl]                                       ; $4e99: $be
    rst $20                                       ; $4e9a: $e7
    cp e                                          ; $4e9b: $bb
    rst $20                                       ; $4e9c: $e7
    ld e, l                                       ; $4e9d: $5d
    ld h, e                                       ; $4e9e: $63
    ld a, l                                       ; $4e9f: $7d
    ld b, e                                       ; $4ea0: $43
    ld a, a                                       ; $4ea1: $7f
    ld b, c                                       ; $4ea2: $41
    ld a, a                                       ; $4ea3: $7f
    ld d, c                                       ; $4ea4: $51
    ld a, [hl]                                    ; $4ea5: $7e
    ld b, c                                       ; $4ea6: $41
    ld a, l                                       ; $4ea7: $7d
    ld [bc], a                                    ; $4ea8: $02
    ld a, a                                       ; $4ea9: $7f
    ld [bc], a                                    ; $4eaa: $02
    ld de, $c46e                                  ; $4eab: $11 $6e $c4
    rst $38                                       ; $4eae: $ff
    ld a, [$e7ff]                                 ; $4eaf: $fa $ff $e7
    ld hl, sp-$21                                 ; $4eb2: $f8 $df
    ldh [$5b], a                                  ; $4eb4: $e0 $5b
    db $e4                                        ; $4eb6: $e4
    ei                                            ; $4eb7: $fb
    call nz, $c1be                                ; $4eb8: $c4 $be $c1
    ccf                                           ; $4ebb: $3f
    ret nz                                        ; $4ebc: $c0

    inc sp                                        ; $4ebd: $33
    call z, $ed53                                 ; $4ebe: $cc $53 $ed
    sbc a                                         ; $4ec1: $9f
    pop hl                                        ; $4ec2: $e1
    and [hl]                                      ; $4ec3: $a6
    ld sp, hl                                     ; $4ec4: $f9
    ret nz                                        ; $4ec5: $c0

    rst $38                                       ; $4ec6: $ff
    cp e                                          ; $4ec7: $bb
    adc $a9                                       ; $4ec8: $ce $a9
    sbc $1d                                       ; $4eca: $de $1d
    rst $38                                       ; $4ecc: $ff
    cp e                                          ; $4ecd: $bb
    ld a, [$fefd]                                 ; $4ece: $fa $fd $fe
    rst $38                                       ; $4ed1: $ff
    db $fd                                        ; $4ed2: $fd
    rst $30                                       ; $4ed3: $f7
    db $fd                                        ; $4ed4: $fd
    rst $20                                       ; $4ed5: $e7
    cp $e3                                        ; $4ed6: $fe $e3
    cp $e7                                        ; $4ed8: $fe $e7
    db $fd                                        ; $4eda: $fd
    sbc $f6                                       ; $4edb: $de $f6
    adc $f2                                       ; $4edd: $ce $f2
    sub $ea                                       ; $4edf: $d6 $ea
    jp c, $feee                                   ; $4ee1: $da $ee $fe

    jp z, $fe9e                                   ; $4ee4: $ca $9e $fe

    ld b, $02                                     ; $4ee7: $06 $02
    add c                                         ; $4ee9: $81
    ld bc, $0302                                  ; $4eea: $01 $02 $03
    add l                                         ; $4eed: $85
    ld bc, $0103                                  ; $4eee: $01 $03 $01
    inc bc                                        ; $4ef1: $03
    ld bc, $0204                                  ; $4ef2: $01 $04 $02
    ld c, $00                                     ; $4ef5: $0e $00
    ld [bc], a                                    ; $4ef7: $02
    ret nz                                        ; $4ef8: $c0

    sub d                                         ; $4ef9: $92
    and l                                         ; $4efa: $a5
    and $f2                                       ; $4efb: $e6 $f2
    di                                            ; $4efd: $f3
    ld c, d                                       ; $4efe: $4a
    ld a, e                                       ; $4eff: $7b
    ld h, [hl]                                    ; $4f00: $66
    ld a, a                                       ; $4f01: $7f
    dec sp                                        ; $4f02: $3b
    ccf                                           ; $4f03: $3f
    dec d                                         ; $4f04: $15
    rra                                           ; $4f05: $1f
    dec bc                                        ; $4f06: $0b
    rrca                                          ; $4f07: $0f
    dec bc                                        ; $4f08: $0b
    rrca                                          ; $4f09: $0f
    ld b, $07                                     ; $4f0a: $06 $07
    ld [bc], a                                    ; $4f0c: $02
    inc bc                                        ; $4f0d: $03
    inc b                                         ; $4f0e: $04
    ld bc, $0281                                  ; $4f0f: $01 $81 $02
    inc bc                                        ; $4f12: $03
    inc bc                                        ; $4f13: $03
    and e                                         ; $4f14: $a3
    ld [bc], a                                    ; $4f15: $02
    inc bc                                        ; $4f16: $03
    ld a, [bc]                                    ; $4f17: $0a
    rrca                                          ; $4f18: $0f
    rst $28                                       ; $4f19: $ef
    ld e, a                                       ; $4f1a: $5f
    rst $28                                       ; $4f1b: $ef
    rra                                           ; $4f1c: $1f
    ld a, a                                       ; $4f1d: $7f
    rst $08                                       ; $4f1e: $cf
    rst $30                                       ; $4f1f: $f7
    rst $08                                       ; $4f20: $cf
    dec [hl]                                      ; $4f21: $35
    rst $28                                       ; $4f22: $ef
    rst $30                                       ; $4f23: $f7
    rst $08                                       ; $4f24: $cf
    dec l                                         ; $4f25: $2d
    di                                            ; $4f26: $f3
    cp l                                          ; $4f27: $bd
    ld b, [hl]                                    ; $4f28: $46
    rst $30                                       ; $4f29: $f7
    rst $08                                       ; $4f2a: $cf
    rst $18                                       ; $4f2b: $df
    xor a                                         ; $4f2c: $af
    ei                                            ; $4f2d: $fb
    xor a                                         ; $4f2e: $af
    cp l                                          ; $4f2f: $bd
    rst $28                                       ; $4f30: $ef
    ld l, d                                       ; $4f31: $6a
    rst $38                                       ; $4f32: $ff
    db $fc                                        ; $4f33: $fc
    ccf                                           ; $4f34: $3f
    ld a, [$c09f]                                 ; $4f35: $fa $9f $c0
    rla                                           ; $4f38: $17
    ldh a, [rSC]                                  ; $4f39: $f0 $02
    add b                                         ; $4f3b: $80
    adc b                                         ; $4f3c: $88
    ld a, a                                       ; $4f3d: $7f
    rst $38                                       ; $4f3e: $ff
    ld b, h                                       ; $4f3f: $44
    rst $38                                       ; $4f40: $ff
    ld e, $fd                                     ; $4f41: $1e $fd
    ld h, b                                       ; $4f43: $60
    and b                                         ; $4f44: $a0
    ld [bc], a                                    ; $4f45: $02
    ldh [$83], a                                  ; $4f46: $e0 $83
    ld h, b                                       ; $4f48: $60
    and b                                         ; $4f49: $a0
    ret nc                                        ; $4f4a: $d0

    ld [bc], a                                    ; $4f4b: $02
    ld [hl], b                                    ; $4f4c: $70
    sub e                                         ; $4f4d: $93
    ret nc                                        ; $4f4e: $d0

    sub b                                         ; $4f4f: $90
    ldh a, [$58]                                  ; $4f50: $f0 $58
    ld hl, sp+$38                                 ; $4f52: $f8 $38
    ld hl, sp+$16                                 ; $4f54: $f8 $16
    cp $0d                                        ; $4f56: $fe $0d
    ei                                            ; $4f58: $fb
    rlca                                          ; $4f59: $07
    rst $38                                       ; $4f5a: $ff
    adc h                                         ; $4f5b: $8c
    db $fc                                        ; $4f5c: $fc
    ld c, b                                       ; $4f5d: $48
    ld hl, sp+$30                                 ; $4f5e: $f8 $30
    ldh a, [rSC]                                  ; $4f60: $f0 $02
    ldh [rSC], a                                  ; $4f62: $e0 $02
    add b                                         ; $4f64: $80
    sub [hl]                                      ; $4f65: $96
    dec hl                                        ; $4f66: $2b
    scf                                           ; $4f67: $37
    ld [hl-], a                                   ; $4f68: $32
    cpl                                           ; $4f69: $2f
    ld d, [hl]                                    ; $4f6a: $56
    ld l, l                                       ; $4f6b: $6d
    ld a, d                                       ; $4f6c: $7a
    ld e, l                                       ; $4f6d: $5d
    ld d, l                                       ; $4f6e: $55
    ld l, e                                       ; $4f6f: $6b
    sub l                                         ; $4f70: $95
    rst $38                                       ; $4f71: $ff
    ret c                                         ; $4f72: $d8

    and a                                         ; $4f73: $a7
    db $ec                                        ; $4f74: $ec
    rst $30                                       ; $4f75: $f7
    cp a                                          ; $4f76: $bf
    rst $38                                       ; $4f77: $ff
    ld h, a                                       ; $4f78: $67
    ld e, h                                       ; $4f79: $5c
    db $fd                                        ; $4f7a: $fd
    adc $02                                       ; $4f7b: $ce $02
    ld [hl], e                                    ; $4f7d: $73
    ld [$9200], sp                                ; $4f7e: $08 $00 $92
    jp nc, $f0ff                                  ; $4f81: $d2 $ff $f0

    rst $38                                       ; $4f84: $ff
    ld hl, sp-$01                                 ; $4f85: $f8 $ff
    sub $df                                       ; $4f87: $d6 $df
    ld l, e                                       ; $4f89: $6b
    rst $28                                       ; $4f8a: $ef
    and [hl]                                      ; $4f8b: $a6
    ld h, a                                       ; $4f8c: $67
    jp $a143                                      ; $4f8d: $c3 $43 $a1


    pop hl                                        ; $4f90: $e1
    ld h, c                                       ; $4f91: $61
    pop hl                                        ; $4f92: $e1
    ld [bc], a                                    ; $4f93: $02
    ret nz                                        ; $4f94: $c0

    add d                                         ; $4f95: $82
    ld b, b                                       ; $4f96: $40
    ret nz                                        ; $4f97: $c0

    ld [bc], a                                    ; $4f98: $02
    add b                                         ; $4f99: $80
    ld [$9800], sp                                ; $4f9a: $08 $00 $98
    dec c                                         ; $4f9d: $0d
    ld c, $03                                     ; $4f9e: $0e $03
    rrca                                          ; $4fa0: $0f
    ld bc, $000f                                  ; $4fa1: $01 $0f $00
    rrca                                          ; $4fa4: $0f
    nop                                           ; $4fa5: $00
    rrca                                          ; $4fa6: $0f
    ld [$040f], sp                                ; $4fa7: $08 $0f $04
    rrca                                          ; $4faa: $0f
    ld a, [bc]                                    ; $4fab: $0a
    rrca                                          ; $4fac: $0f
    dec c                                         ; $4fad: $0d
    rrca                                          ; $4fae: $0f
    ld a, [bc]                                    ; $4faf: $0a
    rrca                                          ; $4fb0: $0f
    dec b                                         ; $4fb1: $05
    rlca                                          ; $4fb2: $07
    ld [bc], a                                    ; $4fb3: $02
    inc bc                                        ; $4fb4: $03
    ld [bc], a                                    ; $4fb5: $02
    ld bc, $0006                                  ; $4fb6: $01 $06 $00
    rst $38                                       ; $4fb9: $ff
    ld hl, $ed0e                                  ; $4fba: $21 $0e $ed
    dec l                                         ; $4fbd: $2d
    call nc, $e823                                ; $4fbe: $d4 $23 $e8
    di                                            ; $4fc1: $f3
    and $fb                                       ; $4fc2: $e6 $fb
    di                                            ; $4fc4: $f3
    inc bc                                        ; $4fc5: $03
    rst $30                                       ; $4fc6: $f7
    ld a, [c]                                     ; $4fc7: $f2
    or $fa                                        ; $4fc8: $f6 $fa
    or $02                                        ; $4fca: $f6 $02
    inc bc                                        ; $4fcc: $03
    ld b, $07                                     ; $4fcd: $06 $07
    rst $28                                       ; $4fcf: $ef
    ld b, $f7                                     ; $4fd0: $06 $f7
    ld b, $ff                                     ; $4fd2: $06 $ff
    inc de                                        ; $4fd4: $13
    rlca                                          ; $4fd5: $07
    ld d, $f3                                     ; $4fd6: $16 $f3
    ld d, $fb                                     ; $4fd8: $16 $fb
    ld d, $ff                                     ; $4fda: $16 $ff
    ld [bc], a                                    ; $4fdc: $02
    ld bc, $0287                                  ; $4fdd: $01 $87 $02
    inc bc                                        ; $4fe0: $03
    ld b, $07                                     ; $4fe1: $06 $07
    dec bc                                        ; $4fe3: $0b
    ld c, $0f                                     ; $4fe4: $0e $0f
    ld [bc], a                                    ; $4fe6: $02
    ld a, [bc]                                    ; $4fe7: $0a
    add d                                         ; $4fe8: $82
    rrca                                          ; $4fe9: $0f
    ld b, $02                                     ; $4fea: $06 $02
    rlca                                          ; $4fec: $07
    sub c                                         ; $4fed: $91
    ld b, $0c                                     ; $4fee: $06 $0c

jr_0f0_4ff0:
    rrca                                          ; $4ff0: $0f
    dec e                                         ; $4ff1: $1d
    rra                                           ; $4ff2: $1f
    ccf                                           ; $4ff3: $3f
    inc a                                         ; $4ff4: $3c
    ld a, l                                       ; $4ff5: $7d
    ld a, [hl]                                    ; $4ff6: $7e
    sbc $ff                                       ; $4ff7: $de $ff
    cp e                                          ; $4ff9: $bb
    rst $08                                       ; $4ffa: $cf
    cp $8f                                        ; $4ffb: $fe $8f
    ld l, a                                       ; $4ffd: $6f
    sbc a                                         ; $4ffe: $9f
    ld [bc], a                                    ; $4fff: $02
    jr nc, jr_0f0_5004                            ; $5000: $30 $02

    ldh [$9c], a                                  ; $5002: $e0 $9c

jr_0f0_5004:
    ld d, b                                       ; $5004: $50
    or b                                          ; $5005: $b0
    add sp, $58                                   ; $5006: $e8 $58
    cp b                                          ; $5008: $b8
    ld hl, sp-$4c                                 ; $5009: $f8 $b4
    ld e, h                                       ; $500b: $5c
    db $ec                                        ; $500c: $ec
    inc a                                         ; $500d: $3c
    db $fc                                        ; $500e: $fc
    inc c                                         ; $500f: $0c
    ld a, b                                       ; $5010: $78
    ld hl, sp-$58                                 ; $5011: $f8 $a8
    ld hl, sp-$04                                 ; $5013: $f8 $fc
    inc b                                         ; $5015: $04
    jr z, jr_0f0_4ff0                             ; $5016: $28 $d8

    rst $30                                       ; $5018: $f7
    rst $38                                       ; $5019: $ff
    or a                                          ; $501a: $b7
    rst $08                                       ; $501b: $cf
    ld b, c                                       ; $501c: $41
    rst $38                                       ; $501d: $ff
    dec sp                                        ; $501e: $3b
    rst $38                                       ; $501f: $ff
    ld [bc], a                                    ; $5020: $02
    ret nz                                        ; $5021: $c0

    add e                                         ; $5022: $83
    and b                                         ; $5023: $a0
    ldh [$f0], a                                  ; $5024: $e0 $f0
    ld [bc], a                                    ; $5026: $02
    ret nc                                        ; $5027: $d0

    ld [bc], a                                    ; $5028: $02
    ldh a, [rSC]                                  ; $5029: $f0 $02
    ld [hl], b                                    ; $502b: $70
    sub l                                         ; $502c: $95
    ret nc                                        ; $502d: $d0

    ret c                                         ; $502e: $d8

    add sp, -$08                                  ; $502f: $e8 $f8
    add sp, $68                                   ; $5031: $e8 $68
    ld hl, sp-$48                                 ; $5033: $f8 $b8
    ld a, b                                       ; $5035: $78
    call c, $d43c                                 ; $5036: $dc $3c $d4
    inc a                                         ; $5039: $3c
    ld [$ce1e], a                                 ; $503a: $ea $1e $ce
    ld a, [hl-]                                   ; $503d: $3a
    call Call_0f0_6f3b                            ; $503e: $cd $3b $6f
    sbc c                                         ; $5041: $99
    ld [bc], a                                    ; $5042: $02
    add b                                         ; $5043: $80
    cp a                                          ; $5044: $bf
    or a                                          ; $5045: $b7
    rst $08                                       ; $5046: $cf
    xor [hl]                                      ; $5047: $ae
    rst $18                                       ; $5048: $df
    rst $30                                       ; $5049: $f7
    rst $08                                       ; $504a: $cf
    rst $18                                       ; $504b: $df
    rst $20                                       ; $504c: $e7
    db $db                                        ; $504d: $db
    and a                                         ; $504e: $a7
    cp e                                          ; $504f: $bb
    rst $00                                       ; $5050: $c7
    cp e                                          ; $5051: $bb
    rst $00                                       ; $5052: $c7
    rst $18                                       ; $5053: $df
    rst $20                                       ; $5054: $e7
    or $ef                                        ; $5055: $f6 $ef
    cp e                                          ; $5057: $bb
    rst $20                                       ; $5058: $e7
    ld e, l                                       ; $5059: $5d
    ld h, e                                       ; $505a: $63
    ld a, a                                       ; $505b: $7f
    ld b, c                                       ; $505c: $41
    ld e, a                                       ; $505d: $5f
    ld h, c                                       ; $505e: $61
    ld e, [hl]                                    ; $505f: $5e
    ld h, c                                       ; $5060: $61
    ld e, [hl]                                    ; $5061: $5e
    ld [hl], c                                    ; $5062: $71
    ld a, l                                       ; $5063: $7d
    ld [bc], a                                    ; $5064: $02
    ld a, [hl]                                    ; $5065: $7e
    inc bc                                        ; $5066: $03
    sbc h                                         ; $5067: $9c
    db $e3                                        ; $5068: $e3
    call z, $f9ff                                 ; $5069: $cc $ff $f9
    rst $38                                       ; $506c: $ff
    rst $20                                       ; $506d: $e7
    ld hl, sp-$11                                 ; $506e: $f8 $ef
    ldh a, [$bd]                                  ; $5070: $f0 $bd
    ld [c], a                                     ; $5072: $e2
    db $db                                        ; $5073: $db
    db $e4                                        ; $5074: $e4
    ccf                                           ; $5075: $3f
    ret nz                                        ; $5076: $c0

    cp a                                          ; $5077: $bf
    ret nz                                        ; $5078: $c0

    dec de                                        ; $5079: $1b
    db $e4                                        ; $507a: $e4
    ld d, d                                       ; $507b: $52
    db $ed                                        ; $507c: $ed
    sbc [hl]                                      ; $507d: $9e
    pop hl                                        ; $507e: $e1
    and a                                         ; $507f: $a7
    ld hl, sp-$40                                 ; $5080: $f8 $c0
    rst $38                                       ; $5082: $ff
    nop                                           ; $5083: $00
    ld [bc], a                                    ; $5084: $02
    add b                                         ; $5085: $80
    add e                                         ; $5086: $83
    nop                                           ; $5087: $00
    add b                                         ; $5088: $80
    nop                                           ; $5089: $00
    ld [bc], a                                    ; $508a: $02
    add b                                         ; $508b: $80
    add c                                         ; $508c: $81
    nop                                           ; $508d: $00
    ld [bc], a                                    ; $508e: $02
    add b                                         ; $508f: $80
    add [hl]                                      ; $5090: $86
    nop                                           ; $5091: $00
    add b                                         ; $5092: $80
    nop                                           ; $5093: $00
    add b                                         ; $5094: $80
    nop                                           ; $5095: $00
    add b                                         ; $5096: $80
    ld [bc], a                                    ; $5097: $02
    nop                                           ; $5098: $00
    add h                                         ; $5099: $84
    add b                                         ; $509a: $80
    nop                                           ; $509b: $00
    add b                                         ; $509c: $80
    nop                                           ; $509d: $00
    inc bc                                        ; $509e: $03
    add b                                         ; $509f: $80
    and h                                         ; $50a0: $a4
    push af                                       ; $50a1: $f5
    rst $08                                       ; $50a2: $cf

jr_0f0_50a3:
    ld a, [hl+]                                   ; $50a3: $2a
    db $db                                        ; $50a4: $db
    ld a, [bc]                                    ; $50a5: $0a
    ei                                            ; $50a6: $fb
    inc c                                         ; $50a7: $0c
    inc b                                         ; $50a8: $04
    ld a, [bc]                                    ; $50a9: $0a
    ld b, $0e                                     ; $50aa: $06 $0e
    ld [bc], a                                    ; $50ac: $02
    cp l                                          ; $50ad: $bd
    xor e                                         ; $50ae: $ab
    rst $38                                       ; $50af: $ff
    db $ed                                        ; $50b0: $ed
    db $dd                                        ; $50b1: $dd
    db $db                                        ; $50b2: $db
    ld e, [hl]                                    ; $50b3: $5e
    jp nc, $ec2c                                  ; $50b4: $d2 $2c $ec

    ld h, b                                       ; $50b7: $60
    and b                                         ; $50b8: $a0
    ld h, b                                       ; $50b9: $60
    and b                                         ; $50ba: $a0
    ldh [rNR41], a                                ; $50bb: $e0 $20
    ldh [rNR41], a                                ; $50bd: $e0 $20
    ld h, b                                       ; $50bf: $60
    and b                                         ; $50c0: $a0
    jr nz, jr_0f0_50a3                            ; $50c1: $20 $e0

    ret nc                                        ; $50c3: $d0

    ld [hl], b                                    ; $50c4: $70
    ld [bc], a                                    ; $50c5: $02
    ldh a, [$94]                                  ; $50c6: $f0 $94
    rlca                                          ; $50c8: $07
    inc b                                         ; $50c9: $04
    push bc                                       ; $50ca: $c5
    add $a4                                       ; $50cb: $c6 $a4
    rst $20                                       ; $50cd: $e7
    cp $ff                                        ; $50ce: $fe $ff
    ld d, [hl]                                    ; $50d0: $56
    ld a, a                                       ; $50d1: $7f
    dec hl                                        ; $50d2: $2b
    ccf                                           ; $50d3: $3f
    dec d                                         ; $50d4: $15
    rra                                           ; $50d5: $1f
    inc de                                        ; $50d6: $13
    rra                                           ; $50d7: $1f
    rrca                                          ; $50d8: $0f
    ld c, $06                                     ; $50d9: $0e $06
    rlca                                          ; $50db: $07
    inc b                                         ; $50dc: $04
    inc bc                                        ; $50dd: $03
    add c                                         ; $50de: $81
    ld [bc], a                                    ; $50df: $02
    inc bc                                        ; $50e0: $03
    inc bc                                        ; $50e1: $03
    and l                                         ; $50e2: $a5
    ld [bc], a                                    ; $50e3: $02
    inc bc                                        ; $50e4: $03
    ld [bc], a                                    ; $50e5: $02
    inc bc                                        ; $50e6: $03
    ld e, $1f                                     ; $50e7: $1e $1f
    rst $38                                       ; $50e9: $ff
    sbc a                                         ; $50ea: $9f
    rst $28                                       ; $50eb: $ef
    rra                                           ; $50ec: $1f
    rst $28                                       ; $50ed: $ef
    sbc a                                         ; $50ee: $9f
    rst $28                                       ; $50ef: $ef
    cp a                                          ; $50f0: $bf
    ld a, e                                       ; $50f1: $7b
    rst $08                                       ; $50f2: $cf
    db $ed                                        ; $50f3: $ed
    sbc a                                         ; $50f4: $9f
    ld l, e                                       ; $50f5: $6b
    rst $30                                       ; $50f6: $f7
    cp e                                          ; $50f7: $bb
    ld b, l                                       ; $50f8: $45
    rst $30                                       ; $50f9: $f7
    adc a                                         ; $50fa: $8f
    db $dd                                        ; $50fb: $dd
    xor a                                         ; $50fc: $af
    rst $38                                       ; $50fd: $ff
    xor a                                         ; $50fe: $af
    cp e                                          ; $50ff: $bb
    rst $28                                       ; $5100: $ef
    ld l, l                                       ; $5101: $6d
    rst $38                                       ; $5102: $ff
    cp d                                          ; $5103: $ba
    ld a, a                                       ; $5104: $7f
    db $fc                                        ; $5105: $fc
    cp a                                          ; $5106: $bf
    sbc d                                         ; $5107: $9a
    add hl, bc                                    ; $5108: $09
    cp $87                                        ; $5109: $fe $87
    db $fc                                        ; $510b: $fc
    cp $fc                                        ; $510c: $fe $fc
    cp $fc                                        ; $510e: $fe $fc
    cp $fc                                        ; $5110: $fe $fc
    ld [bc], a                                    ; $5112: $02
    cp $82                                        ; $5113: $fe $82
    db $fc                                        ; $5115: $fc
    cp $02                                        ; $5116: $fe $02
    db $fc                                        ; $5118: $fc
    sub b                                         ; $5119: $90
    cp $08                                        ; $511a: $fe $08
    ld c, $f6                                     ; $511c: $0e $f6
    rst $30                                       ; $511e: $f7
    adc l                                         ; $511f: $8d
    rst $38                                       ; $5120: $ff
    ld a, l                                       ; $5121: $7d
    cp $e0                                        ; $5122: $fe $e0
    jr nz, jr_0f0_5186                            ; $5124: $20 $60

    ldh [$60], a                                  ; $5126: $e0 $60
    and b                                         ; $5128: $a0
    ret nc                                        ; $5129: $d0

    ld [bc], a                                    ; $512a: $02
    ld [hl], b                                    ; $512b: $70
    sub e                                         ; $512c: $93
    ret nc                                        ; $512d: $d0

    db $10                                        ; $512e: $10
    ldh a, [$90]                                  ; $512f: $f0 $90
    ldh a, [rBCPS]                                ; $5131: $f0 $68
    ld hl, sp+$36                                 ; $5133: $f8 $36
    cp $0d                                        ; $5135: $fe $0d
    ei                                            ; $5137: $fb
    ld c, $fe                                     ; $5138: $0e $fe
    inc c                                         ; $513a: $0c
    db $fc                                        ; $513b: $fc
    adc b                                         ; $513c: $88
    ld hl, sp+$50                                 ; $513d: $f8 $50
    ldh a, [rSC]                                  ; $513f: $f0 $02
    ldh [rSC], a                                  ; $5141: $e0 $02
    add b                                         ; $5143: $80
    sub [hl]                                      ; $5144: $96
    dec bc                                        ; $5145: $0b
    rrca                                          ; $5146: $0f
    ld [hl], $2f                                  ; $5147: $36 $2f
    ld d, [hl]                                    ; $5149: $56
    ld l, l                                       ; $514a: $6d
    ld l, d                                       ; $514b: $6a
    ld e, l                                       ; $514c: $5d
    ld e, d                                       ; $514d: $5a
    ld h, l                                       ; $514e: $65
    ld c, d                                       ; $514f: $4a
    ld a, a                                       ; $5150: $7f
    call c, $eea3                                 ; $5151: $dc $a3 $ee
    rst $30                                       ; $5154: $f7
    cp a                                          ; $5155: $bf
    rst $38                                       ; $5156: $ff
    push de                                       ; $5157: $d5
    xor $75                                       ; $5158: $ee $75
    ld c, [hl]                                    ; $515a: $4e
    ld [bc], a                                    ; $515b: $02
    ld a, e                                       ; $515c: $7b
    ld [$9300], sp                                ; $515d: $08 $00 $93
    and d                                         ; $5160: $a2
    rst $38                                       ; $5161: $ff
    ret nc                                        ; $5162: $d0

    rst $38                                       ; $5163: $ff
    add sp, -$01                                  ; $5164: $e8 $ff
    db $fc                                        ; $5166: $fc
    rst $38                                       ; $5167: $ff
    xor [hl]                                      ; $5168: $ae
    rst $28                                       ; $5169: $ef
    xor e                                         ; $516a: $ab
    ld l, a                                       ; $516b: $6f
    push hl                                       ; $516c: $e5
    ld h, a                                       ; $516d: $67
    and d                                         ; $516e: $a2
    db $e3                                        ; $516f: $e3
    and c                                         ; $5170: $a1
    pop hl                                        ; $5171: $e1
    ld b, b                                       ; $5172: $40
    ld [bc], a                                    ; $5173: $02
    ret nz                                        ; $5174: $c0

    add c                                         ; $5175: $81
    ld b, b                                       ; $5176: $40
    ld [bc], a                                    ; $5177: $02
    add b                                         ; $5178: $80
    ld [$9800], sp                                ; $5179: $08 $00 $98
    dec bc                                        ; $517c: $0b
    ld c, $06                                     ; $517d: $0e $06
    rrca                                          ; $517f: $0f
    ld bc, $000f                                  ; $5180: $01 $0f $00
    rrca                                          ; $5183: $0f
    nop                                           ; $5184: $00
    rrca                                          ; $5185: $0f

jr_0f0_5186:
    nop                                           ; $5186: $00
    rrca                                          ; $5187: $0f
    inc c                                         ; $5188: $0c
    rrca                                          ; $5189: $0f
    ld a, [bc]                                    ; $518a: $0a
    rrca                                          ; $518b: $0f
    dec b                                         ; $518c: $05
    rrca                                          ; $518d: $0f
    ld a, [bc]                                    ; $518e: $0a
    rrca                                          ; $518f: $0f
    dec b                                         ; $5190: $05
    rlca                                          ; $5191: $07
    inc b                                         ; $5192: $04
    rlca                                          ; $5193: $07
    ld [bc], a                                    ; $5194: $02
    inc bc                                        ; $5195: $03
    ld b, $00                                     ; $5196: $06 $00
    rst $38                                       ; $5198: $ff
    inc hl                                        ; $5199: $23
    rrca                                          ; $519a: $0f
    db $ed                                        ; $519b: $ed
    dec l                                         ; $519c: $2d
    call nc, $eb23                                ; $519d: $d4 $23 $eb
    di                                            ; $51a0: $f3
    add sp, -$05                                  ; $51a1: $e8 $fb
    ld a, [c]                                     ; $51a3: $f2
    inc bc                                        ; $51a4: $03
    ld hl, sp-$11                                 ; $51a5: $f8 $ef
    ld hl, sp-$09                                 ; $51a7: $f8 $f7
    ld hl, sp-$01                                 ; $51a9: $f8 $ff
    db $fc                                        ; $51ab: $fc
    rlca                                          ; $51ac: $07
    ld [$08ef], sp                                ; $51ad: $08 $ef $08
    rst $30                                       ; $51b0: $f7
    ld [$0cff], sp                                ; $51b1: $08 $ff $0c

jr_0f0_51b4:
    ld b, $18                                     ; $51b4: $06 $18
    di                                            ; $51b6: $f3
    jr jr_0f0_51b4                                ; $51b7: $18 $fb

    jr jr_0f0_51be                                ; $51b9: $18 $03

    jr jr_0f0_51c4                                ; $51bb: $18 $07

    ld [bc], a                                    ; $51bd: $02

jr_0f0_51be:
    ld bc, $0302                                  ; $51be: $01 $02 $03
    add c                                         ; $51c1: $81

jr_0f0_51c2:
    dec b                                         ; $51c2: $05
    ld [bc], a                                    ; $51c3: $02

jr_0f0_51c4:
    rlca                                          ; $51c4: $07
    ld [bc], a                                    ; $51c5: $02
    dec b                                         ; $51c6: $05
    add c                                         ; $51c7: $81
    rlca                                          ; $51c8: $07
    inc b                                         ; $51c9: $04
    inc bc                                        ; $51ca: $03
    sub d                                         ; $51cb: $92
    ld c, $0f                                     ; $51cc: $0e $0f
    ld a, $3f                                     ; $51ce: $3e $3f
    ld a, a                                       ; $51d0: $7f
    ld a, [hl]                                    ; $51d1: $7e
    jp c, $beff                                   ; $51d2: $da $ff $be

    rst $08                                       ; $51d5: $cf
    rst $38                                       ; $51d6: $ff
    adc a                                         ; $51d7: $8f
    ld l, l                                       ; $51d8: $6d
    sbc a                                         ; $51d9: $9f
    ld l, a                                       ; $51da: $6f
    sbc a                                         ; $51db: $9f
    rra                                           ; $51dc: $1f
    rst $38                                       ; $51dd: $ff
    ld [bc], a                                    ; $51de: $02
    ld d, b                                       ; $51df: $50
    ld [bc], a                                    ; $51e0: $02
    ld [hl], b                                    ; $51e1: $70
    sbc h                                         ; $51e2: $9c
    xor b                                         ; $51e3: $a8
    ret c                                         ; $51e4: $d8

    ld d, h                                       ; $51e5: $54
    cp h                                          ; $51e6: $bc
    ld l, h                                       ; $51e7: $6c
    db $fc                                        ; $51e8: $fc
    jp c, $ee26                                   ; $51e9: $da $26 $ee

    ld e, $7e                                     ; $51ec: $1e $7e
    add [hl]                                      ; $51ee: $86
    inc a                                         ; $51ef: $3c
    db $fc                                        ; $51f0: $fc
    cp $42                                        ; $51f1: $fe $42
    ld a, a                                       ; $51f3: $7f
    sbc a                                         ; $51f4: $9f
    sub a                                         ; $51f5: $97
    rst $28                                       ; $51f6: $ef
    ei                                            ; $51f7: $fb
    ld a, a                                       ; $51f8: $7f
    add c                                         ; $51f9: $81
    rst $38                                       ; $51fa: $ff
    ld a, e                                       ; $51fb: $7b
    rst $38                                       ; $51fc: $ff
    ld a, [$0205]                                 ; $51fd: $fa $05 $02
    add b                                         ; $5200: $80
    ld [bc], a                                    ; $5201: $02
    ldh [$83], a                                  ; $5202: $e0 $83
    sub b                                         ; $5204: $90
    ldh a, [$e8]                                  ; $5205: $f0 $e8
    ld [bc], a                                    ; $5207: $02
    ret c                                         ; $5208: $d8

    ld [bc], a                                    ; $5209: $02
    ld hl, sp-$6b                                 ; $520a: $f8 $95
    add sp, -$2c                                  ; $520c: $e8 $d4
    ld l, h                                       ; $520e: $6c
    ld e, h                                       ; $520f: $5c
    db $e4                                        ; $5210: $e4
    xor $fe                                       ; $5211: $ee $fe
    ld a, a                                       ; $5213: $7f
    ld sp, hl                                     ; $5214: $f9
    or a                                          ; $5215: $b7
    ld a, d                                       ; $5216: $7a
    db $d3                                        ; $5217: $d3
    inc a                                         ; $5218: $3c
    ei                                            ; $5219: $fb
    inc e                                         ; $521a: $1c
    db $ed                                        ; $521b: $ed
    rra                                           ; $521c: $1f
    adc $3f                                       ; $521d: $ce $3f
    rst $28                                       ; $521f: $ef
    dec e                                         ; $5220: $1d
    ld b, $10                                     ; $5221: $06 $10
    add a                                         ; $5223: $87
    ld a, [de]                                    ; $5224: $1a
    dec e                                         ; $5225: $1d
    rla                                           ; $5226: $17
    inc e                                         ; $5227: $1c
    rla                                           ; $5228: $17
    jr jr_0f0_5242                                ; $5229: $18 $17

    ld [bc], a                                    ; $522b: $02
    jr jr_0f0_51c2                                ; $522c: $18 $94

    rla                                           ; $522e: $17
    rra                                           ; $522f: $1f
    dec e                                         ; $5230: $1d
    rla                                           ; $5231: $17
    inc e                                         ; $5232: $1c
    dec bc                                        ; $5233: $0b
    inc c                                         ; $5234: $0c
    rrca                                          ; $5235: $0f
    inc c                                         ; $5236: $0c
    dec bc                                        ; $5237: $0b
    inc c                                         ; $5238: $0c
    dec bc                                        ; $5239: $0b
    inc c                                         ; $523a: $0c
    rst $08                                       ; $523b: $cf
    ret                                           ; $523c: $c9


    xor a                                         ; $523d: $af
    add sp, $0f                                   ; $523e: $e8 $0f
    nop                                           ; $5240: $00
    dec bc                                        ; $5241: $0b

jr_0f0_5242:
    ld [bc], a                                    ; $5242: $02
    inc c                                         ; $5243: $0c
    add c                                         ; $5244: $81
    rrca                                          ; $5245: $0f
    ld [bc], a                                    ; $5246: $02
    rst $38                                       ; $5247: $ff
    cp b                                          ; $5248: $b8
    ld [hl], a                                    ; $5249: $77
    cp $7d                                        ; $524a: $fe $7d
    cp $73                                        ; $524c: $fe $73
    db $fc                                        ; $524e: $fc
    db $d3                                        ; $524f: $d3
    db $fc                                        ; $5250: $fc
    db $eb                                        ; $5251: $eb
    db $fc                                        ; $5252: $fc
    ld d, e                                       ; $5253: $53
    db $fc                                        ; $5254: $fc
    and d                                         ; $5255: $a2
    ld a, l                                       ; $5256: $7d
    and l                                         ; $5257: $a5
    ld a, [hl]                                    ; $5258: $7e
    ret nc                                        ; $5259: $d0

    ccf                                           ; $525a: $3f
    ret c                                         ; $525b: $d8

    ccf                                           ; $525c: $3f
    db $fc                                        ; $525d: $fc
    rra                                           ; $525e: $1f
    rst $38                                       ; $525f: $ff
    rrca                                          ; $5260: $0f
    or b                                          ; $5261: $b0
    ld b, b                                       ; $5262: $40
    or b                                          ; $5263: $b0
    ld h, b                                       ; $5264: $60
    ret nc                                        ; $5265: $d0

    ldh a, [$60]                                  ; $5266: $f0 $60
    sub b                                         ; $5268: $90
    ldh a, [rP1]                                  ; $5269: $f0 $00
    ld [hl], b                                    ; $526b: $70
    add b                                         ; $526c: $80
    ld [hl], b                                    ; $526d: $70
    add b                                         ; $526e: $80
    ldh a, [rP1]                                  ; $526f: $f0 $00
    ldh a, [rP1]                                  ; $5271: $f0 $00
    ld h, b                                       ; $5273: $60
    sub b                                         ; $5274: $90
    ld b, [hl]                                    ; $5275: $46
    cp c                                          ; $5276: $b9
    ld a, [hl]                                    ; $5277: $7e
    cp c                                          ; $5278: $b9
    push de                                       ; $5279: $d5
    dec sp                                        ; $527a: $3b
    ld bc, $43ff                                  ; $527b: $01 $ff $43
    rst $38                                       ; $527e: $ff
    sbc a                                         ; $527f: $9f
    rst $38                                       ; $5280: $ff
    ld [bc], a                                    ; $5281: $02
    ld [$0481], sp                                ; $5282: $08 $81 $04
    ld [bc], a                                    ; $5285: $02
    inc c                                         ; $5286: $0c
    add c                                         ; $5287: $81
    inc b                                         ; $5288: $04
    ld [bc], a                                    ; $5289: $02
    inc c                                         ; $528a: $0c
    adc d                                         ; $528b: $8a
    ld a, [bc]                                    ; $528c: $0a
    ld b, $0e                                     ; $528d: $06 $0e
    ld [bc], a                                    ; $528f: $02
    rst $18                                       ; $5290: $df
    push af                                       ; $5291: $f5
    xor e                                         ; $5292: $ab
    cp l                                          ; $5293: $bd
    ld a, [de]                                    ; $5294: $1a
    ld e, $02                                     ; $5295: $1e $02
    inc b                                         ; $5297: $04
    ld [bc], a                                    ; $5298: $02
    nop                                           ; $5299: $00
    ld [$9480], sp                                ; $529a: $08 $80 $94
    ld b, b                                       ; $529d: $40
    ret nz                                        ; $529e: $c0

    ei                                            ; $529f: $fb
    db $fc                                        ; $52a0: $fc
    ld c, a                                       ; $52a1: $4f
    ld a, h                                       ; $52a2: $7c
    ld h, l                                       ; $52a3: $65
    ld a, a                                       ; $52a4: $7f
    ld a, $3f                                     ; $52a5: $3e $3f
    ld d, $1f                                     ; $52a7: $16 $1f
    dec bc                                        ; $52a9: $0b
    rrca                                          ; $52aa: $0f
    dec bc                                        ; $52ab: $0b
    rrca                                          ; $52ac: $0f
    ld b, $07                                     ; $52ad: $06 $07
    inc bc                                        ; $52af: $03

jr_0f0_52b0:
    ld [bc], a                                    ; $52b0: $02
    ld [$8303], sp                                ; $52b1: $08 $03 $83
    ld [bc], a                                    ; $52b4: $02
    inc bc                                        ; $52b5: $03
    ld [bc], a                                    ; $52b6: $02
    ld [bc], a                                    ; $52b7: $02
    inc bc                                        ; $52b8: $03
    and b                                         ; $52b9: $a0
    ld [bc], a                                    ; $52ba: $02
    rst $28                                       ; $52bb: $ef
    sbc a                                         ; $52bc: $9f
    rst $38                                       ; $52bd: $ff
    rrca                                          ; $52be: $0f
    rst $38                                       ; $52bf: $ff
    ld c, a                                       ; $52c0: $4f
    rst $38                                       ; $52c1: $ff
    adc a                                         ; $52c2: $8f
    ld a, e                                       ; $52c3: $7b
    xor a                                         ; $52c4: $af
    ei                                            ; $52c5: $fb
    adc a                                         ; $52c6: $8f
    ld a, a                                       ; $52c7: $7f
    rst $00                                       ; $52c8: $c7
    rst $30                                       ; $52c9: $f7
    dec bc                                        ; $52ca: $0b
    rst $28                                       ; $52cb: $ef
    sbc a                                         ; $52cc: $9f
    ld a, e                                       ; $52cd: $7b
    sbc a                                         ; $52ce: $9f
    db $fd                                        ; $52cf: $fd
    ld e, a                                       ; $52d0: $5f
    jp c, $bcff                                   ; $52d1: $da $ff $bc

    ld a, a                                       ; $52d4: $7f
    ld a, [$bdbf]                                 ; $52d5: $fa $bf $bd
    rst $38                                       ; $52d8: $ff
    ld l, a                                       ; $52d9: $6f
    inc bc                                        ; $52da: $03
    rst $38                                       ; $52db: $ff
    and l                                         ; $52dc: $a5
    cp $ff                                        ; $52dd: $fe $ff
    cp $ff                                        ; $52df: $fe $ff
    db $fc                                        ; $52e1: $fc
    rst $38                                       ; $52e2: $ff
    db $fd                                        ; $52e3: $fd
    cp $fd                                        ; $52e4: $fe $fd
    cp $f9                                        ; $52e6: $fe $f9
    cp $fa                                        ; $52e8: $fe $fa
    db $fd                                        ; $52ea: $fd
    ei                                            ; $52eb: $fb
    db $fd                                        ; $52ec: $fd
    ei                                            ; $52ed: $fb
    db $fd                                        ; $52ee: $fd
    sub c                                         ; $52ef: $91
    sbc a                                         ; $52f0: $9f
    ld a, d                                       ; $52f1: $7a
    rst $38                                       ; $52f2: $ff
    ld b, l                                       ; $52f3: $45
    rst $38                                       ; $52f4: $ff
    ld e, $fd                                     ; $52f5: $1e $fd
    dec l                                         ; $52f7: $2d
    cp $03                                        ; $52f8: $fe $03
    rst $38                                       ; $52fa: $ff
    ld h, b                                       ; $52fb: $60
    jr nz, jr_0f0_535e                            ; $52fc: $20 $60

    jr nz, jr_0f0_5360                            ; $52fe: $20 $60

    jr nz, @+$62                                  ; $5300: $20 $60

    ld [bc], a                                    ; $5302: $02
    jr nz, jr_0f0_5307                            ; $5303: $20 $02

    ld h, b                                       ; $5305: $60
    add c                                         ; $5306: $81

jr_0f0_5307:
    jr nz, jr_0f0_530b                            ; $5307: $20 $02

    ld h, b                                       ; $5309: $60
    add a                                         ; $530a: $87

jr_0f0_530b:
    ld d, b                                       ; $530b: $50
    jr nc, jr_0f0_535e                            ; $530c: $30 $50

    ld [hl], b                                    ; $530e: $70
    jr nc, jr_0f0_5361                            ; $530f: $30 $50

    ld l, b                                       ; $5311: $68
    ld [bc], a                                    ; $5312: $02
    jr c, jr_0f0_52b0                             ; $5313: $38 $9b

    ld l, b                                       ; $5315: $68
    ret z                                         ; $5316: $c8

    ld hl, sp+$2c                                 ; $5317: $f8 $2c
    db $fc                                        ; $5319: $fc
    inc e                                         ; $531a: $1c
    db $fc                                        ; $531b: $fc
    dec bc                                        ; $531c: $0b
    rst $38                                       ; $531d: $ff
    ld d, [hl]                                    ; $531e: $56
    ld l, l                                       ; $531f: $6d
    ld l, d                                       ; $5320: $6a
    ld e, l                                       ; $5321: $5d
    ld e, d                                       ; $5322: $5a
    ld h, l                                       ; $5323: $65
    ld c, d                                       ; $5324: $4a
    ld a, a                                       ; $5325: $7f
    call c, $eea3                                 ; $5326: $dc $a3 $ee
    rst $30                                       ; $5329: $f7
    cp a                                          ; $532a: $bf
    rst $38                                       ; $532b: $ff
    push de                                       ; $532c: $d5
    xor $75                                       ; $532d: $ee $75
    ld c, [hl]                                    ; $532f: $4e
    ld [bc], a                                    ; $5330: $02
    ld a, e                                       ; $5331: $7b
    inc c                                         ; $5332: $0c
    nop                                           ; $5333: $00
    adc a                                         ; $5334: $8f
    ld hl, sp-$01                                 ; $5335: $f8 $ff
    sub $df                                       ; $5337: $d6 $df
    xor e                                         ; $5339: $ab
    rst $28                                       ; $533a: $ef
    and [hl]                                      ; $533b: $a6
    ld h, a                                       ; $533c: $67
    db $e3                                        ; $533d: $e3
    ld h, e                                       ; $533e: $63
    and c                                         ; $533f: $a1
    pop hl                                        ; $5340: $e1
    and c                                         ; $5341: $a1
    pop hl                                        ; $5342: $e1
    ld b, b                                       ; $5343: $40
    ld [bc], a                                    ; $5344: $02
    ret nz                                        ; $5345: $c0

    add c                                         ; $5346: $81
    ld b, b                                       ; $5347: $40
    ld [bc], a                                    ; $5348: $02
    add b                                         ; $5349: $80
    dec c                                         ; $534a: $0d
    nop                                           ; $534b: $00
    sub e                                         ; $534c: $93
    ldh [rP1], a                                  ; $534d: $e0 $00
    ldh [rP1], a                                  ; $534f: $e0 $00
    ldh [$80], a                                  ; $5351: $e0 $80
    ldh [rLCDC], a                                ; $5353: $e0 $40
    rst $38                                       ; $5355: $ff
    and b                                         ; $5356: $a0

jr_0f0_5357:
    rst $38                                       ; $5357: $ff
    ret c                                         ; $5358: $d8

    rst $38                                       ; $5359: $ff
    and h                                         ; $535a: $a4
    rst $38                                       ; $535b: $ff
    ld d, e                                       ; $535c: $53
    ld a, a                                       ; $535d: $7f

jr_0f0_535e:
    ld l, $3e                                     ; $535e: $2e $3e

jr_0f0_5360:
    ld [bc], a                                    ; $5360: $02

jr_0f0_5361:
    jr @+$14                                      ; $5361: $18 $12

    nop                                           ; $5363: $00
    add h                                         ; $5364: $84
    dec c                                         ; $5365: $0d
    dec bc                                        ; $5366: $0b
    rlca                                          ; $5367: $07
    rrca                                          ; $5368: $0f
    ld [bc], a                                    ; $5369: $02
    inc c                                         ; $536a: $0c
    ld [bc], a                                    ; $536b: $02
    ld [$0010], sp                                ; $536c: $08 $10 $00
    rst $38                                       ; $536f: $ff
    ld hl, $ed0e                                  ; $5370: $21 $0e $ed
    dec l                                         ; $5373: $2d
    call nc, $eb23                                ; $5374: $d4 $23 $eb
    db $f4                                        ; $5377: $f4
    rst $20                                       ; $5378: $e7
    db $fc                                        ; $5379: $fc
    di                                            ; $537a: $f3
    inc b                                         ; $537b: $04
    ei                                            ; $537c: $fb

Jump_0f0_537d:
    rst $28                                       ; $537d: $ef
    rst $30                                       ; $537e: $f7
    rst $30                                       ; $537f: $f7
    rst $30                                       ; $5380: $f7
    rst $38                                       ; $5381: $ff
    ld [bc], a                                    ; $5382: $02
    rlca                                          ; $5383: $07
    rlca                                          ; $5384: $07
    di                                            ; $5385: $f3
    rlca                                          ; $5386: $07
    ei                                            ; $5387: $fb
    rlca                                          ; $5388: $07
    ld [bc], a                                    ; $5389: $02
    rla                                           ; $538a: $17
    di                                            ; $538b: $f3
    rla                                           ; $538c: $17
    ei                                            ; $538d: $fb
    rla                                           ; $538e: $17
    inc bc                                        ; $538f: $03
    rla                                           ; $5390: $17
    rlca                                          ; $5391: $07
    ld [bc], a                                    ; $5392: $02
    ld bc, $0383                                  ; $5393: $01 $83 $03
    ld [bc], a                                    ; $5396: $02
    inc bc                                        ; $5397: $03
    ld [bc], a                                    ; $5398: $02
    ld [bc], a                                    ; $5399: $02
    add c                                         ; $539a: $81
    inc bc                                        ; $539b: $03
    ld [bc], a                                    ; $539c: $02
    ld bc, $0702                                  ; $539d: $01 $02 $07
    ld [bc], a                                    ; $53a0: $02
    rrca                                          ; $53a1: $0f
    add d                                         ; $53a2: $82
    ld e, $1f                                     ; $53a3: $1e $1f
    ld [bc], a                                    ; $53a5: $02
    ccf                                           ; $53a6: $3f
    adc [hl]                                      ; $53a7: $8e
    ld l, a                                       ; $53a8: $6f
    ld [hl], a                                    ; $53a9: $77
    ld e, l                                       ; $53aa: $5d
    ld h, a                                       ; $53ab: $67
    cp a                                          ; $53ac: $bf
    rst $00                                       ; $53ad: $c7
    rst $30                                       ; $53ae: $f7
    adc a                                         ; $53af: $8f
    cp [hl]                                       ; $53b0: $be
    rst $08                                       ; $53b1: $cf
    adc a                                         ; $53b2: $8f
    rst $38                                       ; $53b3: $ff
    rst $30                                       ; $53b4: $f7
    rst $08                                       ; $53b5: $cf
    ld [bc], a                                    ; $53b6: $02
    ld d, b                                       ; $53b7: $50
    ld [bc], a                                    ; $53b8: $02
    jr c, jr_0f0_5357                             ; $53b9: $38 $9c

    ld e, h                                       ; $53bb: $5c
    ld h, h                                       ; $53bc: $64
    adc d                                         ; $53bd: $8a
    cp $b6                                        ; $53be: $fe $b6
    sbc $fd                                       ; $53c0: $de $fd
    add e                                         ; $53c2: $83
    rst $30                                       ; $53c3: $f7
    rrca                                          ; $53c4: $0f
    cp [hl]                                       ; $53c5: $be
    jp nz, $dfaf                                  ; $53c6: $c2 $af $df

    rst $38                                       ; $53c9: $ff
    sub c                                         ; $53ca: $91
    daa                                           ; $53cb: $27
    rst $18                                       ; $53cc: $df
    ld e, e                                       ; $53cd: $5b
    rst $20                                       ; $53ce: $e7
    db $fd                                        ; $53cf: $fd
    ccf                                           ; $53d0: $3f
    ld h, h                                       ; $53d1: $64
    cp e                                          ; $53d2: $bb
    db $dd                                        ; $53d3: $dd
    ld a, a                                       ; $53d4: $7f
    rst $38                                       ; $53d5: $ff
    nop                                           ; $53d6: $00
    ld [bc], a                                    ; $53d7: $02
    ldh [$83], a                                  ; $53d8: $e0 $83
    ret nc                                        ; $53da: $d0

    ldh a, [$f8]                                  ; $53db: $f0 $f8
    ld [bc], a                                    ; $53dd: $02
    add sp, -$7a                                  ; $53de: $e8 $86
    ld a, b                                       ; $53e0: $78
    ld hl, sp+$38                                 ; $53e1: $f8 $38
    ld hl, sp+$28                                 ; $53e3: $f8 $28
    db $f4                                        ; $53e5: $f4
    ld [bc], a                                    ; $53e6: $02
    db $ec                                        ; $53e7: $ec
    sbc [hl]                                      ; $53e8: $9e
    db $f4                                        ; $53e9: $f4
    ld [hl], h                                    ; $53ea: $74
    db $fc                                        ; $53eb: $fc
    cp $3e                                        ; $53ec: $fe $3e
    jp c, $fa3e                                   ; $53ee: $da $3e $fa

    ld e, $ed                                     ; $53f1: $1e $ed
    dec de                                        ; $53f3: $1b
    adc e                                         ; $53f4: $8b
    ld a, a                                       ; $53f5: $7f
    xor e                                         ; $53f6: $ab
    ld e, l                                       ; $53f7: $5d
    db $eb                                        ; $53f8: $eb
    ld e, $05                                     ; $53f9: $1e $05
    ld b, $07                                     ; $53fb: $06 $07
    dec b                                         ; $53fd: $05
    dec bc                                        ; $53fe: $0b
    inc c                                         ; $53ff: $0c
    rrca                                          ; $5400: $0f
    inc c                                         ; $5401: $0c

jr_0f0_5402:
    rrca                                          ; $5402: $0f
    ld c, $0b                                     ; $5403: $0e $0b
    ld c, $05                                     ; $5405: $0e $05
    ld [bc], a                                    ; $5407: $02
    ld b, $94                                     ; $5408: $06 $94
    rlca                                          ; $540a: $07
    ld h, l                                       ; $540b: $65
    ld h, [hl]                                    ; $540c: $66
    or l                                          ; $540d: $b5
    or $6f                                        ; $540e: $f6 $6f
    ld a, h                                       ; $5410: $7c
    ld c, l                                       ; $5411: $4d
    ld a, [hl]                                    ; $5412: $7e
    daa                                           ; $5413: $27
    ld a, $36                                     ; $5414: $3e $36
    ccf                                           ; $5416: $3f
    ld a, [de]                                    ; $5417: $1a
    rra                                           ; $5418: $1f
    rla                                           ; $5419: $17
    rra                                           ; $541a: $1f
    rlca                                          ; $541b: $07
    inc b                                         ; $541c: $04
    rlca                                          ; $541d: $07
    ld [bc], a                                    ; $541e: $02
    inc b                                         ; $541f: $04
    inc bc                                        ; $5420: $03

jr_0f0_5421:
    rlca                                          ; $5421: $07
    cp b                                          ; $5422: $b8
    rst $38                                       ; $5423: $ff
    ccf                                           ; $5424: $3f
    ld a, [$bf3f]                                 ; $5425: $fa $3f $bf
    ld a, [hl]                                    ; $5428: $7e
    db $fd                                        ; $5429: $fd
    ld a, [hl]                                    ; $542a: $7e

jr_0f0_542b:
    ld [hl], a                                    ; $542b: $77
    db $fc                                        ; $542c: $fc
    xor e                                         ; $542d: $ab
    ld a, h                                       ; $542e: $7c
    db $d3                                        ; $542f: $d3
    inc a                                         ; $5430: $3c
    pop de                                        ; $5431: $d1
    ld a, $eb                                     ; $5432: $3e $eb
    ld e, $ec                                     ; $5434: $1e $ec
    rra                                           ; $5436: $1f
    ld a, [$fc8f]                                 ; $5437: $fa $8f $fc
    rlca                                          ; $543a: $07
    ld hl, sp+$10                                 ; $543b: $f8 $10
    adc b                                         ; $543d: $88
    ld [hl], b                                    ; $543e: $70
    jr z, @-$06                                   ; $543f: $28 $f8

    ret nz                                        ; $5441: $c0

    ld hl, sp+$38                                 ; $5442: $f8 $38
    ret nc                                        ; $5444: $d0

    ld hl, sp+$00                                 ; $5445: $f8 $00
    ret c                                         ; $5447: $d8

    jr nz, jr_0f0_5402                            ; $5448: $20 $b8

    ld b, b                                       ; $544a: $40
    ldh a, [$08]                                  ; $544b: $f0 $08
    ldh a, [$08]                                  ; $544d: $f0 $08
    jr c, jr_0f0_5421                             ; $544f: $38 $d0

    jr nz, jr_0f0_542b                            ; $5451: $20 $d8

    rst $38                                       ; $5453: $ff
    jr jr_0f0_54cc                                ; $5454: $18 $76

    cp c                                          ; $5456: $b9
    dec [hl]                                      ; $5457: $35
    db $db                                        ; $5458: $db
    ld b, a                                       ; $5459: $47
    rst $38                                       ; $545a: $ff
    ld [bc], a                                    ; $545b: $02
    inc b                                         ; $545c: $04
    sbc e                                         ; $545d: $9b
    ld c, h                                       ; $545e: $4c
    db $f4                                        ; $545f: $f4
    call c, $eaf4                                 ; $5460: $dc $f4 $ea
    or $ee                                        ; $5463: $f6 $ee
    ld a, [c]                                     ; $5465: $f2
    db $fd                                        ; $5466: $fd
    db $eb                                        ; $5467: $eb
    cp a                                          ; $5468: $bf
    db $ed                                        ; $5469: $ed
    dec a                                         ; $546a: $3d
    ei                                            ; $546b: $fb
    ld a, $f2                                     ; $546c: $3e $f2
    inc l                                         ; $546e: $2c
    db $ec                                        ; $546f: $ec
    ldh [$a0], a                                  ; $5470: $e0 $a0
    ldh [$a0], a                                  ; $5472: $e0 $a0
    ldh [$60], a                                  ; $5474: $e0 $60
    ldh [rNR41], a                                ; $5476: $e0 $20
    ldh [rSC], a                                  ; $5478: $e0 $02
    and b                                         ; $547a: $a0
    and d                                         ; $547b: $a2
    ld h, b                                       ; $547c: $60
    rrca                                          ; $547d: $0f
    inc b                                         ; $547e: $04
    rrca                                          ; $547f: $0f
    nop                                           ; $5480: $00
    rrca                                          ; $5481: $0f
    ld a, [bc]                                    ; $5482: $0a
    rlca                                          ; $5483: $07
    inc c                                         ; $5484: $0c
    or e                                          ; $5485: $b3
    db $fd                                        ; $5486: $fd
    ld e, a                                       ; $5487: $5f
    ld a, h                                       ; $5488: $7c
    ld a, e                                       ; $5489: $7b
    ld a, [hl]                                    ; $548a: $7e
    scf                                           ; $548b: $37
    jr c, jr_0f0_54ad                             ; $548c: $38 $1f

    inc d                                         ; $548e: $14
    dec de                                        ; $548f: $1b
    inc e                                         ; $5490: $1c
    rra                                           ; $5491: $1f
    ld a, [de]                                    ; $5492: $1a
    ld e, $1f                                     ; $5493: $1e $1f
    inc de                                        ; $5495: $13
    rra                                           ; $5496: $1f
    dec a                                         ; $5497: $3d
    inc sp                                        ; $5498: $33
    ld l, $39                                     ; $5499: $2e $39
    dec hl                                        ; $549b: $2b
    scf                                           ; $549c: $37
    ld l, c                                       ; $549d: $69
    ld [bc], a                                    ; $549e: $02
    rst $38                                       ; $549f: $ff
    sbc l                                         ; $54a0: $9d
    ld a, a                                       ; $54a1: $7f
    rst $38                                       ; $54a2: $ff
    ld a, a                                       ; $54a3: $7f
    rst $38                                       ; $54a4: $ff
    ld a, a                                       ; $54a5: $7f
    rst $18                                       ; $54a6: $df
    ld a, a                                       ; $54a7: $7f
    rst $18                                       ; $54a8: $df
    ld a, a                                       ; $54a9: $7f
    rst $38                                       ; $54aa: $ff
    ccf                                           ; $54ab: $3f
    cp a                                          ; $54ac: $bf

jr_0f0_54ad:
    ld e, a                                       ; $54ad: $5f
    ld a, a                                       ; $54ae: $7f
    rst $38                                       ; $54af: $ff
    rst $18                                       ; $54b0: $df
    rst $38                                       ; $54b1: $ff
    xor a                                         ; $54b2: $af
    rst $38                                       ; $54b3: $ff
    add h                                         ; $54b4: $84
    db $fc                                        ; $54b5: $fc
    jp $a0ff                                      ; $54b6: $c3 $ff $a0


    rst $38                                       ; $54b9: $ff
    pop hl                                        ; $54ba: $e1
    rst $38                                       ; $54bb: $ff
    ldh a, [rIE]                                  ; $54bc: $f0 $ff
    ld a, [bc]                                    ; $54be: $0a
    ld a, b                                       ; $54bf: $78
    xor d                                         ; $54c0: $aa
    ld [hl], b                                    ; $54c1: $70
    ld a, b                                       ; $54c2: $78
    ld [hl], b                                    ; $54c3: $70
    ld a, b                                       ; $54c4: $78
    ld h, b                                       ; $54c5: $60
    ld a, b                                       ; $54c6: $78
    ld h, b                                       ; $54c7: $60
    ld a, b                                       ; $54c8: $78
    ld l, b                                       ; $54c9: $68
    ld [hl], b                                    ; $54ca: $70
    ld l, b                                       ; $54cb: $68

jr_0f0_54cc:
    ld a, b                                       ; $54cc: $78
    ld e, [hl]                                    ; $54cd: $5e
    ld l, [hl]                                    ; $54ce: $6e
    halt                                          ; $54cf: $76
    ld a, d                                       ; $54d0: $7a
    dec e                                         ; $54d1: $1d
    ld a, a                                       ; $54d2: $7f
    dec sp                                        ; $54d3: $3b
    ld [hl], l                                    ; $54d4: $75
    dec d                                         ; $54d5: $15
    ld a, e                                       ; $54d6: $7b
    ld [hl], b                                    ; $54d7: $70
    ld l, a                                       ; $54d8: $6f
    ld d, h                                       ; $54d9: $54
    ld l, a                                       ; $54da: $6f
    ld a, d                                       ; $54db: $7a
    ld e, l                                       ; $54dc: $5d
    ld d, l                                       ; $54dd: $55
    ld l, e                                       ; $54de: $6b
    sub l                                         ; $54df: $95
    rst $38                                       ; $54e0: $ff
    ret c                                         ; $54e1: $d8

    and a                                         ; $54e2: $a7
    db $ec                                        ; $54e3: $ec
    rst $30                                       ; $54e4: $f7
    cp a                                          ; $54e5: $bf
    rst $38                                       ; $54e6: $ff
    ld h, a                                       ; $54e7: $67
    ld e, h                                       ; $54e8: $5c
    db $fd                                        ; $54e9: $fd
    adc $02                                       ; $54ea: $ce $02
    ld [hl], e                                    ; $54ec: $73
    ld a, [bc]                                    ; $54ed: $0a
    nop                                           ; $54ee: $00
    sub b                                         ; $54ef: $90
    db $f4                                        ; $54f0: $f4
    rst $38                                       ; $54f1: $ff
    jp c, $c9df                                   ; $54f2: $da $df $c9

    rst $08                                       ; $54f5: $cf
    ld l, l                                       ; $54f6: $6d
    rst $28                                       ; $54f7: $ef
    and [hl]                                      ; $54f8: $a6
    ld h, a                                       ; $54f9: $67
    jp $a343                                      ; $54fa: $c3 $43 $a3


    db $e3                                        ; $54fd: $e3
    ld h, c                                       ; $54fe: $61
    pop hl                                        ; $54ff: $e1
    ld [bc], a                                    ; $5500: $02
    ret nz                                        ; $5501: $c0

    add d                                         ; $5502: $82
    ld b, b                                       ; $5503: $40
    ret nz                                        ; $5504: $c0

    ld [bc], a                                    ; $5505: $02
    add b                                         ; $5506: $80
    ld a, [bc]                                    ; $5507: $0a
    nop                                           ; $5508: $00
    sub [hl]                                      ; $5509: $96
    rla                                           ; $550a: $17
    db $fd                                        ; $550b: $fd
    add hl, bc                                    ; $550c: $09
    rst $38                                       ; $550d: $ff
    ld b, $ff                                     ; $550e: $06 $ff
    inc bc                                        ; $5510: $03
    rst $38                                       ; $5511: $ff
    add c                                         ; $5512: $81
    rst $38                                       ; $5513: $ff
    ld b, b                                       ; $5514: $40
    rst $38                                       ; $5515: $ff
    or b                                          ; $5516: $b0
    rst $38                                       ; $5517: $ff
    ld c, h                                       ; $5518: $4c
    rst $38                                       ; $5519: $ff
    and e                                         ; $551a: $a3
    rst $38                                       ; $551b: $ff
    ld e, d                                       ; $551c: $5a
    ld a, [hl]                                    ; $551d: $7e
    inc l                                         ; $551e: $2c
    inc a                                         ; $551f: $3c
    ld [bc], a                                    ; $5520: $02
    jr jr_0f0_552f                                ; $5521: $18 $0c

    nop                                           ; $5523: $00
    inc b                                         ; $5524: $04
    ld [$0683], sp                                ; $5525: $08 $83 $06
    ld c, $09                                     ; $5528: $0e $09
    ld [bc], a                                    ; $552a: $02
    rrca                                          ; $552b: $0f
    add c                                         ; $552c: $81
    dec bc                                        ; $552d: $0b
    ld [bc], a                                    ; $552e: $02

jr_0f0_552f:
    ld c, $02                                     ; $552f: $0e $02
    ld [$000e], sp                                ; $5531: $08 $0e $00
    rst $38                                       ; $5534: $ff
    dec d                                         ; $5535: $15
    ld [$1fef], sp                                ; $5536: $08 $ef $1f
    pop hl                                        ; $5539: $e1
    nop                                           ; $553a: $00
    push hl                                       ; $553b: $e5
    pop af                                        ; $553c: $f1
    db $e3                                        ; $553d: $e3
    ld sp, hl                                     ; $553e: $f9
    pop hl                                        ; $553f: $e1
    ld bc, $09e5                                  ; $5540: $01 $e5 $09
    pop af                                        ; $5543: $f1
    db $f4                                        ; $5544: $f4

jr_0f0_5545:
    pop af                                        ; $5545: $f1
    db $fc                                        ; $5546: $fc
    pop af                                        ; $5547: $f1
    inc b                                         ; $5548: $04
    pop af                                        ; $5549: $f1
    add hl, bc                                    ; $554a: $09
    ld [bc], a                                    ; $554b: $02
    inc bc                                        ; $554c: $03
    sbc [hl]                                      ; $554d: $9e
    dec b                                         ; $554e: $05
    ld b, $0b                                     ; $554f: $06 $0b
    inc c                                         ; $5551: $0c
    rrca                                          ; $5552: $0f
    ld [$1916], sp                                ; $5553: $08 $16 $19
    scf                                           ; $5556: $37
    jr z, jr_0f0_5594                             ; $5557: $28 $3b

    inc l                                         ; $5559: $2c
    ld l, [hl]                                    ; $555a: $6e
    ld d, e                                       ; $555b: $53
    ld c, a                                       ; $555c: $4f
    ld [hl], c                                    ; $555d: $71
    sub d                                         ; $555e: $92
    cp $de                                        ; $555f: $fe $de
    and $5d                                       ; $5561: $e6 $5d
    ld h, e                                       ; $5563: $63
    ld c, a                                       ; $5564: $4f
    ld [hl], e                                    ; $5565: $73
    dec hl                                        ; $5566: $2b
    ld [hl], $25                                  ; $5567: $36 $25
    ccf                                           ; $5569: $3f
    rra                                           ; $556a: $1f
    dec e                                         ; $556b: $1d
    ld [bc], a                                    ; $556c: $02
    rrca                                          ; $556d: $0f
    sbc [hl]                                      ; $556e: $9e
    ccf                                           ; $556f: $3f
    jr nc, jr_0f0_5545                            ; $5570: $30 $d3

    db $ed                                        ; $5572: $ed
    xor a                                         ; $5573: $af
    ld e, c                                       ; $5574: $59
    rra                                           ; $5575: $1f
    ldh a, [$b6]                                  ; $5576: $f0 $b6
    ld a, c                                       ; $5578: $79
    sbc b                                         ; $5579: $98
    ld a, a                                       ; $557a: $7f
    di                                            ; $557b: $f3
    rrca                                          ; $557c: $0f
    rst $18                                       ; $557d: $df
    jr nc, jr_0f0_55f4                            ; $557e: $30 $74

    ei                                            ; $5580: $fb
    db $eb                                        ; $5581: $eb
    rst $38                                       ; $5582: $ff
    db $d3                                        ; $5583: $d3
    db $fc                                        ; $5584: $fc
    ld h, a                                       ; $5585: $67
    ld a, b                                       ; $5586: $78
    rst $38                                       ; $5587: $ff
    sub b                                         ; $5588: $90
    cpl                                           ; $5589: $2f
    ldh a, [rIE]                                  ; $558a: $f0 $ff
    ld [hl], b                                    ; $558c: $70
    ld [bc], a                                    ; $558d: $02
    ld [$1d02], sp                                ; $558e: $08 $02 $1d
    sbc h                                         ; $5591: $9c
    xor $fa                                       ; $5592: $ee $fa

jr_0f0_5594:
    db $ed                                        ; $5594: $ed
    di                                            ; $5595: $f3
    rst $28                                       ; $5596: $ef
    add hl, sp                                    ; $5597: $39
    sbc l                                         ; $5598: $9d
    ld l, a                                       ; $5599: $6f
    rst $38                                       ; $559a: $ff
    ret nz                                        ; $559b: $c0

    ld a, l                                       ; $559c: $7d
    add e                                         ; $559d: $83
    cp e                                          ; $559e: $bb
    rst $08                                       ; $559f: $cf
    ld a, a                                       ; $55a0: $7f
    pop hl                                        ; $55a1: $e1
    cp a                                          ; $55a2: $bf
    ld a, a                                       ; $55a3: $7f
    push hl                                       ; $55a4: $e5
    ei                                            ; $55a5: $fb
    halt                                          ; $55a6: $76
    sbc [hl]                                      ; $55a7: $9e
    or [hl]                                       ; $55a8: $b6
    ld c, [hl]                                    ; $55a9: $4e
    ld a, [$fa06]                                 ; $55aa: $fa $06 $fa
    ld b, $02                                     ; $55ad: $06 $02
    ret nz                                        ; $55af: $c0

    adc e                                         ; $55b0: $8b
    jr nz, @-$1e                                  ; $55b1: $20 $e0

    ret nc                                        ; $55b3: $d0

    or b                                          ; $55b4: $b0
    ldh a, [$90]                                  ; $55b5: $f0 $90
    ld a, b                                       ; $55b7: $78
    sbc b                                         ; $55b8: $98
    ret c                                         ; $55b9: $d8

    jr z, @-$52                                   ; $55ba: $28 $ac

    ld [bc], a                                    ; $55bc: $02
    db $f4                                        ; $55bd: $f4
    sub c                                         ; $55be: $91
    call z, $ceb6                                 ; $55bf: $cc $b6 $ce
    ld d, [hl]                                    ; $55c2: $56
    ld a, d                                       ; $55c3: $7a
    dec l                                         ; $55c4: $2d
    inc sp                                        ; $55c5: $33
    rst $28                                       ; $55c6: $ef
    pop af                                        ; $55c7: $f1
    and e                                         ; $55c8: $a3
    ld a, l                                       ; $55c9: $7d
    rst $30                                       ; $55ca: $f7
    rst $08                                       ; $55cb: $cf
    ei                                            ; $55cc: $fb
    or a                                          ; $55cd: $b7

jr_0f0_55ce:
    db $ed                                        ; $55ce: $ed
    rst $30                                       ; $55cf: $f7
    inc b                                         ; $55d0: $04
    nop                                           ; $55d1: $00
    add c                                         ; $55d2: $81
    rlca                                          ; $55d3: $07
    ld [bc], a                                    ; $55d4: $02
    dec b                                         ; $55d5: $05
    sub a                                         ; $55d6: $97
    rlca                                          ; $55d7: $07
    ld a, a                                       ; $55d8: $7f
    ld l, a                                       ; $55d9: $6f
    dec a                                         ; $55da: $3d
    ccf                                           ; $55db: $3f
    scf                                           ; $55dc: $37
    dec sp                                        ; $55dd: $3b
    dec a                                         ; $55de: $3d
    inc hl                                        ; $55df: $23
    add hl, sp                                    ; $55e0: $39
    scf                                           ; $55e1: $37
    ccf                                           ; $55e2: $3f
    inc hl                                        ; $55e3: $23
    ld e, l                                       ; $55e4: $5d
    ld l, e                                       ; $55e5: $6b
    ld a, $21                                     ; $55e6: $3e $21
    ld e, l                                       ; $55e8: $5d
    ld h, [hl]                                    ; $55e9: $66
    ld l, [hl]                                    ; $55ea: $6e
    ld a, a                                       ; $55eb: $7f

jr_0f0_55ec:
    or l                                          ; $55ec: $b5
    db $db                                        ; $55ed: $db
    ld [bc], a                                    ; $55ee: $02
    ld a, a                                       ; $55ef: $7f
    adc [hl]                                      ; $55f0: $8e
    rlca                                          ; $55f1: $07
    nop                                           ; $55f2: $00
    dec b                                         ; $55f3: $05

jr_0f0_55f4:
    ld [bc], a                                    ; $55f4: $02
    cp e                                          ; $55f5: $bb
    add $ce                                       ; $55f6: $c6 $ce
    ld [hl], c                                    ; $55f8: $71
    rst $38                                       ; $55f9: $ff
    ld a, a                                       ; $55fa: $7f
    cp a                                          ; $55fb: $bf
    rst $38                                       ; $55fc: $ff
    ld a, a                                       ; $55fd: $7f
    rst $38                                       ; $55fe: $ff
    ld [bc], a                                    ; $55ff: $02
    cp $02                                        ; $5600: $fe $02
    sbc h                                         ; $5602: $9c
    ld [bc], a                                    ; $5603: $02
    inc b                                         ; $5604: $04
    ld [bc], a                                    ; $5605: $02
    add b                                         ; $5606: $80
    inc b                                         ; $5607: $04
    add c                                         ; $5608: $81
    add h                                         ; $5609: $84
    ld b, c                                       ; $560a: $41
    pop bc                                        ; $560b: $c1
    ld b, b                                       ; $560c: $40
    ret nz                                        ; $560d: $c0

    ld [bc], a                                    ; $560e: $02
    add b                                         ; $560f: $80
    sbc h                                         ; $5610: $9c
    ret c                                         ; $5611: $d8

    jr c, jr_0f0_55ec                             ; $5612: $38 $d8

    jr c, jr_0f0_55ce                             ; $5614: $38 $b8

    ld a, b                                       ; $5616: $78
    cp b                                          ; $5617: $b8
    ret z                                         ; $5618: $c8

    push af                                       ; $5619: $f5
    call $ac5c                                    ; $561a: $cd $5c $ac
    adc d                                         ; $561d: $8a
    or $de                                        ; $561e: $f6 $de
    and $4c                                       ; $5620: $e6 $4c
    ld a, h                                       ; $5622: $7c
    sub h                                         ; $5623: $94
    db $ec                                        ; $5624: $ec
    cp h                                          ; $5625: $bc
    call nz, $a67a                                ; $5626: $c4 $7a $a6
    ld l, a                                       ; $5629: $6f
    rst $18                                       ; $562a: $df
    ld d, a                                       ; $562b: $57
    ld a, [$ff02]                                 ; $562c: $fa $02 $ff
    ld a, [bc]                                    ; $562f: $0a
    nop                                           ; $5630: $00
    add h                                         ; $5631: $84
    rra                                           ; $5632: $1f
    dec c                                         ; $5633: $0d
    ld a, [de]                                    ; $5634: $1a
    ld e, $02                                     ; $5635: $1e $02
    inc b                                         ; $5637: $04
    inc c                                         ; $5638: $0c
    nop                                           ; $5639: $00
    inc b                                         ; $563a: $04
    db $10                                        ; $563b: $10
    ld [bc], a                                    ; $563c: $02
    nop                                           ; $563d: $00

Jump_0f0_563e:
    rst $38                                       ; $563e: $ff
    dec d                                         ; $563f: $15
    ld [$1fef], sp                                ; $5640: $08 $ef $1f
    pop hl                                        ; $5643: $e1
    nop                                           ; $5644: $00
    push hl                                       ; $5645: $e5
    pop af                                        ; $5646: $f1
    db $e3                                        ; $5647: $e3
    ld sp, hl                                     ; $5648: $f9
    pop hl                                        ; $5649: $e1
    ld bc, $08e5                                  ; $564a: $01 $e5 $08
    pop af                                        ; $564d: $f1
    db $f4                                        ; $564e: $f4
    pop af                                        ; $564f: $f1
    db $fc                                        ; $5650: $fc
    pop af                                        ; $5651: $f1
    inc b                                         ; $5652: $04
    pop af                                        ; $5653: $f1
    ld [$0302], sp                                ; $5654: $08 $02 $03
    sbc [hl]                                      ; $5657: $9e
    dec b                                         ; $5658: $05
    ld b, $0b                                     ; $5659: $06 $0b
    inc c                                         ; $565b: $0c
    ld c, $09                                     ; $565c: $0e $09
    ld e, $19                                     ; $565e: $1e $19
    rla                                           ; $5660: $17
    jr jr_0f0_5698                                ; $5661: $18 $35

    ld l, $35                                     ; $5663: $2e $35
    dec hl                                        ; $5665: $2b
    ld l, a                                       ; $5666: $6f
    ld d, c                                       ; $5667: $51
    ld c, l                                       ; $5668: $4d
    ld [hl], e                                    ; $5669: $73
    sbc d                                         ; $566a: $9a
    cp $9f                                        ; $566b: $fe $9f
    db $e3                                        ; $566d: $e3
    ld e, a                                       ; $566e: $5f
    ld h, c                                       ; $566f: $61
    ld c, a                                       ; $5670: $4f
    ld [hl], e                                    ; $5671: $73
    dec l                                         ; $5672: $2d
    scf                                           ; $5673: $37
    rla                                           ; $5674: $17
    dec e                                         ; $5675: $1d
    ld [bc], a                                    ; $5676: $02
    rrca                                          ; $5677: $0f
    sbc [hl]                                      ; $5678: $9e
    ld a, a                                       ; $5679: $7f
    ld [hl], b                                    ; $567a: $70
    sub c                                         ; $567b: $91

Call_0f0_567c:
    rst $28                                       ; $567c: $ef
    xor a                                         ; $567d: $af
    ld e, c                                       ; $567e: $59
    rra                                           ; $567f: $1f
    ldh a, [$b6]                                  ; $5680: $f0 $b6
    ld a, c                                       ; $5682: $79
    sbc b                                         ; $5683: $98
    ld a, a                                       ; $5684: $7f
    di                                            ; $5685: $f3
    rrca                                          ; $5686: $0f
    sbc a                                         ; $5687: $9f
    ld [hl], b                                    ; $5688: $70
    halt                                          ; $5689: $76
    ld sp, hl                                     ; $568a: $f9
    db $eb                                        ; $568b: $eb
    rst $38                                       ; $568c: $ff
    pop de                                        ; $568d: $d1
    cp $67                                        ; $568e: $fe $67
    ld a, b                                       ; $5690: $78
    ld a, a                                       ; $5691: $7f
    ld [hl], b                                    ; $5692: $70
    or a                                          ; $5693: $b7
    ret c                                         ; $5694: $d8

    cp a                                          ; $5695: $bf
    ld l, b                                       ; $5696: $68
    ld [bc], a                                    ; $5697: $02

jr_0f0_5698:
    ld [$1d02], sp                                ; $5698: $08 $02 $1d
    sbc h                                         ; $569b: $9c
    xor $fa                                       ; $569c: $ee $fa
    db $ed                                        ; $569e: $ed
    di                                            ; $569f: $f3
    db $eb                                        ; $56a0: $eb
    dec a                                         ; $56a1: $3d
    sbc l                                         ; $56a2: $9d
    ld l, a                                       ; $56a3: $6f
    rst $38                                       ; $56a4: $ff
    ret nz                                        ; $56a5: $c0

    ld [hl], l                                    ; $56a6: $75
    adc e                                         ; $56a7: $8b
    or a                                          ; $56a8: $b7
    rst $18                                       ; $56a9: $df
    ld a, a                                       ; $56aa: $7f
    pop hl                                        ; $56ab: $e1
    cp a                                          ; $56ac: $bf
    ld a, a                                       ; $56ad: $7f
    db $ed                                        ; $56ae: $ed
    di                                            ; $56af: $f3
    halt                                          ; $56b0: $76
    sbc [hl]                                      ; $56b1: $9e
    sub h                                         ; $56b2: $94
    ld l, h                                       ; $56b3: $6c
    ld a, [$fa06]                                 ; $56b4: $fa $06 $fa
    ld b, $02                                     ; $56b7: $06 $02
    ld h, b                                       ; $56b9: $60
    sbc [hl]                                      ; $56ba: $9e
    db $10                                        ; $56bb: $10
    ld [hl], b                                    ; $56bc: $70
    ld l, b                                       ; $56bd: $68
    ld e, b                                       ; $56be: $58
    ld a, b                                       ; $56bf: $78
    ld c, b                                       ; $56c0: $48
    inc a                                         ; $56c1: $3c
    ld c, h                                       ; $56c2: $4c
    ld l, h                                       ; $56c3: $6c
    inc d                                         ; $56c4: $14
    ld d, h                                       ; $56c5: $54
    ld a, h                                       ; $56c6: $7c
    ld [hl], d                                    ; $56c7: $72
    ld l, [hl]                                    ; $56c8: $6e
    ld a, d                                       ; $56c9: $7a
    ld b, [hl]                                    ; $56ca: $46
    add hl, hl                                    ; $56cb: $29
    ccf                                           ; $56cc: $3f
    dec d                                         ; $56cd: $15
    dec de                                        ; $56ce: $1b
    rla                                           ; $56cf: $17
    add hl, de                                    ; $56d0: $19
    cpl                                           ; $56d1: $2f
    ld sp, $f9e7                                  ; $56d2: $31 $e7 $f9
    rst $10                                       ; $56d5: $d7
    ld l, l                                       ; $56d6: $6d
    rst $18                                       ; $56d7: $df
    or e                                          ; $56d8: $b3
    inc b                                         ; $56d9: $04
    nop                                           ; $56da: $00
    add [hl]                                      ; $56db: $86
    rlca                                          ; $56dc: $07
    dec b                                         ; $56dd: $05
    rlca                                          ; $56de: $07
    dec b                                         ; $56df: $05
    ld a, [hl]                                    ; $56e0: $7e
    ld l, a                                       ; $56e1: $6f
    ld [bc], a                                    ; $56e2: $02
    ld a, a                                       ; $56e3: $7f
    sub d                                         ; $56e4: $92
    inc sp                                        ; $56e5: $33
    ccf                                           ; $56e6: $3f
    dec a                                         ; $56e7: $3d
    inc hl                                        ; $56e8: $23
    add hl, sp                                    ; $56e9: $39
    scf                                           ; $56ea: $37
    ccf                                           ; $56eb: $3f
    inc hl                                        ; $56ec: $23
    ld e, l                                       ; $56ed: $5d
    ld l, e                                       ; $56ee: $6b
    ld a, $21                                     ; $56ef: $3e $21
    ld e, l                                       ; $56f1: $5d
    ld h, [hl]                                    ; $56f2: $66
    ld l, [hl]                                    ; $56f3: $6e
    ld a, a                                       ; $56f4: $7f
    or l                                          ; $56f5: $b5
    db $db                                        ; $56f6: $db
    ld [bc], a                                    ; $56f7: $02
    ld a, a                                       ; $56f8: $7f
    adc [hl]                                      ; $56f9: $8e
    rlca                                          ; $56fa: $07
    nop                                           ; $56fb: $00
    dec b                                         ; $56fc: $05

jr_0f0_56fd:
    ld [bc], a                                    ; $56fd: $02
    or a                                          ; $56fe: $b7
    adc $e5                                       ; $56ff: $ce $e5
    ei                                            ; $5701: $fb
    rst $38                                       ; $5702: $ff
    ld a, a                                       ; $5703: $7f
    cp a                                          ; $5704: $bf
    rst $38                                       ; $5705: $ff
    ld a, a                                       ; $5706: $7f
    rst $38                                       ; $5707: $ff
    ld [bc], a                                    ; $5708: $02
    cp $02                                        ; $5709: $fe $02
    xor h                                         ; $570b: $ac
    ld [bc], a                                    ; $570c: $02
    inc c                                         ; $570d: $0c
    ld [bc], a                                    ; $570e: $02
    add b                                         ; $570f: $80
    inc b                                         ; $5710: $04
    add c                                         ; $5711: $81
    add h                                         ; $5712: $84
    ld b, c                                       ; $5713: $41
    pop bc                                        ; $5714: $c1
    ld b, b                                       ; $5715: $40
    ret nz                                        ; $5716: $c0

    ld [bc], a                                    ; $5717: $02
    add b                                         ; $5718: $80
    sbc h                                         ; $5719: $9c
    ret nc                                        ; $571a: $d0

    jr nc, jr_0f0_56fd                            ; $571b: $30 $e0

    jr nz, jr_0f0_578f                            ; $571d: $20 $70

    ldh a, [$90]                                  ; $571f: $f0 $90
    ldh a, [$ee]                                  ; $5721: $f0 $ee
    db $db                                        ; $5723: $db
    ld e, a                                       ; $5724: $5f
    xor [hl]                                      ; $5725: $ae
    adc e                                         ; $5726: $8b
    rst $30                                       ; $5727: $f7
    sbc $e6                                       ; $5728: $de $e6
    ld c, h                                       ; $572a: $4c
    ld a, h                                       ; $572b: $7c
    sub h                                         ; $572c: $94
    db $ec                                        ; $572d: $ec
    cp h                                          ; $572e: $bc
    call nz, $a67a                                ; $572f: $c4 $7a $a6
    ld l, a                                       ; $5732: $6f
    rst $18                                       ; $5733: $df
    ld d, a                                       ; $5734: $57
    ld a, [$ff02]                                 ; $5735: $fa $02 $ff
    ld a, [bc]                                    ; $5738: $0a
    nop                                           ; $5739: $00
    add [hl]                                      ; $573a: $86
    add hl, bc                                    ; $573b: $09
    rlca                                          ; $573c: $07
    rrca                                          ; $573d: $0f
    dec c                                         ; $573e: $0d
    ld c, $0a                                     ; $573f: $0e $0a
    ld [bc], a                                    ; $5741: $02
    inc c                                         ; $5742: $0c
    ld a, [bc]                                    ; $5743: $0a
    nop                                           ; $5744: $00
    inc b                                         ; $5745: $04
    ld [$0002], sp                                ; $5746: $08 $02 $00
    rst $38                                       ; $5749: $ff
    dec d                                         ; $574a: $15
    ld [$1fef], sp                                ; $574b: $08 $ef $1f
    pop hl                                        ; $574e: $e1
    nop                                           ; $574f: $00
    db $e4                                        ; $5750: $e4
    ld a, [c]                                     ; $5751: $f2
    db $e3                                        ; $5752: $e3
    ld a, [$02e2]                                 ; $5753: $fa $e2 $02
    and $08                                       ; $5756: $e6 $08
    ld a, [c]                                     ; $5758: $f2
    db $f4                                        ; $5759: $f4
    ld a, [c]                                     ; $575a: $f2
    db $fc                                        ; $575b: $fc
    ld a, [c]                                     ; $575c: $f2
    inc b                                         ; $575d: $04
    ld a, [c]                                     ; $575e: $f2
    rlca                                          ; $575f: $07
    ld [bc], a                                    ; $5760: $02
    ld bc, $0302                                  ; $5761: $01 $02 $03
    sbc h                                         ; $5764: $9c
    rrca                                          ; $5765: $0f

jr_0f0_5766:
    inc c                                         ; $5766: $0c
    ld d, $19                                     ; $5767: $16 $19
    dec d                                         ; $5769: $15
    ld a, [de]                                    ; $576a: $1a
    rra                                           ; $576b: $1f
    db $10                                        ; $576c: $10
    scf                                           ; $576d: $37
    jr c, jr_0f0_57a5                             ; $576e: $38 $35

    ld l, $62                                     ; $5770: $2e $62
    ld e, a                                       ; $5772: $5f
    ld a, l                                       ; $5773: $7d
    ld d, e                                       ; $5774: $53
    adc a                                         ; $5775: $8f
    pop af                                        ; $5776: $f1
    sub [hl]                                      ; $5777: $96
    ld a, [$deae]                                 ; $5778: $fa $ae $de
    sbc l                                         ; $577b: $9d
    db $e3                                        ; $577c: $e3
    ld e, [hl]                                    ; $577d: $5e
    ld h, c                                       ; $577e: $61
    ld c, l                                       ; $577f: $4d
    ld [hl], e                                    ; $5780: $73
    ld [bc], a                                    ; $5781: $02
    ccf                                           ; $5782: $3f
    sbc [hl]                                      ; $5783: $9e
    db $dd                                        ; $5784: $dd
    db $e3                                        ; $5785: $e3
    ld [hl-], a                                   ; $5786: $32
    rst $08                                       ; $5787: $cf
    ld e, a                                       ; $5788: $5f
    or d                                          ; $5789: $b2
    ld a, a                                       ; $578a: $7f
    pop hl                                        ; $578b: $e1
    ld l, l                                       ; $578c: $6d
    di                                            ; $578d: $f3
    sub e                                         ; $578e: $93

jr_0f0_578f:
    ld a, a                                       ; $578f: $7f
    or $0f                                        ; $5790: $f6 $0f
    ld a, a                                       ; $5792: $7f
    ldh [$e5], a                                  ; $5793: $e0 $e5
    ei                                            ; $5795: $fb
    sbc $ff                                       ; $5796: $de $ff
    and e                                         ; $5798: $a3
    db $fc                                        ; $5799: $fc
    rst $08                                       ; $579a: $cf
    ldh a, [$af]                                  ; $579b: $f0 $af
    ldh a, [$9f]                                  ; $579d: $f0 $9f
    ldh [$ee], a                                  ; $579f: $e0 $ee
    pop af                                        ; $57a1: $f1
    ld [bc], a                                    ; $57a2: $02
    db $10                                        ; $57a3: $10
    ld [bc], a                                    ; $57a4: $02

jr_0f0_57a5:
    cp $85                                        ; $57a5: $fe $85
    call z, $dbf4                                 ; $57a7: $cc $f4 $db
    ld h, a                                       ; $57aa: $67
    sub $02                                       ; $57ab: $d6 $02
    ld a, e                                       ; $57ad: $7b
    adc c                                         ; $57ae: $89
    sbc a                                         ; $57af: $9f
    rst $38                                       ; $57b0: $ff
    ld bc, $3ed3                                  ; $57b1: $01 $d3 $3e
    ld a, a                                       ; $57b4: $7f
    xor [hl]                                      ; $57b5: $ae
    ei                                            ; $57b6: $fb
    rst $00                                       ; $57b7: $c7
    ld [bc], a                                    ; $57b8: $02
    rst $38                                       ; $57b9: $ff
    adc d                                         ; $57ba: $8a
    db $fd                                        ; $57bb: $fd
    dec a                                         ; $57bc: $3d
    add hl, hl                                    ; $57bd: $29
    reti                                          ; $57be: $d9


    ld a, b                                       ; $57bf: $78
    adc b                                         ; $57c0: $88
    ld hl, sp+$08                                 ; $57c1: $f8 $08
    ld hl, sp+$08                                 ; $57c3: $f8 $08
    ld [bc], a                                    ; $57c5: $02
    jr nc, jr_0f0_5766                            ; $57c6: $30 $9e

    jr z, jr_0f0_57e2                             ; $57c8: $28 $18

    jr z, jr_0f0_57e4                             ; $57ca: $28 $18

    jr c, @+$0a                                   ; $57cc: $38 $08

    inc c                                         ; $57ce: $0c
    inc [hl]                                      ; $57cf: $34
    inc a                                         ; $57d0: $3c
    inc [hl]                                      ; $57d1: $34
    ld [hl-], a                                   ; $57d2: $32
    ld l, $3a                                     ; $57d3: $2e $3a
    ld b, $1a                                     ; $57d5: $06 $1a
    ld h, $25                                     ; $57d7: $26 $25
    ccf                                           ; $57d9: $3f
    dec de                                        ; $57da: $1b
    dec e                                         ; $57db: $1d
    cpl                                           ; $57dc: $2f
    ld sp, $f1ef                                  ; $57dd: $31 $ef $f1
    xor l                                         ; $57e0: $ad
    ld e, e                                       ; $57e1: $5b

jr_0f0_57e2:
    or $8e                                        ; $57e2: $f6 $8e

jr_0f0_57e4:
    sbc $66                                       ; $57e4: $de $66
    ld [bc], a                                    ; $57e6: $02
    nop                                           ; $57e7: $00
    ld [bc], a                                    ; $57e8: $02
    inc bc                                        ; $57e9: $03
    sbc b                                         ; $57ea: $98
    cp [hl]                                       ; $57eb: $be
    db $dd                                        ; $57ec: $dd
    ld d, l                                       ; $57ed: $55
    ld a, [hl]                                    ; $57ee: $7e
    ld a, $35                                     ; $57ef: $3e $35
    scf                                           ; $57f1: $37
    dec sp                                        ; $57f2: $3b
    dec l                                         ; $57f3: $2d
    ccf                                           ; $57f4: $3f
    add hl, sp                                    ; $57f5: $39
    scf                                           ; $57f6: $37
    ccf                                           ; $57f7: $3f
    inc hl                                        ; $57f8: $23
    ld e, l                                       ; $57f9: $5d
    ld l, e                                       ; $57fa: $6b
    ld a, $21                                     ; $57fb: $3e $21
    ld e, l                                       ; $57fd: $5d
    ld h, [hl]                                    ; $57fe: $66
    ld l, [hl]                                    ; $57ff: $6e
    ld a, a                                       ; $5800: $7f
    or l                                          ; $5801: $b5
    db $db                                        ; $5802: $db
    ld [bc], a                                    ; $5803: $02
    ld a, a                                       ; $5804: $7f
    ld [bc], a                                    ; $5805: $02
    nop                                           ; $5806: $00
    adc b                                         ; $5807: $88
    ld bc, $d702                                  ; $5808: $01 $02 $d7
    ld l, [hl]                                    ; $580b: $6e
    push hl                                       ; $580c: $e5
    cp e                                          ; $580d: $bb
    rst $38                                       ; $580e: $ff
    cp a                                          ; $580f: $bf
    inc bc                                        ; $5810: $03
    rst $38                                       ; $5811: $ff
    add c                                         ; $5812: $81
    cp a                                          ; $5813: $bf
    ld [bc], a                                    ; $5814: $02
    cp $02                                        ; $5815: $fe $02
    xor h                                         ; $5817: $ac
    ld [bc], a                                    ; $5818: $02
    inc c                                         ; $5819: $0c
    inc b                                         ; $581a: $04
    add c                                         ; $581b: $81
    add h                                         ; $581c: $84
    ld b, c                                       ; $581d: $41
    pop bc                                        ; $581e: $c1
    ld b, b                                       ; $581f: $40
    ret nz                                        ; $5820: $c0

    ld [bc], a                                    ; $5821: $02
    add b                                         ; $5822: $80
    inc b                                         ; $5823: $04
    nop                                           ; $5824: $00
    sbc d                                         ; $5825: $9a
    or b                                          ; $5826: $b0
    ld [hl], b                                    ; $5827: $70
    ld h, b                                       ; $5828: $60
    ldh a, [$b0]                                  ; $5829: $f0 $b0
    ldh [$f0], a                                  ; $582b: $e0 $f0
    ret nc                                        ; $582d: $d0

    ld d, [hl]                                    ; $582e: $56
    cp l                                          ; $582f: $bd
    adc d                                         ; $5830: $8a
    rst $38                                       ; $5831: $ff
    rst $10                                       ; $5832: $d7
    rst $28                                       ; $5833: $ef
    ld c, h                                       ; $5834: $4c
    ld a, h                                       ; $5835: $7c
    sub h                                         ; $5836: $94
    db $ec                                        ; $5837: $ec
    cp h                                          ; $5838: $bc
    call nz, $a67a                                ; $5839: $c4 $7a $a6
    ld l, a                                       ; $583c: $6f
    rst $18                                       ; $583d: $df
    rst $10                                       ; $583e: $d7
    ld a, [$7f02]                                 ; $583f: $fa $02 $7f
    inc c                                         ; $5842: $0c
    nop                                           ; $5843: $00
    add d                                         ; $5844: $82
    rlca                                          ; $5845: $07
    inc bc                                        ; $5846: $03
    ld [bc], a                                    ; $5847: $02
    ld b, $02                                     ; $5848: $06 $02
    inc b                                         ; $584a: $04
    ld a, [bc]                                    ; $584b: $0a
    nop                                           ; $584c: $00
    inc b                                         ; $584d: $04
    inc b                                         ; $584e: $04
    inc b                                         ; $584f: $04
    nop                                           ; $5850: $00
    rst $38                                       ; $5851: $ff
    dec d                                         ; $5852: $15
    ld [$1fef], sp                                ; $5853: $08 $ef $1f
    pop hl                                        ; $5856: $e1

jr_0f0_5857:
    nop                                           ; $5857: $00
    db $e4                                        ; $5858: $e4
    ld a, [c]                                     ; $5859: $f2
    db $e3                                        ; $585a: $e3
    ld a, [$02e2]                                 ; $585b: $fa $e2 $02
    and $08                                       ; $585e: $e6 $08
    ld a, [c]                                     ; $5860: $f2
    db $f4                                        ; $5861: $f4
    ld a, [c]                                     ; $5862: $f2
    db $fc                                        ; $5863: $fc
    ld a, [c]                                     ; $5864: $f2
    inc b                                         ; $5865: $04
    ld a, [c]                                     ; $5866: $f2
    dec b                                         ; $5867: $05
    ld [bc], a                                    ; $5868: $02
    ld bc, $0302                                  ; $5869: $01 $02 $03
    sbc h                                         ; $586c: $9c
    rrca                                          ; $586d: $0f
    inc c                                         ; $586e: $0c
    ld d, $19                                     ; $586f: $16 $19
    dec d                                         ; $5871: $15
    ld a, [de]                                    ; $5872: $1a
    rra                                           ; $5873: $1f
    db $10                                        ; $5874: $10
    scf                                           ; $5875: $37
    jr c, jr_0f0_58ad                             ; $5876: $38 $35

    ld l, $76                                     ; $5878: $2e $76
    ld e, e                                       ; $587a: $5b
    ld a, a                                       ; $587b: $7f
    ld d, c                                       ; $587c: $51
    ld c, a                                       ; $587d: $4f
    ld [hl], c                                    ; $587e: $71
    sub [hl]                                      ; $587f: $96
    ld a, [$ff8d]                                 ; $5880: $fa $8d $ff
    ld e, c                                       ; $5883: $59
    ld h, a                                       ; $5884: $67
    ld e, [hl]                                    ; $5885: $5e
    ld h, c                                       ; $5886: $61
    ld l, $31                                     ; $5887: $2e $31
    ld [bc], a                                    ; $5889: $02
    ccf                                           ; $588a: $3f
    sbc [hl]                                      ; $588b: $9e
    call c, Call_000_31e3                         ; $588c: $dc $e3 $31
    rst $08                                       ; $588f: $cf
    ld d, a                                       ; $5890: $57
    cp d                                          ; $5891: $ba
    ld a, a                                       ; $5892: $7f
    ld [c], a                                     ; $5893: $e2
    ld l, l                                       ; $5894: $6d
    di                                            ; $5895: $f3
    sub e                                         ; $5896: $93
    ld a, a                                       ; $5897: $7f
    or $0f                                        ; $5898: $f6 $0f
    ld l, [hl]                                    ; $589a: $6e
    pop af                                        ; $589b: $f1
    di                                            ; $589c: $f3
    rst $38                                       ; $589d: $ff
    cp h                                          ; $589e: $bc
    rst $38                                       ; $589f: $ff
    db $d3                                        ; $58a0: $d3
    db $fc                                        ; $58a1: $fc
    and a                                         ; $58a2: $a7
    ld hl, sp-$31                                 ; $58a3: $f8 $cf
    ldh a, [$cf]                                  ; $58a5: $f0 $cf
    ldh a, [$ee]                                  ; $58a7: $f0 $ee
    pop af                                        ; $58a9: $f1
    ld [bc], a                                    ; $58aa: $02
    db $10                                        ; $58ab: $10
    ld [bc], a                                    ; $58ac: $02

jr_0f0_58ad:
    ld a, [$dc85]                                 ; $58ad: $fa $85 $dc
    db $f4                                        ; $58b0: $f4
    db $db                                        ; $58b1: $db
    rst $20                                       ; $58b2: $e7
    sub $02                                       ; $58b3: $d6 $02
    ld a, e                                       ; $58b5: $7b
    adc c                                         ; $58b6: $89
    sbc a                                         ; $58b7: $9f
    rst $38                                       ; $58b8: $ff
    add c                                         ; $58b9: $81
    db $d3                                        ; $58ba: $d3
    ld a, $7f                                     ; $58bb: $3e $7f
    xor [hl]                                      ; $58bd: $ae
    ei                                            ; $58be: $fb
    rst $00                                       ; $58bf: $c7
    ld [bc], a                                    ; $58c0: $02
    rst $38                                       ; $58c1: $ff
    adc d                                         ; $58c2: $8a
    dec e                                         ; $58c3: $1d
    db $fd                                        ; $58c4: $fd
    ld c, c                                       ; $58c5: $49
    cp c                                          ; $58c6: $b9
    ld l, b                                       ; $58c7: $68
    sbc b                                         ; $58c8: $98
    ld hl, sp+$08                                 ; $58c9: $f8 $08
    ld a, c                                       ; $58cb: $79
    adc c                                         ; $58cc: $89
    ld [bc], a                                    ; $58cd: $02
    jr nc, jr_0f0_5857                            ; $58ce: $30 $87

    jr z, jr_0f0_58ea                             ; $58d0: $28 $18

    jr z, @+$1a                                   ; $58d2: $28 $18

    jr c, jr_0f0_58de                             ; $58d4: $38 $08

    inc b                                         ; $58d6: $04
    ld [bc], a                                    ; $58d7: $02
    inc a                                         ; $58d8: $3c
    sub l                                         ; $58d9: $95
    inc [hl]                                      ; $58da: $34
    ld a, [hl+]                                   ; $58db: $2a
    ld a, $1a                                     ; $58dc: $3e $1a

jr_0f0_58de:
    ld h, $1a                                     ; $58de: $26 $1a
    ld h, $2f                                     ; $58e0: $26 $2f
    dec a                                         ; $58e2: $3d
    scf                                           ; $58e3: $37
    add hl, sp                                    ; $58e4: $39
    rrca                                          ; $58e5: $0f
    ld sp, $e3dd                                  ; $58e6: $31 $dd $e3
    ld e, d                                       ; $58e9: $5a

jr_0f0_58ea:
    or [hl]                                       ; $58ea: $b6
    ld a, [$bc9e]                                 ; $58eb: $fa $9e $bc
    ld c, h                                       ; $58ee: $4c
    ld [bc], a                                    ; $58ef: $02
    nop                                           ; $58f0: $00
    sbc d                                         ; $58f1: $9a
    inc bc                                        ; $58f2: $03
    ld [bc], a                                    ; $58f3: $02
    ld d, h                                       ; $58f4: $54
    ld l, a                                       ; $58f5: $6f
    ld a, a                                       ; $58f6: $7f
    ld l, c                                       ; $58f7: $69
    inc sp                                        ; $58f8: $33
    inc a                                         ; $58f9: $3c
    dec a                                         ; $58fa: $3d
    dec sp                                        ; $58fb: $3b
    ld h, $3f                                     ; $58fc: $26 $3f
    add hl, hl                                    ; $58fe: $29
    scf                                           ; $58ff: $37
    ld a, a                                       ; $5900: $7f
    ld [hl], e                                    ; $5901: $73
    ld e, l                                       ; $5902: $5d
    ld l, e                                       ; $5903: $6b
    ld a, $21                                     ; $5904: $3e $21
    ld c, l                                       ; $5906: $4d
    halt                                          ; $5907: $76
    ld l, [hl]                                    ; $5908: $6e
    ld a, a                                       ; $5909: $7f
    xor a                                         ; $590a: $af
    reti                                          ; $590b: $d9


    ld [bc], a                                    ; $590c: $02
    ld a, a                                       ; $590d: $7f
    ld [bc], a                                    ; $590e: $02
    nop                                           ; $590f: $00
    add [hl]                                      ; $5910: $86
    inc bc                                        ; $5911: $03
    ld [bc], a                                    ; $5912: $02
    sub $6f                                       ; $5913: $d6 $6f
    pop af                                        ; $5915: $f1
    cp a                                          ; $5916: $bf
    ld [bc], a                                    ; $5917: $02
    rst $38                                       ; $5918: $ff
    add h                                         ; $5919: $84
    cp a                                          ; $591a: $bf
    rst $18                                       ; $591b: $df
    rst $38                                       ; $591c: $ff
    rst $18                                       ; $591d: $df
    ld [bc], a                                    ; $591e: $02
    cp $02                                        ; $591f: $fe $02
    xor [hl]                                      ; $5921: $ae
    ld [bc], a                                    ; $5922: $02
    inc b                                         ; $5923: $04
    inc b                                         ; $5924: $04
    add c                                         ; $5925: $81
    add h                                         ; $5926: $84
    ld b, c                                       ; $5927: $41
    pop bc                                        ; $5928: $c1
    ld b, b                                       ; $5929: $40
    ret nz                                        ; $592a: $c0

    ld [bc], a                                    ; $592b: $02
    add b                                         ; $592c: $80
    inc b                                         ; $592d: $04
    nop                                           ; $592e: $00
    add c                                         ; $592f: $81
    or b                                          ; $5930: $b0
    ld [bc], a                                    ; $5931: $02
    ld [hl], b                                    ; $5932: $70
    add e                                         ; $5933: $83
    ldh [$f0], a                                  ; $5934: $e0 $f0
    ret nc                                        ; $5936: $d0

    ld [bc], a                                    ; $5937: $02
    ldh a, [$8f]                                  ; $5938: $f0 $8f
    ld l, [hl]                                    ; $593a: $6e
    cp c                                          ; $593b: $b9
    sbc l                                         ; $593c: $9d
    rst $38                                       ; $593d: $ff
    sub [hl]                                      ; $593e: $96
    xor $44                                       ; $593f: $ee $44
    ld a, h                                       ; $5941: $7c
    sbc h                                         ; $5942: $9c
    db $ec                                        ; $5943: $ec
    ld a, h                                       ; $5944: $7c
    add h                                         ; $5945: $84
    ld a, [hl-]                                   ; $5946: $3a
    and $6f                                       ; $5947: $e6 $6f
    ld [bc], a                                    ; $5949: $02
    rst $18                                       ; $594a: $df
    add c                                         ; $594b: $81
    ld a, [c]                                     ; $594c: $f2
    ld [bc], a                                    ; $594d: $02
    ld a, a                                       ; $594e: $7f
    inc c                                         ; $594f: $0c
    nop                                           ; $5950: $00
    ld [bc], a                                    ; $5951: $02
    ld bc, $000e                                  ; $5952: $01 $0e $00
    inc b                                         ; $5955: $04
    ld bc, $0004                                  ; $5956: $01 $04 $00
    rst $38                                       ; $5959: $ff
    dec d                                         ; $595a: $15
    ld [$1fef], sp                                ; $595b: $08 $ef $1f
    pop hl                                        ; $595e: $e1
    nop                                           ; $595f: $00
    db $e4                                        ; $5960: $e4
    ld a, [c]                                     ; $5961: $f2
    db $e3                                        ; $5962: $e3
    ld a, [$02e2]                                 ; $5963: $fa $e2 $02
    and $08                                       ; $5966: $e6 $08
    ld a, [c]                                     ; $5968: $f2
    db $f4                                        ; $5969: $f4
    ld a, [c]                                     ; $596a: $f2
    db $fc                                        ; $596b: $fc
    ld a, [c]                                     ; $596c: $f2
    inc b                                         ; $596d: $04
    ld a, [c]                                     ; $596e: $f2
    rlca                                          ; $596f: $07
    ld [bc], a                                    ; $5970: $02
    ld bc, $0302                                  ; $5971: $01 $02 $03
    sbc h                                         ; $5974: $9c

jr_0f0_5975:
    rrca                                          ; $5975: $0f
    inc c                                         ; $5976: $0c
    ld d, $19                                     ; $5977: $16 $19
    dec e                                         ; $5979: $1d
    ld [de], a                                    ; $597a: $12
    dec e                                         ; $597b: $1d
    ld [de], a                                    ; $597c: $12
    scf                                           ; $597d: $37
    jr c, jr_0f0_59bb                             ; $597e: $38 $3b

    inc l                                         ; $5980: $2c
    ld [hl], h                                    ; $5981: $74
    ld e, a                                       ; $5982: $5f
    ld e, l                                       ; $5983: $5d
    ld [hl], e                                    ; $5984: $73
    sbc a                                         ; $5985: $9f
    pop hl                                        ; $5986: $e1
    sbc [hl]                                      ; $5987: $9e
    ld a, [c]                                     ; $5988: $f2
    or [hl]                                       ; $5989: $b6
    adc $bd                                       ; $598a: $ce $bd
    jp $615e                                      ; $598c: $c3 $5e $61


    ld e, l                                       ; $598f: $5d
    ld h, e                                       ; $5990: $63
    ld [bc], a                                    ; $5991: $02
    ccf                                           ; $5992: $3f
    sbc [hl]                                      ; $5993: $9e
    sbc $e1                                       ; $5994: $de $e1
    ld hl, $57df                                  ; $5996: $21 $df $57
    cp d                                          ; $5999: $ba
    ccf                                           ; $599a: $3f
    ld [c], a                                     ; $599b: $e2
    ld l, l                                       ; $599c: $6d
    di                                            ; $599d: $f3
    or c                                          ; $599e: $b1
    ld a, a                                       ; $599f: $7f
    and $1f                                       ; $59a0: $e6 $1f
    cp a                                          ; $59a2: $bf
    ld h, b                                       ; $59a3: $60
    push af                                       ; $59a4: $f5
    ei                                            ; $59a5: $fb

jr_0f0_59a6:
    sub $ff                                       ; $59a6: $d6 $ff
    and e                                         ; $59a8: $a3
    db $fc                                        ; $59a9: $fc
    rst $08                                       ; $59aa: $cf
    ldh a, [$af]                                  ; $59ab: $f0 $af
    ldh a, [$df]                                  ; $59ad: $f0 $df
    ldh [$ee], a                                  ; $59af: $e0 $ee
    pop af                                        ; $59b1: $f1
    ld [bc], a                                    ; $59b2: $02
    db $10                                        ; $59b3: $10
    ld [bc], a                                    ; $59b4: $02
    ld a, [$dc90]                                 ; $59b5: $fa $90 $dc
    db $f4                                        ; $59b8: $f4
    db $db                                        ; $59b9: $db
    rst $20                                       ; $59ba: $e7

jr_0f0_59bb:
    sub $7b                                       ; $59bb: $d6 $7b
    dec sp                                        ; $59bd: $3b
    rst $18                                       ; $59be: $df
    rst $38                                       ; $59bf: $ff
    add c                                         ; $59c0: $81
    jp z, Jump_0f0_7f37                           ; $59c1: $ca $37 $7f

    xor [hl]                                      ; $59c4: $ae
    rst $38                                       ; $59c5: $ff
    jp $ff02                                      ; $59c6: $c3 $02 $ff


    adc d                                         ; $59c9: $8a
    db $fd                                        ; $59ca: $fd
    dec a                                         ; $59cb: $3d
    jr z, jr_0f0_59a6                             ; $59cc: $28 $d8

    ld a, b                                       ; $59ce: $78
    adc b                                         ; $59cf: $88
    ld hl, sp+$08                                 ; $59d0: $f8 $08
    ld hl, sp+$08                                 ; $59d2: $f8 $08
    ld [bc], a                                    ; $59d4: $02
    jr nc, jr_0f0_5975                            ; $59d5: $30 $9e

    jr z, jr_0f0_59f1                             ; $59d7: $28 $18

    jr c, @+$0a                                   ; $59d9: $38 $08

    jr c, @+$0a                                   ; $59db: $38 $08

    inc b                                         ; $59dd: $04
    inc a                                         ; $59de: $3c
    inc e                                         ; $59df: $1c
    inc [hl]                                      ; $59e0: $34
    ld a, [hl+]                                   ; $59e1: $2a
    ld a, $1a                                     ; $59e2: $3e $1a
    ld h, $3e                                     ; $59e4: $26 $3e
    ld h, $3b                                     ; $59e6: $26 $3b
    dec a                                         ; $59e8: $3d
    rla                                           ; $59e9: $17
    add hl, de                                    ; $59ea: $19
    daa                                           ; $59eb: $27
    add hl, sp                                    ; $59ec: $39
    ld c, a                                       ; $59ed: $4f
    ld [hl], c                                    ; $59ee: $71
    rst $28                                       ; $59ef: $ef
    pop af                                        ; $59f0: $f1

jr_0f0_59f1:
    xor [hl]                                      ; $59f1: $ae
    ld e, d                                       ; $59f2: $5a
    halt                                          ; $59f3: $76
    adc $02                                       ; $59f4: $ce $02
    nop                                           ; $59f6: $00
    sbc d                                         ; $59f7: $9a
    inc bc                                        ; $59f8: $03
    nop                                           ; $59f9: $00
    cp e                                          ; $59fa: $bb
    rst $18                                       ; $59fb: $df
    ld e, l                                       ; $59fc: $5d
    ld a, e                                       ; $59fd: $7b
    cpl                                           ; $59fe: $2f
    dec [hl]                                      ; $59ff: $35
    ld [hl], $3b                                  ; $5a00: $36 $3b
    dec a                                         ; $5a02: $3d
    cpl                                           ; $5a03: $2f
    add hl, sp                                    ; $5a04: $39
    scf                                           ; $5a05: $37
    ld l, a                                       ; $5a06: $6f
    ld [hl], e                                    ; $5a07: $73
    ld d, l                                       ; $5a08: $55
    ld l, e                                       ; $5a09: $6b
    ld a, $21                                     ; $5a0a: $3e $21
    ld c, l                                       ; $5a0c: $4d
    halt                                          ; $5a0d: $76
    ld l, [hl]                                    ; $5a0e: $6e
    ld a, a                                       ; $5a0f: $7f
    xor a                                         ; $5a10: $af
    reti                                          ; $5a11: $d9


    ld [bc], a                                    ; $5a12: $02
    ld a, a                                       ; $5a13: $7f
    ld [bc], a                                    ; $5a14: $02
    nop                                           ; $5a15: $00
    add a                                         ; $5a16: $87
    ld bc, $d702                                  ; $5a17: $01 $02 $d7
    ld l, [hl]                                    ; $5a1a: $6e
    push hl                                       ; $5a1b: $e5
    ei                                            ; $5a1c: $fb
    ld a, a                                       ; $5a1d: $7f
    ld [bc], a                                    ; $5a1e: $02
    rst $38                                       ; $5a1f: $ff
    add c                                         ; $5a20: $81
    cp a                                          ; $5a21: $bf
    ld [bc], a                                    ; $5a22: $02
    rst $38                                       ; $5a23: $ff
    ld [bc], a                                    ; $5a24: $02
    cp $02                                        ; $5a25: $fe $02
    xor [hl]                                      ; $5a27: $ae
    ld [bc], a                                    ; $5a28: $02
    nop                                           ; $5a29: $00
    inc b                                         ; $5a2a: $04
    add c                                         ; $5a2b: $81
    add h                                         ; $5a2c: $84
    ld b, c                                       ; $5a2d: $41
    pop bc                                        ; $5a2e: $c1
    ld b, b                                       ; $5a2f: $40
    ret nz                                        ; $5a30: $c0

    ld [bc], a                                    ; $5a31: $02
    add b                                         ; $5a32: $80
    inc b                                         ; $5a33: $04
    nop                                           ; $5a34: $00
    sub a                                         ; $5a35: $97
    and b                                         ; $5a36: $a0
    ld h, b                                       ; $5a37: $60
    ld [hl], b                                    ; $5a38: $70
    ldh a, [$b0]                                  ; $5a39: $f0 $b0
    ret nc                                        ; $5a3b: $d0

    ldh a, [$d0]                                  ; $5a3c: $f0 $d0
    ld e, l                                       ; $5a3e: $5d
    cp d                                          ; $5a3f: $ba
    adc d                                         ; $5a40: $8a
    rst $38                                       ; $5a41: $ff
    sbc a                                         ; $5a42: $9f
    rst $20                                       ; $5a43: $e7
    ld c, h                                       ; $5a44: $4c
    ld a, h                                       ; $5a45: $7c
    sbc h                                         ; $5a46: $9c
    db $ec                                        ; $5a47: $ec
    ld a, d                                       ; $5a48: $7a
    add [hl]                                      ; $5a49: $86
    ld a, [hl-]                                   ; $5a4a: $3a
    and $6f                                       ; $5a4b: $e6 $6f
    ld [bc], a                                    ; $5a4d: $02
    rst $18                                       ; $5a4e: $df
    add c                                         ; $5a4f: $81
    ld a, [c]                                     ; $5a50: $f2
    ld [bc], a                                    ; $5a51: $02
    ld a, a                                       ; $5a52: $7f
    inc c                                         ; $5a53: $0c
    nop                                           ; $5a54: $00
    add h                                         ; $5a55: $84
    rlca                                          ; $5a56: $07
    inc bc                                        ; $5a57: $03
    ld [bc], a                                    ; $5a58: $02
    ld b, $02                                     ; $5a59: $06 $02
    inc b                                         ; $5a5b: $04
    ld a, [bc]                                    ; $5a5c: $0a
    nop                                           ; $5a5d: $00
    inc b                                         ; $5a5e: $04
    inc b                                         ; $5a5f: $04
    inc b                                         ; $5a60: $04
    nop                                           ; $5a61: $00
    rst $38                                       ; $5a62: $ff
    dec d                                         ; $5a63: $15
    ld [$1fef], sp                                ; $5a64: $08 $ef $1f
    pop hl                                        ; $5a67: $e1
    nop                                           ; $5a68: $00
    push hl                                       ; $5a69: $e5
    pop af                                        ; $5a6a: $f1
    db $e3                                        ; $5a6b: $e3
    ld sp, hl                                     ; $5a6c: $f9
    pop hl                                        ; $5a6d: $e1
    ld bc, $08e5                                  ; $5a6e: $01 $e5 $08
    pop af                                        ; $5a71: $f1
    db $f4                                        ; $5a72: $f4
    pop af                                        ; $5a73: $f1
    db $fc                                        ; $5a74: $fc
    pop af                                        ; $5a75: $f1
    inc b                                         ; $5a76: $04
    pop af                                        ; $5a77: $f1
    ld [$0302], sp                                ; $5a78: $08 $02 $03
    sbc [hl]                                      ; $5a7b: $9e
    dec b                                         ; $5a7c: $05
    ld b, $0b                                     ; $5a7d: $06 $0b
    inc c                                         ; $5a7f: $0c
    rrca                                          ; $5a80: $0f
    ld [$191e], sp                                ; $5a81: $08 $1e $19
    inc de                                        ; $5a84: $13
    inc e                                         ; $5a85: $1c
    inc sp                                        ; $5a86: $33
    inc l                                         ; $5a87: $2c
    inc a                                         ; $5a88: $3c
    dec hl                                        ; $5a89: $2b
    ld l, a                                       ; $5a8a: $6f
    ld d, c                                       ; $5a8b: $51
    ld d, l                                       ; $5a8c: $55
    ld a, e                                       ; $5a8d: $7b
    adc [hl]                                      ; $5a8e: $8e
    cp $9b                                        ; $5a8f: $fe $9b
    rst $20                                       ; $5a91: $e7
    ld e, l                                       ; $5a92: $5d
    ld h, e                                       ; $5a93: $63
    ld c, a                                       ; $5a94: $4f
    ld [hl], e                                    ; $5a95: $73
    inc hl                                        ; $5a96: $23
    ld a, $15                                     ; $5a97: $3e $15
    rra                                           ; $5a99: $1f
    ld [bc], a                                    ; $5a9a: $02
    rrca                                          ; $5a9b: $0f
    sbc [hl]                                      ; $5a9c: $9e
    ld a, a                                       ; $5a9d: $7f
    ld [hl], b                                    ; $5a9e: $70
    sub e                                         ; $5a9f: $93
    db $ed                                        ; $5aa0: $ed
    xor a                                         ; $5aa1: $af
    ld e, c                                       ; $5aa2: $59
    rra                                           ; $5aa3: $1f
    pop af                                        ; $5aa4: $f1
    or [hl]                                       ; $5aa5: $b6
    ld a, c                                       ; $5aa6: $79
    sbc b                                         ; $5aa7: $98
    ld a, a                                       ; $5aa8: $7f
    di                                            ; $5aa9: $f3
    rrca                                          ; $5aaa: $0f
    rst $18                                       ; $5aab: $df
    jr nc, jr_0f0_5b24                            ; $5aac: $30 $76

    ld sp, hl                                     ; $5aae: $f9
    db $eb                                        ; $5aaf: $eb
    rst $38                                       ; $5ab0: $ff
    pop de                                        ; $5ab1: $d1
    cp $67                                        ; $5ab2: $fe $67
    ld a, b                                       ; $5ab4: $78
    ld a, a                                       ; $5ab5: $7f
    ld [hl], b                                    ; $5ab6: $70
    rst $38                                       ; $5ab7: $ff
    sub b                                         ; $5ab8: $90
    rst $28                                       ; $5ab9: $ef
    ld [hl], b                                    ; $5aba: $70
    ld [bc], a                                    ; $5abb: $02
    ld [$1d02], sp                                ; $5abc: $08 $02 $1d
    sbc h                                         ; $5abf: $9c
    xor $fa                                       ; $5ac0: $ee $fa
    db $ed                                        ; $5ac2: $ed
    di                                            ; $5ac3: $f3
    ld l, a                                       ; $5ac4: $6f
    cp c                                          ; $5ac5: $b9
    sbc l                                         ; $5ac6: $9d
    ld l, a                                       ; $5ac7: $6f
    ld a, a                                       ; $5ac8: $7f
    ret nz                                        ; $5ac9: $c0

    db $fd                                        ; $5aca: $fd
    add e                                         ; $5acb: $83
    xor e                                         ; $5acc: $ab
    rst $18                                       ; $5acd: $df
    ld a, a                                       ; $5ace: $7f
    pop bc                                        ; $5acf: $c1
    cp a                                          ; $5ad0: $bf
    ld a, a                                       ; $5ad1: $7f
    db $ed                                        ; $5ad2: $ed
    di                                            ; $5ad3: $f3
    halt                                          ; $5ad4: $76
    sbc [hl]                                      ; $5ad5: $9e
    sub h                                         ; $5ad6: $94
    ld l, h                                       ; $5ad7: $6c
    ld a, [$fa06]                                 ; $5ad8: $fa $06 $fa
    ld b, $02                                     ; $5adb: $06 $02
    ld h, b                                       ; $5add: $60
    sbc [hl]                                      ; $5ade: $9e
    db $10                                        ; $5adf: $10
    ld [hl], b                                    ; $5ae0: $70
    ld l, b                                       ; $5ae1: $68
    ld e, b                                       ; $5ae2: $58
    ld a, b                                       ; $5ae3: $78
    ld c, b                                       ; $5ae4: $48
    inc a                                         ; $5ae5: $3c
    ld c, h                                       ; $5ae6: $4c
    ld l, h                                       ; $5ae7: $6c
    inc d                                         ; $5ae8: $14
    ld e, h                                       ; $5ae9: $5c
    ld [hl], h                                    ; $5aea: $74
    ld h, d                                       ; $5aeb: $62
    ld a, [hl]                                    ; $5aec: $7e
    ld e, d                                       ; $5aed: $5a
    ld h, [hl]                                    ; $5aee: $66
    dec sp                                        ; $5aef: $3b
    dec h                                         ; $5af0: $25
    dec de                                        ; $5af1: $1b
    dec e                                         ; $5af2: $1d
    rla                                           ; $5af3: $17
    add hl, de                                    ; $5af4: $19
    daa                                           ; $5af5: $27
    add hl, sp                                    ; $5af6: $39
    rst $20                                       ; $5af7: $e7
    ld sp, hl                                     ; $5af8: $f9
    rst $30                                       ; $5af9: $f7
    ld c, l                                       ; $5afa: $4d
    db $db                                        ; $5afb: $db
    or a                                          ; $5afc: $b7
    inc b                                         ; $5afd: $04
    nop                                           ; $5afe: $00
    sbc d                                         ; $5aff: $9a
    inc bc                                        ; $5b00: $03
    rlca                                          ; $5b01: $07
    ld b, $03                                     ; $5b02: $06 $03
    ld a, a                                       ; $5b04: $7f
    ld l, l                                       ; $5b05: $6d
    ld l, a                                       ; $5b06: $6f
    halt                                          ; $5b07: $76
    ccf                                           ; $5b08: $3f
    dec sp                                        ; $5b09: $3b
    dec a                                         ; $5b0a: $3d
    inc hl                                        ; $5b0b: $23
    add hl, sp                                    ; $5b0c: $39
    scf                                           ; $5b0d: $37
    ccf                                           ; $5b0e: $3f
    inc hl                                        ; $5b0f: $23
    ld e, l                                       ; $5b10: $5d
    ld l, e                                       ; $5b11: $6b
    ld a, $21                                     ; $5b12: $3e $21
    ld c, l                                       ; $5b14: $4d
    halt                                          ; $5b15: $76
    ld l, [hl]                                    ; $5b16: $6e
    ld a, a                                       ; $5b17: $7f
    or l                                          ; $5b18: $b5
    db $db                                        ; $5b19: $db
    ld [bc], a                                    ; $5b1a: $02
    ld a, a                                       ; $5b1b: $7f
    adc b                                         ; $5b1c: $88
    rlca                                          ; $5b1d: $07
    nop                                           ; $5b1e: $00
    dec b                                         ; $5b1f: $05
    ld [bc], a                                    ; $5b20: $02

jr_0f0_5b21:
    rst $30                                       ; $5b21: $f7
    adc $e5                                       ; $5b22: $ce $e5

jr_0f0_5b24:
    ei                                            ; $5b24: $fb
    ld [bc], a                                    ; $5b25: $02
    rst $38                                       ; $5b26: $ff
    add h                                         ; $5b27: $84
    ccf                                           ; $5b28: $3f
    rst $38                                       ; $5b29: $ff
    ld a, a                                       ; $5b2a: $7f
    rst $38                                       ; $5b2b: $ff
    ld [bc], a                                    ; $5b2c: $02
    cp $02                                        ; $5b2d: $fe $02
    sub [hl]                                      ; $5b2f: $96
    ld [bc], a                                    ; $5b30: $02
    nop                                           ; $5b31: $00
    ld [bc], a                                    ; $5b32: $02
    add b                                         ; $5b33: $80
    inc b                                         ; $5b34: $04
    add c                                         ; $5b35: $81
    add h                                         ; $5b36: $84
    ld b, c                                       ; $5b37: $41
    pop bc                                        ; $5b38: $c1
    ld b, b                                       ; $5b39: $40
    ret nz                                        ; $5b3a: $c0

    ld [bc], a                                    ; $5b3b: $02
    add b                                         ; $5b3c: $80
    sbc h                                         ; $5b3d: $9c
    ret nc                                        ; $5b3e: $d0

    jr nc, jr_0f0_5b21                            ; $5b3f: $30 $e0

    jr nz, jr_0f0_5bb3                            ; $5b41: $20 $70

    ldh a, [$b0]                                  ; $5b43: $f0 $b0
    ret nc                                        ; $5b45: $d0

    ei                                            ; $5b46: $fb
    rst $08                                       ; $5b47: $cf
    ld e, a                                       ; $5b48: $5f
    xor [hl]                                      ; $5b49: $ae
    adc e                                         ; $5b4a: $8b
    rst $30                                       ; $5b4b: $f7
    sbc $e6                                       ; $5b4c: $de $e6
    ld c, h                                       ; $5b4e: $4c
    ld a, h                                       ; $5b4f: $7c
    sub h                                         ; $5b50: $94
    db $ec                                        ; $5b51: $ec
    cp h                                          ; $5b52: $bc
    call nz, $a67a                                ; $5b53: $c4 $7a $a6
    ld l, a                                       ; $5b56: $6f
    rst $18                                       ; $5b57: $df
    ld d, a                                       ; $5b58: $57
    ld a, [$ff02]                                 ; $5b59: $fa $02 $ff
    ld a, [bc]                                    ; $5b5c: $0a
    nop                                           ; $5b5d: $00
    add [hl]                                      ; $5b5e: $86
    dec c                                         ; $5b5f: $0d
    rlca                                          ; $5b60: $07
    rrca                                          ; $5b61: $0f
    dec c                                         ; $5b62: $0d
    ld a, [bc]                                    ; $5b63: $0a
    ld c, $02                                     ; $5b64: $0e $02
    inc c                                         ; $5b66: $0c
    ld a, [bc]                                    ; $5b67: $0a
    nop                                           ; $5b68: $00
    inc b                                         ; $5b69: $04
    ld [$0002], sp                                ; $5b6a: $08 $02 $00
    rst $38                                       ; $5b6d: $ff
    rla                                           ; $5b6e: $17
    add hl, bc                                    ; $5b6f: $09
    rst $28                                       ; $5b70: $ef
    rra                                           ; $5b71: $1f
    pop hl                                        ; $5b72: $e1
    nop                                           ; $5b73: $00
    rst $20                                       ; $5b74: $e7
    rst $28                                       ; $5b75: $ef
    db $e4                                        ; $5b76: $e4
    rst $30                                       ; $5b77: $f7
    ld [c], a                                     ; $5b78: $e2
    rst $38                                       ; $5b79: $ff
    pop hl                                        ; $5b7a: $e1
    rlca                                          ; $5b7b: $07
    db $ec                                        ; $5b7c: $ec
    ld [$f4f1], sp                                ; $5b7d: $08 $f1 $f4
    pop af                                        ; $5b80: $f1
    db $fc                                        ; $5b81: $fc
    pop af                                        ; $5b82: $f1
    inc b                                         ; $5b83: $04
    pop af                                        ; $5b84: $f1
    dec b                                         ; $5b85: $05
    ld [bc], a                                    ; $5b86: $02
    ld bc, $0694                                  ; $5b87: $01 $94 $06
    rlca                                          ; $5b8a: $07
    dec bc                                        ; $5b8b: $0b
    dec c                                         ; $5b8c: $0d
    ld a, [hl-]                                   ; $5b8d: $3a
    ccf                                           ; $5b8e: $3f
    ld e, a                                       ; $5b8f: $5f
    ld a, [hl]                                    ; $5b90: $7e
    rst $28                                       ; $5b91: $ef
    or e                                          ; $5b92: $b3
    rst $30                                       ; $5b93: $f7
    cp c                                          ; $5b94: $b9
    db $db                                        ; $5b95: $db
    push hl                                       ; $5b96: $e5
    rst $28                                       ; $5b97: $ef
    ld a, [c]                                     ; $5b98: $f2
    rst $18                                       ; $5b99: $df
    push hl                                       ; $5b9a: $e5
    xor [hl]                                      ; $5b9b: $ae
    cp $02                                        ; $5b9c: $fe $02
    ld a, h                                       ; $5b9e: $7c
    ld [$0200], sp                                ; $5b9f: $08 $00 $02
    rra                                           ; $5ba2: $1f
    sbc [hl]                                      ; $5ba3: $9e
    ld h, b                                       ; $5ba4: $60
    ld a, a                                       ; $5ba5: $7f
    or a                                          ; $5ba6: $b7
    call $9fe7                                    ; $5ba7: $cd $e7 $9f
    di                                            ; $5baa: $f3
    adc [hl]                                      ; $5bab: $8e
    ld a, l                                       ; $5bac: $7d
    add d                                         ; $5bad: $82
    jp c, $ff67                                   ; $5bae: $da $67 $ff

    ccf                                           ; $5bb1: $3f
    rst $30                                       ; $5bb2: $f7

jr_0f0_5bb3:
    or a                                          ; $5bb3: $b7
    add $c7                                       ; $5bb4: $c6 $c7
    add l                                         ; $5bb6: $85
    add a                                         ; $5bb7: $87
    add [hl]                                      ; $5bb8: $86
    add a                                         ; $5bb9: $87
    ld a, [bc]                                    ; $5bba: $0a
    rrca                                          ; $5bbb: $0f
    add hl, bc                                    ; $5bbc: $09
    rrca                                          ; $5bbd: $0f
    dec e                                         ; $5bbe: $1d
    ld e, $1a                                     ; $5bbf: $1e $1a
    rra                                           ; $5bc1: $1f
    ld [bc], a                                    ; $5bc2: $02
    ld bc, $fe9e                                  ; $5bc3: $01 $9e $fe
    rst $38                                       ; $5bc6: $ff
    ld a, $cf                                     ; $5bc7: $3e $cf
    sbc $f3                                       ; $5bc9: $de $f3
    ei                                            ; $5bcb: $fb
    inc d                                         ; $5bcc: $14
    ld a, a                                       ; $5bcd: $7f
    adc h                                         ; $5bce: $8c
    add [hl]                                      ; $5bcf: $86
    ld sp, hl                                     ; $5bd0: $f9
    db $e3                                        ; $5bd1: $e3
    ld a, l                                       ; $5bd2: $7d
    rst $18                                       ; $5bd3: $df
    ld a, $37                                     ; $5bd4: $3e $37
    rst $08                                       ; $5bd6: $cf
    rst $18                                       ; $5bd7: $df
    ld a, [$ed92]                                 ; $5bd8: $fa $92 $ed
    ld [hl], a                                    ; $5bdb: $77
    adc b                                         ; $5bdc: $88
    rst $38                                       ; $5bdd: $ff
    nop                                           ; $5bde: $00
    rst $38                                       ; $5bdf: $ff
    nop                                           ; $5be0: $00
    rst $38                                       ; $5be1: $ff
    nop                                           ; $5be2: $00
    ld [bc], a                                    ; $5be3: $02
    add b                                         ; $5be4: $80
    ld [bc], a                                    ; $5be5: $02
    ret nc                                        ; $5be6: $d0

    sbc h                                         ; $5be7: $9c
    ldh [$a0], a                                  ; $5be8: $e0 $a0
    ret nc                                        ; $5bea: $d0

    jr nc, @-$4e                                  ; $5beb: $30 $b0

    ret nc                                        ; $5bed: $d0

    ret c                                         ; $5bee: $d8

    ld hl, sp-$04                                 ; $5bef: $f8 $fc
    inc c                                         ; $5bf1: $0c
    sbc h                                         ; $5bf2: $9c
    db $f4                                        ; $5bf3: $f4
    or $7a                                        ; $5bf4: $f6 $7a
    sbc $3e                                       ; $5bf6: $de $3e
    pop af                                        ; $5bf8: $f1
    rst $38                                       ; $5bf9: $ff
    sbc $5d                                       ; $5bfa: $de $5d
    sub e                                         ; $5bfc: $93
    sbc [hl]                                      ; $5bfd: $9e
    or a                                          ; $5bfe: $b7
    xor c                                         ; $5bff: $a9
    sbc a                                         ; $5c00: $9f
    sub b                                         ; $5c01: $90
    adc [hl]                                      ; $5c02: $8e
    adc c                                         ; $5c03: $89
    ld a, [bc]                                    ; $5c04: $0a
    ld bc, $0e02                                  ; $5c05: $01 $02 $0e
    ld [bc], a                                    ; $5c08: $02
    nop                                           ; $5c09: $00
    ld [bc], a                                    ; $5c0a: $02
    add b                                         ; $5c0b: $80
    sub b                                         ; $5c0c: $90
    ld b, b                                       ; $5c0d: $40
    ret nz                                        ; $5c0e: $c0

    and b                                         ; $5c0f: $a0
    ld h, b                                       ; $5c10: $60
    ldh [rNR41], a                                ; $5c11: $e0 $20
    ld d, b                                       ; $5c13: $50
    or b                                          ; $5c14: $b0
    ret nc                                        ; $5c15: $d0

    jr nc, jr_0f0_5c38                            ; $5c16: $30 $20

    ldh [$a0], a                                  ; $5c18: $e0 $a0
    ld h, b                                       ; $5c1a: $60
    ldh [rNR41], a                                ; $5c1b: $e0 $20
    ld b, $00                                     ; $5c1d: $06 $00
    add l                                         ; $5c1f: $85
    ld [bc], a                                    ; $5c20: $02
    inc bc                                        ; $5c21: $03
    dec b                                         ; $5c22: $05
    ld b, $05                                     ; $5c23: $06 $05
    ld [bc], a                                    ; $5c25: $02
    ld b, $02                                     ; $5c26: $06 $02
    dec b                                         ; $5c28: $05
    adc a                                         ; $5c29: $8f
    ld b, $0f                                     ; $5c2a: $06 $0f
    ld a, [bc]                                    ; $5c2c: $0a
    ld d, $1b                                     ; $5c2d: $16 $1b
    rra                                           ; $5c2f: $1f
    db $10                                        ; $5c30: $10
    cpl                                           ; $5c31: $2f
    ld [hl-], a                                   ; $5c32: $32
    ld e, c                                       ; $5c33: $59
    ld h, [hl]                                    ; $5c34: $66
    ld [hl], a                                    ; $5c35: $77
    ld a, a                                       ; $5c36: $7f
    db $db                                        ; $5c37: $db

jr_0f0_5c38:
    db $ec                                        ; $5c38: $ec
    ld [bc], a                                    ; $5c39: $02
    ld a, a                                       ; $5c3a: $7f
    ld [bc], a                                    ; $5c3b: $02
    nop                                           ; $5c3c: $00
    sub b                                         ; $5c3d: $90
    ld e, $03                                     ; $5c3e: $1e $03
    rra                                           ; $5c40: $1f
    ld b, $ee                                     ; $5c41: $06 $ee
    ld sp, $7fbf                                  ; $5c43: $31 $bf $7f
    rst $18                                       ; $5c46: $df
    ld a, a                                       ; $5c47: $7f
    ld e, a                                       ; $5c48: $5f
    cp a                                          ; $5c49: $bf
    rst $38                                       ; $5c4a: $ff
    cp a                                          ; $5c4b: $bf
    xor $6e                                       ; $5c4c: $ee $6e
    ld [bc], a                                    ; $5c4e: $02
    ret z                                         ; $5c4f: $c8

    add l                                         ; $5c50: $85
    ld b, c                                       ; $5c51: $41
    pop bc                                        ; $5c52: $c1
    ld b, c                                       ; $5c53: $41
    pop bc                                        ; $5c54: $c1
    ld b, b                                       ; $5c55: $40
    ld [bc], a                                    ; $5c56: $02
    ret nz                                        ; $5c57: $c0

    add c                                         ; $5c58: $81
    ld b, b                                       ; $5c59: $40
    inc b                                         ; $5c5a: $04
    ret nz                                        ; $5c5b: $c0

    ld [bc], a                                    ; $5c5c: $02
    db $10                                        ; $5c5d: $10
    sbc d                                         ; $5c5e: $9a
    ldh a, [rNR10]                                ; $5c5f: $f0 $10
    or b                                          ; $5c61: $b0
    ld [hl], b                                    ; $5c62: $70
    ldh a, [$e0]                                  ; $5c63: $f0 $e0
    ldh a, [$e0]                                  ; $5c65: $f0 $e0
    or b                                          ; $5c67: $b0
    ret nc                                        ; $5c68: $d0

    ld b, b                                       ; $5c69: $40
    ld [hl], b                                    ; $5c6a: $70
    jr nz, jr_0f0_5c9d                            ; $5c6b: $20 $30

    ld h, b                                       ; $5c6d: $60
    ld [hl], b                                    ; $5c6e: $70
    sub b                                         ; $5c6f: $90
    ldh [rSVBK], a                                ; $5c70: $e0 $70
    add b                                         ; $5c72: $80
    ld a, d                                       ; $5c73: $7a
    and [hl]                                      ; $5c74: $a6
    rst $08                                       ; $5c75: $cf
    rst $38                                       ; $5c76: $ff
    ld d, l                                       ; $5c77: $55
    ld a, d                                       ; $5c78: $7a
    ld [bc], a                                    ; $5c79: $02
    ld a, a                                       ; $5c7a: $7f
    inc e                                         ; $5c7b: $1c

Call_0f0_5c7c:
    nop                                           ; $5c7c: $00
    inc b                                         ; $5c7d: $04
    ld bc, $0002                                  ; $5c7e: $01 $02 $00
    rst $38                                       ; $5c81: $ff
    inc de                                        ; $5c82: $13
    rlca                                          ; $5c83: $07
    rst $28                                       ; $5c84: $ef
    rra                                           ; $5c85: $1f
    pop hl                                        ; $5c86: $e1
    nop                                           ; $5c87: $00
    push hl                                       ; $5c88: $e5
    ldh a, [$e4]                                  ; $5c89: $f0 $e4
    ld hl, sp-$1e                                 ; $5c8b: $f8 $e2
    nop                                           ; $5c8d: $00
    pop hl                                        ; $5c8e: $e1
    ld [$f5f1], sp                                ; $5c8f: $08 $f1 $f5
    pop af                                        ; $5c92: $f1
    db $fd                                        ; $5c93: $fd
    pop af                                        ; $5c94: $f1
    dec b                                         ; $5c95: $05
    ld [bc], a                                    ; $5c96: $02
    ld c, $90                                     ; $5c97: $0e $90
    rla                                           ; $5c99: $17
    add hl, de                                    ; $5c9a: $19
    dec l                                         ; $5c9b: $2d
    ld [hl-], a                                   ; $5c9c: $32

jr_0f0_5c9d:
    ld d, a                                       ; $5c9d: $57
    ld a, c                                       ; $5c9e: $79
    ld c, a                                       ; $5c9f: $4f
    ld [hl], d                                    ; $5ca0: $72
    ei                                            ; $5ca1: $fb
    or a                                          ; $5ca2: $b7
    db $ec                                        ; $5ca3: $ec
    sbc a                                         ; $5ca4: $9f
    ld [hl], c                                    ; $5ca5: $71
    ld c, a                                       ; $5ca6: $4f
    ld hl, $023f                                  ; $5ca7: $21 $3f $02
    ld e, $0c                                     ; $5caa: $1e $0c
    nop                                           ; $5cac: $00
    ld [bc], a                                    ; $5cad: $02
    rrca                                          ; $5cae: $0f
    sbc [hl]                                      ; $5caf: $9e
    ld d, $19                                     ; $5cb0: $16 $19
    ld l, [hl]                                    ; $5cb2: $6e
    ld [hl], c                                    ; $5cb3: $71
    or a                                          ; $5cb4: $b7
    ret c                                         ; $5cb5: $d8

    rst $30                                       ; $5cb6: $f7
    adc h                                         ; $5cb7: $8c
    or $8f                                        ; $5cb8: $f6 $8f
    and a                                         ; $5cba: $a7
    rst $18                                       ; $5cbb: $df
    db $db                                        ; $5cbc: $db
    rst $38                                       ; $5cbd: $ff
    ld e, $ff                                     ; $5cbe: $1e $ff
    push hl                                       ; $5cc0: $e5
    rst $20                                       ; $5cc1: $e7
    ld b, $07                                     ; $5cc2: $06 $07
    inc b                                         ; $5cc4: $04
    rlca                                          ; $5cc5: $07
    ld a, [bc]                                    ; $5cc6: $0a
    rrca                                          ; $5cc7: $0f
    ld de, $1b1f                                  ; $5cc8: $11 $1f $1b
    inc e                                         ; $5ccb: $1c
    dec a                                         ; $5ccc: $3d
    ld a, $02                                     ; $5ccd: $3e $02
    ld bc, $fe9e                                  ; $5ccf: $01 $9e $fe
    rst $38                                       ; $5cd2: $ff
    ld e, $ef                                     ; $5cd3: $1e $ef
    cp $d3                                        ; $5cd5: $fe $d3
    ld e, e                                       ; $5cd7: $5b
    db $f4                                        ; $5cd8: $f4
    rst $38                                       ; $5cd9: $ff
    inc a                                         ; $5cda: $3c
    or $39                                        ; $5cdb: $f6 $39
    db $eb                                        ; $5cdd: $eb
    sbc l                                         ; $5cde: $9d
    or a                                          ; $5cdf: $b7
    adc $db                                       ; $5ce0: $ce $db
    rst $20                                       ; $5ce2: $e7
    xor a                                         ; $5ce3: $af
    db $fd                                        ; $5ce4: $fd
    ld b, b                                       ; $5ce5: $40
    rst $38                                       ; $5ce6: $ff
    ld a, [de]                                    ; $5ce7: $1a
    push hl                                       ; $5ce8: $e5
    halt                                          ; $5ce9: $76
    adc c                                         ; $5cea: $89
    rst $38                                       ; $5ceb: $ff
    nop                                           ; $5cec: $00
    rst $38                                       ; $5ced: $ff
    nop                                           ; $5cee: $00
    ld [bc], a                                    ; $5cef: $02
    add b                                         ; $5cf0: $80
    ld [bc], a                                    ; $5cf1: $02
    ret nc                                        ; $5cf2: $d0

    add l                                         ; $5cf3: $85
    ldh [$a0], a                                  ; $5cf4: $e0 $a0
    ret nc                                        ; $5cf6: $d0

    jr nc, @-$4e                                  ; $5cf7: $30 $b0

    ld [bc], a                                    ; $5cf9: $02
    ret nc                                        ; $5cfa: $d0

    add h                                         ; $5cfb: $84
    ldh a, [$f8]                                  ; $5cfc: $f0 $f8
    ld [$03d0], sp                                ; $5cfe: $08 $d0 $03
    ldh a, [$8c]                                  ; $5d01: $f0 $8c
    db $10                                        ; $5d03: $10
    ldh a, [$fc]                                  ; $5d04: $f0 $fc
    inc a                                         ; $5d06: $3c
    cp $f2                                        ; $5d07: $fe $f2
    and l                                         ; $5d09: $a5
    ei                                            ; $5d0a: $fb
    sbc e                                         ; $5d0b: $9b
    push af                                       ; $5d0c: $f5
    jp hl                                         ; $5d0d: $e9


    rst $38                                       ; $5d0e: $ff
    ld [bc], a                                    ; $5d0f: $02
    sbc [hl]                                      ; $5d10: $9e
    ld b, $00                                     ; $5d11: $06 $00
    add c                                         ; $5d13: $81
    ld b, $02                                     ; $5d14: $06 $02
    rlca                                          ; $5d16: $07
    sub l                                         ; $5d17: $95
    ld b, $05                                     ; $5d18: $06 $05
    ld b, $05                                     ; $5d1a: $06 $05
    ld b, $04                                     ; $5d1c: $06 $04
    rlca                                          ; $5d1e: $07
    dec bc                                        ; $5d1f: $0b
    ld c, $11                                     ; $5d20: $0e $11
    rra                                           ; $5d22: $1f
    scf                                           ; $5d23: $37
    jr c, jr_0f0_5d55                             ; $5d24: $38 $2f

    ld sp, $667d                                  ; $5d26: $31 $7d $66
    ld e, a                                       ; $5d29: $5f
    ld a, a                                       ; $5d2a: $7f
    ld [$02f7], a                                 ; $5d2b: $ea $f7 $02
    ccf                                           ; $5d2e: $3f
    ld [bc], a                                    ; $5d2f: $02
    nop                                           ; $5d30: $00
    sub a                                         ; $5d31: $97
    ld a, [bc]                                    ; $5d32: $0a
    rla                                           ; $5d33: $17
    dec e                                         ; $5d34: $1d
    ld b, $ef                                     ; $5d35: $06 $ef
    ld [hl], b                                    ; $5d37: $70
    cp a                                          ; $5d38: $bf
    ld a, a                                       ; $5d39: $7f
    rst $18                                       ; $5d3a: $df
    ccf                                           ; $5d3b: $3f
    cp a                                          ; $5d3c: $bf
    ld e, a                                       ; $5d3d: $5f
    rst $18                                       ; $5d3e: $df
    rst $38                                       ; $5d3f: $ff
    cp $3e                                        ; $5d40: $fe $3e
    ld l, b                                       ; $5d42: $68
    add sp, -$5f                                  ; $5d43: $e8 $a1

jr_0f0_5d45:
    ld h, c                                       ; $5d45: $61
    pop bc                                        ; $5d46: $c1
    ld b, c                                       ; $5d47: $41
    ld b, b                                       ; $5d48: $40
    inc b                                         ; $5d49: $04
    ret nz                                        ; $5d4a: $c0

    add c                                         ; $5d4b: $81
    ld b, b                                       ; $5d4c: $40
    ld [bc], a                                    ; $5d4d: $02
    add b                                         ; $5d4e: $80
    ld [bc], a                                    ; $5d4f: $02
    db $10                                        ; $5d50: $10
    sbc d                                         ; $5d51: $9a
    ret nc                                        ; $5d52: $d0

    jr nc, jr_0f0_5d45                            ; $5d53: $30 $f0

jr_0f0_5d55:
    jr nc, jr_0f0_5d7f                            ; $5d55: $30 $28

    ld hl, sp-$2c                                 ; $5d57: $f8 $d4
    db $ec                                        ; $5d59: $ec
    db $fc                                        ; $5d5a: $fc
    db $e4                                        ; $5d5b: $e4
    cp d                                          ; $5d5c: $ba
    sub $4e                                       ; $5d5d: $d6 $4e
    ld [hl], d                                    ; $5d5f: $72
    xor $f2                                       ; $5d60: $ee $f2
    sub d                                         ; $5d62: $92
    xor $7c                                       ; $5d63: $ee $7c
    add h                                         ; $5d65: $84
    ld a, h                                       ; $5d66: $7c
    and h                                         ; $5d67: $a4
    xor $de                                       ; $5d68: $ee $de
    rst $18                                       ; $5d6a: $df
    di                                            ; $5d6b: $f3
    ld [bc], a                                    ; $5d6c: $02
    ld a, a                                       ; $5d6d: $7f
    ld [bc], a                                    ; $5d6e: $02
    nop                                           ; $5d6f: $00
    rst $38                                       ; $5d70: $ff
    ld de, $ef06                                  ; $5d71: $11 $06 $ef
    rra                                           ; $5d74: $1f
    pop hl                                        ; $5d75: $e1
    nop                                           ; $5d76: $00
    ld [c], a                                     ; $5d77: $e2
    ei                                            ; $5d78: $fb
    ld [c], a                                     ; $5d79: $e2
    inc bc                                        ; $5d7a: $03
    db $e3                                        ; $5d7b: $e3
    rlca                                          ; $5d7c: $07
    ld a, [c]                                     ; $5d7d: $f2
    rst $30                                       ; $5d7e: $f7

jr_0f0_5d7f:
    ld a, [c]                                     ; $5d7f: $f2
    rst $38                                       ; $5d80: $ff
    ld a, [c]                                     ; $5d81: $f2
    dec b                                         ; $5d82: $05
    ld [bc], a                                    ; $5d83: $02
    rra                                           ; $5d84: $1f
    adc [hl]                                      ; $5d85: $8e
    ld l, a                                       ; $5d86: $6f
    ld [hl], b                                    ; $5d87: $70
    cp a                                          ; $5d88: $bf
    ret nc                                        ; $5d89: $d0

    rst $38                                       ; $5d8a: $ff
    and b                                         ; $5d8b: $a0
    cp a                                          ; $5d8c: $bf
    ret nz                                        ; $5d8d: $c0

    ld c, l                                       ; $5d8e: $4d
    ld [hl], e                                    ; $5d8f: $73
    ccf                                           ; $5d90: $3f
    ld a, $1a                                     ; $5d91: $3e $1a
    rra                                           ; $5d93: $1f
    ld [bc], a                                    ; $5d94: $02
    rlca                                          ; $5d95: $07
    adc [hl]                                      ; $5d96: $8e
    dec b                                         ; $5d97: $05
    rlca                                          ; $5d98: $07
    ld b, $07                                     ; $5d99: $06 $07
    dec c                                         ; $5d9b: $0d
    rrca                                          ; $5d9c: $0f
    ld [$140f], sp                                ; $5d9d: $08 $0f $14
    rra                                           ; $5da0: $1f
    ld [hl+], a                                   ; $5da1: $22
    ccf                                           ; $5da2: $3f
    ld h, $39                                     ; $5da3: $26 $39
    ld [bc], a                                    ; $5da5: $02
    add a                                         ; $5da6: $87
    adc b                                         ; $5da7: $88
    ld a, e                                       ; $5da8: $7b
    db $fc                                        ; $5da9: $fc
    adc [hl]                                      ; $5daa: $8e
    ld [hl], e                                    ; $5dab: $73
    adc $35                                       ; $5dac: $ce $35
    dec l                                         ; $5dae: $2d
    cp $02                                        ; $5daf: $fe $02
    rst $38                                       ; $5db1: $ff
    sub h                                         ; $5db2: $94
    xor e                                         ; $5db3: $ab
    ld e, h                                       ; $5db4: $5c
    ld a, [$ed4d]                                 ; $5db5: $fa $4d $ed
    rst $30                                       ; $5db8: $f7
    or $fd                                        ; $5db9: $f6 $fd
    or a                                          ; $5dbb: $b7
    cp $0f                                        ; $5dbc: $fe $0f
    rst $38                                       ; $5dbe: $ff
    ld a, [hl-]                                   ; $5dbf: $3a
    rst $00                                       ; $5dc0: $c7
    cp $03                                        ; $5dc1: $fe $03
    rst $38                                       ; $5dc3: $ff
    ld [bc], a                                    ; $5dc4: $02
    rst $38                                       ; $5dc5: $ff
    add e                                         ; $5dc6: $83
    ld [bc], a                                    ; $5dc7: $02
    ld a, [bc]                                    ; $5dc8: $0a
    add h                                         ; $5dc9: $84
    inc c                                         ; $5dca: $0c
    inc b                                         ; $5dcb: $04
    ld c, $06                                     ; $5dcc: $0e $06
    ld [bc], a                                    ; $5dce: $02
    ld c, $86                                     ; $5dcf: $0e $86
    ld a, [bc]                                    ; $5dd1: $0a
    ld c, $0f                                     ; $5dd2: $0e $0f
    ld bc, $0e0a                                  ; $5dd4: $01 $0a $0e
    ld [bc], a                                    ; $5dd7: $02
    inc c                                         ; $5dd8: $0c
    add c                                         ; $5dd9: $81
    ld a, [bc]                                    ; $5dda: $0a
    ld [bc], a                                    ; $5ddb: $02
    ld c, $81                                     ; $5ddc: $0e $81
    ld b, $08                                     ; $5dde: $06 $08
    ld [$0002], sp                                ; $5de0: $08 $02 $00
    add d                                         ; $5de3: $82
    ldh [$a0], a                                  ; $5de4: $e0 $a0
    ld [bc], a                                    ; $5de6: $02
    rlca                                          ; $5de7: $07
    ld [bc], a                                    ; $5de8: $02
    rrca                                          ; $5de9: $0f
    sbc b                                         ; $5dea: $98
    inc c                                         ; $5deb: $0c
    rrca                                          ; $5dec: $0f
    dec e                                         ; $5ded: $1d

jr_0f0_5dee:
    ld e, $0f                                     ; $5dee: $1e $0f
    ld c, $04                                     ; $5df0: $0e $04
    rlca                                          ; $5df2: $07
    dec b                                         ; $5df3: $05
    ld b, $19                                     ; $5df4: $06 $19
    rra                                           ; $5df6: $1f
    cpl                                           ; $5df7: $2f
    ld sp, $625f                                  ; $5df8: $31 $5f $62
    rst $20                                       ; $5dfb: $e7
    ret c                                         ; $5dfc: $d8

    xor [hl]                                      ; $5dfd: $ae
    push af                                       ; $5dfe: $f5
    ei                                            ; $5dff: $fb
    rst $38                                       ; $5e00: $ff
    ld l, l                                       ; $5e01: $6d
    halt                                          ; $5e02: $76
    ld [bc], a                                    ; $5e03: $02
    ccf                                           ; $5e04: $3f
    ld [bc], a                                    ; $5e05: $02
    nop                                           ; $5e06: $00
    sub l                                         ; $5e07: $95
    ld a, [hl]                                    ; $5e08: $7e
    add c                                         ; $5e09: $81
    db $dd                                        ; $5e0a: $dd
    db $e3                                        ; $5e0b: $e3
    rst $38                                       ; $5e0c: $ff
    jr c, jr_0f0_5dee                             ; $5e0d: $38 $df

    ccf                                           ; $5e0f: $3f
    rst $28                                       ; $5e10: $ef
    rra                                           ; $5e11: $1f
    rst $18                                       ; $5e12: $df
    ccf                                           ; $5e13: $3f
    ld e, [hl]                                    ; $5e14: $5e
    cp $f1                                        ; $5e15: $fe $f1
    ld sp, $c342                                  ; $5e17: $31 $42 $c3
    push bc                                       ; $5e1a: $c5
    add $85                                       ; $5e1b: $c6 $85
    ld [bc], a                                    ; $5e1d: $02
    add [hl]                                      ; $5e1e: $86
    add c                                         ; $5e1f: $81
    add a                                         ; $5e20: $87
    ld [bc], a                                    ; $5e21: $02
    inc bc                                        ; $5e22: $03
    ld [bc], a                                    ; $5e23: $02
    add c                                         ; $5e24: $81
    ld b, $00                                     ; $5e25: $06 $00
    sbc b                                         ; $5e27: $98
    jr nc, jr_0f0_5e3a                            ; $5e28: $30 $10

    jr jr_0f0_5e64                                ; $5e2a: $18 $38

    inc [hl]                                      ; $5e2c: $34
    inc a                                         ; $5e2d: $3c
    ld a, [hl+]                                   ; $5e2e: $2a
    ld [hl], $1e                                  ; $5e2f: $36 $1e
    ld [hl-], a                                   ; $5e31: $32
    daa                                           ; $5e32: $27
    add hl, sp                                    ; $5e33: $39
    ld l, $3a                                     ; $5e34: $2e $3a
    ld [hl], $0e                                  ; $5e36: $36 $0e
    inc a                                         ; $5e38: $3c
    inc b                                         ; $5e39: $04

jr_0f0_5e3a:
    inc c                                         ; $5e3a: $0c
    inc [hl]                                      ; $5e3b: $34
    ld a, $26                                     ; $5e3c: $3e $26
    rra                                           ; $5e3e: $1f
    add hl, hl                                    ; $5e3f: $29
    ld [bc], a                                    ; $5e40: $02
    ld a, $04                                     ; $5e41: $3e $04
    nop                                           ; $5e43: $00
    rst $38                                       ; $5e44: $ff
    dec d                                         ; $5e45: $15
    ld [$1fef], sp                                ; $5e46: $08 $ef $1f
    pop hl                                        ; $5e49: $e1
    nop                                           ; $5e4a: $00
    and $fc                                       ; $5e4b: $e6 $fc
    ld [c], a                                     ; $5e4d: $e2
    inc b                                         ; $5e4e: $04
    db $e3                                        ; $5e4f: $e3
    inc c                                         ; $5e50: $0c
    rst $20                                       ; $5e51: $e7
    inc d                                         ; $5e52: $14
    add sp, $18                                   ; $5e53: $e8 $18
    ld a, [c]                                     ; $5e55: $f2
    rst $30                                       ; $5e56: $f7
    ld a, [c]                                     ; $5e57: $f2
    rst $38                                       ; $5e58: $ff
    ld a, [c]                                     ; $5e59: $f2
    inc b                                         ; $5e5a: $04
    ld [bc], a                                    ; $5e5b: $02
    inc bc                                        ; $5e5c: $03
    sbc [hl]                                      ; $5e5d: $9e
    ld c, $0f                                     ; $5e5e: $0e $0f
    dec a                                         ; $5e60: $3d
    ld [hl], $4a                                  ; $5e61: $36 $4a
    ld a, l                                       ; $5e63: $7d

jr_0f0_5e64:
    cp e                                          ; $5e64: $bb
    call z, $9cf7                                 ; $5e65: $cc $f7 $9c
    sub a                                         ; $5e68: $97
    db $fc                                        ; $5e69: $fc
    ld e, d                                       ; $5e6a: $5a
    ld a, l                                       ; $5e6b: $7d
    add hl, sp                                    ; $5e6c: $39
    ccf                                           ; $5e6d: $3f
    jr c, jr_0f0_5eaf                             ; $5e6e: $38 $3f

    ld [de], a                                    ; $5e70: $12
    rra                                           ; $5e71: $1f
    ld hl, $633f                                  ; $5e72: $21 $3f $63
    ld a, h                                       ; $5e75: $7c
    ld a, l                                       ; $5e76: $7d
    ld a, [hl]                                    ; $5e77: $7e
    db $e3                                        ; $5e78: $e3
    rst $38                                       ; $5e79: $ff
    push hl                                       ; $5e7a: $e5
    db $db                                        ; $5e7b: $db
    ld [bc], a                                    ; $5e7c: $02
    ld bc, $0302                                  ; $5e7d: $01 $02 $03
    sbc h                                         ; $5e80: $9c
    dec b                                         ; $5e81: $05
    rlca                                          ; $5e82: $07
    db $fd                                        ; $5e83: $fd
    cp $3f                                        ; $5e84: $fe $3f
    rst $38                                       ; $5e86: $ff
    rst $18                                       ; $5e87: $df
    ld h, e                                       ; $5e88: $63
    cp c                                          ; $5e89: $b9
    add $73                                       ; $5e8a: $c6 $73
    adc h                                         ; $5e8c: $8c
    ld [hl], a                                    ; $5e8d: $77
    adc h                                         ; $5e8e: $8c
    rst $18                                       ; $5e8f: $df
    ccf                                           ; $5e90: $3f
    cpl                                           ; $5e91: $2f
    rst $38                                       ; $5e92: $ff
    ld d, a                                       ; $5e93: $57
    db $fd                                        ; $5e94: $fd
    ld [hl+], a                                   ; $5e95: $22
    cp $1a                                        ; $5e96: $fe $1a
    and $bc                                       ; $5e98: $e6 $bc
    ld b, h                                       ; $5e9a: $44
    call c, $02e4                                 ; $5e9b: $dc $e4 $02
    and b                                         ; $5e9e: $a0
    add h                                         ; $5e9f: $84
    ret nz                                        ; $5ea0: $c0

    ld b, b                                       ; $5ea1: $40
    and b                                         ; $5ea2: $a0
    ld h, b                                       ; $5ea3: $60
    ld [bc], a                                    ; $5ea4: $02
    ld hl, sp-$76                                 ; $5ea5: $f8 $8a
    ld b, a                                       ; $5ea7: $47
    cp a                                          ; $5ea8: $bf
    xor $1d                                       ; $5ea9: $ee $1d
    rst $38                                       ; $5eab: $ff
    ld [bc], a                                    ; $5eac: $02
    ei                                            ; $5ead: $fb
    inc c                                         ; $5eae: $0c

jr_0f0_5eaf:
    pop bc                                        ; $5eaf: $c1
    ld a, $02                                     ; $5eb0: $3e $02
    rst $38                                       ; $5eb2: $ff
    inc c                                         ; $5eb3: $0c
    nop                                           ; $5eb4: $00
    ld [bc], a                                    ; $5eb5: $02
    ldh a, [$87]                                  ; $5eb6: $f0 $87
    rst $08                                       ; $5eb8: $cf
    ccf                                           ; $5eb9: $3f
    ld [$bb15], a                                 ; $5eba: $ea $15 $bb
    ld b, h                                       ; $5ebd: $44
    di                                            ; $5ebe: $f3
    ld [bc], a                                    ; $5ebf: $02
    rrca                                          ; $5ec0: $0f
    add e                                         ; $5ec1: $83
    rst $38                                       ; $5ec2: $ff
    di                                            ; $5ec3: $f3
    ld a, [c]                                     ; $5ec4: $f2
    ld [bc], a                                    ; $5ec5: $02
    ld bc, $0010                                  ; $5ec6: $01 $10 $00
    ld [bc], a                                    ; $5ec9: $02
    inc c                                         ; $5eca: $0c
    adc b                                         ; $5ecb: $88
    ld c, $02                                     ; $5ecc: $0e $02
    dec bc                                        ; $5ece: $0b
    dec c                                         ; $5ecf: $0d
    dec bc                                        ; $5ed0: $0b
    dec b                                         ; $5ed1: $05
    ld b, $0a                                     ; $5ed2: $06 $0a
    ld [bc], a                                    ; $5ed4: $02
    inc c                                         ; $5ed5: $0c
    jr jr_0f0_5ed8                                ; $5ed6: $18 $00

jr_0f0_5ed8:
    ld [bc], a                                    ; $5ed8: $02
    ld [$0002], sp                                ; $5ed9: $08 $02 $00
    add d                                         ; $5edc: $82
    ld c, $0f                                     ; $5edd: $0e $0f
    ld [bc], a                                    ; $5edf: $02
    add hl, bc                                    ; $5ee0: $09
    ld [bc], a                                    ; $5ee1: $02
    inc bc                                        ; $5ee2: $03
    adc [hl]                                      ; $5ee3: $8e
    ld e, $1f                                     ; $5ee4: $1e $1f
    ld l, b                                       ; $5ee6: $68
    ld a, a                                       ; $5ee7: $7f
    sbc a                                         ; $5ee8: $9f
    pop hl                                        ; $5ee9: $e1
    xor [hl]                                      ; $5eea: $ae
    pop af                                        ; $5eeb: $f1
    ld e, a                                       ; $5eec: $5f
    ld h, h                                       ; $5eed: $64
    ld e, e                                       ; $5eee: $5b
    ld a, a                                       ; $5eef: $7f
    ld l, l                                       ; $5ef0: $6d
    halt                                          ; $5ef1: $76
    ld [bc], a                                    ; $5ef2: $02
    ccf                                           ; $5ef3: $3f

Call_0f0_5ef4:
    ld [bc], a                                    ; $5ef4: $02
    nop                                           ; $5ef5: $00
    add [hl]                                      ; $5ef6: $86
    rlca                                          ; $5ef7: $07
    nop                                           ; $5ef8: $00
    rlca                                          ; $5ef9: $07
    nop                                           ; $5efa: $00
    ld bc, $0206                                  ; $5efb: $01 $06 $02
    rlca                                          ; $5efe: $07
    sub d                                         ; $5eff: $92
    ld [hl], a                                    ; $5f00: $77
    adc a                                         ; $5f01: $8f
    ld [hl], a                                    ; $5f02: $77
    adc a                                         ; $5f03: $8f
    rst $38                                       ; $5f04: $ff
    rrca                                          ; $5f05: $0f
    ld l, c                                       ; $5f06: $69
    sbc c                                         ; $5f07: $99
    or [hl]                                       ; $5f08: $b6
    rst $30                                       ; $5f09: $f7
    jp hl                                         ; $5f0a: $e9


    ld l, $cb                                     ; $5f0b: $2e $cb
    call z, $8785                                 ; $5f0d: $cc $85 $87
    ld b, $07                                     ; $5f10: $06 $07
    ld [bc], a                                    ; $5f12: $02
    add e                                         ; $5f13: $83
    ld [bc], a                                    ; $5f14: $02
    add b                                         ; $5f15: $80
    ld [bc], a                                    ; $5f16: $02
    nop                                           ; $5f17: $00
    add [hl]                                      ; $5f18: $86
    inc e                                         ; $5f19: $1c
    inc b                                         ; $5f1a: $04
    inc e                                         ; $5f1b: $1c
    inc b                                         ; $5f1c: $04
    inc e                                         ; $5f1d: $1c
    inc c                                         ; $5f1e: $0c
    ld [bc], a                                    ; $5f1f: $02
    inc e                                         ; $5f20: $1c
    sub d                                         ; $5f21: $92
    ld e, $1a                                     ; $5f22: $1e $1a
    ld d, $1a                                     ; $5f24: $16 $1a
    inc bc                                        ; $5f26: $03
    dec e                                         ; $5f27: $1d
    rla                                           ; $5f28: $17
    dec e                                         ; $5f29: $1d
    ld e, $06                                     ; $5f2a: $1e $06
    ld a, [de]                                    ; $5f2c: $1a
    ld b, $0c                                     ; $5f2d: $06 $0c
    inc d                                         ; $5f2f: $14
    ld d, $0e                                     ; $5f30: $16 $0e
    dec de                                        ; $5f32: $1b
    dec c                                         ; $5f33: $0d
    ld [bc], a                                    ; $5f34: $02
    rra                                           ; $5f35: $1f
    inc b                                         ; $5f36: $04
    nop                                           ; $5f37: $00
    rst $38                                       ; $5f38: $ff
    inc de                                        ; $5f39: $13
    rlca                                          ; $5f3a: $07
    rst $28                                       ; $5f3b: $ef
    rra                                           ; $5f3c: $1f
    pop hl                                        ; $5f3d: $e1
    nop                                           ; $5f3e: $00
    push hl                                       ; $5f3f: $e5
    db $fd                                        ; $5f40: $fd
    ld [c], a                                     ; $5f41: $e2
    dec b                                         ; $5f42: $05
    db $e3                                        ; $5f43: $e3
    dec c                                         ; $5f44: $0d
    ld [$f215], a                                 ; $5f45: $ea $15 $f2
    rst $30                                       ; $5f48: $f7
    ld a, [c]                                     ; $5f49: $f2
    rst $38                                       ; $5f4a: $ff
    ld a, [c]                                     ; $5f4b: $f2
    dec b                                         ; $5f4c: $05
    ld [bc], a                                    ; $5f4d: $02
    inc bc                                        ; $5f4e: $03
    sbc [hl]                                      ; $5f4f: $9e
    inc c                                         ; $5f50: $0c
    rrca                                          ; $5f51: $0f
    dec de                                        ; $5f52: $1b
    inc e                                         ; $5f53: $1c
    dec sp                                        ; $5f54: $3b
    dec l                                         ; $5f55: $2d
    ld d, h                                       ; $5f56: $54
    ld a, e                                       ; $5f57: $7b
    or [hl]                                       ; $5f58: $b6
    reti                                          ; $5f59: $d9


    rst $28                                       ; $5f5a: $ef
    cp b                                          ; $5f5b: $b8
    xor a                                         ; $5f5c: $af
    ld hl, sp-$12                                 ; $5f5d: $f8 $ee
    ld sp, hl                                     ; $5f5f: $f9
    ld [hl], d                                    ; $5f60: $72
    ld a, a                                       ; $5f61: $7f
    ld [hl], b                                    ; $5f62: $70
    ld a, a                                       ; $5f63: $7f
    ld h, b                                       ; $5f64: $60
    ld a, a                                       ; $5f65: $7f
    ld b, d                                       ; $5f66: $42
    ld a, a                                       ; $5f67: $7f
    jp $fbfd                                      ; $5f68: $c3 $fd $fb


    db $fc                                        ; $5f6b: $fc
    sbc a                                         ; $5f6c: $9f
    and $02                                       ; $5f6d: $e6 $02
    ld [bc], a                                    ; $5f6f: $02
    ld [bc], a                                    ; $5f70: $02
    rlca                                          ; $5f71: $07

jr_0f0_5f72:
    sbc h                                         ; $5f72: $9c
    dec bc                                        ; $5f73: $0b
    ld c, $f3                                     ; $5f74: $0e $f3
    db $fc                                        ; $5f76: $fc
    ld a, d                                       ; $5f77: $7a
    rst $38                                       ; $5f78: $ff
    rst $08                                       ; $5f79: $cf
    ei                                            ; $5f7a: $fb
    ld a, a                                       ; $5f7b: $7f
    add a                                         ; $5f7c: $87
    db $e3                                        ; $5f7d: $e3
    inc e                                         ; $5f7e: $1c
    rst $28                                       ; $5f7f: $ef
    db $10                                        ; $5f80: $10
    or a                                          ; $5f81: $b7
    ld a, b                                       ; $5f82: $78
    cp e                                          ; $5f83: $bb
    db $fc                                        ; $5f84: $fc
    ld e, [hl]                                    ; $5f85: $5e
    rst $38                                       ; $5f86: $ff
    xor a                                         ; $5f87: $af
    rst $38                                       ; $5f88: $ff
    inc d                                         ; $5f89: $14
    db $ec                                        ; $5f8a: $ec
    ld [hl], h                                    ; $5f8b: $74
    adc h                                         ; $5f8c: $8c
    sbc h                                         ; $5f8d: $9c
    ld h, h                                       ; $5f8e: $64
    ld [bc], a                                    ; $5f8f: $02
    ld b, b                                       ; $5f90: $40
    ld [bc], a                                    ; $5f91: $02
    add b                                         ; $5f92: $80
    add c                                         ; $5f93: $81
    ld b, b                                       ; $5f94: $40
    ld [bc], a                                    ; $5f95: $02
    ret nz                                        ; $5f96: $c0

    ld [bc], a                                    ; $5f97: $02
    ld b, b                                       ; $5f98: $40
    add c                                         ; $5f99: $81
    ret nz                                        ; $5f9a: $c0

    ld [bc], a                                    ; $5f9b: $02
    ldh [$8c], a                                  ; $5f9c: $e0 $8c
    ccf                                           ; $5f9e: $3f
    rst $38                                       ; $5f9f: $ff
    sbc h                                         ; $5fa0: $9c
    ld [hl], e                                    ; $5fa1: $73
    rst $38                                       ; $5fa2: $ff
    jr z, jr_0f0_5f72                             ; $5fa3: $28 $cd

    ld [hl-], a                                   ; $5fa5: $32
    daa                                           ; $5fa6: $27
    ld hl, sp-$21                                 ; $5fa7: $f8 $df
    sbc $02                                       ; $5fa9: $de $02
    ld bc, $0006                                  ; $5fab: $01 $06 $00
    ld [bc], a                                    ; $5fae: $02
    ret nz                                        ; $5faf: $c0

    adc h                                         ; $5fb0: $8c
    inc a                                         ; $5fb1: $3c
    db $fc                                        ; $5fb2: $fc
    ld c, [hl]                                    ; $5fb3: $4e
    or d                                          ; $5fb4: $b2
    srl l                                         ; $5fb5: $cb $3d
    cp e                                          ; $5fb7: $bb
    ld [hl], l                                    ; $5fb8: $75
    or $fa                                        ; $5fb9: $f6 $fa
    inc a                                         ; $5fbb: $3c
    inc l                                         ; $5fbc: $2c
    ld [bc], a                                    ; $5fbd: $02
    db $10                                        ; $5fbe: $10
    inc d                                         ; $5fbf: $14
    nop                                           ; $5fc0: $00
    ld [bc], a                                    ; $5fc1: $02
    inc b                                         ; $5fc2: $04
    add c                                         ; $5fc3: $81
    ld b, $05                                     ; $5fc4: $06 $05
    rlca                                          ; $5fc6: $07
    sub b                                         ; $5fc7: $90
    inc b                                         ; $5fc8: $04
    rlca                                          ; $5fc9: $07
    add hl, de                                    ; $5fca: $19
    ld e, $2f                                     ; $5fcb: $1e $2f
    ld sp, $635f                                  ; $5fcd: $31 $5f $63
    rst $20                                       ; $5fd0: $e7
    ret c                                         ; $5fd1: $d8

    xor [hl]                                      ; $5fd2: $ae
    push af                                       ; $5fd3: $f5
    ei                                            ; $5fd4: $fb
    rst $38                                       ; $5fd5: $ff
    ld l, l                                       ; $5fd6: $6d
    halt                                          ; $5fd7: $76
    ld [bc], a                                    ; $5fd8: $02
    ccf                                           ; $5fd9: $3f
    ld [bc], a                                    ; $5fda: $02
    nop                                           ; $5fdb: $00
    inc bc                                        ; $5fdc: $03
    inc bc                                        ; $5fdd: $03
    sub d                                         ; $5fde: $92
    nop                                           ; $5fdf: $00
    inc bc                                        ; $5fe0: $03
    nop                                           ; $5fe1: $00
    rst $28                                       ; $5fe2: $ef
    rra                                           ; $5fe3: $1f
    rst $30                                       ; $5fe4: $f7
    rrca                                          ; $5fe5: $0f
    rst $28                                       ; $5fe6: $ef
    rra                                           ; $5fe7: $1f
    ld a, [hl]                                    ; $5fe8: $7e
    sbc [hl]                                      ; $5fe9: $9e
    ld d, c                                       ; $5fea: $51
    pop af                                        ; $5feb: $f1
    ld [c], a                                     ; $5fec: $e2
    inc hl                                        ; $5fed: $23
    ld b, l                                       ; $5fee: $45
    add $85                                       ; $5fef: $c6 $85
    ld [bc], a                                    ; $5ff1: $02
    add [hl]                                      ; $5ff2: $86
    add c                                         ; $5ff3: $81
    add a                                         ; $5ff4: $87
    ld [bc], a                                    ; $5ff5: $02
    inc bc                                        ; $5ff6: $03
    ld [bc], a                                    ; $5ff7: $02
    add c                                         ; $5ff8: $81
    inc b                                         ; $5ff9: $04
    nop                                           ; $5ffa: $00
    sbc d                                         ; $5ffb: $9a
    inc a                                         ; $5ffc: $3c
    inc b                                         ; $5ffd: $04
    inc [hl]                                      ; $5ffe: $34
    inc c                                         ; $5fff: $0c
    jr jr_0f0_603a                                ; $6000: $18 $38

    inc [hl]                                      ; $6002: $34
    inc a                                         ; $6003: $3c
    ld a, [hl+]                                   ; $6004: $2a
    ld [hl], $1e                                  ; $6005: $36 $1e
    ld [hl-], a                                   ; $6007: $32
    daa                                           ; $6008: $27
    add hl, sp                                    ; $6009: $39
    ld l, $3a                                     ; $600a: $2e $3a
    ld [hl], $0e                                  ; $600c: $36 $0e
    inc a                                         ; $600e: $3c
    inc b                                         ; $600f: $04
    inc c                                         ; $6010: $0c
    inc [hl]                                      ; $6011: $34
    ld a, $26                                     ; $6012: $3e $26
    rra                                           ; $6014: $1f
    add hl, hl                                    ; $6015: $29
    ld [bc], a                                    ; $6016: $02
    ld a, $04                                     ; $6017: $3e $04
    nop                                           ; $6019: $00
    rst $38                                       ; $601a: $ff
    inc de                                        ; $601b: $13
    rlca                                          ; $601c: $07
    rst $28                                       ; $601d: $ef
    rra                                           ; $601e: $1f
    pop hl                                        ; $601f: $e1
    nop                                           ; $6020: $00
    db $e3                                        ; $6021: $e3
    db $fc                                        ; $6022: $fc
    pop hl                                        ; $6023: $e1
    inc b                                         ; $6024: $04
    rst $20                                       ; $6025: $e7
    rlca                                          ; $6026: $07
    pop af                                        ; $6027: $f1
    push af                                       ; $6028: $f5
    pop af                                        ; $6029: $f1
    db $fd                                        ; $602a: $fd
    pop af                                        ; $602b: $f1
    dec b                                         ; $602c: $05
    pop af                                        ; $602d: $f1
    ld b, $02                                     ; $602e: $06 $02
    inc bc                                        ; $6030: $03
    add d                                         ; $6031: $82
    rra                                           ; $6032: $1f
    inc e                                         ; $6033: $1c
    ld [bc], a                                    ; $6034: $02
    rra                                           ; $6035: $1f
    sbc d                                         ; $6036: $9a
    dec h                                         ; $6037: $25
    ccf                                           ; $6038: $3f
    ld e, e                                       ; $6039: $5b

jr_0f0_603a:
    ld h, a                                       ; $603a: $67
    ld [hl], a                                    ; $603b: $77
    ld c, b                                       ; $603c: $48
    halt                                          ; $603d: $76
    ld c, c                                       ; $603e: $49
    ld e, a                                       ; $603f: $5f
    ld h, c                                       ; $6040: $61
    inc l                                         ; $6041: $2c
    inc sp                                        ; $6042: $33
    inc hl                                        ; $6043: $23
    ld a, $3d                                     ; $6044: $3e $3d
    ld [hl-], a                                   ; $6046: $32
    ld a, $39                                     ; $6047: $3e $39
    ld h, [hl]                                    ; $6049: $66
    ld a, a                                       ; $604a: $7f
    and l                                         ; $604b: $a5
    rst $38                                       ; $604c: $ff
    sub [hl]                                      ; $604d: $96
    ei                                            ; $604e: $fb
    sbc e                                         ; $604f: $9b
    db $ed                                        ; $6050: $ed
    ld [bc], a                                    ; $6051: $02
    ld [$1d02], sp                                ; $6052: $08 $02 $1d
    sbc h                                         ; $6055: $9c
    xor $fa                                       ; $6056: $ee $fa
    db $ed                                        ; $6058: $ed
    di                                            ; $6059: $f3
    ld h, e                                       ; $605a: $63
    cp l                                          ; $605b: $bd
    sbc l                                         ; $605c: $9d
    ld l, a                                       ; $605d: $6f
    rst $38                                       ; $605e: $ff
    ret nz                                        ; $605f: $c0

    ld a, l                                       ; $6060: $7d
    add e                                         ; $6061: $83
    cp e                                          ; $6062: $bb
    rst $08                                       ; $6063: $cf
    rst $28                                       ; $6064: $ef
    pop af                                        ; $6065: $f1
    ld a, [hl]                                    ; $6066: $7e
    rst $38                                       ; $6067: $ff
    push af                                       ; $6068: $f5
    ld e, [hl]                                    ; $6069: $5e
    rst $08                                       ; $606a: $cf
    ld a, a                                       ; $606b: $7f
    ei                                            ; $606c: $fb
    db $fd                                        ; $606d: $fd
    ld a, e                                       ; $606e: $7b
    adc h                                         ; $606f: $8c
    ld a, [hl]                                    ; $6070: $7e
    add a                                         ; $6071: $87
    ld [bc], a                                    ; $6072: $02
    inc b                                         ; $6073: $04
    add c                                         ; $6074: $81
    ld [bc], a                                    ; $6075: $02
    ld [bc], a                                    ; $6076: $02
    ld b, $02                                     ; $6077: $06 $02
    ld [bc], a                                    ; $6079: $02
    inc bc                                        ; $607a: $03
    ld b, $02                                     ; $607b: $06 $02
    inc b                                         ; $607d: $04
    inc b                                         ; $607e: $04
    nop                                           ; $607f: $00
    inc b                                         ; $6080: $04
    inc b                                         ; $6081: $04
    adc h                                         ; $6082: $8c
    ld e, h                                       ; $6083: $5c
    cp h                                          ; $6084: $bc
    xor $1e                                       ; $6085: $ee $1e
    or $0e                                        ; $6087: $f6 $0e
    xor [hl]                                      ; $6089: $ae
    ld a, [c]                                     ; $608a: $f2
    ld e, a                                       ; $608b: $5f
    pop hl                                        ; $608c: $e1
    push af                                       ; $608d: $f5
    ei                                            ; $608e: $fb
    ld [bc], a                                    ; $608f: $02
    nop                                           ; $6090: $00
    ld [bc], a                                    ; $6091: $02
    ld [bc], a                                    ; $6092: $02
    ld [bc], a                                    ; $6093: $02
    rlca                                          ; $6094: $07
    add c                                         ; $6095: $81
    ld b, $02                                     ; $6096: $06 $02
    rlca                                          ; $6098: $07
    sub l                                         ; $6099: $95
    ld b, $05                                     ; $609a: $06 $05
    ld b, $05                                     ; $609c: $06 $05
    ld b, $04                                     ; $609e: $06 $04
    rlca                                          ; $60a0: $07
    dec bc                                        ; $60a1: $0b
    ld c, $11                                     ; $60a2: $0e $11
    rra                                           ; $60a4: $1f
    scf                                           ; $60a5: $37
    jr c, jr_0f0_60d7                             ; $60a6: $38 $2f

    ld sp, $667d                                  ; $60a8: $31 $7d $66
    ld e, a                                       ; $60ab: $5f
    ld a, a                                       ; $60ac: $7f
    ld [$02f7], a                                 ; $60ad: $ea $f7 $02
    ccf                                           ; $60b0: $3f
    sbc c                                         ; $60b1: $99
    nop                                           ; $60b2: $00
    ld bc, $0100                                  ; $60b3: $01 $00 $01
    cp a                                          ; $60b6: $bf
    pop bc                                        ; $60b7: $c1
    rst $28                                       ; $60b8: $ef
    ld [hl], b                                    ; $60b9: $70
    cp a                                          ; $60ba: $bf
    ld a, a                                       ; $60bb: $7f
    rst $18                                       ; $60bc: $df
    ccf                                           ; $60bd: $3f
    cp a                                          ; $60be: $bf
    ld e, a                                       ; $60bf: $5f
    rst $18                                       ; $60c0: $df
    rst $38                                       ; $60c1: $ff
    rst $28                                       ; $60c2: $ef
    cpl                                           ; $60c3: $2f
    ld h, [hl]                                    ; $60c4: $66
    and $a1                                       ; $60c5: $e6 $a1
    ld h, c                                       ; $60c7: $61
    pop bc                                        ; $60c8: $c1
    ld b, c                                       ; $60c9: $41
    ld b, b                                       ; $60ca: $40
    inc b                                         ; $60cb: $04
    ret nz                                        ; $60cc: $c0

    add c                                         ; $60cd: $81
    ld b, b                                       ; $60ce: $40
    ld [bc], a                                    ; $60cf: $02
    add b                                         ; $60d0: $80
    add e                                         ; $60d1: $83
    ret nz                                        ; $60d2: $c0

    nop                                           ; $60d3: $00
    ld b, b                                       ; $60d4: $40
    ld [bc], a                                    ; $60d5: $02
    add b                                         ; $60d6: $80

jr_0f0_60d7:
    add d                                         ; $60d7: $82
    ret nz                                        ; $60d8: $c0

    ld b, b                                       ; $60d9: $40
    dec b                                         ; $60da: $05
    ret nz                                        ; $60db: $c0

    sub b                                         ; $60dc: $90
    cp d                                          ; $60dd: $ba
    db $dd                                        ; $60de: $dd
    rst $08                                       ; $60df: $cf
    rst $30                                       ; $60e0: $f7
    xor $f2                                       ; $60e1: $ee $f2
    sub d                                         ; $60e3: $92
    xor $7c                                       ; $60e4: $ee $7c
    add h                                         ; $60e6: $84
    ld a, h                                       ; $60e7: $7c
    and h                                         ; $60e8: $a4
    xor $de                                       ; $60e9: $ee $de
    rst $18                                       ; $60eb: $df
    di                                            ; $60ec: $f3
    ld [bc], a                                    ; $60ed: $02
    ld a, a                                       ; $60ee: $7f
    ld c, $00                                     ; $60ef: $0e $00
    ld [bc], a                                    ; $60f1: $02
    ld bc, $0012                                  ; $60f2: $01 $12 $00
    rst $38                                       ; $60f5: $ff
    dec d                                         ; $60f6: $15
    ld [$1fef], sp                                ; $60f7: $08 $ef $1f
    pop hl                                        ; $60fa: $e1
    nop                                           ; $60fb: $00
    db $e4                                        ; $60fc: $e4
    ld a, [c]                                     ; $60fd: $f2
    db $e3                                        ; $60fe: $e3
    ld a, [$02e2]                                 ; $60ff: $fa $e2 $02
    and $08                                       ; $6102: $e6 $08
    ld a, [c]                                     ; $6104: $f2
    db $f4                                        ; $6105: $f4
    ld a, [c]                                     ; $6106: $f2
    db $fc                                        ; $6107: $fc
    ld a, [c]                                     ; $6108: $f2
    inc b                                         ; $6109: $04
    ld a, [c]                                     ; $610a: $f2
    rlca                                          ; $610b: $07
    ld [bc], a                                    ; $610c: $02
    ld bc, $0302                                  ; $610d: $01 $02 $03
    sbc h                                         ; $6110: $9c
    rrca                                          ; $6111: $0f

jr_0f0_6112:
    inc c                                         ; $6112: $0c
    ld d, $19                                     ; $6113: $16 $19
    dec d                                         ; $6115: $15
    ld a, [de]                                    ; $6116: $1a
    rra                                           ; $6117: $1f
    db $10                                        ; $6118: $10
    scf                                           ; $6119: $37
    jr c, jr_0f0_6151                             ; $611a: $38 $35

    ld l, $62                                     ; $611c: $2e $62
    ld e, a                                       ; $611e: $5f
    ld a, l                                       ; $611f: $7d
    ld d, e                                       ; $6120: $53
    adc a                                         ; $6121: $8f
    pop af                                        ; $6122: $f1
    sub [hl]                                      ; $6123: $96
    ld a, [$deae]                                 ; $6124: $fa $ae $de
    sbc l                                         ; $6127: $9d
    db $e3                                        ; $6128: $e3
    ld e, [hl]                                    ; $6129: $5e
    ld h, c                                       ; $612a: $61
    ld c, l                                       ; $612b: $4d
    ld [hl], e                                    ; $612c: $73
    ld [bc], a                                    ; $612d: $02
    ccf                                           ; $612e: $3f
    sbc [hl]                                      ; $612f: $9e
    db $dd                                        ; $6130: $dd
    db $e3                                        ; $6131: $e3
    ld [hl-], a                                   ; $6132: $32
    rst $08                                       ; $6133: $cf
    ld e, a                                       ; $6134: $5f
    or d                                          ; $6135: $b2
    ld a, a                                       ; $6136: $7f
    pop hl                                        ; $6137: $e1
    ld l, l                                       ; $6138: $6d
    di                                            ; $6139: $f3
    sub e                                         ; $613a: $93
    ld a, a                                       ; $613b: $7f
    or $0f                                        ; $613c: $f6 $0f
    ld a, a                                       ; $613e: $7f
    ldh [$e5], a                                  ; $613f: $e0 $e5
    ei                                            ; $6141: $fb
    sbc $ff                                       ; $6142: $de $ff
    and e                                         ; $6144: $a3
    db $fc                                        ; $6145: $fc
    rst $08                                       ; $6146: $cf
    ldh a, [$af]                                  ; $6147: $f0 $af
    ldh a, [$9f]                                  ; $6149: $f0 $9f
    ldh [$ee], a                                  ; $614b: $e0 $ee
    pop af                                        ; $614d: $f1
    ld [bc], a                                    ; $614e: $02
    db $10                                        ; $614f: $10
    ld [bc], a                                    ; $6150: $02

jr_0f0_6151:
    cp $85                                        ; $6151: $fe $85
    call z, $dbf4                                 ; $6153: $cc $f4 $db
    ld h, a                                       ; $6156: $67
    sbc $02                                       ; $6157: $de $02
    ld h, e                                       ; $6159: $63
    adc c                                         ; $615a: $89
    sbc a                                         ; $615b: $9f
    rst $38                                       ; $615c: $ff
    ld bc, $1eeb                                  ; $615d: $01 $eb $1e
    ld a, a                                       ; $6160: $7f
    sbc d                                         ; $6161: $9a
    ei                                            ; $6162: $fb
    rst $00                                       ; $6163: $c7
    ld [bc], a                                    ; $6164: $02
    rst $38                                       ; $6165: $ff
    adc d                                         ; $6166: $8a
    db $fd                                        ; $6167: $fd
    dec a                                         ; $6168: $3d
    add hl, hl                                    ; $6169: $29
    reti                                          ; $616a: $d9


    ld a, b                                       ; $616b: $78
    adc b                                         ; $616c: $88
    ld hl, sp+$08                                 ; $616d: $f8 $08
    ld hl, sp+$08                                 ; $616f: $f8 $08
    ld [bc], a                                    ; $6171: $02
    jr nc, jr_0f0_6112                            ; $6172: $30 $9e

    jr z, jr_0f0_618e                             ; $6174: $28 $18

    jr z, jr_0f0_6190                             ; $6176: $28 $18

    jr c, @+$0a                                   ; $6178: $38 $08

    inc c                                         ; $617a: $0c
    inc [hl]                                      ; $617b: $34
    inc a                                         ; $617c: $3c
    inc [hl]                                      ; $617d: $34
    ld [hl-], a                                   ; $617e: $32
    ld l, $3a                                     ; $617f: $2e $3a
    ld b, $1a                                     ; $6181: $06 $1a
    ld h, $25                                     ; $6183: $26 $25
    ccf                                           ; $6185: $3f
    dec de                                        ; $6186: $1b
    dec e                                         ; $6187: $1d
    cpl                                           ; $6188: $2f
    ld sp, $f1ef                                  ; $6189: $31 $ef $f1
    xor l                                         ; $618c: $ad
    ld e, e                                       ; $618d: $5b

jr_0f0_618e:
    or $8e                                        ; $618e: $f6 $8e

jr_0f0_6190:
    sbc $66                                       ; $6190: $de $66
    ld [bc], a                                    ; $6192: $02
    nop                                           ; $6193: $00
    ld [bc], a                                    ; $6194: $02
    inc bc                                        ; $6195: $03
    sbc b                                         ; $6196: $98
    cp [hl]                                       ; $6197: $be
    db $dd                                        ; $6198: $dd
    ld d, l                                       ; $6199: $55
    ld a, [hl]                                    ; $619a: $7e
    ld a, $35                                     ; $619b: $3e $35
    scf                                           ; $619d: $37
    dec sp                                        ; $619e: $3b
    dec l                                         ; $619f: $2d
    ccf                                           ; $61a0: $3f
    add hl, sp                                    ; $61a1: $39
    scf                                           ; $61a2: $37
    ccf                                           ; $61a3: $3f
    inc hl                                        ; $61a4: $23
    ld e, l                                       ; $61a5: $5d
    ld l, e                                       ; $61a6: $6b
    ld a, $21                                     ; $61a7: $3e $21
    ld e, l                                       ; $61a9: $5d
    ld h, [hl]                                    ; $61aa: $66
    ld l, [hl]                                    ; $61ab: $6e
    ld a, a                                       ; $61ac: $7f
    or l                                          ; $61ad: $b5
    db $db                                        ; $61ae: $db
    ld [bc], a                                    ; $61af: $02
    ld a, a                                       ; $61b0: $7f
    ld [bc], a                                    ; $61b1: $02
    nop                                           ; $61b2: $00
    adc b                                         ; $61b3: $88
    ld bc, $d702                                  ; $61b4: $01 $02 $d7
    ld l, [hl]                                    ; $61b7: $6e
    push hl                                       ; $61b8: $e5
    cp e                                          ; $61b9: $bb
    rst $38                                       ; $61ba: $ff
    cp a                                          ; $61bb: $bf
    inc bc                                        ; $61bc: $03
    rst $38                                       ; $61bd: $ff
    add c                                         ; $61be: $81
    cp a                                          ; $61bf: $bf
    ld [bc], a                                    ; $61c0: $02
    cp $02                                        ; $61c1: $fe $02
    xor h                                         ; $61c3: $ac
    ld [bc], a                                    ; $61c4: $02
    inc c                                         ; $61c5: $0c
    inc b                                         ; $61c6: $04
    add c                                         ; $61c7: $81
    add h                                         ; $61c8: $84
    ld b, c                                       ; $61c9: $41
    pop bc                                        ; $61ca: $c1
    ld b, b                                       ; $61cb: $40
    ret nz                                        ; $61cc: $c0

    ld [bc], a                                    ; $61cd: $02
    add b                                         ; $61ce: $80
    inc b                                         ; $61cf: $04
    nop                                           ; $61d0: $00
    sbc d                                         ; $61d1: $9a
    or b                                          ; $61d2: $b0
    ld [hl], b                                    ; $61d3: $70
    ld h, b                                       ; $61d4: $60
    ldh a, [$b0]                                  ; $61d5: $f0 $b0
    ldh [$f0], a                                  ; $61d7: $e0 $f0
    ret nc                                        ; $61d9: $d0

    ld d, [hl]                                    ; $61da: $56
    cp l                                          ; $61db: $bd
    adc d                                         ; $61dc: $8a
    rst $38                                       ; $61dd: $ff
    rst $10                                       ; $61de: $d7
    rst $28                                       ; $61df: $ef
    ld c, h                                       ; $61e0: $4c
    ld a, h                                       ; $61e1: $7c
    sub h                                         ; $61e2: $94
    db $ec                                        ; $61e3: $ec
    cp h                                          ; $61e4: $bc
    call nz, $a67a                                ; $61e5: $c4 $7a $a6
    ld l, a                                       ; $61e8: $6f
    rst $18                                       ; $61e9: $df
    rst $10                                       ; $61ea: $d7
    ld a, [$ff02]                                 ; $61eb: $fa $02 $ff
    inc c                                         ; $61ee: $0c
    nop                                           ; $61ef: $00
    add d                                         ; $61f0: $82
    rlca                                          ; $61f1: $07
    inc bc                                        ; $61f2: $03
    ld [bc], a                                    ; $61f3: $02
    ld b, $02                                     ; $61f4: $06 $02
    inc b                                         ; $61f6: $04
    ld a, [bc]                                    ; $61f7: $0a
    nop                                           ; $61f8: $00
    inc b                                         ; $61f9: $04
    inc b                                         ; $61fa: $04
    inc b                                         ; $61fb: $04
    nop                                           ; $61fc: $00
    rst $38                                       ; $61fd: $ff
    inc de                                        ; $61fe: $13
    rlca                                          ; $61ff: $07
    rst $28                                       ; $6200: $ef
    rra                                           ; $6201: $1f
    pop hl                                        ; $6202: $e1
    nop                                           ; $6203: $00
    db $e4                                        ; $6204: $e4
    pop af                                        ; $6205: $f1
    db $e3                                        ; $6206: $e3
    ld sp, hl                                     ; $6207: $f9
    pop hl                                        ; $6208: $e1
    ld bc, $07e6                                  ; $6209: $01 $e6 $07
    pop af                                        ; $620c: $f1
    push af                                       ; $620d: $f5
    pop af                                        ; $620e: $f1
    db $fd                                        ; $620f: $fd

jr_0f0_6210:
    pop af                                        ; $6210: $f1
    dec b                                         ; $6211: $05
    ld [bc], a                                    ; $6212: $02
    ld bc, $0e9a                                  ; $6213: $01 $9a $0e
    rrca                                          ; $6216: $0f
    inc d                                         ; $6217: $14
    dec de                                        ; $6218: $1b
    dec hl                                        ; $6219: $2b
    scf                                           ; $621a: $37
    ld a, $21                                     ; $621b: $3e $21
    ld e, a                                       ; $621d: $5f
    ld h, b                                       ; $621e: $60
    ld c, e                                       ; $621f: $4b
    ld a, h                                       ; $6220: $7c
    ld l, [hl]                                    ; $6221: $6e
    ld d, a                                       ; $6222: $57
    db $db                                        ; $6223: $db
    and a                                         ; $6224: $a7
    sbc h                                         ; $6225: $9c
    rst $38                                       ; $6226: $ff
    or a                                          ; $6227: $b7
    jp hl                                         ; $6228: $e9


    cp a                                          ; $6229: $bf
    pop bc                                        ; $622a: $c1
    cp c                                          ; $622b: $b9
    rst $00                                       ; $622c: $c7
    ld b, a                                       ; $622d: $47
    ld a, a                                       ; $622e: $7f
    ld [bc], a                                    ; $622f: $02
    dec sp                                        ; $6230: $3b
    ld [bc], a                                    ; $6231: $02
    inc bc                                        ; $6232: $03
    ld [bc], a                                    ; $6233: $02
    rra                                           ; $6234: $1f
    sbc [hl]                                      ; $6235: $9e
    db $fc                                        ; $6236: $fc
    db $e3                                        ; $6237: $e3
    ld l, e                                       ; $6238: $6b
    sub a                                         ; $6239: $97
    cp [hl]                                       ; $623a: $be
    ld h, l                                       ; $623b: $65
    ld a, [hl]                                    ; $623c: $7e
    push bc                                       ; $623d: $c5
    db $db                                        ; $623e: $db
    rst $20                                       ; $623f: $e7
    ld [hl-], a                                   ; $6240: $32
    rst $38                                       ; $6241: $ff
    or l                                          ; $6242: $b5
    ld c, a                                       ; $6243: $4f
    cp [hl]                                       ; $6244: $be
    pop bc                                        ; $6245: $c1
    ei                                            ; $6246: $fb
    rst $38                                       ; $6247: $ff
    adc h                                         ; $6248: $8c
    rst $30                                       ; $6249: $f7
    ld l, a                                       ; $624a: $6f
    jp c, Jump_0f0_6cff                           ; $624b: $da $ff $6c

    rst $38                                       ; $624e: $ff
    ld l, h                                       ; $624f: $6c
    ld [hl], a                                    ; $6250: $77
    ld a, [$fcef]                                 ; $6251: $fa $ef $fc
    ld [bc], a                                    ; $6254: $02
    ld c, b                                       ; $6255: $48
    ld [bc], a                                    ; $6256: $02
    ld a, b                                       ; $6257: $78
    sbc h                                         ; $6258: $9c
    sbc b                                         ; $6259: $98
    add sp, -$44                                  ; $625a: $e8 $bc
    call nz, $b7ff                                ; $625c: $c4 $ff $b7
    ld b, [hl]                                    ; $625f: $46
    cp e                                          ; $6260: $bb
    db $fd                                        ; $6261: $fd
    ld b, $f7                                     ; $6262: $06 $f7
    ld a, $ba                                     ; $6264: $3e $ba
    ld [hl], a                                    ; $6266: $77
    push af                                       ; $6267: $f5
    adc a                                         ; $6268: $8f
    cp $ff                                        ; $6269: $fe $ff
    rst $08                                       ; $626b: $cf
    rst $38                                       ; $626c: $ff
    cp d                                          ; $626d: $ba
    ld [hl], a                                    ; $626e: $77
    ld c, a                                       ; $626f: $4f
    cp h                                          ; $6270: $bc
    rst $28                                       ; $6271: $ef
    dec de                                        ; $6272: $1b
    cp $0f                                        ; $6273: $fe $0f
    ld [bc], a                                    ; $6275: $02
    jr nz, jr_0f0_6210                            ; $6276: $20 $98

    jr nc, jr_0f0_628a                            ; $6278: $30 $10

    jr z, jr_0f0_6294                             ; $627a: $28 $18

    inc c                                         ; $627c: $0c
    inc a                                         ; $627d: $3c
    ld [hl], $0e                                  ; $627e: $36 $0e
    dec a                                         ; $6280: $3d
    dec de                                        ; $6281: $1b
    cpl                                           ; $6282: $2f
    ld sp, $213f                                  ; $6283: $31 $3f $21
    dec c                                         ; $6286: $0d
    dec sp                                        ; $6287: $3b
    ld [hl], $0e                                  ; $6288: $36 $0e

jr_0f0_628a:
    inc [hl]                                      ; $628a: $34
    inc e                                         ; $628b: $1c
    db $fc                                        ; $628c: $fc
    or h                                          ; $628d: $b4
    ld l, b                                       ; $628e: $68
    ld a, b                                       ; $628f: $78
    ld [bc], a                                    ; $6290: $02
    db $10                                        ; $6291: $10
    ld [bc], a                                    ; $6292: $02
    nop                                           ; $6293: $00

jr_0f0_6294:
    ld [bc], a                                    ; $6294: $02
    add b                                         ; $6295: $80
    inc b                                         ; $6296: $04
    nop                                           ; $6297: $00
    ld [bc], a                                    ; $6298: $02
    rrca                                          ; $6299: $0f
    add a                                         ; $629a: $87
    cpl                                           ; $629b: $2f
    scf                                           ; $629c: $37
    ld e, e                                       ; $629d: $5b
    ld h, a                                       ; $629e: $67
    ld e, l                                       ; $629f: $5d
    ld h, a                                       ; $62a0: $67
    ld l, c                                       ; $62a1: $69
    ld [bc], a                                    ; $62a2: $02
    ld e, a                                       ; $62a3: $5f
    adc a                                         ; $62a4: $8f
    ld h, a                                       ; $62a5: $67
    ld d, [hl]                                    ; $62a6: $56
    ld l, [hl]                                    ; $62a7: $6e
    ld a, d                                       ; $62a8: $7a
    ld h, [hl]                                    ; $62a9: $66
    cp l                                          ; $62aa: $bd
    jp Jump_0f0_537d                              ; $62ab: $c3 $7d $53


    ld e, d                                       ; $62ae: $5a
    ld l, l                                       ; $62af: $6d
    xor $ff                                       ; $62b0: $ee $ff
    or e                                          ; $62b2: $b3
    db $dd                                        ; $62b3: $dd
    ld [bc], a                                    ; $62b4: $02
    rst $38                                       ; $62b5: $ff
    adc c                                         ; $62b6: $89
    rrca                                          ; $62b7: $0f
    nop                                           ; $62b8: $00
    ld [bc], a                                    ; $62b9: $02
    dec c                                         ; $62ba: $0d
    ld l, c                                       ; $62bb: $69
    sbc a                                         ; $62bc: $9f
    jp $fdfe                                      ; $62bd: $c3 $fe $fd


    ld [bc], a                                    ; $62c0: $02
    cp $85                                        ; $62c1: $fe $85
    db $fd                                        ; $62c3: $fd
    db $fc                                        ; $62c4: $fc
    rst $38                                       ; $62c5: $ff
    ld a, [hl]                                    ; $62c6: $7e
    ld a, a                                       ; $62c7: $7f
    ld [bc], a                                    ; $62c8: $02
    dec a                                         ; $62c9: $3d
    ld [bc], a                                    ; $62ca: $02
    add hl, bc                                    ; $62cb: $09
    ld [bc], a                                    ; $62cc: $02
    ld bc, $0284                                  ; $62cd: $01 $84 $02
    inc bc                                        ; $62d0: $03
    add d                                         ; $62d1: $82
    add e                                         ; $62d2: $83
    ld [bc], a                                    ; $62d3: $02
    add c                                         ; $62d4: $81
    ld [bc], a                                    ; $62d5: $02
    add b                                         ; $62d6: $80
    ld [bc], a                                    ; $62d7: $02
    nop                                           ; $62d8: $00
    inc b                                         ; $62d9: $04
    add b                                         ; $62da: $80
    ld [bc], a                                    ; $62db: $02
    ret nz                                        ; $62dc: $c0

    add a                                         ; $62dd: $87
    ld b, b                                       ; $62de: $40
    ret nz                                        ; $62df: $c0

    add b                                         ; $62e0: $80
    ld b, b                                       ; $62e1: $40
    and b                                         ; $62e2: $a0
    ld h, b                                       ; $62e3: $60
    sub b                                         ; $62e4: $90
    ld [bc], a                                    ; $62e5: $02
    ld [hl], b                                    ; $62e6: $70
    ld [bc], a                                    ; $62e7: $02
    sub b                                         ; $62e8: $90
    adc e                                         ; $62e9: $8b
    ldh a, [$28]                                  ; $62ea: $f0 $28
    ret c                                         ; $62ec: $d8

    ld a, h                                       ; $62ed: $7c
    adc h                                         ; $62ee: $8c
    ld a, d                                       ; $62ef: $7a
    add $de                                       ; $62f0: $c6 $de
    cp [hl]                                       ; $62f2: $be
    cp a                                          ; $62f3: $bf
    push hl                                       ; $62f4: $e5
    ld [bc], a                                    ; $62f5: $02
    ld a, a                                       ; $62f6: $7f
    ld [bc], a                                    ; $62f7: $02
    nop                                           ; $62f8: $00
    rst $38                                       ; $62f9: $ff
    inc de                                        ; $62fa: $13
    rlca                                          ; $62fb: $07
    rst $28                                       ; $62fc: $ef
    rra                                           ; $62fd: $1f
    pop hl                                        ; $62fe: $e1
    nop                                           ; $62ff: $00
    push hl                                       ; $6300: $e5
    pop af                                        ; $6301: $f1
    db $e3                                        ; $6302: $e3
    ld sp, hl                                     ; $6303: $f9
    pop hl                                        ; $6304: $e1
    ld bc, $08e5                                  ; $6305: $01 $e5 $08
    pop af                                        ; $6308: $f1
    push af                                       ; $6309: $f5
    pop af                                        ; $630a: $f1
    db $fd                                        ; $630b: $fd
    pop af                                        ; $630c: $f1
    dec b                                         ; $630d: $05
    ld [bc], a                                    ; $630e: $02
    rlca                                          ; $630f: $07
    sbc b                                         ; $6310: $98
    dec bc                                        ; $6311: $0b
    inc c                                         ; $6312: $0c
    inc d                                         ; $6313: $14
    dec de                                        ; $6314: $1b
    rra                                           ; $6315: $1f
    ld [de], a                                    ; $6316: $12
    cpl                                           ; $6317: $2f
    jr nc, jr_0f0_6379                            ; $6318: $30 $5f

    ld [hl], b                                    ; $631a: $70
    ld l, l                                       ; $631b: $6d
    ld e, [hl]                                    ; $631c: $5e
    ld e, e                                       ; $631d: $5b
    ld h, a                                       ; $631e: $67
    sbc a                                         ; $631f: $9f
    rst $38                                       ; $6320: $ff
    xor d                                         ; $6321: $aa
    push af                                       ; $6322: $f5
    sbc a                                         ; $6323: $9f
    ldh [rVBK], a                                 ; $6324: $e0 $4f
    ld [hl], c                                    ; $6326: $71
    ld sp, $023f                                  ; $6327: $31 $3f $02
    rrca                                          ; $632a: $0f
    ld [bc], a                                    ; $632b: $02
    ld bc, $0282                                  ; $632c: $01 $82 $02
    inc bc                                        ; $632f: $03
    ld [bc], a                                    ; $6330: $02
    rrca                                          ; $6331: $0f
    sbc [hl]                                      ; $6332: $9e
    cp $f1                                        ; $6333: $fe $f1
    dec [hl]                                      ; $6335: $35
    bit 3, a                                      ; $6336: $cb $5f
    or d                                          ; $6338: $b2
    ccf                                           ; $6339: $3f
    ld [c], a                                     ; $633a: $e2
    ld l, l                                       ; $633b: $6d
    di                                            ; $633c: $f3
    ld sp, $caff                                  ; $633d: $31 $ff $ca
    scf                                           ; $6340: $37
    ld e, a                                       ; $6341: $5f
    ldh [$f5], a                                  ; $6342: $e0 $f5
    ei                                            ; $6344: $fb
    cp $ff                                        ; $6345: $fe $ff
    adc l                                         ; $6347: $8d
    or $6f                                        ; $6348: $f6 $6f
    jp c, Jump_0f0_6cff                           ; $634a: $da $ff $6c

    rst $38                                       ; $634d: $ff
    ld l, h                                       ; $634e: $6c
    ld [hl], a                                    ; $634f: $77
    ld a, [$2402]                                 ; $6350: $fa $02 $24
    ld [bc], a                                    ; $6353: $02
    inc a                                         ; $6354: $3c
    sbc h                                         ; $6355: $9c
    call z, Call_0f0_5ef4                         ; $6356: $cc $f4 $5e
    ld [c], a                                     ; $6359: $e2
    rst $38                                       ; $635a: $ff
    db $db                                        ; $635b: $db
    inc hl                                        ; $635c: $23
    db $dd                                        ; $635d: $dd
    ld a, [hl]                                    ; $635e: $7e
    add e                                         ; $635f: $83
    ei                                            ; $6360: $fb
    sbc a                                         ; $6361: $9f
    ld e, l                                       ; $6362: $5d
    cp e                                          ; $6363: $bb
    ei                                            ; $6364: $fb
    add $7f                                       ; $6365: $c6 $7f
    rst $38                                       ; $6367: $ff
    ld [$4ff6], a                                 ; $6368: $ea $f6 $4f
    cp a                                          ; $636b: $bf
    and [hl]                                      ; $636c: $a6
    ld e, l                                       ; $636d: $5d
    rst $30                                       ; $636e: $f7
    rrca                                          ; $636f: $0f
    rst $38                                       ; $6370: $ff
    ld b, $02                                     ; $6371: $06 $02
    ld b, b                                       ; $6373: $40
    sbc h                                         ; $6374: $9c
    jr nz, jr_0f0_63d7                            ; $6375: $20 $60

    ld [hl], b                                    ; $6377: $70
    db $10                                        ; $6378: $10

jr_0f0_6379:
    ld l, b                                       ; $6379: $68
    jr jr_0f0_63c4                                ; $637a: $18 $48

    jr c, jr_0f0_63b2                             ; $637c: $38 $34

    ld l, h                                       ; $637e: $6c
    ld [hl], d                                    ; $637f: $72
    ld c, [hl]                                    ; $6380: $4e
    ld e, l                                       ; $6381: $5d
    ld a, e                                       ; $6382: $7b
    ld a, a                                       ; $6383: $7f
    ld [hl], c                                    ; $6384: $71
    ld e, a                                       ; $6385: $5f
    ld a, c                                       ; $6386: $79
    ld h, l                                       ; $6387: $65
    rra                                           ; $6388: $1f
    ld a, d                                       ; $6389: $7a
    ld h, [hl]                                    ; $638a: $66
    jp c, Jump_0f0_7eee                           ; $638b: $da $ee $7e

    ld e, d                                       ; $638e: $5a
    inc [hl]                                      ; $638f: $34
    inc a                                         ; $6390: $3c
    ld [bc], a                                    ; $6391: $02
    ld [$0004], sp                                ; $6392: $08 $04 $00
    add c                                         ; $6395: $81
    ld c, $02                                     ; $6396: $0e $02
    rrca                                          ; $6398: $0f
    sub a                                         ; $6399: $97
    inc bc                                        ; $639a: $03
    dec a                                         ; $639b: $3d
    daa                                           ; $639c: $27
    ld a, [hl-]                                   ; $639d: $3a
    dec h                                         ; $639e: $25
    ld d, h                                       ; $639f: $54
    ld l, a                                       ; $63a0: $6f
    ld e, e                                       ; $63a1: $5b
    ld h, a                                       ; $63a2: $67
    ld [hl], e                                    ; $63a3: $73
    ld l, a                                       ; $63a4: $6f
    ld a, [hl]                                    ; $63a5: $7e
    ld b, [hl]                                    ; $63a6: $46
    cp a                                          ; $63a7: $bf
    db $d3                                        ; $63a8: $d3
    ld a, l                                       ; $63a9: $7d
    ld b, e                                       ; $63aa: $43
    sbc d                                         ; $63ab: $9a
    db $ed                                        ; $63ac: $ed
    xor $ff                                       ; $63ad: $ee $ff

jr_0f0_63af:
    or a                                          ; $63af: $b7
    reti                                          ; $63b0: $d9


    ld [bc], a                                    ; $63b1: $02

jr_0f0_63b2:
    rst $38                                       ; $63b2: $ff
    adc b                                         ; $63b3: $88
    rrca                                          ; $63b4: $0f
    nop                                           ; $63b5: $00
    dec bc                                        ; $63b6: $0b
    inc b                                         ; $63b7: $04
    xor $dd                                       ; $63b8: $ee $dd
    adc e                                         ; $63ba: $8b
    rst $30                                       ; $63bb: $f7
    ld [bc], a                                    ; $63bc: $02
    rst $38                                       ; $63bd: $ff
    add c                                         ; $63be: $81
    db $fd                                        ; $63bf: $fd
    ld [bc], a                                    ; $63c0: $02
    cp $83                                        ; $63c1: $fe $83
    rst $38                                       ; $63c3: $ff

jr_0f0_63c4:
    ld a, [hl]                                    ; $63c4: $7e
    ld a, a                                       ; $63c5: $7f
    ld [bc], a                                    ; $63c6: $02
    ld a, c                                       ; $63c7: $79
    ld [bc], a                                    ; $63c8: $02
    add hl, bc                                    ; $63c9: $09
    ld [bc], a                                    ; $63ca: $02
    ld bc, $0283                                  ; $63cb: $01 $83 $02
    inc bc                                        ; $63ce: $03
    add d                                         ; $63cf: $82
    inc bc                                        ; $63d0: $03
    add e                                         ; $63d1: $83
    ld [bc], a                                    ; $63d2: $02
    add b                                         ; $63d3: $80
    ld [bc], a                                    ; $63d4: $02
    nop                                           ; $63d5: $00
    add c                                         ; $63d6: $81

jr_0f0_63d7:
    ret nz                                        ; $63d7: $c0

    ld [bc], a                                    ; $63d8: $02
    ld b, b                                       ; $63d9: $40
    inc bc                                        ; $63da: $03
    ret nz                                        ; $63db: $c0

    sub [hl]                                      ; $63dc: $96
    and b                                         ; $63dd: $a0
    ld h, b                                       ; $63de: $60
    ret nc                                        ; $63df: $d0

    jr nc, jr_0f0_6432                            ; $63e0: $30 $50

    or b                                          ; $63e2: $b0
    xor b                                         ; $63e3: $a8
    ld e, b                                       ; $63e4: $58
    jr c, jr_0f0_63af                             ; $63e5: $38 $c8

    sbc b                                         ; $63e7: $98
    ld hl, sp+$28                                 ; $63e8: $f8 $28
    ret c                                         ; $63ea: $d8

    ld hl, sp+$08                                 ; $63eb: $f8 $08
    ld [hl], h                                    ; $63ed: $74
    call z, $bede                                 ; $63ee: $cc $de $be
    cp a                                          ; $63f1: $bf
    push hl                                       ; $63f2: $e5
    ld [bc], a                                    ; $63f3: $02
    rst $38                                       ; $63f4: $ff
    ld [bc], a                                    ; $63f5: $02
    nop                                           ; $63f6: $00
    rst $38                                       ; $63f7: $ff
    dec d                                         ; $63f8: $15
    ld [$1fef], sp                                ; $63f9: $08 $ef $1f
    pop hl                                        ; $63fc: $e1
    nop                                           ; $63fd: $00
    push hl                                       ; $63fe: $e5
    pop af                                        ; $63ff: $f1
    db $e3                                        ; $6400: $e3
    ld sp, hl                                     ; $6401: $f9
    pop hl                                        ; $6402: $e1
    ld bc, $08e5                                  ; $6403: $01 $e5 $08
    pop af                                        ; $6406: $f1
    db $f4                                        ; $6407: $f4
    pop af                                        ; $6408: $f1
    db $fc                                        ; $6409: $fc
    pop af                                        ; $640a: $f1
    inc b                                         ; $640b: $04
    pop af                                        ; $640c: $f1
    ld [$0302], sp                                ; $640d: $08 $02 $03
    sbc [hl]                                      ; $6410: $9e
    dec b                                         ; $6411: $05
    ld b, $0b                                     ; $6412: $06 $0b
    inc c                                         ; $6414: $0c
    ld c, $09                                     ; $6415: $0e $09
    ld e, $19                                     ; $6417: $1e $19
    rla                                           ; $6419: $17
    jr jr_0f0_6451                                ; $641a: $18 $35

    ld l, $35                                     ; $641c: $2e $35
    dec hl                                        ; $641e: $2b
    ld l, a                                       ; $641f: $6f
    ld d, c                                       ; $6420: $51
    ld c, l                                       ; $6421: $4d
    ld [hl], e                                    ; $6422: $73
    sbc d                                         ; $6423: $9a
    cp $9f                                        ; $6424: $fe $9f
    db $e3                                        ; $6426: $e3
    ld e, a                                       ; $6427: $5f
    ld h, c                                       ; $6428: $61
    ld c, a                                       ; $6429: $4f
    ld [hl], e                                    ; $642a: $73
    dec l                                         ; $642b: $2d
    scf                                           ; $642c: $37
    rla                                           ; $642d: $17
    dec e                                         ; $642e: $1d
    ld [bc], a                                    ; $642f: $02
    rrca                                          ; $6430: $0f
    sbc [hl]                                      ; $6431: $9e

jr_0f0_6432:
    ld a, [hl]                                    ; $6432: $7e
    ld [hl], c                                    ; $6433: $71
    sub c                                         ; $6434: $91
    rst $28                                       ; $6435: $ef
    xor a                                         ; $6436: $af
    ld e, c                                       ; $6437: $59
    ld e, $f1                                     ; $6438: $1e $f1
    or [hl]                                       ; $643a: $b6
    ld a, c                                       ; $643b: $79
    sbc b                                         ; $643c: $98
    ld a, a                                       ; $643d: $7f
    di                                            ; $643e: $f3
    rrca                                          ; $643f: $0f
    sbc a                                         ; $6440: $9f
    ld [hl], b                                    ; $6441: $70
    halt                                          ; $6442: $76
    ld sp, hl                                     ; $6443: $f9
    db $eb                                        ; $6444: $eb
    rst $38                                       ; $6445: $ff
    pop de                                        ; $6446: $d1
    cp $67                                        ; $6447: $fe $67
    ld a, b                                       ; $6449: $78
    ld a, a                                       ; $644a: $7f
    ld [hl], b                                    ; $644b: $70
    or a                                          ; $644c: $b7
    ret c                                         ; $644d: $d8

    cp a                                          ; $644e: $bf
    ld l, b                                       ; $644f: $68
    ld [bc], a                                    ; $6450: $02

jr_0f0_6451:
    ld [$1d02], sp                                ; $6451: $08 $02 $1d
    sbc h                                         ; $6454: $9c
    xor $fa                                       ; $6455: $ee $fa
    db $ed                                        ; $6457: $ed
    di                                            ; $6458: $f3
    rst $20                                       ; $6459: $e7
    add hl, sp                                    ; $645a: $39
    sbc l                                         ; $645b: $9d
    ld l, a                                       ; $645c: $6f
    rst $38                                       ; $645d: $ff
    ret nz                                        ; $645e: $c0

    ld a, l                                       ; $645f: $7d
    add e                                         ; $6460: $83
    cp e                                          ; $6461: $bb
    rst $08                                       ; $6462: $cf
    ld a, a                                       ; $6463: $7f
    pop hl                                        ; $6464: $e1
    cp a                                          ; $6465: $bf
    ld a, a                                       ; $6466: $7f
    db $ed                                        ; $6467: $ed
    di                                            ; $6468: $f3
    halt                                          ; $6469: $76
    sbc [hl]                                      ; $646a: $9e
    sub h                                         ; $646b: $94
    ld l, h                                       ; $646c: $6c
    ld a, [$fa06]                                 ; $646d: $fa $06 $fa
    ld b, $02                                     ; $6470: $06 $02
    ld h, b                                       ; $6472: $60
    sbc [hl]                                      ; $6473: $9e
    ld d, b                                       ; $6474: $50
    ld [hl], b                                    ; $6475: $70
    ld l, b                                       ; $6476: $68
    ld e, b                                       ; $6477: $58
    ld a, b                                       ; $6478: $78
    ld c, b                                       ; $6479: $48
    ld a, h                                       ; $647a: $7c
    ld c, h                                       ; $647b: $4c
    ld l, h                                       ; $647c: $6c
    inc d                                         ; $647d: $14
    ld d, h                                       ; $647e: $54
    ld a, h                                       ; $647f: $7c
    ld [hl], d                                    ; $6480: $72
    ld l, [hl]                                    ; $6481: $6e
    ld a, d                                       ; $6482: $7a
    ld b, [hl]                                    ; $6483: $46
    add hl, hl                                    ; $6484: $29
    ccf                                           ; $6485: $3f
    dec d                                         ; $6486: $15
    dec de                                        ; $6487: $1b
    rla                                           ; $6488: $17
    add hl, de                                    ; $6489: $19
    cpl                                           ; $648a: $2f
    ld sp, $f9e7                                  ; $648b: $31 $e7 $f9
    rst $10                                       ; $648e: $d7
    ld l, l                                       ; $648f: $6d
    rst $18                                       ; $6490: $df
    or e                                          ; $6491: $b3
    inc b                                         ; $6492: $04
    nop                                           ; $6493: $00
    add [hl]                                      ; $6494: $86
    rlca                                          ; $6495: $07
    dec b                                         ; $6496: $05
    rlca                                          ; $6497: $07
    dec b                                         ; $6498: $05
    ld a, [hl]                                    ; $6499: $7e
    ld l, a                                       ; $649a: $6f
    ld [bc], a                                    ; $649b: $02
    ld a, a                                       ; $649c: $7f
    sub d                                         ; $649d: $92
    inc sp                                        ; $649e: $33
    ccf                                           ; $649f: $3f
    dec a                                         ; $64a0: $3d
    inc hl                                        ; $64a1: $23
    add hl, sp                                    ; $64a2: $39
    scf                                           ; $64a3: $37
    ccf                                           ; $64a4: $3f
    inc hl                                        ; $64a5: $23
    ld e, l                                       ; $64a6: $5d
    ld l, e                                       ; $64a7: $6b
    ld a, $21                                     ; $64a8: $3e $21
    ld e, l                                       ; $64aa: $5d
    ld h, [hl]                                    ; $64ab: $66
    ld l, [hl]                                    ; $64ac: $6e
    ld a, a                                       ; $64ad: $7f
    or l                                          ; $64ae: $b5
    db $db                                        ; $64af: $db
    ld [bc], a                                    ; $64b0: $02
    ld a, a                                       ; $64b1: $7f
    adc [hl]                                      ; $64b2: $8e
    rlca                                          ; $64b3: $07
    nop                                           ; $64b4: $00
    dec b                                         ; $64b5: $05

jr_0f0_64b6:
    ld [bc], a                                    ; $64b6: $02
    or a                                          ; $64b7: $b7
    adc $e5                                       ; $64b8: $ce $e5
    ei                                            ; $64ba: $fb
    rst $38                                       ; $64bb: $ff
    ld a, a                                       ; $64bc: $7f
    cp a                                          ; $64bd: $bf
    rst $38                                       ; $64be: $ff
    ld a, a                                       ; $64bf: $7f
    rst $38                                       ; $64c0: $ff
    ld [bc], a                                    ; $64c1: $02
    cp $02                                        ; $64c2: $fe $02
    xor h                                         ; $64c4: $ac
    ld [bc], a                                    ; $64c5: $02
    inc c                                         ; $64c6: $0c
    ld [bc], a                                    ; $64c7: $02
    add b                                         ; $64c8: $80
    inc b                                         ; $64c9: $04
    add c                                         ; $64ca: $81
    add h                                         ; $64cb: $84
    ld b, c                                       ; $64cc: $41
    pop bc                                        ; $64cd: $c1
    ld b, b                                       ; $64ce: $40
    ret nz                                        ; $64cf: $c0

    ld [bc], a                                    ; $64d0: $02
    add b                                         ; $64d1: $80
    sbc h                                         ; $64d2: $9c
    ret nc                                        ; $64d3: $d0

    jr nc, jr_0f0_64b6                            ; $64d4: $30 $e0

    jr nz, jr_0f0_6548                            ; $64d6: $20 $70

    ldh a, [$90]                                  ; $64d8: $f0 $90
    ldh a, [$ee]                                  ; $64da: $f0 $ee
    db $db                                        ; $64dc: $db
    ld e, a                                       ; $64dd: $5f
    xor [hl]                                      ; $64de: $ae
    adc e                                         ; $64df: $8b
    rst $30                                       ; $64e0: $f7
    sbc $e6                                       ; $64e1: $de $e6
    ld c, h                                       ; $64e3: $4c
    ld a, h                                       ; $64e4: $7c
    sub h                                         ; $64e5: $94
    db $ec                                        ; $64e6: $ec
    cp h                                          ; $64e7: $bc
    call nz, $a67a                                ; $64e8: $c4 $7a $a6
    ld l, a                                       ; $64eb: $6f
    rst $18                                       ; $64ec: $df
    ld d, a                                       ; $64ed: $57
    ld a, [$ff02]                                 ; $64ee: $fa $02 $ff
    ld a, [bc]                                    ; $64f1: $0a
    nop                                           ; $64f2: $00
    add [hl]                                      ; $64f3: $86
    add hl, bc                                    ; $64f4: $09
    rlca                                          ; $64f5: $07
    rrca                                          ; $64f6: $0f
    dec c                                         ; $64f7: $0d
    ld c, $0a                                     ; $64f8: $0e $0a
    ld [bc], a                                    ; $64fa: $02
    inc c                                         ; $64fb: $0c
    ld a, [bc]                                    ; $64fc: $0a
    nop                                           ; $64fd: $00
    inc b                                         ; $64fe: $04
    ld [$0002], sp                                ; $64ff: $08 $02 $00
    rst $38                                       ; $6502: $ff
    inc hl                                        ; $6503: $23
    rrca                                          ; $6504: $0f
    rst $30                                       ; $6505: $f7
    ld a, [bc]                                    ; $6506: $0a
    jp $c700                                      ; $6507: $c3 $00 $c7


    db $f4                                        ; $650a: $f4
    pop bc                                        ; $650b: $c1
    db $fc                                        ; $650c: $fc
    pop bc                                        ; $650d: $c1
    inc b                                         ; $650e: $04
    rrc c                                         ; $650f: $cb $09
    rst $10                                       ; $6511: $d7
    db $f4                                        ; $6512: $f4
    pop de                                        ; $6513: $d1
    db $fc                                        ; $6514: $fc
    pop de                                        ; $6515: $d1
    inc b                                         ; $6516: $04

jr_0f0_6517:
    db $db                                        ; $6517: $db
    rlca                                          ; $6518: $07
    pop hl                                        ; $6519: $e1
    push af                                       ; $651a: $f5
    pop hl                                        ; $651b: $e1
    db $fd                                        ; $651c: $fd
    pop hl                                        ; $651d: $e1
    dec b                                         ; $651e: $05
    pop af                                        ; $651f: $f1
    pop af                                        ; $6520: $f1
    pop af                                        ; $6521: $f1
    ld sp, hl                                     ; $6522: $f9
    pop af                                        ; $6523: $f1
    ld bc, $09f1                                  ; $6524: $01 $f1 $09
    ld [bc], a                                    ; $6527: $02
    ld a, h                                       ; $6528: $7c
    sub b                                         ; $6529: $90
    cp e                                          ; $652a: $bb
    rst $00                                       ; $652b: $c7
    cp l                                          ; $652c: $bd
    and $4e                                       ; $652d: $e6 $4e
    ld [hl], e                                    ; $652f: $73
    dec [hl]                                      ; $6530: $35
    dec sp                                        ; $6531: $3b
    dec bc                                        ; $6532: $0b
    ld c, $05                                     ; $6533: $0e $05
    ld b, $04                                     ; $6535: $06 $04
    rlca                                          ; $6537: $07
    ld b, $07                                     ; $6538: $06 $07
    ld [bc], a                                    ; $653a: $02
    rrca                                          ; $653b: $0f
    adc h                                         ; $653c: $8c
    ld a, $39                                     ; $653d: $3e $39
    ei                                            ; $653f: $fb
    db $fc                                        ; $6540: $fc
    cp a                                          ; $6541: $bf
    ld hl, sp-$7d                                 ; $6542: $f8 $83
    db $fc                                        ; $6544: $fc
    add a                                         ; $6545: $87
    ld hl, sp-$7a                                 ; $6546: $f8 $86

jr_0f0_6548:
    ld sp, hl                                     ; $6548: $f9
    ld [bc], a                                    ; $6549: $02
    ld bc, $039e                                  ; $654a: $01 $9e $03
    ld [bc], a                                    ; $654d: $02
    inc bc                                        ; $654e: $03
    ld [bc], a                                    ; $654f: $02
    inc bc                                        ; $6550: $03
    ld [bc], a                                    ; $6551: $02
    rlca                                          ; $6552: $07
    inc b                                         ; $6553: $04
    dec bc                                        ; $6554: $0b
    inc c                                         ; $6555: $0c
    dec d                                         ; $6556: $15
    dec de                                        ; $6557: $1b
    ld a, [de]                                    ; $6558: $1a
    rla                                           ; $6559: $17
    db $fc                                        ; $655a: $fc
    rst $38                                       ; $655b: $ff
    and c                                         ; $655c: $a1
    ld e, a                                       ; $655d: $5f
    ld a, $ff                                     ; $655e: $3e $ff
    db $dd                                        ; $6560: $dd
    ld [c], a                                     ; $6561: $e2
    db $e3                                        ; $6562: $e3
    ld a, a                                       ; $6563: $7f
    ld a, h                                       ; $6564: $7c
    rst $38                                       ; $6565: $ff
    push de                                       ; $6566: $d5
    rst $38                                       ; $6567: $ff
    cp $ff                                        ; $6568: $fe $ff
    ld [bc], a                                    ; $656a: $02
    ret nz                                        ; $656b: $c0

    adc d                                         ; $656c: $8a
    ldh a, [$30]                                  ; $656d: $f0 $30
    ld hl, sp+$18                                 ; $656f: $f8 $18
    db $f4                                        ; $6571: $f4
    inc e                                         ; $6572: $1c
    db $e4                                        ; $6573: $e4
    inc a                                         ; $6574: $3c
    cp h                                          ; $6575: $bc
    ld a, h                                       ; $6576: $7c
    ld [bc], a                                    ; $6577: $02
    db $fc                                        ; $6578: $fc
    add h                                         ; $6579: $84
    ld [hl], h                                    ; $657a: $74
    db $f4                                        ; $657b: $f4
    jr nc, @-$0e                                  ; $657c: $30 $f0

    ld [bc], a                                    ; $657e: $02
    rst $38                                       ; $657f: $ff
    adc h                                         ; $6580: $8c
    push de                                       ; $6581: $d5
    ld l, $1f                                     ; $6582: $2e $1f
    db $fc                                        ; $6584: $fc
    rst $38                                       ; $6585: $ff
    db $fc                                        ; $6586: $fc
    dec bc                                        ; $6587: $0b
    db $fc                                        ; $6588: $fc
    ld c, a                                       ; $6589: $4f
    ld hl, sp-$41                                 ; $658a: $f8 $bf
    ld hl, sp+$02                                 ; $658c: $f8 $02
    jr jr_0f0_6517                                ; $658e: $18 $87

    ld e, $06                                     ; $6590: $1e $06
    ld de, $170f                                  ; $6592: $11 $0f $17
    dec bc                                        ; $6595: $0b
    add hl, de                                    ; $6596: $19
    ld [bc], a                                    ; $6597: $02
    rrca                                          ; $6598: $0f
    sub a                                         ; $6599: $97
    dec de                                        ; $659a: $1b
    jp hl                                         ; $659b: $e9


    rra                                           ; $659c: $1f
    ei                                            ; $659d: $fb
    rla                                           ; $659e: $17
    pop af                                        ; $659f: $f1
    rra                                           ; $65a0: $1f
    ld a, [$d616]                                 ; $65a1: $fa $16 $d6
    ld a, $d2                                     ; $65a4: $3e $d2
    ld a, $f6                                     ; $65a6: $3e $f6
    ld l, $e2                                     ; $65a8: $2e $e2
    ld a, $f4                                     ; $65aa: $3e $f4
    inc l                                         ; $65ac: $2c
    xor h                                         ; $65ad: $ac
    ld a, h                                       ; $65ae: $7c
    sub a                                         ; $65af: $97
    rst $38                                       ; $65b0: $ff
    ld [bc], a                                    ; $65b1: $02
    ld a, a                                       ; $65b2: $7f
    add a                                         ; $65b3: $87
    dec a                                         ; $65b4: $3d
    ld a, $2a                                     ; $65b5: $3e $2a
    dec [hl]                                      ; $65b7: $35
    dec h                                         ; $65b8: $25
    ld a, $28                                     ; $65b9: $3e $28
    ld [bc], a                                    ; $65bb: $02
    scf                                           ; $65bc: $37
    sbc [hl]                                      ; $65bd: $9e
    inc a                                         ; $65be: $3c
    dec hl                                        ; $65bf: $2b
    inc [hl]                                      ; $65c0: $34
    dec h                                         ; $65c1: $25
    ld a, $2a                                     ; $65c2: $3e $2a
    dec [hl]                                      ; $65c4: $35
    inc h                                         ; $65c5: $24
    ccf                                           ; $65c6: $3f
    inc sp                                        ; $65c7: $33
    inc a                                         ; $65c8: $3c
    daa                                           ; $65c9: $27
    inc a                                         ; $65ca: $3c
    dec hl                                        ; $65cb: $2b
    inc [hl]                                      ; $65cc: $34
    daa                                           ; $65cd: $27
    inc a                                         ; $65ce: $3c
    ld c, e                                       ; $65cf: $4b
    ld [hl], h                                    ; $65d0: $74
    rst $38                                       ; $65d1: $ff
    di                                            ; $65d2: $f3
    rst $38                                       ; $65d3: $ff
    di                                            ; $65d4: $f3
    db $fd                                        ; $65d5: $fd
    ld [bc], a                                    ; $65d6: $02
    cp $01                                        ; $65d7: $fe $01
    rst $38                                       ; $65d9: $ff
    nop                                           ; $65da: $00
    xor l                                         ; $65db: $ad
    dec b                                         ; $65dc: $05
    rst $38                                       ; $65dd: $ff
    add a                                         ; $65de: $87
    ld d, c                                       ; $65df: $51
    xor [hl]                                      ; $65e0: $ae

jr_0f0_65e1:
    ei                                            ; $65e1: $fb
    inc b                                         ; $65e2: $04
    rst $38                                       ; $65e3: $ff
    inc b                                         ; $65e4: $04
    xor h                                         ; $65e5: $ac
    ld [bc], a                                    ; $65e6: $02
    rst $38                                       ; $65e7: $ff
    xor [hl]                                      ; $65e8: $ae
    nop                                           ; $65e9: $00
    ld a, a                                       ; $65ea: $7f
    add b                                         ; $65eb: $80
    db $fd                                        ; $65ec: $fd
    add d                                         ; $65ed: $82
    ld l, d                                       ; $65ee: $6a
    sub l                                         ; $65ef: $95
    ld [hl], b                                    ; $65f0: $70
    ret c                                         ; $65f1: $d8

    ld hl, sp-$30                                 ; $65f2: $f8 $d0
    ld e, b                                       ; $65f4: $58
    ldh a, [$f8]                                  ; $65f5: $f0 $f8
    jr nc, jr_0f0_65e1                            ; $65f7: $30 $e8

    jr nc, jr_0f0_6663                            ; $65f9: $30 $68

    ldh a, [$f8]                                  ; $65fb: $f0 $f8
    ldh [$f8], a                                  ; $65fd: $e0 $f8
    ldh [$38], a                                  ; $65ff: $e0 $38
    ldh [$38], a                                  ; $6601: $e0 $38
    ldh [$3d], a                                  ; $6603: $e0 $3d
    db $e3                                        ; $6605: $e3
    sub $eb                                       ; $6606: $d6 $eb
    ld e, a                                       ; $6608: $5f
    ld [c], a                                     ; $6609: $e2
    ld a, d                                       ; $660a: $7a
    rst $00                                       ; $660b: $c7
    ld l, d                                       ; $660c: $6a
    rst $10                                       ; $660d: $d7
    ld e, h                                       ; $660e: $5c
    rst $20                                       ; $660f: $e7
    ld bc, $0307                                  ; $6610: $01 $07 $03
    rlca                                          ; $6613: $07
    ld bc, $0207                                  ; $6614: $01 $07 $02
    inc bc                                        ; $6617: $03
    ld b, $96                                     ; $6618: $06 $96
    ld [bc], a                                    ; $661a: $02
    ld b, $24                                     ; $661b: $06 $24
    db $fc                                        ; $661d: $fc
    and h                                         ; $661e: $a4
    ld a, h                                       ; $661f: $7c
    ld c, b                                       ; $6620: $48
    ld hl, sp-$28                                 ; $6621: $f8 $d8
    ld a, b                                       ; $6623: $78
    ld e, b                                       ; $6624: $58
    ld hl, sp-$54                                 ; $6625: $f8 $ac
    db $fc                                        ; $6627: $fc
    or h                                          ; $6628: $b4
    db $fc                                        ; $6629: $fc
    ld a, h                                       ; $662a: $7c
    db $fc                                        ; $662b: $fc
    call nc, $ecbc                                ; $662c: $d4 $bc $ec
    inc a                                         ; $662f: $3c
    inc bc                                        ; $6630: $03
    ld bc, $00be                                  ; $6631: $01 $be $00
    ld bc, $0100                                  ; $6634: $01 $00 $01
    nop                                           ; $6637: $00
    ld bc, $0100                                  ; $6638: $01 $00 $01
    nop                                           ; $663b: $00
    and l                                         ; $663c: $a5
    jp c, $ffd2                                   ; $663d: $da $d2 $ff

    xor a                                         ; $6640: $af
    ret nc                                        ; $6641: $d0

    sbc [hl]                                      ; $6642: $9e
    pop af                                        ; $6643: $f1
    xor [hl]                                      ; $6644: $ae
    pop de                                        ; $6645: $d1
    sbc a                                         ; $6646: $9f
    pop af                                        ; $6647: $f1
    adc $f1                                       ; $6648: $ce $f1
    sub c                                         ; $664a: $91
    rst $38                                       ; $664b: $ff
    xor a                                         ; $664c: $af
    ret nc                                        ; $664d: $d0

    sbc a                                         ; $664e: $9f
    ldh a, [$a9]                                  ; $664f: $f0 $a9
    rst $38                                       ; $6651: $ff
    cp $01                                        ; $6652: $fe $01
    or $09                                        ; $6654: $f6 $09
    or $09                                        ; $6656: $f6 $09
    sub $29                                       ; $6658: $d6 $29
    xor h                                         ; $665a: $ac
    ld e, e                                       ; $665b: $5b
    ld e, d                                       ; $665c: $5a
    xor l                                         ; $665d: $ad
    cp d                                          ; $665e: $ba
    rst $38                                       ; $665f: $ff
    cp $01                                        ; $6660: $fe $01
    rst $38                                       ; $6662: $ff

jr_0f0_6663:
    nop                                           ; $6663: $00
    rst $38                                       ; $6664: $ff
    nop                                           ; $6665: $00
    ld a, a                                       ; $6666: $7f
    add b                                         ; $6667: $80
    xor a                                         ; $6668: $af
    ld d, b                                       ; $6669: $50
    xor e                                         ; $666a: $ab
    rst $38                                       ; $666b: $ff
    rst $28                                       ; $666c: $ef
    db $10                                        ; $666d: $10
    rst $30                                       ; $666e: $f7
    ld [$02c0], sp                                ; $666f: $08 $c0 $02
    add b                                         ; $6672: $80
    ld [bc], a                                    ; $6673: $02
    ret nz                                        ; $6674: $c0

    ld [bc], a                                    ; $6675: $02
    add b                                         ; $6676: $80
    ld [bc], a                                    ; $6677: $02
    ret nz                                        ; $6678: $c0

    ld [bc], a                                    ; $6679: $02
    add b                                         ; $667a: $80
    ld [bc], a                                    ; $667b: $02
    ret nz                                        ; $667c: $c0

    ld [bc], a                                    ; $667d: $02
    add b                                         ; $667e: $80
    sub e                                         ; $667f: $93
    ret nz                                        ; $6680: $c0

    add b                                         ; $6681: $80
    ret nz                                        ; $6682: $c0

    ld b, b                                       ; $6683: $40
    ret nz                                        ; $6684: $c0

    push de                                       ; $6685: $d5
    xor a                                         ; $6686: $af
    dec hl                                        ; $6687: $2b
    rst $18                                       ; $6688: $df
    rst $10                                       ; $6689: $d7
    xor a                                         ; $668a: $af
    db $db                                        ; $668b: $db
    rst $38                                       ; $668c: $ff
    push af                                       ; $668d: $f5
    rrca                                          ; $668e: $0f
    ei                                            ; $668f: $fb
    rrca                                          ; $6690: $0f
    ld a, [bc]                                    ; $6691: $0a
    dec c                                         ; $6692: $0d
    ld [bc], a                                    ; $6693: $02
    rra                                           ; $6694: $1f
    sbc d                                         ; $6695: $9a
    cpl                                           ; $6696: $2f
    ccf                                           ; $6697: $3f
    dec h                                         ; $6698: $25
    ld a, [hl-]                                   ; $6699: $3a
    ld a, [hl+]                                   ; $669a: $2a
    scf                                           ; $669b: $37
    dec h                                         ; $669c: $25
    ld a, [hl-]                                   ; $669d: $3a
    ld e, e                                       ; $669e: $5b
    ld a, [hl]                                    ; $669f: $7e
    xor a                                         ; $66a0: $af
    rst $38                                       ; $66a1: $ff
    sub a                                         ; $66a2: $97
    rst $38                                       ; $66a3: $ff
    adc e                                         ; $66a4: $8b
    db $f4                                        ; $66a5: $f4
    sub a                                         ; $66a6: $97
    db $ec                                        ; $66a7: $ec
    xor c                                         ; $66a8: $a9
    sub $76                                       ; $66a9: $d6 $76
    ld l, l                                       ; $66ab: $6d
    ld de, $0e1e                                  ; $66ac: $11 $1e $0e
    dec c                                         ; $66af: $0d
    ld [bc], a                                    ; $66b0: $02
    inc bc                                        ; $66b1: $03
    add h                                         ; $66b2: $84
    cp $01                                        ; $66b3: $fe $01
    ld [hl], l                                    ; $66b5: $75
    adc d                                         ; $66b6: $8a
    ld [bc], a                                    ; $66b7: $02
    rst $38                                       ; $66b8: $ff
    adc b                                         ; $66b9: $88
    ld e, a                                       ; $66ba: $5f
    and b                                         ; $66bb: $a0
    rst $38                                       ; $66bc: $ff
    nop                                           ; $66bd: $00
    rst $38                                       ; $66be: $ff
    nop                                           ; $66bf: $00
    xor a                                         ; $66c0: $af
    ld d, b                                       ; $66c1: $50
    inc b                                         ; $66c2: $04
    rst $38                                       ; $66c3: $ff
    adc h                                         ; $66c4: $8c
    ei                                            ; $66c5: $fb
    inc b                                         ; $66c6: $04
    cp $01                                        ; $66c7: $fe $01
    db $fd                                        ; $66c9: $fd
    ld [bc], a                                    ; $66ca: $02
    rst $38                                       ; $66cb: $ff
    nop                                           ; $66cc: $00
    rst $38                                       ; $66cd: $ff
    nop                                           ; $66ce: $00
    xor a                                         ; $66cf: $af
    ld d, b                                       ; $66d0: $50
    ld [bc], a                                    ; $66d1: $02
    rst $38                                       ; $66d2: $ff
    add h                                         ; $66d3: $84
    ccf                                           ; $66d4: $3f
    ret nz                                        ; $66d5: $c0

    push de                                       ; $66d6: $d5
    xor d                                         ; $66d7: $aa
    ld [bc], a                                    ; $66d8: $02
    rst $38                                       ; $66d9: $ff
    adc b                                         ; $66da: $88
    xor a                                         ; $66db: $af
    ld d, b                                       ; $66dc: $50
    ld a, a                                       ; $66dd: $7f
    add b                                         ; $66de: $80
    cp $01                                        ; $66df: $fe $01
    push de                                       ; $66e1: $d5
    ld a, [hl+]                                   ; $66e2: $2a
    inc b                                         ; $66e3: $04
    rst $38                                       ; $66e4: $ff
    adc h                                         ; $66e5: $8c
    ld e, a                                       ; $66e6: $5f
    and b                                         ; $66e7: $a0
    cp a                                          ; $66e8: $bf
    ld b, b                                       ; $66e9: $40
    rst $38                                       ; $66ea: $ff
    nop                                           ; $66eb: $00
    rst $38                                       ; $66ec: $ff
    nop                                           ; $66ed: $00
    ld a, [$b505]                                 ; $66ee: $fa $05 $b5
    ld c, d                                       ; $66f1: $4a
    ld [bc], a                                    ; $66f2: $02
    rst $38                                       ; $66f3: $ff
    add d                                         ; $66f4: $82
    ld d, b                                       ; $66f5: $50
    ldh a, [rSC]                                  ; $66f6: $f0 $02
    ld hl, sp-$76                                 ; $66f8: $f8 $8a
    db $f4                                        ; $66fa: $f4
    db $fc                                        ; $66fb: $fc
    adc h                                         ; $66fc: $8c
    ld a, h                                       ; $66fd: $7c
    ld d, h                                       ; $66fe: $54
    db $fc                                        ; $66ff: $fc
    call z, Call_0f0_567c                         ; $6700: $cc $7c $56
    cp $02                                        ; $6703: $fe $02
    rst $38                                       ; $6705: $ff
    adc [hl]                                      ; $6706: $8e
    db $eb                                        ; $6707: $eb
    rst $38                                       ; $6708: $ff
    add l                                         ; $6709: $85
    ld a, a                                       ; $670a: $7f
    jp $a53f                                      ; $670b: $c3 $3f $a5


    ld a, a                                       ; $670e: $7f
    ld h, [hl]                                    ; $670f: $66
    cp [hl]                                       ; $6710: $be
    xor b                                         ; $6711: $a8
    ld a, b                                       ; $6712: $78
    ld [hl], b                                    ; $6713: $70
    or b                                          ; $6714: $b0
    ld [bc], a                                    ; $6715: $02
    ret nz                                        ; $6716: $c0

    rst $38                                       ; $6717: $ff
    inc hl                                        ; $6718: $23
    rrca                                          ; $6719: $0f
    rst $30                                       ; $671a: $f7
    ld a, [bc]                                    ; $671b: $0a
    jp $c600                                      ; $671c: $c3 $00 $c6


    db $f4                                        ; $671f: $f4
    pop bc                                        ; $6720: $c1
    db $fc                                        ; $6721: $fc
    pop bc                                        ; $6722: $c1
    inc b                                         ; $6723: $04
    jp z, $d609                                   ; $6724: $ca $09 $d6

    db $f4                                        ; $6727: $f4
    pop de                                        ; $6728: $d1

jr_0f0_6729:
    db $fc                                        ; $6729: $fc
    pop de                                        ; $672a: $d1
    inc b                                         ; $672b: $04
    jp c, $e107                                   ; $672c: $da $07 $e1

    push af                                       ; $672f: $f5
    pop hl                                        ; $6730: $e1
    db $fd                                        ; $6731: $fd
    pop hl                                        ; $6732: $e1
    dec b                                         ; $6733: $05
    pop af                                        ; $6734: $f1
    pop af                                        ; $6735: $f1
    pop af                                        ; $6736: $f1
    ld sp, hl                                     ; $6737: $f9
    pop af                                        ; $6738: $f1
    ld bc, $09f1                                  ; $6739: $01 $f1 $09
    ld [bc], a                                    ; $673c: $02
    ld a, b                                       ; $673d: $78
    sub c                                         ; $673e: $91
    or $8e                                        ; $673f: $f6 $8e
    ld sp, hl                                     ; $6741: $f9
    rst $08                                       ; $6742: $cf
    sbc e                                         ; $6743: $9b
    db $ec                                        ; $6744: $ec
    ld e, h                                       ; $6745: $5c
    ld h, a                                       ; $6746: $67
    dec h                                         ; $6747: $25
    ccf                                           ; $6748: $3f
    rra                                           ; $6749: $1f
    dec de                                        ; $674a: $1b
    rla                                           ; $674b: $17
    add hl, de                                    ; $674c: $19
    ld de, $0b1f                                  ; $674d: $11 $1f $0b
    inc bc                                        ; $6750: $03
    rrca                                          ; $6751: $0f
    adc d                                         ; $6752: $8a
    ld a, $39                                     ; $6753: $3e $39
    ei                                            ; $6755: $fb
    db $fc                                        ; $6756: $fc
    cp a                                          ; $6757: $bf
    ld hl, sp-$7d                                 ; $6758: $f8 $83
    db $fc                                        ; $675a: $fc
    add a                                         ; $675b: $87
    ld hl, sp+$02                                 ; $675c: $f8 $02
    inc bc                                        ; $675e: $03
    sbc [hl]                                      ; $675f: $9e
    rlca                                          ; $6760: $07
    inc b                                         ; $6761: $04
    rlca                                          ; $6762: $07
    inc b                                         ; $6763: $04
    rlca                                          ; $6764: $07
    inc b                                         ; $6765: $04
    rrca                                          ; $6766: $0f
    ld [$1817], sp                                ; $6767: $08 $17 $18
    dec hl                                        ; $676a: $2b
    scf                                           ; $676b: $37
    or h                                          ; $676c: $b4
    xor a                                         ; $676d: $af
    ld a, b                                       ; $676e: $78
    rst $38                                       ; $676f: $ff
    ld b, b                                       ; $6770: $40
    cp a                                          ; $6771: $bf
    rra                                           ; $6772: $1f
    rst $38                                       ; $6773: $ff
    db $ed                                        ; $6774: $ed
    ld a, [c]                                     ; $6775: $f2
    ld h, e                                       ; $6776: $63
    sbc a                                         ; $6777: $9f
    inc e                                         ; $6778: $1c
    rst $38                                       ; $6779: $ff
    ld [$dfff], a                                 ; $677a: $ea $ff $df
    rst $38                                       ; $677d: $ff
    ld [bc], a                                    ; $677e: $02
    add b                                         ; $677f: $80
    add a                                         ; $6780: $87
    ldh [$60], a                                  ; $6781: $e0 $60
    ldh a, [$30]                                  ; $6783: $f0 $30
    add sp, $38                                   ; $6785: $e8 $38
    ret z                                         ; $6787: $c8

    ld [bc], a                                    ; $6788: $02
    ld a, b                                       ; $6789: $78
    inc bc                                        ; $678a: $03
    ld hl, sp+$02                                 ; $678b: $f8 $02
    add sp, -$70                                  ; $678d: $e8 $90
    ld h, e                                       ; $678f: $63
    db $e3                                        ; $6790: $e3
    db $fd                                        ; $6791: $fd
    cp $6f                                        ; $6792: $fe $6f
    sbc h                                         ; $6794: $9c
    ld [hl], a                                    ; $6795: $77
    db $fc                                        ; $6796: $fc
    adc e                                         ; $6797: $8b
    db $fc                                        ; $6798: $fc
    rrca                                          ; $6799: $0f
    ld hl, sp-$41                                 ; $679a: $f8 $bf
    ld hl, sp+$77                                 ; $679c: $f8 $77
    ret c                                         ; $679e: $d8

    ld [bc], a                                    ; $679f: $02
    jr jr_0f0_6729                                ; $67a0: $18 $87

    ld e, $06                                     ; $67a2: $1e $06
    ld de, $170f                                  ; $67a4: $11 $0f $17
    dec bc                                        ; $67a7: $0b
    add hl, de                                    ; $67a8: $19
    ld [bc], a                                    ; $67a9: $02
    rrca                                          ; $67aa: $0f
    sbc c                                         ; $67ab: $99
    dec de                                        ; $67ac: $1b
    add hl, bc                                    ; $67ad: $09
    rra                                           ; $67ae: $1f
    ei                                            ; $67af: $fb
    rla                                           ; $67b0: $17
    pop af                                        ; $67b1: $f1
    rra                                           ; $67b2: $1f
    ld a, [$d616]                                 ; $67b3: $fa $16 $d6
    ld a, $d2                                     ; $67b6: $3e $d2
    ld a, $f6                                     ; $67b8: $3e $f6
    ld l, $e2                                     ; $67ba: $2e $e2
    ld a, $f4                                     ; $67bc: $3e $f4
    inc l                                         ; $67be: $2c
    xor h                                         ; $67bf: $ac
    ld a, h                                       ; $67c0: $7c
    add [hl]                                      ; $67c1: $86
    ld sp, hl                                     ; $67c2: $f9
    sub a                                         ; $67c3: $97
    rst $38                                       ; $67c4: $ff
    ld [bc], a                                    ; $67c5: $02
    ld a, a                                       ; $67c6: $7f
    add a                                         ; $67c7: $87
    dec a                                         ; $67c8: $3d
    ld a, $2a                                     ; $67c9: $3e $2a
    dec [hl]                                      ; $67cb: $35
    dec h                                         ; $67cc: $25
    ld a, $28                                     ; $67cd: $3e $28
    ld [bc], a                                    ; $67cf: $02
    scf                                           ; $67d0: $37
    sbc h                                         ; $67d1: $9c
    inc a                                         ; $67d2: $3c
    dec hl                                        ; $67d3: $2b
    inc [hl]                                      ; $67d4: $34
    dec h                                         ; $67d5: $25
    ld a, $2a                                     ; $67d6: $3e $2a
    dec [hl]                                      ; $67d8: $35
    inc h                                         ; $67d9: $24
    ccf                                           ; $67da: $3f
    inc sp                                        ; $67db: $33
    inc a                                         ; $67dc: $3c
    daa                                           ; $67dd: $27
    inc a                                         ; $67de: $3c
    dec hl                                        ; $67df: $2b
    inc [hl]                                      ; $67e0: $34
    daa                                           ; $67e1: $27
    inc a                                         ; $67e2: $3c
    cp $f3                                        ; $67e3: $fe $f3
    rst $38                                       ; $67e5: $ff
    di                                            ; $67e6: $f3
    db $fd                                        ; $67e7: $fd
    ld [bc], a                                    ; $67e8: $02
    cp $01                                        ; $67e9: $fe $01
    rst $38                                       ; $67eb: $ff
    nop                                           ; $67ec: $00
    xor l                                         ; $67ed: $ad
    dec b                                         ; $67ee: $05
    rst $38                                       ; $67ef: $ff
    add a                                         ; $67f0: $87
    ld d, c                                       ; $67f1: $51
    xor [hl]                                      ; $67f2: $ae
    ei                                            ; $67f3: $fb
    inc b                                         ; $67f4: $04
    rst $38                                       ; $67f5: $ff
    inc b                                         ; $67f6: $04
    xor h                                         ; $67f7: $ac
    ld [bc], a                                    ; $67f8: $02
    rst $38                                       ; $67f9: $ff
    xor [hl]                                      ; $67fa: $ae
    nop                                           ; $67fb: $00
    ld a, a                                       ; $67fc: $7f
    add b                                         ; $67fd: $80
    db $fd                                        ; $67fe: $fd
    add d                                         ; $67ff: $82
    ld l, d                                       ; $6800: $6a
    sub l                                         ; $6801: $95
    ld hl, sp-$30                                 ; $6802: $f8 $d0
    ret c                                         ; $6804: $d8

    ldh a, [$78]                                  ; $6805: $f0 $78
    or b                                          ; $6807: $b0
    add sp, $30                                   ; $6808: $e8 $30
    add sp, $30                                   ; $680a: $e8 $30
    ld a, b                                       ; $680c: $78
    ldh [$f8], a                                  ; $680d: $e0 $f8
    ldh [$f8], a                                  ; $680f: $e0 $f8
    ldh [$38], a                                  ; $6811: $e0 $38
    ldh [$3d], a                                  ; $6813: $e0 $3d
    db $e3                                        ; $6815: $e3
    ld d, [hl]                                    ; $6816: $56
    db $eb                                        ; $6817: $eb
    rst $18                                       ; $6818: $df
    ld [c], a                                     ; $6819: $e2
    ld a, d                                       ; $681a: $7a
    rst $00                                       ; $681b: $c7
    ld l, d                                       ; $681c: $6a
    rst $10                                       ; $681d: $d7
    ld e, h                                       ; $681e: $5c
    rst $20                                       ; $681f: $e7
    ld h, h                                       ; $6820: $64
    rst $18                                       ; $6821: $df
    ld bc, $0307                                  ; $6822: $01 $07 $03
    rlca                                          ; $6825: $07
    ld bc, $0207                                  ; $6826: $01 $07 $02
    inc bc                                        ; $6829: $03
    ld b, $82                                     ; $682a: $06 $82
    ld [bc], a                                    ; $682c: $02
    ld b, $02                                     ; $682d: $06 $02
    inc b                                         ; $682f: $04
    sub d                                         ; $6830: $92
    and h                                         ; $6831: $a4
    ld a, h                                       ; $6832: $7c
    ld c, b                                       ; $6833: $48
    ld hl, sp-$28                                 ; $6834: $f8 $d8
    ld a, b                                       ; $6836: $78
    ld e, b                                       ; $6837: $58
    ld hl, sp-$48                                 ; $6838: $f8 $b8
    ld hl, sp-$54                                 ; $683a: $f8 $ac
    db $fc                                        ; $683c: $fc
    ld d, h                                       ; $683d: $54
    db $fc                                        ; $683e: $fc
    cp h                                          ; $683f: $bc
    db $fc                                        ; $6840: $fc
    ld d, h                                       ; $6841: $54
    cp h                                          ; $6842: $bc
    inc bc                                        ; $6843: $03
    ld bc, $00ac                                  ; $6844: $01 $ac $00
    ld bc, $0100                                  ; $6847: $01 $00 $01
    nop                                           ; $684a: $00
    ld bc, $9700                                  ; $684b: $01 $00 $97
    add sp, -$5b                                  ; $684e: $e8 $a5
    jp c, $ffd2                                   ; $6850: $da $d2 $ff

    xor a                                         ; $6853: $af
    ret nc                                        ; $6854: $d0

    sbc [hl]                                      ; $6855: $9e
    pop af                                        ; $6856: $f1
    xor [hl]                                      ; $6857: $ae
    pop de                                        ; $6858: $d1
    sbc a                                         ; $6859: $9f
    pop af                                        ; $685a: $f1
    adc $f1                                       ; $685b: $ce $f1
    sub c                                         ; $685d: $91
    rst $38                                       ; $685e: $ff
    xor a                                         ; $685f: $af
    ret nc                                        ; $6860: $d0

    sbc a                                         ; $6861: $9f
    ldh a, [$a9]                                  ; $6862: $f0 $a9
    rst $38                                       ; $6864: $ff
    cp $01                                        ; $6865: $fe $01
    or $09                                        ; $6867: $f6 $09
    or $09                                        ; $6869: $f6 $09
    sub $29                                       ; $686b: $d6 $29
    xor h                                         ; $686d: $ac
    ld e, e                                       ; $686e: $5b
    ld e, d                                       ; $686f: $5a
    xor l                                         ; $6870: $ad
    cp d                                          ; $6871: $ba
    ld [bc], a                                    ; $6872: $02
    rst $38                                       ; $6873: $ff
    sub b                                         ; $6874: $90
    nop                                           ; $6875: $00
    rst $38                                       ; $6876: $ff
    nop                                           ; $6877: $00
    rst $38                                       ; $6878: $ff
    nop                                           ; $6879: $00
    ld a, a                                       ; $687a: $7f
    add b                                         ; $687b: $80
    xor a                                         ; $687c: $af
    ld d, b                                       ; $687d: $50
    xor e                                         ; $687e: $ab
    rst $38                                       ; $687f: $ff
    rst $28                                       ; $6880: $ef
    db $10                                        ; $6881: $10
    rst $30                                       ; $6882: $f7
    ld [$0280], sp                                ; $6883: $08 $80 $02
    ret nz                                        ; $6886: $c0

    ld [bc], a                                    ; $6887: $02
    add b                                         ; $6888: $80
    ld [bc], a                                    ; $6889: $02
    ret nz                                        ; $688a: $c0

    ld [bc], a                                    ; $688b: $02
    add b                                         ; $688c: $80
    ld [bc], a                                    ; $688d: $02
    ret nz                                        ; $688e: $c0

    ld [bc], a                                    ; $688f: $02
    add b                                         ; $6890: $80
    sub l                                         ; $6891: $95
    ret nz                                        ; $6892: $c0

    add b                                         ; $6893: $80
    ret nz                                        ; $6894: $c0

    ld b, b                                       ; $6895: $40
    ret nz                                        ; $6896: $c0

    dec sp                                        ; $6897: $3b
    rst $08                                       ; $6898: $cf
    push de                                       ; $6899: $d5
    xor a                                         ; $689a: $af
    dec hl                                        ; $689b: $2b
    rst $18                                       ; $689c: $df
    rst $10                                       ; $689d: $d7
    xor a                                         ; $689e: $af
    db $db                                        ; $689f: $db
    rst $38                                       ; $68a0: $ff
    push af                                       ; $68a1: $f5
    rrca                                          ; $68a2: $0f
    ei                                            ; $68a3: $fb
    rrca                                          ; $68a4: $0f
    ld a, [bc]                                    ; $68a5: $0a
    dec c                                         ; $68a6: $0d
    ld [bc], a                                    ; $68a7: $02
    rra                                           ; $68a8: $1f
    sbc d                                         ; $68a9: $9a
    cpl                                           ; $68aa: $2f
    ccf                                           ; $68ab: $3f
    dec h                                         ; $68ac: $25
    ld a, [hl-]                                   ; $68ad: $3a
    ld a, [hl+]                                   ; $68ae: $2a
    scf                                           ; $68af: $37
    dec h                                         ; $68b0: $25
    ld a, [hl-]                                   ; $68b1: $3a
    ld e, e                                       ; $68b2: $5b
    ld a, [hl]                                    ; $68b3: $7e
    xor a                                         ; $68b4: $af
    rst $38                                       ; $68b5: $ff
    sub a                                         ; $68b6: $97
    rst $38                                       ; $68b7: $ff
    adc e                                         ; $68b8: $8b
    db $f4                                        ; $68b9: $f4
    sub a                                         ; $68ba: $97
    db $ec                                        ; $68bb: $ec
    xor c                                         ; $68bc: $a9
    sub $76                                       ; $68bd: $d6 $76
    ld l, l                                       ; $68bf: $6d
    ld de, $0e1e                                  ; $68c0: $11 $1e $0e
    dec c                                         ; $68c3: $0d
    ld [bc], a                                    ; $68c4: $02
    inc bc                                        ; $68c5: $03
    add h                                         ; $68c6: $84
    cp $01                                        ; $68c7: $fe $01
    ld [hl], l                                    ; $68c9: $75
    adc d                                         ; $68ca: $8a
    ld [bc], a                                    ; $68cb: $02
    rst $38                                       ; $68cc: $ff
    adc b                                         ; $68cd: $88
    ld e, a                                       ; $68ce: $5f
    and b                                         ; $68cf: $a0
    rst $38                                       ; $68d0: $ff
    nop                                           ; $68d1: $00
    rst $38                                       ; $68d2: $ff
    nop                                           ; $68d3: $00
    xor a                                         ; $68d4: $af
    ld d, b                                       ; $68d5: $50
    inc b                                         ; $68d6: $04
    rst $38                                       ; $68d7: $ff
    adc h                                         ; $68d8: $8c
    ei                                            ; $68d9: $fb
    inc b                                         ; $68da: $04
    cp $01                                        ; $68db: $fe $01
    db $fd                                        ; $68dd: $fd
    ld [bc], a                                    ; $68de: $02
    rst $38                                       ; $68df: $ff
    nop                                           ; $68e0: $00
    rst $38                                       ; $68e1: $ff
    nop                                           ; $68e2: $00
    xor a                                         ; $68e3: $af
    ld d, b                                       ; $68e4: $50
    ld [bc], a                                    ; $68e5: $02
    rst $38                                       ; $68e6: $ff
    add h                                         ; $68e7: $84
    ccf                                           ; $68e8: $3f
    ret nz                                        ; $68e9: $c0

    push de                                       ; $68ea: $d5
    xor d                                         ; $68eb: $aa
    ld [bc], a                                    ; $68ec: $02
    rst $38                                       ; $68ed: $ff
    adc b                                         ; $68ee: $88
    xor a                                         ; $68ef: $af
    ld d, b                                       ; $68f0: $50
    ld a, a                                       ; $68f1: $7f
    add b                                         ; $68f2: $80
    cp $01                                        ; $68f3: $fe $01
    push de                                       ; $68f5: $d5
    ld a, [hl+]                                   ; $68f6: $2a
    inc b                                         ; $68f7: $04
    rst $38                                       ; $68f8: $ff
    adc h                                         ; $68f9: $8c
    ld e, a                                       ; $68fa: $5f
    and b                                         ; $68fb: $a0
    cp a                                          ; $68fc: $bf
    ld b, b                                       ; $68fd: $40
    rst $38                                       ; $68fe: $ff
    nop                                           ; $68ff: $00
    rst $38                                       ; $6900: $ff
    nop                                           ; $6901: $00
    ld a, [$b505]                                 ; $6902: $fa $05 $b5
    ld c, d                                       ; $6905: $4a
    ld [bc], a                                    ; $6906: $02
    rst $38                                       ; $6907: $ff
    add d                                         ; $6908: $82
    ld d, b                                       ; $6909: $50
    ldh a, [rSC]                                  ; $690a: $f0 $02
    ld hl, sp-$76                                 ; $690c: $f8 $8a
    db $f4                                        ; $690e: $f4
    db $fc                                        ; $690f: $fc
    adc h                                         ; $6910: $8c
    ld a, h                                       ; $6911: $7c
    ld d, h                                       ; $6912: $54
    db $fc                                        ; $6913: $fc
    call z, Call_0f0_567c                         ; $6914: $cc $7c $56
    cp $02                                        ; $6917: $fe $02
    rst $38                                       ; $6919: $ff
    adc [hl]                                      ; $691a: $8e
    db $eb                                        ; $691b: $eb
    rst $38                                       ; $691c: $ff
    add l                                         ; $691d: $85
    ld a, a                                       ; $691e: $7f
    jp $a53f                                      ; $691f: $c3 $3f $a5


    ld a, a                                       ; $6922: $7f
    ld h, [hl]                                    ; $6923: $66
    cp [hl]                                       ; $6924: $be
    xor b                                         ; $6925: $a8
    ld a, b                                       ; $6926: $78
    ld [hl], b                                    ; $6927: $70
    or b                                          ; $6928: $b0
    ld [bc], a                                    ; $6929: $02
    ret nz                                        ; $692a: $c0

    rst $38                                       ; $692b: $ff
    inc hl                                        ; $692c: $23
    rrca                                          ; $692d: $0f
    rst $30                                       ; $692e: $f7
    ld a, [bc]                                    ; $692f: $0a
    jp $c700                                      ; $6930: $c3 $00 $c7


    ld a, [c]                                     ; $6933: $f2
    jp nz, $c1fa                                  ; $6934: $c2 $fa $c1

    ld [bc], a                                    ; $6937: $02
    ret z                                         ; $6938: $c8

    ld [$f4d2], sp                                ; $6939: $08 $d2 $f4
    pop de                                        ; $693c: $d1
    db $fc                                        ; $693d: $fc
    pop de                                        ; $693e: $d1
    inc b                                         ; $693f: $04
    ret c                                         ; $6940: $d8

    ld b, $e1                                     ; $6941: $06 $e1
    push af                                       ; $6943: $f5
    pop hl                                        ; $6944: $e1
    db $fd                                        ; $6945: $fd
    pop hl                                        ; $6946: $e1
    dec b                                         ; $6947: $05
    pop af                                        ; $6948: $f1
    pop af                                        ; $6949: $f1
    pop af                                        ; $694a: $f1
    ld sp, hl                                     ; $694b: $f9
    pop af                                        ; $694c: $f1
    ld bc, $09f1                                  ; $694d: $01 $f1 $09
    ld [bc], a                                    ; $6950: $02
    ld a, h                                       ; $6951: $7c
    sbc [hl]                                      ; $6952: $9e
    di                                            ; $6953: $f3
    adc a                                         ; $6954: $8f
    ld sp, hl                                     ; $6955: $f9
    adc $bc                                       ; $6956: $ce $bc
    rst $20                                       ; $6958: $e7
    ld c, [hl]                                    ; $6959: $4e
    ld [hl], e                                    ; $695a: $73
    ld [hl], $3b                                  ; $695b: $36 $3b
    dec bc                                        ; $695d: $0b

jr_0f0_695e:
    dec c                                         ; $695e: $0d
    rlca                                          ; $695f: $07
    ld b, $05                                     ; $6960: $06 $05
    ld b, $04                                     ; $6962: $06 $04
    rlca                                          ; $6964: $07
    ld c, $0f                                     ; $6965: $0e $0f
    ld a, $3f                                     ; $6967: $3e $3f
    cpl                                           ; $6969: $2f
    ld a, $20                                     ; $696a: $3e $20
    ccf                                           ; $696c: $3f
    ld hl, $213e                                  ; $696d: $21 $3e $21
    ld a, $06                                     ; $6970: $3e $06
    ld bc, $0395                                  ; $6972: $01 $95 $03
    ld [bc], a                                    ; $6975: $02
    dec b                                         ; $6976: $05
    ld b, $0a                                     ; $6977: $06 $0a
    dec c                                         ; $6979: $0d
    adc l                                         ; $697a: $8d
    adc e                                         ; $697b: $8b
    cp $7f                                        ; $697c: $fe $7f
    jr nc, @-$2f                                  ; $697e: $30 $cf

    ld bc, $aeff                                  ; $6980: $01 $ff $ae
    rst $38                                       ; $6983: $ff
    ld a, h                                       ; $6984: $7c
    di                                            ; $6985: $f3
    or e                                          ; $6986: $b3
    rst $08                                       ; $6987: $cf
    call Call_0f0_7f02                            ; $6988: $cd $02 $7f
    add e                                         ; $698b: $83
    rst $38                                       ; $698c: $ff
    cp a                                          ; $698d: $bf
    db $fc                                        ; $698e: $fc
    ld [bc], a                                    ; $698f: $02
    ldh [$8a], a                                  ; $6990: $e0 $8a
    ld hl, sp+$18                                 ; $6992: $f8 $18
    db $fc                                        ; $6994: $fc
    inc c                                         ; $6995: $0c
    ld a, [$f20e]                                 ; $6996: $fa $0e $f2
    ld e, $de                                     ; $6999: $1e $de
    ld a, $02                                     ; $699b: $3e $02
    cp $92                                        ; $699d: $fe $92
    dec sp                                        ; $699f: $3b
    ei                                            ; $69a0: $fb
    dec e                                         ; $69a1: $1d
    cp $07                                        ; $69a2: $fe $07
    db $fc                                        ; $69a4: $fc
    rst $30                                       ; $69a5: $f7
    db $fc                                        ; $69a6: $fc
    xor e                                         ; $69a7: $ab
    ld a, h                                       ; $69a8: $7c
    rst $08                                       ; $69a9: $cf
    ld hl, sp+$3f                                 ; $69aa: $f8 $3f
    ld hl, sp+$77                                 ; $69ac: $f8 $77
    ret c                                         ; $69ae: $d8

    rst $38                                       ; $69af: $ff
    ret nc                                        ; $69b0: $d0

    ld [bc], a                                    ; $69b1: $02
    jr nz, jr_0f0_695e                            ; $69b2: $20 $aa

    jr c, @+$1a                                   ; $69b4: $38 $18

    ld a, $06                                     ; $69b6: $3e $06
    ld sp, $370f                                  ; $69b8: $31 $0f $37
    dec bc                                        ; $69bb: $0b
    add hl, hl                                    ; $69bc: $29
    rra                                           ; $69bd: $1f
    cpl                                           ; $69be: $2f
    dec de                                        ; $69bf: $1b
    ld sp, $3b1f                                  ; $69c0: $31 $1f $3b
    rla                                           ; $69c3: $17
    pop af                                        ; $69c4: $f1
    rra                                           ; $69c5: $1f
    jp c, $d636                                   ; $69c6: $da $36 $d6

    ld a, $e2                                     ; $69c9: $3e $e2
    ld a, $f6                                     ; $69cb: $3e $f6
    ld l, $e2                                     ; $69cd: $2e $e2
    ld a, $b4                                     ; $69cf: $3e $b4
    ld l, h                                       ; $69d1: $6c
    ld bc, $0302                                  ; $69d2: $01 $02 $03
    nop                                           ; $69d5: $00
    inc bc                                        ; $69d6: $03
    nop                                           ; $69d7: $00
    inc bc                                        ; $69d8: $03
    nop                                           ; $69d9: $00
    ld [bc], a                                    ; $69da: $02
    ld bc, $ff97                                  ; $69db: $01 $97 $ff
    ld [bc], a                                    ; $69de: $02
    ld a, a                                       ; $69df: $7f
    add a                                         ; $69e0: $87
    dec a                                         ; $69e1: $3d
    ld a, $2a                                     ; $69e2: $3e $2a
    dec [hl]                                      ; $69e4: $35
    dec h                                         ; $69e5: $25
    ld a, $28                                     ; $69e6: $3e $28
    ld [bc], a                                    ; $69e8: $02
    scf                                           ; $69e9: $37
    adc c                                         ; $69ea: $89
    inc a                                         ; $69eb: $3c
    dec hl                                        ; $69ec: $2b
    inc [hl]                                      ; $69ed: $34
    dec h                                         ; $69ee: $25
    ld a, $2a                                     ; $69ef: $3e $2a
    dec [hl]                                      ; $69f1: $35
    inc h                                         ; $69f2: $24
    ccf                                           ; $69f3: $3f
    ld [bc], a                                    ; $69f4: $02
    inc bc                                        ; $69f5: $03
    adc c                                         ; $69f6: $89
    rst $38                                       ; $69f7: $ff
    di                                            ; $69f8: $f3
    db $fd                                        ; $69f9: $fd
    ld [bc], a                                    ; $69fa: $02
    cp $01                                        ; $69fb: $fe $01
    rst $38                                       ; $69fd: $ff

jr_0f0_69fe:
    nop                                           ; $69fe: $00
    xor l                                         ; $69ff: $ad
    dec b                                         ; $6a00: $05
    rst $38                                       ; $6a01: $ff
    or b                                          ; $6a02: $b0
    ld d, b                                       ; $6a03: $50
    xor a                                         ; $6a04: $af
    ld sp, hl                                     ; $6a05: $f9
    rlca                                          ; $6a06: $07
    db $fd                                        ; $6a07: $fd
    rlca                                          ; $6a08: $07
    xor l                                         ; $6a09: $ad
    rst $38                                       ; $6a0a: $ff
    db $fd                                        ; $6a0b: $fd
    inc bc                                        ; $6a0c: $03
    ld a, l                                       ; $6a0d: $7d
    add e                                         ; $6a0e: $83
    db $fd                                        ; $6a0f: $fd
    add e                                         ; $6a10: $83
    ld l, c                                       ; $6a11: $69
    sub a                                         ; $6a12: $97
    ld [hl], b                                    ; $6a13: $70
    ret nz                                        ; $6a14: $c0

    ldh a, [$c0]                                  ; $6a15: $f0 $c0
    or b                                          ; $6a17: $b0
    ret nz                                        ; $6a18: $c0

    or b                                          ; $6a19: $b0
    ret nz                                        ; $6a1a: $c0

    ldh a, [$80]                                  ; $6a1b: $f0 $80
    ldh a, [$80]                                  ; $6a1d: $f0 $80
    ldh a, [$80]                                  ; $6a1f: $f0 $80
    ld a, [$fc87]                                 ; $6a21: $fa $87 $fc
    add a                                         ; $6a24: $87
    ld l, h                                       ; $6a25: $6c
    sub a                                         ; $6a26: $97
    ld a, [hl]                                    ; $6a27: $7e
    add l                                         ; $6a28: $85
    ld [hl], h                                    ; $6a29: $74
    adc a                                         ; $6a2a: $8f
    ld e, c                                       ; $6a2b: $59
    xor a                                         ; $6a2c: $af
    jr c, jr_0f0_69fe                             ; $6a2d: $38 $cf

    ld c, c                                       ; $6a2f: $49
    cp a                                          ; $6a30: $bf
    ld sp, $02df                                  ; $6a31: $31 $df $02
    inc bc                                        ; $6a34: $03
    add c                                         ; $6a35: $81
    ld bc, $0303                                  ; $6a36: $01 $03 $03
    add d                                         ; $6a39: $82
    ld bc, $0603                                  ; $6a3a: $01 $03 $06
    ld [bc], a                                    ; $6a3d: $02
    inc b                                         ; $6a3e: $04
    nop                                           ; $6a3f: $00
    adc [hl]                                      ; $6a40: $8e
    ld c, h                                       ; $6a41: $4c
    db $fc                                        ; $6a42: $fc
    call c, Call_0f0_5c7c                         ; $6a43: $dc $7c $5c
    db $fc                                        ; $6a46: $fc
    or h                                          ; $6a47: $b4
    db $fc                                        ; $6a48: $fc
    xor h                                         ; $6a49: $ac
    db $fc                                        ; $6a4a: $fc
    ld d, [hl]                                    ; $6a4b: $56
    cp $8a                                        ; $6a4c: $fe $8a
    cp $02                                        ; $6a4e: $fe $02
    ld bc, $67ad                                  ; $6a50: $01 $ad $67
    ld a, b                                       ; $6a53: $78
    ld c, a                                       ; $6a54: $4f
    ld a, b                                       ; $6a55: $78
    ld d, a                                       ; $6a56: $57
    ld l, b                                       ; $6a57: $68
    ld c, a                                       ; $6a58: $4f
    ld a, b                                       ; $6a59: $78
    sub a                                         ; $6a5a: $97
    add sp, -$5b                                  ; $6a5b: $e8 $a5
    jp c, $ffd2                                   ; $6a5d: $da $d2 $ff

    xor a                                         ; $6a60: $af
    ret nc                                        ; $6a61: $d0

    sbc [hl]                                      ; $6a62: $9e
    pop af                                        ; $6a63: $f1
    xor [hl]                                      ; $6a64: $ae
    pop de                                        ; $6a65: $d1
    sbc a                                         ; $6a66: $9f
    pop af                                        ; $6a67: $f1
    adc $f1                                       ; $6a68: $ce $f1
    sub c                                         ; $6a6a: $91
    rst $38                                       ; $6a6b: $ff
    xor a                                         ; $6a6c: $af
    ret nc                                        ; $6a6d: $d0

    sbc a                                         ; $6a6e: $9f
    ldh a, [$aa]                                  ; $6a6f: $f0 $aa
    rst $38                                       ; $6a71: $ff
    ld a, [$f507]                                 ; $6a72: $fa $07 $f5
    dec bc                                        ; $6a75: $0b
    push af                                       ; $6a76: $f5
    dec bc                                        ; $6a77: $0b
    push de                                       ; $6a78: $d5
    dec hl                                        ; $6a79: $2b
    xor l                                         ; $6a7a: $ad
    ld e, e                                       ; $6a7b: $5b
    ld e, c                                       ; $6a7c: $59
    xor a                                         ; $6a7d: $af
    cp d                                          ; $6a7e: $ba
    ld [bc], a                                    ; $6a7f: $02
    rst $38                                       ; $6a80: $ff
    sub b                                         ; $6a81: $90
    nop                                           ; $6a82: $00
    rst $38                                       ; $6a83: $ff
    nop                                           ; $6a84: $00
    rst $38                                       ; $6a85: $ff
    nop                                           ; $6a86: $00
    ld a, a                                       ; $6a87: $7f
    add b                                         ; $6a88: $80
    xor a                                         ; $6a89: $af
    ld d, b                                       ; $6a8a: $50
    xor e                                         ; $6a8b: $ab
    rst $38                                       ; $6a8c: $ff
    rst $28                                       ; $6a8d: $ef
    db $10                                        ; $6a8e: $10
    rst $30                                       ; $6a8f: $f7
    ld [$0280], sp                                ; $6a90: $08 $80 $02
    nop                                           ; $6a93: $00
    ld [bc], a                                    ; $6a94: $02
    add b                                         ; $6a95: $80
    ld [bc], a                                    ; $6a96: $02
    nop                                           ; $6a97: $00
    ld [bc], a                                    ; $6a98: $02
    add b                                         ; $6a99: $80
    ld [bc], a                                    ; $6a9a: $02
    nop                                           ; $6a9b: $00
    sub a                                         ; $6a9c: $97
    add b                                         ; $6a9d: $80
    nop                                           ; $6a9e: $00
    add b                                         ; $6a9f: $80
    rst $08                                       ; $6aa0: $cf
    rst $38                                       ; $6aa1: $ff
    ld d, l                                       ; $6aa2: $55
    xor a                                         ; $6aa3: $af
    dec sp                                        ; $6aa4: $3b
    rst $08                                       ; $6aa5: $cf
    push de                                       ; $6aa6: $d5
    xor a                                         ; $6aa7: $af
    dec hl                                        ; $6aa8: $2b
    rst $18                                       ; $6aa9: $df
    rst $10                                       ; $6aaa: $d7
    xor a                                         ; $6aab: $af
    db $db                                        ; $6aac: $db
    rst $38                                       ; $6aad: $ff
    push af                                       ; $6aae: $f5
    rrca                                          ; $6aaf: $0f
    ei                                            ; $6ab0: $fb
    rrca                                          ; $6ab1: $0f
    ld a, [bc]                                    ; $6ab2: $0a
    dec c                                         ; $6ab3: $0d
    ld [bc], a                                    ; $6ab4: $02
    rra                                           ; $6ab5: $1f
    sbc d                                         ; $6ab6: $9a
    cpl                                           ; $6ab7: $2f
    ccf                                           ; $6ab8: $3f
    dec h                                         ; $6ab9: $25
    ld a, [hl-]                                   ; $6aba: $3a
    ld a, [hl+]                                   ; $6abb: $2a
    scf                                           ; $6abc: $37
    dec h                                         ; $6abd: $25
    ld a, [hl-]                                   ; $6abe: $3a
    ld e, e                                       ; $6abf: $5b
    ld a, [hl]                                    ; $6ac0: $7e
    xor a                                         ; $6ac1: $af
    rst $38                                       ; $6ac2: $ff
    sub a                                         ; $6ac3: $97
    rst $38                                       ; $6ac4: $ff
    adc e                                         ; $6ac5: $8b
    db $f4                                        ; $6ac6: $f4
    sub a                                         ; $6ac7: $97
    db $ec                                        ; $6ac8: $ec
    xor c                                         ; $6ac9: $a9
    sub $76                                       ; $6aca: $d6 $76
    ld l, l                                       ; $6acc: $6d
    ld de, $0e1e                                  ; $6acd: $11 $1e $0e
    dec c                                         ; $6ad0: $0d
    ld [bc], a                                    ; $6ad1: $02
    inc bc                                        ; $6ad2: $03
    add h                                         ; $6ad3: $84
    cp $01                                        ; $6ad4: $fe $01
    ld [hl], l                                    ; $6ad6: $75
    adc d                                         ; $6ad7: $8a
    ld [bc], a                                    ; $6ad8: $02
    rst $38                                       ; $6ad9: $ff
    adc b                                         ; $6ada: $88
    ld e, a                                       ; $6adb: $5f
    and b                                         ; $6adc: $a0
    rst $38                                       ; $6add: $ff
    nop                                           ; $6ade: $00
    rst $38                                       ; $6adf: $ff
    nop                                           ; $6ae0: $00
    xor a                                         ; $6ae1: $af
    ld d, b                                       ; $6ae2: $50
    inc b                                         ; $6ae3: $04
    rst $38                                       ; $6ae4: $ff
    adc h                                         ; $6ae5: $8c
    ei                                            ; $6ae6: $fb
    inc b                                         ; $6ae7: $04
    cp $01                                        ; $6ae8: $fe $01
    db $fd                                        ; $6aea: $fd
    ld [bc], a                                    ; $6aeb: $02
    rst $38                                       ; $6aec: $ff
    nop                                           ; $6aed: $00
    rst $38                                       ; $6aee: $ff
    nop                                           ; $6aef: $00
    xor a                                         ; $6af0: $af
    ld d, b                                       ; $6af1: $50
    ld [bc], a                                    ; $6af2: $02
    rst $38                                       ; $6af3: $ff
    add h                                         ; $6af4: $84
    ccf                                           ; $6af5: $3f
    ret nz                                        ; $6af6: $c0

    push de                                       ; $6af7: $d5
    xor d                                         ; $6af8: $aa
    ld [bc], a                                    ; $6af9: $02
    rst $38                                       ; $6afa: $ff
    adc b                                         ; $6afb: $88
    xor a                                         ; $6afc: $af
    ld d, b                                       ; $6afd: $50
    ld a, a                                       ; $6afe: $7f
    add b                                         ; $6aff: $80
    cp $01                                        ; $6b00: $fe $01
    push de                                       ; $6b02: $d5
    ld a, [hl+]                                   ; $6b03: $2a
    inc b                                         ; $6b04: $04
    rst $38                                       ; $6b05: $ff
    adc h                                         ; $6b06: $8c
    ld e, a                                       ; $6b07: $5f
    and b                                         ; $6b08: $a0
    cp a                                          ; $6b09: $bf
    ld b, b                                       ; $6b0a: $40
    rst $38                                       ; $6b0b: $ff
    nop                                           ; $6b0c: $00
    rst $38                                       ; $6b0d: $ff
    nop                                           ; $6b0e: $00
    ld a, [$b505]                                 ; $6b0f: $fa $05 $b5
    ld c, d                                       ; $6b12: $4a
    ld [bc], a                                    ; $6b13: $02
    rst $38                                       ; $6b14: $ff
    add d                                         ; $6b15: $82
    ld d, b                                       ; $6b16: $50
    ldh a, [rSC]                                  ; $6b17: $f0 $02
    ld hl, sp-$76                                 ; $6b19: $f8 $8a
    db $f4                                        ; $6b1b: $f4
    db $fc                                        ; $6b1c: $fc
    adc h                                         ; $6b1d: $8c
    ld a, h                                       ; $6b1e: $7c
    ld d, h                                       ; $6b1f: $54
    db $fc                                        ; $6b20: $fc
    call z, Call_0f0_567c                         ; $6b21: $cc $7c $56
    cp $02                                        ; $6b24: $fe $02
    rst $38                                       ; $6b26: $ff
    adc [hl]                                      ; $6b27: $8e
    db $eb                                        ; $6b28: $eb
    rst $38                                       ; $6b29: $ff
    add l                                         ; $6b2a: $85
    ld a, a                                       ; $6b2b: $7f
    jp $a53f                                      ; $6b2c: $c3 $3f $a5


    ld a, a                                       ; $6b2f: $7f
    ld h, [hl]                                    ; $6b30: $66
    cp [hl]                                       ; $6b31: $be
    xor b                                         ; $6b32: $a8
    ld a, b                                       ; $6b33: $78
    ld [hl], b                                    ; $6b34: $70
    or b                                          ; $6b35: $b0
    ld [bc], a                                    ; $6b36: $02
    ret nz                                        ; $6b37: $c0

    rst $38                                       ; $6b38: $ff
    ld hl, $f70e                                  ; $6b39: $21 $0e $f7
    ld a, [bc]                                    ; $6b3c: $0a
    jp $c800                                      ; $6b3d: $c3 $00 $c8


    di                                            ; $6b40: $f3
    jp $c2fb                                      ; $6b41: $c3 $fb $c2


    inc bc                                        ; $6b44: $03
    jp z, $d307                                   ; $6b45: $ca $07 $d3

    push af                                       ; $6b48: $f5
    jp nc, $d2fd                                  ; $6b49: $d2 $fd $d2

    dec b                                         ; $6b4c: $05
    db $e3                                        ; $6b4d: $e3
    push af                                       ; $6b4e: $f5
    ld [c], a                                     ; $6b4f: $e2
    db $fd                                        ; $6b50: $fd
    ld [c], a                                     ; $6b51: $e2
    dec b                                         ; $6b52: $05
    ld a, [c]                                     ; $6b53: $f2
    pop af                                        ; $6b54: $f1
    ld a, [c]                                     ; $6b55: $f2
    ld sp, hl                                     ; $6b56: $f9
    ld a, [c]                                     ; $6b57: $f2
    ld bc, $09f2                                  ; $6b58: $01 $f2 $09
    ld [bc], a                                    ; $6b5b: $02
    ld a, h                                       ; $6b5c: $7c
    sbc [hl]                                      ; $6b5d: $9e
    di                                            ; $6b5e: $f3
    adc a                                         ; $6b5f: $8f
    ld sp, hl                                     ; $6b60: $f9
    adc $bc                                       ; $6b61: $ce $bc
    rst $20                                       ; $6b63: $e7
    ld c, [hl]                                    ; $6b64: $4e
    ld [hl], e                                    ; $6b65: $73
    inc sp                                        ; $6b66: $33
    dec a                                         ; $6b67: $3d
    add hl, bc                                    ; $6b68: $09
    rrca                                          ; $6b69: $0f
    rlca                                          ; $6b6a: $07
    ld b, $05                                     ; $6b6b: $06 $05
    ld b, $1c                                     ; $6b6d: $06 $1c
    rra                                           ; $6b6f: $1f
    ld a, [hl]                                    ; $6b70: $7e
    ld a, a                                       ; $6b71: $7f
    ld e, a                                       ; $6b72: $5f
    ld a, l                                       ; $6b73: $7d
    ld b, c                                       ; $6b74: $41
    ld a, [hl]                                    ; $6b75: $7e
    ld b, e                                       ; $6b76: $43
    ld a, h                                       ; $6b77: $7c
    ld b, e                                       ; $6b78: $43
    ld a, h                                       ; $6b79: $7c
    ld c, e                                       ; $6b7a: $4b
    ld a, a                                       ; $6b7b: $7f
    ld b, $01                                     ; $6b7c: $06 $01
    sub e                                         ; $6b7e: $93
    inc bc                                        ; $6b7f: $03
    ld [bc], a                                    ; $6b80: $02
    dec b                                         ; $6b81: $05
    ld b, $0a                                     ; $6b82: $06 $0a
    dec c                                         ; $6b84: $0d
    adc l                                         ; $6b85: $8d
    adc e                                         ; $6b86: $8b
    cp $7f                                        ; $6b87: $fe $7f
    jr nc, @-$2f                                  ; $6b89: $30 $cf

    nop                                           ; $6b8b: $00
    rst $38                                       ; $6b8c: $ff
    ld c, a                                       ; $6b8d: $4f
    rst $38                                       ; $6b8e: $ff
    or $f9                                        ; $6b8f: $f6 $f9
    or c                                          ; $6b91: $b1
    ld [bc], a                                    ; $6b92: $02
    rst $08                                       ; $6b93: $cf
    ld [bc], a                                    ; $6b94: $02
    ld a, a                                       ; $6b95: $7f
    add e                                         ; $6b96: $83
    ld sp, hl                                     ; $6b97: $f9
    rst $38                                       ; $6b98: $ff
    ld sp, hl                                     ; $6b99: $f9
    ld [bc], a                                    ; $6b9a: $02
    ldh [$8a], a                                  ; $6b9b: $e0 $8a
    ld hl, sp+$18                                 ; $6b9d: $f8 $18
    db $fc                                        ; $6b9f: $fc
    inc c                                         ; $6ba0: $0c
    ld a, [$f20e]                                 ; $6ba1: $fa $0e $f2
    ld e, $de                                     ; $6ba4: $1e $de
    ld a, $02                                     ; $6ba6: $3e $02
    cp $92                                        ; $6ba8: $fe $92
    ld a, $fe                                     ; $6baa: $3e $fe
    rra                                           ; $6bac: $1f
    ld sp, hl                                     ; $6bad: $f9
    rra                                           ; $6bae: $1f
    ldh a, [rIE]                                  ; $6baf: $f0 $ff
    ldh a, [$af]                                  ; $6bb1: $f0 $af
    ld [hl], b                                    ; $6bb3: $70
    ld a, $e1                                     ; $6bb4: $3e $e1
    cp $e1                                        ; $6bb6: $fe $e1
    rst $18                                       ; $6bb8: $df
    ld h, c                                       ; $6bb9: $61
    rst $38                                       ; $6bba: $ff
    ld b, c                                       ; $6bbb: $41
    ld [bc], a                                    ; $6bbc: $02
    ld [$0e87], sp                                ; $6bbd: $08 $87 $0e
    ld b, $01                                     ; $6bc0: $06 $01
    rrca                                          ; $6bc2: $0f
    rlca                                          ; $6bc3: $07
    dec bc                                        ; $6bc4: $0b
    add hl, bc                                    ; $6bc5: $09
    ld [bc], a                                    ; $6bc6: $02
    rrca                                          ; $6bc7: $0f
    sub [hl]                                      ; $6bc8: $96
    dec bc                                        ; $6bc9: $0b
    ld bc, $0b0f                                  ; $6bca: $01 $0f $0b
    rlca                                          ; $6bcd: $07
    pop af                                        ; $6bce: $f1
    rra                                           ; $6bcf: $1f
    jp c, $d636                                   ; $6bd0: $da $36 $d6

    ld a, $e2                                     ; $6bd3: $3e $e2
    ld a, $f6                                     ; $6bd5: $3e $f6
    ld l, $e2                                     ; $6bd7: $2e $e2
    ld a, $b4                                     ; $6bd9: $3e $b4
    ld l, h                                       ; $6bdb: $6c
    xor h                                         ; $6bdc: $ac
    ld a, h                                       ; $6bdd: $7c
    nop                                           ; $6bde: $00
    ld [bc], a                                    ; $6bdf: $02
    inc bc                                        ; $6be0: $03
    add h                                         ; $6be1: $84
    nop                                           ; $6be2: $00
    inc bc                                        ; $6be3: $03
    nop                                           ; $6be4: $00
    ld bc, $0303                                  ; $6be5: $01 $03 $03
    ld [bc], a                                    ; $6be8: $02
    rst $38                                       ; $6be9: $ff
    add a                                         ; $6bea: $87
    ld a, d                                       ; $6beb: $7a
    ld a, l                                       ; $6bec: $7d
    ld d, l                                       ; $6bed: $55
    ld l, d                                       ; $6bee: $6a
    ld c, e                                       ; $6bef: $4b
    ld a, h                                       ; $6bf0: $7c
    ld d, c                                       ; $6bf1: $51
    ld [bc], a                                    ; $6bf2: $02
    ld l, a                                       ; $6bf3: $6f
    cp $78                                        ; $6bf4: $fe $78
    ld d, [hl]                                    ; $6bf6: $56
    ld l, c                                       ; $6bf7: $69
    ld c, e                                       ; $6bf8: $4b
    ld a, l                                       ; $6bf9: $7d
    ld d, h                                       ; $6bfa: $54
    ld l, e                                       ; $6bfb: $6b
    ld c, c                                       ; $6bfc: $49
    ld a, a                                       ; $6bfd: $7f
    ld h, a                                       ; $6bfe: $67
    ld a, b                                       ; $6bff: $78
    ld bc, $fb03                                  ; $6c00: $01 $03 $fb
    rlca                                          ; $6c03: $07
    cp $03                                        ; $6c04: $fe $03
    cp $03                                        ; $6c06: $fe $03
    ld e, e                                       ; $6c08: $5b
    cp $ff                                        ; $6c09: $fe $ff
    cp $ff                                        ; $6c0b: $fe $ff
    cp $a3                                        ; $6c0d: $fe $a3
    ld e, [hl]                                    ; $6c0f: $5e
    di                                            ; $6c10: $f3
    ld c, $fd                                     ; $6c11: $0e $fd
    ld c, $5d                                     ; $6c13: $0e $5d
    cp $f5                                        ; $6c15: $fe $f5
    ld c, $f5                                     ; $6c17: $0e $f5
    ld c, $f4                                     ; $6c19: $0e $f4
    rrca                                          ; $6c1b: $0f
    push de                                       ; $6c1c: $d5
    ld l, $ac                                     ; $6c1d: $2e $ac
    rst $38                                       ; $6c1f: $ff
    ret nz                                        ; $6c20: $c0

    nop                                           ; $6c21: $00
    ret nz                                        ; $6c22: $c0

    nop                                           ; $6c23: $00
    ret nz                                        ; $6c24: $c0

    nop                                           ; $6c25: $00
    ret nz                                        ; $6c26: $c0

    nop                                           ; $6c27: $00
    ret nz                                        ; $6c28: $c0

    nop                                           ; $6c29: $00
    ret nz                                        ; $6c2a: $c0

    nop                                           ; $6c2b: $00
    ret nz                                        ; $6c2c: $c0

    nop                                           ; $6c2d: $00
    ret nz                                        ; $6c2e: $c0

    nop                                           ; $6c2f: $00
    pop af                                        ; $6c30: $f1
    rra                                           ; $6c31: $1f
    or e                                          ; $6c32: $b3
    ld e, a                                       ; $6c33: $5f
    ld sp, hl                                     ; $6c34: $f9
    rla                                           ; $6c35: $17
    jp nc, $663e                                  ; $6c36: $d2 $3e $66

    cp [hl]                                       ; $6c39: $be
    ld [c], a                                     ; $6c3a: $e2
    ld a, $26                                     ; $6c3b: $3e $26
    cp $c6                                        ; $6c3d: $fe $c6
    ld a, [hl]                                    ; $6c3f: $7e
    ld c, a                                       ; $6c40: $4f
    ld a, b                                       ; $6c41: $78
    ld d, a                                       ; $6c42: $57
    ld l, b                                       ; $6c43: $68
    ld c, a                                       ; $6c44: $4f
    ld a, b                                       ; $6c45: $78
    sub a                                         ; $6c46: $97
    add sp, -$5b                                  ; $6c47: $e8 $a5
    jp c, $ffd2                                   ; $6c49: $da $d2 $ff

    xor a                                         ; $6c4c: $af
    ret nc                                        ; $6c4d: $d0

    sbc [hl]                                      ; $6c4e: $9e
    pop af                                        ; $6c4f: $f1
    xor [hl]                                      ; $6c50: $ae
    pop de                                        ; $6c51: $d1
    sbc a                                         ; $6c52: $9f
    pop af                                        ; $6c53: $f1
    adc $f1                                       ; $6c54: $ce $f1
    sub c                                         ; $6c56: $91
    rst $38                                       ; $6c57: $ff
    xor a                                         ; $6c58: $af
    ret nc                                        ; $6c59: $d0

    sbc a                                         ; $6c5a: $9f
    ldh a, [$af]                                  ; $6c5b: $f0 $af
    ret nc                                        ; $6c5d: $d0

    rst $30                                       ; $6c5e: $f7
    ld hl, sp-$0b                                 ; $6c5f: $f8 $f5
    ld c, $f4                                     ; $6c61: $0e $f4
    rrca                                          ; $6c63: $0f
    di                                            ; $6c64: $f3
    ld c, $d2                                     ; $6c65: $0e $d2
    cpl                                           ; $6c67: $2f
    xor e                                         ; $6c68: $ab
    ld e, [hl]                                    ; $6c69: $5e
    ld e, d                                       ; $6c6a: $5a
    xor a                                         ; $6c6b: $af
    cp d                                          ; $6c6c: $ba
    rst $38                                       ; $6c6d: $ff
    db $fd                                        ; $6c6e: $fd
    inc bc                                        ; $6c6f: $03
    rst $38                                       ; $6c70: $ff
    nop                                           ; $6c71: $00
    rst $38                                       ; $6c72: $ff
    xor l                                         ; $6c73: $ad
    nop                                           ; $6c74: $00
    ld a, a                                       ; $6c75: $7f
    add b                                         ; $6c76: $80
    xor a                                         ; $6c77: $af
    ld d, b                                       ; $6c78: $50
    xor e                                         ; $6c79: $ab
    rst $38                                       ; $6c7a: $ff
    rst $28                                       ; $6c7b: $ef
    db $10                                        ; $6c7c: $10
    rst $30                                       ; $6c7d: $f7
    ld [$1ce3], sp                                ; $6c7e: $08 $e3 $1c
    ld c, [hl]                                    ; $6c81: $4e
    cp $de                                        ; $6c82: $fe $de
    ld a, [hl]                                    ; $6c84: $7e
    ld e, d                                       ; $6c85: $5a
    cp $b6                                        ; $6c86: $fe $b6
    cp $ab                                        ; $6c88: $fe $ab
    rst $38                                       ; $6c8a: $ff
    ld h, l                                       ; $6c8b: $65
    rst $18                                       ; $6c8c: $df
    rst $08                                       ; $6c8d: $cf
    rst $38                                       ; $6c8e: $ff
    ld d, l                                       ; $6c8f: $55
    xor a                                         ; $6c90: $af
    dec sp                                        ; $6c91: $3b
    rst $08                                       ; $6c92: $cf
    push de                                       ; $6c93: $d5
    xor a                                         ; $6c94: $af
    dec hl                                        ; $6c95: $2b
    rst $18                                       ; $6c96: $df
    rst $10                                       ; $6c97: $d7
    xor a                                         ; $6c98: $af
    db $db                                        ; $6c99: $db
    rst $38                                       ; $6c9a: $ff
    push af                                       ; $6c9b: $f5
    rrca                                          ; $6c9c: $0f
    ei                                            ; $6c9d: $fb
    rrca                                          ; $6c9e: $0f
    push af                                       ; $6c9f: $f5
    rrca                                          ; $6ca0: $0f
    ld [bc], a                                    ; $6ca1: $02
    db $10                                        ; $6ca2: $10
    sbc d                                         ; $6ca3: $9a
    cpl                                           ; $6ca4: $2f
    ccf                                           ; $6ca5: $3f
    dec h                                         ; $6ca6: $25
    ld a, [hl-]                                   ; $6ca7: $3a
    ld a, [hl+]                                   ; $6ca8: $2a
    scf                                           ; $6ca9: $37
    dec h                                         ; $6caa: $25
    ld a, [hl-]                                   ; $6cab: $3a
    ld e, e                                       ; $6cac: $5b
    ld a, [hl]                                    ; $6cad: $7e
    xor a                                         ; $6cae: $af
    rst $38                                       ; $6caf: $ff
    sub a                                         ; $6cb0: $97
    rst $38                                       ; $6cb1: $ff
    adc e                                         ; $6cb2: $8b
    db $f4                                        ; $6cb3: $f4
    sub a                                         ; $6cb4: $97
    db $ec                                        ; $6cb5: $ec
    xor c                                         ; $6cb6: $a9
    sub $76                                       ; $6cb7: $d6 $76
    ld l, l                                       ; $6cb9: $6d
    ld de, $0e1e                                  ; $6cba: $11 $1e $0e
    dec c                                         ; $6cbd: $0d
    ld [bc], a                                    ; $6cbe: $02
    inc bc                                        ; $6cbf: $03
    ld [bc], a                                    ; $6cc0: $02
    nop                                           ; $6cc1: $00
    add d                                         ; $6cc2: $82
    dec b                                         ; $6cc3: $05
    ld a, [bc]                                    ; $6cc4: $0a
    ld [bc], a                                    ; $6cc5: $02
    rst $38                                       ; $6cc6: $ff
    adc b                                         ; $6cc7: $88
    ld e, a                                       ; $6cc8: $5f
    and b                                         ; $6cc9: $a0
    rst $38                                       ; $6cca: $ff
    nop                                           ; $6ccb: $00
    rst $38                                       ; $6ccc: $ff
    nop                                           ; $6ccd: $00
    xor a                                         ; $6cce: $af
    ld d, b                                       ; $6ccf: $50
    inc b                                         ; $6cd0: $04
    rst $38                                       ; $6cd1: $ff
    adc h                                         ; $6cd2: $8c
    ei                                            ; $6cd3: $fb
    inc b                                         ; $6cd4: $04
    cp $01                                        ; $6cd5: $fe $01
    db $fd                                        ; $6cd7: $fd
    ld [bc], a                                    ; $6cd8: $02
    rst $38                                       ; $6cd9: $ff
    nop                                           ; $6cda: $00
    rst $38                                       ; $6cdb: $ff
    nop                                           ; $6cdc: $00
    xor a                                         ; $6cdd: $af
    ld d, b                                       ; $6cde: $50
    ld [bc], a                                    ; $6cdf: $02
    rst $38                                       ; $6ce0: $ff
    ld [bc], a                                    ; $6ce1: $02
    nop                                           ; $6ce2: $00
    add d                                         ; $6ce3: $82
    push de                                       ; $6ce4: $d5
    xor d                                         ; $6ce5: $aa
    ld [bc], a                                    ; $6ce6: $02
    rst $38                                       ; $6ce7: $ff
    adc b                                         ; $6ce8: $88
    xor a                                         ; $6ce9: $af
    ld d, b                                       ; $6cea: $50
    ld a, a                                       ; $6ceb: $7f
    add b                                         ; $6cec: $80
    cp $01                                        ; $6ced: $fe $01
    push de                                       ; $6cef: $d5
    ld a, [hl+]                                   ; $6cf0: $2a
    inc b                                         ; $6cf1: $04
    rst $38                                       ; $6cf2: $ff
    adc h                                         ; $6cf3: $8c
    ld e, a                                       ; $6cf4: $5f
    and b                                         ; $6cf5: $a0
    cp a                                          ; $6cf6: $bf
    ld b, b                                       ; $6cf7: $40
    rst $38                                       ; $6cf8: $ff
    nop                                           ; $6cf9: $00
    rst $38                                       ; $6cfa: $ff
    nop                                           ; $6cfb: $00
    ld a, [$b505]                                 ; $6cfc: $fa $05 $b5

Jump_0f0_6cff:
    ld c, d                                       ; $6cff: $4a
    ld [bc], a                                    ; $6d00: $02
    rst $38                                       ; $6d01: $ff
    ld [bc], a                                    ; $6d02: $02
    nop                                           ; $6d03: $00
    ld [bc], a                                    ; $6d04: $02
    ld hl, sp-$76                                 ; $6d05: $f8 $8a
    db $f4                                        ; $6d07: $f4
    db $fc                                        ; $6d08: $fc
    adc h                                         ; $6d09: $8c
    ld a, h                                       ; $6d0a: $7c
    ld d, h                                       ; $6d0b: $54
    db $fc                                        ; $6d0c: $fc
    call z, Call_0f0_567c                         ; $6d0d: $cc $7c $56
    cp $02                                        ; $6d10: $fe $02
    rst $38                                       ; $6d12: $ff
    adc [hl]                                      ; $6d13: $8e
    db $eb                                        ; $6d14: $eb
    rst $38                                       ; $6d15: $ff
    add l                                         ; $6d16: $85
    ld a, a                                       ; $6d17: $7f
    jp $a53f                                      ; $6d18: $c3 $3f $a5


    ld a, a                                       ; $6d1b: $7f
    ld h, [hl]                                    ; $6d1c: $66
    cp [hl]                                       ; $6d1d: $be
    xor b                                         ; $6d1e: $a8
    ld a, b                                       ; $6d1f: $78
    ld [hl], b                                    ; $6d20: $70
    or b                                          ; $6d21: $b0
    ld [bc], a                                    ; $6d22: $02
    ret nz                                        ; $6d23: $c0

    ld [bc], a                                    ; $6d24: $02
    nop                                           ; $6d25: $00
    rst $38                                       ; $6d26: $ff
    ld hl, $f70e                                  ; $6d27: $21 $0e $f7
    ld a, [bc]                                    ; $6d2a: $0a
    jp $c800                                      ; $6d2b: $c3 $00 $c8


    db $f4                                        ; $6d2e: $f4
    jp $c2fc                                      ; $6d2f: $c3 $fc $c2


    inc b                                         ; $6d32: $04
    call z, $d307                                 ; $6d33: $cc $07 $d3
    push af                                       ; $6d36: $f5
    jp nc, $d2fd                                  ; $6d37: $d2 $fd $d2

    dec b                                         ; $6d3a: $05
    db $e3                                        ; $6d3b: $e3
    push af                                       ; $6d3c: $f5
    ld [c], a                                     ; $6d3d: $e2
    db $fd                                        ; $6d3e: $fd
    ld [c], a                                     ; $6d3f: $e2
    dec b                                         ; $6d40: $05
    ld a, [c]                                     ; $6d41: $f2
    pop af                                        ; $6d42: $f1
    ld a, [c]                                     ; $6d43: $f2
    ld sp, hl                                     ; $6d44: $f9
    ld a, [c]                                     ; $6d45: $f2
    ld bc, $09f2                                  ; $6d46: $01 $f2 $09
    ld [bc], a                                    ; $6d49: $02
    ld a, h                                       ; $6d4a: $7c
    sbc [hl]                                      ; $6d4b: $9e
    di                                            ; $6d4c: $f3
    adc a                                         ; $6d4d: $8f
    cp c                                          ; $6d4e: $b9
    adc $bc                                       ; $6d4f: $ce $bc
    rst $20                                       ; $6d51: $e7
    ld c, [hl]                                    ; $6d52: $4e
    ld [hl], e                                    ; $6d53: $73
    inc sp                                        ; $6d54: $33
    dec a                                         ; $6d55: $3d
    add hl, bc                                    ; $6d56: $09
    ld c, $05                                     ; $6d57: $0e $05
    rlca                                          ; $6d59: $07
    ld c, $0f                                     ; $6d5a: $0e $0f
    ld a, $3b                                     ; $6d5c: $3e $3b
    ei                                            ; $6d5e: $fb
    db $fd                                        ; $6d5f: $fd
    cp a                                          ; $6d60: $bf
    ld hl, sp-$7d                                 ; $6d61: $f8 $83
    db $fc                                        ; $6d63: $fc
    add a                                         ; $6d64: $87
    ld hl, sp-$7a                                 ; $6d65: $f8 $86
    ld sp, hl                                     ; $6d67: $f9
    sub a                                         ; $6d68: $97
    rst $38                                       ; $6d69: $ff
    ld b, $01                                     ; $6d6a: $06 $01
    sub l                                         ; $6d6c: $95
    inc bc                                        ; $6d6d: $03
    ld [bc], a                                    ; $6d6e: $02
    dec b                                         ; $6d6f: $05
    ld b, $0a                                     ; $6d70: $06 $0a
    dec c                                         ; $6d72: $0d
    adc l                                         ; $6d73: $8d
    adc e                                         ; $6d74: $8b
    cp $7f                                        ; $6d75: $fe $7f
    jr nc, @-$2f                                  ; $6d77: $30 $cf

    nop                                           ; $6d79: $00
    rst $38                                       ; $6d7a: $ff
    ld b, a                                       ; $6d7b: $47
    rst $38                                       ; $6d7c: $ff
    ei                                            ; $6d7d: $fb
    db $fc                                        ; $6d7e: $fc
    ret c                                         ; $6d7f: $d8

    ld h, a                                       ; $6d80: $67
    rst $20                                       ; $6d81: $e7
    ld [bc], a                                    ; $6d82: $02
    ccf                                           ; $6d83: $3f
    add e                                         ; $6d84: $83
    ld a, [$f27f]                                 ; $6d85: $fa $7f $f2
    ld [bc], a                                    ; $6d88: $02
    ldh [$8a], a                                  ; $6d89: $e0 $8a
    ld hl, sp+$18                                 ; $6d8b: $f8 $18
    db $fc                                        ; $6d8d: $fc
    inc c                                         ; $6d8e: $0c
    ld a, [$f20e]                                 ; $6d8f: $fa $0e $f2
    ld e, $de                                     ; $6d92: $1e $de
    ld a, $02                                     ; $6d94: $3e $02
    cp $92                                        ; $6d96: $fe $92
    ld a, [hl-]                                   ; $6d98: $3a
    ld a, [$fc1c]                                 ; $6d99: $fa $1c $fc
    cpl                                           ; $6d9c: $2f
    di                                            ; $6d9d: $f3
    rst $38                                       ; $6d9e: $ff
    ldh [$be], a                                  ; $6d9f: $e0 $be
    ld h, c                                       ; $6da1: $61
    ld e, [hl]                                    ; $6da2: $5e
    pop hl                                        ; $6da3: $e1
    db $fd                                        ; $6da4: $fd
    jp $c3fd                                      ; $6da5: $c3 $fd $c3


    cp [hl]                                       ; $6da8: $be
    jp $0602                                      ; $6da9: $c3 $02 $06


    add c                                         ; $6dac: $81
    ld bc, $0702                                  ; $6dad: $01 $02 $07
    add d                                         ; $6db0: $82
    inc bc                                        ; $6db1: $03
    ld bc, $0702                                  ; $6db2: $01 $02 $07
    sub a                                         ; $6db5: $97
    inc bc                                        ; $6db6: $03
    ld bc, $fb07                                  ; $6db7: $01 $07 $fb
    rla                                           ; $6dba: $17
    pop af                                        ; $6dbb: $f1
    rra                                           ; $6dbc: $1f
    jp c, $d636                                   ; $6dbd: $da $36 $d6

    ld a, $e2                                     ; $6dc0: $3e $e2
    ld a, $f6                                     ; $6dc2: $3e $f6
    ld l, $e2                                     ; $6dc4: $2e $e2
    ld a, $b4                                     ; $6dc6: $3e $b4
    ld l, h                                       ; $6dc8: $6c
    xor h                                         ; $6dc9: $ac
    ld a, h                                       ; $6dca: $7c
    call nz, $037c                                ; $6dcb: $c4 $7c $03
    ld bc, $0083                                  ; $6dce: $01 $83 $00
    ld bc, $0400                                  ; $6dd1: $01 $00 $04
    ld bc, $ff02                                  ; $6dd4: $01 $02 $ff
    add a                                         ; $6dd7: $87
    ld a, d                                       ; $6dd8: $7a
    ld a, l                                       ; $6dd9: $7d
    ld d, l                                       ; $6dda: $55
    ld l, d                                       ; $6ddb: $6a
    ld c, e                                       ; $6ddc: $4b
    ld a, h                                       ; $6ddd: $7c
    ld d, c                                       ; $6dde: $51
    ld [bc], a                                    ; $6ddf: $02
    ld l, a                                       ; $6de0: $6f
    adc e                                         ; $6de1: $8b
    ld a, b                                       ; $6de2: $78
    ld d, [hl]                                    ; $6de3: $56
    ld l, c                                       ; $6de4: $69
    ld c, e                                       ; $6de5: $4b
    ld a, l                                       ; $6de6: $7d
    ld d, h                                       ; $6de7: $54
    ld l, e                                       ; $6de8: $6b
    ld c, c                                       ; $6de9: $49
    ld a, a                                       ; $6dea: $7f
    ld h, a                                       ; $6deb: $67
    ld a, b                                       ; $6dec: $78
    ld [bc], a                                    ; $6ded: $02
    ld bc, $3d87                                  ; $6dee: $01 $87 $3d
    rst $00                                       ; $6df1: $c7
    rst $38                                       ; $6df2: $ff
    inc bc                                        ; $6df3: $03
    cp $03                                        ; $6df4: $fe $03
    ld e, d                                       ; $6df6: $5a
    ld [bc], a                                    ; $6df7: $02
    rst $38                                       ; $6df8: $ff
    cp $fe                                        ; $6df9: $fe $fe
    rst $38                                       ; $6dfb: $ff
    cp $a3                                        ; $6dfc: $fe $a3
    ld e, [hl]                                    ; $6dfe: $5e
    di                                            ; $6dff: $f3
    ld c, $fb                                     ; $6e00: $0e $fb
    ld c, $5d                                     ; $6e02: $0e $5d
    cp $f5                                        ; $6e04: $fe $f5
    ld c, $f5                                     ; $6e06: $0e $f5
    ld c, $f5                                     ; $6e08: $0e $f5
    ld c, $d4                                     ; $6e0a: $0e $d4
    cpl                                           ; $6e0c: $2f
    xor l                                         ; $6e0d: $ad
    cp $c0                                        ; $6e0e: $fe $c0
    nop                                           ; $6e10: $00
    ret nz                                        ; $6e11: $c0

    nop                                           ; $6e12: $00
    ret nz                                        ; $6e13: $c0

    nop                                           ; $6e14: $00
    ret nz                                        ; $6e15: $c0

    nop                                           ; $6e16: $00
    ret nz                                        ; $6e17: $c0

    nop                                           ; $6e18: $00
    ret nz                                        ; $6e19: $c0

    nop                                           ; $6e1a: $00
    ret nz                                        ; $6e1b: $c0

    nop                                           ; $6e1c: $00
    ret nz                                        ; $6e1d: $c0

    nop                                           ; $6e1e: $00
    ret nz                                        ; $6e1f: $c0

    nop                                           ; $6e20: $00
    ret nz                                        ; $6e21: $c0

    nop                                           ; $6e22: $00
    or e                                          ; $6e23: $b3
    ld e, a                                       ; $6e24: $5f
    ld sp, hl                                     ; $6e25: $f9
    rla                                           ; $6e26: $17
    jp nc, $663e                                  ; $6e27: $d2 $3e $66

    cp [hl]                                       ; $6e2a: $be
    ld [c], a                                     ; $6e2b: $e2
    ld a, $26                                     ; $6e2c: $3e $26
    cp $4f                                        ; $6e2e: $fe $4f
    ld a, b                                       ; $6e30: $78
    ld d, a                                       ; $6e31: $57
    ld l, b                                       ; $6e32: $68
    ld c, a                                       ; $6e33: $4f
    ld a, b                                       ; $6e34: $78
    sub a                                         ; $6e35: $97
    add sp, -$5b                                  ; $6e36: $e8 $a5
    jp c, $ffd2                                   ; $6e38: $da $d2 $ff

    xor a                                         ; $6e3b: $af
    ret nc                                        ; $6e3c: $d0

    sbc [hl]                                      ; $6e3d: $9e
    pop af                                        ; $6e3e: $f1
    xor [hl]                                      ; $6e3f: $ae
    pop de                                        ; $6e40: $d1
    sbc a                                         ; $6e41: $9f
    pop af                                        ; $6e42: $f1
    adc $f1                                       ; $6e43: $ce $f1
    sub c                                         ; $6e45: $91
    rst $38                                       ; $6e46: $ff
    xor a                                         ; $6e47: $af
    ret nc                                        ; $6e48: $d0

    sbc a                                         ; $6e49: $9f
    ldh a, [$af]                                  ; $6e4a: $f0 $af
    ret nc                                        ; $6e4c: $d0

    rst $30                                       ; $6e4d: $f7
    ld hl, sp-$0c                                 ; $6e4e: $f8 $f4
    rrca                                          ; $6e50: $0f
    push af                                       ; $6e51: $f5
    ld c, $f4                                     ; $6e52: $0e $f4
    rrca                                          ; $6e54: $0f
    db $d3                                        ; $6e55: $d3
    ld l, $aa                                     ; $6e56: $2e $aa
    ld e, a                                       ; $6e58: $5f
    ld e, e                                       ; $6e59: $5b
    xor [hl]                                      ; $6e5a: $ae
    cp d                                          ; $6e5b: $ba
    rst $38                                       ; $6e5c: $ff
    cp $03                                        ; $6e5d: $fe $03
    rst $38                                       ; $6e5f: $ff
    ld bc, $00ff                                  ; $6e60: $01 $ff $00
    ld a, a                                       ; $6e63: $7f
    add b                                         ; $6e64: $80
    xor a                                         ; $6e65: $af
    ld d, b                                       ; $6e66: $50
    xor e                                         ; $6e67: $ab
    rst $38                                       ; $6e68: $ff
    rst $28                                       ; $6e69: $ef
    db $10                                        ; $6e6a: $10
    rst $30                                       ; $6e6b: $f7
    ld [$1ce3], sp                                ; $6e6c: $08 $e3 $1c
    add $7e                                       ; $6e6f: $c6 $7e
    ld c, [hl]                                    ; $6e71: $4e
    cp $da                                        ; $6e72: $fe $da
    ld a, [hl]                                    ; $6e74: $7e
    ld d, [hl]                                    ; $6e75: $56
    cp $ab                                        ; $6e76: $fe $ab
    sub a                                         ; $6e78: $97
    rst $38                                       ; $6e79: $ff
    and l                                         ; $6e7a: $a5
    rst $38                                       ; $6e7b: $ff
    ld c, a                                       ; $6e7c: $4f
    rst $38                                       ; $6e7d: $ff
    push de                                       ; $6e7e: $d5
    xor a                                         ; $6e7f: $af
    dec sp                                        ; $6e80: $3b
    rst $08                                       ; $6e81: $cf
    push de                                       ; $6e82: $d5
    xor a                                         ; $6e83: $af
    dec hl                                        ; $6e84: $2b
    rst $18                                       ; $6e85: $df
    rst $10                                       ; $6e86: $d7
    xor a                                         ; $6e87: $af
    db $db                                        ; $6e88: $db
    rst $38                                       ; $6e89: $ff
    push af                                       ; $6e8a: $f5
    rrca                                          ; $6e8b: $0f
    ei                                            ; $6e8c: $fb
    rrca                                          ; $6e8d: $0f
    push af                                       ; $6e8e: $f5
    rrca                                          ; $6e8f: $0f
    ld [bc], a                                    ; $6e90: $02
    db $10                                        ; $6e91: $10
    sbc d                                         ; $6e92: $9a
    cpl                                           ; $6e93: $2f
    ccf                                           ; $6e94: $3f
    dec h                                         ; $6e95: $25
    ld a, [hl-]                                   ; $6e96: $3a
    ld a, [hl+]                                   ; $6e97: $2a
    scf                                           ; $6e98: $37
    dec h                                         ; $6e99: $25
    ld a, [hl-]                                   ; $6e9a: $3a
    ld e, e                                       ; $6e9b: $5b
    ld a, [hl]                                    ; $6e9c: $7e
    xor a                                         ; $6e9d: $af
    rst $38                                       ; $6e9e: $ff
    sub a                                         ; $6e9f: $97
    rst $38                                       ; $6ea0: $ff
    adc e                                         ; $6ea1: $8b
    db $f4                                        ; $6ea2: $f4
    sub a                                         ; $6ea3: $97
    db $ec                                        ; $6ea4: $ec
    xor c                                         ; $6ea5: $a9
    sub $76                                       ; $6ea6: $d6 $76
    ld l, l                                       ; $6ea8: $6d
    ld de, $0e1e                                  ; $6ea9: $11 $1e $0e
    dec c                                         ; $6eac: $0d
    ld [bc], a                                    ; $6ead: $02
    inc bc                                        ; $6eae: $03
    ld [bc], a                                    ; $6eaf: $02
    nop                                           ; $6eb0: $00
    add d                                         ; $6eb1: $82
    dec b                                         ; $6eb2: $05
    ld a, [bc]                                    ; $6eb3: $0a
    ld [bc], a                                    ; $6eb4: $02
    rst $38                                       ; $6eb5: $ff
    adc b                                         ; $6eb6: $88
    ld e, a                                       ; $6eb7: $5f
    and b                                         ; $6eb8: $a0
    rst $38                                       ; $6eb9: $ff
    nop                                           ; $6eba: $00
    rst $38                                       ; $6ebb: $ff
    nop                                           ; $6ebc: $00
    xor a                                         ; $6ebd: $af
    ld d, b                                       ; $6ebe: $50
    inc b                                         ; $6ebf: $04
    rst $38                                       ; $6ec0: $ff
    adc h                                         ; $6ec1: $8c
    ei                                            ; $6ec2: $fb
    inc b                                         ; $6ec3: $04
    cp $01                                        ; $6ec4: $fe $01
    db $fd                                        ; $6ec6: $fd
    ld [bc], a                                    ; $6ec7: $02
    rst $38                                       ; $6ec8: $ff
    nop                                           ; $6ec9: $00
    rst $38                                       ; $6eca: $ff
    nop                                           ; $6ecb: $00
    xor a                                         ; $6ecc: $af
    ld d, b                                       ; $6ecd: $50
    ld [bc], a                                    ; $6ece: $02
    rst $38                                       ; $6ecf: $ff
    ld [bc], a                                    ; $6ed0: $02
    nop                                           ; $6ed1: $00
    add d                                         ; $6ed2: $82
    push de                                       ; $6ed3: $d5
    xor d                                         ; $6ed4: $aa
    ld [bc], a                                    ; $6ed5: $02
    rst $38                                       ; $6ed6: $ff
    adc b                                         ; $6ed7: $88
    xor a                                         ; $6ed8: $af
    ld d, b                                       ; $6ed9: $50
    ld a, a                                       ; $6eda: $7f
    add b                                         ; $6edb: $80
    cp $01                                        ; $6edc: $fe $01
    push de                                       ; $6ede: $d5
    ld a, [hl+]                                   ; $6edf: $2a
    inc b                                         ; $6ee0: $04
    rst $38                                       ; $6ee1: $ff
    adc h                                         ; $6ee2: $8c
    ld e, a                                       ; $6ee3: $5f
    and b                                         ; $6ee4: $a0
    cp a                                          ; $6ee5: $bf
    ld b, b                                       ; $6ee6: $40
    rst $38                                       ; $6ee7: $ff
    nop                                           ; $6ee8: $00
    rst $38                                       ; $6ee9: $ff
    nop                                           ; $6eea: $00
    ld a, [$b505]                                 ; $6eeb: $fa $05 $b5
    ld c, d                                       ; $6eee: $4a
    ld [bc], a                                    ; $6eef: $02
    rst $38                                       ; $6ef0: $ff
    ld [bc], a                                    ; $6ef1: $02
    nop                                           ; $6ef2: $00
    ld [bc], a                                    ; $6ef3: $02
    ld hl, sp-$76                                 ; $6ef4: $f8 $8a
    db $f4                                        ; $6ef6: $f4
    db $fc                                        ; $6ef7: $fc
    adc h                                         ; $6ef8: $8c
    ld a, h                                       ; $6ef9: $7c
    ld d, h                                       ; $6efa: $54
    db $fc                                        ; $6efb: $fc
    call z, Call_0f0_567c                         ; $6efc: $cc $7c $56
    cp $02                                        ; $6eff: $fe $02
    rst $38                                       ; $6f01: $ff
    adc [hl]                                      ; $6f02: $8e
    db $eb                                        ; $6f03: $eb
    rst $38                                       ; $6f04: $ff
    add l                                         ; $6f05: $85
    ld a, a                                       ; $6f06: $7f
    jp $a53f                                      ; $6f07: $c3 $3f $a5


    ld a, a                                       ; $6f0a: $7f
    ld h, [hl]                                    ; $6f0b: $66
    cp [hl]                                       ; $6f0c: $be
    xor b                                         ; $6f0d: $a8
    ld a, b                                       ; $6f0e: $78
    ld [hl], b                                    ; $6f0f: $70
    or b                                          ; $6f10: $b0
    ld [bc], a                                    ; $6f11: $02
    ret nz                                        ; $6f12: $c0

    ld [bc], a                                    ; $6f13: $02
    nop                                           ; $6f14: $00
    rst $38                                       ; $6f15: $ff
    ld hl, $f70e                                  ; $6f16: $21 $0e $f7
    ld a, [bc]                                    ; $6f19: $0a
    jp $c900                                      ; $6f1a: $c3 $00 $c9


    db $f4                                        ; $6f1d: $f4
    jp $c2fc                                      ; $6f1e: $c3 $fc $c2


    inc b                                         ; $6f21: $04
    call z, $d308                                 ; $6f22: $cc $08 $d3
    or $d2                                        ; $6f25: $f6 $d2
    cp $d2                                        ; $6f27: $fe $d2
    ld b, $e3                                     ; $6f29: $06 $e3
    push af                                       ; $6f2b: $f5
    ld [c], a                                     ; $6f2c: $e2
    db $fd                                        ; $6f2d: $fd
    ld [c], a                                     ; $6f2e: $e2
    dec b                                         ; $6f2f: $05
    ld a, [c]                                     ; $6f30: $f2
    pop af                                        ; $6f31: $f1
    ld a, [c]                                     ; $6f32: $f2
    ld sp, hl                                     ; $6f33: $f9
    ld a, [c]                                     ; $6f34: $f2
    ld bc, $09f2                                  ; $6f35: $01 $f2 $09
    ld [bc], a                                    ; $6f38: $02
    ld a, a                                       ; $6f39: $7f
    adc b                                         ; $6f3a: $88

Call_0f0_6f3b:
    di                                            ; $6f3b: $f3
    adc h                                         ; $6f3c: $8c
    cp [hl]                                       ; $6f3d: $be
    rst $20                                       ; $6f3e: $e7
    ld b, a                                       ; $6f3f: $47
    ld a, c                                       ; $6f40: $79
    ld sp, $023e                                  ; $6f41: $31 $3e $02
    rrca                                          ; $6f44: $0f
    ld [bc], a                                    ; $6f45: $02
    ld bc, $0f02                                  ; $6f46: $01 $02 $0f
    adc [hl]                                      ; $6f49: $8e
    ld a, $39                                     ; $6f4a: $3e $39
    ei                                            ; $6f4c: $fb
    db $fc                                        ; $6f4d: $fc
    cp a                                          ; $6f4e: $bf
    ld hl, sp-$7d                                 ; $6f4f: $f8 $83
    db $fc                                        ; $6f51: $fc
    add a                                         ; $6f52: $87
    ld hl, sp-$7a                                 ; $6f53: $f8 $86
    ld sp, hl                                     ; $6f55: $f9
    sub a                                         ; $6f56: $97
    rst $38                                       ; $6f57: $ff
    ld [bc], a                                    ; $6f58: $02
    ld a, a                                       ; $6f59: $7f
    ld b, $01                                     ; $6f5a: $06 $01
    sub l                                         ; $6f5c: $95
    inc bc                                        ; $6f5d: $03
    ld [bc], a                                    ; $6f5e: $02
    dec b                                         ; $6f5f: $05
    ld b, $0a                                     ; $6f60: $06 $0a
    dec c                                         ; $6f62: $0d
    adc l                                         ; $6f63: $8d
    adc e                                         ; $6f64: $8b
    ld a, [hl]                                    ; $6f65: $7e
    rst $38                                       ; $6f66: $ff
    ld sp, $decf                                  ; $6f67: $31 $cf $de
    rst $38                                       ; $6f6a: $ff
    xor $b1                                       ; $6f6b: $ee $b1
    ld [hl], e                                    ; $6f6d: $73
    sbc a                                         ; $6f6e: $9f
    ld e, $ff                                     ; $6f6f: $1e $ff
    cp a                                          ; $6f71: $bf
    ld [bc], a                                    ; $6f72: $02
    rst $38                                       ; $6f73: $ff
    add e                                         ; $6f74: $83
    di                                            ; $6f75: $f3
    rst $38                                       ; $6f76: $ff
    di                                            ; $6f77: $f3
    ld [bc], a                                    ; $6f78: $02
    ldh [$8a], a                                  ; $6f79: $e0 $8a
    ld hl, sp+$18                                 ; $6f7b: $f8 $18
    db $fc                                        ; $6f7d: $fc
    inc c                                         ; $6f7e: $0c
    ld a, [$f20e]                                 ; $6f7f: $fa $0e $f2
    ld e, $de                                     ; $6f82: $1e $de
    ld a, $02                                     ; $6f84: $3e $02
    cp $84                                        ; $6f86: $fe $84
    ld a, [hl-]                                   ; $6f88: $3a
    ld a, [$f818]                                 ; $6f89: $fa $18 $f8
    ld [bc], a                                    ; $6f8c: $02
    cp $8c                                        ; $6f8d: $fe $8c
    ei                                            ; $6f8f: $fb
    dec e                                         ; $6f90: $1d
    ld l, a                                       ; $6f91: $6f
    ld hl, sp-$31                                 ; $6f92: $f8 $cf
    ld hl, sp-$49                                 ; $6f94: $f8 $b7
    ld hl, sp+$7f                                 ; $6f96: $f8 $7f
    ldh a, [$fe]                                  ; $6f98: $f0 $fe
    pop af                                        ; $6f9a: $f1
    ld [bc], a                                    ; $6f9b: $02
    ld [$0e87], sp                                ; $6f9c: $08 $87 $0e
    ld b, $01                                     ; $6f9f: $06 $01
    rrca                                          ; $6fa1: $0f
    rlca                                          ; $6fa2: $07
    dec bc                                        ; $6fa3: $0b
    add hl, bc                                    ; $6fa4: $09
    ld [bc], a                                    ; $6fa5: $02
    rrca                                          ; $6fa6: $0f
    sbc h                                         ; $6fa7: $9c
    dec bc                                        ; $6fa8: $0b
    jp hl                                         ; $6fa9: $e9


    rra                                           ; $6faa: $1f
    ei                                            ; $6fab: $fb
    rla                                           ; $6fac: $17
    pop af                                        ; $6fad: $f1
    rra                                           ; $6fae: $1f
    ld a, [$d616]                                 ; $6faf: $fa $16 $d6
    ld a, $d2                                     ; $6fb2: $3e $d2
    ld a, $f6                                     ; $6fb4: $3e $f6
    ld l, $e2                                     ; $6fb6: $2e $e2
    ld a, $f4                                     ; $6fb8: $3e $f4
    inc l                                         ; $6fba: $2c
    xor h                                         ; $6fbb: $ac
    ld a, h                                       ; $6fbc: $7c
    inc bc                                        ; $6fbd: $03
    nop                                           ; $6fbe: $00
    inc bc                                        ; $6fbf: $03
    nop                                           ; $6fc0: $00
    inc bc                                        ; $6fc1: $03
    nop                                           ; $6fc2: $00
    ld [bc], a                                    ; $6fc3: $02
    dec b                                         ; $6fc4: $05
    inc bc                                        ; $6fc5: $03
    add a                                         ; $6fc6: $87
    push af                                       ; $6fc7: $f5
    ld a, [$d4ab]                                 ; $6fc8: $fa $ab $d4
    sub a                                         ; $6fcb: $97
    ld hl, sp-$5e                                 ; $6fcc: $f8 $a2
    ld [bc], a                                    ; $6fce: $02
    rst $18                                       ; $6fcf: $df
    sub h                                         ; $6fd0: $94
    ldh a, [$ad]                                  ; $6fd1: $f0 $ad
    jp nc, $fa97                                  ; $6fd3: $d2 $97 $fa

    xor c                                         ; $6fd6: $a9
    sub $93                                       ; $6fd7: $d6 $93
    rst $38                                       ; $6fd9: $ff
    rst $08                                       ; $6fda: $cf
    ldh a, [$03]                                  ; $6fdb: $f0 $03
    ld [bc], a                                    ; $6fdd: $02
    rst $30                                       ; $6fde: $f7
    ld a, [bc]                                    ; $6fdf: $0a
    ld a, [$ff07]                                 ; $6fe0: $fa $07 $ff
    ld bc, $05b5                                  ; $6fe3: $01 $b5 $05
    rst $38                                       ; $6fe6: $ff
    sub e                                         ; $6fe7: $93
    ld b, l                                       ; $6fe8: $45
    cp e                                          ; $6fe9: $bb
    db $ed                                        ; $6fea: $ed
    inc de                                        ; $6feb: $13
    db $fd                                        ; $6fec: $fd
    inc de                                        ; $6fed: $13
    or e                                          ; $6fee: $b3
    rst $38                                       ; $6fef: $ff
    ld a, [$fa07]                                 ; $6ff0: $fa $07 $fa
    rlca                                          ; $6ff3: $07
    di                                            ; $6ff4: $f3
    ld c, $ab                                     ; $6ff5: $0e $ab
    ld d, [hl]                                    ; $6ff7: $56
    ld d, d                                       ; $6ff8: $52
    rst $38                                       ; $6ff9: $ff
    add b                                         ; $6ffa: $80
    ld [bc], a                                    ; $6ffb: $02
    ret nz                                        ; $6ffc: $c0

    db $fd                                        ; $6ffd: $fd
    add b                                         ; $6ffe: $80
    ret nz                                        ; $6fff: $c0

    add b                                         ; $7000: $80
    ret nz                                        ; $7001: $c0

    add b                                         ; $7002: $80
    ld b, b                                       ; $7003: $40
    add b                                         ; $7004: $80
    ld b, b                                       ; $7005: $40
    add b                                         ; $7006: $80
    ret nz                                        ; $7007: $c0

    nop                                           ; $7008: $00
    ret nz                                        ; $7009: $c0

    nop                                           ; $700a: $00
    ret nz                                        ; $700b: $c0

    nop                                           ; $700c: $00
    ret nz                                        ; $700d: $c0

    nop                                           ; $700e: $00
    jp hl                                         ; $700f: $e9


    rra                                           ; $7010: $1f
    or e                                          ; $7011: $b3
    ld e, a                                       ; $7012: $5f
    ld sp, hl                                     ; $7013: $f9
    rla                                           ; $7014: $17
    jp nc, Jump_0f0_563e                          ; $7015: $d2 $3e $56

    cp [hl]                                       ; $7018: $be
    ld [c], a                                     ; $7019: $e2
    ld a, $4f                                     ; $701a: $3e $4f
    ld a, b                                       ; $701c: $78
    ld d, a                                       ; $701d: $57
    ld l, b                                       ; $701e: $68
    ld c, a                                       ; $701f: $4f
    ld a, b                                       ; $7020: $78
    sub a                                         ; $7021: $97
    add sp, -$5b                                  ; $7022: $e8 $a5
    jp c, $ffd2                                   ; $7024: $da $d2 $ff

    xor a                                         ; $7027: $af
    ret nc                                        ; $7028: $d0

    sbc [hl]                                      ; $7029: $9e
    pop af                                        ; $702a: $f1
    xor [hl]                                      ; $702b: $ae
    pop de                                        ; $702c: $d1
    sbc a                                         ; $702d: $9f
    pop af                                        ; $702e: $f1
    adc $f1                                       ; $702f: $ce $f1
    sub c                                         ; $7031: $91
    rst $38                                       ; $7032: $ff
    xor a                                         ; $7033: $af
    ret nc                                        ; $7034: $d0

    sbc a                                         ; $7035: $9f
    ldh a, [$af]                                  ; $7036: $f0 $af
    ret nc                                        ; $7038: $d0

    rst $30                                       ; $7039: $f7
    ld hl, sp+$7d                                 ; $703a: $f8 $7d
    inc bc                                        ; $703c: $03
    push af                                       ; $703d: $f5
    dec bc                                        ; $703e: $0b
    push af                                       ; $703f: $f5
    dec bc                                        ; $7040: $0b
    push de                                       ; $7041: $d5
    dec hl                                        ; $7042: $2b
    xor l                                         ; $7043: $ad
    ld e, e                                       ; $7044: $5b
    ld e, c                                       ; $7045: $59
    xor a                                         ; $7046: $af
    cp e                                          ; $7047: $bb
    rst $38                                       ; $7048: $ff
    db $fd                                        ; $7049: $fd
    inc bc                                        ; $704a: $03
    db $fd                                        ; $704b: $fd
    inc bc                                        ; $704c: $03
    cp $01                                        ; $704d: $fe $01
    ld a, a                                       ; $704f: $7f
    add b                                         ; $7050: $80
    xor a                                         ; $7051: $af
    ld d, b                                       ; $7052: $50
    xor e                                         ; $7053: $ab
    rst $38                                       ; $7054: $ff
    rst $28                                       ; $7055: $ef
    db $10                                        ; $7056: $10
    rst $30                                       ; $7057: $f7
    ld [$1ce3], sp                                ; $7058: $08 $e3 $1c
    sub d                                         ; $705b: $92
    ld a, [hl]                                    ; $705c: $7e
    ld d, d                                       ; $705d: $52
    cp [hl]                                       ; $705e: $be
    and [hl]                                      ; $705f: $a6
    ld a, [hl]                                    ; $7060: $7e
    ld l, [hl]                                    ; $7061: $6e
    cp [hl]                                       ; $7062: $be
    xor e                                         ; $7063: $ab
    ld a, a                                       ; $7064: $7f
    ld d, l                                       ; $7065: $55
    rst $38                                       ; $7066: $ff
    rst $18                                       ; $7067: $df
    ld a, a                                       ; $7068: $7f
    dec [hl]                                      ; $7069: $35
    rst $28                                       ; $706a: $ef
    ld a, e                                       ; $706b: $7b
    rst $08                                       ; $706c: $cf
    push de                                       ; $706d: $d5
    xor a                                         ; $706e: $af

Jump_0f0_706f:
    dec hl                                        ; $706f: $2b
    rst $18                                       ; $7070: $df
    rst $10                                       ; $7071: $d7
    xor a                                         ; $7072: $af
    db $db                                        ; $7073: $db
    rst $38                                       ; $7074: $ff
    push af                                       ; $7075: $f5
    rrca                                          ; $7076: $0f
    ei                                            ; $7077: $fb
    rrca                                          ; $7078: $0f
    push af                                       ; $7079: $f5
    rrca                                          ; $707a: $0f
    ld [bc], a                                    ; $707b: $02
    db $10                                        ; $707c: $10
    sbc d                                         ; $707d: $9a
    cpl                                           ; $707e: $2f
    ccf                                           ; $707f: $3f
    dec h                                         ; $7080: $25
    ld a, [hl-]                                   ; $7081: $3a
    ld a, [hl+]                                   ; $7082: $2a
    scf                                           ; $7083: $37
    dec h                                         ; $7084: $25
    ld a, [hl-]                                   ; $7085: $3a
    ld e, e                                       ; $7086: $5b
    ld a, [hl]                                    ; $7087: $7e
    xor a                                         ; $7088: $af
    rst $38                                       ; $7089: $ff
    sub a                                         ; $708a: $97
    rst $38                                       ; $708b: $ff
    adc e                                         ; $708c: $8b
    db $f4                                        ; $708d: $f4
    sub a                                         ; $708e: $97
    db $ec                                        ; $708f: $ec
    xor c                                         ; $7090: $a9
    sub $76                                       ; $7091: $d6 $76
    ld l, l                                       ; $7093: $6d
    ld de, $0e1e                                  ; $7094: $11 $1e $0e
    dec c                                         ; $7097: $0d
    ld [bc], a                                    ; $7098: $02
    inc bc                                        ; $7099: $03
    ld [bc], a                                    ; $709a: $02
    nop                                           ; $709b: $00
    add d                                         ; $709c: $82
    dec b                                         ; $709d: $05
    ld a, [bc]                                    ; $709e: $0a
    ld [bc], a                                    ; $709f: $02
    rst $38                                       ; $70a0: $ff
    adc b                                         ; $70a1: $88
    ld e, a                                       ; $70a2: $5f
    and b                                         ; $70a3: $a0
    rst $38                                       ; $70a4: $ff
    nop                                           ; $70a5: $00
    rst $38                                       ; $70a6: $ff
    nop                                           ; $70a7: $00
    xor a                                         ; $70a8: $af
    ld d, b                                       ; $70a9: $50
    inc b                                         ; $70aa: $04
    rst $38                                       ; $70ab: $ff
    adc h                                         ; $70ac: $8c
    ei                                            ; $70ad: $fb
    inc b                                         ; $70ae: $04
    cp $01                                        ; $70af: $fe $01
    db $fd                                        ; $70b1: $fd
    ld [bc], a                                    ; $70b2: $02
    rst $38                                       ; $70b3: $ff
    nop                                           ; $70b4: $00
    rst $38                                       ; $70b5: $ff
    nop                                           ; $70b6: $00
    xor a                                         ; $70b7: $af
    ld d, b                                       ; $70b8: $50
    ld [bc], a                                    ; $70b9: $02
    rst $38                                       ; $70ba: $ff
    ld [bc], a                                    ; $70bb: $02
    nop                                           ; $70bc: $00
    add d                                         ; $70bd: $82
    push de                                       ; $70be: $d5
    xor d                                         ; $70bf: $aa
    ld [bc], a                                    ; $70c0: $02
    rst $38                                       ; $70c1: $ff
    adc b                                         ; $70c2: $88
    xor a                                         ; $70c3: $af
    ld d, b                                       ; $70c4: $50
    ld a, a                                       ; $70c5: $7f
    add b                                         ; $70c6: $80
    cp $01                                        ; $70c7: $fe $01
    push de                                       ; $70c9: $d5
    ld a, [hl+]                                   ; $70ca: $2a
    inc b                                         ; $70cb: $04
    rst $38                                       ; $70cc: $ff
    adc h                                         ; $70cd: $8c
    ld e, a                                       ; $70ce: $5f
    and b                                         ; $70cf: $a0
    cp a                                          ; $70d0: $bf
    ld b, b                                       ; $70d1: $40
    rst $38                                       ; $70d2: $ff
    nop                                           ; $70d3: $00
    rst $38                                       ; $70d4: $ff
    nop                                           ; $70d5: $00
    ld a, [$b505]                                 ; $70d6: $fa $05 $b5
    ld c, d                                       ; $70d9: $4a
    ld [bc], a                                    ; $70da: $02
    rst $38                                       ; $70db: $ff
    ld [bc], a                                    ; $70dc: $02
    nop                                           ; $70dd: $00
    ld [bc], a                                    ; $70de: $02
    ld hl, sp-$76                                 ; $70df: $f8 $8a
    db $f4                                        ; $70e1: $f4
    db $fc                                        ; $70e2: $fc
    adc h                                         ; $70e3: $8c
    ld a, h                                       ; $70e4: $7c
    ld d, h                                       ; $70e5: $54
    db $fc                                        ; $70e6: $fc
    call z, Call_0f0_567c                         ; $70e7: $cc $7c $56
    cp $02                                        ; $70ea: $fe $02
    rst $38                                       ; $70ec: $ff
    adc [hl]                                      ; $70ed: $8e
    db $eb                                        ; $70ee: $eb
    rst $38                                       ; $70ef: $ff
    add l                                         ; $70f0: $85
    ld a, a                                       ; $70f1: $7f
    jp $a53f                                      ; $70f2: $c3 $3f $a5


    ld a, a                                       ; $70f5: $7f
    ld h, [hl]                                    ; $70f6: $66
    cp [hl]                                       ; $70f7: $be
    xor b                                         ; $70f8: $a8
    ld a, b                                       ; $70f9: $78
    ld [hl], b                                    ; $70fa: $70
    or b                                          ; $70fb: $b0
    ld [bc], a                                    ; $70fc: $02
    ret nz                                        ; $70fd: $c0

    ld [bc], a                                    ; $70fe: $02
    nop                                           ; $70ff: $00
    rst $38                                       ; $7100: $ff
    cpl                                           ; $7101: $2f
    dec d                                         ; $7102: $15
    rst $30                                       ; $7103: $f7
    ld a, [bc]                                    ; $7104: $0a
    jp $c800                                      ; $7105: $c3 $00 $c8


    pop af                                        ; $7108: $f1
    ret c                                         ; $7109: $d8

    pop af                                        ; $710a: $f1
    add sp, -$0b                                  ; $710b: $e8 $f5
    ld a, [c]                                     ; $710d: $f2
    db $f4                                        ; $710e: $f4
    di                                            ; $710f: $f3
    di                                            ; $7110: $f3
    rst $30                                       ; $7111: $f7
    ld a, [c]                                     ; $7112: $f2
    ld hl, sp-$0f                                 ; $7113: $f8 $f1
    pop bc                                        ; $7115: $c1
    ld sp, hl                                     ; $7116: $f9
    pop de                                        ; $7117: $d1
    ld sp, hl                                     ; $7118: $f9
    pop hl                                        ; $7119: $e1
    ld sp, hl                                     ; $711a: $f9
    pop af                                        ; $711b: $f1
    db $fd                                        ; $711c: $fd
    ld hl, sp-$04                                 ; $711d: $f8 $fc
    cp e                                          ; $711f: $bb
    ld bc, $01cb                                  ; $7120: $01 $cb $01
    db $db                                        ; $7123: $db
    ld bc, $01eb                                  ; $7124: $01 $eb $01
    ei                                            ; $7127: $fb
    dec b                                         ; $7128: $05
    ret                                           ; $7129: $c9


    add hl, bc                                    ; $712a: $09
    reti                                          ; $712b: $d9


    add hl, bc                                    ; $712c: $09
    jp hl                                         ; $712d: $e9


    add hl, bc                                    ; $712e: $09
    ld sp, hl                                     ; $712f: $f9
    add hl, bc                                    ; $7130: $09
    inc b                                         ; $7131: $04
    ld bc, $078a                                  ; $7132: $01 $8a $07
    ld b, $0e                                     ; $7135: $06 $0e
    add hl, bc                                    ; $7137: $09
    inc e                                         ; $7138: $1c
    rla                                           ; $7139: $17
    ld de, $0e1f                                  ; $713a: $11 $1f $0e
    rrca                                          ; $713d: $0f
    ld [bc], a                                    ; $713e: $02
    inc bc                                        ; $713f: $03
    ld [bc], a                                    ; $7140: $02
    ld bc, $0702                                  ; $7141: $01 $02 $07
    ld [bc], a                                    ; $7144: $02
    rra                                           ; $7145: $1f
    adc d                                         ; $7146: $8a
    rla                                           ; $7147: $17
    rra                                           ; $7148: $1f
    db $10                                        ; $7149: $10
    rra                                           ; $714a: $1f
    db $10                                        ; $714b: $10
    rra                                           ; $714c: $1f
    db $10                                        ; $714d: $10
    rra                                           ; $714e: $1f
    ld [de], a                                    ; $714f: $12
    rra                                           ; $7150: $1f
    ld [bc], a                                    ; $7151: $02
    rrca                                          ; $7152: $0f
    ld [bc], a                                    ; $7153: $02
    rlca                                          ; $7154: $07
    add l                                         ; $7155: $85
    dec b                                         ; $7156: $05
    ld b, $04                                     ; $7157: $06 $04
    rlca                                          ; $7159: $07
    dec b                                         ; $715a: $05
    ld [bc], a                                    ; $715b: $02
    ld b, $ab                                     ; $715c: $06 $ab
    rlca                                          ; $715e: $07
    dec b                                         ; $715f: $05
    ld b, $04                                     ; $7160: $06 $04
    rlca                                          ; $7162: $07
    dec b                                         ; $7163: $05
    ld b, $04                                     ; $7164: $06 $04
    rlca                                          ; $7166: $07
    ld b, $07                                     ; $7167: $06 $07
    inc b                                         ; $7169: $04
    rlca                                          ; $716a: $07
    dec b                                         ; $716b: $05
    ld b, $04                                     ; $716c: $06 $04
    rlca                                          ; $716e: $07
    add hl, bc                                    ; $716f: $09
    ld c, $0a                                     ; $7170: $0e $0a
    dec c                                         ; $7172: $0d
    jp nc, $afff                                  ; $7173: $d2 $ff $af

    ret nc                                        ; $7176: $d0

    sbc [hl]                                      ; $7177: $9e
    pop af                                        ; $7178: $f1
    xor [hl]                                      ; $7179: $ae
    pop de                                        ; $717a: $d1
    sbc a                                         ; $717b: $9f
    pop af                                        ; $717c: $f1
    adc $f1                                       ; $717d: $ce $f1
    sub c                                         ; $717f: $91
    rst $38                                       ; $7180: $ff
    xor a                                         ; $7181: $af
    ret nc                                        ; $7182: $d0

    sbc a                                         ; $7183: $9f
    ldh a, [$af]                                  ; $7184: $f0 $af
    ret nc                                        ; $7186: $d0

    rst $30                                       ; $7187: $f7
    ld hl, sp+$02                                 ; $7188: $f8 $02
    rst $38                                       ; $718a: $ff
    adc b                                         ; $718b: $88
    ld d, l                                       ; $718c: $55
    xor d                                         ; $718d: $aa
    xor a                                         ; $718e: $af
    ld [hl], b                                    ; $718f: $70
    ld e, a                                       ; $7190: $5f
    and b                                         ; $7191: $a0
    cp d                                          ; $7192: $ba
    push hl                                       ; $7193: $e5
    ld [bc], a                                    ; $7194: $02
    add b                                         ; $7195: $80
    add a                                         ; $7196: $87
    nop                                           ; $7197: $00
    add b                                         ; $7198: $80
    nop                                           ; $7199: $00
    add b                                         ; $719a: $80
    nop                                           ; $719b: $00
    add b                                         ; $719c: $80
    nop                                           ; $719d: $00
    inc bc                                        ; $719e: $03
    add b                                         ; $719f: $80
    sub b                                         ; $71a0: $90
    ld a, a                                       ; $71a1: $7f
    rst $38                                       ; $71a2: $ff
    cp a                                          ; $71a3: $bf
    rst $38                                       ; $71a4: $ff
    ld e, a                                       ; $71a5: $5f
    and b                                         ; $71a6: $a0
    cp a                                          ; $71a7: $bf
    ld h, b                                       ; $71a8: $60
    ld c, a                                       ; $71a9: $4f
    or b                                          ; $71aa: $b0
    or a                                          ; $71ab: $b7
    ld l, b                                       ; $71ac: $68
    adc a                                         ; $71ad: $8f
    ldh a, [$75]                                  ; $71ae: $f0 $75
    ld l, d                                       ; $71b0: $6a
    ld [bc], a                                    ; $71b1: $02
    rra                                           ; $71b2: $1f
    ld [bc], a                                    ; $71b3: $02
    nop                                           ; $71b4: $00
    ld [$8180], sp                                ; $71b5: $08 $80 $81
    nop                                           ; $71b8: $00
    inc bc                                        ; $71b9: $03
    add b                                         ; $71ba: $80
    add l                                         ; $71bb: $85
    nop                                           ; $71bc: $00
    add b                                         ; $71bd: $80
    nop                                           ; $71be: $00
    add b                                         ; $71bf: $80
    nop                                           ; $71c0: $00
    ld [bc], a                                    ; $71c1: $02
    add b                                         ; $71c2: $80
    add c                                         ; $71c3: $81
    nop                                           ; $71c4: $00
    ld [bc], a                                    ; $71c5: $02
    add b                                         ; $71c6: $80
    ld a, [bc]                                    ; $71c7: $0a
    nop                                           ; $71c8: $00
    ld [bc], a                                    ; $71c9: $02
    add b                                         ; $71ca: $80
    adc c                                         ; $71cb: $89
    nop                                           ; $71cc: $00
    add b                                         ; $71cd: $80
    nop                                           ; $71ce: $00
    add b                                         ; $71cf: $80
    nop                                           ; $71d0: $00
    add b                                         ; $71d1: $80
    nop                                           ; $71d2: $00
    add b                                         ; $71d3: $80
    nop                                           ; $71d4: $00
    inc bc                                        ; $71d5: $03
    add b                                         ; $71d6: $80
    ld [de], a                                    ; $71d7: $12
    nop                                           ; $71d8: $00
    ld a, [bc]                                    ; $71d9: $0a
    add b                                         ; $71da: $80
    ld d, $00                                     ; $71db: $16 $00
    ld [bc], a                                    ; $71dd: $02
    ld bc, $039b                                  ; $71de: $01 $9b $03
    ld [bc], a                                    ; $71e1: $02
    ld b, $05                                     ; $71e2: $06 $05
    ld c, $09                                     ; $71e4: $0e $09
    dec d                                         ; $71e6: $15
    dec de                                        ; $71e7: $1b
    ld l, e                                       ; $71e8: $6b
    halt                                          ; $71e9: $76
    push af                                       ; $71ea: $f5
    cp [hl]                                       ; $71eb: $be
    ld a, h                                       ; $71ec: $7c
    sbc a                                         ; $71ed: $9f
    rra                                           ; $71ee: $1f
    rst $38                                       ; $71ef: $ff
    cp h                                          ; $71f0: $bc
    rst $38                                       ; $71f1: $ff
    jp c, $81e5                                   ; $71f2: $da $e5 $81

    cp $58                                        ; $71f5: $fe $58
    rst $38                                       ; $71f7: $ff
    cp d                                          ; $71f8: $ba
    rst $38                                       ; $71f9: $ff
    push af                                       ; $71fa: $f5
    inc bc                                        ; $71fb: $03
    rst $38                                       ; $71fc: $ff
    adc h                                         ; $71fd: $8c
    rst $18                                       ; $71fe: $df
    ld a, $7f                                     ; $71ff: $3e $7f
    sbc [hl]                                      ; $7201: $9e
    rst $38                                       ; $7202: $ff
    nop                                           ; $7203: $00
    ld a, a                                       ; $7204: $7f
    add b                                         ; $7205: $80
    rst $38                                       ; $7206: $ff
    nop                                           ; $7207: $00
    push de                                       ; $7208: $d5
    ccf                                           ; $7209: $3f
    inc b                                         ; $720a: $04
    rst $38                                       ; $720b: $ff
    add a                                         ; $720c: $87
    xor d                                         ; $720d: $aa
    push de                                       ; $720e: $d5
    ld e, a                                       ; $720f: $5f
    and b                                         ; $7210: $a0
    cp a                                          ; $7211: $bf
    ret nz                                        ; $7212: $c0

    dec d                                         ; $7213: $15
    ld [bc], a                                    ; $7214: $02
    rst $38                                       ; $7215: $ff
    sub [hl]                                      ; $7216: $96
    add b                                         ; $7217: $80
    ld l, a                                       ; $7218: $6f
    sub b                                         ; $7219: $90
    cp a                                          ; $721a: $bf
    ret nc                                        ; $721b: $d0

    ld c, l                                       ; $721c: $4d
    or d                                          ; $721d: $b2
    sbc d                                         ; $721e: $9a
    rst $38                                       ; $721f: $ff
    ld a, a                                       ; $7220: $7f
    add b                                         ; $7221: $80
    rst $38                                       ; $7222: $ff
    add b                                         ; $7223: $80
    ld a, a                                       ; $7224: $7f
    add b                                         ; $7225: $80
    db $fd                                        ; $7226: $fd
    add d                                         ; $7227: $82
    ld a, d                                       ; $7228: $7a
    add l                                         ; $7229: $85
    ld d, l                                       ; $722a: $55
    xor d                                         ; $722b: $aa
    dec bc                                        ; $722c: $0b
    ld [bc], a                                    ; $722d: $02
    rrca                                          ; $722e: $0f
    sub e                                         ; $722f: $93
    nop                                           ; $7230: $00
    rrca                                          ; $7231: $0f
    nop                                           ; $7232: $00
    rrca                                          ; $7233: $0f
    nop                                           ; $7234: $00
    rlca                                          ; $7235: $07
    ld [$050a], sp                                ; $7236: $08 $0a $05
    ld a, [bc]                                    ; $7239: $0a
    rrca                                          ; $723a: $0f
    ld c, $01                                     ; $723b: $0e $01
    rrca                                          ; $723d: $0f
    nop                                           ; $723e: $00
    db $e3                                        ; $723f: $e3
    inc e                                         ; $7240: $1c
    ld e, l                                       ; $7241: $5d
    xor d                                         ; $7242: $aa
    ld [bc], a                                    ; $7243: $02
    rst $38                                       ; $7244: $ff
    adc b                                         ; $7245: $88
    ld a, [$f705]                                 ; $7246: $fa $05 $f7
    ld [$00ff], sp                                ; $7249: $08 $ff $00
    db $fd                                        ; $724c: $fd
    ld [bc], a                                    ; $724d: $02
    inc b                                         ; $724e: $04
    rst $38                                       ; $724f: $ff
    adc h                                         ; $7250: $8c
    or l                                          ; $7251: $b5
    ld c, d                                       ; $7252: $4a
    db $eb                                        ; $7253: $eb
    inc d                                         ; $7254: $14
    rst $18                                       ; $7255: $df
    jr nz, @+$01                                  ; $7256: $20 $ff

    nop                                           ; $7258: $00
    rst $38                                       ; $7259: $ff
    nop                                           ; $725a: $00
    ei                                            ; $725b: $fb
    inc b                                         ; $725c: $04
    ld [bc], a                                    ; $725d: $02
    rst $38                                       ; $725e: $ff
    dec b                                         ; $725f: $05
    add b                                         ; $7260: $80
    adc b                                         ; $7261: $88
    nop                                           ; $7262: $00
    add b                                         ; $7263: $80
    nop                                           ; $7264: $00
    add b                                         ; $7265: $80
    nop                                           ; $7266: $00
    add b                                         ; $7267: $80
    nop                                           ; $7268: $00
    add b                                         ; $7269: $80
    ld [bc], a                                    ; $726a: $02
    nop                                           ; $726b: $00
    inc bc                                        ; $726c: $03
    add b                                         ; $726d: $80
    ld c, $00                                     ; $726e: $0e $00
    ld [bc], a                                    ; $7270: $02
    inc b                                         ; $7271: $04
    and a                                         ; $7272: $a7
    ld c, $0a                                     ; $7273: $0e $0a
    inc e                                         ; $7275: $1c
    inc d                                         ; $7276: $14
    jr z, @+$3a                                   ; $7277: $28 $38

    ld l, b                                       ; $7279: $68
    ld e, b                                       ; $727a: $58
    ret nc                                        ; $727b: $d0

    or b                                          ; $727c: $b0
    jr nc, @-$0e                                  ; $727d: $30 $f0

    ld a, h                                       ; $727f: $7c
    call z, $c67e                                 ; $7280: $cc $7e $c6
    db $fd                                        ; $7283: $fd
    add a                                         ; $7284: $87
    ld sp, hl                                     ; $7285: $f9
    rrca                                          ; $7286: $0f
    rst $28                                       ; $7287: $ef
    rra                                           ; $7288: $1f
    ld a, a                                       ; $7289: $7f
    rst $38                                       ; $728a: $ff
    sbc l                                         ; $728b: $9d
    db $fd                                        ; $728c: $fd
    inc c                                         ; $728d: $0c
    db $fc                                        ; $728e: $fc
    rlca                                          ; $728f: $07
    rst $38                                       ; $7290: $ff
    rst $20                                       ; $7291: $e7
    add hl, de                                    ; $7292: $19
    db $d3                                        ; $7293: $d3
    dec l                                         ; $7294: $2d
    xor l                                         ; $7295: $ad
    ld e, e                                       ; $7296: $5b
    ld c, c                                       ; $7297: $49
    cp a                                          ; $7298: $bf
    ld e, e                                       ; $7299: $5b
    ld [bc], a                                    ; $729a: $02
    rst $38                                       ; $729b: $ff
    adc h                                         ; $729c: $8c
    db $fd                                        ; $729d: $fd
    rst $38                                       ; $729e: $ff
    ld a, l                                       ; $729f: $7d
    db $fd                                        ; $72a0: $fd
    ld a, a                                       ; $72a1: $7f
    xor a                                         ; $72a2: $af
    ld d, e                                       ; $72a3: $53
    sbc $23                                       ; $72a4: $de $23
    cp $03                                        ; $72a6: $fe $03
    xor e                                         ; $72a8: $ab
    ld [bc], a                                    ; $72a9: $02
    cp $02                                        ; $72aa: $fe $02
    rst $38                                       ; $72ac: $ff
    xor h                                         ; $72ad: $ac
    cp $23                                        ; $72ae: $fe $23
    sbc $73                                       ; $72b0: $de $73
    adc [hl]                                      ; $72b2: $8e
    di                                            ; $72b3: $f3
    adc [hl]                                      ; $72b4: $8e
    sub a                                         ; $72b5: $97
    cp $f2                                        ; $72b6: $fe $f2
    rrca                                          ; $72b8: $0f
    di                                            ; $72b9: $f3
    ld c, $a2                                     ; $72ba: $0e $a2
    ld e, a                                       ; $72bc: $5f
    ld e, e                                       ; $72bd: $5b
    xor [hl]                                      ; $72be: $ae
    sbc d                                         ; $72bf: $9a
    rst $38                                       ; $72c0: $ff
    ld a, [c]                                     ; $72c1: $f2
    rrca                                          ; $72c2: $0f
    ld a, c                                       ; $72c3: $79
    add a                                         ; $72c4: $87
    ld a, c                                       ; $72c5: $79
    add a                                         ; $72c6: $87
    ld a, c                                       ; $72c7: $79
    add a                                         ; $72c8: $87
    db $dd                                        ; $72c9: $dd
    and e                                         ; $72ca: $a3
    xor c                                         ; $72cb: $a9
    rst $10                                       ; $72cc: $d7
    xor l                                         ; $72cd: $ad
    rst $38                                       ; $72ce: $ff
    db $f4                                        ; $72cf: $f4
    dec bc                                        ; $72d0: $0b
    ld a, [c]                                     ; $72d1: $f2
    dec c                                         ; $72d2: $0d
    db $fd                                        ; $72d3: $fd
    ld a, [bc]                                    ; $72d4: $0a
    ld a, [c]                                     ; $72d5: $f2
    dec c                                         ; $72d6: $0d
    db $fd                                        ; $72d7: $fd
    ld a, [bc]                                    ; $72d8: $0a
    cp l                                          ; $72d9: $bd
    ld [bc], a                                    ; $72da: $02
    rst $38                                       ; $72db: $ff
    add a                                         ; $72dc: $87
    nop                                           ; $72dd: $00
    ld a, a                                       ; $72de: $7f
    add b                                         ; $72df: $80
    rrca                                          ; $72e0: $0f
    nop                                           ; $72e1: $00
    dec b                                         ; $72e2: $05
    ld a, [bc]                                    ; $72e3: $0a
    inc bc                                        ; $72e4: $03
    rrca                                          ; $72e5: $0f
    add a                                         ; $72e6: $87
    nop                                           ; $72e7: $00
    rrca                                          ; $72e8: $0f
    nop                                           ; $72e9: $00
    ld c, $01                                     ; $72ea: $0e $01
    dec b                                         ; $72ec: $05
    ld a, [bc]                                    ; $72ed: $0a
    dec b                                         ; $72ee: $05
    rrca                                          ; $72ef: $0f
    adc b                                         ; $72f0: $88
    nop                                           ; $72f1: $00
    db $fc                                        ; $72f2: $fc
    inc bc                                        ; $72f3: $03
    ld a, [$f607]                                 ; $72f4: $fa $07 $f6
    dec bc                                        ; $72f7: $0b
    xor d                                         ; $72f8: $aa
    ld [bc], a                                    ; $72f9: $02
    ld d, a                                       ; $72fa: $57
    add c                                         ; $72fb: $81
    xor e                                         ; $72fc: $ab
    ld [bc], a                                    ; $72fd: $02
    db $fc                                        ; $72fe: $fc
    inc d                                         ; $72ff: $14
    nop                                           ; $7300: $00
    ld [bc], a                                    ; $7301: $02
    ldh [$bb], a                                  ; $7302: $e0 $bb
    ld e, h                                       ; $7304: $5c
    cp h                                          ; $7305: $bc
    ld a, d                                       ; $7306: $7a
    add [hl]                                      ; $7307: $86
    ld sp, hl                                     ; $7308: $f9
    rlca                                          ; $7309: $07
    push af                                       ; $730a: $f5
    dec bc                                        ; $730b: $0b
    ld sp, hl                                     ; $730c: $f9
    rrca                                          ; $730d: $0f
    push af                                       ; $730e: $f5
    dec bc                                        ; $730f: $0b
    ld sp, hl                                     ; $7310: $f9
    rrca                                          ; $7311: $0f
    jp hl                                         ; $7312: $e9


    rra                                           ; $7313: $1f
    ld sp, hl                                     ; $7314: $f9
    rrca                                          ; $7315: $0f
    jp hl                                         ; $7316: $e9


    rra                                           ; $7317: $1f
    ld [$f21e], a                                 ; $7318: $ea $1e $f2
    ld e, $fa                                     ; $731b: $1e $fa
    ld d, $f2                                     ; $731d: $16 $f2
    ld e, $da                                     ; $731f: $1e $da
    ld [hl], $f2                                  ; $7321: $36 $f2
    ld e, $d2                                     ; $7323: $1e $d2
    ld a, $d2                                     ; $7325: $3e $d2
    ld a, $e4                                     ; $7327: $3e $e4
    inc a                                         ; $7329: $3c
    db $f4                                        ; $732a: $f4
    inc l                                         ; $732b: $2c
    db $e4                                        ; $732c: $e4
    inc a                                         ; $732d: $3c

jr_0f0_732e:
    ld hl, sp+$28                                 ; $732e: $f8 $28
    ld l, b                                       ; $7330: $68
    cp b                                          ; $7331: $b8
    xor b                                         ; $7332: $a8
    ld a, b                                       ; $7333: $78
    db $10                                        ; $7334: $10
    ldh a, [$d0]                                  ; $7335: $f0 $d0
    ld [hl], b                                    ; $7337: $70
    db $10                                        ; $7338: $10
    ldh a, [$a0]                                  ; $7339: $f0 $a0
    ld h, b                                       ; $733b: $60
    jr nc, jr_0f0_732e                            ; $733c: $30 $f0

    ld d, b                                       ; $733e: $50
    inc bc                                        ; $733f: $03
    ldh a, [$92]                                  ; $7340: $f0 $92
    ret nc                                        ; $7342: $d0

    ldh a, [$b0]                                  ; $7343: $f0 $b0
    ldh a, [$50]                                  ; $7345: $f0 $50
    ldh a, [$b0]                                  ; $7347: $f0 $b0
    ldh a, [rSVBK]                                ; $7349: $f0 $70
    ldh a, [$b0]                                  ; $734b: $f0 $b0
    ldh a, [$50]                                  ; $734d: $f0 $50
    ldh a, [$b0]                                  ; $734f: $f0 $b0
    ldh a, [$50]                                  ; $7351: $f0 $50
    ldh a, [rSC]                                  ; $7353: $f0 $02
    ld hl, sp-$76                                 ; $7355: $f8 $8a
    db $f4                                        ; $7357: $f4
    db $fc                                        ; $7358: $fc
    adc h                                         ; $7359: $8c
    ld a, h                                       ; $735a: $7c
    ld d, h                                       ; $735b: $54
    db $fc                                        ; $735c: $fc
    call z, Call_0f0_567c                         ; $735d: $cc $7c $56
    cp $02                                        ; $7360: $fe $02
    rst $38                                       ; $7362: $ff
    adc d                                         ; $7363: $8a
    db $eb                                        ; $7364: $eb
    rst $38                                       ; $7365: $ff
    add l                                         ; $7366: $85
    ld a, a                                       ; $7367: $7f
    inc bc                                        ; $7368: $03
    rrca                                          ; $7369: $0f
    dec b                                         ; $736a: $05
    rrca                                          ; $736b: $0f
    ld b, $0e                                     ; $736c: $06 $0e
    ld [bc], a                                    ; $736e: $02

Call_0f0_736f:
    ld [$0014], sp                                ; $736f: $08 $14 $00
    rst $38                                       ; $7372: $ff
    ld sp, $f716                                  ; $7373: $31 $16 $f7
    ld a, [bc]                                    ; $7376: $0a
    jp $b700                                      ; $7377: $c3 $00 $b7


    jp hl                                         ; $737a: $e9


    cp h                                          ; $737b: $bc
    pop af                                        ; $737c: $f1
    call z, $dcf1                                 ; $737d: $cc $f1 $dc
    or $e6                                        ; $7380: $f6 $e6
    push af                                       ; $7382: $f5
    ld a, [c]                                     ; $7383: $f2
    db $f4                                        ; $7384: $f4
    di                                            ; $7385: $f3
    di                                            ; $7386: $f3
    rst $30                                       ; $7387: $f7
    ld a, [c]                                     ; $7388: $f2
    ld hl, sp-$0f                                 ; $7389: $f8 $f1
    pop bc                                        ; $738b: $c1
    ld sp, hl                                     ; $738c: $f9
    pop de                                        ; $738d: $d1
    ld sp, hl                                     ; $738e: $f9
    pop hl                                        ; $738f: $e1
    cp $ec                                        ; $7390: $fe $ec
    db $fd                                        ; $7392: $fd

jr_0f0_7393:
    or $fc                                        ; $7393: $f6 $fc
    pop bc                                        ; $7395: $c1
    ld bc, $01d1                                  ; $7396: $01 $d1 $01
    pop hl                                        ; $7399: $e1
    ld b, $f1                                     ; $739a: $06 $f1
    dec b                                         ; $739c: $05
    db $fc                                        ; $739d: $fc
    inc b                                         ; $739e: $04
    rst $00                                       ; $739f: $c7
    add hl, bc                                    ; $73a0: $09
    rst $10                                       ; $73a1: $d7
    add hl, bc                                    ; $73a2: $09
    ld a, [c]                                     ; $73a3: $f2
    dec c                                         ; $73a4: $0d
    ld [bc], a                                    ; $73a5: $02
    db $10                                        ; $73a6: $10
    adc [hl]                                      ; $73a7: $8e
    jr z, jr_0f0_73e2                             ; $73a8: $28 $38

    inc h                                         ; $73aa: $24
    inc a                                         ; $73ab: $3c
    ld d, $1a                                     ; $73ac: $16 $1a
    dec bc                                        ; $73ae: $0b
    dec c                                         ; $73af: $0d
    dec b                                         ; $73b0: $05
    ld b, $04                                     ; $73b1: $06 $04
    rlca                                          ; $73b3: $07
    ld [bc], a                                    ; $73b4: $02
    inc bc                                        ; $73b5: $03
    ld [bc], a                                    ; $73b6: $02
    ld bc, $000e                                  ; $73b7: $01 $0e $00
    ld [bc], a                                    ; $73ba: $02
    add b                                         ; $73bb: $80
    and d                                         ; $73bc: $a2
    ld b, b                                       ; $73bd: $40
    ret nz                                        ; $73be: $c0

    ld h, b                                       ; $73bf: $60
    and b                                         ; $73c0: $a0
    jr nc, jr_0f0_7393                            ; $73c1: $30 $d0

    cp b                                          ; $73c3: $b8
    ret z                                         ; $73c4: $c8

    ld e, h                                       ; $73c5: $5c
    ld h, h                                       ; $73c6: $64
    ld l, $32                                     ; $73c7: $2e $32
    inc de                                        ; $73c9: $13
    rra                                           ; $73ca: $1f
    rrca                                          ; $73cb: $0f
    dec c                                         ; $73cc: $0d
    dec bc                                        ; $73cd: $0b
    inc c                                         ; $73ce: $0c
    ld [$0d0f], sp                                ; $73cf: $08 $0f $0d
    rrca                                          ; $73d2: $0f
    ld a, [de]                                    ; $73d3: $1a
    ld d, $12                                     ; $73d4: $16 $12
    ld e, $3b                                     ; $73d6: $1e $3b
    daa                                           ; $73d8: $27
    ld a, [hl-]                                   ; $73d9: $3a
    cpl                                           ; $73da: $2f
    jr nz, jr_0f0_741c                            ; $73db: $20 $3f

    ld e, $1f                                     ; $73dd: $1e $1f
    ld [bc], a                                    ; $73df: $02
    inc bc                                        ; $73e0: $03
    ld [bc], a                                    ; $73e1: $02

jr_0f0_73e2:
    nop                                           ; $73e2: $00
    ld [bc], a                                    ; $73e3: $02
    ld bc, $0702                                  ; $73e4: $01 $02 $07
    ld [bc], a                                    ; $73e7: $02
    rra                                           ; $73e8: $1f
    adc d                                         ; $73e9: $8a
    rla                                           ; $73ea: $17
    rra                                           ; $73eb: $1f
    db $10                                        ; $73ec: $10
    rra                                           ; $73ed: $1f
    db $10                                        ; $73ee: $10
    rra                                           ; $73ef: $1f
    db $10                                        ; $73f0: $10
    rra                                           ; $73f1: $1f
    ld [de], a                                    ; $73f2: $12
    rra                                           ; $73f3: $1f
    ld [bc], a                                    ; $73f4: $02
    rrca                                          ; $73f5: $0f
    ld [bc], a                                    ; $73f6: $02
    rlca                                          ; $73f7: $07
    add l                                         ; $73f8: $85
    dec b                                         ; $73f9: $05
    ld b, $04                                     ; $73fa: $06 $04
    rlca                                          ; $73fc: $07
    and d                                         ; $73fd: $a2
    ld [bc], a                                    ; $73fe: $02
    rst $18                                       ; $73ff: $df
    sbc l                                         ; $7400: $9d
    ldh a, [$ad]                                  ; $7401: $f0 $ad
    jp nc, $fa97                                  ; $7403: $d2 $97 $fa

    xor c                                         ; $7406: $a9
    sub $93                                       ; $7407: $d6 $93
    rst $38                                       ; $7409: $ff
    rst $08                                       ; $740a: $cf
    ldh a, [$9f]                                  ; $740b: $f0 $9f
    ldh a, [$af]                                  ; $740d: $f0 $af
    ret nc                                        ; $740f: $d0

    sbc a                                         ; $7410: $9f
    ldh a, [$2f]                                  ; $7411: $f0 $2f
    ret nc                                        ; $7413: $d0

    ld c, d                                       ; $7414: $4a
    or l                                          ; $7415: $b5
    and l                                         ; $7416: $a5
    rst $38                                       ; $7417: $ff
    ld e, a                                       ; $7418: $5f
    and b                                         ; $7419: $a0
    dec a                                         ; $741a: $3d
    ld [c], a                                     ; $741b: $e2

jr_0f0_741c:
    ld e, l                                       ; $741c: $5d
    and d                                         ; $741d: $a2
    inc c                                         ; $741e: $0c
    add b                                         ; $741f: $80

jr_0f0_7420:
    adc [hl]                                      ; $7420: $8e
    sbc a                                         ; $7421: $9f
    pop af                                        ; $7422: $f1
    adc $f1                                       ; $7423: $ce $f1
    sub c                                         ; $7425: $91
    rst $38                                       ; $7426: $ff
    xor a                                         ; $7427: $af
    ret nc                                        ; $7428: $d0

    sbc a                                         ; $7429: $9f
    ldh a, [$af]                                  ; $742a: $f0 $af
    ret nc                                        ; $742c: $d0

    rst $30                                       ; $742d: $f7
    ld hl, sp+$02                                 ; $742e: $f8 $02
    rst $38                                       ; $7430: $ff
    add h                                         ; $7431: $84
    ld d, l                                       ; $7432: $55
    xor d                                         ; $7433: $aa
    xor a                                         ; $7434: $af
    ld [hl], b                                    ; $7435: $70
    ld [bc], a                                    ; $7436: $02
    add b                                         ; $7437: $80
    sbc d                                         ; $7438: $9a
    nop                                           ; $7439: $00
    add b                                         ; $743a: $80
    nop                                           ; $743b: $00
    add b                                         ; $743c: $80
    nop                                           ; $743d: $00
    add b                                         ; $743e: $80
    cpl                                           ; $743f: $2f
    ret nc                                        ; $7440: $d0

    db $dd                                        ; $7441: $dd
    ld a, [c]                                     ; $7442: $f2
    ld a, a                                       ; $7443: $7f
    rst $38                                       ; $7444: $ff
    cp a                                          ; $7445: $bf
    rst $38                                       ; $7446: $ff
    ld e, a                                       ; $7447: $5f
    and b                                         ; $7448: $a0
    cp a                                          ; $7449: $bf
    ld h, b                                       ; $744a: $60
    ld c, a                                       ; $744b: $4f
    or b                                          ; $744c: $b0
    or a                                          ; $744d: $b7
    ld l, b                                       ; $744e: $68
    adc a                                         ; $744f: $8f
    ldh a, [$75]                                  ; $7450: $f0 $75
    ld l, d                                       ; $7452: $6a
    ld [bc], a                                    ; $7453: $02
    rra                                           ; $7454: $1f
    ld [bc], a                                    ; $7455: $02
    nop                                           ; $7456: $00
    ld [$8180], sp                                ; $7457: $08 $80 $81
    nop                                           ; $745a: $00
    inc bc                                        ; $745b: $03
    add b                                         ; $745c: $80
    add l                                         ; $745d: $85
    nop                                           ; $745e: $00
    add b                                         ; $745f: $80
    nop                                           ; $7460: $00
    add b                                         ; $7461: $80
    nop                                           ; $7462: $00
    ld [bc], a                                    ; $7463: $02
    add b                                         ; $7464: $80
    add c                                         ; $7465: $81
    nop                                           ; $7466: $00
    ld [bc], a                                    ; $7467: $02
    add b                                         ; $7468: $80
    ld a, [bc]                                    ; $7469: $0a
    nop                                           ; $746a: $00
    ld [bc], a                                    ; $746b: $02
    add b                                         ; $746c: $80
    adc c                                         ; $746d: $89
    nop                                           ; $746e: $00
    add b                                         ; $746f: $80
    nop                                           ; $7470: $00
    add b                                         ; $7471: $80
    nop                                           ; $7472: $00
    add b                                         ; $7473: $80
    nop                                           ; $7474: $00
    add b                                         ; $7475: $80
    nop                                           ; $7476: $00
    inc bc                                        ; $7477: $03
    add b                                         ; $7478: $80
    ld [de], a                                    ; $7479: $12
    nop                                           ; $747a: $00
    ld a, [bc]                                    ; $747b: $0a
    add b                                         ; $747c: $80
    ld d, $00                                     ; $747d: $16 $00
    ld [bc], a                                    ; $747f: $02
    rlca                                          ; $7480: $07
    sbc e                                         ; $7481: $9b
    rrca                                          ; $7482: $0f
    ld [$080f], sp                                ; $7483: $08 $0f $08
    rla                                           ; $7486: $17
    jr jr_0f0_7420                                ; $7487: $18 $97

    sbc b                                         ; $7489: $98
    adc a                                         ; $748a: $8f
    adc b                                         ; $748b: $88
    rrca                                          ; $748c: $0f
    add hl, bc                                    ; $748d: $09
    ld a, [de]                                    ; $748e: $1a
    rla                                           ; $748f: $17
    ld a, $3f                                     ; $7490: $3e $3f
    jp hl                                         ; $7492: $e9


    or $c3                                        ; $7493: $f6 $c3
    inc a                                         ; $7495: $3c
    ld [bc], a                                    ; $7496: $02
    db $fd                                        ; $7497: $fd
    xor l                                         ; $7498: $ad
    cp $5c                                        ; $7499: $fe $5c
    rst $38                                       ; $749b: $ff
    cp $03                                        ; $749c: $fe $03
    rst $38                                       ; $749e: $ff
    adc h                                         ; $749f: $8c
    rst $18                                       ; $74a0: $df
    ld a, $7f                                     ; $74a1: $3e $7f
    sbc [hl]                                      ; $74a3: $9e
    rst $38                                       ; $74a4: $ff
    nop                                           ; $74a5: $00
    ld a, a                                       ; $74a6: $7f
    add b                                         ; $74a7: $80
    rst $38                                       ; $74a8: $ff
    nop                                           ; $74a9: $00
    push de                                       ; $74aa: $d5
    ccf                                           ; $74ab: $3f
    inc b                                         ; $74ac: $04
    rst $38                                       ; $74ad: $ff
    add a                                         ; $74ae: $87
    xor d                                         ; $74af: $aa
    push de                                       ; $74b0: $d5
    ld e, a                                       ; $74b1: $5f
    and b                                         ; $74b2: $a0
    cp a                                          ; $74b3: $bf
    ret nz                                        ; $74b4: $c0

    dec b                                         ; $74b5: $05
    ld [bc], a                                    ; $74b6: $02
    rlca                                          ; $74b7: $07
    adc b                                         ; $74b8: $88
    nop                                           ; $74b9: $00
    rlca                                          ; $74ba: $07
    nop                                           ; $74bb: $00
    rlca                                          ; $74bc: $07
    nop                                           ; $74bd: $00
    dec b                                         ; $74be: $05
    ld [bc], a                                    ; $74bf: $02
    ld d, e                                       ; $74c0: $53
    ld [bc], a                                    ; $74c1: $02
    rst $38                                       ; $74c2: $ff
    sbc [hl]                                      ; $74c3: $9e
    nop                                           ; $74c4: $00
    rst $28                                       ; $74c5: $ef
    db $10                                        ; $74c6: $10
    rst $28                                       ; $74c7: $ef
    db $10                                        ; $74c8: $10
    xor a                                         ; $74c9: $af
    ld d, b                                       ; $74ca: $50
    ld e, e                                       ; $74cb: $5b
    or h                                          ; $74cc: $b4
    or l                                          ; $74cd: $b5
    ld e, d                                       ; $74ce: $5a

jr_0f0_74cf:
    ld [hl], l                                    ; $74cf: $75
    rst $38                                       ; $74d0: $ff
    cp $01                                        ; $74d1: $fe $01
    cp $01                                        ; $74d3: $fe $01
    rst $38                                       ; $74d5: $ff
    ld bc, $01fe                                  ; $74d6: $01 $fe $01
    ld e, a                                       ; $74d9: $5f
    and c                                         ; $74da: $a1
    ld d, a                                       ; $74db: $57
    rst $38                                       ; $74dc: $ff
    rst $18                                       ; $74dd: $df
    jr nz, jr_0f0_74cf                            ; $74de: $20 $ef

    stop                                          ; $74e0: $10 $00
    ld [bc], a                                    ; $74e2: $02
    add b                                         ; $74e3: $80
    add c                                         ; $74e4: $81
    nop                                           ; $74e5: $00
    inc bc                                        ; $74e6: $03
    add b                                         ; $74e7: $80
    add a                                         ; $74e8: $87
    nop                                           ; $74e9: $00
    add b                                         ; $74ea: $80
    nop                                           ; $74eb: $00
    db $e3                                        ; $74ec: $e3
    inc e                                         ; $74ed: $1c
    ld e, l                                       ; $74ee: $5d
    xor d                                         ; $74ef: $aa
    ld [bc], a                                    ; $74f0: $02
    rst $38                                       ; $74f1: $ff
    adc b                                         ; $74f2: $88
    ld a, [$f705]                                 ; $74f3: $fa $05 $f7
    ld [$00ff], sp                                ; $74f6: $08 $ff $00
    db $fd                                        ; $74f9: $fd
    ld [bc], a                                    ; $74fa: $02
    inc b                                         ; $74fb: $04
    rst $38                                       ; $74fc: $ff
    add l                                         ; $74fd: $85
    or l                                          ; $74fe: $b5
    ld c, d                                       ; $74ff: $4a
    db $eb                                        ; $7500: $eb
    inc d                                         ; $7501: $14
    add b                                         ; $7502: $80
    ld [bc], a                                    ; $7503: $02
    nop                                           ; $7504: $00
    ld b, $80                                     ; $7505: $06 $80
    adc e                                         ; $7507: $8b
    nop                                           ; $7508: $00
    add b                                         ; $7509: $80
    nop                                           ; $750a: $00
    rst $28                                       ; $750b: $ef
    db $10                                        ; $750c: $10
    rst $38                                       ; $750d: $ff
    nop                                           ; $750e: $00
    rst $38                                       ; $750f: $ff
    nop                                           ; $7510: $00
    ld a, l                                       ; $7511: $7d
    add d                                         ; $7512: $82
    ld [bc], a                                    ; $7513: $02
    rst $38                                       ; $7514: $ff
    ld a, [bc]                                    ; $7515: $0a
    nop                                           ; $7516: $00
    ld [bc], a                                    ; $7517: $02
    ret nz                                        ; $7518: $c0

    adc d                                         ; $7519: $8a
    ld [hl], b                                    ; $751a: $70
    ldh a, [$c8]                                  ; $751b: $f0 $c8
    ld a, b                                       ; $751d: $78
    ret z                                         ; $751e: $c8

    ld a, b                                       ; $751f: $78
    ld [hl], h                                    ; $7520: $74
    db $fc                                        ; $7521: $fc
    db $f4                                        ; $7522: $f4
    db $fc                                        ; $7523: $fc
    ld [bc], a                                    ; $7524: $02
    cp $02                                        ; $7525: $fe $02
    di                                            ; $7527: $f3
    add a                                         ; $7528: $87
    add hl, bc                                    ; $7529: $09
    ld sp, hl                                     ; $752a: $f9
    rst $00                                       ; $752b: $c7
    ccf                                           ; $752c: $3f
    db $fd                                        ; $752d: $fd
    inc de                                        ; $752e: $13
    or l                                          ; $752f: $b5
    ld [bc], a                                    ; $7530: $02
    ld e, e                                       ; $7531: $5b
    sub d                                         ; $7532: $92
    xor l                                         ; $7533: $ad
    dec bc                                        ; $7534: $0b
    rst $38                                       ; $7535: $ff
    xor a                                         ; $7536: $af
    db $fd                                        ; $7537: $fd
    rst $18                                       ; $7538: $df
    db $fd                                        ; $7539: $fd
    db $ed                                        ; $753a: $ed
    ld a, a                                       ; $753b: $7f
    rst $38                                       ; $753c: $ff
    ld a, e                                       ; $753d: $7b
    xor l                                         ; $753e: $ad
    ld d, e                                       ; $753f: $53
    db $dd                                        ; $7540: $dd
    inc hl                                        ; $7541: $23
    db $fd                                        ; $7542: $fd
    inc bc                                        ; $7543: $03
    xor c                                         ; $7544: $a9
    dec b                                         ; $7545: $05
    rst $38                                       ; $7546: $ff
    add a                                         ; $7547: $87
    add hl, hl                                    ; $7548: $29
    rst $10                                       ; $7549: $d7
    ld a, h                                       ; $754a: $7c
    add e                                         ; $754b: $83
    db $fd                                        ; $754c: $fd
    add e                                         ; $754d: $83
    sub h                                         ; $754e: $94
    ld [bc], a                                    ; $754f: $02
    rst $38                                       ; $7550: $ff
    xor e                                         ; $7551: $ab
    ld bc, $09f6                                  ; $7552: $01 $f6 $09
    and a                                         ; $7555: $a7
    ld e, c                                       ; $7556: $59
    ld e, [hl]                                    ; $7557: $5e
    xor c                                         ; $7558: $a9
    jr z, @+$01                                   ; $7559: $28 $ff

    call c, $ec3f                                 ; $755b: $dc $3f $ec
    ccf                                           ; $755e: $3f
    rst $10                                       ; $755f: $d7
    ccf                                           ; $7560: $3f
    rst $28                                       ; $7561: $ef
    ccf                                           ; $7562: $3f
    rst $10                                       ; $7563: $d7
    ccf                                           ; $7564: $3f
    ld c, d                                       ; $7565: $4a
    cp [hl]                                       ; $7566: $be
    sbc [hl]                                      ; $7567: $9e
    cp $aa                                        ; $7568: $fe $aa
    ld e, [hl]                                    ; $756a: $5e
    halt                                          ; $756b: $76
    sbc [hl]                                      ; $756c: $9e
    xor d                                         ; $756d: $aa
    ld e, [hl]                                    ; $756e: $5e
    ld d, [hl]                                    ; $756f: $56
    cp [hl]                                       ; $7570: $be
    xor [hl]                                      ; $7571: $ae
    ld e, [hl]                                    ; $7572: $5e
    or [hl]                                       ; $7573: $b6
    cp $ea                                        ; $7574: $fe $ea
    ld e, $f6                                     ; $7576: $1e $f6
    ld e, $f5                                     ; $7578: $1e $f5
    rrca                                          ; $757a: $0f
    ld e, a                                       ; $757b: $5f
    xor a                                         ; $757c: $af
    ld [bc], a                                    ; $757d: $02
    rst $38                                       ; $757e: $ff
    adc b                                         ; $757f: $88
    ld hl, sp+$07                                 ; $7580: $f8 $07
    push af                                       ; $7582: $f5
    rrca                                          ; $7583: $0f
    db $ec                                        ; $7584: $ec
    rla                                           ; $7585: $17
    ld d, l                                       ; $7586: $55
    xor a                                         ; $7587: $af
    ld [bc], a                                    ; $7588: $02
    rst $38                                       ; $7589: $ff
    adc e                                         ; $758a: $8b
    cp $ff                                        ; $758b: $fe $ff
    ld hl, sp+$07                                 ; $758d: $f8 $07
    db $fc                                        ; $758f: $fc
    inc bc                                        ; $7590: $03
    ld a, [$f607]                                 ; $7591: $fa $07 $f6
    dec bc                                        ; $7594: $0b
    xor d                                         ; $7595: $aa
    ld [bc], a                                    ; $7596: $02
    ld d, a                                       ; $7597: $57
    add c                                         ; $7598: $81
    xor e                                         ; $7599: $ab
    ld [bc], a                                    ; $759a: $02
    db $fc                                        ; $759b: $fc
    adc b                                         ; $759c: $88
    add b                                         ; $759d: $80
    nop                                           ; $759e: $00
    add b                                         ; $759f: $80
    nop                                           ; $75a0: $00
    add b                                         ; $75a1: $80
    nop                                           ; $75a2: $00
    add b                                         ; $75a3: $80
    nop                                           ; $75a4: $00
    ld [bc], a                                    ; $75a5: $02
    add b                                         ; $75a6: $80
    ld d, $00                                     ; $75a7: $16 $00
    ld [bc], a                                    ; $75a9: $02
    ld hl, sp-$4e                                 ; $75aa: $f8 $b2
    halt                                          ; $75ac: $76
    adc [hl]                                      ; $75ad: $8e
    ld a, c                                       ; $75ae: $79
    adc a                                         ; $75af: $8f
    push af                                       ; $75b0: $f5
    dec bc                                        ; $75b1: $0b
    ld a, c                                       ; $75b2: $79
    adc a                                         ; $75b3: $8f
    db $fd                                        ; $75b4: $fd
    dec bc                                        ; $75b5: $0b
    ld sp, hl                                     ; $75b6: $f9
    rrca                                          ; $75b7: $0f
    ld sp, hl                                     ; $75b8: $f9
    rrca                                          ; $75b9: $0f
    ld sp, hl                                     ; $75ba: $f9
    rrca                                          ; $75bb: $0f
    ld sp, hl                                     ; $75bc: $f9
    rrca                                          ; $75bd: $0f
    jp hl                                         ; $75be: $e9


    rra                                           ; $75bf: $1f
    ld sp, hl                                     ; $75c0: $f9
    rrca                                          ; $75c1: $0f
    jp hl                                         ; $75c2: $e9


    rra                                           ; $75c3: $1f
    ld sp, hl                                     ; $75c4: $f9
    rrca                                          ; $75c5: $0f
    jp hl                                         ; $75c6: $e9


    rra                                           ; $75c7: $1f
    ld l, c                                       ; $75c8: $69
    sbc a                                         ; $75c9: $9f
    pop af                                        ; $75ca: $f1
    rra                                           ; $75cb: $1f
    ld a, c                                       ; $75cc: $79
    sub a                                         ; $75cd: $97
    ld [hl], d                                    ; $75ce: $72
    sbc [hl]                                      ; $75cf: $9e
    cp d                                          ; $75d0: $ba
    sub $f2                                       ; $75d1: $d6 $f2
    sbc [hl]                                      ; $75d3: $9e
    or d                                          ; $75d4: $b2
    sbc $c2                                       ; $75d5: $de $c2
    cp [hl]                                       ; $75d7: $be
    or d                                          ; $75d8: $b2
    sbc $44                                       ; $75d9: $de $44
    db $fc                                        ; $75db: $fc
    db $e4                                        ; $75dc: $e4
    call c, Call_000_0406                         ; $75dd: $dc $06 $04
    ld b, $00                                     ; $75e0: $06 $00
    ld [bc], a                                    ; $75e2: $02
    add b                                         ; $75e3: $80
    add c                                         ; $75e4: $81
    ld b, b                                       ; $75e5: $40
    inc bc                                        ; $75e6: $03
    ret nz                                        ; $75e7: $c0

    add c                                         ; $75e8: $81
    ld b, b                                       ; $75e9: $40
    inc bc                                        ; $75ea: $03
    ret nz                                        ; $75eb: $c0

    add d                                         ; $75ec: $82
    ld h, b                                       ; $75ed: $60
    ldh [rSC], a                                  ; $75ee: $e0 $02
    ldh a, [$8a]                                  ; $75f0: $f0 $8a
    or b                                          ; $75f2: $b0
    ldh a, [$50]                                  ; $75f3: $f0 $50
    ldh a, [$30]                                  ; $75f5: $f0 $30
    ldh a, [$50]                                  ; $75f7: $f0 $50
    ldh a, [$60]                                  ; $75f9: $f0 $60
    ldh [rSC], a                                  ; $75fb: $e0 $02
    add b                                         ; $75fd: $80
    ld b, $00                                     ; $75fe: $06 $00
    rst $38                                       ; $7600: $ff
    dec l                                         ; $7601: $2d
    inc d                                         ; $7602: $14
    rst $30                                       ; $7603: $f7
    ld a, [bc]                                    ; $7604: $0a
    jp $bd00                                      ; $7605: $c3 $00 $bd


    db $e3                                        ; $7608: $e3
    cp a                                          ; $7609: $bf
    db $eb                                        ; $760a: $eb
    pop bc                                        ; $760b: $c1
    di                                            ; $760c: $f3
    ret nz                                        ; $760d: $c0

    ei                                            ; $760e: $fb
    jp nz, $c203                                  ; $760f: $c2 $03 $c2

    add hl, bc                                    ; $7612: $09
    ret nc                                        ; $7613: $d0

    db $f4                                        ; $7614: $f4
    ret nc                                        ; $7615: $d0

    db $fc                                        ; $7616: $fc
    jp nc, $d204                                  ; $7617: $d2 $04 $d2

    add hl, bc                                    ; $761a: $09
    ldh [$f5], a                                  ; $761b: $e0 $f5
    ldh [$fd], a                                  ; $761d: $e0 $fd
    ld [c], a                                     ; $761f: $e2
    dec b                                         ; $7620: $05
    ldh a, [$f1]                                  ; $7621: $f0 $f1
    ldh a, [$f9]                                  ; $7623: $f0 $f9
    ldh a, [rSB]                                  ; $7625: $f0 $01
    ld a, [c]                                     ; $7627: $f2
    add hl, bc                                    ; $7628: $09
    db $fd                                        ; $7629: $fd
    rst $30                                       ; $762a: $f7
    db $fd                                        ; $762b: $fd
    rst $38                                       ; $762c: $ff
    db $fd                                        ; $762d: $fd
    ld bc, $7002                                  ; $762e: $01 $02 $70
    adc b                                         ; $7631: $88
    xor h                                         ; $7632: $ac
    call c, Call_0f0_736f                         ; $7633: $dc $6f $73
    add hl, de                                    ; $7636: $19
    ld e, $06                                     ; $7637: $1e $06
    rlca                                          ; $7639: $07
    ld [bc], a                                    ; $763a: $02
    ld bc, $0014                                  ; $763b: $01 $14 $00
    ld [bc], a                                    ; $763e: $02
    add b                                         ; $763f: $80
    adc h                                         ; $7640: $8c
    ldh a, [rSVBK]                                ; $7641: $f0 $70
    ld a, [hl]                                    ; $7643: $7e
    adc [hl]                                      ; $7644: $8e
    sub l                                         ; $7645: $95
    db $eb                                        ; $7646: $eb
    ld h, e                                       ; $7647: $63
    ld a, a                                       ; $7648: $7f
    ld a, [de]                                    ; $7649: $1a
    rra                                           ; $764a: $1f
    ld b, $07                                     ; $764b: $06 $07
    ld b, $01                                     ; $764d: $06 $01
    inc c                                         ; $764f: $0c
    nop                                           ; $7650: $00
    ld [bc], a                                    ; $7651: $02
    ld bc, $8102                                  ; $7652: $01 $02 $81

jr_0f0_7655:
    sub [hl]                                      ; $7655: $96
    pop bc                                        ; $7656: $c1
    ld b, c                                       ; $7657: $41
    pop hl                                        ; $7658: $e1
    ld hl, $e020                                  ; $7659: $21 $20 $e0
    ld b, b                                       ; $765c: $40
    ret nz                                        ; $765d: $c0

    pop hl                                        ; $765e: $e1
    and c                                         ; $765f: $a1
    ld [hl], c                                    ; $7660: $71
    sub c                                         ; $7661: $91
    cp [hl]                                       ; $7662: $be
    rst $18                                       ; $7663: $df
    sbc e                                         ; $7664: $9b
    db $ec                                        ; $7665: $ec
    ld h, b                                       ; $7666: $60
    ld a, a                                       ; $7667: $7f
    ld c, d                                       ; $7668: $4a
    ld a, a                                       ; $7669: $7f
    dec a                                         ; $766a: $3d
    ccf                                           ; $766b: $3f
    ld [bc], a                                    ; $766c: $02
    rlca                                          ; $766d: $07
    ld [bc], a                                    ; $766e: $02
    ld bc, $0702                                  ; $766f: $01 $02 $07
    ld [bc], a                                    ; $7672: $02
    ld hl, sp-$62                                 ; $7673: $f8 $9e
    xor $1e                                       ; $7675: $ee $1e
    ld sp, hl                                     ; $7677: $f9
    rrca                                          ; $7678: $0f
    ld a, b                                       ; $7679: $78
    adc a                                         ; $767a: $8f
    ld a, [hl]                                    ; $767b: $7e
    adc a                                         ; $767c: $8f
    rst $38                                       ; $767d: $ff
    adc a                                         ; $767e: $8f
    rst $38                                       ; $767f: $ff
    sbc a                                         ; $7680: $9f
    xor [hl]                                      ; $7681: $ae
    ld a, a                                       ; $7682: $7f
    ldh a, [rIE]                                  ; $7683: $f0 $ff
    adc $31                                       ; $7685: $ce $31
    rra                                           ; $7687: $1f
    ldh [rNR22], a                                ; $7688: $e0 $17
    add sp, $4a                                   ; $768a: $e8 $4a
    push af                                       ; $768c: $f5
    push bc                                       ; $768d: $c5
    ld a, [$ffe8]                                 ; $768e: $fa $e8 $ff
    push de                                       ; $7691: $d5
    rst $38                                       ; $7692: $ff
    ld [bc], a                                    ; $7693: $02
    ld bc, $9e9e                                  ; $7694: $01 $9e $9e
    sbc a                                         ; $7697: $9f
    xor a                                         ; $7698: $af
    or b                                          ; $7699: $b0
    cp a                                          ; $769a: $bf
    and b                                         ; $769b: $a0
    rst $28                                       ; $769c: $ef
    ldh a, [$ef]                                  ; $769d: $f0 $ef
    ldh a, [$1f]                                  ; $769f: $f0 $1f
    ldh a, [$9f]                                  ; $76a1: $f0 $9f
    ldh a, [$9f]                                  ; $76a3: $f0 $9f
    ldh a, [$df]                                  ; $76a5: $f0 $df
    ld [hl], b                                    ; $76a7: $70
    rst $30                                       ; $76a8: $f7
    ld a, b                                       ; $76a9: $78
    rst $30                                       ; $76aa: $f7
    ret c                                         ; $76ab: $d8

    ld a, a                                       ; $76ac: $7f
    ret z                                         ; $76ad: $c8

    ld l, a                                       ; $76ae: $6f
    ld hl, sp-$05                                 ; $76af: $f8 $fb
    db $fc                                        ; $76b1: $fc
    db $eb                                        ; $76b2: $eb
    db $fc                                        ; $76b3: $fc
    ld [bc], a                                    ; $76b4: $02
    jr nc, jr_0f0_7655                            ; $76b5: $30 $9e

    inc c                                         ; $76b7: $0c
    inc a                                         ; $76b8: $3c
    ld [hl+], a                                   ; $76b9: $22
    ld a, $32                                     ; $76ba: $3e $32
    ld l, $22                                     ; $76bc: $2e $22
    ld a, $32                                     ; $76be: $3e $32
    ld l, $12                                     ; $76c0: $2e $12
    ld a, $02                                     ; $76c2: $3e $02
    ld a, $32                                     ; $76c4: $3e $32
    ld e, $12                                     ; $76c6: $1e $12
    ld a, $31                                     ; $76c8: $3e $31
    rra                                           ; $76ca: $1f
    add hl, sp                                    ; $76cb: $39
    rla                                           ; $76cc: $17
    ld sp, $391f                                  ; $76cd: $31 $1f $39
    rla                                           ; $76d0: $17
    add hl, hl                                    ; $76d1: $29
    rra                                           ; $76d2: $1f
    add hl, hl                                    ; $76d3: $29
    rra                                           ; $76d4: $1f
    ld [bc], a                                    ; $76d5: $02
    ld bc, $3e8e                                  ; $76d6: $01 $8e $3e
    add hl, sp                                    ; $76d9: $39
    ei                                            ; $76da: $fb
    db $fc                                        ; $76db: $fc
    cp a                                          ; $76dc: $bf
    ld hl, sp-$7d                                 ; $76dd: $f8 $83
    db $fc                                        ; $76df: $fc
    add a                                         ; $76e0: $87
    ld hl, sp-$7a                                 ; $76e1: $f8 $86
    ld sp, hl                                     ; $76e3: $f9
    sub a                                         ; $76e4: $97
    rst $38                                       ; $76e5: $ff
    ld [bc], a                                    ; $76e6: $02
    ld a, a                                       ; $76e7: $7f
    add a                                         ; $76e8: $87
    dec a                                         ; $76e9: $3d
    ld a, $2a                                     ; $76ea: $3e $2a
    dec [hl]                                      ; $76ec: $35
    dec h                                         ; $76ed: $25
    ld a, $28                                     ; $76ee: $3e $28
    ld [bc], a                                    ; $76f0: $02
    scf                                           ; $76f1: $37
    add l                                         ; $76f2: $85
    inc a                                         ; $76f3: $3c
    dec hl                                        ; $76f4: $2b
    inc [hl]                                      ; $76f5: $34
    dec h                                         ; $76f6: $25
    ld a, $03                                     ; $76f7: $3e $03
    cp $8a                                        ; $76f9: $fe $8a
    ld a, [c]                                     ; $76fb: $f2
    rst $38                                       ; $76fc: $ff
    di                                            ; $76fd: $f3
    db $fd                                        ; $76fe: $fd
    ld [bc], a                                    ; $76ff: $02
    cp $01                                        ; $7700: $fe $01
    rst $38                                       ; $7702: $ff
    nop                                           ; $7703: $00
    xor l                                         ; $7704: $ad
    dec b                                         ; $7705: $05
    rst $38                                       ; $7706: $ff
    add a                                         ; $7707: $87
    ld d, c                                       ; $7708: $51
    xor [hl]                                      ; $7709: $ae
    ei                                            ; $770a: $fb
    inc b                                         ; $770b: $04
    rst $38                                       ; $770c: $ff
    inc b                                         ; $770d: $04
    xor h                                         ; $770e: $ac
    ld [bc], a                                    ; $770f: $02
    rst $38                                       ; $7710: $ff
    sub b                                         ; $7711: $90
    nop                                           ; $7712: $00
    ld a, a                                       ; $7713: $7f
    add b                                         ; $7714: $80
    db $fd                                        ; $7715: $fd
    add d                                         ; $7716: $82
    rst $08                                       ; $7717: $cf
    ld hl, sp+$6f                                 ; $7718: $f8 $6f
    sbc b                                         ; $771a: $98
    db $eb                                        ; $771b: $eb
    inc e                                         ; $771c: $1c
    rst $20                                       ; $771d: $e7
    inc e                                         ; $771e: $1c
    ld d, [hl]                                    ; $771f: $56
    db $ed                                        ; $7720: $ed
    db $fd                                        ; $7721: $fd
    ld [bc], a                                    ; $7722: $02
    cp $88                                        ; $7723: $fe $88
    rst $38                                       ; $7725: $ff
    ld e, [hl]                                    ; $7726: $5e
    xor a                                         ; $7727: $af
    push af                                       ; $7728: $f5
    rrca                                          ; $7729: $0f
    ei                                            ; $772a: $fb
    rrca                                          ; $772b: $0f
    and l                                         ; $772c: $a5
    ld [bc], a                                    ; $772d: $02
    rst $38                                       ; $772e: $ff
    and c                                         ; $772f: $a1

jr_0f0_7730:
    rrca                                          ; $7730: $0f
    or l                                          ; $7731: $b5
    ld c, a                                       ; $7732: $4f
    dec sp                                        ; $7733: $3b
    rst $08                                       ; $7734: $cf
    push af                                       ; $7735: $f5
    ld c, a                                       ; $7736: $4f
    set 7, a                                      ; $7737: $cb $ff
    add hl, de                                    ; $7739: $19
    rrca                                          ; $773a: $0f
    add hl, bc                                    ; $773b: $09
    rra                                           ; $773c: $1f
    add hl, de                                    ; $773d: $19
    rrca                                          ; $773e: $0f
    add hl, de                                    ; $773f: $19
    rrca                                          ; $7740: $0f
    ld de, $090f                                  ; $7741: $11 $0f $09
    rra                                           ; $7744: $1f
    ld de, $090f                                  ; $7745: $11 $0f $09
    rla                                           ; $7748: $17
    ld [de], a                                    ; $7749: $12
    ld c, $0a                                     ; $774a: $0e $0a
    ld d, $12                                     ; $774c: $16 $12
    ld e, $0a                                     ; $774e: $1e $0a
    ld c, $02                                     ; $7750: $0e $02
    inc b                                         ; $7752: $04
    ld b, $00                                     ; $7753: $06 $00
    xor l                                         ; $7755: $ad
    ld d, h                                       ; $7756: $54
    ld l, e                                       ; $7757: $6b
    ld c, c                                       ; $7758: $49
    ld a, a                                       ; $7759: $7f
    ld h, a                                       ; $775a: $67
    ld a, b                                       ; $775b: $78
    ld c, a                                       ; $775c: $4f
    ld a, b                                       ; $775d: $78
    ld d, a                                       ; $775e: $57
    ld l, b                                       ; $775f: $68
    ld c, a                                       ; $7760: $4f
    ld a, b                                       ; $7761: $78
    sub a                                         ; $7762: $97
    add sp, -$5b                                  ; $7763: $e8 $a5
    jp c, $ffd2                                   ; $7765: $da $d2 $ff

    xor a                                         ; $7768: $af
    ret nc                                        ; $7769: $d0

    sbc [hl]                                      ; $776a: $9e
    pop af                                        ; $776b: $f1
    xor [hl]                                      ; $776c: $ae
    pop de                                        ; $776d: $d1
    sbc a                                         ; $776e: $9f
    pop af                                        ; $776f: $f1
    adc $f1                                       ; $7770: $ce $f1
    sub c                                         ; $7772: $91
    rst $38                                       ; $7773: $ff
    xor a                                         ; $7774: $af
    ret nc                                        ; $7775: $d0

    call nc, $a82a                                ; $7776: $d4 $2a $a8
    cp $ff                                        ; $7779: $fe $ff
    nop                                           ; $777b: $00
    rst $30                                       ; $777c: $f7
    ld [$08f7], sp                                ; $777d: $08 $f7 $08
    rst $10                                       ; $7780: $d7
    jr z, jr_0f0_7730                             ; $7781: $28 $ad

    ld [bc], a                                    ; $7783: $02
    ld e, d                                       ; $7784: $5a
    add d                                         ; $7785: $82
    xor l                                         ; $7786: $ad
    cp d                                          ; $7787: $ba
    ld [bc], a                                    ; $7788: $02
    rst $38                                       ; $7789: $ff
    or c                                          ; $778a: $b1
    nop                                           ; $778b: $00
    rst $38                                       ; $778c: $ff
    nop                                           ; $778d: $00
    rst $38                                       ; $778e: $ff
    nop                                           ; $778f: $00
    ld a, a                                       ; $7790: $7f
    add b                                         ; $7791: $80
    xor a                                         ; $7792: $af
    ld d, b                                       ; $7793: $50
    xor e                                         ; $7794: $ab
    rst $38                                       ; $7795: $ff
    rst $28                                       ; $7796: $ef
    db $10                                        ; $7797: $10
    xor $1e                                       ; $7798: $ee $1e
    or $1e                                        ; $779a: $f6 $1e
    ld [$f61e], a                                 ; $779c: $ea $1e $f6
    ld e, $eb                                     ; $779f: $1e $eb
    rra                                           ; $77a1: $1f
    and l                                         ; $77a2: $a5
    ld e, a                                       ; $77a3: $5f
    rst $08                                       ; $77a4: $cf
    rst $38                                       ; $77a5: $ff
    ld d, l                                       ; $77a6: $55
    xor a                                         ; $77a7: $af
    dec sp                                        ; $77a8: $3b
    rst $08                                       ; $77a9: $cf
    push de                                       ; $77aa: $d5
    xor a                                         ; $77ab: $af
    dec hl                                        ; $77ac: $2b
    rst $18                                       ; $77ad: $df
    rst $10                                       ; $77ae: $d7
    xor a                                         ; $77af: $af
    db $db                                        ; $77b0: $db
    rst $38                                       ; $77b1: $ff
    push af                                       ; $77b2: $f5
    rrca                                          ; $77b3: $0f
    ei                                            ; $77b4: $fb
    rrca                                          ; $77b5: $0f
    push af                                       ; $77b6: $f5
    rrca                                          ; $77b7: $0f
    add hl, bc                                    ; $77b8: $09
    rrca                                          ; $77b9: $0f
    ld a, [bc]                                    ; $77ba: $0a
    dec c                                         ; $77bb: $0d
    ld [bc], a                                    ; $77bc: $02

jr_0f0_77bd:
    rra                                           ; $77bd: $1f
    and b                                         ; $77be: $a0
    cpl                                           ; $77bf: $2f
    ccf                                           ; $77c0: $3f
    dec h                                         ; $77c1: $25
    ld a, [hl-]                                   ; $77c2: $3a
    ld a, [hl+]                                   ; $77c3: $2a
    scf                                           ; $77c4: $37
    dec h                                         ; $77c5: $25
    ld a, [hl-]                                   ; $77c6: $3a
    ld e, e                                       ; $77c7: $5b
    ld a, [hl]                                    ; $77c8: $7e
    xor a                                         ; $77c9: $af
    rst $38                                       ; $77ca: $ff
    sub a                                         ; $77cb: $97
    rst $38                                       ; $77cc: $ff
    adc e                                         ; $77cd: $8b
    db $f4                                        ; $77ce: $f4
    sub a                                         ; $77cf: $97
    db $ec                                        ; $77d0: $ec
    xor c                                         ; $77d1: $a9
    sub $76                                       ; $77d2: $d6 $76
    ld l, l                                       ; $77d4: $6d
    ld de, $0e1e                                  ; $77d5: $11 $1e $0e
    dec c                                         ; $77d8: $0d
    rst $38                                       ; $77d9: $ff
    nop                                           ; $77da: $00
    cp $01                                        ; $77db: $fe $01
    ld [hl], l                                    ; $77dd: $75
    adc d                                         ; $77de: $8a
    ld [bc], a                                    ; $77df: $02
    rst $38                                       ; $77e0: $ff
    adc b                                         ; $77e1: $88
    ld e, a                                       ; $77e2: $5f
    and b                                         ; $77e3: $a0
    rst $38                                       ; $77e4: $ff
    nop                                           ; $77e5: $00
    rst $38                                       ; $77e6: $ff
    nop                                           ; $77e7: $00
    xor a                                         ; $77e8: $af
    ld d, b                                       ; $77e9: $50
    inc b                                         ; $77ea: $04
    rst $38                                       ; $77eb: $ff
    sub d                                         ; $77ec: $92
    ei                                            ; $77ed: $fb
    inc b                                         ; $77ee: $04
    cp $01                                        ; $77ef: $fe $01
    db $fd                                        ; $77f1: $fd
    ld [bc], a                                    ; $77f2: $02
    rst $38                                       ; $77f3: $ff
    nop                                           ; $77f4: $00
    rst $38                                       ; $77f5: $ff
    nop                                           ; $77f6: $00
    xor a                                         ; $77f7: $af
    ld d, b                                       ; $77f8: $50
    ld [hl], b                                    ; $77f9: $70
    add b                                         ; $77fa: $80
    jr nc, jr_0f0_77bd                            ; $77fb: $30 $c0

    push de                                       ; $77fd: $d5
    xor d                                         ; $77fe: $aa
    ld [bc], a                                    ; $77ff: $02
    rst $38                                       ; $7800: $ff
    adc b                                         ; $7801: $88
    xor a                                         ; $7802: $af
    ld d, b                                       ; $7803: $50
    ld a, a                                       ; $7804: $7f
    add b                                         ; $7805: $80
    cp $01                                        ; $7806: $fe $01
    push de                                       ; $7808: $d5
    ld a, [hl+]                                   ; $7809: $2a
    inc b                                         ; $780a: $04
    rst $38                                       ; $780b: $ff
    adc h                                         ; $780c: $8c
    ld e, a                                       ; $780d: $5f
    and b                                         ; $780e: $a0
    cp a                                          ; $780f: $bf
    ld b, b                                       ; $7810: $40
    rst $38                                       ; $7811: $ff
    nop                                           ; $7812: $00
    rst $38                                       ; $7813: $ff
    nop                                           ; $7814: $00
    ld a, [$b505]                                 ; $7815: $fa $05 $b5
    ld c, d                                       ; $7818: $4a
    ld [bc], a                                    ; $7819: $02
    ld hl, sp-$76                                 ; $781a: $f8 $8a
    db $f4                                        ; $781c: $f4
    db $fc                                        ; $781d: $fc
    adc h                                         ; $781e: $8c
    ld a, h                                       ; $781f: $7c
    ld d, h                                       ; $7820: $54
    db $fc                                        ; $7821: $fc
    call z, Call_0f0_567c                         ; $7822: $cc $7c $56
    cp $02                                        ; $7825: $fe $02
    rst $38                                       ; $7827: $ff
    adc [hl]                                      ; $7828: $8e
    db $eb                                        ; $7829: $eb
    rst $38                                       ; $782a: $ff
    add l                                         ; $782b: $85
    ld a, a                                       ; $782c: $7f
    jp $a53f                                      ; $782d: $c3 $3f $a5


    ld a, a                                       ; $7830: $7f
    ld h, [hl]                                    ; $7831: $66
    cp [hl]                                       ; $7832: $be
    xor b                                         ; $7833: $a8
    ld a, b                                       ; $7834: $78
    ld [hl], b                                    ; $7835: $70
    or b                                          ; $7836: $b0
    ld [bc], a                                    ; $7837: $02
    ret nz                                        ; $7838: $c0

    ld [$0200], sp                                ; $7839: $08 $00 $02
    rst $38                                       ; $783c: $ff
    ld e, $00                                     ; $783d: $1e $00
    ld [bc], a                                    ; $783f: $02
    rst $38                                       ; $7840: $ff
    ld e, $00                                     ; $7841: $1e $00
    ld [bc], a                                    ; $7843: $02
    inc bc                                        ; $7844: $03
    jr jr_0f0_7847                                ; $7845: $18 $00

jr_0f0_7847:
    rst $38                                       ; $7847: $ff
    add hl, hl                                    ; $7848: $29
    ld [de], a                                    ; $7849: $12
    rst $30                                       ; $784a: $f7
    ld a, [bc]                                    ; $784b: $0a
    jp $c500                                      ; $784c: $c3 $00 $c5


    ld hl, sp-$3f                                 ; $784f: $f8 $c1
    nop                                           ; $7851: $00
    pop bc                                        ; $7852: $c1
    ld [$0cc0], sp                                ; $7853: $08 $c0 $0c
    pop de                                        ; $7856: $d1
    db $f4                                        ; $7857: $f4
    pop de                                        ; $7858: $d1
    db $fc                                        ; $7859: $fc
    pop de                                        ; $785a: $d1
    inc b                                         ; $785b: $04
    ret nc                                        ; $785c: $d0

    ld a, [bc]                                    ; $785d: $0a
    pop hl                                        ; $785e: $e1
    push af                                       ; $785f: $f5
    pop hl                                        ; $7860: $e1
    db $fd                                        ; $7861: $fd
    ldh [rTIMA], a                                ; $7862: $e0 $05
    ldh [rTAC], a                                 ; $7864: $e0 $07
    pop af                                        ; $7866: $f1
    pop af                                        ; $7867: $f1
    pop af                                        ; $7868: $f1
    ld sp, hl                                     ; $7869: $f9
    ldh a, [rSB]                                  ; $786a: $f0 $01
    ldh a, [$09]                                  ; $786c: $f0 $09
    nop                                           ; $786e: $00
    ld bc, $0300                                  ; $786f: $01 $00 $03
    ld [bc], a                                    ; $7872: $02
    ld bc, $0282                                  ; $7873: $01 $82 $02
    inc bc                                        ; $7876: $03
    ld [bc], a                                    ; $7877: $02
    ld bc, $0302                                  ; $7878: $01 $02 $03
    adc e                                         ; $787b: $8b
    ld a, a                                       ; $787c: $7f
    ld a, h                                       ; $787d: $7c
    cp d                                          ; $787e: $ba
    push bc                                       ; $787f: $c5
    sub b                                         ; $7880: $90
    rst $38                                       ; $7881: $ff
    rst $08                                       ; $7882: $cf
    rst $38                                       ; $7883: $ff
    ld [hl], l                                    ; $7884: $75
    ld a, a                                       ; $7885: $7f
    ld a, [hl-]                                   ; $7886: $3a
    inc bc                                        ; $7887: $03
    ccf                                           ; $7888: $3f
    ld [bc], a                                    ; $7889: $02
    rst $38                                       ; $788a: $ff
    adc b                                         ; $788b: $88
    rst $28                                       ; $788c: $ef
    sbc a                                         ; $788d: $9f
    cp a                                          ; $788e: $bf
    rst $08                                       ; $788f: $cf
    rst $38                                       ; $7890: $ff
    add b                                         ; $7891: $80
    ccf                                           ; $7892: $3f
    ret nz                                        ; $7893: $c0

    ld [bc], a                                    ; $7894: $02
    rlca                                          ; $7895: $07
    sbc e                                         ; $7896: $9b
    dec bc                                        ; $7897: $0b
    inc c                                         ; $7898: $0c
    rla                                           ; $7899: $17
    jr jr_0f0_78db                                ; $789a: $18 $3f

    jr nz, @+$01                                  ; $789c: $20 $ff

    pop bc                                        ; $789e: $c1
    rst $38                                       ; $789f: $ff
    ld b, $5a                                     ; $78a0: $06 $5a
    cp l                                          ; $78a2: $bd
    ld hl, sp-$11                                 ; $78a3: $f8 $ef
    ld e, l                                       ; $78a5: $5d
    rst $20                                       ; $78a6: $e7
    ld b, a                                       ; $78a7: $47
    rst $38                                       ; $78a8: $ff
    jp hl                                         ; $78a9: $e9


    rst $38                                       ; $78aa: $ff
    inc d                                         ; $78ab: $14
    ei                                            ; $78ac: $fb
    ld d, [hl]                                    ; $78ad: $56
    db $eb                                        ; $78ae: $eb
    xor [hl]                                      ; $78af: $ae
    rst $38                                       ; $78b0: $ff
    ld d, l                                       ; $78b1: $55
    inc bc                                        ; $78b2: $03

jr_0f0_78b3:
    rst $38                                       ; $78b3: $ff
    ld [bc], a                                    ; $78b4: $02
    ld bc, $878c                                  ; $78b5: $01 $8c $87
    add [hl]                                      ; $78b8: $86
    ld e, [hl]                                    ; $78b9: $5e
    reti                                          ; $78ba: $d9


    ld a, c                                       ; $78bb: $79
    rst $20                                       ; $78bc: $e7
    and $9e                                       ; $78bd: $e6 $9e
    ld c, b                                       ; $78bf: $48
    cp b                                          ; $78c0: $b8
    jr nc, jr_0f0_78b3                            ; $78c1: $30 $f0

    ld [bc], a                                    ; $78c3: $02
    ldh [rSC], a                                  ; $78c4: $e0 $02
    and b                                         ; $78c6: $a0
    ld [bc], a                                    ; $78c7: $02
    add b                                         ; $78c8: $80
    ld [bc], a                                    ; $78c9: $02
    ld a, b                                       ; $78ca: $78
    adc d                                         ; $78cb: $8a
    cp [hl]                                       ; $78cc: $be
    add $f9                                       ; $78cd: $c6 $f9
    add a                                         ; $78cf: $87
    db $fc                                        ; $78d0: $fc
    add a                                         ; $78d1: $87
    db $fc                                        ; $78d2: $fc
    add a                                         ; $78d3: $87
    ld a, h                                       ; $78d4: $7c
    add a                                         ; $78d5: $87
    ld [bc], a                                    ; $78d6: $02
    ld b, $86                                     ; $78d7: $06 $86
    dec c                                         ; $78d9: $0d
    dec bc                                        ; $78da: $0b

jr_0f0_78db:
    ld [bc], a                                    ; $78db: $02
    ld c, $04                                     ; $78dc: $0e $04
    inc c                                         ; $78de: $0c
    ld [bc], a                                    ; $78df: $02
    ld [$0012], sp                                ; $78e0: $08 $12 $00
    ld [bc], a                                    ; $78e3: $02
    ld [$0482], sp                                ; $78e4: $08 $82 $04
    inc c                                         ; $78e7: $0c
    ld [bc], a                                    ; $78e8: $02
    jr nc, jr_0f0_78ed                            ; $78e9: $30 $02

    ldh a, [$8a]                                  ; $78eb: $f0 $8a

jr_0f0_78ed:
    or b                                          ; $78ed: $b0
    ldh a, [$80]                                  ; $78ee: $f0 $80
    ldh a, [$87]                                  ; $78f0: $f0 $87
    ld hl, sp-$7a                                 ; $78f2: $f8 $86
    ld sp, hl                                     ; $78f4: $f9
    sub a                                         ; $78f5: $97
    rst $38                                       ; $78f6: $ff
    ld [bc], a                                    ; $78f7: $02
    ld a, a                                       ; $78f8: $7f
    add a                                         ; $78f9: $87
    dec a                                         ; $78fa: $3d
    ld a, $2a                                     ; $78fb: $3e $2a
    dec [hl]                                      ; $78fd: $35
    dec h                                         ; $78fe: $25
    ld a, $28                                     ; $78ff: $3e $28
    ld [bc], a                                    ; $7901: $02
    scf                                           ; $7902: $37
    sub d                                         ; $7903: $92
    inc a                                         ; $7904: $3c
    dec hl                                        ; $7905: $2b
    inc [hl]                                      ; $7906: $34
    dec h                                         ; $7907: $25
    ld a, $2a                                     ; $7908: $3e $2a
    dec [hl]                                      ; $790a: $35
    rrca                                          ; $790b: $0f
    inc bc                                        ; $790c: $03
    rrca                                          ; $790d: $0f
    inc bc                                        ; $790e: $03
    dec c                                         ; $790f: $0d
    ld [bc], a                                    ; $7910: $02
    ld c, $01                                     ; $7911: $0e $01
    rst $38                                       ; $7913: $ff
    nop                                           ; $7914: $00
    xor l                                         ; $7915: $ad
    dec b                                         ; $7916: $05
    rst $38                                       ; $7917: $ff
    add a                                         ; $7918: $87
    ld d, c                                       ; $7919: $51
    xor [hl]                                      ; $791a: $ae
    ei                                            ; $791b: $fb
    inc b                                         ; $791c: $04
    rst $38                                       ; $791d: $ff
    inc b                                         ; $791e: $04
    xor h                                         ; $791f: $ac
    ld [bc], a                                    ; $7920: $02
    rst $38                                       ; $7921: $ff
    add sp, $00                                   ; $7922: $e8 $00
    ld a, a                                       ; $7924: $7f
    add b                                         ; $7925: $80
    db $fd                                        ; $7926: $fd
    add d                                         ; $7927: $82
    ld l, d                                       ; $7928: $6a
    sub l                                         ; $7929: $95
    rst $10                                       ; $792a: $d7
    ld hl, sp-$01                                 ; $792b: $f8 $ff
    ldh a, [rPCM34]                               ; $792d: $f0 $77
    ret c                                         ; $792f: $d8

    rst $38                                       ; $7930: $ff
    ld d, b                                       ; $7931: $50
    rst $18                                       ; $7932: $df
    ld [hl], b                                    ; $7933: $70
    ld a, a                                       ; $7934: $7f
    ldh a, [rIE]                                  ; $7935: $f0 $ff
    ldh a, [$ef]                                  ; $7937: $f0 $ef
    ldh a, [$2f]                                  ; $7939: $f0 $2f
    ldh a, [$bf]                                  ; $793b: $f0 $bf
    ld h, b                                       ; $793d: $60
    xor a                                         ; $793e: $af
    ld [hl], b                                    ; $793f: $70
    cp [hl]                                       ; $7940: $be
    pop hl                                        ; $7941: $e1
    cp a                                          ; $7942: $bf

jr_0f0_7943:
    ld h, b                                       ; $7943: $60
    cp [hl]                                       ; $7944: $be
    ld h, c                                       ; $7945: $61
    ccf                                           ; $7946: $3f
    pop hl                                        ; $7947: $e1
    db $ed                                        ; $7948: $ed
    ld [hl], e                                    ; $7949: $73
    ld bc, $3103                                  ; $794a: $01 $03 $31
    rra                                           ; $794d: $1f
    ld de, $323f                                  ; $794e: $11 $3f $32
    ld e, $12                                     ; $7951: $1e $12
    ld a, $22                                     ; $7953: $3e $22
    ld a, $32                                     ; $7955: $3e $32
    ld l, $22                                     ; $7957: $2e $22
    ld a, $32                                     ; $7959: $3e $32
    ld l, $24                                     ; $795b: $2e $24
    inc a                                         ; $795d: $3c
    inc h                                         ; $795e: $24
    inc a                                         ; $795f: $3c
    inc h                                         ; $7960: $24
    inc a                                         ; $7961: $3c
    inc h                                         ; $7962: $24
    inc a                                         ; $7963: $3c
    inc h                                         ; $7964: $24
    inc a                                         ; $7965: $3c
    jr z, jr_0f0_79a0                             ; $7966: $28 $38

    ld [$4938], sp                                ; $7968: $08 $38 $49
    ld a, a                                       ; $796b: $7f
    ld h, a                                       ; $796c: $67
    ld a, b                                       ; $796d: $78
    ld c, a                                       ; $796e: $4f
    ld a, b                                       ; $796f: $78
    ld d, a                                       ; $7970: $57
    ld l, b                                       ; $7971: $68
    ld c, a                                       ; $7972: $4f
    ld a, b                                       ; $7973: $78
    sub a                                         ; $7974: $97
    add sp, -$5b                                  ; $7975: $e8 $a5
    jp c, $ffd2                                   ; $7977: $da $d2 $ff

    xor a                                         ; $797a: $af
    ret nc                                        ; $797b: $d0

    sbc [hl]                                      ; $797c: $9e
    pop af                                        ; $797d: $f1
    xor [hl]                                      ; $797e: $ae
    pop de                                        ; $797f: $d1
    sbc a                                         ; $7980: $9f
    pop af                                        ; $7981: $f1
    adc $f1                                       ; $7982: $ce $f1
    sub c                                         ; $7984: $91
    rst $38                                       ; $7985: $ff
    xor a                                         ; $7986: $af
    ret nc                                        ; $7987: $d0

    sbc a                                         ; $7988: $9f
    ldh a, [$a9]                                  ; $7989: $f0 $a9
    ld [bc], a                                    ; $798b: $02
    rst $38                                       ; $798c: $ff
    adc b                                         ; $798d: $88
    nop                                           ; $798e: $00
    rst $30                                       ; $798f: $f7
    ld [$08f7], sp                                ; $7990: $08 $f7 $08
    rst $10                                       ; $7993: $d7
    jr z, jr_0f0_7943                             ; $7994: $28 $ad

    ld [bc], a                                    ; $7996: $02
    ld e, d                                       ; $7997: $5a
    add d                                         ; $7998: $82
    xor l                                         ; $7999: $ad
    cp d                                          ; $799a: $ba
    ld [bc], a                                    ; $799b: $02
    rst $38                                       ; $799c: $ff
    or e                                          ; $799d: $b3
    nop                                           ; $799e: $00
    rst $38                                       ; $799f: $ff

jr_0f0_79a0:
    nop                                           ; $79a0: $00
    rst $38                                       ; $79a1: $ff
    nop                                           ; $79a2: $00
    ld a, a                                       ; $79a3: $7f
    add b                                         ; $79a4: $80
    xor a                                         ; $79a5: $af
    ld d, b                                       ; $79a6: $50
    xor e                                         ; $79a7: $ab
    rst $38                                       ; $79a8: $ff
    rst $28                                       ; $79a9: $ef
    db $10                                        ; $79aa: $10
    rst $30                                       ; $79ab: $f7
    ld [$0001], sp                                ; $79ac: $08 $01 $00
    cp $c3                                        ; $79af: $fe $c3
    ld c, d                                       ; $79b1: $4a
    rst $30                                       ; $79b2: $f7
    ld e, h                                       ; $79b3: $5c
    rst $20                                       ; $79b4: $e7
    add hl, hl                                    ; $79b5: $29
    rst $30                                       ; $79b6: $f7
    or l                                          ; $79b7: $b5
    ld l, a                                       ; $79b8: $6f
    xor e                                         ; $79b9: $ab
    ld [hl], a                                    ; $79ba: $77
    or e                                          ; $79bb: $b3
    ld l, a                                       ; $79bc: $6f
    rst $20                                       ; $79bd: $e7
    rst $38                                       ; $79be: $ff
    dec h                                         ; $79bf: $25
    rst $38                                       ; $79c0: $ff
    dec hl                                        ; $79c1: $2b
    rst $38                                       ; $79c2: $ff
    push de                                       ; $79c3: $d5
    cp a                                          ; $79c4: $bf
    dec hl                                        ; $79c5: $2b
    rst $18                                       ; $79c6: $df
    rst $10                                       ; $79c7: $d7
    xor a                                         ; $79c8: $af
    db $db                                        ; $79c9: $db
    rst $38                                       ; $79ca: $ff
    push af                                       ; $79cb: $f5
    rrca                                          ; $79cc: $0f
    ld bc, $0103                                  ; $79cd: $01 $03 $01
    inc bc                                        ; $79d0: $03
    inc b                                         ; $79d1: $04
    ld [bc], a                                    ; $79d2: $02
    jr jr_0f0_79d5                                ; $79d3: $18 $00

jr_0f0_79d5:
    add d                                         ; $79d5: $82
    ld a, [bc]                                    ; $79d6: $0a
    dec c                                         ; $79d7: $0d
    ld [bc], a                                    ; $79d8: $02
    rra                                           ; $79d9: $1f
    sbc d                                         ; $79da: $9a
    cpl                                           ; $79db: $2f
    ccf                                           ; $79dc: $3f
    dec h                                         ; $79dd: $25
    ld a, [hl-]                                   ; $79de: $3a
    ld a, [hl+]                                   ; $79df: $2a
    scf                                           ; $79e0: $37
    dec h                                         ; $79e1: $25
    ld a, [hl-]                                   ; $79e2: $3a
    ld e, e                                       ; $79e3: $5b
    ld a, [hl]                                    ; $79e4: $7e
    xor a                                         ; $79e5: $af
    rst $38                                       ; $79e6: $ff
    sub a                                         ; $79e7: $97
    rst $38                                       ; $79e8: $ff
    adc e                                         ; $79e9: $8b
    db $f4                                        ; $79ea: $f4
    sub a                                         ; $79eb: $97
    db $ec                                        ; $79ec: $ec
    xor c                                         ; $79ed: $a9
    sub $76                                       ; $79ee: $d6 $76
    ld l, l                                       ; $79f0: $6d
    ld de, $0e1e                                  ; $79f1: $11 $1e $0e
    dec c                                         ; $79f4: $0d
    ld [bc], a                                    ; $79f5: $02
    inc bc                                        ; $79f6: $03
    add h                                         ; $79f7: $84
    cp $01                                        ; $79f8: $fe $01
    ld [hl], l                                    ; $79fa: $75
    adc d                                         ; $79fb: $8a
    ld [bc], a                                    ; $79fc: $02
    rst $38                                       ; $79fd: $ff
    adc b                                         ; $79fe: $88
    ld e, a                                       ; $79ff: $5f
    and b                                         ; $7a00: $a0
    rst $38                                       ; $7a01: $ff
    nop                                           ; $7a02: $00
    rst $38                                       ; $7a03: $ff
    nop                                           ; $7a04: $00
    xor a                                         ; $7a05: $af
    ld d, b                                       ; $7a06: $50
    inc b                                         ; $7a07: $04
    rst $38                                       ; $7a08: $ff
    adc h                                         ; $7a09: $8c
    ei                                            ; $7a0a: $fb
    inc b                                         ; $7a0b: $04
    cp $01                                        ; $7a0c: $fe $01
    db $fd                                        ; $7a0e: $fd
    ld [bc], a                                    ; $7a0f: $02
    rst $38                                       ; $7a10: $ff
    nop                                           ; $7a11: $00
    rst $38                                       ; $7a12: $ff
    nop                                           ; $7a13: $00
    xor a                                         ; $7a14: $af
    ld d, b                                       ; $7a15: $50
    ld [bc], a                                    ; $7a16: $02
    rst $38                                       ; $7a17: $ff
    add [hl]                                      ; $7a18: $86
    rrca                                          ; $7a19: $0f
    nop                                           ; $7a1a: $00
    ccf                                           ; $7a1b: $3f
    ret nz                                        ; $7a1c: $c0

    push de                                       ; $7a1d: $d5
    xor d                                         ; $7a1e: $aa
    ld [bc], a                                    ; $7a1f: $02
    rst $38                                       ; $7a20: $ff
    adc b                                         ; $7a21: $88
    xor a                                         ; $7a22: $af
    ld d, b                                       ; $7a23: $50
    ld a, a                                       ; $7a24: $7f
    add b                                         ; $7a25: $80
    cp $01                                        ; $7a26: $fe $01
    push de                                       ; $7a28: $d5
    ld a, [hl+]                                   ; $7a29: $2a
    inc b                                         ; $7a2a: $04
    rst $38                                       ; $7a2b: $ff
    sub b                                         ; $7a2c: $90
    ld e, a                                       ; $7a2d: $5f
    and b                                         ; $7a2e: $a0
    cp a                                          ; $7a2f: $bf
    ld b, b                                       ; $7a30: $40
    rst $38                                       ; $7a31: $ff
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    nop                                           ; $7a34: $00
    ld a, [$b505]                                 ; $7a35: $fa $05 $b5
    ld c, d                                       ; $7a38: $4a
    or b                                          ; $7a39: $b0
    ldh a, [$50]                                  ; $7a3a: $f0 $50
    ldh a, [rSC]                                  ; $7a3c: $f0 $02
    ld hl, sp-$76                                 ; $7a3e: $f8 $8a
    db $f4                                        ; $7a40: $f4
    db $fc                                        ; $7a41: $fc
    adc h                                         ; $7a42: $8c
    ld a, h                                       ; $7a43: $7c
    ld d, h                                       ; $7a44: $54
    db $fc                                        ; $7a45: $fc
    call z, Call_0f0_567c                         ; $7a46: $cc $7c $56
    cp $02                                        ; $7a49: $fe $02
    rst $38                                       ; $7a4b: $ff
    adc [hl]                                      ; $7a4c: $8e
    db $eb                                        ; $7a4d: $eb
    rst $38                                       ; $7a4e: $ff
    add l                                         ; $7a4f: $85
    ld a, a                                       ; $7a50: $7f
    jp $a53f                                      ; $7a51: $c3 $3f $a5


    ld a, a                                       ; $7a54: $7f
    ld h, [hl]                                    ; $7a55: $66
    cp [hl]                                       ; $7a56: $be
    xor b                                         ; $7a57: $a8
    ld a, b                                       ; $7a58: $78
    ld [hl], b                                    ; $7a59: $70

jr_0f0_7a5a:
    or b                                          ; $7a5a: $b0
    ld [bc], a                                    ; $7a5b: $02
    rst $38                                       ; $7a5c: $ff
    ld e, $00                                     ; $7a5d: $1e $00
    ld [bc], a                                    ; $7a5f: $02
    inc bc                                        ; $7a60: $03
    ld e, $00                                     ; $7a61: $1e $00
    rst $38                                       ; $7a63: $ff
    daa                                           ; $7a64: $27
    ld de, $0af7                                  ; $7a65: $11 $f7 $0a
    jp $ca00                                      ; $7a68: $c3 $00 $ca


    or $c5                                        ; $7a6b: $f6 $c5
    cp $c2                                        ; $7a6d: $fe $c2
    ld b, $cd                                     ; $7a6f: $06 $cd
    ld c, $d1                                     ; $7a71: $0e $d1
    ld d, $d2                                     ; $7a73: $16 $d2
    db $f4                                        ; $7a75: $f4
    push de                                       ; $7a76: $d5
    db $fc                                        ; $7a77: $fc
    jp nc, $d204                                  ; $7a78: $d2 $04 $d2

    ld b, $d2                                     ; $7a7b: $06 $d2
    ld a, [de]                                    ; $7a7d: $1a
    ld [c], a                                     ; $7a7e: $e2
    push af                                       ; $7a7f: $f5
    ld [c], a                                     ; $7a80: $e2
    db $fd                                        ; $7a81: $fd
    ld [c], a                                     ; $7a82: $e2
    dec b                                         ; $7a83: $05
    ld a, [c]                                     ; $7a84: $f2
    pop af                                        ; $7a85: $f1
    ld a, [c]                                     ; $7a86: $f2
    ld sp, hl                                     ; $7a87: $f9
    ld a, [c]                                     ; $7a88: $f2
    ld bc, $09f2                                  ; $7a89: $01 $f2 $09
    ld [bc], a                                    ; $7a8c: $02
    ld bc, $028a                                  ; $7a8d: $01 $8a $02
    inc bc                                        ; $7a90: $03
    ld [bc], a                                    ; $7a91: $02
    inc bc                                        ; $7a92: $03
    ld [bc], a                                    ; $7a93: $02
    inc bc                                        ; $7a94: $03
    dec b                                         ; $7a95: $05
    rlca                                          ; $7a96: $07
    ld b, $07                                     ; $7a97: $06 $07
    ld [bc], a                                    ; $7a99: $02
    ccf                                           ; $7a9a: $3f
    adc l                                         ; $7a9b: $8d
    ei                                            ; $7a9c: $fb
    rst $20                                       ; $7a9d: $e7
    rst $28                                       ; $7a9e: $ef
    di                                            ; $7a9f: $f3
    rst $38                                       ; $7aa0: $ff
    ldh [rIF], a                                  ; $7aa1: $e0 $0f
    ldh a, [$1f]                                  ; $7aa3: $f0 $1f
    ldh [rNR30], a                                ; $7aa5: $e0 $1a
    rst $20                                       ; $7aa7: $e7
    ld e, a                                       ; $7aa8: $5f
    inc bc                                        ; $7aa9: $03
    rst $38                                       ; $7aaa: $ff
    add d                                         ; $7aab: $82
    push af                                       ; $7aac: $f5
    ld a, [$0102]                                 ; $7aad: $fa $02 $01
    add [hl]                                      ; $7ab0: $86
    rrca                                          ; $7ab1: $0f
    ld c, $17                                     ; $7ab2: $0e $17
    jr jr_0f0_7ac0                                ; $7ab4: $18 $0a

    dec c                                         ; $7ab6: $0d
    ld [bc], a                                    ; $7ab7: $02
    rst $38                                       ; $7ab8: $ff
    adc c                                         ; $7ab9: $89
    ld e, h                                       ; $7aba: $5c
    cp a                                          ; $7abb: $bf
    rst $18                                       ; $7abc: $df
    inc hl                                        ; $7abd: $23
    ld [hl+], a                                   ; $7abe: $22
    db $dd                                        ; $7abf: $dd

jr_0f0_7ac0:
    ld [$5fff], sp                                ; $7ac0: $08 $ff $5f
    ld b, $ff                                     ; $7ac3: $06 $ff
    add a                                         ; $7ac5: $87
    rst $08                                       ; $7ac6: $cf
    rst $38                                       ; $7ac7: $ff
    rst $08                                       ; $7ac8: $cf
    push af                                       ; $7ac9: $f5
    ld a, [bc]                                    ; $7aca: $0a
    ei                                            ; $7acb: $fb
    inc b                                         ; $7acc: $04
    ld [bc], a                                    ; $7acd: $02
    jr c, jr_0f0_7a5a                             ; $7ace: $38 $8a

    ld e, h                                       ; $7ad0: $5c
    ld h, h                                       ; $7ad1: $64
    cp d                                          ; $7ad2: $ba
    add $fb                                       ; $7ad3: $c6 $fb
    rlca                                          ; $7ad5: $07
    push af                                       ; $7ad6: $f5
    rrca                                          ; $7ad7: $0f
    ret                                           ; $7ad8: $c9


    ccf                                           ; $7ad9: $3f
    ld [bc], a                                    ; $7ada: $02
    rst $38                                       ; $7adb: $ff
    sub d                                         ; $7adc: $92
    ccf                                           ; $7add: $3f
    rst $38                                       ; $7ade: $ff
    dec a                                         ; $7adf: $3d
    db $fd                                        ; $7ae0: $fd
    call c, $f8fc                                 ; $7ae1: $dc $fc $f8
    jr c, @+$60                                   ; $7ae4: $38 $5e

    and $85                                       ; $7ae6: $e6 $85
    ei                                            ; $7ae8: $fb
    ld a, [c]                                     ; $7ae9: $f2
    rst $38                                       ; $7aea: $ff
    sbc $ff                                       ; $7aeb: $de $ff
    ld l, c                                       ; $7aed: $69
    cp a                                          ; $7aee: $bf
    ld [bc], a                                    ; $7aef: $02
    add b                                         ; $7af0: $80
    add a                                         ; $7af1: $87
    ldh [$60], a                                  ; $7af2: $e0 $60
    ld hl, sp+$38                                 ; $7af4: $f8 $38
    daa                                           ; $7af6: $27
    rst $38                                       ; $7af7: $ff
    ld h, a                                       ; $7af8: $67
    ld [bc], a                                    ; $7af9: $02
    ld hl, sp-$7f                                 ; $7afa: $f8 $81
    rst $38                                       ; $7afc: $ff
    ld [bc], a                                    ; $7afd: $02
    rlca                                          ; $7afe: $07
    ld a, [bc]                                    ; $7aff: $0a
    nop                                           ; $7b00: $00
    ld b, $80                                     ; $7b01: $06 $80
    ld [bc], a                                    ; $7b03: $02
    nop                                           ; $7b04: $00
    ld [bc], a                                    ; $7b05: $02
    ld hl, sp-$7a                                 ; $7b06: $f8 $86
    ld e, a                                       ; $7b08: $5f
    and a                                         ; $7b09: $a7
    add e                                         ; $7b0a: $83
    db $fc                                        ; $7b0b: $fc
    ld a, h                                       ; $7b0c: $7c
    ld a, a                                       ; $7b0d: $7f
    ld [bc], a                                    ; $7b0e: $02
    inc bc                                        ; $7b0f: $03
    ld d, $00                                     ; $7b10: $16 $00
    ld [bc], a                                    ; $7b12: $02
    ret nz                                        ; $7b13: $c0

    adc d                                         ; $7b14: $8a
    add b                                         ; $7b15: $80
    ret nz                                        ; $7b16: $c0

    add b                                         ; $7b17: $80
    ret nz                                        ; $7b18: $c0

    add b                                         ; $7b19: $80
    ret nz                                        ; $7b1a: $c0

    add b                                         ; $7b1b: $80
    ret nz                                        ; $7b1c: $c0

    add b                                         ; $7b1d: $80
    ret nz                                        ; $7b1e: $c0

    ld [bc], a                                    ; $7b1f: $02
    ld b, b                                       ; $7b20: $40
    ld [bc], a                                    ; $7b21: $02
    nop                                           ; $7b22: $00
    add l                                         ; $7b23: $85
    ld a, [hl+]                                   ; $7b24: $2a
    dec [hl]                                      ; $7b25: $35
    dec h                                         ; $7b26: $25
    ld a, $28                                     ; $7b27: $3e $28
    ld [bc], a                                    ; $7b29: $02
    scf                                           ; $7b2a: $37
    adc b                                         ; $7b2b: $88
    inc a                                         ; $7b2c: $3c
    dec hl                                        ; $7b2d: $2b
    inc [hl]                                      ; $7b2e: $34
    dec h                                         ; $7b2f: $25
    ld a, $2a                                     ; $7b30: $3e $2a
    dec [hl]                                      ; $7b32: $35
    inc h                                         ; $7b33: $24
    ld [bc], a                                    ; $7b34: $02
    ccf                                           ; $7b35: $3f
    add d                                         ; $7b36: $82
    nop                                           ; $7b37: $00
    dec l                                         ; $7b38: $2d
    dec b                                         ; $7b39: $05
    ccf                                           ; $7b3a: $3f
    cp b                                          ; $7b3b: $b8
    inc de                                        ; $7b3c: $13
    ld l, $fd                                     ; $7b3d: $2e $fd
    ld b, $fb                                     ; $7b3f: $06 $fb
    inc c                                         ; $7b41: $0c
    or a                                          ; $7b42: $b7
    ld hl, sp-$01                                 ; $7b43: $f8 $ff
    db $10                                        ; $7b45: $10
    ld a, a                                       ; $7b46: $7f
    and b                                         ; $7b47: $a0
    rst $18                                       ; $7b48: $df
    ldh [$bf], a                                  ; $7b49: $e0 $bf
    ret nz                                        ; $7b4b: $c0

    cp $81                                        ; $7b4c: $fe $81
    ld a, l                                       ; $7b4e: $7d
    add e                                         ; $7b4f: $83
    ei                                            ; $7b50: $fb
    ld b, $d6                                     ; $7b51: $06 $d6
    dec l                                         ; $7b53: $2d
    inc a                                         ; $7b54: $3c
    rrca                                          ; $7b55: $0f
    ld l, $1f                                     ; $7b56: $2e $1f
    ld a, [de]                                    ; $7b58: $1a
    scf                                           ; $7b59: $37
    cp l                                          ; $7b5a: $bd
    ld h, e                                       ; $7b5b: $63
    ld a, [hl]                                    ; $7b5c: $7e
    pop bc                                        ; $7b5d: $c1
    rst $38                                       ; $7b5e: $ff
    add b                                         ; $7b5f: $80
    cp $01                                        ; $7b60: $fe $01
    db $fd                                        ; $7b62: $fd
    inc bc                                        ; $7b63: $03
    ei                                            ; $7b64: $fb
    ld b, $fc                                     ; $7b65: $06 $fc
    rlca                                          ; $7b67: $07
    db $fc                                        ; $7b68: $fc
    dec bc                                        ; $7b69: $0b
    ld hl, sp+$17                                 ; $7b6a: $f8 $17
    pop af                                        ; $7b6c: $f1
    cpl                                           ; $7b6d: $2f
    and e                                         ; $7b6e: $a3
    ld a, a                                       ; $7b6f: $7f
    ld b, l                                       ; $7b70: $45
    rst $38                                       ; $7b71: $ff
    res 7, a                                      ; $7b72: $cb $bf
    ld a, [bc]                                    ; $7b74: $0a
    inc bc                                        ; $7b75: $03
    adc h                                         ; $7b76: $8c
    ld bc, $0103                                  ; $7b77: $01 $03 $01
    inc bc                                        ; $7b7a: $03
    nop                                           ; $7b7b: $00
    inc bc                                        ; $7b7c: $03
    nop                                           ; $7b7d: $00
    inc bc                                        ; $7b7e: $03
    nop                                           ; $7b7f: $00
    inc bc                                        ; $7b80: $03
    ld bc, $0203                                  ; $7b81: $01 $03 $02
    ld [bc], a                                    ; $7b84: $02
    ld [$0200], sp                                ; $7b85: $08 $00 $02
    ld [$0e84], sp                                ; $7b88: $08 $84 $0e
    ld b, $03                                     ; $7b8b: $06 $03
    dec c                                         ; $7b8d: $0d
    ld [bc], a                                    ; $7b8e: $02
    ld c, $18                                     ; $7b8f: $0e $18
    nop                                           ; $7b91: $00
    and c                                         ; $7b92: $a1
    ld h, [hl]                                    ; $7b93: $66
    ld a, d                                       ; $7b94: $7a
    ld c, [hl]                                    ; $7b95: $4e
    ld a, d                                       ; $7b96: $7a
    ld d, h                                       ; $7b97: $54
    ld l, [hl]                                    ; $7b98: $6e
    ld c, [hl]                                    ; $7b99: $4e
    ld a, l                                       ; $7b9a: $7d
    sbc c                                         ; $7b9b: $99
    xor $aa                                       ; $7b9c: $ee $aa
    db $dd                                        ; $7b9e: $dd
    call nc, $b1fb                                ; $7b9f: $d4 $fb $b1
    rst $18                                       ; $7ba2: $df
    sbc [hl]                                      ; $7ba3: $9e
    rst $38                                       ; $7ba4: $ff
    and b                                         ; $7ba5: $a0
    rst $18                                       ; $7ba6: $df
    sbc a                                         ; $7ba7: $9f
    pop af                                        ; $7ba8: $f1
    adc $f1                                       ; $7ba9: $ce $f1
    sub c                                         ; $7bab: $91
    rst $38                                       ; $7bac: $ff
    xor a                                         ; $7bad: $af
    ret nc                                        ; $7bae: $d0

    sbc a                                         ; $7baf: $9f
    ldh a, [$af]                                  ; $7bb0: $f0 $af
    ret nc                                        ; $7bb2: $d0

    ld bc, $0002                                  ; $7bb3: $01 $02 $00
    cp l                                          ; $7bb6: $bd
    ld bc, $0100                                  ; $7bb7: $01 $00 $01
    ld d, c                                       ; $7bba: $51
    cp a                                          ; $7bbb: $bf
    ld h, [hl]                                    ; $7bbc: $66
    rst $38                                       ; $7bbd: $ff
    ret z                                         ; $7bbe: $c8

    cp a                                          ; $7bbf: $bf
    ld a, [hl-]                                   ; $7bc0: $3a
    rst $38                                       ; $7bc1: $ff
    rst $00                                       ; $7bc2: $c7
    ld hl, sp+$1f                                 ; $7bc3: $f8 $1f
    ldh [rIE], a                                  ; $7bc5: $e0 $ff
    nop                                           ; $7bc7: $00
    ld a, a                                       ; $7bc8: $7f
    add b                                         ; $7bc9: $80
    xor a                                         ; $7bca: $af
    ld d, b                                       ; $7bcb: $50
    xor e                                         ; $7bcc: $ab
    rst $38                                       ; $7bcd: $ff
    rst $28                                       ; $7bce: $ef
    db $10                                        ; $7bcf: $10
    rst $30                                       ; $7bd0: $f7
    ld [$1ce3], sp                                ; $7bd1: $08 $e3 $1c
    ld l, $fe                                     ; $7bd4: $2e $fe
    ld d, [hl]                                    ; $7bd6: $56
    cp $8a                                        ; $7bd7: $fe $8a
    cp $36                                        ; $7bd9: $fe $36
    sbc $6b                                       ; $7bdb: $de $6b
    sbc a                                         ; $7bdd: $9f
    and l                                         ; $7bde: $a5
    ld e, a                                       ; $7bdf: $5f
    rst $08                                       ; $7be0: $cf
    rst $38                                       ; $7be1: $ff
    ld d, l                                       ; $7be2: $55
    xor a                                         ; $7be3: $af
    dec sp                                        ; $7be4: $3b
    rst $08                                       ; $7be5: $cf
    push de                                       ; $7be6: $d5
    xor a                                         ; $7be7: $af
    dec hl                                        ; $7be8: $2b
    rst $18                                       ; $7be9: $df
    rst $10                                       ; $7bea: $d7
    xor a                                         ; $7beb: $af
    db $db                                        ; $7bec: $db
    rst $38                                       ; $7bed: $ff
    push af                                       ; $7bee: $f5
    rrca                                          ; $7bef: $0f
    ei                                            ; $7bf0: $fb
    rrca                                          ; $7bf1: $0f
    push af                                       ; $7bf2: $f5
    rrca                                          ; $7bf3: $0f
    ld [bc], a                                    ; $7bf4: $02
    rra                                           ; $7bf5: $1f
    sbc d                                         ; $7bf6: $9a
    cpl                                           ; $7bf7: $2f
    ccf                                           ; $7bf8: $3f
    dec h                                         ; $7bf9: $25
    ld a, [hl-]                                   ; $7bfa: $3a
    ld a, [hl+]                                   ; $7bfb: $2a
    scf                                           ; $7bfc: $37
    dec h                                         ; $7bfd: $25
    ld a, [hl-]                                   ; $7bfe: $3a
    ld e, e                                       ; $7bff: $5b
    ld a, [hl]                                    ; $7c00: $7e
    xor a                                         ; $7c01: $af
    rst $38                                       ; $7c02: $ff
    sub a                                         ; $7c03: $97
    rst $38                                       ; $7c04: $ff
    adc e                                         ; $7c05: $8b
    db $f4                                        ; $7c06: $f4
    sub a                                         ; $7c07: $97
    db $ec                                        ; $7c08: $ec
    xor c                                         ; $7c09: $a9
    sub $76                                       ; $7c0a: $d6 $76
    ld l, l                                       ; $7c0c: $6d
    ld de, $0e1e                                  ; $7c0d: $11 $1e $0e
    dec c                                         ; $7c10: $0d
    ld [bc], a                                    ; $7c11: $02
    inc bc                                        ; $7c12: $03
    ld [bc], a                                    ; $7c13: $02
    nop                                           ; $7c14: $00
    add d                                         ; $7c15: $82
    ld [hl], l                                    ; $7c16: $75
    adc d                                         ; $7c17: $8a
    ld [bc], a                                    ; $7c18: $02
    rst $38                                       ; $7c19: $ff
    adc b                                         ; $7c1a: $88
    ld e, a                                       ; $7c1b: $5f
    and b                                         ; $7c1c: $a0
    rst $38                                       ; $7c1d: $ff
    nop                                           ; $7c1e: $00
    rst $38                                       ; $7c1f: $ff
    nop                                           ; $7c20: $00
    xor a                                         ; $7c21: $af
    ld d, b                                       ; $7c22: $50
    inc b                                         ; $7c23: $04
    rst $38                                       ; $7c24: $ff
    adc h                                         ; $7c25: $8c
    ei                                            ; $7c26: $fb
    inc b                                         ; $7c27: $04
    cp $01                                        ; $7c28: $fe $01
    db $fd                                        ; $7c2a: $fd
    ld [bc], a                                    ; $7c2b: $02
    rst $38                                       ; $7c2c: $ff
    nop                                           ; $7c2d: $00
    rst $38                                       ; $7c2e: $ff
    nop                                           ; $7c2f: $00
    xor a                                         ; $7c30: $af
    ld d, b                                       ; $7c31: $50
    ld [bc], a                                    ; $7c32: $02
    rst $38                                       ; $7c33: $ff
    ld [bc], a                                    ; $7c34: $02
    nop                                           ; $7c35: $00
    add d                                         ; $7c36: $82
    push de                                       ; $7c37: $d5
    xor d                                         ; $7c38: $aa
    ld [bc], a                                    ; $7c39: $02
    rst $38                                       ; $7c3a: $ff
    adc b                                         ; $7c3b: $88
    xor a                                         ; $7c3c: $af
    ld d, b                                       ; $7c3d: $50
    ld a, a                                       ; $7c3e: $7f
    add b                                         ; $7c3f: $80
    cp $01                                        ; $7c40: $fe $01
    push de                                       ; $7c42: $d5
    ld a, [hl+]                                   ; $7c43: $2a
    inc b                                         ; $7c44: $04
    rst $38                                       ; $7c45: $ff
    adc h                                         ; $7c46: $8c
    ld e, a                                       ; $7c47: $5f
    and b                                         ; $7c48: $a0
    cp a                                          ; $7c49: $bf
    ld b, b                                       ; $7c4a: $40
    rst $38                                       ; $7c4b: $ff
    nop                                           ; $7c4c: $00
    rst $38                                       ; $7c4d: $ff
    nop                                           ; $7c4e: $00
    ld a, [$b505]                                 ; $7c4f: $fa $05 $b5
    ld c, d                                       ; $7c52: $4a
    ld [bc], a                                    ; $7c53: $02
    rst $38                                       ; $7c54: $ff
    ld [bc], a                                    ; $7c55: $02
    nop                                           ; $7c56: $00
    ld [bc], a                                    ; $7c57: $02
    ld hl, sp-$76                                 ; $7c58: $f8 $8a
    db $f4                                        ; $7c5a: $f4
    db $fc                                        ; $7c5b: $fc
    adc h                                         ; $7c5c: $8c
    ld a, h                                       ; $7c5d: $7c
    ld d, h                                       ; $7c5e: $54
    db $fc                                        ; $7c5f: $fc
    call z, Call_0f0_567c                         ; $7c60: $cc $7c $56
    cp $02                                        ; $7c63: $fe $02
    rst $38                                       ; $7c65: $ff
    adc [hl]                                      ; $7c66: $8e
    db $eb                                        ; $7c67: $eb
    rst $38                                       ; $7c68: $ff
    add l                                         ; $7c69: $85
    ld a, a                                       ; $7c6a: $7f
    jp $a53f                                      ; $7c6b: $c3 $3f $a5


    ld a, a                                       ; $7c6e: $7f
    ld h, [hl]                                    ; $7c6f: $66
    cp [hl]                                       ; $7c70: $be
    xor b                                         ; $7c71: $a8
    ld a, b                                       ; $7c72: $78
    ld [hl], b                                    ; $7c73: $70
    or b                                          ; $7c74: $b0
    ld [bc], a                                    ; $7c75: $02
    ret nz                                        ; $7c76: $c0

    ld [bc], a                                    ; $7c77: $02
    nop                                           ; $7c78: $00
    rst $38                                       ; $7c79: $ff
    inc hl                                        ; $7c7a: $23
    rrca                                          ; $7c7b: $0f
    rst $30                                       ; $7c7c: $f7
    ld a, [bc]                                    ; $7c7d: $0a
    jp $c900                                      ; $7c7e: $c3 $00 $c9


    ld hl, sp-$3f                                 ; $7c81: $f8 $c1
    nop                                           ; $7c83: $00
    jp nz, $ca08                                  ; $7c84: $c2 $08 $ca

    inc c                                         ; $7c87: $0c
    pop de                                        ; $7c88: $d1
    db $f4                                        ; $7c89: $f4
    pop de                                        ; $7c8a: $d1
    db $fc                                        ; $7c8b: $fc
    pop de                                        ; $7c8c: $d1
    inc b                                         ; $7c8d: $04
    jp c, $e107                                   ; $7c8e: $da $07 $e1

    push af                                       ; $7c91: $f5
    pop hl                                        ; $7c92: $e1
    db $fd                                        ; $7c93: $fd
    pop hl                                        ; $7c94: $e1
    dec b                                         ; $7c95: $05
    pop af                                        ; $7c96: $f1
    pop af                                        ; $7c97: $f1
    pop af                                        ; $7c98: $f1
    ld sp, hl                                     ; $7c99: $f9
    pop af                                        ; $7c9a: $f1
    ld bc, $09f1                                  ; $7c9b: $01 $f1 $09
    ld [bc], a                                    ; $7c9e: $02
    ld a, a                                       ; $7c9f: $7f
    adc b                                         ; $7ca0: $88
    cp l                                          ; $7ca1: $bd
    sbc $bb                                       ; $7ca2: $de $bb
    rst $20                                       ; $7ca4: $e7
    adc e                                         ; $7ca5: $8b
    db $f4                                        ; $7ca6: $f4
    ld h, b                                       ; $7ca7: $60
    ld a, a                                       ; $7ca8: $7f
    inc b                                         ; $7ca9: $04
    rra                                           ; $7caa: $1f
    ld [bc], a                                    ; $7cab: $02
    rst $38                                       ; $7cac: $ff
    adc l                                         ; $7cad: $8d
    rst $28                                       ; $7cae: $ef
    sbc a                                         ; $7caf: $9f
    cp a                                          ; $7cb0: $bf
    rst $08                                       ; $7cb1: $cf
    rst $38                                       ; $7cb2: $ff
    add b                                         ; $7cb3: $80
    ccf                                           ; $7cb4: $3f
    ret nz                                        ; $7cb5: $c0

    ld a, a                                       ; $7cb6: $7f
    add b                                         ; $7cb7: $80
    ld l, d                                       ; $7cb8: $6a
    sbc a                                         ; $7cb9: $9f
    ld a, a                                       ; $7cba: $7f
    inc bc                                        ; $7cbb: $03
    rst $38                                       ; $7cbc: $ff
    ld [bc], a                                    ; $7cbd: $02
    ld c, $9b                                     ; $7cbe: $0e $9b
    rra                                           ; $7cc0: $1f
    ld de, $101f                                  ; $7cc1: $11 $1f $10
    rra                                           ; $7cc4: $1f
    db $10                                        ; $7cc5: $10
    ccf                                           ; $7cc6: $3f
    ld hl, $635d                                  ; $7cc7: $21 $5d $63
    xor a                                         ; $7cca: $af
    rst $18                                       ; $7ccb: $df
    db $d3                                        ; $7ccc: $d3
    cp a                                          ; $7ccd: $bf
    pop hl                                        ; $7cce: $e1
    rst $38                                       ; $7ccf: $ff
    add e                                         ; $7cd0: $83
    ld a, a                                       ; $7cd1: $7f
    cp a                                          ; $7cd2: $bf
    rst $38                                       ; $7cd3: $ff
    ld [hl], a                                    ; $7cd4: $77
    ret c                                         ; $7cd5: $d8

    cp b                                          ; $7cd6: $b8
    rst $08                                       ; $7cd7: $cf
    adc a                                         ; $7cd8: $8f
    rst $38                                       ; $7cd9: $ff
    ld d, l                                       ; $7cda: $55
    inc bc                                        ; $7cdb: $03
    rst $38                                       ; $7cdc: $ff
    ld [bc], a                                    ; $7cdd: $02
    add b                                         ; $7cde: $80
    ld [bc], a                                    ; $7cdf: $02
    ret nz                                        ; $7ce0: $c0

    add e                                         ; $7ce1: $83
    and b                                         ; $7ce2: $a0
    ldh [rNR41], a                                ; $7ce3: $e0 $20
    dec b                                         ; $7ce5: $05
    ldh [rSC], a                                  ; $7ce6: $e0 $02
    and b                                         ; $7ce8: $a0
    ld [bc], a                                    ; $7ce9: $02
    add b                                         ; $7cea: $80
    ld [bc], a                                    ; $7ceb: $02
    rra                                           ; $7cec: $1f
    adc [hl]                                      ; $7ced: $8e
    db $fd                                        ; $7cee: $fd
    ld [c], a                                     ; $7cef: $e2
    xor b                                         ; $7cf0: $a8
    ld d, a                                       ; $7cf1: $57
    scf                                           ; $7cf2: $37
    rst $38                                       ; $7cf3: $ff
    db $ec                                        ; $7cf4: $ec
    call c, $c6ba                                 ; $7cf5: $dc $ba $c6
    db $fd                                        ; $7cf8: $fd
    add e                                         ; $7cf9: $83
    ld a, h                                       ; $7cfa: $7c
    add a                                         ; $7cfb: $87
    ld [bc], a                                    ; $7cfc: $02
    inc c                                         ; $7cfd: $0c
    add d                                         ; $7cfe: $82
    inc bc                                        ; $7cff: $03
    rrca                                          ; $7d00: $0f
    ld [bc], a                                    ; $7d01: $02
    inc c                                         ; $7d02: $0c
    ld [$0200], sp                                ; $7d03: $08 $00 $02
    ld [$d887], sp                                ; $7d06: $08 $87 $d8
    ld a, b                                       ; $7d09: $78
    ld c, b                                       ; $7d0a: $48
    ld hl, sp-$70                                 ; $7d0b: $f8 $90
    ldh a, [$d0]                                  ; $7d0d: $f0 $d0
    ld [bc], a                                    ; $7d0f: $02
    or b                                          ; $7d10: $b0
    add h                                         ; $7d11: $84
    ldh a, [$90]                                  ; $7d12: $f0 $90
    ldh a, [rNR41]                                ; $7d14: $f0 $20
    ld [bc], a                                    ; $7d16: $02
    ldh [$81], a                                  ; $7d17: $e0 $81
    ld h, b                                       ; $7d19: $60
    ld [bc], a                                    ; $7d1a: $02
    jr nc, jr_0f0_7d1f                            ; $7d1b: $30 $02

    ldh a, [$8a]                                  ; $7d1d: $f0 $8a

jr_0f0_7d1f:
    or b                                          ; $7d1f: $b0
    ldh a, [$80]                                  ; $7d20: $f0 $80
    ldh a, [$80]                                  ; $7d22: $f0 $80
    ldh a, [$80]                                  ; $7d24: $f0 $80
    ldh a, [$90]                                  ; $7d26: $f0 $90
    ldh a, [rSC]                                  ; $7d28: $f0 $02
    ld [hl], b                                    ; $7d2a: $70
    add a                                         ; $7d2b: $87
    dec a                                         ; $7d2c: $3d
    ld a, $2a                                     ; $7d2d: $3e $2a
    dec [hl]                                      ; $7d2f: $35
    dec h                                         ; $7d30: $25
    ld a, $28                                     ; $7d31: $3e $28
    ld [bc], a                                    ; $7d33: $02
    scf                                           ; $7d34: $37
    sub d                                         ; $7d35: $92
    inc a                                         ; $7d36: $3c
    dec hl                                        ; $7d37: $2b
    inc [hl]                                      ; $7d38: $34
    dec h                                         ; $7d39: $25
    ld a, $2a                                     ; $7d3a: $3e $2a
    dec [hl]                                      ; $7d3c: $35
    rrca                                          ; $7d3d: $0f
    inc bc                                        ; $7d3e: $03
    rrca                                          ; $7d3f: $0f
    inc bc                                        ; $7d40: $03
    dec c                                         ; $7d41: $0d
    ld [bc], a                                    ; $7d42: $02
    ld c, $01                                     ; $7d43: $0e $01
    rrca                                          ; $7d45: $0f
    nop                                           ; $7d46: $00
    dec c                                         ; $7d47: $0d
    dec b                                         ; $7d48: $05
    rrca                                          ; $7d49: $0f
    or e                                          ; $7d4a: $b3
    ld d, c                                       ; $7d4b: $51
    xor [hl]                                      ; $7d4c: $ae
    ld a, [$fe05]                                 ; $7d4d: $fa $05 $fe
    dec b                                         ; $7d50: $05
    xor h                                         ; $7d51: $ac
    rst $38                                       ; $7d52: $ff
    cp $01                                        ; $7d53: $fe $01
    ld a, [hl]                                    ; $7d55: $7e
    add c                                         ; $7d56: $81
    db $fc                                        ; $7d57: $fc
    add e                                         ; $7d58: $83
    ld l, e                                       ; $7d59: $6b
    sub l                                         ; $7d5a: $95
    ret nc                                        ; $7d5b: $d0

    ldh a, [rIE]                                  ; $7d5c: $f0 $ff
    ret nc                                        ; $7d5e: $d0

    ld l, a                                       ; $7d5f: $6f
    or b                                          ; $7d60: $b0
    rst $38                                       ; $7d61: $ff
    jr nz, @+$01                                  ; $7d62: $20 $ff

    jr nz, jr_0f0_7dc5                            ; $7d64: $20 $5f

    ldh [$de], a                                  ; $7d66: $e0 $de
    pop hl                                        ; $7d68: $e1
    rst $18                                       ; $7d69: $df
    pop hl                                        ; $7d6a: $e1
    ld a, a                                       ; $7d6b: $7f
    pop bc                                        ; $7d6c: $c1
    db $dd                                        ; $7d6d: $dd
    db $e3                                        ; $7d6e: $e3
    cp [hl]                                       ; $7d6f: $be
    jp $a2df                                      ; $7d70: $c3 $df $a2


    cp d                                          ; $7d73: $ba
    rst $00                                       ; $7d74: $c7
    call c, $bfa7                                 ; $7d75: $dc $a7 $bf
    push bc                                       ; $7d78: $c5
    db $f4                                        ; $7d79: $f4
    adc a                                         ; $7d7a: $8f
    ld bc, $0207                                  ; $7d7b: $01 $07 $02
    inc bc                                        ; $7d7e: $03
    ld b, $82                                     ; $7d7f: $06 $82
    ld [bc], a                                    ; $7d81: $02
    ld b, $06                                     ; $7d82: $06 $06
    inc b                                         ; $7d84: $04
    rst $10                                       ; $7d85: $d7
    ret z                                         ; $7d86: $c8

    ld a, b                                       ; $7d87: $78
    ld hl, sp+$58                                 ; $7d88: $f8 $58
    ld c, b                                       ; $7d8a: $48
    ld hl, sp-$28                                 ; $7d8b: $f8 $d8
    cp b                                          ; $7d8d: $b8
    sbc b                                         ; $7d8e: $98
    ld hl, sp-$54                                 ; $7d8f: $f8 $ac
    ld a, h                                       ; $7d91: $7c
    inc [hl]                                      ; $7d92: $34
    db $fc                                        ; $7d93: $fc
    ld a, h                                       ; $7d94: $7c
    db $fc                                        ; $7d95: $fc
    sub h                                         ; $7d96: $94
    db $fc                                        ; $7d97: $fc
    ld c, c                                       ; $7d98: $49
    ld a, a                                       ; $7d99: $7f
    ld h, a                                       ; $7d9a: $67
    ld a, b                                       ; $7d9b: $78
    ld c, a                                       ; $7d9c: $4f
    ld a, b                                       ; $7d9d: $78
    ld d, a                                       ; $7d9e: $57
    ld l, b                                       ; $7d9f: $68
    ld c, a                                       ; $7da0: $4f
    ld a, b                                       ; $7da1: $78
    sub a                                         ; $7da2: $97
    add sp, -$5b                                  ; $7da3: $e8 $a5
    jp c, $ffd2                                   ; $7da5: $da $d2 $ff

    xor a                                         ; $7da8: $af
    ret nc                                        ; $7da9: $d0

    sbc [hl]                                      ; $7daa: $9e
    pop af                                        ; $7dab: $f1
    xor [hl]                                      ; $7dac: $ae
    pop de                                        ; $7dad: $d1
    sbc a                                         ; $7dae: $9f
    pop af                                        ; $7daf: $f1
    adc $f1                                       ; $7db0: $ce $f1
    sub c                                         ; $7db2: $91
    rst $38                                       ; $7db3: $ff
    xor a                                         ; $7db4: $af
    ret nc                                        ; $7db5: $d0

    sbc a                                         ; $7db6: $9f
    ldh a, [$ab]                                  ; $7db7: $f0 $ab
    rst $38                                       ; $7db9: $ff
    ld a, [$f307]                                 ; $7dba: $fa $07 $f3
    ld c, $f2                                     ; $7dbd: $0e $f2
    rrca                                          ; $7dbf: $0f
    db $d3                                        ; $7dc0: $d3
    cpl                                           ; $7dc1: $2f
    xor d                                         ; $7dc2: $aa
    ld e, a                                       ; $7dc3: $5f
    ld e, c                                       ; $7dc4: $59

jr_0f0_7dc5:
    xor a                                         ; $7dc5: $af
    cp e                                          ; $7dc6: $bb
    rst $38                                       ; $7dc7: $ff
    db $fd                                        ; $7dc8: $fd
    inc bc                                        ; $7dc9: $03
    db $fd                                        ; $7dca: $fd
    inc bc                                        ; $7dcb: $03
    cp $01                                        ; $7dcc: $fe $01
    ld a, a                                       ; $7dce: $7f
    add b                                         ; $7dcf: $80
    xor a                                         ; $7dd0: $af
    ld d, b                                       ; $7dd1: $50
    xor e                                         ; $7dd2: $ab
    rst $38                                       ; $7dd3: $ff
    rst $28                                       ; $7dd4: $ef
    db $10                                        ; $7dd5: $10
    rst $30                                       ; $7dd6: $f7
    ld [$8040], sp                                ; $7dd7: $08 $40 $80
    ret nz                                        ; $7dda: $c0

    nop                                           ; $7ddb: $00
    ld b, b                                       ; $7ddc: $40
    ld [bc], a                                    ; $7ddd: $02
    add b                                         ; $7dde: $80
    add d                                         ; $7ddf: $82
    ld b, b                                       ; $7de0: $40
    nop                                           ; $7de1: $00
    ld [bc], a                                    ; $7de2: $02
    ret nz                                        ; $7de3: $c0

    ld [bc], a                                    ; $7de4: $02
    ld b, b                                       ; $7de5: $40
    sub l                                         ; $7de6: $95
    ret nz                                        ; $7de7: $c0

    add b                                         ; $7de8: $80
    ld b, b                                       ; $7de9: $40
    nop                                           ; $7dea: $00
    ret nz                                        ; $7deb: $c0

    ld e, e                                       ; $7dec: $5b
    rst $28                                       ; $7ded: $ef
    sub l                                         ; $7dee: $95
    rst $28                                       ; $7def: $ef
    dec hl                                        ; $7df0: $2b
    rst $18                                       ; $7df1: $df
    rst $10                                       ; $7df2: $d7
    xor a                                         ; $7df3: $af
    db $db                                        ; $7df4: $db
    rst $38                                       ; $7df5: $ff
    push af                                       ; $7df6: $f5
    rrca                                          ; $7df7: $0f
    ei                                            ; $7df8: $fb
    rrca                                          ; $7df9: $0f
    ld a, [bc]                                    ; $7dfa: $0a
    dec c                                         ; $7dfb: $0d
    ld [bc], a                                    ; $7dfc: $02
    rra                                           ; $7dfd: $1f
    sbc d                                         ; $7dfe: $9a
    cpl                                           ; $7dff: $2f
    ccf                                           ; $7e00: $3f
    dec h                                         ; $7e01: $25
    ld a, [hl-]                                   ; $7e02: $3a
    ld a, [hl+]                                   ; $7e03: $2a
    scf                                           ; $7e04: $37
    dec h                                         ; $7e05: $25
    ld a, [hl-]                                   ; $7e06: $3a
    ld e, e                                       ; $7e07: $5b
    ld a, [hl]                                    ; $7e08: $7e
    xor a                                         ; $7e09: $af
    rst $38                                       ; $7e0a: $ff
    sub a                                         ; $7e0b: $97
    rst $38                                       ; $7e0c: $ff
    adc e                                         ; $7e0d: $8b
    db $f4                                        ; $7e0e: $f4
    sub a                                         ; $7e0f: $97
    db $ec                                        ; $7e10: $ec
    xor c                                         ; $7e11: $a9
    sub $76                                       ; $7e12: $d6 $76
    ld l, l                                       ; $7e14: $6d
    ld de, $0e1e                                  ; $7e15: $11 $1e $0e
    dec c                                         ; $7e18: $0d
    ld [bc], a                                    ; $7e19: $02
    inc bc                                        ; $7e1a: $03
    add h                                         ; $7e1b: $84
    cp $01                                        ; $7e1c: $fe $01
    ld [hl], l                                    ; $7e1e: $75
    adc d                                         ; $7e1f: $8a
    ld [bc], a                                    ; $7e20: $02
    rst $38                                       ; $7e21: $ff
    adc b                                         ; $7e22: $88
    ld e, a                                       ; $7e23: $5f
    and b                                         ; $7e24: $a0
    rst $38                                       ; $7e25: $ff
    nop                                           ; $7e26: $00
    rst $38                                       ; $7e27: $ff
    nop                                           ; $7e28: $00
    xor a                                         ; $7e29: $af
    ld d, b                                       ; $7e2a: $50
    inc b                                         ; $7e2b: $04
    rst $38                                       ; $7e2c: $ff
    adc h                                         ; $7e2d: $8c
    ei                                            ; $7e2e: $fb
    inc b                                         ; $7e2f: $04
    cp $01                                        ; $7e30: $fe $01
    db $fd                                        ; $7e32: $fd
    ld [bc], a                                    ; $7e33: $02
    rst $38                                       ; $7e34: $ff
    nop                                           ; $7e35: $00
    rst $38                                       ; $7e36: $ff
    nop                                           ; $7e37: $00
    xor a                                         ; $7e38: $af
    ld d, b                                       ; $7e39: $50
    ld [bc], a                                    ; $7e3a: $02
    rst $38                                       ; $7e3b: $ff
    add h                                         ; $7e3c: $84
    ccf                                           ; $7e3d: $3f
    ret nz                                        ; $7e3e: $c0

    push de                                       ; $7e3f: $d5
    xor d                                         ; $7e40: $aa
    ld [bc], a                                    ; $7e41: $02
    rst $38                                       ; $7e42: $ff
    adc b                                         ; $7e43: $88
    xor a                                         ; $7e44: $af
    ld d, b                                       ; $7e45: $50
    ld a, a                                       ; $7e46: $7f
    add b                                         ; $7e47: $80
    cp $01                                        ; $7e48: $fe $01
    push de                                       ; $7e4a: $d5
    ld a, [hl+]                                   ; $7e4b: $2a
    inc b                                         ; $7e4c: $04
    rst $38                                       ; $7e4d: $ff
    adc h                                         ; $7e4e: $8c
    ld e, a                                       ; $7e4f: $5f
    and b                                         ; $7e50: $a0
    cp a                                          ; $7e51: $bf
    ld b, b                                       ; $7e52: $40
    rst $38                                       ; $7e53: $ff
    nop                                           ; $7e54: $00
    rst $38                                       ; $7e55: $ff
    nop                                           ; $7e56: $00
    ld a, [$b505]                                 ; $7e57: $fa $05 $b5
    ld c, d                                       ; $7e5a: $4a

jr_0f0_7e5b:
    ld [bc], a                                    ; $7e5b: $02
    rst $38                                       ; $7e5c: $ff
    add d                                         ; $7e5d: $82
    ld d, b                                       ; $7e5e: $50
    ldh a, [rSC]                                  ; $7e5f: $f0 $02
    ld hl, sp-$76                                 ; $7e61: $f8 $8a
    db $f4                                        ; $7e63: $f4
    db $fc                                        ; $7e64: $fc
    adc h                                         ; $7e65: $8c
    ld a, h                                       ; $7e66: $7c
    ld d, h                                       ; $7e67: $54
    db $fc                                        ; $7e68: $fc
    call z, Call_0f0_567c                         ; $7e69: $cc $7c $56
    cp $02                                        ; $7e6c: $fe $02
    rst $38                                       ; $7e6e: $ff
    adc [hl]                                      ; $7e6f: $8e
    db $eb                                        ; $7e70: $eb
    rst $38                                       ; $7e71: $ff
    add l                                         ; $7e72: $85
    ld a, a                                       ; $7e73: $7f
    jp $a53f                                      ; $7e74: $c3 $3f $a5


    ld a, a                                       ; $7e77: $7f
    ld h, [hl]                                    ; $7e78: $66
    cp [hl]                                       ; $7e79: $be
    xor b                                         ; $7e7a: $a8
    ld a, b                                       ; $7e7b: $78
    ld [hl], b                                    ; $7e7c: $70
    or b                                          ; $7e7d: $b0
    ld [bc], a                                    ; $7e7e: $02
    ret nz                                        ; $7e7f: $c0

    rst $38                                       ; $7e80: $ff
    add hl, de                                    ; $7e81: $19
    ld a, [bc]                                    ; $7e82: $0a
    rst $30                                       ; $7e83: $f7
    ld a, [bc]                                    ; $7e84: $0a
    jp $cc00                                      ; $7e85: $c3 $00 $cc


    rst $30                                       ; $7e88: $f7
    call $d9ff                                    ; $7e89: $cd $ff $d9
    rlca                                          ; $7e8c: $07
    pop hl                                        ; $7e8d: $e1
    di                                            ; $7e8e: $f3
    call c, $ddfb                                 ; $7e8f: $dc $fb $dd
    rst $38                                       ; $7e92: $ff
    pop af                                        ; $7e93: $f1
    di                                            ; $7e94: $f3
    db $ec                                        ; $7e95: $ec
    ei                                            ; $7e96: $fb
    rst $30                                       ; $7e97: $f7
    ld bc, $f9fc                                  ; $7e98: $01 $fc $f9
    inc b                                         ; $7e9b: $04
    inc b                                         ; $7e9c: $04
    ld [bc], a                                    ; $7e9d: $02
    inc c                                         ; $7e9e: $0c
    sbc d                                         ; $7e9f: $9a
    dec bc                                        ; $7ea0: $0b
    rrca                                          ; $7ea1: $0f
    rra                                           ; $7ea2: $1f
    inc de                                        ; $7ea3: $13
    ld a, a                                       ; $7ea4: $7f
    ld h, a                                       ; $7ea5: $67
    cp [hl]                                       ; $7ea6: $be
    jp Jump_0f0_706f                              ; $7ea7: $c3 $6f $70


    ld d, $19                                     ; $7eaa: $16 $19
    dec e                                         ; $7eac: $1d
    ld e, $16                                     ; $7ead: $1e $16
    add hl, de                                    ; $7eaf: $19
    ld de, $0b1e                                  ; $7eb0: $11 $1e $0b
    inc c                                         ; $7eb3: $0c
    ld c, $0f                                     ; $7eb4: $0e $0f
    dec bc                                        ; $7eb6: $0b
    inc c                                         ; $7eb7: $0c
    add hl, bc                                    ; $7eb8: $09
    ld c, $02                                     ; $7eb9: $0e $02
    jr jr_0f0_7e5b                                ; $7ebb: $18 $9e

    db $f4                                        ; $7ebd: $f4
    db $ec                                        ; $7ebe: $ec
    ld h, h                                       ; $7ebf: $64
    sbc h                                         ; $7ec0: $9c
    xor d                                         ; $7ec1: $aa
    sbc $44                                       ; $7ec2: $de $44
    db $fc                                        ; $7ec4: $fc
    ret c                                         ; $7ec5: $d8

    ld a, b                                       ; $7ec6: $78
    ldh [$60], a                                  ; $7ec7: $e0 $60
    ret nz                                        ; $7ec9: $c0

    ld b, b                                       ; $7eca: $40
    ret nz                                        ; $7ecb: $c0

    ld b, b                                       ; $7ecc: $40
    and b                                         ; $7ecd: $a0
    ld h, b                                       ; $7ece: $60
    ret nc                                        ; $7ecf: $d0

    jr nc, jr_0f0_7f3a                            ; $7ed0: $30 $68

    sbc b                                         ; $7ed2: $98
    db $f4                                        ; $7ed3: $f4
    inc c                                         ; $7ed4: $0c
    or [hl]                                       ; $7ed5: $b6
    ld c, [hl]                                    ; $7ed6: $4e
    db $dd                                        ; $7ed7: $dd
    ccf                                           ; $7ed8: $3f
    ld [hl], e                                    ; $7ed9: $73
    db $fc                                        ; $7eda: $fc
    ld [bc], a                                    ; $7edb: $02
    jr c, @-$7c                                   ; $7edc: $38 $82

    call nz, Call_000_02fc                        ; $7ede: $c4 $fc $02
    cp $8f                                        ; $7ee1: $fe $8f
    or $0e                                        ; $7ee3: $f6 $0e
    dec a                                         ; $7ee5: $3d
    rst $00                                       ; $7ee6: $c7
    db $ed                                        ; $7ee7: $ed
    rst $30                                       ; $7ee8: $f7
    xor l                                         ; $7ee9: $ad

jr_0f0_7eea:
    or a                                          ; $7eea: $b7
    sbc l                                         ; $7eeb: $9d
    sub a                                         ; $7eec: $97
    dec d                                         ; $7eed: $15

Jump_0f0_7eee:
    rra                                           ; $7eee: $1f
    ld e, $16                                     ; $7eef: $1e $16
    inc d                                         ; $7ef1: $14
    ld [bc], a                                    ; $7ef2: $02
    inc e                                         ; $7ef3: $1c
    add l                                         ; $7ef4: $85
    inc d                                         ; $7ef5: $14
    inc a                                         ; $7ef6: $3c
    inc h                                         ; $7ef7: $24
    inc l                                         ; $7ef8: $2c
    inc [hl]                                      ; $7ef9: $34
    ld [bc], a                                    ; $7efa: $02
    inc e                                         ; $7efb: $1c
    ld [bc], a                                    ; $7efc: $02
    nop                                           ; $7efd: $00
    ld [bc], a                                    ; $7efe: $02
    ld bc, $06b9                                  ; $7eff: $01 $b9 $06

Call_0f0_7f02:
    rlca                                          ; $7f02: $07
    dec c                                         ; $7f03: $0d
    dec bc                                        ; $7f04: $0b
    ld d, $19                                     ; $7f05: $16 $19
    inc hl                                        ; $7f07: $23
    inc a                                         ; $7f08: $3c
    add hl, sp                                    ; $7f09: $39
    ld h, $5c                                     ; $7f0a: $26 $5c
    ld h, e                                       ; $7f0c: $63
    ld l, [hl]                                    ; $7f0d: $6e
    ld d, c                                       ; $7f0e: $51
    ld d, a                                       ; $7f0f: $57
    ld l, b                                       ; $7f10: $68
    db $eb                                        ; $7f11: $eb
    call nc, $e9d6                                ; $7f12: $d4 $d6 $e9
    pop hl                                        ; $7f15: $e1
    rst $38                                       ; $7f16: $ff
    rst $10                                       ; $7f17: $d7
    rst $18                                       ; $7f18: $df
    adc $cf                                       ; $7f19: $ce $cf
    xor c                                         ; $7f1b: $a9
    xor $e5                                       ; $7f1c: $ee $e5
    and $50                                       ; $7f1e: $e6 $50
    ld h, b                                       ; $7f20: $60
    ld a, h                                       ; $7f21: $7c
    ld a, a                                       ; $7f22: $7f
    ld b, a                                       ; $7f23: $47
    ld a, b                                       ; $7f24: $78
    cp a                                          ; $7f25: $bf
    ret nz                                        ; $7f26: $c0

    cp a                                          ; $7f27: $bf
    ret nz                                        ; $7f28: $c0

    ld a, [hl]                                    ; $7f29: $7e

jr_0f0_7f2a:
    add c                                         ; $7f2a: $81
    push af                                       ; $7f2b: $f5
    ld a, [bc]                                    ; $7f2c: $0a
    ld l, b                                       ; $7f2d: $68
    sub a                                         ; $7f2e: $97
    sub l                                         ; $7f2f: $95
    db $eb                                        ; $7f30: $eb
    ld c, d                                       ; $7f31: $4a
    rst $38                                       ; $7f32: $ff
    or a                                          ; $7f33: $b7
    ld a, a                                       ; $7f34: $7f
    sbc $3e                                       ; $7f35: $de $3e

Jump_0f0_7f37:
    ret c                                         ; $7f37: $d8

    jr c, jr_0f0_7eea                             ; $7f38: $38 $b0

jr_0f0_7f3a:
    ld [bc], a                                    ; $7f3a: $02
    ld [hl], b                                    ; $7f3b: $70
    sub e                                         ; $7f3c: $93
    ldh a, [$d0]                                  ; $7f3d: $f0 $d0
    ldh a, [rIF]                                  ; $7f3f: $f0 $0f
    nop                                           ; $7f41: $00
    ld c, $01                                     ; $7f42: $0e $01
    ld [$0507], sp                                ; $7f44: $08 $07 $05
    rrca                                          ; $7f47: $0f
    dec bc                                        ; $7f48: $0b
    rlca                                          ; $7f49: $07
    dec b                                         ; $7f4a: $05
    rrca                                          ; $7f4b: $0f
    ld a, [bc]                                    ; $7f4c: $0a
    ld c, $04                                     ; $7f4d: $0e $04
    inc c                                         ; $7f4f: $0c
    ld [bc], a                                    ; $7f50: $02
    ld [$000e], sp                                ; $7f51: $08 $0e $00
    adc [hl]                                      ; $7f54: $8e
    and [hl]                                      ; $7f55: $a6
    rst $20                                       ; $7f56: $e7
    push hl                                       ; $7f57: $e5
    rst $20                                       ; $7f58: $e7
    and l                                         ; $7f59: $a5
    rst $20                                       ; $7f5a: $e7
    ld l, c                                       ; $7f5b: $69
    ld l, a                                       ; $7f5c: $6f
    ld l, b                                       ; $7f5d: $68
    ld l, a                                       ; $7f5e: $6f

jr_0f0_7f5f:
    inc h                                         ; $7f5f: $24
    daa                                           ; $7f60: $27
    ld [bc], a                                    ; $7f61: $02
    inc bc                                        ; $7f62: $03
    ld [bc], a                                    ; $7f63: $02
    rlca                                          ; $7f64: $07
    adc h                                         ; $7f65: $8c
    ld [$120f], sp                                ; $7f66: $08 $0f $12
    rra                                           ; $7f69: $1f

jr_0f0_7f6a:
    dec d                                         ; $7f6a: $15
    rra                                           ; $7f6b: $1f
    ld [de], a                                    ; $7f6c: $12
    dec e                                         ; $7f6d: $1d
    dec c                                         ; $7f6e: $0d
    dec bc                                        ; $7f6f: $0b
    inc b                                         ; $7f70: $04
    rlca                                          ; $7f71: $07
    ld [bc], a                                    ; $7f72: $02
    inc bc                                        ; $7f73: $03
    ld [bc], a                                    ; $7f74: $02
    nop                                           ; $7f75: $00
    adc e                                         ; $7f76: $8b
    sub b                                         ; $7f77: $90
    ldh a, [rNR41]                                ; $7f78: $f0 $20
    ldh [$60], a                                  ; $7f7a: $e0 $60
    and b                                         ; $7f7c: $a0
    jr nz, jr_0f0_7f5f                            ; $7f7d: $20 $e0

    ret nz                                        ; $7f7f: $c0

    ld b, b                                       ; $7f80: $40
    ret nz                                        ; $7f81: $c0

    ld [bc], a                                    ; $7f82: $02
    ld b, b                                       ; $7f83: $40
    sub b                                         ; $7f84: $90
    ret nz                                        ; $7f85: $c0

    ld b, b                                       ; $7f86: $40
    ret nz                                        ; $7f87: $c0

    jr nz, jr_0f0_7f6a                            ; $7f88: $20 $e0

    or b                                          ; $7f8a: $b0
    ret nc                                        ; $7f8b: $d0

    ld c, b                                       ; $7f8c: $48
    ld hl, sp+$5f                                 ; $7f8d: $f8 $5f
    rst $20                                       ; $7f8f: $e7
    xor $f3                                       ; $7f90: $ee $f3
    ld e, $ff                                     ; $7f92: $1e $ff
    nop                                           ; $7f94: $00
    inc bc                                        ; $7f95: $03
    rst $38                                       ; $7f96: $ff
    ld [bc], a                                    ; $7f97: $02
    jr nc, jr_0f0_7f2a                            ; $7f98: $30 $90

    inc c                                         ; $7f9a: $0c
    inc a                                         ; $7f9b: $3c
    ld [bc], a                                    ; $7f9c: $02
    ld a, $0f                                     ; $7f9d: $3e $0f
    ccf                                           ; $7f9f: $3f
    inc sp                                        ; $7fa0: $33
    ccf                                           ; $7fa1: $3f
    push bc                                       ; $7fa2: $c5
    ccf                                           ; $7fa3: $3f
    or d                                          ; $7fa4: $b2
    ld e, [hl]                                    ; $7fa5: $5e
    ld d, h                                       ; $7fa6: $54
    cp h                                          ; $7fa7: $bc
    cp b                                          ; $7fa8: $b8
    ld e, b                                       ; $7fa9: $58
    ld [bc], a                                    ; $7faa: $02
    ldh a, [$0c]                                  ; $7fab: $f0 $0c
    nop                                           ; $7fad: $00
    adc b                                         ; $7fae: $88
    ccf                                           ; $7faf: $3f
    nop                                           ; $7fb0: $00
    cpl                                           ; $7fb1: $2f
    db $10                                        ; $7fb2: $10
    rra                                           ; $7fb3: $1f
    jr nz, @+$2c                                  ; $7fb4: $20 $2a

    dec d                                         ; $7fb6: $15
    ld [bc], a                                    ; $7fb7: $02
    ccf                                           ; $7fb8: $3f
    ld d, $00                                     ; $7fb9: $16 $00
    rst $38                                       ; $7fbb: $ff
    add hl, bc                                    ; $7fbc: $09
    ld [bc], a                                    ; $7fbd: $02
    ld hl, sp+$08                                 ; $7fbe: $f8 $08
    rst $20                                       ; $7fc0: $e7
    ld hl, sp-$18                                 ; $7fc1: $f8 $e8
    db $fd                                        ; $7fc3: $fd
    add sp, $00                                   ; $7fc4: $e8 $00
    ld [bc], a                                    ; $7fc6: $02
    dec b                                         ; $7fc7: $05
    ld [bc], a                                    ; $7fc8: $02
    dec bc                                        ; $7fc9: $0b
    sbc h                                         ; $7fca: $9c
    ld b, $07                                     ; $7fcb: $06 $07
    ld e, $1f                                     ; $7fcd: $1e $1f
    add hl, bc                                    ; $7fcf: $09
    rrca                                          ; $7fd0: $0f
    ld a, [de]                                    ; $7fd1: $1a
    ld d, $15                                     ; $7fd2: $16 $15
    dec bc                                        ; $7fd4: $0b
    ld l, $12                                     ; $7fd5: $2e $12
    ld [hl], $0b                                  ; $7fd7: $36 $0b
    jr z, jr_0f0_7fec                             ; $7fd9: $28 $11

    or l                                          ; $7fdb: $b5
    add c                                         ; $7fdc: $81
    ld a, [hl]                                    ; $7fdd: $7e
    ld d, d                                       ; $7fde: $52
    ld [hl], $02                                  ; $7fdf: $36 $02
    cp $d6                                        ; $7fe1: $fe $d6
    inc a                                         ; $7fe3: $3c
    inc h                                         ; $7fe4: $24
    jr nc, @+$22                                  ; $7fe5: $30 $20

    ld [bc], a                                    ; $7fe7: $02
    nop                                           ; $7fe8: $00
    ld [bc], a                                    ; $7fe9: $02
    inc b                                         ; $7fea: $04
    add h                                         ; $7feb: $84

jr_0f0_7fec:
    ld [bc], a                                    ; $7fec: $02
    ld b, $05                                     ; $7fed: $06 $05
    rlca                                          ; $7fef: $07
    ld [bc], a                                    ; $7ff0: $02
    inc b                                         ; $7ff1: $04
    ld [bc], a                                    ; $7ff2: $02
    nop                                           ; $7ff3: $00
    ld [bc], a                                    ; $7ff4: $02
    inc b                                         ; $7ff5: $04
    add c                                         ; $7ff6: $81
    ld [bc], a                                    ; $7ff7: $02
    inc bc                                        ; $7ff8: $03
    ld b, $02                                     ; $7ff9: $06 $02
    inc b                                         ; $7ffb: $04
    inc c                                         ; $7ffc: $0c
    nop                                           ; $7ffd: $00
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
