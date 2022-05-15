; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    add hl, hl                                    ; $4000: $29
    ld d, $af                                     ; $4001: $16 $af
    pop bc                                        ; $4003: $c1
    db $fc                                        ; $4004: $fc
    add [hl]                                      ; $4005: $86
    adc a                                         ; $4006: $8f
    sub $f3                                       ; $4007: $d6 $f3
    ld l, e                                       ; $4009: $6b
    ld l, h                                       ; $400a: $6c
    db $ed                                        ; $400b: $ed
    ld [hl], a                                    ; $400c: $77
    ld a, a                                       ; $400d: $7f
    ld e, c                                       ; $400e: $59
    rst $00                                       ; $400f: $c7
    ld hl, sp-$6e                                 ; $4010: $f8 $92
    and $e5                                       ; $4012: $e6 $e5
    ld d, a                                       ; $4014: $57
    push bc                                       ; $4015: $c5
    call nc, $94fa                                ; $4016: $d4 $fa $94
    jr jr_029_405d                                ; $4019: $18 $42

    ld [$3d03], sp                                ; $401b: $08 $03 $3d
    db $e4                                        ; $401e: $e4
    xor l                                         ; $401f: $ad
    add hl, hl                                    ; $4020: $29
    ld e, l                                       ; $4021: $5d
    ld [hl], a                                    ; $4022: $77
    sub h                                         ; $4023: $94
    db $fc                                        ; $4024: $fc
    sbc d                                         ; $4025: $9a
    inc [hl]                                      ; $4026: $34
    ld h, e                                       ; $4027: $63
    ret                                           ; $4028: $c9


    db $d3                                        ; $4029: $d3
    jp z, Jump_029_77cb                           ; $402a: $ca $cb $77

    ld b, l                                       ; $402d: $45
    ld [$7eb5], sp                                ; $402e: $08 $b5 $7e
    jp Jump_029_5f1d                              ; $4031: $c3 $1d $5f


    call nc, $f2a7                                ; $4034: $d4 $a7 $f2
    ld l, e                                       ; $4037: $6b
    jp nc, $e58c                                  ; $4038: $d2 $8c $e5

    and l                                         ; $403b: $a5
    and b                                         ; $403c: $a0
    dec hl                                        ; $403d: $2b
    ld b, $a7                                     ; $403e: $06 $a7
    and h                                         ; $4040: $a4
    sub a                                         ; $4041: $97
    ld c, e                                       ; $4042: $4b
    ld bc, $a777                                  ; $4043: $01 $77 $a7
    cp h                                          ; $4046: $bc
    push af                                       ; $4047: $f5
    add $f8                                       ; $4048: $c6 $f8
    ld [$bd03], sp                                ; $404a: $08 $03 $bd
    jp nc, $e4d4                                  ; $404d: $d2 $d4 $e4

    ld b, a                                       ; $4050: $47
    jp hl                                         ; $4051: $e9


    dec bc                                        ; $4052: $0b
    ld a, [c]                                     ; $4053: $f2
    ld d, d                                       ; $4054: $52
    or b                                          ; $4055: $b0
    inc [hl]                                      ; $4056: $34
    ld a, $0d                                     ; $4057: $3e $0d
    db $f4                                        ; $4059: $f4
    ld [de], a                                    ; $405a: $12
    ld [hl], a                                    ; $405b: $77
    ld a, [hl+]                                   ; $405c: $2a

jr_029_405d:
    cp a                                          ; $405d: $bf
    ld h, $4d                                     ; $405e: $26 $4d
    ld d, a                                       ; $4060: $57
    inc c                                         ; $4061: $0c
    and a                                         ; $4062: $a7
    inc h                                         ; $4063: $24
    ld [hl], a                                    ; $4064: $77
    db $fc                                        ; $4065: $fc
    rst $10                                       ; $4066: $d7
    db $e4                                        ; $4067: $e4
    ld b, a                                       ; $4068: $47
    jp hl                                         ; $4069: $e9


    ld l, b                                       ; $406a: $68
    dec sp                                        ; $406b: $3b
    ld a, $e7                                     ; $406c: $3e $e7
    cp c                                          ; $406e: $b9
    or $33                                        ; $406f: $f6 $33
    xor $4e                                       ; $4071: $ee $4e

Call_029_4073:
    ld a, c                                       ; $4073: $79
    db $eb                                        ; $4074: $eb
    adc l                                         ; $4075: $8d
    pop af                                        ; $4076: $f1
    cp e                                          ; $4077: $bb
    ld h, b                                       ; $4078: $60
    cp l                                          ; $4079: $bd
    jp nc, Jump_029_52ac                          ; $407a: $d2 $ac $52

    xor d                                         ; $407d: $aa
    ld sp, hl                                     ; $407e: $f9
    add d                                         ; $407f: $82
    ld e, h                                       ; $4080: $5c
    ld a, [de]                                    ; $4081: $1a
    ld b, a                                       ; $4082: $47
    db $eb                                        ; $4083: $eb
    sub l                                         ; $4084: $95
    and [hl]                                      ; $4085: $a6
    ld d, $e3                                     ; $4086: $16 $e3
    add d                                         ; $4088: $82
    rst $30                                       ; $4089: $f7
    ld d, l                                       ; $408a: $55
    ld l, d                                       ; $408b: $6a
    add d                                         ; $408c: $82
    ld [c], a                                     ; $408d: $e2
    db $d3                                        ; $408e: $d3
    ld b, b                                       ; $408f: $40
    cpl                                           ; $4090: $2f
    ld c, l                                       ; $4091: $4d
    adc c                                         ; $4092: $89
    dec l                                         ; $4093: $2d
    ld h, $fc                                     ; $4094: $26 $fc
    jp nz, Jump_029_5f94                          ; $4096: $c2 $94 $5f

    daa                                           ; $4099: $27
    cpl                                           ; $409a: $2f
    add hl, sp                                    ; $409b: $39
    jr nz, jr_029_40aa                            ; $409c: $20 $0c

    cp l                                          ; $409e: $bd
    jp nc, Jump_000_258c                          ; $409f: $d2 $8c $25

    push de                                       ; $40a2: $d5
    ld a, h                                       ; $40a3: $7c
    add [hl]                                      ; $40a4: $86
    ret c                                         ; $40a5: $d8

    dec bc                                        ; $40a6: $0b
    cp b                                          ; $40a7: $b8
    ld [de], a                                    ; $40a8: $12
    db $e3                                        ; $40a9: $e3

jr_029_40aa:
    adc $cb                                       ; $40aa: $ce $cb
    add l                                         ; $40ac: $85
    ld e, l                                       ; $40ad: $5d
    ret c                                         ; $40ae: $d8

    dec c                                         ; $40af: $0d
    dec sp                                        ; $40b0: $3b
    add hl, hl                                    ; $40b1: $29
    xor [hl]                                      ; $40b2: $ae
    db $e4                                        ; $40b3: $e4
    ld [$9603], sp                                ; $40b4: $08 $03 $96
    pop af                                        ; $40b7: $f1
    ld c, c                                       ; $40b8: $49
    dec [hl]                                      ; $40b9: $35
    ld e, a                                       ; $40ba: $5f
    ld a, h                                       ; $40bb: $7c
    ld e, a                                       ; $40bc: $5f
    sub e                                         ; $40bd: $93
    ld h, [hl]                                    ; $40be: $66
    inc l                                         ; $40bf: $2c
    ld [hl], a                                    ; $40c0: $77
    dec e                                         ; $40c1: $1d
    call $f8b2                                    ; $40c2: $cd $b2 $f8
    ld a, [hl+]                                   ; $40c5: $2a
    db $f4                                        ; $40c6: $f4
    ld l, h                                       ; $40c7: $6c
    dec h                                         ; $40c8: $25
    ld sp, hl                                     ; $40c9: $f9
    ld a, c                                       ; $40ca: $79
    ld c, $5c                                     ; $40cb: $0e $5c
    adc c                                         ; $40cd: $89
    call $e674                                    ; $40ce: $cd $74 $e6
    cp c                                          ; $40d1: $b9
    adc $67                                       ; $40d2: $ce $67
    daa                                           ; $40d4: $27
    cp $6c                                        ; $40d5: $fe $6c
    ret                                           ; $40d7: $c9


    ld [hl], b                                    ; $40d8: $70
    ld c, l                                       ; $40d9: $4d
    ld a, [de]                                    ; $40da: $1a
    inc [hl]                                      ; $40db: $34
    ld c, e                                       ; $40dc: $4b
    dec l                                         ; $40dd: $2d
    ld b, [hl]                                    ; $40de: $46
    add h                                         ; $40df: $84
    sub b                                         ; $40e0: $90
    and l                                         ; $40e1: $a5
    ld d, $e3                                     ; $40e2: $16 $e3
    db $ec                                        ; $40e4: $ec
    dec de                                        ; $40e5: $1b
    inc d                                         ; $40e6: $14
    ld e, a                                       ; $40e7: $5f
    sub e                                         ; $40e8: $93
    and [hl]                                      ; $40e9: $a6
    dec bc                                        ; $40ea: $0b
    ld b, $96                                     ; $40eb: $06 $96
    ld e, d                                       ; $40ed: $5a
    jr c, jr_029_4138                             ; $40ee: $38 $48

    sub c                                         ; $40f0: $91
    ld h, [hl]                                    ; $40f1: $66
    sub [hl]                                      ; $40f2: $96
    dec d                                         ; $40f3: $15
    or l                                          ; $40f4: $b5
    cp $3c                                        ; $40f5: $fe $3c
    rst $00                                       ; $40f7: $c7
    ld [hl], d                                    ; $40f8: $72
    ld e, [hl]                                    ; $40f9: $5e
    ld l, $70                                     ; $40fa: $2e $70
    ld [hl], a                                    ; $40fc: $77
    jp z, Jump_029_6f5b                           ; $40fd: $ca $5b $6f

    adc h                                         ; $4100: $8c
    adc a                                         ; $4101: $8f
    sub $fd                                       ; $4102: $d6 $fd
    ld e, l                                       ; $4104: $5d
    xor [hl]                                      ; $4105: $ae
    ld a, l                                       ; $4106: $7d
    dec hl                                        ; $4107: $2b
    inc bc                                        ; $4108: $03
    db $eb                                        ; $4109: $eb
    sub c                                         ; $410a: $91
    xor [hl]                                      ; $410b: $ae
    pop de                                        ; $410c: $d1
    ld b, b                                       ; $410d: $40
    rla                                           ; $410e: $17
    inc c                                         ; $410f: $0c
    cp l                                          ; $4110: $bd
    jp nc, Jump_029_62d4                          ; $4111: $d2 $d4 $62

    sbc h                                         ; $4114: $9c
    ld hl, $02f6                                  ; $4115: $21 $f6 $02
    xor [hl]                                      ; $4118: $ae
    call nz, $d516                                ; $4119: $c4 $16 $d5
    ld e, a                                       ; $411c: $5f
    cp b                                          ; $411d: $b8
    dec sp                                        ; $411e: $3b
    push hl                                       ; $411f: $e5
    xor l                                         ; $4120: $ad
    scf                                           ; $4121: $37
    add $47                                       ; $4122: $c6 $47
    jr @+$18                                      ; $4124: $18 $16

    xor a                                         ; $4126: $af
    pop bc                                        ; $4127: $c1
    db $f4                                        ; $4128: $f4
    inc a                                         ; $4129: $3c
    sub l                                         ; $412a: $95
    ld l, $6b                                     ; $412b: $2e $6b
    ld hl, $fced                                  ; $412d: $21 $ed $fc
    ld b, d                                       ; $4130: $42
    inc bc                                        ; $4131: $03
    ld a, $8d                                     ; $4132: $3e $8d
    ld a, [c]                                     ; $4134: $f2
    jp z, $b59a                                   ; $4135: $ca $9a $b5

jr_029_4138:
    ld a, a                                       ; $4138: $7f
    sub a                                         ; $4139: $97
    db $10                                        ; $413a: $10
    ld b, $96                                     ; $413b: $06 $96
    or c                                          ; $413d: $b1
    and h                                         ; $413e: $a4
    sbc d                                         ; $413f: $9a
    rst $08                                       ; $4140: $cf
    res 4, l                                      ; $4141: $cb $a5
    ld a, [$afae]                                 ; $4143: $fa $ae $af
    ld d, d                                       ; $4146: $52
    ld a, [de]                                    ; $4147: $1a
    db $fc                                        ; $4148: $fc
    rst $08                                       ; $4149: $cf
    nop                                           ; $414a: $00
    jp nz, $99a7                                  ; $414b: $c2 $a7 $99

    ld e, e                                       ; $414e: $5b

jr_029_414f:
    push de                                       ; $414f: $d5
    cp c                                          ; $4150: $b9
    ld l, e                                       ; $4151: $6b
    ld d, l                                       ; $4152: $55
    sub c                                         ; $4153: $91
    add [hl]                                      ; $4154: $86
    dec sp                                        ; $4155: $3b
    ld [hl], b                                    ; $4156: $70
    dec d                                         ; $4157: $15
    ld e, a                                       ; $4158: $5f
    daa                                           ; $4159: $27

jr_029_415a:
    ld l, d                                       ; $415a: $6a
    ld [hl], e                                    ; $415b: $73
    add hl, hl                                    ; $415c: $29
    sbc b                                         ; $415d: $98
    sub a                                         ; $415e: $97
    sbc a                                         ; $415f: $9f
    dec e                                         ; $4160: $1d
    adc l                                         ; $4161: $8d
    ccf                                           ; $4162: $3f
    jp nz, $b196                                  ; $4163: $c2 $96 $b1

    res 5, b                                      ; $4166: $cb $a8
    and $6b                                       ; $4168: $e6 $6b

jr_029_416a:
    res 4, l                                      ; $416a: $cb $a5
    ld h, b                                       ; $416c: $60
    rst $10                                       ; $416d: $d7
    cp e                                          ; $416e: $bb
    xor h                                         ; $416f: $ac
    rst $20                                       ; $4170: $e7
    xor a                                         ; $4171: $af
    xor b                                         ; $4172: $a8
    push af                                       ; $4173: $f5
    rst $20                                       ; $4174: $e7
    cp c                                          ; $4175: $b9

jr_029_4176:
    jr nz, jr_029_414f                            ; $4176: $20 $d7

    sub $aa                                       ; $4178: $d6 $aa
    sbc $05                                       ; $417a: $de $05
    inc bc                                        ; $417c: $03
    xor l                                         ; $417d: $ad
    ld e, a                                       ; $417e: $5f
    add e                                         ; $417f: $83
    add hl, hl                                    ; $4180: $29
    call nz, $0eff                                ; $4181: $c4 $ff $0e
    jp c, $ef49                                   ; $4184: $da $49 $ef

    dec [hl]                                      ; $4187: $35
    ld e, b                                       ; $4188: $58
    sub b                                         ; $4189: $90
    ld e, l                                       ; $418a: $5d
    jr nc, jr_029_416a                            ; $418b: $30 $dd

    dec h                                         ; $418d: $25

jr_029_418e:
    db $ed                                        ; $418e: $ed
    rlca                                          ; $418f: $07
    ld c, b                                       ; $4190: $48
    reti                                          ; $4191: $d9


    ret                                           ; $4192: $c9


    push de                                       ; $4193: $d5
    pop af                                        ; $4194: $f1
    ld c, c                                       ; $4195: $49
    ld a, [de]                                    ; $4196: $1a
    ld l, b                                       ; $4197: $68
    adc h                                         ; $4198: $8c
    inc bc                                        ; $4199: $03
    ld l, l                                       ; $419a: $6d
    ld h, b                                       ; $419b: $60
    ld e, [hl]                                    ; $419c: $5e
    call nc, $8c77                                ; $419d: $d4 $77 $8c
    add hl, bc                                    ; $41a0: $09
    db $db                                        ; $41a1: $db
    pop af                                        ; $41a2: $f1
    ld e, c                                       ; $41a3: $59
    jp z, $c2ef                                   ; $41a4: $ca $ef $c2

    ld l, $ed                                     ; $41a7: $2e $ed
    and h                                         ; $41a9: $a4
    inc h                                         ; $41aa: $24
    sub [hl]                                      ; $41ab: $96
    add h                                         ; $41ac: $84
    jr nc, jr_029_4176                            ; $41ad: $30 $c7

    db $e4                                        ; $41af: $e4
    sbc d                                         ; $41b0: $9a
    inc [hl]                                      ; $41b1: $34
    xor e                                         ; $41b2: $ab
    ld d, e                                       ; $41b3: $53
    ld a, [c]                                     ; $41b4: $f2
    db $e3                                        ; $41b5: $e3
    set 1, e                                      ; $41b6: $cb $cb
    rst $28                                       ; $41b8: $ef
    jr jr_029_41ce                                ; $41b9: $18 $13

    or [hl]                                       ; $41bb: $b6
    db $e3                                        ; $41bc: $e3
    or e                                          ; $41bd: $b3
    sub h                                         ; $41be: $94
    rst $18                                       ; $41bf: $df
    add l                                         ; $41c0: $85
    xor [hl]                                      ; $41c1: $ae
    jr jr_029_415a                                ; $41c2: $18 $96

    sub l                                         ; $41c4: $95
    ld d, a                                       ; $41c5: $57
    ld h, c                                       ; $41c6: $61
    dec hl                                        ; $41c7: $2b
    ccf                                           ; $41c8: $3f
    ld e, [hl]                                    ; $41c9: $5e
    ld h, c                                       ; $41ca: $61
    ld b, c                                       ; $41cb: $41
    ld e, [hl]                                    ; $41cc: $5e
    ld a, [bc]                                    ; $41cd: $0a

jr_029_41ce:
    sub [hl]                                      ; $41ce: $96
    inc [hl]                                      ; $41cf: $34
    sbc l                                         ; $41d0: $9d
    set 5, l                                      ; $41d1: $cb $ed
    jr nz, jr_029_41e1                            ; $41d3: $20 $0c

    xor l                                         ; $41d5: $ad
    cp a                                          ; $41d6: $bf
    ld a, [hl+]                                   ; $41d7: $2a
    ld c, l                                       ; $41d8: $4d
    ld h, h                                       ; $41d9: $64
    ld l, e                                       ; $41da: $6b
    rst $38                                       ; $41db: $ff
    inc [hl]                                      ; $41dc: $34
    add [hl]                                      ; $41dd: $86
    add hl, bc                                    ; $41de: $09
    ld a, $a5                                     ; $41df: $3e $a5

jr_029_41e1:
    add [hl]                                      ; $41e1: $86
    cpl                                           ; $41e2: $2f
    cpl                                           ; $41e3: $2f
    adc a                                         ; $41e4: $8f
    jr nc, jr_029_418e                            ; $41e5: $30 $a7

    inc h                                         ; $41e7: $24
    sbc d                                         ; $41e8: $9a
    ld h, l                                       ; $41e9: $65
    ldh a, [$bf]                                  ; $41ea: $f0 $bf
    ld [hl], d                                    ; $41ec: $72
    jp $cd25                                      ; $41ed: $c3 $25 $cd


    set 5, a                                      ; $41f0: $cb $ef
    jr nz, jr_029_4223                            ; $41f2: $20 $2f

    or e                                          ; $41f4: $b3
    ld h, e                                       ; $41f5: $63
    and [hl]                                      ; $41f6: $a6
    ld c, h                                       ; $41f7: $4c
    rla                                           ; $41f8: $17
    db $d3                                        ; $41f9: $d3
    cp c                                          ; $41fa: $b9
    di                                            ; $41fb: $f3
    sub d                                         ; $41fc: $92
    ld h, $28                                     ; $41fd: $26 $28
    ld [$9603], sp                                ; $41ff: $08 $03 $96
    dec d                                         ; $4202: $15

jr_029_4203:
    or l                                          ; $4203: $b5
    ld a, $d5                                     ; $4204: $3e $d5
    ld a, h                                       ; $4206: $7c

jr_029_4207:
    ldh a, [rVBK]                                 ; $4207: $f0 $4f
    dec hl                                        ; $4209: $2b
    scf                                           ; $420a: $37
    sbc h                                         ; $420b: $9c
    add $38                                       ; $420c: $c6 $38
    and [hl]                                      ; $420e: $a6
    dec c                                         ; $420f: $0d
    jp nz, $8196                                  ; $4210: $c2 $96 $81

    ld a, [c]                                     ; $4213: $f2
    add e                                         ; $4214: $83
    inc c                                         ; $4215: $0c
    ccf                                           ; $4216: $3f
    jp hl                                         ; $4217: $e9


    ld h, a                                       ; $4218: $67
    rst $00                                       ; $4219: $c7
    and $52                                       ; $421a: $e6 $52
    jr nc, jr_029_4203                            ; $421c: $30 $e5

    or l                                          ; $421e: $b5
    ld b, c                                       ; $421f: $41
    dec sp                                        ; $4220: $3b
    ld e, c                                       ; $4221: $59
    sbc e                                         ; $4222: $9b

jr_029_4223:
    or $ef                                        ; $4223: $f6 $ef

jr_029_4225:
    ld a, [$8578]                                 ; $4225: $fa $78 $85
    sub l                                         ; $4228: $95
    dec de                                        ; $4229: $1b
    ld [hl+], a                                   ; $422a: $22
    inc c                                         ; $422b: $0c
    ld b, a                                       ; $422c: $47
    ld b, c                                       ; $422d: $41
    ld a, l                                       ; $422e: $7d
    daa                                           ; $422f: $27
    ld d, a                                       ; $4230: $57
    rst $00                                       ; $4231: $c7
    daa                                           ; $4232: $27
    ld l, c                                       ; $4233: $69
    and b                                         ; $4234: $a0
    ld sp, $59a2                                  ; $4235: $31 $a2 $59
    ld b, $ca                                     ; $4238: $06 $ca
    rst $08                                       ; $423a: $cf
    res 0, a                                      ; $423b: $cb $87
    ld [hl], e                                    ; $423d: $73
    adc l                                         ; $423e: $8d
    push af                                       ; $423f: $f5
    ld c, e                                       ; $4240: $4b
    ld bc, $16c2                                  ; $4241: $01 $c2 $16
    rst $18                                       ; $4244: $df
    dec b                                         ; $4245: $05

jr_029_4246:
    xor d                                         ; $4246: $aa
    ld sp, hl                                     ; $4247: $f9
    jp nz, Jump_029_4c66                          ; $4248: $c2 $66 $4c

    sbc e                                         ; $424b: $9b
    ld a, c                                       ; $424c: $79
    adc [hl]                                      ; $424d: $8e
    ld d, a                                       ; $424e: $57
    xor a                                         ; $424f: $af
    jp z, $0dca                                   ; $4250: $ca $ca $0d

    ld de, $2706                                  ; $4253: $11 $06 $27
    ld l, e                                       ; $4256: $6b
    db $d3                                        ; $4257: $d3
    cp $95                                        ; $4258: $fe $95
    rra                                           ; $425a: $1f
    rst $38                                       ; $425b: $ff
    db $e4                                        ; $425c: $e4
    di                                            ; $425d: $f3
    inc e                                         ; $425e: $1c
    db $fc                                        ; $425f: $fc
    xor a                                         ; $4260: $af
    ld d, l                                       ; $4261: $55
    inc bc                                        ; $4262: $03
    cp c                                          ; $4263: $b9
    inc c                                         ; $4264: $0c
    xor l                                         ; $4265: $ad
    ld b, a                                       ; $4266: $47
    ld sp, hl                                     ; $4267: $f9
    ld h, [hl]                                    ; $4268: $66
    xor [hl]                                      ; $4269: $ae
    or c                                          ; $426a: $b1
    ld a, $5d                                     ; $426b: $3e $5d
    ld c, h                                       ; $426d: $4c
    ld b, a                                       ; $426e: $47
    jr jr_029_4207                                ; $426f: $18 $96

    sub l                                         ; $4271: $95
    ld d, a                                       ; $4272: $57
    ld h, c                                       ; $4273: $61
    add e                                         ; $4274: $83
    inc c                                         ; $4275: $0c
    rst $18                                       ; $4276: $df
    res 4, l                                      ; $4277: $cb $a5
    ld h, b                                       ; $4279: $60
    jp c, $e34e                                   ; $427a: $da $4e $e3

    dec hl                                        ; $427d: $2b
    scf                                           ; $427e: $37
    sbc h                                         ; $427f: $9c
    ld l, e                                       ; $4280: $6b
    db $fd                                        ; $4281: $fd
    ld d, d                                       ; $4282: $52
    jr nc, jr_029_42a2                            ; $4283: $30 $1d

    sub h                                         ; $4285: $94
    inc d                                         ; $4286: $14
    sbc a                                         ; $4287: $9f
    ld d, l                                       ; $4288: $55
    dec hl                                        ; $4289: $2b
    push af                                       ; $428a: $f5
    sbc e                                         ; $428b: $9b
    add h                                         ; $428c: $84
    jr nc, jr_029_4225                            ; $428d: $30 $96

    sub l                                         ; $428f: $95
    ld d, a                                       ; $4290: $57
    ld h, c                                       ; $4291: $61
    dec hl                                        ; $4292: $2b
    scf                                           ; $4293: $37
    ld e, h                                       ; $4294: $5c
    ld l, b                                       ; $4295: $68
    jp nz, $fc76                                  ; $4296: $c2 $76 $fc

    ld b, c                                       ; $4299: $41
    add [hl]                                      ; $429a: $86
    rst $28                                       ; $429b: $ef
    push hl                                       ; $429c: $e5
    ld d, d                                       ; $429d: $52
    jr nc, jr_029_430d                            ; $429e: $30 $6d

    and a                                         ; $42a0: $a7
    pop af                                        ; $42a1: $f1

jr_029_42a2:
    add hl, hl                                    ; $42a2: $29
    db $ed                                        ; $42a3: $ed
    add [hl]                                      ; $42a4: $86
    sbc l                                         ; $42a5: $9d
    inc d                                         ; $42a6: $14
    ld d, a                                       ; $42a7: $57
    ld a, [c]                                     ; $42a8: $f2
    add l                                         ; $42a9: $85
    rst $38                                       ; $42aa: $ff
    ld a, [hl]                                    ; $42ab: $7e
    add hl, hl                                    ; $42ac: $29
    ld b, b                                       ; $42ad: $40
    jr jr_029_4246                                ; $42ae: $18 $96

    dec d                                         ; $42b0: $15
    or l                                          ; $42b1: $b5
    ld a, $d5                                     ; $42b2: $3e $d5
    ld a, h                                       ; $42b4: $7c
    ldh a, [rVBK]                                 ; $42b5: $f0 $4f
    dec hl                                        ; $42b7: $2b
    scf                                           ; $42b8: $37
    inc e                                         ; $42b9: $1c
    ld e, h                                       ; $42ba: $5c
    xor d                                         ; $42bb: $aa
    ld a, [hl]                                    ; $42bc: $7e
    db $ec                                        ; $42bd: $ec
    ld [de], a                                    ; $42be: $12
    cp l                                          ; $42bf: $bd
    inc l                                         ; $42c0: $2c
    ld a, [hl+]                                   ; $42c1: $2a
    ld hl, sp-$18                                 ; $42c2: $f8 $e8
    ld b, $c5                                     ; $42c4: $06 $c5
    ld de, $4706                                  ; $42c6: $11 $06 $47
    pop bc                                        ; $42c9: $c1
    ld l, h                                       ; $42ca: $6c
    sub l                                         ; $42cb: $95
    add hl, hl                                    ; $42cc: $29
    call z, $3ab2                                 ; $42cd: $cc $b2 $3a
    dec h                                         ; $42d0: $25
    rst $08                                       ; $42d1: $cf
    ld e, l                                       ; $42d2: $5d
    xor a                                         ; $42d3: $af
    ld d, e                                       ; $42d4: $53
    rst $08                                       ; $42d5: $cf
    ld e, b                                       ; $42d6: $58
    sub l                                         ; $42d7: $95
    ld h, $b2                                     ; $42d8: $26 $b2
    or l                                          ; $42da: $b5
    ld a, a                                       ; $42db: $7f
    rst $00                                       ; $42dc: $c7
    sbc b                                         ; $42dd: $98
    or b                                          ; $42de: $b0
    dec e                                         ; $42df: $1d
    sbc a                                         ; $42e0: $9f
    and l                                         ; $42e1: $a5
    inc a                                         ; $42e2: $3c
    jp nz, Jump_000_24a7                          ; $42e3: $c2 $a7 $24

    sbc d                                         ; $42e6: $9a
    ld h, l                                       ; $42e7: $65
    inc l                                         ; $42e8: $2c
    xor c                                         ; $42e9: $a9
    and $93                                       ; $42ea: $e6 $93
    rrca                                          ; $42ec: $0f
    ccf                                           ; $42ed: $3f
    ld l, h                                       ; $42ee: $6c
    cp a                                          ; $42ef: $bf
    inc c                                         ; $42f0: $0c
    cp $2f                                        ; $42f1: $fe $2f
    dec b                                         ; $42f3: $05
    dec hl                                        ; $42f4: $2b
    scf                                           ; $42f5: $37
    sbc h                                         ; $42f6: $9c
    ld a, [$f2da]                                 ; $42f7: $fa $da $f2
    ld e, d                                       ; $42fa: $5a
    or a                                          ; $42fb: $b7
    dec d                                         ; $42fc: $15
    inc e                                         ; $42fd: $1c
    ld h, c                                       ; $42fe: $61
    sub [hl]                                      ; $42ff: $96
    add c                                         ; $4300: $81
    ld a, [c]                                     ; $4301: $f2
    dec hl                                        ; $4302: $2b

Jump_029_4303:
    scf                                           ; $4303: $37
    inc e                                         ; $4304: $1c
    ld a, a                                       ; $4305: $7f
    cp l                                          ; $4306: $bd
    xor h                                         ; $4307: $ac
    ld e, h                                       ; $4308: $5c
    ld e, b                                       ; $4309: $58
    ld e, e                                       ; $430a: $5b
    ld [hl-], a                                   ; $430b: $32
    ld b, e                                       ; $430c: $43

jr_029_430d:
    or h                                          ; $430d: $b4
    sub e                                         ; $430e: $93
    or l                                          ; $430f: $b5
    ld l, c                                       ; $4310: $69
    rst $38                                       ; $4311: $ff
    jp z, Jump_029_60d7                           ; $4312: $ca $d7 $60

    inc l                                         ; $4315: $2c
    cpl                                           ; $4316: $2f
    dec b                                         ; $4317: $05
    add e                                         ; $4318: $83
    inc c                                         ; $4319: $0c
    ld a, a                                       ; $431a: $7f
    ret nz                                        ; $431b: $c0

    rst $38                                       ; $431c: $ff
    ld [hl], a                                    ; $431d: $77
    ld l, $05                                     ; $431e: $2e $05
    inc sp                                        ; $4320: $33
    dec e                                         ; $4321: $1d
    add h                                         ; $4322: $84
    ld bc, $b196                                  ; $4323: $01 $96 $b1
    and h                                         ; $4326: $a4
    sbc d                                         ; $4327: $9a
    rst $28                                       ; $4328: $ef
    xor l                                         ; $4329: $ad
    ld c, a                                       ; $432a: $4f

Jump_029_432b:
    xor e                                         ; $432b: $ab
    ld d, e                                       ; $432c: $53
    ld a, [c]                                     ; $432d: $f2
    db $e3                                        ; $432e: $e3
    set 1, e                                      ; $432f: $cb $cb
    xor a                                         ; $4331: $af
    ld e, h                                       ; $4332: $5c
    ld e, b                                       ; $4333: $58
    jp c, $adf6                                   ; $4334: $da $f6 $ad

    ld a, [hl]                                    ; $4337: $7e
    rla                                           ; $4338: $17
    db $10                                        ; $4339: $10
    ld b, $a7                                     ; $433a: $06 $a7
    inc h                                         ; $433c: $24
    sbc d                                         ; $433d: $9a
    ld h, l                                       ; $433e: $65
    db $ed                                        ; $433f: $ed
    rst $30                                       ; $4340: $f7
    dec h                                         ; $4341: $25
    db $fd                                        ; $4342: $fd
    jp nc, $979e                                  ; $4343: $d2 $9e $97

    sbc a                                         ; $4346: $9f
    cp a                                          ; $4347: $bf
    ld d, [hl]                                    ; $4348: $56
    push hl                                       ; $4349: $e5
    dec b                                         ; $434a: $05
    add $a7                                       ; $434b: $c6 $a7
    adc c                                         ; $434d: $89
    ld l, h                                       ; $434e: $6c
    ld [hl], l                                    ; $434f: $75
    ld c, d                                       ; $4350: $4a
    ld e, $61                                     ; $4351: $1e $61
    sub [hl]                                      ; $4353: $96
    add c                                         ; $4354: $81
    ld a, [c]                                     ; $4355: $f2
    dec hl                                        ; $4356: $2b
    scf                                           ; $4357: $37
    ld e, h                                       ; $4358: $5c
    ld d, c                                       ; $4359: $51
    db $eb                                        ; $435a: $eb
    and l                                         ; $435b: $a5
    ld h, b                                       ; $435c: $60
    ld a, [hl-]                                   ; $435d: $3a
    ld a, b                                       ; $435e: $78
    cp c                                          ; $435f: $b9
    ld l, c                                       ; $4360: $69
    and b                                         ; $4361: $a0
    rst $28                                       ; $4362: $ef
    sbc b                                         ; $4363: $98
    ld e, c                                       ; $4364: $59
    cp a                                          ; $4365: $bf
    inc d                                         ; $4366: $14
    xor h                                         ; $4367: $ac
    ld c, d                                       ; $4368: $4a
    or d                                          ; $4369: $b2
    cp [hl]                                       ; $436a: $be
    add b                                         ; $436b: $80
    ld a, [$1a4d]                                 ; $436c: $fa $4d $1a
    ld a, a                                       ; $436f: $7f
    cp l                                          ; $4370: $bd
    db $ec                                        ; $4371: $ec
    db $e4                                        ; $4372: $e4
    ld [$24f8], a                                 ; $4373: $ea $f8 $24
    dec c                                         ; $4376: $0d
    inc [hl]                                      ; $4377: $34
    ld b, [hl]                                    ; $4378: $46
    or h                                          ; $4379: $b4
    sub e                                         ; $437a: $93
    or l                                          ; $437b: $b5
    ld l, c                                       ; $437c: $69
    rst $38                                       ; $437d: $ff
    and b                                         ; $437e: $a0
    db $fc                                        ; $437f: $fc
    ld [$3c94], a                                 ; $4380: $ea $94 $3c
    jr nz, jr_029_4391                            ; $4383: $20 $0c

    sub [hl]                                      ; $4385: $96
    or c                                          ; $4386: $b1
    and h                                         ; $4387: $a4
    sbc d                                         ; $4388: $9a
    adc a                                         ; $4389: $8f
    cpl                                           ; $438a: $2f
    cpl                                           ; $438b: $2f
    ccf                                           ; $438c: $3f
    swap h                                        ; $438d: $cb $34
    ld e, h                                       ; $438f: $5c
    ret c                                         ; $4390: $d8

jr_029_4391:
    ret nz                                        ; $4391: $c0

    ld b, a                                       ; $4392: $47
    ld a, e                                       ; $4393: $7b
    ld b, l                                       ; $4394: $45
    and e                                         ; $4395: $a3
    dec a                                         ; $4396: $3d
    cpl                                           ; $4397: $2f
    ccf                                           ; $4398: $3f
    cp a                                          ; $4399: $bf
    pop hl                                        ; $439a: $e1
    inc hl                                        ; $439b: $23
    inc c                                         ; $439c: $0c
    daa                                           ; $439d: $27
    ld l, e                                       ; $439e: $6b
    db $d3                                        ; $439f: $d3
    cp $95                                        ; $43a0: $fe $95
    xor a                                         ; $43a2: $af
    pop bc                                        ; $43a3: $c1
    ld l, $cd                                     ; $43a4: $2e $cd
    set 5, a                                      ; $43a6: $cb $ef
    ld a, b                                       ; $43a8: $78
    ld a, c                                       ; $43a9: $79
    push af                                       ; $43aa: $f5
    or l                                          ; $43ab: $b5
    ld l, d                                       ; $43ac: $6a
    adc h                                         ; $43ad: $8c
    db $eb                                        ; $43ae: $eb
    adc b                                         ; $43af: $88
    ld d, [hl]                                    ; $43b0: $56
    ld a, [hl]                                    ; $43b1: $7e
    xor e                                         ; $43b2: $ab
    ld c, e                                       ; $43b3: $4b
    pop bc                                        ; $43b4: $c1
    jp z, Jump_000_3d85                           ; $43b5: $ca $85 $3d

    or c                                          ; $43b8: $b1
    cp [hl]                                       ; $43b9: $be
    db $d3                                        ; $43ba: $d3
    xor $bb                                       ; $43bb: $ee $bb

jr_029_43bd:
    ld a, c                                       ; $43bd: $79
    sub l                                         ; $43be: $95
    ld b, c                                       ; $43bf: $41
    rst $20                                       ; $43c0: $e7
    cp a                                          ; $43c1: $bf
    ld a, [hl+]                                   ; $43c2: $2a

jr_029_43c3:
    ld [$4703], sp                                ; $43c3: $08 $03 $47
    ld d, c                                       ; $43c6: $51
    jp $9797                                      ; $43c7: $c3 $97 $97


    ld e, a                                       ; $43ca: $5f
    ld sp, hl                                     ; $43cb: $f9
    ld [hl], l                                    ; $43cc: $75
    ld [c], a                                     ; $43cd: $e2
    dec hl                                        ; $43ce: $2b
    inc a                                         ; $43cf: $3c
    ld [hl], b                                    ; $43d0: $70
    ld h, a                                       ; $43d1: $67
    add hl, de                                    ; $43d2: $19
    jr jr_029_43bd                                ; $43d3: $18 $e8

    ld a, h                                       ; $43d5: $7c
    push hl                                       ; $43d6: $e5
    ld [$9603], sp                                ; $43d7: $08 $03 $96
    dec d                                         ; $43da: $15
    or l                                          ; $43db: $b5
    ld a, $d5                                     ; $43dc: $3e $d5
    ld a, h                                       ; $43de: $7c
    ldh a, [rVBK]                                 ; $43df: $f0 $4f
    dec hl                                        ; $43e1: $2b
    scf                                           ; $43e2: $37
    call c, Call_000_31a5                         ; $43e3: $dc $a5 $31
    ld l, l                                       ; $43e6: $6d
    nop                                           ; $43e7: $00
    ld h, c                                       ; $43e8: $61
    ld b, a                                       ; $43e9: $47
    ld b, c                                       ; $43ea: $41
    ld a, l                                       ; $43eb: $7d
    ld a, [hl-]                                   ; $43ec: $3a
    ld a, a                                       ; $43ed: $7f
    xor l                                         ; $43ee: $ad
    jp z, Jump_029_5a0b                           ; $43ef: $ca $0b $5a

    adc a                                         ; $43f2: $8f
    ld a, [c]                                     ; $43f3: $f2
    call $f234                                    ; $43f4: $cd $34 $f2
    jp c, $eac0                                   ; $43f7: $da $c0 $ea

    rst $38                                       ; $43fa: $ff
    sbc l                                         ; $43fb: $9d
    cp c                                          ; $43fc: $b9
    ld l, b                                       ; $43fd: $68
    ld d, l                                       ; $43fe: $55
    ld e, a                                       ; $43ff: $5f
    jp c, $ad7b                                   ; $4400: $da $7b $ad

    jp z, $cbd2                                   ; $4403: $ca $d2 $cb

    dec bc                                        ; $4406: $0b
    jp nz, Jump_000_2fad                          ; $4407: $c2 $ad $2f

    ccf                                           ; $440a: $3f
    dec h                                         ; $440b: $25
    ld [hl], $2f                                  ; $440c: $36 $2f
    cpl                                           ; $440e: $2f
    rst $08                                       ; $440f: $cf
    sbc l                                         ; $4410: $9d
    jp hl                                         ; $4411: $e9


    ld c, h                                       ; $4412: $4c
    adc c                                         ; $4413: $89
    adc l                                         ; $4414: $8d
    dec h                                         ; $4415: $25
    ld c, a                                       ; $4416: $4f
    call c, $b979                                 ; $4417: $dc $79 $b9
    ld e, [hl]                                    ; $441a: $5e
    ld e, [hl]                                    ; $441b: $5e
    and [hl]                                      ; $441c: $a6
    call nz, $24d6                                ; $441d: $c4 $d6 $24
    and c                                         ; $4420: $a1
    push af                                       ; $4421: $f5
    ret nc                                        ; $4422: $d0

    ld a, [$49af]                                 ; $4423: $fa $af $49
    inc hl                                        ; $4426: $23
    db $eb                                        ; $4427: $eb
    call c, $8eaa                                 ; $4428: $dc $aa $8e
    jr nc, jr_029_43c3                            ; $442b: $30 $96

    sub l                                         ; $442d: $95
    ld d, a                                       ; $442e: $57

jr_029_442f:
    ld h, c                                       ; $442f: $61
    dec hl                                        ; $4430: $2b
    ccf                                           ; $4431: $3f
    ld e, [hl]                                    ; $4432: $5e
    ld h, c                                       ; $4433: $61
    ld b, c                                       ; $4434: $41
    ld e, [hl]                                    ; $4435: $5e
    ld a, [bc]                                    ; $4436: $0a
    and [hl]                                      ; $4437: $a6
    cp h                                          ; $4438: $bc
    ld [hl], $b3                                  ; $4439: $36 $b3
    ld d, e                                       ; $443b: $53
    and [hl]                                      ; $443c: $a6
    db $e3                                        ; $443d: $e3
    res 1, l                                      ; $443e: $cb $8d
    adc a                                         ; $4440: $8f
    jr nc, @-$51                                  ; $4441: $30 $ad

    cp a                                          ; $4443: $bf
    ld a, [hl+]                                   ; $4444: $2a
    ld c, l                                       ; $4445: $4d
    ld h, h                                       ; $4446: $64
    ld l, e                                       ; $4447: $6b
    rst $38                                       ; $4448: $ff
    sub h                                         ; $4449: $94
    ld a, [de]                                    ; $444a: $1a
    cp [hl]                                       ; $444b: $be
    cp h                                          ; $444c: $bc
    inc a                                         ; $444d: $3c
    jp c, $dac9                                   ; $444e: $da $c9 $da

    or h                                          ; $4451: $b4
    ld a, a                                       ; $4452: $7f
    push hl                                       ; $4453: $e5
    ld d, a                                       ; $4454: $57
    and l                                         ; $4455: $a5
    adc c                                         ; $4456: $89
    ld l, h                                       ; $4457: $6c
    ld l, a                                       ; $4458: $6f
    ld a, l                                       ; $4459: $7d
    ld e, d                                       ; $445a: $5a
    ei                                            ; $445b: $fb
    rst $30                                       ; $445c: $f7
    sub $97                                       ; $445d: $d6 $97
    add [hl]                                      ; $445f: $86
    cpl                                           ; $4460: $2f
    cpl                                           ; $4461: $2f
    rst $08                                       ; $4462: $cf
    db $dd                                        ; $4463: $dd
    or l                                          ; $4464: $b5
    ld d, a                                       ; $4465: $57
    ld a, [hl]                                    ; $4466: $7e
    ld a, [c]                                     ; $4467: $f2
    ld a, [de]                                    ; $4468: $1a
    ld h, e                                       ; $4469: $63
    inc sp                                        ; $446a: $33
    ld e, [hl]                                    ; $446b: $5e
    ret                                           ; $446c: $c9


    sbc a                                         ; $446d: $9f
    ld hl, $270c                                  ; $446e: $21 $0c $27
    ld l, e                                       ; $4471: $6b
    db $d3                                        ; $4472: $d3
    cp $9d                                        ; $4473: $fe $9d
    ld a, [c]                                     ; $4475: $f2
    sub $1b                                       ; $4476: $d6 $1b
    db $e3                                        ; $4478: $e3
    rst $28                                       ; $4479: $ef
    and h                                         ; $447a: $a4
    and h                                         ; $447b: $a4
    and b                                         ; $447c: $a0
    sbc l                                         ; $447d: $9d
    xor $19                                       ; $447e: $ee $19
    xor [hl]                                      ; $4480: $ae
    jr z, jr_029_442f                             ; $4481: $28 $ac

    call c, Call_000_3170                         ; $4483: $dc $70 $31
    or e                                          ; $4486: $b3
    ld a, [hl]                                    ; $4487: $7e
    add hl, hl                                    ; $4488: $29
    sbc b                                         ; $4489: $98
    sbc l                                         ; $448a: $9d
    or d                                          ; $448b: $b2
    ld [hl], d                                    ; $448c: $72
    ld h, c                                       ; $448d: $61
    sbc [hl]                                      ; $448e: $9e
    jp z, $0610                                   ; $448f: $ca $10 $06

    sub [hl]                                      ; $4492: $96
    add c                                         ; $4493: $81
    ld a, [c]                                     ; $4494: $f2
    dec hl                                        ; $4495: $2b
    scf                                           ; $4496: $37
    ld e, h                                       ; $4497: $5c
    ld d, c                                       ; $4498: $51
    db $eb                                        ; $4499: $eb
    and l                                         ; $449a: $a5
    ld h, b                                       ; $449b: $60
    ld a, [hl-]                                   ; $449c: $3a
    cp [hl]                                       ; $449d: $be
    ld e, h                                       ; $449e: $5c
    add sp, -$44                                  ; $449f: $e8 $bc
    inc a                                         ; $44a1: $3c
    ld e, e                                       ; $44a2: $5b
    sub l                                         ; $44a3: $95
    ld h, h                                       ; $44a4: $64
    ld a, l                                       ; $44a5: $7d
    ld bc, $9bf5                                  ; $44a6: $01 $f5 $9b
    inc [hl]                                      ; $44a9: $34
    cp $7a                                        ; $44aa: $fe $7a
    reti                                          ; $44ac: $d9


    ret                                           ; $44ad: $c9


    push de                                       ; $44ae: $d5
    pop af                                        ; $44af: $f1
    ld c, c                                       ; $44b0: $49
    ld a, [de]                                    ; $44b1: $1a
    ld l, b                                       ; $44b2: $68
    adc h                                         ; $44b3: $8c
    ld l, b                                       ; $44b4: $68
    ld b, a                                       ; $44b5: $47
    ld b, c                                       ; $44b6: $41
    ld a, l                                       ; $44b7: $7d
    push hl                                       ; $44b8: $e5
    dec b                                         ; $44b9: $05
    ld h, c                                       ; $44ba: $61
    sub [hl]                                      ; $44bb: $96
    sbc d                                         ; $44bc: $9a
    push af                                       ; $44bd: $f5
    ld d, a                                       ; $44be: $57
    ld e, [hl]                                    ; $44bf: $5e
    add l                                         ; $44c0: $85
    xor l                                         ; $44c1: $ad
    db $fc                                        ; $44c2: $fc
    ld [c], a                                     ; $44c3: $e2
    xor l                                         ; $44c4: $ad
    ccf                                           ; $44c5: $3f
    call z, Call_029_6073                         ; $44c6: $cc $73 $60
    call nz, $a5de                                ; $44c9: $c4 $de $a5
    ld a, c                                       ; $44cc: $79
    ld sp, hl                                     ; $44cd: $f9
    ld b, l                                       ; $44ce: $45
    xor l                                         ; $44cf: $ad
    ccf                                           ; $44d0: $3f
    jp c, $32a9                                   ; $44d1: $da $a9 $32

    ld e, [hl]                                    ; $44d4: $5e
    ld h, c                                       ; $44d5: $61
    ld e, [hl]                                    ; $44d6: $5e
    call nc, $dc77                                ; $44d7: $d4 $77 $dc
    adc l                                         ; $44da: $8d
    ld d, l                                       ; $44db: $55
    jp hl                                         ; $44dc: $e9


    adc d                                         ; $44dd: $8a
    ld bc, $3f3d                                  ; $44de: $01 $3d $3f
    ld b, [hl]                                    ; $44e1: $46
    xor $ca                                       ; $44e2: $ee $ca
    rst $10                                       ; $44e4: $d7
    ld h, b                                       ; $44e5: $60
    push de                                       ; $44e6: $d5
    adc e                                         ; $44e7: $8b
    db $eb                                        ; $44e8: $eb
    and l                                         ; $44e9: $a5
    ret c                                         ; $44ea: $d8

    adc h                                         ; $44eb: $8c
    jp nc, $3a67                                  ; $44ec: $d2 $67 $3a

    dec hl                                        ; $44ef: $2b
    cpl                                           ; $44f0: $2f
    adc a                                         ; $44f1: $8f
    jr nc, @+$29                                  ; $44f2: $30 $27

    ld d, a                                       ; $44f4: $57
    rst $00                                       ; $44f5: $c7
    daa                                           ; $44f6: $27
    ld l, c                                       ; $44f7: $69
    and b                                         ; $44f8: $a0
    ld sp, $c2ee                                  ; $44f9: $31 $ee $c2
    inc d                                         ; $44fc: $14
    ldh [$82], a                                  ; $44fd: $e0 $82
    dec hl                                        ; $44ff: $2b
    ld sp, hl                                     ; $4500: $f9
    jp z, Jump_029_5b2b                           ; $4501: $ca $2b $5b

    xor b                                         ; $4504: $a8
    ldh [$2f], a                                  ; $4505: $e0 $2f
    ld l, b                                       ; $4507: $68
    dec l                                         ; $4508: $2d
    push hl                                       ; $4509: $e5
    ld l, e                                       ; $450a: $6b
    ld l, h                                       ; $450b: $6c
    ld h, b                                       ; $450c: $60
    db $e4                                        ; $450d: $e4
    ld h, e                                       ; $450e: $63
    or e                                          ; $450f: $b3
    ld a, [hl-]                                   ; $4510: $3a
    dec h                                         ; $4511: $25
    adc a                                         ; $4512: $8f
    jr nc, @-$68                                  ; $4513: $30 $96

    dec d                                         ; $4515: $15
    or l                                          ; $4516: $b5
    ld a, $d5                                     ; $4517: $3e $d5
    ld a, h                                       ; $4519: $7c
    ldh a, [rVBK]                                 ; $451a: $f0 $4f
    dec hl                                        ; $451c: $2b
    scf                                           ; $451d: $37
    sbc h                                         ; $451e: $9c
    daa                                           ; $451f: $27
    db $d3                                        ; $4520: $d3
    ld b, $61                                     ; $4521: $06 $61
    sub [hl]                                      ; $4523: $96
    ret                                           ; $4524: $c9


    ld l, e                                       ; $4525: $6b
    adc h                                         ; $4526: $8c
    call Call_029_5258                            ; $4527: $cd $58 $52
    call $ff07                                    ; $452a: $cd $07 $ff
    dec hl                                        ; $452d: $2b
    scf                                           ; $452e: $37
    sbc h                                         ; $452f: $9c
    push af                                       ; $4530: $f5
    and l                                         ; $4531: $a5
    ld e, c                                       ; $4532: $59
    jp c, $84fe                                   ; $4533: $da $fe $84

    jr nc, @-$57                                  ; $4536: $30 $a7

    and [hl]                                      ; $4538: $a6
    db $dd                                        ; $4539: $dd
    dec b                                         ; $453a: $05
    inc bc                                        ; $453b: $03
    and a                                         ; $453c: $a7
    db $e4                                        ; $453d: $e4
    ldh [rTMA], a                                 ; $453e: $e0 $06
    or h                                          ; $4540: $b4
    or h                                          ; $4541: $b4
    rst $10                                       ; $4542: $d7
    ld b, d                                       ; $4543: $42
    jp c, $8479                                   ; $4544: $da $79 $84

    ld bc, $5596                                  ; $4547: $01 $96 $55
    ld c, d                                       ; $454a: $4a
    dec [hl]                                      ; $454b: $35
    ld e, a                                       ; $454c: $5f
    sbc b                                         ; $454d: $98
    sub $ef                                       ; $454e: $d6 $ef
    add d                                         ; $4550: $82
    ld bc, $a4a7                                  ; $4551: $01 $a7 $a4
    inc l                                         ; $4554: $2c
    db $fc                                        ; $4555: $fc
    ld l, $eb                                     ; $4556: $2e $eb
    ld d, c                                       ; $4558: $51
    ld e, $7e                                     ; $4559: $1e $7e
    sbc l                                         ; $455b: $9d
    xor b                                         ; $455c: $a8
    db $e4                                        ; $455d: $e4
    or b                                          ; $455e: $b0
    and d                                         ; $455f: $a2
    sub $1f                                       ; $4560: $d6 $1f
    cpl                                           ; $4562: $2f
    jp c, Jump_000_3ce9                           ; $4563: $da $e9 $3c

    sbc e                                         ; $4566: $9b
    ld c, d                                       ; $4567: $4a
    ld a, [de]                                    ; $4568: $1a
    ld h, d                                       ; $4569: $62
    inc sp                                        ; $456a: $33
    add b                                         ; $456b: $80
    sub $a3                                       ; $456c: $d6 $a3
    ld a, h                                       ; $456e: $7c
    or e                                          ; $456f: $b3
    ret nc                                        ; $4570: $d0

    add b                                         ; $4571: $80
    xor a                                         ; $4572: $af
    db $fd                                        ; $4573: $fd
    ld [$63a1], sp                                ; $4574: $08 $a1 $63
    sbc $7a                                       ; $4577: $de $7a
    ld h, e                                       ; $4579: $63
    dec c                                         ; $457a: $0d
    sub $42                                       ; $457b: $d6 $42
    ld a, [hl+]                                   ; $457d: $2a
    rst $18                                       ; $457e: $df
    ld h, l                                       ; $457f: $65
    sub [hl]                                      ; $4580: $96
    sbc d                                         ; $4581: $9a
    push af                                       ; $4582: $f5
    daa                                           ; $4583: $27
    xor a                                         ; $4584: $af
    ld l, h                                       ; $4585: $6c
    jp c, $e34e                                   ; $4586: $da $4e $e3

    di                                            ; $4589: $f3
    ld a, [c]                                     ; $458a: $f2
    ld h, c                                       ; $458b: $61
    sub a                                         ; $458c: $97
    sbc l                                         ; $458d: $9d
    ld bc, $78bf                                  ; $458e: $01 $bf $78
    add e                                         ; $4591: $83
    ld [c], a                                     ; $4592: $e2
    ld c, e                                       ; $4593: $4b
    sbc c                                         ; $4594: $99
    ld a, l                                       ; $4595: $7d
    push hl                                       ; $4596: $e5
    cp c                                          ; $4597: $b9
    ld l, e                                       ; $4598: $6b
    ld d, l                                       ; $4599: $55
    sub c                                         ; $459a: $91
    and [hl]                                      ; $459b: $a6
    dec bc                                        ; $459c: $0b
    ld b, $3d                                     ; $459d: $06 $3d
    adc d                                         ; $459f: $8a
    ld d, d                                       ; $45a0: $52
    dec e                                         ; $45a1: $1d
    cp b                                          ; $45a2: $b8
    ld l, e                                       ; $45a3: $6b
    ld d, l                                       ; $45a4: $55
    sub c                                         ; $45a5: $91
    add [hl]                                      ; $45a6: $86
    dec sp                                        ; $45a7: $3b
    cpl                                           ; $45a8: $2f
    rst $18                                       ; $45a9: $df
    adc h                                         ; $45aa: $8c
    ld a, a                                       ; $45ab: $7f
    ld sp, hl                                     ; $45ac: $f9
    pop bc                                        ; $45ad: $c1
    ld sp, hl                                     ; $45ae: $f9
    and $9f                                       ; $45af: $e6 $9f
    db $e3                                        ; $45b1: $e3
    and l                                         ; $45b2: $a5
    ld h, b                                       ; $45b3: $60
    ld a, [de]                                    ; $45b4: $1a
    db $e3                                        ; $45b5: $e3
    cp h                                          ; $45b6: $bc
    db $fc                                        ; $45b7: $fc
    db $f4                                        ; $45b8: $f4
    jp z, $f8d2                                   ; $45b9: $ca $d2 $f8

    jp nc, $f85e                                  ; $45bc: $d2 $5e $f8

    ld [$2703], sp                                ; $45bf: $08 $03 $27
    cp l                                          ; $45c2: $bd
    rst $10                                       ; $45c3: $d7
    ld h, b                                       ; $45c4: $60
    push af                                       ; $45c5: $f5
    rst $38                                       ; $45c6: $ff
    adc $c2                                       ; $45c7: $ce $c2
    or h                                          ; $45c9: $b4
    ld e, [hl]                                    ; $45ca: $5e
    ld a, [bc]                                    ; $45cb: $0a
    ret nc                                        ; $45cc: $d0

    ld e, d                                       ; $45cd: $5a
    ld c, b                                       ; $45ce: $48
    dec sp                                        ; $45cf: $3b
    ld e, a                                       ; $45d0: $5f
    add e                                         ; $45d1: $83
    ld l, c                                       ; $45d2: $69
    sub h                                         ; $45d3: $94
    ld d, a                                       ; $45d4: $57
    sub $8c                                       ; $45d5: $d6 $8c
    rst $10                                       ; $45d7: $d7
    ld h, [hl]                                    ; $45d8: $66
    ld e, d                                       ; $45d9: $5a
    ld e, [hl]                                    ; $45da: $5e
    reti                                          ; $45db: $d9


    jp nc, $019e                                  ; $45dc: $d2 $9e $01

    add h                                         ; $45df: $84
    ld bc, $bf3d                                  ; $45e0: $01 $3d $bf
    ld h, $3f                                     ; $45e3: $26 $3f
    ldh a, [rNR31]                                ; $45e5: $f0 $1b

Jump_029_45e7:
    db $e3                                        ; $45e7: $e3
    ret nz                                        ; $45e8: $c0

    ld c, l                                       ; $45e9: $4d
    ld d, l                                       ; $45ea: $55
    rst $20                                       ; $45eb: $e7
    xor [hl]                                      ; $45ec: $ae
    ld d, l                                       ; $45ed: $55
    ld b, l                                       ; $45ee: $45
    sbc d                                         ; $45ef: $9a
    ld l, $5b                                     ; $45f0: $2e $5b
    rrca                                          ; $45f2: $0f
    ld l, c                                       ; $45f3: $69
    and [hl]                                      ; $45f4: $a6
    add c                                         ; $45f5: $81
    ld e, [hl]                                    ; $45f6: $5e
    ld [$0182], a                                 ; $45f7: $ea $82 $01
    ld b, a                                       ; $45fa: $47
    ld e, a                                       ; $45fb: $5f
    ld h, c                                       ; $45fc: $61
    ret nc                                        ; $45fd: $d0

    ld h, l                                       ; $45fe: $65
    dec a                                         ; $45ff: $3d
    ld c, d                                       ; $4600: $4a
    ld a, [de]                                    ; $4601: $1a
    ld d, b                                       ; $4602: $50
    ld h, d                                       ; $4603: $62
    or b                                          ; $4604: $b0
    or h                                          ; $4605: $b4
    rst $20                                       ; $4606: $e7
    push hl                                       ; $4607: $e5
    jp $eb2e                                      ; $4608: $c3 $2e $eb


    ld d, c                                       ; $460b: $51
    cp [hl]                                       ; $460c: $be
    xor c                                         ; $460d: $a9
    push bc                                       ; $460e: $c5
    cp b                                          ; $460f: $b8
    adc [hl]                                      ; $4610: $8e
    ld h, h                                       ; $4611: $64
    ld e, e                                       ; $4612: $5b
    db $db                                        ; $4613: $db
    or c                                          ; $4614: $b1
    sbc c                                         ; $4615: $99
    cp d                                          ; $4616: $ba
    ld l, e                                       ; $4617: $6b
    ld d, l                                       ; $4618: $55
    sbc a                                         ; $4619: $9f
    add c                                         ; $461a: $81
    ld e, l                                       ; $461b: $5d
    ld a, e                                       ; $461c: $7b
    db $fc                                        ; $461d: $fc
    xor a                                         ; $461e: $af
    sub d                                         ; $461f: $92
    inc b                                         ; $4620: $04
    sbc b                                         ; $4621: $98
    sub a                                         ; $4622: $97
    sbc a                                         ; $4623: $9f
    ld h, h                                       ; $4624: $64
    add [hl]                                      ; $4625: $86
    ld [$3d03], sp                                ; $4626: $08 $03 $3d
    ld c, d                                       ; $4629: $4a
    jp nz, $e54f                                  ; $462a: $c2 $4f $e5

    xor c                                         ; $462d: $a9
    and $6b                                       ; $462e: $e6 $6b
    ld e, a                                       ; $4630: $5f

jr_029_4631:
    ld h, c                                       ; $4631: $61
    add b                                         ; $4632: $80
    db $10                                        ; $4633: $10
    ld a, [c]                                     ; $4634: $f2
    ld a, [c]                                     ; $4635: $f2
    ld c, l                                       ; $4636: $4d
    ld c, l                                       ; $4637: $4d
    ld a, [hl]                                    ; $4638: $7e
    db $fc                                        ; $4639: $fc

Jump_029_463a:
    and l                                         ; $463a: $a5

Jump_029_463b:
jr_029_463b:
    ldh [$d9], a                                  ; $463b: $e0 $d9
    ld [$40df], a                                 ; $463d: $ea $df $40
    rla                                           ; $4640: $17
    inc c                                         ; $4641: $0c
    daa                                           ; $4642: $27
    ld h, l                                       ; $4643: $65
    ld d, l                                       ; $4644: $55
    ld a, a                                       ; $4645: $7f
    add [hl]                                      ; $4646: $86
    halt                                          ; $4647: $76
    ld a, [hl+]                                   ; $4648: $2a
    db $fd                                        ; $4649: $fd
    jp nc, $979e                                  ; $464a: $d2 $9e $97

    add h                                         ; $464d: $84
    ld e, a                                       ; $464e: $5f
    db $fd                                        ; $464f: $fd
    dec de                                        ; $4650: $1b
    ld e, b                                       ; $4651: $58
    ld l, b                                       ; $4652: $68
    ret nz                                        ; $4653: $c0

    sub a                                         ; $4654: $97
    sbc l                                         ; $4655: $9d
    and a                                         ; $4656: $a7
    ld e, l                                       ; $4657: $5d
    ld b, a                                       ; $4658: $47
    jr jr_029_46a2                                ; $4659: $18 $47

    dec de                                        ; $465b: $1b
    rra                                           ; $465c: $1f
    ld e, a                                       ; $465d: $5f
    ld l, [hl]                                    ; $465e: $6e
    ld d, l                                       ; $465f: $55
    sub [hl]                                      ; $4660: $96
    db $f4                                        ; $4661: $f4
    ld e, l                                       ; $4662: $5d
    ld sp, $8a3d                                  ; $4663: $31 $3d $8a
    ld a, [$dfea]                                 ; $4666: $fa $ea $df
    adc h                                         ; $4669: $8c
    ld e, [hl]                                    ; $466a: $5e
    ld h, l                                       ; $466b: $65
    ld e, [hl]                                    ; $466c: $5e
    ld a, [hl]                                    ; $466d: $7e
    sub $97                                       ; $466e: $d6 $97
    ld h, [hl]                                    ; $4670: $66
    sbc [hl]                                      ; $4671: $9e
    sbc l                                         ; $4672: $9d
    ld e, l                                       ; $4673: $5d
    jr jr_029_4631                                ; $4674: $18 $bb

    or [hl]                                       ; $4676: $b6
    db $fd                                        ; $4677: $fd
    ld a, [c]                                     ; $4678: $f2
    db $e4                                        ; $4679: $e4
    di                                            ; $467a: $f3
    and d                                         ; $467b: $a2
    inc [hl]                                      ; $467c: $34
    adc l                                         ; $467d: $8d
    ld [hl], c                                    ; $467e: $71

jr_029_467f:
    ld e, [hl]                                    ; $467f: $5e
    ld a, [hl]                                    ; $4680: $7e
    jp hl                                         ; $4681: $e9


    push hl                                       ; $4682: $e5
    dec b                                         ; $4683: $05
    db $10                                        ; $4684: $10
    ld b, $bd                                     ; $4685: $06 $bd
    jp nc, $7c2c                                  ; $4687: $d2 $2c $7c

    and l                                         ; $468a: $a5
    ld a, c                                       ; $468b: $79
    ld d, c                                       ; $468c: $51
    ld e, a                                       ; $468d: $5f
    sub b                                         ; $468e: $90
    sub c                                         ; $468f: $91
    dec l                                         ; $4690: $2d
    jp hl                                         ; $4691: $e9


    rst $00                                       ; $4692: $c7
    ld e, a                                       ; $4693: $5f
    cpl                                           ; $4694: $2f
    db $d3                                        ; $4695: $d3
    jr jr_029_467f                                ; $4696: $18 $e7

    push hl                                       ; $4698: $e5
    rlca                                          ; $4699: $07
    scf                                           ; $469a: $37
    ld e, d                                       ; $469b: $5a
    ld e, a                                       ; $469c: $5f
    ld d, [hl]                                    ; $469d: $56
    rst $38                                       ; $469e: $ff
    ld b, $66                                     ; $469f: $06 $66
    rst $00                                       ; $46a1: $c7

jr_029_46a2:
    and $52                                       ; $46a2: $e6 $52
    jr nc, jr_029_463b                            ; $46a4: $30 $95

    inc [hl]                                      ; $46a6: $34
    call nz, $bd76                                ; $46a7: $c4 $76 $bd
    dec hl                                        ; $46aa: $2b
    ld b, $3d                                     ; $46ab: $06 $3d
    adc d                                         ; $46ad: $8a
    ld a, d                                       ; $46ae: $7a
    dec c                                         ; $46af: $0d
    and $e5                                       ; $46b0: $e6 $e5
    sub a                                         ; $46b2: $97
    db $f4                                        ; $46b3: $f4
    ld l, b                                       ; $46b4: $68
    daa                                           ; $46b5: $27
    ld l, e                                       ; $46b6: $6b
    db $d3                                        ; $46b7: $d3
    cp $5d                                        ; $46b8: $fe $5d
    ld e, a                                       ; $46ba: $5f
    halt                                          ; $46bb: $76

jr_029_46bc:
    sbc [hl]                                      ; $46bc: $9e
    ld h, b                                       ; $46bd: $60
    ld e, [hl]                                    ; $46be: $5e
    ld a, [hl]                                    ; $46bf: $7e
    inc l                                         ; $46c0: $2c
    ld d, e                                       ; $46c1: $53
    db $10                                        ; $46c2: $10
    ld b, $bd                                     ; $46c3: $06 $bd
    jp nc, Jump_029_4a0c                          ; $46c5: $d2 $0c $4a

    sbc d                                         ; $46c8: $9a
    ret z                                         ; $46c9: $c8

    ld h, [hl]                                    ; $46ca: $66
    rst $00                                       ; $46cb: $c7
    ld h, [hl]                                    ; $46cc: $66
    and [hl]                                      ; $46cd: $a6
    inc sp                                        ; $46ce: $33
    dec h                                         ; $46cf: $25
    or [hl]                                       ; $46d0: $b6
    ldh [$7d], a                                  ; $46d1: $e0 $7d
    rst $10                                       ; $46d3: $d7
    sub a                                         ; $46d4: $97
    ld [hl-], a                                   ; $46d5: $32
    cp $6b                                        ; $46d6: $fe $6b
    ld sp, $de8e                                  ; $46d8: $31 $8e $de
    ld a, [$e0b2]                                 ; $46db: $fa $b2 $e0
    ld a, l                                       ; $46de: $7d
    ld e, [hl]                                    ; $46df: $5e
    inc h                                         ; $46e0: $24
    ld c, l                                       ; $46e1: $4d
    ld d, b                                       ; $46e2: $50
    and $e5                                       ; $46e3: $e6 $e5
    jp nz, $a658                                  ; $46e5: $c2 $58 $a6

    jr nz, @+$0e                                  ; $46e8: $20 $0c

    ld b, a                                       ; $46ea: $47
    dec de                                        ; $46eb: $1b
    sbc a                                         ; $46ec: $9f
    ld h, l                                       ; $46ed: $65
    inc l                                         ; $46ee: $2c
    xor c                                         ; $46ef: $a9
    and $2b                                       ; $46f0: $e6 $2b
    ld l, d                                       ; $46f2: $6a
    db $fd                                        ; $46f3: $fd
    add l                                         ; $46f4: $85
    call $92da                                    ; $46f5: $cd $da $92
    add hl, de                                    ; $46f8: $19
    ld [hl+], a                                   ; $46f9: $22
    inc c                                         ; $46fa: $0c
    dec a                                         ; $46fb: $3d
    or h                                          ; $46fc: $b4
    cp $0b                                        ; $46fd: $fe $0b
    cpl                                           ; $46ff: $2f
    dec a                                         ; $4700: $3d
    sbc d                                         ; $4701: $9a
    push bc                                       ; $4702: $c5
    ld l, e                                       ; $4703: $6b
    or b                                          ; $4704: $b0

Jump_029_4705:
    and h                                         ; $4705: $a4
    ret c                                         ; $4706: $d8

    ld c, h                                       ; $4707: $4c
    rst $10                                       ; $4708: $d7
    cp $e0                                        ; $4709: $fe $e0
    ld [de], a                                    ; $470b: $12
    cp l                                          ; $470c: $bd
    call nc, Call_029_6d60                        ; $470d: $d4 $60 $6d
    ret                                           ; $4710: $c9


    inc c                                         ; $4711: $0c
    cp c                                          ; $4712: $b9
    ld l, e                                       ; $4713: $6b
    dec de                                        ; $4714: $1b
    rra                                           ; $4715: $1f
    rst $38                                       ; $4716: $ff
    ld h, e                                       ; $4717: $63
    ld c, c                                       ; $4718: $49
    dec [hl]                                      ; $4719: $35
    ld e, a                                       ; $471a: $5f
    ld d, c                                       ; $471b: $51
    db $eb                                        ; $471c: $eb
    ld c, a                                       ; $471d: $4f
    xor c                                         ; $471e: $a9
    ld e, c                                       ; $471f: $59
    ld d, l                                       ; $4720: $55
    ld a, [c]                                     ; $4721: $f2
    ld d, [hl]                                    ; $4722: $56
    adc a                                         ; $4723: $8f
    jr nc, jr_029_46bc                            ; $4724: $30 $96

    dec d                                         ; $4726: $15

Jump_029_4727:
    or l                                          ; $4727: $b5
    cp $bc                                        ; $4728: $fe $bc
    db $fc                                        ; $472a: $fc
    ld [$a0df], a                                 ; $472b: $ea $df $a0
    db $ed                                        ; $472e: $ed
    and h                                         ; $472f: $a4
    rst $30                                       ; $4730: $f7
    ld a, [de]                                    ; $4731: $1a
    inc l                                         ; $4732: $2c

Call_029_4733:
    ld c, b                                       ; $4733: $48
    add h                                         ; $4734: $84
    ld bc, $a8c7                                  ; $4735: $01 $c7 $a8
    db $10                                        ; $4738: $10
    ld [hl], a                                    ; $4739: $77
    sub [hl]                                      ; $473a: $96
    add l                                         ; $473b: $85
    rla                                           ; $473c: $17
    ldh [$d9], a                                  ; $473d: $e0 $d9
    cp h                                          ; $473f: $bc
    db $fc                                        ; $4740: $fc
    ld [$74df], a                                 ; $4741: $ea $df $74
    reti                                          ; $4744: $d9


    inc l                                         ; $4745: $2c
    or l                                          ; $4746: $b5
    ld [hl], b                                    ; $4747: $70
    ld b, c                                       ; $4748: $41
    ld e, [hl]                                    ; $4749: $5e
    ld a, [bc]                                    ; $474a: $0a
    and $b9                                       ; $474b: $e6 $b9
    and d                                         ; $474d: $a2
    sub $9f                                       ; $474e: $d6 $9f
    rst $20                                       ; $4750: $e7
    ld e, h                                       ; $4751: $5c
    sbc d                                         ; $4752: $9a
    ld l, c                                       ; $4753: $69
    and b                                         ; $4754: $a0
    sub a                                         ; $4755: $97
    cp d                                          ; $4756: $ba
    ld h, b                                       ; $4757: $60
    db $dd                                        ; $4758: $dd
    jp z, $8403                                   ; $4759: $ca $03 $84

    ld c, a                                       ; $475c: $4f
    ld e, l                                       ; $475d: $5d
    halt                                          ; $475e: $76
    or h                                          ; $475f: $b4
    ld [hl], c                                    ; $4760: $71
    add h                                         ; $4761: $84
    sub b                                         ; $4762: $90
    sub a                                         ; $4763: $97
    ld l, a                                       ; $4764: $6f
    ld l, d                                       ; $4765: $6a
    ld a, [c]                                     ; $4766: $f2
    add e                                         ; $4767: $83
    ld e, h                                       ; $4768: $5c
    ei                                            ; $4769: $fb
    ld b, $5d                                     ; $476a: $06 $5d
    jr nc, jr_029_47ab                            ; $476c: $30 $3d

    jp z, $afc3                                   ; $476e: $ca $c3 $af

    ld [hl], e                                    ; $4771: $73
    cp a                                          ; $4772: $bf
    ld a, d                                       ; $4773: $7a
    sbc b                                         ; $4774: $98
    jp z, Jump_029_7daf                           ; $4775: $ca $af $7d

    add e                                         ; $4778: $83
    dec a                                         ; $4779: $3d
    and l                                         ; $477a: $a5
    add hl, bc                                    ; $477b: $09
    jp z, Jump_029_573c                           ; $477c: $ca $3c $57

    adc h                                         ; $477f: $8c
    ld hl, sp-$66                                 ; $4780: $f8 $9a
    inc [hl]                                      ; $4782: $34
    cp e                                          ; $4783: $bb
    inc b                                         ; $4784: $04
    cp $ca                                        ; $4785: $fe $ca
    sub [hl]                                      ; $4787: $96
    or $ce                                        ; $4788: $f6 $ce
    inc sp                                        ; $478a: $33
    ldh [$f3], a                                  ; $478b: $e0 $f3
    adc a                                         ; $478d: $8f
    pop af                                        ; $478e: $f1
    ld d, d                                       ; $478f: $52
    or b                                          ; $4790: $b0
    ld h, $cd                                     ; $4791: $26 $cd
    ld c, d                                       ; $4793: $4a
    ld a, [c]                                     ; $4794: $f2
    di                                            ; $4795: $f3
    ld e, h                                       ; $4796: $5c
    sbc b                                         ; $4797: $98
    sub $47                                       ; $4798: $d6 $47
    jr jr_029_47e3                                ; $479a: $18 $47

    ld de, $985b                                  ; $479c: $11 $5b $98
    ldh [rWX], a                                  ; $479f: $e0 $4b
    ld a, e                                       ; $47a1: $7b
    ld e, [hl]                                    ; $47a2: $5e
    ld a, $9c                                     ; $47a3: $3e $9c
    jp z, Jump_029_6d2f                           ; $47a5: $ca $2f $6d

    ld a, e                                       ; $47a8: $7b
    ld e, [hl]                                    ; $47a9: $5e
    ld a, [hl]                                    ; $47aa: $7e

jr_029_47ab:
    db $ed                                        ; $47ab: $ed
    ld d, h                                       ; $47ac: $54
    ld h, c                                       ; $47ad: $61
    ld l, b                                       ; $47ae: $68
    dec a                                         ; $47af: $3d
    jp z, $c585                                   ; $47b0: $ca $85 $c5

    call z, $2c3a                                 ; $47b3: $cc $3a $2c
    ld c, h                                       ; $47b6: $4c
    ld sp, hl                                     ; $47b7: $f9
    push bc                                       ; $47b8: $c5
    ld e, e                                       ; $47b9: $5b
    rst $38                                       ; $47ba: $ff
    jp hl                                         ; $47bb: $e9


    ld e, h                                       ; $47bc: $5c
    or h                                          ; $47bd: $b4
    inc sp                                        ; $47be: $33
    cpl                                           ; $47bf: $2f
    ld c, d                                       ; $47c0: $4a
    db $d3                                        ; $47c1: $d3
    dec b                                         ; $47c2: $05
    ld a, [de]                                    ; $47c3: $1a
    ld a, $c2                                     ; $47c4: $3e $c2
    and a                                         ; $47c6: $a7
    daa                                           ; $47c7: $27
    ld [hl], c                                    ; $47c8: $71
    ld b, a                                       ; $47c9: $47
    reti                                          ; $47ca: $d9


    dec b                                         ; $47cb: $05
    inc bc                                        ; $47cc: $03
    ld b, a                                       ; $47cd: $47
    rst $38                                       ; $47ce: $ff
    ld a, [hl+]                                   ; $47cf: $2a
    sub l                                         ; $47d0: $95
    or a                                          ; $47d1: $b7
    ld c, l                                       ; $47d2: $4d
    ld b, h                                       ; $47d3: $44
    ld [$4761], sp                                ; $47d4: $08 $61 $47
    ld de, $cc5b                                  ; $47d7: $11 $5b $cc
    xor h                                         ; $47da: $ac
    cpl                                           ; $47db: $2f
    adc l                                         ; $47dc: $8d
    rst $08                                       ; $47dd: $cf
    ld c, [hl]                                    ; $47de: $4e
    sbc c                                         ; $47df: $99
    sub a                                         ; $47e0: $97
    rst $18                                       ; $47e1: $df
    ld sp, hl                                     ; $47e2: $f9

jr_029_47e3:
    and $9f                                       ; $47e3: $e6 $9f
    cp b                                          ; $47e5: $b8
    add e                                         ; $47e6: $83
    ld a, [c]                                     ; $47e7: $f2
    dec [hl]                                      ; $47e8: $35
    sbc b                                         ; $47e9: $98
    sub a                                         ; $47ea: $97
    ld e, a                                       ; $47eb: $5f
    sbc b                                         ; $47ec: $98
    ldh [$eb], a                                  ; $47ed: $e0 $eb
    inc h                                         ; $47ef: $24
    rst $38                                       ; $47f0: $ff
    ld h, d                                       ; $47f1: $62
    sbc e                                         ; $47f2: $9b
    cp b                                          ; $47f3: $b8
    adc $fd                                       ; $47f4: $ce $fd
    ld [$0611], a                                 ; $47f6: $ea $11 $06
    daa                                           ; $47f9: $27
    ld h, l                                       ; $47fa: $65
    sub $97                                       ; $47fb: $d6 $97
    add $b9                                       ; $47fd: $c6 $b9
    ld l, e                                       ; $47ff: $6b
    ld d, l                                       ; $4800: $55
    sub c                                         ; $4801: $91
    and [hl]                                      ; $4802: $a6
    dec bc                                        ; $4803: $0b
    ld b, $ad                                     ; $4804: $06 $ad
    ret                                           ; $4806: $c9


    rst $28                                       ; $4807: $ef
    jp nz, Jump_029_4f4e                          ; $4808: $c2 $4e $4f

    ld [$018a], a                                 ; $480b: $ea $8a $01
    ld d, $84                                     ; $480e: $16 $84
    sub b                                         ; $4810: $90
    ld h, l                                       ; $4811: $65
    ld e, [hl]                                    ; $4812: $5e
    ld l, $d5                                     ; $4813: $2e $d5
    ld d, a                                       ; $4815: $57
    cp [hl]                                       ; $4816: $be
    ld d, $e3                                     ; $4817: $16 $e3
    jp c, $8d3f                                   ; $4819: $da $3f $8d

    ld [hl], c                                    ; $481c: $71
    ld [hl], d                                    ; $481d: $72
    add e                                         ; $481e: $83
    ld [c], a                                     ; $481f: $e2
    ld l, b                                       ; $4820: $68
    ld b, a                                       ; $4821: $47
    dec de                                        ; $4822: $1b
    ld e, a                                       ; $4823: $5f
    ld sp, hl                                     ; $4824: $f9
    ld a, [de]                                    ; $4825: $1a
    inc c                                         ; $4826: $0c
    db $fc                                        ; $4827: $fc
    add $b8                                       ; $4828: $c6 $b8
    ld a, [hl-]                                   ; $482a: $3a
    ld h, l                                       ; $482b: $65
    ld d, l                                       ; $482c: $55
    ld a, a                                       ; $482d: $7f
    or [hl]                                       ; $482e: $b6
    inc [hl]                                      ; $482f: $34
    adc [hl]                                      ; $4830: $8e
    jr nc, jr_029_4870                            ; $4831: $30 $3d

    ld a, a                                       ; $4833: $7f
    sub l                                         ; $4834: $95
    ld d, d                                       ; $4835: $52
    call $9e07                                    ; $4836: $cd $07 $9e
    sbc l                                         ; $4839: $9d
    ld d, c                                       ; $483a: $51
    ld a, [c]                                     ; $483b: $f2
    call c, $b129                                 ; $483c: $dc $29 $b1
    ld a, c                                       ; $483f: $79
    ld a, c                                       ; $4840: $79
    ld sp, hl                                     ; $4841: $f9
    ld a, [de]                                    ; $4842: $1a
    adc h                                         ; $4843: $8c
    jp nc, $a5cb                                  ; $4844: $d2 $cb $a5

    ld h, b                                       ; $4847: $60
    pop af                                        ; $4848: $f1
    ld l, l                                       ; $4849: $6d
    ld e, a                                       ; $484a: $5f
    ld a, c                                       ; $484b: $79
    ld sp, hl                                     ; $484c: $f9
    ld a, c                                       ; $484d: $79
    ld d, c                                       ; $484e: $51
    ld e, d                                       ; $484f: $5a
    and l                                         ; $4850: $a5
    or h                                          ; $4851: $b4
    ld h, d                                       ; $4852: $62
    call nz, $6e57                                ; $4853: $c4 $57 $6e
    adc b                                         ; $4856: $88
    halt                                          ; $4857: $76
    jp nc, $0d7b                                  ; $4858: $d2 $7b $0d

    ld d, $a6                                     ; $485b: $16 $a6
    push af                                       ; $485d: $f5
    sub a                                         ; $485e: $97
    inc [hl]                                      ; $485f: $34
    rst $08                                       ; $4860: $cf
    ld a, c                                       ; $4861: $79
    ld sp, hl                                     ; $4862: $f9
    pop de                                        ; $4863: $d1
    ld [hl], e                                    ; $4864: $73
    ldh a, [rOBP1]                                ; $4865: $f0 $49
    ld h, [hl]                                    ; $4867: $66
    adc b                                         ; $4868: $88
    jr nc, jr_029_48b2                            ; $4869: $30 $47

    call $6325                                    ; $486b: $cd $25 $63
    db $ec                                        ; $486e: $ec
    or d                                          ; $486f: $b2

jr_029_4870:
    ld d, e                                       ; $4870: $53
    jp nc, $81a7                                  ; $4871: $d2 $a7 $81

    ld e, [hl]                                    ; $4874: $5e
    ld [$0182], a                                 ; $4875: $ea $82 $01
    rst $00                                       ; $4878: $c7
    inc h                                         ; $4879: $24
    push de                                       ; $487a: $d5
    ld a, h                                       ; $487b: $7c
    db $ed                                        ; $487c: $ed
    sbc a                                         ; $487d: $9f
    dec l                                         ; $487e: $2d
    scf                                           ; $487f: $37

jr_029_4880:
    jr z, jr_029_4880                             ; $4880: $28 $fe

    db $f4                                        ; $4882: $f4
    inc c                                         ; $4883: $0c
    ld hl, $9964                                  ; $4884: $21 $64 $99
    sub a                                         ; $4887: $97
    ld c, e                                       ; $4888: $4b
    push af                                       ; $4889: $f5
    ld e, l                                       ; $488a: $5d
    xor a                                         ; $488b: $af
    pop bc                                        ; $488c: $c1
    jp c, $b4ff                                   ; $488d: $da $ff $b4

    ld a, [hl-]                                   ; $4890: $3a
    ld h, l                                       ; $4891: $65
    ld d, l                                       ; $4892: $55
    ld a, a                                       ; $4893: $7f
    or [hl]                                       ; $4894: $b6
    inc [hl]                                      ; $4895: $34
    adc [hl]                                      ; $4896: $8e
    ld h, [hl]                                    ; $4897: $66
    pop af                                        ; $4898: $f1
    dec d                                         ; $4899: $15
    add l                                         ; $489a: $85
    jp hl                                         ; $489b: $e9


    ld c, b                                       ; $489c: $48
    pop bc                                        ; $489d: $c1
    sbc e                                         ; $489e: $9b
    or l                                          ; $489f: $b5
    ld c, l                                       ; $48a0: $4d
    ret c                                         ; $48a1: $d8

    ld e, c                                       ; $48a2: $59
    jp nc, $c3ae                                  ; $48a3: $d2 $ae $c3

    jp z, Jump_029_432b                           ; $48a6: $ca $2b $43

    jr @+$18                                      ; $48a9: $18 $16

    ld e, a                                       ; $48ab: $5f
    ld d, c                                       ; $48ac: $51
    sbc b                                         ; $48ad: $98
    ld l, $a6                                     ; $48ae: $2e $a6
    cpl                                           ; $48b0: $2f
    db $ed                                        ; $48b1: $ed

jr_029_48b2:
    sub c                                         ; $48b2: $91
    add d                                         ; $48b3: $82
    scf                                           ; $48b4: $37
    di                                            ; $48b5: $f3
    ld [hl], d                                    ; $48b6: $72
    add hl, hl                                    ; $48b7: $29
    add b                                         ; $48b8: $80
    dec h                                         ; $48b9: $25
    db $ed                                        ; $48ba: $ed
    ld a, [hl-]                                   ; $48bb: $3a
    xor h                                         ; $48bc: $ac
    cp h                                          ; $48bd: $bc
    ld [hl-], a                                   ; $48be: $32
    add h                                         ; $48bf: $84
    ld bc, $ad47                                  ; $48c0: $01 $47 $ad
    rst $20                                       ; $48c3: $e7
    dec c                                         ; $48c4: $0d
    add d                                         ; $48c5: $82
    daa                                           ; $48c6: $27
    cp $23                                        ; $48c7: $fe $23
    ld e, e                                       ; $48c9: $5b
    rst $30                                       ; $48ca: $f7
    db $f4                                        ; $48cb: $f4
    sbc e                                         ; $48cc: $9b
    call nc, $9665                                ; $48cd: $d4 $65 $96
    ld e, d                                       ; $48d0: $5a
    cp b                                          ; $48d1: $b8
    jr nz, @+$2c                                  ; $48d2: $20 $2a

    ld e, e                                       ; $48d4: $5b
    ld sp, hl                                     ; $48d5: $f9
    or c                                          ; $48d6: $b1
    res 5, b                                      ; $48d7: $cb $a8
    and $2b                                       ; $48d9: $e6 $2b
    ld l, d                                       ; $48db: $6a
    db $fd                                        ; $48dc: $fd
    ld a, c                                       ; $48dd: $79
    ld sp, hl                                     ; $48de: $f9
    ld d, l                                       ; $48df: $55
    ld b, l                                       ; $48e0: $45
    xor c                                         ; $48e1: $a9
    ld a, [$ce79]                                 ; $48e2: $fa $79 $ce
    ret nz                                        ; $48e5: $c0

    rst $28                                       ; $48e6: $ef
    ld a, d                                       ; $48e7: $7a
    rla                                           ; $48e8: $17
    inc c                                         ; $48e9: $0c
    dec a                                         ; $48ea: $3d
    adc e                                         ; $48eb: $8b
    ld a, [$8e58]                                 ; $48ec: $fa $58 $8e
    rst $38                                       ; $48ef: $ff
    or c                                          ; $48f0: $b1
    inc e                                         ; $48f1: $1c
    dec h                                         ; $48f2: $25
    rst $18                                       ; $48f3: $df
    dec d                                         ; $48f4: $15
    inc bc                                        ; $48f5: $03
    xor l                                         ; $48f6: $ad
    ld a, [de]                                    ; $48f7: $1a
    ret z                                         ; $48f8: $c8

    ld h, l                                       ; $48f9: $65
    inc bc                                        ; $48fa: $03
    cp l                                          ; $48fb: $bd
    ld l, h                                       ; $48fc: $6c
    ldh a, [$d6]                                  ; $48fd: $f0 $d6
    rla                                           ; $48ff: $17
    adc l                                         ; $4900: $8d
    db $eb                                        ; $4901: $eb
    ld c, b                                       ; $4902: $48
    jp c, $900f                                   ; $4903: $da $0f $90

    ld [bc], a                                    ; $4906: $02
    db $eb                                        ; $4907: $eb
    ld c, b                                       ; $4908: $48
    ld a, [$fe57]                                 ; $4909: $fa $57 $fe
    ld l, h                                       ; $490c: $6c
    ld e, [hl]                                    ; $490d: $5e
    ld a, [hl]                                    ; $490e: $7e
    ldh [rOBP1], a                                ; $490f: $e0 $49
    adc a                                         ; $4911: $8f
    sub $d2                                       ; $4912: $d6 $d2
    sub c                                         ; $4914: $91
    inc [hl]                                      ; $4915: $34
    cp [hl]                                       ; $4916: $be
    ret nc                                        ; $4917: $d0

    add b                                         ; $4918: $80
    xor a                                         ; $4919: $af
    xor b                                         ; $491a: $a8
    push af                                       ; $491b: $f5
    rla                                           ; $491c: $17
    rst $18                                       ; $491d: $df
    or $79                                        ; $491e: $f6 $79
    ld sp, hl                                     ; $4920: $f9
    dec e                                         ; $4921: $1d
    di                                            ; $4922: $f3
    sub $1b                                       ; $4923: $d6 $1b
    ld l, e                                       ; $4925: $6b
    or b                                          ; $4926: $b0
    ld d, $52                                     ; $4927: $16 $52
    ld a, c                                       ; $4929: $79
    ldh [$ee], a                                  ; $492a: $e0 $ee
    cp b                                          ; $492c: $b8
    ld a, b                                       ; $492d: $78
    sbc l                                         ; $492e: $9d
    cp a                                          ; $492f: $bf
    ld d, l                                       ; $4930: $55
    ld a, l                                       ; $4931: $7d
    ld d, l                                       ; $4932: $55
    ld d, c                                       ; $4933: $51
    add hl, bc                                    ; $4934: $09
    sbc a                                         ; $4935: $9f
    call $afcb                                    ; $4936: $cd $cb $af
    cp $0d                                        ; $4939: $fe $0d
    ld [hl], b                                    ; $493b: $70
    and a                                         ; $493c: $a7
    call nz, Call_029_7276                        ; $493d: $c4 $76 $72
    ld [hl], l                                    ; $4940: $75
    ld a, h                                       ; $4941: $7c
    sub d                                         ; $4942: $92
    ld b, $1a                                     ; $4943: $06 $1a
    db $e3                                        ; $4945: $e3
    ld e, h                                       ; $4946: $5c
    sub h                                         ; $4947: $94
    ret nz                                        ; $4948: $c0

    cp [hl]                                       ; $4949: $be
    add c                                         ; $494a: $81
    sub c                                         ; $494b: $91
    ld h, a                                       ; $494c: $67
    di                                            ; $494d: $f3

Jump_029_494e:
    ld a, [c]                                     ; $494e: $f2
    xor e                                         ; $494f: $ab
    jp z, $8403                                   ; $4950: $ca $03 $84

    ld c, a                                       ; $4953: $4f
    ld l, b                                       ; $4954: $68
    dec a                                         ; $4955: $3d
    jp z, $8585                                   ; $4956: $ca $85 $85

    ld b, $7c                                     ; $4959: $06 $7c
    db $ed                                        ; $495b: $ed
    ld e, a                                       ; $495c: $5f
    dec bc                                        ; $495d: $0b
    ld l, c                                       ; $495e: $69
    rst $20                                       ; $495f: $e7
    ld l, e                                       ; $4960: $6b
    or b                                          ; $4961: $b0
    xor d                                         ; $4962: $aa
    ld l, b                                       ; $4963: $68
    adc h                                         ; $4964: $8c
    ld c, a                                       ; $4965: $4f
    pop bc                                        ; $4966: $c1
    and e                                         ; $4967: $a3
    or l                                          ; $4968: $b5
    inc h                                         ; $4969: $24
    ld [hl], a                                    ; $496a: $77
    sub [hl]                                      ; $496b: $96
    or l                                          ; $496c: $b5
    rst $18                                       ; $496d: $df
    rst $00                                       ; $496e: $c7
    rst $38                                       ; $496f: $ff
    adc d                                         ; $4970: $8a
    ld e, d                                       ; $4971: $5a
    ld a, a                                       ; $4972: $7f
    sbc [hl]                                      ; $4973: $9e
    dec bc                                        ; $4974: $0b
    cpl                                           ; $4975: $2f
    add a                                         ; $4976: $87
    jp hl                                         ; $4977: $e9


    ld a, [hl-]                                   ; $4978: $3a
    jp hl                                         ; $4979: $e9


    scf                                           ; $497a: $37
    add hl, bc                                    ; $497b: $09
    ld hl, $0184                                  ; $497c: $21 $84 $01
    dec a                                         ; $497f: $3d
    adc e                                         ; $4980: $8b
    ld a, [$4c82]                                 ; $4981: $fa $82 $4c
    ld [hl], $fe                                  ; $4984: $36 $fe
    add $38                                       ; $4986: $c6 $38
    cpl                                           ; $4988: $2f
    ld [$d963], a                                 ; $4989: $ea $63 $d9
    dec d                                         ; $498c: $15
    inc bc                                        ; $498d: $03
    sub [hl]                                      ; $498e: $96
    or c                                          ; $498f: $b1
    and h                                         ; $4990: $a4
    sbc d                                         ; $4991: $9a
    xor a                                         ; $4992: $af
    ld c, [hl]                                    ; $4993: $4e
    ret                                           ; $4994: $c9


    and e                                         ; $4995: $a3
    sbc l                                         ; $4996: $9d
    xor h                                         ; $4997: $ac
    ld c, l                                       ; $4998: $4d
    ei                                            ; $4999: $fb
    rst $20                                       ; $499a: $e7
    push hl                                       ; $499b: $e5
    rst $10                                       ; $499c: $d7
    ld c, c                                       ; $499d: $49
    cp a                                          ; $499e: $bf
    ld c, c                                       ; $499f: $49
    dec bc                                        ; $49a0: $0b
    xor [hl]                                      ; $49a1: $ae
    push af                                       ; $49a2: $f5
    ld h, c                                       ; $49a3: $61
    dec e                                         ; $49a4: $1d
    ld c, c                                       ; $49a5: $49
    rst $38                                       ; $49a6: $ff
    jp z, $d26f                                   ; $49a7: $ca $6f $d2

    ld l, h                                       ; $49aa: $6c
    ret                                           ; $49ab: $c9


    ld [hl], b                                    ; $49ac: $70
    or $95                                        ; $49ad: $f6 $95
    ld b, a                                       ; $49af: $47
    db $eb                                        ; $49b0: $eb
    ld sp, hl                                     ; $49b1: $f9
    dec hl                                        ; $49b2: $2b
    ld l, d                                       ; $49b3: $6a
    db $fd                                        ; $49b4: $fd
    ld a, c                                       ; $49b5: $79
    adc $be                                       ; $49b6: $ce $be
    call nz, $c696                                ; $49b8: $c4 $96 $c6
    ld de, $3d06                                  ; $49bb: $11 $06 $3d
    jp z, $d7cb                                   ; $49be: $ca $cb $d7

    ld h, b                                       ; $49c1: $60
    ld c, c                                       ; $49c2: $49
    or c                                          ; $49c3: $b1
    reti                                          ; $49c4: $d9


    ld d, e                                       ; $49c5: $53
    sbc d                                         ; $49c6: $9a
    and b                                         ; $49c7: $a0
    xor h                                         ; $49c8: $ac

jr_029_49c9:
    sub e                                         ; $49c9: $93
    ld a, [hl]                                    ; $49ca: $7e
    sub e                                         ; $49cb: $93
    ld h, [hl]                                    ; $49cc: $66
    and a                                         ; $49cd: $a7
    xor h                                         ; $49ce: $ac
    ld c, c                                       ; $49cf: $49
    add e                                         ; $49d0: $83

jr_029_49d1:
    halt                                          ; $49d1: $76
    ld a, h                                       ; $49d2: $7c
    ld c, [hl]                                    ; $49d3: $4e
    sra e                                         ; $49d4: $cb $2b
    dec sp                                        ; $49d6: $3b
    ld h, d                                       ; $49d7: $62
    sub [hl]                                      ; $49d8: $96
    ld e, d                                       ; $49d9: $5a
    adc h                                         ; $49da: $8c
    dec bc                                        ; $49db: $0b
    ld [hl], d                                    ; $49dc: $72
    xor [hl]                                      ; $49dd: $ae
    push af                                       ; $49de: $f5
    ld e, a                                       ; $49df: $5f
    and l                                         ; $49e0: $a5
    ld a, [c]                                     ; $49e1: $f2
    ld c, e                                       ; $49e2: $4b
    ld a, e                                       ; $49e3: $7b
    and a                                         ; $49e4: $a7
    daa                                           ; $49e5: $27
    ld c, l                                       ; $49e6: $4d
    adc c                                         ; $49e7: $89
    call $d3cb                                    ; $49e8: $cd $cb $d3
    db $ec                                        ; $49eb: $ec
    ld c, e                                       ; $49ec: $4b
    ld l, h                                       ; $49ed: $6c
    push hl                                       ; $49ee: $e5
    ld h, e                                       ; $49ef: $63
    rlca                                          ; $49f0: $07
    ld l, l                                       ; $49f1: $6d
    rst $00                                       ; $49f2: $c7
    ld h, a                                       ; $49f3: $67
    or d                                          ; $49f4: $b2
    ld b, l                                       ; $49f5: $45
    ld d, e                                       ; $49f6: $53
    push de                                       ; $49f7: $d5
    cp c                                          ; $49f8: $b9
    ld l, e                                       ; $49f9: $6b
    ld d, l                                       ; $49fa: $55
    sub c                                         ; $49fb: $91
    ld b, $21                                     ; $49fc: $06 $21
    call nc, $a9a4                                ; $49fe: $d4 $a4 $a9
    ret                                           ; $4a01: $c9


    ld c, a                                       ; $4a02: $4f
    ld h, a                                       ; $4a03: $67
    ld a, l                                       ; $4a04: $7d
    ld l, c                                       ; $4a05: $69
    ld d, $c8                                     ; $4a06: $16 $c8
    xor e                                         ; $4a08: $ab
    adc a                                         ; $4a09: $8f
    cp a                                          ; $4a0a: $bf
    inc e                                         ; $4a0b: $1c

Jump_029_4a0c:
    ld d, l                                       ; $4a0c: $55
    jr jr_029_49d1                                ; $4a0d: $18 $c2

    dec a                                         ; $4a0f: $3d
    adc d                                         ; $4a10: $8a
    ld a, [$65d8]                                 ; $4a11: $fa $d8 $65
    ld d, h                                       ; $4a14: $54
    di                                            ; $4a15: $f3
    pop af                                        ; $4a16: $f1
    add hl, hl                                    ; $4a17: $29
    ld [hl], l                                    ; $4a18: $75
    or h                                          ; $4a19: $b4
    sbc l                                         ; $4a1a: $9d
    ld e, d                                       ; $4a1b: $5a
    ld b, [hl]                                    ; $4a1c: $46
    ret                                           ; $4a1d: $c9


    sbc l                                         ; $4a1e: $9d
    ld h, l                                       ; $4a1f: $65
    ld a, [de]                                    ; $4a20: $1a
    ld l, $c8                                     ; $4a21: $2e $c8
    ld c, e                                       ; $4a23: $4b
    pop bc                                        ; $4a24: $c1
    inc a                                         ; $4a25: $3c
    ld d, a                                       ; $4a26: $57
    call nc, $f3fa                                ; $4a27: $d4 $fa $f3
    inc e                                         ; $4a2a: $1c
    cp b                                          ; $4a2b: $b8
    adc d                                         ; $4a2c: $8a
    cpl                                           ; $4a2d: $2f
    xor l                                         ; $4a2e: $ad
    cpl                                           ; $4a2f: $2f
    ld e, l                                       ; $4a30: $5d
    jr nc, jr_029_49c9                            ; $4a31: $30 $96

    ld a, [de]                                    ; $4a33: $1a
    ld e, e                                       ; $4a34: $5b
    ret                                           ; $4a35: $c9


    adc $b3                                       ; $4a36: $ce $b3
    dec [hl]                                      ; $4a38: $35
    ld l, c                                       ; $4a39: $69
    ld l, d                                       ; $4a3a: $6a
    ld l, h                                       ; $4a3b: $6c
    or $25                                        ; $4a3c: $f6 $25
    ld [hl], $2f                                  ; $4a3e: $36 $2f
    rla                                           ; $4a40: $17
    sub $89                                       ; $4a41: $d6 $89
    ld e, d                                       ; $4a43: $5a
    dec a                                         ; $4a44: $3d
    ld [hl], a                                    ; $4a45: $77
    db $dd                                        ; $4a46: $dd
    db $d3                                        ; $4a47: $d3
    db $fd                                        ; $4a48: $fd
    dec b                                         ; $4a49: $05
    ld h, c                                       ; $4a4a: $61
    sub [hl]                                      ; $4a4b: $96
    ld a, c                                       ; $4a4c: $79
    ld c, c                                       ; $4a4d: $49
    inc de                                        ; $4a4e: $13
    inc d                                         ; $4a4f: $14
    rst $18                                       ; $4a50: $df
    push af                                       ; $4a51: $f5
    pop af                                        ; $4a52: $f1
    ld l, c                                       ; $4a53: $69
    ld [hl+], a                                   ; $4a54: $22
    ld e, e                                       ; $4a55: $5b
    ei                                            ; $4a56: $fb
    rst $10                                       ; $4a57: $d7
    ld b, d                                       ; $4a58: $42
    jp c, $b479                                   ; $4a59: $da $79 $b4

    sub $9f                                       ; $4a5c: $d6 $9f
    ld b, [hl]                                    ; $4a5e: $46

jr_029_4a5f:
    ld e, [hl]                                    ; $4a5f: $5e
    dec de                                        ; $4a60: $1b
    jr jr_029_4a5f                                ; $4a61: $18 $fc

    add a                                         ; $4a63: $87
    rst $08                                       ; $4a64: $cf
    and $b9                                       ; $4a65: $e6 $b9
    and d                                         ; $4a67: $a2
    cp $0b                                        ; $4a68: $fe $0b
    rra                                           ; $4a6a: $1f
    ld h, c                                       ; $4a6b: $61
    xor l                                         ; $4a6c: $ad
    ccf                                           ; $4a6d: $3f
    sub [hl]                                      ; $4a6e: $96
    rrca                                          ; $4a6f: $0f

Call_029_4a70:
    ld l, b                                       ; $4a70: $68

Jump_029_4a71:
    xor l                                         ; $4a71: $ad
    ld [$d6cf], a                                 ; $4a72: $ea $cf $d6
    and h                                         ; $4a75: $a4
    sub c                                         ; $4a76: $91
    reti                                          ; $4a77: $d9


    ld [$85e5], a                                 ; $4a78: $ea $e5 $85
    dec sp                                        ; $4a7b: $3b
    rst $08                                       ; $4a7c: $cf
    db $e4                                        ; $4a7d: $e4
    adc [hl]                                      ; $4a7e: $8e
    cpl                                           ; $4a7f: $2f
    ld c, a                                       ; $4a80: $4f
    di                                            ; $4a81: $f3
    ld a, [c]                                     ; $4a82: $f2
    call Call_000_27f8                            ; $4a83: $cd $f8 $27
    sbc a                                         ; $4a86: $9f
    rst $20                                       ; $4a87: $e7
    ld e, d                                       ; $4a88: $5a
    inc sp                                        ; $4a89: $33
    ldh [rHDMA5], a                               ; $4a8a: $e0 $55
    inc e                                         ; $4a8c: $1c
    and $19                                       ; $4a8d: $e6 $19
    cp h                                          ; $4a8f: $bc
    sub a                                         ; $4a90: $97
    rla                                           ; $4a91: $17
    add h                                         ; $4a92: $84
    ld bc, $8196                                  ; $4a93: $01 $96 $81
    ld a, [c]                                     ; $4a96: $f2
    ld l, e                                       ; $4a97: $6b
    jp nc, $894c                                  ; $4a98: $d2 $4c $89

    xor l                                         ; $4a9b: $ad
    add l                                         ; $4a9c: $85
    or h                                          ; $4a9d: $b4
    di                                            ; $4a9e: $f3
    di                                            ; $4a9f: $f3
    inc c                                         ; $4aa0: $0c
    sbc $cb                                       ; $4aa1: $de $cb
    dec bc                                        ; $4aa3: $0b
    ld e, d                                       ; $4aa4: $5a
    res 4, l                                      ; $4aa5: $cb $a5
    ld [$7e57], a                                 ; $4aa7: $ea $57 $7e
    cp h                                          ; $4aaa: $bc
    ld [bc], a                                    ; $4aab: $02
    push de                                       ; $4aac: $d5
    ld a, h                                       ; $4aad: $7c
    ld l, d                                       ; $4aae: $6a
    ei                                            ; $4aaf: $fb
    set 0, d                                      ; $4ab0: $cb $c2
    ld b, a                                       ; $4ab2: $47
    ld [$5f95], sp                                ; $4ab3: $08 $95 $5f
    ld l, b                                       ; $4ab6: $68
    ret nz                                        ; $4ab7: $c0

    ld d, a                                       ; $4ab8: $57
    call nc, Call_029_6bfa                        ; $4ab9: $d4 $fa $6b
    rst $38                                       ; $4abc: $ff
    db $d3                                        ; $4abd: $d3
    sub d                                         ; $4abe: $92

Jump_029_4abf:
    and $b9                                       ; $4abf: $e6 $b9
    ld h, $4d                                     ; $4ac1: $26 $4d
    rla                                           ; $4ac3: $17
    inc c                                         ; $4ac4: $0c
    cp l                                          ; $4ac5: $bd
    ld e, $56                                     ; $4ac6: $1e $56
    ld a, [hl]                                    ; $4ac8: $7e
    cp h                                          ; $4ac9: $bc
    ld [bc], a                                    ; $4aca: $02
    ld e, d                                       ; $4acb: $5a
    adc a                                         ; $4acc: $8f
    call z, $95b5                                 ; $4acd: $cc $b5 $95
    db $ed                                        ; $4ad0: $ed
    cp b                                          ; $4ad1: $b8
    ld l, b                                       ; $4ad2: $68
    ld l, h                                       ; $4ad3: $6c
    cp e                                          ; $4ad4: $bb
    add hl, de                                    ; $4ad5: $19
    cp e                                          ; $4ad6: $bb
    adc h                                         ; $4ad7: $8c
    ld l, d                                       ; $4ad8: $6a
    cp [hl]                                       ; $4ad9: $be
    or $f5                                        ; $4ada: $f6 $f5
    ld e, a                                       ; $4adc: $5f
    cp c                                          ; $4add: $b9
    or b                                          ; $4ade: $b0
    ld hl, sp-$3f                                 ; $4adf: $f8 $c1
    jp nc, $e7b6                                  ; $4ae1: $d2 $b6 $e7

    push hl                                       ; $4ae4: $e5
    ld h, a                                       ; $4ae5: $67
    ld e, a                                       ; $4ae6: $5f
    ld bc, $df9f                                  ; $4ae7: $01 $9f $df
    ldh a, [$57]                                  ; $4aea: $f0 $57
    ld a, [hl]                                    ; $4aec: $7e
    ldh [$d9], a                                  ; $4aed: $e0 $d9
    jp hl                                         ; $4aef: $e9


    inc a                                         ; $4af0: $3c
    ld e, e                                       ; $4af1: $5b
    ld hl, sp+$08                                 ; $4af2: $f8 $08
    inc bc                                        ; $4af4: $03
    ld b, a                                       ; $4af5: $47
    dec de                                        ; $4af6: $1b
    rst $18                                       ; $4af7: $df
    or l                                          ; $4af8: $b5
    ld d, a                                       ; $4af9: $57
    ld a, [hl]                                    ; $4afa: $7e
    db $ec                                        ; $4afb: $ec
    ld [hl-], a                                   ; $4afc: $32
    xor d                                         ; $4afd: $aa
    ld sp, hl                                     ; $4afe: $f9
    cp h                                          ; $4aff: $bc
    ret z                                         ; $4b00: $c8

    xor e                                         ; $4b01: $ab
    ccf                                           ; $4b02: $3f
    xor l                                         ; $4b03: $ad
    ld c, c                                       ; $4b04: $49
    jp Jump_029_5f1d                              ; $4b05: $c3 $1d $5f


    ld [hl], d                                    ; $4b08: $72
    db $ec                                        ; $4b09: $ec
    or d                                          ; $4b0a: $b2
    xor [hl]                                      ; $4b0b: $ae
    jr jr_029_4b4b                                ; $4b0c: $18 $3d

    adc d                                         ; $4b0e: $8a
    ld a, [$8578]                                 ; $4b0f: $fa $78 $85
    add l                                         ; $4b12: $85
    call Call_000_0542                            ; $4b13: $cd $42 $05
    ld a, a                                       ; $4b16: $7f
    ld b, c                                       ; $4b17: $41
    ld l, e                                       ; $4b18: $6b
    db $fd                                        ; $4b19: $fd
    dec d                                         ; $4b1a: $15
    add l                                         ; $4b1b: $85
    ld a, c                                       ; $4b1c: $79
    adc $8b                                       ; $4b1d: $ce $8b
    cp h                                          ; $4b1f: $bc
    ld a, [$c2d3]                                 ; $4b20: $fa $d3 $c2
    rst $20                                       ; $4b23: $e7
    ld c, $32                                     ; $4b24: $0e $32
    ld a, h                                       ; $4b26: $7c
    cp a                                          ; $4b27: $bf
    pop hl                                        ; $4b28: $e1
    inc bc                                        ; $4b29: $03
    ld e, d                                       ; $4b2a: $5a
    db $eb                                        ; $4b2b: $eb
    rst $28                                       ; $4b2c: $ef
    jp nz, Jump_000_0720                          ; $4b2d: $c2 $20 $07

    ld l, $49                                     ; $4b30: $2e $49
    ld bc, $4a77                                  ; $4b32: $01 $77 $4a
    ld l, h                                       ; $4b35: $6c
    sub [hl]                                      ; $4b36: $96
    ld l, c                                       ; $4b37: $69

jr_029_4b38:
    jr c, jr_029_4b38                             ; $4b38: $38 $fe

    or l                                          ; $4b3a: $b5
    adc [hl]                                      ; $4b3b: $8e
    db $10                                        ; $4b3c: $10

Jump_029_4b3d:
    jp nz, Jump_000_3fad                          ; $4b3d: $c2 $ad $3f

    ld e, [hl]                                    ; $4b40: $5e
    ld h, c                                       ; $4b41: $61
    push hl                                       ; $4b42: $e5
    push hl                                       ; $4b43: $e5
    cp c                                          ; $4b44: $b9
    ld d, e                                       ; $4b45: $53
    ld e, a                                       ; $4b46: $5f
    ld l, e                                       ; $4b47: $6b
    ld b, $bc                                     ; $4b48: $06 $bc
    adc d                                         ; $4b4a: $8a

jr_029_4b4b:
    inc bc                                        ; $4b4b: $03
    ld [hl], a                                    ; $4b4c: $77
    db $fc                                        ; $4b4d: $fc
    push af                                       ; $4b4e: $f5
    or d                                          ; $4b4f: $b2
    ld h, $4d                                     ; $4b50: $26 $4d
    rst $10                                       ; $4b52: $d7
    ld l, $18                                     ; $4b53: $2e $18
    xor l                                         ; $4b55: $ad
    cp a                                          ; $4b56: $bf
    dec bc                                        ; $4b57: $0b
    db $d3                                        ; $4b58: $d3
    ret z                                         ; $4b59: $c8

    ld l, e                                       ; $4b5a: $6b
    inc bc                                        ; $4b5b: $03
    db $e3                                        ; $4b5c: $e3
    xor a                                         ; $4b5d: $af
    sub a                                         ; $4b5e: $97
    add l                                         ; $4b5f: $85
    adc a                                         ; $4b60: $8f
    sub $fa                                       ; $4b61: $d6 $fa
    ld a, [c]                                     ; $4b63: $f2
    call c, $7979                                 ; $4b64: $dc $79 $79
    ld hl, sp-$57                                 ; $4b67: $f8 $a9
    db $fc                                        ; $4b69: $fc
    db $ec                                        ; $4b6a: $ec
    sub h                                         ; $4b6b: $94

jr_029_4b6c:
    dec [hl]                                      ; $4b6c: $35
    ld l, c                                       ; $4b6d: $69
    db $10                                        ; $4b6e: $10
    ld b, $bd                                     ; $4b6f: $06 $bd
    jp nc, $e4d4                                  ; $4b71: $d2 $d4 $e4

    ld h, a                                       ; $4b74: $67
    xor e                                         ; $4b75: $ab
    call z, Call_029_4733                         ; $4b76: $cc $33 $47
    add hl, bc                                    ; $4b79: $09
    dec c                                         ; $4b7a: $0d
    ld [hl], a                                    ; $4b7b: $77
    db $dd                                        ; $4b7c: $dd
    db $d3                                        ; $4b7d: $d3
    db $fd                                        ; $4b7e: $fd
    dec b                                         ; $4b7f: $05
    call $8b52                                    ; $4b80: $cd $52 $8b
    ld [hl], c                                    ; $4b83: $71
    db $ec                                        ; $4b84: $ec
    dec [hl]                                      ; $4b85: $35
    adc [hl]                                      ; $4b86: $8e
    cp a                                          ; $4b87: $bf
    ld e, [hl]                                    ; $4b88: $5e
    sub $a4                                       ; $4b89: $d6 $a4
    sbc c                                         ; $4b8b: $99
    jp c, $32fe                                   ; $4b8c: $da $fe $32

    res 3, [hl]                                   ; $4b8f: $cb $9e
    add e                                         ; $4b91: $83
    add [hl]                                      ; $4b92: $86
    sub a                                         ; $4b93: $97
    ld a, [hl]                                    ; $4b94: $7e
    ld e, [hl]                                    ; $4b95: $5e
    ld l, $ec                                     ; $4b96: $2e $ec
    sub d                                         ; $4b98: $92
    cp a                                          ; $4b99: $bf
    inc a                                         ; $4b9a: $3c
    ld hl, sp-$5b                                 ; $4b9b: $f8 $a5
    ld h, b                                       ; $4b9d: $60
    pop hl                                        ; $4b9e: $e1
    dec d                                         ; $4b9f: $15
    ld c, c                                       ; $4ba0: $49
    ld b, c                                       ; $4ba1: $41
    or e                                          ; $4ba2: $b3
    call z, $a5cb                                 ; $4ba3: $cc $cb $a5
    ld a, [$d7ae]                                 ; $4ba6: $fa $ae $d7
    ld h, b                                       ; $4ba9: $60
    ld e, [hl]                                    ; $4baa: $5e
    ld a, [hl]                                    ; $4bab: $7e
    push af                                       ; $4bac: $f5
    ld l, a                                       ; $4bad: $6f
    and $39                                       ; $4bae: $e6 $39
    ei                                            ; $4bb0: $fb
    ld [de], a                                    ; $4bb1: $12
    cp e                                          ; $4bb2: $bb
    inc d                                         ; $4bb3: $14
    call z, $afcb                                 ; $4bb4: $cc $cb $af
    push bc                                       ; $4bb7: $c5
    sub e                                         ; $4bb8: $93
    ld e, $61                                     ; $4bb9: $1e $61
    sub [hl]                                      ; $4bbb: $96
    pop bc                                        ; $4bbc: $c1
    rst $38                                       ; $4bbd: $ff
    cp h                                          ; $4bbe: $bc
    db $fc                                        ; $4bbf: $fc
    ld e, d                                       ; $4bc0: $5a
    inc a                                         ; $4bc1: $3c
    jp hl                                         ; $4bc2: $e9


    cp c                                          ; $4bc3: $b9
    ld l, e                                       ; $4bc4: $6b
    dec de                                        ; $4bc5: $1b
    sbc a                                         ; $4bc6: $9f
    ld h, l                                       ; $4bc7: $65
    inc l                                         ; $4bc8: $2c
    xor c                                         ; $4bc9: $a9
    and $33                                       ; $4bca: $e6 $33
    call nz, $c05e                                ; $4bcc: $c4 $5e $c0
    sub l                                         ; $4bcf: $95
    jr jr_029_4b6c                                ; $4bd0: $18 $9a

    dec b                                         ; $4bd2: $05
    halt                                          ; $4bd3: $76
    ld a, l                                       ; $4bd4: $7d
    sub a                                         ; $4bd5: $97
    ldh [$b2], a                                  ; $4bd6: $e0 $b2
    sbc a                                         ; $4bd8: $9f
    sub a                                         ; $4bd9: $97
    rst $18                                       ; $4bda: $df
    ret                                           ; $4bdb: $c9


    ld d, a                                       ; $4bdc: $57
    inc h                                         ; $4bdd: $24
    and l                                         ; $4bde: $a5
    db $eb                                        ; $4bdf: $eb
    ld e, d                                       ; $4be0: $5a
    sub e                                         ; $4be1: $93
    rra                                           ; $4be2: $1f
    res 0, a                                      ; $4be3: $cb $87
    ld e, l                                       ; $4be5: $5d
    rra                                           ; $4be6: $1f
    sbc a                                         ; $4be7: $9f
    ld d, d                                       ; $4be8: $52
    rst $28                                       ; $4be9: $ef
    cp d                                          ; $4bea: $ba
    sub $8f                                       ; $4beb: $d6 $8f
    sbc l                                         ; $4bed: $9d
    add l                                         ; $4bee: $85
    rst $08                                       ; $4bef: $cf
    db $dd                                        ; $4bf0: $dd
    ret                                           ; $4bf1: $c9


    ld a, [bc]                                    ; $4bf2: $0a
    cp $d2                                        ; $4bf3: $fe $d2
    dec b                                         ; $4bf5: $05
    inc bc                                        ; $4bf6: $03
    ld h, a                                       ; $4bf7: $67

Jump_029_4bf8:
    or h                                          ; $4bf8: $b4
    inc e                                         ; $4bf9: $1c
    cp e                                          ; $4bfa: $bb
    ld e, $ad                                     ; $4bfb: $1e $ad
    rst $00                                       ; $4bfd: $c7
    xor $e8                                       ; $4bfe: $ee $e8
    ld d, e                                       ; $4c00: $53
    ld a, e                                       ; $4c01: $7b
    ld hl, $bd0c                                  ; $4c02: $21 $0c $bd
    ld e, $10                                     ; $4c05: $1e $10
    ld b, d                                       ; $4c07: $42
    ld d, l                                       ; $4c08: $55
    add [hl]                                      ; $4c09: $86
    cp a                                          ; $4c0a: $bf
    ld a, [c]                                     ; $4c0b: $f2
    ld a, [c]                                     ; $4c0c: $f2
    call c, $b3b5                                 ; $4c0d: $dc $b5 $b3
    pop hl                                        ; $4c10: $e1
    ld c, [hl]                                    ; $4c11: $4e
    adc c                                         ; $4c12: $89
    call $c63f                                    ; $4c13: $cd $3f $c6
    add l                                         ; $4c16: $85
    ccf                                           ; $4c17: $3f
    cp [hl]                                       ; $4c18: $be
    xor b                                         ; $4c19: $a8
    xor a                                         ; $4c1a: $af
    ld c, c                                       ; $4c1b: $49
    inc sp                                        ; $4c1c: $33
    ld hl, sp+$47                                 ; $4c1d: $f8 $47
    jr @+$18                                      ; $4c1f: $18 $16

    xor a                                         ; $4c21: $af
    pop bc                                        ; $4c22: $c1
    db $e4                                        ; $4c23: $e4
    dec [hl]                                      ; $4c24: $35
    ld [hl+], a                                   ; $4c25: $22
    add h                                         ; $4c26: $84
    ld l, $2d                                     ; $4c27: $2e $2d
    ld l, h                                       ; $4c29: $6c
    sub $c9                                       ; $4c2a: $d6 $c9
    xor d                                         ; $4c2c: $aa
    cp $8e                                        ; $4c2d: $fe $8e
    db $10                                        ; $4c2f: $10
    or d                                          ; $4c30: $b2
    xor h                                         ; $4c31: $ac
    xor b                                         ; $4c32: $a8
    push af                                       ; $4c33: $f5
    ld [hl], a                                    ; $4c34: $77
    dec e                                         ; $4c35: $1d
    ld hl, $0184                                  ; $4c36: $21 $84 $01
    dec a                                         ; $4c39: $3d
    adc e                                         ; $4c3a: $8b
    ld a, d                                       ; $4c3b: $7a
    ld d, a                                       ; $4c3c: $57
    inc c                                         ; $4c3d: $0c
    sub [hl]                                      ; $4c3e: $96
    pop bc                                        ; $4c3f: $c1
    rst $38                                       ; $4c40: $ff
    jp nz, $3e06                                  ; $4c41: $c2 $06 $3e

    jp c, $f1dc                                   ; $4c44: $da $dc $f1

    rst $10                                       ; $4c47: $d7
    res 7, h                                      ; $4c48: $cb $bc
    db $fc                                        ; $4c4a: $fc
    ld c, [hl]                                    ; $4c4b: $4e
    inc sp                                        ; $4c4c: $33
    sub a                                         ; $4c4d: $97
    or c                                          ; $4c4e: $b1
    db $eb                                        ; $4c4f: $eb
    ld d, l                                       ; $4c50: $55
    ld e, c                                       ; $4c51: $59
    ld h, l                                       ; $4c52: $65
    ld a, [hl-]                                   ; $4c53: $3a
    ld [$ad03], sp                                ; $4c54: $08 $03 $ad
    rst $00                                       ; $4c57: $c7
    xor $24                                       ; $4c58: $ee $24
    res 6, c                                      ; $4c5a: $cb $b1
    dec l                                         ; $4c5c: $2d
    ld l, b                                       ; $4c5d: $68
    dec a                                         ; $4c5e: $3d
    ld e, d                                       ; $4c5f: $5a
    adc a                                         ; $4c60: $8f
    ld e, l                                       ; $4c61: $5d
    ld c, e                                       ; $4c62: $4b
    adc a                                         ; $4c63: $8f
    ld d, e                                       ; $4c64: $53
    ld c, a                                       ; $4c65: $4f

Jump_029_4c66:
    add hl, sp                                    ; $4c66: $39
    halt                                          ; $4c67: $76
    sub [hl]                                      ; $4c68: $96
    sub [hl]                                      ; $4c69: $96
    ld e, c                                       ; $4c6a: $59
    ld c, [hl]                                    ; $4c6b: $4e
    ld e, c                                       ; $4c6c: $59
    xor e                                         ; $4c6d: $ab
    and l                                         ; $4c6e: $a5
    ld h, l                                       ; $4c6f: $65
    db $dd                                        ; $4c70: $dd
    ld c, a                                       ; $4c71: $4f
    db $ed                                        ; $4c72: $ed
    halt                                          ; $4c73: $76
    ld [c], a                                     ; $4c74: $e2
    or c                                          ; $4c75: $b1
    dec a                                         ; $4c76: $3d
    db $10                                        ; $4c77: $10
    ld b, $2d                                     ; $4c78: $06 $2d
    rst $00                                       ; $4c7a: $c7
    ld e, $bb                                     ; $4c7b: $1e $bb
    sbc [hl]                                      ; $4c7d: $9e
    xor l                                         ; $4c7e: $ad
    ld b, a                                       ; $4c7f: $47
    push af                                       ; $4c80: $f5
    sbc b                                         ; $4c81: $98
    ld h, l                                       ; $4c82: $65
    xor l                                         ; $4c83: $ad
    ld b, a                                       ; $4c84: $47
    sbc l                                         ; $4c85: $9d
    ld a, c                                       ; $4c86: $79
    db $ec                                        ; $4c87: $ec
    adc [hl]                                      ; $4c88: $8e
    ld a, $b6                                     ; $4c89: $3e $b6
    db $db                                        ; $4c8b: $db
    xor c                                         ; $4c8c: $a9
    daa                                           ; $4c8d: $27
    rra                                           ; $4c8e: $1f
    db $db                                        ; $4c8f: $db
    ld [hl], l                                    ; $4c90: $75
    ld h, a                                       ; $4c91: $67
    sbc h                                         ; $4c92: $9c
    ld [hl], d                                    ; $4c93: $72
    jp nc, $2db1                                  ; $4c94: $d2 $b1 $2d

    dec l                                         ; $4c97: $2d
    ld l, e                                       ; $4c98: $6b
    add hl, sp                                    ; $4c99: $39
    push af                                       ; $4c9a: $f5
    db $e4                                        ; $4c9b: $e4
    ld h, e                                       ; $4c9c: $63
    ld c, a                                       ; $4c9d: $4f
    dec a                                         ; $4c9e: $3d
    push hl                                       ; $4c9f: $e5
    ret c                                         ; $4ca0: $d8

    sbc l                                         ; $4ca1: $9d
    ld [hl], h                                    ; $4ca2: $74
    ld l, h                                       ; $4ca3: $6c
    adc a                                         ; $4ca4: $8f
    sub [hl]                                      ; $4ca5: $96
    sbc l                                         ; $4ca6: $9d
    ld a, h                                       ; $4ca7: $7c
    db $ec                                        ; $4ca8: $ec
    ld e, d                                       ; $4ca9: $5a
    ld e, d                                       ; $4caa: $5a
    adc a                                         ; $4cab: $8f
    ld a, [hl-]                                   ; $4cac: $3a
    db $fd                                        ; $4cad: $fd
    ret c                                         ; $4cae: $d8

    push af                                       ; $4caf: $f5
    ld l, b                                       ; $4cb0: $68
    dec a                                         ; $4cb1: $3d
    sub $72                                       ; $4cb2: $d6 $72
    ld a, [$3e8e]                                 ; $4cb4: $fa $8e $3e
    push af                                       ; $4cb7: $f5
    sbc b                                         ; $4cb8: $98
    ld e, [hl]                                    ; $4cb9: $5e
    call c, $d659                                 ; $4cba: $dc $59 $d6
    ld a, d                                       ; $4cbd: $7a
    call nc, $c799                                ; $4cbe: $d4 $99 $c7
    xor $94                                       ; $4cc1: $ee $94
    ld d, e                                       ; $4cc3: $53
    rst $10                                       ; $4cc4: $d7
    ld [hl], d                                    ; $4cc5: $72
    add $d1                                       ; $4cc6: $c6 $d1
    dec l                                         ; $4cc8: $2d
    dec a                                         ; $4cc9: $3d
    adc [hl]                                      ; $4cca: $8e
    ld a, [hl-]                                   ; $4ccb: $3a
    and l                                         ; $4ccc: $a5
    db $db                                        ; $4ccd: $db
    or c                                          ; $4cce: $b1
    ld l, b                                       ; $4ccf: $68
    ld b, a                                       ; $4cd0: $47
    sbc a                                         ; $4cd1: $9f
    pop de                                        ; $4cd2: $d1
    ld h, e                                       ; $4cd3: $63
    and a                                         ; $4cd4: $a7
    sbc [hl]                                      ; $4cd5: $9e
    jp nc, $d8ed                                  ; $4cd6: $d2 $ed $d8

    ld e, c                                       ; $4cd9: $59
    halt                                          ; $4cda: $76
    ld a, [c]                                     ; $4cdb: $f2
    ld d, c                                       ; $4cdc: $51
    daa                                           ; $4cdd: $27
    ld e, $bb                                     ; $4cde: $1e $bb
    ld e, $ad                                     ; $4ce0: $1e $ad
    rst $00                                       ; $4ce2: $c7
    xor $d8                                       ; $4ce3: $ee $d8
    sub e                                         ; $4ce5: $93
    inc l                                         ; $4ce6: $2c
    ld h, a                                       ; $4ce7: $67
    ld e, c                                       ; $4ce8: $59
    ld c, [hl]                                    ; $4ce9: $4e
    rst $18                                       ; $4cea: $df
    xor c                                         ; $4ceb: $a9
    rst $00                                       ; $4cec: $c7
    db $ed                                        ; $4ced: $ed
    inc h                                         ; $4cee: $24
    bit 6, c                                      ; $4cef: $cb $71
    rst $00                                       ; $4cf1: $c7
    ld [hl], d                                    ; $4cf2: $72
    ld h, a                                       ; $4cf3: $67
    ld e, c                                       ; $4cf4: $59
    ld c, a                                       ; $4cf5: $4f
    bit 1, c                                      ; $4cf6: $cb $49
    daa                                           ; $4cf8: $27
    xor l                                         ; $4cf9: $ad
    db $db                                        ; $4cfa: $db
    jp hl                                         ; $4cfb: $e9


    rst $00                                       ; $4cfc: $c7
    ld e, $d5                                     ; $4cfd: $1e $d5
    db $e3                                        ; $4cff: $e3
    ret c                                         ; $4d00: $d8

    dec e                                         ; $4d01: $1d
    or l                                          ; $4d02: $b5
    ld d, e                                       ; $4d03: $53
    adc [hl]                                      ; $4d04: $8e
    db $ed                                        ; $4d05: $ed
    cp c                                          ; $4d06: $b9
    and e                                         ; $4d07: $a3
    ld c, a                                       ; $4d08: $4f
    dec a                                         ; $4d09: $3d
    and [hl]                                      ; $4d0a: $a6
    rst $10                                       ; $4d0b: $d7
    ld c, [hl]                                    ; $4d0c: $4e
    dec a                                         ; $4d0d: $3d
    ld l, [hl]                                    ; $4d0e: $6e
    daa                                           ; $4d0f: $27
    rst $30                                       ; $4d10: $f7
    jp c, Jump_000_3da9                           ; $4d11: $da $a9 $3d

    ld c, a                                       ; $4d14: $4f
    ld b, c                                       ; $4d15: $41
    ld l, e                                       ; $4d16: $6b
    add hl, sp                                    ; $4d17: $39
    ld [hl], l                                    ; $4d18: $75
    rst $00                                       ; $4d19: $c7
    ld e, e                                       ; $4d1a: $5b
    adc $3c                                       ; $4d1b: $ce $3c
    halt                                          ; $4d1d: $76
    daa                                           ; $4d1e: $27
    rra                                           ; $4d1f: $1f
    cp e                                          ; $4d20: $bb
    ld e, $ad                                     ; $4d21: $1e $ad
    rst $00                                       ; $4d23: $c7
    xor [hl]                                      ; $4d24: $ae
    and l                                         ; $4d25: $a5
    rst $00                                       ; $4d26: $c7
    xor c                                         ; $4d27: $a9
    and a                                         ; $4d28: $a7
    inc e                                         ; $4d29: $1c
    cp e                                          ; $4d2a: $bb
    ld d, e                                       ; $4d2b: $53
    ld c, a                                       ; $4d2c: $4f
    rst $18                                       ; $4d2d: $df
    ld sp, $6396                                  ; $4d2e: $31 $96 $63
    ld [hl], a                                    ; $4d31: $77
    ld d, h                                       ; $4d32: $54
    bit 7, d                                      ; $4d33: $cb $7a
    sbc l                                         ; $4d35: $9d
    ld a, d                                       ; $4d36: $7a
    add $e9                                       ; $4d37: $c6 $e9
    db $eb                                        ; $4d39: $eb
    ld a, [hl]                                    ; $4d3a: $7e
    call nc, $c7e9                                ; $4d3b: $d4 $e9 $c7

jr_029_4d3e:
    sbc [hl]                                      ; $4d3e: $9e
    jp nc, Jump_029_65a3                          ; $4d3f: $d2 $a3 $65

    rst $00                                       ; $4d42: $c7
    ld e, b                                       ; $4d43: $58
    adc [hl]                                      ; $4d44: $8e
    ld b, c                                       ; $4d45: $41
    ld [$7d1d], sp                                ; $4d46: $08 $1d $7d
    db $ec                                        ; $4d49: $ec
    pop af                                        ; $4d4a: $f1
    rst $00                                       ; $4d4b: $c7
    ld e, e                                       ; $4d4c: $5b
    ld c, [hl]                                    ; $4d4d: $4e
    add hl, sp                                    ; $4d4e: $39
    ld e, $61                                     ; $4d4f: $1e $61
    daa                                           ; $4d51: $27
    ld e, l                                       ; $4d52: $5d
    sub l                                         ; $4d53: $95
    ld l, $18                                     ; $4d54: $2e $18
    rst $00                                       ; $4d56: $c7
    ld h, a                                       ; $4d57: $67
    or d                                          ; $4d58: $b2
    xor c                                         ; $4d59: $a9
    db $ed                                        ; $4d5a: $ed
    cpl                                           ; $4d5b: $2f
    sub h                                         ; $4d5c: $94
    ld c, c                                       ; $4d5d: $49
    call c, $aab5                                 ; $4d5e: $dc $b5 $aa
    ld c, b                                       ; $4d61: $48
    add e                                         ; $4d62: $83
    jr nc, jr_029_4da2                            ; $4d63: $30 $3d

    jp z, $c5af                                   ; $4d65: $ca $af $c5

    sub e                                         ; $4d68: $93
    cp [hl]                                       ; $4d69: $be
    bit 1, [hl]                                   ; $4d6a: $cb $4e
    inc sp                                        ; $4d6c: $33
    ld d, a                                       ; $4d6d: $57
    db $e4                                        ; $4d6e: $e4
    ld h, e                                       ; $4d6f: $63
    ld e, h                                       ; $4d70: $5c
    ld d, c                                       ; $4d71: $51
    ret c                                         ; $4d72: $d8

    push af                                       ; $4d73: $f5
    ld l, $18                                     ; $4d74: $2e $18
    and a                                         ; $4d76: $a7
    inc h                                         ; $4d77: $24
    ld [hl], a                                    ; $4d78: $77
    sub [hl]                                      ; $4d79: $96
    xor c                                         ; $4d7a: $a9
    ret z                                         ; $4d7b: $c8

jr_029_4d7c:
    or l                                          ; $4d7c: $b5
    ld a, $db                                     ; $4d7d: $3e $db
    and l                                         ; $4d7f: $a5
    ld sp, hl                                     ; $4d80: $f9
    dec c                                         ; $4d81: $0d
    ld a, a                                       ; $4d82: $7f
    sbc [hl]                                      ; $4d83: $9e
    db $eb                                        ; $4d84: $eb
    ret z                                         ; $4d85: $c8

    ld e, e                                       ; $4d86: $5b
    sbc a                                         ; $4d87: $9f
    ld a, h                                       ; $4d88: $7c
    ld e, [hl]                                    ; $4d89: $5e
    call nc, $d3b9                                ; $4d8a: $d4 $b9 $d3
    add sp, $25                                   ; $4d8d: $e8 $25
    ld c, l                                       ; $4d8f: $4d
    ld d, b                                       ; $4d90: $50
    sub $a4                                       ; $4d91: $d6 $a4
    add hl, de                                    ; $4d93: $19
    rst $38                                       ; $4d94: $ff
    ld a, [c]                                     ; $4d95: $f2
    ld h, e                                       ; $4d96: $63
    ld a, c                                       ; $4d97: $79
    add hl, hl                                    ; $4d98: $29
    sbc b                                         ; $4d99: $98
    push af                                       ; $4d9a: $f5
    and l                                         ; $4d9b: $a5
    add hl, de                                    ; $4d9c: $19
    rst $38                                       ; $4d9d: $ff
    ld sp, $692e                                  ; $4d9e: $31 $2e $69
    ld c, l                                       ; $4da1: $4d

jr_029_4da2:
    ld a, [de]                                    ; $4da2: $1a
    ld e, c                                       ; $4da3: $59
    ld a, [c]                                     ; $4da4: $f2
    add h                                         ; $4da5: $84
    jr nc, jr_029_4d3e                            ; $4da6: $30 $96

    dec d                                         ; $4da8: $15
    or l                                          ; $4da9: $b5
    cp $20                                        ; $4daa: $fe $20
    jp $f9df                                      ; $4dac: $c3 $df $f9


    and $c1                                       ; $4daf: $e6 $c1
    ld l, a                                       ; $4db1: $6f
    ld [de], a                                    ; $4db2: $12
    and b                                         ; $4db3: $a0
    ld e, c                                       ; $4db4: $59
    ld h, b                                       ; $4db5: $60
    ld h, a                                       ; $4db6: $67
    ld h, [hl]                                    ; $4db7: $66
    ld h, h                                       ; $4db8: $64
    rra                                           ; $4db9: $1f
    and [hl]                                      ; $4dba: $a6
    ld hl, sp-$28                                 ; $4dbb: $f8 $d8
    dec hl                                        ; $4dbd: $2b
    db $eb                                        ; $4dbe: $eb
    adc d                                         ; $4dbf: $8a
    ld bc, $24a7                                  ; $4dc0: $01 $a7 $24
    jp c, Jump_029_494e                           ; $4dc3: $da $4e $49

    ld e, a                                       ; $4dc6: $5f
    ei                                            ; $4dc7: $fb
    cpl                                           ; $4dc8: $2f
    dec b                                         ; $4dc9: $05
    ld [hl], e                                    ; $4dca: $73
    ld sp, $99b1                                  ; $4dcb: $31 $b1 $99
    add $6b                                       ; $4dce: $c6 $6b
    ld a, l                                       ; $4dd0: $7d
    xor $ca                                       ; $4dd1: $ee $ca
    xor a                                         ; $4dd3: $af
    ld d, d                                       ; $4dd4: $52
    and d                                         ; $4dd5: $a2
    db $f4                                        ; $4dd6: $f4
    or l                                          ; $4dd7: $b5
    ld a, a                                       ; $4dd8: $7f
    push af                                       ; $4dd9: $f5
    dec de                                        ; $4dda: $1b
    db $e3                                        ; $4ddb: $e3
    inc sp                                        ; $4ddc: $33
    or h                                          ; $4ddd: $b4
    sub $df                                       ; $4dde: $d6 $df
    add l                                         ; $4de0: $85
    add c                                         ; $4de1: $81
    rst $18                                       ; $4de2: $df
    jr jr_029_4d7c                                ; $4de3: $18 $97

    add $e7                                       ; $4de5: $c6 $e7
    push hl                                       ; $4de7: $e5
    push hl                                       ; $4de8: $e5
    rlca                                          ; $4de9: $07
    add hl, de                                    ; $4dea: $19
    ld a, $5f                                     ; $4deb: $3e $5f
    ld e, [hl]                                    ; $4ded: $5e
    ld e, $21                                     ; $4dee: $1e $21
    add h                                         ; $4df0: $84
    ld bc, $1147                                  ; $4df1: $01 $47 $11
    sbc e                                         ; $4df4: $9b
    sub a                                         ; $4df5: $97
    sbc a                                         ; $4df6: $9f
    add l                                         ; $4df7: $85
    xor h                                         ; $4df8: $ac
    rla                                           ; $4df9: $17
    ld l, [hl]                                    ; $4dfa: $6e
    ei                                            ; $4dfb: $fb
    add $eb                                       ; $4dfc: $c6 $eb
    call $c5ba                                    ; $4dfe: $cd $ba $c5
    call nc, $fafa                                ; $4e01: $d4 $fa $fa
    ld e, $cb                                     ; $4e04: $1e $cb

jr_029_4e06:
    dec [hl]                                      ; $4e06: $35
    ld l, c                                       ; $4e07: $69
    ld d, [hl]                                    ; $4e08: $56
    and a                                         ; $4e09: $a7
    db $e4                                        ; $4e0a: $e4
    rst $00                                       ; $4e0b: $c7
    sub a                                         ; $4e0c: $97
    inc e                                         ; $4e0d: $1c
    inc a                                         ; $4e0e: $3c
    ld sp, hl                                     ; $4e0f: $f9
    xor [hl]                                      ; $4e10: $ae
    rst $08                                       ; $4e11: $cf
    ld [hl], e                                    ; $4e12: $73
    pop hl                                        ; $4e13: $e1
    ld [hl], a                                    ; $4e14: $77
    push bc                                       ; $4e15: $c5
    cp l                                          ; $4e16: $bd
    jp nc, $6cc8                                  ; $4e17: $d2 $c8 $6c

    push af                                       ; $4e1a: $f5
    ld a, [c]                                     ; $4e1b: $f2
    or d                                          ; $4e1c: $b2
    ld hl, sp-$4a                                 ; $4e1d: $f8 $b6
    rst $28                                       ; $4e1f: $ef
    ld a, [$ebf8]                                 ; $4e20: $fa $f8 $eb
    ld h, l                                       ; $4e23: $65
    pop hl                                        ; $4e24: $e1
    and e                                         ; $4e25: $a3
    ld e, c                                       ; $4e26: $59
    and $25                                       ; $4e27: $e6 $25
    ld c, l                                       ; $4e29: $4d
    ld d, b                                       ; $4e2a: $50
    ld a, h                                       ; $4e2b: $7c
    ld c, l                                       ; $4e2c: $4d
    sbc d                                         ; $4e2d: $9a
    ld a, [de]                                    ; $4e2e: $1a
    ld e, e                                       ; $4e2f: $5b
    cp h                                          ; $4e30: $bc
    push af                                       ; $4e31: $f5
    sbc a                                         ; $4e32: $9f
    rst $20                                       ; $4e33: $e7
    adc d                                         ; $4e34: $8a
    ld e, d                                       ; $4e35: $5a
    ld a, a                                       ; $4e36: $7f
    rst $10                                       ; $4e37: $d7
    ld de, $4706                                  ; $4e38: $11 $06 $47
    ld de, $979b                                  ; $4e3b: $11 $9b $97
    sub a                                         ; $4e3e: $97
    xor a                                         ; $4e3f: $af
    pop bc                                        ; $4e40: $c1
    jr nz, jr_029_4e06                            ; $4e41: $20 $c3

    rst $30                                       ; $4e43: $f7
    ld [hl], d                                    ; $4e44: $72
    add hl, hl                                    ; $4e45: $29
    ret c                                         ; $4e46: $d8

    ld b, a                                       ; $4e47: $47
    ld a, b                                       ; $4e48: $78
    add h                                         ; $4e49: $84
    db $10                                        ; $4e4a: $10
    ld b, $c7                                     ; $4e4b: $06 $c7
    ld e, l                                       ; $4e4d: $5d
    ld sp, hl                                     ; $4e4e: $f9
    add hl, hl                                    ; $4e4f: $29
    xor a                                         ; $4e50: $af
    dec c                                         ; $4e51: $0d
    jp nz, Jump_029_4b3d                          ; $4e52: $c2 $3d $4b

    inc sp                                        ; $4e55: $33
    sub [hl]                                      ; $4e56: $96
    rrca                                          ; $4e57: $0f
    db $eb                                        ; $4e58: $eb
    ld l, $69                                     ; $4e59: $2e $69
    ccf                                           ; $4e5b: $3f
    ld b, b                                       ; $4e5c: $40
    jp z, $485a                                   ; $4e5d: $ca $5a $48

    dec sp                                        ; $4e60: $3b
    ccf                                           ; $4e61: $3f
    ld hl, sp+$0f                                 ; $4e62: $f8 $0f
    rst $20                                       ; $4e64: $e7
    cp c                                          ; $4e65: $b9
    and d                                         ; $4e66: $a2
    cp $0b                                        ; $4e67: $fe $0b
    cp a                                          ; $4e69: $bf
    dec hl                                        ; $4e6a: $2b
    ld b, $bd                                     ; $4e6b: $06 $bd
    jp nc, $6cc8                                  ; $4e6d: $d2 $c8 $6c

    push af                                       ; $4e70: $f5
    ld a, [c]                                     ; $4e71: $f2
    ld [hl-], a                                   ; $4e72: $32
    ld d, b                                       ; $4e73: $50
    db $eb                                        ; $4e74: $eb
    or e                                          ; $4e75: $b3
    sub l                                         ; $4e76: $95
    dec bc                                        ; $4e77: $0b
    adc e                                         ; $4e78: $8b
    rst $10                                       ; $4e79: $d7
    ld a, [hl]                                    ; $4e7a: $7e
    xor $94                                       ; $4e7b: $ee $94
    ret c                                         ; $4e7d: $d8

    jp z, $a8af                                   ; $4e7e: $ca $af $a8

    ccf                                           ; $4e81: $3f
    inc l                                         ; $4e82: $2c
    ld sp, hl                                     ; $4e83: $f9
    ld c, e                                       ; $4e84: $4b
    pop bc                                        ; $4e85: $c1
    cp h                                          ; $4e86: $bc
    xor b                                         ; $4e87: $a8
    adc a                                         ; $4e88: $8f
    ld a, l                                       ; $4e89: $7d
    db $db                                        ; $4e8a: $db
    pop de                                        ; $4e8b: $d1
    inc l                                         ; $4e8c: $2c
    di                                            ; $4e8d: $f3
    ld [hl], d                                    ; $4e8e: $72
    xor c                                         ; $4e8f: $a9
    ld a, $2f                                     ; $4e90: $3e $2f
    ld [$1835], a                                 ; $4e92: $ea $35 $18
    ld e, a                                       ; $4e95: $5f
    sbc d                                         ; $4e96: $9a
    sub l                                         ; $4e97: $95
    ld e, a                                       ; $4e98: $5f
    ld d, c                                       ; $4e99: $51
    ld e, b                                       ; $4e9a: $58
    ld b, a                                       ; $4e9b: $47
    jp nc, $f2bf                                  ; $4e9c: $d2 $bf $f2

    ld h, a                                       ; $4e9f: $67
    ld l, e                                       ; $4ea0: $6b
    jp nc, Jump_029_634c                          ; $4ea1: $d2 $4c $63

    ld e, h                                       ; $4ea4: $5c
    di                                            ; $4ea5: $f3
    ld a, [hl+]                                   ; $4ea6: $2a
    ld l, b                                       ; $4ea7: $68
    ld d, $5a                                     ; $4ea8: $16 $5a
    cp c                                          ; $4eaa: $b9
    or b                                          ; $4eab: $b0
    ldh a, [rNR12]                                ; $4eac: $f0 $12
    db $e3                                        ; $4eae: $e3
    adc $8b                                       ; $4eaf: $ce $8b
    ld a, [$34f8]                                 ; $4eb1: $fa $f8 $34
    sub c                                         ; $4eb4: $91
    dec l                                         ; $4eb5: $2d
    call nc, $affa                                ; $4eb6: $d4 $fa $af
    call c, Call_029_4a70                         ; $4eb9: $dc $70 $4a
    ld l, h                                       ; $4ebc: $6c
    ld c, l                                       ; $4ebd: $4d
    ld a, [de]                                    ; $4ebe: $1a
    sbc c                                         ; $4ebf: $99
    xor l                                         ; $4ec0: $ad
    ld e, [hl]                                    ; $4ec1: $5e
    ld e, [hl]                                    ; $4ec2: $5e

Jump_029_4ec3:
    or $d6                                        ; $4ec3: $f6 $d6
    daa                                           ; $4ec5: $27
    add h                                         ; $4ec6: $84
    ld bc, $c9ad                                  ; $4ec7: $01 $ad $c9
    adc a                                         ; $4eca: $8f
    ld e, l                                       ; $4ecb: $5d
    ld [hl], $cb                                  ; $4ecc: $36 $cb
    add d                                         ; $4ece: $82
    rst $30                                       ; $4ecf: $f7
    ld a, c                                       ; $4ed0: $79
    ld sp, hl                                     ; $4ed1: $f9
    or l                                          ; $4ed2: $b5
    ld a, b                                       ; $4ed3: $78
    jp nc, $8d2f                                  ; $4ed4: $d2 $2f $8d

    cpl                                           ; $4ed7: $2f
    db $ed                                        ; $4ed8: $ed
    ld a, c                                       ; $4ed9: $79

jr_029_4eda:
    ld sp, hl                                     ; $4eda: $f9
    add l                                         ; $4edb: $85
    ld d, a                                       ; $4edc: $57
    inc h                                         ; $4edd: $24
    and l                                         ; $4ede: $a5
    dec hl                                        ; $4edf: $2b
    ld b, $96                                     ; $4ee0: $06 $96
    dec a                                         ; $4ee2: $3d
    ld d, l                                       ; $4ee3: $55
    ld b, l                                       ; $4ee4: $45
    ret                                           ; $4ee5: $c9


    sbc a                                         ; $4ee6: $9f
    call $2fcb                                    ; $4ee7: $cd $cb $2f
    cp h                                          ; $4eea: $bc
    ld [hl+], a                                   ; $4eeb: $22
    add hl, hl                                    ; $4eec: $29
    add e                                         ; $4eed: $83
    sbc h                                         ; $4eee: $9c
    rla                                           ; $4eef: $17
    push af                                       ; $4ef0: $f5
    dec h                                         ; $4ef1: $25
    push bc                                       ; $4ef2: $c5
    ld h, [hl]                                    ; $4ef3: $66
    ld c, c                                       ; $4ef4: $49
    ccf                                           ; $4ef5: $3f
    cp [hl]                                       ; $4ef6: $be
    db $e4                                        ; $4ef7: $e4
    ld a, b                                       ; $4ef8: $78
    dec h                                         ; $4ef9: $25
    ld a, a                                       ; $4efa: $7f
    ld [hl], $cf                                  ; $4efb: $36 $cf
    reti                                          ; $4efd: $d9


    sub a                                         ; $4efe: $97
    ret c                                         ; $4eff: $d8

    cp h                                          ; $4f00: $bc
    db $fc                                        ; $4f01: $fc
    ld e, d                                       ; $4f02: $5a
    inc a                                         ; $4f03: $3c
    jp hl                                         ; $4f04: $e9


    rst $10                                       ; $4f05: $d7
    rst $30                                       ; $4f06: $f7
    db $ec                                        ; $4f07: $ec
    ld c, e                                       ; $4f08: $4b
    ld l, h                                       ; $4f09: $6c
    rst $10                                       ; $4f0a: $d7
    cp c                                          ; $4f0b: $b9
    ld l, e                                       ; $4f0c: $6b
    dec de                                        ; $4f0d: $1b
    rra                                           ; $4f0e: $1f
    and l                                         ; $4f0f: $a5
    rst $08                                       ; $4f10: $cf
    ret nz                                        ; $4f11: $c0

    rst $28                                       ; $4f12: $ef
    ld a, [$1efa]                                 ; $4f13: $fa $fa $1e
    sbc a                                         ; $4f16: $9f
    ld h, $b2                                     ; $4f17: $26 $b2
    or l                                          ; $4f19: $b5
    ld a, a                                       ; $4f1a: $7f
    jp c, $3f8e                                   ; $4f1b: $da $8e $3f

    rst $08                                       ; $4f1e: $cf
    dec b                                         ; $4f1f: $05
    rst $28                                       ; $4f20: $ef
    cp e                                          ; $4f21: $bb
    adc [hl]                                      ; $4f22: $8e
    halt                                          ; $4f23: $76
    ld c, d                                       ; $4f24: $4a
    ld a, [c]                                     ; $4f25: $f2
    dec bc                                        ; $4f26: $0b
    sbc $07                                       ; $4f27: $de $07
    add hl, de                                    ; $4f29: $19
    cp $e4                                        ; $4f2a: $fe $e4
    pop bc                                        ; $4f2c: $c1
    cp c                                          ; $4f2d: $b9
    ld l, e                                       ; $4f2e: $6b
    ld d, l                                       ; $4f2f: $55
    sub c                                         ; $4f30: $91
    ld b, $ad                                     ; $4f31: $06 $ad
    ld b, a                                       ; $4f33: $47
    ld sp, hl                                     ; $4f34: $f9
    dec a                                         ; $4f35: $3d
    or c                                          ; $4f36: $b1
    cp [hl]                                       ; $4f37: $be
    db $d3                                        ; $4f38: $d3
    xor $bb                                       ; $4f39: $ee $bb
    ld a, c                                       ; $4f3b: $79
    sub l                                         ; $4f3c: $95
    reti                                          ; $4f3d: $d9


    xor a                                         ; $4f3e: $af
    ldh [$e3], a                                  ; $4f3f: $e0 $e3
    ld l, a                                       ; $4f41: $6f
    adc h                                         ; $4f42: $8c
    ld l, e                                       ; $4f43: $6b
    rst $38                                       ; $4f44: $ff
    jr nz, jr_029_4eda                            ; $4f45: $20 $93

    db $10                                        ; $4f47: $10
    ld b, $47                                     ; $4f48: $06 $47
    cp a                                          ; $4f4a: $bf
    sbc l                                         ; $4f4b: $9d
    ld a, [c]                                     ; $4f4c: $f2
    di                                            ; $4f4d: $f3

Jump_029_4f4e:
    ld a, [c]                                     ; $4f4e: $f2
    ld l, e                                       ; $4f4f: $6b
    dec hl                                        ; $4f50: $2b
    sbc l                                         ; $4f51: $9d
    ld l, a                                       ; $4f52: $6f
    sbc $d7                                       ; $4f53: $de $d7
    cp $e0                                        ; $4f55: $fe $e0
    ld [de], a                                    ; $4f57: $12
    ld [hl], b                                    ; $4f58: $70
    rst $20                                       ; $4f59: $e7
    push hl                                       ; $4f5a: $e5
    rst $10                                       ; $4f5b: $d7
    sbc d                                         ; $4f5c: $9a
    ld b, $7e                                     ; $4f5d: $06 $7e
    db $dd                                        ; $4f5f: $dd
    ld c, h                                       ; $4f60: $4c
    ld h, a                                       ; $4f61: $67
    and c                                         ; $4f62: $a1
    ld bc, $fb5f                                  ; $4f63: $01 $5f $fb
    and a                                         ; $4f66: $a7
    cp h                                          ; $4f67: $bc
    ld a, [bc]                                    ; $4f68: $0a
    ld a, e                                       ; $4f69: $7b
    add [hl]                                      ; $4f6a: $86
    halt                                          ; $4f6b: $76
    or h                                          ; $4f6c: $b4
    pop af                                        ; $4f6d: $f1
    reti                                          ; $4f6e: $d9


    ld d, a                                       ; $4f6f: $57
    ret nz                                        ; $4f70: $c0

    cp c                                          ; $4f71: $b9
    sub e                                         ; $4f72: $93
    xor a                                         ; $4f73: $af
    sbc [hl]                                      ; $4f74: $9e
    ld a, h                                       ; $4f75: $7c
    ld l, a                                       ; $4f76: $6f
    ld a, l                                       ; $4f77: $7d
    ld [hl], d                                    ; $4f78: $72
    ld e, b                                       ; $4f79: $58
    ld l, b                                       ; $4f7a: $68
    ret nz                                        ; $4f7b: $c0

    rst $10                                       ; $4f7c: $d7
    cp $b9                                        ; $4f7d: $fe $b9
    sub $9f                                       ; $4f7f: $d6 $9f
    halt                                          ; $4f81: $76
    ret                                           ; $4f82: $c9


    ld [hl], e                                    ; $4f83: $73
    ld e, d                                       ; $4f84: $5a
    ld d, l                                       ; $4f85: $55
    ld l, c                                       ; $4f86: $69
    ret z                                         ; $4f87: $c8

    and a                                         ; $4f88: $a7
    call nz, $d256                                ; $4f89: $c4 $56 $d2
    ret nz                                        ; $4f8c: $c0

    xor a                                         ; $4f8d: $af
    sub e                                         ; $4f8e: $93
    sub a                                         ; $4f8f: $97

Jump_029_4f90:
    inc e                                         ; $4f90: $1c
    and [hl]                                      ; $4f91: $a6
    cp h                                          ; $4f92: $bc
    ld a, [bc]                                    ; $4f93: $0a
    ld a, e                                       ; $4f94: $7b
    add [hl]                                      ; $4f95: $86
    jr nc, jr_029_4fdf                            ; $4f96: $30 $47

    cp a                                          ; $4f98: $bf
    sbc l                                         ; $4f99: $9d
    ld a, [c]                                     ; $4f9a: $f2
    db $e3                                        ; $4f9b: $e3
    ld a, a                                       ; $4f9c: $7f
    db $ed                                        ; $4f9d: $ed
    rrca                                          ; $4f9e: $0f
    ld l, $cd                                     ; $4f9f: $2e $cd
    res 5, a                                      ; $4fa1: $cb $af
    xor l                                         ; $4fa3: $ad
    ld [hl], h                                    ; $4fa4: $74
    cp [hl]                                       ; $4fa5: $be
    ld a, c                                       ; $4fa6: $79
    rst $20                                       ; $4fa7: $e7
    adc $cb                                       ; $4fa8: $ce $cb
    xor a                                         ; $4faa: $af
    dec [hl]                                      ; $4fab: $35

Call_029_4fac:
    dec c                                         ; $4fac: $0d
    db $fc                                        ; $4fad: $fc
    cp d                                          ; $4fae: $ba
    sbc c                                         ; $4faf: $99
    adc $e8                                       ; $4fb0: $ce $e8
    sbc a                                         ; $4fb2: $9f
    pop bc                                        ; $4fb3: $c1
    inc a                                         ; $4fb4: $3c
    rst $10                                       ; $4fb5: $d7
    cp $29                                        ; $4fb6: $fe $29
    xor a                                         ; $4fb8: $af
    jp nz, $a19e                                  ; $4fb9: $c2 $9e $a1

    dec e                                         ; $4fbc: $1d
    push hl                                       ; $4fbd: $e5
    db $eb                                        ; $4fbe: $eb
    ret z                                         ; $4fbf: $c8

    jp Jump_029_7393                              ; $4fc0: $c3 $93 $73


    rst $10                                       ; $4fc3: $d7
    ld [de], a                                    ; $4fc4: $12
    dec de                                        ; $4fc5: $1b
    cpl                                           ; $4fc6: $2f
    cpl                                           ; $4fc7: $2f
    sub a                                         ; $4fc8: $97
    halt                                          ; $4fc9: $76
    ld h, c                                       ; $4fca: $61
    sub a                                         ; $4fcb: $97
    and $e5                                       ; $4fcc: $e6 $e5
    rla                                           ; $4fce: $17
    ld e, a                                       ; $4fcf: $5f
    add hl, de                                    ; $4fd0: $19
    jp c, $c6d1                                   ; $4fd1: $da $d1 $c6

    daa                                           ; $4fd4: $27
    ld e, a                                       ; $4fd5: $5f
    dec a                                         ; $4fd6: $3d
    ld sp, hl                                     ; $4fd7: $f9
    sbc $fa                                       ; $4fd8: $de $fa
    db $e4                                        ; $4fda: $e4
    or b                                          ; $4fdb: $b0
    ret nc                                        ; $4fdc: $d0

    add b                                         ; $4fdd: $80
    xor a                                         ; $4fde: $af

jr_029_4fdf:
    db $fd                                        ; $4fdf: $fd
    ld [hl], e                                    ; $4fe0: $73
    xor l                                         ; $4fe1: $ad
    ccf                                           ; $4fe2: $3f
    db $ed                                        ; $4fe3: $ed
    sub d                                         ; $4fe4: $92
    rst $20                                       ; $4fe5: $e7
    or h                                          ; $4fe6: $b4
    xor d                                         ; $4fe7: $aa
    jp nc, Jump_029_4f90                          ; $4fe8: $d2 $90 $4f

    adc c                                         ; $4feb: $89
    xor l                                         ; $4fec: $ad
    sub e                                         ; $4fed: $93
    sub a                                         ; $4fee: $97
    inc e                                         ; $4fef: $1c
    and [hl]                                      ; $4ff0: $a6
    cp h                                          ; $4ff1: $bc

jr_029_4ff2:
    ld a, [bc]                                    ; $4ff2: $0a
    ld a, e                                       ; $4ff3: $7b
    add [hl]                                      ; $4ff4: $86
    jr nc, jr_029_503e                            ; $4ff5: $30 $47

    cp a                                          ; $4ff7: $bf
    sbc l                                         ; $4ff8: $9d
    ld a, [c]                                     ; $4ff9: $f2
    db $e3                                        ; $4ffa: $e3
    ld a, a                                       ; $4ffb: $7f
    db $ed                                        ; $4ffc: $ed
    rrca                                          ; $4ffd: $0f
    ld l, $cd                                     ; $4ffe: $2e $cd
    res 5, a                                      ; $5000: $cb $af
    xor l                                         ; $5002: $ad
    ld [hl], h                                    ; $5003: $74
    cp [hl]                                       ; $5004: $be
    ld a, c                                       ; $5005: $79
    rst $20                                       ; $5006: $e7
    adc $32                                       ; $5007: $ce $32
    cp $c6                                        ; $5009: $fe $c6
    jr c, jr_029_4ff2                             ; $500b: $38 $e5

    ld d, l                                       ; $500d: $55
    ret c                                         ; $500e: $d8

    cp h                                          ; $500f: $bc
    db $fc                                        ; $5010: $fc
    ld e, d                                       ; $5011: $5a
    db $d3                                        ; $5012: $d3
    ret nz                                        ; $5013: $c0

    xor a                                         ; $5014: $af
    sbc e                                         ; $5015: $9b
    jp hl                                         ; $5016: $e9


    and b                                         ; $5017: $a0
    dec e                                         ; $5018: $1d
    push hl                                       ; $5019: $e5
    db $eb                                        ; $501a: $eb
    ret z                                         ; $501b: $c8

    jp Jump_029_7393                              ; $501c: $c3 $93 $73


    ld [hl], a                                    ; $501f: $77
    cp d                                          ; $5020: $ba
    ld e, d                                       ; $5021: $5a
    sbc a                                         ; $5022: $9f
    xor d                                         ; $5023: $aa
    xor b                                         ; $5024: $a8
    db $fc                                        ; $5025: $fc
    ld l, $ec                                     ; $5026: $2e $ec
    jp nc, $fcbc                                  ; $5028: $d2 $bc $fc

    ld [c], a                                     ; $502b: $e2
    dec hl                                        ; $502c: $2b
    ld b, e                                       ; $502d: $43
    dec sp                                        ; $502e: $3b
    jp c, $e4f8                                   ; $502f: $da $f8 $e4

    xor e                                         ; $5032: $ab
    daa                                           ; $5033: $27
    rst $18                                       ; $5034: $df
    ld e, e                                       ; $5035: $5b
    sbc a                                         ; $5036: $9f
    inc e                                         ; $5037: $1c
    ld d, $1a                                     ; $5038: $16 $1a
    ldh a, [$b5]                                  ; $503a: $f0 $b5
    ld a, a                                       ; $503c: $7f
    xor [hl]                                      ; $503d: $ae

jr_029_503e:
    push af                                       ; $503e: $f5
    and a                                         ; $503f: $a7
    ld e, l                                       ; $5040: $5d
    ld a, [c]                                     ; $5041: $f2
    sbc h                                         ; $5042: $9c
    ld d, [hl]                                    ; $5043: $56
    ld d, l                                       ; $5044: $55
    ld a, [de]                                    ; $5045: $1a
    ld [hl], d                                    ; $5046: $72
    add h                                         ; $5047: $84
    ld bc, $bf47                                  ; $5048: $01 $47 $bf
    sbc l                                         ; $504b: $9d
    ld a, [c]                                     ; $504c: $f2
    db $e3                                        ; $504d: $e3
    ld a, a                                       ; $504e: $7f
    db $ed                                        ; $504f: $ed
    rrca                                          ; $5050: $0f
    ld l, $cd                                     ; $5051: $2e $cd
    res 5, a                                      ; $5053: $cb $af
    xor l                                         ; $5055: $ad
    ld [hl], h                                    ; $5056: $74
    cp [hl]                                       ; $5057: $be
    ld a, c                                       ; $5058: $79
    rst $20                                       ; $5059: $e7
    adc $cb                                       ; $505a: $ce $cb
    xor a                                         ; $505c: $af
    dec [hl]                                      ; $505d: $35
    dec c                                         ; $505e: $0d
    db $fc                                        ; $505f: $fc
    cp d                                          ; $5060: $ba
    sbc c                                         ; $5061: $99
    adc $e8                                       ; $5062: $ce $e8
    sbc a                                         ; $5064: $9f
    pop bc                                        ; $5065: $c1
    inc a                                         ; $5066: $3c
    rst $10                                       ; $5067: $d7
    cp $29                                        ; $5068: $fe $29
    xor a                                         ; $506a: $af
    jp nz, $a19e                                  ; $506b: $c2 $9e $a1

    dec e                                         ; $506e: $1d
    push hl                                       ; $506f: $e5
    db $eb                                        ; $5070: $eb
    ret z                                         ; $5071: $c8

    jp Jump_029_7393                              ; $5072: $c3 $93 $73


    rst $10                                       ; $5075: $d7
    ld l, d                                       ; $5076: $6a
    ld l, h                                       ; $5077: $6c
    dec sp                                        ; $5078: $3b
    ld a, [hl]                                    ; $5079: $7e
    rst $00                                       ; $507a: $c7
    ret c                                         ; $507b: $d8

    or $2e                                        ; $507c: $f6 $2e
    db $ec                                        ; $507e: $ec
    jp nc, $fcbc                                  ; $507f: $d2 $bc $fc

    ld [c], a                                     ; $5082: $e2
    dec hl                                        ; $5083: $2b
    ld b, e                                       ; $5084: $43
    dec sp                                        ; $5085: $3b
    jp c, $e4f8                                   ; $5086: $da $f8 $e4

    xor e                                         ; $5089: $ab
    daa                                           ; $508a: $27
    rst $18                                       ; $508b: $df
    ld e, e                                       ; $508c: $5b
    sbc a                                         ; $508d: $9f
    inc e                                         ; $508e: $1c
    ld d, $1a                                     ; $508f: $16 $1a
    ldh a, [$b5]                                  ; $5091: $f0 $b5
    ld a, a                                       ; $5093: $7f
    xor [hl]                                      ; $5094: $ae
    push af                                       ; $5095: $f5
    and a                                         ; $5096: $a7
    ld e, l                                       ; $5097: $5d
    ld a, [c]                                     ; $5098: $f2
    sbc h                                         ; $5099: $9c
    ld d, [hl]                                    ; $509a: $56
    ld d, l                                       ; $509b: $55
    ld a, [de]                                    ; $509c: $1a
    ld [hl], d                                    ; $509d: $72
    add h                                         ; $509e: $84
    ld bc, $723d                                  ; $509f: $01 $3d $72
    and a                                         ; $50a2: $a7
    daa                                           ; $50a3: $27
    xor l                                         ; $50a4: $ad
    rst $20                                       ; $50a5: $e7
    dec hl                                        ; $50a6: $2b
    call nz, $b86f                                ; $50a7: $c4 $6f $b8
    or e                                          ; $50aa: $b3
    ld d, e                                       ; $50ab: $53
    sub [hl]                                      ; $50ac: $96
    add $c1                                       ; $50ad: $c6 $c1
    sub l                                         ; $50af: $95
    ret c                                         ; $50b0: $d8

    and l                                         ; $50b1: $a5
    ld h, b                                       ; $50b2: $60
    ld d, l                                       ; $50b3: $55
    ld a, c                                       ; $50b4: $79
    add b                                         ; $50b5: $80
    add c                                         ; $50b6: $81
    adc e                                         ; $50b7: $8b
    ld a, [$0d07]                                 ; $50b8: $fa $07 $0d
    ld [hl], a                                    ; $50bb: $77
    sub [hl]                                      ; $50bc: $96
    add hl, hl                                    ; $50bd: $29
    xor a                                         ; $50be: $af
    jp nz, $bc76                                  ; $50bf: $c2 $76 $bc

    inc [hl]                                      ; $50c2: $34
    or [hl]                                       ; $50c3: $b6
    ld a, l                                       ; $50c4: $7d
    adc c                                         ; $50c5: $89
    and l                                         ; $50c6: $a5
    db $ec                                        ; $50c7: $ec
    and b                                         ; $50c8: $a0
    ld a, [hl]                                    ; $50c9: $7e
    rst $10                                       ; $50ca: $d7
    ret                                           ; $50cb: $c9


    ld c, e                                       ; $50cc: $4b
    ld c, $08                                     ; $50cd: $0e $08
    inc bc                                        ; $50cf: $03
    dec a                                         ; $50d0: $3d
    ld [hl], d                                    ; $50d1: $72
    xor l                                         ; $50d2: $ad
    cpl                                           ; $50d3: $2f
    pop hl                                        ; $50d4: $e1
    ld c, l                                       ; $50d5: $4d
    ld a, [$2f1d]                                 ; $50d6: $fa $1d $2f
    ld c, d                                       ; $50d9: $4a
    pop bc                                        ; $50da: $c1
    dec bc                                        ; $50db: $0b
    ld [hl], a                                    ; $50dc: $77
    halt                                          ; $50dd: $76
    jp z, Jump_029_5c0c                           ; $50de: $ca $0c $5c

    ld a, [bc]                                    ; $50e1: $0a
    ld d, [hl]                                    ; $50e2: $56
    ld h, l                                       ; $50e3: $65
    add $c5                                       ; $50e4: $c6 $c5
    inc c                                         ; $50e6: $0c
    ld l, [hl]                                    ; $50e7: $6e
    or l                                          ; $50e8: $b5
    ld c, e                                       ; $50e9: $4b
    di                                            ; $50ea: $f3
    ld a, [c]                                     ; $50eb: $f2
    or e                                          ; $50ec: $b3
    or l                                          ; $50ed: $b5
    ld a, [$bda5]                                 ; $50ee: $fa $a5 $bd
    ld b, b                                       ; $50f1: $40
    ld e, [hl]                                    ; $50f2: $5e
    ld a, l                                       ; $50f3: $7d
    push hl                                       ; $50f4: $e5
    push de                                       ; $50f5: $d5

jr_029_50f6:
    cp c                                          ; $50f6: $b9
    or e                                          ; $50f7: $b3
    ld c, h                                       ; $50f8: $4c
    ld a, c                                       ; $50f9: $79
    dec d                                         ; $50fa: $15
    or [hl]                                       ; $50fb: $b6
    db $e3                                        ; $50fc: $e3
    and l                                         ; $50fd: $a5
    or c                                          ; $50fe: $b1
    db $ed                                        ; $50ff: $ed
    ld c, e                                       ; $5100: $4b
    inc l                                         ; $5101: $2c
    ld h, l                                       ; $5102: $65
    rlca                                          ; $5103: $07
    push af                                       ; $5104: $f5
    cp e                                          ; $5105: $bb
    ld c, [hl]                                    ; $5106: $4e
    ld e, [hl]                                    ; $5107: $5e
    ld [hl], d                                    ; $5108: $72
    ld b, b                                       ; $5109: $40
    jr jr_029_5149                                ; $510a: $18 $3d

    ld [hl], d                                    ; $510c: $72
    xor l                                         ; $510d: $ad
    ld a, [hl+]                                   ; $510e: $2a
    jp nc, Jump_029_7bac                          ; $510f: $d2 $ac $7b

    cp d                                          ; $5112: $ba
    cp a                                          ; $5113: $bf
    ld [hl], b                                    ; $5114: $70
    ld h, a                                       ; $5115: $67
    and a                                         ; $5116: $a7
    inc l                                         ; $5117: $2c
    adc l                                         ; $5118: $8d
    add e                                         ; $5119: $83
    dec hl                                        ; $511a: $2b
    or c                                          ; $511b: $b1
    ld c, e                                       ; $511c: $4b
    pop bc                                        ; $511d: $c1
    xor d                                         ; $511e: $aa
    inc [hl]                                      ; $511f: $34
    and d                                         ; $5120: $a2
    pop bc                                        ; $5121: $c1
    ld [hl], e                                    ; $5122: $73
    ld h, a                                       ; $5123: $67
    sbc c                                         ; $5124: $99
    ld a, [c]                                     ; $5125: $f2
    ld a, [hl+]                                   ; $5126: $2a
    ld l, h                                       ; $5127: $6c
    rst $00                                       ; $5128: $c7
    ld c, e                                       ; $5129: $4b
    ld h, e                                       ; $512a: $63
    db $db                                        ; $512b: $db
    sub a                                         ; $512c: $97
    ld e, b                                       ; $512d: $58
    jp z, Jump_000_1a4a                           ; $512e: $ca $4a $1a

    ld hl, sp+$1d                                 ; $5131: $f8 $1d
    call c, Call_000_3aef                         ; $5133: $dc $ef $3a
    ld a, c                                       ; $5136: $79
    ret                                           ; $5137: $c9


    ld bc, $4761                                  ; $5138: $01 $61 $47
    ld de, $5c1b                                  ; $513b: $11 $1b $5c
    xor d                                         ; $513e: $aa
    ld a, [hl]                                    ; $513f: $7e
    rst $10                                       ; $5140: $d7
    rst $20                                       ; $5141: $e7
    ld e, d                                       ; $5142: $5a
    ld a, a                                       ; $5143: $7f
    ld e, b                                       ; $5144: $58
    jr nz, jr_029_50f6                            ; $5145: $20 $af

Jump_029_5147:
    cp [hl]                                       ; $5147: $be
    or [hl]                                       ; $5148: $b6

jr_029_5149:
    xor b                                         ; $5149: $a8
    push af                                       ; $514a: $f5
    and l                                         ; $514b: $a5
    sbc c                                         ; $514c: $99
    rst $20                                       ; $514d: $e7
    ret nz                                        ; $514e: $c0

    sub l                                         ; $514f: $95
    ret c                                         ; $5150: $d8

    ld c, h                                       ; $5151: $4c
    ld h, a                                       ; $5152: $67
    sbc [hl]                                      ; $5153: $9e
    ld c, e                                       ; $5154: $4b
    inc hl                                        ; $5155: $23
    ld a, e                                       ; $5156: $7b
    ld a, [$3ef0]                                 ; $5157: $fa $f0 $3e
    ld [hl], b                                    ; $515a: $70
    rst $10                                       ; $515b: $d7
    ld [hl], $be                                  ; $515c: $36 $be
    di                                            ; $515e: $f3
    inc c                                         ; $515f: $0c
    ld hl, sp+$14                                 ; $5160: $f8 $14
    ld d, $9a                                     ; $5162: $16 $9a
    xor d                                         ; $5164: $aa
    call z, $e073                                 ; $5165: $cc $73 $e0
    ld c, d                                       ; $5168: $4a
    ld l, h                                       ; $5169: $6c
    and [hl]                                      ; $516a: $a6
    inc sp                                        ; $516b: $33
    rst $08                                       ; $516c: $cf
    and l                                         ; $516d: $a5
    sub c                                         ; $516e: $91
    reti                                          ; $516f: $d9


    ld [hl], d                                    ; $5170: $72
    sbc a                                         ; $5171: $9f
    jr jr_029_51e4                                ; $5172: $18 $70

    ld h, a                                       ; $5174: $67
    sbc c                                         ; $5175: $99
    ld a, [c]                                     ; $5176: $f2
    ld a, [hl+]                                   ; $5177: $2a
    ld l, h                                       ; $5178: $6c
    db $fd                                        ; $5179: $fd
    push af                                       ; $517a: $f5
    cp e                                          ; $517b: $bb
    ld c, [hl]                                    ; $517c: $4e
    ld e, [hl]                                    ; $517d: $5e
    ld [hl], d                                    ; $517e: $72
    sbc b                                         ; $517f: $98
    rst $20                                       ; $5180: $e7
    ld c, [hl]                                    ; $5181: $4e
    ld a, c                                       ; $5182: $79
    db $eb                                        ; $5183: $eb
    adc l                                         ; $5184: $8d
    pop af                                        ; $5185: $f1
    ld [hl], a                                    ; $5186: $77
    ld d, d                                       ; $5187: $52
    ld d, d                                       ; $5188: $52
    ret nc                                        ; $5189: $d0

    ld c, [hl]                                    ; $518a: $4e
    rst $30                                       ; $518b: $f7
    inc c                                         ; $518c: $0c
    ld de, $c706                                  ; $518d: $11 $06 $c7
    ld c, e                                       ; $5190: $4b
    ld h, e                                       ; $5191: $63
    db $db                                        ; $5192: $db
    sub a                                         ; $5193: $97
    ld e, b                                       ; $5194: $58
    jp z, Jump_029_4bf8                           ; $5195: $ca $f8 $4b

    ret nc                                        ; $5198: $d0

    dec b                                         ; $5199: $05
    inc bc                                        ; $519a: $03
    dec a                                         ; $519b: $3d
    adc e                                         ; $519c: $8b
    ld a, d                                       ; $519d: $7a
    rst $10                                       ; $519e: $d7
    ld l, $18                                     ; $519f: $2e $18
    dec a                                         ; $51a1: $3d
    or h                                          ; $51a2: $b4
    cp $f3                                        ; $51a3: $fe $f3
    and d                                         ; $51a5: $a2
    adc $dd                                       ; $51a6: $ce $dd
    ret                                           ; $51a8: $c9


    ld a, [de]                                    ; $51a9: $1a
    db $ed                                        ; $51aa: $ed
    ld l, h                                       ; $51ab: $6c
    cp d                                          ; $51ac: $ba
    ld h, b                                       ; $51ad: $60
    ld b, a                                       ; $51ae: $47
    cp a                                          ; $51af: $bf
    ei                                            ; $51b0: $fb
    res 4, d                                      ; $51b1: $cb $a2
    xor c                                         ; $51b3: $a9
    ld [$cbe3], a                                 ; $51b4: $ea $e3 $cb
    db $d3                                        ; $51b7: $d3
    sbc d                                         ; $51b8: $9a
    inc [hl]                                      ; $51b9: $34
    ld h, e                                       ; $51ba: $63
    rrca                                          ; $51bb: $0f
    cpl                                           ; $51bc: $2f
    sub $1f                                       ; $51bd: $d6 $1f
    ld h, h                                       ; $51bf: $64
    ld hl, sp-$24                                 ; $51c0: $f8 $dc
    sbc l                                         ; $51c2: $9d
    xor h                                         ; $51c3: $ac
    pop de                                        ; $51c4: $d1
    adc $a6                                       ; $51c5: $ce $a6
    dec bc                                        ; $51c7: $0b
    ld b, $dd                                     ; $51c8: $06 $dd
    sub d                                         ; $51ca: $92
    ld [bc], a                                    ; $51cb: $02
    ld d, c                                       ; $51cc: $51
    scf                                           ; $51cd: $37
    ld d, c                                       ; $51ce: $51
    db $fd                                        ; $51cf: $fd
    ld h, $01                                     ; $51d0: $26 $01
    ld [hl], a                                    ; $51d2: $77
    rst $00                                       ; $51d3: $c7
    ld c, e                                       ; $51d4: $4b
    ld h, e                                       ; $51d5: $63
    db $db                                        ; $51d6: $db
    sub a                                         ; $51d7: $97
    ld e, b                                       ; $51d8: $58
    ld c, d                                       ; $51d9: $4a
    rla                                           ; $51da: $17
    inc c                                         ; $51db: $0c
    ld b, a                                       ; $51dc: $47
    ld sp, hl                                     ; $51dd: $f9

Jump_029_51de:
    ld [c], a                                     ; $51de: $e2
    dec hl                                        ; $51df: $2b
    ld hl, sp-$52                                 ; $51e0: $f8 $ae
    adc a                                         ; $51e2: $8f
    ld d, a                                       ; $51e3: $57

jr_029_51e4:
    and b                                         ; $51e4: $a0
    sbc d                                         ; $51e5: $9a
    xor a                                         ; $51e6: $af
    dec h                                         ; $51e7: $25
    ld [hl], $5e                                  ; $51e8: $36 $5e
    ld e, [hl]                                    ; $51ea: $5e
    ld l, $21                                     ; $51eb: $2e $21
    inc c                                         ; $51ed: $0c
    xor l                                         ; $51ee: $ad
    ld a, [hl+]                                   ; $51ef: $2a
    jp nc, $d770                                  ; $51f0: $d2 $70 $d7

    and h                                         ; $51f3: $a4
    add hl, de                                    ; $51f4: $19
    cp e                                          ; $51f5: $bb
    ld l, h                                       ; $51f6: $6c
    rst $10                                       ; $51f7: $d7
    cp e                                          ; $51f8: $bb
    ld h, b                                       ; $51f9: $60
    ld d, $1f                                     ; $51fa: $16 $1f
    sbc a                                         ; $51fc: $9f
    ld h, $32                                     ; $51fd: $26 $32
    xor d                                         ; $51ff: $aa
    ld sp, hl                                     ; $5200: $f9
    adc d                                         ; $5201: $8a
    ld e, d                                       ; $5202: $5a
    ld a, a                                       ; $5203: $7f
    db $ed                                        ; $5204: $ed
    ld a, a                                       ; $5205: $7f
    ld e, d                                       ; $5206: $5a
    daa                                           ; $5207: $27
    ld bc, $3b6e                                  ; $5208: $01 $6e $3b
    cp $f8                                        ; $520b: $fe $f8
    db $eb                                        ; $520d: $eb
    dec h                                         ; $520e: $25
    adc l                                         ; $520f: $8d
    xor a                                         ; $5210: $af
    ld c, c                                       ; $5211: $49
    jp $29dd                                      ; $5212: $c3 $dd $29


    ld l, a                                       ; $5215: $6f
    cp l                                          ; $5216: $bd
    ld sp, $c23e                                  ; $5217: $31 $3e $c2
    daa                                           ; $521a: $27
    cp l                                          ; $521b: $bd
    rst $08                                       ; $521c: $cf
    res 5, a                                      ; $521d: $cb $af
    xor l                                         ; $521f: $ad
    ld [hl], h                                    ; $5220: $74
    cp [hl]                                       ; $5221: $be
    ld a, c                                       ; $5222: $79
    ld e, a                                       ; $5223: $5f
    ei                                            ; $5224: $fb
    add e                                         ; $5225: $83
    ld c, e                                       ; $5226: $4b
    ld e, l                                       ; $5227: $5d
    jr nc, @-$37                                  ; $5228: $30 $c7

    db $e4                                        ; $522a: $e4
    jr z, jr_029_52aa                             ; $522b: $28 $7d

    db $ec                                        ; $522d: $ec
    add d                                         ; $522e: $82
    dec de                                        ; $522f: $1b
    ld l, c                                       ; $5230: $69
    and e                                         ; $5231: $a3
    db $ed                                        ; $5232: $ed
    ld d, h                                       ; $5233: $54
    ld l, c                                       ; $5234: $69
    cpl                                           ; $5235: $2f
    ld d, b                                       ; $5236: $50
    adc [hl]                                      ; $5237: $8e
    sub a                                         ; $5238: $97
    ld [bc], a                                    ; $5239: $02
    add h                                         ; $523a: $84
    ld bc, $c9ad                                  ; $523b: $01 $ad $c9
    cp a                                          ; $523e: $bf
    push af                                       ; $523f: $f5
    add l                                         ; $5240: $85
    dec sp                                        ; $5241: $3b
    cpl                                           ; $5242: $2f
    rla                                           ; $5243: $17
    add $f2                                       ; $5244: $c6 $f2
    ld h, c                                       ; $5246: $61
    sub h                                         ; $5247: $94
    cp [hl]                                       ; $5248: $be
    or h                                          ; $5249: $b4
    cp [hl]                                       ; $524a: $be
    ld d, h                                       ; $524b: $54
    add hl, de                                    ; $524c: $19
    cp $bc                                        ; $524d: $fe $bc
    db $fc                                        ; $524f: $fc
    ret nz                                        ; $5250: $c0

    or h                                          ; $5251: $b4
    pop bc                                        ; $5252: $c1
    sub l                                         ; $5253: $95
    db $fc                                        ; $5254: $fc
    ld l, d                                       ; $5255: $6a
    ld e, h                                       ; $5256: $5c
    ld a, h                                       ; $5257: $7c

Call_029_5258:
    ld h, l                                       ; $5258: $65
    cp e                                          ; $5259: $bb
    or h                                          ; $525a: $b4
    ld c, [hl]                                    ; $525b: $4e
    ld e, [hl]                                    ; $525c: $5e
    ld [hl], d                                    ; $525d: $72
    ld e, b                                       ; $525e: $58
    db $db                                        ; $525f: $db
    call c, $33e8                                 ; $5260: $dc $e8 $33
    sbc l                                         ; $5263: $9d
    or l                                          ; $5264: $b5
    sbc e                                         ; $5265: $9b
    or l                                          ; $5266: $b5
    ld a, [de]                                    ; $5267: $1a
    db $db                                        ; $5268: $db
    adc [hl]                                      ; $5269: $8e
    rst $18                                       ; $526a: $df
    ld sp, $ddb6                                  ; $526b: $31 $b6 $dd
    dec b                                         ; $526e: $05

Jump_029_526f:
    inc bc                                        ; $526f: $03
    dec a                                         ; $5270: $3d
    adc e                                         ; $5271: $8b
    ld a, d                                       ; $5272: $7a
    rst $10                                       ; $5273: $d7
    or l                                          ; $5274: $b5
    ld h, $bf                                     ; $5275: $26 $bf
    ld a, [hl+]                                   ; $5277: $2a
    ld c, l                                       ; $5278: $4d
    ld h, h                                       ; $5279: $64
    di                                            ; $527a: $f3
    ld [hl], d                                    ; $527b: $72
    ld h, c                                       ; $527c: $61
    ld b, l                                       ; $527d: $45
    dec sp                                        ; $527e: $3b
    sbc l                                         ; $527f: $9d
    and a                                         ; $5280: $a7
    ld l, $18                                     ; $5281: $2e $18
    dec a                                         ; $5283: $3d
    ccf                                           ; $5284: $3f
    ld b, [hl]                                    ; $5285: $46
    xor $d4                                       ; $5286: $ee $d4
    rla                                           ; $5288: $17
    ld e, a                                       ; $5289: $5f
    pop bc                                        ; $528a: $c1
    ld [hl], a                                    ; $528b: $77
    ld a, l                                       ; $528c: $7d
    cp h                                          ; $528d: $bc
    ld [bc], a                                    ; $528e: $02
    push de                                       ; $528f: $d5
    ld a, h                                       ; $5290: $7c
    dec l                                         ; $5291: $2d
    or c                                          ; $5292: $b1
    pop af                                        ; $5293: $f1
    ld a, [c]                                     ; $5294: $f2
    ld [hl], d                                    ; $5295: $72
    add hl, bc                                    ; $5296: $09
    ld h, c                                       ; $5297: $61
    db $dd                                        ; $5298: $dd
    sub d                                         ; $5299: $92
    ld [bc], a                                    ; $529a: $02
    ld d, c                                       ; $529b: $51
    scf                                           ; $529c: $37
    ld d, c                                       ; $529d: $51
    db $fd                                        ; $529e: $fd
    ld h, $01                                     ; $529f: $26 $01
    jp nz, $8a3d                                  ; $52a1: $c2 $3d $8a

    ld d, d                                       ; $52a4: $52
    dec e                                         ; $52a5: $1d
    cp b                                          ; $52a6: $b8
    ld l, e                                       ; $52a7: $6b
    ld d, l                                       ; $52a8: $55
    sub c                                         ; $52a9: $91

jr_029_52aa:
    ld b, $ed                                     ; $52aa: $06 $ed

Jump_029_52ac:
    add sp, $77                                   ; $52ac: $e8 $77
    ld a, a                                       ; $52ae: $7f
    ld e, c                                       ; $52af: $59
    inc [hl]                                      ; $52b0: $34
    ld d, l                                       ; $52b1: $55
    ld a, l                                       ; $52b2: $7d
    db $f4                                        ; $52b3: $f4
    inc e                                         ; $52b4: $1c
    ld a, h                                       ; $52b5: $7c
    call Call_000_20ab                            ; $52b6: $cd $ab $20
    inc c                                         ; $52b9: $0c
    xor l                                         ; $52ba: $ad
    ret                                           ; $52bb: $c9


    cp a                                          ; $52bc: $bf
    push af                                       ; $52bd: $f5
    add l                                         ; $52be: $85
    dec sp                                        ; $52bf: $3b
    cpl                                           ; $52c0: $2f
    rla                                           ; $52c1: $17
    add $f2                                       ; $52c2: $c6 $f2
    ld h, c                                       ; $52c4: $61
    sub h                                         ; $52c5: $94
    cp [hl]                                       ; $52c6: $be
    or h                                          ; $52c7: $b4
    cp [hl]                                       ; $52c8: $be
    ld d, h                                       ; $52c9: $54
    add hl, de                                    ; $52ca: $19
    cp $bc                                        ; $52cb: $fe $bc
    db $fc                                        ; $52cd: $fc
    ret nz                                        ; $52ce: $c0

    or h                                          ; $52cf: $b4
    pop bc                                        ; $52d0: $c1
    sub l                                         ; $52d1: $95
    db $fc                                        ; $52d2: $fc
    ld l, d                                       ; $52d3: $6a
    ld e, h                                       ; $52d4: $5c
    ld a, h                                       ; $52d5: $7c
    ld h, l                                       ; $52d6: $65
    cp e                                          ; $52d7: $bb
    or h                                          ; $52d8: $b4
    ld c, [hl]                                    ; $52d9: $4e
    ld e, [hl]                                    ; $52da: $5e
    ld [hl], d                                    ; $52db: $72
    ld e, b                                       ; $52dc: $58
    db $db                                        ; $52dd: $db
    call c, $33e8                                 ; $52de: $dc $e8 $33
    sbc l                                         ; $52e1: $9d
    or l                                          ; $52e2: $b5
    sbc e                                         ; $52e3: $9b
    sbc l                                         ; $52e4: $9d
    xor [hl]                                      ; $52e5: $ae
    sub $a7                                       ; $52e6: $d6 $a7
    ld a, [hl+]                                   ; $52e8: $2a
    ld a, [hl+]                                   ; $52e9: $2a
    rst $18                                       ; $52ea: $df
    dec b                                         ; $52eb: $05
    inc bc                                        ; $52ec: $03
    and a                                         ; $52ed: $a7
    xor e                                         ; $52ee: $ab
    push af                                       ; $52ef: $f5

jr_029_52f0:
    xor c                                         ; $52f0: $a9
    adc d                                         ; $52f1: $8a
    jp z, Jump_029_5d77                           ; $52f2: $ca $77 $5d

    adc a                                         ; $52f5: $8f
    and d                                         ; $52f6: $a2
    ld e, [hl]                                    ; $52f7: $5e
    add e                                         ; $52f8: $83
    pop af                                        ; $52f9: $f1
    add hl, hl                                    ; $52fa: $29
    ldh a, [$f3]                                  ; $52fb: $f0 $f3
    and d                                         ; $52fd: $a2
    or h                                          ; $52fe: $b4
    db $e3                                        ; $52ff: $e3
    and l                                         ; $5300: $a5
    or c                                          ; $5301: $b1
    db $ed                                        ; $5302: $ed
    ld c, e                                       ; $5303: $4b
    inc l                                         ; $5304: $2c
    dec b                                         ; $5305: $05
    ld h, c                                       ; $5306: $61
    ld d, $af                                     ; $5307: $16 $af
    pop bc                                        ; $5309: $c1
    inc [hl]                                      ; $530a: $34
    add $85                                       ; $530b: $c6 $85
    call Call_000_356c                            ; $530d: $cd $6c $35
    pop de                                        ; $5310: $d1
    pop de                                        ; $5311: $d1
    inc l                                         ; $5312: $2c
    add e                                         ; $5313: $83
    sub d                                         ; $5314: $92
    ld h, $b2                                     ; $5315: $26 $b2
    dec d                                         ; $5317: $15
    or l                                          ; $5318: $b5
    cp $5c                                        ; $5319: $fe $5c
    xor $b3                                       ; $531b: $ee $b3
    dec d                                         ; $531d: $15
    dec d                                         ; $531e: $15
    or $32                                        ; $531f: $f6 $32
    rst $08                                       ; $5321: $cf
    add c                                         ; $5322: $81
    ld h, a                                       ; $5323: $67
    ld h, a                                       ; $5324: $67
    ld c, l                                       ; $5325: $4d
    sbc d                                         ; $5326: $9a
    ld a, c                                       ; $5327: $79
    ld d, c                                       ; $5328: $51
    rra                                           ; $5329: $1f
    db $dd                                        ; $532a: $dd
    and b                                         ; $532b: $a0
    jr c, jr_029_52f0                             ; $532c: $38 $c2

    ld d, $7b                                     ; $532e: $16 $7b
    ld c, l                                       ; $5330: $4d
    sbc d                                         ; $5331: $9a
    dec d                                         ; $5332: $15
    ld h, l                                       ; $5333: $65
    call c, $bff1                                 ; $5334: $dc $f1 $bf
    ldh a, [rTMA]                                 ; $5337: $f0 $06
    push bc                                       ; $5339: $c5
    ld d, a                                       ; $533a: $57
    call nc, $8bfa                                ; $533b: $d4 $fa $8b
    add hl, bc                                    ; $533e: $09
    cp [hl]                                       ; $533f: $be
    or a                                          ; $5340: $b7
    ld a, $2d                                     ; $5341: $3e $2d
    ld c, h                                       ; $5343: $4c
    ld sp, hl                                     ; $5344: $f9
    or l                                          ; $5345: $b5
    sub l                                         ; $5346: $95
    push bc                                       ; $5347: $c5
    ld b, $61                                     ; $5348: $06 $61
    xor l                                         ; $534a: $ad
    ret                                           ; $534b: $c9


    cp a                                          ; $534c: $bf
    push af                                       ; $534d: $f5
    add l                                         ; $534e: $85
    dec sp                                        ; $534f: $3b
    cpl                                           ; $5350: $2f
    rla                                           ; $5351: $17
    add $f2                                       ; $5352: $c6 $f2
    ld h, c                                       ; $5354: $61
    sub h                                         ; $5355: $94
    cp [hl]                                       ; $5356: $be
    or h                                          ; $5357: $b4
    cp [hl]                                       ; $5358: $be
    ld d, h                                       ; $5359: $54
    add hl, de                                    ; $535a: $19
    cp $bc                                        ; $535b: $fe $bc
    db $fc                                        ; $535d: $fc
    ld a, [hl-]                                   ; $535e: $3a
    ld a, c                                       ; $535f: $79
    ret                                           ; $5360: $c9


    ld h, c                                       ; $5361: $61
    ld a, h                                       ; $5362: $7c
    jp nc, $cdda                                  ; $5363: $d2 $da $cd

    ld e, d                                       ; $5366: $5a
    ld h, d                                       ; $5367: $62
    db $e3                                        ; $5368: $e3
    push hl                                       ; $5369: $e5
    push hl                                       ; $536a: $e5
    jp nc, Jump_000_1a4a                          ; $536b: $d2 $4a $1a

    ld a, b                                       ; $536e: $78
    or h                                          ; $536f: $b4
    sub [hl]                                      ; $5370: $96
    db $e4                                        ; $5371: $e4
    adc $4e                                       ; $5372: $ce $4e
    sbc c                                         ; $5374: $99
    sub a                                         ; $5375: $97
    rra                                           ; $5376: $1f
    cp h                                          ; $5377: $bc
    push af                                       ; $5378: $f5
    ret                                           ; $5379: $c9


    res 3, d                                      ; $537a: $cb $9a
    ld d, a                                       ; $537c: $57
    reti                                          ; $537d: $d9


    and l                                         ; $537e: $a5
    jp hl                                         ; $537f: $e9


    inc h                                         ; $5380: $24
    ld a, c                                       ; $5381: $79
    xor $5a                                       ; $5382: $ee $5a
    ld h, d                                       ; $5384: $62
    db $e3                                        ; $5385: $e3
    push hl                                       ; $5386: $e5
    push hl                                       ; $5387: $e5
    jp nc, Jump_029_4bf8                          ; $5388: $d2 $f8 $4b

    jr nc, jr_029_53bc                            ; $538b: $30 $2f

    cp a                                          ; $538d: $bf
    sub $34                                       ; $538e: $d6 $34
    ldh a, [$eb]                                  ; $5390: $f0 $eb
    ld h, [hl]                                    ; $5392: $66
    ld a, [hl-]                                   ; $5393: $3a
    ld [$3d03], sp                                ; $5394: $08 $03 $3d
    ld a, a                                       ; $5397: $7f
    db $fc                                        ; $5398: $fc
    res 5, a                                      ; $5399: $cb $af
    ld c, d                                       ; $539b: $4a
    ld b, e                                       ; $539c: $43
    ld a, [hl]                                    ; $539d: $7e
    add hl, hl                                    ; $539e: $29
    ld e, b                                       ; $539f: $58
    jp nc, $349a                                  ; $53a0: $d2 $9a $34

    call c, $aab5                                 ; $53a3: $dc $b5 $aa
    ld c, b                                       ; $53a6: $48
    jp Jump_000_129d                              ; $53a7: $c3 $9d $12


    ld e, e                                       ; $53aa: $5b
    sub e                                         ; $53ab: $93
    ld h, [hl]                                    ; $53ac: $66
    pop af                                        ; $53ad: $f1
    ld a, l                                       ; $53ae: $7d
    ld b, $c6                                     ; $53af: $06 $c6
    sub d                                         ; $53b1: $92
    and a                                         ; $53b2: $a7
    ld l, $18                                     ; $53b3: $2e $18
    dec a                                         ; $53b5: $3d

Call_029_53b6:
    adc d                                         ; $53b6: $8a
    ld d, d                                       ; $53b7: $52
    dec e                                         ; $53b8: $1d
    and [hl]                                      ; $53b9: $a6
    adc e                                         ; $53ba: $8b
    jp hl                                         ; $53bb: $e9


jr_029_53bc:
    call c, $aab5                                 ; $53bc: $dc $b5 $aa
    ld c, b                                       ; $53bf: $48
    add e                                         ; $53c0: $83
    halt                                          ; $53c1: $76
    ld c, d                                       ; $53c2: $4a
    ld a, [c]                                     ; $53c3: $f2
    di                                            ; $53c4: $f3
    ld a, [c]                                     ; $53c5: $f2
    ld c, l                                       ; $53c6: $4d
    dec l                                         ; $53c7: $2d
    add $b5                                       ; $53c8: $c6 $b5
    ld a, a                                       ; $53ca: $7f
    ld l, a                                       ; $53cb: $6f
    ld a, l                                       ; $53cc: $7d
    ld a, [de]                                    ; $53cd: $1a
    add hl, hl                                    ; $53ce: $29
    ld hl, sp+$7d                                 ; $53cf: $f8 $7d
    add hl, de                                    ; $53d1: $19
    dec a                                         ; $53d2: $3d
    rlca                                          ; $53d3: $07
    ld e, a                                       ; $53d4: $5f
    di                                            ; $53d5: $f3
    ld a, [hl+]                                   ; $53d6: $2a
    ld [$a703], sp                                ; $53d7: $08 $03 $a7
    call c, $e7ea                                 ; $53da: $dc $ea $e7
    jp nc, Jump_029_7d4c                          ; $53dd: $d2 $4c $7d

    ld e, [hl]                                    ; $53e0: $5e
    ld a, [hl]                                    ; $53e1: $7e
    ld c, a                                       ; $53e2: $4f
    adc h                                         ; $53e3: $8c
    cp e                                          ; $53e4: $bb
    xor $e9                                       ; $53e5: $ee $e9
    cp $82                                        ; $53e7: $fe $82
    halt                                          ; $53e9: $76
    or h                                          ; $53ea: $b4
    pop af                                        ; $53eb: $f1
    ld a, c                                       ; $53ec: $79
    cp c                                          ; $53ed: $b9
    jr nc, jr_029_544e                            ; $53ee: $30 $5e

    ld h, c                                       ; $53f0: $61
    sub a                                         ; $53f1: $97
    sbc $7a                                       ; $53f2: $de $7a
    ld e, l                                       ; $53f4: $5d
    db $db                                        ; $53f5: $db

Jump_029_53f6:
    pop af                                        ; $53f6: $f1
    ld de, $4706                                  ; $53f7: $11 $06 $47
    cp a                                          ; $53fa: $bf
    ei                                            ; $53fb: $fb
    res 4, d                                      ; $53fc: $cb $a2
    xor c                                         ; $53fe: $a9
    ld [$e7a3], a                                 ; $53ff: $ea $a3 $e7
    ldh [rOCPD], a                                ; $5402: $e0 $6b
    ld e, [hl]                                    ; $5404: $5e
    add l                                         ; $5405: $85
    cp e                                          ; $5406: $bb
    ld d, [hl]                                    ; $5407: $56
    dec d                                         ; $5408: $15
    ld l, c                                       ; $5409: $69
    sub $3d                                       ; $540a: $d6 $3d
    db $dd                                        ; $540c: $dd
    ld e, a                                       ; $540d: $5f
    ret nc                                        ; $540e: $d0

    inc l                                         ; $540f: $2c
    or $9a                                        ; $5410: $f6 $9a
    inc [hl]                                      ; $5412: $34
    dec [hl]                                      ; $5413: $35
    ld sp, hl                                     ; $5414: $f9
    or l                                          ; $5415: $b5
    or l                                          ; $5416: $b5
    xor d                                         ; $5417: $aa
    ld [hl], e                                    ; $5418: $73
    rst $20                                       ; $5419: $e7
    ld b, l                                       ; $541a: $45
    ld a, l                                       ; $541b: $7d
    rla                                           ; $541c: $17
    db $10                                        ; $541d: $10
    ld b, $3d                                     ; $541e: $06 $3d
    ccf                                           ; $5420: $3f
    ld b, [hl]                                    ; $5421: $46
    add h                                         ; $5422: $84
    ret nc                                        ; $5423: $d0

    push af                                       ; $5424: $f5
    ld a, [de]                                    ; $5425: $1a
    adc h                                         ; $5426: $8c
    jp nc, $b0a7                                  ; $5427: $d2 $a7 $b0

    ld l, e                                       ; $542a: $6b
    rst $08                                       ; $542b: $cf
    ld [hl-], a                                   ; $542c: $32
    halt                                          ; $542d: $76
    add hl, de                                    ; $542e: $19
    push de                                       ; $542f: $d5
    ld a, h                                       ; $5430: $7c
    ld l, $0d                                     ; $5431: $2e $0d
    jp nz, $1fad                                  ; $5433: $c2 $ad $1f

    ld h, e                                       ; $5436: $63
    ld [hl], d                                    ; $5437: $72
    rst $10                                       ; $5438: $d7
    xor d                                         ; $5439: $aa
    ld [hl+], a                                   ; $543a: $22
    dec c                                         ; $543b: $0d
    jp nz, $5596                                  ; $543c: $c2 $96 $55

    ld c, d                                       ; $543f: $4a
    add e                                         ; $5440: $83
    rst $38                                       ; $5441: $ff
    ld a, c                                       ; $5442: $79
    ld d, c                                       ; $5443: $51
    ld e, a                                       ; $5444: $5f
    sub e                                         ; $5445: $93
    ld h, [hl]                                    ; $5446: $66
    ld a, [hl+]                                   ; $5447: $2a
    cp a                                          ; $5448: $bf
    ld h, d                                       ; $5449: $62
    call nz, Call_029_7ad1                        ; $544a: $c4 $d1 $7a
    and [hl]                                      ; $544d: $a6

jr_029_544e:
    adc c                                         ; $544e: $89
    ld l, h                                       ; $544f: $6c
    ld c, l                                       ; $5450: $4d
    sbc d                                         ; $5451: $9a
    push bc                                       ; $5452: $c5
    ld e, e                                       ; $5453: $5b
    rst $38                                       ; $5454: $ff
    add l                                         ; $5455: $85
    ccf                                           ; $5456: $3f
    rst $08                                       ; $5457: $cf
    sub l                                         ; $5458: $95
    rst $10                                       ; $5459: $d7
    cp b                                          ; $545a: $b8
    ld h, $4d                                     ; $545b: $26 $4d
    ld d, a                                       ; $545d: $57
    inc c                                         ; $545e: $0c
    cp l                                          ; $545f: $bd
    ld e, $b8                                     ; $5460: $1e $b8
    db $eb                                        ; $5462: $eb
    call nz, $f857                                ; $5463: $c4 $57 $f8
    ld l, $18                                     ; $5466: $2e $18
    dec a                                         ; $5468: $3d
    jp z, Jump_029_73cb                           ; $5469: $ca $cb $73

    rst $20                                       ; $546c: $e7
    ld b, l                                       ; $546d: $45
    ld a, l                                       ; $546e: $7d
    ld d, b                                       ; $546f: $50
    jp nc, Jump_000_3644                          ; $5470: $d2 $44 $36

    ei                                            ; $5473: $fb
    ccf                                           ; $5474: $3f
    xor [hl]                                      ; $5475: $ae
    db $fd                                        ; $5476: $fd
    xor $2f                                       ; $5477: $ee $2f
    ld [$3d03], sp                                ; $5479: $08 $03 $3d
    adc d                                         ; $547c: $8a
    ld d, d                                       ; $547d: $52
    ld a, l                                       ; $547e: $7d
    ld c, l                                       ; $547f: $4d
    ld a, [de]                                    ; $5480: $1a
    xor $4e                                       ; $5481: $ee $4e
    ld d, [hl]                                    ; $5483: $56
    and [hl]                                      ; $5484: $a6
    pop hl                                        ; $5485: $e1
    cp d                                          ; $5486: $ba
    ld h, a                                       ; $5487: $67
    ld l, b                                       ; $5488: $68
    swap a                                        ; $5489: $cb $37
    ld [$c703], sp                                ; $548b: $08 $03 $c7
    db $fd                                        ; $548e: $fd
    rst $00                                       ; $548f: $c7
    reti                                          ; $5490: $d9


    ld a, [c]                                     ; $5491: $f2
    ccf                                           ; $5492: $3f
    rst $08                                       ; $5493: $cf
    ld e, c                                       ; $5494: $59
    cpl                                           ; $5495: $2f
    ld e, h                                       ; $5496: $5c
    sbc a                                         ; $5497: $9f
    ld d, d                                       ; $5498: $52
    inc sp                                        ; $5499: $33
    cp a                                          ; $549a: $bf
    pop hl                                        ; $549b: $e1
    inc hl                                        ; $549c: $23
    inc c                                         ; $549d: $0c
    and a                                         ; $549e: $a7
    call c, $97ea                                 ; $549f: $dc $ea $97
    or $9a                                        ; $54a2: $f6 $9a
    inc [hl]                                      ; $54a4: $34
    di                                            ; $54a5: $f3
    inc e                                         ; $54a6: $1c
    ld a, b                                       ; $54a7: $78
    halt                                          ; $54a8: $76
    sub $6e                                       ; $54a9: $d6 $6e
    db $10                                        ; $54ab: $10
    ld b, $bd                                     ; $54ac: $06 $bd
    jp nc, Jump_029_782c                          ; $54ae: $d2 $2c $78

    rst $18                                       ; $54b1: $df
    sub c                                         ; $54b2: $91
    db $fd                                        ; $54b3: $fd
    xor l                                         ; $54b4: $ad
    push hl                                       ; $54b5: $e5
    ld d, [hl]                                    ; $54b6: $56
    push af                                       ; $54b7: $f5
    ld hl, sp-$30                                 ; $54b8: $f8 $d0
    dec b                                         ; $54ba: $05
    inc bc                                        ; $54bb: $03
    cp l                                          ; $54bc: $bd
    jp nc, $be4c                                  ; $54bd: $d2 $4c $be

    ld a, [$fd6b]                                 ; $54c0: $fa $6b $fd
    jp $bd31                                      ; $54c3: $c3 $31 $bd


    jp nc, $e54c                                  ; $54c6: $d2 $4c $e5

    ld d, a                                       ; $54c9: $57
    ld h, l                                       ; $54ca: $65
    ret c                                         ; $54cb: $d8

    adc c                                         ; $54cc: $89
    rst $28                                       ; $54cd: $ef
    rra                                           ; $54ce: $1f
    sbc e                                         ; $54cf: $9b
    sub l                                         ; $54d0: $95
    rst $10                                       ; $54d1: $d7
    ld hl, sp-$54                                 ; $54d2: $f8 $ac
    dec bc                                        ; $54d4: $0b
    ld b, $2d                                     ; $54d5: $06 $2d
    xor [hl]                                      ; $54d7: $ae
    ld l, [hl]                                    ; $54d8: $6e
    ld h, b                                       ; $54d9: $60
    db $fd                                        ; $54da: $fd
    db $ec                                        ; $54db: $ec
    ret c                                         ; $54dc: $d8

    di                                            ; $54dd: $f3
    call Call_029_60ed                            ; $54de: $cd $ed $60
    ld d, $ff                                     ; $54e1: $16 $ff
    db $10                                        ; $54e3: $10
    inc bc                                        ; $54e4: $03
    ld d, $0a                                     ; $54e5: $16 $0a
    db $e4                                        ; $54e7: $e4
    reti                                          ; $54e8: $d9


    ld a, l                                       ; $54e9: $7d
    ld a, [c]                                     ; $54ea: $f2
    dec e                                         ; $54eb: $1d
    ld c, e                                       ; $54ec: $4b
    ld d, l                                       ; $54ed: $55
    ld d, e                                       ; $54ee: $53
    push bc                                       ; $54ef: $c5
    db $ec                                        ; $54f0: $ec
    inc a                                         ; $54f1: $3c
    cp e                                          ; $54f2: $bb
    adc d                                         ; $54f3: $8a
    ld bc, $65c7                                  ; $54f4: $01 $c7 $65
    cp h                                          ; $54f7: $bc
    cp c                                          ; $54f8: $b9
    sub e                                         ; $54f9: $93
    dec [hl]                                      ; $54fa: $35
    cp b                                          ; $54fb: $b8
    jr @-$37                                      ; $54fc: $18 $c7

    ld h, l                                       ; $54fe: $65
    cp h                                          ; $54ff: $bc
    cp c                                          ; $5500: $b9
    ld e, $72                                     ; $5501: $1e $72
    dec sp                                        ; $5503: $3b
    pop af                                        ; $5504: $f1
    ld d, [hl]                                    ; $5505: $56
    ld b, $30                                     ; $5506: $06 $30
    dec l                                         ; $5508: $2d
    ld l, d                                       ; $5509: $6a
    db $fd                                        ; $550a: $fd
    dec e                                         ; $550b: $1d
    xor a                                         ; $550c: $af
    pop hl                                        ; $550d: $e1
    ld h, e                                       ; $550e: $63
    daa                                           ; $550f: $27
    cp l                                          ; $5510: $bd
    push af                                       ; $5511: $f5
    inc hl                                        ; $5512: $23
    ld b, $c7                                     ; $5513: $06 $c7
    ld [hl], d                                    ; $5515: $72
    add sp, -$44                                  ; $5516: $e8 $bc
    call c, $eaa7                                 ; $5518: $dc $a7 $ea
    ld sp, $3ca7                                  ; $551b: $31 $a7 $3c
    rlca                                          ; $551e: $07
    rst $18                                       ; $551f: $df
    ld c, c                                       ; $5520: $49
    sub $88                                       ; $5521: $d6 $88
    ld bc, $b72d                                  ; $5523: $01 $2d $b7
    xor d                                         ; $5526: $aa
    rst $00                                       ; $5527: $c7
    rlca                                          ; $5528: $07
    inc c                                         ; $5529: $0c
    dec l                                         ; $552a: $2d
    xor [hl]                                      ; $552b: $ae
    pop hl                                        ; $552c: $e1
    dec h                                         ; $552d: $25
    push bc                                       ; $552e: $c5
    daa                                           ; $552f: $27
    ld l, e                                       ; $5530: $6b
    ld [hl], b                                    ; $5531: $70

jr_029_5532:
    dec hl                                        ; $5532: $2b
    inc c                                         ; $5533: $0c
    dec l                                         ; $5534: $2d
    ld l, $4f                                     ; $5535: $2e $4f
    add c                                         ; $5537: $81
    rla                                           ; $5538: $17
    inc c                                         ; $5539: $0c
    rst $00                                       ; $553a: $c7
    cp h                                          ; $553b: $bc
    db $fd                                        ; $553c: $fd
    ld d, h                                       ; $553d: $54
    dec a                                         ; $553e: $3d
    ld b, $47                                     ; $553f: $06 $47
    dec b                                         ; $5541: $05
    scf                                           ; $5542: $37
    ld e, [hl]                                    ; $5543: $5e
    ld l, a                                       ; $5544: $6f
    jr nc, jr_029_556e                            ; $5545: $30 $27

    ld l, e                                       ; $5547: $6b
    ld [hl], b                                    ; $5548: $70
    xor e                                         ; $5549: $ab
    or l                                          ; $554a: $b5
    cp b                                          ; $554b: $b8
    ld h, b                                       ; $554c: $60
    daa                                           ; $554d: $27
    ld l, e                                       ; $554e: $6b
    ld [hl], b                                    ; $554f: $70
    xor e                                         ; $5550: $ab
    dec e                                         ; $5551: $1d
    di                                            ; $5552: $f3
    ld [hl], $06                                  ; $5553: $36 $06

jr_029_5555:
    ld b, a                                       ; $5555: $47
    or $d7                                        ; $5556: $f6 $d7
    rst $08                                       ; $5558: $cf
    sub c                                         ; $5559: $91
    db $fd                                        ; $555a: $fd
    rrca                                          ; $555b: $0f
    inc bc                                        ; $555c: $03
    and a                                         ; $555d: $a7
    ld a, a                                       ; $555e: $7f
    sbc b                                         ; $555f: $98
    sub $5f                                       ; $5560: $d6 $5f
    xor a                                         ; $5562: $af
    inc [hl]                                      ; $5563: $34
    or d                                          ; $5564: $b2
    db $e3                                        ; $5565: $e3
    ld h, e                                       ; $5566: $63
    ld e, d                                       ; $5567: $5a
    rra                                           ; $5568: $1f
    jr nc, jr_029_5532                            ; $5569: $30 $c7

    adc b                                         ; $556b: $88
    ld b, $49                                     ; $556c: $06 $49

jr_029_556e:
    ld d, b                                       ; $556e: $50
    cp a                                          ; $556f: $bf

Call_029_5570:
    or h                                          ; $5570: $b4
    db $e3                                        ; $5571: $e3
    ld h, e                                       ; $5572: $63
    ld e, d                                       ; $5573: $5a

Jump_029_5574:
    rra                                           ; $5574: $1f
    jr nc, jr_029_55a4                            ; $5575: $30 $2d

    and [hl]                                      ; $5577: $a6
    di                                            ; $5578: $f3
    ld [hl], d                                    ; $5579: $72
    ld d, e                                       ; $557a: $53
    halt                                          ; $557b: $76
    ld a, h                                       ; $557c: $7c
    ld c, h                                       ; $557d: $4c
    db $eb                                        ; $557e: $eb
    inc bc                                        ; $557f: $03
    ld b, $c7                                     ; $5580: $06 $c7
    adc b                                         ; $5582: $88
    ld b, $49                                     ; $5583: $06 $49
    ld d, l                                       ; $5585: $55
    ld d, h                                       ; $5586: $54
    ld a, [hl]                                    ; $5587: $7e
    rst $00                                       ; $5588: $c7
    rst $00                                       ; $5589: $c7
    or h                                          ; $558a: $b4
    ld a, $60                                     ; $558b: $3e $60
    and a                                         ; $558d: $a7
    call c, Call_000_1db0                         ; $558e: $dc $b0 $1d
    ld a, a                                       ; $5591: $7f
    rst $00                                       ; $5592: $c7
    rst $00                                       ; $5593: $c7
    or h                                          ; $5594: $b4
    ld a, $60                                     ; $5595: $3e $60
    dec l                                         ; $5597: $2d
    add hl, hl                                    ; $5598: $29
    push de                                       ; $5599: $d5
    ld c, e                                       ; $559a: $4b
    ld a, [de]                                    ; $559b: $1a
    ret c                                         ; $559c: $d8

    pop af                                        ; $559d: $f1
    ld sp, $0fad                                  ; $559e: $31 $ad $0f
    jr @+$3f                                      ; $55a1: $18 $3d

    sub l                                         ; $55a3: $95

jr_029_55a4:
    jr jr_029_5555                                ; $55a4: $18 $af

    sub $4b                                       ; $55a6: $d6 $4b
    pop bc                                        ; $55a8: $c1
    adc [hl]                                      ; $55a9: $8e
    adc a                                         ; $55aa: $8f
    ld l, c                                       ; $55ab: $69
    ld a, l                                       ; $55ac: $7d
    ret nz                                        ; $55ad: $c0

    and a                                         ; $55ae: $a7

Jump_029_55af:
    ld a, a                                       ; $55af: $7f
    sbc b                                         ; $55b0: $98
    sub $5f                                       ; $55b1: $d6 $5f
    xor a                                         ; $55b3: $af
    inc [hl]                                      ; $55b4: $34
    or d                                          ; $55b5: $b2
    ld d, [hl]                                    ; $55b6: $56
    ld [hl], l                                    ; $55b7: $75
    inc c                                         ; $55b8: $0c
    db $dd                                        ; $55b9: $dd
    di                                            ; $55ba: $f3
    sub d                                         ; $55bb: $92
    ccf                                           ; $55bc: $3f
    ld e, e                                       ; $55bd: $5b
    xor e                                         ; $55be: $ab
    ld a, [hl-]                                   ; $55bf: $3a
    ld b, $2d                                     ; $55c0: $06 $2d
    and [hl]                                      ; $55c2: $a6
    di                                            ; $55c3: $f3
    ld [hl], d                                    ; $55c4: $72
    ld d, e                                       ; $55c5: $53
    sub $3d                                       ; $55c6: $d6 $3d
    cpl                                           ; $55c8: $2f
    ld sp, hl                                     ; $55c9: $f9
    or e                                          ; $55ca: $b3
    or l                                          ; $55cb: $b5
    xor d                                         ; $55cc: $aa
    ld h, e                                       ; $55cd: $63
    daa                                           ; $55ce: $27
    ld e, l                                       ; $55cf: $5d
    ld a, d                                       ; $55d0: $7a
    or [hl]                                       ; $55d1: $b6
    ld d, [hl]                                    ; $55d2: $56
    ld [hl], l                                    ; $55d3: $75
    inc c                                         ; $55d4: $0c
    dec l                                         ; $55d5: $2d
    and [hl]                                      ; $55d6: $a6
    di                                            ; $55d7: $f3
    ld [de], a                                    ; $55d8: $12
    push de                                       ; $55d9: $d5
    xor a                                         ; $55da: $af
    push af                                       ; $55db: $f5

jr_029_55dc:
    rst $10                                       ; $55dc: $d7
    xor d                                         ; $55dd: $aa
    adc [hl]                                      ; $55de: $8e
    ld bc, $37ad                                  ; $55df: $01 $ad $37
    jr z, jr_029_564f                             ; $55e2: $28 $6b

    ld d, l                                       ; $55e4: $55
    ld h, c                                       ; $55e5: $61
    ld l, e                                       ; $55e6: $6b
    ld d, l                                       ; $55e7: $55
    rst $00                                       ; $55e8: $c7
    and a                                         ; $55e9: $a7
    halt                                          ; $55ea: $76
    db $fc                                        ; $55eb: $fc
    add [hl]                                      ; $55ec: $86
    ld h, $5c                                     ; $55ed: $26 $5c
    xor e                                         ; $55ef: $ab
    ld a, [hl-]                                   ; $55f0: $3a
    ld b, $a7                                     ; $55f1: $06 $a7
    ld a, a                                       ; $55f3: $7f
    sbc b                                         ; $55f4: $98
    sub $5f                                       ; $55f5: $d6 $5f
    xor a                                         ; $55f7: $af
    inc [hl]                                      ; $55f8: $34
    or d                                          ; $55f9: $b2
    db $d3                                        ; $55fa: $d3
    or e                                          ; $55fb: $b3
    db $fd                                        ; $55fc: $fd
    jr jr_029_55dc                                ; $55fd: $18 $dd

    and e                                         ; $55ff: $a3
    ld e, [hl]                                    ; $5600: $5e
    ld e, d                                       ; $5601: $5a
    rst $08                                       ; $5602: $cf
    sub h                                         ; $5603: $94
    ld a, [$cf4e]                                 ; $5604: $fa $4e $cf
    or $63                                        ; $5607: $f6 $63
    dec a                                         ; $5609: $3d
    cpl                                           ; $560a: $2f
    ld sp, hl                                     ; $560b: $f9
    res 7, d                                      ; $560c: $cb $ba
    push bc                                       ; $560e: $c5
    call nc, Call_000_063a                        ; $560f: $d4 $3a $06
    dec l                                         ; $5612: $2d
    and [hl]                                      ; $5613: $a6
    di                                            ; $5614: $f3
    ld [hl], d                                    ; $5615: $72
    ld d, e                                       ; $5616: $53
    sub $33                                       ; $5617: $d6 $33
    and l                                         ; $5619: $a5
    cp [hl]                                       ; $561a: $be
    db $d3                                        ; $561b: $d3
    or e                                          ; $561c: $b3
    db $fd                                        ; $561d: $fd
    jr jr_029_564d                                ; $561e: $18 $2d

    and [hl]                                      ; $5620: $a6
    di                                            ; $5621: $f3
    ld [hl], d                                    ; $5622: $72
    ld d, e                                       ; $5623: $53
    sub $f3                                       ; $5624: $d6 $f3
    sub d                                         ; $5626: $92
    cp a                                          ; $5627: $bf
    xor h                                         ; $5628: $ac
    ld e, e                                       ; $5629: $5b
    ld c, h                                       ; $562a: $4c
    xor l                                         ; $562b: $ad
    ld h, e                                       ; $562c: $63
    ld b, a                                       ; $562d: $47
    sbc e                                         ; $562e: $9b
    xor d                                         ; $562f: $aa
    ld l, $1a                                     ; $5630: $2e $1a
    xor $f4                                       ; $5632: $ee $f4
    ld l, h                                       ; $5634: $6c
    ccf                                           ; $5635: $3f
    ld b, $47                                     ; $5636: $06 $47
    rst $00                                       ; $5638: $c7
    res 2, c                                      ; $5639: $cb $91
    and e                                         ; $563b: $a3
    ld a, [bc]                                    ; $563c: $0a
    ld e, e                                       ; $563d: $5b
    or a                                          ; $563e: $b7
    sbc b                                         ; $563f: $98
    ld e, d                                       ; $5640: $5a
    rst $00                                       ; $5641: $c7
    and a                                         ; $5642: $a7
    ld a, a                                       ; $5643: $7f
    sbc b                                         ; $5644: $98
    sub $5f                                       ; $5645: $d6 $5f
    xor a                                         ; $5647: $af
    inc [hl]                                      ; $5648: $34
    or d                                          ; $5649: $b2
    and e                                         ; $564a: $a3
    ccf                                           ; $564b: $3f
    ld a, [hl-]                                   ; $564c: $3a

jr_029_564d:
    ld b, $27                                     ; $564d: $06 $27

jr_029_564f:
    cp l                                          ; $564f: $bd
    ld a, d                                       ; $5650: $7a
    ld a, c                                       ; $5651: $79
    reti                                          ; $5652: $d9


    pop de                                        ; $5653: $d1
    rra                                           ; $5654: $1f
    dec e                                         ; $5655: $1d
    inc bc                                        ; $5656: $03
    rst $00                                       ; $5657: $c7
    ld e, l                                       ; $5658: $5d
    ld a, [$f71d]                                 ; $5659: $fa $1d $f7
    xor $f1                                       ; $565c: $ee $f1
    ld [hl], a                                    ; $565e: $77
    db $f4                                        ; $565f: $f4

Call_029_5660:
    ld b, a                                       ; $5660: $47
    rst $00                                       ; $5661: $c7

Call_029_5662:
Jump_029_5662:
    dec l                                         ; $5662: $2d
    xor [hl]                                      ; $5663: $ae
    pop hl                                        ; $5664: $e1
    dec h                                         ; $5665: $25
    db $dd                                        ; $5666: $dd
    pop de                                        ; $5667: $d1
    rra                                           ; $5668: $1f
    dec e                                         ; $5669: $1d
    inc bc                                        ; $566a: $03
    ld h, a                                       ; $566b: $67
    sbc $20                                       ; $566c: $de $20
    dec h                                         ; $566e: $25
    dec c                                         ; $566f: $0d
    db $ec                                        ; $5670: $ec

jr_029_5671:
    add sp, -$71                                  ; $5671: $e8 $8f
    adc [hl]                                      ; $5673: $8e
    ld bc, $67a7                                  ; $5674: $01 $a7 $67
    db $db                                        ; $5677: $db
    add b                                         ; $5678: $80
    rst $28                                       ; $5679: $ef
    add sp, -$71                                  ; $567a: $e8 $8f
    adc [hl]                                      ; $567c: $8e
    ld bc, $2b47                                  ; $567d: $01 $47 $2b
    ld hl, sp+$4d                                 ; $5680: $f8 $4d
    jp c, $1fd1                                   ; $5682: $da $d1 $1f

    dec e                                         ; $5685: $1d
    inc bc                                        ; $5686: $03
    and a                                         ; $5687: $a7
    ld a, a                                       ; $5688: $7f
    sbc b                                         ; $5689: $98
    sub $5f                                       ; $568a: $d6 $5f
    xor a                                         ; $568c: $af
    inc [hl]                                      ; $568d: $34
    or d                                          ; $568e: $b2
    and e                                         ; $568f: $a3
    inc sp                                        ; $5690: $33
    dec e                                         ; $5691: $1d
    jr nc, jr_029_5671                            ; $5692: $30 $dd

    and e                                         ; $5694: $a3
    ld e, [hl]                                    ; $5695: $5e
    jp c, $99d1                                   ; $5696: $da $d1 $99

    ld c, $18                                     ; $5699: $0e $18
    dec l                                         ; $569b: $2d
    and [hl]                                      ; $569c: $a6
    di                                            ; $569d: $f3
    ld [hl], d                                    ; $569e: $72
    ld d, e                                       ; $569f: $53
    halt                                          ; $56a0: $76
    ld [hl], h                                    ; $56a1: $74
    and [hl]                                      ; $56a2: $a6
    inc bc                                        ; $56a3: $03
    ld b, $ad                                     ; $56a4: $06 $ad
    ld a, [hl+]                                   ; $56a6: $2a
    db $ec                                        ; $56a7: $ec
    jp hl                                         ; $56a8: $e9


    reti                                          ; $56a9: $d9


    adc [hl]                                      ; $56aa: $8e
    adc $74                                       ; $56ab: $ce $74
    ret nz                                        ; $56ad: $c0

    dec l                                         ; $56ae: $2d
    and [hl]                                      ; $56af: $a6
    di                                            ; $56b0: $f3
    ld [de], a                                    ; $56b1: $12
    push de                                       ; $56b2: $d5
    xor a                                         ; $56b3: $af
    push af                                       ; $56b4: $f5
    ld [hl], a                                    ; $56b5: $77
    ld [hl], h                                    ; $56b6: $74
    and [hl]                                      ; $56b7: $a6
    inc bc                                        ; $56b8: $03
    ld b, $47                                     ; $56b9: $06 $47
    sbc e                                         ; $56bb: $9b
    ret z                                         ; $56bc: $c8

    xor e                                         ; $56bd: $ab
    call nc, Call_029_7477                        ; $56be: $d4 $77 $74
    and [hl]                                      ; $56c1: $a6
    inc bc                                        ; $56c2: $03
    ld b, $a7                                     ; $56c3: $06 $a7
    halt                                          ; $56c5: $76
    db $fc                                        ; $56c6: $fc
    add [hl]                                      ; $56c7: $86
    ld h, $dc                                     ; $56c8: $26 $dc
    pop de                                        ; $56ca: $d1
    sbc c                                         ; $56cb: $99
    ld c, $18                                     ; $56cc: $0e $18
    dec l                                         ; $56ce: $2d
    ld d, l                                       ; $56cf: $55

Jump_029_56d0:
    ret                                           ; $56d0: $c9


    adc h                                         ; $56d1: $8c
    ld l, e                                       ; $56d2: $6b
    ld sp, $4e9d                                  ; $56d3: $31 $9d $4e

Jump_029_56d6:
    ld l, h                                       ; $56d6: $6c
    halt                                          ; $56d7: $76
    jp nc, $c705                                  ; $56d8: $d2 $05 $c7

    db $dd                                        ; $56db: $dd
    and d                                         ; $56dc: $a2
    ld [bc], a                                    ; $56dd: $02
    db $ec                                        ; $56de: $ec
    and h                                         ; $56df: $a4
    dec bc                                        ; $56e0: $0b
    adc [hl]                                      ; $56e1: $8e
    ld bc, $2fad                                  ; $56e2: $01 $ad $2f
    db $ed                                        ; $56e5: $ed
    sbc l                                         ; $56e6: $9d
    ld [hl], h                                    ; $56e7: $74
    pop bc                                        ; $56e8: $c1
    ld sp, $4b47                                  ; $56e9: $31 $47 $4b
    ld h, [hl]                                    ; $56ec: $66
    ld [$ab7e], sp                                ; $56ed: $08 $7e $ab
    ld a, [$a9ba]                                 ; $56f0: $fa $ba $a9
    db $fc                                        ; $56f3: $fc
    ld c, [hl]                                    ; $56f4: $4e
    cp h                                          ; $56f5: $bc
    adc [hl]                                      ; $56f6: $8e
    ld bc, $b5dd                                  ; $56f7: $01 $dd $b5
    xor d                                         ; $56fa: $aa
    rst $28                                       ; $56fb: $ef
    ld d, h                                       ; $56fc: $54
    ld a, e                                       ; $56fd: $7b
    and a                                         ; $56fe: $a7
    ld l, b                                       ; $56ff: $68
    ld hl, sp-$15                                 ; $5700: $f8 $eb
    and c                                         ; $5702: $a1
    ld bc, $2d60                                  ; $5703: $01 $60 $2d
    xor [hl]                                      ; $5706: $ae
    or d                                          ; $5707: $b2
    ld l, [hl]                                    ; $5708: $6e
    ld b, l                                       ; $5709: $45
    push bc                                       ; $570a: $c5
    ld sp, $55dd                                  ; $570b: $31 $dd $55
    xor d                                         ; $570e: $aa
    ld [de], a                                    ; $570f: $12
    ld a, $39                                     ; $5710: $3e $39
    ld b, $47                                     ; $5712: $06 $47
    sub c                                         ; $5714: $91
    ld e, a                                       ; $5715: $5f
    sub [hl]                                      ; $5716: $96
    cp $18                                        ; $5717: $fe $18
    dec a                                         ; $5719: $3d
    ld l, a                                       ; $571a: $6f
    db $10                                        ; $571b: $10
    inc a                                         ; $571c: $3c
    pop af                                        ; $571d: $f1
    rra                                           ; $571e: $1f

jr_029_571f:
    reti                                          ; $571f: $d9


    cp d                                          ; $5720: $ba
    and a                                         ; $5721: $a7
    rst $18                                       ; $5722: $df
    inc h                                         ; $5723: $24
    inc c                                         ; $5724: $0c
    rst $00                                       ; $5725: $c7
    adc e                                         ; $5726: $8b
    ld [de], a                                    ; $5727: $12
    ld e, e                                       ; $5728: $5b
    rst $08                                       ; $5729: $cf
    dec de                                        ; $572a: $1b
    inc b                                         ; $572b: $04
    ld c, a                                       ; $572c: $4f
    db $fc                                        ; $572d: $fc
    ld b, a                                       ; $572e: $47
    or [hl]                                       ; $572f: $b6
    xor $e9                                       ; $5730: $ee $e9
    scf                                           ; $5732: $37
    add hl, bc                                    ; $5733: $09
    inc bc                                        ; $5734: $03
    xor l                                         ; $5735: $ad
    cpl                                           ; $5736: $2f
    db $ed                                        ; $5737: $ed
    ld e, e                                       ; $5738: $5b
    ld e, l                                       ; $5739: $5d
    or $eb                                        ; $573a: $f6 $eb

Jump_029_573c:
    sbc [hl]                                      ; $573c: $9e
    ld a, [hl]                                    ; $573d: $7e
    sub e                                         ; $573e: $93
    jr nc, jr_029_57a8                            ; $573f: $30 $67

    ld e, [hl]                                    ; $5741: $5e
    rst $10                                       ; $5742: $d7
    ldh a, [$72]                                  ; $5743: $f0 $72
    ld e, b                                       ; $5745: $58
    rst $30                                       ; $5746: $f7
    db $f4                                        ; $5747: $f4
    sbc e                                         ; $5748: $9b
    add h                                         ; $5749: $84
    ld bc, $bfdd                                  ; $574a: $01 $dd $bf
    db $d3                                        ; $574d: $d3
    ld a, c                                       ; $574e: $79
    reti                                          ; $574f: $d9


    add hl, de                                    ; $5750: $19
    sbc l                                         ; $5751: $9d
    ld [hl], l                                    ; $5752: $75
    ld c, a                                       ; $5753: $4f
    cp a                                          ; $5754: $bf
    ld c, c                                       ; $5755: $49
    jr jr_029_571f                                ; $5756: $18 $c7

    adc e                                         ; $5758: $8b
    ld [de], a                                    ; $5759: $12
    ld e, e                                       ; $575a: $5b
    rst $30                                       ; $575b: $f7
    rst $28                                       ; $575c: $ef
    ld [hl], h                                    ; $575d: $74
    ld e, [hl]                                    ; $575e: $5e
    halt                                          ; $575f: $76
    ld b, [hl]                                    ; $5760: $46
    ld h, a                                       ; $5761: $67
    db $dd                                        ; $5762: $dd
    db $d3                                        ; $5763: $d3
    ld l, a                                       ; $5764: $6f
    ld [de], a                                    ; $5765: $12
    ld b, $dd                                     ; $5766: $06 $dd
    db $d3                                        ; $5768: $d3
    ld l, a                                       ; $5769: $6f
    jp nc, $bc4e                                  ; $576a: $d2 $4e $bc

    cp [hl]                                       ; $576d: $be
    and e                                         ; $576e: $a3
    dec [hl]                                      ; $576f: $35
    ret nz                                        ; $5770: $c0

    db $dd                                        ; $5771: $dd
    ld [hl-], a                                   ; $5772: $32
    ld b, [hl]                                    ; $5773: $46
    db $ed                                        ; $5774: $ed
    ret nz                                        ; $5775: $c0

    ld l, l                                       ; $5776: $6d
    rst $00                                       ; $5777: $c7
    ld e, a                                       ; $5778: $5f

jr_029_5779:
    scf                                           ; $5779: $37
    dec [hl]                                      ; $577a: $35
    sub c                                         ; $577b: $91
    ld c, c                                       ; $577c: $49
    ld [de], a                                    ; $577d: $12
    ld b, $dd                                     ; $577e: $06 $dd
    or d                                          ; $5780: $b2
    db $d3                                        ; $5781: $d3
    ld a, c                                       ; $5782: $79
    ld e, c                                       ; $5783: $59
    scf                                           ; $5784: $37
    dec [hl]                                      ; $5785: $35
    sub c                                         ; $5786: $91
    ld c, c                                       ; $5787: $49
    ld [de], a                                    ; $5788: $12
    ld b, $47                                     ; $5789: $06 $47
    adc e                                         ; $578b: $8b
    ld [bc], a                                    ; $578c: $02
    xor h                                         ; $578d: $ac
    sbc e                                         ; $578e: $9b
    sbc d                                         ; $578f: $9a
    ret z                                         ; $5790: $c8

    inc h                                         ; $5791: $24
    add hl, bc                                    ; $5792: $09
    inc bc                                        ; $5793: $03
    dec l                                         ; $5794: $2d
    scf                                           ; $5795: $37
    ld e, d                                       ; $5796: $5a
    ld e, a                                       ; $5797: $5f
    sub $4d                                       ; $5798: $d6 $4d
    ld c, l                                       ; $579a: $4d
    ld h, h                                       ; $579b: $64
    sub d                                         ; $579c: $92
    add h                                         ; $579d: $84
    ld bc, $1f2d                                  ; $579e: $01 $2d $1f
    db $ed                                        ; $57a1: $ed
    cp [hl]                                       ; $57a2: $be
    pop bc                                        ; $57a3: $c1
    xor a                                         ; $57a4: $af
    ret z                                         ; $57a5: $c8

    and l                                         ; $57a6: $a5
    ld h, b                                       ; $57a7: $60

jr_029_57a8:
    db $dd                                        ; $57a8: $dd
    call nc, Call_000_2644                        ; $57a9: $d4 $44 $26
    ld c, c                                       ; $57ac: $49
    jr jr_029_57dc                                ; $57ad: $18 $2d

    sbc l                                         ; $57af: $9d
    adc a                                         ; $57b0: $8f
    or c                                          ; $57b1: $b1
    sbc l                                         ; $57b2: $9d
    ld e, c                                       ; $57b3: $59
    rst $00                                       ; $57b4: $c7
    dec l                                         ; $57b5: $2d
    ld d, l                                       ; $57b6: $55
    ret                                           ; $57b7: $c9


    adc h                                         ; $57b8: $8c
    dec sp                                        ; $57b9: $3b
    ld a, [hl-]                                   ; $57ba: $3a
    or e                                          ; $57bb: $b3
    ld c, $18                                     ; $57bc: $0e $18
    rst $00                                       ; $57be: $c7
    ld h, l                                       ; $57bf: $65
    cp h                                          ; $57c0: $bc
    cp c                                          ; $57c1: $b9
    ld e, $72                                     ; $57c2: $1e $72
    dec sp                                        ; $57c4: $3b
    pop af                                        ; $57c5: $f1
    ld d, [hl]                                    ; $57c6: $56
    ld b, $30                                     ; $57c7: $06 $30
    rst $00                                       ; $57c9: $c7
    ld h, l                                       ; $57ca: $65
    cp h                                          ; $57cb: $bc
    cp c                                          ; $57cc: $b9
    sub e                                         ; $57cd: $93
    dec [hl]                                      ; $57ce: $35
    cp b                                          ; $57cf: $b8
    jr jr_029_5779                                ; $57d0: $18 $a7

    and h                                         ; $57d2: $a4
    ld a, a                                       ; $57d3: $7f
    dec sp                                        ; $57d4: $3b
    or e                                          ; $57d5: $b3
    adc [hl]                                      ; $57d6: $8e
    ld bc, $8cdd                                  ; $57d7: $01 $dd $8c
    ret nz                                        ; $57da: $c0

    rst $28                                       ; $57db: $ef

jr_029_57dc:
    add sp, -$34                                  ; $57dc: $e8 $cc
    ld a, [hl-]                                   ; $57de: $3a
    ld b, $ad                                     ; $57df: $06 $ad
    ld a, [hl+]                                   ; $57e1: $2a
    jp nc, Jump_029_60d4                          ; $57e2: $d2 $d4 $60

    dec a                                         ; $57e5: $3d
    sub l                                         ; $57e6: $95
    jr @+$08                                      ; $57e7: $18 $06

    and a                                         ; $57e9: $a7
    ld a, [bc]                                    ; $57ea: $0a
    cp e                                          ; $57eb: $bb
    and h                                         ; $57ec: $a4
    jp nc, Jump_029_68ec                          ; $57ed: $d2 $ec $68

    ret                                           ; $57f0: $c9


    inc c                                         ; $57f1: $0c
    ld sp, $32dd                                  ; $57f2: $31 $dd $32
    ld a, h                                       ; $57f5: $7c
    ld e, a                                       ; $57f6: $5f
    rst $38                                       ; $57f7: $ff
    rlca                                          ; $57f8: $07
    rst $30                                       ; $57f9: $f7
    adc e                                         ; $57fa: $8b
    ld bc, $252d                                  ; $57fb: $01 $2d $25
    db $d3                                        ; $57fe: $d3
    cpl                                           ; $57ff: $2f
    dec b                                         ; $5800: $05
    ld l, e                                       ; $5801: $6b
    ld [hl], c                                    ; $5802: $71
    dec d                                         ; $5803: $15
    inc c                                         ; $5804: $0c
    and a                                         ; $5805: $a7
    call c, Call_029_6db0                         ; $5806: $dc $b0 $6d
    ld h, b                                       ; $5809: $60
    db $fd                                        ; $580a: $fd
    rst $30                                       ; $580b: $f7
    db $db                                        ; $580c: $db
    ld l, a                                       ; $580d: $6f
    cp a                                          ; $580e: $bf
    jr jr_029_5858                                ; $580f: $18 $47

    ld b, c                                       ; $5811: $41
    and a                                         ; $5812: $a7
    inc h                                         ; $5813: $24
    ei                                            ; $5814: $fb
    cp b                                          ; $5815: $b8
    db $d3                                        ; $5816: $d3
    inc sp                                        ; $5817: $33
    dec e                                         ; $5818: $1d
    inc bc                                        ; $5819: $03
    daa                                           ; $581a: $27
    daa                                           ; $581b: $27
    push de                                       ; $581c: $d5
    and c                                         ; $581d: $a1
    ld h, h                                       ; $581e: $64
    ld [hl-], a                                   ; $581f: $32
    inc c                                         ; $5820: $0c
    rst $00                                       ; $5821: $c7
    ret z                                         ; $5822: $c8

    ld a, l                                       ; $5823: $7d
    or [hl]                                       ; $5824: $b6
    ld d, e                                       ; $5825: $53
    sbc $3d                                       ; $5826: $de $3d
    ld a, $60                                     ; $5828: $3e $60
    rst $00                                       ; $582a: $c7
    ld e, h                                       ; $582b: $5c
    ld [hl], a                                    ; $582c: $77
    and l                                         ; $582d: $a5
    ld b, $03                                     ; $582e: $06 $03
    dec a                                         ; $5830: $3d
    ld d, e                                       ; $5831: $53
    ld b, d                                       ; $5832: $42
    ld a, $93                                     ; $5833: $3e $93
    ld h, c                                       ; $5835: $61
    daa                                           ; $5836: $27
    dec hl                                        ; $5837: $2b
    ld sp, $fad1                                  ; $5838: $31 $d1 $fa
    rst $28                                       ; $583b: $ef
    db $f4                                        ; $583c: $f4
    ld c, h                                       ; $583d: $4c
    rst $00                                       ; $583e: $c7
    ld b, a                                       ; $583f: $47
    ld h, a                                       ; $5840: $67
    add [hl]                                      ; $5841: $86
    db $10                                        ; $5842: $10
    sub l                                         ; $5843: $95
    add d                                         ; $5844: $82
    or l                                          ; $5845: $b5
    call nc, Call_029_612f                        ; $5846: $d4 $2f $61
    db $dd                                        ; $5849: $dd
    ld d, e                                       ; $584a: $53
    ld a, [hl+]                                   ; $584b: $2a
    db $d3                                        ; $584c: $d3
    cp c                                          ; $584d: $b9
    db $f4                                        ; $584e: $f4
    dec sp                                        ; $584f: $3b
    call $18dc                                    ; $5850: $cd $dc $18
    ld bc, $a703                                  ; $5853: $01 $03 $a7
    ld d, [hl]                                    ; $5856: $56
    sbc [hl]                                      ; $5857: $9e

jr_029_5858:
    dec e                                         ; $5858: $1d
    inc bc                                        ; $5859: $03
    db $eb                                        ; $585a: $eb
    sbc [hl]                                      ; $585b: $9e
    inc a                                         ; $585c: $3c
    ld a, e                                       ; $585d: $7b
    pop bc                                        ; $585e: $c1
    ld b, a                                       ; $585f: $47
    rst $38                                       ; $5860: $ff
    ld a, e                                       ; $5861: $7b
    ld a, h                                       ; $5862: $7c
    xor b                                         ; $5863: $a8
    db $ed                                        ; $5864: $ed
    ret c                                         ; $5865: $d8

    and $01                                       ; $5866: $e6 $01
    inc bc                                        ; $5868: $03
    ld b, a                                       ; $5869: $47
    rst $18                                       ; $586a: $df
    ld a, [hl+]                                   ; $586b: $2a
    add l                                         ; $586c: $85
    sub $9a                                       ; $586d: $d6 $9a
    ld b, d                                       ; $586f: $42
    jr jr_029_589f                                ; $5870: $18 $2d

    and h                                         ; $5872: $a4
    push af                                       ; $5873: $f5
    rst $18                                       ; $5874: $df
    ld [hl], c                                    ; $5875: $71
    ld c, d                                       ; $5876: $4a
    ld bc, $4760                                  ; $5877: $01 $60 $47
    ccf                                           ; $587a: $3f
    rst $00                                       ; $587b: $c7
    ld d, h                                       ; $587c: $54
    ld e, c                                       ; $587d: $59
    adc e                                         ; $587e: $8b
    daa                                           ; $587f: $27
    dec a                                         ; $5880: $3d
    ld b, $2d                                     ; $5881: $06 $2d
    scf                                           ; $5883: $37
    ld e, d                                       ; $5884: $5a
    ld e, a                                       ; $5885: $5f
    halt                                          ; $5886: $76
    ld b, $dd                                     ; $5887: $06 $dd
    ld a, [hl+]                                   ; $5889: $2a
    add l                                         ; $588a: $85
    sub $9a                                       ; $588b: $d6 $9a
    ld b, d                                       ; $588d: $42

jr_029_588e:
    jr jr_029_58cd                                ; $588e: $18 $3d

    inc sp                                        ; $5890: $33
    jp c, Jump_029_56d0                           ; $5891: $da $d0 $56

    ld a, d                                       ; $5894: $7a
    inc c                                         ; $5895: $0c
    ld b, a                                       ; $5896: $47
    ld d, l                                       ; $5897: $55
    ld c, c                                       ; $5898: $49
    rst $10                                       ; $5899: $d7
    rra                                           ; $589a: $1f
    inc bc                                        ; $589b: $03
    rst $00                                       ; $589c: $c7
    ld e, d                                       ; $589d: $5a
    ld e, a                                       ; $589e: $5f

jr_029_589f:
    sbc d                                         ; $589f: $9a
    dec e                                         ; $58a0: $1d
    rla                                           ; $58a1: $17
    push de                                       ; $58a2: $d5
    sbc d                                         ; $58a3: $9a
    ld b, [hl]                                    ; $58a4: $46
    halt                                          ; $58a5: $76
    db $f4                                        ; $58a6: $f4
    dec hl                                        ; $58a7: $2b
    ld bc, $dd06                                  ; $58a8: $01 $06 $dd
    ld c, d                                       ; $58ab: $4a
    ld d, [hl]                                    ; $58ac: $56
    add hl, de                                    ; $58ad: $19
    push de                                       ; $58ae: $d5
    ld a, a                                       ; $58af: $7f
    rst $00                                       ; $58b0: $c7
    ld c, c                                       ; $58b1: $49
    ld b, $80                                     ; $58b2: $06 $80
    ld bc, $3f47                                  ; $58b4: $01 $47 $3f
    ld hl, sp-$72                                 ; $58b7: $f8 $8e
    adc [hl]                                      ; $58b9: $8e
    ret                                           ; $58ba: $c9


    ld e, a                                       ; $58bb: $5f
    ld a, [bc]                                    ; $58bc: $0a
    halt                                          ; $58bd: $76
    cp h                                          ; $58be: $bc
    add hl, bc                                    ; $58bf: $09
    ld sp, $4ddd                                  ; $58c0: $31 $dd $4d
    ret c                                         ; $58c3: $d8

    xor c                                         ; $58c4: $a9
    ld e, a                                       ; $58c5: $5f
    ld e, d                                       ; $58c6: $5a
    ld [hl], a                                    ; $58c7: $77
    dec b                                         ; $58c8: $05
    cp a                                          ; $58c9: $bf
    rrca                                          ; $58ca: $0f
    jr @-$21                                      ; $58cb: $18 $dd

jr_029_58cd:
    call nc, Call_000_2644                        ; $58cd: $d4 $44 $26
    ld c, c                                       ; $58d0: $49
    db $eb                                        ; $58d1: $eb
    and [hl]                                      ; $58d2: $a6
    push af                                       ; $58d3: $f5
    rlca                                          ; $58d4: $07
    inc c                                         ; $58d5: $0c
    daa                                           ; $58d6: $27
    db $dd                                        ; $58d7: $dd
    ld a, [hl+]                                   ; $58d8: $2a
    push hl                                       ; $58d9: $e5
    ld d, [hl]                                    ; $58da: $56
    cp a                                          ; $58db: $bf
    sbc [hl]                                      ; $58dc: $9e
    ld c, d                                       ; $58dd: $4a
    inc c                                         ; $58de: $0c
    jr nc, jr_029_588e                            ; $58df: $30 $ad

    rst $08                                       ; $58e1: $cf
    ld hl, sp+$1b                                 ; $58e2: $f8 $1b
    xor h                                         ; $58e4: $ac
    ld b, a                                       ; $58e5: $47
    ld sp, hl                                     ; $58e6: $f9
    sbc l                                         ; $58e7: $9d
    jp z, $0c47                                   ; $58e8: $ca $47 $0c

    rst $00                                       ; $58eb: $c7
    ld e, h                                       ; $58ec: $5c
    dec c                                         ; $58ed: $0d
    sub d                                         ; $58ee: $92
    halt                                          ; $58ef: $76
    ld d, h                                       ; $58f0: $54
    adc h                                         ; $58f1: $8c
    rst $18                                       ; $58f2: $df
    xor h                                         ; $58f3: $ac

jr_029_58f4:
    cp e                                          ; $58f4: $bb
    ld [bc], a                                    ; $58f5: $02
    ld h, b                                       ; $58f6: $60
    db $dd                                        ; $58f7: $dd
    adc l                                         ; $58f8: $8d
    ld [hl], h                                    ; $58f9: $74
    ld [c], a                                     ; $58fa: $e2
    rst $28                                       ; $58fb: $ef
    ld [hl], h                                    ; $58fc: $74
    ld l, l                                       ; $58fd: $6d
    or a                                          ; $58fe: $b7
    xor a                                         ; $58ff: $af
    ld h, e                                       ; $5900: $63
    rst $00                                       ; $5901: $c7
    jr jr_029_58f4                                ; $5902: $18 $f0

    adc [hl]                                      ; $5904: $8e
    ld [de], a                                    ; $5905: $12
    ld b, $dd                                     ; $5906: $06 $dd
    ld d, d                                       ; $5908: $52
    inc hl                                        ; $5909: $23
    ld b, $ba                                     ; $590a: $06 $ba
    ld l, [hl]                                    ; $590c: $6e
    push hl                                       ; $590d: $e5
    ld d, [hl]                                    ; $590e: $56
    push af                                       ; $590f: $f5
    daa                                           ; $5910: $27
    inc c                                         ; $5911: $0c
    and a                                         ; $5912: $a7
    add d                                         ; $5913: $82
    res 5, l                                      ; $5914: $cb $ad
    jp z, $7b8e                                   ; $5916: $ca $8e $7b

    push af                                       ; $5919: $f5
    ld a, [c]                                     ; $591a: $f2
    add d                                         ; $591b: $82
    ld bc, $19ad                                  ; $591c: $01 $ad $19
    cpl                                           ; $591f: $2f
    db $d3                                        ; $5920: $d3
    ld h, [hl]                                    ; $5921: $66
    db $dd                                        ; $5922: $dd
    or e                                          ; $5923: $b3
    db $d3                                        ; $5924: $d3
    ld a, c                                       ; $5925: $79
    pop bc                                        ; $5926: $c1
    rst $00                                       ; $5927: $c7
    add sp, -$73                                  ; $5928: $e8 $8d
    call $4bba                                    ; $592a: $cd $ba $4b
    halt                                          ; $592d: $76
    jp z, Jump_000_063b                           ; $592e: $ca $3b $06

    and a                                         ; $5931: $a7
    ld b, [hl]                                    ; $5932: $46
    or [hl]                                       ; $5933: $b6
    sub [hl]                                      ; $5934: $96
    xor d                                         ; $5935: $aa
    ld h, h                                       ; $5936: $64
    add $f5                                       ; $5937: $c6 $f5
    cp b                                          ; $5939: $b8
    adc a                                         ; $593a: $8f
    ld bc, $4bc7                                  ; $593b: $01 $c7 $4b
    ld a, [c]                                     ; $593e: $f2
    db $eb                                        ; $593f: $eb
    sub l                                         ; $5940: $95
    ld b, [hl]                                    ; $5941: $46
    halt                                          ; $5942: $76
    ld a, [hl+]                                   ; $5943: $2a
    ld c, a                                       ; $5944: $4f
    db $eb                                        ; $5945: $eb
    xor c                                         ; $5946: $a9
    ld [c], a                                     ; $5947: $e2
    or b                                          ; $5948: $b0
    inc de                                        ; $5949: $13
    xor a                                         ; $594a: $af
    ld h, e                                       ; $594b: $63
    rlca                                          ; $594c: $07
    push af                                       ; $594d: $f5

Call_029_594e:
    db $db                                        ; $594e: $db
    ld [hl], a                                    ; $594f: $77
    rst $30                                       ; $5950: $f7
    and a                                         ; $5951: $a7
    ld [$fdd7], a                                 ; $5952: $ea $d7 $fd
    ld a, [hl]                                    ; $5955: $7e
    push af                                       ; $5956: $f5
    jr jr_029_5980                                ; $5957: $18 $27

    sbc c                                         ; $5959: $99
    ldh a, [rHDMA2]                               ; $595a: $f0 $52
    ld a, [de]                                    ; $595c: $1a
    ret c                                         ; $595d: $d8

    pop de                                        ; $595e: $d1
    ld a, [de]                                    ; $595f: $1a
    ld h, e                                       ; $5960: $63
    ld h, $01                                     ; $5961: $26 $01
    ld b, $dd                                     ; $5963: $06 $dd
    adc d                                         ; $5965: $8a
    ld e, h                                       ; $5966: $5c
    ldh a, [$50]                                  ; $5967: $f0 $50
    ld h, c                                       ; $5969: $61
    db $dd                                        ; $596a: $dd
    or l                                          ; $596b: $b5
    xor d                                         ; $596c: $aa
    ld l, e                                       ; $596d: $6b
    ldh a, [rNR23]                                ; $596e: $f0 $18
    xor l                                         ; $5970: $ad
    ld a, [de]                                    ; $5971: $1a
    ret z                                         ; $5972: $c8

    ld h, l                                       ; $5973: $65
    dec [hl]                                      ; $5974: $35
    ret c                                         ; $5975: $d8

    add hl, de                                    ; $5976: $19
    ld h, c                                       ; $5977: $61
    ld e, e                                       ; $5978: $5b
    ld a, $46                                     ; $5979: $3e $46
    push bc                                       ; $597b: $c5
    db $dd                                        ; $597c: $dd
    res 1, l                                      ; $597d: $cb $8d
    add hl, bc                                    ; $597f: $09

jr_029_5980:
    reti                                          ; $5980: $d9


    add hl, hl                                    ; $5981: $29
    cpl                                           ; $5982: $2f
    dec [hl]                                      ; $5983: $35
    ld e, b                                       ; $5984: $58
    adc e                                         ; $5985: $8b
    daa                                           ; $5986: $27
    dec a                                         ; $5987: $3d
    ld b, $a7                                     ; $5988: $06 $a7
    ld a, a                                       ; $598a: $7f
    ld hl, sp+$61                                 ; $598b: $f8 $61
    ld e, e                                       ; $598d: $5b
    inc [hl]                                      ; $598e: $34
    ld b, [hl]                                    ; $598f: $46
    inc c                                         ; $5990: $0c
    ld d, $0a                                     ; $5991: $16 $0a
    db $e4                                        ; $5993: $e4
    reti                                          ; $5994: $d9


    ld a, l                                       ; $5995: $7d
    ld a, [c]                                     ; $5996: $f2

jr_029_5997:
    dec e                                         ; $5997: $1d
    ld c, e                                       ; $5998: $4b
    ld d, l                                       ; $5999: $55
    ld d, e                                       ; $599a: $53
    push bc                                       ; $599b: $c5
    db $ec                                        ; $599c: $ec
    inc a                                         ; $599d: $3c
    cp e                                          ; $599e: $bb
    adc d                                         ; $599f: $8a
    ld bc, $45c7                                  ; $59a0: $01 $c7 $45
    db $e3                                        ; $59a3: $e3
    adc a                                         ; $59a4: $8f
    ld bc, $c5c7                                  ; $59a5: $01 $c7 $c5
    and $52                                       ; $59a8: $e6 $52
    or b                                          ; $59aa: $b0
    inc de                                        ; $59ab: $13
    cp a                                          ; $59ac: $bf
    pop bc                                        ; $59ad: $c1
    dec l                                         ; $59ae: $2d
    or a                                          ; $59af: $b7
    xor d                                         ; $59b0: $aa

jr_029_59b1:
    rst $00                                       ; $59b1: $c7
    rlca                                          ; $59b2: $07
    inc c                                         ; $59b3: $0c
    xor l                                         ; $59b4: $ad
    xor a                                         ; $59b5: $af
    pop af                                        ; $59b6: $f1
    ld d, d                                       ; $59b7: $52
    or b                                          ; $59b8: $b0
    sub [hl]                                      ; $59b9: $96
    adc [hl]                                      ; $59ba: $8e
    ld c, d                                       ; $59bb: $4a
    dec a                                         ; $59bc: $3d
    ld a, $06                                     ; $59bd: $3e $06
    db $dd                                        ; $59bf: $dd
    ld h, d                                       ; $59c0: $62
    ld l, d                                       ; $59c1: $6a
    ld a, l                                       ; $59c2: $7d
    and a                                         ; $59c3: $a7
    jp c, $90b3                                   ; $59c4: $da $b3 $90

    push af                                       ; $59c7: $f5
    jp nz, $df6d                                  ; $59c8: $c2 $6d $df

    ld a, b                                       ; $59cb: $78
    cp l                                          ; $59cc: $bd
    pop bc                                        ; $59cd: $c1
    db $dd                                        ; $59ce: $dd
    ld d, h                                       ; $59cf: $54
    ret c                                         ; $59d0: $d8

    cp d                                          ; $59d1: $ba
    ld h, l                                       ; $59d2: $65
    ret c                                         ; $59d3: $d8

    cp [hl]                                       ; $59d4: $be
    and h                                         ; $59d5: $a4
    ld a, [hl]                                    ; $59d6: $7e
    sub e                                         ; $59d7: $93
    jr nc, jr_029_5997                            ; $59d8: $30 $bd

    jp nc, $a8ac                                  ; $59da: $d2 $ac $a8

    push af                                       ; $59dd: $f5
    ld b, a                                       ; $59de: $47
    cp c                                          ; $59df: $b9
    db $eb                                        ; $59e0: $eb
    rra                                           ; $59e1: $1f

jr_029_59e2:
    ld b, d                                       ; $59e2: $42
    rla                                           ; $59e3: $17
    inc c                                         ; $59e4: $0c
    rst $00                                       ; $59e5: $c7
    ld l, c                                       ; $59e6: $69
    sbc b                                         ; $59e7: $98
    ld b, $d6                                     ; $59e8: $06 $d6
    di                                            ; $59ea: $f3
    ld a, d                                       ; $59eb: $7a
    ld d, l                                       ; $59ec: $55
    ld e, $a6                                     ; $59ed: $1e $a6
    call nz, $f3d6                                ; $59ef: $c4 $d6 $f3
    ld [hl], d                                    ; $59f2: $72
    ld d, h                                       ; $59f3: $54
    ld h, c                                       ; $59f4: $61
    or b                                          ; $59f5: $b0
    ld l, [hl]                                    ; $59f6: $6e
    ld a, [hl+]                                   ; $59f7: $2a
    inc c                                         ; $59f8: $0c
    inc bc                                        ; $59f9: $03

jr_029_59fa:
    ld h, a                                       ; $59fa: $67
    ret nz                                        ; $59fb: $c0

    rst $08                                       ; $59fc: $cf
    res 0, l                                      ; $59fd: $cb $85
    ld e, c                                       ; $59ff: $59
    db $fc                                        ; $5a00: $fc
    jp Jump_000_18ae                              ; $5a01: $c3 $ae $18


    inc e                                         ; $5a04: $1c
    adc [hl]                                      ; $5a05: $8e
    db $ec                                        ; $5a06: $ec
    ld l, a                                       ; $5a07: $6f
    jr jr_029_59b1                                ; $5a08: $18 $a7

    and h                                         ; $5a0a: $a4

Jump_029_5a0b:
    sub a                                         ; $5a0b: $97
    ld c, e                                       ; $5a0c: $4b
    pop bc                                        ; $5a0d: $c1
    adc d                                         ; $5a0e: $8a
    halt                                          ; $5a0f: $76
    ld a, [hl-]                                   ; $5a10: $3a
    ld c, a                                       ; $5a11: $4f
    ret nc                                        ; $5a12: $d0

    dec b                                         ; $5a13: $05
    inc bc                                        ; $5a14: $03
    cp l                                          ; $5a15: $bd
    jp nc, Jump_029_52ac                          ; $5a16: $d2 $ac $52

    xor d                                         ; $5a19: $aa
    ld sp, hl                                     ; $5a1a: $f9
    inc c                                         ; $5a1b: $0c
    db $fc                                        ; $5a1c: $fc
    xor [hl]                                      ; $5a1d: $ae
    adc a                                         ; $5a1e: $8f
    sub d                                         ; $5a1f: $92
    rst $28                                       ; $5a20: $ef
    add d                                         ; $5a21: $82
    ld bc, $e5dd                                  ; $5a22: $01 $dd $e5
    ld bc, $d4a6                                  ; $5a25: $01 $a6 $d4
    xor h                                         ; $5a28: $ac
    ld l, l                                       ; $5a29: $6d
    call c, $e693                                 ; $5a2a: $dc $93 $e6
    cp c                                          ; $5a2d: $b9
    ld a, [hl+]                                   ; $5a2e: $2a
    ret                                           ; $5a2f: $c9


    cpl                                           ; $5a30: $2f
    sbc c                                         ; $5a31: $99
    ld b, a                                       ; $5a32: $47
    jr jr_029_59e2                                ; $5a33: $18 $ad

    ld a, [hl+]                                   ; $5a35: $2a
    jp nc, $be4c                                  ; $5a36: $d2 $4c $be

    ld c, d                                       ; $5a39: $4a
    db $eb                                        ; $5a3a: $eb
    dec bc                                        ; $5a3b: $0b
    db $ec                                        ; $5a3c: $ec
    ret z                                         ; $5a3d: $c8

    cp $d6                                        ; $5a3e: $fe $d6
    ld [c], a                                     ; $5a40: $e2
    ld a, [de]                                    ; $5a41: $1a
    ld e, [hl]                                    ; $5a42: $5e
    jp nc, $cf75                                  ; $5a43: $d2 $75 $cf

    ld c, e                                       ; $5a46: $4b
    sbc $07                                       ; $5a47: $de $07
    db $f4                                        ; $5a49: $f4
    adc c                                         ; $5a4a: $89
    jr nc, jr_029_59fa                            ; $5a4b: $30 $ad

    ld a, [hl+]                                   ; $5a4d: $2a
    jp nc, $be4c                                  ; $5a4e: $d2 $4c $be

    ld c, d                                       ; $5a51: $4a

jr_029_5a52:
    db $eb                                        ; $5a52: $eb

Jump_029_5a53:
    dec bc                                        ; $5a53: $0b
    db $ec                                        ; $5a54: $ec
    ret z                                         ; $5a55: $c8

    cp $76                                        ; $5a56: $fe $76
    or d                                          ; $5a58: $b2
    ld b, $b7                                     ; $5a59: $06 $b7
    ld e, d                                       ; $5a5b: $5a
    rst $30                                       ; $5a5c: $f7
    cp h                                          ; $5a5d: $bc
    db $e4                                        ; $5a5e: $e4
    add b                                         ; $5a5f: $80
    jr nc, jr_029_5a78                            ; $5a60: $30 $16

    rra                                           ; $5a62: $1f
    db $fc                                        ; $5a63: $fc
    add a                                         ; $5a64: $87
    jr nc, jr_029_5ae1                            ; $5a65: $30 $7a

    db $eb                                        ; $5a67: $eb
    srl h                                         ; $5a68: $cb $3c
    rla                                           ; $5a6a: $17
    inc de                                        ; $5a6b: $13
    ld a, [hl]                                    ; $5a6c: $7e
    rst $10                                       ; $5a6d: $d7
    ld h, c                                       ; $5a6e: $61
    halt                                          ; $5a6f: $76
    ld d, h                                       ; $5a70: $54
    ld l, e                                       ; $5a71: $6b
    ld c, d                                       ; $5a72: $4a
    sub a                                         ; $5a73: $97
    xor l                                         ; $5a74: $ad
    adc a                                         ; $5a75: $8f
    cp [hl]                                       ; $5a76: $be
    adc [hl]                                      ; $5a77: $8e

jr_029_5a78:
    db $ec                                        ; $5a78: $ec
    ld l, a                                       ; $5a79: $6f
    dec l                                         ; $5a7a: $2d
    db $dd                                        ; $5a7b: $dd
    ei                                            ; $5a7c: $fb
    call nz, $bf47                                ; $5a7d: $c4 $47 $bf
    ei                                            ; $5a80: $fb
    res 7, h                                      ; $5a81: $cb $bc
    jr z, jr_029_5a52                             ; $5a83: $28 $cd

    res 5, a                                      ; $5a85: $cb $af
    db $fd                                        ; $5a87: $fd
    ldh [$eb], a                                  ; $5a88: $e0 $eb
    sbc b                                         ; $5a8a: $98
    or b                                          ; $5a8b: $b0
    ld d, e                                       ; $5a8c: $53
    cp a                                          ; $5a8d: $bf
    or h                                          ; $5a8e: $b4
    adc $fd                                       ; $5a8f: $ce $fd
    ld l, $5b                                     ; $5a91: $2e $5b
    rra                                           ; $5a93: $1f
    ld a, l                                       ; $5a94: $7d
    dec e                                         ; $5a95: $1d
    reti                                          ; $5a96: $d9


    rst $18                                       ; $5a97: $df
    ld e, d                                       ; $5a98: $5a
    cp d                                          ; $5a99: $ba
    rst $30                                       ; $5a9a: $f7
    adc c                                         ; $5a9b: $89
    ld bc, $b92d                                  ; $5a9c: $01 $2d $b9
    jr nz, @-$6b                                  ; $5a9f: $20 $93

    ld [hl], c                                    ; $5aa1: $71
    rst $10                                       ; $5aa2: $d7
    and h                                         ; $5aa3: $a4
    add hl, de                                    ; $5aa4: $19
    ld c, e                                       ; $5aa5: $4b
    xor d                                         ; $5aa6: $aa
    ld sp, hl                                     ; $5aa7: $f9
    ld [c], a                                     ; $5aa8: $e2
    xor e                                         ; $5aa9: $ab
    push af                                       ; $5aaa: $f5
    and a                                         ; $5aab: $a7
    add e                                         ; $5aac: $83
    ld c, e                                       ; $5aad: $4b

jr_029_5aae:
    ld b, c                                       ; $5aae: $41
    db $fc                                        ; $5aaf: $fc
    ld d, l                                       ; $5ab0: $55
    ld h, d                                       ; $5ab1: $62
    jp nz, $9776                                  ; $5ab2: $c2 $76 $97

    xor l                                         ; $5ab5: $ad
    adc a                                         ; $5ab6: $8f
    cp [hl]                                       ; $5ab7: $be
    adc [hl]                                      ; $5ab8: $8e
    db $ec                                        ; $5ab9: $ec
    ld l, a                                       ; $5aba: $6f
    dec l                                         ; $5abb: $2d
    db $dd                                        ; $5abc: $dd
    ei                                            ; $5abd: $fb
    call nz, $ca3d                                ; $5abe: $c4 $3d $ca
    rst $08                                       ; $5ac1: $cf
    dec d                                         ; $5ac2: $15
    db $fc                                        ; $5ac3: $fc
    ld [hl], a                                    ; $5ac4: $77
    ld h, c                                       ; $5ac5: $61
    ld c, a                                       ; $5ac6: $4f
    ld d, l                                       ; $5ac7: $55
    ld d, c                                       ; $5ac8: $51
    ld a, [c]                                     ; $5ac9: $f2
    ld c, e                                       ; $5aca: $4b
    ld b, c                                       ; $5acb: $41
    sub a                                         ; $5acc: $97
    xor l                                         ; $5acd: $ad
    adc a                                         ; $5ace: $8f
    cp [hl]                                       ; $5acf: $be
    adc [hl]                                      ; $5ad0: $8e
    db $ec                                        ; $5ad1: $ec
    ld l, a                                       ; $5ad2: $6f
    dec l                                         ; $5ad3: $2d
    db $dd                                        ; $5ad4: $dd
    ei                                            ; $5ad5: $fb
    call nz, $3f47                                ; $5ad6: $c4 $47 $3f
    ld hl, sp+$2c                                 ; $5ad9: $f8 $2c
    ld a, e                                       ; $5adb: $7b
    db $eb                                        ; $5adc: $eb
    bit 3, h                                      ; $5add: $cb $5c
    pop bc                                        ; $5adf: $c1
    sbc a                                         ; $5ae0: $9f

jr_029_5ae1:
    ld [hl], l                                    ; $5ae1: $75
    ld e, c                                       ; $5ae2: $59
    rra                                           ; $5ae3: $1f
    ld a, l                                       ; $5ae4: $7d
    dec e                                         ; $5ae5: $1d
    reti                                          ; $5ae6: $d9


    rst $18                                       ; $5ae7: $df
    ld e, d                                       ; $5ae8: $5a
    cp d                                          ; $5ae9: $ba
    rst $30                                       ; $5aea: $f7
    adc c                                         ; $5aeb: $89
    ld bc, $3f47                                  ; $5aec: $01 $47 $3f
    ld hl, sp+$2c                                 ; $5aef: $f8 $2c
    ld a, e                                       ; $5af1: $7b
    db $eb                                        ; $5af2: $eb
    bit 3, h                                      ; $5af3: $cb $5c
    pop bc                                        ; $5af5: $c1
    sbc a                                         ; $5af6: $9f
    ld [hl], l                                    ; $5af7: $75
    ld e, c                                       ; $5af8: $59
    rra                                           ; $5af9: $1f
    ld a, l                                       ; $5afa: $7d
    dec e                                         ; $5afb: $1d
    reti                                          ; $5afc: $d9


    rst $18                                       ; $5afd: $df
    ld e, d                                       ; $5afe: $5a
    cp d                                          ; $5aff: $ba
    rst $30                                       ; $5b00: $f7
    adc c                                         ; $5b01: $89
    ld bc, $1ebd                                  ; $5b02: $01 $bd $1e
    jr nc, jr_029_5aae                            ; $5b05: $30 $a7

    inc h                                         ; $5b07: $24
    ld b, $db                                     ; $5b08: $06 $db
    halt                                          ; $5b0a: $76
    ld h, h                                       ; $5b0b: $64
    ld a, a                                       ; $5b0c: $7f
    ld l, e                                       ; $5b0d: $6b
    xor c                                         ; $5b0e: $a9
    jr nc, jr_029_5b3e                            ; $5b0f: $30 $2d

    dec d                                         ; $5b11: $15
    ld b, $47                                     ; $5b12: $06 $47
    sbc e                                         ; $5b14: $9b
    ld b, $03                                     ; $5b15: $06 $03
    dec l                                         ; $5b17: $2d
    rra                                           ; $5b18: $1f
    inc hl                                        ; $5b19: $23
    ld b, $c7                                     ; $5b1a: $06 $c7
    ld [hl], d                                    ; $5b1c: $72
    cp b                                          ; $5b1d: $b8
    adc [hl]                                      ; $5b1e: $8e
    ld bc, $d3dd                                  ; $5b1f: $01 $dd $d3
    dec [hl]                                      ; $5b22: $35
    ld hl, sp+$1a                                 ; $5b23: $f8 $1a
    xor h                                         ; $5b25: $ac
    sbc e                                         ; $5b26: $9b
    sbc d                                         ; $5b27: $9a
    ret z                                         ; $5b28: $c8

    inc h                                         ; $5b29: $24
    add hl, bc                                    ; $5b2a: $09

Jump_029_5b2b:
    jr nc, @+$3f                                  ; $5b2b: $30 $3d

    ccf                                           ; $5b2d: $3f
    ld d, [hl]                                    ; $5b2e: $56
    add hl, de                                    ; $5b2f: $19
    cp $3c                                        ; $5b30: $fe $3c
    rst $10                                       ; $5b32: $d7
    dec a                                         ; $5b33: $3d
    ld e, l                                       ; $5b34: $5d
    add e                                         ; $5b35: $83
    xor a                                         ; $5b36: $af
    pop bc                                        ; $5b37: $c1
    cp d                                          ; $5b38: $ba
    xor c                                         ; $5b39: $a9
    adc c                                         ; $5b3a: $89
    ld c, h                                       ; $5b3b: $4c
    sub d                                         ; $5b3c: $92
    nop                                           ; $5b3d: $00

jr_029_5b3e:
    ld h, c                                       ; $5b3e: $61
    dec a                                         ; $5b3f: $3d
    cp a                                          ; $5b40: $bf
    ld h, $3f                                     ; $5b41: $26 $3f
    adc l                                         ; $5b43: $8d
    cp h                                          ; $5b44: $bc
    ld [hl], $b0                                  ; $5b45: $36 $b0
    sbc b                                         ; $5b47: $98
    ld e, c                                       ; $5b48: $59
    cp a                                          ; $5b49: $bf
    inc d                                         ; $5b4a: $14
    call z, Call_029_594e                         ; $5b4b: $cc $4e $59
    sub b                                         ; $5b4e: $90
    ret                                           ; $5b4f: $c9


    ld h, [hl]                                    ; $5b50: $66
    ldh [$d9], a                                  ; $5b51: $e0 $d9
    jp nz, $aa97                                  ; $5b53: $c2 $97 $aa

    jr z, @-$4d                                   ; $5b56: $28 $b1

    dec bc                                        ; $5b58: $0b
    adc a                                         ; $5b59: $8f
    ld bc, $8b3d                                  ; $5b5a: $01 $3d $8b
    ld a, [$34f8]                                 ; $5b5d: $fa $f8 $34
    sub c                                         ; $5b60: $91
    xor l                                         ; $5b61: $ad
    ld c, c                                       ; $5b62: $49
    or e                                          ; $5b63: $b3
    ld a, b                                       ; $5b64: $78
    db $eb                                        ; $5b65: $eb
    rst $18                                       ; $5b66: $df
    ld [hl], l                                    ; $5b67: $75
    jp $0d47                                      ; $5b68: $c3 $47 $0d


    db $fc                                        ; $5b6b: $fc
    adc d                                         ; $5b6c: $8a
    ld e, h                                       ; $5b6d: $5c
    ld a, [bc]                                    ; $5b6e: $0a
    ld d, [hl]                                    ; $5b6f: $56
    sub l                                         ; $5b70: $95
    cp h                                          ; $5b71: $bc
    push de                                       ; $5b72: $d5
    and e                                         ; $5b73: $a3
    db $ed                                        ; $5b74: $ed
    jr z, jr_029_5be1                             ; $5b75: $28 $6a

    cp h                                          ; $5b77: $bc
    ld e, h                                       ; $5b78: $5c
    ld a, [bc]                                    ; $5b79: $0a
    or $11                                        ; $5b7a: $f6 $11
    cp [hl]                                       ; $5b7c: $be
    dec hl                                        ; $5b7d: $2b
    ld b, $47                                     ; $5b7e: $06 $47
    xor l                                         ; $5b80: $ad
    ld [hl], e                                    ; $5b81: $73
    cp l                                          ; $5b82: $bd
    ld b, c                                       ; $5b83: $41

jr_029_5b84:
    db $db                                        ; $5b84: $db
    ld d, c                                       ; $5b85: $51
    call nc, $b978                                ; $5b86: $d4 $78 $b9
    inc d                                         ; $5b89: $14
    db $ec                                        ; $5b8a: $ec
    inc hl                                        ; $5b8b: $23
    ld a, h                                       ; $5b8c: $7c
    ld d, a                                       ; $5b8d: $57
    inc c                                         ; $5b8e: $0c
    dec a                                         ; $5b8f: $3d
    adc d                                         ; $5b90: $8a
    ld a, [$352a]                                 ; $5b91: $fa $2a $35
    sub c                                         ; $5b94: $91
    ld c, c                                       ; $5b95: $49

Jump_029_5b96:
    jp nc, $63e0                                  ; $5b96: $d2 $e0 $63

jr_029_5b99:
    add h                                         ; $5b99: $84
    reti                                          ; $5b9a: $d9


    add hl, hl                                    ; $5b9b: $29
    dec sp                                        ; $5b9c: $3b
    or d                                          ; $5b9d: $b2
    cp a                                          ; $5b9e: $bf
    or l                                          ; $5b9f: $b5
    ld d, h                                       ; $5ba0: $54
    ld [$2d03], sp                                ; $5ba1: $08 $03 $2d
    sub a                                         ; $5ba4: $97
    xor d                                         ; $5ba5: $aa
    rst $18                                       ; $5ba6: $df
    push af                                       ; $5ba7: $f5
    ld a, [de]                                    ; $5ba8: $1a
    call z, $33c0                                 ; $5ba9: $cc $c0 $33
    xor $2c                                       ; $5bac: $ee $2c
    or l                                          ; $5bae: $b5
    jr jr_029_5bc8                                ; $5baf: $18 $17

    ld e, h                                       ; $5bb1: $5c
    db $eb                                        ; $5bb2: $eb
    xor a                                         ; $5bb3: $af
    ld c, c                                       ; $5bb4: $49
    or e                                          ; $5bb5: $b3
    inc hl                                        ; $5bb6: $23
    ei                                            ; $5bb7: $fb
    ld e, e                                       ; $5bb8: $5b
    ld c, e                                       ; $5bb9: $4b
    add l                                         ; $5bba: $85
    jr nc, jr_029_5b84                            ; $5bbb: $30 $c7

    db $e4                                        ; $5bbd: $e4
    ld hl, sp+$5f                                 ; $5bbe: $f8 $5f
    ld d, c                                       ; $5bc0: $51
    db $eb                                        ; $5bc1: $eb
    ld c, a                                       ; $5bc2: $4f
    rst $00                                       ; $5bc3: $c7
    ld e, [hl]                                    ; $5bc4: $5e
    ld h, e                                       ; $5bc5: $63
    ld d, a                                       ; $5bc6: $57
    inc c                                         ; $5bc7: $0c

jr_029_5bc8:
    cp l                                          ; $5bc8: $bd
    jp nc, Jump_000_258c                          ; $5bc9: $d2 $8c $25

    push de                                       ; $5bcc: $d5
    ld a, h                                       ; $5bcd: $7c
    ld b, l                                       ; $5bce: $45
    xor l                                         ; $5bcf: $ad
    ccf                                           ; $5bd0: $3f
    cpl                                           ; $5bd1: $2f
    cp a                                          ; $5bd2: $bf
    ld a, b                                       ; $5bd3: $78
    rst $08                                       ; $5bd4: $cf
    scf                                           ; $5bd5: $37
    sub a                                         ; $5bd6: $97
    ld c, l                                       ; $5bd7: $4d
    ld bc, $61de                                  ; $5bd8: $01 $de $61
    halt                                          ; $5bdb: $76
    jp z, $a8bc                                   ; $5bdc: $ca $bc $a8

    inc hl                                        ; $5bdf: $23
    inc c                                         ; $5be0: $0c

jr_029_5be1:
    daa                                           ; $5be1: $27
    sbc e                                         ; $5be2: $9b
    ret c                                         ; $5be3: $d8

    ld sp, hl                                     ; $5be4: $f9
    ld c, [hl]                                    ; $5be5: $4e
    rst $20                                       ; $5be6: $e7
    and l                                         ; $5be7: $a5
    ld b, $3b                                     ; $5be8: $06 $3b
    xor d                                         ; $5bea: $aa
    sub e                                         ; $5beb: $93
    ld e, [hl]                                    ; $5bec: $5e
    cp [hl]                                       ; $5bed: $be
    ld d, d                                       ; $5bee: $52
    ld l, c                                       ; $5bef: $69
    jr nc, jr_029_5b99                            ; $5bf0: $30 $a7

    ld a, [de]                                    ; $5bf2: $1a
    add hl, de                                    ; $5bf3: $19
    ld a, b                                       ; $5bf4: $78
    ld d, [hl]                                    ; $5bf5: $56
    push af                                       ; $5bf6: $f5
    ld e, l                                       ; $5bf7: $5d
    sbc b                                         ; $5bf8: $98
    xor [hl]                                      ; $5bf9: $ae
    ld a, l                                       ; $5bfa: $7d

jr_029_5bfb:
    ld a, l                                       ; $5bfb: $7d
    ld d, b                                       ; $5bfc: $50
    ld d, d                                       ; $5bfd: $52
    ld a, h                                       ; $5bfe: $7c
    ld [hl], d                                    ; $5bff: $72
    add e                                         ; $5c00: $83
    ld [c], a                                     ; $5c01: $e2
    and e                                         ; $5c02: $a3
    db $e4                                        ; $5c03: $e4
    ld de, $1842                                  ; $5c04: $11 $42 $18
    dec a                                         ; $5c07: $3d
    adc e                                         ; $5c08: $8b
    ld a, [$ae58]                                 ; $5c09: $fa $58 $ae

Jump_029_5c0c:
    ld c, c                                       ; $5c0c: $49
    or e                                          ; $5c0d: $b3
    and d                                         ; $5c0e: $a2

Jump_029_5c0f:
    sub $9f                                       ; $5c0f: $d6 $9f
    rst $20                                       ; $5c11: $e7
    ldh [$63], a                                  ; $5c12: $e0 $63
    db $ec                                        ; $5c14: $ec
    adc d                                         ; $5c15: $8a
    ld bc, $1aa7                                  ; $5c16: $01 $a7 $1a
    add hl, de                                    ; $5c19: $19
    ld a, b                                       ; $5c1a: $78
    ld d, [hl]                                    ; $5c1b: $56
    push af                                       ; $5c1c: $f5
    ld e, l                                       ; $5c1d: $5d
    sbc b                                         ; $5c1e: $98

Jump_029_5c1f:
    xor [hl]                                      ; $5c1f: $ae
    ld a, l                                       ; $5c20: $7d
    ld a, l                                       ; $5c21: $7d
    ld d, b                                       ; $5c22: $50
    ld d, d                                       ; $5c23: $52
    ld a, h                                       ; $5c24: $7c
    ld [hl], d                                    ; $5c25: $72
    add e                                         ; $5c26: $83
    ld [c], a                                     ; $5c27: $e2
    and e                                         ; $5c28: $a3
    db $e4                                        ; $5c29: $e4
    ld de, $1842                                  ; $5c2a: $11 $42 $18
    sub [hl]                                      ; $5c2d: $96
    ld e, d                                       ; $5c2e: $5a
    cp b                                          ; $5c2f: $b8
    jr nz, jr_029_5c5c                            ; $5c30: $20 $2a

    sbc e                                         ; $5c32: $9b
    ld h, l                                       ; $5c33: $65
    ld b, l                                       ; $5c34: $45
    reti                                          ; $5c35: $d9


    jr nz, jr_029_5bfb                            ; $5c36: $20 $c3

    rst $30                                       ; $5c38: $f7
    ld [hl], d                                    ; $5c39: $72
    add hl, hl                                    ; $5c3a: $29
    ld e, b                                       ; $5c3b: $58
    sub e                                         ; $5c3c: $93
    ld h, [hl]                                    ; $5c3d: $66
    ld d, l                                       ; $5c3e: $55
    sbc d                                         ; $5c3f: $9a
    ret z                                         ; $5c40: $c8

    sub $36                                       ; $5c41: $d6 $36
    dec c                                         ; $5c43: $0d
    jp nz, $8a3d                                  ; $5c44: $c2 $3d $8a

    ld a, d                                       ; $5c47: $7a
    dec c                                         ; $5c48: $0d
    and [hl]                                      ; $5c49: $a6

jr_029_5c4a:
    add e                                         ; $5c4a: $83
    and d                                         ; $5c4b: $a2
    pop hl                                        ; $5c4c: $e1
    and e                                         ; $5c4d: $a3
    or l                                          ; $5c4e: $b5
    jr jr_029_5c4a                                ; $5c4f: $18 $f9

    dec [hl]                                      ; $5c51: $35
    ld l, c                                       ; $5c52: $69
    add $27                                       ; $5c53: $c6 $27
    push de                                       ; $5c55: $d5
    ld a, h                                       ; $5c56: $7c
    ld d, l                                       ; $5c57: $55
    ld d, c                                       ; $5c58: $51
    ld a, [bc]                                    ; $5c59: $0a
    ld a, [hl]                                    ; $5c5a: $7e
    ld c, l                                       ; $5c5b: $4d

jr_029_5c5c:
    ld a, [de]                                    ; $5c5c: $1a
    ld e, c                                       ; $5c5d: $59
    ld a, b                                       ; $5c5e: $78
    adc c                                         ; $5c5f: $89
    ld [hl], l                                    ; $5c60: $75
    push bc                                       ; $5c61: $c5
    dec a                                         ; $5c62: $3d
    jp z, Jump_029_5c0f                           ; $5c63: $ca $0f $5c

    adc c                                         ; $5c66: $89
    xor c                                         ; $5c67: $a9
    or b                                          ; $5c68: $b0
    ld [hl], l                                    ; $5c69: $75
    db $e4                                        ; $5c6a: $e4
    ld d, [hl]                                    ; $5c6b: $56
    cp a                                          ; $5c6c: $bf
    dec bc                                        ; $5c6d: $0b
    db $db                                        ; $5c6e: $db
    sub c                                         ; $5c6f: $91
    db $fd                                        ; $5c70: $fd
    xor l                                         ; $5c71: $ad
    and l                                         ; $5c72: $a5
    ld b, d                                       ; $5c73: $42
    jr jr_029_5c8c                                ; $5c74: $18 $16

    rst $18                                       ; $5c76: $df
    dec b                                         ; $5c77: $05
    xor d                                         ; $5c78: $aa
    ld sp, hl                                     ; $5c79: $f9
    add sp, $79                                   ; $5c7a: $e8 $79
    add h                                         ; $5c7c: $84
    ret nc                                        ; $5c7d: $d0

    inc l                                         ; $5c7e: $2c
    or l                                          ; $5c7f: $b5
    jr @+$19                                      ; $5c80: $18 $17

    ld e, h                                       ; $5c82: $5c
    db $eb                                        ; $5c83: $eb
    xor a                                         ; $5c84: $af
    ld c, c                                       ; $5c85: $49
    or e                                          ; $5c86: $b3
    inc hl                                        ; $5c87: $23
    ei                                            ; $5c88: $fb
    ld e, e                                       ; $5c89: $5b
    ld c, e                                       ; $5c8a: $4b
    add l                                         ; $5c8b: $85

jr_029_5c8c:
    jr nc, @+$49                                  ; $5c8c: $30 $47

Jump_029_5c8e:
    ret                                           ; $5c8e: $c9


    adc a                                         ; $5c8f: $8f
    rst $38                                       ; $5c90: $ff
    ld l, c                                       ; $5c91: $69
    jr nz, @+$01                                  ; $5c92: $20 $ff

    xor h                                         ; $5c94: $ac
    dec hl                                        ; $5c95: $2b
    ld b, $bd                                     ; $5c96: $06 $bd
    jp nc, Jump_000_258c                          ; $5c98: $d2 $8c $25

    push de                                       ; $5c9b: $d5
    ld a, h                                       ; $5c9c: $7c
    ld b, l                                       ; $5c9d: $45
    xor l                                         ; $5c9e: $ad
    ccf                                           ; $5c9f: $3f
    cpl                                           ; $5ca0: $2f
    ld [$950b], a                                 ; $5ca1: $ea $0b $95
    sbc d                                         ; $5ca4: $9a
    or l                                          ; $5ca5: $b5
    call c, $1eaa                                 ; $5ca6: $dc $aa $1e
    rra                                           ; $5ca9: $1f
    db $10                                        ; $5caa: $10
    ld b, $2d                                     ; $5cab: $06 $2d
    ld h, $50                                     ; $5cad: $26 $50
    jp hl                                         ; $5caf: $e9


    ld b, h                                       ; $5cb0: $44
    inc de                                        ; $5cb1: $13
    sub $60                                       ; $5cb2: $d6 $60
    dec l                                         ; $5cb4: $2d
    db $fc                                        ; $5cb5: $fc
    cp a                                          ; $5cb6: $bf
    inc bc                                        ; $5cb7: $03
    ld b, $3d                                     ; $5cb8: $06 $3d
    ccf                                           ; $5cba: $3f
    ld d, [hl]                                    ; $5cbb: $56

Jump_029_5cbc:
    add hl, de                                    ; $5cbc: $19
    cp $3c                                        ; $5cbd: $fe $3c
    rst $10                                       ; $5cbf: $d7
    ld h, d                                       ; $5cc0: $62
    ld [bc], a                                    ; $5cc1: $02
    sub l                                         ; $5cc2: $95
    ld c, [hl]                                    ; $5cc3: $4e
    inc [hl]                                      ; $5cc4: $34
    ld h, c                                       ; $5cc5: $61
    dec c                                         ; $5cc6: $0d
    halt                                          ; $5cc7: $76
    or d                                          ; $5cc8: $b2
    ld b, $b7                                     ; $5cc9: $06 $b7
    jp nc, $16b8                                  ; $5ccb: $d2 $b8 $16

    cp $df                                        ; $5cce: $fe $df
    ld bc, $9603                                  ; $5cd0: $01 $03 $96
    add hl, de                                    ; $5cd3: $19
    jr nc, jr_029_5cf0                            ; $5cd4: $30 $1a

    ld h, e                                       ; $5cd6: $63
    inc sp                                        ; $5cd7: $33
    sub [hl]                                      ; $5cd8: $96
    ld d, h                                       ; $5cd9: $54
    di                                            ; $5cda: $f3
    or l                                          ; $5cdb: $b5
    ld c, l                                       ; $5cdc: $4d
    or e                                          ; $5cdd: $b3
    or [hl]                                       ; $5cde: $b6
    ld d, [hl]                                    ; $5cdf: $56
    push af                                       ; $5ce0: $f5
    ld bc, $efff                                  ; $5ce1: $01 $ff $ef
    add b                                         ; $5ce4: $80
    db $10                                        ; $5ce5: $10
    ld [c], a                                     ; $5ce6: $e2
    adc e                                         ; $5ce7: $8b
    ld a, [$ae58]                                 ; $5ce8: $fa $58 $ae
    ld c, c                                       ; $5ceb: $49
    or e                                          ; $5cec: $b3
    and d                                         ; $5ced: $a2
    sub $ef                                       ; $5cee: $d6 $ef

jr_029_5cf0:
    adc d                                         ; $5cf0: $8a
    ld bc, $8b3d                                  ; $5cf1: $01 $3d $8b
    ld a, [$a52a]                                 ; $5cf4: $fa $2a $a5
    ld e, c                                       ; $5cf7: $59
    ld d, $bc                                     ; $5cf8: $16 $bc
    rst $08                                       ; $5cfa: $cf
    ld c, [hl]                                    ; $5cfb: $4e
    ld e, c                                       ; $5cfc: $59
    sub e                                         ; $5cfd: $93
    and [hl]                                      ; $5cfe: $a6
    db $eb                                        ; $5cff: $eb
    add [hl]                                      ; $5d00: $86
    ld bc, $d2a7                                  ; $5d01: $01 $a7 $d2
    cpl                                           ; $5d04: $2f
    db $ed                                        ; $5d05: $ed
    add l                                         ; $5d06: $85
    call $b56c                                    ; $5d07: $cd $6c $b5
    and [hl]                                      ; $5d0a: $a6
    sub c                                         ; $5d0b: $91
    db $eb                                        ; $5d0c: $eb
    rrca                                          ; $5d0d: $0f
    ld e, l                                       ; $5d0e: $5d
    or [hl]                                       ; $5d0f: $b6
    and e                                         ; $5d10: $a3
    xor b                                         ; $5d11: $a8
    pop af                                        ; $5d12: $f1
    ld [hl], d                                    ; $5d13: $72
    add hl, hl                                    ; $5d14: $29
    ret c                                         ; $5d15: $d8

    ld b, a                                       ; $5d16: $47
    ld hl, sp-$52                                 ; $5d17: $f8 $ae
    jr @+$3f                                      ; $5d19: $18 $3d

    ccf                                           ; $5d1b: $3f

jr_029_5d1c:
    ld b, [hl]                                    ; $5d1c: $46
    xor $bc                                       ; $5d1d: $ee $bc
    xor b                                         ; $5d1f: $a8
    rst $10                                       ; $5d20: $d7
    ld h, b                                       ; $5d21: $60
    ld a, [hl-]                                   ; $5d22: $3a
    ld c, b                                       ; $5d23: $48
    inc hl                                        ; $5d24: $23
    and e                                         ; $5d25: $a3
    db $f4                                        ; $5d26: $f4
    ld b, a                                       ; $5d27: $47
    db $db                                        ; $5d28: $db
    ld d, c                                       ; $5d29: $51
    call nc, $b978                                ; $5d2a: $d4 $78 $b9
    inc d                                         ; $5d2d: $14
    db $ec                                        ; $5d2e: $ec
    inc hl                                        ; $5d2f: $23
    ld a, h                                       ; $5d30: $7c
    ld d, a                                       ; $5d31: $57
    inc c                                         ; $5d32: $0c
    ld b, a                                       ; $5d33: $47
    dec l                                         ; $5d34: $2d
    ld a, h                                       ; $5d35: $7c
    ld sp, hl                                     ; $5d36: $f9
    dec e                                         ; $5d37: $1d
    reti                                          ; $5d38: $d9


    rst $18                                       ; $5d39: $df
    ld e, d                                       ; $5d3a: $5a
    ld a, [hl+]                                   ; $5d3b: $2a
    add h                                         ; $5d3c: $84
    ld bc, $5596                                  ; $5d3d: $01 $96 $55
    ld c, d                                       ; $5d40: $4a
    dec bc                                        ; $5d41: $0b
    xor [hl]                                      ; $5d42: $ae
    push af                                       ; $5d43: $f5
    rst $10                                       ; $5d44: $d7
    and h                                         ; $5d45: $a4
    sbc c                                         ; $5d46: $99
    adc [hl]                                      ; $5d47: $8e
    ld a, l                                       ; $5d48: $7d
    cp h                                          ; $5d49: $bc
    push de                                       ; $5d4a: $d5
    ld c, l                                       ; $5d4b: $4d
    inc bc                                        ; $5d4c: $03
    db $db                                        ; $5d4d: $db
    sub c                                         ; $5d4e: $91
    db $fd                                        ; $5d4f: $fd
    xor l                                         ; $5d50: $ad
    and l                                         ; $5d51: $a5
    ld b, d                                       ; $5d52: $42
    jr jr_029_5d1c                                ; $5d53: $18 $c7

    db $e4                                        ; $5d55: $e4
    jp $a8bc                                      ; $5d56: $c3 $bc $a8


    rrca                                          ; $5d59: $0f
    jp nc, $9b10                                  ; $5d5a: $d2 $10 $9b

    ld b, $f2                                     ; $5d5d: $06 $f2
    xor a                                         ; $5d5f: $af
    db $ed                                        ; $5d60: $ed
    ld hl, sp+$5d                                 ; $5d61: $f8 $5d
    ld sp, $b596                                  ; $5d63: $31 $96 $b5
    ccf                                           ; $5d66: $3f
    sbc $b7                                       ; $5d67: $de $b7
    cp $bc                                        ; $5d69: $fe $bc
    xor b                                         ; $5d6b: $a8
    rst $10                                       ; $5d6c: $d7
    ld h, b                                       ; $5d6d: $60
    sbc [hl]                                      ; $5d6e: $9e
    add hl, sp                                    ; $5d6f: $39
    cp c                                          ; $5d70: $b9
    ld d, l                                       ; $5d71: $55
    sbc c                                         ; $5d72: $99
    sbc l                                         ; $5d73: $9d
    or d                                          ; $5d74: $b2
    ld h, $8d                                     ; $5d75: $26 $8d

Jump_029_5d77:
    call z, $fc15                                 ; $5d77: $cc $15 $fc
    ld bc, $476d                                  ; $5d7a: $01 $6d $47
    ld d, c                                       ; $5d7d: $51
    db $e3                                        ; $5d7e: $e3
    push hl                                       ; $5d7f: $e5
    ld d, d                                       ; $5d80: $52
    or b                                          ; $5d81: $b0
    adc a                                         ; $5d82: $8f
    ldh a, [$5d]                                  ; $5d83: $f0 $5d
    ld sp, $2b27                                  ; $5d85: $31 $27 $2b
    db $d3                                        ; $5d88: $d3
    ld [hl], b                                    ; $5d89: $70
    daa                                           ; $5d8a: $27
    ld l, e                                       ; $5d8b: $6b

Jump_029_5d8c:
    xor h                                         ; $5d8c: $ac
    ld e, a                                       ; $5d8d: $5f
    xor d                                         ; $5d8e: $aa
    ld bc, $3d06                                  ; $5d8f: $01 $06 $3d
    ccf                                           ; $5d92: $3f
    ld d, [hl]                                    ; $5d93: $56
    add hl, de                                    ; $5d94: $19
    cp $3c                                        ; $5d95: $fe $3c
    ld [hl], a                                    ; $5d97: $77
    or d                                          ; $5d98: $b2
    ld [hl-], a                                   ; $5d99: $32
    dec c                                         ; $5d9a: $0d
    ld [hl], a                                    ; $5d9b: $77
    or d                                          ; $5d9c: $b2
    add $fa                                       ; $5d9d: $c6 $fa
    and l                                         ; $5d9f: $a5
    ld a, [de]                                    ; $5da0: $1a
    db $ec                                        ; $5da1: $ec
    db $f4                                        ; $5da2: $f4
    ld l, h                                       ; $5da3: $6c
    ccf                                           ; $5da4: $3f
    call z, $d94e                                 ; $5da5: $cc $4e $d9
    ld d, c                                       ; $5da8: $51
    ld sp, $d4ee                                  ; $5da9: $31 $ee $d4
    xor d                                         ; $5dac: $aa
    ld d, d                                       ; $5dad: $52
    cp b                                          ; $5dae: $b8
    ld c, c                                       ; $5daf: $49
    add b                                         ; $5db0: $80
    jr nc, jr_029_5de0                            ; $5db1: $30 $2d

    add hl, de                                    ; $5db3: $19
    cp [hl]                                       ; $5db4: $be
    sub a                                         ; $5db5: $97
    ld c, e                                       ; $5db6: $4b
    pop bc                                        ; $5db7: $c1
    inc a                                         ; $5db8: $3c
    rlca                                          ; $5db9: $07
    rra                                           ; $5dba: $1f
    inc hl                                        ; $5dbb: $23
    ld [hl], a                                    ; $5dbc: $77
    db $ec                                        ; $5dbd: $ec
    ld d, l                                       ; $5dbe: $55
    cp d                                          ; $5dbf: $ba
    ld l, [hl]                                    ; $5dc0: $6e
    daa                                           ; $5dc1: $27
    cp l                                          ; $5dc2: $bd
    rst $10                                       ; $5dc3: $d7
    ld h, b                                       ; $5dc4: $60
    ld b, l                                       ; $5dc5: $45
    xor l                                         ; $5dc6: $ad
    ccf                                           ; $5dc7: $3f
    ld e, l                                       ; $5dc8: $5d
    call z, Call_000_23ac                         ; $5dc9: $cc $ac $23
    inc c                                         ; $5dcc: $0c
    dec a                                         ; $5dcd: $3d
    adc e                                         ; $5dce: $8b
    ld a, [$ae58]                                 ; $5dcf: $fa $58 $ae
    ld c, c                                       ; $5dd2: $49
    inc sp                                        ; $5dd3: $33
    ld a, [$5d67]                                 ; $5dd4: $fa $67 $5d
    scf                                           ; $5dd7: $37
    ld c, e                                       ; $5dd8: $4b
    dec l                                         ; $5dd9: $2d
    inc e                                         ; $5dda: $1c
    jr @-$05                                      ; $5ddb: $18 $f9

    pop af                                        ; $5ddd: $f1
    cp a                                          ; $5dde: $bf
    and d                                         ; $5ddf: $a2

jr_029_5de0:
    sub $5f                                       ; $5de0: $d6 $5f
    sub e                                         ; $5de2: $93
    ld b, [hl]                                    ; $5de3: $46
    ld b, $97                                     ; $5de4: $06 $97
    db $e3                                        ; $5de6: $e3
    inc hl                                        ; $5de7: $23
    inc c                                         ; $5de8: $0c
    dec a                                         ; $5de9: $3d
    adc d                                         ; $5dea: $8a
    ld a, [$1bf8]                                 ; $5deb: $fa $f8 $1b
    db $e3                                        ; $5dee: $e3
    ld h, d                                       ; $5def: $62
    ld h, [hl]                                    ; $5df0: $66
    ld a, l                                       ; $5df1: $7d
    sub $97                                       ; $5df2: $d6 $97
    ld h, [hl]                                    ; $5df4: $66
    ld [hl], h                                    ; $5df5: $74
    xor e                                         ; $5df6: $ab
    ld e, a                                       ; $5df7: $5f
    jp nc, $349a                                  ; $5df8: $d2 $9a $34

    ld l, b                                       ; $5dfb: $68
    dec sp                                        ; $5dfc: $3b
    adc d                                         ; $5dfd: $8a
    ld a, [de]                                    ; $5dfe: $1a
    cpl                                           ; $5dff: $2f
    sub a                                         ; $5e00: $97
    add d                                         ; $5e01: $82
    ld a, l                                       ; $5e02: $7d
    add h                                         ; $5e03: $84
    rst $28                                       ; $5e04: $ef
    adc d                                         ; $5e05: $8a
    ld bc, $8a3d                                  ; $5e06: $01 $3d $8a
    ld a, d                                       ; $5e09: $7a
    dec c                                         ; $5e0a: $0d
    and [hl]                                      ; $5e0b: $a6
    add e                                         ; $5e0c: $83
    and d                                         ; $5e0d: $a2
    pop hl                                        ; $5e0e: $e1
    ld [hl], e                                    ; $5e0f: $73
    rst $00                                       ; $5e10: $c7
    ld e, [hl]                                    ; $5e11: $5e
    dec b                                         ; $5e12: $05
    ld l, l                                       ; $5e13: $6d
    ld b, a                                       ; $5e14: $47
    ld d, c                                       ; $5e15: $51
    db $e3                                        ; $5e16: $e3
    push hl                                       ; $5e17: $e5
    ld d, d                                       ; $5e18: $52
    or b                                          ; $5e19: $b0
    adc a                                         ; $5e1a: $8f
    ldh a, [$5d]                                  ; $5e1b: $f0 $5d
    ld sp, $8a3d                                  ; $5e1d: $31 $3d $8a
    ld a, d                                       ; $5e20: $7a
    dec l                                         ; $5e21: $2d
    add $55                                       ; $5e22: $c6 $55
    add hl, bc                                    ; $5e24: $09
    cp [hl]                                       ; $5e25: $be
    ld h, $cd                                     ; $5e26: $26 $cd
    adc [hl]                                      ; $5e28: $8e
    db $ec                                        ; $5e29: $ec
    ld l, a                                       ; $5e2a: $6f
    dec l                                         ; $5e2b: $2d
    dec d                                         ; $5e2c: $15
    jp nz, $8196                                  ; $5e2d: $c2 $96 $81

    jp hl                                         ; $5e30: $e9


    ld [hl], h                                    ; $5e31: $74
    ld [de], a                                    ; $5e32: $12
    ld a, [hl]                                    ; $5e33: $7e
    sub [hl]                                      ; $5e34: $96
    ld d, l                                       ; $5e35: $55
    ld l, c                                       ; $5e36: $69
    ld [hl+], a                                   ; $5e37: $22
    ld e, e                                       ; $5e38: $5b
    ld [hl], b                                    ; $5e39: $70
    xor l                                         ; $5e3a: $ad
    cp a                                          ; $5e3b: $bf
    ld h, $cd                                     ; $5e3c: $26 $cd
    adc [hl]                                      ; $5e3e: $8e
    db $ec                                        ; $5e3f: $ec
    ld l, a                                       ; $5e40: $6f
    dec l                                         ; $5e41: $2d
    dec d                                         ; $5e42: $15
    jp nz, $e4c7                                  ; $5e43: $c2 $c7 $e4

    jp $a8bc                                      ; $5e46: $c3 $bc $a8


    rrca                                          ; $5e49: $0f
    call z, $35f5                                 ; $5e4a: $cc $f5 $35
    ld l, c                                       ; $5e4d: $69
    cp d                                          ; $5e4e: $ba
    ld h, d                                       ; $5e4f: $62
    sub [hl]                                      ; $5e50: $96
    ld a, c                                       ; $5e51: $79
    cp c                                          ; $5e52: $b9
    ld d, h                                       ; $5e53: $54
    sbc a                                         ; $5e54: $9f
    rla                                           ; $5e55: $17
    push af                                       ; $5e56: $f5
    ld a, [de]                                    ; $5e57: $1a
    inc l                                         ; $5e58: $2c
    ld c, h                                       ; $5e59: $4c
    ld sp, hl                                     ; $5e5a: $f9
    ld a, c                                       ; $5e5b: $79
    ld d, c                                       ; $5e5c: $51
    ld e, d                                       ; $5e5d: $5a
    sub e                                         ; $5e5e: $93
    ld h, [hl]                                    ; $5e5f: $66
    ld b, l                                       ; $5e60: $45
    xor l                                         ; $5e61: $ad
    rst $08                                       ; $5e62: $cf
    db $dd                                        ; $5e63: $dd
    dec b                                         ; $5e64: $05
    xor d                                         ; $5e65: $aa
    ld sp, hl                                     ; $5e66: $f9
    xor [hl]                                      ; $5e67: $ae
    ld [hl], a                                    ; $5e68: $77
    db $dd                                        ; $5e69: $dd
    adc [hl]                                      ; $5e6a: $8e
    and d                                         ; $5e6b: $a2
    add $cb                                       ; $5e6c: $c6 $cb
    and l                                         ; $5e6e: $a5
    ld h, b                                       ; $5e6f: $60
    rra                                           ; $5e70: $1f
    pop hl                                        ; $5e71: $e1
    cp e                                          ; $5e72: $bb
    ld h, d                                       ; $5e73: $62
    dec l                                         ; $5e74: $2d
    db $fc                                        ; $5e75: $fc
    cp a                                          ; $5e76: $bf
    xor a                                         ; $5e77: $af
    add a                                         ; $5e78: $87
    ld h, h                                       ; $5e79: $64

Jump_029_5e7a:
    adc h                                         ; $5e7a: $8c
    rst $18                                       ; $5e7b: $df
    ld h, b                                       ; $5e7c: $60
    dec l                                         ; $5e7d: $2d
    db $fc                                        ; $5e7e: $fc
    cp a                                          ; $5e7f: $bf
    jp $94ec                                      ; $5e80: $c3 $ec $94


    dec [hl]                                      ; $5e83: $35
    ld l, c                                       ; $5e84: $69
    cp b                                          ; $5e85: $b8
    di                                            ; $5e86: $f3
    ld a, [c]                                     ; $5e87: $f2
    call nc, Call_000_3b75                        ; $5e88: $d4 $75 $3b
    ld a, [hl+]                                   ; $5e8b: $2a
    add $59                                       ; $5e8c: $c6 $59
    ld e, a                                       ; $5e8e: $5f
    sbc d                                         ; $5e8f: $9a
    pop de                                        ; $5e90: $d1
    xor l                                         ; $5e91: $ad
    ld e, $61                                     ; $5e92: $1e $61
    daa                                           ; $5e94: $27
    cp l                                          ; $5e95: $bd
    rst $10                                       ; $5e96: $d7
    ld h, b                                       ; $5e97: $60
    ld b, l                                       ; $5e98: $45
    xor l                                         ; $5e99: $ad
    ccf                                           ; $5e9a: $3f
    ld e, l                                       ; $5e9b: $5d
    call z, Call_029_4fac                         ; $5e9c: $cc $ac $4f
    ld a, l                                       ; $5e9f: $7d
    ld a, h                                       ; $5ea0: $7c
    ld d, c                                       ; $5ea1: $51
    ld e, a                                       ; $5ea2: $5f
    sub e                                         ; $5ea3: $93
    and [hl]                                      ; $5ea4: $a6
    ld h, $bf                                     ; $5ea5: $26 $bf
    or h                                          ; $5ea7: $b4
    db $ed                                        ; $5ea8: $ed
    sub a                                         ; $5ea9: $97

Call_029_5eaa:
    ld c, e                                       ; $5eaa: $4b
    ld bc, $3dc2                                  ; $5eab: $01 $c2 $3d
    adc e                                         ; $5eae: $8b
    ld a, d                                       ; $5eaf: $7a
    dec l                                         ; $5eb0: $2d
    add $35                                       ; $5eb1: $c6 $35
    ld l, c                                       ; $5eb3: $69
    ld d, [hl]                                    ; $5eb4: $56
    call nc, $f3fa                                ; $5eb5: $d4 $fa $f3
    ld a, [c]                                     ; $5eb8: $f2
    call nz, Call_029_7b1d                        ; $5eb9: $c4 $1d $7b
    sub l                                         ; $5ebc: $95
    ei                                            ; $5ebd: $fb
    ld e, l                                       ; $5ebe: $5d
    ld sp, $8a3d                                  ; $5ebf: $31 $3d $8a
    ld a, d                                       ; $5ec2: $7a
    dec l                                         ; $5ec3: $2d
    add $81                                       ; $5ec4: $c6 $81
    ld a, [$bb05]                                 ; $5ec6: $fa $05 $bb
    ld e, c                                       ; $5ec9: $59
    sub e                                         ; $5eca: $93
    ld b, [hl]                                    ; $5ecb: $46
    ld b, $fc                                     ; $5ecc: $06 $fc
    cp a                                          ; $5ece: $bf
    rst $08                                       ; $5ecf: $cf
    inc sp                                        ; $5ed0: $33
    cp l                                          ; $5ed1: $bd

Jump_029_5ed2:
    and b                                         ; $5ed2: $a0
    db $ed                                        ; $5ed3: $ed
    jr z, jr_029_5f40                             ; $5ed4: $28 $6a

    cp h                                          ; $5ed6: $bc
    ld e, h                                       ; $5ed7: $5c
    ld a, [bc]                                    ; $5ed8: $0a
    or $11                                        ; $5ed9: $f6 $11
    cp [hl]                                       ; $5edb: $be
    dec hl                                        ; $5edc: $2b
    ld b, $3d                                     ; $5edd: $06 $3d
    ccf                                           ; $5edf: $3f
    ld b, [hl]                                    ; $5ee0: $46
    xor $bc                                       ; $5ee1: $ee $bc
    xor b                                         ; $5ee3: $a8
    rst $10                                       ; $5ee4: $d7
    ld h, b                                       ; $5ee5: $60
    ld a, [hl-]                                   ; $5ee6: $3a
    jr z, jr_029_5f03                             ; $5ee7: $28 $1a

    ld a, $da                                     ; $5ee9: $3e $da
    adc [hl]                                      ; $5eeb: $8e
    and d                                         ; $5eec: $a2
    add $cb                                       ; $5eed: $c6 $cb
    and l                                         ; $5eef: $a5
    ld h, b                                       ; $5ef0: $60
    rra                                           ; $5ef1: $1f
    pop hl                                        ; $5ef2: $e1
    cp e                                          ; $5ef3: $bb
    ld h, d                                       ; $5ef4: $62
    ld h, a                                       ; $5ef5: $67
    cp [hl]                                       ; $5ef6: $be
    inc [hl]                                      ; $5ef7: $34
    ld [hl], e                                    ; $5ef8: $73
    dec b                                         ; $5ef9: $05
    ld l, a                                       ; $5efa: $6f
    and [hl]                                      ; $5efb: $a6
    call nz, $1496                                ; $5efc: $c4 $96 $14
    sbc e                                         ; $5eff: $9b
    dec e                                         ; $5f00: $1d
    reti                                          ; $5f01: $d9


    rst $18                                       ; $5f02: $df

jr_029_5f03:
    ld e, d                                       ; $5f03: $5a
    ld a, [hl+]                                   ; $5f04: $2a
    add h                                         ; $5f05: $84
    ld bc, $5a96                                  ; $5f06: $01 $96 $5a
    adc h                                         ; $5f09: $8c
    ld l, e                                       ; $5f0a: $6b
    sbc e                                         ; $5f0b: $9b
    ld h, [hl]                                    ; $5f0c: $66
    ld e, [hl]                                    ; $5f0d: $5e
    call nc, $a767                                ; $5f0e: $d4 $67 $a7
    db $ec                                        ; $5f11: $ec
    ret z                                         ; $5f12: $c8

    cp $d6                                        ; $5f13: $fe $d6
    ld d, d                                       ; $5f15: $52
    ld hl, $2d0c                                  ; $5f16: $21 $0c $2d
    cp c                                          ; $5f19: $b9
    dec bc                                        ; $5f1a: $0b
    di                                            ; $5f1b: $f3
    and d                                         ; $5f1c: $a2

Jump_029_5f1d:
    ld a, $1d                                     ; $5f1d: $3e $1d
    ld a, e                                       ; $5f1f: $7b
    adc l                                         ; $5f20: $8d
    ld l, e                                       ; $5f21: $6b
    cp a                                          ; $5f22: $bf
    di                                            ; $5f23: $f3
    rst $38                                       ; $5f24: $ff
    inc [hl]                                      ; $5f25: $34
    inc bc                                        ; $5f26: $03
    ld e, l                                       ; $5f27: $5d
    ld sp, $16a7                                  ; $5f28: $31 $a7 $16
    xor $2c                                       ; $5f2b: $ee $2c
    ld h, e                                       ; $5f2d: $63
    ld c, c                                       ; $5f2e: $49
    dec [hl]                                      ; $5f2f: $35
    sbc a                                         ; $5f30: $9f
    sub a                                         ; $5f31: $97
    ld c, e                                       ; $5f32: $4b
    push af                                       ; $5f33: $f5
    dec [hl]                                      ; $5f34: $35
    ld l, c                                       ; $5f35: $69
    ld d, [hl]                                    ; $5f36: $56
    call nc, Call_029_7bfa                        ; $5f37: $d4 $fa $7b
    ld c, d                                       ; $5f3a: $4a
    inc de                                        ; $5f3b: $13
    sub h                                         ; $5f3c: $94

Jump_029_5f3d:
    reti                                          ; $5f3d: $d9


    add hl, hl                                    ; $5f3e: $29
    di                                            ; $5f3f: $f3

jr_029_5f40:
    and d                                         ; $5f40: $a2
    adc [hl]                                      ; $5f41: $8e
    jr nc, jr_029_5f81                            ; $5f42: $30 $3d

    ld e, a                                       ; $5f44: $5f
    ld hl, $b37e                                  ; $5f45: $21 $7e $b3
    ld h, e                                       ; $5f48: $63
    jp $ca4e                                      ; $5f49: $c3 $4e $ca


    dec [hl]                                      ; $5f4c: $35
    ld hl, $3d06                                  ; $5f4d: $21 $06 $3d
    ccf                                           ; $5f50: $3f
    ld d, [hl]                                    ; $5f51: $56
    add hl, de                                    ; $5f52: $19
    cp $3c                                        ; $5f53: $fe $3c
    rst $20                                       ; $5f55: $e7
    push hl                                       ; $5f56: $e5
    rst $10                                       ; $5f57: $d7
    di                                            ; $5f58: $f3
    dec d                                         ; $5f59: $15
    ld [c], a                                     ; $5f5a: $e2
    scf                                           ; $5f5b: $37
    db $eb                                        ; $5f5c: $eb
    and [hl]                                      ; $5f5d: $a6
    call nz, Call_000_1d9a                        ; $5f5e: $c4 $9a $1d
    dec de                                        ; $5f61: $1b
    halt                                          ; $5f62: $76
    ld d, d                                       ; $5f63: $52
    xor [hl]                                      ; $5f64: $ae
    add hl, bc                                    ; $5f65: $09
    ld de, $3d06                                  ; $5f66: $11 $06 $3d
    adc e                                         ; $5f69: $8b
    ld a, [$ae58]                                 ; $5f6a: $fa $58 $ae
    ld c, c                                       ; $5f6d: $49
    or e                                          ; $5f6e: $b3
    and d                                         ; $5f6f: $a2
    sub $ef                                       ; $5f70: $d6 $ef
    adc d                                         ; $5f72: $8a
    ld bc, $8b3d                                  ; $5f73: $01 $3d $8b
    ld a, [$34f8]                                 ; $5f76: $fa $f8 $34
    sub c                                         ; $5f79: $91
    xor l                                         ; $5f7a: $ad
    ld c, c                                       ; $5f7b: $49
    or e                                          ; $5f7c: $b3
    ld a, b                                       ; $5f7d: $78
    db $eb                                        ; $5f7e: $eb
    rst $18                                       ; $5f7f: $df
    dec d                                         ; $5f80: $15

jr_029_5f81:
    inc bc                                        ; $5f81: $03
    ld b, a                                       ; $5f82: $47
    ld b, l                                       ; $5f83: $45
    ld e, [hl]                                    ; $5f84: $5e
    dec de                                        ; $5f85: $1b
    sbc b                                         ; $5f86: $98
    xor [hl]                                      ; $5f87: $ae
    sub e                                         ; $5f88: $93
    dec e                                         ; $5f89: $1d
    inc de                                        ; $5f8a: $13
    ld d, l                                       ; $5f8b: $55
    halt                                          ; $5f8c: $76
    db $fd                                        ; $5f8d: $fd
    ld b, e                                       ; $5f8e: $43
    or h                                          ; $5f8f: $b4
    dec e                                         ; $5f90: $1d
    ld b, l                                       ; $5f91: $45
    adc l                                         ; $5f92: $8d
    sub a                                         ; $5f93: $97

Jump_029_5f94:
    ld c, e                                       ; $5f94: $4b
    pop bc                                        ; $5f95: $c1
    ld a, $c2                                     ; $5f96: $3e $c2
    ld [hl], a                                    ; $5f98: $77
    push bc                                       ; $5f99: $c5
    db $dd                                        ; $5f9a: $dd
    ld e, a                                       ; $5f9b: $5f
    adc d                                         ; $5f9c: $8a
    halt                                          ; $5f9d: $76
    ld h, b                                       ; $5f9e: $60
    ld c, l                                       ; $5f9f: $4d
    sbc d                                         ; $5fa0: $9a
    ld e, d                                       ; $5fa1: $5a
    adc h                                         ; $5fa2: $8c
    xor e                                         ; $5fa3: $ab
    adc d                                         ; $5fa4: $8a
    ld d, d                                       ; $5fa5: $52
    ldh a, [rOCPD]                                ; $5fa6: $f0 $6b
    jp nc, $c2c8                                  ; $5fa8: $d2 $c8 $c2

    ld c, e                                       ; $5fab: $4b

Call_029_5fac:
    ld l, h                                       ; $5fac: $6c

jr_029_5fad:
    ld d, c                                       ; $5fad: $51
    db $fd                                        ; $5fae: $fd
    dec b                                         ; $5faf: $05
    ld l, l                                       ; $5fb0: $6d
    ld b, a                                       ; $5fb1: $47
    ld d, c                                       ; $5fb2: $51
    db $e3                                        ; $5fb3: $e3
    push hl                                       ; $5fb4: $e5
    ld d, d                                       ; $5fb5: $52
    or b                                          ; $5fb6: $b0
    adc a                                         ; $5fb7: $8f
    ldh a, [$5d]                                  ; $5fb8: $f0 $5d

jr_029_5fba:
    ld sp, $8a3d                                  ; $5fba: $31 $3d $8a
    ld a, [$7fae]                                 ; $5fbd: $fa $ae $7f
    jr c, jr_029_5fba                             ; $5fc0: $38 $f8

    jr jr_029_6025                                ; $5fc2: $18 $61

    halt                                          ; $5fc4: $76
    jp z, $ec8e                                   ; $5fc5: $ca $8e $ec

    ld l, a                                       ; $5fc8: $6f
    dec l                                         ; $5fc9: $2d
    dec d                                         ; $5fca: $15
    jp nz, $972d                                  ; $5fcb: $c2 $2d $97

    xor d                                         ; $5fce: $aa
    rst $18                                       ; $5fcf: $df
    push af                                       ; $5fd0: $f5
    ld a, [de]                                    ; $5fd1: $1a
    call z, $33c0                                 ; $5fd2: $cc $c0 $33
    xor $2c                                       ; $5fd5: $ee $2c
    or l                                          ; $5fd7: $b5
    jr jr_029_5ff1                                ; $5fd8: $18 $17

    ld e, h                                       ; $5fda: $5c
    db $eb                                        ; $5fdb: $eb
    xor a                                         ; $5fdc: $af
    ld c, c                                       ; $5fdd: $49
    or e                                          ; $5fde: $b3
    inc hl                                        ; $5fdf: $23
    ei                                            ; $5fe0: $fb
    ld e, e                                       ; $5fe1: $5b
    ld c, e                                       ; $5fe2: $4b
    add l                                         ; $5fe3: $85
    jr nc, jr_029_5fad                            ; $5fe4: $30 $c7

    db $e4                                        ; $5fe6: $e4
    ld hl, sp+$5f                                 ; $5fe7: $f8 $5f
    ld d, c                                       ; $5fe9: $51
    db $eb                                        ; $5fea: $eb
    ld c, a                                       ; $5feb: $4f
    rst $00                                       ; $5fec: $c7
    ld e, [hl]                                    ; $5fed: $5e
    ld h, e                                       ; $5fee: $63
    ld d, a                                       ; $5fef: $57
    inc c                                         ; $5ff0: $0c

jr_029_5ff1:
    cp l                                          ; $5ff1: $bd
    jp nc, Jump_029_52ac                          ; $5ff2: $d2 $ac $52

    xor d                                         ; $5ff5: $aa
    ld sp, hl                                     ; $5ff6: $f9
    call nc, Call_029_53b6                        ; $5ff7: $d4 $b6 $53
    ret c                                         ; $5ffa: $d8

    cp h                                          ; $5ffb: $bc
    xor b                                         ; $5ffc: $a8
    ld [hl], e                                    ; $5ffd: $73
    rst $10                                       ; $5ffe: $d7
    xor d                                         ; $5fff: $aa
    ld [hl+], a                                   ; $6000: $22
    dec c                                         ; $6001: $0d
    jp nz, Jump_029_5f3d                          ; $6002: $c2 $3d $5f

    ld hl, $b37e                                  ; $6005: $21 $7e $b3
    ld e, $fc                                     ; $6008: $1e $fc
    dec h                                         ; $600a: $25
    ret c                                         ; $600b: $d8

    pop de                                        ; $600c: $d1
    ld a, [hl+]                                   ; $600d: $2a
    add c                                         ; $600e: $81
    ld e, [hl]                                    ; $600f: $5e
    jp nz, $3f3d                                  ; $6010: $c2 $3d $3f

    ld d, [hl]                                    ; $6013: $56
    add hl, de                                    ; $6014: $19
    cp $3c                                        ; $6015: $fe $3c
    rst $20                                       ; $6017: $e7
    push hl                                       ; $6018: $e5
    rst $10                                       ; $6019: $d7
    di                                            ; $601a: $f3
    dec d                                         ; $601b: $15
    ld [c], a                                     ; $601c: $e2
    scf                                           ; $601d: $37
    ld l, e                                       ; $601e: $6b
    ld sp, $4e9d                                  ; $601f: $31 $9d $4e
    cp h                                          ; $6022: $bc
    rrca                                          ; $6023: $0f
    dec sp                                        ; $6024: $3b

jr_029_6025:
    ld e, d                                       ; $6025: $5a
    dec h                                         ; $6026: $25
    ret nc                                        ; $6027: $d0

    ld c, e                                       ; $6028: $4b
    dec sp                                        ; $6029: $3b
    ld e, d                                       ; $602a: $5a
    pop hl                                        ; $602b: $e1
    jp Jump_029_4727                              ; $602c: $c3 $27 $47


    jr jr_029_606e                                ; $602f: $18 $3d

    adc e                                         ; $6031: $8b
    ld a, [$ae58]                                 ; $6032: $fa $58 $ae
    ld c, c                                       ; $6035: $49
    or e                                          ; $6036: $b3
    and d                                         ; $6037: $a2
    sub $ef                                       ; $6038: $d6 $ef
    adc d                                         ; $603a: $8a
    ld bc, $8b3d                                  ; $603b: $01 $3d $8b
    ld a, [$34f8]                                 ; $603e: $fa $f8 $34
    sub c                                         ; $6041: $91
    xor l                                         ; $6042: $ad
    ld c, c                                       ; $6043: $49
    or e                                          ; $6044: $b3
    ld a, b                                       ; $6045: $78
    db $eb                                        ; $6046: $eb
    rst $18                                       ; $6047: $df
    dec d                                         ; $6048: $15
    inc bc                                        ; $6049: $03
    dec a                                         ; $604a: $3d
    adc d                                         ; $604b: $8a
    ld a, [$7fae]                                 ; $604c: $fa $ae $7f
    cp b                                          ; $604f: $b8
    dec bc                                        ; $6050: $0b
    db $d3                                        ; $6051: $d3
    ret z                                         ; $6052: $c8

    ld l, e                                       ; $6053: $6b
    inc bc                                        ; $6054: $03
    db $d3                                        ; $6055: $d3
    reti                                          ; $6056: $d9


    ld l, d                                       ; $6057: $6a
    ld c, l                                       ; $6058: $4d
    cp c                                          ; $6059: $b9
    cp $68                                        ; $605a: $fe $68
    dec sp                                        ; $605c: $3b
    adc d                                         ; $605d: $8a
    ld a, [de]                                    ; $605e: $1a
    cpl                                           ; $605f: $2f
    sub a                                         ; $6060: $97
    add d                                         ; $6061: $82
    ld a, l                                       ; $6062: $7d
    add h                                         ; $6063: $84
    rst $28                                       ; $6064: $ef
    adc d                                         ; $6065: $8a
    ld bc, $d2bd                                  ; $6066: $01 $bd $d2
    xor h                                         ; $6069: $ac
    ld c, [hl]                                    ; $606a: $4e
    ret                                           ; $606b: $c9


    xor a                                         ; $606c: $af

jr_029_606d:
    db $fd                                        ; $606d: $fd

jr_029_606e:
    ldh [rBCPS], a                                ; $606e: $e0 $68
    dec sp                                        ; $6070: $3b
    adc d                                         ; $6071: $8a
    ld a, [de]                                    ; $6072: $1a

Call_029_6073:
    cpl                                           ; $6073: $2f
    sub a                                         ; $6074: $97
    add d                                         ; $6075: $82
    ld a, l                                       ; $6076: $7d
    add h                                         ; $6077: $84
    rst $28                                       ; $6078: $ef
    adc d                                         ; $6079: $8a

jr_029_607a:
    ld bc, $8a3d                                  ; $607a: $01 $3d $8a
    ld a, [$7fae]                                 ; $607d: $fa $ae $7f
    jr c, jr_029_607a                             ; $6080: $38 $f8

    jr jr_029_60e5                                ; $6082: $18 $61

    halt                                          ; $6084: $76
    jp z, $ec8e                                   ; $6085: $ca $8e $ec

    ld l, a                                       ; $6088: $6f
    dec l                                         ; $6089: $2d
    dec d                                         ; $608a: $15
    jp nz, $972d                                  ; $608b: $c2 $2d $97

    xor d                                         ; $608e: $aa
    rst $18                                       ; $608f: $df
    push af                                       ; $6090: $f5
    ld a, [de]                                    ; $6091: $1a
    call z, $33c0                                 ; $6092: $cc $c0 $33
    xor $2c                                       ; $6095: $ee $2c
    or l                                          ; $6097: $b5
    jr jr_029_60b1                                ; $6098: $18 $17

    ld e, h                                       ; $609a: $5c
    db $eb                                        ; $609b: $eb
    xor a                                         ; $609c: $af
    ld c, c                                       ; $609d: $49
    or e                                          ; $609e: $b3
    inc hl                                        ; $609f: $23
    ei                                            ; $60a0: $fb
    ld e, e                                       ; $60a1: $5b
    ld c, e                                       ; $60a2: $4b
    add l                                         ; $60a3: $85
    jr nc, jr_029_606d                            ; $60a4: $30 $c7

    db $e4                                        ; $60a6: $e4
    ld hl, sp+$5f                                 ; $60a7: $f8 $5f
    ld d, c                                       ; $60a9: $51
    db $eb                                        ; $60aa: $eb
    ld c, a                                       ; $60ab: $4f
    rst $00                                       ; $60ac: $c7
    ld e, [hl]                                    ; $60ad: $5e
    ld h, e                                       ; $60ae: $63
    ld d, a                                       ; $60af: $57
    inc c                                         ; $60b0: $0c

jr_029_60b1:
    dec a                                         ; $60b1: $3d
    ld a, a                                       ; $60b2: $7f
    inc l                                         ; $60b3: $2c
    xor c                                         ; $60b4: $a9
    and $0b                                       ; $60b5: $e6 $0b
    xor [hl]                                      ; $60b7: $ae
    push af                                       ; $60b8: $f5
    ld d, a                                       ; $60b9: $57
    ret                                           ; $60ba: $c9


    or e                                          ; $60bb: $b3
    db $eb                                        ; $60bc: $eb
    ld [$4a21], sp                                ; $60bd: $08 $21 $4a
    rst $18                                       ; $60c0: $df
    ld e, e                                       ; $60c1: $5b
    sbc a                                         ; $60c2: $9f
    and $39                                       ; $60c3: $e6 $39
    db $dd                                        ; $60c5: $dd
    pop af                                        ; $60c6: $f1
    jp nc, $f6d8                                  ; $60c7: $d2 $d8 $f6

    dec h                                         ; $60ca: $25
    sub [hl]                                      ; $60cb: $96
    jp nc, $0305                                  ; $60cc: $d2 $05 $03

    ld b, a                                       ; $60cf: $47
    ld b, l                                       ; $60d0: $45
    ret z                                         ; $60d1: $c8

    ld d, l                                       ; $60d2: $55
    ld a, [de]                                    ; $60d3: $1a

Jump_029_60d4:
    db $e3                                        ; $60d4: $e3
    or e                                          ; $60d5: $b3
    sbc l                                         ; $60d6: $9d

Jump_029_60d7:
    sbc [hl]                                      ; $60d7: $9e
    adc l                                         ; $60d8: $8d
    add $b5                                       ; $60d9: $c6 $b5
    cp b                                          ; $60db: $b8
    jp c, $9a36                                   ; $60dc: $da $36 $9a

    push bc                                       ; $60df: $c5
    ld [hl], a                                    ; $60e0: $77
    ld h, c                                       ; $60e1: $61
    halt                                          ; $60e2: $76
    ld a, [de]                                    ; $60e3: $1a
    ld h, d                                       ; $60e4: $62

jr_029_60e5:
    db $e3                                        ; $60e5: $e3
    ld d, e                                       ; $60e6: $53
    ld [hl+], a                                   ; $60e7: $22
    db $e3                                        ; $60e8: $e3
    cpl                                           ; $60e9: $2f
    ei                                            ; $60ea: $fb
    add hl, hl                                    ; $60eb: $29
    or c                                          ; $60ec: $b1

Call_029_60ed:
    dec d                                         ; $60ed: $15
    add l                                         ; $60ee: $85
    add l                                         ; $60ef: $85
    ld c, d                                       ; $60f0: $4a
    call $a928                                    ; $60f1: $cd $28 $a9
    rst $28                                       ; $60f4: $ef
    ld d, b                                       ; $60f5: $50
    add e                                         ; $60f6: $83
    ld e, e                                       ; $60f7: $5b
    ld l, c                                       ; $60f8: $69
    sbc h                                         ; $60f9: $9c
    add c                                         ; $60fa: $81
    rlca                                          ; $60fb: $07
    add h                                         ; $60fc: $84
    ld bc, $ca3d                                  ; $60fd: $01 $3d $ca
    add l                                         ; $6100: $85
    ld e, l                                       ; $6101: $5d
    ld a, [bc]                                    ; $6102: $0a
    db $e4                                        ; $6103: $e4
    reti                                          ; $6104: $d9


    ld a, l                                       ; $6105: $7d
    ld a, [c]                                     ; $6106: $f2
    add l                                         ; $6107: $85
    ld b, $7c                                     ; $6108: $06 $7c
    db $ed                                        ; $610a: $ed
    ld e, a                                       ; $610b: $5f
    and l                                         ; $610c: $a5
    ld a, [c]                                     ; $610d: $f2
    or [hl]                                       ; $610e: $b6
    adc c                                         ; $610f: $89
    or c                                          ; $6110: $b1
    ld e, c                                       ; $6111: $59
    ld d, c                                       ; $6112: $51
    ld h, d                                       ; $6113: $62
    pop af                                        ; $6114: $f1
    reti                                          ; $6115: $d9


    sub h                                         ; $6116: $94
    ret c                                         ; $6117: $d8

Call_029_6118:
    ld a, [hl-]                                   ; $6118: $3a
    ld a, [c]                                     ; $6119: $f2
    dec e                                         ; $611a: $1d
    sub l                                         ; $611b: $95
    ld h, a                                       ; $611c: $67
    add e                                         ; $611d: $83
    ld c, e                                       ; $611e: $4b
    push de                                       ; $611f: $d5
    rst $28                                       ; $6120: $ef
    ld a, [$a52a]                                 ; $6121: $fa $2a $a5
    or l                                          ; $6124: $b5
    ld a, a                                       ; $6125: $7f
    sbc l                                         ; $6126: $9d
    cp h                                          ; $6127: $bc
    sub b                                         ; $6128: $90
    sub h                                         ; $6129: $94
    ld b, $10                                     ; $612a: $06 $10
    ld b, $47                                     ; $612c: $06 $47
    adc l                                         ; $612e: $8d

Call_029_612f:
    cp a                                          ; $612f: $bf
    db $ec                                        ; $6130: $ec
    and c                                         ; $6131: $a1
    inc hl                                        ; $6132: $23
    xor a                                         ; $6133: $af
    ld l, h                                       ; $6134: $6c
    sbc l                                         ; $6135: $9d
    xor b                                         ; $6136: $a8
    db $e4                                        ; $6137: $e4
    or e                                          ; $6138: $b3
    dec [hl]                                      ; $6139: $35
    ld c, h                                       ; $613a: $4c
    inc bc                                        ; $613b: $03
    or e                                          ; $613c: $b3
    ld d, e                                       ; $613d: $53
    and $e5                                       ; $613e: $e6 $e5
    rlca                                          ; $6140: $07
    ld a, [hl]                                    ; $6141: $7e
    add hl, hl                                    ; $6142: $29
    cp b                                          ; $6143: $b8
    inc d                                         ; $6144: $14
    xor h                                         ; $6145: $ac
    add sp, $15                                   ; $6146: $e8 $15
    sbc b                                         ; $6148: $98
    rla                                           ; $6149: $17
    push af                                       ; $614a: $f5
    dec b                                         ; $614b: $05
    sub d                                         ; $614c: $92
    db $fc                                        ; $614d: $fc
    sub d                                         ; $614e: $92
    halt                                          ; $614f: $76
    dec e                                         ; $6150: $1d
    ld d, $5f                                     ; $6151: $16 $5f
    xor l                                         ; $6153: $ad
    rrca                                          ; $6154: $0f
    ld [$4703], sp                                ; $6155: $08 $03 $47
    ld b, l                                       ; $6158: $45
    ret z                                         ; $6159: $c8

    push de                                       ; $615a: $d5
    add hl, hl                                    ; $615b: $29
    ld a, c                                       ; $615c: $79
    sbc d                                         ; $615d: $9a
    jp nz, Jump_000_368e                          ; $615e: $c2 $8e $36

    ld b, d                                       ; $6161: $42
    sub a                                         ; $6162: $97
    add d                                         ; $6163: $82
    dec e                                         ; $6164: $1d
    ld l, l                                       ; $6165: $6d
    and b                                         ; $6166: $a0

jr_029_6167:
    ld [hl], b                                    ; $6167: $70
    ld [hl], a                                    ; $6168: $77
    ld a, l                                       ; $6169: $7d
    sub b                                         ; $616a: $90
    pop hl                                        ; $616b: $e1
    ei                                            ; $616c: $fb
    dec c                                         ; $616d: $0d
    rra                                           ; $616e: $1f
    ld h, $1f                                     ; $616f: $26 $1f
    ld e, a                                       ; $6171: $5f
    pop hl                                        ; $6172: $e1
    ld h, c                                       ; $6173: $61
    halt                                          ; $6174: $76
    call nc, $d430                                ; $6175: $d4 $30 $d4
    halt                                          ; $6178: $76
    db $fc                                        ; $6179: $fc
    ld e, c                                       ; $617a: $59
    or l                                          ; $617b: $b5
    sub e                                         ; $617c: $93
    ld b, [hl]                                    ; $617d: $46
    nop                                           ; $617e: $00

jr_029_617f:
    db $ed                                        ; $617f: $ed
    add sp, -$51                                  ; $6180: $e8 $af
    call nc, $2fc0                                ; $6182: $d4 $c0 $2f
    db $ed                                        ; $6185: $ed
    ld a, c                                       ; $6186: $79
    cp c                                          ; $6187: $b9
    ret nz                                        ; $6188: $c0

    db $dd                                        ; $6189: $dd
    push af                                       ; $618a: $f5
    ld b, c                                       ; $618b: $41
    ld c, c                                       ; $618c: $49
    inc de                                        ; $618d: $13
    reti                                          ; $618e: $d9


    jp c, Jump_029_4abf                           ; $618f: $da $bf $4a

    push hl                                       ; $6192: $e5
    ld l, l                                       ; $6193: $6d
    inc de                                        ; $6194: $13
    ld h, e                                       ; $6195: $63
    or e                                          ; $6196: $b3
    and d                                         ; $6197: $a2
    call nz, Call_000_33e2                        ; $6198: $c4 $e2 $33
    add h                                         ; $619b: $84
    ld bc, $cd47                                  ; $619c: $01 $47 $cd
    ld a, [$acd2]                                 ; $619f: $fa $d2 $ac
    ld a, l                                       ; $61a2: $7d
    db $dd                                        ; $61a3: $dd
    ld e, a                                       ; $61a4: $5f
    ld d, [hl]                                    ; $61a5: $56
    ld e, [hl]                                    ; $61a6: $5e
    jp c, $a2f3                                   ; $61a7: $da $f3 $a2

    cp [hl]                                       ; $61aa: $be
    and d                                         ; $61ab: $a2
    or b                                          ; $61ac: $b0
    or $3f                                        ; $61ad: $f6 $3f
    call $b3c0                                    ; $61af: $cd $c0 $b3
    pop bc                                        ; $61b2: $c1
    and l                                         ; $61b3: $a5
    ld [$54a7], a                                 ; $61b4: $ea $a7 $54
    db $dd                                        ; $61b7: $dd
    daa                                           ; $61b8: $27
    sbc a                                         ; $61b9: $9f
    rst $18                                       ; $61ba: $df
    ldh a, [rSB]                                  ; $61bb: $f0 $01
    ld h, c                                       ; $61bd: $61
    ld b, a                                       ; $61be: $47
    xor l                                         ; $61bf: $ad
    sub e                                         ; $61c0: $93
    db $fc                                        ; $61c1: $fc
    adc e                                         ; $61c2: $8b
    ld l, l                                       ; $61c3: $6d
    ld [c], a                                     ; $61c4: $e2
    ld l, $05                                     ; $61c5: $2e $05
    ld a, [c]                                     ; $61c7: $f2
    db $ec                                        ; $61c8: $ec
    ld a, $f9                                     ; $61c9: $3e $f9
    cp h                                          ; $61cb: $bc
    xor b                                         ; $61cc: $a8
    rst $28                                       ; $61cd: $ef
    jp nz, $fcbc                                  ; $61ce: $c2 $bc $fc

    ret nz                                        ; $61d1: $c0

    or h                                          ; $61d2: $b4
    rst $08                                       ; $61d3: $cf
    ei                                            ; $61d4: $fb
    jp z, $f697                                   ; $61d5: $ca $97 $f6

    ld b, d                                       ; $61d8: $42
    and l                                         ; $61d9: $a5
    ld h, [hl]                                    ; $61da: $66
    daa                                           ; $61db: $27
    sbc e                                         ; $61dc: $9b
    jr nz, jr_029_6167                            ; $61dd: $20 $88

    ccf                                           ; $61df: $3f
    jr nc, jr_029_617f                            ; $61e0: $30 $9d

    rla                                           ; $61e2: $17
    ldh a, [$eb]                                  ; $61e3: $f0 $eb
    scf                                           ; $61e5: $37
    add hl, bc                                    ; $61e6: $09
    db $10                                        ; $61e7: $10
    ld b, $3d                                     ; $61e8: $06 $3d
    jp z, $e8ef                                   ; $61ea: $ca $ef $e8

    call z, $a210                                 ; $61ed: $cc $10 $a2
    ld d, d                                       ; $61f0: $52

jr_029_61f1:
    or b                                          ; $61f1: $b0
    dec bc                                        ; $61f2: $0b
    db $d3                                        ; $61f3: $d3
    ld e, c                                       ; $61f4: $59
    sbc a                                         ; $61f5: $9f
    ld [hl-], a                                   ; $61f6: $32
    ld c, h                                       ; $61f7: $4c
    inc bc                                        ; $61f8: $03
    dec sp                                        ; $61f9: $3b
    jp z, Jump_029_5b96                           ; $61fa: $ca $96 $5b

    add hl, hl                                    ; $61fd: $29
    call Call_029_7fe5                            ; $61fe: $cd $e5 $7f
    ld b, b                                       ; $6201: $40
    ld e, d                                       ; $6202: $5a
    ld a, a                                       ; $6203: $7f
    inc [hl]                                      ; $6204: $34
    adc e                                         ; $6205: $8b
    jp Jump_029_7ea0                              ; $6206: $c3 $a0 $7e


    ld l, c                                       ; $6209: $69
    and c                                         ; $620a: $a1
    ld bc, $fb5f                                  ; $620b: $01 $5f $fb
    rla                                           ; $620e: $17
    xor b                                         ; $620f: $a8
    sub a                                         ; $6210: $97
    sub a                                         ; $6211: $97
    ld h, a                                       ; $6212: $67
    cp e                                          ; $6213: $bb
    ld h, c                                       ; $6214: $61
    ld hl, sp-$14                                 ; $6215: $f8 $ec
    xor d                                         ; $6217: $aa
    ld a, a                                       ; $6218: $7f
    ld l, h                                       ; $6219: $6c
    and [hl]                                      ; $621a: $a6
    or [hl]                                       ; $621b: $b6
    cp a                                          ; $621c: $bf
    db $ec                                        ; $621d: $ec
    ld a, [$0c2e]                                 ; $621e: $fa $2e $0c
    jp z, $8433                                   ; $6221: $ca $33 $84

    ld bc, $53dd                                  ; $6224: $01 $dd $53
    ld a, [hl+]                                   ; $6227: $2a
    db $d3                                        ; $6228: $d3
    cp c                                          ; $6229: $b9
    db $f4                                        ; $622a: $f4
    dec sp                                        ; $622b: $3b
    rst $18                                       ; $622c: $df
    call c, Call_029_6118                         ; $622d: $dc $18 $61
    ld a, [hl+]                                   ; $6230: $2a
    cp a                                          ; $6231: $bf
    ld c, [hl]                                    ; $6232: $4e
    ld a, h                                       ; $6233: $7c
    ld a, [c]                                     ; $6234: $f2
    ld l, e                                       ; $6235: $6b
    sbc e                                         ; $6236: $9b
    jr c, jr_029_61f1                             ; $6237: $38 $b8

    ld d, h                                       ; $6239: $54
    db $fd                                        ; $623a: $fd
    cp h                                          ; $623b: $bc
    db $fc                                        ; $623c: $fc
    sub h                                         ; $623d: $94
    ld l, [hl]                                    ; $623e: $6e
    xor b                                         ; $623f: $a8
    ld de, $2556                                  ; $6240: $11 $56 $25
    ld sp, hl                                     ; $6243: $f9
    dec h                                         ; $6244: $25
    and e                                         ; $6245: $a3
    ld sp, $9336                                  ; $6246: $31 $36 $93
    rst $28                                       ; $6249: $ef
    call nz, Call_000_0ba7                        ; $624a: $c4 $a7 $0b
    ld h, l                                       ; $624d: $65
    ld e, [hl]                                    ; $624e: $5e
    ld a, $44                                     ; $624f: $3e $44
    dec sp                                        ; $6251: $3b
    call $18dc                                    ; $6252: $cd $dc $18
    ld h, c                                       ; $6255: $61
    ld e, [hl]                                    ; $6256: $5e
    call nc, $d457                                ; $6257: $d4 $57 $d4

Jump_029_625a:
    ld a, [$d4ab]                                 ; $625a: $fa $ab $d4
    ret nz                                        ; $625d: $c0

    or e                                          ; $625e: $b3
    ld d, c                                       ; $625f: $51
    xor [hl]                                      ; $6260: $ae
    xor b                                         ; $6261: $a8
    add h                                         ; $6262: $84
    ld d, e                                       ; $6263: $53
    ld sp, hl                                     ; $6264: $f9
    ld d, l                                       ; $6265: $55
    ld c, c                                       ; $6266: $49
    ld [hl], b                                    ; $6267: $70
    reti                                          ; $6268: $d9


    res 6, e                                      ; $6269: $cb $b3
    ld a, c                                       ; $626b: $79
    ld sp, hl                                     ; $626c: $f9
    or l                                          ; $626d: $b5
    rra                                           ; $626e: $1f
    inc e                                         ; $626f: $1c
    ld h, c                                       ; $6270: $61
    daa                                           ; $6271: $27
    dec hl                                        ; $6272: $2b
    ei                                            ; $6273: $fb
    reti                                          ; $6274: $d9


    sub d                                         ; $6275: $92
    pop hl                                        ; $6276: $e1
    cp h                                          ; $6277: $bc
    db $fc                                        ; $6278: $fc
    sbc b                                         ; $6279: $98
    call c, $b367                                 ; $627a: $dc $67 $b3
    db $e3                                        ; $627d: $e3
    ld b, e                                       ; $627e: $43
    ld e, c                                       ; $627f: $59
    jp c, Jump_029_5a53                           ; $6280: $da $53 $5a

    ld d, [hl]                                    ; $6283: $56
    sbc [hl]                                      ; $6284: $9e
    dec e                                         ; $6285: $1d
    inc bc                                        ; $6286: $03
    ld l, b                                       ; $6287: $68
    ld d, $9f                                     ; $6288: $16 $9f
    ld a, h                                       ; $628a: $7c
    daa                                           ; $628b: $27
    push bc                                       ; $628c: $c5
    sbc a                                         ; $628d: $9f
    push bc                                       ; $628e: $c5
    ld h, [hl]                                    ; $628f: $66
    sub a                                         ; $6290: $97
    ld a, [hl+]                                   ; $6291: $2a
    ld a, c                                       ; $6292: $79
    add l                                         ; $6293: $85
    add a                                         ; $6294: $87
    ld a, c                                       ; $6295: $79
    ld sp, hl                                     ; $6296: $f9
    add c                                         ; $6297: $81
    bit 2, e                                      ; $6298: $cb $53
    ldh [$65], a                                  ; $629a: $e0 $65
    ld l, c                                       ; $629c: $69
    xor a                                         ; $629d: $af
    sub e                                         ; $629e: $93
    ld a, [hl]                                    ; $629f: $7e
    sub e                                         ; $62a0: $93
    nop                                           ; $62a1: $00
    ld h, c                                       ; $62a2: $61
    dec l                                         ; $62a3: $2d
    sub l                                         ; $62a4: $95
    adc d                                         ; $62a5: $8a
    or [hl]                                       ; $62a6: $b6
    ld [hl], a                                    ; $62a7: $77
    db $f4                                        ; $62a8: $f4
    cp a                                          ; $62a9: $bf
    rst $00                                       ; $62aa: $c7
    add a                                         ; $62ab: $87
    ld [hl], l                                    ; $62ac: $75
    inc h                                         ; $62ad: $24
    xor l                                         ; $62ae: $ad
    sub a                                         ; $62af: $97
    db $fd                                        ; $62b0: $fd
    ld e, $3a                                     ; $62b1: $1e $3a
    ld e, a                                       ; $62b3: $5f

jr_029_62b4:
    ld e, l                                       ; $62b4: $5d
    adc l                                         ; $62b5: $8d
    or c                                          ; $62b6: $b1
    sbc c                                         ; $62b7: $99
    ld a, l                                       ; $62b8: $7d
    jp hl                                         ; $62b9: $e9


    rst $30                                       ; $62ba: $f7
    call $ecc3                                    ; $62bb: $cd $c3 $ec
    sub h                                         ; $62be: $94
    ld [hl], l                                    ; $62bf: $75
    jp nc, Jump_029_526f                          ; $62c0: $d2 $6f $52

    rst $18                                       ; $62c3: $df
    and c                                         ; $62c4: $a1
    sub $2f                                       ; $62c5: $d6 $2f
    dec b                                         ; $62c7: $05
    db $eb                                        ; $62c8: $eb
    jr jr_029_62b4                                ; $62c9: $18 $e9

    inc h                                         ; $62cb: $24
    inc a                                         ; $62cc: $3c
    jr nz, jr_029_62db                            ; $62cd: $20 $0c

    ld b, a                                       ; $62cf: $47
    rst $18                                       ; $62d0: $df
    ld a, [hl+]                                   ; $62d1: $2a
    add l                                         ; $62d2: $85
    ld h, b                                       ; $62d3: $60

Jump_029_62d4:
    ld a, [hl+]                                   ; $62d4: $2a
    ccf                                           ; $62d5: $3f
    and [hl]                                      ; $62d6: $a6
    inc d                                         ; $62d7: $14
    cp h                                          ; $62d8: $bc
    and h                                         ; $62d9: $a4
    add c                                         ; $62da: $81

jr_029_62db:
    ld d, l                                       ; $62db: $55
    ret                                           ; $62dc: $c9


    rst $30                                       ; $62dd: $f7
    dec e                                         ; $62de: $1d
    ld l, a                                       ; $62df: $6f
    db $fd                                        ; $62e0: $fd
    rla                                           ; $62e1: $17
    ld l, d                                       ; $62e2: $6a
    ld [hl], b                                    ; $62e3: $70
    dec hl                                        ; $62e4: $2b
    adc l                                         ; $62e5: $8d
    xor e                                         ; $62e6: $ab
    db $e4                                        ; $62e7: $e4
    push de                                       ; $62e8: $d5
    adc l                                         ; $62e9: $8d
    inc a                                         ; $62ea: $3c
    and b                                         ; $62eb: $a0
    push af                                       ; $62ec: $f5
    jr z, @-$1f                                   ; $62ed: $28 $df

    inc c                                         ; $62ef: $0c
    jp z, Jump_029_79b3                           ; $62f0: $ca $b3 $79

    ld sp, hl                                     ; $62f3: $f9
    dec hl                                        ; $62f4: $2b
    dec hl                                        ; $62f5: $2b
    add hl, hl                                    ; $62f6: $29
    inc b                                         ; $62f7: $04

jr_029_62f8:
    ld d, e                                       ; $62f8: $53
    ld [hl+], a                                   ; $62f9: $22
    and e                                         ; $62fa: $a3
    ld sp, $dc36                                  ; $62fb: $31 $36 $dc
    pop af                                        ; $62fe: $f1
    push hl                                       ; $62ff: $e5
    ld d, [hl]                                    ; $6300: $56
    ld h, l                                       ; $6301: $65
    ld a, [hl+]                                   ; $6302: $2a
    ccf                                           ; $6303: $3f
    cpl                                           ; $6304: $2f
    ld c, a                                       ; $6305: $4f
    dec bc                                        ; $6306: $0b
    call nc, $cbcb                                ; $6307: $d4 $cb $cb
    or e                                          ; $630a: $b3
    pop af                                        ; $630b: $f1
    push hl                                       ; $630c: $e5
    ld l, c                                       ; $630d: $69
    ld e, [hl]                                    ; $630e: $5e
    ld a, [hl]                                    ; $630f: $7e
    ld b, a                                       ; $6310: $47
    rst $18                                       ; $6311: $df
    ld a, [hl+]                                   ; $6312: $2a
    add l                                         ; $6313: $85
    halt                                          ; $6314: $76
    add c                                         ; $6315: $81
    ld l, d                                       ; $6316: $6a
    cp [hl]                                       ; $6317: $be
    sbc b                                         ; $6318: $98
    ld e, c                                       ; $6319: $59
    cp a                                          ; $631a: $bf
    inc d                                         ; $631b: $14
    jr nz, @+$0e                                  ; $631c: $20 $0c

    ld b, a                                       ; $631e: $47
    xor l                                         ; $631f: $ad
    inc de                                        ; $6320: $13
    sbc a                                         ; $6321: $9f
    db $fc                                        ; $6322: $fc
    jp c, $ee26                                   ; $6323: $da $26 $ee

jr_029_6326:
    ld d, d                                       ; $6326: $52
    jr nz, jr_029_62f8                            ; $6327: $20 $cf

    xor $93                                       ; $6329: $ee $93
    ld [hl], e                                    ; $632b: $73
    rst $20                                       ; $632c: $e7
    push hl                                       ; $632d: $e5
    pop hl                                        ; $632e: $e1
    rla                                           ; $632f: $17
    ld a, [de]                                    ; $6330: $1a
    ldh a, [rHDMA1]                               ; $6331: $f0 $51
    ld a, [$0caa]                                 ; $6333: $fa $aa $0c
    ld a, a                                       ; $6336: $7f
    or [hl]                                       ; $6337: $b6
    ld h, h                                       ; $6338: $64
    jr c, jr_029_6326                             ; $6339: $38 $eb

    ld d, e                                       ; $633b: $53
    add [hl]                                      ; $633c: $86
    ld l, c                                       ; $633d: $69
    ld h, b                                       ; $633e: $60
    ld b, b                                       ; $633f: $40
    ld e, d                                       ; $6340: $5a
    ld a, a                                       ; $6341: $7f
    ld b, b                                       ; $6342: $40
    jr jr_029_638c                                ; $6343: $18 $47

    ccf                                           ; $6345: $3f
    rst $00                                       ; $6346: $c7
    ld d, h                                       ; $6347: $54
    ld e, c                                       ; $6348: $59
    adc e                                         ; $6349: $8b
    daa                                           ; $634a: $27
    dec a                                         ; $634b: $3d

Jump_029_634c:
    ld c, h                                       ; $634c: $4c
    push hl                                       ; $634d: $e5
    ld d, a                                       ; $634e: $57
    ret                                           ; $634f: $c9


    xor e                                         ; $6350: $ab
    ccf                                           ; $6351: $3f
    db $db                                        ; $6352: $db
    and l                                         ; $6353: $a5
    ld a, c                                       ; $6354: $79
    ld sp, hl                                     ; $6355: $f9
    or c                                          ; $6356: $b1
    dec de                                        ; $6357: $1b
    inc a                                         ; $6358: $3c
    ld hl, sp-$4b                                 ; $6359: $f8 $b5
    cp $a0                                        ; $635b: $fe $a0
    ld bc, $10ff                                  ; $635d: $01 $ff $10
    sub [hl]                                      ; $6360: $96
    or $82                                        ; $6361: $f6 $82
    ld d, h                                       ; $6363: $54
    rlca                                          ; $6364: $07
    or h                                          ; $6365: $b4
    ld e, $e5                                     ; $6366: $1e $e5
    sbc e                                         ; $6368: $9b
    xor c                                         ; $6369: $a9
    db $fc                                        ; $636a: $fc
    ld b, b                                       ; $636b: $40
    cpl                                           ; $636c: $2f
    sbc e                                         ; $636d: $9b
    rst $20                                       ; $636e: $e7
    xor d                                         ; $636f: $aa
    inc [hl]                                      ; $6370: $34
    db $e4                                        ; $6371: $e4
    cpl                                           ; $6372: $2f
    ld e, d                                       ; $6373: $5a
    ld sp, hl                                     ; $6374: $f9
    ld a, [hl-]                                   ; $6375: $3a
    ld a, c                                       ; $6376: $79
    ld hl, $1009                                  ; $6377: $21 $09 $10
    ld b, $67                                     ; $637a: $06 $67
    cp [hl]                                       ; $637c: $be
    inc [hl]                                      ; $637d: $34
    inc de                                        ; $637e: $13
    sub l                                         ; $637f: $95
    rst $20                                       ; $6380: $e7
    ld c, $2e                                     ; $6381: $0e $2e
    ld d, l                                       ; $6383: $55
    ccf                                           ; $6384: $3f
    cpl                                           ; $6385: $2f
    rst $18                                       ; $6386: $df
    inc l                                         ; $6387: $2c
    sub b                                         ; $6388: $90

jr_029_6389:
    db $e4                                        ; $6389: $e4
    sub a                                         ; $638a: $97
    inc d                                         ; $638b: $14

jr_029_638c:
    sbc e                                         ; $638c: $9b
    dec h                                         ; $638d: $25
    call $2fcb                                    ; $638e: $cd $cb $2f
    ld c, h                                       ; $6391: $4c
    ldh a, [$29]                                  ; $6392: $f0 $29
    ld d, l                                       ; $6394: $55
    rst $30                                       ; $6395: $f7
    ret                                           ; $6396: $c9


    ld h, a                                       ; $6397: $67
    add sp, $56                                   ; $6398: $e8 $56
    add hl, hl                                    ; $639a: $29
    inc b                                         ; $639b: $04
    ld d, e                                       ; $639c: $53
    ld h, d                                       ; $639d: $62
    ld d, e                                       ; $639e: $53
    ld sp, hl                                     ; $639f: $f9
    ld b, c                                       ; $63a0: $41
    ld a, c                                       ; $63a1: $79
    ld [hl], $eb                                  ; $63a2: $36 $eb
    ld c, e                                       ; $63a4: $4b
    or e                                          ; $63a5: $b3
    ld c, e                                       ; $63a6: $4b
    or [hl]                                       ; $63a7: $b6
    db $fc                                        ; $63a8: $fc
    ld sp, hl                                     ; $63a9: $f9
    and $c9                                       ; $63aa: $e6 $c9
    ld h, e                                       ; $63ac: $63
    add e                                         ; $63ad: $83
    jr nc, jr_029_63f7                            ; $63ae: $30 $47

    ld c, l                                       ; $63b0: $4d
    ld d, h                                       ; $63b1: $54
    ld a, [hl]                                    ; $63b2: $7e

Jump_029_63b3:
    push hl                                       ; $63b3: $e5
    and l                                         ; $63b4: $a5
    dec a                                         ; $63b5: $3d
    cpl                                           ; $63b6: $2f
    ld [$240b], a                                 ; $63b7: $ea $0b $24
    ld a, c                                       ; $63ba: $79
    ld e, b                                       ; $63bb: $58
    ld d, d                                       ; $63bc: $52
    ld l, h                                       ; $63bd: $6c
    halt                                          ; $63be: $76
    ld l, c                                       ; $63bf: $69
    sub d                                         ; $63c0: $92
    ld d, l                                       ; $63c1: $55
    cp l                                          ; $63c2: $bd
    sbc c                                         ; $63c3: $99
    jp z, $a02b                                   ; $63c4: $ca $2b $a0

    push af                                       ; $63c7: $f5
    jr z, jr_029_6389                             ; $63c8: $28 $bf

    ld a, [hl+]                                   ; $63ca: $2a
    ret                                           ; $63cb: $c9


    sbc a                                         ; $63cc: $9f
    db $fc                                        ; $63cd: $fc
    ld h, $cd                                     ; $63ce: $26 $cd
    adc e                                         ; $63d0: $8b
    ld a, [$afae]                                 ; $63d1: $fa $ae $af
    ld a, [hl]                                    ; $63d4: $7e
    ld h, e                                       ; $63d5: $63
    add h                                         ; $63d6: $84
    pop af                                        ; $63d7: $f1
    cpl                                           ; $63d8: $2f
    rst $08                                       ; $63d9: $cf
    ld h, a                                       ; $63da: $67
    or h                                          ; $63db: $b4
    ld a, $ec                                     ; $63dc: $3e $ec
    jp nz, Jump_029_750c                          ; $63de: $c2 $0c $75

    inc h                                         ; $63e1: $24

Jump_029_63e2:
    xor l                                         ; $63e2: $ad
    ld c, a                                       ; $63e3: $4f
    ld [$a703], sp                                ; $63e4: $08 $03 $a7
    ld d, d                                       ; $63e7: $52
    push af                                       ; $63e8: $f5
    db $e3                                        ; $63e9: $e3
    cpl                                           ; $63ea: $2f
    ei                                            ; $63eb: $fb
    cp [hl]                                       ; $63ec: $be
    and c                                         ; $63ed: $a1
    inc hl                                        ; $63ee: $23
    xor a                                         ; $63ef: $af
    ld l, h                                       ; $63f0: $6c
    ld l, l                                       ; $63f1: $6d
    db $e3                                        ; $63f2: $e3
    and e                                         ; $63f3: $a3
    db $e4                                        ; $63f4: $e4
    ld h, a                                       ; $63f5: $67
    and a                                         ; $63f6: $a7

jr_029_63f7:
    ld hl, $a4b6                                  ; $63f7: $21 $b6 $a4
    ret c                                         ; $63fa: $d8

    db $ec                                        ; $63fb: $ec
    jp nc, Jump_000_1bf8                          ; $63fc: $d2 $f8 $1b

    reti                                          ; $63ff: $d9


    ld a, [hl-]                                   ; $6400: $3a
    ld d, c                                       ; $6401: $51
    xor e                                         ; $6402: $ab
    rlca                                          ; $6403: $07
    inc [hl]                                      ; $6404: $34
    adc e                                         ; $6405: $8b
    jp $98ec                                      ; $6406: $c3 $ec $98


    db $fc                                        ; $6409: $fc
    dec bc                                        ; $640a: $0b
    ld c, h                                       ; $640b: $4c
    push hl                                       ; $640c: $e5
    ld h, a                                       ; $640d: $67
    ldh [$6d], a                                  ; $640e: $e0 $6d
    inc de                                        ; $6410: $13
    ld [hl], a                                    ; $6411: $77
    ld l, c                                       ; $6412: $69
    sbc l                                         ; $6413: $9d
    db $f4                                        ; $6414: $f4
    sbc e                                         ; $6415: $9b
    inc b                                         ; $6416: $04
    ld l, e                                       ; $6417: $6b
    dec de                                        ; $6418: $1b
    rst $18                                       ; $6419: $df
    ld [hl], l                                    ; $641a: $75
    ld e, b                                       ; $641b: $58
    ld a, h                                       ; $641c: $7c
    or l                                          ; $641d: $b5
    ld a, $4c                                     ; $641e: $3e $4c
    push hl                                       ; $6420: $e5
    ld h, a                                       ; $6421: $67
    ld a, l                                       ; $6422: $7d
    ld l, c                                       ; $6423: $69
    and $c9                                       ; $6424: $e6 $c9
    pop hl                                        ; $6426: $e1

Jump_029_6427:
    ld d, [hl]                                    ; $6427: $56
    ld [$ad03], sp                                ; $6428: $08 $03 $ad
    rrca                                          ; $642b: $0f
    sbc l                                         ; $642c: $9d
    sub a                                         ; $642d: $97
    or l                                          ; $642e: $b5
    cp b                                          ; $642f: $b8
    ld c, d                                       ; $6430: $4a
    db $fd                                        ; $6431: $fd
    dec de                                        ; $6432: $1b
    inc c                                         ; $6433: $0c

jr_029_6434:
    db $dd                                        ; $6434: $dd
    ld d, l                                       ; $6435: $55
    or h                                          ; $6436: $b4
    ld a, [$0608]                                 ; $6437: $fa $08 $06
    jr nc, jr_029_6483                            ; $643a: $30 $47

    ld c, c                                       ; $643c: $49
    ld d, l                                       ; $643d: $55
    ld l, [hl]                                    ; $643e: $6e
    ld e, e                                       ; $643f: $5b
    inc hl                                        ; $6440: $23
    db $db                                        ; $6441: $db
    ld d, c                                       ; $6442: $51
    sub c                                         ; $6443: $91
    cp l                                          ; $6444: $bd
    ld a, b                                       ; $6445: $78
    ld [de], a                                    ; $6446: $12
    ld b, $c7                                     ; $6447: $06 $c7
    add $a8                                       ; $6449: $c6 $a8
    inc l                                         ; $644b: $2c
    ld b, l                                       ; $644c: $45
    ld [hl], a                                    ; $644d: $77
    ld [c], a                                     ; $644e: $e2
    cp e                                          ; $644f: $bb
    cp a                                          ; $6450: $bf
    ld e, h                                       ; $6451: $5c
    ld d, $3c                                     ; $6452: $16 $3c
    ld b, $c7                                     ; $6454: $06 $c7
    dec hl                                        ; $6456: $2b
    ld [hl], h                                    ; $6457: $74
    ld d, h                                       ; $6458: $54
    ret c                                         ; $6459: $d8

    ld e, d                                       ; $645a: $5a
    jp z, $20a5                                   ; $645b: $ca $a5 $20

    cp [hl]                                       ; $645e: $be
    daa                                           ; $645f: $27
    ld h, c                                       ; $6460: $61
    rst $00                                       ; $6461: $c7
    rst $00                                       ; $6462: $c7
    or h                                          ; $6463: $b4
    cp [hl]                                       ; $6464: $be
    xor h                                         ; $6465: $ac
    push af                                       ; $6466: $f5
    halt                                          ; $6467: $76
    ld hl, sp+$14                                 ; $6468: $f8 $14
    cpl                                           ; $646a: $2f
    jr jr_029_6434                                ; $646b: $18 $c7

    rlc a                                         ; $646d: $cb $07
    add hl, hl                                    ; $646f: $29
    call $fcbc                                    ; $6470: $cd $bc $fc
    ld e, d                                       ; $6473: $5a
    ld b, d                                       ; $6474: $42
    sub l                                         ; $6475: $95
    or b                                          ; $6476: $b0
    pop bc                                        ; $6477: $c1
    daa                                           ; $6478: $27
    xor c                                         ; $6479: $a9

Call_029_647a:
    push af                                       ; $647a: $f5
    add l                                         ; $647b: $85
    ld a, [hl]                                    ; $647c: $7e
    rst $00                                       ; $647d: $c7
    db $fc                                        ; $647e: $fc
    ret                                           ; $647f: $c9


    ld c, c                                       ; $6480: $49
    ld e, $a6                                     ; $6481: $1e $a6

jr_029_6483:
    inc a                                         ; $6483: $3c
    ld d, l                                       ; $6484: $55
    dec c                                         ; $6485: $0d
    ld b, $96                                     ; $6486: $06 $96
    add b                                         ; $6488: $80

jr_029_6489:
    call nc, $aeaf                                ; $6489: $d4 $af $ae
    rst $20                                       ; $648c: $e7
    adc l                                         ; $648d: $8d
    inc c                                         ; $648e: $0c
    jp nz, $05eb                                  ; $648f: $c2 $eb $05

    inc bc                                        ; $6492: $03
    dec l                                         ; $6493: $2d
    ld e, d                                       ; $6494: $5a
    dec d                                         ; $6495: $15
    sub l                                         ; $6496: $95
    dec bc                                        ; $6497: $0b
    and b                                         ; $6498: $a0
    db $eb                                        ; $6499: $eb
    ld h, c                                       ; $649a: $61
    ld [bc], a                                    ; $649b: $02
    ld a, $93                                     ; $649c: $3e $93
    ld h, c                                       ; $649e: $61
    rst $00                                       ; $649f: $c7
    ld b, a                                       ; $64a0: $47
    and l                                         ; $64a1: $a5
    jr nc, jr_029_6489                            ; $64a2: $30 $e5

    rst $10                                       ; $64a4: $d7
    db $fd                                        ; $64a5: $fd
    or l                                          ; $64a6: $b5
    cp $80                                        ; $64a7: $fe $80
    ld bc, $6b47                                  ; $64a9: $01 $47 $6b
    or h                                          ; $64ac: $b4
    db $d3                                        ; $64ad: $d3
    ret z                                         ; $64ae: $c8

    adc [hl]                                      ; $64af: $8e
    adc [hl]                                      ; $64b0: $8e
    ld c, d                                       ; $64b1: $4a
    adc a                                         ; $64b2: $8f
    ld bc, $7dc7                                  ; $64b3: $01 $c7 $7d
    cp h                                          ; $64b6: $bc
    inc e                                         ; $64b7: $1c
    sub $62                                       ; $64b8: $d6 $62
    jp nz, $a5f0                                  ; $64ba: $c2 $f0 $a5

    db $fd                                        ; $64bd: $fd
    adc a                                         ; $64be: $8f
    ld bc, $cbc7                                  ; $64bf: $01 $c7 $cb
    cp e                                          ; $64c2: $bb
    xor [hl]                                      ; $64c3: $ae
    sbc e                                         ; $64c4: $9b
    ld a, d                                       ; $64c5: $7a
    ld d, l                                       ; $64c6: $55
    ld h, d                                       ; $64c7: $62
    ld e, d                                       ; $64c8: $5a
    rra                                           ; $64c9: $1f
    inc bc                                        ; $64ca: $03
    xor l                                         ; $64cb: $ad
    ld c, c                                       ; $64cc: $49
    ld l, c                                       ; $64cd: $69
    db $e4                                        ; $64ce: $e4
    ld [$314e], a                                 ; $64cf: $ea $4e $31
    ld e, [hl]                                    ; $64d2: $5e
    ld h, l                                       ; $64d3: $65
    ret c                                         ; $64d4: $d8

    ld a, [hl]                                    ; $64d5: $7e
    inc c                                         ; $64d6: $0c
    rst $00                                       ; $64d7: $c7
    ld e, a                                       ; $64d8: $5f
    db $db                                        ; $64d9: $db
    ld c, [hl]                                    ; $64da: $4e
    ld h, c                                       ; $64db: $61
    dec sp                                        ; $64dc: $3b
    dec [hl]                                      ; $64dd: $35
    add $17                                       ; $64de: $c6 $17
    ld c, a                                       ; $64e0: $4f
    jp nz, Jump_029_6427                          ; $64e1: $c2 $27 $64

    ld h, l                                       ; $64e4: $65
    adc b                                         ; $64e5: $88
    jp hl                                         ; $64e6: $e9


    ld e, d                                       ; $64e7: $5a
    sbc d                                         ; $64e8: $9a
    ld a, [$0603]                                 ; $64e9: $fa $03 $06
    and a                                         ; $64ec: $a7
    sbc c                                         ; $64ed: $99
    and h                                         ; $64ee: $a4
    ld h, b                                       ; $64ef: $60
    db $dd                                        ; $64f0: $dd
    inc de                                        ; $64f1: $13
    inc bc                                        ; $64f2: $03
    rst $00                                       ; $64f3: $c7
    and h                                         ; $64f4: $a4

jr_029_64f5:
    ld d, h                                       ; $64f5: $54
    ld a, [bc]                                    ; $64f6: $0a
    db $eb                                        ; $64f7: $eb
    ld sp, hl                                     ; $64f8: $f9
    ld sp, $3fb6                                  ; $64f9: $31 $b6 $3f
    and [hl]                                      ; $64fc: $a6
    push af                                       ; $64fd: $f5
    add hl, de                                    ; $64fe: $19
    ld b, $27                                     ; $64ff: $06 $27
    cp a                                          ; $6501: $bf
    ldh a, [$0d]                                  ; $6502: $f0 $0d
    call $efcb                                    ; $6504: $cd $cb $ef
    ld h, h                                       ; $6507: $64
    adc l                                         ; $6508: $8d
    or a                                          ; $6509: $b7
    cp d                                          ; $650a: $ba
    ld l, c                                       ; $650b: $69
    nop                                           ; $650c: $00
    inc bc                                        ; $650d: $03
    daa                                           ; $650e: $27
    and a                                         ; $650f: $a7
    inc b                                         ; $6510: $04
    ld c, d                                       ; $6511: $4a
    adc e                                         ; $6512: $8b
    cp a                                          ; $6513: $bf
    db $e3                                        ; $6514: $e3
    or h                                          ; $6515: $b4
    pop bc                                        ; $6516: $c1
    db $dd                                        ; $6517: $dd
    db $e4                                        ; $6518: $e4
    ld b, d                                       ; $6519: $42
    rst $20                                       ; $651a: $e7
    jp nc, $49ba                                  ; $651b: $d2 $ba $49

    ld d, d                                       ; $651e: $52
    dec e                                         ; $651f: $1d
    inc bc                                        ; $6520: $03
    rst $00                                       ; $6521: $c7
    ld a, d                                       ; $6522: $7a
    ld sp, hl                                     ; $6523: $f9
    jr z, jr_029_64f5                             ; $6524: $28 $cf

    and $e5                                       ; $6526: $e6 $e5
    ld [hl], a                                    ; $6528: $77
    xor h                                         ; $6529: $ac
    push af                                       ; $652a: $f5
    push hl                                       ; $652b: $e5
    db $f4                                        ; $652c: $f4
    ld d, a                                       ; $652d: $57
    sub $60                                       ; $652e: $d6 $60
    ld b, a                                       ; $6530: $47
    cp a                                          ; $6531: $bf
    cp d                                          ; $6532: $ba
    ld e, h                                       ; $6533: $5c
    ld c, $3b                                     ; $6534: $0e $3b
    ld a, [hl-]                                   ; $6536: $3a
    ld h, $07                                     ; $6537: $26 $07
    dec c                                         ; $6539: $0d
    ld sp, $c547                                  ; $653a: $31 $47 $c5
    or $8b                                        ; $653d: $f6 $8b
    db $eb                                        ; $653f: $eb
    ld a, d                                       ; $6540: $7a
    ld h, h                                       ; $6541: $64
    ld a, d                                       ; $6542: $7a
    cp c                                          ; $6543: $b9
    ld sp, $6762                                  ; $6544: $31 $62 $67
    xor c                                         ; $6547: $a9
    push af                                       ; $6548: $f5
    cp [hl]                                       ; $6549: $be
    db $ec                                        ; $654a: $ec
    ld [hl], h                                    ; $654b: $74
    dec b                                         ; $654c: $05
    sub a                                         ; $654d: $97
    ld e, e                                       ; $654e: $5b
    push de                                       ; $654f: $d5
    ld sp, $54bd                                  ; $6550: $31 $bd $54
    ld e, b                                       ; $6553: $58
    db $fc                                        ; $6554: $fc
    ld h, [hl]                                    ; $6555: $66
    db $dd                                        ; $6556: $dd
    and e                                         ; $6557: $a3
    cp d                                          ; $6558: $ba
    ld h, e                                       ; $6559: $63
    rst $00                                       ; $655a: $c7
    inc [hl]                                      ; $655b: $34
    ld h, c                                       ; $655c: $61
    and a                                         ; $655d: $a7
    sub b                                         ; $655e: $90
    xor $38                                       ; $655f: $ee $38
    inc hl                                        ; $6561: $23
    and c                                         ; $6562: $a1
    ld b, $8f                                     ; $6563: $06 $8f
    ld bc, $99c7                                  ; $6565: $01 $c7 $99
    ret c                                         ; $6568: $d8

    ld a, [hl]                                    ; $6569: $7e
    pop af                                        ; $656a: $f1
    ld a, c                                       ; $656b: $79
    ld sp, hl                                     ; $656c: $f9
    dec e                                         ; $656d: $1d
    rst $30                                       ; $656e: $f7
    ld a, [hl+]                                   ; $656f: $2a
    or [hl]                                       ; $6570: $b6
    adc c                                         ; $6571: $89

jr_029_6572:
    jr @+$3f                                      ; $6572: $18 $3d

    sbc a                                         ; $6574: $9f
    ret c                                         ; $6575: $d8

    rst $00                                       ; $6576: $c7
    ld c, e                                       ; $6577: $4b
    di                                            ; $6578: $f3
    ld a, [c]                                     ; $6579: $f2
    db $eb                                        ; $657a: $eb
    ld sp, hl                                     ; $657b: $f9
    ld d, a                                       ; $657c: $57
    jr jr_029_6585                                ; $657d: $18 $06

    dec a                                         ; $657f: $3d
    ld l, [hl]                                    ; $6580: $6e
    adc h                                         ; $6581: $8c
    call Call_029_647a                            ; $6582: $cd $7a $64

jr_029_6585:
    db $fd                                        ; $6585: $fd
    ld sp, $54dd                                  ; $6586: $31 $dd $54
    ld h, d                                       ; $6589: $62
    cp d                                          ; $658a: $ba
    db $eb                                        ; $658b: $eb
    cp d                                          ; $658c: $ba
    ld e, a                                       ; $658d: $5f
    xor d                                         ; $658e: $aa
    add e                                         ; $658f: $83
    daa                                           ; $6590: $27
    dec a                                         ; $6591: $3d
    ld b, $c7                                     ; $6592: $06 $c7
    or d                                          ; $6594: $b2
    ld b, b                                       ; $6595: $40
    ld h, l                                       ; $6596: $65
    dec l                                         ; $6597: $2d
    ld l, $69                                     ; $6598: $2e $69
    ld h, d                                       ; $659a: $62
    ldh a, [$82]                                  ; $659b: $f0 $82
    ld bc, $6aad                                  ; $659d: $01 $ad $6a
    db $fd                                        ; $65a0: $fd
    sbc b                                         ; $65a1: $98
    ld d, l                                       ; $65a2: $55

Jump_029_65a3:
    ld a, l                                       ; $65a3: $7d
    dec l                                         ; $65a4: $2d
    db $fc                                        ; $65a5: $fc
    cp a                                          ; $65a6: $bf
    ld e, a                                       ; $65a7: $5f
    ld a, [bc]                                    ; $65a8: $0a
    jr nc, jr_029_6572                            ; $65a9: $30 $c7

    ld b, l                                       ; $65ab: $45
    or l                                          ; $65ac: $b5
    ld e, [hl]                                    ; $65ad: $5e
    inc bc                                        ; $65ae: $03
    dec sp                                        ; $65af: $3b
    ld a, [$bb63]                                 ; $65b0: $fa $63 $bb
    pop bc                                        ; $65b3: $c1
    daa                                           ; $65b4: $27
    jr jr_029_6627                                ; $65b5: $18 $70

    inc bc                                        ; $65b7: $03
    db $eb                                        ; $65b8: $eb
    ld a, [hl]                                    ; $65b9: $7e
    ld h, e                                       ; $65ba: $63
    cp h                                          ; $65bb: $bc
    db $fc                                        ; $65bc: $fc
    xor l                                         ; $65bd: $ad

jr_029_65be:
    ld [$31f1], a                                 ; $65be: $ea $f1 $31
    and a                                         ; $65c1: $a7
    and h                                         ; $65c2: $a4
    ld e, b                                       ; $65c3: $58
    ccf                                           ; $65c4: $3f
    xor [hl]                                      ; $65c5: $ae
    rlca                                          ; $65c6: $07
    sbc a                                         ; $65c7: $9f
    ld d, h                                       ; $65c8: $54
    rst $00                                       ; $65c9: $c7
    and a                                         ; $65ca: $a7
    ld [bc], a                                    ; $65cb: $02
    xor a                                         ; $65cc: $af
    sub c                                         ; $65cd: $91
    db $ed                                        ; $65ce: $ed
    add sp, -$29                                  ; $65cf: $e8 $d7
    ldh a, [rSCY]                                 ; $65d1: $f0 $42
    pop bc                                        ; $65d3: $c1
    db $dd                                        ; $65d4: $dd
    ld d, d                                       ; $65d5: $52
    add sp, -$1d                                  ; $65d6: $e8 $e3
    dec [hl]                                      ; $65d8: $35
    or b                                          ; $65d9: $b0
    and e                                         ; $65da: $a3
    ld [bc], a                                    ; $65db: $02
    cp c                                          ; $65dc: $b9
    sbc l                                         ; $65dd: $9d
    adc [hl]                                      ; $65de: $8e
    ld h, d                                       ; $65df: $62

jr_029_65e0:
    rst $00                                       ; $65e0: $c7
    sbc e                                         ; $65e1: $9b
    jr @-$4f                                      ; $65e2: $18 $af

    push af                                       ; $65e4: $f5
    ld h, l                                       ; $65e5: $65
    db $dd                                        ; $65e6: $dd
    or e                                          ; $65e7: $b3
    cp $ed                                        ; $65e8: $fe $ed
    ld b, $03                                     ; $65ea: $06 $03
    and a                                         ; $65ec: $a7
    inc a                                         ; $65ed: $3c
    rst $28                                       ; $65ee: $ef
    ld l, e                                       ; $65ef: $6b
    xor c                                         ; $65f0: $a9
    inc [hl]                                      ; $65f1: $34
    ld d, h                                       ; $65f2: $54
    ld h, d                                       ; $65f3: $62
    cpl                                           ; $65f4: $2f
    jr jr_029_65be                                ; $65f5: $18 $c7

    rst $00                                       ; $65f7: $c7
    daa                                           ; $65f8: $27
    and [hl]                                      ; $65f9: $a6
    db $eb                                        ; $65fa: $eb
    ld d, [hl]                                    ; $65fb: $56
    xor [hl]                                      ; $65fc: $ae
    ld a, e                                       ; $65fd: $7b
    ld d, [hl]                                    ; $65fe: $56
    ld [hl], l                                    ; $65ff: $75
    inc c                                         ; $6600: $0c
    ld b, a                                       ; $6601: $47
    ld sp, $ed8d                                  ; $6602: $31 $8d $ed
    rla                                           ; $6605: $17
    ld e, a                                       ; $6606: $5f
    ld c, a                                       ; $6607: $4f
    or l                                          ; $6608: $b5
    db $ed                                        ; $6609: $ed
    ld a, b                                       ; $660a: $78
    add hl, hl                                    ; $660b: $29
    ret nz                                        ; $660c: $c0

    db $dd                                        ; $660d: $dd
    ld e, a                                       ; $660e: $5f
    ld a, [hl-]                                   ; $660f: $3a
    rst $28                                       ; $6610: $ef
    ld b, [hl]                                    ; $6611: $46
    ld [hl], a                                    ; $6612: $77
    sbc h                                         ; $6613: $9c
    ld d, d                                       ; $6614: $52
    sub l                                         ; $6615: $95
    ld b, [hl]                                    ; $6616: $46
    inc e                                         ; $6617: $1c

jr_029_6618:
    inc bc                                        ; $6618: $03
    db $dd                                        ; $6619: $dd
    inc d                                         ; $661a: $14
    ld b, b                                       ; $661b: $40
    adc c                                         ; $661c: $89
    adc c                                         ; $661d: $89
    xor $4c                                       ; $661e: $ee $4c
    ld l, l                                       ; $6620: $6d
    ld b, a                                       ; $6621: $47
    ld [hl], l                                    ; $6622: $75
    xor b                                         ; $6623: $a8
    scf                                           ; $6624: $37
    jr jr_029_664e                                ; $6625: $18 $27

jr_029_6627:
    ld h, a                                       ; $6627: $67
    rlca                                          ; $6628: $07
    inc c                                         ; $6629: $0c
    ld h, b                                       ; $662a: $60
    ld b, a                                       ; $662b: $47
    rst $00                                       ; $662c: $c7
    and a                                         ; $662d: $a7
    ld a, [c]                                     ; $662e: $f2
    scf                                           ; $662f: $37
    ld e, h                                       ; $6630: $5c
    adc e                                         ; $6631: $8b
    ld l, e                                       ; $6632: $6b
    xor h                                         ; $6633: $ac
    ld h, e                                       ; $6634: $63
    ld b, a                                       ; $6635: $47
    push bc                                       ; $6636: $c5
    or $cb                                        ; $6637: $f6 $cb
    xor l                                         ; $6639: $ad
    halt                                          ; $663a: $76
    cp h                                          ; $663b: $bc
    jr jr_029_65e0                                ; $663c: $18 $a2

    sbc e                                         ; $663e: $9b
    add h                                         ; $663f: $84
    ld bc, $bf27                                  ; $6640: $01 $27 $bf
    call nz, $184b                                ; $6643: $c4 $4b $18
    rst $00                                       ; $6646: $c7
    ld b, [hl]                                    ; $6647: $46
    ld e, e                                       ; $6648: $5b
    ld l, $d3                                     ; $6649: $2e $d3
    ld [hl], l                                    ; $664b: $75

jr_029_664c:
    adc e                                         ; $664c: $8b
    ld a, [de]                                    ; $664d: $1a

jr_029_664e:
    inc b                                         ; $664e: $04
    jr jr_029_6618                                ; $664f: $18 $c7

    ld c, e                                       ; $6651: $4b
    ld b, $4a                                     ; $6652: $06 $4a
    ld l, e                                       ; $6654: $6b
    ld [hl], c                                    ; $6655: $71
    inc de                                        ; $6656: $13
    halt                                          ; $6657: $76
    jr nc, jr_029_66a1                            ; $6658: $30 $47

    dec de                                        ; $665a: $1b
    ld h, c                                       ; $665b: $61
    ld e, c                                       ; $665c: $59
    push de                                       ; $665d: $d5
    ld [hl], a                                    ; $665e: $77
    or d                                          ; $665f: $b2
    adc c                                         ; $6660: $89
    inc l                                         ; $6661: $2c
    sub e                                         ; $6662: $93
    jr nc, jr_029_66ac                            ; $6663: $30 $47

    push bc                                       ; $6665: $c5
    ldh a, [$e5]                                  ; $6666: $f0 $e5
    ld d, [hl]                                    ; $6668: $56
    push af                                       ; $6669: $f5
    or l                                          ; $666a: $b5
    jr z, jr_029_664c                             ; $666b: $28 $df

    sub [hl]                                      ; $666d: $96
    res 0, d                                      ; $666e: $cb $82
    rst $00                                       ; $6670: $c7
    ld b, a                                       ; $6671: $47
    adc c                                         ; $6672: $89
    ld a, a                                       ; $6673: $7f
    ld a, b                                       ; $6674: $78
    pop hl                                        ; $6675: $e1
    ld [$324e], a                                 ; $6676: $ea $4e $32
    halt                                          ; $6679: $76
    db $fd                                        ; $667a: $fd
    ld [de], a                                    ; $667b: $12
    ld b, $c7                                     ; $667c: $06 $c7
    daa                                           ; $667e: $27
    or c                                          ; $667f: $b1
    adc h                                         ; $6680: $8c
    sub a                                         ; $6681: $97
    ld a, [hl]                                    ; $6682: $7e
    and a                                         ; $6683: $a7
    add $db                                       ; $6684: $c6 $db
    add hl, hl                                    ; $6686: $29
    ld c, d                                       ; $6687: $4a
    adc [hl]                                      ; $6688: $8e
    ld bc, $2727                                  ; $6689: $01 $27 $27
    cp c                                          ; $668c: $b9

jr_029_668d:
    ld b, $e6                                     ; $668d: $06 $e6
    ld [hl], a                                    ; $668f: $77
    ld [hl+], a                                   ; $6690: $22
    db $dd                                        ; $6691: $dd
    and b                                         ; $6692: $a0
    ld a, b                                       ; $6693: $78
    db $fc                                        ; $6694: $fc
    ld b, $03                                     ; $6695: $06 $03
    xor l                                         ; $6697: $ad
    ld a, [hl+]                                   ; $6698: $2a
    jp nc, Jump_029_7bac                          ; $6699: $d2 $ac $7b

    cp d                                          ; $669c: $ba
    cp a                                          ; $669d: $bf
    ld h, b                                       ; $669e: $60
    rst $00                                       ; $669f: $c7
    cp h                                          ; $66a0: $bc

jr_029_66a1:
    ldh a, [rVBK]                                 ; $66a1: $f0 $4f
    cp [hl]                                       ; $66a3: $be
    sub [hl]                                      ; $66a4: $96
    ld [hl], d                                    ; $66a5: $72
    jp $bc4e                                      ; $66a6: $c3 $4e $bc


    inc d                                         ; $66a9: $14
    ld h, b                                       ; $66aa: $60
    rst $00                                       ; $66ab: $c7

jr_029_66ac:
    dec de                                        ; $66ac: $1b
    ld a, [hl+]                                   ; $66ad: $2a
    scf                                           ; $66ae: $37
    ld [hl-], a                                   ; $66af: $32
    ld e, l                                       ; $66b0: $5d
    jp c, $3e3b                                   ; $66b1: $da $3b $3e

    dec b                                         ; $66b4: $05
    ld a, $cc                                     ; $66b5: $3e $cc
    inc d                                         ; $66b7: $14
    inc c                                         ; $66b8: $0c
    db $dd                                        ; $66b9: $dd
    ld [c], a                                     ; $66ba: $e2
    ld c, l                                       ; $66bb: $4d
    ld b, [hl]                                    ; $66bc: $46
    adc a                                         ; $66bd: $8f
    ld bc, $bf47                                  ; $66be: $01 $47 $bf
    sbc d                                         ; $66c1: $9a
    jr nc, jr_029_668d                            ; $66c2: $30 $c9

    ld [hl], a                                    ; $66c4: $77
    or d                                          ; $66c5: $b2
    jp z, $2979                                   ; $66c6: $ca $79 $29

    or a                                          ; $66c9: $b7
    xor l                                         ; $66ca: $ad
    ld d, h                                       ; $66cb: $54
    rlca                                          ; $66cc: $07
    inc c                                         ; $66cd: $0c
    db $dd                                        ; $66ce: $dd
    adc d                                         ; $66cf: $8a
    ld a, [de]                                    ; $66d0: $1a
    xor d                                         ; $66d1: $aa
    cp [hl]                                       ; $66d2: $be
    reti                                          ; $66d3: $d9


    xor c                                         ; $66d4: $a9
    sub c                                         ; $66d5: $91
    ret                                           ; $66d6: $c9


    ld h, l                                       ; $66d7: $65
    pop bc                                        ; $66d8: $c1

jr_029_66d9:
    ld h, e                                       ; $66d9: $63
    daa                                           ; $66da: $27
    dec de                                        ; $66db: $1b
    ld a, [bc]                                    ; $66dc: $0a
    ld [hl], d                                    ; $66dd: $72
    ld b, a                                       ; $66de: $47
    daa                                           ; $66df: $27
    dec d                                         ; $66e0: $15
    dec c                                         ; $66e1: $0d
    ld sp, $6f3d                                  ; $66e2: $31 $3d $6f
    or h                                          ; $66e5: $b4
    push hl                                       ; $66e6: $e5
    reti                                          ; $66e7: $d9


    adc [hl]                                      ; $66e8: $8e
    adc l                                         ; $66e9: $8d
    sbc l                                         ; $66ea: $9d
    ld [hl], d                                    ; $66eb: $72
    xor e                                         ; $66ec: $ab
    ld a, [hl-]                                   ; $66ed: $3a
    ld b, $47                                     ; $66ee: $06 $47
    bit 4, l                                      ; $66f0: $cb $65
    pop bc                                        ; $66f2: $c1
    ei                                            ; $66f3: $fb
    ld a, d                                       ; $66f4: $7a
    ld a, $c5                                     ; $66f5: $3e $c5
    xor h                                         ; $66f7: $ac
    ld [$c718], a                                 ; $66f8: $ea $18 $c7
    daa                                           ; $66fb: $27
    sub e                                         ; $66fc: $93
    ld e, e                                       ; $66fd: $5b
    db $ed                                        ; $66fe: $ed
    ld a, b                                       ; $66ff: $78
    ld l, c                                       ; $6700: $69
    ld l, h                                       ; $6701: $6c
    ei                                            ; $6702: $fb
    ld [de], a                                    ; $6703: $12
    ld c, e                                       ; $6704: $4b
    pop bc                                        ; $6705: $c1
    daa                                           ; $6706: $27
    ld e, a                                       ; $6707: $5f
    ld d, c                                       ; $6708: $51
    ld h, d                                       ; $6709: $62
    cp d                                          ; $670a: $ba
    db $e3                                        ; $670b: $e3
    inc de                                        ; $670c: $13
    adc d                                         ; $670d: $8a
    ld a, [c]                                     ; $670e: $f2
    ld [hl], l                                    ; $670f: $75
    inc c                                         ; $6710: $0c
    dec l                                         ; $6711: $2d
    ld a, [de]                                    ; $6712: $1a
    sub l                                         ; $6713: $95
    and e                                         ; $6714: $a3
    jp z, Jump_029_625a                           ; $6715: $ca $5a $62

    db $e3                                        ; $6718: $e3
    push hl                                       ; $6719: $e5
    push hl                                       ; $671a: $e5
    ld [de], a                                    ; $671b: $12
    ld b, $a7                                     ; $671c: $06 $a7
    sbc c                                         ; $671e: $99
    ld a, a                                       ; $671f: $7f
    jp c, $fac9                                   ; $6720: $da $c9 $fa

    sub $c7                                       ; $6723: $d6 $c7
    xor l                                         ; $6725: $ad
    rra                                           ; $6726: $1f
    inc bc                                        ; $6727: $03
    ld e, l                                       ; $6728: $5d
    xor e                                         ; $6729: $ab

jr_029_672a:
    or c                                          ; $672a: $b1
    db $ed                                        ; $672b: $ed
    ld hl, sp+$1d                                 ; $672c: $f8 $1d
    ld h, e                                       ; $672e: $63
    db $db                                        ; $672f: $db
    jr jr_029_66d9                                ; $6730: $18 $a7

    daa                                           ; $6732: $27
    rst $38                                       ; $6733: $ff
    and h                                         ; $6734: $a4
    dec sp                                        ; $6735: $3b
    ld e, l                                       ; $6736: $5d
    xor l                                         ; $6737: $ad
    ld c, a                                       ; $6738: $4f
    ld d, l                                       ; $6739: $55
    ld d, h                                       ; $673a: $54
    ld e, $03                                     ; $673b: $1e $03
    xor l                                         ; $673d: $ad
    ld c, a                                       ; $673e: $4f
    pop bc                                        ; $673f: $c1
    dec b                                         ; $6740: $05
    ld e, a                                       ; $6741: $5f

jr_029_6742:
    jp c, $99eb                                   ; $6742: $da $eb $99

    ret                                           ; $6745: $c9


    ld a, [hl+]                                   ; $6746: $2a
    ld c, c                                       ; $6747: $49
    db $db                                        ; $6748: $db
    ld sp, $e8c7                                  ; $6749: $31 $c7 $e8
    add l                                         ; $674c: $85
    ld h, [hl]                                    ; $674d: $66
    rst $00                                       ; $674e: $c7
    inc h                                         ; $674f: $24
    ld h, e                                       ; $6750: $63
    cpl                                           ; $6751: $2f
    sub a                                         ; $6752: $97
    dec b                                         ; $6753: $05
    adc a                                         ; $6754: $8f
    ld bc, $c547                                  ; $6755: $01 $47 $c5
    or [hl]                                       ; $6758: $b6
    add c                                         ; $6759: $81
    dec e                                         ; $675a: $1d
    ld h, e                                       ; $675b: $63
    jp nz, Jump_029_7c76                          ; $675c: $c2 $76 $7c

    sub [hl]                                      ; $675f: $96
    ld a, [c]                                     ; $6760: $f2
    jr jr_029_672a                                ; $6761: $18 $c7

    inc h                                         ; $6763: $24
    ld l, c                                       ; $6764: $69
    ld d, b                                       ; $6765: $50
    sub h                                         ; $6766: $94
    sub $43                                       ; $6767: $d6 $43
    ld a, $8c                                     ; $6769: $3e $8c
    rst $28                                       ; $676b: $ef
    adc [hl]                                      ; $676c: $8e
    ld bc, $1b27                                  ; $676d: $01 $27 $1b
    cp b                                          ; $6770: $b8
    inc l                                         ; $6771: $2c
    ld b, l                                       ; $6772: $45
    ld [hl], a                                    ; $6773: $77
    or h                                          ; $6774: $b4
    ld c, d                                       ; $6775: $4a
    sbc l                                         ; $6776: $9d
    cp a                                          ; $6777: $bf
    ld e, [hl]                                    ; $6778: $5e
    jr nc, jr_029_6742                            ; $6779: $30 $c7

    ld e, a                                       ; $677b: $5f
    or $49                                        ; $677c: $f6 $49
    db $eb                                        ; $677e: $eb
    ld h, $26                                     ; $677f: $26 $26
    ld l, h                                       ; $6781: $6c
    ld h, e                                       ; $6782: $63
    xor l                                         ; $6783: $ad
    cpl                                           ; $6784: $2f
    and c                                         ; $6785: $a1
    jp nc, Jump_029_5e7a                          ; $6786: $d2 $7a $5e

    ld [hl], d                                    ; $6789: $72

jr_029_678a:
    cp c                                          ; $678a: $b9
    inc d                                         ; $678b: $14
    inc d                                         ; $678c: $14
    dec c                                         ; $678d: $0d
    ld sp, $5e27                                  ; $678e: $31 $27 $5e
    adc c                                         ; $6791: $89
    rst $18                                       ; $6792: $df
    db $ec                                        ; $6793: $ec
    jr jr_029_67e9                                ; $6794: $18 $53

    ld a, a                                       ; $6796: $7f
    inc c                                         ; $6797: $0c
    daa                                           ; $6798: $27
    scf                                           ; $6799: $37
    sub d                                         ; $679a: $92
    or h                                          ; $679b: $b4
    sbc [hl]                                      ; $679c: $9e
    ld a, [de]                                    ; $679d: $1a
    cp b                                          ; $679e: $b8
    sbc $88                                       ; $679f: $de $88
    ld bc, $0aa7                                  ; $67a1: $01 $a7 $0a
    ld e, h                                       ; $67a4: $5c
    jp z, Jump_000_28f5                           ; $67a5: $ca $f5 $28

    ld h, d                                       ; $67a8: $62
    ret nz                                        ; $67a9: $c0

    sub e                                         ; $67aa: $93
    jr nc, jr_029_678a                            ; $67ab: $30 $dd

    ld a, $3e                                     ; $67ad: $3e $3e
    ld hl, sp+$25                                 ; $67af: $f8 $25
    ld e, l                                       ; $67b1: $5d
    ld c, a                                       ; $67b2: $4f
    sub l                                         ; $67b3: $95
    or $57                                        ; $67b4: $f6 $57
    ld [hl], l                                    ; $67b6: $75
    inc c                                         ; $67b7: $0c
    xor l                                         ; $67b8: $ad
    xor a                                         ; $67b9: $af
    ld e, [hl]                                    ; $67ba: $5e
    xor d                                         ; $67bb: $aa
    db $f4                                        ; $67bc: $f4
    rst $18                                       ; $67bd: $df
    pop de                                        ; $67be: $d1
    ld a, [hl+]                                   ; $67bf: $2a
    ld l, l                                       ; $67c0: $6d
    sub l                                         ; $67c1: $95
    ld b, $03                                     ; $67c2: $06 $03
    daa                                           ; $67c4: $27
    cp a                                          ; $67c5: $bf
    ld a, b                                       ; $67c6: $78
    jp nc, Jump_000_178e                          ; $67c7: $d2 $8e $17

    or l                                          ; $67ca: $b5
    ld a, $60                                     ; $67cb: $3e $60
    ld b, a                                       ; $67cd: $47
    daa                                           ; $67ce: $27
    rra                                           ; $67cf: $1f
    ld a, [hl+]                                   ; $67d0: $2a
    xor l                                         ; $67d1: $ad
    and a                                         ; $67d2: $a7
    call c, Call_000_38a0                         ; $67d3: $dc $a0 $38
    ld b, $27                                     ; $67d6: $06 $27
    inc h                                         ; $67d8: $24
    ld d, h                                       ; $67d9: $54
    rra                                           ; $67da: $1f
    cpl                                           ; $67db: $2f
    or c                                          ; $67dc: $b1
    push af                                       ; $67dd: $f5
    ld d, h                                       ; $67de: $54
    ld d, [hl]                                    ; $67df: $56
    ld h, l                                       ; $67e0: $65
    ld d, l                                       ; $67e1: $55
    rst $00                                       ; $67e2: $c7
    rst $00                                       ; $67e3: $c7
    di                                            ; $67e4: $f3
    ld c, a                                       ; $67e5: $4f
    add hl, de                                    ; $67e6: $19
    db $ec                                        ; $67e7: $ec
    add h                                         ; $67e8: $84

jr_029_67e9:
    and h                                         ; $67e9: $a4
    rlca                                          ; $67ea: $07
    inc c                                         ; $67eb: $0c
    db $dd                                        ; $67ec: $dd
    sbc d                                         ; $67ed: $9a
    adc [hl]                                      ; $67ee: $8e
    ld e, h                                       ; $67ef: $5c
    and l                                         ; $67f0: $a5
    push af                                       ; $67f1: $f5
    ld c, d                                       ; $67f2: $4a
    jp Jump_029_63e2                              ; $67f3: $c3 $e2 $63


    rst $00                                       ; $67f6: $c7
    cp h                                          ; $67f7: $bc
    dec [hl]                                      ; $67f8: $35
    ld e, [hl]                                    ; $67f9: $5e
    ld e, d                                       ; $67fa: $5a
    rst $08                                       ; $67fb: $cf
    ld [hl], d                                    ; $67fc: $72
    db $fd                                        ; $67fd: $fd
    ld c, e                                       ; $67fe: $4b
    ld a, [bc]                                    ; $67ff: $0a
    ld h, c                                       ; $6800: $61
    rst $00                                       ; $6801: $c7
    jr jr_029_686e                                ; $6802: $18 $6a

    xor e                                         ; $6804: $ab
    db $ec                                        ; $6805: $ec
    call nc, $be20                                ; $6806: $d4 $20 $be
    sub a                                         ; $6809: $97
    sub h                                         ; $680a: $94
    adc $63                                       ; $680b: $ce $63
    daa                                           ; $680d: $27
    ld a, l                                       ; $680e: $7d
    halt                                          ; $680f: $76
    ld [hl-], a                                   ; $6810: $32
    or d                                          ; $6811: $b2
    ld c, e                                       ; $6812: $4b
    cp d                                          ; $6813: $ba
    sub [hl]                                      ; $6814: $96
    ldh a, [$bd]                                  ; $6815: $f0 $bd
    ldh a, [rKEY1]                                ; $6817: $f0 $4d
    ld d, l                                       ; $6819: $55
    rst $00                                       ; $681a: $c7
    and a                                         ; $681b: $a7
    daa                                           ; $681c: $27
    ld a, e                                       ; $681d: $7b
    cp c                                          ; $681e: $b9
    ld d, l                                       ; $681f: $55
    ld a, l                                       ; $6820: $7d
    db $dd                                        ; $6821: $dd
    and e                                         ; $6822: $a3
    add hl, bc                                    ; $6823: $09
    dec sp                                        ; $6824: $3b
    sbc [hl]                                      ; $6825: $9e
    add h                                         ; $6826: $84
    ld bc, $67a7                                  ; $6827: $01 $a7 $67
    ld d, h                                       ; $682a: $54
    ld h, d                                       ; $682b: $62
    dec sp                                        ; $682c: $3b
    pop af                                        ; $682d: $f1
    add e                                         ; $682e: $83

jr_029_682f:
    nop                                           ; $682f: $00
    inc bc                                        ; $6830: $03
    xor l                                         ; $6831: $ad
    cpl                                           ; $6832: $2f
    sbc l                                         ; $6833: $9d
    sbc h                                         ; $6834: $9c
    sub a                                         ; $6835: $97
    rst $18                                       ; $6836: $df
    ld [hl], c                                    ; $6837: $71
    ld l, c                                       ; $6838: $69
    ld [hl+], a                                   ; $6839: $22
    ld b, $47                                     ; $683a: $06 $47
    ld de, $8493                                  ; $683c: $11 $93 $84
    ld a, c                                       ; $683f: $79
    ld sp, hl                                     ; $6840: $f9
    ld e, c                                       ; $6841: $59
    ret z                                         ; $6842: $c8

    ld a, d                                       ; $6843: $7a
    xor c                                         ; $6844: $a9
    cp d                                          ; $6845: $ba
    db $ed                                        ; $6846: $ed
    ld hl, sp+$18                                 ; $6847: $f8 $18
    ld h, a                                       ; $6849: $67
    ret z                                         ; $684a: $c8

    xor l                                         ; $684b: $ad
    and $e5                                       ; $684c: $e6 $e5
    ld [hl], a                                    ; $684e: $77
    ld a, [hl+]                                   ; $684f: $2a
    ld h, e                                       ; $6850: $63
    ld l, l                                       ; $6851: $6d
    adc l                                         ; $6852: $8d
    ld de, $2703                                  ; $6853: $11 $03 $27
    and l                                         ; $6856: $a5
    or b                                          ; $6857: $b0
    or l                                          ; $6858: $b5
    ld a, b                                       ; $6859: $78
    ld [hl-], a                                   ; $685a: $32
    and [hl]                                      ; $685b: $a6
    jp nz, $f3d6                                  ; $685c: $c2 $d6 $f3

    ld a, d                                       ; $685f: $7a
    ld a, c                                       ; $6860: $79
    ld bc, $dd0c                                  ; $6861: $01 $0c $dd
    xor [hl]                                      ; $6864: $ae
    ld d, h                                       ; $6865: $54
    adc a                                         ; $6866: $8f
    ld bc, $5f27                                  ; $6867: $01 $27 $5f
    pop de                                        ; $686a: $d1
    or $c7                                        ; $686b: $f6 $c7
    xor b                                         ; $686d: $a8

jr_029_686e:
    db $eb                                        ; $686e: $eb
    ld e, $0d                                     ; $686f: $1e $0d
    push de                                       ; $6871: $d5
    rst $18                                       ; $6872: $df
    dec e                                         ; $6873: $1d
    inc bc                                        ; $6874: $03
    ld b, a                                       ; $6875: $47
    cp a                                          ; $6876: $bf
    ld hl, sp-$03                                 ; $6877: $f8 $fd
    dec e                                         ; $6879: $1d
    sbc l                                         ; $687a: $9d
    xor $18                                       ; $687b: $ee $18
    dec a                                         ; $687d: $3d
    adc d                                         ; $687e: $8a
    ld [hl-], a                                   ; $687f: $32
    or $06                                        ; $6880: $f6 $06
    sub $a3                                       ; $6882: $d6 $a3
    jr jr_029_682f                                ; $6884: $18 $a9

    ld a, a                                       ; $6886: $7f
    adc h                                         ; $6887: $8c
    jr jr_029_68f1                                ; $6888: $18 $67

    ld d, b                                       ; $688a: $50
    sbc l                                         ; $688b: $9d
    sub d                                         ; $688c: $92
    daa                                           ; $688d: $27
    inc c                                         ; $688e: $0c
    jp $72c7                                      ; $688f: $c3 $c7 $72


    ld hl, sp-$36                                 ; $6892: $f8 $ca
    ld hl, sp-$11                                 ; $6894: $f8 $ef
    jr z, jr_029_690f                             ; $6896: $28 $77

    xor l                                         ; $6898: $ad
    ld [$db18], a                                 ; $6899: $ea $18 $db
    add hl, sp                                    ; $689c: $39
    dec l                                         ; $689d: $2d
    ld l, [hl]                                    ; $689e: $6e
    ret c                                         ; $689f: $d8

    ld a, l                                       ; $68a0: $7d
    or [hl]                                       ; $68a1: $b6
    sub d                                         ; $68a2: $92
    db $fc                                        ; $68a3: $fc
    jp nz, $5a4c                                  ; $68a4: $c2 $4c $5a

    and a                                         ; $68a7: $a7
    jr z, jr_029_68e6                             ; $68a8: $28 $3c

    ld c, h                                       ; $68aa: $4c
    ld l, l                                       ; $68ab: $6d
    ei                                            ; $68ac: $fb
    dec hl                                        ; $68ad: $2b
    ld e, a                                       ; $68ae: $5f
    daa                                           ; $68af: $27
    db $fd                                        ; $68b0: $fd
    ld h, $f5                                     ; $68b1: $26 $f5
    dec e                                         ; $68b3: $1d
    ld l, d                                       ; $68b4: $6a
    db $fd                                        ; $68b5: $fd
    ld d, d                                       ; $68b6: $52
    add b                                         ; $68b7: $80
    jr nc, @-$23                                  ; $68b8: $30 $db

    add hl, sp                                    ; $68ba: $39
    rst $00                                       ; $68bb: $c7
    res 5, e                                      ; $68bc: $cb $ab
    ccf                                           ; $68be: $3f
    ld hl, sp-$2e                                 ; $68bf: $f8 $d2
    sbc [hl]                                      ; $68c1: $9e
    add $b8                                       ; $68c2: $c6 $b8
    ldh a, [$d9]                                  ; $68c4: $f0 $d9
    ld a, l                                       ; $68c6: $7d
    xor e                                         ; $68c7: $ab
    add $69                                       ; $68c8: $c6 $69
    xor h                                         ; $68ca: $ac
    jp z, Jump_000_1787                           ; $68cb: $ca $87 $17

    inc e                                         ; $68ce: $1c
    db $10                                        ; $68cf: $10
    ld b, $db                                     ; $68d0: $06 $db
    add hl, sp                                    ; $68d2: $39
    ld b, a                                       ; $68d3: $47
    rst $00                                       ; $68d4: $c7
    rst $20                                       ; $68d5: $e7
    ld h, a                                       ; $68d6: $67
    ld a, [hl-]                                   ; $68d7: $3a
    di                                            ; $68d8: $f3
    ld a, [c]                                     ; $68d9: $f2
    dec hl                                        ; $68da: $2b
    ld a, [de]                                    ; $68db: $1a
    add $f7                                       ; $68dc: $c6 $f7
    and l                                         ; $68de: $a5
    cp l                                          ; $68df: $bd
    sub e                                         ; $68e0: $93
    xor [hl]                                      ; $68e1: $ae
    ld a, e                                       ; $68e2: $7b
    db $fc                                        ; $68e3: $fc
    dec e                                         ; $68e4: $1d
    inc hl                                        ; $68e5: $23

jr_029_68e6:
    reti                                          ; $68e6: $d9


    jp hl                                         ; $68e7: $e9


    ld e, h                                       ; $68e8: $5c
    ld a, [bc]                                    ; $68e9: $0a
    add $97                                       ; $68ea: $c6 $97

Jump_029_68ec:
    dec de                                        ; $68ec: $1b
    ld a, a                                       ; $68ed: $7f
    and c                                         ; $68ee: $a1
    ld b, $b7                                     ; $68ef: $06 $b7

jr_029_68f1:
    jp nc, $9b18                                  ; $68f1: $d2 $18 $9b

    add l                                         ; $68f4: $85
    sub a                                         ; $68f5: $97
    jp $60a5                                      ; $68f6: $c3 $a5 $60


    cp d                                          ; $68f9: $ba
    or $15                                        ; $68fa: $f6 $15
    cpl                                           ; $68fc: $2f
    ld c, h                                       ; $68fd: $4c
    sbc e                                         ; $68fe: $9b
    ld d, l                                       ; $68ff: $55
    ld e, d                                       ; $6900: $5a
    ld a, a                                       ; $6901: $7f
    add h                                         ; $6902: $84
    ld bc, $39db                                  ; $6903: $01 $db $39
    rst $00                                       ; $6906: $c7
    ld e, h                                       ; $6907: $5c
    xor b                                         ; $6908: $a8
    jp nc, $f2fa                                  ; $6909: $d2 $fa $f2

    ld l, h                                       ; $690c: $6c
    ld e, [hl]                                    ; $690d: $5e
    ld a, [hl]                                    ; $690e: $7e

jr_029_690f:
    ld b, $7e                                     ; $690f: $06 $7e
    ld l, c                                       ; $6911: $69
    rst $28                                       ; $6912: $ef
    ld hl, sp+$1b                                 ; $6913: $f8 $1b
    ld h, e                                       ; $6915: $63
    jp $b3ff                                      ; $6916: $c3 $ff $b3


    pop af                                        ; $6919: $f1
    push hl                                       ; $691a: $e5
    ld l, c                                       ; $691b: $69
    ld d, b                                       ; $691c: $50
    ld a, [hl]                                    ; $691d: $7e
    ldh [$a6], a                                  ; $691e: $e0 $a6
    xor d                                         ; $6920: $aa
    xor a                                         ; $6921: $af
    cp h                                          ; $6922: $bc
    xor h                                         ; $6923: $ac
    cp h                                          ; $6924: $bc
    or d                                          ; $6925: $b2
    ld e, l                                       ; $6926: $5d
    ld a, [c]                                     ; $6927: $f2
    sbc h                                         ; $6928: $9c
    xor [hl]                                      ; $6929: $ae
    ld l, l                                       ; $692a: $6d
    xor d                                         ; $692b: $aa
    ld a, [$d2fb]                                 ; $692c: $fa $fb $d2
    ld e, $af                                     ; $692f: $1e $af
    cp $82                                        ; $6931: $fe $82
    jr nc, @-$23                                  ; $6933: $30 $db

    add hl, sp                                    ; $6935: $39
    db $dd                                        ; $6936: $dd
    ld a, $7e                                     ; $6937: $3e $7e
    ld e, e                                       ; $6939: $5b
    call nc, $ed9f                                ; $693a: $d4 $9f $ed
    sub d                                         ; $693d: $92
    push af                                       ; $693e: $f5
    ret                                           ; $693f: $c9


    ld d, e                                       ; $6940: $53
    sub [hl]                                      ; $6941: $96
    or $bc                                        ; $6942: $f6 $bc
    db $fc                                        ; $6944: $fc
    ld e, d                                       ; $6945: $5a
    ld a, $da                                     ; $6946: $3e $da
    ld a, l                                       ; $6948: $7d
    or a                                          ; $6949: $b7
    ld hl, sp+$15                                 ; $694a: $f8 $15
    cp c                                          ; $694c: $b9
    inc d                                         ; $694d: $14
    xor h                                         ; $694e: $ac
    sbc e                                         ; $694f: $9b
    sbc d                                         ; $6950: $9a
    ret z                                         ; $6951: $c8

    inc h                                         ; $6952: $24
    add hl, bc                                    ; $6953: $09
    ld h, c                                       ; $6954: $61
    db $db                                        ; $6955: $db

jr_029_6956:
    add hl, sp                                    ; $6956: $39
    ld d, $b2                                     ; $6957: $16 $b2
    ld a, $79                                     ; $6959: $3e $79
    jp z, $9ed2                                   ; $695b: $ca $d2 $9e

    sub a                                         ; $695e: $97
    ld e, a                                       ; $695f: $5f
    rst $30                                       ; $6960: $f7
    rst $28                                       ; $6961: $ef
    ld [hl], h                                    ; $6962: $74
    ld e, [hl]                                    ; $6963: $5e
    ld c, h                                       ; $6964: $4c
    ld h, a                                       ; $6965: $67
    db $dd                                        ; $6966: $dd
    db $d3                                        ; $6967: $d3
    ld l, a                                       ; $6968: $6f
    ld [de], a                                    ; $6969: $12
    ld [hl], a                                    ; $696a: $77
    sub l                                         ; $696b: $95
    sub c                                         ; $696c: $91
    sbc a                                         ; $696d: $9f
    sbc l                                         ; $696e: $9d
    ld [hl-], a                                   ; $696f: $32
    cpl                                           ; $6970: $2f
    cp a                                          ; $6971: $bf
    ld a, [hl+]                                   ; $6972: $2a
    jp $6930                                      ; $6973: $c3 $30 $69


    ld d, l                                       ; $6976: $55
    ld b, [hl]                                    ; $6977: $46
    add [hl]                                      ; $6978: $86
    jr nc, jr_029_6956                            ; $6979: $30 $db

    add hl, sp                                    ; $697b: $39
    rst $00                                       ; $697c: $c7
    ld l, c                                       ; $697d: $69
    sbc b                                         ; $697e: $98
    ld b, $96                                     ; $697f: $06 $96
    ld [hl], d                                    ; $6981: $72
    add e                                         ; $6982: $83
    ld c, e                                       ; $6983: $4b
    ld [$4b29], a                                 ; $6984: $ea $29 $4b
    ld a, e                                       ; $6987: $7b
    rst $00                                       ; $6988: $c7
    rlc a                                         ; $6989: $cb $07

jr_029_698b:
    add hl, hl                                    ; $698b: $29
    ld c, l                                       ; $698c: $4d
    dec c                                         ; $698d: $0d
    halt                                          ; $698e: $76
    ld b, $55                                     ; $698f: $06 $55
    ld l, [hl]                                    ; $6991: $6e
    jp nc, $cec0                                  ; $6992: $d2 $c0 $ce

    and b                                         ; $6995: $a0
    jp z, Jump_000_126f                           ; $6996: $ca $6f $12

    jp nz, Jump_000_39db                          ; $6999: $c2 $db $39

    ld d, $b2                                     ; $699c: $16 $b2
    ld a, $79                                     ; $699e: $3e $79
    jp z, Jump_029_5ed2                           ; $69a0: $ca $d2 $5e

    xor b                                         ; $69a3: $a8
    call nc, $a4ec                                ; $69a4: $d4 $ec $a4
    or h                                          ; $69a7: $b4
    cp $ba                                        ; $69a8: $fe $ba
    and a                                         ; $69aa: $a7
    rst $18                                       ; $69ab: $df
    inc h                                         ; $69ac: $24
    ld b, b                                       ; $69ad: $40
    jr jr_029_698b                                ; $69ae: $18 $db

    add hl, sp                                    ; $69b0: $39
    dec a                                         ; $69b1: $3d
    jp z, $bf8f                                   ; $69b2: $ca $8f $bf

    ld e, [hl]                                    ; $69b5: $5e
    sub l                                         ; $69b6: $95
    pop af                                        ; $69b7: $f1
    dec h                                         ; $69b8: $25
    ld [hl], a                                    ; $69b9: $77
    ret                                           ; $69ba: $c9


    ld a, [$cfe4]                                 ; $69bb: $fa $e4 $cf
    halt                                          ; $69be: $76
    ld e, h                                       ; $69bf: $5c
    call z, $f75c                                 ; $69c0: $cc $5c $f7
    db $e4                                        ; $69c3: $e4
    reti                                          ; $69c4: $d9


    dec bc                                        ; $69c5: $0b
    jp nz, Jump_000_39db                          ; $69c6: $c2 $db $39

    rst $00                                       ; $69c9: $c7
    ld e, h                                       ; $69ca: $5c
    xor b                                         ; $69cb: $a8
    jp nc, $f2fa                                  ; $69cc: $d2 $fa $f2

    ld l, h                                       ; $69cf: $6c
    sbc l                                         ; $69d0: $9d
    dec de                                        ; $69d1: $1b
    halt                                          ; $69d2: $76
    ld [c], a                                     ; $69d3: $e2
    xor a                                         ; $69d4: $af
    ld [hl-], a                                   ; $69d5: $32
    ld [hl], d                                    ; $69d6: $72
    add hl, hl                                    ; $69d7: $29
    ld e, b                                       ; $69d8: $58
    ld b, a                                       ; $69d9: $47
    or d                                          ; $69da: $b2
    di                                            ; $69db: $f3
    ld [c], a                                     ; $69dc: $e2
    rst $30                                       ; $69dd: $f7
    ld h, c                                       ; $69de: $61

jr_029_69df:
    ld l, c                                       ; $69df: $69
    rst $28                                       ; $69e0: $ef
    ld l, b                                       ; $69e1: $68
    db $d3                                        ; $69e2: $d3

jr_029_69e3:
    ld c, [hl]                                    ; $69e3: $4e
    scf                                           ; $69e4: $37
    db $ed                                        ; $69e5: $ed
    sub a                                         ; $69e6: $97
    ld [hl], l                                    ; $69e7: $75
    scf                                           ; $69e8: $37
    add b                                         ; $69e9: $80
    jr nc, @-$23                                  ; $69ea: $30 $db

    add hl, sp                                    ; $69ec: $39
    rst $00                                       ; $69ed: $c7
    ld l, c                                       ; $69ee: $69
    sbc b                                         ; $69ef: $98
    ld b, $06                                     ; $69f0: $06 $06
    ld d, c                                       ; $69f2: $51
    sbc e                                         ; $69f3: $9b
    sub a                                         ; $69f4: $97
    and l                                         ; $69f5: $a5
    dec a                                         ; $69f6: $3d
    cpl                                           ; $69f7: $2f
    cp a                                          ; $69f8: $bf
    sub [hl]                                      ; $69f9: $96
    rst $10                                       ; $69fa: $d7
    or l                                          ; $69fb: $b5
    cp h                                          ; $69fc: $bc
    ld [hl], h                                    ; $69fd: $74
    sbc [hl]                                      ; $69fe: $9e
    ld a, h                                       ; $69ff: $7c
    ld l, c                                       ; $6a00: $69
    xor a                                         ; $6a01: $af
    sbc e                                         ; $6a02: $9b
    ld h, h                                       ; $6a03: $64
    ld hl, sp-$7e                                 ; $6a04: $f8 $82
    jr nc, jr_029_69e3                            ; $6a06: $30 $db

    add hl, sp                                    ; $6a08: $39
    rst $00                                       ; $6a09: $c7
    add d                                         ; $6a0a: $82
    ld l, e                                       ; $6a0b: $6b
    dec sp                                        ; $6a0c: $3b
    ld e, [hl]                                    ; $6a0d: $5e
    jr z, jr_029_69df                             ; $6a0e: $28 $cf

    and $e5                                       ; $6a10: $e6 $e5
    rst $10                                       ; $6a12: $d7
    dec l                                         ; $6a13: $2d
    jp $baf0                                      ; $6a14: $c3 $f0 $ba


    rst $38                                       ; $6a17: $ff
    cpl                                           ; $6a18: $2f
    ld l, c                                       ; $6a19: $69
    rst $00                                       ; $6a1a: $c7
    ld [hl], d                                    ; $6a1b: $72
    add sp, -$44                                  ; $6a1c: $e8 $bc
    call c, $c9f0                                 ; $6a1e: $dc $f0 $c9
    dec [hl]                                      ; $6a21: $35
    xor [hl]                                      ; $6a22: $ae
    ld e, e                                       ; $6a23: $5b
    ld d, c                                       ; $6a24: $51
    add hl, bc                                    ; $6a25: $09
    ld bc, $db61                                  ; $6a26: $01 $61 $db
    add hl, sp                                    ; $6a29: $39
    ld d, $b2                                     ; $6a2a: $16 $b2
    ld a, $79                                     ; $6a2c: $3e $79
    jp z, Jump_029_5ed2                           ; $6a2e: $ca $d2 $5e

jr_029_6a31:
    or a                                          ; $6a31: $b7
    ld a, [c]                                     ; $6a32: $f2
    cpl                                           ; $6a33: $2f
    sub a                                         ; $6a34: $97
    add d                                         ; $6a35: $82
    ld [hl], l                                    ; $6a36: $75
    dec hl                                        ; $6a37: $2b
    ld a, [hl+]                                   ; $6a38: $2a
    ld hl, $0c20                                  ; $6a39: $21 $20 $0c
    db $db                                        ; $6a3c: $db
    add hl, sp                                    ; $6a3d: $39
    ld b, a                                       ; $6a3e: $47
    add hl, de                                    ; $6a3f: $19
    cpl                                           ; $6a40: $2f
    add hl, hl                                    ; $6a41: $29
    ld c, e                                       ; $6a42: $4b
    ld a, e                                       ; $6a43: $7b
    or l                                          ; $6a44: $b5
    ld l, [hl]                                    ; $6a45: $6e
    ld b, l                                       ; $6a46: $45
    dec h                                         ; $6a47: $25
    ld e, h                                       ; $6a48: $5c
    xor a                                         ; $6a49: $af
    inc [hl]                                      ; $6a4a: $34
    or d                                          ; $6a4b: $b2
    ld d, e                                       ; $6a4c: $53
    ld a, c                                       ; $6a4d: $79
    ld e, d                                       ; $6a4e: $5a
    or a                                          ; $6a4f: $b7
    ld a, [c]                                     ; $6a50: $f2
    rrca                                          ; $6a51: $0f
    ld e, a                                       ; $6a52: $5f
    ld b, e                                       ; $6a53: $43
    jr jr_029_6a31                                ; $6a54: $18 $db

    add hl, sp                                    ; $6a56: $39
    rst $00                                       ; $6a57: $c7
    and l                                         ; $6a58: $a5
    ld hl, $6cf6                                  ; $6a59: $21 $f6 $6c
    ld e, [hl]                                    ; $6a5c: $5e
    ld a, [hl]                                    ; $6a5d: $7e
    dec l                                         ; $6a5e: $2d
    ld e, c                                       ; $6a5f: $59
    db $dd                                        ; $6a60: $dd
    rst $30                                       ; $6a61: $f7
    ld h, [hl]                                    ; $6a62: $66
    halt                                          ; $6a63: $76
    jp z, $fcbc                                   ; $6a64: $ca $bc $fc

    ld c, [hl]                                    ; $6a67: $4e
    ld a, a                                       ; $6a68: $7f
    dec sp                                        ; $6a69: $3b
    dec h                                         ; $6a6a: $25
    ld d, h                                       ; $6a6b: $54
    cp a                                          ; $6a6c: $bf
    ld c, c                                       ; $6a6d: $49
    ld c, e                                       ; $6a6e: $4b
    ld a, e                                       ; $6a6f: $7b
    xor l                                         ; $6a70: $ad
    ld a, [de]                                    ; $6a71: $1a
    nop                                           ; $6a72: $00
    jp nz, Jump_000_39db                          ; $6a73: $c2 $db $39

    rst $00                                       ; $6a76: $c7
    ld l, c                                       ; $6a77: $69
    sbc b                                         ; $6a78: $98
    ld b, $16                                     ; $6a79: $06 $16
    ld e, h                                       ; $6a7b: $5c
    dec h                                         ; $6a7c: $25
    rst $28                                       ; $6a7d: $ef
    dec de                                        ; $6a7e: $1b
    and d                                         ; $6a7f: $a2
    ld [hl], $2f                                  ; $6a80: $36 $2f
    ld l, b                                       ; $6a82: $68
    daa                                           ; $6a83: $27
    sbc $18                                       ; $6a84: $de $18
    sbc a                                         ; $6a86: $9f
    call $2fcb                                    ; $6a87: $cd $cb $2f
    cp b                                          ; $6a8a: $b8
    ld c, d                                       ; $6a8b: $4a
    cp [hl]                                       ; $6a8c: $be
    sub $a7                                       ; $6a8d: $d6 $a7
    ldh [$82], a                                  ; $6a8f: $e0 $82
    cpl                                           ; $6a91: $2f
    db $ed                                        ; $6a92: $ed
    sbc l                                         ; $6a93: $9d
    pop de                                        ; $6a94: $d1
    jp hl                                         ; $6a95: $e9


    cp h                                          ; $6a96: $bc
    db $ec                                        ; $6a97: $ec
    ld l, b                                       ; $6a98: $68
    dec d                                         ; $6a99: $15
    ld a, [c]                                     ; $6a9a: $f2
    inc h                                         ; $6a9b: $24
    add h                                         ; $6a9c: $84
    ld bc, $39db                                  ; $6a9d: $01 $db $39
    rst $00                                       ; $6aa0: $c7
    ld e, l                                       ; $6aa1: $5d
    ld bc, $e75f                                  ; $6aa2: $01 $5f $e7
    dec b                                         ; $6aa5: $05
    sub d                                         ; $6aa6: $92
    and $39                                       ; $6aa7: $e6 $39
    dec sp                                        ; $6aa9: $3b
    ld [hl], $d3                                  ; $6aaa: $36 $d3
    ld c, d                                       ; $6aac: $4a
    ld [de], a                                    ; $6aad: $12
    ld h, b                                       ; $6aae: $60
    ld e, [hl]                                    ; $6aaf: $5e
    ld a, [hl]                                    ; $6ab0: $7e
    ld b, a                                       ; $6ab1: $47
    ld a, c                                       ; $6ab2: $79
    ld d, h                                       ; $6ab3: $54
    ld a, [c]                                     ; $6ab4: $f2
    ld e, e                                       ; $6ab5: $5b
    dec l                                         ; $6ab6: $2d
    ld l, c                                       ; $6ab7: $69
    cp d                                          ; $6ab8: $ba
    or [hl]                                       ; $6ab9: $b6
    ld h, h                                       ; $6aba: $64
    add [hl]                                      ; $6abb: $86
    ldh [$b7], a                                  ; $6abc: $e0 $b7
    xor d                                         ; $6abe: $aa
    inc hl                                        ; $6abf: $23
    inc c                                         ; $6ac0: $0c
    db $db                                        ; $6ac1: $db
    add hl, sp                                    ; $6ac2: $39
    db $dd                                        ; $6ac3: $dd
    jp z, $87a5                                   ; $6ac4: $ca $a5 $87

    rra                                           ; $6ac7: $1f
    ld a, a                                       ; $6ac8: $7f
    add hl, sp                                    ; $6ac9: $39
    xor d                                         ; $6aca: $aa
    or b                                          ; $6acb: $b0
    pop af                                        ; $6acc: $f1
    dec h                                         ; $6acd: $25
    rst $00                                       ; $6ace: $c7
    ld l, $54                                     ; $6acf: $2e $54
    ld l, c                                       ; $6ad1: $69
    ld a, l                                       ; $6ad2: $7d
    ld a, c                                       ; $6ad3: $79
    ld [hl], $2f                                  ; $6ad4: $36 $2f
    ccf                                           ; $6ad6: $3f
    inc bc                                        ; $6ad7: $03
    rrca                                          ; $6ad8: $0f
    ld c, e                                       ; $6ad9: $4b
    ld a, e                                       ; $6ada: $7b
    db $dd                                        ; $6adb: $dd
    sub e                                         ; $6adc: $93
    ld h, a                                       ; $6add: $67
    cpl                                           ; $6ade: $2f
    rst $08                                       ; $6adf: $cf
    halt                                          ; $6ae0: $76
    call c, $6f95                                 ; $6ae1: $dc $95 $6f
    ld l, e                                       ; $6ae4: $6b
    adc h                                         ; $6ae5: $8c
    dec sp                                        ; $6ae6: $3b
    ld [hl], $08                                  ; $6ae7: $36 $08
    nop                                           ; $6ae9: $00
    ld h, c                                       ; $6aea: $61
    db $db                                        ; $6aeb: $db
    add hl, sp                                    ; $6aec: $39
    rst $00                                       ; $6aed: $c7
    and l                                         ; $6aee: $a5
    ld hl, $b2f6                                  ; $6aef: $21 $f6 $b2
    or h                                          ; $6af2: $b4
    rst $20                                       ; $6af3: $e7
    push hl                                       ; $6af4: $e5
    rst $10                                       ; $6af5: $d7
    sub d                                         ; $6af6: $92
    push de                                       ; $6af7: $d5
    ld a, l                                       ; $6af8: $7d
    ld l, a                                       ; $6af9: $6f
    ld h, [hl]                                    ; $6afa: $66
    and a                                         ; $6afb: $a7
    db $ec                                        ; $6afc: $ec
    sbc b                                         ; $6afd: $98
    dec bc                                        ; $6afe: $0b
    ld l, $0f                                     ; $6aff: $2e $0f
    ldh a, [$6c]                                  ; $6b01: $f0 $6c
    dec a                                         ; $6b03: $3d
    xor a                                         ; $6b04: $af
    ld d, a                                       ; $6b05: $57
    push hl                                       ; $6b06: $e5
    ld bc, $db61                                  ; $6b07: $01 $61 $db
    add hl, sp                                    ; $6b0a: $39
    db $dd                                        ; $6b0b: $dd
    db $e4                                        ; $6b0c: $e4

jr_029_6b0d:
    reti                                          ; $6b0d: $d9


    push af                                       ; $6b0e: $f5
    ld h, a                                       ; $6b0f: $67
    db $e3                                        ; $6b10: $e3
    xor a                                         ; $6b11: $af
    sub a                                         ; $6b12: $97
    ld a, c                                       ; $6b13: $79
    ld sp, hl                                     ; $6b14: $f9
    ld e, l                                       ; $6b15: $5d
    or d                                          ; $6b16: $b2
    ld a, $f9                                     ; $6b17: $3e $f9
    ld c, l                                       ; $6b19: $4d
    ld e, d                                       ; $6b1a: $5a
    jp c, $950b                                   ; $6b1b: $da $0b $95

    sbc d                                         ; $6b1e: $9a
    add hl, de                                    ; $6b1f: $19
    ld [$57c4], a                                 ; $6b20: $ea $c4 $57
    ld d, b                                       ; $6b23: $50
    ld a, [c]                                     ; $6b24: $f2
    sbc l                                         ; $6b25: $9d
    ld [hl], a                                    ; $6b26: $77
    adc c                                         ; $6b27: $89
    jp $94c3                                      ; $6b28: $c3 $c3 $94


    ret c                                         ; $6b2b: $d8

    jp z, Jump_029_7873                           ; $6b2c: $ca $73 $78

    ld b, b                                       ; $6b2f: $40
    jr jr_029_6b0d                                ; $6b30: $18 $db

    add hl, sp                                    ; $6b32: $39
    daa                                           ; $6b33: $27
    ld e, [hl]                                    ; $6b34: $5e
    ld a, [bc]                                    ; $6b35: $0a
    halt                                          ; $6b36: $76
    sub h                                         ; $6b37: $94
    ld a, b                                       ; $6b38: $78
    ld sp, $8352                                  ; $6b39: $31 $52 $83
    dec d                                         ; $6b3c: $15
    adc l                                         ; $6b3d: $8d
    or $e0                                        ; $6b3e: $f6 $e0
    add d                                         ; $6b40: $82
    cp a                                          ; $6b41: $bf
    and b                                         ; $6b42: $a0
    dec e                                         ; $6b43: $1d
    and e                                         ; $6b44: $a3
    ld d, d                                       ; $6b45: $52
    rra                                           ; $6b46: $1f
    and h                                         ; $6b47: $a4
    ld d, h                                       ; $6b48: $54
    cpl                                           ; $6b49: $2f
    rrca                                          ; $6b4a: $0f
    jr nc, jr_029_6b72                            ; $6b4b: $30 $25

    ld [hl], $2f                                  ; $6b4d: $36 $2f
    cp a                                          ; $6b4f: $bf
    and a                                         ; $6b50: $a7
    rrca                                          ; $6b51: $0f
    sbc e                                         ; $6b52: $9b
    and l                                         ; $6b53: $a5
    cp l                                          ; $6b54: $bd
    sub e                                         ; $6b55: $93
    ld e, a                                       ; $6b56: $5f
    ld [c], a                                     ; $6b57: $e2
    dec h                                         ; $6b58: $25
    add h                                         ; $6b59: $84
    ld bc, $39db                                  ; $6b5a: $01 $db $39
    dec l                                         ; $6b5d: $2d
    ld c, a                                       ; $6b5e: $4f
    ld a, $cf                                     ; $6b5f: $3e $cf
    dec e                                         ; $6b61: $1d
    push bc                                       ; $6b62: $c5
    or c                                          ; $6b63: $b1
    xor [hl]                                      ; $6b64: $ae
    ld l, l                                       ; $6b65: $6d
    and l                                         ; $6b66: $a5
    reti                                          ; $6b67: $d9


    add hl, hl                                    ; $6b68: $29
    xor e                                         ; $6b69: $ab
    rst $38                                       ; $6b6a: $ff
    ld [hl], a                                    ; $6b6b: $77
    ld l, $05                                     ; $6b6c: $2e $05
    ld l, e                                       ; $6b6e: $6b
    jp hl                                         ; $6b6f: $e9


    sub h                                         ; $6b70: $94
    ld c, e                                       ; $6b71: $4b

jr_029_6b72:
    inc e                                         ; $6b72: $1c
    ld e, $76                                     ; $6b73: $1e $76
    ld l, c                                       ; $6b75: $69
    push hl                                       ; $6b76: $e5
    jp nz, $5ada                                  ; $6b77: $c2 $da $5a

    push de                                       ; $6b7a: $d5
    rla                                           ; $6b7b: $17
    xor b                                         ; $6b7c: $a8
    or b                                          ; $6b7d: $b0
    daa                                           ; $6b7e: $27
    add h                                         ; $6b7f: $84
    ld bc, $39db                                  ; $6b80: $01 $db $39
    rst $00                                       ; $6b83: $c7
    ld l, c                                       ; $6b84: $69
    sbc b                                         ; $6b85: $98
    ld b, $66                                     ; $6b86: $06 $66
    and a                                         ; $6b88: $a7
    call z, Call_029_7eb5                         ; $6b89: $cc $b5 $7e
    add hl, hl                                    ; $6b8c: $29
    ld e, b                                       ; $6b8d: $58
    jp c, Jump_029_53f6                           ; $6b8e: $da $f6 $53

    push af                                       ; $6b91: $f5
    ld d, e                                       ; $6b92: $53
    rra                                           ; $6b93: $1f
    and l                                         ; $6b94: $a5
    sub a                                         ; $6b95: $97
    ld c, e                                       ; $6b96: $4b
    pop bc                                        ; $6b97: $c1
    sub h                                         ; $6b98: $94
    ret c                                         ; $6b99: $d8

    ld a, [hl+]                                   ; $6b9a: $2a
    inc hl                                        ; $6b9b: $23
    ld [hl], b                                    ; $6b9c: $70
    add hl, hl                                    ; $6b9d: $29
    ret c                                         ; $6b9e: $d8

    dec h                                         ; $6b9f: $25
    jp z, $c9ea                                   ; $6ba0: $ca $ea $c9

    rst $10                                       ; $6ba3: $d7
    ld l, [hl]                                    ; $6ba4: $6e
    ret nz                                        ; $6ba5: $c0

    sub l                                         ; $6ba6: $95
    ret c                                         ; $6ba7: $d8

    dec bc                                        ; $6ba8: $0b
    jr nz, jr_029_6bb7                            ; $6ba9: $20 $0c

    db $db                                        ; $6bab: $db
    add hl, sp                                    ; $6bac: $39
    dec a                                         ; $6bad: $3d
    dec h                                         ; $6bae: $25
    db $fd                                        ; $6baf: $fd
    rst $10                                       ; $6bb0: $d7
    inc hl                                        ; $6bb1: $23
    sub l                                         ; $6bb2: $95
    add c                                         ; $6bb3: $81
    ld h, a                                       ; $6bb4: $67
    add $f5                                       ; $6bb5: $c6 $f5

jr_029_6bb7:
    ret nc                                        ; $6bb7: $d0

    ld hl, sp-$40                                 ; $6bb8: $f8 $c0
    ld e, l                                       ; $6bba: $5d
    ld d, l                                       ; $6bbb: $55
    ld l, [hl]                                    ; $6bbc: $6e
    ld h, h                                       ; $6bbd: $64
    ld a, [c]                                     ; $6bbe: $f2
    ld d, h                                       ; $6bbf: $54
    add e                                         ; $6bc0: $83
    or l                                          ; $6bc1: $b5
    inc sp                                        ; $6bc2: $33
    db $eb                                        ; $6bc3: $eb
    jr nc, jr_029_6c10                            ; $6bc4: $30 $4a

    ld a, [hl]                                    ; $6bc6: $7e
    ld l, l                                       ; $6bc7: $6d
    dec h                                         ; $6bc8: $25
    ld a, d                                       ; $6bc9: $7a
    or [hl]                                       ; $6bca: $b6
    or $57                                        ; $6bcb: $f6 $57
    ld l, d                                       ; $6bcd: $6a
    ldh [$e7], a                                  ; $6bce: $e0 $e7
    push hl                                       ; $6bd0: $e5
    sbc e                                         ; $6bd1: $9b
    ld d, l                                       ; $6bd2: $55
    ld l, d                                       ; $6bd3: $6a
    ldh [$d9], a                                  ; $6bd4: $e0 $d9
    xor h                                         ; $6bd6: $ac
    add hl, de                                    ; $6bd7: $19
    ld e, [hl]                                    ; $6bd8: $5e
    cp a                                          ; $6bd9: $bf
    inc d                                         ; $6bda: $14
    jr nz, @+$0e                                  ; $6bdb: $20 $0c

    db $db                                        ; $6bdd: $db
    add hl, sp                                    ; $6bde: $39
    dec a                                         ; $6bdf: $3d
    cpl                                           ; $6be0: $2f
    pop de                                        ; $6be1: $d1
    set 2, d                                      ; $6be2: $cb $d2
    sbc [hl]                                      ; $6be4: $9e
    sub a                                         ; $6be5: $97
    rst $18                                       ; $6be6: $df
    ld d, c                                       ; $6be7: $51
    ld sp, $7df6                                  ; $6be8: $31 $f6 $7d
    inc l                                         ; $6beb: $2c
    dec b                                         ; $6bec: $05
    ld d, c                                       ; $6bed: $51
    adc c                                         ; $6bee: $89
    xor l                                         ; $6bef: $ad
    rst $20                                       ; $6bf0: $e7
    push hl                                       ; $6bf1: $e5
    xor b                                         ; $6bf2: $a8
    jp nz, $8c76                                  ; $6bf3: $c2 $76 $8c

    ld sp, hl                                     ; $6bf6: $f9
    jr jr_029_6c28                                ; $6bf7: $18 $2f

    dec b                                         ; $6bf9: $05

Call_029_6bfa:
    db $eb                                        ; $6bfa: $eb
    sub [hl]                                      ; $6bfb: $96
    ld h, c                                       ; $6bfc: $61
    rst $20                                       ; $6bfd: $e7
    db $fd                                        ; $6bfe: $fd
    ld a, [$5a4d]                                 ; $6bff: $fa $4d $5a
    jp c, $efeb                                   ; $6c02: $da $eb $ef

    ret nz                                        ; $6c05: $c0

    inc bc                                        ; $6c06: $03
    ld a, [$1845]                                 ; $6c07: $fa $45 $18
    db $db                                        ; $6c0a: $db
    add hl, sp                                    ; $6c0b: $39

jr_029_6c0c:
    rst $00                                       ; $6c0c: $c7
    ld b, l                                       ; $6c0d: $45
    dec c                                         ; $6c0e: $0d
    db $db                                        ; $6c0f: $db

jr_029_6c10:
    reti                                          ; $6c10: $d9


    jr z, jr_029_6c0c                             ; $6c11: $28 $f9

    ld hl, sp-$35                                 ; $6c13: $f8 $cb
    ld d, c                                       ; $6c15: $51
    add l                                         ; $6c16: $85
    db $ed                                        ; $6c17: $ed
    ret                                           ; $6c18: $c9


    ld e, a                                       ; $6c19: $5f
    ld e, h                                       ; $6c1a: $5c
    cpl                                           ; $6c1b: $2f
    cp l                                          ; $6c1c: $bd
    adc h                                         ; $6c1d: $8c
    cpl                                           ; $6c1e: $2f
    add hl, sp                                    ; $6c1f: $39
    xor e                                         ; $6c20: $ab
    jp nc, $f285                                  ; $6c21: $d2 $85 $f2

    ld l, h                                       ; $6c24: $6c
    add [hl]                                      ; $6c25: $86
    sbc [hl]                                      ; $6c26: $9e
    ld b, e                                       ; $6c27: $43

jr_029_6c28:
    rst $20                                       ; $6c28: $e7
    dec hl                                        ; $6c29: $2b
    ld a, a                                       ; $6c2a: $7f
    ld d, $9b                                     ; $6c2b: $16 $9b
    pop af                                        ; $6c2d: $f1
    push hl                                       ; $6c2e: $e5
    add $9f                                       ; $6c2f: $c6 $9f
    ld l, e                                       ; $6c31: $6b
    add a                                         ; $6c32: $87
    add hl, hl                                    ; $6c33: $29
    ld d, l                                       ; $6c34: $55
    sub a                                         ; $6c35: $97
    ld [bc], a                                    ; $6c36: $02
    add h                                         ; $6c37: $84
    ld bc, $39db                                  ; $6c38: $01 $db $39
    dec l                                         ; $6c3b: $2d
    cpl                                           ; $6c3c: $2f
    ld d, a                                       ; $6c3d: $57
    db $e3                                        ; $6c3e: $e3
    add d                                         ; $6c3f: $82
    ld l, h                                       ; $6c40: $6c
    rst $00                                       ; $6c41: $c7
    ld c, e                                       ; $6c42: $4b
    ld a, l                                       ; $6c43: $7d
    rst $10                                       ; $6c44: $d7
    ld l, a                                       ; $6c45: $6f
    adc h                                         ; $6c46: $8c
    cpl                                           ; $6c47: $2f
    ld [$db03], sp                                ; $6c48: $08 $03 $db
    add hl, sp                                    ; $6c4b: $39
    rst $00                                       ; $6c4c: $c7
    jp hl                                         ; $6c4d: $e9


    adc l                                         ; $6c4e: $8d
    rst $08                                       ; $6c4f: $cf
    and $b9                                       ; $6c50: $e6 $b9
    adc $0b                                       ; $6c52: $ce $0b
    jr jr_029_6cbb                                ; $6c54: $18 $65

    ccf                                           ; $6c56: $3f
    cpl                                           ; $6c57: $2f
    cp a                                          ; $6c58: $bf
    sub e                                         ; $6c59: $93
    cpl                                           ; $6c5a: $2f
    ld e, l                                       ; $6c5b: $5d
    ld [hl], b                                    ; $6c5c: $70
    ld l, c                                       ; $6c5d: $69
    sub [hl]                                      ; $6c5e: $96
    or $4e                                        ; $6c5f: $f6 $4e
    sub $e0                                       ; $6c61: $d6 $e0
    ld d, [hl]                                    ; $6c63: $56
    di                                            ; $6c64: $f3
    ld e, h                                       ; $6c65: $5c
    ld d, c                                       ; $6c66: $51
    db $eb                                        ; $6c67: $eb
    ld c, a                                       ; $6c68: $4f
    ld h, e                                       ; $6c69: $63
    ld e, h                                       ; $6c6a: $5c
    rst $20                                       ; $6c6b: $e7
    ld [hl], d                                    ; $6c6c: $72
    cp b                                          ; $6c6d: $b8
    rrca                                          ; $6c6e: $0f
    dec hl                                        ; $6c6f: $2b
    ld h, $54                                     ; $6c70: $26 $54
    ld a, [$8cd8]                                 ; $6c72: $fa $d8 $8c
    dec a                                         ; $6c75: $3d
    cp b                                          ; $6c76: $b8
    ld h, h                                       ; $6c77: $64
    di                                            ; $6c78: $f3
    inc c                                         ; $6c79: $0c
    ld h, c                                       ; $6c7a: $61
    db $db                                        ; $6c7b: $db
    add hl, sp                                    ; $6c7c: $39
    rst $00                                       ; $6c7d: $c7
    ld l, c                                       ; $6c7e: $69
    ld hl, sp+$6c                                 ; $6c7f: $f8 $6c
    halt                                          ; $6c81: $76
    jp z, $ade8                                   ; $6c82: $ca $e8 $ad

    cpl                                           ; $6c85: $2f
    adc e                                         ; $6c86: $8b

jr_029_6c87:
    xor a                                         ; $6c87: $af
    sub $4b                                       ; $6c88: $d6 $4b
    pop bc                                        ; $6c8a: $c1
    jp z, $9585                                   ; $6c8b: $ca $85 $95

    inc [hl]                                      ; $6c8e: $34
    ldh a, [$33]                                  ; $6c8f: $f0 $33
    db $e4                                        ; $6c91: $e4
    scf                                           ; $6c92: $37
    ld c, [hl]                                    ; $6c93: $4e
    rst $10                                       ; $6c94: $d7
    xor l                                         ; $6c95: $ad
    xor b                                         ; $6c96: $a8
    add h                                         ; $6c97: $84
    ld l, e                                       ; $6c98: $6b
    ld l, e                                       ; $6c99: $6b
    ld d, l                                       ; $6c9a: $55
    or a                                          ; $6c9b: $b7
    xor a                                         ; $6c9c: $af
    inc a                                         ; $6c9d: $3c
    sbc e                                         ; $6c9e: $9b
    ld [de], a                                    ; $6c9f: $12
    sbc e                                         ; $6ca0: $9b
    sub a                                         ; $6ca1: $97
    sbc a                                         ; $6ca2: $9f
    ld h, h                                       ; $6ca3: $64
    jp c, $3fb3                                   ; $6ca4: $da $b3 $3f

    add $5d                                       ; $6ca7: $c6 $5d
    ld b, d                                       ; $6ca9: $42
    jr jr_029_6c87                                ; $6caa: $18 $db

    add hl, sp                                    ; $6cac: $39
    daa                                           ; $6cad: $27
    db $dd                                        ; $6cae: $dd
    ld a, [$b5b3]                                 ; $6caf: $fa $b3 $b5
    adc l                                         ; $6cb2: $8d
    ret nc                                        ; $6cb3: $d0

    and l                                         ; $6cb4: $a5
    ld h, b                                       ; $6cb5: $60
    ld [$f2f3], a                                 ; $6cb6: $ea $f3 $f2
    inc bc                                        ; $6cb9: $03
    rst $10                                       ; $6cba: $d7

jr_029_6cbb:
    ld a, [$720f]                                 ; $6cbb: $fa $0f $72
    and c                                         ; $6cbe: $a1
    xor c                                         ; $6cbf: $a9
    jp z, $fca0                                   ; $6cc0: $ca $a0 $fc

    ld d, h                                       ; $6cc3: $54
    ld b, h                                       ; $6cc4: $44
    add hl, hl                                    ; $6cc5: $29
    ld a, b                                       ; $6cc6: $78
    ld [hl], $cf                                  ; $6cc7: $36 $cf
    or l                                          ; $6cc9: $b5
    ld a, a                                       ; $6cca: $7f
    pop af                                        ; $6ccb: $f1
    ld a, [$674c]                                 ; $6ccc: $fa $4c $67
    rlca                                          ; $6ccf: $07
    ld e, $32                                     ; $6cd0: $1e $32
    cp a                                          ; $6cd2: $bf
    pop hl                                        ; $6cd3: $e1
    inc bc                                        ; $6cd4: $03
    jp nz, Jump_000_39db                          ; $6cd5: $c2 $db $39

    dec l                                         ; $6cd8: $2d
    ld l, d                                       ; $6cd9: $6a
    ld a, l                                       ; $6cda: $7d
    or [hl]                                       ; $6cdb: $b6
    ld d, b                                       ; $6cdc: $50
    xor c                                         ; $6cdd: $a9
    reti                                          ; $6cde: $d9


    ret                                           ; $6cdf: $c9


    ld h, $08                                     ; $6ce0: $26 $08
    ld [c], a                                     ; $6ce2: $e2
    jp $f2f8                                      ; $6ce3: $c3 $f8 $f2


    inc [hl]                                      ; $6ce6: $34
    dec e                                         ; $6ce7: $1d
    inc de                                        ; $6ce8: $13
    dec c                                         ; $6ce9: $0d
    sub d                                         ; $6cea: $92
    ld b, $7c                                     ; $6ceb: $06 $7c
    ld h, [hl]                                    ; $6ced: $66
    rst $20                                       ; $6cee: $e7
    reti                                          ; $6cef: $d9


    ld e, b                                       ; $6cf0: $58
    ld a, [c]                                     ; $6cf1: $f2
    or h                                          ; $6cf2: $b4
    and h                                         ; $6cf3: $a4
    jp hl                                         ; $6cf4: $e9


    jp c, Jump_029_55af                           ; $6cf5: $da $af $55

    sbc c                                         ; $6cf8: $99
    ld l, l                                       ; $6cf9: $6d
    ld h, d                                       ; $6cfa: $62
    ld e, h                                       ; $6cfb: $5c
    jp c, Jump_029_4303                           ; $6cfc: $da $03 $43

    ld l, l                                       ; $6cff: $6d
    push af                                       ; $6d00: $f5
    ld a, [c]                                     ; $6d01: $f2
    ld [bc], a                                    ; $6d02: $02
    ld [$db03], sp                                ; $6d03: $08 $03 $db
    add hl, sp                                    ; $6d06: $39
    db $dd                                        ; $6d07: $dd
    inc [hl]                                      ; $6d08: $34
    db $ec                                        ; $6d09: $ec
    add sp, $0d                                   ; $6d0a: $e8 $0d
    add sp, -$27                                  ; $6d0c: $e8 $d9
    inc a                                         ; $6d0e: $3c
    rla                                           ; $6d0f: $17
    xor a                                         ; $6d10: $af
    db $ed                                        ; $6d11: $ed

jr_029_6d12:
    di                                            ; $6d12: $f3
    ld a, [c]                                     ; $6d13: $f2
    ld l, e                                       ; $6d14: $6b
    ld [hl], c                                    ; $6d15: $71
    ld [hl], l                                    ; $6d16: $75
    db $e3                                        ; $6d17: $e3
    cp a                                          ; $6d18: $bf
    or h                                          ; $6d19: $b4
    rst $10                                       ; $6d1a: $d7
    ld a, [c]                                     ; $6d1b: $f2
    sub l                                         ; $6d1c: $95
    ld a, h                                       ; $6d1d: $7c
    push de                                       ; $6d1e: $d5
    ld c, h                                       ; $6d1f: $4c
    adc c                                         ; $6d20: $89
    call $c63f                                    ; $6d21: $cd $3f $c6
    sbc l                                         ; $6d24: $9d
    ld l, h                                       ; $6d25: $6c
    add d                                         ; $6d26: $82
    jr nz, @+$40                                  ; $6d27: $20 $3e

    call z, $fa8b                                 ; $6d29: $cc $8b $fa
    ld hl, sp-$35                                 ; $6d2c: $f8 $cb
    ld d, c                                       ; $6d2e: $51

Jump_029_6d2f:
    add l                                         ; $6d2f: $85
    pop bc                                        ; $6d30: $c1
    sbc [hl]                                      ; $6d31: $9e
    jp Jump_029_4705                              ; $6d32: $c3 $05 $47


    jr jr_029_6d12                                ; $6d35: $18 $db

    add hl, sp                                    ; $6d37: $39
    ld d, $b2                                     ; $6d38: $16 $b2
    ld a, $79                                     ; $6d3a: $3e $79
    jp z, $9ed2                                   ; $6d3c: $ca $d2 $9e

    sub a                                         ; $6d3f: $97
    ld e, a                                       ; $6d40: $5f
    dec bc                                        ; $6d41: $0b
    cp l                                          ; $6d42: $bd
    sub $13                                       ; $6d43: $d6 $13
    xor d                                         ; $6d45: $aa
    db $ec                                        ; $6d46: $ec
    inc a                                         ; $6d47: $3c
    jp nz, Jump_000_39db                          ; $6d48: $c2 $db $39

    ld h, a                                       ; $6d4b: $67
    ret nc                                        ; $6d4c: $d0

    xor l                                         ; $6d4d: $ad
    ld d, d                                       ; $6d4e: $52
    ld l, b                                       ; $6d4f: $68
    rst $08                                       ; $6d50: $cf
    and c                                         ; $6d51: $a1
    di                                            ; $6d52: $f3
    ld [c], a                                     ; $6d53: $e2
    ld l, b                                       ; $6d54: $68
    xor l                                         ; $6d55: $ad
    rra                                           ; $6d56: $1f
    dec sp                                        ; $6d57: $3b
    rst $08                                       ; $6d58: $cf
    ld b, $ef                                     ; $6d59: $06 $ef
    inc sp                                        ; $6d5b: $33
    sbc l                                         ; $6d5c: $9d
    add hl, de                                    ; $6d5d: $19
    cp d                                          ; $6d5e: $ba
    ld d, l                                       ; $6d5f: $55

Call_029_6d60:
    ld a, [bc]                                    ; $6d60: $0a
    ld c, l                                       ; $6d61: $4d
    ld e, $5e                                     ; $6d62: $1e $5e
    xor h                                         ; $6d64: $ac
    ld [$0937], a                                 ; $6d65: $ea $37 $09
    and $45                                       ; $6d68: $e6 $45
    jp nc, $2504                                  ; $6d6a: $d2 $04 $25

    adc l                                         ; $6d6d: $8d
    rst $28                                       ; $6d6e: $ef
    ld l, b                                       ; $6d6f: $68
    cp c                                          ; $6d70: $b9
    xor [hl]                                      ; $6d71: $ae
    sub a                                         ; $6d72: $97
    db $10                                        ; $6d73: $10
    ld b, $db                                     ; $6d74: $06 $db
    add hl, sp                                    ; $6d76: $39
    and a                                         ; $6d77: $a7
    ld d, d                                       ; $6d78: $52
    ld l, h                                       ; $6d79: $6c
    add $5f                                       ; $6d7a: $c6 $5f
    adc [hl]                                      ; $6d7c: $8e
    ld a, [hl+]                                   ; $6d7d: $2a
    ld l, h                                       ; $6d7e: $6c
    ld l, a                                       ; $6d7f: $6f
    ld a, l                                       ; $6d80: $7d
    sbc c                                         ; $6d81: $99
    rst $20                                       ; $6d82: $e7
    ret nz                                        ; $6d83: $c0

    adc b                                         ; $6d84: $88
    push af                                       ; $6d85: $f5
    ld e, d                                       ; $6d86: $5a
    ld a, a                                       ; $6d87: $7f
    cp d                                          ; $6d88: $ba
    sub e                                         ; $6d89: $93
    sbc $cb                                       ; $6d8a: $de $cb
    or l                                          ; $6d8c: $b5
    inc sp                                        ; $6d8d: $33
    or d                                          ; $6d8e: $b2
    xor c                                         ; $6d8f: $a9
    cp e                                          ; $6d90: $bb
    ld d, [hl]                                    ; $6d91: $56
    ld [hl], l                                    ; $6d92: $75
    add h                                         ; $6d93: $84
    ld bc, $39db                                  ; $6d94: $01 $db $39
    db $dd                                        ; $6d97: $dd
    ld a, $7e                                     ; $6d98: $3e $7e
    ld e, e                                       ; $6d9a: $5b
    call nc, $ad9f                                ; $6d9b: $d4 $9f $ad
    push af                                       ; $6d9e: $f5
    sub l                                         ; $6d9f: $95
    dec l                                         ; $6da0: $2d
    db $ed                                        ; $6da1: $ed
    ld a, c                                       ; $6da2: $79
    ld sp, hl                                     ; $6da3: $f9
    dec e                                         ; $6da4: $1d
    di                                            ; $6da5: $f3
    dec e                                         ; $6da6: $1d
    dec d                                         ; $6da7: $15
    rrca                                          ; $6da8: $0f
    sbc a                                         ; $6da9: $9f
    ld a, h                                       ; $6daa: $7c
    ld l, c                                       ; $6dab: $69
    rst $28                                       ; $6dac: $ef
    ld h, h                                       ; $6dad: $64
    dec c                                         ; $6dae: $0d
    ld l, [hl]                                    ; $6daf: $6e

Call_029_6db0:
    and l                                         ; $6db0: $a5
    ld [hl], c                                    ; $6db1: $71
    daa                                           ; $6db2: $27
    add hl, hl                                    ; $6db3: $29
    cp a                                          ; $6db4: $bf
    ld h, e                                       ; $6db5: $63
    ret                                           ; $6db6: $c9


    ld c, [hl]                                    ; $6db7: $4e
    xor c                                         ; $6db8: $a9
    ld a, $7c                                     ; $6db9: $3e $7c
    ld [hl], d                                    ; $6dbb: $72
    add h                                         ; $6dbc: $84
    ld bc, $39db                                  ; $6dbd: $01 $db $39
    rst $00                                       ; $6dc0: $c7
    call c, $0367                                 ; $6dc1: $dc $67 $03
    or l                                          ; $6dc4: $b5
    ld e, [hl]                                    ; $6dc5: $5e
    ld a, [bc]                                    ; $6dc6: $0a
    and [hl]                                      ; $6dc7: $a6
    dec sp                                        ; $6dc8: $3b
    reti                                          ; $6dc9: $d9


    inc b                                         ; $6dca: $04
    ld b, c                                       ; $6dcb: $41
    db $fc                                        ; $6dcc: $fc
    ld d, l                                       ; $6dcd: $55
    push hl                                       ; $6dce: $e5
    ld b, [hl]                                    ; $6dcf: $46
    ld [hl], $5b                                  ; $6dd0: $36 $5b
    ld [hl-], a                                   ; $6dd2: $32
    sbc h                                         ; $6dd3: $9c
    ld c, [hl]                                    ; $6dd4: $4e
    inc c                                         ; $6dd5: $0c
    add hl, hl                                    ; $6dd6: $29
    xor a                                         ; $6dd7: $af
    call $564e                                    ; $6dd8: $cd $4e $56
    ld a, [c]                                     ; $6ddb: $f2
    ld e, e                                       ; $6ddc: $5b
    and l                                         ; $6ddd: $a5
    inc a                                         ; $6dde: $3c
    jp nz, Jump_000_39db                          ; $6ddf: $c2 $db $39

    db $dd                                        ; $6de2: $dd
    ld l, a                                       ; $6de3: $6f
    jp nc, $2cbf                                  ; $6de4: $d2 $bf $2c

    db $ed                                        ; $6de7: $ed
    dec e                                         ; $6de8: $1d
    sbc a                                         ; $6de9: $9f
    db $ed                                        ; $6dea: $ed
    ld a, b                                       ; $6deb: $78
    ld l, c                                       ; $6dec: $69
    and a                                         ; $6ded: $a7
    rst $18                                       ; $6dee: $df
    and b                                         ; $6def: $a0
    jr c, @+$22                                   ; $6df0: $38 $20

    inc c                                         ; $6df2: $0c
    db $db                                        ; $6df3: $db
    add hl, sp                                    ; $6df4: $39
    db $dd                                        ; $6df5: $dd
    ld a, $7e                                     ; $6df6: $3e $7e
    ld e, e                                       ; $6df8: $5b
    call nc, $8d9f                                ; $6df9: $d4 $9f $8d
    cp a                                          ; $6dfc: $bf
    inc e                                         ; $6dfd: $1c
    ld d, l                                       ; $6dfe: $55
    ret c                                         ; $6dff: $d8

    ld hl, sp-$6e                                 ; $6e00: $f8 $92
    db $e3                                        ; $6e02: $e3
    dec d                                         ; $6e03: $15
    halt                                          ; $6e04: $76
    jp Jump_029_5c8e                              ; $6e05: $c3 $8e $5c


    ld c, b                                       ; $6e08: $48
    ld a, d                                       ; $6e09: $7a
    or [hl]                                       ; $6e0a: $b6
    halt                                          ; $6e0b: $76
    or e                                          ; $6e0c: $b3
    sub e                                         ; $6e0d: $93
    ld c, l                                       ; $6e0e: $4d
    db $10                                        ; $6e0f: $10
    call nz, $d987                                ; $6e10: $c4 $87 $d9
    add hl, hl                                    ; $6e13: $29
    dec hl                                        ; $6e14: $2b
    rla                                           ; $6e15: $17
    add $cb                                       ; $6e16: $c6 $cb
    push af                                       ; $6e18: $f5
    ld c, e                                       ; $6e19: $4b
    ld bc, $0c20                                  ; $6e1a: $01 $20 $0c
    db $db                                        ; $6e1d: $db
    add hl, sp                                    ; $6e1e: $39
    rst $00                                       ; $6e1f: $c7
    ld [hl], d                                    ; $6e20: $72
    add sp, -$44                                  ; $6e21: $e8 $bc
    ld hl, sp-$6e                                 ; $6e23: $f8 $92
    ld d, $6a                                     ; $6e25: $16 $6a
    ld [hl], b                                    ; $6e27: $70
    dec hl                                        ; $6e28: $2b
    adc l                                         ; $6e29: $8d
    ld l, e                                       ; $6e2a: $6b
    ld e, a                                       ; $6e2b: $5f
    ld h, c                                       ; $6e2c: $61
    add b                                         ; $6e2d: $80
    halt                                          ; $6e2e: $76
    call c, $f015                                 ; $6e2f: $dc $15 $f0
    ld a, c                                       ; $6e32: $79
    xor $b2                                       ; $6e33: $ee $b2
    daa                                           ; $6e35: $27
    cp a                                          ; $6e36: $bf
    halt                                          ; $6e37: $76
    or e                                          ; $6e38: $b3
    ldh a, [$95]                                  ; $6e39: $f0 $95
    ld l, $05                                     ; $6e3b: $2e $05
    ld c, e                                       ; $6e3d: $4b
    ld a, e                                       ; $6e3e: $7b
    ld b, a                                       ; $6e3f: $47
    sbc c                                         ; $6e40: $99
    ret nz                                        ; $6e41: $c0

    ld c, b                                       ; $6e42: $48
    inc sp                                        ; $6e43: $33
    ld c, b                                       ; $6e44: $48
    ld a, [bc]                                    ; $6e45: $0a
    db $10                                        ; $6e46: $10
    ld b, $db                                     ; $6e47: $06 $db
    add hl, sp                                    ; $6e49: $39
    db $dd                                        ; $6e4a: $dd
    ld a, $7e                                     ; $6e4b: $3e $7e
    ld e, e                                       ; $6e4d: $5b
    call nc, $4d9f                                ; $6e4e: $d4 $9f $4d
    adc l                                         ; $6e51: $8d
    sub a                                         ; $6e52: $97
    sub h                                         ; $6e53: $94
    and l                                         ; $6e54: $a5
    cp l                                          ; $6e55: $bd
    jp c, Jump_029_4a71                           ; $6e56: $da $71 $4a

    xor [hl]                                      ; $6e59: $ae
    ldh [$b7], a                                  ; $6e5a: $e0 $b7
    jp c, $afd1                                   ; $6e5c: $da $d1 $af

    ldh [$30], a                                  ; $6e5f: $e0 $30
    dec h                                         ; $6e61: $25
    or [hl]                                       ; $6e62: $b6
    sbc [hl]                                      ; $6e63: $9e
    push hl                                       ; $6e64: $e5
    push hl                                       ; $6e65: $e5
    rst $20                                       ; $6e66: $e7
    cp c                                          ; $6e67: $b9
    db $e3                                        ; $6e68: $e3
    ld l, $b1                                     ; $6e69: $2e $b1
    push af                                       ; $6e6b: $f5
    jr z, @+$21                                   ; $6e6c: $28 $1f

    sub $10                                       ; $6e6e: $d6 $10
    ld b, $db                                     ; $6e70: $06 $db
    add hl, sp                                    ; $6e72: $39
    xor l                                         ; $6e73: $ad
    add hl, bc                                    ; $6e74: $09
    cp [hl]                                       ; $6e75: $be
    or h                                          ; $6e76: $b4
    rst $20                                       ; $6e77: $e7
    push hl                                       ; $6e78: $e5
    rst $10                                       ; $6e79: $d7
    inc de                                        ; $6e7a: $13
    push af                                       ; $6e7b: $f5
    ld b, h                                       ; $6e7c: $44
    and a                                         ; $6e7d: $a7
    and b                                         ; $6e7e: $a0
    push af                                       ; $6e7f: $f5
    pop de                                        ; $6e80: $d1
    di                                            ; $6e81: $f3
    ld [hl], d                                    ; $6e82: $72
    ld d, h                                       ; $6e83: $54
    ld h, c                                       ; $6e84: $61
    sub a                                         ; $6e85: $97
    add d                                         ; $6e86: $82
    push af                                       ; $6e87: $f5
    cp h                                          ; $6e88: $bc
    ld a, [c]                                     ; $6e89: $f2
    pop af                                        ; $6e8a: $f1
    ld bc, $ca76                                  ; $6e8b: $01 $76 $ca
    dec sp                                        ; $6e8e: $3b
    sbc a                                         ; $6e8f: $9f
    ld d, d                                       ; $6e90: $52
    rst $28                                       ; $6e91: $ef
    ld [hl], e                                    ; $6e92: $73
    dec e                                         ; $6e93: $1d
    ret                                           ; $6e94: $c9


    ld b, b                                       ; $6e95: $40
    inc [hl]                                      ; $6e96: $34
    ld e, h                                       ; $6e97: $5c
    xor l                                         ; $6e98: $ad
    rst $20                                       ; $6e99: $e7
    push af                                       ; $6e9a: $f5
    xor d                                         ; $6e9b: $aa
    ld e, h                                       ; $6e9c: $5c
    ld a, [bc]                                    ; $6e9d: $0a
    sub $9a                                       ; $6e9e: $d6 $9a
    ld b, [hl]                                    ; $6ea0: $46
    ld l, d                                       ; $6ea1: $6a
    ld [$db03], sp                                ; $6ea2: $08 $03 $db
    add hl, sp                                    ; $6ea5: $39
    rst $00                                       ; $6ea6: $c7
    ld l, c                                       ; $6ea7: $69
    sbc b                                         ; $6ea8: $98
    ld b, $16                                     ; $6ea9: $06 $16
    ld l, d                                       ; $6eab: $6a

jr_029_6eac:
    ld [hl], b                                    ; $6eac: $70
    dec hl                                        ; $6ead: $2b
    adc l                                         ; $6eae: $8d
    di                                            ; $6eaf: $f3
    ld a, [c]                                     ; $6eb0: $f2
    add hl, hl                                    ; $6eb1: $29
    rst $28                                       ; $6eb2: $ef
    or a                                          ; $6eb3: $b7
    cp d                                          ; $6eb4: $ba
    ld c, d                                       ; $6eb5: $4a
    ld [$db03], sp                                ; $6eb6: $08 $03 $db
    add hl, sp                                    ; $6eb9: $39
    dec a                                         ; $6eba: $3d
    xor a                                         ; $6ebb: $af
    ld d, a                                       ; $6ebc: $57
    ld h, l                                       ; $6ebd: $65
    ld a, h                                       ; $6ebe: $7c
    ret                                           ; $6ebf: $c9


    ld e, l                                       ; $6ec0: $5d
    or d                                          ; $6ec1: $b2
    ld a, $f9                                     ; $6ec2: $3e $f9
    or e                                          ; $6ec4: $b3
    ld a, c                                       ; $6ec5: $79
    ld sp, hl                                     ; $6ec6: $f9
    sbc l                                         ; $6ec7: $9d
    ld h, h                                       ; $6ec8: $64
    ld c, b                                       ; $6ec9: $48
    and c                                         ; $6eca: $a1
    jp z, Jump_000_23ce                           ; $6ecb: $ca $ce $23

    inc c                                         ; $6ece: $0c
    db $db                                        ; $6ecf: $db
    add hl, sp                                    ; $6ed0: $39
    db $dd                                        ; $6ed1: $dd
    ld a, $7e                                     ; $6ed2: $3e $7e
    ld e, e                                       ; $6ed4: $5b
    call nc, $ad9f                                ; $6ed5: $d4 $9f $ad
    push hl                                       ; $6ed8: $e5
    ld e, a                                       ; $6ed9: $5f
    and [hl]                                      ; $6eda: $a6
    call nz, $c6a6                                ; $6edb: $c4 $a6 $c6
    ld c, e                                       ; $6ede: $4b
    jp z, Jump_029_5ed2                           ; $6edf: $ca $d2 $5e

    db $ed                                        ; $6ee2: $ed
    inc c                                         ; $6ee3: $0c
    or d                                          ; $6ee4: $b2
    inc sp                                        ; $6ee5: $33
    ld [$052e], sp                                ; $6ee6: $08 $2e $05
    di                                            ; $6ee9: $f3
    ld a, [c]                                     ; $6eea: $f2
    dec sp                                        ; $6eeb: $3b
    adc $b8                                       ; $6eec: $ce $b8
    sub c                                         ; $6eee: $91
    xor a                                         ; $6eef: $af
    ld hl, $db0c                                  ; $6ef0: $21 $0c $db
    add hl, sp                                    ; $6ef3: $39
    ld b, a                                       ; $6ef4: $47
    ld d, c                                       ; $6ef5: $51
    ld [hl], l                                    ; $6ef6: $75
    sbc a                                         ; $6ef7: $9f
    ld a, h                                       ; $6ef8: $7c
    sub b                                         ; $6ef9: $90

jr_029_6efa:
    jp hl                                         ; $6efa: $e9


    dec b                                         ; $6efb: $05
    or h                                          ; $6efc: $b4
    ld a, c                                       ; $6efd: $79
    add hl, de                                    ; $6efe: $19
    ld e, a                                       ; $6eff: $5f
    ld [hl], d                                    ; $6f00: $72
    db $ed                                        ; $6f01: $ed
    ld d, a                                       ; $6f02: $57
    sbc a                                         ; $6f03: $9f
    sub a                                         ; $6f04: $97
    ld e, a                                       ; $6f05: $5f
    res 7, a                                      ; $6f06: $cb $bf
    xor h                                         ; $6f08: $ac
    sbc e                                         ; $6f09: $9b
    add $aa                                       ; $6f0a: $c6 $aa
    jr z, jr_029_6efa                             ; $6f0c: $28 $ec

    jp nc, Jump_029_5574                          ; $6f0e: $d2 $74 $55

    sub d                                         ; $6f11: $92
    ccf                                           ; $6f12: $3f
    ld hl, sp-$2e                                 ; $6f13: $f8 $d2
    ld e, $68                                     ; $6f15: $1e $68
    ld [hl], e                                    ; $6f17: $73
    add hl, hl                                    ; $6f18: $29
    jr jr_029_6f7f                                ; $6f19: $18 $64

    ld a, d                                       ; $6f1b: $7a
    ld b, c                                       ; $6f1c: $41
    jr jr_029_6efa                                ; $6f1d: $18 $db

    add hl, sp                                    ; $6f1f: $39
    daa                                           ; $6f20: $27
    sbc e                                         ; $6f21: $9b
    jr nz, jr_029_6eac                            ; $6f22: $20 $88

    cp a                                          ; $6f24: $bf
    rst $20                                       ; $6f25: $e7
    ret nc                                        ; $6f26: $d0

    ld a, c                                       ; $6f27: $79
    pop af                                        ; $6f28: $f1
    add hl, hl                                    ; $6f29: $29
    or c                                          ; $6f2a: $b1
    xor c                                         ; $6f2b: $a9
    pop af                                        ; $6f2c: $f1
    sub d                                         ; $6f2d: $92
    or d                                          ; $6f2e: $b2
    or h                                          ; $6f2f: $b4
    rla                                           ; $6f30: $17
    ld a, [hl+]                                   ; $6f31: $2a
    dec [hl]                                      ; $6f32: $35
    ld l, e                                       ; $6f33: $6b
    ld h, a                                       ; $6f34: $67
    sub $61                                       ; $6f35: $d6 $61
    sub a                                         ; $6f37: $97
    xor d                                         ; $6f38: $aa
    ld l, b                                       ; $6f39: $68
    ret c                                         ; $6f3a: $d8

    and l                                         ; $6f3b: $a5

Jump_029_6f3c:
    ld h, b                                       ; $6f3c: $60
    or l                                          ; $6f3d: $b5
    sub e                                         ; $6f3e: $93
    ld c, l                                       ; $6f3f: $4d
    db $10                                        ; $6f40: $10
    call nz, $f587                                ; $6f41: $c4 $87 $f5
    inc l                                         ; $6f44: $2c
    cp c                                          ; $6f45: $b9
    ld d, e                                       ; $6f46: $53
    jp nc, $f56f                                  ; $6f47: $d2 $6f $f5

    dec [hl]                                      ; $6f4a: $35
    add h                                         ; $6f4b: $84
    ld bc, $39db                                  ; $6f4c: $01 $db $39
    ld d, $b2                                     ; $6f4f: $16 $b2
    ld a, $79                                     ; $6f51: $3e $79
    jp z, $9ed2                                   ; $6f53: $ca $d2 $9e

    sub a                                         ; $6f56: $97
    rst $18                                       ; $6f57: $df
    ld sp, $8286                                  ; $6f58: $31 $86 $82

Jump_029_6f5b:
    halt                                          ; $6f5b: $76
    add [hl]                                      ; $6f5c: $86
    ld l, l                                       ; $6f5d: $6d
    add h                                         ; $6f5e: $84
    ld bc, $39db                                  ; $6f5f: $01 $db $39
    daa                                           ; $6f62: $27
    daa                                           ; $6f63: $27
    ld hl, sp+$6c                                 ; $6f64: $f8 $6c
    dec c                                         ; $6f66: $0d
    db $d3                                        ; $6f67: $d3
    ret nz                                        ; $6f68: $c0

    ld hl, sp-$35                                 ; $6f69: $f8 $cb
    ld d, c                                       ; $6f6b: $51
    add l                                         ; $6f6c: $85
    dec l                                         ; $6f6d: $2d
    db $ed                                        ; $6f6e: $ed
    ld l, c                                       ; $6f6f: $69
    adc h                                         ; $6f70: $8c
    di                                            ; $6f71: $f3
    dec de                                        ; $6f72: $1b
    ld a, $5a                                     ; $6f73: $3e $5a
    ld [hl], a                                    ; $6f75: $77
    dec d                                         ; $6f76: $15
    ld e, a                                       ; $6f77: $5f
    jp c, $f2f3                                   ; $6f78: $da $f3 $f2

    db $eb                                        ; $6f7b: $eb
    sub [hl]                                      ; $6f7c: $96
    ld b, [hl]                                    ; $6f7d: $46
    ld a, h                                       ; $6f7e: $7c

jr_029_6f7f:
    ld l, c                                       ; $6f7f: $69
    rst $28                                       ; $6f80: $ef
    call nz, $c14b                                ; $6f81: $c4 $4b $c1
    adc [hl]                                      ; $6f84: $8e
    ld [de], a                                    ; $6f85: $12
    cpl                                           ; $6f86: $2f
    ld b, [hl]                                    ; $6f87: $46
    db $10                                        ; $6f88: $10
    ld b, $db                                     ; $6f89: $06 $db
    add hl, sp                                    ; $6f8b: $39
    xor l                                         ; $6f8c: $ad
    xor a                                         ; $6f8d: $af
    ld l, h                                       ; $6f8e: $6c
    ld l, c                                       ; $6f8f: $69
    xor a                                         ; $6f90: $af
    and a                                         ; $6f91: $a7
    ld c, d                                       ; $6f92: $4a
    call z, Call_029_5eaa                         ; $6f93: $cc $aa $5e
    add e                                         ; $6f96: $83
    ld [hl], l                                    ; $6f97: $75
    ld c, e                                       ; $6f98: $4b
    ld b, e                                       ; $6f99: $43
    push de                                       ; $6f9a: $d5
    adc l                                         ; $6f9b: $8d
    call c, $77f5                                 ; $6f9c: $dc $f5 $77
    ld [hl], b                                    ; $6f9f: $70
    ld a, a                                       ; $6fa0: $7f
    db $fd                                        ; $6fa1: $fd
    xor a                                         ; $6fa2: $af
    rst $28                                       ; $6fa3: $ef
    push af                                       ; $6fa4: $f5
    ld [hl], a                                    ; $6fa5: $77
    ldh a, [$a1]                                  ; $6fa6: $f0 $a1
    add a                                         ; $6fa8: $87
    jr nz, jr_029_6fb7                            ; $6fa9: $20 $0c

    db $db                                        ; $6fab: $db
    add hl, sp                                    ; $6fac: $39
    db $dd                                        ; $6fad: $dd
    or e                                          ; $6fae: $b3
    ld h, e                                       ; $6faf: $63
    and d                                         ; $6fb0: $a2
    jp z, $be4e                                   ; $6fb1: $ca $4e $be

    ld [hl], h                                    ; $6fb4: $74
    pop bc                                        ; $6fb5: $c1
    ld e, a                                       ; $6fb6: $5f

jr_029_6fb7:
    ld h, [hl]                                    ; $6fb7: $66
    and a                                         ; $6fb8: $a7
    db $ec                                        ; $6fb9: $ec
    ld h, h                                       ; $6fba: $64
    dec c                                         ; $6fbb: $0d
    ld l, [hl]                                    ; $6fbc: $6e
    push bc                                       ; $6fbd: $c5
    sbc l                                         ; $6fbe: $9d
    halt                                          ; $6fbf: $76
    ld a, [hl-]                                   ; $6fc0: $3a
    ld a, c                                       ; $6fc1: $79
    ret                                           ; $6fc2: $c9


    sbc a                                         ; $6fc3: $9f
    xor l                                         ; $6fc4: $ad

jr_029_6fc5:
    cp a                                          ; $6fc5: $bf
    ld b, e                                       ; $6fc6: $43
    ei                                            ; $6fc7: $fb
    db $eb                                        ; $6fc8: $eb
    rrca                                          ; $6fc9: $0f
    ld h, c                                       ; $6fca: $61
    db $db                                        ; $6fcb: $db
    add hl, sp                                    ; $6fcc: $39
    db $dd                                        ; $6fcd: $dd
    jp z, Jump_029_7b7d                           ; $6fce: $ca $7d $7b

    ld l, c                                       ; $6fd1: $69
    xor a                                         ; $6fd2: $af
    rst $20                                       ; $6fd3: $e7
    push hl                                       ; $6fd4: $e5
    xor b                                         ; $6fd5: $a8
    jp nz, $b06a                                  ; $6fd6: $c2 $6a $b0

    ld l, [hl]                                    ; $6fd9: $6e
    ld l, c                                       ; $6fda: $69
    xor b                                         ; $6fdb: $a8
    cp d                                          ; $6fdc: $ba
    ld [hl], c                                    ; $6fdd: $71
    db $fd                                        ; $6fde: $fd
    dec e                                         ; $6fdf: $1d
    ld a, b                                       ; $6fe0: $78
    ldh [$a1], a                                  ; $6fe1: $e0 $a1
    db $eb                                        ; $6fe3: $eb
    ld a, e                                       ; $6fe4: $7b
    rlca                                          ; $6fe5: $07
    push af                                       ; $6fe6: $f5
    adc e                                         ; $6fe7: $8b
    jr nc, jr_029_6fc5                            ; $6fe8: $30 $db

    add hl, sp                                    ; $6fea: $39
    rst $00                                       ; $6feb: $c7
    ld l, c                                       ; $6fec: $69
    sbc b                                         ; $6fed: $98
    ld b, $66                                     ; $6fee: $06 $66
    and a                                         ; $6ff0: $a7
    xor h                                         ; $6ff1: $ac
    ld c, d                                       ; $6ff2: $4a
    ld a, [hl-]                                   ; $6ff3: $3a
    rst $18                                       ; $6ff4: $df
    cp h                                          ; $6ff5: $bc
    ld e, h                                       ; $6ff6: $5c
    ld a, [bc]                                    ; $6ff7: $0a
    and [hl]                                      ; $6ff8: $a6
    db $eb                                        ; $6ff9: $eb
    ld hl, $e319                                  ; $6ffa: $21 $19 $e3
    ld hl, sp-$6e                                 ; $6ffd: $f8 $92
    di                                            ; $6fff: $f3
    rla                                           ; $7000: $17
    ld c, c                                       ; $7001: $49
    cp c                                          ; $7002: $b9
    ldh a, [$6c]                                  ; $7003: $f0 $6c
    ld e, [hl]                                    ; $7005: $5e
    ld [de], a                                    ; $7006: $12
    ld a, [hl]                                    ; $7007: $7e
    sub l                                         ; $7008: $95
    inc h                                         ; $7009: $24
    ret nz                                        ; $700a: $c0

    and l                                         ; $700b: $a5
    ld h, b                                       ; $700c: $60
    ld e, [hl]                                    ; $700d: $5e
    ld a, [hl]                                    ; $700e: $7e

jr_029_700f:
    dec a                                         ; $700f: $3d
    sbc e                                         ; $7010: $9b
    rst $18                                       ; $7011: $df
    jp hl                                         ; $7012: $e9


    rst $10                                       ; $7013: $d7
    ld a, [$3082]                                 ; $7014: $fa $82 $30
    db $db                                        ; $7017: $db
    add hl, sp                                    ; $7018: $39
    rst $00                                       ; $7019: $c7
    ld e, l                                       ; $701a: $5d
    ld bc, $7f1f                                  ; $701b: $01 $1f $7f
    cp l                                          ; $701e: $bd
    ld a, [hl+]                                   ; $701f: $2a
    di                                            ; $7020: $f3
    ld e, h                                       ; $7021: $5c
    ei                                            ; $7022: $fb
    xor e                                         ; $7023: $ab
    inc c                                         ; $7024: $0c
    ld a, a                                       ; $7025: $7f
    daa                                           ; $7026: $27
    ld e, a                                       ; $7027: $5f
    cp d                                          ; $7028: $ba
    ldh [$2f], a                                  ; $7029: $e0 $2f
    or e                                          ; $702b: $b3
    ld d, e                                       ; $702c: $53
    halt                                          ; $702d: $76
    or d                                          ; $702e: $b2
    ld b, $b7                                     ; $702f: $06 $b7
    ld b, d                                       ; $7031: $42
    jr jr_029_700f                                ; $7032: $18 $db

    add hl, sp                                    ; $7034: $39
    rst $00                                       ; $7035: $c7
    ld l, c                                       ; $7036: $69
    sbc b                                         ; $7037: $98
    ld b, $66                                     ; $7038: $06 $66
    and a                                         ; $703a: $a7
    call z, $6325                                 ; $703b: $cc $25 $63
    inc e                                         ; $703e: $1c
    cp b                                          ; $703f: $b8
    ld h, c                                       ; $7040: $61
    rst $30                                       ; $7041: $f7
    ld bc, $5bad                                  ; $7042: $01 $ad $5b
    inc [hl]                                      ; $7045: $34
    db $ed                                        ; $7046: $ed
    or $b3                                        ; $7047: $f6 $b3
    ld a, c                                       ; $7049: $79
    adc [hl]                                      ; $704a: $8e
    cp l                                          ; $704b: $bd
    ld a, d                                       ; $704c: $7a
    add hl, de                                    ; $704d: $19
    ld e, a                                       ; $704e: $5f
    ld l, [hl]                                    ; $704f: $6e
    db $fc                                        ; $7050: $fc
    ld b, c                                       ; $7051: $41
    db $fd                                        ; $7052: $fd
    cp l                                          ; $7053: $bd

jr_029_7054:
    ld a, [hl+]                                   ; $7054: $2a
    sub a                                         ; $7055: $97
    add d                                         ; $7056: $82
    dec h                                         ; $7057: $25
    dec a                                         ; $7058: $3d
    jp nz, Jump_000_39db                          ; $7059: $c2 $db $39

    dec a                                         ; $705c: $3d
    cpl                                           ; $705d: $2f

Jump_029_705e:
    ld b, a                                       ; $705e: $47
    dec d                                         ; $705f: $15
    or [hl]                                       ; $7060: $b6
    ld l, [hl]                                    ; $7061: $6e
    push hl                                       ; $7062: $e5
    ld bc, $add6                                  ; $7063: $01 $d6 $ad
    ld l, b                                       ; $7066: $68
    ret c                                         ; $7067: $d8

    cp c                                          ; $7068: $b9
    ld c, c                                       ; $7069: $49
    db $eb                                        ; $706a: $eb
    rst $28                                       ; $706b: $ef
    and b                                         ; $706c: $a0
    ld a, [hl]                                    ; $706d: $7e
    rrca                                          ; $706e: $0f
    ld e, [hl]                                    ; $706f: $5e
    rst $18                                       ; $7070: $df
    db $eb                                        ; $7071: $eb
    rst $28                                       ; $7072: $ef
    and b                                         ; $7073: $a0
    ld b, e                                       ; $7074: $43
    rrca                                          ; $7075: $0f
    ld b, l                                       ; $7076: $45
    jr jr_029_7054                                ; $7077: $18 $db

    add hl, sp                                    ; $7079: $39
    dec a                                         ; $707a: $3d
    jp z, $9daf                                   ; $707b: $ca $af $9d

    call $92f8                                    ; $707e: $cd $f8 $92
    adc e                                         ; $7081: $8b
    rst $10                                       ; $7082: $d7
    ld a, [$610c]                                 ; $7083: $fa $0c $61
    db $db                                        ; $7086: $db
    add hl, sp                                    ; $7087: $39
    ld b, a                                       ; $7088: $47
    ld sp, hl                                     ; $7089: $f9
    ld c, a                                       ; $708a: $4f
    ld l, c                                       ; $708b: $69
    ld c, a                                       ; $708c: $4f
    ld a, [hl]                                    ; $708d: $7e
    push hl                                       ; $708e: $e5
    ld [hl], a                                    ; $708f: $77
    and $d3                                       ; $7090: $e6 $d3
    add a                                         ; $7092: $87
    ld l, c                                       ; $7093: $69
    ld h, b                                       ; $7094: $60
    dec a                                         ; $7095: $3d
    sbc [hl]                                      ; $7096: $9e
    ld e, h                                       ; $7097: $5c
    dec hl                                        ; $7098: $2b
    inc de                                        ; $7099: $13

jr_029_709a:
    ld [hl], l                                    ; $709a: $75
    ld c, d                                       ; $709b: $4a
    ld l, h                                       ; $709c: $6c
    ld h, b                                       ; $709d: $60
    call nz, $ad7a                                ; $709e: $c4 $7a $ad
    rst $08                                       ; $70a1: $cf
    cp b                                          ; $70a2: $b8
    di                                            ; $70a3: $f3
    sub d                                         ; $70a4: $92
    ld h, $28                                     ; $70a5: $26 $28
    cp e                                          ; $70a7: $bb
    jr nc, jr_029_709a                            ; $70a8: $30 $f0

    dec de                                        ; $70aa: $1b
    db $e3                                        ; $70ab: $e3
    ld a, [hl-]                                   ; $70ac: $3a
    ld b, [hl]                                    ; $70ad: $46
    ld a, [hl-]                                   ; $70ae: $3a
    pop af                                        ; $70af: $f1
    ld de, $db06                                  ; $70b0: $11 $06 $db
    add hl, sp                                    ; $70b3: $39
    and a                                         ; $70b4: $a7
    jp nc, $fdf7                                  ; $70b5: $d2 $f7 $fd

    call $ee33                                    ; $70b8: $cd $33 $ee
    adc d                                         ; $70bb: $8a
    add hl, bc                                    ; $70bc: $09
    dec sp                                        ; $70bd: $3b
    ld a, l                                       ; $70be: $7d
    or a                                          ; $70bf: $b7
    or l                                          ; $70c0: $b5
    xor d                                         ; $70c1: $aa
    ccf                                           ; $70c2: $3f
    dec de                                        ; $70c3: $1b
    ld a, a                                       ; $70c4: $7f
    cp l                                          ; $70c5: $bd
    ld a, [hl+]                                   ; $70c6: $2a
    db $e3                                        ; $70c7: $e3
    ld c, e                                       ; $70c8: $4b
    adc $4e                                       ; $70c9: $ce $4e
    ld b, e                                       ; $70cb: $43
    ld l, h                                       ; $70cc: $6c
    cp d                                          ; $70cd: $ba
    jp z, $cfc8                                   ; $70ce: $ca $c8 $cf

    ld c, [hl]                                    ; $70d1: $4e
    reti                                          ; $70d2: $d9


    ld sp, $41a2                                  ; $70d3: $31 $a2 $41
    jp nc, Jump_000_27ba                          ; $70d6: $d2 $ba $27

    rlca                                          ; $70d9: $07
    add h                                         ; $70da: $84
    ld bc, $39db                                  ; $70db: $01 $db $39
    ld d, $b9                                     ; $70de: $16 $b9
    ld d, b                                       ; $70e0: $50
    halt                                          ; $70e1: $76
    adc h                                         ; $70e2: $8c
    sbc b                                         ; $70e3: $98
    rr [hl]                                       ; $70e4: $cb $1e
    ld h, b                                       ; $70e6: $60
    ld a, h                                       ; $70e7: $7c
    ret                                           ; $70e8: $c9


    or c                                          ; $70e9: $b1
    dec bc                                        ; $70ea: $0b
    ld d, l                                       ; $70eb: $55
    ld e, d                                       ; $70ec: $5a
    ld e, a                                       ; $70ed: $5f
    sbc [hl]                                      ; $70ee: $9e
    call $afcb                                    ; $70ef: $cd $cb $af
    inc hl                                        ; $70f2: $23
    reti                                          ; $70f3: $d9


    ld a, c                                       ; $70f4: $79
    pop af                                        ; $70f5: $f1
    ei                                            ; $70f6: $fb
    or b                                          ; $70f7: $b0
    or h                                          ; $70f8: $b4
    ld [hl], a                                    ; $70f9: $77
    ld [hl], d                                    ; $70fa: $72
    ld h, $b1                                     ; $70fb: $26 $b1
    rst $20                                       ; $70fd: $e7
    ld de, $db06                                  ; $70fe: $11 $06 $db
    add hl, sp                                    ; $7101: $39
    db $dd                                        ; $7102: $dd
    ld l, a                                       ; $7103: $6f
    jp nc, $2cbf                                  ; $7104: $d2 $bf $2c

    db $ed                                        ; $7107: $ed
    or l                                          ; $7108: $b5
    cp [hl]                                       ; $7109: $be
    or h                                          ; $710a: $b4
    inc sp                                        ; $710b: $33
    ld h, [hl]                                    ; $710c: $66
    ret nc                                        ; $710d: $d0

    ld c, h                                       ; $710e: $4c
    adc c                                         ; $710f: $89
    xor l                                         ; $7110: $ad
    jp z, $bf18                                   ; $7111: $ca $18 $bf

    ld a, [c]                                     ; $7114: $f2
    sub h                                         ; $7115: $94
    and l                                         ; $7116: $a5
    cp l                                          ; $7117: $bd
    ld d, b                                       ; $7118: $50

jr_029_7119:
    xor c                                         ; $7119: $a9
    ld e, c                                       ; $711a: $59
    xor b                                         ; $711b: $a8
    pop bc                                        ; $711c: $c1
    xor l                                         ; $711d: $ad
    inc [hl]                                      ; $711e: $34
    adc $8e                                       ; $711f: $ce $8e
    ret                                           ; $7121: $c9


    cp a                                          ; $7122: $bf
    nop                                           ; $7123: $00
    jp nz, Jump_000_39db                          ; $7124: $c2 $db $39

    rst $00                                       ; $7127: $c7
    ld e, l                                       ; $7128: $5d
    ld bc, $9d5f                                  ; $7129: $01 $5f $9d
    sub d                                         ; $712c: $92
    and a                                         ; $712d: $a7
    ld e, c                                       ; $712e: $59
    ld l, a                                       ; $712f: $6f
    push hl                                       ; $7130: $e5
    scf                                           ; $7131: $37
    ld e, h                                       ; $7132: $5c
    jp c, Jump_029_463b                           ; $7133: $da $3b $46

    inc [hl]                                      ; $7136: $34
    ld c, b                                       ; $7137: $48
    ld e, d                                       ; $7138: $5a
    rst $30                                       ; $7139: $f7
    db $e4                                        ; $713a: $e4
    add b                                         ; $713b: $80
    jr nc, jr_029_7119                            ; $713c: $30 $db

    add hl, sp                                    ; $713e: $39
    rst $00                                       ; $713f: $c7
    and l                                         ; $7140: $a5
    ld hl, $6cf6                                  ; $7141: $21 $f6 $6c
    dec l                                         ; $7144: $2d
    ld a, d                                       ; $7145: $7a
    ret                                           ; $7146: $c9


    ld [hl], a                                    ; $7147: $77
    or d                                          ; $7148: $b2
    and c                                         ; $7149: $a1
    jr nz, @+$6d                                  ; $714a: $20 $6b

    or b                                          ; $714c: $b0
    sub $84                                       ; $714d: $d6 $84
    adc $75                                       ; $714f: $ce $75
    adc l                                         ; $7151: $8d
    or e                                          ; $7152: $b3
    ld d, e                                       ; $7153: $53
    halt                                          ; $7154: $76
    or d                                          ; $7155: $b2
    ld b, $b7                                     ; $7156: $06 $b7
    jp nc, $a3b8                                  ; $7158: $d2 $b8 $a3

    ld l, [hl]                                    ; $715b: $6e
    inc c                                         ; $715c: $0c
    sbc a                                         ; $715d: $9f
    inc e                                         ; $715e: $1c
    and [hl]                                      ; $715f: $a6
    call nz, $a166                                ; $7160: $c4 $66 $a1
    di                                            ; $7163: $f3
    adc h                                         ; $7164: $8c
    call c, $8407                                 ; $7165: $dc $07 $84
    ld bc, $39db                                  ; $7168: $01 $db $39
    rst $00                                       ; $716b: $c7
    ld e, l                                       ; $716c: $5d
    ld bc, $7f1f                                  ; $716d: $01 $1f $7f
    add hl, sp                                    ; $7170: $39
    xor d                                         ; $7171: $aa
    or b                                          ; $7172: $b0
    ld a, c                                       ; $7173: $79
    xor [hl]                                      ; $7174: $ae
    db $fd                                        ; $7175: $fd
    dec bc                                        ; $7176: $0b
    ld d, d                                       ; $7177: $52
    sbc [hl]                                      ; $7178: $9e
    xor l                                         ; $7179: $ad
    db $dd                                        ; $717a: $dd
    ld c, h                                       ; $717b: $4c
    ld l, c                                       ; $717c: $69
    ld b, a                                       ; $717d: $47
    reti                                          ; $717e: $d9


    ld [hl], d                                    ; $717f: $72
    dec hl                                        ; $7180: $2b
    and l                                         ; $7181: $a5
    dec e                                         ; $7182: $1d
    dec hl                                        ; $7183: $2b
    ld h, $ec                                     ; $7184: $26 $ec
    inc a                                         ; $7186: $3c
    add hl, sp                                    ; $7187: $39
    jp nz, Jump_000_39db                          ; $7188: $c2 $db $39

    rst $00                                       ; $718b: $c7
    ld e, l                                       ; $718c: $5d
    ld bc, $51df                                  ; $718d: $01 $df $51
    ld [hl], d                                    ; $7190: $72
    cp l                                          ; $7191: $bd
    add h                                         ; $7192: $84
    ld c, d                                       ; $7193: $4a
    push de                                       ; $7194: $d5
    srl h                                         ; $7195: $cb $3c
    rst $30                                       ; $7197: $f7
    ldh [$da], a                                  ; $7198: $e0 $da
    adc [hl]                                      ; $719a: $8e
    rla                                           ; $719b: $17
    jp z, $fcbc                                   ; $719c: $ca $bc $fc

    ld b, d                                       ; $719f: $42
    dec c                                         ; $71a0: $0d
    ld l, [hl]                                    ; $71a1: $6e
    and l                                         ; $71a2: $a5
    ld [hl], c                                    ; $71a3: $71
    dec e                                         ; $71a4: $1d
    ret                                           ; $71a5: $c9


    adc $8b                                       ; $71a6: $ce $8b
    rst $18                                       ; $71a8: $df
    add a                                         ; $71a9: $87
    and l                                         ; $71aa: $a5
    dec a                                         ; $71ab: $3d
    cpl                                           ; $71ac: $2f
    ccf                                           ; $71ad: $3f
    ld [hl-], a                                   ; $71ae: $32
    ld h, c                                       ; $71af: $61
    ei                                            ; $71b0: $fb
    ld h, l                                       ; $71b1: $65
    ldh a, [$d6]                                  ; $71b2: $f0 $d6
    daa                                           ; $71b4: $27
    add h                                         ; $71b5: $84
    ld bc, $39db                                  ; $71b6: $01 $db $39
    db $dd                                        ; $71b9: $dd
    or d                                          ; $71ba: $b2
    ld l, a                                       ; $71bb: $6f
    dec sp                                        ; $71bc: $3b
    dec c                                         ; $71bd: $0d
    or c                                          ; $71be: $b1
    sub a                                         ; $71bf: $97
    and l                                         ; $71c0: $a5
    cp l                                          ; $71c1: $bd
    sub $0c                                       ; $71c2: $d6 $0c
    ld a, b                                       ; $71c4: $78
    dec d                                         ; $71c5: $15
    rlca                                          ; $71c6: $07
    or h                                          ; $71c7: $b4
    db $e3                                        ; $71c8: $e3
    push de                                       ; $71c9: $d5
    ld a, [$172b]                                 ; $71ca: $fa $2b $17
    ld b, [hl]                                    ; $71cd: $46
    ld a, [de]                                    ; $71ce: $1a
    cp $3c                                        ; $71cf: $fe $3c
    sub a                                         ; $71d1: $97
    db $f4                                        ; $71d2: $f4
    ld c, e                                       ; $71d3: $4b
    ld a, e                                       ; $71d4: $7b
    ld e, [hl]                                    ; $71d5: $5e
    ld a, [hl]                                    ; $71d6: $7e
    halt                                          ; $71d7: $76
    ld a, [de]                                    ; $71d8: $1a
    ld e, c                                       ; $71d9: $59
    ld l, e                                       ; $71da: $6b
    ld b, $bc                                     ; $71db: $06 $bc
    adc d                                         ; $71dd: $8a
    jp $d35a                                      ; $71de: $c3 $5a $d3


    ret nz                                        ; $71e1: $c0

    inc bc                                        ; $71e2: $03
    jp nz, Jump_000_39db                          ; $71e3: $c2 $db $39

    rst $00                                       ; $71e6: $c7
    ld l, c                                       ; $71e7: $69
    sbc b                                         ; $71e8: $98
    ld b, $06                                     ; $71e9: $06 $06
    sbc l                                         ; $71eb: $9d
    adc a                                         ; $71ec: $8f
    or c                                          ; $71ed: $b1
    sbc l                                         ; $71ee: $9d
    ld e, c                                       ; $71ef: $59
    rra                                           ; $71f0: $1f
    cpl                                           ; $71f1: $2f
    rst $10                                       ; $71f2: $d7
    ld e, a                                       ; $71f3: $5f
    db $10                                        ; $71f4: $10
    ld b, $db                                     ; $71f5: $06 $db
    add hl, sp                                    ; $71f7: $39
    db $dd                                        ; $71f8: $dd
    or d                                          ; $71f9: $b2
    ld l, a                                       ; $71fa: $6f
    dec sp                                        ; $71fb: $3b
    dec c                                         ; $71fc: $0d
    or c                                          ; $71fd: $b1
    sub a                                         ; $71fe: $97
    and l                                         ; $71ff: $a5
    cp l                                          ; $7200: $bd
    sub $0c                                       ; $7201: $d6 $0c
    ld a, b                                       ; $7203: $78
    dec d                                         ; $7204: $15
    rlca                                          ; $7205: $07
    or h                                          ; $7206: $b4
    db $e3                                        ; $7207: $e3
    push de                                       ; $7208: $d5
    ld a, [$172b]                                 ; $7209: $fa $2b $17
    ld b, [hl]                                    ; $720c: $46
    ld a, [de]                                    ; $720d: $1a
    cp $3c                                        ; $720e: $fe $3c
    sub a                                         ; $7210: $97
    db $f4                                        ; $7211: $f4
    ld c, e                                       ; $7212: $4b
    ld a, e                                       ; $7213: $7b
    ld e, [hl]                                    ; $7214: $5e
    ld a, [hl]                                    ; $7215: $7e
    halt                                          ; $7216: $76
    ld a, [de]                                    ; $7217: $1a
    ld e, c                                       ; $7218: $59
    ld l, e                                       ; $7219: $6b
    ld b, $bc                                     ; $721a: $06 $bc
    adc d                                         ; $721c: $8a
    jp $d35a                                      ; $721d: $c3 $5a $d3


    ret nz                                        ; $7220: $c0

jr_029_7221:
    inc bc                                        ; $7221: $03
    jp nz, Jump_000_39db                          ; $7222: $c2 $db $39

    daa                                           ; $7225: $27
    ld a, l                                       ; $7226: $7d
    ldh a, [$c4]                                  ; $7227: $f0 $c4
    ld d, h                                       ; $7229: $54
    sbc d                                         ; $722a: $9a
    pop af                                        ; $722b: $f1
    rst $10                                       ; $722c: $d7
    xor e                                         ; $722d: $ab
    ld [hl-], a                                   ; $722e: $32
    cp [hl]                                       ; $722f: $be
    db $e4                                        ; $7230: $e4
    ld e, h                                       ; $7231: $5c
    db $f4                                        ; $7232: $f4
    jp nc, $35b3                                  ; $7233: $d2 $b3 $35

    ld l, c                                       ; $7236: $69
    jr z, @+$1a                                   ; $7237: $28 $18

    and h                                         ; $7239: $a4
    ld d, h                                       ; $723a: $54
    cpl                                           ; $723b: $2f
    cpl                                           ; $723c: $2f
    or b                                          ; $723d: $b0
    ld c, e                                       ; $723e: $4b
    or e                                          ; $723f: $b3
    ret z                                         ; $7240: $c8

    ld b, a                                       ; $7241: $47
    dec h                                         ; $7242: $25
    add [hl]                                      ; $7243: $86
    jr nc, jr_029_7221                            ; $7244: $30 $db

    add hl, sp                                    ; $7246: $39
    db $dd                                        ; $7247: $dd
    or d                                          ; $7248: $b2
    ld l, a                                       ; $7249: $6f
    dec sp                                        ; $724a: $3b
    dec c                                         ; $724b: $0d
    or c                                          ; $724c: $b1
    sub a                                         ; $724d: $97
    and l                                         ; $724e: $a5
    cp l                                          ; $724f: $bd
    sub $0c                                       ; $7250: $d6 $0c
    ld a, b                                       ; $7252: $78
    dec d                                         ; $7253: $15
    rlca                                          ; $7254: $07
    or h                                          ; $7255: $b4
    db $e3                                        ; $7256: $e3
    push de                                       ; $7257: $d5
    ld a, [$2f2b]                                 ; $7258: $fa $2b $2f
    inc hl                                        ; $725b: $23
    dec c                                         ; $725c: $0d
    ld a, a                                       ; $725d: $7f
    sbc [hl]                                      ; $725e: $9e
    ld c, e                                       ; $725f: $4b
    ld a, [$3da5]                                 ; $7260: $fa $a5 $3d
    cpl                                           ; $7263: $2f
    ccf                                           ; $7264: $3f
    dec sp                                        ; $7265: $3b
    adc l                                         ; $7266: $8d
    xor h                                         ; $7267: $ac
    dec [hl]                                      ; $7268: $35
    inc bc                                        ; $7269: $03
    ld e, [hl]                                    ; $726a: $5e
    push bc                                       ; $726b: $c5
    ld h, c                                       ; $726c: $61
    xor l                                         ; $726d: $ad
    ld l, c                                       ; $726e: $69
    ldh [rSB], a                                  ; $726f: $e0 $01
    ld h, c                                       ; $7271: $61
    db $db                                        ; $7272: $db
    add hl, sp                                    ; $7273: $39
    db $dd                                        ; $7274: $dd
    or d                                          ; $7275: $b2

Call_029_7276:
    ld l, a                                       ; $7276: $6f
    dec sp                                        ; $7277: $3b
    dec c                                         ; $7278: $0d
    or c                                          ; $7279: $b1
    sub a                                         ; $727a: $97
    and l                                         ; $727b: $a5
    cp l                                          ; $727c: $bd
    sub $0c                                       ; $727d: $d6 $0c
    ld a, b                                       ; $727f: $78
    dec d                                         ; $7280: $15
    rlca                                          ; $7281: $07
    or h                                          ; $7282: $b4
    db $e3                                        ; $7283: $e3
    push de                                       ; $7284: $d5
    ld a, [$2f2b]                                 ; $7285: $fa $2b $2f
    inc hl                                        ; $7288: $23
    dec c                                         ; $7289: $0d
    ld a, a                                       ; $728a: $7f
    sbc [hl]                                      ; $728b: $9e
    ld c, e                                       ; $728c: $4b
    ld a, [$3da5]                                 ; $728d: $fa $a5 $3d
    cpl                                           ; $7290: $2f
    ccf                                           ; $7291: $3f
    dec sp                                        ; $7292: $3b
    adc l                                         ; $7293: $8d
    xor h                                         ; $7294: $ac
    dec [hl]                                      ; $7295: $35
    inc bc                                        ; $7296: $03
    ld e, [hl]                                    ; $7297: $5e
    push bc                                       ; $7298: $c5
    ld h, c                                       ; $7299: $61
    xor l                                         ; $729a: $ad
    ld l, c                                       ; $729b: $69
    ldh [rSB], a                                  ; $729c: $e0 $01
    ld h, c                                       ; $729e: $61
    db $db                                        ; $729f: $db
    add hl, sp                                    ; $72a0: $39
    rst $00                                       ; $72a1: $c7
    and l                                         ; $72a2: $a5
    ld hl, $6cf6                                  ; $72a3: $21 $f6 $6c
    ld e, [hl]                                    ; $72a6: $5e
    ld a, [hl]                                    ; $72a7: $7e
    sub $1b                                       ; $72a8: $d6 $1b
    and e                                         ; $72aa: $a3
    ld b, $bf                                     ; $72ab: $06 $bf
    or h                                          ; $72ad: $b4
    rst $10                                       ; $72ae: $d7
    sbc d                                         ; $72af: $9a
    ld bc, $af84                                  ; $72b0: $01 $84 $af
    db $ec                                        ; $72b3: $ec
    ld de, $db06                                  ; $72b4: $11 $06 $db
    add hl, sp                                    ; $72b7: $39
    rst $00                                       ; $72b8: $c7
    ld e, l                                       ; $72b9: $5d
    ld bc, $545f                                  ; $72ba: $01 $5f $54
    ld h, d                                       ; $72bd: $62
    ld d, c                                       ; $72be: $51
    ld e, c                                       ; $72bf: $59
    or e                                          ; $72c0: $b3
    or h                                          ; $72c1: $b4
    rst $20                                       ; $72c2: $e7
    push hl                                       ; $72c3: $e5
    ld [hl], a                                    ; $72c4: $77
    jp nc, $bd6b                                  ; $72c5: $d2 $6b $bd

    ld e, c                                       ; $72c8: $59
    scf                                           ; $72c9: $37
    dec [hl]                                      ; $72ca: $35
    sub c                                         ; $72cb: $91
    ld c, c                                       ; $72cc: $49
    ld [de], a                                    ; $72cd: $12
    jp nz, Jump_000_39db                          ; $72ce: $c2 $db $39

    xor l                                         ; $72d1: $ad
    xor a                                         ; $72d2: $af
    inc l                                         ; $72d3: $2c
    ld d, h                                       ; $72d4: $54
    ldh a, [$97]                                  ; $72d5: $f0 $97
    and l                                         ; $72d7: $a5
    cp l                                          ; $72d8: $bd
    sub $0c                                       ; $72d9: $d6 $0c
    ld a, b                                       ; $72db: $78
    dec d                                         ; $72dc: $15
    rlca                                          ; $72dd: $07
    or h                                          ; $72de: $b4
    db $e3                                        ; $72df: $e3
    db $e4                                        ; $72e0: $e4
    ld a, $b1                                     ; $72e1: $3e $b1
    ld a, c                                       ; $72e3: $79

jr_029_72e4:
    xor $94                                       ; $72e4: $ee $94
    ld e, e                                       ; $72e6: $5b
    ld h, l                                       ; $72e7: $65
    ld d, h                                       ; $72e8: $54
    ret c                                         ; $72e9: $d8

    ld [hl], c                                    ; $72ea: $71
    ld d, c                                       ; $72eb: $51
    jp $eb8f                                      ; $72ec: $c3 $8f $eb


    ld a, e                                       ; $72ef: $7b
    ld d, $b2                                     ; $72f0: $16 $b2
    ld a, $79                                     ; $72f2: $3e $79
    jp z, $9ed2                                   ; $72f4: $ca $d2 $9e

    sub a                                         ; $72f7: $97
    ld e, a                                       ; $72f8: $5f
    rst $30                                       ; $72f9: $f7
    ld [hl], d                                    ; $72fa: $72
    ld h, e                                       ; $72fb: $63
    ld b, d                                       ; $72fc: $42
    halt                                          ; $72fd: $76
    jp z, Jump_000_0d4b                           ; $72fe: $ca $4b $0d

    sub $e2                                       ; $7301: $d6 $e2
    ld c, c                                       ; $7303: $49
    adc a                                         ; $7304: $8f
    jr nc, @-$23                                  ; $7305: $30 $db

    add hl, sp                                    ; $7307: $39
    ld b, a                                       ; $7308: $47
    dec hl                                        ; $7309: $2b
    ret nz                                        ; $730a: $c0

    ld a, [hl-]                                   ; $730b: $3a
    ld d, c                                       ; $730c: $51
    sbc e                                         ; $730d: $9b

jr_029_730e:
    sub a                                         ; $730e: $97
    pop af                                        ; $730f: $f1
    rst $10                                       ; $7310: $d7
    res 7, h                                      ; $7311: $cb $bc
    db $fc                                        ; $7313: $fc
    ld a, [hl-]                                   ; $7314: $3a
    reti                                          ; $7315: $d9


    ld sp, $6551                                  ; $7316: $31 $51 $65
    db $fc                                        ; $7319: $fc
    push hl                                       ; $731a: $e5
    xor b                                         ; $731b: $a8
    jp nz, Jump_000_052e                          ; $731c: $c2 $2e $05

    ld l, e                                       ; $731f: $6b
    dec hl                                        ; $7320: $2b
    or c                                          ; $7321: $b1
    push af                                       ; $7322: $f5
    jr z, jr_029_72e4                             ; $7323: $28 $bf

    sbc [hl]                                      ; $7325: $9e
    ld a, a                                       ; $7326: $7f
    add l                                         ; $7327: $85
    xor l                                         ; $7328: $ad
    push hl                                       ; $7329: $e5
    add d                                         ; $732a: $82
    cp a                                          ; $732b: $bf
    nop                                           ; $732c: $00
    jp nz, Jump_000_39db                          ; $732d: $c2 $db $39

    db $dd                                        ; $7330: $dd
    ld [hl-], a                                   ; $7331: $32
    db $ec                                        ; $7332: $ec
    inc h                                         ; $7333: $24
    cp h                                          ; $7334: $bc
    inc l                                         ; $7335: $2c
    db $ed                                        ; $7336: $ed
    ld a, c                                       ; $7337: $79
    ld sp, hl                                     ; $7338: $f9
    add hl, de                                    ; $7339: $19
    or d                                          ; $733a: $b2
    cpl                                           ; $733b: $2f
    ld e, l                                       ; $733c: $5d
    jr z, jr_029_730e                             ; $733d: $28 $cf

    sub $f3                                       ; $733f: $d6 $f3
    ld [hl], d                                    ; $7341: $72
    ld d, h                                       ; $7342: $54
    ld h, c                                       ; $7343: $61
    sub a                                         ; $7344: $97
    add d                                         ; $7345: $82
    or l                                          ; $7346: $b5
    sbc b                                         ; $7347: $98
    db $eb                                        ; $7348: $eb
    rst $08                                       ; $7349: $cf
    dec e                                         ; $734a: $1d
    ld e, a                                       ; $734b: $5f
    ld l, [hl]                                    ; $734c: $6e
    ld d, l                                       ; $734d: $55
    ld h, [hl]                                    ; $734e: $66
    cp a                                          ; $734f: $bf
    cp d                                          ; $7350: $ba
    sub c                                         ; $7351: $91
    add a                                         ; $7352: $87
    add hl, hl                                    ; $7353: $29
    db $ed                                        ; $7354: $ed
    add hl, sp                                    ; $7355: $39
    ld [hl], h                                    ; $7356: $74
    ld h, d                                       ; $7357: $62
    or d                                          ; $7358: $b2
    ld c, e                                       ; $7359: $4b
    pop bc                                        ; $735a: $c1
    call c, $15b4                                 ; $735b: $dc $b4 $15
    ld h, c                                       ; $735e: $61
    db $db                                        ; $735f: $db
    add hl, sp                                    ; $7360: $39
    db $dd                                        ; $7361: $dd
    and e                                         ; $7362: $a3
    ld [hl], $b0                                  ; $7363: $36 $b0
    or [hl]                                       ; $7365: $b6
    ld b, $9d                                     ; $7366: $06 $9d
    db $db                                        ; $7368: $db
    ld a, c                                       ; $7369: $79
    jr jr_029_73eb                                ; $736a: $18 $7f

    cp l                                          ; $736c: $bd
    call z, $afcb                                 ; $736d: $cc $cb $af
    sub e                                         ; $7370: $93
    dec e                                         ; $7371: $1d
    inc de                                        ; $7372: $13
    ld d, l                                       ; $7373: $55
    add $5f                                       ; $7374: $c6 $5f
    adc [hl]                                      ; $7376: $8e
    ld a, [hl+]                                   ; $7377: $2a
    db $ec                                        ; $7378: $ec
    ld d, d                                       ; $7379: $52
    or b                                          ; $737a: $b0
    or [hl]                                       ; $737b: $b6
    ld [de], a                                    ; $737c: $12
    ld e, e                                       ; $737d: $5b
    adc a                                         ; $737e: $8f
    ld a, [c]                                     ; $737f: $f2
    db $eb                                        ; $7380: $eb
    ld sp, hl                                     ; $7381: $f9
    ld d, a                                       ; $7382: $57
    ret c                                         ; $7383: $d8

    ld e, d                                       ; $7384: $5a
    ld l, $f8                                     ; $7385: $2e $f8
    dec bc                                        ; $7387: $0b
    jr nz, jr_029_7396                            ; $7388: $20 $0c

    db $db                                        ; $738a: $db
    add hl, sp                                    ; $738b: $39
    db $dd                                        ; $738c: $dd
    and e                                         ; $738d: $a3
    ld [hl], $b0                                  ; $738e: $36 $b0
    ld l, b                                       ; $7390: $68
    db $fc                                        ; $7391: $fc
    rst $00                                       ; $7392: $c7

Jump_029_7393:
    ld e, a                                       ; $7393: $5f
    cpl                                           ; $7394: $2f
    di                                            ; $7395: $f3

jr_029_7396:
    ld a, [c]                                     ; $7396: $f2
    db $eb                                        ; $7397: $eb
    ld h, h                                       ; $7398: $64
    rst $00                                       ; $7399: $c7
    ld b, h                                       ; $739a: $44
    sub l                                         ; $739b: $95
    pop af                                        ; $739c: $f1
    sub a                                         ; $739d: $97
    and e                                         ; $739e: $a3
    ld a, [bc]                                    ; $739f: $0a
    cp e                                          ; $73a0: $bb
    inc d                                         ; $73a1: $14
    xor h                                         ; $73a2: $ac
    xor l                                         ; $73a3: $ad
    call nz, $a3d6                                ; $73a4: $c4 $d6 $a3
    db $fc                                        ; $73a7: $fc
    ld a, d                                       ; $73a8: $7a
    cp $15                                        ; $73a9: $fe $15
    or [hl]                                       ; $73ab: $b6
    sub [hl]                                      ; $73ac: $96
    dec bc                                        ; $73ad: $0b
    cp $02                                        ; $73ae: $fe $02
    ld [$db03], sp                                ; $73b0: $08 $03 $db
    add hl, sp                                    ; $73b3: $39
    db $dd                                        ; $73b4: $dd
    and e                                         ; $73b5: $a3
    ld [hl], $b0                                  ; $73b6: $36 $b0
    ld hl, sp-$36                                 ; $73b8: $f8 $ca
    ld d, $98                                     ; $73ba: $16 $98
    db $eb                                        ; $73bc: $eb
    ld a, [hl+]                                   ; $73bd: $2a
    db $e3                                        ; $73be: $e3
    xor a                                         ; $73bf: $af
    sub a                                         ; $73c0: $97
    ld a, c                                       ; $73c1: $79
    ld sp, hl                                     ; $73c2: $f9
    ld [hl], l                                    ; $73c3: $75
    or d                                          ; $73c4: $b2
    ld h, e                                       ; $73c5: $63
    and d                                         ; $73c6: $a2
    jp z, $cbf8                                   ; $73c7: $ca $f8 $cb

    ld d, c                                       ; $73ca: $51

Jump_029_73cb:
    add l                                         ; $73cb: $85
    ld e, l                                       ; $73cc: $5d
    ld a, [bc]                                    ; $73cd: $0a
    sub $56                                       ; $73ce: $d6 $56
    ld h, d                                       ; $73d0: $62
    db $eb                                        ; $73d1: $eb
    ld d, c                                       ; $73d2: $51
    ld a, [hl]                                    ; $73d3: $7e
    dec a                                         ; $73d4: $3d
    rst $38                                       ; $73d5: $ff
    ld a, [bc]                                    ; $73d6: $0a
    ld e, e                                       ; $73d7: $5b
    rlc l                                         ; $73d8: $cb $05
    ld a, a                                       ; $73da: $7f
    ld bc, $0184                                  ; $73db: $01 $84 $01

jr_029_73de:
    db $db                                        ; $73de: $db
    add hl, sp                                    ; $73df: $39
    daa                                           ; $73e0: $27
    cp l                                          ; $73e1: $bd
    or d                                          ; $73e2: $b2

jr_029_73e3:
    pop bc                                        ; $73e3: $c1
    and l                                         ; $73e4: $a5
    ldh [$65], a                                  ; $73e5: $e0 $65
    ld l, c                                       ; $73e7: $69
    rst $08                                       ; $73e8: $cf
    res 5, a                                      ; $73e9: $cb $af

jr_029_73eb:
    sub e                                         ; $73eb: $93
    dec e                                         ; $73ec: $1d
    inc de                                        ; $73ed: $13
    ld d, l                                       ; $73ee: $55
    add $5f                                       ; $73ef: $c6 $5f
    adc [hl]                                      ; $73f1: $8e
    ld a, [hl+]                                   ; $73f2: $2a
    db $ec                                        ; $73f3: $ec
    ld d, d                                       ; $73f4: $52
    or b                                          ; $73f5: $b0
    or [hl]                                       ; $73f6: $b6
    ld [de], a                                    ; $73f7: $12
    ld e, e                                       ; $73f8: $5b
    adc a                                         ; $73f9: $8f
    ld a, [c]                                     ; $73fa: $f2
    db $eb                                        ; $73fb: $eb
    ld sp, hl                                     ; $73fc: $f9
    ld d, a                                       ; $73fd: $57
    ret c                                         ; $73fe: $d8

    ld e, d                                       ; $73ff: $5a
    ld l, $f8                                     ; $7400: $2e $f8
    dec bc                                        ; $7402: $0b
    jr nz, @+$0e                                  ; $7403: $20 $0c

    db $db                                        ; $7405: $db
    add hl, sp                                    ; $7406: $39
    db $dd                                        ; $7407: $dd
    and e                                         ; $7408: $a3
    ld [hl], $30                                  ; $7409: $36 $30
    ld h, $26                                     ; $740b: $26 $26
    add h                                         ; $740d: $84
    pop af                                        ; $740e: $f1
    rst $10                                       ; $740f: $d7
    res 7, h                                      ; $7410: $cb $bc
    db $fc                                        ; $7412: $fc
    ld a, [hl-]                                   ; $7413: $3a
    reti                                          ; $7414: $d9


    ld sp, $6551                                  ; $7415: $31 $51 $65
    db $fc                                        ; $7418: $fc
    push hl                                       ; $7419: $e5
    xor b                                         ; $741a: $a8

jr_029_741b:
    jp nz, Jump_000_052e                          ; $741b: $c2 $2e $05

    ld l, e                                       ; $741e: $6b
    dec hl                                        ; $741f: $2b
    or c                                          ; $7420: $b1
    push af                                       ; $7421: $f5
    jr z, jr_029_73e3                             ; $7422: $28 $bf

    sbc [hl]                                      ; $7424: $9e
    ld a, a                                       ; $7425: $7f
    add l                                         ; $7426: $85
    xor l                                         ; $7427: $ad
    push hl                                       ; $7428: $e5
    add d                                         ; $7429: $82
    cp a                                          ; $742a: $bf
    nop                                           ; $742b: $00
    jp nz, Jump_000_39db                          ; $742c: $c2 $db $39

    db $dd                                        ; $742f: $dd
    or e                                          ; $7430: $b3
    ld h, e                                       ; $7431: $63
    and d                                         ; $7432: $a2
    jp z, $52e0                                   ; $7433: $ca $e0 $52

    ld [hl], b                                    ; $7436: $70
    add hl, hl                                    ; $7437: $29
    jr jr_029_73de                                ; $7438: $18 $a4

    ld d, h                                       ; $743a: $54
    cpl                                           ; $743b: $2f
    rrca                                          ; $743c: $0f
    add b                                         ; $743d: $80
    jr nc, jr_029_741b                            ; $743e: $30 $db

    add hl, sp                                    ; $7440: $39
    db $dd                                        ; $7441: $dd
    and e                                         ; $7442: $a3
    ld [hl], $30                                  ; $7443: $36 $30
    add hl, hl                                    ; $7445: $29
    adc l                                         ; $7446: $8d
    sub a                                         ; $7447: $97

jr_029_7448:
    ld [hl], b                                    ; $7448: $70
    add c                                         ; $7449: $81
    cp c                                          ; $744a: $b9
    xor [hl]                                      ; $744b: $ae
    ld [hl-], a                                   ; $744c: $32
    cp $7a                                        ; $744d: $fe $7a
    sbc c                                         ; $744f: $99
    sub a                                         ; $7450: $97
    ld e, a                                       ; $7451: $5f
    daa                                           ; $7452: $27
    dec sp                                        ; $7453: $3b
    ld h, $aa                                     ; $7454: $26 $aa
    adc h                                         ; $7456: $8c
    cp a                                          ; $7457: $bf
    inc e                                         ; $7458: $1c
    ld d, l                                       ; $7459: $55
    ret c                                         ; $745a: $d8

    and l                                         ; $745b: $a5
    ld h, b                                       ; $745c: $60
    ld l, l                                       ; $745d: $6d
    dec h                                         ; $745e: $25
    or [hl]                                       ; $745f: $b6
    ld e, $e5                                     ; $7460: $1e $e5
    rst $10                                       ; $7462: $d7
    di                                            ; $7463: $f3
    xor a                                         ; $7464: $af
    or b                                          ; $7465: $b0
    or l                                          ; $7466: $b5
    ld e, h                                       ; $7467: $5c
    ldh a, [rNR22]                                ; $7468: $f0 $17
    ld b, b                                       ; $746a: $40
    jr jr_029_7448                                ; $746b: $18 $db

    add hl, sp                                    ; $746d: $39
    db $dd                                        ; $746e: $dd
    and e                                         ; $746f: $a3
    ld [hl], $b0                                  ; $7470: $36 $b0
    ld [$cc63], a                                 ; $7472: $ea $63 $cc
    pop af                                        ; $7475: $f1
    rst $10                                       ; $7476: $d7

Call_029_7477:
    res 7, h                                      ; $7477: $cb $bc
    db $fc                                        ; $7479: $fc
    ld a, [hl-]                                   ; $747a: $3a
    reti                                          ; $747b: $d9


    ld sp, $6551                                  ; $747c: $31 $51 $65
    db $fc                                        ; $747f: $fc
    push hl                                       ; $7480: $e5
    xor b                                         ; $7481: $a8
    jp nz, Jump_029_56d6                          ; $7482: $c2 $d6 $56

    ld h, d                                       ; $7485: $62
    db $eb                                        ; $7486: $eb
    ld d, c                                       ; $7487: $51
    ld a, [hl]                                    ; $7488: $7e
    dec a                                         ; $7489: $3d
    rst $38                                       ; $748a: $ff
    ld a, [bc]                                    ; $748b: $0a
    ld e, e                                       ; $748c: $5b
    rlc l                                         ; $748d: $cb $05
    ld a, a                                       ; $748f: $7f
    ld bc, $0184                                  ; $7490: $01 $84 $01
    db $db                                        ; $7493: $db
    add hl, sp                                    ; $7494: $39
    rst $00                                       ; $7495: $c7
    ld l, c                                       ; $7496: $69
    sbc b                                         ; $7497: $98
    ld b, $66                                     ; $7498: $06 $66
    and a                                         ; $749a: $a7
    adc h                                         ; $749b: $8c
    cp l                                          ; $749c: $bd
    push af                                       ; $749d: $f5
    ld h, e                                       ; $749e: $63
    halt                                          ; $749f: $76
    ld l, $05                                     ; $74a0: $2e $05
    di                                            ; $74a2: $f3
    ld a, [c]                                     ; $74a3: $f2
    dec sp                                        ; $74a4: $3b
    ld a, $23                                     ; $74a5: $3e $23
    ld a, e                                       ; $74a7: $7b
    ld e, d                                       ; $74a8: $5a
    dec bc                                        ; $74a9: $0b
    ld e, l                                       ; $74aa: $5d
    xor a                                         ; $74ab: $af
    ld a, [bc]                                    ; $74ac: $0a
    jp nz, Jump_000_39db                          ; $74ad: $c2 $db $39

    and a                                         ; $74b0: $a7
    ld a, a                                       ; $74b1: $7f
    sub l                                         ; $74b2: $95
    jp nz, $a766                                  ; $74b3: $c2 $66 $a7

    xor h                                         ; $74b6: $ac
    call c, $3ca0                                 ; $74b7: $dc $a0 $3c
    ld hl, sp-$38                                 ; $74ba: $f8 $c8
    add h                                         ; $74bc: $84
    db $ed                                        ; $74bd: $ed
    sub a                                         ; $74be: $97
    and l                                         ; $74bf: $a5
    cp l                                          ; $74c0: $bd
    db $d3                                        ; $74c1: $d3
    call z, $ec65                                 ; $74c2: $cc $65 $ec
    ld a, d                                       ; $74c5: $7a
    ld d, l                                       ; $74c6: $55
    ld d, $a4                                     ; $74c7: $16 $a4
    ld b, [hl]                                    ; $74c9: $46
    jr jr_029_74ff                                ; $74ca: $18 $33

Jump_029_74cc:
    ld [hl], d                                    ; $74cc: $72
    add hl, hl                                    ; $74cd: $29
    ret c                                         ; $74ce: $d8

    pop de                                        ; $74cf: $d1
    ld [hl], d                                    ; $74d0: $72
    db $fd                                        ; $74d1: $fd
    ld b, d                                       ; $74d2: $42
    add hl, de                                    ; $74d3: $19
    cp h                                          ; $74d4: $bc
    ld b, d                                       ; $74d5: $42
    jp nc, Jump_029_5cbc                          ; $74d6: $d2 $bc $5c

    ld e, b                                       ; $74d9: $58
    push af                                       ; $74da: $f5
    db $e4                                        ; $74db: $e4
    ld b, [hl]                                    ; $74dc: $46
    ld a, [de]                                    ; $74dd: $1a
    add h                                         ; $74de: $84
    ld bc, $39db                                  ; $74df: $01 $db $39
    db $dd                                        ; $74e2: $dd
    or h                                          ; $74e3: $b4
    db $e3                                        ; $74e4: $e3
    ld a, d                                       ; $74e5: $7a
    ld l, c                                       ; $74e6: $69
    ld l, c                                       ; $74e7: $69
    cpl                                           ; $74e8: $2f

jr_029_74e9:
    add hl, hl                                    ; $74e9: $29
    ld [hl], $d3                                  ; $74ea: $36 $d3
    jr jr_029_74e9                                ; $74ec: $18 $fb

    or [hl]                                       ; $74ee: $b6
    ccf                                           ; $74ef: $3f
    call nc, $23f8                                ; $74f0: $d4 $f8 $23
    push af                                       ; $74f3: $f5
    sbc e                                         ; $74f4: $9b
    and h                                         ; $74f5: $a4
    ld [hl], c                                    ; $74f6: $71
    and a                                         ; $74f7: $a7
    sbc c                                         ; $74f8: $99
    set 3, b                                      ; $74f9: $cb $d8
    push af                                       ; $74fb: $f5
    xor d                                         ; $74fc: $aa
    xor h                                         ; $74fd: $ac
    rst $00                                       ; $74fe: $c7

jr_029_74ff:
    ld l, e                                       ; $74ff: $6b
    ret z                                         ; $7500: $c8

    sbc l                                         ; $7501: $9d
    sub a                                         ; $7502: $97
    ld e, a                                       ; $7503: $5f
    ld l, e                                       ; $7504: $6b
    add $a6                                       ; $7505: $c6 $a6
    cp h                                          ; $7507: $bc
    or d                                          ; $7508: $b2
    or l                                          ; $7509: $b5
    xor d                                         ; $750a: $aa

jr_029_750b:
    ld [hl], h                                    ; $750b: $74

Jump_029_750c:
    xor $03                                       ; $750c: $ee $03
    jp nz, Jump_000_39db                          ; $750e: $c2 $db $39

    and a                                         ; $7511: $a7
    ld d, d                                       ; $7512: $52
    ld l, h                                       ; $7513: $6c
    halt                                          ; $7514: $76
    sbc d                                         ; $7515: $9a
    cp c                                          ; $7516: $b9
    adc h                                         ; $7517: $8c
    ld e, l                                       ; $7518: $5d
    xor a                                         ; $7519: $af
    jp z, $ede4                                   ; $751a: $ca $e4 $ed

    sub a                                         ; $751d: $97
    rst $38                                       ; $751e: $ff
    cp l                                          ; $751f: $bd
    push af                                       ; $7520: $f5
    ld h, l                                       ; $7521: $65
    sbc [hl]                                      ; $7522: $9e
    ld h, e                                       ; $7523: $63
    rst $30                                       ; $7524: $f7
    rst $00                                       ; $7525: $c7
    adc h                                         ; $7526: $8c
    ld e, h                                       ; $7527: $5c
    ld a, [bc]                                    ; $7528: $0a
    and [hl]                                      ; $7529: $a6
    dec bc                                        ; $752a: $0b
    push de                                       ; $752b: $d5
    xor e                                         ; $752c: $ab
    add d                                         ; $752d: $82
    jr nc, jr_029_750b                            ; $752e: $30 $db

    add hl, sp                                    ; $7530: $39
    rst $00                                       ; $7531: $c7
    and l                                         ; $7532: $a5
    ld hl, $b2f6                                  ; $7533: $21 $f6 $b2
    or h                                          ; $7536: $b4
    rst $20                                       ; $7537: $e7
    push hl                                       ; $7538: $e5
    ld [hl], a                                    ; $7539: $77
    jp z, $db0d                                   ; $753a: $ca $0d $db

    ld b, $26                                     ; $753d: $06 $26
    ld e, d                                       ; $753f: $5a
    ld e, l                                       ; $7540: $5d
    ld a, [bc]                                    ; $7541: $0a
    sub $96                                       ; $7542: $d6 $96
    call z, Call_029_5570                         ; $7544: $cc $70 $55
    add [hl]                                      ; $7547: $86
    dec e                                         ; $7548: $1d
    and l                                         ; $7549: $a5
    ld b, $61                                     ; $754a: $06 $61
    db $db                                        ; $754c: $db
    add hl, sp                                    ; $754d: $39

jr_029_754e:
    db $dd                                        ; $754e: $dd
    push hl                                       ; $754f: $e5
    pop hl                                        ; $7550: $e1
    ret                                           ; $7551: $c9


    rst $10                                       ; $7552: $d7
    xor l                                         ; $7553: $ad
    call c, $97b7                                 ; $7554: $dc $b7 $97
    or $4e                                        ; $7557: $f6 $4e
    inc sp                                        ; $7559: $33
    sub a                                         ; $755a: $97
    or c                                          ; $755b: $b1
    db $eb                                        ; $755c: $eb
    ld d, l                                       ; $755d: $55
    ld e, c                                       ; $755e: $59
    sub b                                         ; $755f: $90
    sub $17                                       ; $7560: $d6 $17
    cp d                                          ; $7562: $ba
    inc d                                         ; $7563: $14
    xor h                                         ; $7564: $ac
    sbc l                                         ; $7565: $9d
    xor h                                         ; $7566: $ac
    reti                                          ; $7567: $d9


    ld l, c                                       ; $7568: $69
    ld h, a                                       ; $7569: $67
    inc e                                         ; $756a: $1c
    ld [hl], l                                    ; $756b: $75
    db $f4                                        ; $756c: $f4
    pop de                                        ; $756d: $d1

jr_029_756e:
    daa                                           ; $756e: $27
    dec e                                         ; $756f: $1d
    adc e                                         ; $7570: $8b
    jr nc, jr_029_754e                            ; $7571: $30 $db

    add hl, sp                                    ; $7573: $39
    rst $00                                       ; $7574: $c7
    ld e, l                                       ; $7575: $5d
    ld bc, $d1df                                  ; $7576: $01 $df $d1
    ld [hl], d                                    ; $7579: $72
    db $fd                                        ; $757a: $fd
    ld b, d                                       ; $757b: $42
    add hl, de                                    ; $757c: $19
    ld a, a                                       ; $757d: $7f
    cp l                                          ; $757e: $bd
    ld a, [hl+]                                   ; $757f: $2a
    di                                            ; $7580: $f3
    sbc h                                         ; $7581: $9c
    cp h                                          ; $7582: $bc
    db $fd                                        ; $7583: $fd
    ld a, [c]                                     ; $7584: $f2
    ccf                                           ; $7585: $3f
    db $dd                                        ; $7586: $dd
    ld l, c                                       ; $7587: $69
    and $32                                       ; $7588: $e6 $32
    halt                                          ; $758a: $76
    cp l                                          ; $758b: $bd
    ld a, [hl+]                                   ; $758c: $2a
    dec bc                                        ; $758d: $0b
    push de                                       ; $758e: $d5
    xor e                                         ; $758f: $ab
    add d                                         ; $7590: $82
    jr nc, jr_029_756e                            ; $7591: $30 $db

    add hl, sp                                    ; $7593: $39
    xor l                                         ; $7594: $ad
    add hl, de                                    ; $7595: $19
    add hl, de                                    ; $7596: $19
    db $ec                                        ; $7597: $ec
    ld l, b                                       ; $7598: $68
    cp c                                          ; $7599: $b9
    ld a, [hl]                                    ; $759a: $7e
    and c                                         ; $759b: $a1
    ld c, h                                       ; $759c: $4c
    cp [hl]                                       ; $759d: $be
    ld c, d                                       ; $759e: $4a
    ld h, c                                       ; $759f: $61
    or e                                          ; $75a0: $b3
    ld d, e                                       ; $75a1: $53
    ld h, [hl]                                    ; $75a2: $66
    dec hl                                        ; $75a3: $2b
    ld hl, sp-$7d                                 ; $75a4: $f8 $83
    xor a                                         ; $75a6: $af
    jp nc, $1b8e                                  ; $75a7: $d2 $8e $1b

    ld sp, hl                                     ; $75aa: $f9
    and l                                         ; $75ab: $a5
    dec a                                         ; $75ac: $3d
    cpl                                           ; $75ad: $2f
    cp a                                          ; $75ae: $bf
    ld d, $ba                                     ; $75af: $16 $ba
    ld e, [hl]                                    ; $75b1: $5e
    sub l                                         ; $75b2: $95
    jp Jump_029_45e7                              ; $75b3: $c3 $e7 $45


    cp $a7                                        ; $75b6: $fe $a7
    call nz, $2ba6                                ; $75b8: $c4 $a6 $2b
    ld a, [de]                                    ; $75bb: $1a
    db $ed                                        ; $75bc: $ed
    pop bc                                        ; $75bd: $c1
    ld d, a                                       ; $75be: $57
    ld c, c                                       ; $75bf: $49
    inc c                                         ; $75c0: $0c
    db $10                                        ; $75c1: $10
    ld b, $db                                     ; $75c2: $06 $db
    add hl, sp                                    ; $75c4: $39
    db $dd                                        ; $75c5: $dd
    push hl                                       ; $75c6: $e5
    pop hl                                        ; $75c7: $e1
    ret                                           ; $75c8: $c9


    rst $10                                       ; $75c9: $d7
    ld e, l                                       ; $75ca: $5d
    ld e, $2e                                     ; $75cb: $1e $2e
    ld a, e                                       ; $75cd: $7b
    ld a, [c]                                     ; $75ce: $f2
    and l                                         ; $75cf: $a5
    cp l                                          ; $75d0: $bd
    ld h, e                                       ; $75d1: $63
    add hl, hl                                    ; $75d2: $29
    adc b                                         ; $75d3: $88
    rla                                           ; $75d4: $17
    jp z, $cf8e                                   ; $75d5: $ca $8e $cf

    ld [hl], $78                                  ; $75d8: $36 $78
    jp nc, Jump_029_4ec3                          ; $75da: $d2 $c3 $4e

    inc sp                                        ; $75dd: $33
    sub a                                         ; $75de: $97
    or c                                          ; $75df: $b1
    db $eb                                        ; $75e0: $eb
    ld d, l                                       ; $75e1: $55
    ld e, c                                       ; $75e2: $59
    adc a                                         ; $75e3: $8f
    rst $10                                       ; $75e4: $d7
    db $10                                        ; $75e5: $10

jr_029_75e6:
    ld h, c                                       ; $75e6: $61
    db $db                                        ; $75e7: $db
    add hl, sp                                    ; $75e8: $39
    rst $00                                       ; $75e9: $c7
    ld e, l                                       ; $75ea: $5d
    ld bc, $9d5f                                  ; $75eb: $01 $5f $9d
    sub d                                         ; $75ee: $92
    and a                                         ; $75ef: $a7
    ld d, l                                       ; $75f0: $55
    ld a, [c]                                     ; $75f1: $f2
    ld [$4b29], a                                 ; $75f2: $ea $29 $4b
    ld a, e                                       ; $75f5: $7b
    ld e, [hl]                                    ; $75f6: $5e
    ld a, [hl]                                    ; $75f7: $7e
    ld b, a                                       ; $75f8: $47
    dec hl                                        ; $75f9: $2b
    call c, $a178                                 ; $75fa: $dc $78 $a1
    adc [hl]                                      ; $75fd: $8e
    jr nc, @-$23                                  ; $75fe: $30 $db

    add hl, sp                                    ; $7600: $39
    ld b, a                                       ; $7601: $47
    push bc                                       ; $7602: $c5
    ld hl, sp-$3f                                 ; $7603: $f8 $c1
    or e                                          ; $7605: $b3
    ld a, c                                       ; $7606: $79
    xor [hl]                                      ; $7607: $ae
    xor b                                         ; $7608: $a8
    push af                                       ; $7609: $f5
    rst $10                                       ; $760a: $d7
    cp $a7                                        ; $760b: $fe $a7
    ld a, c                                       ; $760d: $79
    ld sp, hl                                     ; $760e: $f9
    dec h                                         ; $760f: $25
    push bc                                       ; $7610: $c5
    ld h, [hl]                                    ; $7611: $66
    ld [hl], l                                    ; $7612: $75
    ld c, d                                       ; $7613: $4a
    sbc [hl]                                      ; $7614: $9e
    add $5f                                       ; $7615: $c6 $5f
    adc [hl]                                      ; $7617: $8e
    ld a, [hl+]                                   ; $7618: $2a
    ld l, h                                       ; $7619: $6c
    sbc [hl]                                      ; $761a: $9e
    db $eb                                        ; $761b: $eb
    ld c, b                                       ; $761c: $48
    ld [hl-], a                                   ; $761d: $32
    ld d, e                                       ; $761e: $53
    db $fd                                        ; $761f: $fd
    ld [hl], h                                    ; $7620: $74
    db $dd                                        ; $7621: $dd
    push de                                       ; $7622: $d5
    dec h                                         ; $7623: $25
    ret                                           ; $7624: $c9


    ret nz                                        ; $7625: $c0

    jp nc, Jump_029_705e                          ; $7626: $d2 $5e $70

    sub l                                         ; $7629: $95
    ld a, h                                       ; $762a: $7c
    ld [hl], b                                    ; $762b: $70
    add hl, sp                                    ; $762c: $39
    ld a, $c2                                     ; $762d: $3e $c2
    db $db                                        ; $762f: $db
    add hl, sp                                    ; $7630: $39
    xor l                                         ; $7631: $ad

Call_029_7632:
    scf                                           ; $7632: $37
    jr z, jr_029_75e6                             ; $7633: $28 $b1

    reti                                          ; $7635: $d9


    ld d, a                                       ; $7636: $57
    push de                                       ; $7637: $d5
    sub e                                         ; $7638: $93
    res 5, l                                      ; $7639: $cb $ad
    add $5f                                       ; $763b: $c6 $5f
    adc [hl]                                      ; $763d: $8e
    ld a, [hl+]                                   ; $763e: $2a
    ld l, h                                       ; $763f: $6c
    or [hl]                                       ; $7640: $b6
    add [hl]                                      ; $7641: $86
    rst $08                                       ; $7642: $cf
    ld h, [hl]                                    ; $7643: $66
    and a                                         ; $7644: $a7
    adc h                                         ; $7645: $8c
    ld a, a                                       ; $7646: $7f
    sub l                                         ; $7647: $95
    ld c, e                                       ; $7648: $4b
    pop bc                                        ; $7649: $c1
    ld [hl], h                                    ; $764a: $74
    rst $20                                       ; $764b: $e7
    ld a, l                                       ; $764c: $7d
    adc h                                         ; $764d: $8c
    adc l                                         ; $764e: $8d
    ld a, l                                       ; $764f: $7d
    and c                                         ; $7650: $a1
    call z, $994e                                 ; $7651: $cc $4e $99
    xor [hl]                                      ; $7654: $ae
    xor b                                         ; $7655: $a8
    inc hl                                        ; $7656: $23
    inc c                                         ; $7657: $0c
    db $db                                        ; $7658: $db
    add hl, sp                                    ; $7659: $39
    ld b, a                                       ; $765a: $47
    srl a                                         ; $765b: $cb $3f
    ld a, e                                       ; $765d: $7b
    ld e, c                                       ; $765e: $59
    jp c, Jump_029_63b3                           ; $765f: $da $b3 $63

    ld [hl], e                                    ; $7662: $73
    add hl, hl                                    ; $7663: $29
    ld e, b                                       ; $7664: $58
    ld c, c                                       ; $7665: $49
    add c                                         ; $7666: $81
    rlca                                          ; $7667: $07
    add h                                         ; $7668: $84
    ld bc, $39db                                  ; $7669: $01 $db $39
    ld b, a                                       ; $766c: $47
    ld d, c                                       ; $766d: $51
    ld [hl], l                                    ; $766e: $75
    sbc a                                         ; $766f: $9f
    ld a, h                                       ; $7670: $7c
    rst $00                                       ; $7671: $c7
    bit 7, a                                      ; $7672: $cb $7f
    dec e                                         ; $7674: $1d
    db $ed                                        ; $7675: $ed
    and h                                         ; $7676: $a4
    ld l, e                                       ; $7677: $6b
    ld a, l                                       ; $7678: $7d
    or [hl]                                       ; $7679: $b6
    and h                                         ; $767a: $a4
    ld a, c                                       ; $767b: $79
    ld sp, hl                                     ; $767c: $f9
    ld e, c                                       ; $767d: $59

jr_029_767e:
    jr nz, jr_029_767e                            ; $767e: $20 $fe

    jp nc, Jump_029_51de                          ; $7680: $d2 $de $51

    xor a                                         ; $7683: $af
    xor a                                         ; $7684: $af
    ld l, b                                       ; $7685: $68
    rst $00                                       ; $7686: $c7
    ld [hl], d                                    ; $7687: $72
    add sp, -$44                                  ; $7688: $e8 $bc
    ld hl, sp-$2c                                 ; $768a: $f8 $d4
    rst $20                                       ; $768c: $e7
    ld b, [hl]                                    ; $768d: $46
    add sp, $52                                   ; $768e: $e8 $52
    or b                                          ; $7690: $b0
    sbc b                                         ; $7691: $98
    ldh [$03], a                                  ; $7692: $e0 $03
    cp l                                          ; $7694: $bd
    ld sp, $7605                                  ; $7695: $31 $05 $76
    ret                                           ; $7698: $c9


    ld [hl], e                                    ; $7699: $73
    sbc l                                         ; $769a: $9d
    dec de                                        ; $769b: $1b
    nop                                           ; $769c: $00
    jp nz, Jump_000_39db                          ; $769d: $c2 $db $39

    rst $00                                       ; $76a0: $c7
    ld l, c                                       ; $76a1: $69
    sbc b                                         ; $76a2: $98
    ld b, $66                                     ; $76a3: $06 $66
    and a                                         ; $76a5: $a7
    call z, $18d6                                 ; $76a6: $cc $d6 $18
    cpl                                           ; $76a9: $2f
    dec b                                         ; $76aa: $05
    cp e                                          ; $76ab: $bb
    or h                                          ; $76ac: $b4
    sbc b                                         ; $76ad: $98
    sub $1f                                       ; $76ae: $d6 $1f
    ld a, a                                       ; $76b0: $7f
    cp l                                          ; $76b1: $bd
    ld c, h                                       ; $76b2: $4c
    rla                                           ; $76b3: $17
    cp [hl]                                       ; $76b4: $be
    add h                                         ; $76b5: $84
    ld c, d                                       ; $76b6: $4a
    ld d, e                                       ; $76b7: $53

jr_029_76b8:
    ld h, d                                       ; $76b8: $62
    ld [hl], e                                    ; $76b9: $73
    inc hl                                        ; $76ba: $23
    ld [hl], h                                    ; $76bb: $74
    add hl, hl                                    ; $76bc: $29
    ld e, b                                       ; $76bd: $58
    ld a, c                                       ; $76be: $79
    add c                                         ; $76bf: $81
    adc a                                         ; $76c0: $8f
    or $2e                                        ; $76c1: $f6 $2e
    ld a, c                                       ; $76c3: $79
    ld c, [hl]                                    ; $76c4: $4e
    ld d, a                                       ; $76c5: $57
    sub h                                         ; $76c6: $94
    or c                                          ; $76c7: $b1
    xor h                                         ; $76c8: $ac
    ld [$0308], a                                 ; $76c9: $ea $08 $03
    db $db                                        ; $76cc: $db
    add hl, sp                                    ; $76cd: $39
    ld d, $b2                                     ; $76ce: $16 $b2
    ld a, $79                                     ; $76d0: $3e $79
    jp z, $ded2                                   ; $76d2: $ca $d2 $de

    pop de                                        ; $76d5: $d1
    cpl                                           ; $76d6: $2f
    ld a, [hl]                                    ; $76d7: $7e
    ld a, a                                       ; $76d8: $7f
    ld b, a                                       ; $76d9: $47
    and a                                         ; $76da: $a7
    ld a, e                                       ; $76db: $7b
    dec c                                         ; $76dc: $0d
    halt                                          ; $76dd: $76
    xor h                                         ; $76de: $ac
    push af                                       ; $76df: $f5
    and l                                         ; $76e0: $a5
    reti                                          ; $76e1: $d9


    ld [hl], c                                    ; $76e2: $71
    ld d, c                                       ; $76e3: $51
    xor l                                         ; $76e4: $ad
    ld l, c                                       ; $76e5: $69
    ld h, h                                       ; $76e6: $64
    ld b, a                                       ; $76e7: $47
    cp a                                          ; $76e8: $bf
    ld [de], a                                    ; $76e9: $12
    jr nz, jr_029_76f8                            ; $76ea: $20 $0c

    db $db                                        ; $76ec: $db
    add hl, sp                                    ; $76ed: $39
    rst $00                                       ; $76ee: $c7
    ld l, c                                       ; $76ef: $69
    sbc b                                         ; $76f0: $98

jr_029_76f1:
    ld b, $66                                     ; $76f1: $06 $66
    and a                                         ; $76f3: $a7
    xor h                                         ; $76f4: $ac
    inc hl                                        ; $76f5: $23
    ret                                           ; $76f6: $c9


    ld c, h                                       ; $76f7: $4c

jr_029_76f8:
    ld [hl], l                                    ; $76f8: $75
    add hl, hl                                    ; $76f9: $29
    jr jr_029_76b8                                ; $76fa: $18 $bc

    push af                                       ; $76fc: $f5
    ld l, c                                       ; $76fd: $69
    sub b                                         ; $76fe: $90
    inc b                                         ; $76ff: $04
    ld d, e                                       ; $7700: $53
    ld h, d                                       ; $7701: $62
    ld [hl], e                                    ; $7702: $73
    inc hl                                        ; $7703: $23
    ld [hl], h                                    ; $7704: $74
    add hl, hl                                    ; $7705: $29
    sbc b                                         ; $7706: $98
    sub a                                         ; $7707: $97
    rrca                                          ; $7708: $0f
    and a                                         ; $7709: $a7
    ld sp, $92ee                                  ; $770a: $31 $ee $92
    rst $20                                       ; $770d: $e7
    jp z, $e0b3                                   ; $770e: $ca $b3 $e0

    ld c, e                                       ; $7711: $4b
    ld b, $80                                     ; $7712: $06 $80
    jr nc, jr_029_76f1                            ; $7714: $30 $db

    add hl, sp                                    ; $7716: $39
    cp l                                          ; $7717: $bd
    jp nc, $a8ac                                  ; $7718: $d2 $ac $a8

    push af                                       ; $771b: $f5
    ld b, a                                       ; $771c: $47
    jp hl                                         ; $771d: $e9


    or e                                          ; $771e: $b3
    db $d3                                        ; $771f: $d3
    db $10                                        ; $7720: $10
    sbc e                                         ; $7721: $9b
    sub a                                         ; $7722: $97
    dec bc                                        ; $7723: $0b
    xor e                                         ; $7724: $ab
    ld d, h                                       ; $7725: $54
    ret c                                         ; $7726: $d8

    sbc d                                         ; $7727: $9a
    ld [hl], a                                    ; $7728: $77
    add h                                         ; $7729: $84
    ld bc, $d2bd                                  ; $772a: $01 $bd $d2
    xor h                                         ; $772d: $ac
    xor b                                         ; $772e: $a8
    push af                                       ; $772f: $f5
    ld b, a                                       ; $7730: $47
    cp c                                          ; $7731: $b9
    ld c, d                                       ; $7732: $4a
    add l                                         ; $7733: $85
    pop bc                                        ; $7734: $c1
    inc a                                         ; $7735: $3c
    rst $00                                       ; $7736: $c7
    ld l, $74                                     ; $7737: $2e $74
    and d                                         ; $7739: $a2
    ld [hl], $08                                  ; $773a: $36 $08
    inc bc                                        ; $773c: $03
    rst $00                                       ; $773d: $c7
    ld [hl], d                                    ; $773e: $72
    ld hl, sp-$36                                 ; $773f: $f8 $ca
    ld hl, sp-$31                                 ; $7741: $f8 $cf
    res 0, l                                      ; $7743: $cb $85
    ld d, l                                       ; $7745: $55
    ld a, [hl+]                                   ; $7746: $2a
    ld l, h                                       ; $7747: $6c
    ld [$55ae], a                                 ; $7748: $ea $ae $55
    dec e                                         ; $774b: $1d
    ld h, c                                       ; $774c: $61
    ld b, a                                       ; $774d: $47
    push bc                                       ; $774e: $c5
    xor d                                         ; $774f: $aa
    ld a, h                                       ; $7750: $7c
    ret c                                         ; $7751: $d8

    ld h, b                                       ; $7752: $60
    db $dd                                        ; $7753: $dd
    adc d                                         ; $7754: $8a
    ld c, d                                       ; $7755: $4a
    ld [$dd18], sp                                ; $7756: $08 $18 $dd
    adc h                                         ; $7759: $8c
    ret nz                                        ; $775a: $c0

    inc bc                                        ; $775b: $03
    ld b, $dd                                     ; $775c: $06 $dd

jr_029_775e:
    dec h                                         ; $775e: $25
    db $fd                                        ; $775f: $fd
    dec hl                                        ; $7760: $2b
    cp a                                          ; $7761: $bf
    ld c, c                                       ; $7762: $49
    jr @-$37                                      ; $7763: $18 $c7

    ld e, h                                       ; $7765: $5c
    db $eb                                        ; $7766: $eb
    dec h                                         ; $7767: $25
    push af                                       ; $7768: $f5
    sbc e                                         ; $7769: $9b
    add h                                         ; $776a: $84
    ld bc, $3fc7                                  ; $776b: $01 $c7 $3f
    cp l                                          ; $776e: $bd
    ld l, b                                       ; $776f: $68
    cp h                                          ; $7770: $bc
    ldh [rNR23], a                                ; $7771: $e0 $18
    xor l                                         ; $7773: $ad
    xor a                                         ; $7774: $af
    pop af                                        ; $7775: $f1
    ld d, d                                       ; $7776: $52
    add b                                         ; $7777: $80
    ld bc, $19ad                                  ; $7778: $01 $ad $19
    ldh a, [$2a]                                  ; $777b: $f0 $2a
    ld c, $18                                     ; $777d: $0e $18
    daa                                           ; $777f: $27
    dec de                                        ; $7780: $1b
    cp b                                          ; $7781: $b8
    push de                                       ; $7782: $d5
    ld d, l                                       ; $7783: $55
    jp nz, $99a7                                  ; $7784: $c2 $a7 $99

    set 3, b                                      ; $7787: $cb $d8
    push af                                       ; $7789: $f5
    xor d                                         ; $778a: $aa
    ld h, b                                       ; $778b: $60
    dec a                                         ; $778c: $3d
    ld b, h                                       ; $778d: $44
    add hl, bc                                    ; $778e: $09
    db $ec                                        ; $778f: $ec
    dec de                                        ; $7790: $1b
    jr jr_029_77e4                                ; $7791: $18 $51

    cp a                                          ; $7793: $bf
    ld c, c                                       ; $7794: $49
    jr jr_029_775e                                ; $7795: $18 $c7

    sbc [hl]                                      ; $7797: $9e
    push de                                       ; $7798: $d5
    dec e                                         ; $7799: $1d

Jump_029_779a:
    inc bc                                        ; $779a: $03
    dec l                                         ; $779b: $2d
    or a                                          ; $779c: $b7
    xor d                                         ; $779d: $aa
    rst $00                                       ; $779e: $c7
    rlca                                          ; $779f: $07
    inc c                                         ; $77a0: $0c
    xor l                                         ; $77a1: $ad
    ld a, [hl+]                                   ; $77a2: $2a
    jp nc, $b8ec                                  ; $77a3: $d2 $ec $b8

    inc [hl]                                      ; $77a6: $34
    call nz, $2730                                ; $77a7: $c4 $30 $27
    ld l, e                                       ; $77aa: $6b
    db $fd                                        ; $77ab: $fd

jr_029_77ac:
    rst $20                                       ; $77ac: $e7
    push hl                                       ; $77ad: $e5
    jp nz, Jump_029_463a                          ; $77ae: $c2 $3a $46

    xor d                                         ; $77b1: $aa

jr_029_77b2:
    and d                                         ; $77b2: $a2
    ldh a, [$5d]                                  ; $77b3: $f0 $5d
    ld sp, $d6db                                  ; $77b5: $31 $db $d6
    db $eb                                        ; $77b8: $eb
    ld bc, $db03                                  ; $77b9: $01 $03 $db
    halt                                          ; $77bc: $76
    ld c, d                                       ; $77bd: $4a
    ld h, d                                       ; $77be: $62
    dec a                                         ; $77bf: $3d
    jp z, $b185                                   ; $77c0: $ca $85 $b1

    ld c, h                                       ; $77c3: $4c
    reti                                          ; $77c4: $d9


    add l                                         ; $77c5: $85
    push bc                                       ; $77c6: $c5
    xor h                                         ; $77c7: $ac
    ld [$e6cf], a                                 ; $77c8: $ea $cf $e6

Jump_029_77cb:
    scf                                           ; $77cb: $37
    jr z, jr_029_77ac                             ; $77cc: $28 $de

    dec b                                         ; $77ce: $05
    inc bc                                        ; $77cf: $03
    rst $00                                       ; $77d0: $c7
    res 4, l                                      ; $77d1: $cb $a5
    jr nz, jr_029_77b2                            ; $77d3: $20 $dd

    ld h, c                                       ; $77d5: $61
    ld d, [hl]                                    ; $77d6: $56
    dec [hl]                                      ; $77d7: $35
    pop de                                        ; $77d8: $d1
    ld h, c                                       ; $77d9: $61
    ld a, [hl+]                                   ; $77da: $2a
    ccf                                           ; $77db: $3f
    ld a, c                                       ; $77dc: $79
    adc l                                         ; $77dd: $8d
    or c                                          ; $77de: $b1
    reti                                          ; $77df: $d9


    cp c                                          ; $77e0: $b9
    and b                                         ; $77e1: $a0
    or $d7                                        ; $77e2: $f6 $d7

jr_029_77e4:
    cp d                                          ; $77e4: $ba
    ld h, b                                       ; $77e5: $60
    dec a                                         ; $77e6: $3d
    ld c, e                                       ; $77e7: $4b
    xor [hl]                                      ; $77e8: $ae
    ld c, [hl]                                    ; $77e9: $4e
    ret                                           ; $77ea: $c9


    jp $a2f8                                      ; $77eb: $c3 $f8 $a2


    cp [hl]                                       ; $77ee: $be
    ld a, [hl+]                                   ; $77ef: $2a
    ld c, l                                       ; $77f0: $4d
    ld h, h                                       ; $77f1: $64
    ld l, e                                       ; $77f2: $6b
    rst $38                                       ; $77f3: $ff
    ld l, $c1                                     ; $77f4: $2e $c1
    ld h, l                                       ; $77f6: $65
    ccf                                           ; $77f7: $3f
    cpl                                           ; $77f8: $2f
    rla                                           ; $77f9: $17
    ld h, [hl]                                    ; $77fa: $66
    ld d, l                                       ; $77fb: $55
    inc de                                        ; $77fc: $13
    cp l                                          ; $77fd: $bd
    db $eb                                        ; $77fe: $eb
    ld c, [hl]                                    ; $77ff: $4e
    ld c, c                                       ; $7800: $49
    ld e, a                                       ; $7801: $5f
    sub e                                         ; $7802: $93
    add [hl]                                      ; $7803: $86
    dec sp                                        ; $7804: $3b
    dec sp                                        ; $7805: $3b
    ld h, l                                       ; $7806: $65
    ld c, c                                       ; $7807: $49
    adc a                                         ; $7808: $8f
    jr nc, @+$2f                                  ; $7809: $30 $2d

    cp c                                          ; $780b: $b9
    ld d, b                                       ; $780c: $50
    xor c                                         ; $780d: $a9
    ld e, c                                       ; $780e: $59
    call z, $feaa                                 ; $780f: $cc $aa $fe
    ld l, h                                       ; $7812: $6c
    inc l                                         ; $7813: $2c
    ld d, e                                       ; $7814: $53
    and b                                         ; $7815: $a0
    dec bc                                        ; $7816: $0b
    ld b, $3d                                     ; $7817: $06 $3d
    jp z, $292f                                   ; $7819: $ca $2f $29

    ld [hl], $b3                                  ; $781c: $36 $b3
    xor d                                         ; $781e: $aa
    adc c                                         ; $781f: $89
    cp [hl]                                       ; $7820: $be
    ld h, $cd                                     ; $7821: $26 $cd
    ld a, [hl+]                                   ; $7823: $2a
    and l                                         ; $7824: $a5
    dec a                                         ; $7825: $3d
    ld sp, hl                                     ; $7826: $f9
    sra [hl]                                      ; $7827: $cb $2e
    xor h                                         ; $7829: $ac
    ld c, c                                       ; $782a: $49
    inc hl                                        ; $782b: $23

Jump_029_782c:
    add b                                         ; $782c: $80
    jr nc, jr_029_7876                            ; $782d: $30 $47

    ret                                           ; $782f: $c9


    ld d, e                                       ; $7830: $53
    call $a4d7                                    ; $7831: $cd $d7 $a4
    reti                                          ; $7834: $d9


    ld e, e                                       ; $7835: $5b
    ld e, a                                       ; $7836: $5f
    ld d, $e4                                     ; $7837: $16 $e4
    and l                                         ; $7839: $a5
    ld h, b                                       ; $783a: $60
    sbc [hl]                                      ; $783b: $9e
    sub e                                         ; $783c: $93
    rst $10                                       ; $783d: $d7
    xor d                                         ; $783e: $aa
    xor h                                         ; $783f: $ac
    ld c, c                                       ; $7840: $49
    inc hl                                        ; $7841: $23
    ld c, e                                       ; $7842: $4b
    sbc [hl]                                      ; $7843: $9e
    ld h, [hl]                                    ; $7844: $66
    ld d, l                                       ; $7845: $55
    inc de                                        ; $7846: $13
    cp l                                          ; $7847: $bd
    dec hl                                        ; $7848: $2b
    ld b, $47                                     ; $7849: $06 $47
    ld d, c                                       ; $784b: $51
    ld a, d                                       ; $784c: $7a
    ld a, c                                       ; $784d: $79
    ld e, c                                       ; $784e: $59
    call z, $feaa                                 ; $784f: $cc $aa $fe
    ld l, h                                       ; $7852: $6c
    inc l                                         ; $7853: $2c
    ld d, e                                       ; $7854: $53
    cp d                                          ; $7855: $ba
    ld h, b                                       ; $7856: $60
    ld b, a                                       ; $7857: $47
    ld sp, hl                                     ; $7858: $f9
    ld [c], a                                     ; $7859: $e2
    dec hl                                        ; $785a: $2b
    ld hl, sp+$34                                 ; $785b: $f8 $34
    add $79                                       ; $785d: $c6 $79
    ld a, c                                       ; $785f: $79
    ld hl, sp-$3b                                 ; $7860: $f8 $c5
    xor h                                         ; $7862: $ac
    ld [$c6cf], a                                 ; $7863: $ea $cf $c6
    ld [hl-], a                                   ; $7866: $32
    dec b                                         ; $7867: $05
    ld d, $6a                                     ; $7868: $16 $6a
    db $fd                                        ; $786a: $fd
    rst $10                                       ; $786b: $d7
    and h                                         ; $786c: $a4
    sbc c                                         ; $786d: $99
    db $fd                                        ; $786e: $fd
    rra                                           ; $786f: $1f
    rst $10                                       ; $7870: $d7
    and h                                         ; $7871: $a4
    sub c                                         ; $7872: $91

Jump_029_7873:
    dec h                                         ; $7873: $25
    ld c, a                                       ; $7874: $4f
    or e                                          ; $7875: $b3

jr_029_7876:
    xor d                                         ; $7876: $aa
    adc c                                         ; $7877: $89
    cp [hl]                                       ; $7878: $be
    dec bc                                        ; $7879: $0b
    inc bc                                        ; $787a: $03
    or l                                          ; $787b: $b5
    rra                                           ; $787c: $1f
    ld h, c                                       ; $787d: $61
    xor l                                         ; $787e: $ad
    ret                                           ; $787f: $c9


    rst $08                                       ; $7880: $cf
    ld a, [$2cd2]                                 ; $7881: $fa $d2 $2c
    ld h, [hl]                                    ; $7884: $66
    ld d, l                                       ; $7885: $55
    ld a, a                                       ; $7886: $7f
    ld [hl], $2f                                  ; $7887: $36 $2f
    rla                                           ; $7889: $17
    add $32                                       ; $788a: $c6 $32
    ld h, l                                       ; $788c: $65
    rla                                           ; $788d: $17
    db $10                                        ; $788e: $10
    ld b, $bd                                     ; $788f: $06 $bd
    jp nc, Jump_029_5d8c                          ; $7891: $d2 $8c $5d

    xor b                                         ; $7894: $a8
    jp nc, $32fa                                  ; $7895: $d2 $fa $32

    cpl                                           ; $7898: $2f
    ld [$72f3], a                                 ; $7899: $ea $f3 $72
    ld h, c                                       ; $789c: $61
    inc l                                         ; $789d: $2c
    ld d, e                                       ; $789e: $53
    halt                                          ; $789f: $76
    ld h, c                                       ; $78a0: $61
    ldh a, [$95]                                  ; $78a1: $f0 $95
    sub c                                         ; $78a3: $91
    adc a                                         ; $78a4: $8f
    call Call_029_5662                            ; $78a5: $cd $62 $56
    push af                                       ; $78a8: $f5
    ld h, a                                       ; $78a9: $67
    ld [$c703], sp                                ; $78aa: $08 $03 $c7
    ld e, d                                       ; $78ad: $5a
    sbc a                                         ; $78ae: $9f
    sub $aa                                       ; $78af: $d6 $aa
    add c                                         ; $78b1: $81
    ld e, h                                       ; $78b2: $5c
    or [hl]                                       ; $78b3: $b6
    ld a, [hl+]                                   ; $78b4: $2a
    ld c, l                                       ; $78b5: $4d
    ld h, h                                       ; $78b6: $64
    ld d, h                                       ; $78b7: $54
    di                                            ; $78b8: $f3
    ld h, l                                       ; $78b9: $65
    rst $20                                       ; $78ba: $e7
    ld l, c                                       ; $78bb: $69
    ld e, [hl]                                    ; $78bc: $5e
    ld l, $8c                                     ; $78bd: $2e $8c
    ld h, l                                       ; $78bf: $65
    ld a, [bc]                                    ; $78c0: $0a
    jp nz, Jump_029_5147                          ; $78c1: $c2 $47 $51

    db $e3                                        ; $78c4: $e3
    push hl                                       ; $78c5: $e5
    ld d, d                                       ; $78c6: $52
    or b                                          ; $78c7: $b0
    ld a, [hl+]                                   ; $78c8: $2a
    ld c, l                                       ; $78c9: $4d
    ld h, h                                       ; $78ca: $64
    ld l, e                                       ; $78cb: $6b
    rst $38                                       ; $78cc: $ff
    jp c, $24df                                   ; $78cd: $da $df $24

    or c                                          ; $78d0: $b1
    ld a, c                                       ; $78d1: $79
    ld sp, hl                                     ; $78d2: $f9
    push bc                                       ; $78d3: $c5
    xor h                                         ; $78d4: $ac
    ld [$c6cf], a                                 ; $78d5: $ea $cf $c6
    ld [hl-], a                                   ; $78d8: $32
    and l                                         ; $78d9: $a5
    res 1, [hl]                                   ; $78da: $cb $8e
    and d                                         ; $78dc: $a2
    add $cb                                       ; $78dd: $c6 $cb
    and l                                         ; $78df: $a5
    ld h, b                                       ; $78e0: $60
    ld l, l                                       ; $78e1: $6d
    db $e3                                        ; $78e2: $e3
    ld l, e                                       ; $78e3: $6b
    jp nc, $e770                                  ; $78e4: $d2 $70 $e7

    ld b, l                                       ; $78e7: $45
    ld a, l                                       ; $78e8: $7d
    rla                                           ; $78e9: $17
    jr nc, jr_029_7919                            ; $78ea: $30 $2d

    cp c                                          ; $78ec: $b9
    ld d, b                                       ; $78ed: $50
    xor c                                         ; $78ee: $a9
    ld e, c                                       ; $78ef: $59
    call z, $feaa                                 ; $78f0: $cc $aa $fe
    ld l, h                                       ; $78f3: $6c
    inc l                                         ; $78f4: $2c
    ld d, e                                       ; $78f5: $53
    nop                                           ; $78f6: $00
    ld hl, $3904                                  ; $78f7: $21 $04 $39
    ei                                            ; $78fa: $fb
    ld sp, hl                                     ; $78fb: $f9

jr_029_78fc:
    push de                                       ; $78fc: $d5
    cp a                                          ; $78fd: $bf
    ld bc, $0184                                  ; $78fe: $01 $84 $01
    cp l                                          ; $7901: $bd
    jp nc, Jump_029_52ac                          ; $7902: $d2 $ac $52

    and d                                         ; $7905: $a2
    db $f4                                        ; $7906: $f4
    dec a                                         ; $7907: $3d
    ld sp, hl                                     ; $7908: $f9
    res 2, h                                      ; $7909: $cb $94
    sbc d                                         ; $790b: $9a
    ld e, c                                       ; $790c: $59
    push de                                       ; $790d: $d5
    ld b, h                                       ; $790e: $44
    ld e, a                                       ; $790f: $5f
    ld a, d                                       ; $7910: $7a
    ld a, c                                       ; $7911: $79
    sbc c                                         ; $7912: $99
    rla                                           ; $7913: $17
    and l                                         ; $7914: $a5
    dec [hl]                                      ; $7915: $35
    ld l, c                                       ; $7916: $69
    ld h, h                                       ; $7917: $64
    ret                                           ; $7918: $c9


jr_029_7919:
    inc de                                        ; $7919: $13
    jp nz, $d2dd                                  ; $791a: $c2 $dd $d2

    ld b, h                                       ; $791d: $44
    or [hl]                                       ; $791e: $b6
    ld e, $ad                                     ; $791f: $1e $ad
    sub [hl]                                      ; $7921: $96
    sub [hl]                                      ; $7922: $96
    or l                                          ; $7923: $b5
    ld a, a                                       ; $7924: $7f
    xor l                                         ; $7925: $ad
    ld a, [hl+]                                   ; $7926: $2a
    jp nc, Jump_029_7bac                          ; $7927: $d2 $ac $7b

    cp d                                          ; $792a: $ba
    cp a                                          ; $792b: $bf

jr_029_792c:
    call nc, Call_029_5660                        ; $792c: $d4 $60 $56
    dec [hl]                                      ; $792f: $35
    pop de                                        ; $7930: $d1
    cp e                                          ; $7931: $bb
    ld l, [hl]                                    ; $7932: $6e
    and a                                         ; $7933: $a7
    inc h                                         ; $7934: $24
    ld [hl], a                                    ; $7935: $77
    rst $10                                       ; $7936: $d7
    ld d, a                                       ; $7937: $57
    and l                                         ; $7938: $a5
    adc c                                         ; $7939: $89
    adc h                                         ; $793a: $8c
    ld l, d                                       ; $793b: $6a
    adc [hl]                                      ; $793c: $8e
    jr nc, jr_029_78fc                            ; $793d: $30 $bd

    jp nc, Jump_029_52ac                          ; $793f: $d2 $ac $52

    xor d                                         ; $7942: $aa
    ld sp, hl                                     ; $7943: $f9
    add d                                         ; $7944: $82
    rst $30                                       ; $7945: $f7
    ld e, l                                       ; $7946: $5d
    ld [c], a                                     ; $7947: $e2
    xor [hl]                                      ; $7948: $ae
    ld l, l                                       ; $7949: $6d
    ld a, h                                       ; $794a: $7c
    ld [$af8b], a                                 ; $794b: $ea $8b $af
    ldh [rOCPD], a                                ; $794e: $e0 $6b
    jp nc, Jump_000_258c                          ; $7950: $d2 $8c $25

    push de                                       ; $7953: $d5
    ld a, h                                       ; $7954: $7c
    ld b, l                                       ; $7955: $45
    xor l                                         ; $7956: $ad
    ccf                                           ; $7957: $3f
    rst $08                                       ; $7958: $cf
    cp c                                          ; $7959: $b9
    inc [hl]                                      ; $795a: $34
    di                                            ; $795b: $f3
    ld e, h                                       ; $795c: $5c
    ldh a, [$be]                                  ; $795d: $f0 $be
    inc [hl]                                      ; $795f: $34
    sbc $05                                       ; $7960: $de $05
    inc bc                                        ; $7962: $03
    dec a                                         ; $7963: $3d
    adc e                                         ; $7964: $8b
    ld a, [$6074]                                 ; $7965: $fa $74 $60
    and h                                         ; $7968: $a4
    inc hl                                        ; $7969: $23
    rla                                           ; $796a: $17
    ld e, $21                                     ; $796b: $1e $21
    db $e4                                        ; $796d: $e4
    push hl                                       ; $796e: $e5
    jp nz, $a658                                  ; $796f: $c2 $58 $a6

    db $ec                                        ; $7972: $ec
    jp nz, Jump_029_5662                          ; $7973: $c2 $62 $56

    push af                                       ; $7976: $f5
    ld h, a                                       ; $7977: $67
    ld [$4761], sp                                ; $7978: $08 $61 $47
    ld d, c                                       ; $797b: $51
    ld a, d                                       ; $797c: $7a

jr_029_797d:
    ld a, c                                       ; $797d: $79
    sbc c                                         ; $797e: $99
    ld d, l                                       ; $797f: $55
    ld c, l                                       ; $7980: $4d
    db $f4                                        ; $7981: $f4
    ld a, c                                       ; $7982: $79
    ld d, c                                       ; $7983: $51
    ld e, a                                       ; $7984: $5f
    sub e                                         ; $7985: $93
    ld h, [hl]                                    ; $7986: $66
    sub l                                         ; $7987: $95
    ld [de], a                                    ; $7988: $12
    and l                                         ; $7989: $a5
    rst $28                                       ; $798a: $ef
    ret                                           ; $798b: $c9


    ld e, a                                       ; $798c: $5f
    db $10                                        ; $798d: $10
    ld b, $3d                                     ; $798e: $06 $3d
    jp z, $b185                                   ; $7990: $ca $85 $b1

    ld c, h                                       ; $7993: $4c
    reti                                          ; $7994: $d9


    add l                                         ; $7995: $85
    push bc                                       ; $7996: $c5
    xor h                                         ; $7997: $ac
    ld [$e6cf], a                                 ; $7998: $ea $cf $e6
    scf                                           ; $799b: $37
    jr z, jr_029_792c                             ; $799c: $28 $8e

    jr nc, jr_029_797d                            ; $799e: $30 $dd

    ld c, d                                       ; $79a0: $4a

jr_029_79a1:
    ld h, $fc                                     ; $79a1: $26 $fc
    sbc d                                         ; $79a3: $9a
    inc [hl]                                      ; $79a4: $34

Call_029_79a5:
    or d                                          ; $79a5: $b2
    ld c, e                                       ; $79a6: $4b
    add c                                         ; $79a7: $81
    inc a                                         ; $79a8: $3c
    cp e                                          ; $79a9: $bb
    ld c, a                                       ; $79aa: $4f
    ld c, $53                                     ; $79ab: $0e $53
    ld h, d                                       ; $79ad: $62
    db $eb                                        ; $79ae: $eb
    ret z                                         ; $79af: $c8

    inc bc                                        ; $79b0: $03
    xor h                                         ; $79b1: $ac
    push bc                                       ; $79b2: $c5

Jump_029_79b3:
    ld d, l                                       ; $79b3: $55
    ld a, h                                       ; $79b4: $7c
    sbc [hl]                                      ; $79b5: $9e
    dec bc                                        ; $79b6: $0b
    cpl                                           ; $79b7: $2f
    add a                                         ; $79b8: $87
    ld a, c                                       ; $79b9: $79
    ld sp, hl                                     ; $79ba: $f9
    db $10                                        ; $79bb: $10
    ld h, c                                       ; $79bc: $61
    jp $a7c3                                      ; $79bd: $c3 $c3 $a7


    and h                                         ; $79c0: $a4
    sub a                                         ; $79c1: $97
    ld c, e                                       ; $79c2: $4b
    pop bc                                        ; $79c3: $c1
    adc d                                         ; $79c4: $8a
    halt                                          ; $79c5: $76
    ld a, [hl-]                                   ; $79c6: $3a
    ld c, a                                       ; $79c7: $4f
    add b                                         ; $79c8: $80
    sub $2b                                       ; $79c9: $d6 $2b
    call $c262                                    ; $79cb: $cd $62 $c2
    xor a                                         ; $79ce: $af
    ld c, c                                       ; $79cf: $49
    inc hl                                        ; $79d0: $23
    cp e                                          ; $79d1: $bb
    inc d                                         ; $79d2: $14
    ret z                                         ; $79d3: $c8

    or e                                          ; $79d4: $b3
    ei                                            ; $79d5: $fb
    db $e4                                        ; $79d6: $e4
    add b                                         ; $79d7: $80
    jr nc, jr_029_79a1                            ; $79d8: $30 $c7

    res 5, e                                      ; $79da: $cb $ab
    ld [hl], a                                    ; $79dc: $77
    ld e, c                                       ; $79dd: $59
    xor a                                         ; $79de: $af
    inc [hl]                                      ; $79df: $34
    xor e                                         ; $79e0: $ab
    db $e4                                        ; $79e1: $e4
    push de                                       ; $79e2: $d5
    sbc a                                         ; $79e3: $9f
    dec e                                         ; $79e4: $1d
    adc [hl]                                      ; $79e5: $8e
    ld bc, $3ca7                                  ; $79e6: $01 $a7 $3c
    cp a                                          ; $79e9: $bf
    db $e3                                        ; $79ea: $e3
    dec [hl]                                      ; $79eb: $35
    ld a, h                                       ; $79ec: $7c
    inc c                                         ; $79ed: $0c
    daa                                           ; $79ee: $27
    and l                                         ; $79ef: $a5
    or d                                          ; $79f0: $b2
    dec e                                         ; $79f1: $1d
    xor a                                         ; $79f2: $af
    pop hl                                        ; $79f3: $e1
    ld h, e                                       ; $79f4: $63
    daa                                           ; $79f5: $27
    add hl, hl                                    ; $79f6: $29
    dec b                                         ; $79f7: $05
    ld b, [hl]                                    ; $79f8: $46
    add e                                         ; $79f9: $83

jr_029_79fa:
    ld e, a                                       ; $79fa: $5f
    set 0, a                                      ; $79fb: $cb $c7
    xor a                                         ; $79fd: $af
    inc e                                         ; $79fe: $1c
    inc bc                                        ; $79ff: $03
    ld b, a                                       ; $7a00: $47
    daa                                           ; $7a01: $27
    add hl, de                                    ; $7a02: $19
    ret c                                         ; $7a03: $d8

    pop af                                        ; $7a04: $f1
    ld a, [de]                                    ; $7a05: $1a
    ld a, $60                                     ; $7a06: $3e $60
    ld b, a                                       ; $7a08: $47
    ret                                           ; $7a09: $c9


    ld d, e                                       ; $7a0a: $53
    call $a4d7                                    ; $7a0b: $cd $d7 $a4
    sbc c                                         ; $7a0e: $99
    ld e, a                                       ; $7a0f: $5f
    ld a, c                                       ; $7a10: $79
    or [hl]                                       ; $7a11: $b6
    or h                                          ; $7a12: $b4
    rst $10                                       ; $7a13: $d7
    ld a, [$de12]                                 ; $7a14: $fa $12 $de
    and h                                         ; $7a17: $a4
    rst $28                                       ; $7a18: $ef
    cp d                                          ; $7a19: $ba
    sub [hl]                                      ; $7a1a: $96
    ld a, [c]                                     ; $7a1b: $f2
    di                                            ; $7a1c: $f3
    ld [hl], d                                    ; $7a1d: $72
    xor c                                         ; $7a1e: $a9
    ld c, $83                                     ; $7a1f: $0e $83
    ld a, [c]                                     ; $7a21: $f2
    xor e                                         ; $7a22: $ab
    ld d, e                                       ; $7a23: $53
    ld a, [c]                                     ; $7a24: $f2
    or b                                          ; $7a25: $b0
    or a                                          ; $7a26: $b7
    cp [hl]                                       ; $7a27: $be
    inc [hl]                                      ; $7a28: $34
    ld e, [hl]                                    ; $7a29: $5e
    ld l, $05                                     ; $7a2a: $2e $05
    ld [$1603], sp                                ; $7a2c: $08 $03 $16
    xor a                                         ; $7a2f: $af
    pop bc                                        ; $7a30: $c1
    jr z, jr_029_79fa                             ; $7a31: $28 $c7

    daa                                           ; $7a33: $27
    or c                                          ; $7a34: $b1
    sub a                                         ; $7a35: $97
    ld d, c                                       ; $7a36: $51
    ld l, $e9                                     ; $7a37: $2e $e9
    ld d, a                                       ; $7a39: $57
    add hl, hl                                    ; $7a3a: $29
    dec c                                         ; $7a3b: $0d
    ld e, h                                       ; $7a3c: $5c
    adc c                                         ; $7a3d: $89
    xor l                                         ; $7a3e: $ad
    cp h                                          ; $7a3f: $bc
    jr nz, jr_029_7a4e                            ; $7a40: $20 $0c

    xor l                                         ; $7a42: $ad
    ret                                           ; $7a43: $c9


    inc hl                                        ; $7a44: $23
    add h                                         ; $7a45: $84
    ld c, d                                       ; $7a46: $4a
    ld a, [c]                                     ; $7a47: $f2
    xor e                                         ; $7a48: $ab
    jp nc, Jump_000_3644                          ; $7a49: $d2 $44 $36

    cpl                                           ; $7a4c: $2f
    rst $18                                       ; $7a4d: $df

jr_029_7a4e:
    inc c                                         ; $7a4e: $0c
    or h                                          ; $7a4f: $b4
    sbc c                                         ; $7a50: $99
    rla                                           ; $7a51: $17
    push af                                       ; $7a52: $f5

jr_029_7a53:
    ld l, c                                       ; $7a53: $69
    dec sp                                        ; $7a54: $3b
    adc l                                         ; $7a55: $8d
    cpl                                           ; $7a56: $2f
    ld a, h                                       ; $7a57: $7c
    add h                                         ; $7a58: $84
    db $10                                        ; $7a59: $10
    ld b, $96                                     ; $7a5a: $06 $96
    ld a, c                                       ; $7a5c: $79
    cp c                                          ; $7a5d: $b9
    ld d, h                                       ; $7a5e: $54
    rra                                           ; $7a5f: $1f
    sub h                                         ; $7a60: $94
    ld e, a                                       ; $7a61: $5f
    ld a, c                                       ; $7a62: $79
    dec d                                         ; $7a63: $15
    ld [hl], $03                                  ; $7a64: $36 $03
    ld [$0c21], sp                                ; $7a66: $08 $21 $0c
    xor l                                         ; $7a69: $ad
    ld l, d                                       ; $7a6a: $6a
    db $fd                                        ; $7a6b: $fd
    dec [hl]                                      ; $7a6c: $35
    ld l, c                                       ; $7a6d: $69
    ld b, $ff                                     ; $7a6e: $06 $ff
    or h                                          ; $7a70: $b4
    sub $97                                       ; $7a71: $d6 $97
    ldh a, [rNR52]                                ; $7a73: $f0 $26
    db $fd                                        ; $7a75: $fd
    adc [hl]                                      ; $7a76: $8e
    rla                                           ; $7a77: $17
    and l                                         ; $7a78: $a5
    ldh [$a5], a                                  ; $7a79: $e0 $a5
    dec hl                                        ; $7a7b: $2b
    ld b, $96                                     ; $7a7c: $06 $96
    sbc l                                         ; $7a7e: $9d
    ld h, a                                       ; $7a7f: $67
    ret nz                                        ; $7a80: $c0

    rlca                                          ; $7a81: $07
    jp z, $bcaf                                   ; $7a82: $ca $af $bc

    xor h                                         ; $7a85: $ac
    ld l, l                                       ; $7a86: $6d
    ld a, h                                       ; $7a87: $7c
    sub [hl]                                      ; $7a88: $96
    or c                                          ; $7a89: $b1
    and h                                         ; $7a8a: $a4
    sbc d                                         ; $7a8b: $9a
    xor a                                         ; $7a8c: $af
    ld c, [hl]                                    ; $7a8d: $4e
    ret                                           ; $7a8e: $c9


    adc a                                         ; $7a8f: $8f
    cpl                                           ; $7a90: $2f
    cpl                                           ; $7a91: $2f
    ccf                                           ; $7a92: $3f
    jr z, jr_029_7ad4                             ; $7a93: $28 $3f

    cp $c9                                        ; $7a95: $fe $c9
    ld de, $3d06                                  ; $7a97: $11 $06 $3d
    ccf                                           ; $7a9a: $3f
    ld b, [hl]                                    ; $7a9b: $46
    xor $62                                       ; $7a9c: $ee $62
    ld h, [hl]                                    ; $7a9e: $66
    ld a, l                                       ; $7a9f: $7d
    halt                                          ; $7aa0: $76
    jp z, Jump_000_0bca                           ; $7aa1: $ca $ca $0b

    jp c, $d6b1                                   ; $7aa4: $da $b1 $d6

    sub a                                         ; $7aa7: $97
    ld h, $e9                                     ; $7aa8: $26 $e9
    ld [hl], a                                    ; $7aaa: $77
    ld h, c                                       ; $7aab: $61
    ld h, b                                       ; $7aac: $60
    ld a, [hl-]                                   ; $7aad: $3a
    sbc l                                         ; $7aae: $9d
    add h                                         ; $7aaf: $84
    ld h, a                                       ; $7ab0: $67
    di                                            ; $7ab1: $f3
    sbc h                                         ; $7ab2: $9c
    ld [bc], a                                    ; $7ab3: $02
    ld a, h                                       ; $7ab4: $7c
    ret c                                         ; $7ab5: $d8

    adc [hl]                                      ; $7ab6: $8e
    ccf                                           ; $7ab7: $3f
    dec sp                                        ; $7ab8: $3b
    ld h, l                                       ; $7ab9: $65
    ld e, [hl]                                    ; $7aba: $5e
    ld a, [hl]                                    ; $7abb: $7e
    ld l, e                                       ; $7abc: $6b
    push de                                       ; $7abd: $d5
    jr jr_029_7a53                                ; $7abe: $18 $93

    rst $38                                       ; $7ac0: $ff
    jp c, Jump_000_3ad3                           ; $7ac1: $da $d3 $3a

    ld a, [hl+]                                   ; $7ac4: $2a
    sbc $20                                       ; $7ac5: $de $20
    inc c                                         ; $7ac7: $0c
    dec a                                         ; $7ac8: $3d
    and h                                         ; $7ac9: $a4

jr_029_7aca:
    cp c                                          ; $7aca: $b9
    inc d                                         ; $7acb: $14
    call z, Call_029_4073                         ; $7acc: $cc $73 $40
    xor a                                         ; $7acf: $af
    push af                                       ; $7ad0: $f5

Call_029_7ad1:
    and l                                         ; $7ad1: $a5

jr_029_7ad2:
    ld l, l                                       ; $7ad2: $6d
    ld [hl], a                                    ; $7ad3: $77

jr_029_7ad4:
    db $dd                                        ; $7ad4: $dd
    add hl, hl                                    ; $7ad5: $29
    jp hl                                         ; $7ad6: $e9


    db $eb                                        ; $7ad7: $eb
    jr z, jr_029_7ad2                             ; $7ad8: $28 $f8

    jp nz, $935f                                  ; $7ada: $c2 $5f $93

    and [hl]                                      ; $7add: $a6
    ld h, $3f                                     ; $7ade: $26 $3f
    ld c, d                                       ; $7ae0: $4a
    ld b, a                                       ; $7ae1: $47
    ld l, e                                       ; $7ae2: $6b
    ld [hl], c                                    ; $7ae3: $71
    ld l, l                                       ; $7ae4: $6d
    ld d, [hl]                                    ; $7ae5: $56
    ld e, [hl]                                    ; $7ae6: $5e
    ld a, [hl]                                    ; $7ae7: $7e
    halt                                          ; $7ae8: $76
    jp z, $fcbc                                   ; $7ae9: $ca $bc $fc

    jp c, $e74a                                   ; $7aec: $da $4a $e7

    sbc e                                         ; $7aef: $9b
    ld [hl], a                                    ; $7af0: $77
    add h                                         ; $7af1: $84
    ld bc, $5a96                                  ; $7af2: $01 $96 $5a
    cp b                                          ; $7af5: $b8
    ret nz                                        ; $7af6: $c0

    xor b                                         ; $7af7: $a8
    or b                                          ; $7af8: $b0
    ld c, e                                       ; $7af9: $4b
    pop bc                                        ; $7afa: $c1
    cp h                                          ; $7afb: $bc
    ld e, h                                       ; $7afc: $5c
    jr jr_029_7aca                                ; $7afd: $18 $cb

    sub h                                         ; $7aff: $94
    add hl, de                                    ; $7b00: $19
    ld a, [c]                                     ; $7b01: $f2
    dec de                                        ; $7b02: $1b
    rst $20                                       ; $7b03: $e7
    push hl                                       ; $7b04: $e5
    rst $10                                       ; $7b05: $d7
    ld d, [hl]                                    ; $7b06: $56
    ld a, [hl-]                                   ; $7b07: $3a
    rst $18                                       ; $7b08: $df
    cp h                                          ; $7b09: $bc
    rrca                                          ; $7b0a: $0f
    ld e, h                                       ; $7b0b: $5c
    push bc                                       ; $7b0c: $c5
    ld bc, $9bad                                  ; $7b0d: $01 $ad $9b
    ld d, d                                       ; $7b10: $52
    call $d457                                    ; $7b11: $cd $57 $d4
    ld a, [$6a53]                                 ; $7b14: $fa $53 $6a
    ld d, $a6                                     ; $7b17: $16 $a6
    db $fc                                        ; $7b19: $fc
    jp nc, $935e                                  ; $7b1a: $d2 $5e $93

Call_029_7b1d:
    ld h, [hl]                                    ; $7b1d: $66
    db $10                                        ; $7b1e: $10
    ld l, a                                       ; $7b1f: $6f
    and a                                         ; $7b20: $a7
    ld [hl], e                                    ; $7b21: $73
    add hl, hl                                    ; $7b22: $29
    sbc b                                         ; $7b23: $98

jr_029_7b24:
    ld a, [c]                                     ; $7b24: $f2
    jp c, $0c20                                   ; $7b25: $da $20 $0c

    and a                                         ; $7b28: $a7
    and h                                         ; $7b29: $a4
    sub a                                         ; $7b2a: $97
    ld c, e                                       ; $7b2b: $4b

jr_029_7b2c:
    pop bc                                        ; $7b2c: $c1
    ld c, h                                       ; $7b2d: $4c
    ld h, a                                       ; $7b2e: $67
    ld e, [hl]                                    ; $7b2f: $5e
    ld e, [hl]                                    ; $7b30: $5e
    ld a, [hl]                                    ; $7b31: $7e
    sbc [hl]                                      ; $7b32: $9e
    add e                                         ; $7b33: $83
    ld a, a                                       ; $7b34: $7f
    xor $5a                                       ; $7b35: $ee $5a
    ld d, l                                       ; $7b37: $55
    and h                                         ; $7b38: $a4
    ld b, c                                       ; $7b39: $41
    dec sp                                        ; $7b3a: $3b
    ld a, [hl+]                                   ; $7b3b: $2a
    add $79                                       ; $7b3c: $c6 $79
    ld sp, hl                                     ; $7b3e: $f9
    reti                                          ; $7b3f: $d9


    add [hl]                                      ; $7b40: $86
    halt                                          ; $7b41: $76
    ld h, c                                       ; $7b42: $61
    inc l                                         ; $7b43: $2c
    ld a, c                                       ; $7b44: $79
    ld e, d                                       ; $7b45: $5a
    ld a, c                                       ; $7b46: $79
    ld sp, hl                                     ; $7b47: $f9
    ld l, $18                                     ; $7b48: $2e $18
    cp l                                          ; $7b4a: $bd
    jp nc, $e4d4                                  ; $7b4b: $d2 $d4 $e4

    ld b, a                                       ; $7b4e: $47
    jp hl                                         ; $7b4f: $e9


    dec bc                                        ; $7b50: $0b
    ld a, [c]                                     ; $7b51: $f2
    ld d, d                                       ; $7b52: $52
    jr nc, jr_029_7b24                            ; $7b53: $30 $cf

    add l                                         ; $7b55: $85
    rrca                                          ; $7b56: $0f
    jr nc, jr_029_7b2c                            ; $7b57: $30 $d3

    ld e, c                                       ; $7b59: $59
    ret c                                         ; $7b5a: $d8

    adc h                                         ; $7b5b: $8c
    ld l, [hl]                                    ; $7b5c: $6e
    push af                                       ; $7b5d: $f5
    call c, $f155                                 ; $7b5e: $dc $55 $f1
    sub l                                         ; $7b61: $95
    add $0c                                       ; $7b62: $c6 $0c
    dec b                                         ; $7b64: $05
    sbc a                                         ; $7b65: $9f
    add h                                         ; $7b66: $84
    sub $e2                                       ; $7b67: $d6 $e2
    jp c, Jump_029_74cc                           ; $7b69: $da $cc $74

    ld d, [hl]                                    ; $7b6c: $56
    ld e, [hl]                                    ; $7b6d: $5e
    ld a, [hl]                                    ; $7b6e: $7e
    halt                                          ; $7b6f: $76
    jp z, $349a                                   ; $7b70: $ca $9a $34

    or d                                          ; $7b73: $b2
    adc [hl]                                      ; $7b74: $8e
    adc d                                         ; $7b75: $8a
    scf                                           ; $7b76: $37

jr_029_7b77:
    ld [$2f21], sp                                ; $7b77: $08 $21 $2f
    ld [$d4b3], a                                 ; $7b7a: $ea $b3 $d4

Jump_029_7b7d:
    ld h, d                                       ; $7b7d: $62
    ld e, h                                       ; $7b7e: $5c
    ld d, c                                       ; $7b7f: $51
    db $eb                                        ; $7b80: $eb
    rst $08                                       ; $7b81: $cf
    ld [hl], e                                    ; $7b82: $73
    ld d, l                                       ; $7b83: $55
    ld a, h                                       ; $7b84: $7c
    and l                                         ; $7b85: $a5

jr_029_7b86:
    sbc c                                         ; $7b86: $99
    adc $d4                                       ; $7b87: $ce $d4
    or $17                                        ; $7b89: $f6 $17
    add h                                         ; $7b8b: $84
    ld bc, $e4a7                                  ; $7b8c: $01 $a7 $e4
    add d                                         ; $7b8f: $82
    cp h                                          ; $7b90: $bc
    inc d                                         ; $7b91: $14
    db $ec                                        ; $7b92: $ec
    jp nc, Jump_029_779a                          ; $7b93: $d2 $9a $77

    or h                                          ; $7b96: $b4
    ld e, $e5                                     ; $7b97: $1e $e5
    rst $00                                       ; $7b99: $c7
    cp [hl]                                       ; $7b9a: $be
    ld c, d                                       ; $7b9b: $4a
    ld d, c                                       ; $7b9c: $51
    cp a                                          ; $7b9d: $bf
    ld c, c                                       ; $7b9e: $49
    jr nc, @-$69                                  ; $7b9f: $30 $95

    and a                                         ; $7ba1: $a7
    sbc d                                         ; $7ba2: $9a
    ld c, a                                       ; $7ba3: $4f
    ld e, [hl]                                    ; $7ba4: $5e
    ld e, c                                       ; $7ba5: $59
    add e                                         ; $7ba6: $83
    jr nc, jr_029_7b86                            ; $7ba7: $30 $dd

    sub h                                         ; $7ba9: $94
    ld l, d                                       ; $7baa: $6a
    cp [hl]                                       ; $7bab: $be

Jump_029_7bac:
    and d                                         ; $7bac: $a2
    sub $5f                                       ; $7bad: $d6 $5f
    di                                            ; $7baf: $f3
    ld h, l                                       ; $7bb0: $65
    cp h                                          ; $7bb1: $bc
    ld [de], a                                    ; $7bb2: $12
    ld a, e                                       ; $7bb3: $7b
    cp c                                          ; $7bb4: $b9
    ld d, h                                       ; $7bb5: $54
    sbc e                                         ; $7bb6: $9b
    ld c, d                                       ; $7bb7: $4a
    ld a, [de]                                    ; $7bb8: $1a
    ld h, d                                       ; $7bb9: $62
    ld c, e                                       ; $7bba: $4b
    db $e3                                        ; $7bbb: $e3
    ld [hl], b                                    ; $7bbc: $70
    reti                                          ; $7bbd: $d9


    ld c, a                                       ; $7bbe: $4f
    ld a, l                                       ; $7bbf: $7d
    ld e, [hl]                                    ; $7bc0: $5e
    ld l, $ac                                     ; $7bc1: $2e $ac
    and h                                         ; $7bc3: $a4
    ld de, $5aee                                  ; $7bc4: $11 $ee $5a
    ld d, l                                       ; $7bc7: $55
    and h                                         ; $7bc8: $a4
    ld b, c                                       ; $7bc9: $41
    jr @-$51                                      ; $7bca: $18 $ad

    ld l, d                                       ; $7bcc: $6a
    db $fd                                        ; $7bcd: $fd
    dec [hl]                                      ; $7bce: $35
    ld l, c                                       ; $7bcf: $69
    ld b, $ff                                     ; $7bd0: $06 $ff
    or h                                          ; $7bd2: $b4
    sub $97                                       ; $7bd3: $d6 $97
    ldh a, [rNR52]                                ; $7bd5: $f0 $26
    ld a, l                                       ; $7bd7: $7d
    ld d, a                                       ; $7bd8: $57
    inc c                                         ; $7bd9: $0c
    sub [hl]                                      ; $7bda: $96
    ld a, c                                       ; $7bdb: $79
    ld c, c                                       ; $7bdc: $49
    inc de                                        ; $7bdd: $13
    inc d                                         ; $7bde: $14
    sbc a                                         ; $7bdf: $9f
    ld h, l                                       ; $7be0: $65
    and b                                         ; $7be1: $a0
    db $fc                                        ; $7be2: $fc
    jp z, $dacb                                   ; $7be3: $ca $cb $da

    call $fcbc                                    ; $7be6: $cd $bc $fc
    jp c, Jump_000_1992                           ; $7be9: $da $92 $19

    xor [hl]                                      ; $7bec: $ae
    ld [hl-], a                                   ; $7bed: $32
    sbc l                                         ; $7bee: $9d
    halt                                          ; $7bef: $76
    xor d                                         ; $7bf0: $aa
    jr nc, jr_029_7b77                            ; $7bf1: $30 $84

    ld bc, $2fad                                  ; $7bf3: $01 $ad $2f
    and e                                         ; $7bf6: $a3
    add h                                         ; $7bf7: $84
    rst $18                                       ; $7bf8: $df
    add l                                         ; $7bf9: $85

Call_029_7bfa:
    ld [hl], l                                    ; $7bfa: $75
    inc h                                         ; $7bfb: $24
    db $db                                        ; $7bfc: $db
    jp c, $cd8e                                   ; $7bfd: $da $8e $cd

    ld l, $4d                                     ; $7c00: $2e $4d
    rst $10                                       ; $7c02: $d7
    adc $ac                                       ; $7c03: $ce $ac
    ld [hl], e                                    ; $7c05: $73
    rst $10                                       ; $7c06: $d7
    ld [hl], $3e                                  ; $7c07: $36 $3e
    bit 3, b                                      ; $7c09: $cb $58
    ld d, d                                       ; $7c0b: $52
    call $a757                                    ; $7c0c: $cd $57 $a7
    db $e4                                        ; $7c0f: $e4
    rst $00                                       ; $7c10: $c7
    sub a                                         ; $7c11: $97
    sub a                                         ; $7c12: $97
    sbc a                                         ; $7c13: $9f

jr_029_7c14:
    sub a                                         ; $7c14: $97
    sbc a                                         ; $7c15: $9f
    inc a                                         ; $7c16: $3c
    ld hl, sp-$2e                                 ; $7c17: $f8 $d2
    ld e, [hl]                                    ; $7c19: $5e
    ld a, c                                       ; $7c1a: $79
    reti                                          ; $7c1b: $d9


    dec b                                         ; $7c1c: $05
    add h                                         ; $7c1d: $84
    ld bc, $6b27                                  ; $7c1e: $01 $27 $6b
    db $d3                                        ; $7c21: $d3
    cp $41                                        ; $7c22: $fe $41
    ld sp, hl                                     ; $7c24: $f9
    ld a, [de]                                    ; $7c25: $1a
    adc h                                         ; $7c26: $8c
    cp a                                          ; $7c27: $bf
    ld e, [hl]                                    ; $7c28: $5e
    halt                                          ; $7c29: $76
    jp z, Jump_029_6f5b                           ; $7c2a: $ca $5b $6f

    adc h                                         ; $7c2d: $8c
    ld e, a                                       ; $7c2e: $5f
    add e                                         ; $7c2f: $83
    ld a, c                                       ; $7c30: $79
    ld a, [hl+]                                   ; $7c31: $2a
    sbc e                                         ; $7c32: $9b
    ld [de], a                                    ; $7c33: $12
    sbc e                                         ; $7c34: $9b
    sub a                                         ; $7c35: $97
    ld l, a                                       ; $7c36: $6f
    ld l, d                                       ; $7c37: $6a
    ld a, [c]                                     ; $7c38: $f2
    ld l, e                                       ; $7c39: $6b
    and a                                         ; $7c3a: $a7
    sub a                                         ; $7c3b: $97
    push bc                                       ; $7c3c: $c5
    inc b                                         ; $7c3d: $04
    ld b, a                                       ; $7c3e: $47
    jr @+$2f                                      ; $7c3f: $18 $2d

    push hl                                       ; $7c41: $e5
    ld l, e                                       ; $7c42: $6b
    or b                                          ; $7c43: $b0
    ld c, e                                       ; $7c44: $4b
    di                                            ; $7c45: $f3
    ld a, [c]                                     ; $7c46: $f2
    or e                                          ; $7c47: $b3
    xor a                                         ; $7c48: $af
    add b                                         ; $7c49: $80
    rst $08                                       ; $7c4a: $cf
    adc [hl]                                      ; $7c4b: $8e
    sbc c                                         ; $7c4c: $99
    or d                                          ; $7c4d: $b2
    ldh [rWY], a                                  ; $7c4e: $e0 $4a
    add h                                         ; $7c50: $84
    jp c, Jump_029_6f3c                           ; $7c51: $da $3c $6f

    ld a, h                                       ; $7c54: $7c
    rlca                                          ; $7c55: $07
    xor $2a                                       ; $7c56: $ee $2a
    ld l, c                                       ; $7c58: $69
    ld l, $05                                     ; $7c59: $2e $05
    dec hl                                        ; $7c5b: $2b
    cpl                                           ; $7c5c: $2f
    ei                                            ; $7c5d: $fb
    and $61                                       ; $7c5e: $e6 $61
    ld l, c                                       ; $7c60: $69

jr_029_7c61:
    sbc h                                         ; $7c61: $9c
    dec sp                                        ; $7c62: $3b
    cpl                                           ; $7c63: $2f

jr_029_7c64:
    ld c, d                                       ; $7c64: $4a
    ld [hl], l                                    ; $7c65: $75
    sbc b                                         ; $7c66: $98
    rst $20                                       ; $7c67: $e7
    sbc d                                         ; $7c68: $9a
    inc [hl]                                      ; $7c69: $34
    ld e, l                                       ; $7c6a: $5d
    jr nc, jr_029_7c14                            ; $7c6b: $30 $a7

    ld d, $ee                                     ; $7c6d: $16 $ee
    jr z, @-$43                                   ; $7c6f: $28 $bb

    call z, Call_029_7632                         ; $7c71: $cc $32 $76
    add hl, de                                    ; $7c74: $19
    push de                                       ; $7c75: $d5

Jump_029_7c76:
    ld a, h                                       ; $7c76: $7c
    pop hl                                        ; $7c77: $e1
    dec hl                                        ; $7c78: $2b
    call $994e                                    ; $7c79: $cd $4e $99
    rla                                           ; $7c7c: $17
    push af                                       ; $7c7d: $f5
    ld a, c                                       ; $7c7e: $79
    xor [hl]                                      ; $7c7f: $ae
    ld l, b                                       ; $7c80: $68
    and a                                         ; $7c81: $a7
    di                                            ; $7c82: $f3
    add h                                         ; $7c83: $84
    jr nc, jr_029_7cad                            ; $7c84: $30 $27

    cp l                                          ; $7c86: $bd
    rst $10                                       ; $7c87: $d7
    ld h, b                                       ; $7c88: $60
    xor [hl]                                      ; $7c89: $ae
    or c                                          ; $7c8a: $b1
    ld a, $cf                                     ; $7c8b: $3e $cf
    sub l                                         ; $7c8d: $95
    sub a                                         ; $7c8e: $97
    pop af                                        ; $7c8f: $f1
    push hl                                       ; $7c90: $e5
    ld l, c                                       ; $7c91: $69
    ld d, b                                       ; $7c92: $50
    ld a, [hl]                                    ; $7c93: $7e
    ld d, l                                       ; $7c94: $55
    add [hl]                                      ; $7c95: $86
    rrca                                          ; $7c96: $0f
    ld l, e                                       ; $7c97: $6b
    ld l, e                                       ; $7c98: $6b
    ld d, l                                       ; $7c99: $55
    ld b, a                                       ; $7c9a: $47
    jr jr_029_7c64                                ; $7c9b: $18 $c7

    ld e, d                                       ; $7c9d: $5a
    ld e, a                                       ; $7c9e: $5f
    sbc d                                         ; $7c9f: $9a
    and h                                         ; $7ca0: $a4
    rst $18                                       ; $7ca1: $df
    dec h                                         ; $7ca2: $25
    rst $08                                       ; $7ca3: $cf
    ld a, c                                       ; $7ca4: $79
    ld sp, hl                                     ; $7ca5: $f9
    dec e                                         ; $7ca6: $1d
    cpl                                           ; $7ca7: $2f
    xor a                                         ; $7ca8: $af
    cp [hl]                                       ; $7ca9: $be
    ld d, [hl]                                    ; $7caa: $56
    adc l                                         ; $7cab: $8d
    or c                                          ; $7cac: $b1

jr_029_7cad:
    bit 1, [hl]                                   ; $7cad: $cb $4e
    ld a, d                                       ; $7caf: $7a
    sbc a                                         ; $7cb0: $9f
    sub a                                         ; $7cb1: $97
    ld e, a                                       ; $7cb2: $5f
    xor e                                         ; $7cb3: $ab
    add $98                                       ; $7cb4: $c6 $98
    db $fc                                        ; $7cb6: $fc
    rst $10                                       ; $7cb7: $d7
    sbc [hl]                                      ; $7cb8: $9e
    halt                                          ; $7cb9: $76
    call c, $f82b                                 ; $7cba: $dc $2b $f8
    jp c, Jump_029_5c1f                           ; $7cbd: $da $1f $5c

    ld [$0182], a                                 ; $7cc0: $ea $82 $01
    dec a                                         ; $7cc3: $3d
    ld a, [$bef6]                                 ; $7cc4: $fa $f6 $be
    ld e, l                                       ; $7cc7: $5d
    ld [hl-], a                                   ; $7cc8: $32
    ld b, [hl]                                    ; $7cc9: $46
    add h                                         ; $7cca: $84
    ld d, b                                       ; $7ccb: $50
    jp nc, $beec                                  ; $7ccc: $d2 $ec $be

    db $ed                                        ; $7ccf: $ed
    cp [hl]                                       ; $7cd0: $be
    db $ed                                        ; $7cd1: $ed
    dec hl                                        ; $7cd2: $2b
    ldh [$b3], a                                  ; $7cd3: $e0 $b3
    ei                                            ; $7cd5: $fb
    or [hl]                                       ; $7cd6: $b6
    ei                                            ; $7cd7: $fb
    or [hl]                                       ; $7cd8: $b6
    ld h, e                                       ; $7cd9: $63
    and [hl]                                      ; $7cda: $a6

jr_029_7cdb:
    jr nz, jr_029_7c61                            ; $7cdb: $20 $84

    cp h                                          ; $7cdd: $bc
    and h                                         ; $7cde: $a4
    add hl, bc                                    ; $7cdf: $09
    adc d                                         ; $7ce0: $8a
    xor a                                         ; $7ce1: $af
    ld c, c                                       ; $7ce2: $49
    or e                                          ; $7ce3: $b3
    inc [hl]                                      ; $7ce4: $34
    ld b, c                                       ; $7ce5: $41
    pop af                                        ; $7ce6: $f1
    ld a, c                                       ; $7ce7: $79
    xor [hl]                                      ; $7ce8: $ae
    ld c, [hl]                                    ; $7ce9: $4e
    ret                                           ; $7cea: $c9


    inc hl                                        ; $7ceb: $23
    inc c                                         ; $7cec: $0c
    db $dd                                        ; $7ced: $dd
    push hl                                       ; $7cee: $e5
    db $ed                                        ; $7cef: $ed
    xor a                                         ; $7cf0: $af
    inc e                                         ; $7cf1: $1c
    cp b                                          ; $7cf2: $b8
    adc e                                         ; $7cf3: $8b
    xor a                                         ; $7cf4: $af
    ld l, h                                       ; $7cf5: $6c
    ld c, l                                       ; $7cf6: $4d
    ld a, [de]                                    ; $7cf7: $1a
    ld e, c                                       ; $7cf8: $59
    ld c, c                                       ; $7cf9: $49
    inc bc                                        ; $7cfa: $03
    rrca                                          ; $7cfb: $0f
    ld l, e                                       ; $7cfc: $6b
    ld l, e                                       ; $7cfd: $6b
    ld d, l                                       ; $7cfe: $55
    sbc a                                         ; $7cff: $9f
    rst $20                                       ; $7d00: $e7
    cp h                                          ; $7d01: $bc
    db $fc                                        ; $7d02: $fc
    ld e, b                                       ; $7d03: $58
    ld c, d                                       ; $7d04: $4a
    ld a, b                                       ; $7d05: $78
    dec a                                         ; $7d06: $3d
    push hl                                       ; $7d07: $e5
    ld a, $ec                                     ; $7d08: $3e $ec
    add [hl]                                      ; $7d0a: $86
    pop hl                                        ; $7d0b: $e1
    or e                                          ; $7d0c: $b3
    xor e                                         ; $7d0d: $ab
    cp $b1                                        ; $7d0e: $fe $b1
    jp hl                                         ; $7d10: $e9


    add d                                         ; $7d11: $82
    ld bc, $7e2d                                  ; $7d12: $01 $2d $7e
    xor e                                         ; $7d15: $ab
    ld a, [$833c]                                 ; $7d16: $fa $3c $83
    rst $30                                       ; $7d19: $f7
    ld a, [c]                                     ; $7d1a: $f2
    jp nz, Jump_029_7d9d                          ; $7d1b: $c2 $9d $7d

    dec b                                         ; $7d1e: $05
    cp h                                          ; $7d1f: $bc
    rst $28                                       ; $7d20: $ef
    and $55                                       ; $7d21: $e6 $55
    and b                                         ; $7d23: $a0
    res 1, [hl]                                   ; $7d24: $cb $8e
    rr b                                          ; $7d26: $cb $18
    sub e                                         ; $7d28: $93
    ld e, a                                       ; $7d29: $5f
    ld hl, sp+$5d                                 ; $7d2a: $f8 $5d
    jr nc, jr_029_7cdb                            ; $7d2c: $30 $ad

    ret                                           ; $7d2e: $c9


    xor a                                         ; $7d2f: $af
    ld c, d                                       ; $7d30: $4a
    inc de                                        ; $7d31: $13

jr_029_7d32:
    reti                                          ; $7d32: $d9


    ld [hl], h                                    ; $7d33: $74
    ld l, $19                                     ; $7d34: $2e $19
    db $e3                                        ; $7d36: $e3
    add d                                         ; $7d37: $82
    rst $30                                       ; $7d38: $f7
    ld e, l                                       ; $7d39: $5d
    ld [$018a], a                                 ; $7d3a: $ea $8a $01
    daa                                           ; $7d3d: $27
    ld l, e                                       ; $7d3e: $6b
    db $d3                                        ; $7d3f: $d3
    cp $75                                        ; $7d40: $fe $75
    rst $38                                       ; $7d42: $ff
    or a                                          ; $7d43: $b7
    ld a, $2c                                     ; $7d44: $3e $2c
    cp [hl]                                       ; $7d46: $be
    rst $28                                       ; $7d47: $ef
    ld a, [$cd2e]                                 ; $7d48: $fa $2e $cd
    ld c, [hl]                                    ; $7d4b: $4e

Jump_029_7d4c:
    sbc c                                         ; $7d4c: $99
    xor [hl]                                      ; $7d4d: $ae
    ld d, l                                       ; $7d4e: $55
    ld h, e                                       ; $7d4f: $63
    ld c, h                                       ; $7d50: $4c
    cp $9f                                        ; $7d51: $fe $9f
    sub $11                                       ; $7d53: $d6 $11
    and l                                         ; $7d55: $a5
    ld a, [hl-]                                   ; $7d56: $3a
    jp nz, $f53d                                  ; $7d57: $c2 $3d $f5

    ld a, [$e174]                                 ; $7d5a: $fa $74 $e1
    dec h                                         ; $7d5d: $25
    db $e3                                        ; $7d5e: $e3
    adc a                                         ; $7d5f: $8f
    db $10                                        ; $7d60: $10
    ld l, d                                       ; $7d61: $6a
    ld a, l                                       ; $7d62: $7d
    add hl, bc                                    ; $7d63: $09
    ld l, a                                       ; $7d64: $6f
    jp nc, $e58f                                  ; $7d65: $d2 $8f $e5

    inc bc                                        ; $7d68: $03
    push de                                       ; $7d69: $d5
    ld a, h                                       ; $7d6a: $7c
    ld [hl], l                                    ; $7d6b: $75
    ld c, d                                       ; $7d6c: $4a
    ld a, [hl]                                    ; $7d6d: $7e
    jp c, $e34e                                   ; $7d6e: $da $4e $e3

    di                                            ; $7d71: $f3
    ld a, [c]                                     ; $7d72: $f2
    ld [hl], e                                    ; $7d73: $73
    ret                                           ; $7d74: $c9


    jr jr_029_7d32                                ; $7d75: $18 $bb

    ld l, h                                       ; $7d77: $6c
    dec a                                         ; $7d78: $3d
    ld a, a                                       ; $7d79: $7f
    ld b, l                                       ; $7d7a: $45
    xor l                                         ; $7d7b: $ad
    ccf                                           ; $7d7c: $3f
    rst $08                                       ; $7d7d: $cf
    pop af                                        ; $7d7e: $f1
    ld a, [hl+]                                   ; $7d7f: $2a
    or h                                          ; $7d80: $b4
    ld a, [c]                                     ; $7d81: $f2
    jp nc, $0305                                  ; $7d82: $d2 $05 $03

    dec a                                         ; $7d85: $3d
    adc e                                         ; $7d86: $8b
    ld a, [$8578]                                 ; $7d87: $fa $78 $85
    or l                                          ; $7d8a: $b5
    sub b                                         ; $7d8b: $90
    halt                                          ; $7d8c: $76
    ld a, [hl]                                    ; $7d8d: $7e
    inc l                                         ; $7d8e: $2c
    cpl                                           ; $7d8f: $2f
    dec b                                         ; $7d90: $05
    inc sp                                        ; $7d91: $33
    sbc l                                         ; $7d92: $9d
    sub l                                         ; $7d93: $95
    sub a                                         ; $7d94: $97
    rst $28                                       ; $7d95: $ef
    adc d                                         ; $7d96: $8a
    ld bc, $533d                                  ; $7d97: $01 $3d $53
    and h                                         ; $7d9a: $a4
    sbc c                                         ; $7d9b: $99
    or [hl]                                       ; $7d9c: $b6

Jump_029_7d9d:
    db $d3                                        ; $7d9d: $d3
    ld hl, sp-$36                                 ; $7d9e: $f8 $ca
    dec c                                         ; $7da0: $0d
    rla                                           ; $7da1: $17
    push de                                       ; $7da2: $d5
    ld e, a                                       ; $7da3: $5f
    ret nc                                        ; $7da4: $d0

    ld c, [hl]                                    ; $7da5: $4e
    ld a, d                                       ; $7da6: $7a
    xor a                                         ; $7da7: $af
    pop bc                                        ; $7da8: $c1
    db $ec                                        ; $7da9: $ec
    ld c, e                                       ; $7daa: $4b
    ld l, h                                       ; $7dab: $6c
    xor l                                         ; $7dac: $ad
    cpl                                           ; $7dad: $2f
    pop hl                                        ; $7dae: $e1

Jump_029_7daf:
    ld c, l                                       ; $7daf: $4d
    ld a, [$182e]                                 ; $7db0: $fa $2e $18
    rst $00                                       ; $7db3: $c7
    db $e4                                        ; $7db4: $e4
    sbc d                                         ; $7db5: $9a
    inc [hl]                                      ; $7db6: $34
    add e                                         ; $7db7: $83
    ldh a, [$63]                                  ; $7db8: $f0 $63
    inc e                                         ; $7dba: $1c
    ld h, h                                       ; $7dbb: $64
    ld hl, sp+$5e                                 ; $7dbc: $f8 $5e
    ld l, $05                                     ; $7dbe: $2e $05
    ld e, l                                       ; $7dc0: $5d
    ld sp, $1ebd                                  ; $7dc1: $31 $bd $1e
    db $10                                        ; $7dc4: $10
    ld b, d                                       ; $7dc5: $42
    rst $10                                       ; $7dc6: $d7
    ld l, e                                       ; $7dc7: $6b
    or b                                          ; $7dc8: $b0
    ld a, b                                       ; $7dc9: $78
    db $eb                                        ; $7dca: $eb
    cp a                                          ; $7dcb: $bf
    adc h                                         ; $7dcc: $8c
    ld l, h                                       ; $7dcd: $6c
    sub b                                         ; $7dce: $90
    ld d, l                                       ; $7dcf: $55
    dec e                                         ; $7dd0: $1d
    and [hl]                                      ; $7dd1: $a6
    call nz, $eba6                                ; $7dd2: $c4 $a6 $eb
    sbc b                                         ; $7dd5: $98
    halt                                          ; $7dd6: $76
    cp h                                          ; $7dd7: $bc
    push de                                       ; $7dd8: $d5
    inc a                                         ; $7dd9: $3c
    ld l, a                                       ; $7dda: $6f
    ld a, h                                       ; $7ddb: $7c
    ld b, a                                       ; $7ddc: $47
    dec sp                                        ; $7ddd: $3b
    ld e, c                                       ; $7dde: $59
    sbc e                                         ; $7ddf: $9b
    or $8f                                        ; $7de0: $f6 $8f
    rst $38                                       ; $7de2: $ff
    sbc d                                         ; $7de3: $9a
    db $fc                                        ; $7de4: $fc
    add sp, $55                                   ; $7de5: $e8 $55
    sub $12                                       ; $7de7: $d6 $12
    dec de                                        ; $7de9: $1b
    cpl                                           ; $7dea: $2f
    cpl                                           ; $7deb: $2f
    sub a                                         ; $7dec: $97
    db $10                                        ; $7ded: $10
    ld b, $a7                                     ; $7dee: $06 $a7
    daa                                           ; $7df0: $27
    ld hl, $6284                                  ; $7df1: $21 $84 $62
    ld h, [hl]                                    ; $7df4: $66
    cp l                                          ; $7df5: $bd
    dec bc                                        ; $7df6: $0b
    ld b, $3d                                     ; $7df7: $06 $3d
    set 1, e                                      ; $7df9: $cb $cb
    rst $10                                       ; $7dfb: $d7
    ld h, b                                       ; $7dfc: $60
    rst $10                                       ; $7dfd: $d7
    rla                                           ; $7dfe: $17
    db $e4                                        ; $7dff: $e4
    and l                                         ; $7e00: $a5
    and b                                         ; $7e01: $a0
    dec hl                                        ; $7e02: $2b
    ld b, $c7                                     ; $7e03: $06 $c7
    ld a, [hl]                                    ; $7e05: $7e
    cp l                                          ; $7e06: $bd
    ld c, e                                       ; $7e07: $4b
    sub a                                         ; $7e08: $97
    ld l, $18                                     ; $7e09: $2e $18
    dec a                                         ; $7e0b: $3d
    adc e                                         ; $7e0c: $8b
    ld a, [$8578]                                 ; $7e0d: $fa $78 $85
    ld a, c                                       ; $7e10: $79
    ld d, c                                       ; $7e11: $51
    rst $28                                       ; $7e12: $ef
    adc d                                         ; $7e13: $8a
    ld bc, $2fad                                  ; $7e14: $01 $ad $2f
    pop hl                                        ; $7e17: $e1
    ld c, l                                       ; $7e18: $4d
    ld a, [$eb2e]                                 ; $7e19: $fa $2e $eb
    ld d, c                                       ; $7e1c: $51
    ld a, [hl]                                    ; $7e1d: $7e
    ld l, $19                                     ; $7e1e: $2e $19
    ld h, e                                       ; $7e20: $63
    dec c                                         ; $7e21: $0d
    ld h, [hl]                                    ; $7e22: $66
    and a                                         ; $7e23: $a7
    ld hl, $f2b6                                  ; $7e24: $21 $b6 $f2
    jp nc, $0305                                  ; $7e27: $d2 $05 $03

    xor l                                         ; $7e2a: $ad
    ld a, [hl+]                                   ; $7e2b: $2a
    jp nc, $d770                                  ; $7e2c: $d2 $70 $d7

    and h                                         ; $7e2f: $a4
    ld e, c                                       ; $7e30: $59
    ld d, c                                       ; $7e31: $51
    db $eb                                        ; $7e32: $eb
    rst $08                                       ; $7e33: $cf
    ld [hl], e                                    ; $7e34: $73
    and b                                         ; $7e35: $a0
    sub $5f                                       ; $7e36: $d6 $5f
    ld a, c                                       ; $7e38: $79
    jp hl                                         ; $7e39: $e9


    add d                                         ; $7e3a: $82
    ld bc, $0596                                  ; $7e3b: $01 $96 $05
    jp hl                                         ; $7e3e: $e9


    ld l, e                                       ; $7e3f: $6b
    jp nc, $8d2c                                  ; $7e40: $d2 $2c $8d

    rst $28                                       ; $7e43: $ef
    inc a                                         ; $7e44: $3c
    inc bc                                        ; $7e45: $03
    cp [hl]                                       ; $7e46: $be
    ld c, e                                       ; $7e47: $4b
    di                                            ; $7e48: $f3
    dec de                                        ; $7e49: $1b
    ld a, [hl]                                    ; $7e4a: $7e
    sub a                                         ; $7e4b: $97
    dec e                                         ; $7e4c: $1d
    sbc a                                         ; $7e4d: $9f
    ret                                           ; $7e4e: $c9


    and $e5                                       ; $7e4f: $e6 $e5
    ld d, d                                       ; $7e51: $52
    jr nc, @-$33                                  ; $7e52: $30 $cb

    adc d                                         ; $7e54: $8a
    or d                                          ; $7e55: $b2
    jp hl                                         ; $7e56: $e9


    ld a, d                                       ; $7e57: $7a
    sbc $20                                       ; $7e58: $de $20
    ld a, b                                       ; $7e5a: $78
    ld [c], a                                     ; $7e5b: $e2
    ccf                                           ; $7e5c: $3f
    or d                                          ; $7e5d: $b2
    ld [hl], l                                    ; $7e5e: $75
    ld c, a                                       ; $7e5f: $4f
    cp a                                          ; $7e60: $bf
    ld c, c                                       ; $7e61: $49
    ld l, b                                       ; $7e62: $68
    ld b, a                                       ; $7e63: $47
    dec de                                        ; $7e64: $1b

jr_029_7e65:
    ld e, a                                       ; $7e65: $5f
    db $eb                                        ; $7e66: $eb
    ld c, e                                       ; $7e67: $4b
    ld a, b                                       ; $7e68: $78
    sub e                                         ; $7e69: $93
    ld a, [hl]                                    ; $7e6a: $7e
    rla                                           ; $7e6b: $17
    ld b, $7e                                     ; $7e6c: $06 $7e
    ld h, e                                       ; $7e6e: $63
    call c, Call_029_79a5                         ; $7e6f: $dc $a5 $79
    ld a, c                                       ; $7e72: $79
    ld a, c                                       ; $7e73: $79
    or h                                          ; $7e74: $b4
    ld e, [hl]                                    ; $7e75: $5e
    ld l, c                                       ; $7e76: $69
    ld d, [hl]                                    ; $7e77: $56
    call nc, $f3fa                                ; $7e78: $d4 $fa $f3
    inc e                                         ; $7e7b: $1c
    xor b                                         ; $7e7c: $a8
    push af                                       ; $7e7d: $f5
    ld d, a                                       ; $7e7e: $57
    ld e, [hl]                                    ; $7e7f: $5e
    cp d                                          ; $7e80: $ba
    ld h, b                                       ; $7e81: $60
    sub [hl]                                      ; $7e82: $96
    dec b                                         ; $7e83: $05
    jp hl                                         ; $7e84: $e9


    ld l, e                                       ; $7e85: $6b
    jp nc, $8d2c                                  ; $7e86: $d2 $2c $8d

    rst $28                                       ; $7e89: $ef
    inc a                                         ; $7e8a: $3c
    inc bc                                        ; $7e8b: $03
    cp [hl]                                       ; $7e8c: $be
    ld c, e                                       ; $7e8d: $4b
    di                                            ; $7e8e: $f3
    dec de                                        ; $7e8f: $1b
    ld a, [hl]                                    ; $7e90: $7e
    sub a                                         ; $7e91: $97
    dec e                                         ; $7e92: $1d
    sbc a                                         ; $7e93: $9f
    ret                                           ; $7e94: $c9


    and $e5                                       ; $7e95: $e6 $e5
    ld d, d                                       ; $7e97: $52
    jr nc, jr_029_7e65                            ; $7e98: $30 $cb

    adc d                                         ; $7e9a: $8a
    or d                                          ; $7e9b: $b2
    add hl, hl                                    ; $7e9c: $29
    and l                                         ; $7e9d: $a5
    sub a                                         ; $7e9e: $97
    sub a                                         ; $7e9f: $97

Jump_029_7ea0:
    push af                                       ; $7ea0: $f5
    cp h                                          ; $7ea1: $bc
    ld b, c                                       ; $7ea2: $41
    ldh a, [$c4]                                  ; $7ea3: $f0 $c4
    ld a, a                                       ; $7ea5: $7f
    ld h, h                                       ; $7ea6: $64
    db $eb                                        ; $7ea7: $eb
    sbc [hl]                                      ; $7ea8: $9e
    ld a, [hl]                                    ; $7ea9: $7e
    sub e                                         ; $7eaa: $93
    ret nc                                        ; $7eab: $d0

    adc [hl]                                      ; $7eac: $8e
    ld [hl], $be                                  ; $7ead: $36 $be
    ld h, $cd                                     ; $7eaf: $26 $cd
    ret nz                                        ; $7eb1: $c0

    ld l, a                                       ; $7eb2: $6f
    adc h                                         ; $7eb3: $8c
    dec bc                                        ; $7eb4: $0b

Call_029_7eb5:
    dec c                                         ; $7eb5: $0d
    ld hl, sp-$1c                                 ; $7eb6: $f8 $e4
    and c                                         ; $7eb8: $a1
    ld [hl-], a                                   ; $7eb9: $32
    cp a                                          ; $7eba: $bf
    sub $97                                       ; $7ebb: $d6 $97
    ldh a, [rNR52]                                ; $7ebd: $f0 $26
    ld a, l                                       ; $7ebf: $7d
    rla                                           ; $7ec0: $17
    inc c                                         ; $7ec1: $0c
    xor l                                         ; $7ec2: $ad
    cpl                                           ; $7ec3: $2f
    pop hl                                        ; $7ec4: $e1
    ld c, l                                       ; $7ec5: $4d
    ld a, [$3b2e]                                 ; $7ec6: $fa $2e $3b
    ld c, d                                       ; $7ec9: $4a
    ld a, [hl]                                    ; $7eca: $7e
    ld c, l                                       ; $7ecb: $4d
    sbc d                                         ; $7ecc: $9a
    ld l, c                                       ; $7ecd: $69
    adc h                                         ; $7ece: $8c
    sub e                                         ; $7ecf: $93
    dec de                                        ; $7ed0: $1b
    inc d                                         ; $7ed1: $14
    rst $28                                       ; $7ed2: $ef
    adc d                                         ; $7ed3: $8a
    ld bc, $1ebd                                  ; $7ed4: $01 $bd $1e
    db $10                                        ; $7ed7: $10
    ld b, d                                       ; $7ed8: $42
    sub [hl]                                      ; $7ed9: $96
    ld a, c                                       ; $7eda: $79
    cp c                                          ; $7edb: $b9
    ld d, h                                       ; $7edc: $54
    rra                                           ; $7edd: $1f
    inc h                                         ; $7ede: $24
    ld b, d                                       ; $7edf: $42
    ld [$3d03], sp                                ; $7ee0: $08 $03 $3d
    adc e                                         ; $7ee3: $8b
    ld a, [$768a]                                 ; $7ee4: $fa $8a $76
    ld a, [hl-]                                   ; $7ee7: $3a
    ld c, a                                       ; $7ee8: $4f
    rst $08                                       ; $7ee9: $cf
    db $10                                        ; $7eea: $10
    ld b, d                                       ; $7eeb: $42
    ld l, a                                       ; $7eec: $6f
    ld a, b                                       ; $7eed: $78
    xor $f8                                       ; $7eee: $ee $f8
    xor a                                         ; $7ef0: $af
    ret                                           ; $7ef1: $c9


    rst $28                                       ; $7ef2: $ef
    jp nc, $fcbc                                  ; $7ef3: $d2 $bc $fc

    add d                                         ; $7ef6: $82
    dec hl                                        ; $7ef7: $2b
    ld de, $f36a                                  ; $7ef8: $11 $6a $f3
    cp h                                          ; $7efb: $bc
    pop af                                        ; $7efc: $f1
    dec e                                         ; $7efd: $1d
    ld h, c                                       ; $7efe: $61
    rst $00                                       ; $7eff: $c7
    ld e, h                                       ; $7f00: $5c
    or [hl]                                       ; $7f01: $b6
    ld h, $cd                                     ; $7f02: $26 $cd
    cp h                                          ; $7f04: $bc
    ret z                                         ; $7f05: $c8

    rst $38                                       ; $7f06: $ff
    add d                                         ; $7f07: $82
    ld e, h                                       ; $7f08: $5c
    call z, Call_029_5fac                         ; $7f09: $cc $ac $5f
    ld a, [bc]                                    ; $7f0c: $0a
    ld h, [hl]                                    ; $7f0d: $66
    and a                                         ; $7f0e: $a7
    call z, $fa8b                                 ; $7f0f: $cc $8b $fa
    ld e, h                                       ; $7f12: $5c
    ld [hl-], a                                   ; $7f13: $32
    add $ae                                       ; $7f14: $c6 $ae
    db $eb                                        ; $7f16: $eb
    sub l                                         ; $7f17: $95
    and [hl]                                      ; $7f18: $a6
    ld h, $bf                                     ; $7f19: $26 $bf
    ld l, b                                       ; $7f1b: $68
    xor d                                         ; $7f1c: $aa
    ld a, d                                       ; $7f1d: $7a
    or e                                          ; $7f1e: $b3
    ld h, $cd                                     ; $7f1f: $26 $cd
    ld hl, sp-$69                                 ; $7f21: $f8 $97
    and a                                         ; $7f23: $a7
    sbc d                                         ; $7f24: $9a
    xor a                                         ; $7f25: $af
    ld a, [hl]                                    ; $7f26: $7e
    ld h, e                                       ; $7f27: $63
    ld a, h                                       ; $7f28: $7c
    sub $05                                       ; $7f29: $d6 $05
    inc bc                                        ; $7f2b: $03
    sub [hl]                                      ; $7f2c: $96
    pop af                                        ; $7f2d: $f1
    ld c, a                                       ; $7f2e: $4f
    cp [hl]                                       ; $7f2f: $be
    sbc b                                         ; $7f30: $98
    ld e, c                                       ; $7f31: $59
    cp a                                          ; $7f32: $bf

jr_029_7f33:
    inc d                                         ; $7f33: $14
    call z, $994e                                 ; $7f34: $cc $4e $99
    sub a                                         ; $7f37: $97
    sbc a                                         ; $7f38: $9f
    ld c, e                                       ; $7f39: $4b
    add $38                                       ; $7f3a: $c6 $38
    adc l                                         ; $7f3c: $8d
    ld c, c                                       ; $7f3d: $49
    adc a                                         ; $7f3e: $8f
    ld [hl], $cb                                  ; $7f3f: $36 $cb
    cp h                                          ; $7f41: $bc
    and h                                         ; $7f42: $a4
    add hl, bc                                    ; $7f43: $09
    adc d                                         ; $7f44: $8a
    rst $08                                       ; $7f45: $cf
    or d                                          ; $7f46: $b2
    ld a, [hl+]                                   ; $7f47: $2a
    ld c, l                                       ; $7f48: $4d
    ld h, h                                       ; $7f49: $64
    ld h, e                                       ; $7f4a: $63
    xor a                                         ; $7f4b: $af
    ld [hl], c                                    ; $7f4c: $71
    db $fc                                        ; $7f4d: $fc
    push af                                       ; $7f4e: $f5
    or d                                          ; $7f4f: $b2
    db $eb                                        ; $7f50: $eb
    add e                                         ; $7f51: $83
    ld c, e                                       ; $7f52: $4b
    push de                                       ; $7f53: $d5
    rst $08                                       ; $7f54: $cf
    ld d, d                                       ; $7f55: $52
    or e                                          ; $7f56: $b3
    cp $e4                                        ; $7f57: $fe $e4
    sub l                                         ; $7f59: $95
    ld c, l                                       ; $7f5a: $4d
    ld h, e                                       ; $7f5b: $63
    sbc h                                         ; $7f5c: $9c
    or [hl]                                       ; $7f5d: $b6
    db $d3                                        ; $7f5e: $d3
    ld hl, sp-$44                                 ; $7f5f: $f8 $bc
    ld a, h                                       ; $7f61: $7c
    adc b                                         ; $7f62: $88
    ld h, [hl]                                    ; $7f63: $66
    or c                                          ; $7f64: $b1
    ld [hl], a                                    ; $7f65: $77
    ld a, d                                       ; $7f66: $7a
    jp nc, $d894                                  ; $7f67: $d2 $94 $d8

    ld e, d                                       ; $7f6a: $5a
    ld d, l                                       ; $7f6b: $55
    and h                                         ; $7f6c: $a4
    ld e, c                                       ; $7f6d: $59
    ld d, c                                       ; $7f6e: $51
    ld b, [hl]                                    ; $7f6f: $46
    dec [hl]                                      ; $7f70: $35
    sbc a                                         ; $7f71: $9f
    sbc l                                         ; $7f72: $9d
    add [hl]                                      ; $7f73: $86
    ret c                                         ; $7f74: $d8

    jp nz, $cee7                                  ; $7f75: $c2 $e7 $ce

    ld d, d                                       ; $7f78: $52
    ld h, e                                       ; $7f79: $63
    ld l, e                                       ; $7f7a: $6b
    rst $38                                       ; $7f7b: $ff
    ret c                                         ; $7f7c: $d8

    dec hl                                        ; $7f7d: $2b
    dec de                                        ; $7f7e: $1b
    dec h                                         ; $7f7f: $25
    adc a                                         ; $7f80: $8f
    jr nc, jr_029_7fb0                            ; $7f81: $30 $2d

    add hl, sp                                    ; $7f83: $39
    cpl                                           ; $7f84: $2f
    rla                                           ; $7f85: $17
    add $2b                                       ; $7f86: $c6 $2b
    xor h                                         ; $7f88: $ac
    ld c, c                                       ; $7f89: $49
    inc hl                                        ; $7f8a: $23
    sub e                                         ; $7f8b: $93
    add a                                         ; $7f8c: $87
    ld c, [hl]                                    ; $7f8d: $4e
    ld [de], a                                    ; $7f8e: $12
    call c, $8df6                                 ; $7f8f: $dc $f6 $8d
    rst $10                                       ; $7f92: $d7
    sbc e                                         ; $7f93: $9b
    ld l, $3b                                     ; $7f94: $2e $3b
    xor $5a                                       ; $7f96: $ee $5a
    ld a, a                                       ; $7f98: $7f
    sbc l                                         ; $7f99: $9d
    cp h                                          ; $7f9a: $bc
    db $e4                                        ; $7f9b: $e4
    jr nc, jr_029_7f33                            ; $7f9c: $30 $95

    sbc a                                         ; $7f9e: $9f
    ld l, e                                       ; $7f9f: $6b
    db $fd                                        ; $7fa0: $fd
    ld l, c                                       ; $7fa1: $69
    or [hl]                                       ; $7fa2: $b6
    ld h, h                                       ; $7fa3: $64
    cp b                                          ; $7fa4: $b8
    db $e3                                        ; $7fa5: $e3
    and l                                         ; $7fa6: $a5
    or c                                          ; $7fa7: $b1
    db $ed                                        ; $7fa8: $ed
    ld c, e                                       ; $7fa9: $4b
    inc l                                         ; $7faa: $2c
    dec b                                         ; $7fab: $05
    db $ed                                        ; $7fac: $ed
    db $f4                                        ; $7fad: $f4
    ld [hl], a                                    ; $7fae: $77
    inc hl                                        ; $7faf: $23

jr_029_7fb0:
    inc [hl]                                      ; $7fb0: $34
    rst $08                                       ; $7fb1: $cf
    dec [hl]                                      ; $7fb2: $35
    ld l, c                                       ; $7fb3: $69
    ld h, h                                       ; $7fb4: $64
    inc l                                         ; $7fb5: $2c
    dec h                                         ; $7fb6: $25
    cp h                                          ; $7fb7: $bc
    sbc [hl]                                      ; $7fb8: $9e
    jp nc, $0c20                                  ; $7fb9: $d2 $20 $0c

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

Call_029_7fe5:
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
