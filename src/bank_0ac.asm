; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ac", ROMX[$4000], BANK[$ac]

    xor h                                         ; $4000: $ac
    db $10                                        ; $4001: $10

Jump_0ac_4002:
    inc bc                                        ; $4002: $03
    ld l, d                                       ; $4003: $6a
    ld [bc], a                                    ; $4004: $02
    ld d, h                                       ; $4005: $54
    nop                                           ; $4006: $00
    ld bc, $01b0                                  ; $4007: $01 $b0 $01
    ld [bc], a                                    ; $400a: $02
    ld [$2002], sp                                ; $400b: $08 $02 $20
    nop                                           ; $400e: $00
    rst $38                                       ; $400f: $ff
    stop                                          ; $4010: $10 $00
    xor a                                         ; $4012: $af
    jr nz, jr_0ac_4065                            ; $4013: $20 $50

    ld h, c                                       ; $4015: $61
    sub c                                         ; $4016: $91
    ldh [rNR44], a                                ; $4017: $e0 $23
    ldh [rP1], a                                  ; $4019: $e0 $00
    ld h, $bc                                     ; $401b: $26 $bc

Call_0ac_401d:
    ld a, h                                       ; $401d: $7c
    nop                                           ; $401e: $00
    rst $20                                       ; $401f: $e7
    db $18, $c3                                   ; $4020: $18 $c3
    inc a                                         ; $4022: $3c
    ld bc, $6681                                  ; $4023: $01 $81 $66
    nop                                           ; $4026: $00
    jp RST_18                                     ; $4027: $c3 $18 $00


    inc a                                         ; $402a: $3c
    inc a                                         ; $402b: $3c
    jr z, jr_0ac_402e                             ; $402c: $28 $00

jr_0ac_402e:
    rst $28                                       ; $402e: $ef
    rst $38                                       ; $402f: $ff
    ld l, e                                       ; $4030: $6b
    ld [hl], a                                    ; $4031: $77
    add h                                         ; $4032: $84
    sbc d                                         ; $4033: $9a
    add $c9                                       ; $4034: $c6 $c9
    dec bc                                        ; $4036: $0b
    ld h, [hl]                                    ; $4037: $66
    ld h, c                                       ; $4038: $61
    ld a, [hl-]                                   ; $4039: $3a
    dec a                                         ; $403a: $3d
    ld d, b                                       ; $403b: $50
    ld e, b                                       ; $403c: $58
    add b                                         ; $403d: $80
    ld e, a                                       ; $403e: $5f
    cp b                                          ; $403f: $b8
    ld h, d                                       ; $4040: $62
    stop                                          ; $4041: $10 $00
    inc bc                                        ; $4043: $03
    ld [bc], a                                    ; $4044: $02
    ld bc, $0103                                  ; $4045: $01 $03 $01
    ld [bc], a                                    ; $4048: $02
    ld bc, $000e                                  ; $4049: $01 $0e $00
    dec c                                         ; $404c: $0d
    rla                                           ; $404d: $17
    inc e                                         ; $404e: $1c
    dec hl                                        ; $404f: $2b
    rst $20                                       ; $4050: $e7
    cp a                                          ; $4051: $bf
    ld [$0051], a                                 ; $4052: $ea $51 $00
    ld c, c                                       ; $4055: $49
    ld a, [$70b0]                                 ; $4056: $fa $b0 $70
    and b                                         ; $4059: $a0
    cpl                                           ; $405a: $2f
    add b                                         ; $405b: $80
    rra                                           ; $405c: $1f
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    ldh a, [$e0]                                  ; $405f: $f0 $e0
    sub b                                         ; $4061: $90
    ldh [rNR44], a                                ; $4062: $e0 $23
    ret nz                                        ; $4064: $c0

jr_0ac_4065:
    ld b, a                                       ; $4065: $47
    jr nz, jr_0ac_406b                            ; $4066: $20 $03

    dec b                                         ; $4068: $05
    and b                                         ; $4069: $a0
    db $10                                        ; $406a: $10

jr_0ac_406b:
    jr nc, jr_0ac_409d                            ; $406b: $30 $30

    ld c, b                                       ; $406d: $48
    call z, $00b4                                 ; $406e: $cc $b4 $00
    adc $7a                                       ; $4071: $ce $7a
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    cp $fd                                        ; $4075: $fe $fd
    set 0, h                                      ; $4077: $cb $c4
    nop                                           ; $4079: $00
    di                                            ; $407a: $f3
    db $f4                                        ; $407b: $f4
    inc bc                                        ; $407c: $03
    dec b                                         ; $407d: $05
    ld bc, $0e1e                                  ; $407e: $01 $1e $0e
    inc de                                        ; $4081: $13
    ld bc, $0907                                  ; $4082: $01 $07 $09
    inc bc                                        ; $4085: $03
    inc b                                         ; $4086: $04
    rlca                                          ; $4087: $07
    and $80                                       ; $4088: $e6 $80
    ld h, h                                       ; $408a: $64
    nop                                           ; $408b: $00
    nop                                           ; $408c: $00
    ldh [rP1], a                                  ; $408d: $e0 $00
    ret nc                                        ; $408f: $d0

    ld h, b                                       ; $4090: $60
    ld [hl], b                                    ; $4091: $70
    xor b                                         ; $4092: $a8
    ld [hl], h                                    ; $4093: $74
    cp [hl]                                       ; $4094: $be
    ld [$b5ba], sp                                ; $4095: $08 $ba $b5
    sbc d                                         ; $4098: $9a
    cp a                                          ; $4099: $bf
    ld a, [hl]                                    ; $409a: $7e
    ld e, b                                       ; $409b: $58
    ld b, b                                       ; $409c: $40

jr_0ac_409d:
    add b                                         ; $409d: $80
    dec b                                         ; $409e: $05
    nop                                           ; $409f: $00
    rlca                                          ; $40a0: $07
    ld [bc], a                                    ; $40a1: $02
    dec b                                         ; $40a2: $05
    ld a, [bc]                                    ; $40a3: $0a
    dec c                                         ; $40a4: $0d
    ld a, [de]                                    ; $40a5: $1a
    dec e                                         ; $40a6: $1d
    ld sp, $3600                                  ; $40a7: $31 $00 $36
    ld l, h                                       ; $40aa: $6c
    rrca                                          ; $40ab: $0f
    ld l, h                                       ; $40ac: $6c
    rrca                                          ; $40ad: $0f
    ld hl, $5d2e                                  ; $40ae: $21 $2e $5d
    nop                                           ; $40b1: $00
    xor $a6                                       ; $40b2: $ee $a6
    and e                                         ; $40b4: $a3
    add [hl]                                      ; $40b5: $86
    xor [hl]                                      ; $40b6: $ae
    jp nc, $b25c                                  ; $40b7: $d2 $5c $b2

    nop                                           ; $40ba: $00
    ld l, $3c                                     ; $40bb: $2e $3c
    jp c, Jump_0ac_74f8                           ; $40bd: $da $f8 $74

    inc e                                         ; $40c0: $1c
    db $e4                                        ; $40c1: $e4
    rrca                                          ; $40c2: $0f
    nop                                           ; $40c3: $00
    cpl                                           ; $40c4: $2f
    rrca                                          ; $40c5: $0f
    ld l, b                                       ; $40c6: $68
    rrca                                          ; $40c7: $0f
    ld h, b                                       ; $40c8: $60
    db $eb                                        ; $40c9: $eb
    db $e4                                        ; $40ca: $e4
    ld [hl], a                                    ; $40cb: $77
    nop                                           ; $40cc: $00
    ld [hl], b                                    ; $40cd: $70
    sbc a                                         ; $40ce: $9f
    db $fc                                        ; $40cf: $fc
    ld hl, sp-$08                                 ; $40d0: $f8 $f8
    rlca                                          ; $40d2: $07
    dec bc                                        ; $40d3: $0b
    rst $38                                       ; $40d4: $ff
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    inc bc                                        ; $40d7: $03
    ld e, $b7                                     ; $40d8: $1e $b7
    rst $08                                       ; $40da: $cf
    ld bc, $ff00                                  ; $40db: $01 $00 $ff
    nop                                           ; $40de: $00
    db $fc                                        ; $40df: $fc
    add c                                         ; $40e0: $81
    inc bc                                        ; $40e1: $03
    ld a, h                                       ; $40e2: $7c
    ld b, h                                       ; $40e3: $44
    db $fc                                        ; $40e4: $fc
    ld l, e                                       ; $40e5: $6b
    ld bc, $c000                                  ; $40e6: $01 $00 $c0
    add hl, de                                    ; $40e9: $19
    ret c                                         ; $40ea: $d8

    pop bc                                        ; $40eb: $c1
    dec e                                         ; $40ec: $1d
    add b                                         ; $40ed: $80
    ld e, $19                                     ; $40ee: $1e $19
    nop                                           ; $40f0: $00
    daa                                           ; $40f1: $27
    rra                                           ; $40f2: $1f
    ld bc, $313f                                  ; $40f3: $01 $3f $31
    ld c, a                                       ; $40f6: $4f
    adc a                                         ; $40f7: $8f
    sbc d                                         ; $40f8: $9a
    nop                                           ; $40f9: $00
    cp d                                          ; $40fa: $ba
    jp z, $c792                                   ; $40fb: $ca $92 $c7

    dec l                                         ; $40fe: $2d
    di                                            ; $40ff: $f3
    dec d                                         ; $4100: $15
    pop af                                        ; $4101: $f1
    nop                                           ; $4102: $00
    ld a, e                                       ; $4103: $7b
    ld a, b                                       ; $4104: $78
    or h                                          ; $4105: $b4
    ccf                                           ; $4106: $3f
    ld a, d                                       ; $4107: $7a
    ld e, $2f                                     ; $4108: $1e $2f
    cp a                                          ; $410a: $bf
    nop                                           ; $410b: $00

jr_0ac_410c:
    ld a, a                                       ; $410c: $7f
    adc a                                         ; $410d: $8f
    ld c, a                                       ; $410e: $4f
    or b                                          ; $410f: $b0
    ld [hl], b                                    ; $4110: $70
    sbc b                                         ; $4111: $98
    ld e, b                                       ; $4112: $58
    call z, $e000                                 ; $4113: $cc $00 $e0
    add [hl]                                      ; $4116: $86
    ldh a, [rTMA]                                 ; $4117: $f0 $06
    ldh a, [rTIMA]                                ; $4119: $f0 $05
    pop af                                        ; $411b: $f1
    jr nz, jr_0ac_411e                            ; $411c: $20 $00

jr_0ac_411e:
    cpl                                           ; $411e: $2f
    inc sp                                        ; $411f: $33
    rlca                                          ; $4120: $07
    inc de                                        ; $4121: $13
    rlca                                          ; $4122: $07
    rlca                                          ; $4123: $07
    ld d, $03                                     ; $4124: $16 $03
    db $10                                        ; $4126: $10
    jr jr_0ac_410c                                ; $4127: $18 $e3

    add sp, $02                                   ; $4129: $e8 $02
    ld [$58b8], sp                                ; $412b: $08 $b8 $58
    ld [de], a                                    ; $412e: $12
    ld [c], a                                     ; $412f: $e2
    nop                                           ; $4130: $00
    ld sp, $e1c1                                  ; $4131: $31 $c1 $e1
    sub $e0                                       ; $4134: $d6 $e0
    db $d3                                        ; $4136: $d3
    ldh [$31], a                                  ; $4137: $e0 $31
    nop                                           ; $4139: $00
    pop hl                                        ; $413a: $e1
    inc sp                                        ; $413b: $33
    jp nz, Jump_000_30e5                          ; $413c: $c2 $e5 $30

    rrca                                          ; $413f: $0f
    ld h, b                                       ; $4140: $60
    ld l, b                                       ; $4141: $68
    nop                                           ; $4142: $00
    rla                                           ; $4143: $17
    add b                                         ; $4144: $80
    ret c                                         ; $4145: $d8

    scf                                           ; $4146: $37
    sub [hl]                                      ; $4147: $96
    ld a, b                                       ; $4148: $78
    xor [hl]                                      ; $4149: $ae
    ld a, b                                       ; $414a: $78
    nop                                           ; $414b: $00
    xor d                                         ; $414c: $aa
    db $fc                                        ; $414d: $fc
    sbc b                                         ; $414e: $98
    ret z                                         ; $414f: $c8

    ld d, h                                       ; $4150: $54
    rst $28                                       ; $4151: $ef
    jr z, jr_0ac_418c                             ; $4152: $28 $38

    nop                                           ; $4154: $00
    xor $7d                                       ; $4155: $ee $7d
    jr c, jr_0ac_41ad                             ; $4157: $38 $54

    ld a, h                                       ; $4159: $7c
    add $38                                       ; $415a: $c6 $38
    add d                                         ; $415c: $82
    nop                                           ; $415d: $00
    db $10                                        ; $415e: $10
    jr c, jr_0ac_41dd                             ; $415f: $38 $7c

    cp e                                          ; $4161: $bb
    ldh [$e7], a                                  ; $4162: $e0 $e7
    jr c, jr_0ac_4187                             ; $4164: $38 $21

    nop                                           ; $4166: $00
    sbc $16                                       ; $4167: $de $16
    reti                                          ; $4169: $d9


    and $c3                                       ; $416a: $e6 $c3
    ld de, $34c2                                  ; $416c: $11 $c2 $34
    nop                                           ; $416f: $00
    rla                                           ; $4170: $17
    push de                                       ; $4171: $d5
    ld [hl], e                                    ; $4172: $73
    ld d, [hl]                                    ; $4173: $56
    dec a                                         ; $4174: $3d
    inc sp                                        ; $4175: $33
    ld l, [hl]                                    ; $4176: $6e
    ld [hl], c                                    ; $4177: $71
    nop                                           ; $4178: $00
    cp c                                          ; $4179: $b9
    ld [hl], $d9                                  ; $417a: $36 $d9
    sub $8f                                       ; $417c: $d6 $8f
    ret nc                                        ; $417e: $d0

    rrca                                          ; $417f: $0f
    sbc b                                         ; $4180: $98
    nop                                           ; $4181: $00
    rrca                                          ; $4182: $0f
    sbc b                                         ; $4183: $98
    add a                                         ; $4184: $87
    ret z                                         ; $4185: $c8

    dec b                                         ; $4186: $05

jr_0ac_4187:
    pop af                                        ; $4187: $f1
    dec c                                         ; $4188: $0d
    pop hl                                        ; $4189: $e1
    nop                                           ; $418a: $00
    dec bc                                        ; $418b: $0b

jr_0ac_418c:
    db $e3                                        ; $418c: $e3
    dec bc                                        ; $418d: $0b
    db $e3                                        ; $418e: $e3
    dec de                                        ; $418f: $1b
    jp $c717                                      ; $4190: $c3 $17 $c7


    nop                                           ; $4193: $00
    rst $00                                       ; $4194: $c7
    rla                                           ; $4195: $17
    rst $00                                       ; $4196: $c7
    rla                                           ; $4197: $17
    pop hl                                        ; $4198: $e1
    db $ec                                        ; $4199: $ec
    pop af                                        ; $419a: $f1
    db $f4                                        ; $419b: $f4
    nop                                           ; $419c: $00
    pop af                                        ; $419d: $f1
    db $f4                                        ; $419e: $f4
    rlca                                          ; $419f: $07
    pop af                                        ; $41a0: $f1
    ld [bc], a                                    ; $41a1: $02
    ld hl, sp+$03                                 ; $41a2: $f8 $03
    ld sp, hl                                     ; $41a4: $f9
    nop                                           ; $41a5: $00
    inc bc                                        ; $41a6: $03
    ld hl, sp+$01                                 ; $41a7: $f8 $01
    db $fc                                        ; $41a9: $fc
    pop bc                                        ; $41aa: $c1
    and $c1                                       ; $41ab: $e6 $c1

jr_0ac_41ad:
    inc hl                                        ; $41ad: $23
    nop                                           ; $41ae: $00
    ret nz                                        ; $41af: $c0

    inc hl                                        ; $41b0: $23
    pop bc                                        ; $41b1: $c1
    call c, $dcc1                                 ; $41b2: $dc $c1 $dc
    ccf                                           ; $41b5: $3f
    pop hl                                        ; $41b6: $e1
    nop                                           ; $41b7: $00
    ld a, $63                                     ; $41b8: $3e $63
    ld a, h                                       ; $41ba: $7c
    ld h, c                                       ; $41bb: $61
    sub e                                         ; $41bc: $93
    ld c, a                                       ; $41bd: $4f
    cpl                                           ; $41be: $2f
    ld [hl], b                                    ; $41bf: $70
    nop                                           ; $41c0: $00
    rst $28                                       ; $41c1: $ef

Call_0ac_41c2:
    ldh a, [$8f]                                  ; $41c2: $f0 $8f
    rrca                                          ; $41c4: $0f
    add $0f                                       ; $41c5: $c6 $0f
    jp hl                                         ; $41c7: $e9


    cpl                                           ; $41c8: $2f
    nop                                           ; $41c9: $00
    ret nc                                        ; $41ca: $d0

    ld d, a                                       ; $41cb: $57
    inc de                                        ; $41cc: $13
    ld b, e                                       ; $41cd: $43
    cp e                                          ; $41ce: $bb
    rst $10                                       ; $41cf: $d7
    ld b, h                                       ; $41d0: $44
    rst $00                                       ; $41d1: $c7
    nop                                           ; $41d2: $00
    rst $00                                       ; $41d3: $c7
    jr z, @+$01                                   ; $41d4: $28 $ff

    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    add e                                         ; $41d8: $83
    cp $92                                        ; $41d9: $fe $92
    nop                                           ; $41db: $00
    ld b, l                                       ; $41dc: $45

jr_0ac_41dd:
    add hl, hl                                    ; $41dd: $29
    add e                                         ; $41de: $83
    add e                                         ; $41df: $83
    ld de, $12e5                                  ; $41e0: $11 $e5 $12
    ld [c], a                                     ; $41e3: $e2
    nop                                           ; $41e4: $00
    ld [c], a                                     ; $41e5: $e2
    db $f4                                        ; $41e6: $f4
    add sp, -$0a                                  ; $41e7: $e8 $f6
    dec l                                         ; $41e9: $2d
    pop hl                                        ; $41ea: $e1
    ld d, h                                       ; $41eb: $54
    ret nz                                        ; $41ec: $c0

    nop                                           ; $41ed: $00
    add c                                         ; $41ee: $81
    rla                                           ; $41ef: $17
    ld a, [hl+]                                   ; $41f0: $2a
    ld a, $07                                     ; $41f1: $3e $07
    ret z                                         ; $41f3: $c8

    add a                                         ; $41f4: $87
    add sp, $00                                   ; $41f5: $e8 $00
    rst $00                                       ; $41f7: $c7
    rla                                           ; $41f8: $17
    rlca                                          ; $41f9: $07
    scf                                           ; $41fa: $37
    rlca                                          ; $41fb: $07
    ld [hl], a                                    ; $41fc: $77
    rlca                                          ; $41fd: $07
    ldh a, [rP1]                                  ; $41fe: $f0 $00
    ld hl, sp-$72                                 ; $4200: $f8 $8e
    ld hl, sp+$4e                                 ; $4202: $f8 $4e
    add a                                         ; $4204: $87
    scf                                           ; $4205: $37
    adc a                                         ; $4206: $8f
    cpl                                           ; $4207: $2f
    nop                                           ; $4208: $00
    and b                                         ; $4209: $a0
    cpl                                           ; $420a: $2f
    ld h, b                                       ; $420b: $60
    ld l, a                                       ; $420c: $6f
    ld b, b                                       ; $420d: $40
    rra                                           ; $420e: $1f
    ret nz                                        ; $420f: $c0

    sbc a                                         ; $4210: $9f
    nop                                           ; $4211: $00
    ret nz                                        ; $4212: $c0

    rra                                           ; $4213: $1f
    add b                                         ; $4214: $80
    ccf                                           ; $4215: $3f
    ld bc, $01fc                                  ; $4216: $01 $fc $01
    db $fc                                        ; $4219: $fc
    inc c                                         ; $421a: $0c
    nop                                           ; $421b: $00
    cp $fe                                        ; $421c: $fe $fe
    nop                                           ; $421e: $00
    ld [bc], a                                    ; $421f: $02
    ld [$0046], sp                                ; $4220: $08 $46 $00
    nop                                           ; $4223: $00

jr_0ac_4224:
    ld a, e                                       ; $4224: $7b
    nop                                           ; $4225: $00
    ld h, e                                       ; $4226: $63
    and b                                         ; $4227: $a0
    ccf                                           ; $4228: $3f
    cp c                                          ; $4229: $b9
    ccf                                           ; $422a: $3f
    add hl, de                                    ; $422b: $19
    adc c                                         ; $422c: $89
    inc e                                         ; $422d: $1c
    nop                                           ; $422e: $00
    sub h                                         ; $422f: $94
    ld e, $d2                                     ; $4230: $1e $d2
    rrca                                          ; $4232: $0f
    ld c, e                                       ; $4233: $4b
    rra                                           ; $4234: $1f
    ld d, c                                       ; $4235: $51
    dec b                                         ; $4236: $05
    nop                                           ; $4237: $00
    pop bc                                        ; $4238: $c1
    rrca                                          ; $4239: $0f
    add hl, bc                                    ; $423a: $09

jr_0ac_423b:
    adc a                                         ; $423b: $8f
    add sp, -$54                                  ; $423c: $e8 $ac
    ld c, e                                       ; $423e: $4b
    inc l                                         ; $423f: $2c
    nop                                           ; $4240: $00
    db $eb                                        ; $4241: $eb
    or d                                          ; $4242: $b2
    pop bc                                        ; $4243: $c1
    inc [hl]                                      ; $4244: $34
    inc b                                         ; $4245: $04
    rrca                                          ; $4246: $0f
    inc [hl]                                      ; $4247: $34
    db $fc                                        ; $4248: $fc
    nop                                           ; $4249: $00
    ld a, d                                       ; $424a: $7a
    db $10                                        ; $424b: $10

jr_0ac_424c:
    add hl, hl                                    ; $424c: $29
    ld bc, $ff82                                  ; $424d: $01 $82 $ff
    rst $38                                       ; $4250: $ff
    ld bc, $fe00                                  ; $4251: $01 $00 $fe
    add b                                         ; $4254: $80
    cp $00                                        ; $4255: $fe $00
    ld hl, sp-$1d                                 ; $4257: $f8 $e3
    inc bc                                        ; $4259: $03
    add hl, bc                                    ; $425a: $09
    nop                                           ; $425b: $00
    cp h                                          ; $425c: $bc
    inc bc                                        ; $425d: $03
    add b                                         ; $425e: $80
    sbc h                                         ; $425f: $9c
    adc c                                         ; $4260: $89
    adc h                                         ; $4261: $8c
    add l                                         ; $4262: $85
    db $dd                                        ; $4263: $dd
    nop                                           ; $4264: $00
    ld b, l                                       ; $4265: $45
    ld sp, $3809                                  ; $4266: $31 $09 $38
    add hl, sp                                    ; $4269: $39
    jr c, jr_0ac_424c                             ; $426a: $38 $e0

    ld c, $00                                     ; $426c: $0e $00
    cp $0d                                        ; $426e: $fe $0d
    db $fc                                        ; $4270: $fc
    dec c                                         ; $4271: $0d
    db $ec                                        ; $4272: $ec
    dec b                                         ; $4273: $05
    call c, RST_18                                ; $4274: $dc $18 $00
    ld bc, $8bb8                                  ; $4277: $01 $b8 $8b
    ld [hl], b                                    ; $427a: $70
    ld h, d                                       ; $427b: $62
    ld h, b                                       ; $427c: $60
    ld b, d                                       ; $427d: $42
    add b                                         ; $427e: $80
    ld b, $3f                                     ; $427f: $06 $3f
    add b                                         ; $4281: $80
    ccf                                           ; $4282: $3f
    ld a, a                                       ; $4283: $7f
    nop                                           ; $4284: $00
    ld [bc], a                                    ; $4285: $02
    jr jr_0ac_4224                                ; $4286: $18 $9c

    adc d                                         ; $4288: $8a
    rrca                                          ; $4289: $0f
    nop                                           ; $428a: $00
    ld l, c                                       ; $428b: $69
    rrca                                          ; $428c: $0f
    add hl, hl                                    ; $428d: $29
    rrca                                          ; $428e: $0f
    add hl, hl                                    ; $428f: $29
    ld [hl-], a                                   ; $4290: $32
    dec [hl]                                      ; $4291: $35
    stop                                          ; $4292: $10 $00
    db $10                                        ; $4294: $10
    rra                                           ; $4295: $1f
    ret nz                                        ; $4296: $c0

    nop                                           ; $4297: $00
    ret nz                                        ; $4298: $c0

    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    rlca                                          ; $429b: $07
    ld bc, $070f                                  ; $429c: $01 $0f $07
    inc bc                                        ; $429f: $03
    inc bc                                        ; $42a0: $03
    and b                                         ; $42a1: $a0
    jr nc, jr_0ac_423b                            ; $42a2: $30 $97

    and a                                         ; $42a4: $a7
    ld [bc], a                                    ; $42a5: $02
    add b                                         ; $42a6: $80
    rl d                                          ; $42a7: $cb $12
    ldh [$ef], a                                  ; $42a9: $e0 $ef
    ret nz                                        ; $42ab: $c0

    inc c                                         ; $42ac: $0c
    ret nz                                        ; $42ad: $c0

    db $10                                        ; $42ae: $10
    ret nz                                        ; $42af: $c0

    ld b, b                                       ; $42b0: $40
    rst $08                                       ; $42b1: $cf
    db $10                                        ; $42b2: $10
    jr @+$01                                      ; $42b3: $18 $ff

    nop                                           ; $42b5: $00
    db $d3                                        ; $42b6: $d3
    ld sp, $3131                                  ; $42b7: $31 $31 $31
    jr @+$0a                                      ; $42ba: $18 $08

    ld sp, $9818                                  ; $42bc: $31 $18 $98
    ld [bc], a                                    ; $42bf: $02
    db $10                                        ; $42c0: $10
    jr @-$1e                                      ; $42c1: $18 $e0

    add $c0                                       ; $42c3: $c6 $c0
    ld b, b                                       ; $42c5: $40
    add h                                         ; $42c6: $84
    ld [bc], a                                    ; $42c7: $02
    nop                                           ; $42c8: $00
    adc h                                         ; $42c9: $8c
    ld [$f803], sp                                ; $42ca: $08 $03 $f8
    inc bc                                        ; $42cd: $03
    inc bc                                        ; $42ce: $03
    ret nz                                        ; $42cf: $c0

    inc [hl]                                      ; $42d0: $34
    jr nz, jr_0ac_42d7                            ; $42d1: $20 $04

    ld c, e                                       ; $42d3: $4b
    db $10                                        ; $42d4: $10
    inc bc                                        ; $42d5: $03
    halt                                          ; $42d6: $76

jr_0ac_42d7:
    ld [bc], a                                    ; $42d7: $02
    ld b, c                                       ; $42d8: $41
    nop                                           ; $42d9: $00
    ld bc, $3f38                                  ; $42da: $01 $38 $3f
    rra                                           ; $42dd: $1f
    daa                                           ; $42de: $27
    rra                                           ; $42df: $1f
    db $d3                                        ; $42e0: $d3
    db $10                                        ; $42e1: $10
    jr z, jr_0ac_42e5                             ; $42e2: $28 $01

    ld a, a                                       ; $42e4: $7f

jr_0ac_42e5:
    nop                                           ; $42e5: $00
    ld [bc], a                                    ; $42e6: $02
    ld a, $ff                                     ; $42e7: $3e $ff
    nop                                           ; $42e9: $00
    ld b, b                                       ; $42ea: $40
    rra                                           ; $42eb: $1f
    jr z, jr_0ac_42ee                             ; $42ec: $28 $00

jr_0ac_42ee:
    cp $81                                        ; $42ee: $fe $81
    cp h                                          ; $42f0: $bc
    nop                                           ; $42f1: $00
    inc bc                                        ; $42f2: $03
    ld hl, sp+$08                                 ; $42f3: $f8 $08
    ld c, $00                                     ; $42f5: $0e $00
    rra                                           ; $42f7: $1f
    ld [c], a                                     ; $42f8: $e2

jr_0ac_42f9:
    pop hl                                        ; $42f9: $e1
    rst $00                                       ; $42fa: $c7
    ret nz                                        ; $42fb: $c0

    and b                                         ; $42fc: $a0
    adc a                                         ; $42fd: $8f
    ld b, b                                       ; $42fe: $40
    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00
    ld e, b                                       ; $4301: $58
    ret nz                                        ; $4302: $c0

    inc a                                         ; $4303: $3c
    nop                                           ; $4304: $00
    ld a, l                                       ; $4305: $7d
    ld bc, $0018                                  ; $4306: $01 $18 $00
    pop hl                                        ; $4309: $e1
    ret c                                         ; $430a: $d8

Call_0ac_430b:
    jr c, jr_0ac_42f9                             ; $430b: $38 $ec

    inc e                                         ; $430d: $1c
    db $e4                                        ; $430e: $e4
    sbc h                                         ; $430f: $9c
    or $00                                        ; $4310: $f6 $00
    adc [hl]                                      ; $4312: $8e
    ld a, b                                       ; $4313: $78
    ld h, h                                       ; $4314: $64
    ld a, b                                       ; $4315: $78
    ld h, [hl]                                    ; $4316: $66
    inc a                                         ; $4317: $3c
    ld [hl+], a                                   ; $4318: $22
    inc a                                         ; $4319: $3c

jr_0ac_431a:
    ld b, b                                       ; $431a: $40
    inc hl                                        ; $431b: $23
    ld d, b                                       ; $431c: $50
    jr nc, jr_0ac_431a                            ; $431d: $30 $fb

    add h                                         ; $431f: $84
    ldh [$9d], a                                  ; $4320: $e0 $9d
    adc b                                         ; $4322: $88
    and c                                         ; $4323: $a1
    ld e, c                                       ; $4324: $59
    sbc [hl]                                      ; $4325: $9e
    ld h, b                                       ; $4326: $60
    jr z, @+$01                                   ; $4327: $28 $ff

    ld d, d                                       ; $4329: $52

jr_0ac_432a:
    nop                                           ; $432a: $00
    ld [bc], a                                    ; $432b: $02
    ld [$e000], sp                                ; $432c: $08 $00 $e0
    ld [hl], d                                    ; $432f: $72
    ld b, b                                       ; $4330: $40
    add b                                         ; $4331: $80
    ld e, b                                       ; $4332: $58
    nop                                           ; $4333: $00
    ld a, $7f                                     ; $4334: $3e $7f
    ld e, $01                                     ; $4336: $1e $01
    rst $00                                       ; $4338: $c7
    ret nz                                        ; $4339: $c0

    ld bc, $f100                                  ; $433a: $01 $00 $f1
    inc c                                         ; $433d: $0c
    ldh [$d8], a                                  ; $433e: $e0 $d8
    pop bc                                        ; $4340: $c1
    jr nc, @+$09                                  ; $4341: $30 $07

    ldh [rP1], a                                  ; $4343: $e0 $00
    rrca                                          ; $4345: $0f
    add c                                         ; $4346: $81
    ld h, c                                       ; $4347: $61
    ld [bc], a                                    ; $4348: $02
    cp $ff                                        ; $4349: $fe $ff
    nop                                           ; $434b: $00
    ld d, b                                       ; $434c: $50
    nop                                           ; $434d: $00
    rst $28                                       ; $434e: $ef
    ccf                                           ; $434f: $3f
    nop                                           ; $4350: $00
    adc [hl]                                      ; $4351: $8e
    rrca                                          ; $4352: $0f
    pop hl                                        ; $4353: $e1
    ld bc, $00fc                                  ; $4354: $01 $fc $00
    nop                                           ; $4357: $00
    add b                                         ; $4358: $80
    ld sp, hl                                     ; $4359: $f9
    ld h, b                                       ; $435a: $60
    inc e                                         ; $435b: $1c
    adc [hl]                                      ; $435c: $8e
    db $10                                        ; $435d: $10
    ldh [rP1], a                                  ; $435e: $e0 $00
    rst $28                                       ; $4360: $ef
    ld bc, $0cc0                                  ; $4361: $01 $c0 $0c
    adc h                                         ; $4364: $8c
    rra                                           ; $4365: $1f
    rla                                           ; $4366: $17
    dec a                                         ; $4367: $3d
    nop                                           ; $4368: $00
    inc sp                                        ; $4369: $33
    db $fc                                        ; $436a: $fc
    db $e3                                        ; $436b: $e3
    ld a, h                                       ; $436c: $7c
    ld b, e                                       ; $436d: $43
    rrca                                          ; $436e: $0f
    inc bc                                        ; $436f: $03
    inc bc                                        ; $4370: $03
    nop                                           ; $4371: $00
    add e                                         ; $4372: $83
    nop                                           ; $4373: $00
    ret nz                                        ; $4374: $c0

    ld h, $e0                                     ; $4375: $26 $e0
    inc bc                                        ; $4377: $03
    db $10                                        ; $4378: $10
    dec b                                         ; $4379: $05
    nop                                           ; $437a: $00
    inc c                                         ; $437b: $0c
    ld a, [bc]                                    ; $437c: $0a
    ld [hl-], a                                   ; $437d: $32
    cp h                                          ; $437e: $bc
    cp h                                          ; $437f: $bc
    jr jr_0ac_432a                                ; $4380: $18 $a8

    ld [hl], $00                                  ; $4382: $36 $00
    add a                                         ; $4384: $87
    sbc a                                         ; $4385: $9f
    and b                                         ; $4386: $a0
    nop                                           ; $4387: $00
    ld sp, $8404                                  ; $4388: $31 $04 $84
    ld b, a                                       ; $438b: $47
    ld b, d                                       ; $438c: $42
    add a                                         ; $438d: $87
    ld l, h                                       ; $438e: $6c
    jr z, @-$7e                                   ; $438f: $28 $80

    cp a                                          ; $4391: $bf
    add b                                         ; $4392: $80
    ccf                                           ; $4393: $3f
    ld [hl], d                                    ; $4394: $72
    ld [$0801], sp                                ; $4395: $08 $01 $08
    db $fc                                        ; $4398: $fc
    inc bc                                        ; $4399: $03
    ldh a, [$0e]                                  ; $439a: $f0 $0e
    ld e, h                                       ; $439c: $5c
    db $10                                        ; $439d: $10
    ld h, a                                       ; $439e: $67
    rrca                                          ; $439f: $0f
    ld l, a                                       ; $43a0: $6f
    ld bc, $8f0f                                  ; $43a1: $01 $0f $8f
    and b                                         ; $43a4: $a0
    add [hl]                                      ; $43a5: $86
    rra                                           ; $43a6: $1f
    ld a, a                                       ; $43a7: $7f
    ld h, h                                       ; $43a8: $64
    adc l                                         ; $43a9: $8d
    nop                                           ; $43aa: $00
    and b                                         ; $43ab: $a0
    sub b                                         ; $43ac: $90
    nop                                           ; $43ad: $00
    ld h, a                                       ; $43ae: $67
    sub h                                         ; $43af: $94
    nop                                           ; $43b0: $00
    ld [bc], a                                    ; $43b1: $02
    nop                                           ; $43b2: $00
    db $fc                                        ; $43b3: $fc
    nop                                           ; $43b4: $00
    ld hl, sp+$00                                 ; $43b5: $f8 $00
    inc bc                                        ; $43b7: $03
    ld a, [$f802]                                 ; $43b8: $fa $02 $f8
    ld [bc], a                                    ; $43bb: $02
    db $fd                                        ; $43bc: $fd
    ld bc, $00fc                                  ; $43bd: $01 $fc $00
    adc l                                         ; $43c0: $8d
    ld hl, sp-$08                                 ; $43c1: $f8 $f8
    di                                            ; $43c3: $f3
    inc bc                                        ; $43c4: $03
    inc d                                         ; $43c5: $14
    daa                                           ; $43c6: $27
    jr jr_0ac_43c9                                ; $43c7: $18 $00

jr_0ac_43c9:
    ld l, a                                       ; $43c9: $6f
    inc sp                                        ; $43ca: $33
    add hl, hl                                    ; $43cb: $29
    ld a, [hl]                                    ; $43cc: $7e
    ld h, d                                       ; $43cd: $62
    inc b                                         ; $43ce: $04
    dec c                                         ; $43cf: $0d
    ret nz                                        ; $43d0: $c0

    nop                                           ; $43d1: $00
    ld bc, $1821                                  ; $43d2: $01 $21 $18
    ret nz                                        ; $43d5: $c0

    adc $62                                       ; $43d6: $ce $62
    ld b, $11                                     ; $43d8: $06 $11
    nop                                           ; $43da: $00
    inc bc                                        ; $43db: $03
    and c                                         ; $43dc: $a1
    xor b                                         ; $43dd: $a8
    sub b                                         ; $43de: $90
    or h                                          ; $43df: $b4
    add [hl]                                      ; $43e0: $86
    ld d, $ec                                     ; $43e1: $16 $ec
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    ld hl, sp-$7e                                 ; $43e5: $f8 $82
    inc l                                         ; $43e7: $2c
    inc h                                         ; $43e8: $24
    ld c, c                                       ; $43e9: $49
    pop hl                                        ; $43ea: $e1

jr_0ac_43eb:
    ld c, [hl]                                    ; $43eb: $4e
    nop                                           ; $43ec: $00
    ld h, b                                       ; $43ed: $60
    rrca                                          ; $43ee: $0f
    ld h, b                                       ; $43ef: $60
    sbc a                                         ; $43f0: $9f
    add b                                         ; $43f1: $80
    ld b, b                                       ; $43f2: $40
    rra                                           ; $43f3: $1f
    ld [hl], b                                    ; $43f4: $70
    nop                                           ; $43f5: $00
    rra                                           ; $43f6: $1f
    jr nc, jr_0ac_4420                            ; $43f7: $30 $27

    jr nc, jr_0ac_4432                            ; $43f9: $30 $37

    add b                                         ; $43fb: $80
    ccf                                           ; $43fc: $3f
    ret nz                                        ; $43fd: $c0

    nop                                           ; $43fe: $00
    rrca                                          ; $43ff: $0f
    ld [hl], a                                    ; $4400: $77
    rlca                                          ; $4401: $07
    dec de                                        ; $4402: $1b
    add e                                         ; $4403: $83
    ldh [$0c], a                                  ; $4404: $e0 $0c
    ldh a, [rP1]                                  ; $4406: $f0 $00
    ld b, $f0                                     ; $4408: $06 $f0
    ld b, $f1                                     ; $440a: $06 $f1
    dec b                                         ; $440c: $05
    adc a                                         ; $440d: $8f
    and b                                         ; $440e: $a0
    add a                                         ; $440f: $87
    nop                                           ; $4410: $00
    or b                                          ; $4411: $b0
    rst $00                                       ; $4412: $c7
    ret nc                                        ; $4413: $d0

    rst $00                                       ; $4414: $c7
    ret nc                                        ; $4415: $d0

    jp $e3d8                                      ; $4416: $c3 $d8 $e3


    ld d, b                                       ; $4419: $50
    add sp, $02                                   ; $441a: $e8 $02
    ld [$62ff], sp                                ; $441c: $08 $ff $62
    nop                                           ; $441f: $00

jr_0ac_4420:
    ld a, [$f503]                                 ; $4420: $fa $03 $f5
    rlca                                          ; $4423: $07
    nop                                           ; $4424: $00
    db $f4                                        ; $4425: $f4
    inc b                                         ; $4426: $04
    ldh a, [rDIV]                                 ; $4427: $f0 $04
    pop af                                        ; $4429: $f1
    dec b                                         ; $442a: $05
    ld a, [c]                                     ; $442b: $f2
    inc bc                                        ; $442c: $03
    nop                                           ; $442d: $00
    add sp, $0f                                   ; $442e: $e8 $0f
    rra                                           ; $4430: $1f
    inc e                                         ; $4431: $1c

jr_0ac_4432:
    ld c, a                                       ; $4432: $4f
    adc b                                         ; $4433: $88
    ld d, h                                       ; $4434: $54
    inc sp                                        ; $4435: $33
    nop                                           ; $4436: $00
    ld a, [de]                                    ; $4437: $1a
    add hl, bc                                    ; $4438: $09
    inc b                                         ; $4439: $04
    add hl, bc                                    ; $443a: $09
    db $e4                                        ; $443b: $e4

Call_0ac_443c:
    ld [c], a                                     ; $443c: $e2

jr_0ac_443d:
    ld [bc], a                                    ; $443d: $02
    ldh a, [rP1]                                  ; $443e: $f0 $00
    inc hl                                        ; $4440: $23
    push de                                       ; $4441: $d5
    jr jr_0ac_443d                                ; $4442: $18 $f9

    db $f4                                        ; $4444: $f4
    inc e                                         ; $4445: $1c
    ldh [rNR32], a                                ; $4446: $e0 $1c
    nop                                           ; $4448: $00
    ld a, [$e43c]                                 ; $4449: $fa $3c $e4
    ld h, l                                       ; $444c: $65
    db $e4                                        ; $444d: $e4
    ld bc, $2aee                                  ; $444e: $01 $ee $2a
    nop                                           ; $4451: $00
    inc bc                                        ; $4452: $03
    jp Jump_0ac_7a83                              ; $4453: $c3 $83 $7a


    jr jr_0ac_4484                                ; $4456: $18 $2c

    nop                                           ; $4458: $00
    jr nz, jr_0ac_445b                            ; $4459: $20 $00

jr_0ac_445b:
    ld [bc], a                                    ; $445b: $02
    jr nc, jr_0ac_43eb                            ; $445c: $30 $8d

    sbc b                                         ; $445e: $98
    add b                                         ; $445f: $80
    add b                                         ; $4460: $80
    ld b, b                                       ; $4461: $40
    stop                                          ; $4462: $10 $00
    sbc b                                         ; $4464: $98
    add e                                         ; $4465: $83
    call z, Call_000_06c1                         ; $4466: $cc $c1 $06
    ldh [$c3], a                                  ; $4469: $e0 $c3
    ldh a, [rP1]                                  ; $446b: $f0 $00
    ld a, b                                       ; $446d: $78
    ld b, c                                       ; $446e: $41
    inc a                                         ; $446f: $3c
    jr nc, jr_0ac_4481                            ; $4470: $30 $0f

    pop bc                                        ; $4472: $c1
    rlca                                          ; $4473: $07
    ld [hl], h                                    ; $4474: $74
    nop                                           ; $4475: $00
    pop af                                        ; $4476: $f1
    dec b                                         ; $4477: $05
    pop hl                                        ; $4478: $e1
    dec c                                         ; $4479: $0d
    db $e3                                        ; $447a: $e3
    dec bc                                        ; $447b: $0b
    ld h, e                                       ; $447c: $63
    dec bc                                        ; $447d: $0b
    nop                                           ; $447e: $00
    ret c                                         ; $447f: $d8

    ld b, e                                       ; $4480: $43

jr_0ac_4481:
    ldh a, [$27]                                  ; $4481: $f0 $27
    ld h, b                                       ; $4483: $60

jr_0ac_4484:
    sub b                                         ; $4484: $90
    or b                                          ; $4485: $b0
    adc b                                         ; $4486: $88
    nop                                           ; $4487: $00
    pop hl                                        ; $4488: $e1
    db $ec                                        ; $4489: $ec
    pop af                                        ; $448a: $f1
    db $f4                                        ; $448b: $f4
    pop af                                        ; $448c: $f1
    db $f4                                        ; $448d: $f4
    rlca                                          ; $448e: $07
    pop af                                        ; $448f: $f1
    nop                                           ; $4490: $00
    rlca                                          ; $4491: $07
    cp $0e                                        ; $4492: $fe $0e
    dec bc                                        ; $4494: $0b
    ld [de], a                                    ; $4495: $12
    rra                                           ; $4496: $1f
    dec bc                                        ; $4497: $0b
    inc d                                         ; $4498: $14
    nop                                           ; $4499: $00
    db $f4                                        ; $449a: $f4
    rlca                                          ; $449b: $07
    db $e3                                        ; $449c: $e3
    rlca                                          ; $449d: $07
    rst $10                                       ; $449e: $d7
    rla                                           ; $449f: $17
    add hl, hl                                    ; $44a0: $29
    inc sp                                        ; $44a1: $33
    nop                                           ; $44a2: $00
    ld sp, $a1b3                                  ; $44a3: $31 $b3 $a1
    or e                                          ; $44a6: $b3
    ld d, b                                       ; $44a7: $50
    ld [de], a                                    ; $44a8: $12
    ld c, $64                                     ; $44a9: $0e $64
    nop                                           ; $44ab: $00
    ld [de], a                                    ; $44ac: $12
    ldh a, [rNR13]                                ; $44ad: $f0 $13
    pop af                                        ; $44af: $f1
    dec hl                                        ; $44b0: $2b
    add sp, $5a                                   ; $44b1: $e8 $5a
    sbc c                                         ; $44b3: $99
    nop                                           ; $44b4: $00
    cp d                                          ; $44b5: $ba
    add hl, sp                                    ; $44b6: $39
    inc bc                                        ; $44b7: $03
    ld [de], a                                    ; $44b8: $12
    ld [bc], a                                    ; $44b9: $02
    ld b, $70                                     ; $44ba: $06 $70
    ld c, l                                       ; $44bc: $4d
    nop                                           ; $44bd: $00
    call nz, $c50a                                ; $44be: $c4 $0a $c5
    dec bc                                        ; $44c1: $0b
    add l                                         ; $44c2: $85
    ld c, c                                       ; $44c3: $49
    adc l                                         ; $44c4: $8d
    ld bc, $3b00                                  ; $44c5: $01 $00 $3b
    dec b                                         ; $44c8: $05
    ld a, d                                       ; $44c9: $7a
    inc b                                         ; $44ca: $04
    ld a, $f8                                     ; $44cb: $3e $f8
    ld a, [hl]                                    ; $44cd: $7e
    db $fc                                        ; $44ce: $fc
    nop                                           ; $44cf: $00
    ret c                                         ; $44d0: $d8

    jp nz, $c3d8                                  ; $44d1: $c2 $d8 $c3

    add e                                         ; $44d4: $83
    sbc b                                         ; $44d5: $98
    add a                                         ; $44d6: $87
    sub b                                         ; $44d7: $90
    nop                                           ; $44d8: $00
    daa                                           ; $44d9: $27
    jr nc, @+$11                                  ; $44da: $30 $0f

    jr nz, jr_0ac_450d                            ; $44dc: $20 $2f

    ld h, b                                       ; $44de: $60
    cpl                                           ; $44df: $2f
    ld h, b                                       ; $44e0: $60
    inc c                                         ; $44e1: $0c
    jr c, jr_0ac_44e5                             ; $44e2: $38 $01

    db $fc                                        ; $44e4: $fc

jr_0ac_44e5:
    db $fc                                        ; $44e5: $fc
    xor [hl]                                      ; $44e6: $ae
    add hl, bc                                    ; $44e7: $09
    push af                                       ; $44e8: $f5
    ld de, $7e00                                  ; $44e9: $11 $00 $7e
    nop                                           ; $44ec: $00
    cp $e4                                        ; $44ed: $fe $e4
    inc a                                         ; $44ef: $3c
    ld a, [$0296]                                 ; $44f0: $fa $96 $02
    inc b                                         ; $44f3: $04
    ld h, b                                       ; $44f4: $60
    nop                                           ; $44f5: $00
    ld l, b                                       ; $44f6: $68
    ld b, b                                       ; $44f7: $40

jr_0ac_44f8:
    rra                                           ; $44f8: $1f
    ld b, b                                       ; $44f9: $40
    rra                                           ; $44fa: $1f
    ret nz                                        ; $44fb: $c0

    rra                                           ; $44fc: $1f
    add b                                         ; $44fd: $80
    nop                                           ; $44fe: $00
    ccf                                           ; $44ff: $3f
    inc c                                         ; $4500: $0c
    rla                                           ; $4501: $17
    inc c                                         ; $4502: $0c
    inc de                                        ; $4503: $13
    add hl, bc                                    ; $4504: $09
    rla                                           ; $4505: $17
    inc de                                        ; $4506: $13
    nop                                           ; $4507: $00
    inc b                                         ; $4508: $04
    jr jr_0ac_452a                                ; $4509: $18 $1f

    jr jr_0ac_4534                                ; $450b: $18 $27

jr_0ac_450d:
    jr jr_0ac_4543                                ; $450d: $18 $34

    db $eb                                        ; $450f: $eb
    nop                                           ; $4510: $00
    di                                            ; $4511: $f3
    sub a                                         ; $4512: $97
    rrca                                          ; $4513: $0f
    sbc b                                         ; $4514: $98
    inc c                                         ; $4515: $0c
    ld l, [hl]                                    ; $4516: $6e

jr_0ac_4517:
    ld d, h                                       ; $4517: $54
    rst $38                                       ; $4518: $ff
    nop                                           ; $4519: $00
    inc de                                        ; $451a: $13
    ld [hl], e                                    ; $451b: $73
    jp c, $f685                                   ; $451c: $da $85 $f6

    daa                                           ; $451f: $27
    ld bc, $00f5                                  ; $4520: $01 $f5 $00
    di                                            ; $4523: $f3
    or d                                          ; $4524: $b2
    and c                                         ; $4525: $a1
    call z, $b88b                                 ; $4526: $cc $8b $b8
    add a                                         ; $4529: $87

jr_0ac_452a:
    add a                                         ; $452a: $87

jr_0ac_452b:
    nop                                           ; $452b: $00
    rra                                           ; $452c: $1f
    add a                                         ; $452d: $87

Jump_0ac_452e:
    rra                                           ; $452e: $1f
    ret nz                                        ; $452f: $c0

    add a                                         ; $4530: $87
    add b                                         ; $4531: $80
    ld b, b                                       ; $4532: $40

jr_0ac_4533:
    ret nz                                        ; $4533: $c0

jr_0ac_4534:
    nop                                           ; $4534: $00
    ret nz                                        ; $4535: $c0

    ei                                            ; $4536: $fb
    db $fc                                        ; $4537: $fc
    pop af                                        ; $4538: $f1
    db $fc                                        ; $4539: $fc
    ld bc, $0fc1                                  ; $453a: $01 $c1 $0f
    nop                                           ; $453d: $00
    adc c                                         ; $453e: $89
    add c                                         ; $453f: $81
    add e                                         ; $4540: $83
    ld a, l                                       ; $4541: $7d
    nop                                           ; $4542: $00

jr_0ac_4543:
    ccf                                           ; $4543: $3f
    ld a, [c]                                     ; $4544: $f2
    rra                                           ; $4545: $1f
    nop                                           ; $4546: $00
    inc c                                         ; $4547: $0c
    cpl                                           ; $4548: $2f
    ld h, b                                       ; $4549: $60
    xor a                                         ; $454a: $af
    and b                                         ; $454b: $a0
    rrca                                          ; $454c: $0f
    ret nz                                        ; $454d: $c0

    add a                                         ; $454e: $87
    nop                                           ; $454f: $00
    ldh [$f8], a                                  ; $4550: $e0 $f8
    add b                                         ; $4552: $80
    ldh [$9f], a                                  ; $4553: $e0 $9f
    jr nz, jr_0ac_4517                            ; $4555: $20 $c0

    ld h, c                                       ; $4557: $61
    nop                                           ; $4558: $00
    and b                                         ; $4559: $a0
    cp [hl]                                       ; $455a: $be
    nop                                           ; $455b: $00
    sbc h                                         ; $455c: $9c
    sbc l                                         ; $455d: $9d
    adc l                                         ; $455e: $8d
    ld hl, $000d                                  ; $455f: $21 $0d $00
    ld h, c                                       ; $4562: $61
    call c, $d8c1                                 ; $4563: $dc $c1 $d8
    jp $82b8                                      ; $4566: $c3 $b8 $82


    cp b                                          ; $4569: $b8
    dec e                                         ; $456a: $1d
    add d                                         ; $456b: $82
    add b                                         ; $456c: $80
    ccf                                           ; $456d: $3f
    cp b                                          ; $456e: $b8
    add hl, de                                    ; $456f: $19
    inc l                                         ; $4570: $2c
    ld [de], a                                    ; $4571: $12
    sbc l                                         ; $4572: $9d
    ld [bc], a                                    ; $4573: $02
    rst $30                                       ; $4574: $f7
    adc e                                         ; $4575: $8b
    jr jr_0ac_44f8                                ; $4576: $18 $80

    and a                                         ; $4578: $a7
    ld [hl-], a                                   ; $4579: $32
    dec b                                         ; $457a: $05
    ld h, a                                       ; $457b: $67
    and b                                         ; $457c: $a0
    adc b                                         ; $457d: $88
    and b                                         ; $457e: $a0
    add h                                         ; $457f: $84
    add h                                         ; $4580: $84
    nop                                           ; $4581: $00
    or b                                          ; $4582: $b0
    ret nz                                        ; $4583: $c0

    ret nc                                        ; $4584: $d0

    rra                                           ; $4585: $1f
    ret nz                                        ; $4586: $c0

    nop                                           ; $4587: $00
    ret nz                                        ; $4588: $c0

    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    nop                                           ; $458b: $00
    inc a                                         ; $458c: $3c
    inc bc                                        ; $458d: $03
    rrca                                          ; $458e: $0f
    scf                                           ; $458f: $37
    rrca                                          ; $4590: $0f
    scf                                           ; $4591: $37
    ldh a, [rLCDC]                                ; $4592: $f0 $40
    adc a                                         ; $4594: $8f
    or h                                          ; $4595: $b4
    jr z, @-$32                                   ; $4596: $28 $cc

    rrca                                          ; $4598: $0f
    ldh [rP1], a                                  ; $4599: $e0 $00
    ld b, $f4                                     ; $459b: $06 $f4
    jr nz, jr_0ac_45a5                            ; $459d: $20 $06

    ldh a, [$c4]                                  ; $459f: $f0 $c4
    jr @+$01                                      ; $45a1: $18 $ff

    nop                                           ; $45a3: $00
    cp l                                          ; $45a4: $bd

jr_0ac_45a5:
    jp nz, Jump_000_3646                          ; $45a5: $c2 $46 $36

    jr c, jr_0ac_452b                             ; $45a8: $38 $81

    inc c                                         ; $45aa: $0c
    jr nz, jr_0ac_4533                            ; $45ab: $20 $86

    ld a, [bc]                                    ; $45ad: $0a
    ld [hl], b                                    ; $45ae: $70
    and h                                         ; $45af: $a4
    ld bc, $0944                                  ; $45b0: $01 $44 $09
    ld [$030c], sp                                ; $45b3: $08 $0c $03
    ld hl, sp+$03                                 ; $45b6: $f8 $03
    inc bc                                        ; $45b8: $03
    add sp, $20                                   ; $45b9: $e8 $20
    sub d                                         ; $45bb: $92
    ld c, d                                       ; $45bc: $4a
    db $10                                        ; $45bd: $10
    inc bc                                        ; $45be: $03
    ld a, a                                       ; $45bf: $7f
    ld [bc], a                                    ; $45c0: $02
    ld b, d                                       ; $45c1: $42
    nop                                           ; $45c2: $00
    ld bc, $4040                                  ; $45c3: $01 $40 $40
    nop                                           ; $45c6: $00
    ld b, b                                       ; $45c7: $40
    ldh [rNR10], a                                ; $45c8: $e0 $10
    jr @+$01                                      ; $45ca: $18 $ff

    jr nz, jr_0ac_45ce                            ; $45cc: $20 $00

jr_0ac_45ce:
    cp $02                                        ; $45ce: $fe $02
    stop                                          ; $45d0: $10 $00
    cp $cc                                        ; $45d2: $fe $cc

jr_0ac_45d4:
    jp nc, $002f                                  ; $45d4: $d2 $2f $00

    ld sp, $4000                                  ; $45d7: $31 $00 $40
    ld a, $26                                     ; $45da: $3e $26
    sbc h                                         ; $45dc: $9c
    db $e3                                        ; $45dd: $e3
    ret nz                                        ; $45de: $c0

    nop                                           ; $45df: $00
    ld b, c                                       ; $45e0: $41

jr_0ac_45e1:
    ld e, $9e                                     ; $45e1: $1e $9e
    ld b, e                                       ; $45e3: $43
    ld a, h                                       ; $45e4: $7c
    nop                                           ; $45e5: $00
    daa                                           ; $45e6: $27
    ret nz                                        ; $45e7: $c0

    nop                                           ; $45e8: $00
    add e                                         ; $45e9: $83
    ret nc                                        ; $45ea: $d0

    and b                                         ; $45eb: $a0
    db $10                                        ; $45ec: $10
    ld [$4cc8], sp                                ; $45ed: $08 $c8 $4c
    sub b                                         ; $45f0: $90
    inc b                                         ; $45f1: $04
    ld [hl], d                                    ; $45f2: $72
    add hl, de                                    ; $45f3: $19
    add hl, sp                                    ; $45f4: $39
    adc h                                         ; $45f5: $8c
    ld b, l                                       ; $45f6: $45
    ld l, $18                                     ; $45f7: $2e $18
    ccf                                           ; $45f9: $3f
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    call c, Call_000_001c                         ; $45fc: $dc $1c $00
    ld h, e                                       ; $45ff: $63
    sub a                                         ; $4600: $97
    rrca                                          ; $4601: $0f
    cp b                                          ; $4602: $b8
    ccf                                           ; $4603: $3f
    add b                                         ; $4604: $80
    ld d, b                                       ; $4605: $50
    jr z, @+$01                                   ; $4606: $28 $ff

    nop                                           ; $4608: $00
    ld a, a                                       ; $4609: $7f
    nop                                           ; $460a: $00

jr_0ac_460b:
    add b                                         ; $460b: $80
    sbc a                                         ; $460c: $9f
    ldh [$60], a                                  ; $460d: $e0 $60
    ld c, a                                       ; $460f: $4f
    ld h, b                                       ; $4610: $60
    ld c, b                                       ; $4611: $48
    ld l, h                                       ; $4612: $6c
    ld [$a0c0], sp                                ; $4613: $08 $c0 $a0
    ret nz                                        ; $4616: $c0

    ldh [$60], a                                  ; $4617: $e0 $60
    nop                                           ; $4619: $00
    or b                                          ; $461a: $b0
    ret nz                                        ; $461b: $c0

    ldh [$c0], a                                  ; $461c: $e0 $c0
    jr nc, jr_0ac_4680                            ; $461e: $30 $60

    cp b                                          ; $4620: $b8
    jr nc, jr_0ac_4623                            ; $4621: $30 $00

jr_0ac_4623:
    ld a, b                                       ; $4623: $78
    jr nz, jr_0ac_45d4                            ; $4624: $20 $ae

    ld bc, $01fc                                  ; $4626: $01 $fc $01
    db $fd                                        ; $4629: $fd
    inc bc                                        ; $462a: $03
    nop                                           ; $462b: $00
    ld sp, hl                                     ; $462c: $f9
    inc bc                                        ; $462d: $03
    ldh a, [rTAC]                                 ; $462e: $f0 $07
    db $e4                                        ; $4630: $e4
    push bc                                       ; $4631: $c5
    jp nz, Jump_000_0004                          ; $4632: $c2 $04 $00

    rla                                           ; $4635: $17
    rlca                                          ; $4636: $07
    inc [hl]                                      ; $4637: $34
    ret nz                                        ; $4638: $c0

    nop                                           ; $4639: $00
    adc d                                         ; $463a: $8a
    ld a, [bc]                                    ; $463b: $0a
    jr nz, jr_0ac_463e                            ; $463c: $20 $00

jr_0ac_463e:
    ccf                                           ; $463e: $3f
    inc b                                         ; $463f: $04
    ccf                                           ; $4640: $3f

jr_0ac_4641:
    ld c, $84                                     ; $4641: $0e $84
    or h                                          ; $4643: $b4
    or l                                          ; $4644: $b5
    daa                                           ; $4645: $27
    nop                                           ; $4646: $00
    add [hl]                                      ; $4647: $86
    jp nz, Jump_0ac_62c4                          ; $4648: $c2 $c4 $62

    inc [hl]                                      ; $464b: $34
    jr jr_0ac_45e1                                ; $464c: $18 $93

    ld c, h                                       ; $464e: $4c
    nop                                           ; $464f: $00
    ret nz                                        ; $4650: $c0

    add $e0                                       ; $4651: $c6 $e0
    ld [hl+], a                                   ; $4653: $22
    inc de                                        ; $4654: $13
    pop de                                        ; $4655: $d1
    push bc                                       ; $4656: $c5
    ld a, [bc]                                    ; $4657: $0a
    inc b                                         ; $4658: $04
    ld h, c                                       ; $4659: $61
    add hl, hl                                    ; $465a: $29
    dec bc                                        ; $465b: $0b
    adc a                                         ; $465c: $8f
    or b                                          ; $465d: $b0
    and [hl]                                      ; $465e: $a6
    nop                                           ; $465f: $00
    ld b, b                                       ; $4660: $40
    jr nz, jr_0ac_4663                            ; $4661: $20 $00

jr_0ac_4663:
    rra                                           ; $4663: $1f
    rra                                           ; $4664: $1f
    ld h, b                                       ; $4665: $60
    ld a, a                                       ; $4666: $7f

jr_0ac_4667:
    sbc a                                         ; $4667: $9f
    ld a, a                                       ; $4668: $7f
    add b                                         ; $4669: $80
    ldh [rP1], a                                  ; $466a: $e0 $00
    ld h, b                                       ; $466c: $60
    ldh a, [rNR22]                                ; $466d: $f0 $17
    nop                                           ; $466f: $00
    ei                                            ; $4670: $fb
    ld bc, $f878                                  ; $4671: $01 $78 $f8
    nop                                           ; $4674: $00
    db $fc                                        ; $4675: $fc
    add b                                         ; $4676: $80
    ld [hl], b                                    ; $4677: $70
    db $fc                                        ; $4678: $fc
    ei                                            ; $4679: $fb
    pop hl                                        ; $467a: $e1
    ld e, $3e                                     ; $467b: $1e $3e
    ld b, b                                       ; $467d: $40
    add hl, sp                                    ; $467e: $39
    ld a, h                                       ; $467f: $7c

jr_0ac_4680:
    jr nc, jr_0ac_4641                            ; $4680: $30 $bf

    ret nz                                        ; $4682: $c0

    rra                                           ; $4683: $1f
    ret nz                                        ; $4684: $c0

    jr nz, jr_0ac_4667                            ; $4685: $20 $e0

    nop                                           ; $4687: $00
    ret nc                                        ; $4688: $d0

    jr nz, jr_0ac_460b                            ; $4689: $20 $80

    jr nc, @+$31                                  ; $468b: $30 $2f

    ld sp, $d72e                                  ; $468d: $31 $2e $d7
    nop                                           ; $4690: $00
    ret z                                         ; $4691: $c8

    jr jr_0ac_4698                                ; $4692: $18 $04

    ld c, b                                       ; $4694: $48
    ld d, l                                       ; $4695: $55
    ld h, c                                       ; $4696: $61
    ld h, b                                       ; $4697: $60

jr_0ac_4698:
    adc l                                         ; $4698: $8d
    nop                                           ; $4699: $00
    and b                                         ; $469a: $a0
    rlca                                          ; $469b: $07
    db $f4                                        ; $469c: $f4
    adc e                                         ; $469d: $8b
    pop af                                        ; $469e: $f1
    add e                                         ; $469f: $83
    nop                                           ; $46a0: $00

Jump_0ac_46a1:
    add e                                         ; $46a1: $83
    nop                                           ; $46a2: $00
    cp b                                          ; $46a3: $b8
    ld bc, $7d7c                                  ; $46a4: $01 $7c $7d
    ld bc, $801e                                  ; $46a7: $01 $1e $80
    rrca                                          ; $46aa: $0f
    nop                                           ; $46ab: $00
    ret nz                                        ; $46ac: $c0

    ld e, e                                       ; $46ad: $5b
    ldh [$89], a                                  ; $46ae: $e0 $89
    cpl                                           ; $46b0: $2f

jr_0ac_46b1:
    add b                                         ; $46b1: $80
    add hl, de                                    ; $46b2: $19
    add $00                                       ; $46b3: $c6 $00

jr_0ac_46b5:
    ret nc                                        ; $46b5: $d0

    ldh [$e6], a                                  ; $46b6: $e0 $e6
    adc c                                         ; $46b8: $89
    ldh [$c6], a                                  ; $46b9: $e0 $c6
    ldh a, [rTAC]                                 ; $46bb: $f0 $07
    nop                                           ; $46bd: $00
    ld a, a                                       ; $46be: $7f
    ret c                                         ; $46bf: $d8

    inc de                                        ; $46c0: $13
    ld a, b                                       ; $46c1: $78
    ld e, d                                       ; $46c2: $5a
    ldh a, [$e0]                                  ; $46c3: $f0 $e0
    ld [hl], b                                    ; $46c5: $70

jr_0ac_46c6:
    nop                                           ; $46c6: $00
    inc bc                                        ; $46c7: $03
    xor h                                         ; $46c8: $ac
    rrca                                          ; $46c9: $0f
    sub b                                         ; $46ca: $90
    rra                                           ; $46cb: $1f
    inc e                                         ; $46cc: $1c
    db $ec                                        ; $46cd: $ec
    or b                                          ; $46ce: $b0
    nop                                           ; $46cf: $00
    ld l, b                                       ; $46d0: $68
    cp a                                          ; $46d1: $bf
    ret nz                                        ; $46d2: $c0

    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
    ld a, $3e                                     ; $46d5: $3e $3e
    inc bc                                        ; $46d7: $03
    nop                                           ; $46d8: $00
    db $fc                                        ; $46d9: $fc
    rst $38                                       ; $46da: $ff
    nop                                           ; $46db: $00
    ld bc, $0783                                  ; $46dc: $01 $83 $07
    nop                                           ; $46df: $00
    ldh a, [rP1]                                  ; $46e0: $f0 $00
    ld hl, sp-$10                                 ; $46e2: $f8 $f0
    rst $08                                       ; $46e4: $cf
    ld c, $09                                     ; $46e5: $0e $09
    ld bc, $f8f2                                  ; $46e7: $01 $f2 $f8
    nop                                           ; $46ea: $00
    inc a                                         ; $46eb: $3c
    jr c, jr_0ac_46c6                             ; $46ec: $38 $d8

    ld b, $fa                                     ; $46ee: $06 $fa
    ld e, $ed                                     ; $46f0: $1e $ed
    rrca                                          ; $46f2: $0f
    nop                                           ; $46f3: $00
    halt                                          ; $46f4: $76
    dec de                                        ; $46f5: $1b
    db $eb                                        ; $46f6: $eb
    swap e                                        ; $46f7: $cb $33
    ldh [rNR23], a                                ; $46f9: $e0 $18
    ld [hl], b                                    ; $46fb: $70
    nop                                           ; $46fc: $00
    ld c, b                                       ; $46fd: $48
    jr c, jr_0ac_4720                             ; $46fe: $38 $20

    ret c                                         ; $4700: $d8

    jp nc, $e80a                                  ; $4701: $d2 $0a $e8

    add h                                         ; $4704: $84
    nop                                           ; $4705: $00
    pop af                                        ; $4706: $f1
    adc [hl]                                      ; $4707: $8e
    and b                                         ; $4708: $a0
    add a                                         ; $4709: $87
    or b                                          ; $470a: $b0
    rst $00                                       ; $470b: $c7
    ret nc                                        ; $470c: $d0

    rst $00                                       ; $470d: $c7
    nop                                           ; $470e: $00
    ret nc                                        ; $470f: $d0

    jp $e3d8                                      ; $4710: $c3 $d8 $e3


    add sp, -$1d                                  ; $4713: $e8 $e3
    add sp, -$18                                  ; $4715: $e8 $e8
    nop                                           ; $4717: $00
    db $e3                                        ; $4718: $e3
    xor a                                         ; $4719: $af
    ld h, b                                       ; $471a: $60
    rlca                                          ; $471b: $07
    jr nz, jr_0ac_46b5                            ; $471c: $20 $97

    jr nc, jr_0ac_46b1                            ; $471e: $30 $91

jr_0ac_4720:
    nop                                           ; $4720: $00
    or c                                          ; $4721: $b1
    cp c                                          ; $4722: $b9
    and l                                         ; $4723: $a5
    call nz, $f406                                ; $4724: $c4 $06 $f4
    ld b, $00                                     ; $4727: $06 $00
    nop                                           ; $4729: $00
    ld hl, sp+$0f                                 ; $472a: $f8 $0f
    ld a, d                                       ; $472c: $7a
    ld b, $0d                                     ; $472d: $06 $0d
    add [hl]                                      ; $472f: $86
    dec c                                         ; $4730: $0d
    adc [hl]                                      ; $4731: $8e
    nop                                           ; $4732: $00
    add hl, bc                                    ; $4733: $09
    ret nz                                        ; $4734: $c0

    rlca                                          ; $4735: $07
    call $cb0f                                    ; $4736: $cd $0f $cb
    rrca                                          ; $4739: $0f
    rlca                                          ; $473a: $07
    nop                                           ; $473b: $00
    db $e4                                        ; $473c: $e4
    db $e3                                        ; $473d: $e3
    inc bc                                        ; $473e: $03
    ret z                                         ; $473f: $c8

    rrca                                          ; $4740: $0f
    cp h                                          ; $4741: $bc
    dec sp                                        ; $4742: $3b
    or b                                          ; $4743: $b0
    nop                                           ; $4744: $00
    or b                                          ; $4745: $b0
    ld b, $00                                     ; $4746: $06 $00
    rra                                           ; $4748: $1f
    sbc $1f                                       ; $4749: $de $1f
    call z, Call_000_009f                         ; $474b: $cc $9f $00
    adc $fc                                       ; $474e: $ce $fc
    inc c                                         ; $4750: $0c
    inc e                                         ; $4751: $1c
    db $ec                                        ; $4752: $ec
    ret nz                                        ; $4753: $c0

    add b                                         ; $4754: $80
    ldh [rP1], a                                  ; $4755: $e0 $00
    ld b, e                                       ; $4757: $43
    inc bc                                        ; $4758: $03
    inc sp                                        ; $4759: $33
    add c                                         ; $475a: $81
    add hl, bc                                    ; $475b: $09
    ret nz                                        ; $475c: $c0

    add c                                         ; $475d: $81
    ret nz                                        ; $475e: $c0

    nop                                           ; $475f: $00
    add c                                         ; $4760: $81
    rst $20                                       ; $4761: $e7
    ld hl, sp+$3b                                 ; $4762: $f8 $3b
    inc a                                         ; $4764: $3c
    rrca                                          ; $4765: $0f
    inc c                                         ; $4766: $0c
    rlca                                          ; $4767: $07
    db $10                                        ; $4768: $10
    and $f8                                       ; $4769: $e6 $f8
    ld sp, hl                                     ; $476b: $f9
    adc [hl]                                      ; $476c: $8e
    add hl, bc                                    ; $476d: $09
    rlca                                          ; $476e: $07
    ld hl, sp-$40                                 ; $476f: $f8 $c0
    ld b, h                                       ; $4771: $44
    nop                                           ; $4772: $00
    ldh [$2c], a                                  ; $4773: $e0 $2c
    db $e3                                        ; $4775: $e3
    dec bc                                        ; $4776: $0b
    db $e3                                        ; $4777: $e3
    dec bc                                        ; $4778: $0b
    ret nz                                        ; $4779: $c0

    sbc b                                         ; $477a: $98
    nop                                           ; $477b: $00
    ret nz                                        ; $477c: $c0

    sub b                                         ; $477d: $90
    ld d, b                                       ; $477e: $50
    rst $00                                       ; $477f: $c7
    ld d, b                                       ; $4780: $50
    ld b, a                                       ; $4781: $47
    db $ec                                        ; $4782: $ec
    pop hl                                        ; $4783: $e1
    nop                                           ; $4784: $00
    db $f4                                        ; $4785: $f4
    pop af                                        ; $4786: $f1
    db $f4                                        ; $4787: $f4
    pop af                                        ; $4788: $f1
    ld b, $f0                                     ; $4789: $06 $f0
    ld [bc], a                                    ; $478b: $02
    ld hl, sp+$00                                 ; $478c: $f8 $00
    ld [bc], a                                    ; $478e: $02
    ld hl, sp+$03                                 ; $478f: $f8 $03
    ld hl, sp+$01                                 ; $4791: $f8 $01
    db $fc                                        ; $4793: $fc
    db $fd                                        ; $4794: $fd
    nop                                           ; $4795: $00
    ld b, b                                       ; $4796: $40
    ld b, h                                       ; $4797: $44
    db $d3                                        ; $4798: $d3
    ld hl, $00fc                                  ; $4799: $21 $fc $00
    ld [hl], d                                    ; $479c: $72
    inc bc                                        ; $479d: $03
    ld a, h                                       ; $479e: $7c
    ld bc, $0300                                  ; $479f: $01 $00 $03
    db $e3                                        ; $47a2: $e3
    db $ec                                        ; $47a3: $ec
    rrca                                          ; $47a4: $0f
    jp c, $bd1e                                   ; $47a5: $da $1e $bd

    inc a                                         ; $47a8: $3c
    nop                                           ; $47a9: $00
    ld a, d                                       ; $47aa: $7a
    ld a, c                                       ; $47ab: $79
    inc c                                         ; $47ac: $0c
    dec bc                                        ; $47ad: $0b
    add sp, $0f                                   ; $47ae: $e8 $0f
    add sp, $0f                                   ; $47b0: $e8 $0f
    nop                                           ; $47b2: $00
    rra                                           ; $47b3: $1f
    cp [hl]                                       ; $47b4: $be
    ld a, $7c                                     ; $47b5: $3e $7c
    add [hl]                                      ; $47b7: $86
    ld a, d                                       ; $47b8: $7a
    ld c, $f6                                     ; $47b9: $0e $f6
    nop                                           ; $47bb: $00
    ld a, [c]                                     ; $47bc: $f2
    ld a, [bc]                                    ; $47bd: $0a
    and $16                                       ; $47be: $e6 $16
    ld l, $ce                                     ; $47c0: $2e $ce
    ld e, a                                       ; $47c2: $5f
    sub c                                         ; $47c3: $91
    ld [bc], a                                    ; $47c4: $02
    add b                                         ; $47c5: $80
    ld b, b                                       ; $47c6: $40
    inc bc                                        ; $47c7: $03
    db $d3                                        ; $47c8: $d3
    ld b, a                                       ; $47c9: $47
    ret nz                                        ; $47ca: $c0

    or a                                          ; $47cb: $b7
    ld bc, $047f                                  ; $47cc: $01 $7f $04
    rst $38                                       ; $47cf: $ff
    nop                                           ; $47d0: $00
    ld c, [hl]                                    ; $47d1: $4e
    or c                                          ; $47d2: $b1
    ccf                                           ; $47d3: $3f
    ld a, [$0001]                                 ; $47d4: $fa $01 $00
    add c                                         ; $47d7: $81
    add b                                         ; $47d8: $80
    inc b                                         ; $47d9: $04
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    rst $18                                       ; $47dc: $df
    rst $38                                       ; $47dd: $ff
    cp a                                          ; $47de: $bf
    nop                                           ; $47df: $00
    ld a, $50                                     ; $47e0: $3e $50
    nop                                           ; $47e2: $00
    ld a, $40                                     ; $47e3: $3e $40
    jr nc, jr_0ac_47ee                            ; $47e5: $30 $07

    jr nz, jr_0ac_47f8                            ; $47e7: $20 $0f

    jr nz, @+$11                                  ; $47e9: $20 $0f

    nop                                           ; $47eb: $00
    ld h, b                                       ; $47ec: $60
    rrca                                          ; $47ed: $0f

jr_0ac_47ee:
    ld b, b                                       ; $47ee: $40
    rra                                           ; $47ef: $1f
    ld b, b                                       ; $47f0: $40
    rra                                           ; $47f1: $1f
    ret nz                                        ; $47f2: $c0

    rra                                           ; $47f3: $1f
    inc hl                                        ; $47f4: $23
    add b                                         ; $47f5: $80
    ccf                                           ; $47f6: $3f
    or b                                          ; $47f7: $b0

jr_0ac_47f8:
    ld bc, $00fc                                  ; $47f8: $01 $fc $00
    cp $1e                                        ; $47fb: $fe $1e
    ld a, [de]                                    ; $47fd: $1a
    jr z, jr_0ac_4808                             ; $47fe: $28 $08

    nop                                           ; $4800: $00
    ld [hl], d                                    ; $4801: $72
    ld [bc], a                                    ; $4802: $02
    add b                                         ; $4803: $80
    and b                                         ; $4804: $a0
    adc b                                         ; $4805: $88
    sub a                                         ; $4806: $97
    inc a                                         ; $4807: $3c

jr_0ac_4808:
    cp h                                          ; $4808: $bc
    nop                                           ; $4809: $00
    inc bc                                        ; $480a: $03
    add b                                         ; $480b: $80
    sbc $f1                                       ; $480c: $de $f1
    ld b, b                                       ; $480e: $40
    ld e, c                                       ; $480f: $59
    ld b, b                                       ; $4810: $40
    ld b, $00                                     ; $4811: $06 $00
    ldh [$af], a                                  ; $4813: $e0 $af
    ld [bc], a                                    ; $4815: $02
    inc e                                         ; $4816: $1c
    add h                                         ; $4817: $84
    cp b                                          ; $4818: $b8
    ld a, b                                       ; $4819: $78
    ld c, b                                       ; $481a: $48

jr_0ac_481b:
    nop                                           ; $481b: $00
    ret nz                                        ; $481c: $c0

    add e                                         ; $481d: $83
    sub c                                         ; $481e: $91
    add hl, bc                                    ; $481f: $09
    ret nz                                        ; $4820: $c0

    ld [hl-], a                                   ; $4821: $32
    or l                                          ; $4822: $b5
    ld c, c                                       ; $4823: $49
    nop                                           ; $4824: $00
    rra                                           ; $4825: $1f
    ccf                                           ; $4826: $3f
    inc c                                         ; $4827: $0c
    ld [hl], e                                    ; $4828: $73

jr_0ac_4829:
    ld hl, sp-$10                                 ; $4829: $f8 $f0
    nop                                           ; $482b: $00
    rst $38                                       ; $482c: $ff
    nop                                           ; $482d: $00
    db $fc                                        ; $482e: $fc
    inc b                                         ; $482f: $04
    ld b, $fa                                     ; $4830: $06 $fa
    db $fc                                        ; $4832: $fc
    jr jr_0ac_481b                                ; $4833: $18 $e6

    inc a                                         ; $4835: $3c
    nop                                           ; $4836: $00
    ret nz                                        ; $4837: $c0

    ld e, [hl]                                    ; $4838: $5e
    nop                                           ; $4839: $00
    ld a, $40                                     ; $483a: $3e $40
    cp [hl]                                       ; $483c: $be
    ld a, [hl]                                    ; $483d: $7e
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    ld a, [hl]                                    ; $4841: $7e
    ld a, [hl]                                    ; $4842: $7e
    nop                                           ; $4843: $00
    ld a, a                                       ; $4844: $7f
    add b                                         ; $4845: $80
    cp a                                          ; $4846: $bf
    add b                                         ; $4847: $80
    nop                                           ; $4848: $00
    cp [hl]                                       ; $4849: $be
    ld a, $bc                                     ; $484a: $3e $bc
    dec a                                         ; $484c: $3d
    add c                                         ; $484d: $81
    dec a                                         ; $484e: $3d
    add c                                         ; $484f: $81
    ld e, c                                       ; $4850: $59
    nop                                           ; $4851: $00
    ldh [rNR42], a                                ; $4852: $e0 $21
    ld hl, sp-$65                                 ; $4854: $f8 $9b
    ld a, [hl-]                                   ; $4856: $3a
    ld b, d                                       ; $4857: $42
    ld [bc], a                                    ; $4858: $02
    cp d                                          ; $4859: $ba
    rlca                                          ; $485a: $07
    add b                                         ; $485b: $80
    ccf                                           ; $485c: $3f
    add b                                         ; $485d: $80
    ccf                                           ; $485e: $3f
    ld a, a                                       ; $485f: $7f
    inc a                                         ; $4860: $3c
    ld [bc], a                                    ; $4861: $02
    inc b                                         ; $4862: $04
    ld [$8801], sp                                ; $4863: $08 $01 $88
    nop                                           ; $4866: $00
    ld h, c                                       ; $4867: $61
    rrca                                          ; $4868: $0f
    inc l                                         ; $4869: $2c
    adc a                                         ; $486a: $8f
    add hl, hl                                    ; $486b: $29
    adc a                                         ; $486c: $8f
    ld [hl], $86                                  ; $486d: $36 $86
    ld d, b                                       ; $486f: $50

Call_0ac_4870:
    db $10                                        ; $4870: $10
    rst $18                                       ; $4871: $df
    ld bc, $9c00                                  ; $4872: $01 $00 $9c
    ld bc, $0400                                  ; $4875: $01 $00 $04
    add a                                         ; $4878: $87
    or h                                          ; $4879: $b4
    inc c                                         ; $487a: $0c
    nop                                           ; $487b: $00
    ld a, b                                       ; $487c: $78
    db $fd                                        ; $487d: $fd
    inc bc                                        ; $487e: $03
    or h                                          ; $487f: $b4
    ld a, [bc]                                    ; $4880: $0a
    call z, $630a                                 ; $4881: $cc $0a $63
    ld a, $03                                     ; $4884: $3e $03
    ld b, c                                       ; $4886: $41
    ld a, a                                       ; $4887: $7f
    ccf                                           ; $4888: $3f
    sbc $1f                                       ; $4889: $de $1f
    ld l, $10                                     ; $488b: $2e $10
    jr jr_0ac_4829                                ; $488d: $18 $9a

    ld [bc], a                                    ; $488f: $02
    ld bc, $9f80                                  ; $4890: $01 $80 $9f
    ret nz                                        ; $4893: $c0

    ret nz                                        ; $4894: $c0

    ld c, a                                       ; $4895: $4f
    ldh [$2f], a                                  ; $4896: $e0 $2f
    db $10                                        ; $4898: $10
    jr z, jr_0ac_489b                             ; $4899: $28 $00

jr_0ac_489b:
    ld b, $c0                                     ; $489b: $06 $c0
    dec b                                         ; $489d: $05
    pop af                                        ; $489e: $f1
    dec b                                         ; $489f: $05
    pop af                                        ; $48a0: $f1
    dec c                                         ; $48a1: $0d
    pop hl                                        ; $48a2: $e1
    ld b, $08                                     ; $48a3: $06 $08
    inc bc                                        ; $48a5: $03
    ld hl, sp+$03                                 ; $48a6: $f8 $03
    inc bc                                        ; $48a8: $03
    inc [hl]                                      ; $48a9: $34
    jr nz, jr_0ac_48b0                            ; $48aa: $20 $04

    ld c, e                                       ; $48ac: $4b
    db $10                                        ; $48ad: $10
    inc bc                                        ; $48ae: $03
    sub a                                         ; $48af: $97

jr_0ac_48b0:
    ld [bc], a                                    ; $48b0: $02
    ld b, b                                       ; $48b1: $40
    nop                                           ; $48b2: $00
    ld bc, $0380                                  ; $48b3: $01 $80 $03
    nop                                           ; $48b6: $00
    inc bc                                        ; $48b7: $03
    dec b                                         ; $48b8: $05
    ld bc, $0207                                  ; $48b9: $01 $07 $02
    ld [bc], a                                    ; $48bc: $02

jr_0ac_48bd:
    ld bc, $0001                                  ; $48bd: $01 $01 $00
    inc bc                                        ; $48c0: $03
    inc bc                                        ; $48c1: $03
    jr nz, @+$0a                                  ; $48c2: $20 $08

jr_0ac_48c4:
    ldh [rP1], a                                  ; $48c4: $e0 $00
    nop                                           ; $48c6: $00
    ld h, a                                       ; $48c7: $67
    and a                                         ; $48c8: $a7
    ld [hl], l                                    ; $48c9: $75
    sub a                                         ; $48ca: $97
    jp nz, $e331                                  ; $48cb: $c2 $31 $e3

    nop                                           ; $48ce: $00
    sbc e                                         ; $48cf: $9b
    ld [hl], b                                    ; $48d0: $70
    dec c                                         ; $48d1: $0d
    inc a                                         ; $48d2: $3c
    inc a                                         ; $48d3: $3c
    ld h, d                                       ; $48d4: $62
    ld a, h                                       ; $48d5: $7c
    ld bc, $fe00                                  ; $48d6: $01 $00 $fe
    rst $20                                       ; $48d9: $e7
    pop bc                                        ; $48da: $c1
    ld e, e                                       ; $48db: $5b
    sbc b                                         ; $48dc: $98
    inc a                                         ; $48dd: $3c
    db $fc                                        ; $48de: $fc
    add b                                         ; $48df: $80
    stop                                          ; $48e0: $10 $00
    ld h, b                                       ; $48e2: $60
    ret nz                                        ; $48e3: $c0

    ld b, b                                       ; $48e4: $40
    jr @+$42                                      ; $48e5: $18 $40

    add b                                         ; $48e7: $80
    ret nz                                        ; $48e8: $c0

    jr nz, jr_0ac_48ee                            ; $48e9: $20 $03

    jr nc, jr_0ac_48bd                            ; $48eb: $30 $d0

    ld a, h                                       ; $48ed: $7c

jr_0ac_48ee:
    nop                                           ; $48ee: $00
    adc h                                         ; $48ef: $8c
    or d                                          ; $48f0: $b2
    ld d, b                                       ; $48f1: $50
    adc b                                         ; $48f2: $88
    inc d                                         ; $48f3: $14
    xor b                                         ; $48f4: $a8
    add b                                         ; $48f5: $80
    ld h, b                                       ; $48f6: $60
    ld [$0201], sp                                ; $48f7: $08 $01 $02
    rlca                                          ; $48fa: $07
    inc b                                         ; $48fb: $04
    inc b                                         ; $48fc: $04
    rlca                                          ; $48fd: $07
    rlca                                          ; $48fe: $07
    nop                                           ; $48ff: $00
    inc e                                         ; $4900: $1c
    rlca                                          ; $4901: $07
    inc a                                         ; $4902: $3c
    ld a, [de]                                    ; $4903: $1a
    ld a, b                                       ; $4904: $78
    ld sp, $e070                                  ; $4905: $31 $70 $e0
    nop                                           ; $4908: $00
    inc hl                                        ; $4909: $23
    di                                            ; $490a: $f3
    jp $b404                                      ; $490b: $c3 $04 $b4


    call c, $b884                                 ; $490e: $dc $84 $b8
    nop                                           ; $4911: $00
    jr nz, jr_0ac_48c4                            ; $4912: $20 $b0

    ld a, [hl]                                    ; $4914: $7e
    ld e, b                                       ; $4915: $58
    call nz, Call_0ac_62ac                        ; $4916: $c4 $ac $62
    rst $28                                       ; $4919: $ef
    nop                                           ; $491a: $00
    ld hl, $d8f0                                  ; $491b: $21 $f0 $d8
    inc a                                         ; $491e: $3c
    ld l, b                                       ; $491f: $68
    ld b, $19                                     ; $4920: $06 $19
    rrca                                          ; $4922: $0f
    nop                                           ; $4923: $00
    add hl, bc                                    ; $4924: $09
    ld bc, $0303                                  ; $4925: $01 $03 $03
    ld b, $c2                                     ; $4928: $06 $c2
    ld b, h                                       ; $492a: $44
    ld c, $00                                     ; $492b: $0e $00
    di                                            ; $492d: $f3
    rrca                                          ; $492e: $0f
    call $f707                                    ; $492f: $cd $07 $f7
    add e                                         ; $4932: $83
    inc bc                                        ; $4933: $03
    ld h, b                                       ; $4934: $60
    nop                                           ; $4935: $00
    sub b                                         ; $4936: $90
    daa                                           ; $4937: $27
    rst $10                                       ; $4938: $d7
    inc de                                        ; $4939: $13
    dec bc                                        ; $493a: $0b
    inc a                                         ; $493b: $3c
    ld e, h                                       ; $493c: $5c
    rlca                                          ; $493d: $07
    nop                                           ; $493e: $00
    call RST_00                                   ; $493f: $cd $00 $00
    add b                                         ; $4942: $80
    ld b, b                                       ; $4943: $40
    ld b, b                                       ; $4944: $40
    ldh [$90], a                                  ; $4945: $e0 $90
    nop                                           ; $4947: $00
    add sp, $48                                   ; $4948: $e8 $48
    inc [hl]                                      ; $494a: $34
    add h                                         ; $494b: $84
    sbc d                                         ; $494c: $9a
    ld h, e                                       ; $494d: $63
    ld l, h                                       ; $494e: $6c
    sub c                                         ; $494f: $91
    ld b, b                                       ; $4950: $40
    ld d, $d0                                     ; $4951: $16 $d0
    ld d, b                                       ; $4953: $50
    add b                                         ; $4954: $80
    ret nz                                        ; $4955: $c0

    ld b, b                                       ; $4956: $40
    ld b, $01                                     ; $4957: $06 $01
    add hl, de                                    ; $4959: $19
    nop                                           ; $495a: $00
    ld e, $3a                                     ; $495b: $1e $3a
    inc [hl]                                      ; $495d: $34
    ld [hl], b                                    ; $495e: $70
    ld l, c                                       ; $495f: $69
    ldh a, [$e7]                                  ; $4960: $f0 $e7

jr_0ac_4962:
    ldh [rLCDC], a                                ; $4962: $e0 $40
    rst $08                                       ; $4964: $cf
    ld [bc], a                                    ; $4965: $02
    ld [$0f80], sp                                ; $4966: $08 $80 $0f
    rlca                                          ; $4969: $07
    ld [hl], d                                    ; $496a: $72
    inc bc                                        ; $496b: $03
    rst $30                                       ; $496c: $f7
    nop                                           ; $496d: $00
    ld [c], a                                     ; $496e: $e2
    inc bc                                        ; $496f: $03
    pop bc                                        ; $4970: $c1
    ld bc, $76f6                                  ; $4971: $01 $f6 $76
    db $e3                                        ; $4974: $e3
    ld l, a                                       ; $4975: $6f
    nop                                           ; $4976: $00
    jr jr_0ac_49d6                                ; $4977: $18 $5d

    ld h, a                                       ; $4979: $67
    jr nc, jr_0ac_49a2                            ; $497a: $30 $26

    ld [hl-], a                                   ; $497c: $32
    sbc [hl]                                      ; $497d: $9e
    dec bc                                        ; $497e: $0b
    nop                                           ; $497f: $00
    ld h, d                                       ; $4980: $62
    xor l                                         ; $4981: $ad
    dec c                                         ; $4982: $0d
    ld a, [c]                                     ; $4983: $f2
    ld a, e                                       ; $4984: $7b
    adc [hl]                                      ; $4985: $8e
    nop                                           ; $4986: $00
    jr nc, jr_0ac_4989                            ; $4987: $30 $00

jr_0ac_4989:
    add c                                         ; $4989: $81
    add [hl]                                      ; $498a: $86
    rst $18                                       ; $498b: $df
    ret nz                                        ; $498c: $c0

jr_0ac_498d:
    rrca                                          ; $498d: $0f
    db $10                                        ; $498e: $10
    or d                                          ; $498f: $b2
    inc hl                                        ; $4990: $23
    nop                                           ; $4991: $00
    ld b, $c5                                     ; $4992: $06 $c5

jr_0ac_4994:
    ld a, h                                       ; $4994: $7c
    adc a                                         ; $4995: $8f
    inc bc                                        ; $4996: $03
    pop bc                                        ; $4997: $c1
    jr z, jr_0ac_4962                             ; $4998: $28 $c8

    nop                                           ; $499a: $00
    ld l, a                                       ; $499b: $6f
    rrca                                          ; $499c: $0f
    push bc                                       ; $499d: $c5
    add $bf                                       ; $499e: $c6 $bf
    sub [hl]                                      ; $49a0: $96
    sbc b                                         ; $49a1: $98

jr_0ac_49a2:
    add b                                         ; $49a2: $80
    nop                                           ; $49a3: $00
    sbc $b8                                       ; $49a4: $de $b8
    ld c, e                                       ; $49a6: $4b
    ld h, d                                       ; $49a7: $62
    db $e4                                        ; $49a8: $e4
    ld b, $c0                                     ; $49a9: $06 $c0
    cp [hl]                                       ; $49ab: $be

jr_0ac_49ac:
    nop                                           ; $49ac: $00
    rrca                                          ; $49ad: $0f
    ld bc, $19f8                                  ; $49ae: $01 $f8 $19
    ld a, [hl]                                    ; $49b1: $7e
    ld a, $20                                     ; $49b2: $3e $20
    ldh [rP1], a                                  ; $49b4: $e0 $00
    or b                                          ; $49b6: $b0
    ld d, b                                       ; $49b7: $50
    ld d, d                                       ; $49b8: $52
    ld a, [c]                                     ; $49b9: $f2
    adc $8a                                       ; $49ba: $ce $8a
    add $d8                                       ; $49bc: $c6 $d8
    nop                                           ; $49be: $00
    ld a, $3c                                     ; $49bf: $3e $3c
    ld b, b                                       ; $49c1: $40
    and b                                         ; $49c2: $a0
    jr c, jr_0ac_498d                             ; $49c3: $38 $c8

    scf                                           ; $49c5: $37
    ld c, e                                       ; $49c6: $4b
    nop                                           ; $49c7: $00
    add hl, de                                    ; $49c8: $19
    rlca                                          ; $49c9: $07
    rlca                                          ; $49ca: $07
    db $e3                                        ; $49cb: $e3
    rlca                                          ; $49cc: $07
    pop af                                        ; $49cd: $f1
    inc bc                                        ; $49ce: $03
    db $f4                                        ; $49cf: $f4
    nop                                           ; $49d0: $00
    rlca                                          ; $49d1: $07
    db $f4                                        ; $49d2: $f4
    ld h, b                                       ; $49d3: $60
    ld c, [hl]                                    ; $49d4: $4e
    ld h, b                                       ; $49d5: $60

jr_0ac_49d6:
    ld d, l                                       ; $49d6: $55
    ld h, d                                       ; $49d7: $62
    ld d, e                                       ; $49d8: $53
    nop                                           ; $49d9: $00
    jr nc, @+$08                                  ; $49da: $30 $06

    jr z, @+$0e                                   ; $49dc: $28 $0c

    add sp, -$3c                                  ; $49de: $e8 $c4
    push hl                                       ; $49e0: $e5
    add sp, $00                                   ; $49e1: $e8 $00
    ld [$99e1], a                                 ; $49e3: $ea $e1 $99
    ret                                           ; $49e6: $c9


    jr nc, jr_0ac_4994                            ; $49e7: $30 $ab

    jr nz, jr_0ac_4a66                            ; $49e9: $20 $7b

    nop                                           ; $49eb: $00
    inc h                                         ; $49ec: $24
    ld h, d                                       ; $49ed: $62
    sbc h                                         ; $49ee: $9c
    ld d, [hl]                                    ; $49ef: $56
    db $fc                                        ; $49f0: $fc
    ld l, e                                       ; $49f1: $6b
    rst $30                                       ; $49f2: $f7
    ld h, d                                       ; $49f3: $62
    nop                                           ; $49f4: $00
    and b                                         ; $49f5: $a0
    dec [hl]                                      ; $49f6: $35
    jp $cccd                                      ; $49f7: $c3 $cd $cc


    pop bc                                        ; $49fa: $c1
    adc $c1                                       ; $49fb: $ce $c1
    nop                                           ; $49fd: $00
    pop bc                                        ; $49fe: $c1
    call z, Call_0ac_4ac7                         ; $49ff: $cc $c7 $4a
    sub $53                                       ; $4a02: $d6 $53
    reti                                          ; $4a04: $d9


    ld d, l                                       ; $4a05: $55
    nop                                           ; $4a06: $00
    inc b                                         ; $4a07: $04
    sbc h                                         ; $4a08: $9c
    dec de                                        ; $4a09: $1b
    jr @-$46                                      ; $4a0a: $18 $b8

    ld a, h                                       ; $4a0c: $7c
    or [hl]                                       ; $4a0d: $b6
    ld b, $00                                     ; $4a0e: $06 $00
    and l                                         ; $4a10: $a5
    rlca                                          ; $4a11: $07
    cp b                                          ; $4a12: $b8
    ld a, h                                       ; $4a13: $7c
    cp h                                          ; $4a14: $bc
    ld a, h                                       ; $4a15: $7c
    ld a, a                                       ; $4a16: $7f
    pop bc                                        ; $4a17: $c1
    nop                                           ; $4a18: $00
    ld a, a                                       ; $4a19: $7f
    nop                                           ; $4a1a: $00
    ld h, a                                       ; $4a1b: $67
    add [hl]                                      ; $4a1c: $86
    daa                                           ; $4a1d: $27
    rst $00                                       ; $4a1e: $c7
    jr c, jr_0ac_4a39                             ; $4a1f: $38 $18

    nop                                           ; $4a21: $00
    jr jr_0ac_49ac                                ; $4a22: $18 $88

    ldh [$d1], a                                  ; $4a24: $e0 $d1
    ldh [$c3], a                                  ; $4a26: $e0 $c3
    ld [c], a                                     ; $4a28: $e2
    rst $00                                       ; $4a29: $c7
    nop                                           ; $4a2a: $00
    and $07                                       ; $4a2b: $e6 $07
    adc c                                         ; $4a2d: $89
    add l                                         ; $4a2e: $85
    dec d                                         ; $4a2f: $15
    jp hl                                         ; $4a30: $e9


    db $10                                        ; $4a31: $10
    jr c, jr_0ac_4a34                             ; $4a32: $38 $00

jr_0ac_4a34:
    ld b, $00                                     ; $4a34: $06 $00
    ld a, [de]                                    ; $4a36: $1a
    and e                                         ; $4a37: $a3
    dec c                                         ; $4a38: $0d

jr_0ac_4a39:
    sub l                                         ; $4a39: $95
    xor b                                         ; $4a3a: $a8
    dec h                                         ; $4a3b: $25
    nop                                           ; $4a3c: $00
    and a                                         ; $4a3d: $a7
    add hl, hl                                    ; $4a3e: $29
    ld a, [c]                                     ; $4a3f: $f2
    ld b, $ea                                     ; $4a40: $06 $ea
    ld c, $e8                                     ; $4a42: $0e $e8
    ld c, $00                                     ; $4a44: $0e $00
    add sp, $0c                                   ; $4a46: $e8 $0c
    jr @+$56                                      ; $4a48: $18 $54

    inc e                                         ; $4a4a: $1c
    ld d, b                                       ; $4a4b: $50
    adc a                                         ; $4a4c: $8f
    rla                                           ; $4a4d: $17
    nop                                           ; $4a4e: $00
    rrca                                          ; $4a4f: $0f
    sub a                                         ; $4a50: $97
    ret                                           ; $4a51: $c9


    jp nz, $170a                                  ; $4a52: $c2 $0a $17

    ld a, [bc]                                    ; $4a55: $0a
    rla                                           ; $4a56: $17
    nop                                           ; $4a57: $00
    jp z, $cad4                                   ; $4a58: $ca $d4 $ca

    call nc, $cac4                                ; $4a5b: $d4 $c4 $ca
    db $e4                                        ; $4a5e: $e4
    ld [$0900], a                                 ; $4a5f: $ea $00 $09
    rlca                                          ; $4a62: $07
    and c                                         ; $4a63: $a1
    inc d                                         ; $4a64: $14
    or c                                          ; $4a65: $b1

jr_0ac_4a66:
    sub l                                         ; $4a66: $95
    or c                                          ; $4a67: $b1
    and l                                         ; $4a68: $a5
    nop                                           ; $4a69: $00
    inc de                                        ; $4a6a: $13
    and [hl]                                      ; $4a6b: $a6
    ld d, a                                       ; $4a6c: $57
    pop hl                                        ; $4a6d: $e1
    sub [hl]                                      ; $4a6e: $96
    ld h, h                                       ; $4a6f: $64
    ld [bc], a                                    ; $4a70: $02
    ld [hl], b                                    ; $4a71: $70
    nop                                           ; $4a72: $00
    ld [hl], b                                    ; $4a73: $70
    ei                                            ; $4a74: $fb
    inc d                                         ; $4a75: $14
    and [hl]                                      ; $4a76: $a6
    or [hl]                                       ; $4a77: $b6
    ld h, $b4                                     ; $4a78: $26 $b4
    and d                                         ; $4a7a: $a2
    nop                                           ; $4a7b: $00
    add d                                         ; $4a7c: $82
    cp d                                          ; $4a7d: $ba
    sbc b                                         ; $4a7e: $98
    db $e3                                        ; $4a7f: $e3
    call $e770                                    ; $4a80: $cd $70 $e7
    dec e                                         ; $4a83: $1d
    nop                                           ; $4a84: $00
    ld d, a                                       ; $4a85: $57
    ei                                            ; $4a86: $fb
    ld a, a                                       ; $4a87: $7f
    nop                                           ; $4a88: $00
    rra                                           ; $4a89: $1f
    pop bc                                        ; $4a8a: $c1
    jp hl                                         ; $4a8b: $e9


    adc a                                         ; $4a8c: $8f
    nop                                           ; $4a8d: $00
    ld a, e                                       ; $4a8e: $7b
    inc bc                                        ; $4a8f: $03
    ld [bc], a                                    ; $4a90: $02
    ld a, [hl]                                    ; $4a91: $7e
    ld c, b                                       ; $4a92: $48
    inc sp                                        ; $4a93: $33
    and l                                         ; $4a94: $a5
    sbc b                                         ; $4a95: $98
    nop                                           ; $4a96: $00
    ld a, c                                       ; $4a97: $79
    or $f0                                        ; $4a98: $f6 $f0
    rst $20                                       ; $4a9a: $e7
    ld [hl], b                                    ; $4a9b: $70
    ld [hl], l                                    ; $4a9c: $75
    ld hl, sp+$3d                                 ; $4a9d: $f8 $3d
    nop                                           ; $4a9f: $00
    add h                                         ; $4aa0: $84
    dec c                                         ; $4aa1: $0d
    add hl, de                                    ; $4aa2: $19
    add b                                         ; $4aa3: $80
    ld de, $21b6                                  ; $4aa4: $11 $b6 $21
    ld h, $00                                     ; $4aa7: $26 $00
    ld b, h                                       ; $4aa9: $44
    jp c, Jump_000_28a6                           ; $4aaa: $da $a6 $28

    xor b                                         ; $4aad: $a8
    ld h, $a2                                     ; $4aae: $26 $a2
    ld c, $00                                     ; $4ab0: $0e $00
    and h                                         ; $4ab2: $a4
    ld a, [bc]                                    ; $4ab3: $0a
    and d                                         ; $4ab4: $a2
    inc l                                         ; $4ab5: $2c
    ld h, d                                       ; $4ab6: $62
    ld l, h                                       ; $4ab7: $6c
    ld h, h                                       ; $4ab8: $64
    ld l, b                                       ; $4ab9: $68
    nop                                           ; $4aba: $00
    db $e4                                        ; $4abb: $e4
    add sp, $0f                                   ; $4abc: $e8 $0f
    sub a                                         ; $4abe: $97
    rrca                                          ; $4abf: $0f
    ld d, a                                       ; $4ac0: $57
    cpl                                           ; $4ac1: $2f
    ld b, a                                       ; $4ac2: $47
    nop                                           ; $4ac3: $00
    ld l, a                                       ; $4ac4: $6f
    rrca                                          ; $4ac5: $0f
    ld h, b                                       ; $4ac6: $60

Call_0ac_4ac7:
    ld c, a                                       ; $4ac7: $4f
    jr nz, @+$11                                  ; $4ac8: $20 $0f

    ld h, b                                       ; $4aca: $60
    ld l, a                                       ; $4acb: $6f
    ld [bc], a                                    ; $4acc: $02
    jr nz, jr_0ac_4ade                            ; $4acd: $20 $0f

    dec b                                         ; $4acf: $05
    inc bc                                        ; $4ad0: $03
    dec b                                         ; $4ad1: $05
    ld b, $1a                                     ; $4ad2: $06 $1a
    ld [bc], a                                    ; $4ad4: $02
    ld hl, sp+$00                                 ; $4ad5: $f8 $00
    ld bc, $00fd                                  ; $4ad7: $01 $fd $00
    cp $01                                        ; $4ada: $fe $01
    cp $00                                        ; $4adc: $fe $00

jr_0ac_4ade:
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    ld a, c                                       ; $4ae0: $79
    ld c, b                                       ; $4ae1: $48
    inc l                                         ; $4ae2: $2c
    ld l, b                                       ; $4ae3: $68
    inc h                                         ; $4ae4: $24
    ld a, $36                                     ; $4ae5: $3e $36
    add d                                         ; $4ae7: $82
    nop                                           ; $4ae8: $00
    sub e                                         ; $4ae9: $93
    inc de                                        ; $4aea: $13
    jp c, $65c3                                   ; $4aeb: $da $c3 $65

    ld l, l                                       ; $4aee: $6d
    add h                                         ; $4aef: $84
    xor b                                         ; $4af0: $a8
    nop                                           ; $4af1: $00
    ld e, d                                       ; $4af2: $5a
    ld l, d                                       ; $4af3: $6a
    dec l                                         ; $4af4: $2d
    db $eb                                        ; $4af5: $eb
    and l                                         ; $4af6: $a5
    scf                                           ; $4af7: $37
    ld d, d                                       ; $4af8: $52

jr_0ac_4af9:
    jr c, jr_0ac_4afb                             ; $4af9: $38 $00

jr_0ac_4afb:
    jr c, jr_0ac_4b26                             ; $4afb: $38 $29

    and a                                         ; $4afd: $a7
    dec sp                                        ; $4afe: $3b
    ld c, c                                       ; $4aff: $49
    add a                                         ; $4b00: $87
    and [hl]                                      ; $4b01: $a6
    push bc                                       ; $4b02: $c5
    nop                                           ; $4b03: $00
    ld l, a                                       ; $4b04: $6f
    adc a                                         ; $4b05: $8f
    add c                                         ; $4b06: $81
    pop bc                                        ; $4b07: $c1
    jr nz, jr_0ac_4af9                            ; $4b08: $20 $ef

    or b                                          ; $4b0a: $b0
    ld [hl], $00                                  ; $4b0b: $36 $00
    jr jr_0ac_4b30                                ; $4b0d: $18 $21

    adc a                                         ; $4b0f: $8f
    sub d                                         ; $4b10: $92
    ld b, [hl]                                    ; $4b11: $46
    ld b, $a2                                     ; $4b12: $06 $a2
    ld bc, $bc00                                  ; $4b14: $01 $00 $bc
    dec [hl]                                      ; $4b17: $35
    ld e, b                                       ; $4b18: $58
    inc bc                                        ; $4b19: $03
    inc de                                        ; $4b1a: $13
    or b                                          ; $4b1b: $b0
    daa                                           ; $4b1c: $27
    ld h, b                                       ; $4b1d: $60
    nop                                           ; $4b1e: $00
    ret nz                                        ; $4b1f: $c0

    adc a                                         ; $4b20: $8f
    nop                                           ; $4b21: $00
    ccf                                           ; $4b22: $3f
    rst $38                                       ; $4b23: $ff
    nop                                           ; $4b24: $00
    ccf                                           ; $4b25: $3f

jr_0ac_4b26:
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    ld a, [bc]                                    ; $4b28: $0a
    and $0d                                       ; $4b29: $e6 $0d
    db $e4                                        ; $4b2b: $e4
    ret nc                                        ; $4b2c: $d0

    ret                                           ; $4b2d: $c9


    ret z                                         ; $4b2e: $c8

    pop de                                        ; $4b2f: $d1

jr_0ac_4b30:
    nop                                           ; $4b30: $00
    reti                                          ; $4b31: $d9


    ld de, $13c2                                  ; $4b32: $11 $c2 $13
    inc de                                        ; $4b35: $13
    add d                                         ; $4b36: $82
    inc hl                                        ; $4b37: $23
    adc c                                         ; $4b38: $89
    nop                                           ; $4b39: $00
    and b                                         ; $4b3a: $a0
    cpl                                           ; $4b3b: $2f
    and b                                         ; $4b3c: $a0
    cpl                                           ; $4b3d: $2f
    sbc a                                         ; $4b3e: $9f
    ld e, a                                       ; $4b3f: $5f
    cp a                                          ; $4b40: $bf
    ld a, a                                       ; $4b41: $7f
    inc b                                         ; $4b42: $04
    nop                                           ; $4b43: $00
    add b                                         ; $4b44: $80
    add b                                         ; $4b45: $80
    nop                                           ; $4b46: $00
    add b                                         ; $4b47: $80
    sbc l                                         ; $4b48: $9d
    add d                                         ; $4b49: $82
    call nz, Call_000_00d3                        ; $4b4a: $c4 $d3 $00
    inc hl                                        ; $4b4d: $23
    pop bc                                        ; $4b4e: $c1
    ld bc, $7061                                  ; $4b4f: $01 $61 $70
    and b                                         ; $4b52: $a0
    ld [hl], b                                    ; $4b53: $70
    sub b                                         ; $4b54: $90
    nop                                           ; $4b55: $00
    ld hl, $381e                                  ; $4b56: $21 $1e $38
    daa                                           ; $4b59: $27
    rrca                                          ; $4b5a: $0f
    inc sp                                        ; $4b5b: $33
    ld d, c                                       ; $4b5c: $51
    ld h, c                                       ; $4b5d: $61
    nop                                           ; $4b5e: $00
    ldh [$78], a                                  ; $4b5f: $e0 $78
    xor b                                         ; $4b61: $a8
    ld h, h                                       ; $4b62: $64
    inc hl                                        ; $4b63: $23
    ld [hl], h                                    ; $4b64: $74
    add hl, bc                                    ; $4b65: $09
    ld [de], a                                    ; $4b66: $12
    nop                                           ; $4b67: $00
    call nz, $f023                                ; $4b68: $c4 $23 $f0
    ret z                                         ; $4b6b: $c8

    adc $f0                                       ; $4b6c: $ce $f0
    ret nz                                        ; $4b6e: $c0

    cp b                                          ; $4b6f: $b8
    nop                                           ; $4b70: $00
    ld b, b                                       ; $4b71: $40
    inc a                                         ; $4b72: $3c
    ld h, $1f                                     ; $4b73: $26 $1f
    ld b, $01                                     ; $4b75: $06 $01
    nop                                           ; $4b77: $00
    add b                                         ; $4b78: $80
    nop                                           ; $4b79: $00
    adc a                                         ; $4b7a: $8f
    ld h, [hl]                                    ; $4b7b: $66
    ld bc, $033c                                  ; $4b7c: $01 $3c $03
    inc de                                        ; $4b7f: $13
    rst $08                                       ; $4b80: $cf
    ret nz                                        ; $4b81: $c0

    nop                                           ; $4b82: $00
    inc hl                                        ; $4b83: $23
    jr nc, jr_0ac_4b86                            ; $4b84: $30 $00

jr_0ac_4b86:
    ld bc, $2ee0                                  ; $4b86: $01 $e0 $2e
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    ld a, [hl]                                    ; $4b8c: $7e
    db $d3                                        ; $4b8d: $d3
    add e                                         ; $4b8e: $83
    ld b, h                                       ; $4b8f: $44
    rst $00                                       ; $4b90: $c7
    jp hl                                         ; $4b91: $e9


    inc de                                        ; $4b92: $13
    ld [hl], h                                    ; $4b93: $74
    nop                                           ; $4b94: $00
    rla                                           ; $4b95: $17
    ld d, b                                       ; $4b96: $50
    ld b, $32                                     ; $4b97: $06 $32
    ld c, $66                                     ; $4b99: $0e $66
    inc bc                                        ; $4b9b: $03
    dec c                                         ; $4b9c: $0d
    ld [bc], a                                    ; $4b9d: $02
    rst $20                                       ; $4b9e: $e7
    dec de                                        ; $4b9f: $1b
    inc c                                         ; $4ba0: $0c
    ldh a, [rNR32]                                ; $4ba1: $f0 $1c
    db $e4                                        ; $4ba3: $e4
    nop                                           ; $4ba4: $00
    ld l, e                                       ; $4ba5: $6b
    db $10                                        ; $4ba6: $10
    inc bc                                        ; $4ba7: $03
    rst $00                                       ; $4ba8: $c7
    ld [bc], a                                    ; $4ba9: $02
    nop                                           ; $4baa: $00
    ld bc, $faf8                                  ; $4bab: $01 $f8 $fa
    ld sp, hl                                     ; $4bae: $f9
    ld a, [$03f9]                                 ; $4baf: $fa $f9 $03
    pop af                                        ; $4bb2: $f1
    nop                                           ; $4bb3: $00
    inc bc                                        ; $4bb4: $03
    pop af                                        ; $4bb5: $f1
    rlca                                          ; $4bb6: $07
    db $f4                                        ; $4bb7: $f4
    rlca                                          ; $4bb8: $07
    db $e4                                        ; $4bb9: $e4
    db $ec                                        ; $4bba: $ec
    db $e3                                        ; $4bbb: $e3
    nop                                           ; $4bbc: $00
    ret nz                                        ; $4bbd: $c0

    ld c, a                                       ; $4bbe: $4f
    ldh [rLCDC], a                                ; $4bbf: $e0 $40
    add b                                         ; $4bc1: $80
    ld h, b                                       ; $4bc2: $60
    add b                                         ; $4bc3: $80
    ld h, b                                       ; $4bc4: $60
    nop                                           ; $4bc5: $00
    sub h                                         ; $4bc6: $94
    ld c, $07                                     ; $4bc7: $0e $07
    sbc e                                         ; $4bc9: $9b
    inc bc                                        ; $4bca: $03
    sbc h                                         ; $4bcb: $9c
    sub b                                         ; $4bcc: $90
    adc a                                         ; $4bcd: $8f
    ld b, b                                       ; $4bce: $40
    nop                                           ; $4bcf: $00
    ld bc, $0200                                  ; $4bd0: $01 $00 $02
    ld bc, $fff8                                  ; $4bd3: $01 $f8 $ff
    rra                                           ; $4bd6: $1f
    stop                                          ; $4bd7: $10 $00
    ld b, b                                       ; $4bd9: $40
    add b                                         ; $4bda: $80
    add b                                         ; $4bdb: $80
    adc $df                                       ; $4bdc: $ce $df
    ret nz                                        ; $4bde: $c0

    ld b, b                                       ; $4bdf: $40
    ld a, $00                                     ; $4be0: $3e $00
    cp $7f                                        ; $4be2: $fe $7f
    pop bc                                        ; $4be4: $c1
    rst $20                                       ; $4be5: $e7
    jp nz, $1800                                  ; $4be6: $c2 $00 $18

    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    add hl, sp                                    ; $4beb: $39
    inc bc                                        ; $4bec: $03
    ld a, d                                       ; $4bed: $7a
    ld [bc], a                                    ; $4bee: $02
    inc a                                         ; $4bef: $3c
    add b                                         ; $4bf0: $80
    nop                                           ; $4bf1: $00
    inc bc                                        ; $4bf2: $03
    nop                                           ; $4bf3: $00
    inc bc                                        ; $4bf4: $03
    dec c                                         ; $4bf5: $0d
    sbc b                                         ; $4bf6: $98

jr_0ac_4bf7:
    sub [hl]                                      ; $4bf7: $96
    ld h, b                                       ; $4bf8: $60
    ld a, h                                       ; $4bf9: $7c
    ldh a, [$30]                                  ; $4bfa: $f0 $30
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    ld a, h                                       ; $4bfe: $7c
    nop                                           ; $4bff: $00
    ld a, $81                                     ; $4c00: $3e $81
    dec c                                         ; $4c02: $0d
    ret nz                                        ; $4c03: $c0

    ret nz                                        ; $4c04: $c0

    nop                                           ; $4c05: $00
    ld b, b                                       ; $4c06: $40
    and b                                         ; $4c07: $a0
    ld h, b                                       ; $4c08: $60
    ld c, a                                       ; $4c09: $4f
    jr nz, jr_0ac_4c3b                            ; $4c0a: $20 $2f

    jr nz, jr_0ac_4c3d                            ; $4c0c: $20 $2f

    inc bc                                        ; $4c0e: $03
    ld h, b                                       ; $4c0f: $60
    cpl                                           ; $4c10: $2f
    adc a                                         ; $4c11: $8f
    ld l, a                                       ; $4c12: $6f
    xor a                                         ; $4c13: $af
    ld c, a                                       ; $4c14: $4f
    ld b, b                                       ; $4c15: $40
    ld [$1004], sp                                ; $4c16: $08 $04 $10
    nop                                           ; $4c19: $00
    rrca                                          ; $4c1a: $0f
    ld b, $0d                                     ; $4c1b: $06 $0d
    add hl, de                                    ; $4c1d: $19
    rra                                           ; $4c1e: $1f
    dec de                                        ; $4c1f: $1b
    rla                                           ; $4c20: $17
    jp hl                                         ; $4c21: $e9


    nop                                           ; $4c22: $00
    and $0e                                       ; $4c23: $e6 $0e
    and $0e                                       ; $4c25: $e6 $0e
    db $ec                                        ; $4c27: $ec
    ld c, $e2                                     ; $4c28: $0e $e2
    ld c, $00                                     ; $4c2a: $0e $00
    ld [c], a                                     ; $4c2c: $e2
    db $ec                                        ; $4c2d: $ec
    ldh [$ec], a                                  ; $4c2e: $e0 $ec
    pop hl                                        ; $4c30: $e1
    inc c                                         ; $4c31: $0c
    ldh [rNR10], a                                ; $4c32: $e0 $10
    nop                                           ; $4c34: $00
    rra                                           ; $4c35: $1f
    jr @+$19                                      ; $4c36: $18 $17

    ld c, $09                                     ; $4c38: $0e $09
    ld h, a                                       ; $4c3a: $67

jr_0ac_4c3b:
    ld h, b                                       ; $4c3b: $60
    ld b, d                                       ; $4c3c: $42

jr_0ac_4c3d:
    nop                                           ; $4c3d: $00
    ld h, b                                       ; $4c3e: $60
    jp nz, $8032                                  ; $4c3f: $c2 $32 $80

    ld h, b                                       ; $4c42: $60
    sbc c                                         ; $4c43: $99
    add hl, de                                    ; $4c44: $19
    sbc a                                         ; $4c45: $9f
    nop                                           ; $4c46: $00
    and b                                         ; $4c47: $a0
    daa                                           ; $4c48: $27
    ccf                                           ; $4c49: $3f
    ld b, e                                       ; $4c4a: $43
    ccf                                           ; $4c4b: $3f
    ld [hl], b                                    ; $4c4c: $70
    rrca                                          ; $4c4d: $0f
    ld hl, sp+$00                                 ; $4c4e: $f8 $00
    rst $20                                       ; $4c50: $e7
    rrca                                          ; $4c51: $0f
    di                                            ; $4c52: $f3
    inc c                                         ; $4c53: $0c
    ldh a, [$03]                                  ; $4c54: $f0 $03
    jr nc, jr_0ac_4bf7                            ; $4c56: $30 $9f

    nop                                           ; $4c58: $00
    ret nz                                        ; $4c59: $c0

    ld l, a                                       ; $4c5a: $6f
    ldh [rTAC], a                                 ; $4c5b: $e0 $07
    ldh a, [$0b]                                  ; $4c5d: $f0 $0b
    ld hl, sp-$40                                 ; $4c5f: $f8 $c0
    nop                                           ; $4c61: $00
    ld a, b                                       ; $4c62: $78
    ret nz                                        ; $4c63: $c0

    ret nz                                        ; $4c64: $c0

    jr nc, jr_0ac_4c96                            ; $4c65: $30 $2f

    db $fc                                        ; $4c67: $fc
    ld h, h                                       ; $4c68: $64
    call nz, Call_000_0500                        ; $4c69: $c4 $00 $05
    ldh a, [$03]                                  ; $4c6c: $f0 $03
    db $e3                                        ; $4c6e: $e3
    rlca                                          ; $4c6f: $07
    ret nz                                        ; $4c70: $c0

    nop                                           ; $4c71: $00
    rra                                           ; $4c72: $1f
    nop                                           ; $4c73: $00
    ld e, $e0                                     ; $4c74: $1e $e0
    ld hl, sp+$41                                 ; $4c76: $f8 $41
    ret nz                                        ; $4c78: $c0

    ld b, $05                                     ; $4c79: $06 $05
    ret nz                                        ; $4c7b: $c0

    nop                                           ; $4c7c: $00
    ld h, b                                       ; $4c7d: $60
    ret nz                                        ; $4c7e: $c0

    nop                                           ; $4c7f: $00
    rlca                                          ; $4c80: $07
    rra                                           ; $4c81: $1f
    jp $8e1f                                      ; $4c82: $c3 $1f $8e


    nop                                           ; $4c85: $00
    ret nc                                        ; $4c86: $d0

    inc b                                         ; $4c87: $04
    ld c, b                                       ; $4c88: $48
    ld bc, $8501                                  ; $4c89: $01 $01 $85
    add e                                         ; $4c8c: $83
    inc c                                         ; $4c8d: $0c
    ld b, b                                       ; $4c8e: $40
    ld d, $02                                     ; $4c8f: $16 $02
    nop                                           ; $4c91: $00
    ld [hl-], a                                   ; $4c92: $32
    inc e                                         ; $4c93: $1c
    ld [hl], $08                                  ; $4c94: $36 $08

jr_0ac_4c96:
    db $fc                                        ; $4c96: $fc
    sbc b                                         ; $4c97: $98
    nop                                           ; $4c98: $00
    db $ec                                        ; $4c99: $ec
    sbc b                                         ; $4c9a: $98
    db $fc                                        ; $4c9b: $fc
    ret c                                         ; $4c9c: $d8

    db $f4                                        ; $4c9d: $f4
    inc b                                         ; $4c9e: $04
    db $e4                                        ; $4c9f: $e4
    ld de, $1600                                  ; $4ca0: $11 $00 $16
    ld [hl], b                                    ; $4ca3: $70
    inc sp                                        ; $4ca4: $33
    db $d3                                        ; $4ca5: $d3
    inc hl                                        ; $4ca6: $23
    jp nz, $e022                                  ; $4ca7: $c2 $22 $e0

    nop                                           ; $4caa: $00
    ld h, c                                       ; $4cab: $61
    ldh [$e3], a                                  ; $4cac: $e0 $e3
    ld c, b                                       ; $4cae: $48
    ld h, b                                       ; $4caf: $60
    ld b, c                                       ; $4cb0: $41
    ld [hl], c                                    ; $4cb1: $71
    nop                                           ; $4cb2: $00
    nop                                           ; $4cb3: $00
    ldh [$e0], a                                  ; $4cb4: $e0 $e0
    ld b, b                                       ; $4cb6: $40
    ld e, b                                       ; $4cb7: $58
    ret nz                                        ; $4cb8: $c0

    sbc b                                         ; $4cb9: $98
    ret nz                                        ; $4cba: $c0

    cp b                                          ; $4cbb: $b8
    nop                                           ; $4cbc: $00
    add c                                         ; $4cbd: $81
    ld a, b                                       ; $4cbe: $78
    ld bc, $03fa                                  ; $4cbf: $01 $fa $03
    ld c, $04                                     ; $4cc2: $0e $04
    jr jr_0ac_4cc6                                ; $4cc4: $18 $00

jr_0ac_4cc6:
    dec bc                                        ; $4cc6: $0b
    jr nc, jr_0ac_4cdd                            ; $4cc7: $30 $14

    ld b, c                                       ; $4cc9: $41
    ld c, e                                       ; $4cca: $4b
    add b                                         ; $4ccb: $80
    ld d, b                                       ; $4ccc: $50
    ld [c], a                                     ; $4ccd: $e2
    nop                                           ; $4cce: $00
    ldh [$89], a                                  ; $4ccf: $e0 $89
    add h                                         ; $4cd1: $84
    ld h, b                                       ; $4cd2: $60
    ld b, h                                       ; $4cd3: $44
    ld h, b                                       ; $4cd4: $60
    nop                                           ; $4cd5: $00
    ld [$1800], sp                                ; $4cd6: $08 $00 $18
    ld l, b                                       ; $4cd9: $68
    sbc b                                         ; $4cda: $98
    add sp, $18                                   ; $4cdb: $e8 $18

jr_0ac_4cdd:
    ld [hl-], a                                   ; $4cdd: $32
    dec [hl]                                      ; $4cde: $35
    ld sp, $8e00                                  ; $4cdf: $31 $00 $8e
    xor h                                         ; $4ce2: $ac
    ld a, $60                                     ; $4ce3: $3e $60
    ld l, b                                       ; $4ce5: $68
    add hl, de                                    ; $4ce6: $19
    rla                                           ; $4ce7: $17
    ld [hl+], a                                   ; $4ce8: $22
    nop                                           ; $4ce9: $00
    ld e, $29                                     ; $4cea: $1e $29
    ld a, h                                       ; $4cec: $7c
    inc de                                        ; $4ced: $13
    jr jr_0ac_4d07                                ; $4cee: $18 $17

    ret nc                                        ; $4cf0: $d0

    cpl                                           ; $4cf1: $2f
    nop                                           ; $4cf2: $00
    and b                                         ; $4cf3: $a0
    ld e, a                                       ; $4cf4: $5f
    ld b, b                                       ; $4cf5: $40
    ccf                                           ; $4cf6: $3f
    add b                                         ; $4cf7: $80
    ld d, l                                       ; $4cf8: $55
    rla                                           ; $4cf9: $17
    ret nz                                        ; $4cfa: $c0

    nop                                           ; $4cfb: $00
    inc de                                        ; $4cfc: $13
    add h                                         ; $4cfd: $84
    dec c                                         ; $4cfe: $0d
    add d                                         ; $4cff: $82
    ld e, $a8                                     ; $4d00: $1e $a8
    dec sp                                        ; $4d02: $3b
    and d                                         ; $4d03: $a2
    nop                                           ; $4d04: $00
    inc sp                                        ; $4d05: $33
    sub c                                         ; $4d06: $91

jr_0ac_4d07:
    ld de, $1b89                                  ; $4d07: $11 $89 $1b
    xor b                                         ; $4d0a: $a8

jr_0ac_4d0b:
    ld hl, sp-$64                                 ; $4d0b: $f8 $9c
    nop                                           ; $4d0d: $00
    add sp, $02                                   ; $4d0e: $e8 $02
    and h                                         ; $4d10: $a4
    ld d, l                                       ; $4d11: $55
    ld [c], a                                     ; $4d12: $e2
    or h                                          ; $4d13: $b4
    jp $0024                                      ; $4d14: $c3 $24 $00


    db $e3                                        ; $4d17: $e3
    jp nc, $d2c7                                  ; $4d18: $d2 $c7 $d2

    add $47                                       ; $4d1b: $c6 $47
    ld [hl], b                                    ; $4d1d: $70
    ld [hl], b                                    ; $4d1e: $70
    nop                                           ; $4d1f: $00
    ld h, a                                       ; $4d20: $67
    jr nc, jr_0ac_4d4a                            ; $4d21: $30 $27

    inc hl                                        ; $4d23: $23
    jr c, jr_0ac_4d29                             ; $4d24: $38 $03

    jr c, jr_0ac_4d0b                             ; $4d26: $38 $e3

    nop                                           ; $4d28: $00

jr_0ac_4d29:
    ld hl, sp-$1d                                 ; $4d29: $f8 $e3
    ld hl, sp+$08                                 ; $4d2b: $f8 $08
    inc b                                         ; $4d2d: $04
    ld a, [c]                                     ; $4d2e: $f2
    inc bc                                        ; $4d2f: $03
    db $f4                                        ; $4d30: $f4
    nop                                           ; $4d31: $00
    ld b, $e4                                     ; $4d32: $06 $e4
    inc b                                         ; $4d34: $04
    call nz, $c80c                                ; $4d35: $c4 $0c $c8
    jr jr_0ac_4d4a                                ; $4d38: $18 $10

    nop                                           ; $4d3a: $00
    add b                                         ; $4d3b: $80
    inc hl                                        ; $4d3c: $23
    ld hl, $6a2d                                  ; $4d3d: $21 $2d $6a
    ld [hl], e                                    ; $4d40: $73
    ld d, b                                       ; $4d41: $50
    cp a                                          ; $4d42: $bf
    nop                                           ; $4d43: $00
    rst $18                                       ; $4d44: $df
    rrca                                          ; $4d45: $0f
    ld l, a                                       ; $4d46: $6f
    ld [$7007], sp                                ; $4d47: $08 $07 $70

jr_0ac_4d4a:
    ld [hl], c                                    ; $4d4a: $71
    rrca                                          ; $4d4b: $0f
    nop                                           ; $4d4c: $00
    rst $28                                       ; $4d4d: $ef
    ld c, a                                       ; $4d4e: $4f
    pop bc                                        ; $4d4f: $c1
    inc d                                         ; $4d50: $14
    rra                                           ; $4d51: $1f
    ldh a, [$e6]                                  ; $4d52: $f0 $e6
    db $fc                                        ; $4d54: $fc
    nop                                           ; $4d55: $00
    ld a, [c]                                     ; $4d56: $f2
    ret nz                                        ; $4d57: $c0

    ld h, b                                       ; $4d58: $60
    call c, $c81c                                 ; $4d59: $dc $1c $c8
    jp c, Jump_000_00a4                           ; $4d5c: $da $a4 $00

    ld b, d                                       ; $4d5f: $42
    inc bc                                        ; $4d60: $03
    inc a                                         ; $4d61: $3c
    add l                                         ; $4d62: $85
    dec de                                        ; $4d63: $1b
    ld d, $7f                                     ; $4d64: $16 $7f
    xor $40                                       ; $4d66: $ee $40
    ld de, $0974                                  ; $4d68: $11 $74 $09
    rst $38                                       ; $4d6b: $ff
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    adc a                                         ; $4d6e: $8f
    ld a, a                                       ; $4d6f: $7f
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    ccf                                           ; $4d72: $3f
    add b                                         ; $4d73: $80
    ret                                           ; $4d74: $c9


    dec bc                                        ; $4d75: $0b
    ret                                           ; $4d76: $c9


    dec bc                                        ; $4d77: $0b
    add sp, $0b                                   ; $4d78: $e8 $0b
    ld [$03e4], sp                                ; $4d7a: $08 $e4 $03
    rlca                                          ; $4d7d: $07
    pop af                                        ; $4d7e: $f1
    ld [bc], a                                    ; $4d7f: $02
    nop                                           ; $4d80: $00
    rst $30                                       ; $4d81: $f7
    rlca                                          ; $4d82: $07
    or $00                                        ; $4d83: $f6 $00
    adc $a0                                       ; $4d85: $ce $a0
    adc [hl]                                      ; $4d87: $8e
    and b                                         ; $4d88: $a0
    adc h                                         ; $4d89: $8c
    and b                                         ; $4d8a: $a0
    sbc h                                         ; $4d8b: $9c
    add b                                         ; $4d8c: $80
    nop                                           ; $4d8d: $00
    sbc h                                         ; $4d8e: $9c
    add b                                         ; $4d8f: $80
    jr @+$42                                      ; $4d90: $18 $40

    jr jr_0ac_4de4                                ; $4d92: $18 $50

    jr c, @+$32                                   ; $4d94: $38 $30

    nop                                           ; $4d96: $00
    jr z, jr_0ac_4dbd                             ; $4d97: $28 $24

    ld hl, $236c                                  ; $4d99: $21 $6c $23
    ld l, b                                       ; $4d9c: $68
    ld b, [hl]                                    ; $4d9d: $46
    ld h, b                                       ; $4d9e: $60
    nop                                           ; $4d9f: $00
    ld c, h                                       ; $4da0: $4c
    nop                                           ; $4da1: $00

jr_0ac_4da2:
    ld a, b                                       ; $4da2: $78
    nop                                           ; $4da3: $00
    ld a, b                                       ; $4da4: $78
    ld a, c                                       ; $4da5: $79
    inc bc                                        ; $4da6: $03
    ld bc, $5c00                                  ; $4da7: $01 $00 $5c
    sub b                                         ; $4daa: $90
    ld hl, $47b0                                  ; $4dab: $21 $b0 $47
    ld b, b                                       ; $4dae: $40
    add b                                         ; $4daf: $80
    sbc a                                         ; $4db0: $9f
    nop                                           ; $4db1: $00
    ccf                                           ; $4db2: $3f
    nop                                           ; $4db3: $00
    ld c, c                                       ; $4db4: $49
    ld a, a                                       ; $4db5: $7f
    ld a, a                                       ; $4db6: $7f
    nop                                           ; $4db7: $00
    ld a, [hl]                                    ; $4db8: $7e
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    ld b, e                                       ; $4dbb: $43
    inc a                                         ; $4dbc: $3c

jr_0ac_4dbd:
    ld c, b                                       ; $4dbd: $48
    or a                                          ; $4dbe: $b7
    db $fc                                        ; $4dbf: $fc
    nop                                           ; $4dc0: $00
    pop hl                                        ; $4dc1: $e1
    ld bc, $9000                                  ; $4dc2: $01 $00 $90
    ld bc, $0328                                  ; $4dc5: $01 $28 $03
    jr jr_0ac_4de5                                ; $4dc8: $18 $1b

    jr nc, jr_0ac_4dfe                            ; $4dca: $30 $32

    nop                                           ; $4dcc: $00
    jp Jump_000_0007                              ; $4dcd: $c3 $07 $00


    ld [$c089], sp                                ; $4dd0: $08 $89 $c0
    ld c, [hl]                                    ; $4dd3: $4e
    ret nz                                        ; $4dd4: $c0

    nop                                           ; $4dd5: $00
    rra                                           ; $4dd6: $1f
    and l                                         ; $4dd7: $a5
    sbc c                                         ; $4dd8: $99
    and d                                         ; $4dd9: $a2
    add hl, de                                    ; $4dda: $19
    jr c, jr_0ac_4ded                             ; $4ddb: $38 $10

    add hl, de                                    ; $4ddd: $19
    ld [$7f08], sp                                ; $4dde: $08 $08 $7f
    rst $38                                       ; $4de1: $ff
    cp e                                          ; $4de2: $bb
    ld l, h                                       ; $4de3: $6c

jr_0ac_4de4:
    nop                                           ; $4de4: $00

jr_0ac_4de5:
    nop                                           ; $4de5: $00
    rlca                                          ; $4de6: $07
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    add e                                         ; $4de9: $83
    ldh [$85], a                                  ; $4dea: $e0 $85
    adc b                                         ; $4dec: $88

jr_0ac_4ded:
    add b                                         ; $4ded: $80
    sbc h                                         ; $4dee: $9c
    rlca                                          ; $4def: $07
    ld a, [c]                                     ; $4df0: $f2
    add b                                         ; $4df1: $80
    ld [bc], a                                    ; $4df2: $02
    nop                                           ; $4df3: $00
    ldh a, [rTAC]                                 ; $4df4: $f0 $07
    pop hl                                        ; $4df6: $e1
    rrca                                          ; $4df7: $0f
    add sp, $0f                                   ; $4df8: $e8 $0f
    ldh [rP1], a                                  ; $4dfa: $e0 $00
    inc bc                                        ; $4dfc: $03
    rrca                                          ; $4dfd: $0f

jr_0ac_4dfe:
    ld d, e                                       ; $4dfe: $53
    ld c, a                                       ; $4dff: $4f
    jr c, @+$29                                   ; $4e00: $38 $27

    jr nc, jr_0ac_4e33                            ; $4e02: $30 $2f

    nop                                           ; $4e04: $00
    ccf                                           ; $4e05: $3f
    ld c, a                                       ; $4e06: $4f
    ccf                                           ; $4e07: $3f
    ld c, a                                       ; $4e08: $4f
    ld a, a                                       ; $4e09: $7f
    rrca                                          ; $4e0a: $0f
    ccf                                           ; $4e0b: $3f
    sbc a                                         ; $4e0c: $9f
    ld b, b                                       ; $4e0d: $40
    ld h, b                                       ; $4e0e: $60
    ld l, l                                       ; $4e0f: $6d
    ld bc, $fc03                                  ; $4e10: $01 $03 $fc
    ld bc, $0002                                  ; $4e13: $01 $02 $00
    ld bc, $0130                                  ; $4e16: $01 $30 $01
    nop                                           ; $4e19: $00
    inc b                                         ; $4e1a: $04
    db $10                                        ; $4e1b: $10
    dec e                                         ; $4e1c: $1d
    ld [bc], a                                    ; $4e1d: $02
    ccf                                           ; $4e1e: $3f
    add a                                         ; $4e1f: $87
    jr nc, jr_0ac_4da2                            ; $4e20: $30 $80

    nop                                           ; $4e22: $00
    ld [hl-], a                                   ; $4e23: $32
    add d                                         ; $4e24: $82
    ld [hl+], a                                   ; $4e25: $22
    add [hl]                                      ; $4e26: $86
    ld [bc], a                                    ; $4e27: $02
    add $06                                       ; $4e28: $c6 $06
    ret nz                                        ; $4e2a: $c0

    nop                                           ; $4e2b: $00
    add [hl]                                      ; $4e2c: $86
    ret nz                                        ; $4e2d: $c0

    db $e4                                        ; $4e2e: $e4
    jp nz, Jump_000_0210                          ; $4e2f: $c2 $10 $02

    ld h, b                                       ; $4e32: $60

jr_0ac_4e33:
    ld h, [hl]                                    ; $4e33: $66
    nop                                           ; $4e34: $00
    ld d, b                                       ; $4e35: $50
    ld b, $a6                                     ; $4e36: $06 $a6
    sub h                                         ; $4e38: $94
    ld b, h                                       ; $4e39: $44
    ld [hl], $06                                  ; $4e3a: $36 $06
    ld [hl], h                                    ; $4e3c: $74
    nop                                           ; $4e3d: $00
    ld b, $14                                     ; $4e3e: $06 $14
    ld b, d                                       ; $4e40: $42
    ld b, $40                                     ; $4e41: $06 $40
    add b                                         ; $4e43: $80
    ld h, $e6                                     ; $4e44: $26 $e6
    nop                                           ; $4e46: $00
    add [hl]                                      ; $4e47: $86
    ld b, e                                       ; $4e48: $43
    ld e, $1f                                     ; $4e49: $1e $1f
    ld [$4100], sp                                ; $4e4b: $08 $00 $41
    add c                                         ; $4e4e: $81
    nop                                           ; $4e4f: $00
    inc b                                         ; $4e50: $04
    ld hl, sp+$18                                 ; $4e51: $f8 $18
    add sp, -$3e                                  ; $4e53: $e8 $c2
    ret nz                                        ; $4e55: $c0

    ld e, b                                       ; $4e56: $58
    ret nz                                        ; $4e57: $c0

    nop                                           ; $4e58: $00
    ld e, b                                       ; $4e59: $58
    ld b, b                                       ; $4e5a: $40
    ld b, b                                       ; $4e5b: $40
    ld b, e                                       ; $4e5c: $43
    and a                                         ; $4e5d: $a7
    ldh [$a3], a                                  ; $4e5e: $e0 $a3
    ldh [rP1], a                                  ; $4e60: $e0 $00
    ld h, b                                       ; $4e62: $60
    jr c, @-$1e                                   ; $4e63: $38 $e0

    or b                                          ; $4e65: $b0
    jr jr_0ac_4eaf                                ; $4e66: $18 $47

    ret c                                         ; $4e68: $d8

    rst $00                                       ; $4e69: $c7
    jr nz, jr_0ac_4ec4                            ; $4e6a: $20 $58

    ld b, a                                       ; $4e6c: $47
    ld [bc], a                                    ; $4e6d: $02
    ld [$435c], sp                                ; $4e6e: $08 $5c $43
    ld c, h                                       ; $4e71: $4c
    ld b, e                                       ; $4e72: $43
    ld l, h                                       ; $4e73: $6c
    rla                                           ; $4e74: $17
    ld h, e                                       ; $4e75: $63
    add b                                         ; $4e76: $80
    ld b, b                                       ; $4e77: $40
    ld [bc], a                                    ; $4e78: $02
    jr nz, @-$3e                                  ; $4e79: $20 $c0

    ld b, $18                                     ; $4e7b: $06 $18
    ld b, b                                       ; $4e7d: $40
    ld [hl-], a                                   ; $4e7e: $32
    ld c, c                                       ; $4e7f: $49
    ld [hl+], a                                   ; $4e80: $22
    nop                                           ; $4e81: $00

Jump_0ac_4e82:
    ld h, h                                       ; $4e82: $64
    ld [c], a                                     ; $4e83: $e2
    dec c                                         ; $4e84: $0d
    ld l, e                                       ; $4e85: $6b
    ld b, l                                       ; $4e86: $45
    inc sp                                        ; $4e87: $33
    ld [hl], b                                    ; $4e88: $70
    ld [hl], b                                    ; $4e89: $70
    nop                                           ; $4e8a: $00
    ld a, h                                       ; $4e8b: $7c
    rra                                           ; $4e8c: $1f
    add hl, sp                                    ; $4e8d: $39
    rlca                                          ; $4e8e: $07
    add hl, sp                                    ; $4e8f: $39
    rlca                                          ; $4e90: $07
    nop                                           ; $4e91: $00

jr_0ac_4e92:
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    ld b, d                                       ; $4e94: $42
    ld b, $03                                     ; $4e95: $06 $03
    ld [de], a                                    ; $4e97: $12
    inc bc                                        ; $4e98: $03
    jr nc, jr_0ac_4e9b                            ; $4e99: $30 $00

jr_0ac_4e9b:
    nop                                           ; $4e9b: $00
    nop                                           ; $4e9c: $00
    rst $08                                       ; $4e9d: $cf
    ldh a, [$f0]                                  ; $4e9e: $f0 $f0
    jr jr_0ac_4e92                                ; $4ea0: $18 $f0

    jr jr_0ac_4ea4                                ; $4ea2: $18 $00

jr_0ac_4ea4:
    nop                                           ; $4ea4: $00
    inc b                                         ; $4ea5: $04
    add c                                         ; $4ea6: $81
    inc bc                                        ; $4ea7: $03
    ld bc, $610f                                  ; $4ea8: $01 $0f $61
    jr jr_0ac_4ead                                ; $4eab: $18 $00

jr_0ac_4ead:
    ld a, a                                       ; $4ead: $7f
    ld b, c                                       ; $4eae: $41

jr_0ac_4eaf:
    nop                                           ; $4eaf: $00
    ld h, e                                       ; $4eb0: $63
    and d                                         ; $4eb1: $a2
    cp [hl]                                       ; $4eb2: $be
    pop bc                                        ; $4eb3: $c1
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    daa                                           ; $4eb6: $27
    ld h, b                                       ; $4eb7: $60
    ld [$6023], sp                                ; $4eb8: $08 $23 $60
    ld e, b                                       ; $4ebb: $58
    ld b, c                                       ; $4ebc: $41
    xor a                                         ; $4ebd: $af
    nop                                           ; $4ebe: $00
    ld b, $07                                     ; $4ebf: $06 $07
    ld a, e                                       ; $4ec1: $7b
    ld b, b                                       ; $4ec2: $40
    ei                                            ; $4ec3: $fb

jr_0ac_4ec4:
    jr nc, jr_0ac_4ec6                            ; $4ec4: $30 $00

jr_0ac_4ec6:
    ld l, $21                                     ; $4ec6: $2e $21
    and [hl]                                      ; $4ec8: $a6
    and c                                         ; $4ec9: $a1
    ld l, a                                       ; $4eca: $6f
    jp hl                                         ; $4ecb: $e9


    nop                                           ; $4ecc: $00
    rrca                                          ; $4ecd: $0f
    rrca                                          ; $4ece: $0f
    ld c, $fc                                     ; $4ecf: $0e $fc
    inc a                                         ; $4ed1: $3c
    ldh a, [$3c]                                  ; $4ed2: $f0 $3c
    ldh a, [rTMA]                                 ; $4ed4: $f0 $06
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    ret nz                                        ; $4ed8: $c0

    nop                                           ; $4ed9: $00
    add b                                         ; $4eda: $80
    ld [bc], a                                    ; $4edb: $02
    nop                                           ; $4edc: $00
    ld h, [hl]                                    ; $4edd: $66
    jr c, jr_0ac_4ef0                             ; $4ede: $38 $10

jr_0ac_4ee0:
    inc bc                                        ; $4ee0: $03
    add $02                                       ; $4ee1: $c6 $02
    nop                                           ; $4ee3: $00
    ld bc, $0700                                  ; $4ee4: $01 $00 $07
    ld b, $08                                     ; $4ee7: $06 $08
    rrca                                          ; $4ee9: $0f
    rlca                                          ; $4eea: $07
    rra                                           ; $4eeb: $1f
    nop                                           ; $4eec: $00
    add hl, de                                    ; $4eed: $19
    ld a, $34                                     ; $4eee: $3e $34

jr_0ac_4ef0:
    dec hl                                        ; $4ef0: $2b
    ld [hl], b                                    ; $4ef1: $70
    ld l, a                                       ; $4ef2: $6f
    ld h, e                                       ; $4ef3: $63
    ld e, l                                       ; $4ef4: $5d
    nop                                           ; $4ef5: $00
    ldh a, [rP1]                                  ; $4ef6: $f0 $00
    adc h                                         ; $4ef8: $8c
    inc a                                         ; $4ef9: $3c
    rst $38                                       ; $4efa: $ff
    inc bc                                        ; $4efb: $03
    ld b, $fe                                     ; $4efc: $06 $fe
    nop                                           ; $4efe: $00
    db $fd                                        ; $4eff: $fd
    inc bc                                        ; $4f00: $03
    ld a, [$fc19]                                 ; $4f01: $fa $19 $fc
    inc bc                                        ; $4f04: $03
    jp Jump_0ac_4002                              ; $4f05: $c3 $02 $40


    nop                                           ; $4f08: $00
    ld bc, $e000                                  ; $4f09: $01 $00 $e0
    nop                                           ; $4f0c: $00
    ldh a, [rNR10]                                ; $4f0d: $f0 $10
    ld a, $cf                                     ; $4f0f: $3e $cf
    nop                                           ; $4f11: $00
    ld hl, sp-$02                                 ; $4f12: $f8 $fe
    ld l, h                                       ; $4f14: $6c
    adc a                                         ; $4f15: $8f
    ld sp, hl                                     ; $4f16: $f9
    dec de                                        ; $4f17: $1b
    nop                                           ; $4f18: $00
    rst $20                                       ; $4f19: $e7
    nop                                           ; $4f1a: $00
    jr jr_0ac_4ee0                                ; $4f1b: $18 $c3

    inc a                                         ; $4f1d: $3c
    add c                                         ; $4f1e: $81
    ld h, [hl]                                    ; $4f1f: $66
    nop                                           ; $4f20: $00
    jp $0218                                      ; $4f21: $c3 $18 $02


    nop                                           ; $4f24: $00
    inc a                                         ; $4f25: $3c
    add b                                         ; $4f26: $80
    inc bc                                        ; $4f27: $03
    db $fc                                        ; $4f28: $fc
    inc a                                         ; $4f29: $3c
    jr nz, @+$0a                                  ; $4f2a: $20 $08

    rst $38                                       ; $4f2c: $ff
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    ld a, a                                       ; $4f2f: $7f
    nop                                           ; $4f30: $00
    add b                                         ; $4f31: $80
    ccf                                           ; $4f32: $3f
    jp Jump_0ac_601f                              ; $4f33: $c3 $1f $60


    nop                                           ; $4f36: $00
    ld bc, $81b8                                  ; $4f37: $01 $b8 $81
    nop                                           ; $4f3a: $00
    nop                                           ; $4f3b: $00
    ld [bc], a                                    ; $4f3c: $02
    dec c                                         ; $4f3d: $0d
    rrca                                          ; $4f3e: $0f
    nop                                           ; $4f3f: $00
    ld b, $0e                                     ; $4f40: $06 $0e
    ld bc, $0107                                  ; $4f42: $01 $07 $01
    add [hl]                                      ; $4f45: $86
    add c                                         ; $4f46: $81
    ld b, $00                                     ; $4f47: $06 $00
    add e                                         ; $4f49: $83
    ld b, [hl]                                    ; $4f4a: $46
    pop bc                                        ; $4f4b: $c1
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    add b                                         ; $4f4e: $80
    nop                                           ; $4f4f: $00
    add b                                         ; $4f50: $80
    nop                                           ; $4f51: $00
    add b                                         ; $4f52: $80
    ld b, b                                       ; $4f53: $40
    add b                                         ; $4f54: $80
    ccf                                           ; $4f55: $3f
    cp a                                          ; $4f56: $bf
    rst $38                                       ; $4f57: $ff
    ld a, a                                       ; $4f58: $7f
    ld b, b                                       ; $4f59: $40
    nop                                           ; $4f5a: $00
    ld a, a                                       ; $4f5b: $7f
    add b                                         ; $4f5c: $80
    ccf                                           ; $4f5d: $3f
    ld h, b                                       ; $4f5e: $60
    ld e, a                                       ; $4f5f: $5f
    rrca                                          ; $4f60: $0f
    scf                                           ; $4f61: $37
    rrca                                          ; $4f62: $0f
    nop                                           ; $4f63: $00
    ld [hl], a                                    ; $4f64: $77
    inc a                                         ; $4f65: $3c
    ccf                                           ; $4f66: $3f
    rra                                           ; $4f67: $1f
    rrca                                          ; $4f68: $0f
    ccf                                           ; $4f69: $3f
    ld c, a                                       ; $4f6a: $4f
    rlca                                          ; $4f6b: $07
    nop                                           ; $4f6c: $00
    ld a, b                                       ; $4f6d: $78
    add hl, de                                    ; $4f6e: $19
    rrca                                          ; $4f6f: $0f
    inc bc                                        ; $4f70: $03
    db $fd                                        ; $4f71: $fd
    and $9a                                       ; $4f72: $e6 $9a
    ld a, h                                       ; $4f74: $7c
    nop                                           ; $4f75: $00
    ld b, h                                       ; $4f76: $44
    db $fc                                        ; $4f77: $fc
    ei                                            ; $4f78: $fb
    nop                                           ; $4f79: $00
    db $fc                                        ; $4f7a: $fc
    rra                                           ; $4f7b: $1f
    ldh [$fc], a                                  ; $4f7c: $e0 $fc
    nop                                           ; $4f7e: $00
    inc c                                         ; $4f7f: $0c
    ld a, b                                       ; $4f80: $78
    jr nz, jr_0ac_4f89                            ; $4f81: $20 $06

    rrca                                          ; $4f83: $0f
    inc e                                         ; $4f84: $1c
    db $e4                                        ; $4f85: $e4
    db $fc                                        ; $4f86: $fc
    nop                                           ; $4f87: $00
    inc bc                                        ; $4f88: $03

jr_0ac_4f89:
    db $fc                                        ; $4f89: $fc
    ld d, a                                       ; $4f8a: $57
    nop                                           ; $4f8b: $00
    nop                                           ; $4f8c: $00
    rra                                           ; $4f8d: $1f
    ldh [$80], a                                  ; $4f8e: $e0 $80
    nop                                           ; $4f90: $00
    add b                                         ; $4f91: $80
    ld e, $11                                     ; $4f92: $1e $11
    ld [hl], b                                    ; $4f94: $70
    ld a, a                                       ; $4f95: $7f
    jr jr_0ac_4fae                                ; $4f96: $18 $16

    ret nz                                        ; $4f98: $c0

    nop                                           ; $4f99: $00
    and $e0                                       ; $4f9a: $e6 $e0
    inc hl                                        ; $4f9c: $23
    rst $38                                       ; $4f9d: $ff
    nop                                           ; $4f9e: $00
    db $ec                                        ; $4f9f: $ec
    cp $00                                        ; $4fa0: $fe $00
    nop                                           ; $4fa2: $00
    nop                                           ; $4fa3: $00
    rst $28                                       ; $4fa4: $ef
    ldh a, [$0d]                                  ; $4fa5: $f0 $0d
    ld bc, $1107                                  ; $4fa7: $01 $07 $11
    add d                                         ; $4faa: $82
    nop                                           ; $4fab: $00
    cp b                                          ; $4fac: $b8
    add b                                         ; $4fad: $80

jr_0ac_4fae:
    cp h                                          ; $4fae: $bc
    rst $38                                       ; $4faf: $ff
    ldh [rSB], a                                  ; $4fb0: $e0 $01
    ret nz                                        ; $4fb2: $c0

    inc e                                         ; $4fb3: $1c
    nop                                           ; $4fb4: $00
    nop                                           ; $4fb5: $00
    cpl                                           ; $4fb6: $2f
    pop hl                                        ; $4fb7: $e1
    ld b, $c5                                     ; $4fb8: $06 $c5
    add [hl]                                      ; $4fba: $86
    rst $00                                       ; $4fbb: $c7
    add $00                                       ; $4fbc: $c6 $00
    ld b, e                                       ; $4fbe: $43
    and [hl]                                      ; $4fbf: $a6
    ld h, d                                       ; $4fc0: $62
    ld h, [hl]                                    ; $4fc1: $66
    ld [hl+], a                                   ; $4fc2: $22
    ld a, [hl]                                    ; $4fc3: $7e
    or d                                          ; $4fc4: $b2
    ld a, [hl]                                    ; $4fc5: $7e
    nop                                           ; $4fc6: $00
    ret z                                         ; $4fc7: $c8

    ld a, [hl]                                    ; $4fc8: $7e
    call z, Call_0ac_7fff                         ; $4fc9: $cc $ff $7f
    ld a, e                                       ; $4fcc: $7b
    ld a, a                                       ; $4fcd: $7f
    ld bc, $0400                                  ; $4fce: $01 $00 $04
    inc hl                                        ; $4fd1: $23
    dec c                                         ; $4fd2: $0d
    ld c, d                                       ; $4fd3: $4a
    ld a, [hl-]                                   ; $4fd4: $3a
    ld e, h                                       ; $4fd5: $5c
    ld [hl], h                                    ; $4fd6: $74
    ld e, b                                       ; $4fd7: $58
    nop                                           ; $4fd8: $00
    ldh [$60], a                                  ; $4fd9: $e0 $60
    sub b                                         ; $4fdb: $90
    ld c, $07                                     ; $4fdc: $0e $07
    ldh a, [$f3]                                  ; $4fde: $f0 $f3
    add sp, $00                                   ; $4fe0: $e8 $00
    ldh [$d0], a                                  ; $4fe2: $e0 $d0
    rst $08                                       ; $4fe4: $cf
    jr nz, jr_0ac_5006                            ; $4fe5: $20 $1f

    ld l, [hl]                                    ; $4fe7: $6e
    ld c, $60                                     ; $4fe8: $0e $60
    nop                                           ; $4fea: $00
    rrca                                          ; $4feb: $0f
    and b                                         ; $4fec: $a0
    adc a                                         ; $4fed: $8f
    ldh [$c1], a                                  ; $4fee: $e0 $c1
    inc bc                                        ; $4ff0: $03
    rlca                                          ; $4ff1: $07
    ld h, $00                                     ; $4ff2: $26 $00
    inc sp                                        ; $4ff4: $33
    ld d, a                                       ; $4ff5: $57
    add hl, sp                                    ; $4ff6: $39
    halt                                          ; $4ff7: $76
    add hl, de                                    ; $4ff8: $19
    jr c, jr_0ac_5052                             ; $4ff9: $38 $57

    ld a, h                                       ; $4ffb: $7c
    nop                                           ; $4ffc: $00
    dec de                                        ; $4ffd: $1b
    ld c, e                                       ; $4ffe: $4b
    ld c, h                                       ; $4fff: $4c
    add b                                         ; $5000: $80
    ld a, a                                       ; $5001: $7f
    adc a                                         ; $5002: $8f
    jr jr_0ac_505d                                ; $5003: $18 $58

    nop                                           ; $5005: $00

jr_0ac_5006:
    rst $38                                       ; $5006: $ff
    rra                                           ; $5007: $1f
    ld a, a                                       ; $5008: $7f
    ccf                                           ; $5009: $3f
    nop                                           ; $500a: $00
    rst $38                                       ; $500b: $ff
    ccf                                           ; $500c: $3f

jr_0ac_500d:
    ret nz                                        ; $500d: $c0

    nop                                           ; $500e: $00
    ld l, e                                       ; $500f: $6b
    and e                                         ; $5010: $a3
    ld l, e                                       ; $5011: $6b
    rst $38                                       ; $5012: $ff
    cp $e7                                        ; $5013: $fe $e7
    rst $30                                       ; $5015: $f7
    call nc, $d300                                ; $5016: $d4 $00 $d3
    ld l, b                                       ; $5019: $68
    ld h, [hl]                                    ; $501a: $66
    adc $16                                       ; $501b: $ce $16
    ld a, h                                       ; $501d: $7c
    cp a                                          ; $501e: $bf
    jr jr_0ac_5021                                ; $501f: $18 $00

jr_0ac_5021:
    inc a                                         ; $5021: $3c
    reti                                          ; $5022: $d9


    ret c                                         ; $5023: $d8

    pop bc                                        ; $5024: $c1
    and b                                         ; $5025: $a0
    ret nz                                        ; $5026: $c0

    rst $00                                       ; $5027: $c7
    scf                                           ; $5028: $37
    nop                                           ; $5029: $00
    jr nc, @+$75                                  ; $502a: $30 $73

    ld hl, sp+$00                                 ; $502c: $f8 $00
    inc bc                                        ; $502e: $03
    ldh a, [rPCM34]                               ; $502f: $f0 $77
    ret c                                         ; $5031: $d8

    nop                                           ; $5032: $00
    rst $28                                       ; $5033: $ef
    ld a, b                                       ; $5034: $78
    cpl                                           ; $5035: $2f
    dec sp                                        ; $5036: $3b
    ld [hl-], a                                   ; $5037: $32
    ld a, [hl-]                                   ; $5038: $3a
    cp d                                          ; $5039: $ba
    dec sp                                        ; $503a: $3b
    add b                                         ; $503b: $80
    ld [bc], a                                    ; $503c: $02
    nop                                           ; $503d: $00
    ld c, $c2                                     ; $503e: $0e $c2
    inc e                                         ; $5040: $1c
    push de                                       ; $5041: $d5
    jp $c0c8                                      ; $5042: $c3 $c8 $c0


    nop                                           ; $5045: $00
    ld a, a                                       ; $5046: $7f
    rst $08                                       ; $5047: $cf
    cpl                                           ; $5048: $2f
    xor a                                         ; $5049: $af
    ld c, a                                       ; $504a: $4f
    jr nc, jr_0ac_500d                            ; $504b: $30 $c0

    sbc b                                         ; $504d: $98
    nop                                           ; $504e: $00
    add b                                         ; $504f: $80
    inc c                                         ; $5050: $0c
    ld h, b                                       ; $5051: $60

jr_0ac_5052:
    ld b, $10                                     ; $5052: $06 $10
    ld b, $e0                                     ; $5054: $06 $e0
    add l                                         ; $5056: $85
    nop                                           ; $5057: $00
    pop af                                        ; $5058: $f1
    and b                                         ; $5059: $a0
    adc a                                         ; $505a: $8f
    or b                                          ; $505b: $b0
    add a                                         ; $505c: $87

jr_0ac_505d:
    ret nc                                        ; $505d: $d0

    add $10                                       ; $505e: $c6 $10
    nop                                           ; $5060: $00
    dec d                                         ; $5061: $15
    add hl, de                                    ; $5062: $19
    jr jr_0ac_506f                                ; $5063: $18 $0a

    add sp, $08                                   ; $5065: $e8 $08
    add sp, $0b                                   ; $5067: $e8 $0b
    nop                                           ; $5069: $00
    db $e3                                        ; $506a: $e3
    add hl, de                                    ; $506b: $19

jr_0ac_506c:
    sbc [hl]                                      ; $506c: $9e
    ld h, e                                       ; $506d: $63
    dec de                                        ; $506e: $1b

jr_0ac_506f:
    add c                                         ; $506f: $81
    ld [hl], l                                    ; $5070: $75
    ld b, b                                       ; $5071: $40
    nop                                           ; $5072: $00
    xor [hl]                                      ; $5073: $ae
    adc d                                         ; $5074: $8a
    rra                                           ; $5075: $1f
    db $d3                                        ; $5076: $d3
    ld c, h                                       ; $5077: $4c
    ld [hl], l                                    ; $5078: $75
    inc c                                         ; $5079: $0c
    rla                                           ; $507a: $17
    jr nz, jr_0ac_508b                            ; $507b: $20 $0e

    ret nz                                        ; $507d: $c0

    ld l, c                                       ; $507e: $69
    nop                                           ; $507f: $00
    adc $c0                                       ; $5080: $ce $c0
    or b                                          ; $5082: $b0
    add c                                         ; $5083: $81
    ld l, a                                       ; $5084: $6f
    nop                                           ; $5085: $00
    ldh [$e4], a                                  ; $5086: $e0 $e4
    inc bc                                        ; $5088: $03
    cp b                                          ; $5089: $b8
    ret nz                                        ; $508a: $c0

jr_0ac_508b:
    add b                                         ; $508b: $80
    ld h, h                                       ; $508c: $64
    ld a, b                                       ; $508d: $78
    nop                                           ; $508e: $00
    ld a, [de]                                    ; $508f: $1a
    db $fc                                        ; $5090: $fc
    ld hl, sp+$11                                 ; $5091: $f8 $11
    ld c, $e0                                     ; $5093: $0e $e0
    and d                                         ; $5095: $a2
    db $e4                                        ; $5096: $e4
    nop                                           ; $5097: $00
    dec d                                         ; $5098: $15
    di                                            ; $5099: $f3
    ld [$88fb], sp                                ; $509a: $08 $fb $88
    ld hl, $c02d                                  ; $509d: $21 $2d $c0
    nop                                           ; $50a0: $00
    sub a                                         ; $50a1: $97
    ld [$330f], sp                                ; $50a2: $08 $0f $33
    ld b, e                                       ; $50a5: $43
    jr nc, jr_0ac_506c                            ; $50a6: $30 $c4

    db $f4                                        ; $50a8: $f4
    nop                                           ; $50a9: $00
    ld de, $18fc                                  ; $50aa: $11 $fc $18
    call c, $bc11                                 ; $50ad: $dc $11 $bc
    or l                                          ; $50b0: $b5
    ld a, [de]                                    ; $50b1: $1a
    nop                                           ; $50b2: $00
    jp $eb29                                      ; $50b3: $c3 $29 $eb


    inc c                                         ; $50b6: $0c
    db $eb                                        ; $50b7: $eb
    inc c                                         ; $50b8: $0c
    rst $30                                       ; $50b9: $f7
    add b                                         ; $50ba: $80
    nop                                           ; $50bb: $00
    ld [hl], a                                    ; $50bc: $77
    ldh [$9f], a                                  ; $50bd: $e0 $9f
    daa                                           ; $50bf: $27
    ld h, b                                       ; $50c0: $60
    add c                                         ; $50c1: $81
    sbc b                                         ; $50c2: $98
    dec b                                         ; $50c3: $05

jr_0ac_50c4:
    nop                                           ; $50c4: $00
    pop af                                        ; $50c5: $f1
    dec c                                         ; $50c6: $0d
    pop hl                                        ; $50c7: $e1
    dec bc                                        ; $50c8: $0b
    db $e3                                        ; $50c9: $e3
    dec bc                                        ; $50ca: $0b
    db $e3                                        ; $50cb: $e3
    dec de                                        ; $50cc: $1b
    db $10                                        ; $50cd: $10
    jp $c717                                      ; $50ce: $c3 $17 $c7


    ld [bc], a                                    ; $50d1: $02
    ld [$e30f], sp                                ; $50d2: $08 $0f $e3
    db $f4                                        ; $50d5: $f4
    pop af                                        ; $50d6: $f1
    nop                                           ; $50d7: $00
    db $f4                                        ; $50d8: $f4
    pop af                                        ; $50d9: $f1
    ld b, $f0                                     ; $50da: $06 $f0
    ld [bc], a                                    ; $50dc: $02
    ld hl, sp+$02                                 ; $50dd: $f8 $02
    ld hl, sp+$00                                 ; $50df: $f8 $00
    inc bc                                        ; $50e1: $03
    ld hl, sp+$01                                 ; $50e2: $f8 $01
    db $fc                                        ; $50e4: $fc
    rrca                                          ; $50e5: $0f
    nop                                           ; $50e6: $00
    ldh a, [$72]                                  ; $50e7: $f0 $72
    nop                                           ; $50e9: $00
    db $fc                                        ; $50ea: $fc
    inc e                                         ; $50eb: $1c
    ldh [$90], a                                  ; $50ec: $e0 $90
    ldh a, [$c8]                                  ; $50ee: $f0 $c8
    rlca                                          ; $50f0: $07
    ld a, e                                       ; $50f1: $7b
    nop                                           ; $50f2: $00
    ld a, e                                       ; $50f3: $7b
    ld h, l                                       ; $50f4: $65
    ld a, b                                       ; $50f5: $78
    rra                                           ; $50f6: $1f
    sbc l                                         ; $50f7: $9d
    ld e, d                                       ; $50f8: $5a
    sub b                                         ; $50f9: $90
    rst $28                                       ; $50fa: $ef
    nop                                           ; $50fb: $00
    inc d                                         ; $50fc: $14
    ld l, a                                       ; $50fd: $6f
    nop                                           ; $50fe: $00
    jr jr_0ac_50c4                                ; $50ff: $18 $c3

    pop bc                                        ; $5101: $c1
    rra                                           ; $5102: $1f
    call nz, Call_000_0f00                        ; $5103: $c4 $00 $0f
    and $ec                                       ; $5106: $e6 $ec
    db $e3                                        ; $5108: $e3
    nop                                           ; $5109: $00
    or e                                          ; $510a: $b3
    ld c, $b2                                     ; $510b: $0e $b2
    nop                                           ; $510d: $00
    inc a                                         ; $510e: $3c
    ld [hl-], a                                   ; $510f: $32
    cp [hl]                                       ; $5110: $be
    or b                                          ; $5111: $b0
    jr nc, jr_0ac_5122                            ; $5112: $30 $0e

    sbc e                                         ; $5114: $9b
    add [hl]                                      ; $5115: $86
    nop                                           ; $5116: $00
    ret nz                                        ; $5117: $c0

    ld bc, $9374                                  ; $5118: $01 $74 $93
    ld h, c                                       ; $511b: $61
    add hl, bc                                    ; $511c: $09
    ld h, c                                       ; $511d: $61
    ld de, $8100                                  ; $511e: $11 $00 $81
    adc [hl]                                      ; $5121: $8e

jr_0ac_5122:
    pop bc                                        ; $5122: $c1
    add $67                                       ; $5123: $c6 $67
    add a                                         ; $5125: $87
    ld h, a                                       ; $5126: $67
    add a                                         ; $5127: $87
    nop                                           ; $5128: $00
    and b                                         ; $5129: $a0
    ret nc                                        ; $512a: $d0

    and b                                         ; $512b: $a0
    ret nc                                        ; $512c: $d0

    inc c                                         ; $512d: $0c
    ldh [rTAC], a                                 ; $512e: $e0 $07
    pop af                                        ; $5130: $f1
    nop                                           ; $5131: $00
    dec sp                                        ; $5132: $3b
    jr c, @+$25                                   ; $5133: $38 $23

    jr z, @+$09                                   ; $5135: $28 $07

    db $e4                                        ; $5137: $e4
    rlca                                          ; $5138: $07
    ldh [rP1], a                                  ; $5139: $e0 $00
    ld c, $e6                                     ; $513b: $0e $e6
    ld c, $ce                                     ; $513d: $0e $ce
    or b                                          ; $513f: $b0
    add a                                         ; $5140: $87
    jr nz, @+$11                                  ; $5141: $20 $0f

    nop                                           ; $5143: $00
    cpl                                           ; $5144: $2f
    adc a                                         ; $5145: $8f
    ld l, a                                       ; $5146: $6f
    rrca                                          ; $5147: $0f
    ld b, b                                       ; $5148: $40
    rra                                           ; $5149: $1f
    ld b, b                                       ; $514a: $40
    rra                                           ; $514b: $1f
    nop                                           ; $514c: $00
    ret nz                                        ; $514d: $c0

    rra                                           ; $514e: $1f
    add b                                         ; $514f: $80
    ccf                                           ; $5150: $3f
    ld bc, $01fc                                  ; $5151: $01 $fc $01
    db $fc                                        ; $5154: $fc
    ld a, [bc]                                    ; $5155: $0a
    nop                                           ; $5156: $00
    cp $fe                                        ; $5157: $fe $fe
    nop                                           ; $5159: $00
    ld [bc], a                                    ; $515a: $02
    ld [$1dff], sp                                ; $515b: $08 $ff $1d
    ld [bc], a                                    ; $515e: $02
    ld a, h                                       ; $515f: $7c
    nop                                           ; $5160: $00
    rlca                                          ; $5161: $07
    add a                                         ; $5162: $87
    scf                                           ; $5163: $37
    adc a                                         ; $5164: $8f
    cpl                                           ; $5165: $2f
    or h                                          ; $5166: $b4
    scf                                           ; $5167: $37
    and h                                         ; $5168: $a4
    nop                                           ; $5169: $00
    scf                                           ; $516a: $37
    ret nc                                        ; $516b: $d0

    rra                                           ; $516c: $1f
    ld e, b                                       ; $516d: $58
    rra                                           ; $516e: $1f
    ld d, b                                       ; $516f: $50
    inc de                                        ; $5170: $13
    db $e4                                        ; $5171: $e4
    nop                                           ; $5172: $00
    db $e3                                        ; $5173: $e3
    and $e1                                       ; $5174: $e6 $e1
    ld [c], a                                     ; $5176: $e2
    pop hl                                        ; $5177: $e1
    dec de                                        ; $5178: $1b
    ld hl, sp+$09                                 ; $5179: $f8 $09
    nop                                           ; $517b: $00
    ld hl, sp-$08                                 ; $517c: $f8 $f8
    add hl, bc                                    ; $517e: $09
    db $fc                                        ; $517f: $fc
    inc c                                         ; $5180: $0c
    ldh a, [$8c]                                  ; $5181: $f0 $8c
    rst $00                                       ; $5183: $c7
    nop                                           ; $5184: $00
    or e                                          ; $5185: $b3
    ld [c], a                                     ; $5186: $e2
    sbc $e0                                       ; $5187: $de $e0
    jp c, $ecf0                                   ; $5189: $da $f0 $ec

    adc h                                         ; $518c: $8c
    nop                                           ; $518d: $00
    ld a, l                                       ; $518e: $7d
    push bc                                       ; $518f: $c5
    add hl, sp                                    ; $5190: $39
    ld a, h                                       ; $5191: $7c
    sbc b                                         ; $5192: $98
    inc a                                         ; $5193: $3c
    jp c, $00e0                                   ; $5194: $da $e0 $00

    cp b                                          ; $5197: $b8
    ldh a, [$e8]                                  ; $5198: $f0 $e8
    ret c                                         ; $519a: $d8

    or b                                          ; $519b: $b0
    call c, Call_0ac_78e0                         ; $519c: $dc $e0 $78
    db $10                                        ; $519f: $10
    ld [hl], h                                    ; $51a0: $74
    ld hl, sp-$0c                                 ; $51a1: $f8 $f4
    ld [bc], a                                    ; $51a3: $02
    nop                                           ; $51a4: $00
    ld [hl], h                                    ; $51a5: $74
    cp $e0                                        ; $51a6: $fe $e0
    db $fc                                        ; $51a8: $fc
    nop                                           ; $51a9: $00
    ld sp, hl                                     ; $51aa: $f9
    pop hl                                        ; $51ab: $e1
    db $e4                                        ; $51ac: $e4
    pop af                                        ; $51ad: $f1
    db $f4                                        ; $51ae: $f4
    pop hl                                        ; $51af: $e1
    db $e4                                        ; $51b0: $e4
    ld h, e                                       ; $51b1: $63
    nop                                           ; $51b2: $00
    ld l, b                                       ; $51b3: $68
    ld a, [c]                                     ; $51b4: $f2
    ld hl, sp-$0e                                 ; $51b5: $f8 $f2
    ld hl, sp-$80                                 ; $51b7: $f8 $80
    ccf                                           ; $51b9: $3f
    add b                                         ; $51ba: $80
    jr c, jr_0ac_51fc                             ; $51bb: $38 $3f

    ld a, a                                       ; $51bd: $7f
    ld d, b                                       ; $51be: $50
    ld [bc], a                                    ; $51bf: $02
    inc b                                         ; $51c0: $04
    ld [$8801], sp                                ; $51c1: $08 $01 $88
    ld l, b                                       ; $51c4: $68
    add hl, bc                                    ; $51c5: $09
    inc hl                                        ; $51c6: $23
    nop                                           ; $51c7: $00
    rrca                                          ; $51c8: $0f
    ld hl, $b00f                                  ; $51c9: $21 $0f $b0
    add [hl]                                      ; $51cc: $86
    ret nc                                        ; $51cd: $d0

    ret nz                                        ; $51ce: $c0

    rra                                           ; $51cf: $1f
    nop                                           ; $51d0: $00
    ret nz                                        ; $51d1: $c0

    nop                                           ; $51d2: $00
    ret nz                                        ; $51d3: $c0

    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    ldh a, [$cc]                                  ; $51d6: $f0 $cc
    ld a, $06                                     ; $51d8: $3e $06
    add $fe                                       ; $51da: $c6 $fe
    ld b, $ba                                     ; $51dc: $06 $ba
    ld a, h                                       ; $51de: $7c
    add [hl]                                      ; $51df: $86
    ld a, [bc]                                    ; $51e0: $0a
    xor h                                         ; $51e1: $ac
    ld a, [bc]                                    ; $51e2: $0a
    ld a, $00                                     ; $51e3: $3e $00
    ld c, a                                       ; $51e5: $4f
    ld a, $4f                                     ; $51e6: $3e $4f
    ld e, $6f                                     ; $51e8: $1e $6f
    rrca                                          ; $51ea: $0f
    halt                                          ; $51eb: $76
    nop                                           ; $51ec: $00
    ld b, b                                       ; $51ed: $40
    inc b                                         ; $51ee: $04
    sbc [hl]                                      ; $51ef: $9e
    ld [$00ff], sp                                ; $51f0: $08 $ff $00
    ld a, b                                       ; $51f3: $78
    or [hl]                                       ; $51f4: $b6
    ld [hl], b                                    ; $51f5: $70
    cp [hl]                                       ; $51f6: $be
    ld [$8658], sp                                ; $51f7: $08 $58 $86
    ld c, h                                       ; $51fa: $4c
    xor [hl]                                      ; $51fb: $ae

jr_0ac_51fc:
    jr nz, @+$1a                                  ; $51fc: $20 $18

    rst $38                                       ; $51fe: $ff
    nop                                           ; $51ff: $00
    ld b, $00                                     ; $5200: $06 $00
    db $10                                        ; $5202: $10
    inc d                                         ; $5203: $14
    db $10                                        ; $5204: $10
    dec b                                         ; $5205: $05
    ld de, $010d                                  ; $5206: $11 $0d $01
    ld [$030c], sp                                ; $5209: $08 $0c $03
    ld hl, sp+$03                                 ; $520c: $f8 $03
    inc bc                                        ; $520e: $03
    inc [hl]                                      ; $520f: $34
    jr nz, jr_0ac_527b                            ; $5210: $20 $69

    ld c, b                                       ; $5212: $48
    db $10                                        ; $5213: $10
    inc bc                                        ; $5214: $03
    jp Jump_0ac_4002                              ; $5215: $c3 $02 $40


    nop                                           ; $5218: $00
    ld bc, $4060                                  ; $5219: $01 $60 $40
    ld [$4058], sp                                ; $521c: $08 $58 $40

jr_0ac_521f:
    jr c, @+$42                                   ; $521f: $38 $40

    nop                                           ; $5221: $00
    ld l, h                                       ; $5222: $6c
    jr jr_0ac_5249                                ; $5223: $18 $24

    jr jr_0ac_5240                                ; $5225: $18 $19

    add hl, bc                                    ; $5227: $09
    scf                                           ; $5228: $37
    cpl                                           ; $5229: $2f
    jr nz, jr_0ac_5263                            ; $522a: $20 $37

    cpl                                           ; $522c: $2f
    jr nz, jr_0ac_524f                            ; $522d: $20 $20

    inc bc                                        ; $522f: $03
    rst $00                                       ; $5230: $c7

jr_0ac_5231:
    ret nz                                        ; $5231: $c0

    rst $08                                       ; $5232: $cf

jr_0ac_5233:
    ret nz                                        ; $5233: $c0

    nop                                           ; $5234: $00
    ldh a, [$f6]                                  ; $5235: $f0 $f6
    ldh a, [rNR42]                                ; $5237: $f0 $21
    inc a                                         ; $5239: $3c
    inc a                                         ; $523a: $3c
    ld a, h                                       ; $523b: $7c
    ld e, [hl]                                    ; $523c: $5e
    nop                                           ; $523d: $00

jr_0ac_523e:
    jr jr_0ac_523e                                ; $523e: $18 $fe

jr_0ac_5240:
    inc e                                         ; $5240: $1c
    inc c                                         ; $5241: $0c
    jr jr_0ac_521f                                ; $5242: $18 $db

    inc a                                         ; $5244: $3c
    jr jr_0ac_524f                                ; $5245: $18 $08

    rst $18                                       ; $5247: $df
    rst $20                                       ; $5248: $e7

jr_0ac_5249:
    add a                                         ; $5249: $87
    cp a                                          ; $524a: $bf
    ld [hl], $20                                  ; $524b: $36 $20
    add b                                         ; $524d: $80
    pop bc                                        ; $524e: $c1

jr_0ac_524f:
    jr nz, jr_0ac_5251                            ; $524f: $20 $00

jr_0ac_5251:
    db $10                                        ; $5251: $10
    pop af                                        ; $5252: $f1
    ld de, $917c                                  ; $5253: $11 $7c $91
    xor [hl]                                      ; $5256: $ae
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    ld [bc], a                                    ; $525a: $02
    nop                                           ; $525b: $00
    ld b, d                                       ; $525c: $42
    ld [bc], a                                    ; $525d: $02
    ld a, [bc]                                    ; $525e: $0a
    ld b, b                                       ; $525f: $40
    jr nz, jr_0ac_529c                            ; $5260: $20 $3a

    nop                                           ; $5262: $00

jr_0ac_5263:
    ld h, b                                       ; $5263: $60
    ld [hl-], a                                   ; $5264: $32
    ld h, [hl]                                    ; $5265: $66
    ld d, [hl]                                    ; $5266: $56
    ld a, [hl]                                    ; $5267: $7e
    ld e, [hl]                                    ; $5268: $5e
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    ld b, b                                       ; $526b: $40
    db $10                                        ; $526c: $10
    ld [bc], a                                    ; $526d: $02
    ld [$b090], sp                                ; $526e: $08 $90 $b0
    db $10                                        ; $5271: $10
    ret nz                                        ; $5272: $c0

    ld [hl], b                                    ; $5273: $70
    ret nz                                        ; $5274: $c0

    db $10                                        ; $5275: $10
    ldh [$a0], a                                  ; $5276: $e0 $a0
    ret nc                                        ; $5278: $d0

    ld [hl], b                                    ; $5279: $70
    ld c, b                                       ; $527a: $48

jr_0ac_527b:
    ld bc, $0300                                  ; $527b: $01 $00 $03
    inc bc                                        ; $527e: $03
    nop                                           ; $527f: $00
    rla                                           ; $5280: $17
    ld a, [de]                                    ; $5281: $1a
    dec c                                         ; $5282: $0d
    inc b                                         ; $5283: $04
    inc c                                         ; $5284: $0c
    rlca                                          ; $5285: $07
    dec de                                        ; $5286: $1b
    dec d                                         ; $5287: $15
    nop                                           ; $5288: $00
    add hl, sp                                    ; $5289: $39
    rra                                           ; $528a: $1f
    ld h, b                                       ; $528b: $60
    ld b, $c4                                     ; $528c: $06 $c4
    ld h, $c5                                     ; $528e: $26 $c5
    ld [c], a                                     ; $5290: $e2
    nop                                           ; $5291: $00
    ld hl, sp-$0f                                 ; $5292: $f8 $f1
    ld b, [hl]                                    ; $5294: $46
    cp d                                          ; $5295: $ba
    ei                                            ; $5296: $fb
    dec b                                         ; $5297: $05
    ld a, [$00fd]                                 ; $5298: $fa $fd $00
    ld a, l                                       ; $529b: $7d

jr_0ac_529c:
    ld a, [hl]                                    ; $529c: $7e
    rst $38                                       ; $529d: $ff
    ld a, a                                       ; $529e: $7f
    ld a, $7f                                     ; $529f: $3e $7f
    ld b, c                                       ; $52a1: $41
    ld a, $00                                     ; $52a2: $3e $00
    jr c, jr_0ac_5231                             ; $52a4: $38 $8b

    jr c, jr_0ac_5233                             ; $52a6: $38 $8b

    jr nc, jr_0ac_52cd                            ; $52a8: $30 $23

    jr nc, jr_0ac_52d3                            ; $52aa: $30 $27

jr_0ac_52ac:
    nop                                           ; $52ac: $00
    jr nc, jr_0ac_52d6                            ; $52ad: $30 $27

    ld [hl], b                                    ; $52af: $70
    daa                                           ; $52b0: $27
    ld h, b                                       ; $52b1: $60

jr_0ac_52b2:
    rlca                                          ; $52b2: $07
    ld [hl], b                                    ; $52b3: $70
    inc de                                        ; $52b4: $13
    nop                                           ; $52b5: $00
    ld e, $ce                                     ; $52b6: $1e $ce
    ld [de], a                                    ; $52b8: $12
    ld [c], a                                     ; $52b9: $e2
    jr c, jr_0ac_52ac                             ; $52ba: $38 $f0

    add hl, de                                    ; $52bc: $19
    pop bc                                        ; $52bd: $c1

jr_0ac_52be:
    nop                                           ; $52be: $00
    add hl, de                                    ; $52bf: $19
    pop de                                        ; $52c0: $d1
    inc de                                        ; $52c1: $13

jr_0ac_52c2:
    reti                                          ; $52c2: $d9


    inc sp                                        ; $52c3: $33
    or b                                          ; $52c4: $b0
    ld [hl-], a                                   ; $52c5: $32
    or d                                          ; $52c6: $b2
    nop                                           ; $52c7: $00
    cp h                                          ; $52c8: $bc
    call c, Call_0ac_443c                         ; $52c9: $dc $3c $44
    ld c, d                                       ; $52cc: $4a

jr_0ac_52cd:
    cp [hl]                                       ; $52cd: $be
    ld c, d                                       ; $52ce: $4a
    cp [hl]                                       ; $52cf: $be
    nop                                           ; $52d0: $00
    ld b, b                                       ; $52d1: $40
    pop de                                        ; $52d2: $d1

jr_0ac_52d3:
    ld b, c                                       ; $52d3: $41
    sub d                                         ; $52d4: $92
    cp d                                          ; $52d5: $ba

jr_0ac_52d6:
    add hl, bc                                    ; $52d6: $09
    ld [hl], $05                                  ; $52d7: $36 $05
    nop                                           ; $52d9: $00
    ld [hl], b                                    ; $52da: $70
    ldh a, [$74]                                  ; $52db: $f0 $74
    ldh a, [$e0]                                  ; $52dd: $f0 $e0
    add h                                         ; $52df: $84
    ldh [$84], a                                  ; $52e0: $e0 $84
    nop                                           ; $52e2: $00
    ld hl, sp+$38                                 ; $52e3: $f8 $38
    ret nc                                        ; $52e5: $d0

    jr nc, jr_0ac_52c2                            ; $52e6: $30 $da

    jr z, jr_0ac_52b2                             ; $52e8: $28 $c8

    ld a, [hl+]                                   ; $52ea: $2a
    nop                                           ; $52eb: $00
    ld b, $01                                     ; $52ec: $06 $01
    add hl, de                                    ; $52ee: $19
    ld e, $3a                                     ; $52ef: $1e $3a
    inc [hl]                                      ; $52f1: $34
    ld [hl], b                                    ; $52f2: $70
    ld l, c                                       ; $52f3: $69
    nop                                           ; $52f4: $00
    ldh a, [$e7]                                  ; $52f5: $f0 $e7
    ldh [$cf], a                                  ; $52f7: $e0 $cf
    ldh [$ce], a                                  ; $52f9: $e0 $ce
    ldh [$cd], a                                  ; $52fb: $e0 $cd
    nop                                           ; $52fd: $00
    add d                                         ; $52fe: $82
    add c                                         ; $52ff: $81
    dec bc                                        ; $5300: $0b
    ld b, c                                       ; $5301: $41
    dec bc                                        ; $5302: $0b
    pop bc                                        ; $5303: $c1
    rla                                           ; $5304: $17
    rst $10                                       ; $5305: $d7
    nop                                           ; $5306: $00
    ccf                                           ; $5307: $3f
    xor c                                         ; $5308: $a9
    daa                                           ; $5309: $27
    rrca                                          ; $530a: $0f
    ld b, b                                       ; $530b: $40
    jr c, jr_0ac_52be                             ; $530c: $38 $b0

    ld l, d                                       ; $530e: $6a
    nop                                           ; $530f: $00
    ld a, [hl]                                    ; $5310: $7e
    ld b, b                                       ; $5311: $40
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    ld a, a                                       ; $5314: $7f
    add c                                         ; $5315: $81
    ld e, a                                       ; $5316: $5f
    ld h, c                                       ; $5317: $61
    nop                                           ; $5318: $00
    add d                                         ; $5319: $82
    cp $ff                                        ; $531a: $fe $ff
    nop                                           ; $531c: $00
    ld bc, $021f                                  ; $531d: $01 $1f $02
    rlca                                          ; $5320: $07
    nop                                           ; $5321: $00
    and c                                         ; $5322: $a1
    ld e, c                                       ; $5323: $59
    ld d, c                                       ; $5324: $51
    adc c                                         ; $5325: $89
    call nz, $800c                                ; $5326: $c4 $0c $80
    halt                                          ; $5329: $76
    nop                                           ; $532a: $00
    ld [$f39b], a                                 ; $532b: $ea $9b $f3
    adc a                                         ; $532e: $8f
    inc e                                         ; $532f: $1c
    ld [bc], a                                    ; $5330: $02
    jp nz, $00c2                                  ; $5331: $c2 $c2 $00

    add hl, bc                                    ; $5334: $09
    ld l, d                                       ; $5335: $6a
    dec hl                                        ; $5336: $2b
    ld c, b                                       ; $5337: $48
    ld b, e                                       ; $5338: $43

jr_0ac_5339:
    ret c                                         ; $5339: $d8

    add c                                         ; $533a: $81
    ret c                                         ; $533b: $d8

    nop                                           ; $533c: $00
    add c                                         ; $533d: $81
    cp b                                          ; $533e: $b8
    add c                                         ; $533f: $81
    cp b                                          ; $5340: $b8
    rlca                                          ; $5341: $07
    add hl, sp                                    ; $5342: $39
    rlca                                          ; $5343: $07
    add hl, sp                                    ; $5344: $39
    nop                                           ; $5345: $00
    jr z, @+$21                                   ; $5346: $28 $1f

    sbc l                                         ; $5348: $9d
    ld c, d                                       ; $5349: $4a
    adc [hl]                                      ; $534a: $8e
    or $8e                                        ; $534b: $f6 $8e
    and $00                                       ; $534d: $e6 $00
    ld [$ea0e], a                                 ; $534f: $ea $0e $ea
    ld c, $06                                     ; $5352: $0e $06
    db $e4                                        ; $5354: $e4
    inc b                                         ; $5355: $04
    ld h, [hl]                                    ; $5356: $66
    nop                                           ; $5357: $00
    ld a, [$6824]                                 ; $5358: $fa $24 $68
    inc [hl]                                      ; $535b: $34
    ld l, h                                       ; $535c: $6c
    jr jr_0ac_5339                                ; $535d: $18 $da

    jr c, jr_0ac_5361                             ; $535f: $38 $00

jr_0ac_5361:
    ldh a, [rPCM34]                               ; $5361: $f0 $77
    db $e4                                        ; $5363: $e4
    ld h, e                                       ; $5364: $63
    call nz, $e0c3                                ; $5365: $c4 $c3 $e0
    jp $6100                                      ; $5368: $c3 $00 $61


    ld c, l                                       ; $536b: $4d
    ld h, c                                       ; $536c: $61
    ld d, l                                       ; $536d: $55
    ld h, b                                       ; $536e: $60
    ld d, [hl]                                    ; $536f: $56
    jr nc, @-$3e                                  ; $5370: $30 $c0

    nop                                           ; $5372: $00
    add hl, sp                                    ; $5373: $39
    ret z                                         ; $5374: $c8

    ld a, [c]                                     ; $5375: $f2
    ret                                           ; $5376: $c9


    ldh a, [$eb]                                  ; $5377: $f0 $eb
    inc de                                        ; $5379: $13
    ld [$d000], sp                                ; $537a: $08 $00 $d0
    cp b                                          ; $537d: $b8
    or b                                          ; $537e: $b0
    db $fc                                        ; $537f: $fc
    add c                                         ; $5380: $81
    ld hl, sp+$71                                 ; $5381: $f8 $71
    cp b                                          ; $5383: $b8
    nop                                           ; $5384: $00
    ld [hl], c                                    ; $5385: $71
    cp b                                          ; $5386: $b8
    ld sp, $9134                                  ; $5387: $31 $34 $91
    or h                                          ; $538a: $b4
    sbc [hl]                                      ; $538b: $9e
    ld h, [hl]                                    ; $538c: $66
    nop                                           ; $538d: $00
    ld h, a                                       ; $538e: $67
    rlca                                          ; $538f: $07
    sbc b                                         ; $5390: $98
    ld l, e                                       ; $5391: $6b
    jr c, @-$34                                   ; $5392: $38 $ca

    ld a, b                                       ; $5394: $78
    adc d                                         ; $5395: $8a
    nop                                           ; $5396: $00
    ld hl, sp+$0a                                 ; $5397: $f8 $0a
    or d                                          ; $5399: $b2
    ld e, d                                       ; $539a: $5a
    ld h, d                                       ; $539b: $62
    or d                                          ; $539c: $b2
    ld c, $0d                                     ; $539d: $0e $0d
    nop                                           ; $539f: $00
    add [hl]                                      ; $53a0: $86
    ld a, [hl]                                    ; $53a1: $7e
    ld a, b                                       ; $53a2: $78
    add [hl]                                      ; $53a3: $86
    ld bc, $05fd                                  ; $53a4: $01 $fd $05
    inc bc                                        ; $53a7: $03
    nop                                           ; $53a8: $00
    ld [hl], d                                    ; $53a9: $72
    sbc d                                         ; $53aa: $9a
    cp $7e                                        ; $53ab: $fe $7e
    db $f4                                        ; $53ad: $f4
    ld [bc], a                                    ; $53ae: $02
    ret z                                         ; $53af: $c8

    add $00                                       ; $53b0: $c6 $00
    add b                                         ; $53b2: $80
    cp h                                          ; $53b3: $bc
    add c                                         ; $53b4: $81

jr_0ac_53b5:
    cp h                                          ; $53b5: $bc
    add c                                         ; $53b6: $81
    ret nz                                        ; $53b7: $c0

    ld bc, $00bc                                  ; $53b8: $01 $bc $00
    db $fc                                        ; $53bb: $fc
    pop bc                                        ; $53bc: $c1
    db $fc                                        ; $53bd: $fc
    ld bc, $fd01                                  ; $53be: $01 $01 $fd
    inc b                                         ; $53c1: $04
    ld hl, sp+$00                                 ; $53c2: $f8 $00
    di                                            ; $53c4: $f3
    ld [hl], a                                    ; $53c5: $77
    ld [hl], e                                    ; $53c6: $73
    scf                                           ; $53c7: $37
    or a                                          ; $53c8: $b7
    inc c                                         ; $53c9: $0c
    rst $00                                       ; $53ca: $c7
    inc c                                         ; $53cb: $0c
    nop                                           ; $53cc: $00
    and $0c                                       ; $53cd: $e6 $0c
    db $ec                                        ; $53cf: $ec
    nop                                           ; $53d0: $00
    ld hl, sp+$58                                 ; $53d1: $f8 $58
    ld hl, sp+$42                                 ; $53d3: $f8 $42
    nop                                           ; $53d5: $00
    ld [hl+], a                                   ; $53d6: $22
    jp nz, $0ace                                  ; $53d7: $c2 $ce $0a

    jr z, @-$70                                   ; $53da: $28 $8e

    ld l, b                                       ; $53dc: $68
    inc c                                         ; $53dd: $0c
    nop                                           ; $53de: $00
    jr jr_0ac_53b5                                ; $53df: $18 $d4

    inc e                                         ; $53e1: $1c
    ret nc                                        ; $53e2: $d0

    rra                                           ; $53e3: $1f
    rst $00                                       ; $53e4: $c7
    rra                                           ; $53e5: $1f
    ld b, a                                       ; $53e6: $47
    nop                                           ; $53e7: $00
    dec d                                         ; $53e8: $15
    inc c                                         ; $53e9: $0c
    ld sp, hl                                     ; $53ea: $f9
    db $e4                                        ; $53eb: $e4
    ld sp, hl                                     ; $53ec: $f9
    db $f4                                        ; $53ed: $f4
    inc c                                         ; $53ee: $0c
    ld b, $00                                     ; $53ef: $06 $00
    inc c                                         ; $53f1: $0c
    ld b, $04                                     ; $53f2: $06 $04
    ld [bc], a                                    ; $53f4: $02
    dec b                                         ; $53f5: $05
    inc bc                                        ; $53f6: $03
    ld b, $03                                     ; $53f7: $06 $03
    nop                                           ; $53f9: $00
    reti                                          ; $53fa: $d9


    add hl, bc                                    ; $53fb: $09
    or a                                          ; $53fc: $b7
    ld bc, $09bc                                  ; $53fd: $01 $bc $09
    ld e, $36                                     ; $5400: $1e $36
    nop                                           ; $5402: $00
    ld e, d                                       ; $5403: $5a
    ld [hl-], a                                   ; $5404: $32
    cp a                                          ; $5405: $bf
    ret z                                         ; $5406: $c8

    dec a                                         ; $5407: $3d
    ld d, d                                       ; $5408: $52
    rrca                                          ; $5409: $0f
    halt                                          ; $540a: $76
    nop                                           ; $540b: $00
    inc bc                                        ; $540c: $03
    cp $f9                                        ; $540d: $fe $f9
    ei                                            ; $540f: $fb
    db $fc                                        ; $5410: $fc
    nop                                           ; $5411: $00
    ld h, c                                       ; $5412: $61
    add b                                         ; $5413: $80
    nop                                           ; $5414: $00
    add [hl]                                      ; $5415: $86
    ld c, h                                       ; $5416: $4c
    ldh a, [$fe]                                  ; $5417: $f0 $fe
    pop af                                        ; $5419: $f1
    ld de, $65f8                                  ; $541a: $11 $f8 $65
    nop                                           ; $541d: $00
    ld b, b                                       ; $541e: $40
    db $fc                                        ; $541f: $fc
    ld b, c                                       ; $5420: $41
    ret z                                         ; $5421: $c8

    add a                                         ; $5422: $87

jr_0ac_5423:
    ldh a, [rNR22]                                ; $5423: $f0 $17
    ldh [rP1], a                                  ; $5425: $e0 $00
    jp Jump_000_13a4                              ; $5427: $c3 $a4 $13


    ld b, b                                       ; $542a: $40
    or e                                          ; $542b: $b3
    dec a                                         ; $542c: $3d
    reti                                          ; $542d: $d9


    rst $10                                       ; $542e: $d7
    nop                                           ; $542f: $00
    db $f4                                        ; $5430: $f4
    ld a, b                                       ; $5431: $78
    ld l, h                                       ; $5432: $6c
    or b                                          ; $5433: $b0
    add c                                         ; $5434: $81
    jp nz, $e586                                  ; $5435: $c2 $86 $e5

    nop                                           ; $5438: $00
    ld a, d                                       ; $5439: $7a
    db $fc                                        ; $543a: $fc
    ld [hl], d                                    ; $543b: $72
    db $fc                                        ; $543c: $fc
    adc c                                         ; $543d: $89
    rra                                           ; $543e: $1f
    ld a, c                                       ; $543f: $79
    inc a                                         ; $5440: $3c
    nop                                           ; $5441: $00
    rlca                                          ; $5442: $07
    db $10                                        ; $5443: $10
    rrca                                          ; $5444: $0f
    inc l                                         ; $5445: $2c
    inc bc                                        ; $5446: $03
    inc e                                         ; $5447: $1c
    ld sp, $002e                                  ; $5448: $31 $2e $00
    halt                                          ; $544b: $76
    rrca                                          ; $544c: $0f
    cp [hl]                                       ; $544d: $be
    rst $00                                       ; $544e: $c7
    cp b                                          ; $544f: $b8
    cp $b8                                        ; $5450: $fe $b8
    or $00                                        ; $5452: $f6 $00
    rrca                                          ; $5454: $0f
    scf                                           ; $5455: $37
    adc a                                         ; $5456: $8f
    scf                                           ; $5457: $37
    and b                                         ; $5458: $a0
    jr nc, jr_0ac_54bb                            ; $5459: $30 $60

    ld [hl], b                                    ; $545b: $70
    nop                                           ; $545c: $00
    ld h, b                                       ; $545d: $60
    ld e, a                                       ; $545e: $5f
    ld h, b                                       ; $545f: $60
    ld e, a                                       ; $5460: $5f
    jr nz, jr_0ac_5423                            ; $5461: $20 $c0

    ld h, b                                       ; $5463: $60
    ret nz                                        ; $5464: $c0

    nop                                           ; $5465: $00
    ld [bc], a                                    ; $5466: $02
    ld bc, $0102                                  ; $5467: $01 $02 $01
    inc bc                                        ; $546a: $03
    ld bc, $0100                                  ; $546b: $01 $00 $01
    ret nz                                        ; $546e: $c0

    inc bc                                        ; $546f: $03
    nop                                           ; $5470: $00
    ret nz                                        ; $5471: $c0

    ld bc, $0000                                  ; $5472: $01 $00 $00
    rlca                                          ; $5475: $07
    ld e, [hl]                                    ; $5476: $5e
    add [hl]                                      ; $5477: $86
    sbc l                                         ; $5478: $9d
    nop                                           ; $5479: $00
    add h                                         ; $547a: $84
    dec de                                        ; $547b: $1b
    ccf                                           ; $547c: $3f
    and c                                         ; $547d: $a1
    ccf                                           ; $547e: $3f
    or [hl]                                       ; $547f: $b6
    ret nz                                        ; $5480: $c0

    add e                                         ; $5481: $83
    nop                                           ; $5482: $00
    ret nz                                        ; $5483: $c0

    ld e, a                                       ; $5484: $5f
    ret nc                                        ; $5485: $d0

    adc a                                         ; $5486: $8f
    inc a                                         ; $5487: $3c
    cp c                                          ; $5488: $b9
    sbc [hl]                                      ; $5489: $9e
    inc e                                         ; $548a: $1c
    nop                                           ; $548b: $00
    db $e3                                        ; $548c: $e3
    ld a, a                                       ; $548d: $7f
    inc a                                         ; $548e: $3c
    ld a, [hl]                                    ; $548f: $7e
    cp $c3                                        ; $5490: $fe $c3
    ld a, h                                       ; $5492: $7c
    cp d                                          ; $5493: $ba
    nop                                           ; $5494: $00
    cp $01                                        ; $5495: $fe $01
    ld a, h                                       ; $5497: $7c
    cp e                                          ; $5498: $bb
    set 7, l                                      ; $5499: $cb $fd
    call z, $00f8                                 ; $549b: $cc $f8 $00
    ld bc, $07e2                                  ; $549e: $01 $e2 $07
    db $eb                                        ; $54a1: $eb
    inc e                                         ; $54a2: $1c
    inc de                                        ; $54a3: $13
    sbc h                                         ; $54a4: $9c
    sub e                                         ; $54a5: $93
    nop                                           ; $54a6: $00
    rrca                                          ; $54a7: $0f
    db $d3                                        ; $54a8: $d3
    adc a                                         ; $54a9: $8f
    ld b, e                                       ; $54aa: $43
    ld h, c                                       ; $54ab: $61
    jr c, jr_0ac_550f                             ; $54ac: $38 $61

    inc sp                                        ; $54ae: $33
    nop                                           ; $54af: $00
    ld b, $65                                     ; $54b0: $06 $65
    ld d, b                                       ; $54b2: $50
    ld e, [hl]                                    ; $54b3: $5e
    add hl, sp                                    ; $54b4: $39
    nop                                           ; $54b5: $00
    inc b                                         ; $54b6: $04
    add h                                         ; $54b7: $84
    nop                                           ; $54b8: $00
    sbc a                                         ; $54b9: $9f
    ld c, h                                       ; $54ba: $4c

jr_0ac_54bb:
    ccf                                           ; $54bb: $3f
    add b                                         ; $54bc: $80
    ld a, [bc]                                    ; $54bd: $0a
    sub b                                         ; $54be: $90
    adc c                                         ; $54bf: $89
    ld d, c                                       ; $54c0: $51
    nop                                           ; $54c1: $00
    cp h                                          ; $54c2: $bc
    ld l, l                                       ; $54c3: $6d
    ld a, h                                       ; $54c4: $7c
    cp l                                          ; $54c5: $bd
    dec c                                         ; $54c6: $0d
    sbc h                                         ; $54c7: $9c
    ld a, [hl-]                                   ; $54c8: $3a
    ld a, c                                       ; $54c9: $79
    nop                                           ; $54ca: $00
    ld hl, sp+$03                                 ; $54cb: $f8 $03
    ld hl, sp+$13                                 ; $54cd: $f8 $13
    ret nz                                        ; $54cf: $c0

    add b                                         ; $54d0: $80
    ld b, b                                       ; $54d1: $40
    add b                                         ; $54d2: $80
    nop                                           ; $54d3: $00
    ld b, b                                       ; $54d4: $40
    ret nz                                        ; $54d5: $c0

    add b                                         ; $54d6: $80
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    add b                                         ; $54d9: $80
    add b                                         ; $54da: $80
    nop                                           ; $54db: $00
    ret nz                                        ; $54dc: $c0

    ld b, $00                                     ; $54dd: $06 $00
    ld [bc], a                                    ; $54df: $02
    ld [hl], b                                    ; $54e0: $70
    ldh [$cf], a                                  ; $54e1: $e0 $cf
    rrca                                          ; $54e3: $0f
    ldh [rVBK], a                                 ; $54e4: $e0 $4f
    ld h, b                                       ; $54e6: $60
    nop                                           ; $54e7: $00
    add a                                         ; $54e8: $87
    ldh a, [$80]                                  ; $54e9: $f0 $80
    ldh a, [rNR42]                                ; $54eb: $f0 $21
    ld e, $38                                     ; $54ed: $1e $38
    daa                                           ; $54ef: $27
    nop                                           ; $54f0: $00
    rrca                                          ; $54f1: $0f
    inc sp                                        ; $54f2: $33
    adc a                                         ; $54f3: $8f
    adc b                                         ; $54f4: $88
    inc e                                         ; $54f5: $1c
    dec de                                        ; $54f6: $1b
    ld e, $19                                     ; $54f7: $1e $19
    nop                                           ; $54f9: $00
    di                                            ; $54fa: $f3
    rrca                                          ; $54fb: $0f
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    db $e3                                        ; $54fe: $e3
    inc hl                                        ; $54ff: $23
    ld sp, $00c1                                  ; $5500: $31 $c1 $00
    rrca                                          ; $5503: $0f
    pop af                                        ; $5504: $f1
    add a                                         ; $5505: $87
    set 0, a                                      ; $5506: $cb $c7
    or c                                          ; $5508: $b1
    db $e3                                        ; $5509: $e3
    ret c                                         ; $550a: $d8

    nop                                           ; $550b: $00
    ldh a, [$e9]                                  ; $550c: $f0 $e9
    nop                                           ; $550e: $00

jr_0ac_550f:
    nop                                           ; $550f: $00
    pop hl                                        ; $5510: $e1
    ld a, a                                       ; $5511: $7f
    ldh a, [$cf]                                  ; $5512: $f0 $cf
    nop                                           ; $5514: $00
    inc e                                         ; $5515: $1c
    inc de                                        ; $5516: $13
    ld [hl], e                                    ; $5517: $73
    ld [hl], h                                    ; $5518: $74
    add b                                         ; $5519: $80
    or l                                          ; $551a: $b5
    add [hl]                                      ; $551b: $86
    cp $00                                        ; $551c: $fe $00
    rst $00                                       ; $551e: $c7
    ld a, a                                       ; $551f: $7f
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    ld a, [hl]                                    ; $5522: $7e
    db $d3                                        ; $5523: $d3
    add e                                         ; $5524: $83
    ld b, h                                       ; $5525: $44
    nop                                           ; $5526: $00
    rst $00                                       ; $5527: $c7
    jp hl                                         ; $5528: $e9


    db $f4                                        ; $5529: $f4
    ld h, a                                       ; $552a: $67
    ldh a, [$c7]                                  ; $552b: $f0 $c7
    ld [hl], d                                    ; $552d: $72
    ld b, $00                                     ; $552e: $06 $00
    and $0e                                       ; $5530: $e6 $0e
    inc bc                                        ; $5532: $03
    dec c                                         ; $5533: $0d
    rst $20                                       ; $5534: $e7
    dec de                                        ; $5535: $1b
    inc c                                         ; $5536: $0c
    ldh a, [rNR41]                                ; $5537: $f0 $20
    inc e                                         ; $5539: $1c
    db $e4                                        ; $553a: $e4
    nop                                           ; $553b: $00
    ld l, e                                       ; $553c: $6b
    db $10                                        ; $553d: $10
    inc bc                                        ; $553e: $03
    ld [hl], c                                    ; $553f: $71
    ld [bc], a                                    ; $5540: $02
    ld d, b                                       ; $5541: $50
    nop                                           ; $5542: $00
    ld bc, $ffd0                                  ; $5543: $01 $d0 $ff
    rra                                           ; $5546: $1f

jr_0ac_5547:
    jr z, jr_0ac_5547                             ; $5547: $28 $fe

    ld bc, $03fc                                  ; $5549: $01 $fc $03
    nop                                           ; $554c: $00
    ld hl, sp+$06                                 ; $554d: $f8 $06
    ldh [$dc], a                                  ; $554f: $e0 $dc
    ret nz                                        ; $5551: $c0

    add e                                         ; $5552: $83
    sub e                                         ; $5553: $93
    xor c                                         ; $5554: $a9
    nop                                           ; $5555: $00
    sub c                                         ; $5556: $91
    ld [hl], h                                    ; $5557: $74
    ld c, h                                       ; $5558: $4c
    ld [hl], d                                    ; $5559: $72
    ld c, [hl]                                    ; $555a: $4e
    ld a, b                                       ; $555b: $78
    ld b, [hl]                                    ; $555c: $46
    ld a, h                                       ; $555d: $7c
    inc b                                         ; $555e: $04
    ld b, d                                       ; $555f: $42
    nop                                           ; $5560: $00
    ld b, b                                       ; $5561: $40
    rra                                           ; $5562: $1f
    inc hl                                        ; $5563: $23

jr_0ac_5564:
    ld h, $18                                     ; $5564: $26 $18
    ld a, a                                       ; $5566: $7f
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    add b                                         ; $5569: $80
    ccf                                           ; $556a: $3f
    ret nz                                        ; $556b: $c0

    rra                                           ; $556c: $1f
    ld h, b                                       ; $556d: $60

jr_0ac_556e:
    ld h, a                                       ; $556e: $67
    cp b                                          ; $556f: $b8
    dec sp                                        ; $5570: $3b
    ret nz                                        ; $5571: $c0

    ld d, b                                       ; $5572: $50
    ret c                                         ; $5573: $d8

    ld e, c                                       ; $5574: $59
    jr c, jr_0ac_557f                             ; $5575: $38 $08

    rst $20                                       ; $5577: $e7
    ld b, b                                       ; $5578: $40
    sbc a                                         ; $5579: $9f
    nop                                           ; $557a: $00
    sbc a                                         ; $557b: $9f
    nop                                           ; $557c: $00
    ld b, b                                       ; $557d: $40
    ld e, [hl]                                    ; $557e: $5e

jr_0ac_557f:
    ldh a, [rP1]                                  ; $557f: $f0 $00
    rrca                                          ; $5581: $0f
    add sp, $1f                                   ; $5582: $e8 $1f
    ret nc                                        ; $5584: $d0

    nop                                           ; $5585: $00
    rst $00                                       ; $5586: $c7
    ret c                                         ; $5587: $d8

    adc a                                         ; $5588: $8f
    or b                                          ; $5589: $b0
    cpl                                           ; $558a: $2f
    jr nc, jr_0ac_55bc                            ; $558b: $30 $2f

    ld [hl], b                                    ; $558d: $70
    nop                                           ; $558e: $00
    rra                                           ; $558f: $1f
    ld h, e                                       ; $5590: $63
    jr nc, @+$04                                  ; $5591: $30 $02

    inc c                                         ; $5593: $0c
    jr nz, jr_0ac_556e                            ; $5594: $20 $d8

    ret nz                                        ; $5596: $c0

    nop                                           ; $5597: $00
    ld c, b                                       ; $5598: $48
    ret nz                                        ; $5599: $c0

    ld hl, $d0e1                                  ; $559a: $21 $e1 $d0
    ld [hl], e                                    ; $559d: $73
    pop bc                                        ; $559e: $c1
    ld [hl], $00                                  ; $559f: $36 $00
    call Call_0ac_782e                            ; $55a1: $cd $2e $78
    rlca                                          ; $55a4: $07
    ld hl, sp-$19                                 ; $55a5: $f8 $e7
    ldh [$9f], a                                  ; $55a7: $e0 $9f
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    rrca                                          ; $55ab: $0f
    db $10                                        ; $55ac: $10
    ldh [$e1], a                                  ; $55ad: $e0 $e1
    ld hl, sp-$10                                 ; $55af: $f8 $f0
    db $fc                                        ; $55b1: $fc
    nop                                           ; $55b2: $00
    ld a, [bc]                                    ; $55b3: $0a
    inc b                                         ; $55b4: $04
    ld b, b                                       ; $55b5: $40
    call z, $c690                                 ; $55b6: $cc $90 $c6
    xor b                                         ; $55b9: $a8
    db $e3                                        ; $55ba: $e3
    nop                                           ; $55bb: $00

jr_0ac_55bc:
    ret nz                                        ; $55bc: $c0

    ret nz                                        ; $55bd: $c0

    inc b                                         ; $55be: $04
    inc a                                         ; $55bf: $3c
    ld a, d                                       ; $55c0: $7a
    ld a, h                                       ; $55c1: $7c
    cp h                                          ; $55c2: $bc
    ld d, d                                       ; $55c3: $52
    jr nz, @+$46                                  ; $55c4: $20 $44

    add e                                         ; $55c6: $83
    ld a, h                                       ; $55c7: $7c
    jr jr_0ac_55ca                                ; $55c8: $18 $00

jr_0ac_55ca:
    rrca                                          ; $55ca: $0f
    rlca                                          ; $55cb: $07
    rst $30                                       ; $55cc: $f7
    db $eb                                        ; $55cd: $eb
    inc c                                         ; $55ce: $0c
    inc de                                        ; $55cf: $13
    ld hl, sp-$60                                 ; $55d0: $f8 $a0
    jr z, jr_0ac_5564                             ; $55d2: $28 $90

    db $10                                        ; $55d4: $10
    cp [hl]                                       ; $55d5: $be
    jr c, jr_0ac_5657                             ; $55d6: $38 $7f

    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    ld b, c                                       ; $55da: $41
    ld e, h                                       ; $55db: $5c
    ld d, b                                       ; $55dc: $50
    inc de                                        ; $55dd: $13
    ld b, b                                       ; $55de: $40
    ld c, $40                                     ; $55df: $0e $40
    jr jr_0ac_55e3                                ; $55e1: $18 $00

jr_0ac_55e3:
    ld h, [hl]                                    ; $55e3: $66
    ld b, $40                                     ; $55e4: $06 $40
    ld sp, $1d24                                  ; $55e6: $31 $24 $1d
    inc sp                                        ; $55e9: $33
    jr nc, jr_0ac_55ec                            ; $55ea: $30 $00

jr_0ac_55ec:
    jr jr_0ac_564e                                ; $55ec: $18 $60

    ld a, $4e                                     ; $55ee: $3e $4e
    cp h                                          ; $55f0: $bc
    ld b, b                                       ; $55f1: $40
    add hl, sp                                    ; $55f2: $39
    pop bc                                        ; $55f3: $c1
    nop                                           ; $55f4: $00
    ld a, c                                       ; $55f5: $79
    add c                                         ; $55f6: $81
    ld a, e                                       ; $55f7: $7b
    add e                                         ; $55f8: $83
    ld a, e                                       ; $55f9: $7b
    add e                                         ; $55fa: $83
    ld hl, sp-$3d                                 ; $55fb: $f8 $c3
    nop                                           ; $55fd: $00
    ld l, c                                       ; $55fe: $69
    ld a, [bc]                                    ; $55ff: $0a
    ld d, $07                                     ; $5600: $16 $07
    sbc h                                         ; $5602: $9c
    dec b                                         ; $5603: $05
    reti                                          ; $5604: $d9


    add hl, bc                                    ; $5605: $09
    nop                                           ; $5606: $00
    pop de                                        ; $5607: $d1
    ld a, [bc]                                    ; $5608: $0a
    jr jr_0ac_55e3                                ; $5609: $18 $d8

    inc de                                        ; $560b: $13
    call nc, $d407                                ; $560c: $d4 $07 $d4
    nop                                           ; $560f: $00
    ldh [rP1], a                                  ; $5610: $e0 $00
    ld h, b                                       ; $5612: $60
    ld l, a                                       ; $5613: $6f
    ld e, b                                       ; $5614: $58
    ld b, a                                       ; $5615: $47
    ret nz                                        ; $5616: $c0

    ld b, b                                       ; $5617: $40
    nop                                           ; $5618: $00
    ret nc                                        ; $5619: $d0

    rra                                           ; $561a: $1f
    db $10                                        ; $561b: $10
    ld hl, $2325                                  ; $561c: $21 $25 $23
    jr nz, jr_0ac_5642                            ; $561f: $20 $21

    nop                                           ; $5621: $00
    inc e                                         ; $5622: $1c
    rlca                                          ; $5623: $07
    ld e, [hl]                                    ; $5624: $5e
    rst $00                                       ; $5625: $c7
    dec e                                         ; $5626: $1d
    pop bc                                        ; $5627: $c1
    dec c                                         ; $5628: $0d
    add c                                         ; $5629: $81

jr_0ac_562a:
    nop                                           ; $562a: $00
    dec c                                         ; $562b: $0d
    pop bc                                        ; $562c: $c1
    dec c                                         ; $562d: $0d
    ld bc, $6029                                  ; $562e: $01 $29 $60
    inc bc                                        ; $5631: $03
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    ld [hl], b                                    ; $5634: $70
    ld a, c                                       ; $5635: $79
    ld [hl], d                                    ; $5636: $72
    ld a, b                                       ; $5637: $78
    ld a, b                                       ; $5638: $78
    dec bc                                        ; $5639: $0b
    jr c, @+$4d                                   ; $563a: $38 $4b

    nop                                           ; $563c: $00
    jr c, jr_0ac_569a                             ; $563d: $38 $5b

    jr c, jr_0ac_569c                             ; $563f: $38 $5b

    ld [hl], b                                    ; $5641: $70

jr_0ac_5642:
    ld b, a                                       ; $5642: $47
    ld [hl], b                                    ; $5643: $70
    rlca                                          ; $5644: $07
    add b                                         ; $5645: $80
    ld hl, sp+$00                                 ; $5646: $f8 $00
    rrca                                          ; $5648: $0f
    ld [hl], a                                    ; $5649: $77
    rlca                                          ; $564a: $07
    dec de                                        ; $564b: $1b
    add e                                         ; $564c: $83
    inc c                                         ; $564d: $0c

jr_0ac_564e:
    ldh [rP1], a                                  ; $564e: $e0 $00
    ld b, $b0                                     ; $5650: $06 $b0

jr_0ac_5652:
    ld b, $90                                     ; $5652: $06 $90
    dec b                                         ; $5654: $05

jr_0ac_5655:
    pop bc                                        ; $5655: $c1
    rrca                                          ; $5656: $0f

jr_0ac_5657:
    jr nz, jr_0ac_5659                            ; $5657: $20 $00

jr_0ac_5659:
    add a                                         ; $5659: $87
    or b                                          ; $565a: $b0
    rst $00                                       ; $565b: $c7
    ret nc                                        ; $565c: $d0

    rst $00                                       ; $565d: $c7
    ret nc                                        ; $565e: $d0

    jp Jump_000_00d8                              ; $565f: $c3 $d8 $00


    db $e3                                        ; $5662: $e3
    add sp, -$1d                                  ; $5663: $e8 $e3

jr_0ac_5665:
    add sp, -$18                                  ; $5665: $e8 $e8
    db $e3                                        ; $5667: $e3
    ldh a, [$c3]                                  ; $5668: $f0 $c3
    nop                                           ; $566a: $00
    ldh a, [$c7]                                  ; $566b: $f0 $c7
    ldh a, [$87]                                  ; $566d: $f0 $87
    ldh a, [$e7]                                  ; $566f: $f0 $e7
    ldh [$ef], a                                  ; $5671: $e0 $ef
    nop                                           ; $5673: $00
    ldh [$cf], a                                  ; $5674: $e0 $cf
    ret nz                                        ; $5676: $c0

    rst $18                                       ; $5677: $df
    and b                                         ; $5678: $a0
    jr nz, @+$05                                  ; $5679: $20 $03

    db $e3                                        ; $567b: $e3
    nop                                           ; $567c: $00
    ld [$0ee0], sp                                ; $567d: $08 $e0 $0e
    ld [c], a                                     ; $5680: $e2
    inc e                                         ; $5681: $1c
    ret z                                         ; $5682: $c8

    jr jr_0ac_5655                                ; $5683: $18 $d0

    nop                                           ; $5685: $00
    jr c, jr_0ac_562a                             ; $5686: $38 $a2

    ld h, c                                       ; $5688: $61
    ld [hl], a                                    ; $5689: $77
    jr jr_0ac_5665                                ; $568a: $18 $d9

    inc hl                                        ; $568c: $23
    ld a, $00                                     ; $568d: $3e $00
    ld h, b                                       ; $568f: $60
    ld a, [hl]                                    ; $5690: $7e
    ld [hl], a                                    ; $5691: $77
    ld [$473b], sp                                ; $5692: $08 $3b $47
    db $10                                        ; $5695: $10
    rra                                           ; $5696: $1f
    nop                                           ; $5697: $00
    ld h, d                                       ; $5698: $62
    ld h, b                                       ; $5699: $60

jr_0ac_569a:
    inc c                                         ; $569a: $0c
    or h                                          ; $569b: $b4

jr_0ac_569c:
    ld b, h                                       ; $569c: $44
    ret c                                         ; $569d: $d8

    ld [bc], a                                    ; $569e: $02
    ld d, b                                       ; $569f: $50
    nop                                           ; $56a0: $00
    ld de, $c141                                  ; $56a1: $11 $41 $c1
    call z, $aea0                                 ; $56a4: $cc $a0 $ae
    ld h, [hl]                                    ; $56a7: $66
    ld d, $00                                     ; $56a8: $16 $00
    ld h, e                                       ; $56aa: $63
    dec de                                        ; $56ab: $1b
    jr jr_0ac_56d6                                ; $56ac: $18 $28

    adc h                                         ; $56ae: $8c
    sbc b                                         ; $56af: $98
    ldh a, [rNR22]                                ; $56b0: $f0 $17
    nop                                           ; $56b2: $00
    ldh a, [rNR13]                                ; $56b3: $f0 $13
    db $e4                                        ; $56b5: $e4
    ldh a, [$e0]                                  ; $56b6: $f0 $e0
    di                                            ; $56b8: $f3
    srl b                                         ; $56b9: $cb $38
    nop                                           ; $56bb: $00
    ld l, h                                       ; $56bc: $6c
    inc e                                         ; $56bd: $1c
    ld [hl], h                                    ; $56be: $74
    inc c                                         ; $56bf: $0c
    ld a, [hl-]                                   ; $56c0: $3a
    rlca                                          ; $56c1: $07
    dec b                                         ; $56c2: $05
    pop bc                                        ; $56c3: $c1
    nop                                           ; $56c4: $00
    dec c                                         ; $56c5: $0d
    and c                                         ; $56c6: $a1
    ld c, b                                       ; $56c7: $48
    jr z, jr_0ac_5652                             ; $56c8: $28 $88

    ld c, b                                       ; $56ca: $48
    sbc b                                         ; $56cb: $98
    add e                                         ; $56cc: $83
    nop                                           ; $56cd: $00
    ld d, b                                       ; $56ce: $50
    ld b, a                                       ; $56cf: $47
    ret nz                                        ; $56d0: $c0

    rlca                                          ; $56d1: $07
    db $10                                        ; $56d2: $10
    rla                                           ; $56d3: $17
    db $ec                                        ; $56d4: $ec
    pop hl                                        ; $56d5: $e1

jr_0ac_56d6:
    nop                                           ; $56d6: $00
    inc b                                         ; $56d7: $04
    ldh a, [rTIMA]                                ; $56d8: $f0 $05
    pop af                                        ; $56da: $f1
    ld b, $f0                                     ; $56db: $06 $f0
    ld [bc], a                                    ; $56dd: $02
    ld hl, sp+$00                                 ; $56de: $f8 $00
    ld [bc], a                                    ; $56e0: $02
    ld a, [$f801]                                 ; $56e1: $fa $01 $f8
    dec b                                         ; $56e4: $05
    ld b, $40                                     ; $56e5: $06 $40
    ld e, [hl]                                    ; $56e7: $5e
    nop                                           ; $56e8: $00
    add l                                         ; $56e9: $85
    cp c                                          ; $56ea: $b9
    add b                                         ; $56eb: $80
    cp b                                          ; $56ec: $b8
    cp b                                          ; $56ed: $b8
    add c                                         ; $56ee: $81
    jr nz, jr_0ac_572a                            ; $56ef: $20 $39

    nop                                           ; $56f1: $00
    sub h                                         ; $56f2: $94
    adc c                                         ; $56f3: $89
    jr z, jr_0ac_571c                             ; $56f4: $28 $26

    inc hl                                        ; $56f6: $23
    ld [hl], $c1                                  ; $56f7: $36 $c1
    stop                                          ; $56f9: $10 $00
    add hl, sp                                    ; $56fb: $39
    inc hl                                        ; $56fc: $23
    jr jr_0ac_5702                                ; $56fd: $18 $03

    sub b                                         ; $56ff: $90
    inc e                                         ; $5700: $1c
    ret z                                         ; $5701: $c8

jr_0ac_5702:
    ld c, l                                       ; $5702: $4d
    nop                                           ; $5703: $00
    inc hl                                        ; $5704: $23

jr_0ac_5705:
    ldh [rNR22], a                                ; $5705: $e0 $17
    ldh a, [$83]                                  ; $5707: $f0 $83
    cp c                                          ; $5709: $b9
    ld b, h                                       ; $570a: $44
    call c, $e000                                 ; $570b: $dc $00 $e0
    ret nz                                        ; $570e: $c0

    ld b, l                                       ; $570f: $45
    ld a, l                                       ; $5710: $7d
    dec b                                         ; $5711: $05
    jr jr_0ac_5714                                ; $5712: $18 $00

jr_0ac_5714:
    ret z                                         ; $5714: $c8

    nop                                           ; $5715: $00
    jp Jump_000_0423                              ; $5716: $c3 $23 $04


    inc bc                                        ; $5719: $03
    ld l, h                                       ; $571a: $6c
    ld h, b                                       ; $571b: $60

jr_0ac_571c:
    and h                                         ; $571c: $a4
    add hl, hl                                    ; $571d: $29
    nop                                           ; $571e: $00
    or [hl]                                       ; $571f: $b6
    nop                                           ; $5720: $00
    ld [de], a                                    ; $5721: $12
    db $10                                        ; $5722: $10
    ld b, b                                       ; $5723: $40
    add e                                         ; $5724: $83
    ld c, c                                       ; $5725: $49
    ld a, b                                       ; $5726: $78
    nop                                           ; $5727: $00
    inc c                                         ; $5728: $0c
    ld e, l                                       ; $5729: $5d

jr_0ac_572a:
    rlca                                          ; $572a: $07
    add c                                         ; $572b: $81
    push bc                                       ; $572c: $c5
    ld bc, $c3dc                                  ; $572d: $01 $dc $c3
    nop                                           ; $5730: $00
    db $e3                                        ; $5731: $e3
    ldh [rDIV], a                                 ; $5732: $e0 $04
    ld l, h                                       ; $5734: $6c
    ld [bc], a                                    ; $5735: $02
    nop                                           ; $5736: $00
    and $26                                       ; $5737: $e6 $26
    nop                                           ; $5739: $00
    db $e4                                        ; $573a: $e4
    ld c, [hl]                                    ; $573b: $4e
    add b                                         ; $573c: $80
    inc e                                         ; $573d: $1c
    ld c, c                                       ; $573e: $49
    ld a, b                                       ; $573f: $78
    or b                                          ; $5740: $b0
    ldh [rP1], a                                  ; $5741: $e0 $00
    jr nz, jr_0ac_5705                            ; $5743: $20 $c0

    ldh [$ef], a                                  ; $5745: $e0 $ef
    ld h, b                                       ; $5747: $60
    ld c, a                                       ; $5748: $4f
    rra                                           ; $5749: $1f
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    sbc a                                         ; $574c: $9f
    ret nz                                        ; $574d: $c0

    ret nz                                        ; $574e: $c0

    adc a                                         ; $574f: $8f
    ld h, b                                       ; $5750: $60
    rrca                                          ; $5751: $0f
    inc b                                         ; $5752: $04
    rlca                                          ; $5753: $07
    nop                                           ; $5754: $00
    ld b, $05                                     ; $5755: $06 $05
    inc bc                                        ; $5757: $03
    ld [bc], a                                    ; $5758: $02
    cp $01                                        ; $5759: $fe $01
    cp $00                                        ; $575b: $fe $00
    ld b, b                                       ; $575d: $40
    cp $1e                                        ; $575e: $fe $1e
    ld [de], a                                    ; $5760: $12
    ld de, $0e3a                                  ; $5761: $11 $3a $0e
    add d                                         ; $5764: $82
    rlca                                          ; $5765: $07
    db $e4                                        ; $5766: $e4
    nop                                           ; $5767: $00
    adc b                                         ; $5768: $88
    ld a, b                                       ; $5769: $78
    rra                                           ; $576a: $1f
    rra                                           ; $576b: $1f
    ret nz                                        ; $576c: $c0

    pop bc                                        ; $576d: $c1
    ld e, b                                       ; $576e: $58
    ld b, h                                       ; $576f: $44
    nop                                           ; $5770: $00
    rra                                           ; $5771: $1f
    ld b, e                                       ; $5772: $43
    db $db                                        ; $5773: $db
    dec de                                        ; $5774: $1b
    ld [hl], b                                    ; $5775: $70
    db $10                                        ; $5776: $10
    ld b, b                                       ; $5777: $40
    rst $00                                       ; $5778: $c7
    nop                                           ; $5779: $00
    rrca                                          ; $577a: $0f
    inc bc                                        ; $577b: $03
    rrca                                          ; $577c: $0f
    jp $cf0f                                      ; $577d: $c3 $0f $cf


    rrca                                          ; $5780: $0f
    ld bc, $c000                                  ; $5781: $01 $00 $c0
    rst $28                                       ; $5784: $ef
    inc c                                         ; $5785: $0c

jr_0ac_5786:
    ld h, h                                       ; $5786: $64
    inc c                                         ; $5787: $0c
    ld h, l                                       ; $5788: $65
    pop af                                        ; $5789: $f1
    rlca                                          ; $578a: $07
    nop                                           ; $578b: $00
    ld hl, sp+$00                                 ; $578c: $f8 $00
    ld hl, sp+$00                                 ; $578e: $f8 $00
    ld a, [$f803]                                 ; $5790: $fa $03 $f8
    ld sp, hl                                     ; $5793: $f9
    nop                                           ; $5794: $00
    ld a, [c]                                     ; $5795: $f2
    ld bc, $10c0                                  ; $5796: $01 $c0 $10
    ld d, h                                       ; $5799: $54
    ld d, h                                       ; $579a: $54
    ld l, $1e                                     ; $579b: $2e $1e
    nop                                           ; $579d: $00
    ld l, a                                       ; $579e: $6f
    ld e, $61                                     ; $579f: $1e $61

jr_0ac_57a1:
    ld a, a                                       ; $57a1: $7f
    ld h, e                                       ; $57a2: $63
    ld a, [hl]                                    ; $57a3: $7e
    ld bc, $007e                                  ; $57a4: $01 $7e $00
    ld a, [hl]                                    ; $57a7: $7e
    ld a, h                                       ; $57a8: $7c
    ld b, d                                       ; $57a9: $42
    pop hl                                        ; $57aa: $e1
    inc c                                         ; $57ab: $0c
    add b                                         ; $57ac: $80
    ld b, d                                       ; $57ad: $42
    ld [hl], c                                    ; $57ae: $71
    nop                                           ; $57af: $00
    ld c, b                                       ; $57b0: $48
    ld b, a                                       ; $57b1: $47
    ld e, $06                                     ; $57b2: $1e $06
    nop                                           ; $57b4: $00
    ld bc, $5278                                  ; $57b5: $01 $78 $52
    nop                                           ; $57b8: $00
    ld hl, sp-$6e                                 ; $57b9: $f8 $92
    rrca                                          ; $57bb: $0f
    ld l, a                                       ; $57bc: $6f
    cpl                                           ; $57bd: $2f
    rst $08                                       ; $57be: $cf
    jr nz, jr_0ac_57a1                            ; $57bf: $20 $e0

    dec b                                         ; $57c1: $05
    ldh [$60], a                                  ; $57c2: $e0 $60
    ccf                                           ; $57c4: $3f
    ret nz                                        ; $57c5: $c0

    ld a, a                                       ; $57c6: $7f
    sbc e                                         ; $57c7: $9b
    ld b, d                                       ; $57c8: $42
    rst $28                                       ; $57c9: $ef
    adc d                                         ; $57ca: $8a
    ld [hl-], a                                   ; $57cb: $32
    nop                                           ; $57cc: $00
    rrca                                          ; $57cd: $0f
    ld h, e                                       ; $57ce: $63
    dec c                                         ; $57cf: $0d
    jr z, jr_0ac_57df                             ; $57d0: $28 $0d

    jr z, jr_0ac_5786                             ; $57d2: $28 $b2

    add a                                         ; $57d4: $87
    nop                                           ; $57d5: $00
    ret nc                                        ; $57d6: $d0

    ret nz                                        ; $57d7: $c0

    rra                                           ; $57d8: $1f
    ret nz                                        ; $57d9: $c0

    nop                                           ; $57da: $00
    ret nz                                        ; $57db: $c0

    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00

jr_0ac_57df:
    ret nz                                        ; $57df: $c0

    and a                                         ; $57e0: $a7
    ld h, a                                       ; $57e1: $67
    add a                                         ; $57e2: $87
    ld [hl], a                                    ; $57e3: $77
    sub a                                         ; $57e4: $97
    ldh [$97], a                                  ; $57e5: $e0 $97
    and d                                         ; $57e7: $a2
    xor h                                         ; $57e8: $ac
    ld a, [hl+]                                   ; $57e9: $2a
    inc bc                                        ; $57ea: $03
    ld b, $01                                     ; $57eb: $06 $01
    ld bc, $01f9                                  ; $57ed: $01 $f9 $01
    cp h                                          ; $57f0: $bc

jr_0ac_57f1:
    ld [hl+], a                                   ; $57f1: $22
    rst $38                                       ; $57f2: $ff
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    ld a, $7e                                     ; $57f5: $3e $7e
    ld e, $60                                     ; $57f7: $1e $60
    ld c, [hl]                                    ; $57f9: $4e
    ld [hl-], a                                   ; $57fa: $32
    ld [bc], a                                    ; $57fb: $02
    ld b, b                                       ; $57fc: $40
    ld a, l                                       ; $57fd: $7d
    db $10                                        ; $57fe: $10
    jr z, jr_0ac_57f1                             ; $57ff: $28 $f0

    sub [hl]                                      ; $5801: $96
    ldh a, [$84]                                  ; $5802: $f0 $84
    add l                                         ; $5804: $85
    pop af                                        ; $5805: $f1
    ld bc, $e1ad                                  ; $5806: $01 $ad $e1
    ld [$f803], sp                                ; $5809: $08 $03 $f8
    inc bc                                        ; $580c: $03
    inc bc                                        ; $580d: $03
    ldh [$3a], a                                  ; $580e: $e0 $3a
    add b                                         ; $5810: $80
    rlca                                          ; $5811: $07
    inc sp                                        ; $5812: $33
    db $10                                        ; $5813: $10
    inc bc                                        ; $5814: $03
    adc [hl]                                      ; $5815: $8e
    ld [bc], a                                    ; $5816: $02
    ld h, b                                       ; $5817: $60
    nop                                           ; $5818: $00
    ld bc, $23f8                                  ; $5819: $01 $f8 $23
    ld [$0703], sp                                ; $581c: $08 $03 $07
    ld bc, $f0ff                                  ; $581f: $01 $ff $f0
    nop                                           ; $5822: $00
    ldh a, [$cc]                                  ; $5823: $f0 $cc
    inc bc                                        ; $5825: $03
    ld a, b                                       ; $5826: $78
    inc a                                         ; $5827: $3c
    inc a                                         ; $5828: $3c
    ld h, d                                       ; $5829: $62
    ld a, h                                       ; $582a: $7c
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    db $fc                                        ; $582d: $fc
    push hl                                       ; $582e: $e5
    ld bc, $19d8                                  ; $582f: $01 $d8 $19
    inc e                                         ; $5832: $1c
    inc e                                         ; $5833: $1c
    nop                                           ; $5834: $00
    pop bc                                        ; $5835: $c1
    dec e                                         ; $5836: $1d
    add c                                         ; $5837: $81
    dec c                                         ; $5838: $0d
    nop                                           ; $5839: $00
    ldh a, [rIF]                                  ; $583a: $f0 $0f
    adc b                                         ; $583c: $88
    nop                                           ; $583d: $00
    rra                                           ; $583e: $1f
    rla                                           ; $583f: $17
    add hl, sp                                    ; $5840: $39
    ret                                           ; $5841: $c9


    ld h, e                                       ; $5842: $63
    pop bc                                        ; $5843: $c1
    sbc a                                         ; $5844: $9f
    rst $38                                       ; $5845: $ff
    nop                                           ; $5846: $00
    jr nc, @+$10                                  ; $5847: $30 $0e

    sub b                                         ; $5849: $90
    ret nz                                        ; $584a: $c0

    nop                                           ; $584b: $00
    rra                                           ; $584c: $1f
    ret nz                                        ; $584d: $c0

    ld e, a                                       ; $584e: $5f
    nop                                           ; $584f: $00
    add b                                         ; $5850: $80
    add b                                         ; $5851: $80
    and b                                         ; $5852: $a0
    sub b                                         ; $5853: $90
    ld e, h                                       ; $5854: $5c
    ld [hl], h                                    ; $5855: $74
    jr nc, jr_0ac_58c4                            ; $5856: $30 $6c

    ld [$aefa], sp                                ; $5858: $08 $fa $ae
    ld a, [$6016]                                 ; $585b: $fa $16 $60
    ret z                                         ; $585e: $c8

    ld bc, $0300                                  ; $585f: $01 $00 $03
    ld b, b                                       ; $5862: $40
    inc bc                                        ; $5863: $03
    ld e, e                                       ; $5864: $5b
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    ld b, $07                                     ; $5867: $06 $07
    inc e                                         ; $5869: $1c
    rlca                                          ; $586a: $07
    jr c, jr_0ac_586d                             ; $586b: $38 $00

jr_0ac_586d:
    ld c, $78                                     ; $586d: $0e $78
    add hl, de                                    ; $586f: $19
    ld [hl], b                                    ; $5870: $70
    or a                                          ; $5871: $b7
    ldh [$2f], a                                  ; $5872: $e0 $2f
    rlca                                          ; $5874: $07
    nop                                           ; $5875: $00
    db $f4                                        ; $5876: $f4
    rst $20                                       ; $5877: $e7
    rlca                                          ; $5878: $07
    push bc                                       ; $5879: $c5
    rrca                                          ; $587a: $0f
    add hl, bc                                    ; $587b: $09
    ld hl, $0003                                  ; $587c: $21 $03 $00
    ldh [rTMA], a                                 ; $587f: $e0 $06
    ret nz                                        ; $5881: $c0

    rla                                           ; $5882: $17
    jp nz, $b037                                  ; $5883: $c2 $37 $b0

    ldh [rP1], a                                  ; $5886: $e0 $00

jr_0ac_5888:
    adc l                                         ; $5888: $8d
    ld h, b                                       ; $5889: $60
    push bc                                       ; $588a: $c5
    ld h, b                                       ; $588b: $60
    ld h, $b0                                     ; $588c: $26 $b0
    inc bc                                        ; $588e: $03
    sbc b                                         ; $588f: $98
    nop                                           ; $5890: $00
    ld b, b                                       ; $5891: $40
    ld hl, sp-$7c                                 ; $5892: $f8 $84
    ld c, [hl]                                    ; $5894: $4e
    ld [hl], $0f                                  ; $5895: $36 $0f
    ld [hl], e                                    ; $5897: $73
    ret c                                         ; $5898: $d8

    nop                                           ; $5899: $00
    sbc $74                                       ; $589a: $de $74
    jp nz, Jump_000_0c62                          ; $589c: $c2 $62 $0c

    ld l, d                                       ; $589f: $6a
    ld c, h                                       ; $58a0: $4c
    inc sp                                        ; $58a1: $33
    nop                                           ; $58a2: $00
    sub c                                         ; $58a3: $91
    nop                                           ; $58a4: $00
    ret nz                                        ; $58a5: $c0

    ld h, c                                       ; $58a6: $61
    inc bc                                        ; $58a7: $03
    add hl, sp                                    ; $58a8: $39
    ld bc, $00cc                                  ; $58a9: $01 $cc $00
    xor h                                         ; $58ac: $ac
    ret nc                                        ; $58ad: $d0

    and b                                         ; $58ae: $a0
    call c, Call_0ac_4870                         ; $58af: $dc $70 $48
    ld [hl], h                                    ; $58b2: $74
    ld [hl], b                                    ; $58b3: $70
    ld bc, $3020                                  ; $58b4: $01 $20 $30
    ld [bc], a                                    ; $58b7: $02
    add e                                         ; $58b8: $83
    add h                                         ; $58b9: $84
    pop de                                        ; $58ba: $d1
    sub [hl]                                      ; $58bb: $96
    ret nc                                        ; $58bc: $d0

    ld d, b                                       ; $58bd: $50
    nop                                           ; $58be: $00
    add b                                         ; $58bf: $80
    ret nz                                        ; $58c0: $c0

Jump_0ac_58c1:
    ld b, b                                       ; $58c1: $40
    ld b, $01                                     ; $58c2: $06 $01

jr_0ac_58c4:
    add hl, de                                    ; $58c4: $19
    ld e, $3a                                     ; $58c5: $1e $3a
    ld bc, $7034                                  ; $58c7: $01 $34 $70
    ld l, c                                       ; $58ca: $69
    ldh a, [$e7]                                  ; $58cb: $f0 $e7
    ldh [$cf], a                                  ; $58cd: $e0 $cf
    ld [bc], a                                    ; $58cf: $02
    ld [$8003], sp                                ; $58d0: $08 $03 $80
    rra                                           ; $58d3: $1f
    ld a, a                                       ; $58d4: $7f
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    rst $38                                       ; $58d7: $ff
    inc bc                                        ; $58d8: $03
    db $10                                        ; $58d9: $10
    ei                                            ; $58da: $fb
    stop                                          ; $58db: $10 $00
    ld l, $a0                                     ; $58dd: $2e $a0
    sub c                                         ; $58df: $91
    adc h                                         ; $58e0: $8c
    or [hl]                                       ; $58e1: $b6
    adc b                                         ; $58e2: $88
    ld a, $a6                                     ; $58e3: $3e $a6
    nop                                           ; $58e5: $00
    jr c, jr_0ac_5888                             ; $58e6: $38 $a0

    adc c                                         ; $58e8: $89
    add hl, sp                                    ; $58e9: $39
    add c                                         ; $58ea: $81
    ld bc, $01f9                                  ; $58eb: $01 $f9 $01
    nop                                           ; $58ee: $00
    or b                                          ; $58ef: $b0
    cpl                                           ; $58f0: $2f

jr_0ac_58f1:
    or d                                          ; $58f1: $b2
    xor l                                         ; $58f2: $ad
    rra                                           ; $58f3: $1f
    pop hl                                        ; $58f4: $e1
    rla                                           ; $58f5: $17
    ld l, b                                       ; $58f6: $68
    nop                                           ; $58f7: $00
    ret c                                         ; $58f8: $d8

    cp [hl]                                       ; $58f9: $be
    ld a, b                                       ; $58fa: $78
    add h                                         ; $58fb: $84
    ld sp, $8bf8                                  ; $58fc: $31 $f8 $8b
    db $fc                                        ; $58ff: $fc
    nop                                           ; $5900: $00
    ld bc, $401d                                  ; $5901: $01 $1d $40
    inc c                                         ; $5904: $0c
    ld l, $4e                                     ; $5905: $2e $4e
    jr nz, jr_0ac_5949                            ; $5907: $20 $40

    nop                                           ; $5909: $00
    ld b, [hl]                                    ; $590a: $46
    ld h, b                                       ; $590b: $60
    ld b, $b0                                     ; $590c: $06 $b0
    sub h                                         ; $590e: $94
    ld [bc], a                                    ; $590f: $02
    add b                                         ; $5910: $80
    add d                                         ; $5911: $82
    nop                                           ; $5912: $00
    add c                                         ; $5913: $81
    sbc b                                         ; $5914: $98
    add b                                         ; $5915: $80
    sbc [hl]                                      ; $5916: $9e
    ret nz                                        ; $5917: $c0

    rra                                           ; $5918: $1f
    ret nz                                        ; $5919: $c0

    sbc a                                         ; $591a: $9f
    nop                                           ; $591b: $00
    ld e, a                                       ; $591c: $5f
    ret nz                                        ; $591d: $c0

    rrca                                          ; $591e: $0f
    ret nz                                        ; $591f: $c0

    rla                                           ; $5920: $17
    db $10                                        ; $5921: $10
    ld c, e                                       ; $5922: $4b
    jr jr_0ac_5925                                ; $5923: $18 $00

jr_0ac_5925:
    ld b, b                                       ; $5925: $40
    and b                                         ; $5926: $a0
    jr c, jr_0ac_58f1                             ; $5927: $38 $c8

    scf                                           ; $5929: $37
    ld c, e                                       ; $592a: $4b
    sbc c                                         ; $592b: $99
    add a                                         ; $592c: $87
    nop                                           ; $592d: $00
    rlca                                          ; $592e: $07
    db $eb                                        ; $592f: $eb
    rlca                                          ; $5930: $07
    pop af                                        ; $5931: $f1
    db $f4                                        ; $5932: $f4
    di                                            ; $5933: $f3
    db $f4                                        ; $5934: $f4
    di                                            ; $5935: $f3
    nop                                           ; $5936: $00
    ld h, b                                       ; $5937: $60
    ld c, a                                       ; $5938: $4f
    scf                                           ; $5939: $37
    ld b, a                                       ; $593a: $47
    scf                                           ; $593b: $37
    ld b, a                                       ; $593c: $47
    rlca                                          ; $593d: $07
    jr nc, jr_0ac_5940                            ; $593e: $30 $00

jr_0ac_5940:
    dec bc                                        ; $5940: $0b
    jr c, jr_0ac_5976                             ; $5941: $38 $33

    dec bc                                        ; $5943: $0b
    inc de                                        ; $5944: $13
    dec bc                                        ; $5945: $0b
    dec de                                        ; $5946: $1b
    dec bc                                        ; $5947: $0b
    ld [bc], a                                    ; $5948: $02

jr_0ac_5949:
    ld e, [hl]                                    ; $5949: $5e
    and c                                         ; $594a: $a1
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    call nz, Call_0ac_733b                        ; $594d: $c4 $3b $73
    ld [$00f0], sp                                ; $5950: $08 $f0 $00
    nop                                           ; $5953: $00
    db $ec                                        ; $5954: $ec
    ld c, $e0                                     ; $5955: $0e $e0
    inc b                                         ; $5957: $04
    ld hl, sp+$01                                 ; $5958: $f8 $01
    pop af                                        ; $595a: $f1
    nop                                           ; $595b: $00
    inc bc                                        ; $595c: $03

jr_0ac_595d:
    pop af                                        ; $595d: $f1
    dec b                                         ; $595e: $05
    db $f4                                        ; $595f: $f4
    dec b                                         ; $5960: $05
    or $06                                        ; $5961: $f6 $06
    ld hl, sp+$00                                 ; $5963: $f8 $00
    ld [bc], a                                    ; $5965: $02
    ld a, l                                       ; $5966: $7d
    ld bc, $b181                                  ; $5967: $01 $81 $b1
    dec b                                         ; $596a: $05
    ld [bc], a                                    ; $596b: $02
    ld a, [$7500]                                 ; $596c: $fa $00 $75
    sbc a                                         ; $596f: $9f
    sbc [hl]                                      ; $5970: $9e
    ld bc, $4d06                                  ; $5971: $01 $06 $4d
    ld l, $57                                     ; $5974: $2e $57

jr_0ac_5976:
    nop                                           ; $5976: $00
    daa                                           ; $5977: $27
    ld [hl], a                                    ; $5978: $77
    ld a, b                                       ; $5979: $78
    xor b                                         ; $597a: $a8
    ld b, h                                       ; $597b: $44
    sbc [hl]                                      ; $597c: $9e
    add d                                         ; $597d: $82
    ld [hl-], a                                   ; $597e: $32
    nop                                           ; $597f: $00
    adc [hl]                                      ; $5980: $8e
    ld h, b                                       ; $5981: $60
    ld a, h                                       ; $5982: $7c
    ld [hl], b                                    ; $5983: $70
    inc c                                         ; $5984: $0c
    ld l, b                                       ; $5985: $68
    sbc h                                         ; $5986: $9c
    ld b, h                                       ; $5987: $44
    nop                                           ; $5988: $00
    sbc h                                         ; $5989: $9c
    ld h, b                                       ; $598a: $60
    adc $f0                                       ; $598b: $ce $f0
    add [hl]                                      ; $598d: $86
    inc c                                         ; $598e: $0c
    ret                                           ; $598f: $c9


    inc l                                         ; $5990: $2c
    nop                                           ; $5991: $00
    call z, $e086                                 ; $5992: $cc $86 $e0
    rst $10                                       ; $5995: $d7
    ldh a, [$71]                                  ; $5996: $f0 $71
    rlca                                          ; $5998: $07
    ld [hl], b                                    ; $5999: $70
    nop                                           ; $599a: $00
    rlca                                          ; $599b: $07
    add a                                         ; $599c: $87
    ld [hl], a                                    ; $599d: $77
    add a                                         ; $599e: $87
    ld [hl], a                                    ; $599f: $77
    push af                                       ; $59a0: $f5
    inc bc                                        ; $59a1: $03
    push hl                                       ; $59a2: $e5
    nop                                           ; $59a3: $00
    dec bc                                        ; $59a4: $0b
    ld h, a                                       ; $59a5: $67
    add hl, bc                                    ; $59a6: $09
    daa                                           ; $59a7: $27
    dec bc                                        ; $59a8: $0b
    adc a                                         ; $59a9: $8f
    rla                                           ; $59aa: $17
    rrca                                          ; $59ab: $0f
    nop                                           ; $59ac: $00
    sub e                                         ; $59ad: $93
    ret z                                         ; $59ae: $c8

    db $10                                        ; $59af: $10
    ret z                                         ; $59b0: $c8

    sub b                                         ; $59b1: $90
    add hl, de                                    ; $59b2: $19
    dec c                                         ; $59b3: $0d

jr_0ac_59b4:
    add hl, de                                    ; $59b4: $19
    nop                                           ; $59b5: $00
    dec b                                         ; $59b6: $05
    add hl, bc                                    ; $59b7: $09
    dec b                                         ; $59b8: $05
    inc c                                         ; $59b9: $0c
    ld b, $0c                                     ; $59ba: $06 $0c
    ld b, $04                                     ; $59bc: $06 $04
    nop                                           ; $59be: $00
    ld [bc], a                                    ; $59bf: $02
    dec b                                         ; $59c0: $05
    inc bc                                        ; $59c1: $03
    ld b, $03                                     ; $59c2: $06 $03
    db $f4                                        ; $59c4: $f4
    ld b, $f8                                     ; $59c5: $06 $f8
    nop                                           ; $59c7: $00
    inc bc                                        ; $59c8: $03
    db $fd                                        ; $59c9: $fd
    ld bc, $e000                                  ; $59ca: $01 $00 $e0
    ld e, $d0                                     ; $59cd: $1e $d0
    add b                                         ; $59cf: $80
    nop                                           ; $59d0: $00
    or b                                          ; $59d1: $b0
    rrca                                          ; $59d2: $0f
    jr nc, jr_0ac_5a15                            ; $59d3: $30 $40

    ld bc, $c145                                  ; $59d5: $01 $45 $c1
    ld hl, sp+$00                                 ; $59d8: $f8 $00
    pop bc                                        ; $59da: $c1
    jr nc, jr_0ac_595d                            ; $59db: $30 $80

    ret nz                                        ; $59dd: $c0

    rst $00                                       ; $59de: $c7
    ld d, b                                       ; $59df: $50
    rlca                                          ; $59e0: $07
    jr nz, jr_0ac_59e3                            ; $59e1: $20 $00

jr_0ac_59e3:
    adc a                                         ; $59e3: $8f
    ldh [$af], a                                  ; $59e4: $e0 $af
    ld h, b                                       ; $59e6: $60
    cpl                                           ; $59e7: $2f
    ret nc                                        ; $59e8: $d0

    sub e                                         ; $59e9: $93
    inc bc                                        ; $59ea: $03
    nop                                           ; $59eb: $00
    inc a                                         ; $59ec: $3c
    adc d                                         ; $59ed: $8a

jr_0ac_59ee:
    dec b                                         ; $59ee: $05
    ld a, [de]                                    ; $59ef: $1a
    inc l                                         ; $59f0: $2c
    jr jr_0ac_5a2f                                ; $59f1: $18 $3c

    cp h                                          ; $59f3: $bc
    nop                                           ; $59f4: $00
    inc a                                         ; $59f5: $3c
    pop bc                                        ; $59f6: $c1
    ld bc, $1cd5                                  ; $59f7: $01 $d5 $1c
    ldh [rNR52], a                                ; $59fa: $e0 $26
    ret nz                                        ; $59fc: $c0

    nop                                           ; $59fd: $00
    ld [de], a                                    ; $59fe: $12
    add [hl]                                      ; $59ff: $86
    ret nz                                        ; $5a00: $c0

    and [hl]                                      ; $5a01: $a6
    add b                                         ; $5a02: $80
    jr jr_0ac_5a1f                                ; $5a03: $18 $1a

    ld [$0200], sp                                ; $5a05: $08 $00 $02
    jr nz, jr_0ac_59b4                            ; $5a08: $20 $aa

    ld l, b                                       ; $5a0a: $68
    inc bc                                        ; $5a0b: $03
    ld h, [hl]                                    ; $5a0c: $66
    ldh a, [$60]                                  ; $5a0d: $f0 $60
    nop                                           ; $5a0f: $00
    ldh [$60], a                                  ; $5a10: $e0 $60
    ld h, b                                       ; $5a12: $60
    ld h, [hl]                                    ; $5a13: $66
    ld l, c                                       ; $5a14: $69

jr_0ac_5a15:
    ld h, h                                       ; $5a15: $64
    ld c, e                                       ; $5a16: $4b
    ld l, [hl]                                    ; $5a17: $6e
    nop                                           ; $5a18: $00
    ld c, e                                       ; $5a19: $4b
    ld [hl+], a                                   ; $5a1a: $22
    ld h, $36                                     ; $5a1b: $26 $36
    ld d, $0f                                     ; $5a1d: $16 $0f

jr_0ac_5a1f:
    scf                                           ; $5a1f: $37
    adc a                                         ; $5a20: $8f
    nop                                           ; $5a21: $00
    scf                                           ; $5a22: $37
    rra                                           ; $5a23: $1f
    cpl                                           ; $5a24: $2f
    rra                                           ; $5a25: $1f
    ld l, a                                       ; $5a26: $6f
    ld h, b                                       ; $5a27: $60
    ld e, a                                       ; $5a28: $5f
    ld h, b                                       ; $5a29: $60
    nop                                           ; $5a2a: $00
    ld e, a                                       ; $5a2b: $5f
    jr nz, jr_0ac_59ee                            ; $5a2c: $20 $c0

    ld h, b                                       ; $5a2e: $60

jr_0ac_5a2f:
    ret nz                                        ; $5a2f: $c0

    ld [bc], a                                    ; $5a30: $02
    ld bc, $0602                                  ; $5a31: $01 $02 $06
    ld bc, $0103                                  ; $5a34: $01 $03 $01
    nop                                           ; $5a37: $00
    ld bc, $0003                                  ; $5a38: $01 $03 $00
    ret nz                                        ; $5a3b: $c0

    ld bc, $0000                                  ; $5a3c: $01 $00 $00
    nop                                           ; $5a3f: $00
    ld a, b                                       ; $5a40: $78
    ld a, c                                       ; $5a41: $79
    or h                                          ; $5a42: $b4
    dec b                                         ; $5a43: $05
    and b                                         ; $5a44: $a0
    ld [bc], a                                    ; $5a45: $02
    sbc b                                         ; $5a46: $98
    nop                                           ; $5a47: $00
    inc d                                         ; $5a48: $14
    sub c                                         ; $5a49: $91
    adc c                                         ; $5a4a: $89
    inc b                                         ; $5a4b: $04
    call nz, $5c9c                                ; $5a4c: $c4 $9c $5c
    ld b, c                                       ; $5a4f: $41
    nop                                           ; $5a50: $00
    sbc l                                         ; $5a51: $9d
    ret nz                                        ; $5a52: $c0

    ld h, a                                       ; $5a53: $67
    nop                                           ; $5a54: $00
    ldh [rIF], a                                  ; $5a55: $e0 $0f
    jp $0091                                      ; $5a57: $c3 $91 $00


    adc [hl]                                      ; $5a5a: $8e
    ld l, $10                                     ; $5a5b: $2e $10
    ld a, h                                       ; $5a5d: $7c
    ld a, d                                       ; $5a5e: $7a
    ldh a, [$ee]                                  ; $5a5f: $f0 $ee
    jp nz, $3e00                                  ; $5a61: $c2 $00 $3e

    pop de                                        ; $5a64: $d1
    add hl, bc                                    ; $5a65: $09
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    ld [hl-], a                                   ; $5a68: $32
    cp h                                          ; $5a69: $bc
    ld b, e                                       ; $5a6a: $43
    nop                                           ; $5a6b: $00
    ld a, a                                       ; $5a6c: $7f
    ld hl, sp-$59                                 ; $5a6d: $f8 $a7
    adc l                                         ; $5a6f: $8d
    adc d                                         ; $5a70: $8a
    ld a, d                                       ; $5a71: $7a
    rlca                                          ; $5a72: $07
    ld a, [hl]                                    ; $5a73: $7e
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    ld l, b                                       ; $5a76: $68
    ld h, e                                       ; $5a77: $63
    ld l, b                                       ; $5a78: $68
    ld b, d                                       ; $5a79: $42
    ld a, [bc]                                    ; $5a7a: $0a
    ld e, b                                       ; $5a7b: $58
    ld [bc], a                                    ; $5a7c: $02
    nop                                           ; $5a7d: $00
    db $10                                        ; $5a7e: $10
    ld h, b                                       ; $5a7f: $60
    ld h, $60                                     ; $5a80: $26 $60
    ld b, [hl]                                    ; $5a82: $46
    ld e, $40                                     ; $5a83: $1e $40
    cp a                                          ; $5a85: $bf
    nop                                           ; $5a86: $00
    add c                                         ; $5a87: $81
    ld [de], a                                    ; $5a88: $12
    ld [bc], a                                    ; $5a89: $02
    ld [$4c09], sp                                ; $5a8a: $08 $09 $4c
    dec c                                         ; $5a8d: $0d
    ld l, h                                       ; $5a8e: $6c
    nop                                           ; $5a8f: $00
    dec b                                         ; $5a90: $05
    ld d, c                                       ; $5a91: $51
    ld [hl], h                                    ; $5a92: $74
    ld h, e                                       ; $5a93: $63
    ld [hl], b                                    ; $5a94: $70
    ld a, [de]                                    ; $5a95: $1a
    add hl, de                                    ; $5a96: $19
    add hl, bc                                    ; $5a97: $09
    nop                                           ; $5a98: $00
    ld a, [bc]                                    ; $5a99: $0a
    ret nz                                        ; $5a9a: $c0

    add b                                         ; $5a9b: $80
    ld b, b                                       ; $5a9c: $40
    add b                                         ; $5a9d: $80
    ld b, b                                       ; $5a9e: $40
    ret nz                                        ; $5a9f: $c0

    add b                                         ; $5aa0: $80
    sbc b                                         ; $5aa1: $98
    cp h                                          ; $5aa2: $bc
    ld bc, $0080                                  ; $5aa3: $01 $80 $00
    ld b, $00                                     ; $5aa6: $06 $00
    sbc a                                         ; $5aa8: $9f
    ld [hl], d                                    ; $5aa9: $72
    ld hl, $e8c9                                  ; $5aaa: $21 $c9 $e8
    nop                                           ; $5aad: $00
    inc bc                                        ; $5aae: $03
    ld h, b                                       ; $5aaf: $60
    ld b, e                                       ; $5ab0: $43
    ldh a, [$83]                                  ; $5ab1: $f0 $83
    ldh a, [$80]                                  ; $5ab3: $f0 $80
    ld hl, $1e00                                  ; $5ab5: $21 $00 $1e
    jr c, jr_0ac_5ae1                             ; $5ab8: $38 $27

    rrca                                          ; $5aba: $0f
    inc sp                                        ; $5abb: $33
    add b                                         ; $5abc: $80
    ld a, l                                       ; $5abd: $7d
    add l                                         ; $5abe: $85
    nop                                           ; $5abf: $00
    ld sp, hl                                     ; $5ac0: $f9
    ld a, [bc]                                    ; $5ac1: $0a
    ld sp, hl                                     ; $5ac2: $f9
    di                                            ; $5ac3: $f3
    ld c, c                                       ; $5ac4: $49
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    db $e3                                        ; $5ac7: $e3
    nop                                           ; $5ac8: $00
    inc hl                                        ; $5ac9: $23
    ld sp, $0fc1                                  ; $5aca: $31 $c1 $0f
    pop af                                        ; $5acd: $f1
    db $fc                                        ; $5ace: $fc
    add e                                         ; $5acf: $83
    ld hl, sp+$00                                 ; $5ad0: $f8 $00
    ld b, $0c                                     ; $5ad2: $06 $0c
    ldh a, [rNR24]                                ; $5ad4: $f0 $19
    pop hl                                        ; $5ad6: $e1
    nop                                           ; $5ad7: $00
    nop                                           ; $5ad8: $00
    pop hl                                        ; $5ad9: $e1
    nop                                           ; $5ada: $00
    ld a, a                                       ; $5adb: $7f
    ldh a, [$cf]                                  ; $5adc: $f0 $cf
    inc e                                         ; $5ade: $1c
    inc de                                        ; $5adf: $13
    inc bc                                        ; $5ae0: $03

jr_0ac_5ae1:
    dec a                                         ; $5ae1: $3d
    ld b, a                                       ; $5ae2: $47
    nop                                           ; $5ae3: $00
    add hl, sp                                    ; $5ae4: $39
    ld a, b                                       ; $5ae5: $78
    or [hl]                                       ; $5ae6: $b6
    ldh a, [$6e]                                  ; $5ae7: $f0 $6e
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    ld a, [hl]                                    ; $5aeb: $7e
    nop                                           ; $5aec: $00
    db $d3                                        ; $5aed: $d3
    add e                                         ; $5aee: $83
    ld b, h                                       ; $5aef: $44
    rst $00                                       ; $5af0: $c7
    jp hl                                         ; $5af1: $e9


    inc sp                                        ; $5af2: $33
    inc [hl]                                      ; $5af3: $34
    scf                                           ; $5af4: $37
    nop                                           ; $5af5: $00
    jr nc, jr_0ac_5afe                            ; $5af6: $30 $06

    ld [hl-], a                                   ; $5af8: $32
    ld c, $26                                     ; $5af9: $0e $26
    inc bc                                        ; $5afb: $03
    dec c                                         ; $5afc: $0d
    rst $20                                       ; $5afd: $e7

jr_0ac_5afe:
    inc b                                         ; $5afe: $04
    dec de                                        ; $5aff: $1b
    inc c                                         ; $5b00: $0c
    ldh a, [rNR32]                                ; $5b01: $f0 $1c
    db $e4                                        ; $5b03: $e4
    nop                                           ; $5b04: $00
    ld l, e                                       ; $5b05: $6b
    db $10                                        ; $5b06: $10
    inc bc                                        ; $5b07: $03
    ld l, c                                       ; $5b08: $69
    ld [bc], a                                    ; $5b09: $02
    ld b, b                                       ; $5b0a: $40
    nop                                           ; $5b0b: $00
    ld bc, $fff0                                  ; $5b0c: $01 $f0 $ff
    nop                                           ; $5b0f: $00
    cp $00                                        ; $5b10: $fe $00
    nop                                           ; $5b12: $00
    db $fc                                        ; $5b13: $fc
    nop                                           ; $5b14: $00
    ld bc, $e1f0                                  ; $5b15: $01 $f0 $e1
    and $c6                                       ; $5b18: $e6 $c6
    ret nz                                        ; $5b1a: $c0

    push de                                       ; $5b1b: $d5
    push de                                       ; $5b1c: $d5
    nop                                           ; $5b1d: $00
    rst $20                                       ; $5b1e: $e7
    nop                                           ; $5b1f: $00
    add c                                         ; $5b20: $81
    nop                                           ; $5b21: $00
    inc l                                         ; $5b22: $2c
    inc l                                         ; $5b23: $2c
    cp a                                          ; $5b24: $bf
    ld d, c                                       ; $5b25: $51
    nop                                           ; $5b26: $00
    call c, Call_000_1c8e                         ; $5b27: $dc $8e $1c
    adc l                                         ; $5b2a: $8d
    dec hl                                        ; $5b2b: $2b
    ld a, [hl-]                                   ; $5b2c: $3a
    ld [de], a                                    ; $5b2d: $12
    sbc $80                                       ; $5b2e: $de $80
    ld b, b                                       ; $5b30: $40
    ld [$007f], sp                                ; $5b31: $08 $7f $00
    rrca                                          ; $5b34: $0f
    nop                                           ; $5b35: $00
    rst $20                                       ; $5b36: $e7

jr_0ac_5b37:
    rlca                                          ; $5b37: $07
    ld h, e                                       ; $5b38: $63
    rlca                                          ; $5b39: $07
    sub e                                         ; $5b3a: $93
    add b                                         ; $5b3b: $80
    ld [hl], b                                    ; $5b3c: $70
    cp h                                          ; $5b3d: $bc
    ret nz                                        ; $5b3e: $c0

    ld d, b                                       ; $5b3f: $50
    ld hl, sp+$72                                 ; $5b40: $f8 $72
    ld d, b                                       ; $5b42: $50
    ld e, e                                       ; $5b43: $5b
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    cp $00                                        ; $5b46: $fe $00
    db $fc                                        ; $5b48: $fc
    nop                                           ; $5b49: $00
    ld [bc], a                                    ; $5b4a: $02
    ldh a, [$0c]                                  ; $5b4b: $f0 $0c
    ldh [rP1], a                                  ; $5b4d: $e0 $00
    pop bc                                        ; $5b4f: $c1
    ret c                                         ; $5b50: $d8

    inc bc                                        ; $5b51: $03
    inc sp                                        ; $5b52: $33
    db $e3                                        ; $5b53: $e3
    dec bc                                        ; $5b54: $0b
    sbc d                                         ; $5b55: $9a
    sbc c                                         ; $5b56: $99
    nop                                           ; $5b57: $00
    inc de                                        ; $5b58: $13
    daa                                           ; $5b59: $27
    daa                                           ; $5b5a: $27
    ld [hl], h                                    ; $5b5b: $74
    jp nz, Jump_0ac_452e                          ; $5b5c: $c2 $2e $45

    add sp, $00                                   ; $5b5f: $e8 $00
    ld c, h                                       ; $5b61: $4c
    ld h, c                                       ; $5b62: $61
    xor l                                         ; $5b63: $ad
    add h                                         ; $5b64: $84
    ld a, [bc]                                    ; $5b65: $0a
    ld [$849e], sp                                ; $5b66: $08 $9e $84
    nop                                           ; $5b69: $00
    ld e, h                                       ; $5b6a: $5c
    ld hl, sp+$39                                 ; $5b6b: $f8 $39
    ret                                           ; $5b6d: $c9


    jr z, jr_0ac_5b37                             ; $5b6e: $28 $c7

    add hl, sp                                    ; $5b70: $39

jr_0ac_5b71:
    or $00                                        ; $5b71: $f6 $00
    add a                                         ; $5b73: $87
    jr jr_0ac_5bad                                ; $5b74: $18 $37

    cp e                                          ; $5b76: $bb
    inc h                                         ; $5b77: $24
    ld b, e                                       ; $5b78: $43
    sub d                                         ; $5b79: $92
    adc [hl]                                      ; $5b7a: $8e
    nop                                           ; $5b7b: $00
    ld [bc], a                                    ; $5b7c: $02
    inc c                                         ; $5b7d: $0c
    add sp, -$7c                                  ; $5b7e: $e8 $84
    ld h, a                                       ; $5b80: $67
    pop hl                                        ; $5b81: $e1
    jp $01c0                                      ; $5b82: $c3 $c0 $01


    ld bc, $f8f8                                  ; $5b85: $01 $f8 $f8
    dec a                                         ; $5b88: $3d
    jr z, jr_0ac_5b71                             ; $5b89: $28 $e6

    rst $38                                       ; $5b8b: $ff
    ld a, [hl]                                    ; $5b8c: $7e
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    ccf                                           ; $5b90: $3f
    ld b, b                                       ; $5b91: $40
    rrca                                          ; $5b92: $0f
    ld [hl], b                                    ; $5b93: $70
    rlca                                          ; $5b94: $07
    jr jr_0ac_5b9a                                ; $5b95: $18 $03

    ld [$600c], sp                                ; $5b97: $08 $0c $60

jr_0ac_5b9a:
    rlca                                          ; $5b9a: $07
    ldh a, [$ba]                                  ; $5b9b: $f0 $ba
    ld e, b                                       ; $5b9d: $58
    ld a, a                                       ; $5b9e: $7f
    nop                                           ; $5b9f: $00
    ld bc, $fc00                                  ; $5ba0: $01 $00 $fc
    inc bc                                        ; $5ba3: $03
    ldh a, [$0e]                                  ; $5ba4: $f0 $0e
    ldh [$d8], a                                  ; $5ba6: $e0 $d8
    pop bc                                        ; $5ba8: $c1
    jr nc, jr_0ac_5bab                            ; $5ba9: $30 $00

jr_0ac_5bab:
    rlca                                          ; $5bab: $07
    ld h, b                                       ; $5bac: $60

jr_0ac_5bad:
    rrca                                          ; $5bad: $0f
    ld h, b                                       ; $5bae: $60
    rrca                                          ; $5baf: $0f
    and b                                         ; $5bb0: $a0
    adc a                                         ; $5bb1: $8f
    add b                                         ; $5bb2: $80
    nop                                           ; $5bb3: $00
    jr jr_0ac_5c32                                ; $5bb4: $18 $7c

    ld bc, $01e0                                  ; $5bb6: $01 $e0 $01
    adc b                                         ; $5bb9: $88
    add b                                         ; $5bba: $80
    and b                                         ; $5bbb: $a0
    nop                                           ; $5bbc: $00
    sbc h                                         ; $5bbd: $9c
    inc l                                         ; $5bbe: $2c
    inc a                                         ; $5bbf: $3c
    ld [hl+], a                                   ; $5bc0: $22
    ld l, b                                       ; $5bc1: $68
    ld d, $70                                     ; $5bc2: $16 $70
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    ret nz                                        ; $5bc6: $c0

    rst $38                                       ; $5bc7: $ff
    ld [$1e00], sp                                ; $5bc8: $08 $00 $1e
    inc e                                         ; $5bcb: $1c
    ld [$0008], sp                                ; $5bcc: $08 $08 $00
    db $eb                                        ; $5bcf: $eb
    ld [hl], $0a                                  ; $5bd0: $36 $0a
    sbc h                                         ; $5bd2: $9c
    push de                                       ; $5bd3: $d5
    ld b, c                                       ; $5bd4: $41
    ld h, c                                       ; $5bd5: $61
    inc c                                         ; $5bd6: $0c
    nop                                           ; $5bd7: $00
    inc b                                         ; $5bd8: $04
    ld hl, $fae0                                  ; $5bd9: $21 $e0 $fa
    ld b, $05                                     ; $5bdc: $06 $05
    inc bc                                        ; $5bde: $03
    inc bc                                        ; $5bdf: $03
    nop                                           ; $5be0: $00
    ld sp, hl                                     ; $5be1: $f9
    nop                                           ; $5be2: $00
    ld c, $21                                     ; $5be3: $0e $21
    ldh [rNR12], a                                ; $5be5: $e0 $12
    ld sp, $0008                                  ; $5be7: $31 $08 $00
    inc h                                         ; $5bea: $24
    add sp, -$5b                                  ; $5beb: $e8 $a5
    ld bc, $28e2                                  ; $5bed: $01 $e2 $28
    ld h, e                                       ; $5bf0: $63
    ld hl, $4900                                  ; $5bf1: $21 $00 $49
    ld d, e                                       ; $5bf4: $53
    adc e                                         ; $5bf5: $8b
    sbc b                                         ; $5bf6: $98
    dec de                                        ; $5bf7: $1b
    ld c, c                                       ; $5bf8: $49
    ld c, d                                       ; $5bf9: $4a
    ld a, b                                       ; $5bfa: $78
    nop                                           ; $5bfb: $00
    ld bc, $003e                                  ; $5bfc: $01 $3e $00
    inc bc                                        ; $5bff: $03
    nop                                           ; $5c00: $00
    ld b, c                                       ; $5c01: $41
    ld a, b                                       ; $5c02: $78
    ld a, [$c400]                                 ; $5c03: $fa $00 $c4
    jr c, jr_0ac_5c46                             ; $5c06: $38 $3e

    rlca                                          ; $5c08: $07
    adc [hl]                                      ; $5c09: $8e
    add a                                         ; $5c0a: $87
    ld [hl], l                                    ; $5c0b: $75
    add b                                         ; $5c0c: $80
    nop                                           ; $5c0d: $00
    ccf                                           ; $5c0e: $3f
    ret nz                                        ; $5c0f: $c0

    rrca                                          ; $5c10: $0f
    ld [hl], a                                    ; $5c11: $77
    rlca                                          ; $5c12: $07
    dec de                                        ; $5c13: $1b
    add e                                         ; $5c14: $83
    inc c                                         ; $5c15: $0c
    nop                                           ; $5c16: $00
    ldh [rTMA], a                                 ; $5c17: $e0 $06
    ld [hl], b                                    ; $5c19: $70
    ld b, $70                                     ; $5c1a: $06 $70
    dec b                                         ; $5c1c: $05
    ld sp, $00a0                                  ; $5c1d: $31 $a0 $00
    adc a                                         ; $5c20: $8f
    or b                                          ; $5c21: $b0
    add a                                         ; $5c22: $87
    ret nc                                        ; $5c23: $d0

    rst $00                                       ; $5c24: $c7
    ret nc                                        ; $5c25: $d0

    rst $00                                       ; $5c26: $c7
    ret c                                         ; $5c27: $d8

    db $10                                        ; $5c28: $10
    jp $e3e8                                      ; $5c29: $c3 $e8 $e3


    ld [bc], a                                    ; $5c2c: $02
    ld [$610d], sp                                ; $5c2d: $08 $0d $61
    ld h, e                                       ; $5c30: $63
    add hl, bc                                    ; $5c31: $09

jr_0ac_5c32:
    nop                                           ; $5c32: $00
    inc de                                        ; $5c33: $13
    ld de, $0814                                  ; $5c34: $11 $14 $08
    add b                                         ; $5c37: $80
    add b                                         ; $5c38: $80
    adc h                                         ; $5c39: $8c
    dec bc                                        ; $5c3a: $0b
    nop                                           ; $5c3b: $00
    add c                                         ; $5c3c: $81
    ld e, $24                                     ; $5c3d: $1e $24
    ld e, a                                       ; $5c3f: $5f
    sbc b                                         ; $5c40: $98
    add b                                         ; $5c41: $80
    inc de                                        ; $5c42: $13
    ret nc                                        ; $5c43: $d0

    nop                                           ; $5c44: $00
    add c                                         ; $5c45: $81

jr_0ac_5c46:
    nop                                           ; $5c46: $00
    inc e                                         ; $5c47: $1c
    ld a, d                                       ; $5c48: $7a
    ld d, a                                       ; $5c49: $57
    ld a, a                                       ; $5c4a: $7f
    ld l, a                                       ; $5c4b: $6f
    jr z, jr_0ac_5c4e                             ; $5c4c: $28 $00

jr_0ac_5c4e:
    ccf                                           ; $5c4e: $3f
    add c                                         ; $5c4f: $81
    db $10                                        ; $5c50: $10
    sbc l                                         ; $5c51: $9d
    ld b, $c2                                     ; $5c52: $06 $c2
    inc b                                         ; $5c54: $04
    push af                                       ; $5c55: $f5
    nop                                           ; $5c56: $00
    ldh [$03], a                                  ; $5c57: $e0 $03
    db $10                                        ; $5c59: $10
    rra                                           ; $5c5a: $1f
    cp $ff                                        ; $5c5b: $fe $ff
    db $fc                                        ; $5c5d: $fc
    ld a, [hl]                                    ; $5c5e: $7e
    nop                                           ; $5c5f: $00
    ld b, $fc                                     ; $5c60: $06 $fc
    inc c                                         ; $5c62: $0c
    ld hl, sp-$28                                 ; $5c63: $f8 $d8
    inc de                                        ; $5c65: $13
    ret nc                                        ; $5c66: $d0

    inc de                                        ; $5c67: $13
    nop                                           ; $5c68: $00
    call nz, $8107                                ; $5c69: $c4 $07 $81
    rrca                                          ; $5c6c: $0f
    ld e, $80                                     ; $5c6d: $1e $80
    ld e, $02                                     ; $5c6f: $1e $02
    nop                                           ; $5c71: $00
    dec d                                         ; $5c72: $15
    rlca                                          ; $5c73: $07
    dec b                                         ; $5c74: $05
    add hl, bc                                    ; $5c75: $09
    ret nz                                        ; $5c76: $c0

    scf                                           ; $5c77: $37
    ret nz                                        ; $5c78: $c0

    rst $20                                       ; $5c79: $e7
    nop                                           ; $5c7a: $00
    sbc a                                         ; $5c7b: $9f
    ld a, e                                       ; $5c7c: $7b
    cp $06                                        ; $5c7d: $fe $06
    ld a, b                                       ; $5c7f: $78
    db $f4                                        ; $5c80: $f4
    ld bc, $0002                                  ; $5c81: $01 $02 $00
    add a                                         ; $5c84: $87
    ld b, $2c                                     ; $5c85: $06 $2c
    push de                                       ; $5c87: $d5
    add l                                         ; $5c88: $85
    ld sp, $a10d                                  ; $5c89: $31 $0d $a1
    nop                                           ; $5c8c: $00
    dec bc                                        ; $5c8d: $0b
    inc hl                                        ; $5c8e: $23
    dec bc                                        ; $5c8f: $0b
    inc hl                                        ; $5c90: $23
    jr jr_0ac_5c96                                ; $5c91: $18 $03

    db $10                                        ; $5c93: $10
    rlca                                          ; $5c94: $07
    nop                                           ; $5c95: $00

jr_0ac_5c96:
    add a                                         ; $5c96: $87
    rla                                           ; $5c97: $17
    ld b, a                                       ; $5c98: $47
    sub a                                         ; $5c99: $97
    db $ec                                        ; $5c9a: $ec
    ldh [rDIV], a                                 ; $5c9b: $e0 $04
    ldh a, [rP1]                                  ; $5c9d: $f0 $00
    dec b                                         ; $5c9f: $05
    pop af                                        ; $5ca0: $f1
    rlca                                          ; $5ca1: $07
    pop af                                        ; $5ca2: $f1
    ld [bc], a                                    ; $5ca3: $02
    ld hl, sp+$02                                 ; $5ca4: $f8 $02
    ld hl, sp+$00                                 ; $5ca6: $f8 $00
    inc bc                                        ; $5ca8: $03
    ld hl, sp+$01                                 ; $5ca9: $f8 $01
    db $fc                                        ; $5cab: $fc
    ld a, h                                       ; $5cac: $7c
    ld l, d                                       ; $5cad: $6a
    cp $72                                        ; $5cae: $fe $72
    nop                                           ; $5cb0: $00
    inc a                                         ; $5cb1: $3c
    or e                                          ; $5cb2: $b3
    ld e, a                                       ; $5cb3: $5f
    ld h, [hl]                                    ; $5cb4: $66
    add h                                         ; $5cb5: $84
    db $fd                                        ; $5cb6: $fd
    ld a, d                                       ; $5cb7: $7a
    ld b, $00                                     ; $5cb8: $06 $00
    ld a, [hl]                                    ; $5cba: $7e
    ld b, d                                       ; $5cbb: $42
    jr c, jr_0ac_5cee                             ; $5cbc: $38 $30

    dec b                                         ; $5cbe: $05
    sbc h                                         ; $5cbf: $9c
    inc de                                        ; $5cc0: $13
    sbc h                                         ; $5cc1: $9c
    nop                                           ; $5cc2: $00
    rrca                                          ; $5cc3: $0f
    ld b, b                                       ; $5cc4: $40
    add a                                         ; $5cc5: $87
    nop                                           ; $5cc6: $00
    add b                                         ; $5cc7: $80
    sub b                                         ; $5cc8: $90
    jr nc, jr_0ac_5cf4                            ; $5cc9: $30 $29

    nop                                           ; $5ccb: $00
    ld sp, $f261                                  ; $5ccc: $31 $61 $f2
    inc de                                        ; $5ccf: $13
    ld hl, sp-$1f                                 ; $5cd0: $f8 $e1
    pop af                                        ; $5cd2: $f1
    jp nz, $c300                                  ; $5cd3: $c2 $00 $c3

    add [hl]                                      ; $5cd6: $86
    rrca                                          ; $5cd7: $0f
    ld e, $61                                     ; $5cd8: $1e $61
    ld a, [hl]                                    ; $5cda: $7e
    pop bc                                        ; $5cdb: $c1
    ld a, $00                                     ; $5cdc: $3e $00
    ld a, [c]                                     ; $5cde: $f2
    db $fc                                        ; $5cdf: $fc
    ld a, [c]                                     ; $5ce0: $f2
    ld e, h                                       ; $5ce1: $5c
    dec c                                         ; $5ce2: $0d
    adc h                                         ; $5ce3: $8c
    dec b                                         ; $5ce4: $05
    sub e                                         ; $5ce5: $93
    nop                                           ; $5ce6: $00
    add c                                         ; $5ce7: $81
    sub b                                         ; $5ce8: $90
    and c                                         ; $5ce9: $a1
    cp b                                          ; $5cea: $b8
    sub h                                         ; $5ceb: $94
    adc b                                         ; $5cec: $88
    sub b                                         ; $5ced: $90

jr_0ac_5cee:
    adc h                                         ; $5cee: $8c
    nop                                           ; $5cef: $00
    inc e                                         ; $5cf0: $1c
    adc h                                         ; $5cf1: $8c
    ld a, [de]                                    ; $5cf2: $1a
    adc h                                         ; $5cf3: $8c

jr_0ac_5cf4:
    ld l, [hl]                                    ; $5cf4: $6e
    di                                            ; $5cf5: $f3
    dec e                                         ; $5cf6: $1d
    inc de                                        ; $5cf7: $13
    nop                                           ; $5cf8: $00
    rst $10                                       ; $5cf9: $d7
    dec de                                        ; $5cfa: $1b
    ld [hl], l                                    ; $5cfb: $75
    xor l                                         ; $5cfc: $ad
    sbc h                                         ; $5cfd: $9c
    ld h, h                                       ; $5cfe: $64
    ld a, b                                       ; $5cff: $78
    ld [$0000], sp                                ; $5d00: $08 $00 $00
    inc e                                         ; $5d03: $1c
    ret nz                                        ; $5d04: $c0

    ld c, b                                       ; $5d05: $48
    ret nc                                        ; $5d06: $d0

    rst $10                                       ; $5d07: $d7
    ret nz                                        ; $5d08: $c0

    ld c, a                                       ; $5d09: $4f
    nop                                           ; $5d0a: $00
    ret nz                                        ; $5d0b: $c0

    adc a                                         ; $5d0c: $8f
    add b                                         ; $5d0d: $80
    rst $08                                       ; $5d0e: $cf
    add b                                         ; $5d0f: $80
    rra                                           ; $5d10: $1f
    nop                                           ; $5d11: $00
    rra                                           ; $5d12: $1f
    nop                                           ; $5d13: $00
    ld b, b                                       ; $5d14: $40
    rra                                           ; $5d15: $1f
    nop                                           ; $5d16: $00
    ccf                                           ; $5d17: $3f
    ld bc, $01fc                                  ; $5d18: $01 $fc $01
    db $fc                                        ; $5d1b: $fc
    ld d, $00                                     ; $5d1c: $16 $00
    cp $fe                                        ; $5d1e: $fe $fe
    inc d                                         ; $5d20: $14
    ld [bc], a                                    ; $5d21: $02
    cp $1a                                        ; $5d22: $fe $1a
    ld [bc], a                                    ; $5d24: $02
    ld a, $02                                     ; $5d25: $3e $02
    ld bc, $0400                                  ; $5d27: $01 $00 $04
    add b                                         ; $5d2a: $80
    inc c                                         ; $5d2b: $0c
    adc b                                         ; $5d2c: $88
    add c                                         ; $5d2d: $81
    adc b                                         ; $5d2e: $88
    add e                                         ; $5d2f: $83
    adc b                                         ; $5d30: $88
    nop                                           ; $5d31: $00
    ld [hl-], a                                   ; $5d32: $32
    cp b                                          ; $5d33: $b8
    ld [hl+], a                                   ; $5d34: $22
    jr z, jr_0ac_5d4f                             ; $5d35: $28 $18

    inc de                                        ; $5d37: $13
    or b                                          ; $5d38: $b0
    ld d, e                                       ; $5d39: $53
    nop                                           ; $5d3a: $00
    inc d                                         ; $5d3b: $14
    rla                                           ; $5d3c: $17

jr_0ac_5d3d:
    call nz, $a303                                ; $5d3d: $c4 $03 $a3
    rlca                                          ; $5d40: $07
    ld d, e                                       ; $5d41: $53
    ld h, a                                       ; $5d42: $67
    nop                                           ; $5d43: $00
    ld b, e                                       ; $5d44: $43
    ld d, b                                       ; $5d45: $50
    inc hl                                        ; $5d46: $23
    db $10                                        ; $5d47: $10
    ld b, c                                       ; $5d48: $41
    ld h, c                                       ; $5d49: $61

jr_0ac_5d4a:
    adc $3c                                       ; $5d4a: $ce $3c
    nop                                           ; $5d4c: $00
    sbc [hl]                                      ; $5d4d: $9e
    ld a, h                                       ; $5d4e: $7c

jr_0ac_5d4f:
    cp $f9                                        ; $5d4f: $fe $f9
    db $fc                                        ; $5d51: $fc
    ld hl, sp+$01                                 ; $5d52: $f8 $01

jr_0ac_5d54:
    ld hl, sp+$00                                 ; $5d54: $f8 $00
    inc bc                                        ; $5d56: $03
    di                                            ; $5d57: $f3
    ld a, [c]                                     ; $5d58: $f2
    ld b, $02                                     ; $5d59: $06 $02
    or $1e                                        ; $5d5b: $f6 $1e
    sub h                                         ; $5d5d: $94
    nop                                           ; $5d5e: $00
    inc e                                         ; $5d5f: $1c
    ld h, $04                                     ; $5d60: $26 $04
    jr c, jr_0ac_5d70                             ; $5d62: $38 $0c

    inc b                                         ; $5d64: $04
    ldh [rSB], a                                  ; $5d65: $e0 $01
    nop                                           ; $5d67: $00
    jr nc, jr_0ac_5d3d                            ; $5d68: $30 $d3

    ld d, $c7                                     ; $5d6a: $16 $c7
    sub h                                         ; $5d6c: $94
    rst $00                                       ; $5d6d: $c7
    ld h, b                                       ; $5d6e: $60
    and b                                         ; $5d6f: $a0

jr_0ac_5d70:
    nop                                           ; $5d70: $00
    ld h, b                                       ; $5d71: $60
    cp b                                          ; $5d72: $b8
    cp h                                          ; $5d73: $bc
    ld c, h                                       ; $5d74: $4c
    xor h                                         ; $5d75: $ac
    ld l, l                                       ; $5d76: $6d
    sub c                                         ; $5d77: $91
    ld c, l                                       ; $5d78: $4d
    nop                                           ; $5d79: $00
    and c                                         ; $5d7a: $a1
    add hl, de                                    ; $5d7b: $19
    jp nz, $c23a                                  ; $5d7c: $c2 $3a $c2

    ld [hl-], a                                   ; $5d7f: $32
    add b                                         ; $5d80: $80
    ccf                                           ; $5d81: $3f
    inc e                                         ; $5d82: $1c
    add b                                         ; $5d83: $80
    ccf                                           ; $5d84: $3f
    ld a, a                                       ; $5d85: $7f
    ld d, d                                       ; $5d86: $52
    ld [bc], a                                    ; $5d87: $02
    inc b                                         ; $5d88: $04
    ld [$8a9c], sp                                ; $5d89: $08 $9c $8a
    add hl, de                                    ; $5d8c: $19
    ld de, $9800                                  ; $5d8d: $11 $00 $98
    sub h                                         ; $5d90: $94
    sbc c                                         ; $5d91: $99
    sub [hl]                                      ; $5d92: $96
    adc a                                         ; $5d93: $8f
    add b                                         ; $5d94: $80
    ret nz                                        ; $5d95: $c0

    ret nc                                        ; $5d96: $d0

    db $10                                        ; $5d97: $10
    rra                                           ; $5d98: $1f
    ret nz                                        ; $5d99: $c0

    nop                                           ; $5d9a: $00
    ld l, [hl]                                    ; $5d9b: $6e
    ld [bc], a                                    ; $5d9c: $02
    ret z                                         ; $5d9d: $c8

    ret nz                                        ; $5d9e: $c0

    ld [de], a                                    ; $5d9f: $12
    ld c, $0c                                     ; $5da0: $0e $0c
    jr nz, jr_0ac_5dc2                            ; $5da2: $20 $1e

    or b                                          ; $5da4: $b0
    adc a                                         ; $5da5: $8f
    xor b                                         ; $5da6: $a8
    ld a, [bc]                                    ; $5da7: $0a
    call z, $020a                                 ; $5da8: $cc $0a $02
    ld [bc], a                                    ; $5dab: $02
    ld [bc], a                                    ; $5dac: $02
    inc bc                                        ; $5dad: $03
    jr c, jr_0ac_5df9                             ; $5dae: $38 $49

    ld sp, $a0bc                                  ; $5db0: $31 $bc $a0
    db $10                                        ; $5db3: $10
    jr @+$01                                      ; $5db4: $18 $ff

    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    inc sp                                        ; $5db8: $33
    rlca                                          ; $5db9: $07
    ld h, e                                       ; $5dba: $63
    rlca                                          ; $5dbb: $07
    rrca                                          ; $5dbc: $0f
    rst $00                                       ; $5dbd: $c7
    rra                                           ; $5dbe: $1f
    ld b, b                                       ; $5dbf: $40
    ld b, $10                                     ; $5dc0: $06 $10

jr_0ac_5dc2:
    jr z, jr_0ac_5d4a                             ; $5dc2: $28 $86

    ld h, [hl]                                    ; $5dc4: $66
    add h                                         ; $5dc5: $84
    ld b, h                                       ; $5dc6: $44
    dec b                                         ; $5dc7: $05
    pop bc                                        ; $5dc8: $c1
    ld bc, $911d                                  ; $5dc9: $01 $1d $91
    ld [$f803], sp                                ; $5dcc: $08 $03 $f8
    inc bc                                        ; $5dcf: $03
    inc bc                                        ; $5dd0: $03
    inc [hl]                                      ; $5dd1: $34
    jr nz, jr_0ac_5d54                            ; $5dd2: $20 $80

    inc b                                         ; $5dd4: $04
    ld c, e                                       ; $5dd5: $4b
    db $10                                        ; $5dd6: $10
    inc bc                                        ; $5dd7: $03
    sub h                                         ; $5dd8: $94
    ld [bc], a                                    ; $5dd9: $02
    ld b, b                                       ; $5dda: $40
    nop                                           ; $5ddb: $00
    ld bc, $8060                                  ; $5ddc: $01 $60 $80
    ld b, b                                       ; $5ddf: $40
    ret nz                                        ; $5de0: $c0

    nop                                           ; $5de1: $00
    ld b, b                                       ; $5de2: $40
    jr nz, jr_0ac_5de5                            ; $5de3: $20 $00

jr_0ac_5de5:
    ld h, b                                       ; $5de5: $60
    nop                                           ; $5de6: $00
    jr nz, jr_0ac_5df9                            ; $5de7: $20 $10

    stop                                          ; $5de9: $10 $00
    inc de                                        ; $5deb: $13
    dec bc                                        ; $5dec: $0b
    jr nz, jr_0ac_5dfa                            ; $5ded: $20 $0b

    inc bc                                        ; $5def: $03
    jr nz, jr_0ac_5e12                            ; $5df0: $20 $20

    cp $01                                        ; $5df2: $fe $01
    db $fc                                        ; $5df4: $fc

jr_0ac_5df5:
    ld bc, $0006                                  ; $5df5: $01 $06 $00
    ld [bc], a                                    ; $5df8: $02

jr_0ac_5df9:
    ccf                                           ; $5df9: $3f

jr_0ac_5dfa:
    dec e                                         ; $5dfa: $1d
    ld bc, $e700                                  ; $5dfb: $01 $00 $e7
    jr @-$3b                                      ; $5dfe: $18 $c3

    nop                                           ; $5e00: $00
    sbc h                                         ; $5e01: $9c
    add b                                         ; $5e02: $80
    ld b, $21                                     ; $5e03: $06 $21
    add hl, de                                    ; $5e05: $19
    sbc c                                         ; $5e06: $99
    dec c                                         ; $5e07: $0d
    add hl, bc                                    ; $5e08: $09
    nop                                           ; $5e09: $00
    ld h, h                                       ; $5e0a: $64
    add hl, bc                                    ; $5e0b: $09
    ld c, e                                       ; $5e0c: $4b
    rlc b                                         ; $5e0d: $cb $00
    nop                                           ; $5e0f: $00
    inc e                                         ; $5e10: $1c
    nop                                           ; $5e11: $00

jr_0ac_5e12:
    nop                                           ; $5e12: $00
    adc [hl]                                      ; $5e13: $8e
    ld a, e                                       ; $5e14: $7b
    ld e, $73                                     ; $5e15: $1e $73
    cp $e2                                        ; $5e17: $fe $e2
    ld a, l                                       ; $5e19: $7d
    call nz, $fb08                                ; $5e1a: $c4 $08 $fb
    adc d                                         ; $5e1d: $8a
    sbc a                                         ; $5e1e: $9f
    db $fd                                        ; $5e1f: $fd
    ld d, b                                       ; $5e20: $50
    jr c, @-$72                                   ; $5e21: $38 $8c

    nop                                           ; $5e23: $00
    sub d                                         ; $5e24: $92
    nop                                           ; $5e25: $00
    sbc [hl]                                      ; $5e26: $9e
    ld hl, $083e                                  ; $5e27: $21 $3e $08
    inc b                                         ; $5e2a: $04
    db $10                                        ; $5e2b: $10
    ld [$0030], sp                                ; $5e2c: $08 $30 $00
    jr jr_0ac_5e51                                ; $5e2f: $18 $20

    db $10                                        ; $5e31: $10
    ld b, b                                       ; $5e32: $40
    jr nz, jr_0ac_5df5                            ; $5e33: $20 $c0

    and b                                         ; $5e35: $a0
    add b                                         ; $5e36: $80
    db $10                                        ; $5e37: $10
    ld b, b                                       ; $5e38: $40
    nop                                           ; $5e39: $00
    ret nz                                        ; $5e3a: $c0

    ld [hl], b                                    ; $5e3b: $70
    ld h, b                                       ; $5e3c: $60
    cp $0b                                        ; $5e3d: $fe $0b
    rlca                                          ; $5e3f: $07
    or $00                                        ; $5e40: $f6 $00
    ld a, [c]                                     ; $5e42: $f2
    db $fc                                        ; $5e43: $fc
    ei                                            ; $5e44: $fb
    ld a, [c]                                     ; $5e45: $f2
    pop af                                        ; $5e46: $f1
    ld [c], a                                     ; $5e47: $e2
    db $ed                                        ; $5e48: $ed
    pop bc                                        ; $5e49: $c1
    nop                                           ; $5e4a: $00
    ret nz                                        ; $5e4b: $c0

    ld bc, $c71e                                  ; $5e4c: $01 $1e $c7
    rra                                           ; $5e4f: $1f
    adc l                                         ; $5e50: $8d

jr_0ac_5e51:
    ld hl, $0020                                  ; $5e51: $21 $20 $00
    ld h, $18                                     ; $5e54: $26 $18
    inc bc                                        ; $5e56: $03
    dec a                                         ; $5e57: $3d
    add c                                         ; $5e58: $81
    ld a, [hl-]                                   ; $5e59: $3a
    add e                                         ; $5e5a: $83
    rla                                           ; $5e5b: $17
    nop                                           ; $5e5c: $00
    rlca                                          ; $5e5d: $07
    rrca                                          ; $5e5e: $0f
    adc a                                         ; $5e5f: $8f
    ldh a, [$7d]                                  ; $5e60: $f0 $7d
    sbc [hl]                                      ; $5e62: $9e
    ld c, $9e                                     ; $5e63: $0e $9e
    nop                                           ; $5e65: $00
    ld a, $43                                     ; $5e66: $3e $43
    inc bc                                        ; $5e68: $03
    add b                                         ; $5e69: $80
    inc e                                         ; $5e6a: $1c
    ccf                                           ; $5e6b: $3f
    ld h, c                                       ; $5e6c: $61
    ld b, h                                       ; $5e6d: $44
    nop                                           ; $5e6e: $00
    call nz, $315f                                ; $5e6f: $c4 $5f $31
    adc [hl]                                      ; $5e72: $8e
    jr nz, jr_0ac_5e92                            ; $5e73: $20 $1d

    pop bc                                        ; $5e75: $c1
    inc c                                         ; $5e76: $0c
    nop                                           ; $5e77: $00
    ret nc                                        ; $5e78: $d0

    inc a                                         ; $5e79: $3c
    ld bc, $c0d8                                  ; $5e7a: $01 $d8 $c0
    dec de                                        ; $5e7d: $1b
    sbc b                                         ; $5e7e: $98
    inc c                                         ; $5e7f: $0c
    nop                                           ; $5e80: $00
    ld e, h                                       ; $5e81: $5c
    sbc $80                                       ; $5e82: $de $80
    adc a                                         ; $5e84: $8f
    or b                                          ; $5e85: $b0
    ld bc, $0310                                  ; $5e86: $01 $10 $03
    nop                                           ; $5e89: $00
    ld sp, $b132                                  ; $5e8a: $31 $32 $b1
    inc [hl]                                      ; $5e8d: $34
    or d                                          ; $5e8e: $b2
    inc c                                         ; $5e8f: $0c
    jr nc, jr_0ac_5e9e                            ; $5e90: $30 $0c

jr_0ac_5e92:
    ld [bc], a                                    ; $5e92: $02
    ld [hl], h                                    ; $5e93: $74
    db $f4                                        ; $5e94: $f4
    db $ec                                        ; $5e95: $ec
    db $f4                                        ; $5e96: $f4
    db $ed                                        ; $5e97: $ed
    add b                                         ; $5e98: $80
    pop de                                        ; $5e99: $d1
    ld b, b                                       ; $5e9a: $40
    rst $38                                       ; $5e9b: $ff
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00

jr_0ac_5e9e:
    ld a, a                                       ; $5e9e: $7f
    nop                                           ; $5e9f: $00
    add c                                         ; $5ea0: $81
    ld a, h                                       ; $5ea1: $7c
    or b                                          ; $5ea2: $b0
    ld [hl], e                                    ; $5ea3: $73
    ret nz                                        ; $5ea4: $c0

    nop                                           ; $5ea5: $00
    inc l                                         ; $5ea6: $2c
    ldh [$d8], a                                  ; $5ea7: $e0 $d8
    db $10                                        ; $5ea9: $10
    inc l                                         ; $5eaa: $2c
    inc c                                         ; $5eab: $0c
    ld h, d                                       ; $5eac: $62
    ld c, $00                                     ; $5ead: $0e $00
    ld l, c                                       ; $5eaf: $69
    inc hl                                        ; $5eb0: $23
    inc l                                         ; $5eb1: $2c
    add a                                         ; $5eb2: $87
    ccf                                           ; $5eb3: $3f
    ld b, b                                       ; $5eb4: $40
    ccf                                           ; $5eb5: $3f
    add b                                         ; $5eb6: $80
    nop                                           ; $5eb7: $00
    cp b                                          ; $5eb8: $b8
    inc hl                                        ; $5eb9: $23
    ld b, e                                       ; $5eba: $43
    rrca                                          ; $5ebb: $0f
    jp $919e                                      ; $5ebc: $c3 $9e $91


    ld e, h                                       ; $5ebf: $5c
    nop                                           ; $5ec0: $00
    ld d, e                                       ; $5ec1: $53
    inc bc                                        ; $5ec2: $03
    add e                                         ; $5ec3: $83
    or b                                          ; $5ec4: $b0
    ld a, c                                       ; $5ec5: $79
    or e                                          ; $5ec6: $b3
    ld b, b                                       ; $5ec7: $40
    daa                                           ; $5ec8: $27
    nop                                           ; $5ec9: $00
    ld h, b                                       ; $5eca: $60
    jr nz, jr_0ac_5eec                            ; $5ecb: $20 $1f

    jr nc, jr_0ac_5f2e                            ; $5ecd: $30 $5f

    rst $30                                       ; $5ecf: $f7
    rst $28                                       ; $5ed0: $ef
    or $00                                        ; $5ed1: $f6 $00
    xor $0c                                       ; $5ed3: $ee $0c
    dec b                                         ; $5ed5: $05
    dec sp                                        ; $5ed6: $3b
    ld e, e                                       ; $5ed7: $5b
    dec sp                                        ; $5ed8: $3b
    ld d, c                                       ; $5ed9: $51
    ld a, a                                       ; $5eda: $7f
    nop                                           ; $5edb: $00
    ld a, a                                       ; $5edc: $7f
    and b                                         ; $5edd: $a0
    ccf                                           ; $5ede: $3f
    sub c                                         ; $5edf: $91
    ld c, $4e                                     ; $5ee0: $0e $4e
    ld b, b                                       ; $5ee2: $40
    ccf                                           ; $5ee3: $3f
    nop                                           ; $5ee4: $00
    xor $3f                                       ; $5ee5: $ee $3f
    and b                                         ; $5ee7: $a0
    and b                                         ; $5ee8: $a0
    ld [hl], b                                    ; $5ee9: $70
    and d                                         ; $5eea: $a2
    ld h, b                                       ; $5eeb: $60

jr_0ac_5eec:
    pop bc                                        ; $5eec: $c1
    nop                                           ; $5eed: $00
    dec c                                         ; $5eee: $0d
    add e                                         ; $5eef: $83
    dec sp                                        ; $5ef0: $3b
    rlca                                          ; $5ef1: $07
    jr nc, jr_0ac_5efb                            ; $5ef2: $30 $07

    ld sp, $000f                                  ; $5ef4: $31 $0f $00
    ld l, $0f                                     ; $5ef7: $2e $0f
    dec l                                         ; $5ef9: $2d
    db $ec                                        ; $5efa: $ec

jr_0ac_5efb:
    sub l                                         ; $5efb: $95
    ld a, h                                       ; $5efc: $7c
    inc c                                         ; $5efd: $0c
    ld h, b                                       ; $5efe: $60
    nop                                           ; $5eff: $00
    ld hl, $4340                                  ; $5f00: $21 $40 $43
    or a                                          ; $5f03: $b7
    or b                                          ; $5f04: $b0
    ld l, a                                       ; $5f05: $6f
    ldh [$9f], a                                  ; $5f06: $e0 $9f
    nop                                           ; $5f08: $00
    ret nz                                        ; $5f09: $c0

    adc [hl]                                      ; $5f0a: $8e
    ldh [$80], a                                  ; $5f0b: $e0 $80
    ccf                                           ; $5f0d: $3f
    ret nz                                        ; $5f0e: $c0

    rrca                                          ; $5f0f: $0f
    ld [hl], a                                    ; $5f10: $77
    nop                                           ; $5f11: $00
    rlca                                          ; $5f12: $07
    dec de                                        ; $5f13: $1b
    add e                                         ; $5f14: $83
    inc c                                         ; $5f15: $0c
    add b                                         ; $5f16: $80
    ld b, $80                                     ; $5f17: $06 $80
    ld h, [hl]                                    ; $5f19: $66
    nop                                           ; $5f1a: $00
    ld h, b                                       ; $5f1b: $60
    call nz, Call_000_20c1                        ; $5f1c: $c4 $c1 $20
    cpl                                           ; $5f1f: $2f
    or b                                          ; $5f20: $b0
    add a                                         ; $5f21: $87
    ret nc                                        ; $5f22: $d0

    nop                                           ; $5f23: $00
    jp $cf1f                                      ; $5f24: $c3 $1f $cf


    rra                                           ; $5f27: $1f
    rst $08                                       ; $5f28: $cf
    ld [$0be0], sp                                ; $5f29: $08 $e0 $0b
    nop                                           ; $5f2c: $00
    db $e3                                        ; $5f2d: $e3

jr_0ac_5f2e:
    dec bc                                        ; $5f2e: $0b
    db $e3                                        ; $5f2f: $e3
    add a                                         ; $5f30: $87
    ld b, a                                       ; $5f31: $47
    rst $00                                       ; $5f32: $c7
    or a                                          ; $5f33: $b7
    ld [hl], $00                                  ; $5f34: $36 $00
    ld c, $1a                                     ; $5f36: $0e $1a
    ld b, $0c                                     ; $5f38: $06 $0c
    ld [bc], a                                    ; $5f3a: $02
    inc bc                                        ; $5f3b: $03
    ld b, l                                       ; $5f3c: $45
    ld bc, $c000                                  ; $5f3d: $01 $00 $c0
    ld [hl], e                                    ; $5f40: $73
    ldh a, [$0c]                                  ; $5f41: $f0 $0c
    dec b                                         ; $5f43: $05
    inc h                                         ; $5f44: $24
    ld hl, $0006                                  ; $5f45: $21 $06 $00
    nop                                           ; $5f48: $00
    ld a, l                                       ; $5f49: $7d
    ld [bc], a                                    ; $5f4a: $02
    db $fd                                        ; $5f4b: $fd
    ld a, [de]                                    ; $5f4c: $1a
    ld [$d4c3], sp                                ; $5f4d: $08 $c3 $d4
    nop                                           ; $5f50: $00
    ld b, c                                       ; $5f51: $41
    jp c, $8030                                   ; $5f52: $da $30 $80

    ld c, $82                                     ; $5f55: $0e $82
    ld a, [bc]                                    ; $5f57: $0a
    call nc, Call_000_1c00                        ; $5f58: $d4 $00 $1c
    push de                                       ; $5f5b: $d5
    sbc h                                         ; $5f5c: $9c
    nop                                           ; $5f5d: $00
    ld h, c                                       ; $5f5e: $61
    add c                                         ; $5f5f: $81
    inc hl                                        ; $5f60: $23
    ret nz                                        ; $5f61: $c0

    nop                                           ; $5f62: $00
    ld [bc], a                                    ; $5f63: $02
    and c                                         ; $5f64: $a1
    dec h                                         ; $5f65: $25
    rla                                           ; $5f66: $17
    ld d, e                                       ; $5f67: $53
    rlca                                          ; $5f68: $07
    ld b, e                                       ; $5f69: $43
    inc l                                         ; $5f6a: $2c
    nop                                           ; $5f6b: $00
    and h                                         ; $5f6c: $a4
    ld a, a                                       ; $5f6d: $7f
    rst $30                                       ; $5f6e: $f7
    ld l, [hl]                                    ; $5f6f: $6e
    db $10                                        ; $5f70: $10
    call c, $dd31                                 ; $5f71: $dc $31 $dd
    nop                                           ; $5f74: $00
    ld hl, $433b                                  ; $5f75: $21 $3b $43
    ldh a, [$f1]                                  ; $5f78: $f0 $f1
    cp $fd                                        ; $5f7a: $fe $fd
    ccf                                           ; $5f7c: $3f
    nop                                           ; $5f7d: $00
    ld a, $00                                     ; $5f7e: $3e $00
    rra                                           ; $5f80: $1f
    ret nz                                        ; $5f81: $c0

    adc a                                         ; $5f82: $8f
    ldh [$c7], a                                  ; $5f83: $e0 $c7
    add $00                                       ; $5f85: $c6 $00
    ld h, a                                       ; $5f87: $67
    pop bc                                        ; $5f88: $c1
    and $14                                       ; $5f89: $e6 $14
    ld de, $212c                                  ; $5f8b: $11 $2c $21
    add hl, bc                                    ; $5f8e: $09
    nop                                           ; $5f8f: $00
    ld l, c                                       ; $5f90: $69
    rrca                                          ; $5f91: $0f
    xor $c6                                       ; $5f92: $ee $c6
    ret c                                         ; $5f94: $d8

    sbc b                                         ; $5f95: $98
    ldh [$60], a                                  ; $5f96: $e0 $60
    ld bc, $c090                                  ; $5f98: $01 $90 $c0
    ld d, b                                       ; $5f9b: $50
    inc c                                         ; $5f9c: $0c
    ldh [rTAC], a                                 ; $5f9d: $e0 $07
    di                                            ; $5f9f: $f3
    ld [bc], a                                    ; $5fa0: $02
    ld [$0200], sp                                ; $5fa1: $08 $00 $02
    ld hl, sp+$02                                 ; $5fa4: $f8 $02
    ld hl, sp+$03                                 ; $5fa6: $f8 $03
    ld hl, sp+$01                                 ; $5fa8: $f8 $01
    db $fc                                        ; $5faa: $fc
    nop                                           ; $5fab: $00
    ld [hl], e                                    ; $5fac: $73
    ldh a, [$87]                                  ; $5fad: $f0 $87
    ldh [rTAC], a                                 ; $5faf: $e0 $07
    ldh [$0e], a                                  ; $5fb1: $e0 $0e
    ret nz                                        ; $5fb3: $c0

Call_0ac_5fb4:
    nop                                           ; $5fb4: $00
    dec e                                         ; $5fb5: $1d
    add b                                         ; $5fb6: $80
    inc sp                                        ; $5fb7: $33
    ld a, a                                       ; $5fb8: $7f
    cpl                                           ; $5fb9: $2f
    cp $01                                        ; $5fba: $fe $01
    ld a, $00                                     ; $5fbc: $3e $00
    dec l                                         ; $5fbe: $2d
    ld a, [de]                                    ; $5fbf: $1a
    xor h                                         ; $5fc0: $ac
    inc [hl]                                      ; $5fc1: $34
    db $d3                                        ; $5fc2: $d3
    rrca                                          ; $5fc3: $0f
    ld b, $09                                     ; $5fc4: $06 $09
    nop                                           ; $5fc6: $00
    dec sp                                        ; $5fc7: $3b
    or h                                          ; $5fc8: $b4
    add [hl]                                      ; $5fc9: $86
    ld a, [c]                                     ; $5fca: $f2
    sbc h                                         ; $5fcb: $9c
    ldh a, [rBCPS]                                ; $5fcc: $f0 $68
    ld [hl], c                                    ; $5fce: $71
    nop                                           ; $5fcf: $00
    ld h, l                                       ; $5fd0: $65
    ld h, c                                       ; $5fd1: $61
    call nz, Call_0ac_41c2                        ; $5fd2: $c4 $c2 $41
    add c                                         ; $5fd5: $81
    dec sp                                        ; $5fd6: $3b
    ld bc, $bd00                                  ; $5fd7: $01 $00 $bd
    scf                                           ; $5fda: $37
    ld a, [hl]                                    ; $5fdb: $7e
    add b                                         ; $5fdc: $80
    ld a, $7f                                     ; $5fdd: $3e $7f
    ld a, a                                       ; $5fdf: $7f
    cp [hl]                                       ; $5fe0: $be
    nop                                           ; $5fe1: $00
    ld [hl], $c6                                  ; $5fe2: $36 $c6
    ld c, a                                       ; $5fe4: $4f
    rst $08                                       ; $5fe5: $cf
    add b                                         ; $5fe6: $80
    ld h, a                                       ; $5fe7: $67
    inc bc                                        ; $5fe8: $03
    ld a, [hl]                                    ; $5fe9: $7e
    nop                                           ; $5fea: $00
    ccf                                           ; $5feb: $3f
    jr c, jr_0ac_602a                             ; $5fec: $38 $3c

    ld hl, $f88c                                  ; $5fee: $21 $8c $f8
    inc l                                         ; $5ff1: $2c
    ret c                                         ; $5ff2: $d8

    nop                                           ; $5ff3: $00
    jr c, @+$61                                   ; $5ff4: $38 $5f

    and b                                         ; $5ff6: $a0
    cp h                                          ; $5ff7: $bc
    ld [hl], a                                    ; $5ff8: $77
    add a                                         ; $5ff9: $87
    rst $00                                       ; $5ffa: $c7
    daa                                           ; $5ffb: $27
    nop                                           ; $5ffc: $00
    and e                                         ; $5ffd: $a3
    inc bc                                        ; $5ffe: $03
    ld d, a                                       ; $5fff: $57
    add a                                         ; $6000: $87
    ld l, b                                       ; $6001: $68
    ret nz                                        ; $6002: $c0

    ld a, b                                       ; $6003: $78
    ret nz                                        ; $6004: $c0

    nop                                           ; $6005: $00
    or b                                          ; $6006: $b0
    add a                                         ; $6007: $87
    and b                                         ; $6008: $a0
    adc a                                         ; $6009: $8f
    and b                                         ; $600a: $a0
    adc a                                         ; $600b: $8f
    ld h, b                                       ; $600c: $60
    rrca                                          ; $600d: $0f
    nop                                           ; $600e: $00
    ret nz                                        ; $600f: $c0

    sbc a                                         ; $6010: $9f
    ld b, b                                       ; $6011: $40
    rra                                           ; $6012: $1f
    ret nz                                        ; $6013: $c0

    rra                                           ; $6014: $1f
    add b                                         ; $6015: $80
    ccf                                           ; $6016: $3f
    xor h                                         ; $6017: $ac
    ld [$fc02], sp                                ; $6018: $08 $02 $fc
    ld c, $02                                     ; $601b: $0e $02
    nop                                           ; $601d: $00
    ld [bc], a                                    ; $601e: $02

Jump_0ac_601f:
    ld [$0a3c], sp                                ; $601f: $08 $3c $0a
    ld bc, $103f                                  ; $6022: $01 $3f $10
    jr nc, @+$30                                  ; $6025: $30 $2e

    jr jr_0ac_606e                                ; $6027: $18 $45

    ld [bc], a                                    ; $6029: $02

jr_0ac_602a:
    rrca                                          ; $602a: $0f
    ret nz                                        ; $602b: $c0

    nop                                           ; $602c: $00
    rst $38                                       ; $602d: $ff
    nop                                           ; $602e: $00
    ld bc, $1e7e                                  ; $602f: $01 $7e $1e
    ld e, c                                       ; $6032: $59
    ld h, b                                       ; $6033: $60
    ld a, c                                       ; $6034: $79
    db $ec                                        ; $6035: $ec
    adc l                                         ; $6036: $8d
    nop                                           ; $6037: $00
    db $fc                                        ; $6038: $fc
    call $0107                                    ; $6039: $cd $07 $01
    ld e, $e6                                     ; $603c: $1e $e6
    ld e, $66                                     ; $603e: $1e $66
    nop                                           ; $6040: $00
    ld l, a                                       ; $6041: $6f
    adc a                                         ; $6042: $8f
    rlca                                          ; $6043: $07
    add b                                         ; $6044: $80
    ccf                                           ; $6045: $3f
    ld b, c                                       ; $6046: $41
    ld a, $41                                     ; $6047: $3e $41
    nop                                           ; $6049: $00
    ld a, [hl]                                    ; $604a: $7e
    add c                                         ; $604b: $81
    inc bc                                        ; $604c: $03
    ld a, l                                       ; $604d: $7d
    ld h, [hl]                                    ; $604e: $66
    ld a, l                                       ; $604f: $7d
    ld c, c                                       ; $6050: $49
    ld c, b                                       ; $6051: $48
    nop                                           ; $6052: $00
    inc h                                         ; $6053: $24
    ld l, $c1                                     ; $6054: $2e $c1
    nop                                           ; $6056: $00
    ld h, e                                       ; $6057: $63
    ldh [$63], a                                  ; $6058: $e0 $63
    ldh [rP1], a                                  ; $605a: $e0 $00
    rrca                                          ; $605c: $0f
    add sp, $0f                                   ; $605d: $e8 $0f
    jp hl                                         ; $605f: $e9


    rst $18                                       ; $6060: $df
    ret nz                                        ; $6061: $c0

    ccf                                           ; $6062: $3f
    add b                                         ; $6063: $80
    nop                                           ; $6064: $00
    ret nz                                        ; $6065: $c0

    ld a, $c0                                     ; $6066: $3e $c0
    add b                                         ; $6068: $80
    ret nz                                        ; $6069: $c0

    ld a, b                                       ; $606a: $78
    add b                                         ; $606b: $80
    ld sp, hl                                     ; $606c: $f9
    nop                                           ; $606d: $00

jr_0ac_606e:
    cp b                                          ; $606e: $b8
    add c                                         ; $606f: $81
    db $10                                        ; $6070: $10
    ld bc, $fc7d                                  ; $6071: $01 $7d $fc
    dec de                                        ; $6074: $1b
    ld hl, sp-$7e                                 ; $6075: $f8 $82
    ld l, l                                       ; $6077: $6d
    ld a, [bc]                                    ; $6078: $0a
    add b                                         ; $6079: $80
    ccf                                           ; $607a: $3f
    add b                                         ; $607b: $80
    ccf                                           ; $607c: $3f
    ld a, a                                       ; $607d: $7f
    cp b                                          ; $607e: $b8
    ld bc, $3800                                  ; $607f: $01 $00 $38
    ld a, a                                       ; $6082: $7f
    ret nz                                        ; $6083: $c0

    ld [bc], a                                    ; $6084: $02
    nop                                           ; $6085: $00
    add hl, bc                                    ; $6086: $09
    ld [$0064], sp                                ; $6087: $08 $64 $00
    nop                                           ; $608a: $00
    rlca                                          ; $608b: $07
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    inc e                                         ; $608e: $1c
    inc bc                                        ; $608f: $03
    ld [hl], b                                    ; $6090: $70
    ld c, $40                                     ; $6091: $0e $40
    jr c, jr_0ac_6095                             ; $6093: $38 $00

jr_0ac_6095:
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    dec e                                         ; $6097: $1d
    ld h, e                                       ; $6098: $63
    ld [hl], a                                    ; $6099: $77
    rrca                                          ; $609a: $0f
    rst $08                                       ; $609b: $cf
    ccf                                           ; $609c: $3f
    ret nc                                        ; $609d: $d0

    rrca                                          ; $609e: $0f
    ld a, [bc]                                    ; $609f: $0a
    ret nc                                        ; $60a0: $d0

    ret nz                                        ; $60a1: $c0

jr_0ac_60a2:
    rra                                           ; $60a2: $1f
    ret nz                                        ; $60a3: $c0

    ld c, [hl]                                    ; $60a4: $4e
    ld a, [bc]                                    ; $60a5: $0a
    ld bc, $1023                                  ; $60a6: $01 $23 $10
    rst $38                                       ; $60a9: $ff
    add $04                                       ; $60aa: $c6 $04
    jr nz, jr_0ac_60a2                            ; $60ac: $20 $f4

    add hl, bc                                    ; $60ae: $09
    ld a, h                                       ; $60af: $7c
    nop                                           ; $60b0: $00
    cp $fe                                        ; $60b1: $fe $fe
    ld hl, $0a02                                  ; $60b3: $21 $02 $0a
    cp a                                          ; $60b6: $bf
    nop                                           ; $60b7: $00
    rst $18                                       ; $60b8: $df
    or b                                          ; $60b9: $b0
    ret nz                                        ; $60ba: $c0

    ld d, b                                       ; $60bb: $50
    ld h, b                                       ; $60bc: $60
    ld [$0c30], sp                                ; $60bd: $08 $30 $0c
    ld [$0610], sp                                ; $60c0: $08 $10 $06
    ld sp, hl                                     ; $60c3: $f9
    ld b, $13                                     ; $60c4: $06 $13
    ld [bc], a                                    ; $60c6: $02
    db $fc                                        ; $60c7: $fc
    ld [bc], a                                    ; $60c8: $02
    ld sp, $cf00                                  ; $60c9: $31 $00 $cf
    cp $03                                        ; $60cc: $fe $03
    db $fc                                        ; $60ce: $fc
    ld bc, $0308                                  ; $60cf: $01 $08 $03
    ld hl, sp+$30                                 ; $60d2: $f8 $30
    inc bc                                        ; $60d4: $03
    inc bc                                        ; $60d5: $03
    inc [hl]                                      ; $60d6: $34
    jr nz, jr_0ac_60dd                            ; $60d7: $20 $04

    ld c, e                                       ; $60d9: $4b
    db $10                                        ; $60da: $10
    inc bc                                        ; $60db: $03
    ld a, [hl]                                    ; $60dc: $7e

jr_0ac_60dd:
    ld [bc], a                                    ; $60dd: $02
    ld b, c                                       ; $60de: $41
    nop                                           ; $60df: $00
    ld bc, $0138                                  ; $60e0: $01 $38 $01
    ld bc, $0102                                  ; $60e3: $01 $02 $01
    ld [bc], a                                    ; $60e6: $02
    db $10                                        ; $60e7: $10
    ld [$1c00], sp                                ; $60e8: $08 $00 $1c
    nop                                           ; $60eb: $00
    dec sp                                        ; $60ec: $3b
    scf                                           ; $60ed: $37
    ld l, [hl]                                    ; $60ee: $6e
    ld b, e                                       ; $60ef: $43
    add $ad                                       ; $60f0: $c6 $ad
    ld [$2b41], sp                                ; $60f2: $08 $41 $2b
    ld b, b                                       ; $60f5: $40
    ld l, d                                       ; $60f6: $6a
    jr nz, @+$22                                  ; $60f7: $20 $20

    inc bc                                        ; $60f9: $03
    add a                                         ; $60fa: $87
    add b                                         ; $60fb: $80
    nop                                           ; $60fc: $00
    rrca                                          ; $60fd: $0f
    ld [hl], b                                    ; $60fe: $70
    ld a, $c6                                     ; $60ff: $3e $c6
    ld a, h                                       ; $6101: $7c
    dec c                                         ; $6102: $0d
    jr jr_0ac_610d                                ; $6103: $18 $08

    nop                                           ; $6105: $00
    ld b, d                                       ; $6106: $42
    inc a                                         ; $6107: $3c
    ld a, [hl]                                    ; $6108: $7e
    rst $38                                       ; $6109: $ff
    rst $20                                       ; $610a: $e7
    nop                                           ; $610b: $00
    reti                                          ; $610c: $d9


jr_0ac_610d:
    jp Jump_000_3c40                              ; $610d: $c3 $40 $3c


    dec sp                                        ; $6110: $3b
    ld b, b                                       ; $6111: $40
    ret nz                                        ; $6112: $c0

    nop                                           ; $6113: $00
    ld h, b                                       ; $6114: $60
    ldh [$f0], a                                  ; $6115: $e0 $f0
    nop                                           ; $6117: $00
    ld [$607c], sp                                ; $6118: $08 $7c $60
    ld a, $bc                                     ; $611b: $3e $bc
    ld d, b                                       ; $611d: $50
    ld b, b                                       ; $611e: $40
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    rst $38                                       ; $6121: $ff
    jr nc, jr_0ac_615c                            ; $6122: $30 $38

jr_0ac_6124:
    sub c                                         ; $6124: $91
    db $10                                        ; $6125: $10
    ld d, b                                       ; $6126: $50
    ld h, l                                       ; $6127: $65
    ld [$0202], sp                                ; $6128: $08 $02 $02
    ld bc, $0401                                  ; $612b: $01 $01 $04
    nop                                           ; $612e: $00
    cp $01                                        ; $612f: $fe $01
    cp $00                                        ; $6131: $fe $00
    ld [bc], a                                    ; $6133: $02
    ld [$fcfd], sp                                ; $6134: $08 $fd $fc
    nop                                           ; $6137: $00
    xor b                                         ; $6138: $a8
    adc d                                         ; $6139: $8a
    ld a, [hl+]                                   ; $613a: $2a
    sub h                                         ; $613b: $94
    xor d                                         ; $613c: $aa
    ld d, [hl]                                    ; $613d: $56
    jr c, jr_0ac_6124                             ; $613e: $38 $e4

    nop                                           ; $6140: $00
    rst $00                                       ; $6141: $c7
    or h                                          ; $6142: $b4
    adc a                                         ; $6143: $8f
    ret nz                                        ; $6144: $c0

    ccf                                           ; $6145: $3f
    nop                                           ; $6146: $00
    cp $02                                        ; $6147: $fe $02
    nop                                           ; $6149: $00
    ldh a, [$33]                                  ; $614a: $f0 $33
    ldh [rIF], a                                  ; $614c: $e0 $0f
    add a                                         ; $614e: $87
    rlca                                          ; $614f: $07
    ld [hl], b                                    ; $6150: $70
    ccf                                           ; $6151: $3f
    nop                                           ; $6152: $00
    ld hl, sp+$3f                                 ; $6153: $f8 $3f
    rst $38                                       ; $6155: $ff
    rrca                                          ; $6156: $0f
    ldh a, [$0c]                                  ; $6157: $f0 $0c
    rrca                                          ; $6159: $0f
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00

jr_0ac_615c:
    rst $38                                       ; $615c: $ff

jr_0ac_615d:
    nop                                           ; $615d: $00
    pop bc                                        ; $615e: $c1
    add hl, sp                                    ; $615f: $39
    ld h, b                                       ; $6160: $60
    ld e, a                                       ; $6161: $5f
    ldh a, [rIF]                                  ; $6162: $f0 $0f
    nop                                           ; $6164: $00
    rst $38                                       ; $6165: $ff
    rrca                                          ; $6166: $0f
    ld hl, sp+$0c                                 ; $6167: $f8 $0c
    rrca                                          ; $6169: $0f
    jr @+$01                                      ; $616a: $18 $ff

    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    ld bc, $ffc1                                  ; $616e: $01 $c1 $ff
    add b                                         ; $6171: $80
    rrca                                          ; $6172: $0f
    inc sp                                        ; $6173: $33
    rrca                                          ; $6174: $0f
    inc de                                        ; $6175: $13
    inc b                                         ; $6176: $04
    nop                                           ; $6177: $00
    rst $38                                       ; $6178: $ff
    rlca                                          ; $6179: $07
    ld b, $fb                                     ; $617a: $06 $fb
    ld e, $00                                     ; $617c: $1e $00
    jp nz, $003e                                  ; $617e: $c2 $3e $00

    ret nz                                        ; $6181: $c0

    ld a, $1f                                     ; $6182: $3e $1f
    cpl                                           ; $6184: $2f
    rra                                           ; $6185: $1f
    cpl                                           ; $6186: $2f
    ccf                                           ; $6187: $3f
    ldh [rP1], a                                  ; $6188: $e0 $00
    inc a                                         ; $618a: $3c
    ldh [$78], a                                  ; $618b: $e0 $78
    ld a, b                                       ; $618d: $78
    rlca                                          ; $618e: $07
    ldh a, [$80]                                  ; $618f: $f0 $80
    add b                                         ; $6191: $80
    nop                                           ; $6192: $00
    add b                                         ; $6193: $80
    ld b, b                                       ; $6194: $40
    ld b, b                                       ; $6195: $40
    ret nz                                        ; $6196: $c0

    ld b, b                                       ; $6197: $40
    add b                                         ; $6198: $80
    ld b, b                                       ; $6199: $40
    add b                                         ; $619a: $80
    jr nz, jr_0ac_615d                            ; $619b: $20 $c0

    ld b, b                                       ; $619d: $40
    sbc b                                         ; $619e: $98
    ld [$f9fa], sp                                ; $619f: $08 $fa $f9
    rlca                                          ; $61a2: $07
    ld [bc], a                                    ; $61a3: $02
    inc c                                         ; $61a4: $0c
    ld bc, $6020                                  ; $61a5: $01 $20 $60
    ld hl, $27f0                                  ; $61a8: $21 $f0 $27
    ldh [$6e], a                                  ; $61ab: $e0 $6e
    ld [bc], a                                    ; $61ad: $02
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    ld c, [hl]                                    ; $61b0: $4e
    ldh a, [rNR13]                                ; $61b1: $f0 $13
    jr @+$1f                                      ; $61b3: $18 $1d

    ret z                                         ; $61b5: $c8

    inc e                                         ; $61b6: $1c
    sub l                                         ; $61b7: $95
    nop                                           ; $61b8: $00
    add hl, bc                                    ; $61b9: $09
    dec b                                         ; $61ba: $05
    add hl, bc                                    ; $61bb: $09
    ld c, h                                       ; $61bc: $4c
    ld h, d                                       ; $61bd: $62
    ld h, h                                       ; $61be: $64
    ld l, d                                       ; $61bf: $6a
    ld b, $00                                     ; $61c0: $06 $00
    ld [hl], e                                    ; $61c2: $73
    ld e, a                                       ; $61c3: $5f
    ret nz                                        ; $61c4: $c0

    ccf                                           ; $61c5: $3f
    ldh [$1f], a                                  ; $61c6: $e0 $1f
    nop                                           ; $61c8: $00
    rst $18                                       ; $61c9: $df
    nop                                           ; $61ca: $00
    ret nz                                        ; $61cb: $c0

    xor a                                         ; $61cc: $af
    ldh [$2f], a                                  ; $61cd: $e0 $2f
    ldh [$37], a                                  ; $61cf: $e0 $37
    ldh a, [rNR22]                                ; $61d1: $f0 $17
    ld h, b                                       ; $61d3: $60
    ld [hl], h                                    ; $61d4: $74
    or l                                          ; $61d5: $b5
    nop                                           ; $61d6: $00
    jp nc, $8320                                  ; $61d7: $d2 $20 $83

    rra                                           ; $61da: $1f
    ret nz                                        ; $61db: $c0

    ld h, b                                       ; $61dc: $60
    ret nz                                        ; $61dd: $c0

    nop                                           ; $61de: $00
    ld h, b                                       ; $61df: $60
    db $fc                                        ; $61e0: $fc
    nop                                           ; $61e1: $00
    ld a, [$0703]                                 ; $61e2: $fa $03 $07
    or $07                                        ; $61e5: $f6 $07
    nop                                           ; $61e7: $00
    db $f4                                        ; $61e8: $f4
    rrca                                          ; $61e9: $0f
    add sp, $0d                                   ; $61ea: $e8 $0d
    jr z, @+$07                                   ; $61ec: $28 $05

    ret z                                         ; $61ee: $c8

    dec b                                         ; $61ef: $05
    nop                                           ; $61f0: $00
    ld a, e                                       ; $61f1: $7b
    ld bc, $fcf8                                  ; $61f2: $01 $f8 $fc
    cp $f2                                        ; $61f5: $fe $f2
    ld l, [hl]                                    ; $61f7: $6e
    ret c                                         ; $61f8: $d8

    nop                                           ; $61f9: $00
    rla                                           ; $61fa: $17
    cp $f3                                        ; $61fb: $fe $f3
    jp z, $80cb                                   ; $61fd: $ca $cb $80

    db $dd                                        ; $6200: $dd
    sbc d                                         ; $6201: $9a
    nop                                           ; $6202: $00
    db $e3                                        ; $6203: $e3
    ld h, b                                       ; $6204: $60
    add b                                         ; $6205: $80
    ld hl, sp-$28                                 ; $6206: $f8 $d8
    inc hl                                        ; $6208: $23
    ld e, a                                       ; $6209: $5f
    inc de                                        ; $620a: $13
    nop                                           ; $620b: $00
    dec c                                         ; $620c: $0d
    xor b                                         ; $620d: $a8
    inc h                                         ; $620e: $24
    ld d, c                                       ; $620f: $51
    sub h                                         ; $6210: $94
    jp nc, Jump_0ac_58c1                          ; $6211: $d2 $c1 $58

    nop                                           ; $6214: $00
    ld b, e                                       ; $6215: $43
    ld h, b                                       ; $6216: $60
    ld c, h                                       ; $6217: $4c
    ld [hl], b                                    ; $6218: $70
    ld b, h                                       ; $6219: $44
    ld [hl], b                                    ; $621a: $70
    inc b                                         ; $621b: $04
    inc d                                         ; $621c: $14
    nop                                           ; $621d: $00
    jr nc, jr_0ac_6239                            ; $621e: $30 $19

    add hl, sp                                    ; $6220: $39
    reti                                          ; $6221: $d9


    ldh [$f9], a                                  ; $6222: $e0 $f9
    ldh [rNR24], a                                ; $6224: $e0 $19
    nop                                           ; $6226: $00
    ld hl, sp+$03                                 ; $6227: $f8 $03
    pop af                                        ; $6229: $f1
    ldh a, [$92]                                  ; $622a: $f0 $92
    ldh a, [$94]                                  ; $622c: $f0 $94
    ldh a, [rP1]                                  ; $622e: $f0 $00
    or h                                          ; $6230: $b4
    ldh a, [$a4]                                  ; $6231: $f0 $a4
    inc d                                         ; $6233: $14
    db $e4                                        ; $6234: $e4
    inc d                                         ; $6235: $14
    db $e4                                        ; $6236: $e4
    ldh a, [rP1]                                  ; $6237: $f0 $00

jr_0ac_6239:
    db $e4                                        ; $6239: $e4
    rla                                           ; $623a: $17
    halt                                          ; $623b: $76
    ld a, e                                       ; $623c: $7b
    dec bc                                        ; $623d: $0b
    ld sp, hl                                     ; $623e: $f9
    dec bc                                        ; $623f: $0b
    inc bc                                        ; $6240: $03
    inc b                                         ; $6241: $04
    ld a, [c]                                     ; $6242: $f2
    inc bc                                        ; $6243: $03
    di                                            ; $6244: $f3
    dec bc                                        ; $6245: $0b
    ld hl, sp+$02                                 ; $6246: $f8 $02
    ld [$76e0], sp                                ; $6248: $08 $e0 $76
    nop                                           ; $624b: $00
    ldh a, [$3b]                                  ; $624c: $f0 $3b
    inc e                                         ; $624e: $1c
    ldh a, [$9e]                                  ; $624f: $f0 $9e
    sbc b                                         ; $6251: $98
    adc $49                                       ; $6252: $ce $49
    nop                                           ; $6254: $00
    ld h, e                                       ; $6255: $63
    and b                                         ; $6256: $a0
    dec h                                         ; $6257: $25
    push bc                                       ; $6258: $c5
    ld [de], a                                    ; $6259: $12
    ldh [$0d], a                                  ; $625a: $e0 $0d
    inc sp                                        ; $625c: $33
    nop                                           ; $625d: $00
    dec e                                         ; $625e: $1d
    ld h, a                                       ; $625f: $67
    rrca                                          ; $6260: $0f
    rst $30                                       ; $6261: $f7
    rra                                           ; $6262: $1f
    halt                                          ; $6263: $76
    ld a, a                                       ; $6264: $7f
    ld e, d                                       ; $6265: $5a
    nop                                           ; $6266: $00
    ld e, $9f                                     ; $6267: $1e $9f
    ld b, e                                       ; $6269: $43
    adc l                                         ; $626a: $8d
    ld b, a                                       ; $626b: $47
    adc b                                         ; $626c: $88
    db $fc                                        ; $626d: $fc
    add a                                         ; $626e: $87
    nop                                           ; $626f: $00
    xor $82                                       ; $6270: $ee $82
    ld h, [hl]                                    ; $6272: $66
    ld d, [hl]                                    ; $6273: $56
    and $e6                                       ; $6274: $e6 $e6
    call nc, RST_30                               ; $6276: $d4 $30 $00
    ld sp, hl                                     ; $6279: $f9
    nop                                           ; $627a: $00
    db $eb                                        ; $627b: $eb
    add sp, $07                                   ; $627c: $e8 $07
    ret nz                                        ; $627e: $c0

    ld b, e                                       ; $627f: $43
    ld e, b                                       ; $6280: $58
    nop                                           ; $6281: $00
    jp Jump_000_37dc                              ; $6282: $c3 $dc $37


    or b                                          ; $6285: $b0
    ld [hl], a                                    ; $6286: $77
    ld a, b                                       ; $6287: $78
    pop hl                                        ; $6288: $e1
    xor $00                                       ; $6289: $ee $00
    pop af                                        ; $628b: $f1
    xor $86                                       ; $628c: $ee $86
    sbc b                                         ; $628e: $98
    and h                                         ; $628f: $a4
    sbc b                                         ; $6290: $98
    add hl, de                                    ; $6291: $19
    ld hl, sp+$12                                 ; $6292: $f8 $12
    add hl, de                                    ; $6294: $19
    ld hl, sp+$09                                 ; $6295: $f8 $09
    ld [bc], a                                    ; $6297: $02
    db $10                                        ; $6298: $10
    inc bc                                        ; $6299: $03
    ld a, [$0802]                                 ; $629a: $fa $02 $08
    ldh [rP1], a                                  ; $629d: $e0 $00
    db $f4                                        ; $629f: $f4
    ldh [$34], a                                  ; $62a0: $e0 $34
    ldh [$2c], a                                  ; $62a2: $e0 $2c
    ldh [$0c], a                                  ; $62a4: $e0 $0c
    ldh [rLCDC], a                                ; $62a6: $e0 $40
    ld c, h                                       ; $62a8: $4c
    ld [bc], a                                    ; $62a9: $02
    db $10                                        ; $62aa: $10
    ret                                           ; $62ab: $c9


Call_0ac_62ac:
    dec bc                                        ; $62ac: $0b
    ld hl, sp+$73                                 ; $62ad: $f8 $73
    ldh a, [$73]                                  ; $62af: $f0 $73
    ld b, b                                       ; $62b1: $40
    ldh a, [$6c]                                  ; $62b2: $f0 $6c
    jr jr_0ac_62c1                                ; $62b4: $18 $0b

    ld hl, sp-$10                                 ; $62b6: $f8 $f0
    inc de                                        ; $62b8: $13
    add hl, bc                                    ; $62b9: $09
    ld hl, sp+$00                                 ; $62ba: $f8 $00
    ld [$f8f1], sp                                ; $62bc: $08 $f1 $f8
    cp $fc                                        ; $62bf: $fe $fc

jr_0ac_62c1:
    ld a, [$f2fc]                                 ; $62c1: $fa $fc $f2

Jump_0ac_62c4:
    nop                                           ; $62c4: $00
    db $fc                                        ; $62c5: $fc
    jp nz, $f806                                  ; $62c6: $c2 $06 $f8

    ld a, $c6                                     ; $62c9: $3e $c6
    ld b, h                                       ; $62cb: $44
    ld b, e                                       ; $62cc: $43
    nop                                           ; $62cd: $00
    add b                                         ; $62ce: $80
    nop                                           ; $62cf: $00
    add b                                         ; $62d0: $80
    inc de                                        ; $62d1: $13
    ret nc                                        ; $62d2: $d0

    dec de                                        ; $62d3: $1b
    ret z                                         ; $62d4: $c8

    ld d, c                                       ; $62d5: $51
    nop                                           ; $62d6: $00
    ld b, h                                       ; $62d7: $44
    ld [$0e6c], a                                 ; $62d8: $ea $6c $0e
    ld l, d                                       ; $62db: $6a
    add hl, bc                                    ; $62dc: $09
    rra                                           ; $62dd: $1f
    add b                                         ; $62de: $80
    nop                                           ; $62df: $00
    ld e, l                                       ; $62e0: $5d
    ld b, b                                       ; $62e1: $40
    ld [bc], a                                    ; $62e2: $02
    ret nz                                        ; $62e3: $c0

    ld [hl+], a                                   ; $62e4: $22
    and b                                         ; $62e5: $a0
    inc hl                                        ; $62e6: $23
    ld c, e                                       ; $62e7: $4b
    nop                                           ; $62e8: $00
    add hl, bc                                    ; $62e9: $09
    or c                                          ; $62ea: $b1
    ld c, b                                       ; $62eb: $48
    ld b, h                                       ; $62ec: $44
    ld l, b                                       ; $62ed: $68
    ld h, [hl]                                    ; $62ee: $66
    adc e                                         ; $62ef: $8b
    or e                                          ; $62f0: $b3
    nop                                           ; $62f1: $00
    ld d, a                                       ; $62f2: $57
    daa                                           ; $62f3: $27
    xor a                                         ; $62f4: $af
    ld c, a                                       ; $62f5: $4f
    ld c, a                                       ; $62f6: $4f
    adc a                                         ; $62f7: $8f
    nop                                           ; $62f8: $00
    rra                                           ; $62f9: $1f
    jr z, jr_0ac_635c                             ; $62fa: $28 $60

    ld e, a                                       ; $62fc: $5f
    rrca                                          ; $62fd: $0f
    ld bc, $66c0                                  ; $62fe: $01 $c0 $66
    jr jr_0ac_6304                                ; $6301: $18 $01

    db $fd                                        ; $6303: $fd

jr_0ac_6304:
    ld bc, $fc20                                  ; $6304: $01 $20 $fc
    db $fc                                        ; $6307: $fc
    call nz, $e111                                ; $6308: $c4 $11 $e1
    ret z                                         ; $630b: $c8

    pop hl                                        ; $630c: $e1
    ld c, b                                       ; $630d: $48
    pop hl                                        ; $630e: $e1
    nop                                           ; $630f: $00
    add hl, bc                                    ; $6310: $09
    db $e3                                        ; $6311: $e3
    jp hl                                         ; $6312: $e9


    db $e3                                        ; $6313: $e3
    di                                            ; $6314: $f3
    rst $30                                       ; $6315: $f7
    and d                                         ; $6316: $a2
    ld [hl], a                                    ; $6317: $77
    nop                                           ; $6318: $00
    call c, $ed92                                 ; $6319: $dc $92 $ed
    db $f4                                        ; $631c: $f4
    rla                                           ; $631d: $17
    db $e4                                        ; $631e: $e4

jr_0ac_631f:
    rlca                                          ; $631f: $07
    db $e4                                        ; $6320: $e4
    nop                                           ; $6321: $00
    inc bc                                        ; $6322: $03
    dec a                                         ; $6323: $3d
    jp c, $e02f                                   ; $6324: $da $2f $e0

    adc a                                         ; $6327: $8f
    ld h, a                                       ; $6328: $67
    adc a                                         ; $6329: $8f
    nop                                           ; $632a: $00
    ld e, a                                       ; $632b: $5f
    rst $00                                       ; $632c: $c7
    jr jr_0ac_631f                                ; $632d: $18 $f0

jr_0ac_632f:
    xor $c0                                       ; $632f: $ee $c0
    or b                                          ; $6331: $b0
    rst $00                                       ; $6332: $c7
    nop                                           ; $6333: $00
    ccf                                           ; $6334: $3f
    jr jr_0ac_632f                                ; $6335: $18 $f8

    add $f8                                       ; $6337: $c6 $f8
    ld [hl], $c8                                  ; $6339: $36 $c8
    reti                                          ; $633b: $d9


    add b                                         ; $633c: $80
    ld [hl], $00                                  ; $633d: $36 $00
    ld h, b                                       ; $633f: $60
    add hl, hl                                    ; $6340: $29
    ld h, b                                       ; $6341: $60

jr_0ac_6342:
    jr z, jr_0ac_6353                             ; $6342: $28 $0f

    ld l, a                                       ; $6344: $6f
    rrca                                          ; $6345: $0f
    nop                                           ; $6346: $00
    ld l, h                                       ; $6347: $6c
    ld h, c                                       ; $6348: $61
    ld [c], a                                     ; $6349: $e2
    ldh [$64], a                                  ; $634a: $e0 $64
    ldh [$c6], a                                  ; $634c: $e0 $c6
    ret nz                                        ; $634e: $c0

    nop                                           ; $634f: $00
    and $68                                       ; $6350: $e6 $68
    ld h, [hl]                                    ; $6352: $66

jr_0ac_6353:
    ld l, c                                       ; $6353: $69
    ld h, l                                       ; $6354: $65
    jp hl                                         ; $6355: $e9


    ld h, l                                       ; $6356: $65
    ret                                           ; $6357: $c9


    nop                                           ; $6358: $00
    ld h, l                                       ; $6359: $65
    ret                                           ; $635a: $c9


    ld c, b                                       ; $635b: $48

jr_0ac_635c:
    dec bc                                        ; $635c: $0b
    jr z, jr_0ac_6342                             ; $635d: $28 $e3

    ld h, b                                       ; $635f: $60
    jp nz, $c151                                  ; $6360: $c2 $51 $c1

    cp h                                          ; $6363: $bc
    ld de, $94c0                                  ; $6364: $11 $c0 $94
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    add b                                         ; $636a: $80
    inc b                                         ; $636b: $04
    nop                                           ; $636c: $00
    ret nz                                        ; $636d: $c0

    adc [hl]                                      ; $636e: $8e
    ld hl, $3aa6                                  ; $636f: $21 $a6 $3a
    ld a, l                                       ; $6372: $7d
    ld b, e                                       ; $6373: $43
    add b                                         ; $6374: $80
    ccf                                           ; $6375: $3f
    ret nz                                        ; $6376: $c0

    add b                                         ; $6377: $80
    nop                                           ; $6378: $00
    rla                                           ; $6379: $17
    ld [hl], b                                    ; $637a: $70
    nop                                           ; $637b: $00
    ld [hl], b                                    ; $637c: $70
    ld a, b                                       ; $637d: $78
    rra                                           ; $637e: $1f
    ld a, $07                                     ; $637f: $3e $07
    ld b, $3c                                     ; $6381: $06 $3c
    rlca                                          ; $6383: $07
    cp b                                          ; $6384: $b8
    nop                                           ; $6385: $00
    rlca                                          ; $6386: $07
    ld l, b                                       ; $6387: $68
    ld [bc], a                                    ; $6388: $02
    or h                                          ; $6389: $b4
    add hl, bc                                    ; $638a: $09
    add b                                         ; $638b: $80
    nop                                           ; $638c: $00
    ld [hl], b                                    ; $638d: $70
    ldh a, [$ef]                                  ; $638e: $f0 $ef
    rrca                                          ; $6390: $0f
    db $fc                                        ; $6391: $fc
    ld bc, $817b                                  ; $6392: $01 $7b $81
    nop                                           ; $6395: $00
    rlca                                          ; $6396: $07
    add e                                         ; $6397: $83
    dec c                                         ; $6398: $0d
    add e                                         ; $6399: $83
    rra                                           ; $639a: $1f
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    db $dd                                        ; $639d: $dd
    nop                                           ; $639e: $00
    ld a, $63                                     ; $639f: $3e $63
    and d                                         ; $63a1: $a2
    ld h, e                                       ; $63a2: $63
    and d                                         ; $63a3: $a2
    ret nz                                        ; $63a4: $c0

    and $c1                                       ; $63a5: $e6 $c1
    nop                                           ; $63a7: $00
    add h                                         ; $63a8: $84
    ld l, [hl]                                    ; $63a9: $6e
    xor e                                         ; $63aa: $ab
    ld l, [hl]                                    ; $63ab: $6e
    db $eb                                        ; $63ac: $eb
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    ld sp, hl                                     ; $63af: $f9
    nop                                           ; $63b0: $00
    rlca                                          ; $63b1: $07
    rlca                                          ; $63b2: $07
    dec sp                                        ; $63b3: $3b
    rlca                                          ; $63b4: $07
    ccf                                           ; $63b5: $3f
    ld d, $d1                                     ; $63b6: $16 $d1
    dec b                                         ; $63b8: $05
    nop                                           ; $63b9: $00
    jp nz, $7686                                  ; $63ba: $c2 $86 $76

    adc [hl]                                      ; $63bd: $8e
    ld l, h                                       ; $63be: $6c
    ld b, $0e                                     ; $63bf: $06 $0e
    ld e, $04                                     ; $63c1: $1e $04
    ld hl, sp+$3c                                 ; $63c3: $f8 $3c
    ld hl, sp+$3c                                 ; $63c5: $f8 $3c
    ldh a, [$a0]                                  ; $63c7: $f0 $a0
    ld l, d                                       ; $63c9: $6a
    db $10                                        ; $63ca: $10
    inc bc                                        ; $63cb: $03
    add a                                         ; $63cc: $87
    ld [bc], a                                    ; $63cd: $02
    ld b, b                                       ; $63ce: $40
    nop                                           ; $63cf: $00
    ld bc, $0b60                                  ; $63d0: $01 $60 $0b
    ret z                                         ; $63d3: $c8

    rlca                                          ; $63d4: $07
    push bc                                       ; $63d5: $c5
    rlca                                          ; $63d6: $07
    ldh [rP1], a                                  ; $63d7: $e0 $00
    rrca                                          ; $63d9: $0f
    db $ec                                        ; $63da: $ec
    inc bc                                        ; $63db: $03
    ldh [$f1], a                                  ; $63dc: $e0 $f1
    inc bc                                        ; $63de: $03
    ld hl, sp+$01                                 ; $63df: $f8 $01
    nop                                           ; $63e1: $00
    ld hl, sp+$04                                 ; $63e2: $f8 $04
    ccf                                           ; $63e4: $3f
    nop                                           ; $63e5: $00
    ret nz                                        ; $63e6: $c0

    ld e, $e1                                     ; $63e7: $1e $e1
    ld bc, $3800                                  ; $63e9: $01 $00 $38
    pop de                                        ; $63ec: $d1
    inc e                                         ; $63ed: $1c
    db $ec                                        ; $63ee: $ec
    and $f8                                       ; $63ef: $e6 $f8
    di                                            ; $63f1: $f3
    db $fc                                        ; $63f2: $fc
    nop                                           ; $63f3: $00
    ld a, [hl]                                    ; $63f4: $7e
    ld a, c                                       ; $63f5: $79
    rst $20                                       ; $63f6: $e7
    nop                                           ; $63f7: $00
    inc bc                                        ; $63f8: $03
    nop                                           ; $63f9: $00
    ld [hl], b                                    ; $63fa: $70
    add b                                         ; $63fb: $80
    nop                                           ; $63fc: $00
    ld a, b                                       ; $63fd: $78
    sbc h                                         ; $63fe: $9c
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    ld a, d                                       ; $6401: $7a
    ld b, [hl]                                    ; $6402: $46
    ccf                                           ; $6403: $3f
    jr c, jr_0ac_6426                             ; $6404: $38 $20

    nop                                           ; $6406: $00
    add b                                         ; $6407: $80
    ld b, b                                       ; $6408: $40
    ld [$00ff], sp                                ; $6409: $08 $ff $00
    ld a, a                                       ; $640c: $7f
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    ld bc, $803f                                  ; $640f: $01 $3f $80
    rra                                           ; $6412: $1f
    add a                                         ; $6413: $87
    ld b, a                                       ; $6414: $47
    sbc d                                         ; $6415: $9a
    ld b, d                                       ; $6416: $42
    ld d, b                                       ; $6417: $50
    jr z, jr_0ac_641a                             ; $6418: $28 $00

jr_0ac_641a:
    ld [bc], a                                    ; $641a: $02
    di                                            ; $641b: $f3
    ld [$27c0], sp                                ; $641c: $08 $c0 $27
    inc a                                         ; $641f: $3c
    rst $38                                       ; $6420: $ff
    ld h, [hl]                                    ; $6421: $66
    add b                                         ; $6422: $80
    jr nz, jr_0ac_643d                            ; $6423: $20 $18

    ld sp, hl                                     ; $6425: $f9

jr_0ac_6426:
    nop                                           ; $6426: $00
    ld b, $04                                     ; $6427: $06 $04
    db $fc                                        ; $6429: $fc
    call nz, Call_000_108f                        ; $642a: $c4 $8f $10
    nop                                           ; $642d: $00
    jr nc, @-$3e                                  ; $642e: $30 $c0

    ld [hl], b                                    ; $6430: $70
    ld h, b                                       ; $6431: $60
    cp $fd                                        ; $6432: $fe $fd
    ld bc, $00fe                                  ; $6434: $01 $fe $00
    db $fc                                        ; $6437: $fc
    db $fc                                        ; $6438: $fc
    db $fd                                        ; $6439: $fd
    inc bc                                        ; $643a: $03
    ldh a, [$0e]                                  ; $643b: $f0 $0e

jr_0ac_643d:
    ldh [$c1], a                                  ; $643d: $e0 $c1
    nop                                           ; $643f: $00
    ret c                                         ; $6440: $d8

    ld b, $30                                     ; $6441: $06 $30
    dec c                                         ; $6443: $0d
    pop hl                                        ; $6444: $e1
    rra                                           ; $6445: $1f
    inc e                                         ; $6446: $1c
    jr nz, jr_0ac_6449                            ; $6447: $20 $00

jr_0ac_6449:
    ldh [rTMA], a                                 ; $6449: $e0 $06
    ret nz                                        ; $644b: $c0

    ld b, $06                                     ; $644c: $06 $06
    dec bc                                        ; $644e: $0b
    dec e                                         ; $644f: $1d
    ccf                                           ; $6450: $3f
    nop                                           ; $6451: $00
    add hl, sp                                    ; $6452: $39
    rra                                           ; $6453: $1f
    ld a, [hl+]                                   ; $6454: $2a
    inc h                                         ; $6455: $24
    adc [hl]                                      ; $6456: $8e
    adc c                                         ; $6457: $89
    rst $08                                       ; $6458: $cf
    ld b, [hl]                                    ; $6459: $46
    nop                                           ; $645a: $00
    ld h, c                                       ; $645b: $61
    jr nz, @+$32                                  ; $645c: $20 $30

    add hl, de                                    ; $645e: $19
    db $10                                        ; $645f: $10
    add h                                         ; $6460: $84
    add h                                         ; $6461: $84
    ld hl, sp+$00                                 ; $6462: $f8 $00
    inc c                                         ; $6464: $0c
    ld h, h                                       ; $6465: $64
    ld l, b                                       ; $6466: $68
    inc h                                         ; $6467: $24
    ld [$0d0c], sp                                ; $6468: $08 $0c $0d
    ret nz                                        ; $646b: $c0

    nop                                           ; $646c: $00
    ld [bc], a                                    ; $646d: $02
    inc c                                         ; $646e: $0c
    ld [$d010], sp                                ; $646f: $08 $10 $d0
    rlca                                          ; $6472: $07
    ldh [$87], a                                  ; $6473: $e0 $87
    nop                                           ; $6475: $00
    add b                                         ; $6476: $80
    add a                                         ; $6477: $87
    ret nz                                        ; $6478: $c0

    sbc c                                         ; $6479: $99
    ret c                                         ; $647a: $d8

    adc [hl]                                      ; $647b: $8e
    db $dd                                        ; $647c: $dd
    ld e, b                                       ; $647d: $58
    nop                                           ; $647e: $00
    xor h                                         ; $647f: $ac
    ldh [rNR41], a                                ; $6480: $e0 $20
    nop                                           ; $6482: $00
    rrca                                          ; $6483: $0f
    rlca                                          ; $6484: $07
    ld [hl], a                                    ; $6485: $77
    add e                                         ; $6486: $83
    nop                                           ; $6487: $00
    dec de                                        ; $6488: $1b
    ldh [$ec], a                                  ; $6489: $e0 $ec
    ldh a, [rTAC]                                 ; $648b: $f0 $07
    ldh a, [$63]                                  ; $648d: $f0 $63
    nop                                           ; $648f: $00
    ld h, h                                       ; $6490: $64
    rlca                                          ; $6491: $07
    call nc, $9828                                ; $6492: $d4 $28 $98
    ld [$fc01], sp                                ; $6495: $08 $01 $fc
    ld e, h                                       ; $6498: $5c
    jr jr_0ac_64a2                                ; $6499: $18 $07

    jr nc, jr_0ac_649d                            ; $649b: $30 $00

jr_0ac_649d:
    ld l, a                                       ; $649d: $6f
    rrca                                          ; $649e: $0f
    ld h, b                                       ; $649f: $60
    rrca                                          ; $64a0: $0f
    and b                                         ; $64a1: $a0

jr_0ac_64a2:
    adc a                                         ; $64a2: $8f
    dec de                                        ; $64a3: $1b
    add e                                         ; $64a4: $83
    db $10                                        ; $64a5: $10
    ld [hl], d                                    ; $64a6: $72
    inc bc                                        ; $64a7: $03
    ld hl, sp-$4d                                 ; $64a8: $f8 $b3
    nop                                           ; $64aa: $00
    db $fc                                        ; $64ab: $fc
    nop                                           ; $64ac: $00
    ld a, [$0002]                                 ; $64ad: $fa $02 $00
    ld a, [c]                                     ; $64b0: $f2
    ld b, $05                                     ; $64b1: $06 $05
    db $f4                                        ; $64b3: $f4
    ld b, $87                                     ; $64b4: $06 $87
    ld [bc], a                                    ; $64b6: $02
    rra                                           ; $64b7: $1f
    nop                                           ; $64b8: $00
    ld e, $07                                     ; $64b9: $1e $07
    add a                                         ; $64bb: $87
    rra                                           ; $64bc: $1f
    rra                                           ; $64bd: $1f
    ld e, a                                       ; $64be: $5f
    ret nz                                        ; $64bf: $c0

    dec e                                         ; $64c0: $1d
    nop                                           ; $64c1: $00
    rst $00                                       ; $64c2: $c7
    adc a                                         ; $64c3: $8f
    ld b, d                                       ; $64c4: $42
    add b                                         ; $64c5: $80
    jr @-$11                                      ; $64c6: $18 $ed

    ld hl, sp-$07                                 ; $64c8: $f8 $f9
    nop                                           ; $64ca: $00
    ldh a, [$f2]                                  ; $64cb: $f0 $f2
    ldh [rNR43], a                                ; $64cd: $e0 $22
    ld h, d                                       ; $64cf: $62
    ret nz                                        ; $64d0: $c0

    call nz, Call_000_0080                        ; $64d1: $c4 $80 $00
    adc h                                         ; $64d4: $8c
    dec b                                         ; $64d5: $05
    ld a, [de]                                    ; $64d6: $1a
    add hl, bc                                    ; $64d7: $09
    ld b, $44                                     ; $64d8: $06 $44
    ld b, a                                       ; $64da: $47
    add e                                         ; $64db: $83
    nop                                           ; $64dc: $00
    sub b                                         ; $64dd: $90
    rra                                           ; $64de: $1f
    jr c, jr_0ac_6501                             ; $64df: $38 $20

    add a                                         ; $64e1: $87
    add b                                         ; $64e2: $80
    ccf                                           ; $64e3: $3f
    add b                                         ; $64e4: $80
    nop                                           ; $64e5: $00
    rlca                                          ; $64e6: $07
    add b                                         ; $64e7: $80
    dec de                                        ; $64e8: $1b
    sbc b                                         ; $64e9: $98
    ld a, c                                       ; $64ea: $79
    ld bc, $803e                                  ; $64eb: $01 $3e $80
    nop                                           ; $64ee: $00
    sbc a                                         ; $64ef: $9f
    ret nz                                        ; $64f0: $c0

    ccf                                           ; $64f1: $3f
    nop                                           ; $64f2: $00
    db $e3                                        ; $64f3: $e3
    nop                                           ; $64f4: $00
    ret z                                         ; $64f5: $c8

    jr jr_0ac_64f8                                ; $64f6: $18 $00

jr_0ac_64f8:
    inc [hl]                                      ; $64f8: $34
    xor h                                         ; $64f9: $ac
    ld l, [hl]                                    ; $64fa: $6e
    ld e, a                                       ; $64fb: $5f
    add b                                         ; $64fc: $80
    ccf                                           ; $64fd: $3f
    ret nz                                        ; $64fe: $c0

    rrca                                          ; $64ff: $0f
    nop                                           ; $6500: $00

jr_0ac_6501:
    ld [hl], a                                    ; $6501: $77
    rlca                                          ; $6502: $07
    dec de                                        ; $6503: $1b
    add e                                         ; $6504: $83
    ldh [$0c], a                                  ; $6505: $e0 $0c
    ldh a, [rTMA]                                 ; $6507: $f0 $06
    nop                                           ; $6509: $00
    ldh a, [rTMA]                                 ; $650a: $f0 $06
    ld [hl], c                                    ; $650c: $71
    dec b                                         ; $650d: $05
    and b                                         ; $650e: $a0
    adc a                                         ; $650f: $8f
    or b                                          ; $6510: $b0
    add a                                         ; $6511: $87
    nop                                           ; $6512: $00
    ret nc                                        ; $6513: $d0

    rst $00                                       ; $6514: $c7
    ret nc                                        ; $6515: $d0

    rst $00                                       ; $6516: $c7
    ret c                                         ; $6517: $d8

    jp $e3e8                                      ; $6518: $c3 $e8 $e3


    add h                                         ; $651b: $84
    ld [bc], a                                    ; $651c: $02
    ld [$e405], sp                                ; $651d: $08 $05 $e4
    dec c                                         ; $6520: $0d
    db $ec                                        ; $6521: $ec
    ld [bc], a                                    ; $6522: $02
    nop                                           ; $6523: $00
    add sp, $09                                   ; $6524: $e8 $09
    nop                                           ; $6526: $00
    db $ec                                        ; $6527: $ec
    dec c                                         ; $6528: $0d
    call nz, $870f                                ; $6529: $c4 $0f $87
    add a                                         ; $652c: $87
    adc b                                         ; $652d: $88
    rrca                                          ; $652e: $0f
    nop                                           ; $652f: $00
    adc a                                         ; $6530: $8f
    cpl                                           ; $6531: $2f
    jr z, jr_0ac_655d                             ; $6532: $28 $29

    ld h, $0f                                     ; $6534: $26 $0f
    ld a, c                                       ; $6536: $79
    inc bc                                        ; $6537: $03
    nop                                           ; $6538: $00
    ld [hl], e                                    ; $6539: $73
    ld h, b                                       ; $653a: $60
    ld [hl-], a                                   ; $653b: $32
    ld hl, $1770                                  ; $653c: $21 $70 $17
    ld [hl], $26                                  ; $653f: $36 $26
    nop                                           ; $6541: $00
    inc bc                                        ; $6542: $03
    adc h                                         ; $6543: $8c
    add e                                         ; $6544: $83
    add l                                         ; $6545: $85
    sbc d                                         ; $6546: $9a
    dec b                                         ; $6547: $05
    ld a, [hl-]                                   ; $6548: $3a
    ld a, d                                       ; $6549: $7a
    nop                                           ; $654a: $00
    ld [hl], l                                    ; $654b: $75
    cp c                                          ; $654c: $b9
    or a                                          ; $654d: $b7
    or b                                          ; $654e: $b0

jr_0ac_654f:
    xor [hl]                                      ; $654f: $ae
    or c                                          ; $6550: $b1
    xor l                                         ; $6551: $ad
    or b                                          ; $6552: $b0
    nop                                           ; $6553: $00
    inc l                                         ; $6554: $2c
    or d                                          ; $6555: $b2
    ld l, $a2                                     ; $6556: $2e $a2
    ld a, $a0                                     ; $6558: $3e $a0
    dec e                                         ; $655a: $1d
    dec l                                         ; $655b: $2d
    nop                                           ; $655c: $00

jr_0ac_655d:
    dec e                                         ; $655d: $1d
    ld l, l                                       ; $655e: $6d
    add hl, de                                    ; $655f: $19
    dec sp                                        ; $6560: $3b
    ret                                           ; $6561: $c9


    ld [hl-], a                                   ; $6562: $32
    db $db                                        ; $6563: $db
    rra                                           ; $6564: $1f
    nop                                           ; $6565: $00
    ld e, e                                       ; $6566: $5b
    ccf                                           ; $6567: $3f
    or c                                          ; $6568: $b1
    and b                                         ; $6569: $a0
    sbc a                                         ; $656a: $9f
    ldh [$1f], a                                  ; $656b: $e0 $1f
    ret nz                                        ; $656d: $c0

    nop                                           ; $656e: $00
    cp b                                          ; $656f: $b8
    ret nz                                        ; $6570: $c0

    or b                                          ; $6571: $b0
    ldh [$d8], a                                  ; $6572: $e0 $d8
    ret nz                                        ; $6574: $c0

    or b                                          ; $6575: $b0
    dec b                                         ; $6576: $05
    nop                                           ; $6577: $00
    ld [hl], c                                    ; $6578: $71
    dec c                                         ; $6579: $0d
    ld h, c                                       ; $657a: $61
    dec bc                                        ; $657b: $0b
    ld h, e                                       ; $657c: $63
    dec bc                                        ; $657d: $0b
    inc hl                                        ; $657e: $23
    sbc b                                         ; $657f: $98
    nop                                           ; $6580: $00
    add e                                         ; $6581: $83
    sub b                                         ; $6582: $90
    add a                                         ; $6583: $87
    sub b                                         ; $6584: $90
    add a                                         ; $6585: $87
    db $10                                        ; $6586: $10
    rlca                                          ; $6587: $07
    db $ec                                        ; $6588: $ec
    ld [$05e1], sp                                ; $6589: $08 $e1 $05
    pop af                                        ; $658c: $f1
    inc b                                         ; $658d: $04
    ld a, e                                       ; $658e: $7b
    nop                                           ; $658f: $00
    ld [bc], a                                    ; $6590: $02
    ld hl, sp+$02                                 ; $6591: $f8 $02
    ld b, b                                       ; $6593: $40
    ld hl, sp-$4f                                 ; $6594: $f8 $b1
    ld bc, $07fc                                  ; $6596: $01 $fc $07
    ld [$6b0e], sp                                ; $6599: $08 $0e $6b
    ld c, $00                                     ; $659c: $0e $00
    ld h, e                                       ; $659e: $63
    ld c, $62                                     ; $659f: $0e $62
    ld b, $60                                     ; $65a1: $06 $60
    sub a                                         ; $65a3: $97
    pop af                                        ; $65a4: $f1
    ld d, $00                                     ; $65a5: $16 $00
    ld [hl], b                                    ; $65a7: $70
    ld [hl], b                                    ; $65a8: $70
    ld h, d                                       ; $65a9: $62
    rla                                           ; $65aa: $17
    ld h, $22                                     ; $65ab: $26 $22
    ld [de], a                                    ; $65ad: $12
    stop                                          ; $65ae: $10 $00
    nop                                           ; $65b0: $00
    rrca                                          ; $65b1: $0f
    inc b                                         ; $65b2: $04
    ld b, $09                                     ; $65b3: $06 $09
    adc a                                         ; $65b5: $8f
    ld c, a                                       ; $65b6: $4f
    ld c, $00                                     ; $65b7: $0e $00
    adc c                                         ; $65b9: $89
    add b                                         ; $65ba: $80
    sbc a                                         ; $65bb: $9f
    ld hl, $7338                                  ; $65bc: $21 $38 $73
    ld [hl], b                                    ; $65bf: $70
    rrca                                          ; $65c0: $0f
    nop                                           ; $65c1: $00
    call z, $181e                                 ; $65c2: $cc $1e $18
    nop                                           ; $65c5: $00
    jr jr_0ac_654f                                ; $65c6: $18 $87

    add b                                         ; $65c8: $80
    ret nz                                        ; $65c9: $c0

    nop                                           ; $65ca: $00
    ld c, a                                       ; $65cb: $4f
    ret nz                                        ; $65cc: $c0

    ld b, a                                       ; $65cd: $47
    push de                                       ; $65ce: $d5
    and e                                         ; $65cf: $a3
    add c                                         ; $65d0: $81
    ld b, [hl]                                    ; $65d1: $46
    add e                                         ; $65d2: $83
    nop                                           ; $65d3: $00
    inc b                                         ; $65d4: $04
    ld bc, $8205                                  ; $65d5: $01 $05 $82
    add a                                         ; $65d8: $87
    rst $28                                       ; $65d9: $ef
    ldh [$ef], a                                  ; $65da: $e0 $ef
    nop                                           ; $65dc: $00
    ldh [$e7], a                                  ; $65dd: $e0 $e7
    jp hl                                         ; $65df: $e9


    di                                            ; $65e0: $f3
    inc sp                                        ; $65e1: $33
    ldh [$67], a                                  ; $65e2: $e0 $67
    adc a                                         ; $65e4: $8f
    nop                                           ; $65e5: $00
    ld c, a                                       ; $65e6: $4f
    rrca                                          ; $65e7: $0f
    rst $18                                       ; $65e8: $df
    rra                                           ; $65e9: $1f
    sbc a                                         ; $65ea: $9f
    ccf                                           ; $65eb: $3f
    sbc a                                         ; $65ec: $9f
    ld b, b                                       ; $65ed: $40
    nop                                           ; $65ee: $00
    ld a, [hl]                                    ; $65ef: $7e
    ld [hl], b                                    ; $65f0: $70
    ld c, $07                                     ; $65f1: $0e $07
    scf                                           ; $65f3: $37
    adc a                                         ; $65f4: $8f
    cpl                                           ; $65f5: $2f
    adc a                                         ; $65f6: $8f
    nop                                           ; $65f7: $00
    cpl                                           ; $65f8: $2f
    rrca                                          ; $65f9: $0f
    ld l, a                                       ; $65fa: $6f
    ld b, b                                       ; $65fb: $40
    rra                                           ; $65fc: $1f
    ld b, b                                       ; $65fd: $40
    rra                                           ; $65fe: $1f
    ret nz                                        ; $65ff: $c0

    nop                                           ; $6600: $00
    rra                                           ; $6601: $1f
    add b                                         ; $6602: $80
    ccf                                           ; $6603: $3f
    ld bc, $01fc                                  ; $6604: $01 $fc $01
    db $fc                                        ; $6607: $fc
    nop                                           ; $6608: $00
    inc d                                         ; $6609: $14
    cp $fe                                        ; $660a: $fe $fe
    nop                                           ; $660c: $00
    ld [bc], a                                    ; $660d: $02
    ld [$3dff], sp                                ; $660e: $08 $ff $3d
    ld [bc], a                                    ; $6611: $02
    ld [hl], b                                    ; $6612: $70
    ld h, d                                       ; $6613: $62
    nop                                           ; $6614: $00
    and b                                         ; $6615: $a0
    jr nz, @-$7e                                  ; $6616: $20 $80

    inc c                                         ; $6618: $0c
    dec bc                                        ; $6619: $0b
    adc d                                         ; $661a: $8a
    inc b                                         ; $661b: $04
    add d                                         ; $661c: $82
    nop                                           ; $661d: $00
    add hl, bc                                    ; $661e: $09
    call z, Call_0ac_430b                         ; $661f: $cc $0b $43
    ld e, $5c                                     ; $6622: $1e $5c
    db $10                                        ; $6624: $10
    cpl                                           ; $6625: $2f
    nop                                           ; $6626: $00
    dec h                                         ; $6627: $25

jr_0ac_6628:
    ccf                                           ; $6628: $3f
    rrca                                          ; $6629: $0f
    ld [hl], l                                    ; $662a: $75
    ld c, d                                       ; $662b: $4a
    ld a, [bc]                                    ; $662c: $0a
    ld [bc], a                                    ; $662d: $02
    ld b, d                                       ; $662e: $42
    nop                                           ; $662f: $00
    ld c, a                                       ; $6630: $4f
    cpl                                           ; $6631: $2f
    ld b, e                                       ; $6632: $43
    and e                                         ; $6633: $a3
    ld c, $c8                                     ; $6634: $0e $c8
    sub [hl]                                      ; $6636: $96
    ld d, [hl]                                    ; $6637: $56
    nop                                           ; $6638: $00
    rra                                           ; $6639: $1f
    rst $18                                       ; $663a: $df
    rra                                           ; $663b: $1f
    ld e, [hl]                                    ; $663c: $5e
    ld c, $0e                                     ; $663d: $0e $0e
    ld l, [hl]                                    ; $663f: $6e
    ld d, b                                       ; $6640: $50
    nop                                           ; $6641: $00
    ret z                                         ; $6642: $c8

    db $f4                                        ; $6643: $f4
    dec a                                         ; $6644: $3d
    add c                                         ; $6645: $81
    add hl, sp                                    ; $6646: $39
    pop bc                                        ; $6647: $c1
    call nz, $00ca                                ; $6648: $c4 $ca $00
    sbc [hl]                                      ; $664b: $9e
    sub b                                         ; $664c: $90
    inc b                                         ; $664d: $04
    ld b, $10                                     ; $664e: $06 $10
    jr z, jr_0ac_6670                             ; $6650: $28 $1e

    pop de                                        ; $6652: $d1
    nop                                           ; $6653: $00
    ld l, $61                                     ; $6654: $2e $61
    ld h, $9c                                     ; $6656: $26 $9c
    inc b                                         ; $6658: $04
    or b                                          ; $6659: $b0
    ld e, $7e                                     ; $665a: $1e $7e
    nop                                           ; $665c: $00
    dec c                                         ; $665d: $0d
    inc a                                         ; $665e: $3c
    pop bc                                        ; $665f: $c1
    db $fc                                        ; $6660: $fc
    pop hl                                        ; $6661: $e1
    db $fc                                        ; $6662: $fc
    dec c                                         ; $6663: $0d
    ld a, h                                       ; $6664: $7c
    ld [bc], a                                    ; $6665: $02
    dec de                                        ; $6666: $1b
    ld a, b                                       ; $6667: $78
    sub d                                         ; $6668: $92
    ldh a, [$e2]                                  ; $6669: $f0 $e2
    add sp, $67                                   ; $666b: $e8 $67
    ld bc, $703f                                  ; $666d: $01 $3f $70

jr_0ac_6670:
    ld a, a                                       ; $6670: $7f
    ld d, b                                       ; $6671: $50
    ld [bc], a                                    ; $6672: $02
    inc b                                         ; $6673: $04
    ld [$8801], sp                                ; $6674: $08 $01 $88
    inc d                                         ; $6677: $14
    ld [hl], h                                    ; $6678: $74
    and b                                         ; $6679: $a0
    adc c                                         ; $667a: $89
    nop                                           ; $667b: $00
    and b                                         ; $667c: $a0
    adc l                                         ; $667d: $8d
    dec [hl]                                      ; $667e: $35
    add l                                         ; $667f: $85
    db $10                                        ; $6680: $10
    ret nz                                        ; $6681: $c0

    rra                                           ; $6682: $1f

jr_0ac_6683:
    ret nz                                        ; $6683: $c0

    ld b, b                                       ; $6684: $40
    nop                                           ; $6685: $00
    ld c, [hl]                                    ; $6686: $4e
    ld [bc], a                                    ; $6687: $02
    cpl                                           ; $6688: $2f
    jr nz, jr_0ac_66e7                            ; $6689: $20 $5c

    ld d, e                                       ; $668b: $53
    inc e                                         ; $668c: $1c
    inc de                                        ; $668d: $13
    jr nc, jr_0ac_6683                            ; $668e: $30 $f3

    rrca                                          ; $6690: $0f
    add [hl]                                      ; $6691: $86
    ld a, [bc]                                    ; $6692: $0a
    call z, $bc0a                                 ; $6693: $cc $0a $bc
    cp b                                          ; $6696: $b8
    ldh a, [$fe]                                  ; $6697: $f0 $fe
    ld [$f50d], sp                                ; $6699: $08 $0d $f5
    inc e                                         ; $669c: $1c
    db $e4                                        ; $669d: $e4
    db $10                                        ; $669e: $10
    jr @+$01                                      ; $669f: $18 $ff

    nop                                           ; $66a1: $00
    sub b                                         ; $66a2: $90
    ld bc, $1030                                  ; $66a3: $01 $30 $10
    jr c, jr_0ac_6628                             ; $66a6: $38 $80

    sub [hl]                                      ; $66a8: $96
    db $e4                                        ; $66a9: $e4
    db $c2, $10, $28                              ; $66aa: $c2 $10 $28

    nop                                           ; $66ad: $00
    ld b, $30                                     ; $66ae: $06 $30
    dec b                                         ; $66b0: $05
    ld [hl], c                                    ; $66b1: $71

jr_0ac_66b2:
    dec b                                         ; $66b2: $05
    ld de, $210d                                  ; $66b3: $11 $0d $21
    ld b, $08                                     ; $66b6: $06 $08
    inc bc                                        ; $66b8: $03
    ld hl, sp+$03                                 ; $66b9: $f8 $03
    inc bc                                        ; $66bb: $03
    inc [hl]                                      ; $66bc: $34
    jr nz, jr_0ac_66c3                            ; $66bd: $20 $04

    ld c, e                                       ; $66bf: $4b
    db $10                                        ; $66c0: $10
    inc bc                                        ; $66c1: $03
    adc a                                         ; $66c2: $8f

jr_0ac_66c3:
    ld [bc], a                                    ; $66c3: $02
    ld h, b                                       ; $66c4: $60
    nop                                           ; $66c5: $00
    ld bc, $23f8                                  ; $66c6: $01 $f8 $23
    ld [$0703], sp                                ; $66c9: $08 $03 $07
    ld bc, $f0ff                                  ; $66cc: $01 $ff $f0
    nop                                           ; $66cf: $00
    ldh a, [$ce]                                  ; $66d0: $f0 $ce
    ld [hl], h                                    ; $66d2: $74
    inc c                                         ; $66d3: $0c
    inc a                                         ; $66d4: $3c
    inc a                                         ; $66d5: $3c
    ld a, b                                       ; $66d6: $78
    ld h, a                                       ; $66d7: $67
    nop                                           ; $66d8: $00
    inc bc                                        ; $66d9: $03
    di                                            ; $66da: $f3
    xor $0f                                       ; $66db: $ee $0f
    pop bc                                        ; $66dd: $c1
    sbc $07                                       ; $66de: $de $07
    jr c, jr_0ac_66e2                             ; $66e0: $38 $00

jr_0ac_66e2:
    ld a, h                                       ; $66e2: $7c
    rrca                                          ; $66e3: $0f
    ld hl, sp+$1f                                 ; $66e4: $f8 $1f
    nop                                           ; $66e6: $00

jr_0ac_66e7:
    cp $fe                                        ; $66e7: $fe $fe
    db $e3                                        ; $66e9: $e3
    nop                                           ; $66ea: $00
    inc a                                         ; $66eb: $3c
    rst $20                                       ; $66ec: $e7
    pop bc                                        ; $66ed: $c1
    add b                                         ; $66ee: $80
    ld a, $c7                                     ; $66ef: $3e $c7
    ld a, b                                       ; $66f1: $78
    sbc b                                         ; $66f2: $98
    nop                                           ; $66f3: $00
    inc e                                         ; $66f4: $1c
    db $fc                                        ; $66f5: $fc
    ld a, [hl-]                                   ; $66f6: $3a
    ld hl, sp+$00                                 ; $66f7: $f8 $00
    nop                                           ; $66f9: $00
    add b                                         ; $66fa: $80
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    add b                                         ; $66fd: $80
    ret nz                                        ; $66fe: $c0

    ret nz                                        ; $66ff: $c0

    jr nz, jr_0ac_66b2                            ; $6700: $20 $b0

    ld [hl], b                                    ; $6702: $70
    ret nc                                        ; $6703: $d0

    or b                                          ; $6704: $b0
    ld [$97a7], sp                                ; $6705: $08 $a7 $97
    rst $10                                       ; $6708: $d7
    rst $00                                       ; $6709: $c7
    ld h, b                                       ; $670a: $60
    xor b                                         ; $670b: $a8
    ld e, $00                                     ; $670c: $1e $00
    ld b, $04                                     ; $670e: $06 $04
    dec sp                                        ; $6710: $3b
    inc bc                                        ; $6711: $03
    rra                                           ; $6712: $1f
    ld e, $19                                     ; $6713: $1e $19
    ld e, e                                       ; $6715: $5b
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    ld b, $00                                     ; $6718: $06 $00
    rlca                                          ; $671a: $07
    inc e                                         ; $671b: $1c
    rlca                                          ; $671c: $07
    jr c, jr_0ac_672d                             ; $671d: $38 $0e

Call_0ac_671f:
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    rrca                                          ; $6721: $0f
    nop                                           ; $6722: $00
    di                                            ; $6723: $f3
    add [hl]                                      ; $6724: $86
    ld a, d                                       ; $6725: $7a
    pop de                                        ; $6726: $d1
    ld sp, $68e3                                  ; $6727: $31 $e3 $68
    rst $00                                       ; $672a: $c7
    nop                                           ; $672b: $00
    ret nc                                        ; $672c: $d0

jr_0ac_672d:
    daa                                           ; $672d: $27
    rlca                                          ; $672e: $07

Jump_0ac_672f:
    jp nc, $a403                                  ; $672f: $d2 $03 $a4

    cp b                                          ; $6732: $b8
    and b                                         ; $6733: $a0
    nop                                           ; $6734: $00
    sbc a                                         ; $6735: $9f
    dec e                                         ; $6736: $1d
    sbc h                                         ; $6737: $9c
    ldh [$d8], a                                  ; $6738: $e0 $d8
    ret nz                                        ; $673a: $c0

jr_0ac_673b:
    cp b                                          ; $673b: $b8
    ld a, [hl]                                    ; $673c: $7e
    nop                                           ; $673d: $00
    adc [hl]                                      ; $673e: $8e
    ld a, b                                       ; $673f: $78
    sbc b                                         ; $6740: $98
    ldh a, [$ef]                                  ; $6741: $f0 $ef
    nop                                           ; $6743: $00
    ccf                                           ; $6744: $3f
    ret nz                                        ; $6745: $c0

    nop                                           ; $6746: $00
    add b                                         ; $6747: $80
    db $fc                                        ; $6748: $fc
    rst $38                                       ; $6749: $ff
    ld a, [c]                                     ; $674a: $f2
    push af                                       ; $674b: $f5
    ldh a, [$f7]                                  ; $674c: $f0 $f7
    add sp, $00                                   ; $674e: $e8 $00
    db $e3                                        ; $6750: $e3
    db $ec                                        ; $6751: $ec
    ldh [$e3], a                                  ; $6752: $e0 $e3
    ldh [$81], a                                  ; $6754: $e0 $81
    adc h                                         ; $6756: $8c
    ld h, b                                       ; $6757: $60
    nop                                           ; $6758: $00
    jr c, jr_0ac_673b                             ; $6759: $38 $e0

    inc a                                         ; $675b: $3c
    rst $20                                       ; $675c: $e7
    rst $20                                       ; $675d: $e7
    cp a                                          ; $675e: $bf
    ld a, a                                       ; $675f: $7f
    ld b, b                                       ; $6760: $40
    nop                                           ; $6761: $00
    ldh [$90], a                                  ; $6762: $e0 $90
    add sp, $7c                                   ; $6764: $e8 $7c
    inc [hl]                                      ; $6766: $34
    ld e, $9a                                     ; $6767: $1e $9a
    nop                                           ; $6769: $00
    jr nz, jr_0ac_676c                            ; $676a: $20 $00

jr_0ac_676c:
    ld hl, sp+$70                                 ; $676c: $f8 $70
    ld d, b                                       ; $676e: $50
    add b                                         ; $676f: $80
    nop                                           ; $6770: $00
    ret nz                                        ; $6771: $c0

    ldh [rIF], a                                  ; $6772: $e0 $0f
    nop                                           ; $6774: $00
    ld [$1b18], sp                                ; $6775: $08 $18 $1b
    jr c, jr_0ac_67ae                             ; $6778: $38 $34

    ld a, b                                       ; $677a: $78
    add hl, bc                                    ; $677b: $09
    ldh a, [rNR10]                                ; $677c: $f0 $10
    rlca                                          ; $677e: $07
    ldh [$cf], a                                  ; $677f: $e0 $cf
    ld [bc], a                                    ; $6781: $02
    ld [$bdc3], sp                                ; $6782: $08 $c3 $bd
    rra                                           ; $6785: $1f
    ld l, a                                       ; $6786: $6f
    nop                                           ; $6787: $00
    rrca                                          ; $6788: $0f
    rla                                           ; $6789: $17
    ld b, $3f                                     ; $678a: $06 $3f
    add b                                         ; $678c: $80
    rrca                                          ; $678d: $0f
    pop hl                                        ; $678e: $e1
    rlca                                          ; $678f: $07
    nop                                           ; $6790: $00
    ld hl, sp+$01                                 ; $6791: $f8 $01
    cp $00                                        ; $6793: $fe $00
    ld b, $cf                                     ; $6795: $06 $cf
    call nz, $0047                                ; $6797: $c4 $47 $00
    ld sp, $e0d1                                  ; $679a: $31 $d1 $e0
    ld hl, sp-$10                                 ; $679d: $f8 $f0
    scf                                           ; $679f: $37
    ld a, [hl]                                    ; $67a0: $7e
    ld b, e                                       ; $67a1: $43
    nop                                           ; $67a2: $00
    rra                                           ; $67a3: $1f
    db $10                                        ; $67a4: $10
    ld bc, $1c01                                  ; $67a5: $01 $01 $1c
    inc a                                         ; $67a8: $3c
    add e                                         ; $67a9: $83
    add l                                         ; $67aa: $85
    ld [$02fe], sp                                ; $67ab: $08 $fe $02

jr_0ac_67ae:
    nop                                           ; $67ae: $00
    rst $38                                       ; $67af: $ff
    jr nc, jr_0ac_67b2                            ; $67b0: $30 $00

jr_0ac_67b2:
    add sp, -$3d                                  ; $67b2: $e8 $c3
    cp $00                                        ; $67b4: $fe $00
    ret nz                                        ; $67b6: $c0

    nop                                           ; $67b7: $00
    cp $9e                                        ; $67b8: $fe $9e
    ldh a, [$33]                                  ; $67ba: $f0 $33
    rlca                                          ; $67bc: $07
    dec de                                        ; $67bd: $1b
    nop                                           ; $67be: $00
    ccf                                           ; $67bf: $3f
    rst $18                                       ; $67c0: $df
    ldh a, [$ef]                                  ; $67c1: $f0 $ef
    ldh [rNR23], a                                ; $67c3: $e0 $18
    pop af                                        ; $67c5: $f1
    or $00                                        ; $67c6: $f6 $00
    ld b, $09                                     ; $67c8: $06 $09
    ccf                                           ; $67ca: $3f
    ld c, a                                       ; $67cb: $4f
    ld a, b                                       ; $67cc: $78
    and a                                         ; $67cd: $a7
    rra                                           ; $67ce: $1f
    rst $28                                       ; $67cf: $ef
    nop                                           ; $67d0: $00
    db $e4                                        ; $67d1: $e4
    inc h                                         ; $67d2: $24
    rlca                                          ; $67d3: $07
    rlca                                          ; $67d4: $07
    rrca                                          ; $67d5: $0f
    ld hl, sp-$73                                 ; $67d6: $f8 $8d
    ld a, [c]                                     ; $67d8: $f2
    nop                                           ; $67d9: $00
    ld b, c                                       ; $67da: $41
    ld a, h                                       ; $67db: $7c
    inc e                                         ; $67dc: $1c
    db $fc                                        ; $67dd: $fc
    ld a, [c]                                     ; $67de: $f2
    ld c, $1e                                     ; $67df: $0e $1e
    and $01                                       ; $67e1: $e6 $01
    ld b, $18                                     ; $67e3: $06 $18
    ld bc, $f101                                  ; $67e5: $01 $01 $f1
    rlca                                          ; $67e8: $07
    db $f4                                        ; $67e9: $f4
    ld [bc], a                                    ; $67ea: $02
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    ld h, b                                       ; $67ed: $60
    ld c, a                                       ; $67ee: $4f
    rla                                           ; $67ef: $17
    ld [hl], b                                    ; $67f0: $70
    rla                                           ; $67f1: $17
    ld [hl], b                                    ; $67f2: $70
    jr nc, @+$09                                  ; $67f3: $30 $07

    nop                                           ; $67f5: $00
    jr c, jr_0ac_6803                             ; $67f6: $38 $0b

    dec bc                                        ; $67f8: $0b
    jr c, jr_0ac_6806                             ; $67f9: $38 $0b

    jr @+$15                                      ; $67fb: $18 $13

    dec bc                                        ; $67fd: $0b
    ld [de], a                                    ; $67fe: $12
    inc sp                                        ; $67ff: $33
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    ld h, e                                       ; $6802: $63

jr_0ac_6803:
    ld bc, $fb04                                  ; $6803: $01 $04 $fb

jr_0ac_6806:
    ld l, b                                       ; $6806: $68
    ld bc, $00ff                                  ; $6807: $01 $ff $00
    cp $7a                                        ; $680a: $fe $7a
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    call nc, $d10c                                ; $680e: $d4 $0c $d1
    inc e                                         ; $6811: $1c
    nop                                           ; $6812: $00
    pop de                                        ; $6813: $d1
    ld [$05c1], sp                                ; $6814: $08 $c1 $05
    add l                                         ; $6817: $85
    dec e                                         ; $6818: $1d
    dec de                                        ; $6819: $1b
    ld d, b                                       ; $681a: $50
    nop                                           ; $681b: $00
    dec de                                        ; $681c: $1b
    ret c                                         ; $681d: $d8

    jp nc, Jump_000_19df                          ; $681e: $d2 $df $19

    rrca                                          ; $6821: $0f
    or b                                          ; $6822: $b0
    dec e                                         ; $6823: $1d
    nop                                           ; $6824: $00
    or b                                          ; $6825: $b0
    inc e                                         ; $6826: $1c
    ret nz                                        ; $6827: $c0

    nop                                           ; $6828: $00
    adc a                                         ; $6829: $8f
    rlca                                          ; $682a: $07
    ldh a, [$df]                                  ; $682b: $f0 $df
    nop                                           ; $682d: $00
    ccf                                           ; $682e: $3f
    ld a, a                                       ; $682f: $7f
    cp a                                          ; $6830: $bf
    ld a, a                                       ; $6831: $7f
    ld e, h                                       ; $6832: $5c
    ld c, l                                       ; $6833: $4d
    ld e, h                                       ; $6834: $5c
    ld c, b                                       ; $6835: $48
    nop                                           ; $6836: $00

jr_0ac_6837:
    inc e                                         ; $6837: $1c
    ld b, b                                       ; $6838: $40
    dec e                                         ; $6839: $1d
    pop bc                                        ; $683a: $c1
    inc e                                         ; $683b: $1c
    call $9c3c                                    ; $683c: $cd $3c $9c
    nop                                           ; $683f: $00
    jr z, @+$6b                                   ; $6840: $28 $69

    sub l                                         ; $6842: $95
    sbc c                                         ; $6843: $99
    inc hl                                        ; $6844: $23
    and b                                         ; $6845: $a0
    sbc a                                         ; $6846: $9f
    add b                                         ; $6847: $80
    nop                                           ; $6848: $00
    cpl                                           ; $6849: $2f
    and b                                         ; $684a: $a0
    rra                                           ; $684b: $1f
    or b                                          ; $684c: $b0
    rlca                                          ; $684d: $07
    db $10                                        ; $684e: $10
    ld l, a                                       ; $684f: $6f
    ld [$5800], sp                                ; $6850: $08 $00 $58
    adc b                                         ; $6853: $88
    ld c, b                                       ; $6854: $48
    add b                                         ; $6855: $80
    ld b, $f4                                     ; $6856: $06 $f4
    ld c, $e4                                     ; $6858: $0e $e4
    nop                                           ; $685a: $00
    add sp, -$1a                                  ; $685b: $e8 $e6
    add sp, -$1c                                  ; $685d: $e8 $e4
    call nc, $d018                                ; $685f: $d4 $18 $d0
    inc e                                         ; $6862: $1c
    nop                                           ; $6863: $00
    ret nc                                        ; $6864: $d0

    jr jr_0ac_6837                                ; $6865: $18 $d0

    jr jr_0ac_687a                                ; $6867: $18 $11

    dec c                                         ; $6869: $0d
    dec b                                         ; $686a: $05
    inc e                                         ; $686b: $1c
    nop                                           ; $686c: $00
    dec b                                         ; $686d: $05
    inc c                                         ; $686e: $0c
    inc c                                         ; $686f: $0c
    ld b, $0c                                     ; $6870: $06 $0c
    ld b, $04                                     ; $6872: $06 $04
    ld [bc], a                                    ; $6874: $02

jr_0ac_6875:
    inc b                                         ; $6875: $04
    dec b                                         ; $6876: $05

jr_0ac_6877:
    inc bc                                        ; $6877: $03
    ld b, $03                                     ; $6878: $06 $03

jr_0ac_687a:
    rst $38                                       ; $687a: $ff
    sub c                                         ; $687b: $91
    ld bc, $01fc                                  ; $687c: $01 $fc $01
    nop                                           ; $687f: $00
    inc bc                                        ; $6880: $03
    ld a, [$f607]                                 ; $6881: $fa $07 $f6
    ld bc, $6306                                  ; $6884: $01 $06 $63
    ld h, [hl]                                    ; $6887: $66
    nop                                           ; $6888: $00
    ld h, e                                       ; $6889: $63
    dec c                                         ; $688a: $0d
    ld a, b                                       ; $688b: $78
    ccf                                           ; $688c: $3f
    ret z                                         ; $688d: $c8

    rrca                                          ; $688e: $0f
    xor b                                         ; $688f: $a8
    dec hl                                        ; $6890: $2b
    nop                                           ; $6891: $00
    inc de                                        ; $6892: $13
    ld [hl], h                                    ; $6893: $74
    sub e                                         ; $6894: $93
    sub h                                         ; $6895: $94
    call $dcc6                                    ; $6896: $cd $c6 $dc
    rst $10                                       ; $6899: $d7
    nop                                           ; $689a: $00
    inc c                                         ; $689b: $0c
    rla                                           ; $689c: $17
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    dec sp                                        ; $689f: $3b
    jp Jump_000_17e7                              ; $68a0: $c3 $e7 $17


    nop                                           ; $68a3: $00
    ld [hl], $c6                                  ; $68a4: $36 $c6
    ld c, $e2                                     ; $68a6: $0e $e2
    inc a                                         ; $68a8: $3c
    inc b                                         ; $68a9: $04
    ld hl, sp-$1f                                 ; $68aa: $f8 $e1
    nop                                           ; $68ac: $00
    add b                                         ; $68ad: $80
    inc bc                                        ; $68ae: $03
    ld d, $d0                                     ; $68af: $16 $d0
    daa                                           ; $68b1: $27
    and b                                         ; $68b2: $a0
    xor a                                         ; $68b3: $af
    ldh [rP1], a                                  ; $68b4: $e0 $00
    ld c, a                                       ; $68b6: $4f
    ret z                                         ; $68b7: $c8

    rlca                                          ; $68b8: $07
    res 0, e                                      ; $68b9: $cb $83
    ld c, l                                       ; $68bb: $4d
    ld l, a                                       ; $68bc: $6f
    db $ec                                        ; $68bd: $ec
    nop                                           ; $68be: $00
    cpl                                           ; $68bf: $2f
    db $ec                                        ; $68c0: $ec
    ret nz                                        ; $68c1: $c0

    cp a                                          ; $68c2: $bf
    ld h, b                                       ; $68c3: $60
    ld e, a                                       ; $68c4: $5f
    ld b, b                                       ; $68c5: $40
    ld e, a                                       ; $68c6: $5f
    nop                                           ; $68c7: $00
    add b                                         ; $68c8: $80
    rra                                           ; $68c9: $1f
    ret nz                                        ; $68ca: $c0

    ld e, a                                       ; $68cb: $5f
    ldh [$6f], a                                  ; $68cc: $e0 $6f
    db $fc                                        ; $68ce: $fc
    ld e, $00                                     ; $68cf: $1e $00
    db $fc                                        ; $68d1: $fc
    db $10                                        ; $68d2: $10
    jr c, jr_0ac_6875                             ; $68d3: $38 $a0

    jr c, jr_0ac_6877                             ; $68d5: $38 $a0

    jr nc, @-$5e                                  ; $68d7: $30 $a0

    nop                                           ; $68d9: $00
    ld [hl], b                                    ; $68da: $70
    ld h, b                                       ; $68db: $60
    ld h, b                                       ; $68dc: $60
    ld e, a                                       ; $68dd: $5f
    ld h, b                                       ; $68de: $60
    ld e, a                                       ; $68df: $5f
    jr nz, @-$3e                                  ; $68e0: $20 $c0

    nop                                           ; $68e2: $00
    ld h, b                                       ; $68e3: $60
    ret nz                                        ; $68e4: $c0

    ld [bc], a                                    ; $68e5: $02
    ld bc, $0102                                  ; $68e6: $01 $02 $01
    inc bc                                        ; $68e9: $03
    ld bc, $0030                                  ; $68ea: $01 $30 $00
    ld bc, $0003                                  ; $68ed: $01 $03 $00
    ld [bc], a                                    ; $68f0: $02
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    ld b, e                                       ; $68f4: $43
    ld c, l                                       ; $68f5: $4d
    nop                                           ; $68f6: $00
    rra                                           ; $68f7: $1f
    add e                                         ; $68f8: $83
    rra                                           ; $68f9: $1f
    add e                                         ; $68fa: $83
    add a                                         ; $68fb: $87
    dec sp                                        ; $68fc: $3b
    add a                                         ; $68fd: $87
    dec sp                                        ; $68fe: $3b
    nop                                           ; $68ff: $00
    dec de                                        ; $6900: $1b
    rst $00                                       ; $6901: $c7
    sbc e                                         ; $6902: $9b
    ld b, a                                       ; $6903: $47
    ld c, a                                       ; $6904: $4f
    sub e                                         ; $6905: $93
    inc c                                         ; $6906: $0c
    inc d                                         ; $6907: $14
    nop                                           ; $6908: $00
    ld a, [de]                                    ; $6909: $1a
    ld b, $1b                                     ; $690a: $06 $1b
    rlca                                          ; $690c: $07
    jr jr_0ac_692a                                ; $690d: $18 $1b

    jr jr_0ac_6924                                ; $690f: $18 $13

    nop                                           ; $6911: $00
    jp nc, $c0c3                                  ; $6912: $d2 $c3 $c0

    db $ed                                        ; $6915: $ed
    inc l                                         ; $6916: $2c
    ret nz                                        ; $6917: $c0

    dec bc                                        ; $6918: $0b
    adc h                                         ; $6919: $8c
    nop                                           ; $691a: $00
    rlca                                          ; $691b: $07
    inc h                                         ; $691c: $24
    rlca                                          ; $691d: $07
    ld [hl], h                                    ; $691e: $74
    rlca                                          ; $691f: $07
    halt                                          ; $6920: $76
    inc bc                                        ; $6921: $03
    ld h, d                                       ; $6922: $62
    nop                                           ; $6923: $00

jr_0ac_6924:
    inc bc                                        ; $6924: $03
    jp nz, $8a03                                  ; $6925: $c2 $03 $8a

    ld [bc], a                                    ; $6928: $02
    ld a, [de]                                    ; $6929: $1a

jr_0ac_692a:
    cpl                                           ; $692a: $2f
    adc $00                                       ; $692b: $ce $00
    rrca                                          ; $692d: $0f
    xor $e0                                       ; $692e: $ee $e0
    inc hl                                        ; $6930: $23
    ldh [rNR44], a                                ; $6931: $e0 $23
    ret c                                         ; $6933: $d8

    rra                                           ; $6934: $1f
    nop                                           ; $6935: $00
    sbc b                                         ; $6936: $98
    rra                                           ; $6937: $1f
    ld b, a                                       ; $6938: $47
    ld e, b                                       ; $6939: $58
    add a                                         ; $693a: $87
    cp b                                          ; $693b: $b8
    xor $6e                                       ; $693c: $ee $6e
    nop                                           ; $693e: $00
    db $ec                                        ; $693f: $ec
    ld l, l                                       ; $6940: $6d
    call $c521                                    ; $6941: $cd $21 $c5
    ld hl, $799c                                  ; $6944: $21 $9c $79
    nop                                           ; $6947: $00
    sbc c                                         ; $6948: $99
    ld a, d                                       ; $6949: $7a
    dec de                                        ; $694a: $1b
    ld hl, sp+$1a                                 ; $694b: $f8 $1a
    ld sp, hl                                     ; $694d: $f9
    ret nz                                        ; $694e: $c0

    add b                                         ; $694f: $80
    rlca                                          ; $6950: $07
    ld b, b                                       ; $6951: $40
    add b                                         ; $6952: $80
    ld b, b                                       ; $6953: $40
    ret nz                                        ; $6954: $c0

    add b                                         ; $6955: $80
    ld b, a                                       ; $6956: $47
    ld [bc], a                                    ; $6957: $02
    ld c, b                                       ; $6958: $48
    ld [bc], a                                    ; $6959: $02
    sbc l                                         ; $695a: $9d
    add d                                         ; $695b: $82
    nop                                           ; $695c: $00
    cpl                                           ; $695d: $2f
    jp $e30f                                      ; $695e: $c3 $0f $e3


    rrca                                          ; $6961: $0f
    ld h, e                                       ; $6962: $63
    pop af                                        ; $6963: $f1
    add a                                         ; $6964: $87
    nop                                           ; $6965: $00
    ldh a, [$80]                                  ; $6966: $f0 $80
    ld hl, $381e                                  ; $6968: $21 $1e $38
    daa                                           ; $696b: $27
    rrca                                          ; $696c: $0f
    inc sp                                        ; $696d: $33
    ld bc, $c23a                                  ; $696e: $01 $3a $c2
    ldh a, [$c6]                                  ; $6971: $f0 $c6
    ret nc                                        ; $6973: $d0

    push bc                                       ; $6974: $c5
    dec d                                         ; $6975: $15
    ld l, b                                       ; $6976: $68
    ld [bc], a                                    ; $6977: $02
    nop                                           ; $6978: $00
    db $e3                                        ; $6979: $e3
    inc hl                                        ; $697a: $23
    ld sp, $0fc1                                  ; $697b: $31 $c1 $0f
    pop af                                        ; $697e: $f1
    ld e, c                                       ; $697f: $59
    pop bc                                        ; $6980: $c1
    nop                                           ; $6981: $00
    cpl                                           ; $6982: $2f
    and $2f                                       ; $6983: $e6 $2f
    ldh [$2f], a                                  ; $6985: $e0 $2f
    ldh [rP1], a                                  ; $6987: $e0 $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    pop hl                                        ; $698b: $e1
    ld a, a                                       ; $698c: $7f
    ldh a, [$cf]                                  ; $698d: $f0 $cf
    inc e                                         ; $698f: $1c
    inc de                                        ; $6990: $13
    ccf                                           ; $6991: $3f
    cp b                                          ; $6992: $b8
    nop                                           ; $6993: $00
    ccf                                           ; $6994: $3f
    or b                                          ; $6995: $b0
    rlca                                          ; $6996: $07
    add hl, de                                    ; $6997: $19
    rrca                                          ; $6998: $0f
    ld de, $0000                                  ; $6999: $11 $00 $00
    nop                                           ; $699c: $00
    ld a, [hl]                                    ; $699d: $7e
    db $d3                                        ; $699e: $d3
    add e                                         ; $699f: $83
    ld b, h                                       ; $69a0: $44
    rst $00                                       ; $69a1: $c7
    jp hl                                         ; $69a2: $e9


    and $05                                       ; $69a3: $e6 $05
    nop                                           ; $69a5: $00
    call nc, $f513                                ; $69a6: $d4 $13 $f5
    inc sp                                        ; $69a9: $33
    jp hl                                         ; $69aa: $e9


    daa                                           ; $69ab: $27
    inc bc                                        ; $69ac: $03
    dec c                                         ; $69ad: $0d
    ld [bc], a                                    ; $69ae: $02
    rst $20                                       ; $69af: $e7
    dec de                                        ; $69b0: $1b
    inc c                                         ; $69b1: $0c
    ldh a, [rNR32]                                ; $69b2: $f0 $1c
    db $e4                                        ; $69b4: $e4
    nop                                           ; $69b5: $00
    ld l, e                                       ; $69b6: $6b
    db $10                                        ; $69b7: $10
    inc bc                                        ; $69b8: $03
    sbc e                                         ; $69b9: $9b
    ld [bc], a                                    ; $69ba: $02
    ld b, b                                       ; $69bb: $40
    nop                                           ; $69bc: $00
    ld bc, $0280                                  ; $69bd: $01 $80 $02
    ld bc, $0106                                  ; $69c0: $01 $06 $01
    dec c                                         ; $69c3: $0d
    inc bc                                        ; $69c4: $03
    nop                                           ; $69c5: $00
    db $fc                                        ; $69c6: $fc
    di                                            ; $69c7: $f3
    ld hl, sp-$1a                                 ; $69c8: $f8 $e6
    inc a                                         ; $69ca: $3c
    ld hl, $0000                                  ; $69cb: $21 $00 $00
    nop                                           ; $69ce: $00
    ldh [rP1], a                                  ; $69cf: $e0 $00
    ldh [$f0], a                                  ; $69d1: $e0 $f0
    ld hl, sp+$1b                                 ; $69d3: $f8 $1b
    cp c                                          ; $69d5: $b9
    ld l, $00                                     ; $69d6: $2e $00
    ld e, a                                       ; $69d8: $5f
    ld b, b                                       ; $69d9: $40
    ld l, $c0                                     ; $69da: $2e $c0
    inc l                                         ; $69dc: $2c
    call nz, $1c34                                ; $69dd: $c4 $34 $1c
    nop                                           ; $69e0: $00
    ld b, b                                       ; $69e1: $40
    ld a, [hl]                                    ; $69e2: $7e
    add c                                         ; $69e3: $81
    ld a, a                                       ; $69e4: $7f
    rst $20                                       ; $69e5: $e7
    ld bc, $c3c1                                  ; $69e6: $01 $c1 $c3
    nop                                           ; $69e9: $00
    inc bc                                        ; $69ea: $03
    dec b                                         ; $69eb: $05
    inc b                                         ; $69ec: $04
    ld [bc], a                                    ; $69ed: $02
    add hl, bc                                    ; $69ee: $09
    dec b                                         ; $69ef: $05
    ld [hl], l                                    ; $69f0: $75
    ld c, d                                       ; $69f1: $4a
    nop                                           ; $69f2: $00
    ret nz                                        ; $69f3: $c0

    or e                                          ; $69f4: $b3
    pop hl                                        ; $69f5: $e1
    adc h                                         ; $69f6: $8c
    pop de                                        ; $69f7: $d1
    inc c                                         ; $69f8: $0c
    sbc l                                         ; $69f9: $9d
    inc e                                         ; $69fa: $1c
    nop                                           ; $69fb: $00
    dec e                                         ; $69fc: $1d
    ld e, b                                       ; $69fd: $58
    sbc b                                         ; $69fe: $98
    inc a                                         ; $69ff: $3c
    inc b                                         ; $6a00: $04
    inc h                                         ; $6a01: $24
    add b                                         ; $6a02: $80
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    add b                                         ; $6a06: $80
    ld b, b                                       ; $6a07: $40
    add b                                         ; $6a08: $80
    ld b, b                                       ; $6a09: $40
    ret nz                                        ; $6a0a: $c0

    ret nz                                        ; $6a0b: $c0

    and b                                         ; $6a0c: $a0
    inc bc                                        ; $6a0d: $03
    ret nz                                        ; $6a0e: $c0

jr_0ac_6a0f:
    and b                                         ; $6a0f: $a0
    ld h, b                                       ; $6a10: $60
    ret nz                                        ; $6a11: $c0

    ld h, b                                       ; $6a12: $60
    ret nz                                        ; $6a13: $c0

    ld h, b                                       ; $6a14: $60
    adc b                                         ; $6a15: $88
    ld [hl], h                                    ; $6a16: $74
    jr c, jr_0ac_6a19                             ; $6a17: $38 $00

jr_0ac_6a19:
    ld bc, $3b03                                  ; $6a19: $01 $03 $3b
    inc hl                                        ; $6a1c: $23
    inc hl                                        ; $6a1d: $23
    add hl, de                                    ; $6a1e: $19
    ld h, b                                       ; $6a1f: $60
    ld e, e                                       ; $6a20: $5b
    nop                                           ; $6a21: $00
    dec de                                        ; $6a22: $1b
    ld h, e                                       ; $6a23: $63
    dec de                                        ; $6a24: $1b
    ld h, e                                       ; $6a25: $63
    ld a, [hl-]                                   ; $6a26: $3a
    ld e, c                                       ; $6a27: $59
    cp d                                          ; $6a28: $ba
    ld e, b                                       ; $6a29: $58
    nop                                           ; $6a2a: $00
    cp d                                          ; $6a2b: $ba
    ld e, b                                       ; $6a2c: $58
    jr z, jr_0ac_6a0f                             ; $6a2d: $28 $e0

    inc c                                         ; $6a2f: $0c
    ld h, h                                       ; $6a30: $64
    ld c, h                                       ; $6a31: $4c
    inc h                                         ; $6a32: $24
    nop                                           ; $6a33: $00
    adc h                                         ; $6a34: $8c
    inc h                                         ; $6a35: $24
    xor b                                         ; $6a36: $a8
    ld b, b                                       ; $6a37: $40
    pop hl                                        ; $6a38: $e1
    add hl, hl                                    ; $6a39: $29
    ret nz                                        ; $6a3a: $c0

    add hl, de                                    ; $6a3b: $19
    nop                                           ; $6a3c: $00
    ld b, c                                       ; $6a3d: $41
    sbc $19                                       ; $6a3e: $de $19
    db $10                                        ; $6a40: $10
    ld a, [hl-]                                   ; $6a41: $3a
    ld hl, $1335                                  ; $6a42: $21 $35 $13
    nop                                           ; $6a45: $00
    ld h, b                                       ; $6a46: $60
    jr nz, jr_0ac_6a68                            ; $6a47: $20 $1f

    reti                                          ; $6a49: $d9


    ld e, $82                                     ; $6a4a: $1e $82
    inc a                                         ; $6a4c: $3c
    and l                                         ; $6a4d: $a5
    nop                                           ; $6a4e: $00
    ld bc, $3802                                  ; $6a4f: $01 $02 $38
    xor $fe                                       ; $6a52: $ee $fe
    add $78                                       ; $6a54: $c6 $78
    adc $00                                       ; $6a56: $ce $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    cp $82                                        ; $6a5a: $fe $82
    inc sp                                        ; $6a5c: $33
    cpl                                           ; $6a5d: $2f
    ret z                                         ; $6a5e: $c8

    dec de                                        ; $6a5f: $1b
    jr nz, jr_0ac_6a8e                            ; $6a60: $20 $2c

    ld c, $64                                     ; $6a62: $0e $64
    ld [$a0c0], sp                                ; $6a64: $08 $c0 $a0
    ret c                                         ; $6a67: $d8

jr_0ac_6a68:
    cp b                                          ; $6a68: $b8
    db $fc                                        ; $6a69: $fc
    ld bc, $6e20                                  ; $6a6a: $01 $20 $6e
    jr nc, jr_0ac_6a98                            ; $6a6d: $30 $29

    ld c, [hl]                                    ; $6a6f: $4e
    inc h                                         ; $6a70: $24
    rlca                                          ; $6a71: $07
    ret nc                                        ; $6a72: $d0

    ld d, b                                       ; $6a73: $50
    nop                                           ; $6a74: $00
    add b                                         ; $6a75: $80
    ret nz                                        ; $6a76: $c0

    nop                                           ; $6a77: $00
    ld bc, $0706                                  ; $6a78: $01 $06 $07
    inc c                                         ; $6a7b: $0c
    ld b, $00                                     ; $6a7c: $06 $00
    inc e                                         ; $6a7e: $1c
    ld c, b                                       ; $6a7f: $48
    ld [hl], b                                    ; $6a80: $70
    ret nc                                        ; $6a81: $d0

    ld [hl], b                                    ; $6a82: $70
    and b                                         ; $6a83: $a0
    ld h, b                                       ; $6a84: $60
    add b                                         ; $6a85: $80
    nop                                           ; $6a86: $00
    ld h, b                                       ; $6a87: $60
    and b                                         ; $6a88: $a0
    ld b, b                                       ; $6a89: $40
    cp b                                          ; $6a8a: $b8
    ld e, d                                       ; $6a8b: $5a
    inc a                                         ; $6a8c: $3c
    ld d, c                                       ; $6a8d: $51

jr_0ac_6a8e:
    dec a                                         ; $6a8e: $3d
    nop                                           ; $6a8f: $00
    push de                                       ; $6a90: $d5
    dec [hl]                                      ; $6a91: $35
    ld e, c                                       ; $6a92: $59
    dec [hl]                                      ; $6a93: $35
    ld e, c                                       ; $6a94: $59
    ld l, l                                       ; $6a95: $6d
    dec [hl]                                      ; $6a96: $35
    ld l, d                                       ; $6a97: $6a

jr_0ac_6a98:
    nop                                           ; $6a98: $00
    jr c, @+$7a                                   ; $6a99: $38 $78

    ld a, [hl-]                                   ; $6a9b: $3a
    ld b, b                                       ; $6a9c: $40
    ld e, b                                       ; $6a9d: $58
    ld d, c                                       ; $6a9e: $51
    ld b, e                                       ; $6a9f: $43
    ld [bc], a                                    ; $6aa0: $02
    nop                                           ; $6aa1: $00
    ld d, a                                       ; $6aa2: $57
    inc h                                         ; $6aa3: $24
    ld bc, $436a                                  ; $6aa4: $01 $6a $43
    ld l, l                                       ; $6aa7: $6d
    ld l, $6d                                     ; $6aa8: $2e $6d
    nop                                           ; $6aaa: $00
    add hl, hl                                    ; $6aab: $29
    ld l, b                                       ; $6aac: $68
    ld hl, $7204                                  ; $6aad: $21 $04 $72
    adc c                                         ; $6ab0: $89
    ld h, l                                       ; $6ab1: $65
    ld a, [hl+]                                   ; $6ab2: $2a
    nop                                           ; $6ab3: $00
    ret nz                                        ; $6ab4: $c0

    ld d, c                                       ; $6ab5: $51
    adc c                                         ; $6ab6: $89
    ld d, e                                       ; $6ab7: $53
    adc e                                         ; $6ab8: $8b
    ld d, e                                       ; $6ab9: $53
    adc e                                         ; $6aba: $8b
    ld b, e                                       ; $6abb: $43
    nop                                           ; $6abc: $00
    ret nc                                        ; $6abd: $d0

    ld l, c                                       ; $6abe: $69
    db $ec                                        ; $6abf: $ec
    ld de, $cac0                                  ; $6ac0: $11 $c0 $ca
    pop hl                                        ; $6ac3: $e1
    stop                                          ; $6ac4: $10 $00
    inc [hl]                                      ; $6ac6: $34
    adc b                                         ; $6ac7: $88
    ld e, c                                       ; $6ac8: $59
    sub c                                         ; $6ac9: $91
    ld b, h                                       ; $6aca: $44
    ld de, $dd14                                  ; $6acb: $11 $14 $dd
    nop                                           ; $6ace: $00
    dec c                                         ; $6acf: $0d
    adc h                                         ; $6ad0: $8c
    jr nz, @+$13                                  ; $6ad1: $20 $11

    pop bc                                        ; $6ad3: $c1
    db $10                                        ; $6ad4: $10
    ld b, b                                       ; $6ad5: $40
    ld d, b                                       ; $6ad6: $50
    nop                                           ; $6ad7: $00
    ret z                                         ; $6ad8: $c8

    or b                                          ; $6ad9: $b0
    adc e                                         ; $6ada: $8b
    sub e                                         ; $6adb: $93
    rra                                           ; $6adc: $1f
    ld e, $57                                     ; $6add: $1e $57
    ld b, c                                       ; $6adf: $41
    nop                                           ; $6ae0: $00
    ld e, l                                       ; $6ae1: $5d
    jp $e08b                                      ; $6ae2: $c3 $8b $e0


    add b                                         ; $6ae5: $80
    ld h, b                                       ; $6ae6: $60
    ld hl, sp+$73                                 ; $6ae7: $f8 $73
    nop                                           ; $6ae9: $00
    rrca                                          ; $6aea: $0f
    ld de, $4f0f                                  ; $6aeb: $11 $0f $4f
    and d                                         ; $6aee: $a2
    rlca                                          ; $6aef: $07
    ld [c], a                                     ; $6af0: $e2
    inc h                                         ; $6af1: $24
    nop                                           ; $6af2: $00
    add a                                         ; $6af3: $87
    and h                                         ; $6af4: $a4
    rlca                                          ; $6af5: $07
    and b                                         ; $6af6: $a0
    ret nz                                        ; $6af7: $c0

    jr nc, @+$62                                  ; $6af8: $30 $60

    ld [hl], b                                    ; $6afa: $70
    nop                                           ; $6afb: $00
    ld h, b                                       ; $6afc: $60
    ret nc                                        ; $6afd: $d0

    ldh [$d8], a                                  ; $6afe: $e0 $d8
    ldh [$f8], a                                  ; $6b00: $e0 $f8
    pop bc                                        ; $6b02: $c1
    ld hl, sp+$00                                 ; $6b03: $f8 $00
    pop hl                                        ; $6b05: $e1
    pop hl                                        ; $6b06: $e1
    ld hl, sp+$7a                                 ; $6b07: $f8 $7a
    ld a, [hl-]                                   ; $6b09: $3a
    ld [hl], b                                    ; $6b0a: $70
    ld de, $0070                                  ; $6b0b: $11 $70 $00
    rla                                           ; $6b0e: $17
    ld [hl], b                                    ; $6b0f: $70
    ld [bc], a                                    ; $6b10: $02
    ld l, b                                       ; $6b11: $68
    ld [$48d0], sp                                ; $6b12: $08 $d0 $48

jr_0ac_6b15:
    ret                                           ; $6b15: $c9


    nop                                           ; $6b16: $00
    ld d, c                                       ; $6b17: $51
    ret                                           ; $6b18: $c9


    ld d, c                                       ; $6b19: $51
    ld [hl], e                                    ; $6b1a: $73
    jr nz, @+$74                                  ; $6b1b: $20 $72

    ld [$0040], sp                                ; $6b1d: $08 $40 $00
    ld e, b                                       ; $6b20: $58
    add hl, de                                    ; $6b21: $19
    ld bc, $6113                                  ; $6b22: $01 $13 $61
    call nz, $8457                                ; $6b25: $c4 $57 $84
    nop                                           ; $6b28: $00
    rlca                                          ; $6b29: $07
    ld [hl-], a                                   ; $6b2a: $32
    ld h, c                                       ; $6b2b: $61
    inc c                                         ; $6b2c: $0c
    ld b, b                                       ; $6b2d: $40
    ld c, l                                       ; $6b2e: $4d
    sub e                                         ; $6b2f: $93
    dec c                                         ; $6b30: $0d
    nop                                           ; $6b31: $00
    call c, $0f07                                 ; $6b32: $dc $07 $0f
    add c                                         ; $6b35: $81
    inc sp                                        ; $6b36: $33
    sbc b                                         ; $6b37: $98
    cp h                                          ; $6b38: $bc
    ld d, c                                       ; $6b39: $51
    nop                                           ; $6b3a: $00
    sbc a                                         ; $6b3b: $9f
    xor b                                         ; $6b3c: $a8
    ld c, a                                       ; $6b3d: $4f
    ld h, b                                       ; $6b3e: $60
    ld de, $5899                                  ; $6b3f: $11 $99 $58
    ret nc                                        ; $6b42: $d0

    nop                                           ; $6b43: $00
    rst $00                                       ; $6b44: $c7
    jr nz, jr_0ac_6b15                            ; $6b45: $20 $ce

    ld de, $97c1                                  ; $6b47: $11 $c1 $97
    db $10                                        ; $6b4a: $10
    ld b, e                                       ; $6b4b: $43
    nop                                           ; $6b4c: $00
    dec c                                         ; $6b4d: $0d
    ld de, $8b21                                  ; $6b4e: $11 $21 $8b
    jr c, jr_0ac_6b5e                             ; $6b51: $38 $0b

    jr c, jr_0ac_6b86                             ; $6b53: $38 $31

    nop                                           ; $6b55: $00
    jr nz, jr_0ac_6ba2                            ; $6b56: $20 $4a

    ld b, h                                       ; $6b58: $44
    ld d, $b2                                     ; $6b59: $16 $b2
    dec c                                         ; $6b5b: $0d
    sbc h                                         ; $6b5c: $9c
    dec e                                         ; $6b5d: $1d

jr_0ac_6b5e:
    nop                                           ; $6b5e: $00
    scf                                           ; $6b5f: $37
    db $10                                        ; $6b60: $10
    add hl, bc                                    ; $6b61: $09
    and l                                         ; $6b62: $a5
    inc bc                                        ; $6b63: $03
    ld c, l                                       ; $6b64: $4d
    inc bc                                        ; $6b65: $03
    ld c, [hl]                                    ; $6b66: $4e
    nop                                           ; $6b67: $00
    inc bc                                        ; $6b68: $03
    ld c, h                                       ; $6b69: $4c
    inc bc                                        ; $6b6a: $03
    ld c, a                                       ; $6b6b: $4f
    inc de                                        ; $6b6c: $13
    ld c, a                                       ; $6b6d: $4f
    inc de                                        ; $6b6e: $13
    rra                                           ; $6b6f: $1f

jr_0ac_6b70:
    nop                                           ; $6b70: $00
    add a                                         ; $6b71: $87
    rra                                           ; $6b72: $1f
    add a                                         ; $6b73: $87
    pop hl                                        ; $6b74: $e1
    db $fc                                        ; $6b75: $fc
    ld sp, hl                                     ; $6b76: $f9
    db $e4                                        ; $6b77: $e4
    ld sp, hl                                     ; $6b78: $f9
    db $10                                        ; $6b79: $10
    db $f4                                        ; $6b7a: $f4
    db $fc                                        ; $6b7b: $fc
    ld a, [c]                                     ; $6b7c: $f2
    ld [bc], a                                    ; $6b7d: $02
    nop                                           ; $6b7e: $00
    ld a, [$fbfc]                                 ; $6b7f: $fa $fc $fb
    ld b, $00                                     ; $6b82: $06 $00
    inc bc                                        ; $6b84: $03
    ret nc                                        ; $6b85: $d0

jr_0ac_6b86:
    ld c, b                                       ; $6b86: $48
    ret nz                                        ; $6b87: $c0

    ld c, b                                       ; $6b88: $48
    ret nz                                        ; $6b89: $c0

    ld c, h                                       ; $6b8a: $4c
    ret nz                                        ; $6b8b: $c0

    nop                                           ; $6b8c: $00
    call $8182                                    ; $6b8d: $cd $82 $81
    inc e                                         ; $6b90: $1c

jr_0ac_6b91:
    inc bc                                        ; $6b91: $03
    jr nz, @+$40                                  ; $6b92: $20 $3e

    add hl, hl                                    ; $6b94: $29
    nop                                           ; $6b95: $00
    ld d, $11                                     ; $6b96: $16 $11
    jr z, jr_0ac_6bc2                             ; $6b98: $28 $28

    jr nc, jr_0ac_6b70                            ; $6b9a: $30 $d4

    ret z                                         ; $6b9c: $c8

    call z, $0d00                                 ; $6b9d: $cc $00 $0d
    add h                                         ; $6ba0: $84
    dec b                                         ; $6ba1: $05

jr_0ac_6ba2:
    ld b, [hl]                                    ; $6ba2: $46
    nop                                           ; $6ba3: $00
    ld d, b                                       ; $6ba4: $50
    sub [hl]                                      ; $6ba5: $96
    and $00                                       ; $6ba6: $e6 $00
    ld [hl], h                                    ; $6ba8: $74
    call nc, $ea27                                ; $6ba9: $d4 $27 $ea
    sbc e                                         ; $6bac: $9b
    jr c, jr_0ac_6bcc                             ; $6bad: $38 $1d

    inc c                                         ; $6baf: $0c
    nop                                           ; $6bb0: $00
    ld d, $c2                                     ; $6bb1: $16 $c2
    ld b, $e0                                     ; $6bb3: $06 $e0
    ld bc, $90f0                                  ; $6bb5: $01 $f0 $90
    ldh a, [rP1]                                  ; $6bb8: $f0 $00
    add [hl]                                      ; $6bba: $86
    ld a, [hl+]                                   ; $6bbb: $2a
    ld c, h                                       ; $6bbc: $4c
    dec l                                         ; $6bbd: $2d
    ld l, d                                       ; $6bbe: $6a
    nop                                           ; $6bbf: $00
    ld b, e                                       ; $6bc0: $43
    ld d, d                                       ; $6bc1: $52

jr_0ac_6bc2:
    nop                                           ; $6bc2: $00
    sub c                                         ; $6bc3: $91
    jr c, @-$75                                   ; $6bc4: $38 $89

    ld a, b                                       ; $6bc6: $78
    ld [hl], c                                    ; $6bc7: $71
    ld [$0c01], sp                                ; $6bc8: $08 $01 $0c
    nop                                           ; $6bcb: $00

jr_0ac_6bcc:
    dec h                                         ; $6bcc: $25
    adc $f1                                       ; $6bcd: $ce $f1
    ld a, h                                       ; $6bcf: $7c
    ld e, e                                       ; $6bd0: $5b
    jr nc, jr_0ac_6be2                            ; $6bd1: $30 $0f

    ld a, [hl+]                                   ; $6bd3: $2a
    nop                                           ; $6bd4: $00
    add hl, de                                    ; $6bd5: $19
    ld h, h                                       ; $6bd6: $64
    ld [hl], a                                    ; $6bd7: $77
    cp h                                          ; $6bd8: $bc
    ccf                                           ; $6bd9: $3f
    add d                                         ; $6bda: $82
    and h                                         ; $6bdb: $a4
    add [hl]                                      ; $6bdc: $86
    nop                                           ; $6bdd: $00
    or b                                          ; $6bde: $b0
    jr c, jr_0ac_6b91                             ; $6bdf: $38 $b0

    cp b                                          ; $6be1: $b8

jr_0ac_6be2:
    jr nc, jr_0ac_6c23                            ; $6be2: $30 $3f

    rrca                                          ; $6be4: $0f
    ccf                                           ; $6be5: $3f
    ld h, b                                       ; $6be6: $60
    ld c, a                                       ; $6be7: $4f
    ld [bc], a                                    ; $6be8: $02
    ld [$09d0], sp                                ; $6be9: $08 $d0 $09
    ld [bc], a                                    ; $6bec: $02
    ld bc, $0303                                  ; $6bed: $01 $03 $03
    ld bc, $0230                                  ; $6bf0: $01 $30 $02
    ld bc, $01bb                                  ; $6bf3: $01 $bb $01
    inc b                                         ; $6bf6: $04
    ld [$0000], sp                                ; $6bf7: $08 $00 $00
    inc l                                         ; $6bfa: $2c

jr_0ac_6bfb:
    inc sp                                        ; $6bfb: $33
    nop                                           ; $6bfc: $00
    add h                                         ; $6bfd: $84
    dec de                                        ; $6bfe: $1b
    and c                                         ; $6bff: $a1

Call_0ac_6c00:
    rra                                           ; $6c00: $1f
    ccf                                           ; $6c01: $3f
    sbc a                                         ; $6c02: $9f
    ccf                                           ; $6c03: $3f
    cp a                                          ; $6c04: $bf
    nop                                           ; $6c05: $00
    ret nz                                        ; $6c06: $c0

    ld e, [hl]                                    ; $6c07: $5e
    ret nz                                        ; $6c08: $c0

    inc e                                         ; $6c09: $1c
    ld b, l                                       ; $6c0a: $45
    sbc l                                         ; $6c0b: $9d
    db $e3                                        ; $6c0c: $e3
    or c                                          ; $6c0d: $b1
    nop                                           ; $6c0e: $00
    ld e, b                                       ; $6c0f: $58
    res 3, b                                      ; $6c10: $cb $98
    add hl, bc                                    ; $6c12: $09
    add e                                         ; $6c13: $83
    add hl, de                                    ; $6c14: $19
    inc bc                                        ; $6c15: $03
    add hl, sp                                    ; $6c16: $39
    nop                                           ; $6c17: $00
    inc hl                                        ; $6c18: $23
    jr c, jr_0ac_6c3c                             ; $6c19: $38 $21

    jr c, @+$3a                                   ; $6c1b: $38 $38

    and c                                         ; $6c1d: $a1
    ld d, $66                                     ; $6c1e: $16 $66
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    ld [hl], b                                    ; $6c22: $70

jr_0ac_6c23:
    ld [hl], b                                    ; $6c23: $70
    ld sp, $3378                                  ; $6c24: $31 $78 $33
    ld a, b                                       ; $6c27: $78
    ld b, e                                       ; $6c28: $43
    nop                                           ; $6c29: $00
    ld a, b                                       ; $6c2a: $78

jr_0ac_6c2b:
    ld b, e                                       ; $6c2b: $43
    ld a, [hl-]                                   ; $6c2c: $3a
    add e                                         ; $6c2d: $83
    add hl, sp                                    ; $6c2e: $39
    add c                                         ; $6c2f: $81
    xor c                                         ; $6c30: $a9
    inc c                                         ; $6c31: $0c
    nop                                           ; $6c32: $00
    add hl, bc                                    ; $6c33: $09
    inc c                                         ; $6c34: $0c
    dec l                                         ; $6c35: $2d
    ld h, c                                       ; $6c36: $61
    dec c                                         ; $6c37: $0d
    ld h, c                                       ; $6c38: $61
    adc l                                         ; $6c39: $8d
    pop hl                                        ; $6c3a: $e1
    nop                                           ; $6c3b: $00

jr_0ac_6c3c:
    ld c, l                                       ; $6c3c: $4d
    pop hl                                        ; $6c3d: $e1
    ld c, $aa                                     ; $6c3e: $0e $aa
    ld b, $02                                     ; $6c40: $06 $02
    sub b                                         ; $6c42: $90
    sub [hl]                                      ; $6c43: $96
    nop                                           ; $6c44: $00
    sub c                                         ; $6c45: $91
    add l                                         ; $6c46: $85
    inc c                                         ; $6c47: $0c
    add l                                         ; $6c48: $85
    inc l                                         ; $6c49: $2c
    add l                                         ; $6c4a: $85
    ld hl, $008d                                  ; $6c4b: $21 $8d $00
    inc hl                                        ; $6c4e: $23
    adc e                                         ; $6c4f: $8b
    adc c                                         ; $6c50: $89
    ld a, [hl-]                                   ; $6c51: $3a
    sbc e                                         ; $6c52: $9b
    ld [$e060], sp                                ; $6c53: $08 $60 $e0
    sbc h                                         ; $6c56: $9c
    ld a, $0a                                     ; $6c57: $3e $0a
    add b                                         ; $6c59: $80
    nop                                           ; $6c5a: $00
    ld c, b                                       ; $6c5b: $48
    ld a, [bc]                                    ; $6c5c: $0a
    ld c, h                                       ; $6c5d: $4c
    ld [bc], a                                    ; $6c5e: $02
    sbc a                                         ; $6c5f: $9f
    ld [hl], d                                    ; $6c60: $72
    jr nz, jr_0ac_6c2b                            ; $6c61: $20 $c8

    nop                                           ; $6c63: $00
    ldh [rBCPD], a                                ; $6c64: $e0 $69
    ld h, b                                       ; $6c66: $60
    ld hl, $7061                                  ; $6c67: $21 $61 $70
    ld [hl], b                                    ; $6c6a: $70
    ld [hl], b                                    ; $6c6b: $70
    nop                                           ; $6c6c: $00
    ld a, b                                       ; $6c6d: $78
    rra                                           ; $6c6e: $1f
    ld a, $07                                     ; $6c6f: $3e $07
    add hl, sp                                    ; $6c71: $39
    rlca                                          ; $6c72: $07
    cp b                                          ; $6c73: $b8
    and c                                         ; $6c74: $a1
    ld [bc], a                                    ; $6c75: $02
    sbc b                                         ; $6c76: $98
    pop bc                                        ; $6c77: $c1
    jr jr_0ac_6bfb                                ; $6c78: $18 $81

    ld a, $a7                                     ; $6c7a: $3e $a7
    ld [hl], a                                    ; $6c7c: $77
    ld [bc], a                                    ; $6c7d: $02
    ld [hl], b                                    ; $6c7e: $70
    nop                                           ; $6c7f: $00
    ldh a, [$ef]                                  ; $6c80: $f0 $ef
    rra                                           ; $6c82: $1f
    ld hl, sp-$36                                 ; $6c83: $f8 $ca
    ld a, b                                       ; $6c85: $78
    jp z, Jump_000_0078                           ; $6c86: $ca $78 $00

    ld a, b                                       ; $6c89: $78
    ret z                                         ; $6c8a: $c8

    ld a, b                                       ; $6c8b: $78
    jp c, RST_00                                  ; $6c8c: $da $00 $00

    db $dd                                        ; $6c8f: $dd
    ld a, $00                                     ; $6c90: $3e $00
    ld h, e                                       ; $6c92: $63
    and d                                         ; $6c93: $a2
    ld h, e                                       ; $6c94: $63
    and d                                         ; $6c95: $a2
    push bc                                       ; $6c96: $c5
    push de                                       ; $6c97: $d5
    push de                                       ; $6c98: $d5
    pop bc                                        ; $6c99: $c1
    nop                                           ; $6c9a: $00
    pop bc                                        ; $6c9b: $c1
    call nz, Call_000_05d1                        ; $6c9c: $c4 $d1 $05
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    ld sp, hl                                     ; $6ca1: $f9
    rlca                                          ; $6ca2: $07
    nop                                           ; $6ca3: $00
    inc a                                         ; $6ca4: $3c
    dec sp                                        ; $6ca5: $3b
    inc a                                         ; $6ca6: $3c
    dec sp                                        ; $6ca7: $3b
    add [hl]                                      ; $6ca8: $86
    ld de, $32a5                                  ; $6ca9: $11 $a5 $32
    nop                                           ; $6cac: $00
    and b                                         ; $6cad: $a0
    ld [hl], $a2                                  ; $6cae: $36 $a2
    inc l                                         ; $6cb0: $2c
    ld b, $08                                     ; $6cb1: $06 $08
    ld l, [hl]                                    ; $6cb3: $6e
    ldh a, [$60]                                  ; $6cb4: $f0 $60
    inc a                                         ; $6cb6: $3c
    ld [bc], a                                    ; $6cb7: $02
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    ld l, e                                       ; $6cba: $6b
    db $10                                        ; $6cbb: $10
    inc bc                                        ; $6cbc: $03
    or a                                          ; $6cbd: $b7
    ld [bc], a                                    ; $6cbe: $02
    ld b, b                                       ; $6cbf: $40
    nop                                           ; $6cc0: $00
    ld bc, $f818                                  ; $6cc1: $01 $18 $f8
    inc bc                                        ; $6cc4: $03
    ld a, [c]                                     ; $6cc5: $f2
    ld b, $0c                                     ; $6cc6: $06 $0c
    ld [$0500], sp                                ; $6cc8: $08 $00 $05
    jp nc, $f8c8                                  ; $6ccb: $d2 $c8 $f8

    nop                                           ; $6cce: $00
    rlca                                          ; $6ccf: $07
    ldh [rNR24], a                                ; $6cd0: $e0 $19
    nop                                           ; $6cd2: $00
    db $dd                                        ; $6cd3: $dd
    inc b                                         ; $6cd4: $04
    ld b, $9f                                     ; $6cd5: $06 $9f
    add hl, bc                                    ; $6cd7: $09
    ld c, $15                                     ; $6cd8: $0e $15
    inc bc                                        ; $6cda: $03
    nop                                           ; $6cdb: $00

jr_0ac_6cdc:
    ld bc, $3130                                  ; $6cdc: $01 $30 $31
    inc b                                         ; $6cdf: $04
    inc bc                                        ; $6ce0: $03
    ld hl, sp+$78                                 ; $6ce1: $f8 $78
    ld c, $00                                     ; $6ce3: $0e $00
    db $fc                                        ; $6ce5: $fc
    ld [bc], a                                    ; $6ce6: $02
    ld b, h                                       ; $6ce7: $44
    cp h                                          ; $6ce8: $bc
    dec de                                        ; $6ce9: $1b
    ret nz                                        ; $6cea: $c0

    adc a                                         ; $6ceb: $8f
    ld a, b                                       ; $6cec: $78
    nop                                           ; $6ced: $00
    xor b                                         ; $6cee: $a8
    ld hl, sp-$09                                 ; $6cef: $f8 $f7
    inc a                                         ; $6cf1: $3c
    inc a                                         ; $6cf2: $3c
    ld h, d                                       ; $6cf3: $62
    ld a, h                                       ; $6cf4: $7c
    ld bc, $fe00                                  ; $6cf5: $01 $00 $fe
    ld h, a                                       ; $6cf8: $67
    ld b, c                                       ; $6cf9: $41
    nop                                           ; $6cfa: $00
    inc bc                                        ; $6cfb: $03
    add h                                         ; $6cfc: $84
    ld c, h                                       ; $6cfd: $4c
    ld h, b                                       ; $6cfe: $60
    db $10                                        ; $6cff: $10
    inc b                                         ; $6d00: $04
    call nc, Call_0ac_401d                        ; $6d01: $d4 $1d $40
    jr jr_0ac_6d46                                ; $6d04: $18 $40

    add b                                         ; $6d06: $80
    ret nz                                        ; $6d07: $c0

    jr nz, @+$05                                  ; $6d08: $20 $03

    jr nc, jr_0ac_6cdc                            ; $6d0a: $30 $d0

    jr c, @+$46                                   ; $6d0c: $38 $44

    add h                                         ; $6d0e: $84
    cp d                                          ; $6d0f: $ba
    ld d, b                                       ; $6d10: $50

jr_0ac_6d11:
    jr nz, jr_0ac_6d1a                            ; $6d11: $20 $07

    or b                                          ; $6d13: $b0
    nop                                           ; $6d14: $00
    or b                                          ; $6d15: $b0
    adc d                                         ; $6d16: $8a
    jr c, jr_0ac_6d1b                             ; $6d17: $38 $02

    ld a, b                                       ; $6d19: $78

jr_0ac_6d1a:
    ld c, d                                       ; $6d1a: $4a

jr_0ac_6d1b:
    ld e, b                                       ; $6d1b: $58
    ld l, d                                       ; $6d1c: $6a
    nop                                           ; $6d1d: $00
    ld e, e                                       ; $6d1e: $5b
    ld l, b                                       ; $6d1f: $68
    ld hl, $0559                                  ; $6d20: $21 $59 $05
    ld sp, $9734                                  ; $6d23: $31 $34 $97
    nop                                           ; $6d26: $00
    ld l, h                                       ; $6d27: $6c
    nop                                           ; $6d28: $00
    ld a, l                                       ; $6d29: $7d
    or l                                          ; $6d2a: $b5
    jr nz, @-$1e                                  ; $6d2b: $20 $e0

    call $00c6                                    ; $6d2d: $cd $c6 $00
    inc b                                         ; $6d30: $04
    jr jr_0ac_6d6f                                ; $6d31: $18 $3c

    dec b                                         ; $6d33: $05
    ld c, b                                       ; $6d34: $48
    ld b, c                                       ; $6d35: $41
    sub h                                         ; $6d36: $94
    and b                                         ; $6d37: $a0
    nop                                           ; $6d38: $00
    ld [$6037], sp                                ; $6d39: $08 $37 $60
    ldh [rNR34], a                                ; $6d3c: $e0 $1e
    and $06                                       ; $6d3e: $e6 $06
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    ld b, e                                       ; $6d42: $43
    jp nc, $e167                                  ; $6d43: $d2 $67 $e1

jr_0ac_6d46:
    ld c, a                                       ; $6d46: $4f
    ret nz                                        ; $6d47: $c0

    ld hl, $001f                                  ; $6d48: $21 $1f $00
    sbc c                                         ; $6d4b: $99
    and h                                         ; $6d4c: $a4
    nop                                           ; $6d4d: $00
    ld hl, $0606                                  ; $6d4e: $21 $06 $06
    ld c, $7c                                     ; $6d51: $0e $7c
    nop                                           ; $6d53: $00
    jr jr_0ac_6d84                                ; $6d54: $18 $2e

jr_0ac_6d56:
    inc c                                         ; $6d56: $0c
    sub d                                         ; $6d57: $92
    ld h, $86                                     ; $6d58: $26 $86
    ld hl, $0081                                  ; $6d5a: $21 $81 $00
    adc a                                         ; $6d5d: $8f
    nop                                           ; $6d5e: $00
    scf                                           ; $6d5f: $37
    or b                                          ; $6d60: $b0
    ld e, b                                       ; $6d61: $58
    dec de                                        ; $6d62: $1b
    ld l, h                                       ; $6d63: $6c
    inc l                                         ; $6d64: $2c
    nop                                           ; $6d65: $00
    ret nz                                        ; $6d66: $c0

    rrca                                          ; $6d67: $0f
    jr nc, jr_0ac_6d11                            ; $6d68: $30 $a7

    ld b, b                                       ; $6d6a: $40
    jr c, @+$01                                   ; $6d6b: $38 $ff

    add b                                         ; $6d6d: $80
    nop                                           ; $6d6e: $00

jr_0ac_6d6f:
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    add b                                         ; $6d71: $80
    ld b, b                                       ; $6d72: $40
    ld e, a                                       ; $6d73: $5f
    cp a                                          ; $6d74: $bf
    sub l                                         ; $6d75: $95
    ld l, l                                       ; $6d76: $6d
    nop                                           ; $6d77: $00
    ld b, b                                       ; $6d78: $40
    jr nc, @-$70                                  ; $6d79: $30 $8e

    adc b                                         ; $6d7b: $88
    ld [bc], a                                    ; $6d7c: $02
    ccf                                           ; $6d7d: $3f
    db $fc                                        ; $6d7e: $fc
    inc bc                                        ; $6d7f: $03
    add b                                         ; $6d80: $80
    add b                                         ; $6d81: $80
    ld d, b                                       ; $6d82: $50
    ld a, a                                       ; $6d83: $7f

jr_0ac_6d84:
    ld b, b                                       ; $6d84: $40
    ccf                                           ; $6d85: $3f
    ld [de], a                                    ; $6d86: $12
    jp c, $d1d9                                   ; $6d87: $da $d9 $d1

    nop                                           ; $6d8a: $00
    add $e0                                       ; $6d8b: $c6 $e0
    ld [hl], b                                    ; $6d8d: $70
    ld l, c                                       ; $6d8e: $69
    ldh a, [$e6]                                  ; $6d8f: $f0 $e6
    dec l                                         ; $6d91: $2d
    call $2900                                    ; $6d92: $cd $00 $29
    ret z                                         ; $6d95: $c8

    inc bc                                        ; $6d96: $03
    ld [c], a                                     ; $6d97: $e2
    add a                                         ; $6d98: $87
    and b                                         ; $6d99: $a0
    rlca                                          ; $6d9a: $07
    ld a, [bc]                                    ; $6d9b: $0a
    nop                                           ; $6d9c: $00
    db $10                                        ; $6d9d: $10
    daa                                           ; $6d9e: $27
    add hl, de                                    ; $6d9f: $19
    db $10                                        ; $6da0: $10
    rrca                                          ; $6da1: $0f
    rst $08                                       ; $6da2: $cf
    add [hl]                                      ; $6da3: $86
    ld b, $00                                     ; $6da4: $06 $00
    sub d                                         ; $6da6: $92
    inc bc                                        ; $6da7: $03
    or b                                          ; $6da8: $b0
    add c                                         ; $6da9: $81
    pop hl                                        ; $6daa: $e1
    ccf                                           ; $6dab: $3f
    ld a, a                                       ; $6dac: $7f
    pop bc                                        ; $6dad: $c1
    nop                                           ; $6dae: $00
    db $fc                                        ; $6daf: $fc

jr_0ac_6db0:
    jp nz, Jump_0ac_7a9c                          ; $6db0: $c2 $9c $7a

    ld a, b                                       ; $6db3: $78
    add h                                         ; $6db4: $84
    ld e, l                                       ; $6db5: $5d
    ld a, c                                       ; $6db6: $79
    nop                                           ; $6db7: $00
    sbc e                                         ; $6db8: $9b
    ld [hl], c                                    ; $6db9: $71
    sub [hl]                                      ; $6dba: $96
    ld h, c                                       ; $6dbb: $61
    inc h                                         ; $6dbc: $24
    add b                                         ; $6dbd: $80
    ld [hl], $86                                  ; $6dbe: $36 $86
    nop                                           ; $6dc0: $00
    inc bc                                        ; $6dc1: $03
    ld [hl], $03                                  ; $6dc2: $36 $03
    ld a, a                                       ; $6dc4: $7f
    add hl, bc                                    ; $6dc5: $09
    inc sp                                        ; $6dc6: $33
    jr z, jr_0ac_6d56                             ; $6dc7: $28 $8d

    nop                                           ; $6dc9: $00
    or e                                          ; $6dca: $b3
    add h                                         ; $6dcb: $84
    add b                                         ; $6dcc: $80
    sbc e                                         ; $6dcd: $9b
    rst $18                                       ; $6dce: $df
    ldh [$71], a                                  ; $6dcf: $e0 $71
    ld a, [hl]                                    ; $6dd1: $7e
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    inc e                                         ; $6dd4: $1c
    add e                                         ; $6dd5: $83
    ld c, a                                       ; $6dd6: $4f
    ldh [rP1], a                                  ; $6dd7: $e0 $00
    add hl, sp                                    ; $6dd9: $39
    ret                                           ; $6dda: $c9


    nop                                           ; $6ddb: $00
    ld [hl], e                                    ; $6ddc: $73
    ld a, h                                       ; $6ddd: $7c
    push af                                       ; $6dde: $f5
    rla                                           ; $6ddf: $17
    cp $01                                        ; $6de0: $fe $01
    cp [hl]                                       ; $6de2: $be
    or c                                          ; $6de3: $b1
    nop                                           ; $6de4: $00
    ld [bc], a                                    ; $6de5: $02
    ld bc, $fe0b                                  ; $6de6: $01 $0b $fe
    add [hl]                                      ; $6de9: $86
    ld a, b                                       ; $6dea: $78
    ld c, $0e                                     ; $6deb: $0e $0e
    nop                                           ; $6ded: $00
    jr nz, jr_0ac_6db0                            ; $6dee: $20 $c0

    call z, Call_0ac_5fb4                         ; $6df0: $cc $b4 $5f
    ccf                                           ; $6df3: $3f
    ccf                                           ; $6df4: $3f
    ld b, a                                       ; $6df5: $47
    nop                                           ; $6df6: $00
    scf                                           ; $6df7: $37
    ld c, e                                       ; $6df8: $4b
    add hl, de                                    ; $6df9: $19
    rlca                                          ; $6dfa: $07
    rlca                                          ; $6dfb: $07
    db $e3                                        ; $6dfc: $e3
    rlca                                          ; $6dfd: $07
    pop af                                        ; $6dfe: $f1
    nop                                           ; $6dff: $00
    inc bc                                        ; $6e00: $03
    db $f4                                        ; $6e01: $f4
    rlca                                          ; $6e02: $07
    db $f4                                        ; $6e03: $f4
    inc bc                                        ; $6e04: $03
    ld h, b                                       ; $6e05: $60
    scf                                           ; $6e06: $37
    ld h, d                                       ; $6e07: $62
    nop                                           ; $6e08: $00
    scf                                           ; $6e09: $37
    ld h, b                                       ; $6e0a: $60
    scf                                           ; $6e0b: $37
    ld [bc], a                                    ; $6e0c: $02
    inc sp                                        ; $6e0d: $33
    dec b                                         ; $6e0e: $05
    ld b, $34                                     ; $6e0f: $06 $34
    nop                                           ; $6e11: $00
    ld b, $16                                     ; $6e12: $06 $16
    rlca                                          ; $6e14: $07
    ld d, $ac                                     ; $6e15: $16 $ac
    inc l                                         ; $6e17: $2c
    ld c, $a9                                     ; $6e18: $0e $a9
    nop                                           ; $6e1a: $00
    adc h                                         ; $6e1b: $8c
    ld a, [de]                                    ; $6e1c: $1a
    adc h                                         ; $6e1d: $8c
    sub b                                         ; $6e1e: $90
    add h                                         ; $6e1f: $84
    sbc c                                         ; $6e20: $99
    add e                                         ; $6e21: $83
    ld d, e                                       ; $6e22: $53
    nop                                           ; $6e23: $00
    rrc e                                         ; $6e24: $cb $0b
    rlca                                          ; $6e26: $07
    jp $894e                                      ; $6e27: $c3 $4e $89


    rlca                                          ; $6e2a: $07
    dec bc                                        ; $6e2b: $0b
    nop                                           ; $6e2c: $00
    rlca                                          ; $6e2d: $07
    dec bc                                        ; $6e2e: $0b
    ld d, h                                       ; $6e2f: $54
    ld d, e                                       ; $6e30: $53
    ld [hl], h                                    ; $6e31: $74
    inc de                                        ; $6e32: $13
    rst $00                                       ; $6e33: $c7
    add h                                         ; $6e34: $84
    nop                                           ; $6e35: $00
    sub e                                         ; $6e36: $93
    sbc b                                         ; $6e37: $98
    inc sp                                        ; $6e38: $33
    inc hl                                        ; $6e39: $23
    jp z, $e2c4                                   ; $6e3a: $ca $c4 $e2

    ldh [rP1], a                                  ; $6e3d: $e0 $00
    ld [$2ee0], sp                                ; $6e3f: $08 $e0 $2e
    sub $12                                       ; $6e42: $d6 $12
    call nc, $c01c                                ; $6e44: $d4 $1c $c0
    nop                                           ; $6e47: $00
    adc b                                         ; $6e48: $88
    inc sp                                        ; $6e49: $33
    add hl, de                                    ; $6e4a: $19
    ld a, h                                       ; $6e4b: $7c
    ld h, b                                       ; $6e4c: $60
    ld c, b                                       ; $6e4d: $48
    ld b, b                                       ; $6e4e: $40
    add hl, de                                    ; $6e4f: $19
    nop                                           ; $6e50: $00
    add hl, de                                    ; $6e51: $19
    or b                                          ; $6e52: $b0
    sbc c                                         ; $6e53: $99
    and b                                         ; $6e54: $a0
    ld l, a                                       ; $6e55: $6f
    and h                                         ; $6e56: $a4
    ld hl, sp+$37                                 ; $6e57: $f8 $37
    nop                                           ; $6e59: $00
    pop de                                        ; $6e5a: $d1
    sub d                                         ; $6e5b: $92
    add b                                         ; $6e5c: $80
    sbc b                                         ; $6e5d: $98
    ld e, $d1                                     ; $6e5e: $1e $d1
    rlca                                          ; $6e60: $07
    ld b, h                                       ; $6e61: $44
    nop                                           ; $6e62: $00
    ld de, $8803                                  ; $6e63: $11 $03 $88
    pop bc                                        ; $6e66: $c1
    inc c                                         ; $6e67: $0c
    ld h, h                                       ; $6e68: $64
    ld c, $22                                     ; $6e69: $0e $22
    nop                                           ; $6e6b: $00
    ld [$c506], sp                                ; $6e6c: $08 $06 $c5
    add d                                         ; $6e6f: $82
    dec [hl]                                      ; $6e70: $35
    inc bc                                        ; $6e71: $03
    dec b                                         ; $6e72: $05
    adc e                                         ; $6e73: $8b
    nop                                           ; $6e74: $00
    ld l, $c6                                     ; $6e75: $2e $c6
    xor h                                         ; $6e77: $ac
    inc b                                         ; $6e78: $04
    rrca                                          ; $6e79: $0f
    inc hl                                        ; $6e7a: $23
    rrca                                          ; $6e7b: $0f
    inc hl                                        ; $6e7c: $23
    nop                                           ; $6e7d: $00
    daa                                           ; $6e7e: $27
    rrca                                          ; $6e7f: $0f
    daa                                           ; $6e80: $27
    rrca                                          ; $6e81: $0f
    rlca                                          ; $6e82: $07
    rla                                           ; $6e83: $17
    and $f1                                       ; $6e84: $e6 $f1
    nop                                           ; $6e86: $00
    or $f1                                        ; $6e87: $f6 $f1
    pop af                                        ; $6e89: $f1
    or $f9                                        ; $6e8a: $f6 $f9
    ld a, [$f9fa]                                 ; $6e8c: $fa $fa $f9
    nop                                           ; $6e8f: $00
    ld hl, sp-$07                                 ; $6e90: $f8 $f9
    inc b                                         ; $6e92: $04
    ld hl, sp+$26                                 ; $6e93: $f8 $26
    add d                                         ; $6e95: $82
    sub b                                         ; $6e96: $90
    xor [hl]                                      ; $6e97: $ae
    nop                                           ; $6e98: $00
    ret nz                                        ; $6e99: $c0

    ld e, l                                       ; $6e9a: $5d
    inc c                                         ; $6e9b: $0c
    ld b, b                                       ; $6e9c: $40
    sbc [hl]                                      ; $6e9d: $9e
    add b                                         ; $6e9e: $80
    ld a, a                                       ; $6e9f: $7f
    xor e                                         ; $6ea0: $ab
    nop                                           ; $6ea1: $00
    rra                                           ; $6ea2: $1f
    ld l, h                                       ; $6ea3: $6c
    add hl, de                                    ; $6ea4: $19
    sbc b                                         ; $6ea5: $98
    ld h, [hl]                                    ; $6ea6: $66
    ld a, b                                       ; $6ea7: $78
    ret z                                         ; $6ea8: $c8

    add $00                                       ; $6ea9: $c6 $00
    ldh [$ea], a                                  ; $6eab: $e0 $ea
    dec d                                         ; $6ead: $15
    db $f4                                        ; $6eae: $f4
    ld a, b                                       ; $6eaf: $78
    rlca                                          ; $6eb0: $07
    add b                                         ; $6eb1: $80
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00
    add a                                         ; $6eb4: $87
    ld a, a                                       ; $6eb5: $7f
    rrca                                          ; $6eb6: $0f
    jr nc, @-$79                                  ; $6eb7: $30 $85

    dec a                                         ; $6eb9: $3d
    add l                                         ; $6eba: $85
    dec a                                         ; $6ebb: $3d
    nop                                           ; $6ebc: $00
    add hl, de                                    ; $6ebd: $19
    ld h, b                                       ; $6ebe: $60
    inc sp                                        ; $6ebf: $33
    jp nz, Jump_000_22e5                          ; $6ec0: $c2 $e5 $22

    ld [bc], a                                    ; $6ec3: $02
    inc e                                         ; $6ec4: $1c
    nop                                           ; $6ec5: $00
    ldh a, [$6c]                                  ; $6ec6: $f0 $6c
    add b                                         ; $6ec8: $80
    ld a, a                                       ; $6ec9: $7f
    or d                                          ; $6eca: $b2
    ld [hl], $26                                  ; $6ecb: $36 $26
    xor $00                                       ; $6ecd: $ee $00
    ld l, h                                       ; $6ecf: $6c
    inc hl                                        ; $6ed0: $23
    ld l, h                                       ; $6ed1: $6c
    inc hl                                        ; $6ed2: $23
    ld [$d447], sp                                ; $6ed3: $08 $47 $d4
    ld b, a                                       ; $6ed6: $47
    nop                                           ; $6ed7: $00
    add [hl]                                      ; $6ed8: $86
    rst $20                                       ; $6ed9: $e7
    and $67                                       ; $6eda: $e6 $67
    add sp, $41                                   ; $6edc: $e8 $41
    add sp, -$3d                                  ; $6ede: $e8 $c3
    nop                                           ; $6ee0: $00
    rlca                                          ; $6ee1: $07
    db $e4                                        ; $6ee2: $e4
    rlca                                          ; $6ee3: $07
    ld [c], a                                     ; $6ee4: $e2
    dec d                                         ; $6ee5: $15
    ldh a, [rNR14]                                ; $6ee6: $f0 $14
    ldh a, [rP1]                                  ; $6ee8: $f0 $00
    dec b                                         ; $6eea: $05
    pop hl                                        ; $6eeb: $e1
    dec b                                         ; $6eec: $05
    pop hl                                        ; $6eed: $e1
    jr nz, jr_0ac_6ef8                            ; $6eee: $20 $08

    ld h, b                                       ; $6ef0: $60
    jr z, jr_0ac_6ef3                             ; $6ef1: $28 $00

jr_0ac_6ef3:
    ld h, b                                       ; $6ef3: $60
    jr nz, jr_0ac_6f16                            ; $6ef4: $20 $20

    add b                                         ; $6ef6: $80
    add b                                         ; $6ef7: $80

jr_0ac_6ef8:
    rra                                           ; $6ef8: $1f
    add b                                         ; $6ef9: $80
    sbc a                                         ; $6efa: $9f
    ld b, b                                       ; $6efb: $40
    ccf                                           ; $6efc: $3f
    ld [bc], a                                    ; $6efd: $02
    nop                                           ; $6efe: $00
    ld [bc], a                                    ; $6eff: $02
    cp $02                                        ; $6f00: $fe $02
    db $fc                                        ; $6f02: $fc
    inc bc                                        ; $6f03: $03
    db $fd                                        ; $6f04: $fd
    ld [$0100], sp                                ; $6f05: $08 $00 $01
    ld bc, $0200                                  ; $6f08: $01 $00 $02
    ld [$0000], sp                                ; $6f0b: $08 $00 $00
    dec sp                                        ; $6f0e: $3b
    nop                                           ; $6f0f: $00
    jr @+$04                                      ; $6f10: $18 $02

    ld sp, $3215                                  ; $6f12: $31 $15 $32
    ld h, h                                       ; $6f15: $64

jr_0ac_6f16:
    ld b, d                                       ; $6f16: $42
    ld c, b                                       ; $6f17: $48
    nop                                           ; $6f18: $00
    ld c, [hl]                                    ; $6f19: $4e
    ld b, $86                                     ; $6f1a: $06 $86
    add h                                         ; $6f1c: $84
    ld b, h                                       ; $6f1d: $44
    ret nz                                        ; $6f1e: $c0

    add h                                         ; $6f1f: $84
    add b                                         ; $6f20: $80
    nop                                           ; $6f21: $00
    ldh [rIE], a                                  ; $6f22: $e0 $ff
    jr nc, @+$75                                  ; $6f24: $30 $73

    ccf                                           ; $6f26: $3f
    ld l, a                                       ; $6f27: $6f
    inc d                                         ; $6f28: $14
    add c                                         ; $6f29: $81
    nop                                           ; $6f2a: $00
    ld a, [c]                                     ; $6f2b: $f2
    sub h                                         ; $6f2c: $94
    ld [hl], d                                    ; $6f2d: $72
    xor b                                         ; $6f2e: $a8
    ld c, [hl]                                    ; $6f2f: $4e
    ld a, [bc]                                    ; $6f30: $0a
    call nz, $001f                                ; $6f31: $c4 $1f $00
    inc e                                         ; $6f34: $1c
    ld hl, sp+$07                                 ; $6f35: $f8 $07
    ld bc, $3100                                  ; $6f37: $01 $00 $31
    db $db                                        ; $6f3a: $db
    sbc h                                         ; $6f3b: $9c
    nop                                           ; $6f3c: $00
    ld [hl], d                                    ; $6f3d: $72
    add h                                         ; $6f3e: $84
    jp z, Jump_0ac_4e82                           ; $6f3f: $ca $82 $4e

    ld c, h                                       ; $6f42: $4c
    add b                                         ; $6f43: $80
    db $e4                                        ; $6f44: $e4
    nop                                           ; $6f45: $00
    db $e3                                        ; $6f46: $e3
    call nz, $56e3                                ; $6f47: $c4 $e3 $56
    and l                                         ; $6f4a: $a5
    ld h, [hl]                                    ; $6f4b: $66
    sub l                                         ; $6f4c: $95
    jp nz, $9100                                  ; $6f4d: $c2 $00 $91

    jp nz, $5401                                  ; $6f50: $c2 $01 $54

    rst $10                                       ; $6f53: $d7
    or h                                          ; $6f54: $b4
    rlca                                          ; $6f55: $07
    dec c                                         ; $6f56: $0d
    nop                                           ; $6f57: $00
    jp hl                                         ; $6f58: $e9


    dec c                                         ; $6f59: $0d
    jp hl                                         ; $6f5a: $e9


    ldh [$8d], a                                  ; $6f5b: $e0 $8d
    ldh [$89], a                                  ; $6f5d: $e0 $89
    add hl, bc                                    ; $6f5f: $09
    nop                                           ; $6f60: $00
    ldh [rNR11], a                                ; $6f61: $e0 $11
    ldh a, [$f0]                                  ; $6f63: $f0 $f0
    pop hl                                        ; $6f65: $e1
    pop af                                        ; $6f66: $f1
    ld [c], a                                     ; $6f67: $e2
    add b                                         ; $6f68: $80
    db $10                                        ; $6f69: $10
    cp a                                          ; $6f6a: $bf
    add b                                         ; $6f6b: $80
    ccf                                           ; $6f6c: $3f
    inc b                                         ; $6f6d: $04
    db $10                                        ; $6f6e: $10
    ccf                                           ; $6f6f: $3f
    nop                                           ; $6f70: $00
    ld a, a                                       ; $6f71: $7f
    ld a, a                                       ; $6f72: $7f
    jr nz, jr_0ac_6f75                            ; $6f73: $20 $00

jr_0ac_6f75:
    ld a, a                                       ; $6f75: $7f
    ld c, a                                       ; $6f76: $4f
    ld [hl], d                                    ; $6f77: $72
    ldh [$c2], a                                  ; $6f78: $e0 $c2
    ld [bc], a                                    ; $6f7a: $02
    ldh [rSCY], a                                 ; $6f7b: $e0 $42
    nop                                           ; $6f7d: $00
    ld h, b                                       ; $6f7e: $60
    add d                                         ; $6f7f: $82
    ldh a, [$80]                                  ; $6f80: $f0 $80
    ldh a, [rNR42]                                ; $6f82: $f0 $21
    ld e, $38                                     ; $6f84: $1e $38
    nop                                           ; $6f86: $00
    daa                                           ; $6f87: $27
    rrca                                          ; $6f88: $0f
    inc sp                                        ; $6f89: $33
    push de                                       ; $6f8a: $d5
    ld d, c                                       ; $6f8b: $51
    db $10                                        ; $6f8c: $10
    and e                                         ; $6f8d: $a3
    ld a, [hl-]                                   ; $6f8e: $3a
    nop                                           ; $6f8f: $00
    db $10                                        ; $6f90: $10
    ld h, d                                       ; $6f91: $62
    ld e, b                                       ; $6f92: $58
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    db $e3                                        ; $6f95: $e3
    inc hl                                        ; $6f96: $23
    ld sp, $c100                                  ; $6f97: $31 $00 $c1
    rrca                                          ; $6f9a: $0f
    pop af                                        ; $6f9b: $f1
    db $10                                        ; $6f9c: $10
    add b                                         ; $6f9d: $80
    jr nc, jr_0ac_6fd2                            ; $6f9e: $30 $32

    ld [hl], b                                    ; $6fa0: $70
    nop                                           ; $6fa1: $00
    ld h, $f7                                     ; $6fa2: $26 $f7
    rst $30                                       ; $6fa4: $f7
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    pop hl                                        ; $6fa7: $e1
    ld a, a                                       ; $6fa8: $7f
    ldh a, [rP1]                                  ; $6fa9: $f0 $00
    rst $08                                       ; $6fab: $cf
    inc e                                         ; $6fac: $1c
    inc de                                        ; $6fad: $13
    inc hl                                        ; $6fae: $23
    ld [hl], h                                    ; $6faf: $74
    ld h, e                                       ; $6fb0: $63
    db $f4                                        ; $6fb1: $f4
    scf                                           ; $6fb2: $37
    nop                                           ; $6fb3: $00
    call nc, $a067                                ; $6fb4: $d4 $67 $a0

jr_0ac_6fb7:
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    ld a, [hl]                                    ; $6fb9: $7e
    db $d3                                        ; $6fba: $d3
    add e                                         ; $6fbb: $83
    nop                                           ; $6fbc: $00
    ld b, h                                       ; $6fbd: $44
    rst $00                                       ; $6fbe: $c7
    jp hl                                         ; $6fbf: $e9


    ld a, [c]                                     ; $6fc0: $f2
    add $f0                                       ; $6fc1: $c6 $f0
    add $f0                                       ; $6fc3: $c6 $f0
    nop                                           ; $6fc5: $00
    ret nz                                        ; $6fc6: $c0

    ldh [$c2], a                                  ; $6fc7: $e0 $c2
    inc bc                                        ; $6fc9: $03
    dec c                                         ; $6fca: $0d
    rst $20                                       ; $6fcb: $e7
    dec de                                        ; $6fcc: $1b
    inc c                                         ; $6fcd: $0c
    ld [bc], a                                    ; $6fce: $02
    ldh a, [rNR32]                                ; $6fcf: $f0 $1c
    db $e4                                        ; $6fd1: $e4

jr_0ac_6fd2:
    ld a, a                                       ; $6fd2: $7f
    nop                                           ; $6fd3: $00
    rst $38                                       ; $6fd4: $ff
    or e                                          ; $6fd5: $b3
    ld d, d                                       ; $6fd6: $52
    db $10                                        ; $6fd7: $10
    inc bc                                        ; $6fd8: $03

jr_0ac_6fd9:
    ld h, c                                       ; $6fd9: $61
    ld [bc], a                                    ; $6fda: $02
    ld b, d                                       ; $6fdb: $42
    nop                                           ; $6fdc: $00
    ld bc, $01c0                                  ; $6fdd: $01 $c0 $01
    nop                                           ; $6fe0: $00
    ld bc, $200f                                  ; $6fe1: $01 $0f $20

jr_0ac_6fe4:
    jr nz, jr_0ac_6fe4                            ; $6fe4: $20 $fe

    nop                                           ; $6fe6: $00
    ld bc, $03fc                                  ; $6fe7: $01 $fc $03
    ld hl, sp-$02                                 ; $6fea: $f8 $fe
    db $fc                                        ; $6fec: $fc
    sbc b                                         ; $6fed: $98
    ld l, b                                       ; $6fee: $68
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    rst $20                                       ; $6ff1: $e7
    jr jr_0ac_6fb7                                ; $6ff2: $18 $c3

    inc a                                         ; $6ff4: $3c
    add c                                         ; $6ff5: $81
    ld h, [hl]                                    ; $6ff6: $66
    nop                                           ; $6ff7: $00
    ret nz                                        ; $6ff8: $c0

    ld b, $00                                     ; $6ff9: $06 $00
    dec sp                                        ; $6ffb: $3b
    jr nc, @+$01                                  ; $6ffc: $30 $ff

    nop                                           ; $6ffe: $00
    ld a, a                                       ; $6fff: $7f
    nop                                           ; $7000: $00
    add b                                         ; $7001: $80
    ccf                                           ; $7002: $3f
    inc bc                                        ; $7003: $03
    ret nz                                        ; $7004: $c0

    rra                                           ; $7005: $1f
    rlca                                          ; $7006: $07
    ld h, a                                       ; $7007: $67
    add e                                         ; $7008: $83
    dec sp                                        ; $7009: $3b
    ld d, b                                       ; $700a: $50
    ret z                                         ; $700b: $c8

    ld e, e                                       ; $700c: $5b
    ld c, b                                       ; $700d: $48

jr_0ac_700e:
    nop                                           ; $700e: $00
    ld bc, $0602                                  ; $700f: $01 $02 $06
    dec b                                         ; $7012: $05
    ld c, $09                                     ; $7013: $0e $09
    inc c                                         ; $7015: $0c
    dec bc                                        ; $7016: $0b
    nop                                           ; $7017: $00
    rlca                                          ; $7018: $07
    inc a                                         ; $7019: $3c
    ccf                                           ; $701a: $3f
    nop                                           ; $701b: $00
    ld c, a                                       ; $701c: $4f
    ld sp, $9efc                                  ; $701d: $31 $fc $9e
    nop                                           ; $7020: $00
    ld hl, sp+$3c                                 ; $7021: $f8 $3c
    ld a, [$e813]                                 ; $7023: $fa $13 $e8
    ld h, $88                                     ; $7026: $26 $88
    ld c, [hl]                                    ; $7028: $4e
    nop                                           ; $7029: $00
    db $fc                                        ; $702a: $fc
    jr nc, jr_0ac_702f                            ; $702b: $30 $02

    add d                                         ; $702d: $82
    inc bc                                        ; $702e: $03

jr_0ac_702f:
    dec b                                         ; $702f: $05
    ld a, h                                       ; $7030: $7c
    ei                                            ; $7031: $fb
    nop                                           ; $7032: $00
    add b                                         ; $7033: $80
    pop af                                        ; $7034: $f1
    ld e, $1e                                     ; $7035: $1e $1e
    ld [hl], c                                    ; $7037: $71
    rra                                           ; $7038: $1f
    rla                                           ; $7039: $17
    rlca                                          ; $703a: $07
    nop                                           ; $703b: $00
    ld [hl], a                                    ; $703c: $77
    ld a, a                                       ; $703d: $7f
    ccf                                           ; $703e: $3f
    nop                                           ; $703f: $00
    sbc a                                         ; $7040: $9f
    add b                                         ; $7041: $80
    ld e, a                                       ; $7042: $5f
    ret nz                                        ; $7043: $c0

    nop                                           ; $7044: $00
    ld c, a                                       ; $7045: $4f
    ret nz                                        ; $7046: $c0

    cpl                                           ; $7047: $2f
    jr nz, jr_0ac_6fd9                            ; $7048: $20 $8f

    and b                                         ; $704a: $a0
    adc a                                         ; $704b: $8f
    add b                                         ; $704c: $80
    nop                                           ; $704d: $00
    pop bc                                        ; $704e: $c1
    dec c                                         ; $704f: $0d
    ldh a, [rTAC]                                 ; $7050: $f0 $07
    ld sp, hl                                     ; $7052: $f9
    inc bc                                        ; $7053: $03
    db $fd                                        ; $7054: $fd
    ld bc, $0000                                  ; $7055: $01 $00 $00
    cp $fe                                        ; $7058: $fe $fe
    nop                                           ; $705a: $00
    sbc [hl]                                      ; $705b: $9e
    nop                                           ; $705c: $00
    ld l, $60                                     ; $705d: $2e $60
    add b                                         ; $705f: $80
    ld a, h                                       ; $7060: $7c
    ld [$ff3f], sp                                ; $7061: $08 $3f $ff
    adc a                                         ; $7064: $8f
    ld l, a                                       ; $7065: $6f
    ret nz                                        ; $7066: $c0

    jr nc, @-$56                                  ; $7067: $30 $a8

    ld b, $d8                                     ; $7069: $06 $d8
    ret c                                         ; $706b: $d8

    ld a, h                                       ; $706c: $7c
    ld hl, sp+$2f                                 ; $706d: $f8 $2f
    ret nc                                        ; $706f: $d0

    ld c, b                                       ; $7070: $48
    sbc b                                         ; $7071: $98
    ld [$001d], sp                                ; $7072: $08 $1d $00
    ld a, [de]                                    ; $7075: $1a
    dec e                                         ; $7076: $1d
    ld [de], a                                    ; $7077: $12
    add hl, de                                    ; $7078: $19
    ld d, $0b                                     ; $7079: $16 $0b
    inc b                                         ; $707b: $04
    dec hl                                        ; $707c: $2b
    nop                                           ; $707d: $00
    inc h                                         ; $707e: $24
    ld l, b                                       ; $707f: $68
    ld h, a                                       ; $7080: $67
    ld l, b                                       ; $7081: $68
    ld h, [hl]                                    ; $7082: $66
    rlca                                          ; $7083: $07
    add hl, hl                                    ; $7084: $29
    sbc b                                         ; $7085: $98
    nop                                           ; $7086: $00
    ld b, h                                       ; $7087: $44
    jr jr_0ac_700e                                ; $7088: $18 $84

    add hl, bc                                    ; $708a: $09
    sub c                                         ; $708b: $91
    sub c                                         ; $708c: $91
    sub [hl]                                      ; $708d: $96
    and h                                         ; $708e: $a4
    nop                                           ; $708f: $00
    cp e                                          ; $7090: $bb
    ld [de], a                                    ; $7091: $12
    dec a                                         ; $7092: $3d
    dec e                                         ; $7093: $1d
    ld [hl], $2d                                  ; $7094: $36 $2d
    scf                                           ; $7096: $37
    ld e, b                                       ; $7097: $58
    nop                                           ; $7098: $00
    rrca                                          ; $7099: $0f
    add b                                         ; $709a: $80
    ld a, c                                       ; $709b: $79
    jr c, @-$07                                   ; $709c: $38 $f7

    rrca                                          ; $709e: $0f
    sbc a                                         ; $709f: $9f
    ld e, $00                                     ; $70a0: $1e $00
    push af                                       ; $70a2: $f5
    ld h, b                                       ; $70a3: $60
    ld h, b                                       ; $70a4: $60
    inc bc                                        ; $70a5: $03
    sbc b                                         ; $70a6: $98
    db $fc                                        ; $70a7: $fc
    ld bc, $004f                                  ; $70a8: $01 $4f $00
    ret nz                                        ; $70ab: $c0

    rrca                                          ; $70ac: $0f
    ret nz                                        ; $70ad: $c0

    add b                                         ; $70ae: $80
    rrca                                          ; $70af: $0f
    ld [hl], b                                    ; $70b0: $70
    ld d, a                                       ; $70b1: $57
    sub a                                         ; $70b2: $97
    nop                                           ; $70b3: $00
    ldh [rSCX], a                                 ; $70b4: $e0 $43
    ld a, b                                       ; $70b6: $78
    sub c                                         ; $70b7: $91
    add h                                         ; $70b8: $84
    add hl, bc                                    ; $70b9: $09
    or b                                          ; $70ba: $b0
    sub l                                         ; $70bb: $95
    nop                                           ; $70bc: $00
    ld sp, $19c8                                  ; $70bd: $31 $c8 $19
    ld [c], a                                     ; $70c0: $e2
    rrca                                          ; $70c1: $0f
    rst $20                                       ; $70c2: $e7
    rrca                                          ; $70c3: $0f
    di                                            ; $70c4: $f3
    nop                                           ; $70c5: $00
    rlca                                          ; $70c6: $07
    di                                            ; $70c7: $f3
    rlca                                          ; $70c8: $07
    or $06                                        ; $70c9: $f6 $06
    ldh a, [rSB]                                  ; $70cb: $f0 $01
    ld bc, $d100                                  ; $70cd: $01 $00 $d1
    ld c, $60                                     ; $70d0: $0e $60
    rrca                                          ; $70d2: $0f
    xor a                                         ; $70d3: $af
    rra                                           ; $70d4: $1f
    jp $015f                                      ; $70d5: $c3 $5f $01


    ret nz                                        ; $70d8: $c0

    cp a                                          ; $70d9: $bf
    add b                                         ; $70da: $80
    rlca                                          ; $70db: $07
    nop                                           ; $70dc: $00
    ld b, c                                       ; $70dd: $41
    ldh [$f8], a                                  ; $70de: $e0 $f8
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    rrca                                          ; $70e2: $0f
    rlca                                          ; $70e3: $07
    ld [hl], a                                    ; $70e4: $77
    add e                                         ; $70e5: $83
    dec de                                        ; $70e6: $1b
    ldh [$0c], a                                  ; $70e7: $e0 $0c
    ldh a, [rP1]                                  ; $70e9: $f0 $00
    ld b, $f0                                     ; $70eb: $06 $f0
    ld b, $f1                                     ; $70ed: $06 $f1
    dec b                                         ; $70ef: $05
    rrca                                          ; $70f0: $0f
    ld hl, $0036                                  ; $70f1: $21 $36 $00
    rlca                                          ; $70f4: $07
    ld [de], a                                    ; $70f5: $12
    inc bc                                        ; $70f6: $03
    jp $c1d0                                      ; $70f7: $c3 $d0 $c1


    ret c                                         ; $70fa: $d8

    ld bc, $0800                                  ; $70fb: $01 $00 $08
    ld [bc], a                                    ; $70fe: $02
    ld a, [bc]                                    ; $70ff: $0a
    db $e3                                        ; $7100: $e3
    add sp, $37                                   ; $7101: $e8 $37
    dec de                                        ; $7103: $1b
    ld [hl-], a                                   ; $7104: $32
    nop                                           ; $7105: $00
    dec c                                         ; $7106: $0d
    cp [hl]                                       ; $7107: $be
    add b                                         ; $7108: $80
    inc bc                                        ; $7109: $03
    ld a, $07                                     ; $710a: $3e $07
    inc l                                         ; $710c: $2c
    ld a, h                                       ; $710d: $7c
    nop                                           ; $710e: $00
    ldh a, [$be]                                  ; $710f: $f0 $be
    ldh [$38], a                                  ; $7111: $e0 $38
    ld bc, $0a7a                                  ; $7113: $01 $7a $0a
    ld [hl], b                                    ; $7116: $70
    nop                                           ; $7117: $00
    ld h, c                                       ; $7118: $61
    ldh [$75], a                                  ; $7119: $e0 $75
    and $88                                       ; $711b: $e6 $88
    add $68                                       ; $711d: $c6 $68
    sub c                                         ; $711f: $91
    nop                                           ; $7120: $00
    sbc a                                         ; $7121: $9f
    ld b, c                                       ; $7122: $41
    inc hl                                        ; $7123: $23
    ld hl, sp+$64                                 ; $7124: $f8 $64
    jr c, jr_0ac_71a6                             ; $7126: $38 $7e

    inc e                                         ; $7128: $1c
    nop                                           ; $7129: $00
    xor h                                         ; $712a: $ac
    adc c                                         ; $712b: $89
    call c, $aecc                                 ; $712c: $dc $cc $ae
    xor d                                         ; $712f: $aa
    ld l, [hl]                                    ; $7130: $6e
    sub h                                         ; $7131: $94
    nop                                           ; $7132: $00
    ld [hl], d                                    ; $7133: $72
    dec [hl]                                      ; $7134: $35
    rst $08                                       ; $7135: $cf
    ld a, [hl]                                    ; $7136: $7e
    add $eb                                       ; $7137: $c6 $eb
    rrca                                          ; $7139: $0f

jr_0ac_713a:
    ld l, b                                       ; $713a: $68
    nop                                           ; $713b: $00
    rrca                                          ; $713c: $0f
    adc b                                         ; $713d: $88
    inc d                                         ; $713e: $14
    rrca                                          ; $713f: $0f
    ld e, a                                       ; $7140: $5f
    ld a, [bc]                                    ; $7141: $0a
    dec a                                         ; $7142: $3d
    dec e                                         ; $7143: $1d
    nop                                           ; $7144: $00
    ccf                                           ; $7145: $3f
    sub a                                         ; $7146: $97
    xor b                                         ; $7147: $a8
    sbc d                                         ; $7148: $9a
    and l                                         ; $7149: $a5
    cp $fe                                        ; $714a: $fe $fe
    dec b                                         ; $714c: $05
    nop                                           ; $714d: $00
    db $fc                                        ; $714e: $fc
    dec de                                        ; $714f: $1b
    jr jr_0ac_7169                                ; $7150: $18 $17

    ldh a, [$af]                                  ; $7152: $f0 $af
    ldh [$5f], a                                  ; $7154: $e0 $5f
    nop                                           ; $7156: $00
    ret nz                                        ; $7157: $c0

    ccf                                           ; $7158: $3f
    cp h                                          ; $7159: $bc
    ld a, a                                       ; $715a: $7f
    ld a, b                                       ; $715b: $78
    pop af                                        ; $715c: $f1
    dec b                                         ; $715d: $05
    pop hl                                        ; $715e: $e1
    nop                                           ; $715f: $00
    dec c                                         ; $7160: $0d
    db $e3                                        ; $7161: $e3
    dec bc                                        ; $7162: $0b
    db $e3                                        ; $7163: $e3
    dec bc                                        ; $7164: $0b
    jp $c71b                                      ; $7165: $c3 $1b $c7


    ld b, b                                       ; $7168: $40

jr_0ac_7169:
    rla                                           ; $7169: $17
    ld [bc], a                                    ; $716a: $02
    ld [$ece1], sp                                ; $716b: $08 $e1 $ec
    pop af                                        ; $716e: $f1
    db $f4                                        ; $716f: $f4
    pop af                                        ; $7170: $f1
    db $f4                                        ; $7171: $f4
    nop                                           ; $7172: $00
    ld b, $f0                                     ; $7173: $06 $f0
    ld [bc], a                                    ; $7175: $02
    ld hl, sp+$02                                 ; $7176: $f8 $02
    ld hl, sp+$03                                 ; $7178: $f8 $03
    ld hl, sp+$00                                 ; $717a: $f8 $00
    ld bc, $f1fc                                  ; $717c: $01 $fc $f1
    rlca                                          ; $717f: $07
    inc b                                         ; $7180: $04
    db $e4                                        ; $7181: $e4
    add hl, bc                                    ; $7182: $09
    ldh [rP1], a                                  ; $7183: $e0 $00
    ret c                                         ; $7185: $d8

    dec de                                        ; $7186: $1b
    ret nc                                        ; $7187: $d0

    inc de                                        ; $7188: $13
    add [hl]                                      ; $7189: $86
    rlca                                          ; $718a: $07
    inc b                                         ; $718b: $04
    rlca                                          ; $718c: $07
    nop                                           ; $718d: $00
    jr jr_0ac_71a7                                ; $718e: $18 $17

    ld a, $3d                                     ; $7190: $3e $3d
    jr c, @+$41                                   ; $7192: $38 $3f

    and $07                                       ; $7194: $e6 $07
    nop                                           ; $7196: $00
    ld [$e8f8], sp                                ; $7197: $08 $f8 $e8
    jr jr_0ac_71a8                                ; $719a: $18 $0c

    db $f4                                        ; $719c: $f4
    inc e                                         ; $719d: $1c
    db $ec                                        ; $719e: $ec
    nop                                           ; $719f: $00
    ld a, b                                       ; $71a0: $78
    sbc b                                         ; $71a1: $98
    inc h                                         ; $71a2: $24
    jr jr_0ac_713a                                ; $71a3: $18 $95

    add hl, bc                                    ; $71a5: $09

jr_0ac_71a6:
    nop                                           ; $71a6: $00

jr_0ac_71a7:
    inc b                                         ; $71a7: $04

jr_0ac_71a8:
    nop                                           ; $71a8: $00
    ld hl, sp-$7f                                 ; $71a9: $f8 $81
    xor h                                         ; $71ab: $ac
    ld [hl], b                                    ; $71ac: $70
    cp d                                          ; $71ad: $ba
    ld a, h                                       ; $71ae: $7c
    ld a, l                                       ; $71af: $7d
    ld e, $00                                     ; $71b0: $1e $00
    dec a                                         ; $71b2: $3d
    ld c, $9c                                     ; $71b3: $0e $9c
    and d                                         ; $71b5: $a2
    sub h                                         ; $71b6: $94
    and c                                         ; $71b7: $a1
    add hl, bc                                    ; $71b8: $09
    jr z, jr_0ac_71bb                             ; $71b9: $28 $00

jr_0ac_71bb:
    ld de, $8414                                  ; $71bb: $11 $14 $84
    add l                                         ; $71be: $85
    call z, $0ec8                                 ; $71bf: $cc $c8 $0e
    halt                                          ; $71c2: $76
    nop                                           ; $71c3: $00
    ld c, $32                                     ; $71c4: $0e $32
    rra                                           ; $71c6: $1f
    add b                                         ; $71c7: $80
    adc a                                         ; $71c8: $8f
    ldh [$c7], a                                  ; $71c9: $e0 $c7
    ldh a, [rP1]                                  ; $71cb: $f0 $00
    db $e3                                        ; $71cd: $e3
    ld hl, sp-$04                                 ; $71ce: $f8 $fc
    ld [hl], c                                    ; $71d0: $71
    db $fc                                        ; $71d1: $fc
    jr nc, @-$3a                                  ; $71d2: $30 $c4

    ld a, h                                       ; $71d4: $7c
    nop                                           ; $71d5: $00
    ld h, h                                       ; $71d6: $64
    inc a                                         ; $71d7: $3c
    add a                                         ; $71d8: $87
    scf                                           ; $71d9: $37
    adc a                                         ; $71da: $8f
    cpl                                           ; $71db: $2f
    cpl                                           ; $71dc: $2f
    adc a                                         ; $71dd: $8f
    nop                                           ; $71de: $00
    ld l, a                                       ; $71df: $6f
    rrca                                          ; $71e0: $0f
    ld b, b                                       ; $71e1: $40
    rra                                           ; $71e2: $1f
    ld b, b                                       ; $71e3: $40
    rra                                           ; $71e4: $1f
    ret nz                                        ; $71e5: $c0

    rra                                           ; $71e6: $1f
    inc bc                                        ; $71e7: $03
    add b                                         ; $71e8: $80
    ccf                                           ; $71e9: $3f
    ld bc, $01fc                                  ; $71ea: $01 $fc $01
    db $fc                                        ; $71ed: $fc
    ld a, h                                       ; $71ee: $7c
    add hl, bc                                    ; $71ef: $09
    ld [bc], a                                    ; $71f0: $02
    ld [$ff40], sp                                ; $71f1: $08 $40 $ff
    dec a                                         ; $71f4: $3d
    ld [bc], a                                    ; $71f5: $02
    db $10                                        ; $71f6: $10
    rra                                           ; $71f7: $1f
    rra                                           ; $71f8: $1f
    sub b                                         ; $71f9: $90
    rra                                           ; $71fa: $1f
    add b                                         ; $71fb: $80
    nop                                           ; $71fc: $00
    rra                                           ; $71fd: $1f
    adc a                                         ; $71fe: $8f
    rra                                           ; $71ff: $1f
    adc a                                         ; $7200: $8f
    ret nz                                        ; $7201: $c0

    rst $18                                       ; $7202: $df
    ld b, c                                       ; $7203: $41
    ld e, [hl]                                    ; $7204: $5e
    nop                                           ; $7205: $00
    ld c, a                                       ; $7206: $4f
    rra                                           ; $7207: $1f
    ld [hl], e                                    ; $7208: $73
    or e                                          ; $7209: $b3
    jp $8680                                      ; $720a: $c3 $80 $86


    inc bc                                        ; $720d: $03
    nop                                           ; $720e: $00
    sbc c                                         ; $720f: $99
    sbc [hl]                                      ; $7210: $9e
    ld d, e                                       ; $7211: $53
    ld e, h                                       ; $7212: $5c
    sbc $cf                                       ; $7213: $de $cf
    db $fc                                        ; $7215: $fc
    ld e, $00                                     ; $7216: $1e $00
    db $fc                                        ; $7218: $fc
    ld a, [$8f90]                                 ; $7219: $fa $90 $8f
    sbc b                                         ; $721c: $98
    add a                                         ; $721d: $87
    rrca                                          ; $721e: $0f
    add a                                         ; $721f: $87

jr_0ac_7220:
    jr nz, jr_0ac_7231                            ; $7220: $20 $0f

    rst $00                                       ; $7222: $c7
    ld [bc], a                                    ; $7223: $02
    db $10                                        ; $7224: $10
    add [hl]                                      ; $7225: $86
    rra                                           ; $7226: $1f
    add [hl]                                      ; $7227: $86
    cp b                                          ; $7228: $b8
    add [hl]                                      ; $7229: $86
    nop                                           ; $722a: $00
    add b                                         ; $722b: $80
    cp h                                          ; $722c: $bc
    inc a                                         ; $722d: $3c
    cp b                                          ; $722e: $b8
    inc a                                         ; $722f: $3c
    sbc b                                         ; $7230: $98

jr_0ac_7231:
    inc a                                         ; $7231: $3c
    sbc b                                         ; $7232: $98
    nop                                           ; $7233: $00
    ld a, $94                                     ; $7234: $3e $94
    ld a, $94                                     ; $7236: $3e $94
    dec a                                         ; $7238: $3d
    sub h                                         ; $7239: $94
    inc a                                         ; $723a: $3c
    jr jr_0ac_723d                                ; $723b: $18 $00

jr_0ac_723d:
    inc a                                         ; $723d: $3c
    add hl, de                                    ; $723e: $19
    add hl, bc                                    ; $723f: $09
    inc e                                         ; $7240: $1c
    add hl, bc                                    ; $7241: $09
    inc e                                         ; $7242: $1c
    dec e                                         ; $7243: $1d
    inc e                                         ; $7244: $1c
    db $10                                        ; $7245: $10
    dec de                                        ; $7246: $1b
    jr c, jr_0ac_7263                             ; $7247: $38 $1a

    ld [bc], a                                    ; $7249: $02
    nop                                           ; $724a: $00
    add b                                         ; $724b: $80
    ccf                                           ; $724c: $3f
    add b                                         ; $724d: $80
    ccf                                           ; $724e: $3f
    ld [hl], b                                    ; $724f: $70
    ld a, a                                       ; $7250: $7f
    ld d, b                                       ; $7251: $50
    ld [bc], a                                    ; $7252: $02
    inc b                                         ; $7253: $04
    ld [$8a9c], sp                                ; $7254: $08 $9c $8a
    ld l, a                                       ; $7257: $6f
    rrca                                          ; $7258: $0f
    rrca                                          ; $7259: $0f
    daa                                           ; $725a: $27
    nop                                           ; $725b: $00
    rlca                                          ; $725c: $07
    inc hl                                        ; $725d: $23
    or b                                          ; $725e: $b0
    add a                                         ; $725f: $87
    ret nc                                        ; $7260: $d0

    ret nz                                        ; $7261: $c0

    rra                                           ; $7262: $1f

jr_0ac_7263:
    ret nz                                        ; $7263: $c0

    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    ret nz                                        ; $7266: $c0

    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    ld hl, sp-$04                                 ; $7269: $f8 $fc
    ld c, $f2                                     ; $726b: $0e $f2
    inc c                                         ; $726d: $0c
    ld hl, sp+$18                                 ; $726e: $f8 $18
    ret nz                                        ; $7270: $c0

    or e                                          ; $7271: $b3
    add [hl]                                      ; $7272: $86
    ld a, [bc]                                    ; $7273: $0a
    call z, Call_000_110a                         ; $7274: $cc $0a $11
    rrca                                          ; $7277: $0f
    ld [bc], a                                    ; $7278: $02
    inc de                                        ; $7279: $13
    ld e, $23                                     ; $727a: $1e $23
    dec e                                         ; $727c: $1d
    ld b, [hl]                                    ; $727d: $46
    jr c, jr_0ac_7290                             ; $727e: $38 $10

    jr @+$01                                      ; $7280: $18 $ff

    nop                                           ; $7282: $00
    nop                                           ; $7283: $00

jr_0ac_7284:
    xor h                                         ; $7284: $ac
    sub b                                         ; $7285: $90
    jr nc, jr_0ac_7288                            ; $7286: $30 $00

jr_0ac_7288:
    jr nc, jr_0ac_72da                            ; $7288: $30 $50

    db $10                                        ; $728a: $10
    ld b, b                                       ; $728b: $40
    ld sp, hl                                     ; $728c: $f9
    db $10                                        ; $728d: $10
    jr z, jr_0ac_72c6                             ; $728e: $28 $36

jr_0ac_7290:
    ld [hl], b                                    ; $7290: $70
    inc [hl]                                      ; $7291: $34
    ldh a, [$74]                                  ; $7292: $f0 $74
    ldh a, [rSB]                                  ; $7294: $f0 $01
    ld l, h                                       ; $7296: $6c
    ldh [$08], a                                  ; $7297: $e0 $08
    inc bc                                        ; $7299: $03
    ld hl, sp+$03                                 ; $729a: $f8 $03
    inc bc                                        ; $729c: $03
    inc [hl]                                      ; $729d: $34
    jr nz, jr_0ac_7220                            ; $729e: $20 $80

    inc b                                         ; $72a0: $04
    ld c, e                                       ; $72a1: $4b
    db $10                                        ; $72a2: $10
    inc bc                                        ; $72a3: $03
    ld a, a                                       ; $72a4: $7f
    ld [bc], a                                    ; $72a5: $02
    ld b, b                                       ; $72a6: $40
    nop                                           ; $72a7: $00
    ld bc, $06b0                                  ; $72a8: $01 $b0 $06
    rlca                                          ; $72ab: $07
    rrca                                          ; $72ac: $0f
    ld [$0e05], sp                                ; $72ad: $08 $05 $0e
    add b                                         ; $72b0: $80
    jr nz, jr_0ac_72d3                            ; $72b1: $20 $20

    cp $01                                        ; $72b3: $fe $01
    db $fc                                        ; $72b5: $fc

jr_0ac_72b6:
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    ld c, $72                                     ; $72b8: $0e $72
    nop                                           ; $72ba: $00
    ld a, a                                       ; $72bb: $7f
    ccf                                           ; $72bc: $3f
    nop                                           ; $72bd: $00
    rst $20                                       ; $72be: $e7
    jr jr_0ac_7284                                ; $72bf: $18 $c3

    inc a                                         ; $72c1: $3c
    add c                                         ; $72c2: $81
    nop                                           ; $72c3: $00
    ld h, [hl]                                    ; $72c4: $66
    nop                                           ; $72c5: $00

jr_0ac_72c6:
    jp RST_18                                     ; $72c6: $c3 $18 $00


    inc a                                         ; $72c9: $3c
    db $10                                        ; $72ca: $10
    rra                                           ; $72cb: $1f
    jr nz, jr_0ac_72b6                            ; $72cc: $20 $e8

    rrca                                          ; $72ce: $0f
    ld b, b                                       ; $72cf: $40
    ld [$00ff], sp                                ; $72d0: $08 $ff $00

jr_0ac_72d3:
    ld a, a                                       ; $72d3: $7f
    nop                                           ; $72d4: $00
    add b                                         ; $72d5: $80
    ld bc, $c03f                                  ; $72d6: $01 $3f $c0
    rra                                           ; $72d9: $1f

jr_0ac_72da:
    ld h, a                                       ; $72da: $67
    rlca                                          ; $72db: $07
    inc bc                                        ; $72dc: $03
    ei                                            ; $72dd: $fb
    ld d, b                                       ; $72de: $50
    cp b                                          ; $72df: $b8
    add b                                         ; $72e0: $80
    ld l, d                                       ; $72e1: $6a
    sub b                                         ; $72e2: $90
    cp $05                                        ; $72e3: $fe $05
    ld c, $1f                                     ; $72e5: $0e $1f
    inc e                                         ; $72e7: $1c
    scf                                           ; $72e8: $37
    ld l, $00                                     ; $72e9: $2e $00
    jr jr_0ac_7300                                ; $72eb: $18 $13

    ld [$1714], sp                                ; $72ed: $08 $14 $17
    add hl, bc                                    ; $72f0: $09
    dec c                                         ; $72f1: $0d
    ld d, $00                                     ; $72f2: $16 $00
    ld c, $cb                                     ; $72f4: $0e $cb
    ld h, c                                       ; $72f6: $61
    dec c                                         ; $72f7: $0d
    rra                                           ; $72f8: $1f
    ld [hl], e                                    ; $72f9: $73
    ld b, $60                                     ; $72fa: $06 $60
    nop                                           ; $72fc: $00
    ld c, [hl]                                    ; $72fd: $4e
    ccf                                           ; $72fe: $3f
    ld h, b                                       ; $72ff: $60

jr_0ac_7300:
    rra                                           ; $7300: $1f
    rra                                           ; $7301: $1f
    ld l, a                                       ; $7302: $6f
    ld c, $76                                     ; $7303: $0e $76
    nop                                           ; $7305: $00
    add hl, sp                                    ; $7306: $39
    ld a, $27                                     ; $7307: $3e $27
    rst $00                                       ; $7309: $c7
    add hl, bc                                    ; $730a: $09
    pop af                                        ; $730b: $f1
    ret nz                                        ; $730c: $c0

    cp b                                          ; $730d: $b8
    nop                                           ; $730e: $00
    ldh a, [$0c]                                  ; $730f: $f0 $0c
    ld hl, sp-$19                                 ; $7311: $f8 $e7
    ld h, b                                       ; $7313: $60
    ld h, c                                       ; $7314: $61
    adc b                                         ; $7315: $88
    add h                                         ; $7316: $84
    nop                                           ; $7317: $00
    ret nc                                        ; $7318: $d0

    ld c, b                                       ; $7319: $48
    ldh a, [$f8]                                  ; $731a: $f0 $f8
    rst $38                                       ; $731c: $ff
    rlca                                          ; $731d: $07
    db $fd                                        ; $731e: $fd
    cp $00                                        ; $731f: $fe $00
    ld a, a                                       ; $7321: $7f
    ld a, a                                       ; $7322: $7f
    nop                                           ; $7323: $00
    ccf                                           ; $7324: $3f
    db $fc                                        ; $7325: $fc
    jp $b83f                                      ; $7326: $c3 $3f $b8


    nop                                           ; $7329: $00
    rra                                           ; $732a: $1f
    rst $18                                       ; $732b: $df
    add b                                         ; $732c: $80
    nop                                           ; $732d: $00
    ld h, b                                       ; $732e: $60
    add b                                         ; $732f: $80
    ldh [$78], a                                  ; $7330: $e0 $78
    nop                                           ; $7332: $00
    ld hl, sp+$1c                                 ; $7333: $f8 $1c
    db $fc                                        ; $7335: $fc
    ld b, $fe                                     ; $7336: $06 $fe
    inc bc                                        ; $7338: $03
    ld a, $de                                     ; $7339: $3e $de

Call_0ac_733b:
    jr nz, jr_0ac_7344                            ; $733b: $20 $07

    ld a, e                                       ; $733d: $7b
    ret nc                                        ; $733e: $d0

    ld c, b                                       ; $733f: $48
    add b                                         ; $7340: $80
    nop                                           ; $7341: $00
    ld b, b                                       ; $7342: $40
    add b                                         ; $7343: $80

jr_0ac_7344:
    ld bc, $fc00                                  ; $7344: $01 $00 $fc
    inc bc                                        ; $7347: $03
    ldh a, [$0e]                                  ; $7348: $f0 $0e
    ldh [$d8], a                                  ; $734a: $e0 $d8
    pop bc                                        ; $734c: $c1
    jr nc, jr_0ac_734f                            ; $734d: $30 $00

jr_0ac_734f:
    rlca                                          ; $734f: $07
    ld h, c                                       ; $7350: $61
    rrca                                          ; $7351: $0f
    ld h, e                                       ; $7352: $63
    rrca                                          ; $7353: $0f
    ld hl, $070f                                  ; $7354: $21 $0f $07
    nop                                           ; $7357: $00
    add h                                         ; $7358: $84
    ld e, b                                       ; $7359: $58
    ld e, e                                       ; $735a: $5b
    cp h                                          ; $735b: $bc
    and b                                         ; $735c: $a0
    ccf                                           ; $735d: $3f
    ld e, a                                       ; $735e: $5f
    ccf                                           ; $735f: $3f
    nop                                           ; $7360: $00
    rst $38                                       ; $7361: $ff
    ld a, a                                       ; $7362: $7f
    ccf                                           ; $7363: $3f
    ld a, h                                       ; $7364: $7c
    ei                                            ; $7365: $fb
    cp $e9                                        ; $7366: $fe $e9
    inc de                                        ; $7368: $13
    nop                                           ; $7369: $00
    sbc h                                         ; $736a: $9c
    inc bc                                        ; $736b: $03
    adc h                                         ; $736c: $8c
    ret nz                                        ; $736d: $c0

    ld b, b                                       ; $736e: $40
    jp nz, $c90e                                  ; $736f: $c2 $0e $c9

    nop                                           ; $7372: $00
    add hl, bc                                    ; $7373: $09
    pop hl                                        ; $7374: $e1
    inc bc                                        ; $7375: $03
    pop hl                                        ; $7376: $e1
    inc bc                                        ; $7377: $03
    db $10                                        ; $7378: $10
    di                                            ; $7379: $f3
    ret nz                                        ; $737a: $c0

    nop                                           ; $737b: $00
    inc de                                        ; $737c: $13
    jp nz, $0d53                                  ; $737d: $c2 $53 $0d

    inc c                                         ; $7380: $0c
    ld b, l                                       ; $7381: $45
    inc e                                         ; $7382: $1c
    ld h, e                                       ; $7383: $63
    nop                                           ; $7384: $00

jr_0ac_7385:
    ld c, d                                       ; $7385: $4a
    scf                                           ; $7386: $37
    sub l                                         ; $7387: $95
    dec a                                         ; $7388: $3d
    inc bc                                        ; $7389: $03
    ld a, [de]                                    ; $738a: $1a
    ld h, $43                                     ; $738b: $26 $43
    nop                                           ; $738d: $00
    and a                                         ; $738e: $a7
    ld bc, $1ae1                                  ; $738f: $01 $e1 $1a
    sbc d                                         ; $7392: $9a
    ld a, [hl-]                                   ; $7393: $3a
    xor d                                         ; $7394: $aa
    adc e                                         ; $7395: $8b
    nop                                           ; $7396: $00
    cp b                                          ; $7397: $b8
    adc e                                         ; $7398: $8b
    cp b                                          ; $7399: $b8
    ld a, e                                       ; $739a: $7b
    add hl, de                                    ; $739b: $19
    push af                                       ; $739c: $f5
    ld d, $0f                                     ; $739d: $16 $0f
    nop                                           ; $739f: $00
    ld a, b                                       ; $73a0: $78
    inc bc                                        ; $73a1: $03
    ld c, $7d                                     ; $73a2: $0e $7d
    inc bc                                        ; $73a4: $03
    ld a, $01                                     ; $73a5: $3e $01

jr_0ac_73a7:
    ccf                                           ; $73a7: $3f
    nop                                           ; $73a8: $00
    rra                                           ; $73a9: $1f

jr_0ac_73aa:
    rra                                           ; $73aa: $1f
    ld e, a                                       ; $73ab: $5f
    ld d, b                                       ; $73ac: $50
    ld c, a                                       ; $73ad: $4f
    ld h, b                                       ; $73ae: $60
    ld l, a                                       ; $73af: $6f
    ld h, b                                       ; $73b0: $60
    nop                                           ; $73b1: $00
    and b                                         ; $73b2: $a0
    jr nc, jr_0ac_7385                            ; $73b3: $30 $d0

    ldh a, [rOBP0]                                ; $73b5: $f0 $48
    ld [hl], b                                    ; $73b7: $70
    xor b                                         ; $73b8: $a8
    ldh a, [rSB]                                  ; $73b9: $f0 $01
    ret z                                         ; $73bb: $c8

    ld a, b                                       ; $73bc: $78
    call z, $dc38                                 ; $73bd: $cc $38 $dc
    jr jr_0ac_73aa                                ; $73c0: $18 $e8

    ld h, d                                       ; $73c2: $62
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    ld [hl], $07                                  ; $73c5: $36 $07
    ld d, $03                                     ; $73c7: $16 $03
    ld [de], a                                    ; $73c9: $12
    inc bc                                        ; $73ca: $03
    ld a, [de]                                    ; $73cb: $1a
    rlca                                          ; $73cc: $07
    ld b, b                                       ; $73cd: $40
    inc c                                         ; $73ce: $0c
    ld [bc], a                                    ; $73cf: $02
    ld [$e8f0], sp                                ; $73d0: $08 $f0 $e8
    ldh a, [$c8]                                  ; $73d3: $f0 $c8
    ret nz                                        ; $73d5: $c0

    or b                                          ; $73d6: $b0
    nop                                           ; $73d7: $00
    pop hl                                        ; $73d8: $e1
    inc a                                         ; $73d9: $3c
    jp nz, $8079                                  ; $73da: $c2 $79 $80

    ld a, b                                       ; $73dd: $78
    inc bc                                        ; $73de: $03
    di                                            ; $73df: $f3
    nop                                           ; $73e0: $00
    add a                                         ; $73e1: $87
    pop hl                                        ; $73e2: $e1
    pop af                                        ; $73e3: $f1
    ld a, [c]                                     ; $73e4: $f2
    jr nc, jr_0ac_73a7                            ; $73e5: $30 $c0

    adc $0c                                       ; $73e7: $ce $0c
    nop                                           ; $73e9: $00
    adc b                                         ; $73ea: $88
    ld [hl], $1c                                  ; $73eb: $36 $1c
    ld l, d                                       ; $73ed: $6a
    db $ec                                        ; $73ee: $ec
    inc a                                         ; $73ef: $3c
    ldh a, [rNR10]                                ; $73f0: $f0 $10
    nop                                           ; $73f2: $00
    di                                            ; $73f3: $f3
    inc de                                        ; $73f4: $13
    sbc c                                         ; $73f5: $99
    sbc b                                         ; $73f6: $98
    ld sp, $16f0                                  ; $73f7: $31 $f0 $16
    ld [hl], l                                    ; $73fa: $75
    nop                                           ; $73fb: $00
    inc l                                         ; $73fc: $2c
    dec hl                                        ; $73fd: $2b
    rrca                                          ; $73fe: $0f
    jr jr_0ac_743f                                ; $73ff: $18 $3e

    jr c, @+$68                                   ; $7401: $38 $66

    ld e, d                                       ; $7403: $5a
    nop                                           ; $7404: $00
    call nz, $c2bc                                ; $7405: $c4 $bc $c2
    inc h                                         ; $7408: $24
    add e                                         ; $7409: $83
    ld b, l                                       ; $740a: $45
    inc bc                                        ; $740b: $03
    inc b                                         ; $740c: $04
    nop                                           ; $740d: $00
    di                                            ; $740e: $f3
    sub [hl]                                      ; $740f: $96
    ld h, h                                       ; $7410: $64
    inc c                                         ; $7411: $0c
    jr nz, jr_0ac_7420                            ; $7412: $20 $0c

    ld d, $1a                                     ; $7414: $16 $1a
    nop                                           ; $7416: $00
    inc d                                         ; $7417: $14
    ld [$6067], sp                                ; $7418: $08 $67 $60
    ld [hl], a                                    ; $741b: $77
    ldh a, [rNR44]                                ; $741c: $f0 $23
    add e                                         ; $741e: $83
    nop                                           ; $741f: $00

jr_0ac_7420:
    ld hl, $3081                                  ; $7420: $21 $81 $30
    ld d, h                                       ; $7423: $54
    ld [hl], b                                    ; $7424: $70
    ld d, [hl]                                    ; $7425: $56
    jr nz, @+$22                                  ; $7426: $20 $20

    nop                                           ; $7428: $00

jr_0ac_7429:
    ld h, b                                       ; $7429: $60
    ld hl, $18f0                                  ; $742a: $21 $f0 $18
    ldh a, [rNR23]                                ; $742d: $f0 $18
    db $e3                                        ; $742f: $e3
    dec bc                                        ; $7430: $0b
    nop                                           ; $7431: $00
    db $e3                                        ; $7432: $e3
    dec bc                                        ; $7433: $0b
    ret nc                                        ; $7434: $d0

    jp $c750                                      ; $7435: $c3 $50 $c7


    ret nc                                        ; $7438: $d0

    rst $00                                       ; $7439: $c7
    nop                                           ; $743a: $00
    ld d, b                                       ; $743b: $50
    rst $00                                       ; $743c: $c7
    rlca                                          ; $743d: $07
    dec c                                         ; $743e: $0d

jr_0ac_743f:
    ld a, [c]                                     ; $743f: $f2
    push af                                       ; $7440: $f5
    ld a, [c]                                     ; $7441: $f2
    push af                                       ; $7442: $f5
    nop                                           ; $7443: $00
    rlca                                          ; $7444: $07
    db $f4                                        ; $7445: $f4
    inc bc                                        ; $7446: $03
    ld a, [$fa03]                                 ; $7447: $fa $03 $fa
    nop                                           ; $744a: $00
    ld hl, sp+$00                                 ; $744b: $f8 $00
    inc bc                                        ; $744d: $03
    dec c                                         ; $744e: $0d
    rlca                                          ; $744f: $07
    db $e3                                        ; $7450: $e3
    adc $c3                                       ; $7451: $ce $c3
    sbc b                                         ; $7453: $98
    add b                                         ; $7454: $80
    nop                                           ; $7455: $00
    ld a, a                                       ; $7456: $7f
    ld b, a                                       ; $7457: $47
    ld a, a                                       ; $7458: $7f
    ret c                                         ; $7459: $d8

    rrca                                          ; $745a: $0f
    inc c                                         ; $745b: $0c
    ldh a, [$cf]                                  ; $745c: $f0 $cf
    nop                                           ; $745e: $00
    ldh [rNR34], a                                ; $745f: $e0 $1e
    ld l, c                                       ; $7461: $69
    xor $87                                       ; $7462: $ee $87
    add [hl]                                      ; $7464: $86
    inc bc                                        ; $7465: $03
    inc c                                         ; $7466: $0c
    nop                                           ; $7467: $00
    ld e, $07                                     ; $7468: $1e $07
    ld a, a                                       ; $746a: $7f
    rlca                                          ; $746b: $07
    ldh [rNR34], a                                ; $746c: $e0 $1e
    add a                                         ; $746e: $87
    add hl, sp                                    ; $746f: $39
    nop                                           ; $7470: $00
    ld a, b                                       ; $7471: $78
    ret nz                                        ; $7472: $c0

    ld hl, sp-$40                                 ; $7473: $f8 $c0
    ldh a, [$c1]                                  ; $7475: $f0 $c1
    sbc h                                         ; $7477: $9c
    ld a, h                                       ; $7478: $7c
    nop                                           ; $7479: $00
    inc a                                         ; $747a: $3c
    db $fc                                        ; $747b: $fc
    add b                                         ; $747c: $80
    ldh a, [$80]                                  ; $747d: $f0 $80
    ld h, c                                       ; $747f: $61
    dec c                                         ; $7480: $0d
    ld de, $4500                                  ; $7481: $11 $00 $45
    add hl, sp                                    ; $7484: $39
    inc a                                         ; $7485: $3c
    inc h                                         ; $7486: $24
    jr c, jr_0ac_7429                             ; $7487: $38 $a0

    jr c, jr_0ac_749b                             ; $7489: $38 $10

    nop                                           ; $748b: $00
    jr nc, @+$7a                                  ; $748c: $30 $78

    db $eb                                        ; $748e: $eb
    adc e                                         ; $748f: $8b
    ldh a, [$96]                                  ; $7490: $f0 $96
    add sp, $0e                                   ; $7492: $e8 $0e
    nop                                           ; $7494: $00
    push hl                                       ; $7495: $e5
    inc b                                         ; $7496: $04
    inc de                                        ; $7497: $13
    ld [hl], d                                    ; $7498: $72
    dec e                                         ; $7499: $1d
    ld h, l                                       ; $749a: $65

jr_0ac_749b:
    xor a                                         ; $749b: $af
    ld c, h                                       ; $749c: $4c
    nop                                           ; $749d: $00
    xor e                                         ; $749e: $ab
    ld c, b                                       ; $749f: $48
    ld [c], a                                     ; $74a0: $e2
    ld e, h                                       ; $74a1: $5c
    jp nz, $c240                                  ; $74a2: $c2 $40 $c2

    db $f4                                        ; $74a5: $f4
    nop                                           ; $74a6: $00
    jp nz, $37f4                                  ; $74a7: $c2 $f4 $37

    add a                                         ; $74aa: $87
    xor a                                         ; $74ab: $af
    adc a                                         ; $74ac: $8f
    and b                                         ; $74ad: $a0
    adc a                                         ; $74ae: $8f
    nop                                           ; $74af: $00
    ld h, b                                       ; $74b0: $60
    rrca                                          ; $74b1: $0f
    ld b, b                                       ; $74b2: $40
    rra                                           ; $74b3: $1f
    ld b, b                                       ; $74b4: $40
    rra                                           ; $74b5: $1f
    ret nz                                        ; $74b6: $c0

    rra                                           ; $74b7: $1f
    nop                                           ; $74b8: $00

jr_0ac_74b9:
    add b                                         ; $74b9: $80
    ccf                                           ; $74ba: $3f
    rlca                                          ; $74bb: $07
    dec de                                        ; $74bc: $1b
    rra                                           ; $74bd: $1f
    inc b                                         ; $74be: $04
    dec sp                                        ; $74bf: $3b
    ld c, $00                                     ; $74c0: $0e $00
    ld [hl], e                                    ; $74c2: $73
    ld c, [hl]                                    ; $74c3: $4e
    ld a, a                                       ; $74c4: $7f
    nop                                           ; $74c5: $00
    inc a                                         ; $74c6: $3c
    ld a, a                                       ; $74c7: $7f
    ld b, e                                       ; $74c8: $43
    inc a                                         ; $74c9: $3c
    nop                                           ; $74ca: $00
    ld a, [hl]                                    ; $74cb: $7e
    ld b, c                                       ; $74cc: $41
    ld a, $fe                                     ; $74cd: $3e $fe
    ld [bc], a                                    ; $74cf: $02
    db $fc                                        ; $74d0: $fc
    rlca                                          ; $74d1: $07
    db $fd                                        ; $74d2: $fd
    nop                                           ; $74d3: $00
    ld hl, sp-$1b                                 ; $74d4: $f8 $e5
    ldh [$d0], a                                  ; $74d6: $e0 $d0
    ldh a, [rNR11]                                ; $74d8: $f0 $11
    ret nz                                        ; $74da: $c0

    pop bc                                        ; $74db: $c1
    nop                                           ; $74dc: $00
    add b                                         ; $74dd: $80
    ld b, b                                       ; $74de: $40
    ld [hl], b                                    ; $74df: $70
    ldh [$30], a                                  ; $74e0: $e0 $30
    ret nc                                        ; $74e2: $d0

    pop hl                                        ; $74e3: $e1
    ld hl, $4100                                  ; $74e4: $21 $00 $41
    ld b, b                                       ; $74e7: $40
    inc hl                                        ; $74e8: $23
    ldh [rTAC], a                                 ; $74e9: $e0 $07
    add [hl]                                      ; $74eb: $86
    ld e, $0c                                     ; $74ec: $1e $0c
    nop                                           ; $74ee: $00
    inc e                                         ; $74ef: $1c
    jr c, jr_0ac_7523                             ; $74f0: $38 $31

    ld a, b                                       ; $74f2: $78
    ld h, c                                       ; $74f3: $61
    jr nz, jr_0ac_74b9                            ; $74f4: $20 $c3

    dec h                                         ; $74f6: $25
    nop                                           ; $74f7: $00

Jump_0ac_74f8:
    add a                                         ; $74f8: $87
    ld c, c                                       ; $74f9: $49
    rlca                                          ; $74fa: $07
    rrca                                          ; $74fb: $0f
    rrca                                          ; $74fc: $0f
    ld d, $1e                                     ; $74fd: $16 $1e
    nop                                           ; $74ff: $00
    nop                                           ; $7500: $00
    inc [hl]                                      ; $7501: $34
    inc c                                         ; $7502: $0c
    pop bc                                        ; $7503: $c1
    and d                                         ; $7504: $a2
    jp Jump_0ac_46a1                              ; $7505: $c3 $a1 $46


    push bc                                       ; $7508: $c5
    nop                                           ; $7509: $00
    add [hl]                                      ; $750a: $86
    ld bc, $8b07                                  ; $750b: $01 $07 $8b
    dec c                                         ; $750e: $0d
    ld [bc], a                                    ; $750f: $02
    rlca                                          ; $7510: $07
    dec c                                         ; $7511: $0d
    nop                                           ; $7512: $00
    rlca                                          ; $7513: $07
    dec e                                         ; $7514: $1d
    ld hl, sp+$3e                                 ; $7515: $f8 $3e
    cp c                                          ; $7517: $b9
    ld a, h                                       ; $7518: $7c
    db $fc                                        ; $7519: $fc
    ld a, c                                       ; $751a: $79

jr_0ac_751b:
    nop                                           ; $751b: $00
    db $fc                                        ; $751c: $fc
    ld a, c                                       ; $751d: $79
    ld [hl], c                                    ; $751e: $71
    db $fc                                        ; $751f: $fc
    di                                            ; $7520: $f3
    ld hl, sp+$0a                                 ; $7521: $f8 $0a

jr_0ac_7523:
    ld a, [c]                                     ; $7523: $f2
    ld bc, $b20a                                  ; $7524: $01 $0a $b2
    add b                                         ; $7527: $80
    ccf                                           ; $7528: $3f
    add b                                         ; $7529: $80
    ccf                                           ; $752a: $3f
    ld a, a                                       ; $752b: $7f
    ld d, b                                       ; $752c: $50
    ld [bc], a                                    ; $752d: $02
    ret nz                                        ; $752e: $c0

    inc b                                         ; $752f: $04
    ld [$0a9c], sp                                ; $7530: $08 $9c $0a
    ld a, $3f                                     ; $7533: $3e $3f
    ld hl, $1b3e                                  ; $7535: $21 $3e $1b
    ld e, $c0                                     ; $7538: $1e $c0
    ld h, a                                       ; $753a: $67
    ld [de], a                                    ; $753b: $12
    xor e                                         ; $753c: $ab
    ld [de], a                                    ; $753d: $12
    ret nz                                        ; $753e: $c0

    ret nz                                        ; $753f: $c0

    ret nz                                        ; $7540: $c0

    add b                                         ; $7541: $80
    ret nz                                        ; $7542: $c0

    ld bc, $0700                                  ; $7543: $01 $00 $07
    ld hl, sp+$10                                 ; $7546: $f8 $10
    ret nc                                        ; $7548: $d0

    rra                                           ; $7549: $1f
    ret nz                                        ; $754a: $c0

    nop                                           ; $754b: $00
    ret nz                                        ; $754c: $c0

    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    ld [hl], b                                    ; $7550: $70
    cp b                                          ; $7551: $b8
    ldh [rSVBK], a                                ; $7552: $e0 $70
    ret nz                                        ; $7554: $c0

    pop hl                                        ; $7555: $e1
    jr nc, jr_0ac_751b                            ; $7556: $30 $c3

    cp l                                          ; $7558: $bd
    add [hl]                                      ; $7559: $86
    ld a, [bc]                                    ; $755a: $0a
    call z, $dd0a                                 ; $755b: $cc $0a $dd
    pop bc                                        ; $755e: $c1
    add a                                         ; $755f: $87
    db $e3                                        ; $7560: $e3
    ld [$54e8], sp                                ; $7561: $08 $e8 $54
    ret nz                                        ; $7564: $c0

    add b                                         ; $7565: $80
    db $10                                        ; $7566: $10
    jr @+$01                                      ; $7567: $18 $ff

    nop                                           ; $7569: $00
    inc e                                         ; $756a: $1c
    ld bc, $1c2c                                  ; $756b: $01 $2c $1c
    ld a, [hl+]                                   ; $756e: $2a
    ld h, [hl]                                    ; $756f: $66
    ld e, d                                       ; $7570: $5a
    ld c, h                                       ; $7571: $4c
    jr nc, jr_0ac_7584                            ; $7572: $30 $10

    jr z, jr_0ac_7576                             ; $7574: $28 $00

jr_0ac_7576:
    or b                                          ; $7576: $b0
    and [hl]                                      ; $7577: $a6
    ld [hl], b                                    ; $7578: $70
    ld h, h                                       ; $7579: $64
    ld [hl], b                                    ; $757a: $70
    ld b, h                                       ; $757b: $44
    ld h, b                                       ; $757c: $60
    ld c, h                                       ; $757d: $4c
    ld b, $08                                     ; $757e: $06 $08
    inc bc                                        ; $7580: $03
    ld hl, sp+$03                                 ; $7581: $f8 $03
    inc bc                                        ; $7583: $03

jr_0ac_7584:
    inc [hl]                                      ; $7584: $34
    jr nz, jr_0ac_758b                            ; $7585: $20 $04

    ld c, e                                       ; $7587: $4b
    db $10                                        ; $7588: $10
    inc bc                                        ; $7589: $03
    sub l                                         ; $758a: $95

jr_0ac_758b:
    ld [bc], a                                    ; $758b: $02
    ld h, b                                       ; $758c: $60
    nop                                           ; $758d: $00
    ld bc, $23f8                                  ; $758e: $01 $f8 $23
    ld [$0703], sp                                ; $7591: $08 $03 $07
    ld bc, $f0f8                                  ; $7594: $01 $f8 $f0
    nop                                           ; $7597: $00
    ld a, [c]                                     ; $7598: $f2
    jp $0670                                      ; $7599: $c3 $70 $06


    inc a                                         ; $759c: $3c
    inc a                                         ; $759d: $3c
    ld h, d                                       ; $759e: $62
    ld a, h                                       ; $759f: $7c
    nop                                           ; $75a0: $00
    ld bc, $e7fe                                  ; $75a1: $01 $fe $e7
    pop bc                                        ; $75a4: $c1
    db $db                                        ; $75a5: $db
    jr @-$62                                      ; $75a6: $18 $9c

    cp h                                          ; $75a8: $bc
    ld [$f008], sp                                ; $75a9: $08 $08 $f0
    ld e, $18                                     ; $75ac: $1e $18
    ld b, b                                       ; $75ae: $40
    jr jr_0ac_75f1                                ; $75af: $18 $40

    add b                                         ; $75b1: $80
    ret nz                                        ; $75b2: $c0

    ld bc, $3020                                  ; $75b3: $01 $20 $30
    ret nc                                        ; $75b6: $d0

    ld a, h                                       ; $75b7: $7c
    ld h, h                                       ; $75b8: $64
    inc c                                         ; $75b9: $0c
    ld a, $50                                     ; $75ba: $3e $50
    ld hl, sp-$7c                                 ; $75bc: $f8 $84
    ld [hl], d                                    ; $75be: $72
    jr c, jr_0ac_75c2                             ; $75bf: $38 $01

    nop                                           ; $75c1: $00

jr_0ac_75c2:
    inc bc                                        ; $75c2: $03
    inc bc                                        ; $75c3: $03
    ld e, e                                       ; $75c4: $5b
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    ld b, $00                                     ; $75c7: $06 $00
    rlca                                          ; $75c9: $07
    inc e                                         ; $75ca: $1c
    ld b, $38                                     ; $75cb: $06 $38
    ld c, $78                                     ; $75cd: $0e $78
    jr jr_0ac_7643                                ; $75cf: $18 $72

    nop                                           ; $75d1: $00
    or [hl]                                       ; $75d2: $b6
    add [hl]                                      ; $75d3: $86
    ld h, [hl]                                    ; $75d4: $66
    ldh a, [$33]                                  ; $75d5: $f0 $33
    db $e4                                        ; $75d7: $e4
    db $eb                                        ; $75d8: $eb
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    jr jr_0ac_75e0                                ; $75db: $18 $03

    pop bc                                        ; $75dd: $c1
    rlca                                          ; $75de: $07
    add e                                         ; $75df: $83

jr_0ac_75e0:
    ld b, c                                       ; $75e0: $41
    inc [hl]                                      ; $75e1: $34
    add [hl]                                      ; $75e2: $86
    nop                                           ; $75e3: $00
    ld [hl-], a                                   ; $75e4: $32
    or b                                          ; $75e5: $b0
    and h                                         ; $75e6: $a4
    ld [c], a                                     ; $75e7: $e2
    ld [bc], a                                    ; $75e8: $02
    db $fd                                        ; $75e9: $fd
    inc bc                                        ; $75ea: $03
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    ld bc, $2cdc                                  ; $75ed: $01 $dc $2c
    sbc a                                         ; $75f0: $9f

jr_0ac_75f1:
    sub c                                         ; $75f1: $91
    ld h, e                                       ; $75f2: $63
    dec bc                                        ; $75f3: $0b
    ld h, [hl]                                    ; $75f4: $66
    nop                                           ; $75f5: $00
    inc b                                         ; $75f6: $04
    ld h, d                                       ; $75f7: $62
    sbc h                                         ; $75f8: $9c
    ld bc, $2a01                                  ; $75f9: $01 $01 $2a
    inc e                                         ; $75fc: $1c
    adc h                                         ; $75fd: $8c
    nop                                           ; $75fe: $00
    or e                                          ; $75ff: $b3
    rra                                           ; $7600: $1f
    ld b, $0c                                     ; $7601: $06 $0c
    ld [bc], a                                    ; $7603: $02
    and [hl]                                      ; $7604: $a6
    sub c                                         ; $7605: $91
    or e                                          ; $7606: $b3
    nop                                           ; $7607: $00
    inc h                                         ; $7608: $24
    pop de                                        ; $7609: $d1
    ld d, [hl]                                    ; $760a: $56
    inc bc                                        ; $760b: $03
    inc bc                                        ; $760c: $03
    add $87                                       ; $760d: $c6 $87
    add [hl]                                      ; $760f: $86
    nop                                           ; $7610: $00
    inc h                                         ; $7611: $24
    inc d                                         ; $7612: $14
    ret z                                         ; $7613: $c8

    ld h, b                                       ; $7614: $60
    and d                                         ; $7615: $a2
    jr nc, jr_0ac_7629                            ; $7616: $30 $11

    ld hl, $1900                                  ; $7618: $21 $00 $19
    cp c                                          ; $761b: $b9
    ld hl, $7f80                                  ; $761c: $21 $80 $7f
    ld b, b                                       ; $761f: $40
    ccf                                           ; $7620: $3f
    add b                                         ; $7621: $80
    add b                                         ; $7622: $80
    push de                                       ; $7623: $d5
    nop                                           ; $7624: $00
    ld h, b                                       ; $7625: $60
    nop                                           ; $7626: $00
    sub b                                         ; $7627: $90
    ld h, b                                       ; $7628: $60

jr_0ac_7629:
    ld [hl], b                                    ; $7629: $70
    sub b                                         ; $762a: $90
    ret nc                                        ; $762b: $d0

    nop                                           ; $762c: $00
    ldh a, [rTMA]                                 ; $762d: $f0 $06
    ld bc, $1805                                  ; $762f: $01 $05 $18
    dec c                                         ; $7632: $0d
    dec [hl]                                      ; $7633: $35
    ld [hl], b                                    ; $7634: $70
    nop                                           ; $7635: $00
    ld l, b                                       ; $7636: $68
    ldh a, [$e0]                                  ; $7637: $f0 $e0
    ldh [$c1], a                                  ; $7639: $e0 $c1
    pop hl                                        ; $763b: $e1
    jp nz, $00c3                                  ; $763c: $c2 $c3 $00

    ldh [rP1], a                                  ; $763f: $e0 $00
    sbc b                                         ; $7641: $98
    ld h, b                                       ; $7642: $60

jr_0ac_7643:
    rrca                                          ; $7643: $0f
    ld e, $1f                                     ; $7644: $1e $1f
    inc bc                                        ; $7646: $03
    nop                                           ; $7647: $00
    inc bc                                        ; $7648: $03
    db $10                                        ; $7649: $10
    ldh [$8c], a                                  ; $764a: $e0 $8c
    ld [hl], h                                    ; $764c: $74
    rrca                                          ; $764d: $0f
    pop af                                        ; $764e: $f1
    inc e                                         ; $764f: $1c
    nop                                           ; $7650: $00
    db $e4                                        ; $7651: $e4
    ld de, $0706                                  ; $7652: $11 $06 $07
    ld [hl], $87                                  ; $7655: $36 $87
    or d                                          ; $7657: $b2
    ld b, $00                                     ; $7658: $06 $00
    adc c                                         ; $765a: $89
    ld [de], a                                    ; $765b: $12
    ld c, $0f                                     ; $765c: $0e $0f

jr_0ac_765e:
    inc e                                         ; $765e: $1c
    rrca                                          ; $765f: $0f
    rla                                           ; $7660: $17
    call z, $8b00                                 ; $7661: $cc $00 $8b
    rrca                                          ; $7664: $0f
    ld b, $0f                                     ; $7665: $06 $0f
    sbc [hl]                                      ; $7667: $9e
    ret nz                                        ; $7668: $c0

    ld a, $1c                                     ; $7669: $3e $1c
    nop                                           ; $766b: $00
    xor $06                                       ; $766c: $ee $06
    ld b, $0e                                     ; $766e: $06 $0e
    db $fc                                        ; $7670: $fc

jr_0ac_7671:
    db $fc                                        ; $7671: $fc
    adc a                                         ; $7672: $8f
    ld hl, sp+$00                                 ; $7673: $f8 $00
    or $48                                        ; $7675: $f6 $48
    rlca                                          ; $7677: $07
    ret z                                         ; $7678: $c8

    add a                                         ; $7679: $87
    adc b                                         ; $767a: $88
    and a                                         ; $767b: $a7
    ld c, a                                       ; $767c: $4f
    nop                                           ; $767d: $00
    ld c, b                                       ; $767e: $48
    ld b, a                                       ; $767f: $47
    ret c                                         ; $7680: $d8

    dec bc                                        ; $7681: $0b
    cpl                                           ; $7682: $2f
    ld b, b                                       ; $7683: $40
    and b                                         ; $7684: $a0
    ldh [rP1], a                                  ; $7685: $e0 $00
    ld e, b                                       ; $7687: $58

jr_0ac_7688:
    sbc b                                         ; $7688: $98
    ret nz                                        ; $7689: $c0

    ret nc                                        ; $768a: $d0

    adc b                                         ; $768b: $88
    ldh a, [$34]                                  ; $768c: $f0 $34
    ldh [rP1], a                                  ; $768e: $e0 $00
    ld l, h                                       ; $7690: $6c
    add hl, de                                    ; $7691: $19
    ld [de], a                                    ; $7692: $12
    inc [hl]                                      ; $7693: $34
    rla                                           ; $7694: $17
    jr c, jr_0ac_76ba                             ; $7695: $38 $23

jr_0ac_7697:
    ld c, [hl]                                    ; $7697: $4e
    nop                                           ; $7698: $00
    dec [hl]                                      ; $7699: $35
    ldh [$e0], a                                  ; $769a: $e0 $e0
    jr c, jr_0ac_765e                             ; $769c: $38 $c0

    scf                                           ; $769e: $37
    ld c, e                                       ; $769f: $4b
    add hl, de                                    ; $76a0: $19
    nop                                           ; $76a1: $00

jr_0ac_76a2:
    rlca                                          ; $76a2: $07
    inc c                                         ; $76a3: $0c
    dec bc                                        ; $76a4: $0b
    add h                                         ; $76a5: $84
    inc bc                                        ; $76a6: $03
    rlca                                          ; $76a7: $07
    inc b                                         ; $76a8: $04
    rlca                                          ; $76a9: $07
    nop                                           ; $76aa: $00
    inc b                                         ; $76ab: $04
    ld b, e                                       ; $76ac: $43
    ld h, b                                       ; $76ad: $60
    ld h, c                                       ; $76ae: $61
    ld d, b                                       ; $76af: $50
    ld h, c                                       ; $76b0: $61
    ld d, b                                       ; $76b1: $50
    jr nc, jr_0ac_76b4                            ; $76b2: $30 $00

jr_0ac_76b4:
    inc bc                                        ; $76b4: $03
    inc [hl]                                      ; $76b5: $34
    rlca                                          ; $76b6: $07
    inc [hl]                                      ; $76b7: $34
    rlca                                          ; $76b8: $07
    inc d                                         ; $76b9: $14

jr_0ac_76ba:
    rlca                                          ; $76ba: $07
    rlca                                          ; $76bb: $07
    nop                                           ; $76bc: $00
    db $10                                        ; $76bd: $10
    inc b                                         ; $76be: $04
    ld hl, sp+$02                                 ; $76bf: $f8 $02
    db $fc                                        ; $76c1: $fc
    add hl, sp                                    ; $76c2: $39
    sub $3c                                       ; $76c3: $d6 $3c
    nop                                           ; $76c5: $00
    db $db                                        ; $76c6: $db
    ld [hl], $d5                                  ; $76c7: $36 $d5
    pop af                                        ; $76c9: $f1
    ld [$e9f0], a                                 ; $76ca: $ea $f0 $e9
    ld c, $00                                     ; $76cd: $0e $00
    ld a, [c]                                     ; $76cf: $f2
    ld h, a                                       ; $76d0: $67
    inc b                                         ; $76d1: $04
    inc bc                                        ; $76d2: $03
    ld [hl-], a                                   ; $76d3: $32
    jr z, @-$4e                                   ; $76d4: $28 $b0

    adc a                                         ; $76d6: $8f
    nop                                           ; $76d7: $00
    db $d3                                        ; $76d8: $d3
    ret z                                         ; $76d9: $c8

    ret nz                                        ; $76da: $c0

    jr nz, jr_0ac_76a2                            ; $76db: $20 $c5

    and l                                         ; $76dd: $a5
    ldh [$e4], a                                  ; $76de: $e0 $e4
    nop                                           ; $76e0: $00
    pop hl                                        ; $76e1: $e1
    jr nc, jr_0ac_7671                            ; $76e2: $30 $8d

    ld bc, $03fb                                  ; $76e4: $01 $fb $03
    ld [bc], a                                    ; $76e7: $02
    ld de, $f000                                  ; $76e8: $11 $00 $f0
    inc a                                         ; $76eb: $3c
    call z, Call_0ac_671f                         ; $76ec: $cc $1f $67
    rrca                                          ; $76ef: $0f
    scf                                           ; $76f0: $37
    dec b                                         ; $76f1: $05
    nop                                           ; $76f2: $00
    ld e, b                                       ; $76f3: $58
    ld de, $0d63                                  ; $76f4: $11 $63 $0d
    sbc [hl]                                      ; $76f7: $9e
    dec hl                                        ; $76f8: $2b
    ld c, b                                       ; $76f9: $48
    jr nz, jr_0ac_76fc                            ; $76fa: $20 $00

jr_0ac_76fc:
    ld b, b                                       ; $76fc: $40
    ret c                                         ; $76fd: $d8

    jr jr_0ac_7688                                ; $76fe: $18 $88

    inc a                                         ; $7700: $3c
    ld [bc], a                                    ; $7701: $02
    nop                                           ; $7702: $00
    sub [hl]                                      ; $7703: $96
    nop                                           ; $7704: $00
    rrca                                          ; $7705: $0f
    ld a, h                                       ; $7706: $7c
    ld a, e                                       ; $7707: $7b
    ld a, b                                       ; $7708: $78
    or [hl]                                       ; $7709: $b6
    adc b                                         ; $770a: $88
    ld [hl], b                                    ; $770b: $70
    inc hl                                        ; $770c: $23
    nop                                           ; $770d: $00
    jr nz, jr_0ac_7697                            ; $770e: $20 $87

    rlca                                          ; $7710: $07
    ld c, a                                       ; $7711: $4f
    rst $08                                       ; $7712: $cf
    rra                                           ; $7713: $1f
    rrca                                          ; $7714: $0f
    adc [hl]                                      ; $7715: $8e
    nop                                           ; $7716: $00
    rra                                           ; $7717: $1f

jr_0ac_7718:
    ld b, $03                                     ; $7718: $06 $03
    ld c, $0b                                     ; $771a: $0e $0b
    rlca                                          ; $771c: $07
    add hl, bc                                    ; $771d: $09
    add a                                         ; $771e: $87
    nop                                           ; $771f: $00
    ld c, e                                       ; $7720: $4b
    inc c                                         ; $7721: $0c
    db $f4                                        ; $7722: $f4
    inc c                                         ; $7723: $0c
    ldh [$e0], a                                  ; $7724: $e0 $e0
    rst $00                                       ; $7726: $c7
    add b                                         ; $7727: $80
    ld bc, $0b87                                  ; $7728: $01 $87 $0b
    jr jr_0ac_7747                                ; $772b: $18 $1a

    inc bc                                        ; $772d: $03
    ld [$1303], sp                                ; $772e: $08 $03 $13
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    rlca                                          ; $7733: $07
    inc b                                         ; $7734: $04
    ld [bc], a                                    ; $7735: $02
    dec b                                         ; $7736: $05
    inc bc                                        ; $7737: $03
    ld b, $03                                     ; $7738: $06 $03
    ld b, $00                                     ; $773a: $06 $00
    ld a, [$fa7c]                                 ; $773c: $fa $7c $fa
    ld a, [hl]                                    ; $773f: $7e
    cp l                                          ; $7740: $bd
    ld a, $5d                                     ; $7741: $3e $5d
    ld e, $00                                     ; $7743: $1e $00
    ld h, c                                       ; $7745: $61
    ccf                                           ; $7746: $3f

jr_0ac_7747:
    ld e, h                                       ; $7747: $5c
    nop                                           ; $7748: $00
    inc e                                         ; $7749: $1c
    ld bc, $6000                                  ; $774a: $01 $00 $60
    nop                                           ; $774d: $00
    ldh [$63], a                                  ; $774e: $e0 $63
    ld h, e                                       ; $7750: $63
    ld h, h                                       ; $7751: $64
    rlca                                          ; $7752: $07
    rlca                                          ; $7753: $07
    add b                                         ; $7754: $80
    rrca                                          ; $7755: $0f
    nop                                           ; $7756: $00
    cp b                                          ; $7757: $b8
    ld h, b                                       ; $7758: $60
    ld c, a                                       ; $7759: $4f
    ret nz                                        ; $775a: $c0

    adc a                                         ; $775b: $8f
    add a                                         ; $775c: $87
    rrca                                          ; $775d: $0f
    ld l, h                                       ; $775e: $6c
    nop                                           ; $775f: $00
    ld c, $10                                     ; $7760: $0e $10
    ld d, $50                                     ; $7762: $16 $50
    adc c                                         ; $7764: $89
    jr z, @-$35                                   ; $7765: $28 $c9

    pop hl                                        ; $7767: $e1
    nop                                           ; $7768: $00
    ld a, [c]                                     ; $7769: $f2
    pop af                                        ; $776a: $f1
    ld a, [$f8f9]                                 ; $776b: $fa $f9 $f8
    db $fc                                        ; $776e: $fc
    ld sp, hl                                     ; $776f: $f9
    ld b, e                                       ; $7770: $43
    nop                                           ; $7771: $00
    ld a, $82                                     ; $7772: $3e $82
    cp $02                                        ; $7774: $fe $02
    db $fc                                        ; $7776: $fc
    ld b, $fa                                     ; $7777: $06 $fa
    ld h, h                                       ; $7779: $64
    nop                                           ; $777a: $00
    ld hl, sp+$4c                                 ; $777b: $f8 $4c
    ldh a, [rNR33]                                ; $777d: $f0 $1d
    ldh a, [$39]                                  ; $777f: $f0 $39
    pop hl                                        ; $7781: $e1
    sub e                                         ; $7782: $93
    nop                                           ; $7783: $00
    adc h                                         ; $7784: $8c
    ld d, a                                       ; $7785: $57
    ld c, b                                       ; $7786: $48
    sbc a                                         ; $7787: $9f
    ld c, [hl]                                    ; $7788: $4e
    adc [hl]                                      ; $7789: $8e
    rst $10                                       ; $778a: $d7
    sbc [hl]                                      ; $778b: $9e
    nop                                           ; $778c: $00
    ld d, [hl]                                    ; $778d: $56
    add c                                         ; $778e: $81
    ld b, c                                       ; $778f: $41
    and b                                         ; $7790: $a0
    and a                                         ; $7791: $a7
    jr nc, jr_0ac_7718                            ; $7792: $30 $84

    and b                                         ; $7794: $a0
    nop                                           ; $7795: $00
    and a                                         ; $7796: $a7
    ld h, b                                       ; $7797: $60
    cpl                                           ; $7798: $2f
    ld h, b                                       ; $7799: $60
    ld c, a                                       ; $779a: $4f
    ld b, b                                       ; $779b: $40
    ld c, a                                       ; $779c: $4f
    ret nz                                        ; $779d: $c0

    nop                                           ; $779e: $00
    ld c, a                                       ; $779f: $4f
    add b                                         ; $77a0: $80
    sbc a                                         ; $77a1: $9f
    jr nz, jr_0ac_77c3                            ; $77a2: $20 $1f

    ld h, b                                       ; $77a4: $60
    ld e, a                                       ; $77a5: $5f
    ld [bc], a                                    ; $77a6: $02
    inc b                                         ; $77a7: $04
    ld bc, $0301                                  ; $77a8: $01 $01 $03
    ld bc, $0202                                  ; $77ab: $01 $02 $02
    nop                                           ; $77ae: $00
    rlca                                          ; $77af: $07
    ld [bc], a                                    ; $77b0: $02
    nop                                           ; $77b1: $00

jr_0ac_77b2:
    rlca                                          ; $77b2: $07
    dec b                                         ; $77b3: $05
    ld a, [bc]                                    ; $77b4: $0a
    ei                                            ; $77b5: $fb
    inc b                                         ; $77b6: $04
    ld [$000b], sp                                ; $77b7: $08 $0b $00
    nop                                           ; $77ba: $00
    ld b, b                                       ; $77bb: $40
    add c                                         ; $77bc: $81
    ld bc, $928a                                  ; $77bd: $01 $8a $92
    db $d3                                        ; $77c0: $d3
    ld c, e                                       ; $77c1: $4b
    ld [de], a                                    ; $77c2: $12

jr_0ac_77c3:
    nop                                           ; $77c3: $00
    ld b, c                                       ; $77c4: $41
    add e                                         ; $77c5: $83
    daa                                           ; $77c6: $27
    ld b, d                                       ; $77c7: $42
    ld b, c                                       ; $77c8: $41
    ld h, e                                       ; $77c9: $63
    ld [hl], a                                    ; $77ca: $77
    ldh [rP1], a                                  ; $77cb: $e0 $00
    rst $30                                       ; $77cd: $f7
    ld [hl], b                                    ; $77ce: $70
    or e                                          ; $77cf: $b3
    db $e4                                        ; $77d0: $e4
    sbc b                                         ; $77d1: $98
    add hl, sp                                    ; $77d2: $39
    ld h, $0f                                     ; $77d3: $26 $0f
    nop                                           ; $77d5: $00
    rlca                                          ; $77d6: $07
    nop                                           ; $77d7: $00
    inc bc                                        ; $77d8: $03
    and b                                         ; $77d9: $a0
    nop                                           ; $77da: $00
    db $fc                                        ; $77db: $fc
    nop                                           ; $77dc: $00
    ld a, h                                       ; $77dd: $7c
    nop                                           ; $77de: $00
    rst $38                                       ; $77df: $ff
    jr nc, jr_0ac_77b2                            ; $77e0: $30 $d0

    ld [$3f07], sp                                ; $77e2: $08 $07 $3f
    rst $18                                       ; $77e5: $df
    sbc a                                         ; $77e6: $9f
    nop                                           ; $77e7: $00
    rst $08                                       ; $77e8: $cf
    adc b                                         ; $77e9: $88
    add a                                         ; $77ea: $87
    inc b                                         ; $77eb: $04
    rlca                                          ; $77ec: $07
    ld sp, $c1c2                                  ; $77ed: $31 $c2 $c1
    nop                                           ; $77f0: $00
    ld b, [hl]                                    ; $77f1: $46
    sub $18                                       ; $77f2: $d6 $18
    adc [hl]                                      ; $77f4: $8e
    ld [hl], d                                    ; $77f5: $72
    ld hl, sp-$1f                                 ; $77f6: $f8 $e1
    ret nz                                        ; $77f8: $c0

    nop                                           ; $77f9: $00
    add c                                         ; $77fa: $81
    add e                                         ; $77fb: $83
    inc bc                                        ; $77fc: $03
    ld [bc], a                                    ; $77fd: $02
    dec b                                         ; $77fe: $05
    ld h, b                                       ; $77ff: $60
    ld d, b                                       ; $7800: $50
    ld h, b                                       ; $7801: $60
    nop                                           ; $7802: $00
    ld b, c                                       ; $7803: $41
    ld bc, $0101                                  ; $7804: $01 $01 $01
    and b                                         ; $7807: $a0
    or b                                          ; $7808: $b0
    ld de, $00e0                                  ; $7809: $11 $e0 $00
    pop bc                                        ; $780c: $c1
    ld h, h                                       ; $780d: $64
    ld [bc], a                                    ; $780e: $02
    ld b, h                                       ; $780f: $44
    xor $c0                                       ; $7810: $ee $c0
    add b                                         ; $7812: $80
    ld b, b                                       ; $7813: $40
    ld de, $4080                                  ; $7814: $11 $80 $40
    ret nz                                        ; $7817: $c0

    jp nz, $8001                                  ; $7818: $c2 $01 $80

    add b                                         ; $781b: $80
    nop                                           ; $781c: $00
    ret z                                         ; $781d: $c8

    add hl, bc                                    ; $781e: $09
    ld d, b                                       ; $781f: $50
    cp $42                                        ; $7820: $fe $42
    nop                                           ; $7822: $00
    rst $38                                       ; $7823: $ff
    and l                                         ; $7824: $a5
    ld b, d                                       ; $7825: $42
    and b                                         ; $7826: $a0
    ld bc, $0160                                  ; $7827: $01 $60 $01
    nop                                           ; $782a: $00
    ld h, b                                       ; $782b: $60
    ld c, h                                       ; $782c: $4c
    rlca                                          ; $782d: $07

Call_0ac_782e:
    ld [hl], c                                    ; $782e: $71
    nop                                           ; $782f: $00
    ld [hl], b                                    ; $7830: $70
    ld hl, $001e                                  ; $7831: $21 $1e $00
    jr c, jr_0ac_785d                             ; $7834: $38 $27

    rrca                                          ; $7836: $0f
    inc sp                                        ; $7837: $33
    rra                                           ; $7838: $1f
    sbc c                                         ; $7839: $99
    cp a                                          ; $783a: $bf
    ld l, [hl]                                    ; $783b: $6e
    nop                                           ; $783c: $00
    add hl, de                                    ; $783d: $19
    reti                                          ; $783e: $d9


    ret                                           ; $783f: $c9


    ld a, a                                       ; $7840: $7f
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    db $e3                                        ; $7843: $e3
    inc hl                                        ; $7844: $23
    nop                                           ; $7845: $00
    ld sp, $0fc1                                  ; $7846: $31 $c1 $0f
    pop af                                        ; $7849: $f1
    ld hl, sp-$68                                 ; $784a: $f8 $98
    ld [$00d9], a                                 ; $784c: $ea $d9 $00
    ld e, h                                       ; $784f: $5c
    ld e, e                                       ; $7850: $5b
    inc de                                        ; $7851: $13
    dec e                                         ; $7852: $1d
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    pop hl                                        ; $7855: $e1
    ld a, a                                       ; $7856: $7f
    nop                                           ; $7857: $00
    ldh a, [$cf]                                  ; $7858: $f0 $cf
    inc e                                         ; $785a: $1c
    inc de                                        ; $785b: $13
    nop                                           ; $785c: $00

jr_0ac_785d:
    ret nz                                        ; $785d: $c0

    sub d                                         ; $785e: $92
    rra                                           ; $785f: $1f
    nop                                           ; $7860: $00
    ld e, $13                                     ; $7861: $1e $13
    ld bc, $0019                                  ; $7863: $01 $19 $00
    nop                                           ; $7866: $00
    ld a, [hl]                                    ; $7867: $7e
    db $d3                                        ; $7868: $d3
    nop                                           ; $7869: $00
    add e                                         ; $786a: $83
    ld b, h                                       ; $786b: $44
    rst $00                                       ; $786c: $c7

jr_0ac_786d:
    jp hl                                         ; $786d: $e9


    add a                                         ; $786e: $87
    ld c, [hl]                                    ; $786f: $4e
    ld d, l                                       ; $7870: $55
    call z, Call_000_1000                         ; $7871: $cc $00 $10
    or b                                          ; $7874: $b0
    ld [hl+], a                                   ; $7875: $22
    ld d, d                                       ; $7876: $52
    inc bc                                        ; $7877: $03
    dec c                                         ; $7878: $0d
    rst $20                                       ; $7879: $e7
    dec de                                        ; $787a: $1b
    ld [$f00c], sp                                ; $787b: $08 $0c $f0
    inc e                                         ; $787e: $1c
    db $e4                                        ; $787f: $e4
    nop                                           ; $7880: $00
    ld l, e                                       ; $7881: $6b
    db $10                                        ; $7882: $10
    inc bc                                        ; $7883: $03
    xor [hl]                                      ; $7884: $ae
    ld [bc], a                                    ; $7885: $02
    ld b, b                                       ; $7886: $40
    nop                                           ; $7887: $00
    ld bc, $fe18                                  ; $7888: $01 $18 $fe
    ld bc, $fdfc                                  ; $788b: $01 $fc $fd
    db $fc                                        ; $788e: $fc
    ld sp, hl                                     ; $788f: $f9
    nop                                           ; $7890: $00
    ld a, [$faf9]                                 ; $7891: $fa $f9 $fa
    ldh a, [rP1]                                  ; $7894: $f0 $00
    inc c                                         ; $7896: $0c
    dec bc                                        ; $7897: $0b
    inc hl                                        ; $7898: $23
    nop                                           ; $7899: $00
    inc e                                         ; $789a: $1c
    sub b                                         ; $789b: $90
    ldh [rBGP], a                                 ; $789c: $e0 $47
    add a                                         ; $789e: $87
    add b                                         ; $789f: $80
    rst $18                                       ; $78a0: $df
    add b                                         ; $78a1: $80
    nop                                           ; $78a2: $00
    ccf                                           ; $78a3: $3f
    adc [hl]                                      ; $78a4: $8e
    ld a, a                                       ; $78a5: $7f
    ld b, $01                                     ; $78a6: $06 $01
    ld [bc], a                                    ; $78a8: $02
    ld a, [$00f2]                                 ; $78a9: $fa $f2 $00
    ld a, [bc]                                    ; $78ac: $0a
    ld h, c                                       ; $78ad: $61
    dec bc                                        ; $78ae: $0b
    db $e3                                        ; $78af: $e3
    ld h, c                                       ; $78b0: $61
    add [hl]                                      ; $78b1: $86
    ld h, l                                       ; $78b2: $65
    xor $00                                       ; $78b3: $ee $00
    adc l                                         ; $78b5: $8d
    db $fc                                        ; $78b6: $fc
    ei                                            ; $78b7: $fb
    jp $03ff                                      ; $78b8: $c3 $ff $03


    dec e                                         ; $78bb: $1d
    ld bc, $4e00                                  ; $78bc: $01 $00 $4e
    add e                                         ; $78bf: $83
    or b                                          ; $78c0: $b0
    adc h                                         ; $78c1: $8c
    dec e                                         ; $78c2: $1d
    add d                                         ; $78c3: $82
    ld h, $a1                                     ; $78c4: $26 $a1
    db $10                                        ; $78c6: $10
    ccf                                           ; $78c7: $3f
    or b                                          ; $78c8: $b0
    ccf                                           ; $78c9: $3f
    ld b, b                                       ; $78ca: $40
    jr jr_0ac_790d                                ; $78cb: $18 $40

    add b                                         ; $78cd: $80
    ldh [rNR41], a                                ; $78ce: $e0 $20
    nop                                           ; $78d0: $00
    ld h, b                                       ; $78d1: $60
    ld [hl], b                                    ; $78d2: $70
    add b                                         ; $78d3: $80
    inc a                                         ; $78d4: $3c
    pop hl                                        ; $78d5: $e1
    dec c                                         ; $78d6: $0d
    nop                                           ; $78d7: $00
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    ld bc, $fe00                                  ; $78da: $01 $00 $fe
    rst $38                                       ; $78dd: $ff
    rst $28                                       ; $78de: $ef
    db $ec                                        ; $78df: $ec

Call_0ac_78e0:
    rla                                           ; $78e0: $17
    ld sp, $8e00                                  ; $78e1: $31 $00 $8e
    ldh [$80], a                                  ; $78e4: $e0 $80
    db $fc                                        ; $78e6: $fc
    ld h, $ce                                     ; $78e7: $26 $ce
    nop                                           ; $78e9: $00
    ld a, a                                       ; $78ea: $7f
    jr nc, jr_0ac_786d                            ; $78eb: $30 $80

    ld a, a                                       ; $78ed: $7f
    inc bc                                        ; $78ee: $03
    nop                                           ; $78ef: $00
    ld h, a                                       ; $78f0: $67
    jr nz, jr_0ac_78f3                            ; $78f1: $20 $00

jr_0ac_78f3:
    nop                                           ; $78f3: $00
    ld sp, hl                                     ; $78f4: $f9
    ld a, [$0100]                                 ; $78f5: $fa $00 $01
    db $fc                                        ; $78f8: $fc
    ld bc, $00fd                                  ; $78f9: $01 $fd $00
    db $fc                                        ; $78fc: $fc
    ld bc, $00fe                                  ; $78fd: $01 $fe $00
    ld bc, $0200                                  ; $7900: $01 $00 $02
    ld bc, $0201                                  ; $7903: $01 $01 $02
    or b                                          ; $7906: $b0
    ld a, b                                       ; $7907: $78
    nop                                           ; $7908: $00
    ld h, b                                       ; $7909: $60
    ldh [$1f], a                                  ; $790a: $e0 $1f
    add b                                         ; $790c: $80

jr_0ac_790d:
    ld [hl], b                                    ; $790d: $70
    ld a, a                                       ; $790e: $7f
    call z, $00e2                                 ; $790f: $cc $e2 $00
    add c                                         ; $7912: $81
    ld e, $5f                                     ; $7913: $1e $5f
    sub a                                         ; $7915: $97
    sbc a                                         ; $7916: $9f
    add b                                         ; $7917: $80
    dec b                                         ; $7918: $05
    ld [bc], a                                    ; $7919: $02
    nop                                           ; $791a: $00
    add hl, bc                                    ; $791b: $09
    ld b, $fe                                     ; $791c: $06 $fe
    ldh [$7e], a                                  ; $791e: $e0 $7e
    add d                                         ; $7920: $82
    ccf                                           ; $7921: $3f
    ld b, e                                       ; $7922: $43
    nop                                           ; $7923: $00
    inc e                                         ; $7924: $1c
    xor e                                         ; $7925: $ab
    ret nz                                        ; $7926: $c0

    add e                                         ; $7927: $83
    ld h, $20                                     ; $7928: $26 $20
    rra                                           ; $792a: $1f
    jr c, jr_0ac_792d                             ; $792b: $38 $00

jr_0ac_792d:
    rrca                                          ; $792d: $0f
    ld b, $77                                     ; $792e: $06 $77
    ld [hl], h                                    ; $7930: $74
    dec e                                         ; $7931: $1d
    sbc l                                         ; $7932: $9d
    ldh [$80], a                                  ; $7933: $e0 $80
    nop                                           ; $7935: $00
    sbc a                                         ; $7936: $9f
    ld [hl], b                                    ; $7937: $70
    sbc b                                         ; $7938: $98
    ld l, b                                       ; $7939: $68
    sub [hl]                                      ; $793a: $96
    ld h, [hl]                                    ; $793b: $66

jr_0ac_793c:
    db $f4                                        ; $793c: $f4
    dec b                                         ; $793d: $05
    nop                                           ; $793e: $00
    ld hl, sp+$02                                 ; $793f: $f8 $02
    ld b, $f6                                     ; $7941: $06 $f6
    dec c                                         ; $7943: $0d
    db $ec                                        ; $7944: $ec
    jr nc, @+$41                                  ; $7945: $30 $3f

    nop                                           ; $7947: $00
    cp a                                          ; $7948: $bf

jr_0ac_7949:
    ret nz                                        ; $7949: $c0

    rst $08                                       ; $794a: $cf
    ldh a, [$57]                                  ; $794b: $f0 $57
    ld a, a                                       ; $794d: $7f
    ld b, h                                       ; $794e: $44
    cp h                                          ; $794f: $bc
    nop                                           ; $7950: $00
    sbc h                                         ; $7951: $9c
    ld l, b                                       ; $7952: $68
    ld hl, sp+$40                                 ; $7953: $f8 $40
    ret nz                                        ; $7955: $c0

    ret z                                         ; $7956: $c8

    ld [hl], h                                    ; $7957: $74
    inc e                                         ; $7958: $1c
    inc bc                                        ; $7959: $03
    jp c, $831e                                   ; $795a: $da $1e $83

    adc h                                         ; $795d: $8c
    ld de, $6916                                  ; $795e: $11 $16 $69
    jr nc, jr_0ac_793c                            ; $7961: $30 $d9

    ld [$8000], sp                                ; $7963: $08 $00 $80
    ret nz                                        ; $7966: $c0

    ld b, b                                       ; $7967: $40
    dec b                                         ; $7968: $05
    ld b, $1c                                     ; $7969: $06 $1c
    dec b                                         ; $796b: $05
    inc a                                         ; $796c: $3c
    nop                                           ; $796d: $00
    dec b                                         ; $796e: $05
    add hl, bc                                    ; $796f: $09
    ld a, b                                       ; $7970: $78
    ld b, $f6                                     ; $7971: $06 $f6
    ldh [$ce], a                                  ; $7973: $e0 $ce
    ldh [rP1], a                                  ; $7975: $e0 $00
    rst $08                                       ; $7977: $cf
    ldh [$cf], a                                  ; $7978: $e0 $cf
    jr nc, @+$11                                  ; $797a: $30 $0f

    inc bc                                        ; $797c: $03
    inc a                                         ; $797d: $3c
    sbc e                                         ; $797e: $9b
    nop                                           ; $797f: $00
    daa                                           ; $7980: $27
    add a                                         ; $7981: $87
    add b                                         ; $7982: $80
    sub d                                         ; $7983: $92
    ret nz                                        ; $7984: $c0

    jp nz, $490c                                  ; $7985: $c2 $0c $49

    nop                                           ; $7988: $00
    inc c                                         ; $7989: $0c
    ld hl, $137e                                  ; $798a: $21 $7e $13
    db $d3                                        ; $798d: $d3
    jp hl                                         ; $798e: $e9


    ldh [rNR14], a                                ; $798f: $e0 $14
    nop                                           ; $7991: $00
    ldh [rNR21], a                                ; $7992: $e0 $16
    nop                                           ; $7994: $00
    adc e                                         ; $7995: $8b
    ldh [$c5], a                                  ; $7996: $e0 $c5
    ldh a, [$4e]                                  ; $7998: $f0 $4e

jr_0ac_799a:
    nop                                           ; $799a: $00
    ld b, b                                       ; $799b: $40
    cp $00                                        ; $799c: $fe $00
    ei                                            ; $799e: $fb
    dec de                                        ; $799f: $1b
    ld b, c                                       ; $79a0: $41
    reti                                          ; $79a1: $d9


    call z, Call_0ac_6c00                         ; $79a2: $cc $00 $6c
    ld l, h                                       ; $79a5: $6c
    adc l                                         ; $79a6: $8d
    ld d, e                                       ; $79a7: $53
    cpl                                           ; $79a8: $2f
    adc e                                         ; $79a9: $8b
    ccf                                           ; $79aa: $3f
    sub h                                         ; $79ab: $94
    nop                                           ; $79ac: $00
    sub l                                         ; $79ad: $95
    ld e, c                                       ; $79ae: $59
    ld c, h                                       ; $79af: $4c
    sbc a                                         ; $79b0: $9f
    ccf                                           ; $79b1: $3f
    rst $08                                       ; $79b2: $cf
    rra                                           ; $79b3: $1f
    ldh [rP1], a                                  ; $79b4: $e0 $00
    ld c, $74                                     ; $79b6: $0e $74
    ld b, $b0                                     ; $79b8: $06 $b0
    ld sp, $5bd8                                  ; $79ba: $31 $d8 $5b
    ret nz                                        ; $79bd: $c0

    nop                                           ; $79be: $00
    add e                                         ; $79bf: $83
    ret nz                                        ; $79c0: $c0

    add a                                         ; $79c1: $87
    pop bc                                        ; $79c2: $c1
    ret c                                         ; $79c3: $d8

    ret nz                                        ; $79c4: $c0

    sbc $1f                                       ; $79c5: $de $1f
    jr z, jr_0ac_7949                             ; $79c7: $28 $80

    ld a, a                                       ; $79c9: $7f
    ld hl, sp+$00                                 ; $79ca: $f8 $00
    add b                                         ; $79cc: $80
    ld a, [$a018]                                 ; $79cd: $fa $18 $a0
    jr c, jr_0ac_799a                             ; $79d0: $38 $c8

    nop                                           ; $79d2: $00
    inc [hl]                                      ; $79d3: $34
    ld c, b                                       ; $79d4: $48
    sbc b                                         ; $79d5: $98
    add [hl]                                      ; $79d6: $86
    rlca                                          ; $79d7: $07
    db $e3                                        ; $79d8: $e3
    rlca                                          ; $79d9: $07
    pop af                                        ; $79da: $f1
    nop                                           ; $79db: $00
    db $f4                                        ; $79dc: $f4
    inc bc                                        ; $79dd: $03
    db $f4                                        ; $79de: $f4
    rlca                                          ; $79df: $07
    ld h, b                                       ; $79e0: $60
    ld c, a                                       ; $79e1: $4f
    ld [hl], b                                    ; $79e2: $70
    rla                                           ; $79e3: $17
    ld [bc], a                                    ; $79e4: $02
    ld [hl], b                                    ; $79e5: $70
    rla                                           ; $79e6: $17
    rlca                                          ; $79e7: $07
    jr nc, jr_0ac_79f5                            ; $79e8: $30 $0b

    jr c, @+$04                                   ; $79ea: $38 $02

    nop                                           ; $79ec: $00
    jr jr_0ac_79ef                                ; $79ed: $18 $00

jr_0ac_79ef:
    inc de                                        ; $79ef: $13
    jr @+$2f                                      ; $79f0: $18 $2d

    ld [hl], d                                    ; $79f2: $72
    dec d                                         ; $79f3: $15
    ld a, [hl-]                                   ; $79f4: $3a

jr_0ac_79f5:
    inc d                                         ; $79f5: $14
    dec sp                                        ; $79f6: $3b
    nop                                           ; $79f7: $00
    dec de                                        ; $79f8: $1b
    jp $e30b                                      ; $79f9: $c3 $0b $e3


    inc c                                         ; $79fc: $0c
    db $ec                                        ; $79fd: $ec
    ld c, $ec                                     ; $79fe: $0e $ec
    db $10                                        ; $7a00: $10
    rlca                                          ; $7a01: $07
    inc c                                         ; $7a02: $0c
    rst $38                                       ; $7a03: $ff
    ld [hl], c                                    ; $7a04: $71
    add hl, de                                    ; $7a05: $19
    rst $38                                       ; $7a06: $ff
    ld hl, $0f1f                                  ; $7a07: $21 $1f $0f
    nop                                           ; $7a0a: $00
    ld e, $1f                                     ; $7a0b: $1e $1f
    cp h                                          ; $7a0d: $bc
    ld a, a                                       ; $7a0e: $7f
    ld a, h                                       ; $7a0f: $7c
    ld sp, $1158                                  ; $7a10: $31 $58 $11
    nop                                           ; $7a13: $00
    xor b                                         ; $7a14: $a8
    ld d, l                                       ; $7a15: $55
    db $ec                                        ; $7a16: $ec
    add hl, hl                                    ; $7a17: $29
    db $f4                                        ; $7a18: $f4
    dec e                                         ; $7a19: $1d
    call nc, Call_000_001c                        ; $7a1a: $d4 $1c $00
    call nc, Call_000_1ec2                        ; $7a1d: $d4 $c2 $1e
    and b                                         ; $7a20: $a0

jr_0ac_7a21:
    ld c, $d0                                     ; $7a21: $0e $d0
    add a                                         ; $7a23: $87
    ret nc                                        ; $7a24: $d0

    nop                                           ; $7a25: $00
    rst $00                                       ; $7a26: $c7
    add sp, $2b                                   ; $7a27: $e8 $2b
    add sp, $0b                                   ; $7a29: $e8 $0b

jr_0ac_7a2b:
    add sp, $0b                                   ; $7a2b: $e8 $0b
    db $ec                                        ; $7a2d: $ec
    nop                                           ; $7a2e: $00
    dec c                                         ; $7a2f: $0d
    pop hl                                        ; $7a30: $e1
    dec d                                         ; $7a31: $15
    ldh [rNR14], a                                ; $7a32: $e0 $14
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    adc b                                         ; $7a36: $88
    sub b                                         ; $7a37: $90
    and e                                         ; $7a38: $a3
    ld de, $6a10                                  ; $7a39: $11 $10 $6a
    ld a, [hl-]                                   ; $7a3c: $3a
    ld [$00ff], sp                                ; $7a3d: $08 $ff $00
    ld a, [c]                                     ; $7a40: $f2
    ld b, $00                                     ; $7a41: $06 $00
    ld [$e80e], a                                 ; $7a43: $ea $0e $e8
    ld c, $e8                                     ; $7a46: $0e $e8
    inc c                                         ; $7a48: $0c
    call nc, RST_18                               ; $7a49: $d4 $18 $00
    ret nc                                        ; $7a4c: $d0

    inc e                                         ; $7a4d: $1c
    ret nc                                        ; $7a4e: $d0

    jr jr_0ac_7a21                                ; $7a4f: $18 $d0

    jr @+$13                                      ; $7a51: $18 $11

    inc e                                         ; $7a53: $1c
    nop                                           ; $7a54: $00

jr_0ac_7a55:
    dec b                                         ; $7a55: $05
    inc e                                         ; $7a56: $1c

jr_0ac_7a57:
    dec b                                         ; $7a57: $05
    inc c                                         ; $7a58: $0c
    inc c                                         ; $7a59: $0c
    ld b, $0c                                     ; $7a5a: $06 $0c
    ld b, $00                                     ; $7a5c: $06 $00
    ld b, $02                                     ; $7a5e: $06 $02
    ld b, $03                                     ; $7a60: $06 $03
    inc bc                                        ; $7a62: $03
    ld b, $07                                     ; $7a63: $06 $07
    inc c                                         ; $7a65: $0c
    add b                                         ; $7a66: $80
    ld [bc], a                                    ; $7a67: $02
    jr nz, jr_0ac_7ae6                            ; $7a68: $20 $7c

    ld h, e                                       ; $7a6a: $63
    ld l, h                                       ; $7a6b: $6c
    add e                                         ; $7a6c: $83
    db $ec                                        ; $7a6d: $ec
    rst $28                                       ; $7a6e: $ef
    ret z                                         ; $7a6f: $c8

    nop                                           ; $7a70: $00
    ld a, $b9                                     ; $7a71: $3e $b9
    sub b                                         ; $7a73: $90
    inc e                                         ; $7a74: $1c
    and b                                         ; $7a75: $a0
    ld bc, $23b0                                  ; $7a76: $01 $b0 $23
    jr nz, jr_0ac_7a2b                            ; $7a79: $20 $b0

    inc hl                                        ; $7a7b: $23
    inc bc                                        ; $7a7c: $03

jr_0ac_7a7d:
    nop                                           ; $7a7d: $00
    jr nc, jr_0ac_7aa3                            ; $7a7e: $30 $23

jr_0ac_7a80:
    ld l, b                                       ; $7a80: $68
    ld c, $6a                                     ; $7a81: $0e $6a

Jump_0ac_7a83:
    inc h                                         ; $7a83: $24
    ld c, $ea                                     ; $7a84: $0e $ea
    ld [bc], a                                    ; $7a86: $02
    ld [$e82e], sp                                ; $7a87: $08 $2e $e8
    ld [bc], a                                    ; $7a8a: $02
    jr jr_0ac_7a7d                                ; $7a8b: $18 $f0

    add $00                                       ; $7a8d: $c6 $00
    ret nc                                        ; $7a8f: $d0

    db $eb                                        ; $7a90: $eb
    ret c                                         ; $7a91: $d8

    ld h, e                                       ; $7a92: $63
    ret c                                         ; $7a93: $d8

    ld l, e                                       ; $7a94: $6b
    or l                                          ; $7a95: $b5
    ld l, l                                       ; $7a96: $6d
    nop                                           ; $7a97: $00
    or l                                          ; $7a98: $b5
    ld l, c                                       ; $7a99: $69
    sbc h                                         ; $7a9a: $9c
    db $fc                                        ; $7a9b: $fc

Jump_0ac_7a9c:
    cp [hl]                                       ; $7a9c: $be
    call c, $d3ff                                 ; $7a9d: $dc $ff $d3
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    ld a, a                                       ; $7aa2: $7f

jr_0ac_7aa3:
    ld a, a                                       ; $7aa3: $7f
    nop                                           ; $7aa4: $00
    ccf                                           ; $7aa5: $3f
    add d                                         ; $7aa6: $82
    ld e, a                                       ; $7aa7: $5f
    ret nz                                        ; $7aa8: $c0

    nop                                           ; $7aa9: $00
    cpl                                           ; $7aaa: $2f
    ldh [$f4], a                                  ; $7aab: $e0 $f4
    ldh a, [rP1]                                  ; $7aad: $f0 $00
    inc bc                                        ; $7aaf: $03
    jr c, @-$5e                                   ; $7ab0: $38 $a0

    nop                                           ; $7ab2: $00
    jr c, jr_0ac_7a55                             ; $7ab3: $38 $a0

    jr nc, jr_0ac_7a57                            ; $7ab5: $30 $a0

    ld [hl], b                                    ; $7ab7: $70
    ld h, b                                       ; $7ab8: $60
    ld h, b                                       ; $7ab9: $60
    ld e, a                                       ; $7aba: $5f
    nop                                           ; $7abb: $00
    ld h, b                                       ; $7abc: $60
    ld e, a                                       ; $7abd: $5f
    jr nz, jr_0ac_7a80                            ; $7abe: $20 $c0

    ret nz                                        ; $7ac0: $c0

    ret nz                                        ; $7ac1: $c0

    inc bc                                        ; $7ac2: $03
    ld [bc], a                                    ; $7ac3: $02
    inc b                                         ; $7ac4: $04
    ld b, $05                                     ; $7ac5: $06 $05
    ld b, $05                                     ; $7ac7: $06 $05
    inc bc                                        ; $7ac9: $03
    ld [bc], a                                    ; $7aca: $02
    nop                                           ; $7acb: $00
    ld bc, $8002                                  ; $7acc: $01 $02 $80
    ld [bc], a                                    ; $7acf: $02
    ld [$18cf], sp                                ; $7ad0: $08 $cf $18
    sbc $18                                       ; $7ad3: $de $18
    sbc [hl]                                      ; $7ad5: $9e
    jr nc, @-$20                                  ; $7ad6: $30 $de

    nop                                           ; $7ad8: $00
    ldh [$7f], a                                  ; $7ad9: $e0 $7f
    inc bc                                        ; $7adb: $03
    dec c                                         ; $7adc: $0d
    ld sp, hl                                     ; $7add: $f9
    dec bc                                        ; $7ade: $0b
    pop af                                        ; $7adf: $f1
    ld a, [c]                                     ; $7ae0: $f2
    nop                                           ; $7ae1: $00
    adc a                                         ; $7ae2: $8f
    ld b, e                                       ; $7ae3: $43
    ld l, b                                       ; $7ae4: $68
    ld b, e                                       ; $7ae5: $43

jr_0ac_7ae6:
    cp e                                          ; $7ae6: $bb
    ld b, a                                       ; $7ae7: $47
    or e                                          ; $7ae8: $b3
    ldh [rP1], a                                  ; $7ae9: $e0 $00
    daa                                           ; $7aeb: $27
    ret z                                         ; $7aec: $c8

    ld c, a                                       ; $7aed: $4f
    adc $40                                       ; $7aee: $ce $40
    adc h                                         ; $7af0: $8c
    add c                                         ; $7af1: $81
    add e                                         ; $7af2: $83
    nop                                           ; $7af3: $00
    adc c                                         ; $7af4: $89
    inc l                                         ; $7af5: $2c
    add sp, $1f                                   ; $7af6: $e8 $1f
    ret c                                         ; $7af8: $d8

    add $d9                                       ; $7af9: $c6 $d9
    add [hl]                                      ; $7afb: $86
    nop                                           ; $7afc: $00

jr_0ac_7afd:
    cp b                                          ; $7afd: $b8
    ld b, l                                       ; $7afe: $45
    ld a, e                                       ; $7aff: $7b
    add a                                         ; $7b00: $87
    ld hl, sp+$7e                                 ; $7b01: $f8 $7e
    ld [hl], b                                    ; $7b03: $70
    ld a, h                                       ; $7b04: $7c
    nop                                           ; $7b05: $00
    pop af                                        ; $7b06: $f1
    ld a, $80                                     ; $7b07: $3e $80
    db $fc                                        ; $7b09: $fc
    pop bc                                        ; $7b0a: $c1
    ld a, b                                       ; $7b0b: $78
    inc bc                                        ; $7b0c: $03
    ldh a, [rP1]                                  ; $7b0d: $f0 $00
    add a                                         ; $7b0f: $87
    db $ed                                        ; $7b10: $ed
    ld c, $0f                                     ; $7b11: $0e $0f
    inc c                                         ; $7b13: $0c
    rla                                           ; $7b14: $17
    ldh a, [$7b]                                  ; $7b15: $f0 $7b
    nop                                           ; $7b17: $00
    ret z                                         ; $7b18: $c8

    rlca                                          ; $7b19: $07
    rlca                                          ; $7b1a: $07
    di                                            ; $7b1b: $f3
    ld a, [$c833]                                 ; $7b1c: $fa $33 $c8
    rst $38                                       ; $7b1f: $ff
    nop                                           ; $7b20: $00
    ld b, $c4                                     ; $7b21: $06 $c4
    dec a                                         ; $7b23: $3d
    or a                                          ; $7b24: $b7
    ld e, [hl]                                    ; $7b25: $5e
    add $89                                       ; $7b26: $c6 $89
    add b                                         ; $7b28: $80
    db $10                                        ; $7b29: $10
    ld a, e                                       ; $7b2a: $7b
    jr nc, jr_0ac_7afd                            ; $7b2b: $30 $d0

    ld [bc], a                                    ; $7b2d: $02
    ld [$9070], sp                                ; $7b2e: $08 $70 $90
    ld [hl], b                                    ; $7b31: $70
    ret nc                                        ; $7b32: $d0

    inc bc                                        ; $7b33: $03
    ldh a, [$90]                                  ; $7b34: $f0 $90
    ldh [$30], a                                  ; $7b36: $e0 $30
    ret nz                                        ; $7b38: $c0

    jr nz, jr_0ac_7b8a                            ; $7b39: $20 $4f

    ld [bc], a                                    ; $7b3b: $02
    db $d3                                        ; $7b3c: $d3
    ld d, c                                       ; $7b3d: $51
    nop                                           ; $7b3e: $00
    db $fc                                        ; $7b3f: $fc
    ld c, [hl]                                    ; $7b40: $4e
    ld a, [hl]                                    ; $7b41: $7e
    ld b, d                                       ; $7b42: $42
    ld [$8509], sp                                ; $7b43: $08 $09 $85
    or $00                                        ; $7b46: $f6 $00
    add b                                         ; $7b48: $80
    ldh a, [rNR42]                                ; $7b49: $f0 $21
    ld e, $38                                     ; $7b4b: $1e $38
    daa                                           ; $7b4d: $27
    rrca                                          ; $7b4e: $0f
    inc sp                                        ; $7b4f: $33
    nop                                           ; $7b50: $00
    ld h, a                                       ; $7b51: $67
    ld bc, $8579                                  ; $7b52: $01 $79 $85
    ld [hl], e                                    ; $7b55: $73
    adc e                                         ; $7b56: $8b
    add a                                         ; $7b57: $87
    ldh a, [rP1]                                  ; $7b58: $f0 $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    db $e3                                        ; $7b5c: $e3
    inc hl                                        ; $7b5d: $23
    ld sp, $0fc1                                  ; $7b5e: $31 $c1 $0f
    pop af                                        ; $7b61: $f1
    nop                                           ; $7b62: $00
    adc c                                         ; $7b63: $89
    pop af                                        ; $7b64: $f1
    add hl, sp                                    ; $7b65: $39
    db $e3                                        ; $7b66: $e3
    add hl, de                                    ; $7b67: $19
    db $e3                                        ; $7b68: $e3
    dec a                                         ; $7b69: $3d
    pop bc                                        ; $7b6a: $c1
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
    nop                                           ; $7b6d: $00
    pop hl                                        ; $7b6e: $e1
    ld a, a                                       ; $7b6f: $7f
    ldh a, [$cf]                                  ; $7b70: $f0 $cf
    inc e                                         ; $7b72: $1c
    inc de                                        ; $7b73: $13
    nop                                           ; $7b74: $00
    pop af                                        ; $7b75: $f1
    cp c                                          ; $7b76: $b9
    ldh [$35], a                                  ; $7b77: $e0 $35
    ldh [rKEY1], a                                ; $7b79: $e0 $4d
    ret nz                                        ; $7b7b: $c0

    db $fd                                        ; $7b7c: $fd
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    ld a, [hl]                                    ; $7b80: $7e
    db $d3                                        ; $7b81: $d3
    add e                                         ; $7b82: $83
    ld b, h                                       ; $7b83: $44
    rst $00                                       ; $7b84: $c7
    jp hl                                         ; $7b85: $e9


    nop                                           ; $7b86: $00
    ld a, e                                       ; $7b87: $7b
    ei                                            ; $7b88: $fb
    rst $30                                       ; $7b89: $f7

jr_0ac_7b8a:
    ld [hl], e                                    ; $7b8a: $73
    add hl, bc                                    ; $7b8b: $09
    rst $38                                       ; $7b8c: $ff
    ld e, $fc                                     ; $7b8d: $1e $fc
    nop                                           ; $7b8f: $00
    inc bc                                        ; $7b90: $03
    dec c                                         ; $7b91: $0d
    rst $20                                       ; $7b92: $e7
    dec de                                        ; $7b93: $1b
    inc c                                         ; $7b94: $0c
    ldh a, [rNR32]                                ; $7b95: $f0 $1c
    db $e4                                        ; $7b97: $e4
    inc c                                         ; $7b98: $0c
    ret nz                                        ; $7b99: $c0

    ld h, b                                       ; $7b9a: $60
    add b                                         ; $7b9b: $80
    ld b, b                                       ; $7b9c: $40
    jp z, $0a19                                   ; $7b9d: $ca $19 $0a

    dec de                                        ; $7ba0: $1b
    db $10                                        ; $7ba1: $10
    inc bc                                        ; $7ba2: $03
    or l                                          ; $7ba3: $b5
    ld [bc], a                                    ; $7ba4: $02
    ld d, b                                       ; $7ba5: $50
    nop                                           ; $7ba6: $00
    ld bc, $0150                                  ; $7ba7: $01 $50 $01
    inc b                                         ; $7baa: $04
    db $10                                        ; $7bab: $10
    rlca                                          ; $7bac: $07
    nop                                           ; $7bad: $00
    inc bc                                        ; $7bae: $03
    inc c                                         ; $7baf: $0c
    nop                                           ; $7bb0: $00
    rrca                                          ; $7bb1: $0f
    inc sp                                        ; $7bb2: $33
    rra                                           ; $7bb3: $1f
    ld h, b                                       ; $7bb4: $60
    ccf                                           ; $7bb5: $3f
    rst $00                                       ; $7bb6: $c7
    ld [hl], b                                    ; $7bb7: $70
    ld a, h                                       ; $7bb8: $7c
    nop                                           ; $7bb9: $00
    rlca                                          ; $7bba: $07
    ldh a, [rDIV]                                 ; $7bbb: $f0 $04
    inc bc                                        ; $7bbd: $03
    adc b                                         ; $7bbe: $88
    ld hl, sp-$7c                                 ; $7bbf: $f8 $84

jr_0ac_7bc1:
    ld a, h                                       ; $7bc1: $7c
    nop                                           ; $7bc2: $00
    ld sp, hl                                     ; $7bc3: $f9
    rrca                                          ; $7bc4: $0f
    nop                                           ; $7bc5: $00
    rst $38                                       ; $7bc6: $ff
    add a                                         ; $7bc7: $87
    inc bc                                        ; $7bc8: $03
    inc h                                         ; $7bc9: $24
    add hl, de                                    ; $7bca: $19
    nop                                           ; $7bcb: $00
    add a                                         ; $7bcc: $87
    inc bc                                        ; $7bcd: $03
    sub c                                         ; $7bce: $91
    ld h, c                                       ; $7bcf: $61
    call z, Call_000_2638                         ; $7bd0: $cc $38 $26
    ld e, $00                                     ; $7bd3: $1e $00
    sbc b                                         ; $7bd5: $98
    adc a                                         ; $7bd6: $8f
    ret z                                         ; $7bd7: $c8

    rst $00                                       ; $7bd8: $c7
    and $e7                                       ; $7bd9: $e6 $e7
    inc sp                                        ; $7bdb: $33
    pop af                                        ; $7bdc: $f1
    nop                                           ; $7bdd: $00
    ret nz                                        ; $7bde: $c0

    jr nz, jr_0ac_7bc1                            ; $7bdf: $20 $e0

    cp a                                          ; $7be1: $bf
    inc hl                                        ; $7be2: $23

jr_0ac_7be3:
    rst $30                                       ; $7be3: $f7
    daa                                           ; $7be4: $27
    ld [hl], e                                    ; $7be5: $73
    nop                                           ; $7be6: $00
    ld h, e                                       ; $7be7: $63
    ld e, b                                       ; $7be8: $58
    ld [hl+], a                                   ; $7be9: $22
    sbc d                                         ; $7bea: $9a
    ld sp, $15b9                                  ; $7beb: $31 $b9 $15
    sbc c                                         ; $7bee: $99

jr_0ac_7bef:
    nop                                           ; $7bef: $00
    nop                                           ; $7bf0: $00
    nop                                           ; $7bf1: $00
    add b                                         ; $7bf2: $80
    nop                                           ; $7bf3: $00
    add b                                         ; $7bf4: $80
    ldh [$e0], a                                  ; $7bf5: $e0 $e0
    jr jr_0ac_7bf9                                ; $7bf7: $18 $00

jr_0ac_7bf9:
    add b                                         ; $7bf9: $80
    ld a, [hl]                                    ; $7bfa: $7e
    ld a, [hl]                                    ; $7bfb: $7e
    cp l                                          ; $7bfc: $bd
    ld h, e                                       ; $7bfd: $63
    ld h, d                                       ; $7bfe: $62
    ld h, e                                       ; $7bff: $63
    inc e                                         ; $7c00: $1c
    call nz, Call_000_3860                        ; $7c01: $c4 $60 $38
    jr jr_0ac_7c06                                ; $7c04: $18 $00

jr_0ac_7c06:
    ld b, b                                       ; $7c06: $40
    add b                                         ; $7c07: $80
    ldh [$62], a                                  ; $7c08: $e0 $62
    nop                                           ; $7c0a: $00
    inc bc                                        ; $7c0b: $03
    ld bc, $0200                                  ; $7c0c: $01 $00 $02
    ld bc, $0307                                  ; $7c0f: $01 $07 $03
    ld b, $07                                     ; $7c12: $06 $07
    inc b                                         ; $7c14: $04
    ld b, $00                                     ; $7c15: $06 $00
    dec b                                         ; $7c17: $05
    rrca                                          ; $7c18: $0f
    ldh a, [$c2]                                  ; $7c19: $f0 $c2
    pop af                                        ; $7c1b: $f1
    add c                                         ; $7c1c: $81
    ld h, [hl]                                    ; $7c1d: $66
    ld d, e                                       ; $7c1e: $53
    nop                                           ; $7c1f: $00
    sbc h                                         ; $7c20: $9c
    ld hl, $429e                                  ; $7c21: $21 $9e $42
    ld a, h                                       ; $7c24: $7c
    add [hl]                                      ; $7c25: $86
    add [hl]                                      ; $7c26: $86
    inc l                                         ; $7c27: $2c
    nop                                           ; $7c28: $00
    db $d3                                        ; $7c29: $d3
    rst $00                                       ; $7c2a: $c7
    dec sp                                        ; $7c2b: $3b
    pop bc                                        ; $7c2c: $c1
    cp $83                                        ; $7c2d: $fe $83
    ld a, a                                       ; $7c2f: $7f
    rra                                           ; $7c30: $1f
    nop                                           ; $7c31: $00
    add c                                         ; $7c32: $81
    ld a, [hl]                                    ; $7c33: $7e
    ld d, d                                       ; $7c34: $52
    nop                                           ; $7c35: $00
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    ldh [$1f], a                                  ; $7c38: $e0 $1f
    nop                                           ; $7c3a: $00
    ld h, b                                       ; $7c3b: $60
    ld a, h                                       ; $7c3c: $7c
    adc h                                         ; $7c3d: $8c
    adc e                                         ; $7c3e: $8b
    ld [hl], b                                    ; $7c3f: $70
    pop bc                                        ; $7c40: $c1
    ld e, b                                       ; $7c41: $58
    push hl                                       ; $7c42: $e5
    nop                                           ; $7c43: $00
    jr z, @+$64                                   ; $7c44: $28 $62

jr_0ac_7c46:
    ld b, [hl]                                    ; $7c46: $46
    ld a, [c]                                     ; $7c47: $f2
    ld l, c                                       ; $7c48: $69
    ld a, [$f984]                                 ; $7c49: $fa $84 $f9
    nop                                           ; $7c4c: $00
    dec b                                         ; $7c4d: $05
    inc bc                                        ; $7c4e: $03
    ei                                            ; $7c4f: $fb
    ld d, e                                       ; $7c50: $53
    jp z, $805b                                   ; $7c51: $ca $5b $80

    db $d3                                        ; $7c54: $d3
    nop                                           ; $7c55: $00
    xor a                                         ; $7c56: $af
    add e                                         ; $7c57: $83
    pop hl                                        ; $7c58: $e1
    jr jr_0ac_7bef                                ; $7c59: $18 $94

    ld h, [hl]                                    ; $7c5b: $66
    ld a, c                                       ; $7c5c: $79
    adc l                                         ; $7c5d: $8d
    nop                                           ; $7c5e: $00
    ret nc                                        ; $7c5f: $d0

    jr nc, jr_0ac_7be3                            ; $7c60: $30 $81

    rlca                                          ; $7c62: $07
    ld a, [bc]                                    ; $7c63: $0a
    inc bc                                        ; $7c64: $03
    pop af                                        ; $7c65: $f1
    ei                                            ; $7c66: $fb
    nop                                           ; $7c67: $00
    dec c                                         ; $7c68: $0d
    add b                                         ; $7c69: $80
    ld d, d                                       ; $7c6a: $52
    dec e                                         ; $7c6b: $1d
    ld a, [de]                                    ; $7c6c: $1a
    ld l, [hl]                                    ; $7c6d: $6e
    add hl, bc                                    ; $7c6e: $09
    ld h, h                                       ; $7c6f: $64
    nop                                           ; $7c70: $00
    ld l, l                                       ; $7c71: $6d
    ld a, l                                       ; $7c72: $7d
    ld [hl], h                                    ; $7c73: $74
    jr nc, jr_0ac_7c46                            ; $7c74: $30 $d0

    db $10                                        ; $7c76: $10
    ldh a, [$f0]                                  ; $7c77: $f0 $f0
    nop                                           ; $7c79: $00
    adc b                                         ; $7c7a: $88
    ld hl, sp-$0c                                 ; $7c7b: $f8 $f4
    add h                                         ; $7c7d: $84
    db $fc                                        ; $7c7e: $fc
    and $3a                                       ; $7c7f: $e6 $3a
    call c, $aa00                                 ; $7c81: $dc $00 $aa
    db $ec                                        ; $7c84: $ec
    sbc [hl]                                      ; $7c85: $9e
    inc b                                         ; $7c86: $04
    or $02                                        ; $7c87: $f6 $02
    rlca                                          ; $7c89: $07
    ld a, [bc]                                    ; $7c8a: $0a
    nop                                           ; $7c8b: $00
    rlca                                          ; $7c8c: $07
    rlca                                          ; $7c8d: $07
    dec e                                         ; $7c8e: $1d
    rlca                                          ; $7c8f: $07
    inc [hl]                                      ; $7c90: $34
    dec c                                         ; $7c91: $0d
    ld l, h                                       ; $7c92: $6c
    dec c                                         ; $7c93: $0d
    nop                                           ; $7c94: $00
    ld l, h                                       ; $7c95: $6c
    ld hl, $1f0f                                  ; $7c96: $21 $0f $1f
    dec e                                         ; $7c99: $1d
    inc a                                         ; $7c9a: $3c
    inc b                                         ; $7c9b: $04
    rra                                           ; $7c9c: $1f
    nop                                           ; $7c9d: $00
    ld hl, sp-$20                                 ; $7c9e: $f8 $e0
    add a                                         ; $7ca0: $87
    ei                                            ; $7ca1: $fb
    add e                                         ; $7ca2: $83
    ld a, h                                       ; $7ca3: $7c
    ld a, a                                       ; $7ca4: $7f
    dec e                                         ; $7ca5: $1d
    nop                                           ; $7ca6: $00
    ld a, $3c                                     ; $7ca7: $3e $3c
    and e                                         ; $7ca9: $a3
    cp a                                          ; $7caa: $bf
    ld b, a                                       ; $7cab: $47
    inc bc                                        ; $7cac: $03
    scf                                           ; $7cad: $37
    inc bc                                        ; $7cae: $03
    nop                                           ; $7caf: $00
    sbc l                                         ; $7cb0: $9d
    cp $f9                                        ; $7cb1: $fe $f9
    dec sp                                        ; $7cb3: $3b
    ld h, d                                       ; $7cb4: $62
    ret nz                                        ; $7cb5: $c0

    adc a                                         ; $7cb6: $8f
    ld a, l                                       ; $7cb7: $7d
    nop                                           ; $7cb8: $00
    inc c                                         ; $7cb9: $0c
    inc e                                         ; $7cba: $1c
    ld h, d                                       ; $7cbb: $62
    ld [c], a                                     ; $7cbc: $e2
    push hl                                       ; $7cbd: $e5
    db $ec                                        ; $7cbe: $ec
    pop hl                                        ; $7cbf: $e1
    db $ec                                        ; $7cc0: $ec
    nop                                           ; $7cc1: $00
    dec hl                                        ; $7cc2: $2b
    add $08                                       ; $7cc3: $c6 $08
    and e                                         ; $7cc5: $a3
    inc bc                                        ; $7cc6: $03
    ld h, d                                       ; $7cc7: $62
    ld b, $fa                                     ; $7cc8: $06 $fa
    nop                                           ; $7cca: $00
    ld b, c                                       ; $7ccb: $41
    jr jr_0ac_7cf1                                ; $7ccc: $18 $23

    db $e4                                        ; $7cce: $e4
    adc [hl]                                      ; $7ccf: $8e
    pop de                                        ; $7cd0: $d1
    sbc c                                         ; $7cd1: $99
    call nz, Call_000_1300                        ; $7cd2: $c4 $00 $13
    adc e                                         ; $7cd5: $8b
    rst $28                                       ; $7cd6: $ef
    ld b, a                                       ; $7cd7: $47
    ccf                                           ; $7cd8: $3f
    adc a                                         ; $7cd9: $8f
    ccf                                           ; $7cda: $3f
    xor [hl]                                      ; $7cdb: $ae
    nop                                           ; $7cdc: $00
    ld hl, $528c                                  ; $7cdd: $21 $8c $52
    ld [hl-], a                                   ; $7ce0: $32
    or d                                          ; $7ce1: $b2
    dec de                                        ; $7ce2: $1b
    jp nc, $001f                                  ; $7ce3: $d2 $1f $00

    call nz, $e40f                                ; $7ce6: $c4 $0f $e4
    rrca                                          ; $7ce9: $0f
    db $e4                                        ; $7cea: $e4
    rra                                           ; $7ceb: $1f
    sbc $cc                                       ; $7cec: $de $cc
    nop                                           ; $7cee: $00
    rra                                           ; $7cef: $1f
    ret z                                         ; $7cf0: $c8

jr_0ac_7cf1:
    rra                                           ; $7cf1: $1f
    db $ec                                        ; $7cf2: $ec
    ld a, [hl]                                    ; $7cf3: $7e
    ld l, h                                       ; $7cf4: $6c
    or $6c                                        ; $7cf5: $f6 $6c
    nop                                           ; $7cf7: $00
    sbc $6c                                       ; $7cf8: $de $6c
    ld e, [hl]                                    ; $7cfa: $5e
    ld l, h                                       ; $7cfb: $6c
    inc b                                         ; $7cfc: $04
    ld a, h                                       ; $7cfd: $7c
    inc c                                         ; $7cfe: $0c
    or $00                                        ; $7cff: $f6 $00
    adc d                                         ; $7d01: $8a
    and $1a                                       ; $7d02: $e6 $1a
    ld hl, $b00f                                  ; $7d04: $21 $0f $b0
    add a                                         ; $7d07: $87
    ret nc                                        ; $7d08: $d0

    nop                                           ; $7d09: $00
    rst $00                                       ; $7d0a: $c7
    ret nc                                        ; $7d0b: $d0

    rst $00                                       ; $7d0c: $c7
    ret c                                         ; $7d0d: $d8

    jp Jump_000_0308                              ; $7d0e: $c3 $08 $03


    inc e                                         ; $7d11: $1c
    nop                                           ; $7d12: $00
    rra                                           ; $7d13: $1f
    inc c                                         ; $7d14: $0c
    ld a, [hl-]                                   ; $7d15: $3a
    adc l                                         ; $7d16: $8d
    jp Jump_0ac_672f                              ; $7d17: $c3 $2f $67


    rrca                                          ; $7d1a: $0f
    nop                                           ; $7d1b: $00
    ld l, [hl]                                    ; $7d1c: $6e
    ld [hl], $90                                  ; $7d1d: $36 $90
    ld [hl], $80                                  ; $7d1f: $36 $80
    ld [hl-], a                                   ; $7d21: $32
    or d                                          ; $7d22: $b2
    ld a, [de]                                    ; $7d23: $1a
    nop                                           ; $7d24: $00
    ret nc                                        ; $7d25: $d0

    ld a, [de]                                    ; $7d26: $1a
    dec [hl]                                      ; $7d27: $35
    db $dd                                        ; $7d28: $dd
    and d                                         ; $7d29: $a2
    ret c                                         ; $7d2a: $d8

    or [hl]                                       ; $7d2b: $b6
    ld c, d                                       ; $7d2c: $4a
    nop                                           ; $7d2d: $00
    sbc [hl]                                      ; $7d2e: $9e
    ld e, $6d                                     ; $7d2f: $1e $6d
    ld [$1409], sp                                ; $7d31: $08 $09 $14
    or b                                          ; $7d34: $b0
    ld c, $00                                     ; $7d35: $0e $00
    bit 4, d                                      ; $7d37: $cb $62
    dec h                                         ; $7d39: $25
    jr nz, jr_0ac_7d69                            ; $7d3a: $20 $2d

    db $10                                        ; $7d3c: $10
    add [hl]                                      ; $7d3d: $86
    rst $08                                       ; $7d3e: $cf
    nop                                           ; $7d3f: $00
    ld e, c                                       ; $7d40: $59
    rst $00                                       ; $7d41: $c7
    ld [$6f08], sp                                ; $7d42: $08 $08 $6f
    add h                                         ; $7d45: $84
    inc hl                                        ; $7d46: $23
    scf                                           ; $7d47: $37
    nop                                           ; $7d48: $00
    add h                                         ; $7d49: $84
    ld de, $0dc2                                  ; $7d4a: $11 $c2 $0d
    ld hl, sp+$0f                                 ; $7d4d: $f8 $0f
    add $4e                                       ; $7d4f: $c6 $4e
    nop                                           ; $7d51: $00
    ld a, e                                       ; $7d52: $7b
    and b                                         ; $7d53: $a0
    ccf                                           ; $7d54: $3f
    add b                                         ; $7d55: $80
    ld b, a                                       ; $7d56: $47
    sub b                                         ; $7d57: $90
    ldh a, [rSVBK]                                ; $7d58: $f0 $70
    nop                                           ; $7d5a: $00
    sub h                                         ; $7d5b: $94
    ld [hl], b                                    ; $7d5c: $70
    sub [hl]                                      ; $7d5d: $96
    ld e, [hl]                                    ; $7d5e: $5e
    sub [hl]                                      ; $7d5f: $96
    ld e, [hl]                                    ; $7d60: $5e
    sbc [hl]                                      ; $7d61: $9e
    ld e, $00                                     ; $7d62: $1e $00
    sbc h                                         ; $7d64: $9c
    inc a                                         ; $7d65: $3c
    sbc l                                         ; $7d66: $9d
    ld a, [hl-]                                   ; $7d67: $3a
    add e                                         ; $7d68: $83

jr_0ac_7d69:
    ld a, b                                       ; $7d69: $78
    ld b, e                                       ; $7d6a: $43
    scf                                           ; $7d6b: $37
    nop                                           ; $7d6c: $00
    ld b, a                                       ; $7d6d: $47
    daa                                           ; $7d6e: $27
    ld b, a                                       ; $7d6f: $47
    add $3a                                       ; $7d70: $c6 $3a
    call nz, $1c3c                                ; $7d72: $c4 $3c $1c
    nop                                           ; $7d75: $00
    db $e4                                        ; $7d76: $e4
    inc a                                         ; $7d77: $3c
    call nz, $d3f0                                ; $7d78: $c4 $f0 $d3
    ldh [$87], a                                  ; $7d7b: $e0 $87
    rst $20                                       ; $7d7d: $e7
    nop                                           ; $7d7e: $00
    rlca                                          ; $7d7f: $07
    rst $00                                       ; $7d80: $c7
    rla                                           ; $7d81: $17
    ld [hl], $5b                                  ; $7d82: $36 $5b
    ld [hl+], a                                   ; $7d84: $22
    ld e, l                                       ; $7d85: $5d
    ld h, d                                       ; $7d86: $62
    inc b                                         ; $7d87: $04
    or a                                          ; $7d88: $b7
    ld [c], a                                     ; $7d89: $e2
    and [hl]                                      ; $7d8a: $a6
    ldh [$a2], a                                  ; $7d8b: $e0 $a2
    ld [bc], a                                    ; $7d8d: $02
    nop                                           ; $7d8e: $00
    and e                                         ; $7d8f: $a3
    ldh [rSB], a                                  ; $7d90: $e0 $01
    and c                                         ; $7d92: $a1
    rrca                                          ; $7d93: $0f
    db $10                                        ; $7d94: $10
    rrca                                          ; $7d95: $0f
    jr jr_0ac_7da7                                ; $7d96: $18 $0f

    add hl, de                                    ; $7d98: $19
    ld [bc], a                                    ; $7d99: $02
    nop                                           ; $7d9a: $00
    nop                                           ; $7d9b: $00
    inc de                                        ; $7d9c: $13
    rrca                                          ; $7d9d: $0f
    ld [c], a                                     ; $7d9e: $e2
    rrca                                          ; $7d9f: $0f
    ld h, h                                       ; $7da0: $64
    rrca                                          ; $7da1: $0f
    ld l, h                                       ; $7da2: $6c
    jr c, jr_0ac_7da5                             ; $7da3: $38 $00

jr_0ac_7da5:
    dec sp                                        ; $7da5: $3b
    dec e                                         ; $7da6: $1d

jr_0ac_7da7:
    ld b, c                                       ; $7da7: $41
    ld c, $68                                     ; $7da8: $0e $68
    inc de                                        ; $7daa: $13
    ld [hl], b                                    ; $7dab: $70
    dec c                                         ; $7dac: $0d
    nop                                           ; $7dad: $00
    ld e, h                                       ; $7dae: $5c
    ld b, $6e                                     ; $7daf: $06 $6e
    inc de                                        ; $7db1: $13
    ld h, a                                       ; $7db2: $67
    inc de                                        ; $7db3: $13
    ld l, e                                       ; $7db4: $6b
    jp nz, Jump_000_1b00                          ; $7db5: $c2 $00 $1b

    pop hl                                        ; $7db8: $e1
    ld [$7405], sp                                ; $7db9: $08 $05 $74
    nop                                           ; $7dbc: $00
    jr nc, @-$26                                  ; $7dbd: $30 $d8

    inc b                                         ; $7dbf: $04
    add e                                         ; $7dc0: $83
    ld [c], a                                     ; $7dc1: $e2
    ld b, c                                       ; $7dc2: $41
    inc sp                                        ; $7dc3: $33
    jr nc, @-$53                                  ; $7dc4: $30 $ab

    ld bc, $e096                                  ; $7dc6: $01 $96 $e0
    nop                                           ; $7dc9: $00
    sub [hl]                                      ; $7dca: $96
    ld h, d                                       ; $7dcb: $62
    ld [de], a                                    ; $7dcc: $12
    inc hl                                        ; $7dcd: $23
    inc de                                        ; $7dce: $13
    sub b                                         ; $7dcf: $90
    add b                                         ; $7dd0: $80
    ld b, b                                       ; $7dd1: $40
    nop                                           ; $7dd2: $00
    pop bc                                        ; $7dd3: $c1
    ld [c], a                                     ; $7dd4: $e2
    daa                                           ; $7dd5: $27
    nop                                           ; $7dd6: $00
    nop                                           ; $7dd7: $00
    rrca                                          ; $7dd8: $0f
    ld a, [hl]                                    ; $7dd9: $7e
    rra                                           ; $7dda: $1f
    nop                                           ; $7ddb: $00
    dec e                                         ; $7ddc: $1d
    nop                                           ; $7ddd: $00
    inc a                                         ; $7dde: $3c
    inc bc                                        ; $7ddf: $03
    ld h, c                                       ; $7de0: $61
    jr nz, @+$40                                  ; $7de1: $20 $3e

    and c                                         ; $7de3: $a1
    nop                                           ; $7de4: $00
    ld b, c                                       ; $7de5: $41
    sbc a                                         ; $7de6: $9f
    add b                                         ; $7de7: $80
    ld [$c770], sp                                ; $7de8: $08 $70 $c7
    rla                                           ; $7deb: $17
    adc a                                         ; $7dec: $8f
    nop                                           ; $7ded: $00
    cpl                                           ; $7dee: $2f
    jr nz, jr_0ac_7e00                            ; $7def: $20 $0f

    ld [hl], b                                    ; $7df1: $70
    rra                                           ; $7df2: $1f
    nop                                           ; $7df3: $00
    rrca                                          ; $7df4: $0f
    ldh [rP1], a                                  ; $7df5: $e0 $00
    rst $18                                       ; $7df7: $df
    rra                                           ; $7df8: $1f
    add b                                         ; $7df9: $80
    ccf                                           ; $7dfa: $3f
    nop                                           ; $7dfb: $00
    ldh a, [$91]                                  ; $7dfc: $f0 $91
    ld hl, sp+$00                                 ; $7dfe: $f8 $00

jr_0ac_7e00:
    adc c                                         ; $7e00: $89
    rst $38                                       ; $7e01: $ff
    rst $00                                       ; $7e02: $c7
    ld b, e                                       ; $7e03: $43

jr_0ac_7e04:
    ld a, h                                       ; $7e04: $7c
    ld l, e                                       ; $7e05: $6b
    ld d, [hl]                                    ; $7e06: $56
    ld e, $00                                     ; $7e07: $1e $00
    dec a                                         ; $7e09: $3d
    rrca                                          ; $7e0a: $0f
    rra                                           ; $7e0b: $1f
    rlca                                          ; $7e0c: $07
    dec bc                                        ; $7e0d: $0b
    rra                                           ; $7e0e: $1f
    ld e, b                                       ; $7e0f: $58
    ld a, $00                                     ; $7e10: $3e $00
    or b                                          ; $7e12: $b0
    ld a, l                                       ; $7e13: $7d
    ld h, b                                       ; $7e14: $60
    di                                            ; $7e15: $f3
    ei                                            ; $7e16: $fb
    and $87                                       ; $7e17: $e6 $87
    inc bc                                        ; $7e19: $03
    nop                                           ; $7e1a: $00
    dec c                                         ; $7e1b: $0d
    rra                                           ; $7e1c: $1f
    ldh [$fe], a                                  ; $7e1d: $e0 $fe
    pop bc                                        ; $7e1f: $c1
    ld c, $52                                     ; $7e20: $0e $52
    rlca                                          ; $7e22: $07
    nop                                           ; $7e23: $00
    ld l, c                                       ; $7e24: $69
    inc bc                                        ; $7e25: $03
    ld [hl], b                                    ; $7e26: $70
    ld sp, $1005                                  ; $7e27: $31 $05 $10
    ld b, $05                                     ; $7e2a: $06 $05
    nop                                           ; $7e2c: $00
    ld h, h                                       ; $7e2d: $64
    inc bc                                        ; $7e2e: $03
    ld [hl], b                                    ; $7e2f: $70
    ld a, h                                       ; $7e30: $7c
    add hl, bc                                    ; $7e31: $09
    inc c                                         ; $7e32: $0c
    add sp, $17                                   ; $7e33: $e8 $17
    nop                                           ; $7e35: $00
    ld [hl], c                                    ; $7e36: $71
    add b                                         ; $7e37: $80
    jr nc, @-$1a                                  ; $7e38: $30 $e4

    ld d, $92                                     ; $7e3a: $16 $92
    ld h, [hl]                                    ; $7e3c: $66
    ld d, d                                       ; $7e3d: $52
    nop                                           ; $7e3e: $00
    ld h, $e2                                     ; $7e3f: $26 $e2
    ld b, $e8                                     ; $7e41: $06 $e8
    ld [$0f10], sp                                ; $7e43: $08 $10 $0f
    sbc b                                         ; $7e46: $98
    nop                                           ; $7e47: $00
    ldh [rTAC], a                                 ; $7e48: $e0 $07
    inc b                                         ; $7e4a: $04
    add a                                         ; $7e4b: $87
    ld a, [$c4f0]                                 ; $7e4c: $fa $f0 $c4
    ld hl, sp+$00                                 ; $7e4f: $f8 $00
    add [hl]                                      ; $7e51: $86
    db $fc                                        ; $7e52: $fc
    ld sp, hl                                     ; $7e53: $f9
    ldh a, [$e6]                                  ; $7e54: $f0 $e6
    rlca                                          ; $7e56: $07
    jp Jump_000_003f                              ; $7e57: $c3 $3f $00


    inc e                                         ; $7e5a: $1c
    ld [hl], a                                    ; $7e5b: $77
    ld h, b                                       ; $7e5c: $60
    ld h, a                                       ; $7e5d: $67
    sub b                                         ; $7e5e: $90
    sub b                                         ; $7e5f: $90
    sbc [hl]                                      ; $7e60: $9e
    pop hl                                        ; $7e61: $e1
    nop                                           ; $7e62: $00
    add hl, hl                                    ; $7e63: $29
    ld a, h                                       ; $7e64: $7c
    ld h, b                                       ; $7e65: $60

jr_0ac_7e66:
    jr c, jr_0ac_7e66                             ; $7e66: $38 $fe

    add b                                         ; $7e68: $80
    cp a                                          ; $7e69: $bf
    add b                                         ; $7e6a: $80
    dec de                                        ; $7e6b: $1b

jr_0ac_7e6c:
    ccf                                           ; $7e6c: $3f
    ld a, a                                       ; $7e6d: $7f
    nop                                           ; $7e6e: $00
    ld [bc], a                                    ; $7e6f: $02
    jr jr_0ac_7e04                                ; $7e70: $18 $92

    ld [de], a                                    ; $7e72: $12
    ld b, $94                                     ; $7e73: $06 $94
    ld a, [bc]                                    ; $7e75: $0a
    and [hl]                                      ; $7e76: $a6
    ld a, [hl-]                                   ; $7e77: $3a
    ld [bc], a                                    ; $7e78: $02
    ldh a, [$0e]                                  ; $7e79: $f0 $0e
    rst $38                                       ; $7e7b: $ff
    ldh a, [rIF]                                  ; $7e7c: $f0 $0f
    jr nz, jr_0ac_7ee4                            ; $7e7e: $20 $64

    ld bc, $00c0                                  ; $7e80: $01 $c0 $00
    rra                                           ; $7e83: $1f
    ret nz                                        ; $7e84: $c0

    nop                                           ; $7e85: $00
    ret nz                                        ; $7e86: $c0

    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    cp [hl]                                       ; $7e89: $be
    inc b                                         ; $7e8a: $04
    nop                                           ; $7e8b: $00
    rrca                                          ; $7e8c: $0f
    jp nz, $e507                                  ; $7e8d: $c2 $07 $e5

    ld a, [$0003]                                 ; $7e90: $fa $03 $00
    nop                                           ; $7e93: $00
    ld b, b                                       ; $7e94: $40
    rst $38                                       ; $7e95: $ff
    rl d                                          ; $7e96: $cb $12
    ld c, $e6                                     ; $7e98: $0e $e6
    nop                                           ; $7e9a: $00
    ld h, b                                       ; $7e9b: $60
    adc [hl]                                      ; $7e9c: $8e
    and h                                         ; $7e9d: $a4
    jr nz, jr_0ac_7e6c                            ; $7e9e: $20 $cc

    call nz, Call_000_1810                        ; $7ea0: $c4 $10 $18
    rst $38                                       ; $7ea3: $ff
    nop                                           ; $7ea4: $00
    ldh [$ec], a                                  ; $7ea5: $e0 $ec
    db $fc                                        ; $7ea7: $fc
    inc b                                         ; $7ea8: $04
    pop hl                                        ; $7ea9: $e1
    ld b, $fa                                     ; $7eaa: $06 $fa
    dec b                                         ; $7eac: $05
    ld hl, sp+$10                                 ; $7ead: $f8 $10
    jr z, jr_0ac_7edd                             ; $7eaf: $28 $2c

    ld c, $00                                     ; $7eb1: $0e $00
    sbc l                                         ; $7eb3: $9d
    dec b                                         ; $7eb4: $05
    ld c, b                                       ; $7eb5: $48
    inc b                                         ; $7eb6: $04
    ld [hl], b                                    ; $7eb7: $70
    inc [hl]                                      ; $7eb8: $34
    ld [$1803], sp                                ; $7eb9: $08 $03 $18
    ld hl, sp+$03                                 ; $7ebc: $f8 $03
    inc bc                                        ; $7ebe: $03
    inc [hl]                                      ; $7ebf: $34
    jr nz, jr_0ac_7ec6                            ; $7ec0: $20 $04

    ld c, e                                       ; $7ec2: $4b
    ldh a, [rP1]                                  ; $7ec3: $f0 $00
    add [hl]                                      ; $7ec5: $86

jr_0ac_7ec6:
    nop                                           ; $7ec6: $00
    ld d, b                                       ; $7ec7: $50
    nop                                           ; $7ec8: $00
    ld bc, $8080                                  ; $7ec9: $01 $80 $80

jr_0ac_7ecc:
    ld [bc], a                                    ; $7ecc: $02
    ld [$c040], sp                                ; $7ecd: $08 $40 $c0
    nop                                           ; $7ed0: $00
    ret nz                                        ; $7ed1: $c0

    db $10                                        ; $7ed2: $10
    ld hl, $8061                                  ; $7ed3: $21 $61 $80

jr_0ac_7ed6:
    jr nz, jr_0ac_7ee0                            ; $7ed6: $20 $08

    ld h, b                                       ; $7ed8: $60
    db $10                                        ; $7ed9: $10
    ld h, b                                       ; $7eda: $60
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00

jr_0ac_7edd:
    ld h, b                                       ; $7edd: $60
    add b                                         ; $7ede: $80
    and b                                         ; $7edf: $a0

jr_0ac_7ee0:
    ld d, c                                       ; $7ee0: $51
    and b                                         ; $7ee1: $a0
    db $10                                        ; $7ee2: $10
    db $10                                        ; $7ee3: $10

jr_0ac_7ee4:
    and b                                         ; $7ee4: $a0
    add b                                         ; $7ee5: $80
    jr nc, @+$22                                  ; $7ee6: $30 $20

    inc b                                         ; $7ee8: $04
    inc b                                         ; $7ee9: $04
    nop                                           ; $7eea: $00
    db $fc                                        ; $7eeb: $fc
    ld bc, $0440                                  ; $7eec: $01 $40 $04
    jr nz, @+$42                                  ; $7eef: $20 $40

    db $10                                        ; $7ef1: $10
    ld b, b                                       ; $7ef2: $40
    jr c, jr_0ac_7ed6                             ; $7ef3: $38 $e1

    ld [de], a                                    ; $7ef5: $12
    ld [hl], b                                    ; $7ef6: $70
    add hl, bc                                    ; $7ef7: $09
    ld e, b                                       ; $7ef8: $58
    ld b, c                                       ; $7ef9: $41
    inc h                                         ; $7efa: $24
    ld d, b                                       ; $7efb: $50
    jr c, jr_0ac_7ecc                             ; $7efc: $38 $ce

    ld sp, $0a84                                  ; $7efe: $31 $84 $0a
    add h                                         ; $7f01: $84

jr_0ac_7f02:
    ld e, a                                       ; $7f02: $5f
    ld b, b                                       ; $7f03: $40
    ld [$4830], sp                                ; $7f04: $08 $30 $48
    stop                                          ; $7f07: $10 $00
    cpl                                           ; $7f09: $2f
    jr jr_0ac_7f13                                ; $7f0a: $18 $07

    ld [$0003], sp                                ; $7f0c: $08 $03 $00
    inc b                                         ; $7f0f: $04
    dec b                                         ; $7f10: $05
    ld [bc], a                                    ; $7f11: $02
    inc b                                         ; $7f12: $04

jr_0ac_7f13:
    ld bc, $0804                                  ; $7f13: $01 $04 $08
    inc b                                         ; $7f16: $04
    ld b, b                                       ; $7f17: $40
    ld [$0003], sp                                ; $7f18: $08 $03 $00
    inc b                                         ; $7f1b: $04
    ld [$0800], sp                                ; $7f1c: $08 $00 $08
    db $10                                        ; $7f1f: $10
    jr @-$7e                                      ; $7f20: $18 $80

    ld a, [hl-]                                   ; $7f22: $3a
    jr nz, jr_0ac_7f96                            ; $7f23: $20 $71

    ld [bc], a                                    ; $7f25: $02
    ld [hl-], a                                   ; $7f26: $32
    add hl, bc                                    ; $7f27: $09
    ld a, [de]                                    ; $7f28: $1a
    inc h                                         ; $7f29: $24
    inc e                                         ; $7f2a: $1c
    nop                                           ; $7f2b: $00

jr_0ac_7f2c:
    ld [bc], a                                    ; $7f2c: $02
    inc c                                         ; $7f2d: $0c
    db $10                                        ; $7f2e: $10
    ld [$0004], sp                                ; $7f2f: $08 $04 $00
    ld [$1000], sp                                ; $7f32: $08 $00 $10
    nop                                           ; $7f35: $00
    db $10                                        ; $7f36: $10
    jr nz, @+$38                                  ; $7f37: $20 $36

    ld [$0010], sp                                ; $7f39: $08 $10 $00
    jr jr_0ac_7f5f                                ; $7f3c: $18 $21

jr_0ac_7f3e:
    add b                                         ; $7f3e: $80
    xor d                                         ; $7f3f: $aa
    jr jr_0ac_7f92                                ; $7f40: $18 $50

    jr nz, jr_0ac_7fb4                            ; $7f42: $20 $70

    nop                                           ; $7f44: $00
    ld b, b                                       ; $7f45: $40
    db $10                                        ; $7f46: $10
    ld b, b                                       ; $7f47: $40
    stop                                          ; $7f48: $10 $00
    ld hl, sp+$05                                 ; $7f4a: $f8 $05
    cp d                                          ; $7f4c: $ba
    jr jr_0ac_7f9b                                ; $7f4d: $18 $4c

    ld [de], a                                    ; $7f4f: $12
    ld b, [hl]                                    ; $7f50: $46
    add hl, bc                                    ; $7f51: $09
    dec b                                         ; $7f52: $05
    ld b, e                                       ; $7f53: $43
    inc b                                         ; $7f54: $04
    ld b, c                                       ; $7f55: $41
    add d                                         ; $7f56: $82
    ret nz                                        ; $7f57: $c0

    jr nz, jr_0ac_7f7a                            ; $7f58: $20 $20

jr_0ac_7f5a:
    add h                                         ; $7f5a: $84
    ld [bc], a                                    ; $7f5b: $02
    ld [$0207], sp                                ; $7f5c: $08 $07 $02

jr_0ac_7f5f:
    add [hl]                                      ; $7f5f: $86
    ld bc, $0483                                  ; $7f60: $01 $83 $04
    rst $00                                       ; $7f63: $c7
    nop                                           ; $7f64: $00
    db $dd                                        ; $7f65: $dd
    nop                                           ; $7f66: $00
    ld a, $10                                     ; $7f67: $3e $10
    inc b                                         ; $7f69: $04
    jr nz, jr_0ac_7f8c                            ; $7f6a: $20 $20

    ld d, b                                       ; $7f6c: $50
    ret nz                                        ; $7f6d: $c0

    jr nz, jr_0ac_7f5a                            ; $7f6e: $20 $ea

    jr jr_0ac_7f02                                ; $7f70: $18 $90

    nop                                           ; $7f72: $00
    scf                                           ; $7f73: $37
    nop                                           ; $7f74: $00
    ld b, b                                       ; $7f75: $40
    nop                                           ; $7f76: $00
    ld bc, $7fa0                                  ; $7f77: $01 $a0 $7f

jr_0ac_7f7a:
    nop                                           ; $7f7a: $00
    ld a, $00                                     ; $7f7b: $3e $00
    inc e                                         ; $7f7d: $1c
    nop                                           ; $7f7e: $00
    ld h, b                                       ; $7f7f: $60
    ld [$f80e], sp                                ; $7f80: $08 $0e $f8
    ld a, [hl+]                                   ; $7f83: $2a
    ld h, b                                       ; $7f84: $60
    ld [$0c00], sp                                ; $7f85: $08 $00 $0c
    nop                                           ; $7f88: $00
    ld c, $28                                     ; $7f89: $0e $28
    nop                                           ; $7f8b: $00

jr_0ac_7f8c:
    rrca                                          ; $7f8c: $0f
    inc b                                         ; $7f8d: $04
    nop                                           ; $7f8e: $00
    inc c                                         ; $7f8f: $0c
    ld a, $10                                     ; $7f90: $3e $10

jr_0ac_7f92:
    stop                                          ; $7f92: $10 $00
    jr jr_0ac_7f3e                                ; $7f94: $18 $a8

jr_0ac_7f96:
    ld c, b                                       ; $7f96: $48
    nop                                           ; $7f97: $00
    ld e, $4c                                     ; $7f98: $1e $4c
    nop                                           ; $7f9a: $00

jr_0ac_7f9b:
    jr jr_0ac_7fa9                                ; $7f9b: $18 $0c

    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    jr nz, @+$04                                  ; $7fa0: $20 $02

    nop                                           ; $7fa2: $00
    jr nc, jr_0ac_7fa5                            ; $7fa3: $30 $00

jr_0ac_7fa5:
    jr c, jr_0ac_7fa7                             ; $7fa5: $38 $00

jr_0ac_7fa7:
    inc a                                         ; $7fa7: $3c
    inc b                                         ; $7fa8: $04

jr_0ac_7fa9:
    nop                                           ; $7fa9: $00
    jr nc, jr_0ac_7f2c                            ; $7faa: $30 $80

    inc c                                         ; $7fac: $0c
    nop                                           ; $7fad: $00
    nop                                           ; $7fae: $00
    nop                                           ; $7faf: $00
    ld b, b                                       ; $7fb0: $40
    nop                                           ; $7fb1: $00
    ld h, b                                       ; $7fb2: $60
    nop                                           ; $7fb3: $00

jr_0ac_7fb4:
    ld [hl], b                                    ; $7fb4: $70
    jr z, jr_0ac_7fb7                             ; $7fb5: $28 $00

jr_0ac_7fb7:
    ld a, b                                       ; $7fb7: $78
    inc b                                         ; $7fb8: $04
    nop                                           ; $7fb9: $00
    ld h, b                                       ; $7fba: $60
    inc c                                         ; $7fbb: $0c
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    nop                                           ; $7fbe: $00
    ld h, b                                       ; $7fbf: $60
    nop                                           ; $7fc0: $00
    ld e, $00                                     ; $7fc1: $1e $00
    ld d, [hl]                                    ; $7fc3: $56
    nop                                           ; $7fc4: $00
    ld bc, $ff60                                  ; $7fc5: $01 $60 $ff
    ld bc, $0068                                  ; $7fc8: $01 $68 $00
    ld [bc], a                                    ; $7fcb: $02
    ld e, b                                       ; $7fcc: $58
    rrca                                          ; $7fcd: $0f
    ld h, b                                       ; $7fce: $60
    rst $38                                       ; $7fcf: $ff
    ld [bc], a                                    ; $7fd0: $02
    cp $00                                        ; $7fd1: $fe $00
    add d                                         ; $7fd3: $82
    nop                                           ; $7fd4: $00
    add d                                         ; $7fd5: $82
    inc a                                         ; $7fd6: $3c
    ld [bc], a                                    ; $7fd7: $02

jr_0ac_7fd8:
    jr jr_0ac_7fd8                                ; $7fd8: $18 $fe

    add b                                         ; $7fda: $80
    ld c, l                                       ; $7fdb: $4d
    nop                                           ; $7fdc: $00
    cp $00                                        ; $7fdd: $fe $00
    ld a, [$f278]                                 ; $7fdf: $fa $78 $f2
    ld [hl], b                                    ; $7fe2: $70
    and [hl]                                      ; $7fe3: $a6
    inc b                                         ; $7fe4: $04
    inc h                                         ; $7fe5: $24
    adc [hl]                                      ; $7fe6: $8e
    inc c                                         ; $7fe7: $0c
    sbc $5c                                       ; $7fe8: $de $5c
    db $10                                        ; $7fea: $10
    ld [$7fff], sp                                ; $7feb: $08 $ff $7f
    ld e, a                                       ; $7fee: $5f
    ld [bc], a                                    ; $7fef: $02
    db $f4                                        ; $7ff0: $f4
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    adc h                                         ; $7ff4: $8c
    ld sp, $6d7f                                  ; $7ff5: $31 $7f $6d
    dec d                                         ; $7ff8: $15
    jr jr_0ac_7ffd                                ; $7ff9: $18 $02

    nop                                           ; $7ffb: $00
    rst $38                                       ; $7ffc: $ff

jr_0ac_7ffd:
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_0ac_7fff:
    rst $38                                       ; $7fff: $ff
