; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    db $23

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
    jr jr_023_405d                                ; $4019: $18 $42

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
    jp z, $77cb                                   ; $402a: $ca $cb $77

    ld b, l                                       ; $402d: $45
    ld [$7eb5], sp                                ; $402e: $08 $b5 $7e
    jp Jump_023_5f1d                              ; $4031: $c3 $1d $5f


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

jr_023_405d:
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

Call_023_4073:
    ld a, c                                       ; $4073: $79
    db $eb                                        ; $4074: $eb
    adc l                                         ; $4075: $8d
    pop af                                        ; $4076: $f1
    cp e                                          ; $4077: $bb
    ld h, b                                       ; $4078: $60
    cp l                                          ; $4079: $bd
    jp nc, Jump_023_52ac                          ; $407a: $d2 $ac $52

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
    jp nz, Jump_023_5f94                          ; $4096: $c2 $94 $5f

    daa                                           ; $4099: $27
    cpl                                           ; $409a: $2f
    add hl, sp                                    ; $409b: $39
    jr nz, jr_023_40aa                            ; $409c: $20 $0c

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

jr_023_40aa:
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
    jr c, jr_023_4138                             ; $40ee: $38 $48

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
    jp z, $6f5b                                   ; $40fd: $ca $5b $6f

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
    jp nc, Jump_023_62d4                          ; $4111: $d2 $d4 $62

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

jr_023_4138:
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

jr_023_414f:
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

jr_023_415a:
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

jr_023_416a:
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

jr_023_4176:
    jr nz, jr_023_414f                            ; $4176: $20 $d7

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
    jr nc, jr_023_416a                            ; $418b: $30 $dd

    dec h                                         ; $418d: $25

jr_023_418e:
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
    jr nc, jr_023_4176                            ; $41ad: $30 $c7

    db $e4                                        ; $41af: $e4
    sbc d                                         ; $41b0: $9a
    inc [hl]                                      ; $41b1: $34
    xor e                                         ; $41b2: $ab
    ld d, e                                       ; $41b3: $53
    ld a, [c]                                     ; $41b4: $f2
    db $e3                                        ; $41b5: $e3
    set 1, e                                      ; $41b6: $cb $cb
    rst $28                                       ; $41b8: $ef
    jr jr_023_41ce                                ; $41b9: $18 $13

    or [hl]                                       ; $41bb: $b6
    db $e3                                        ; $41bc: $e3
    or e                                          ; $41bd: $b3
    sub h                                         ; $41be: $94
    rst $18                                       ; $41bf: $df
    add l                                         ; $41c0: $85
    xor [hl]                                      ; $41c1: $ae
    jr jr_023_415a                                ; $41c2: $18 $96

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

jr_023_41ce:
    sub [hl]                                      ; $41ce: $96
    inc [hl]                                      ; $41cf: $34
    sbc l                                         ; $41d0: $9d
    set 5, l                                      ; $41d1: $cb $ed
    jr nz, jr_023_41e1                            ; $41d3: $20 $0c

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

jr_023_41e1:
    add [hl]                                      ; $41e1: $86
    cpl                                           ; $41e2: $2f
    cpl                                           ; $41e3: $2f
    adc a                                         ; $41e4: $8f
    jr nc, jr_023_418e                            ; $41e5: $30 $a7

    inc h                                         ; $41e7: $24
    sbc d                                         ; $41e8: $9a
    ld h, l                                       ; $41e9: $65
    ldh a, [$bf]                                  ; $41ea: $f0 $bf
    ld [hl], d                                    ; $41ec: $72
    jp $cd25                                      ; $41ed: $c3 $25 $cd


    set 5, a                                      ; $41f0: $cb $ef
    jr nz, jr_023_4223                            ; $41f2: $20 $2f

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

jr_023_4203:
    or l                                          ; $4203: $b5
    ld a, $d5                                     ; $4204: $3e $d5
    ld a, h                                       ; $4206: $7c

jr_023_4207:
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
    jr nc, jr_023_4203                            ; $421c: $30 $e5

    or l                                          ; $421e: $b5
    ld b, c                                       ; $421f: $41
    dec sp                                        ; $4220: $3b
    ld e, c                                       ; $4221: $59
    sbc e                                         ; $4222: $9b

jr_023_4223:
    or $ef                                        ; $4223: $f6 $ef

jr_023_4225:
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

jr_023_4246:
    xor d                                         ; $4246: $aa
    ld sp, hl                                     ; $4247: $f9
    jp nz, Jump_023_4c66                          ; $4248: $c2 $66 $4c

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
    jr jr_023_4207                                ; $426f: $18 $96

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
    jr nc, jr_023_42a2                            ; $4283: $30 $1d

    sub h                                         ; $4285: $94
    inc d                                         ; $4286: $14
    sbc a                                         ; $4287: $9f
    ld d, l                                       ; $4288: $55
    dec hl                                        ; $4289: $2b
    push af                                       ; $428a: $f5
    sbc e                                         ; $428b: $9b
    add h                                         ; $428c: $84
    jr nc, jr_023_4225                            ; $428d: $30 $96

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
    jr nc, jr_023_430d                            ; $429e: $30 $6d

    and a                                         ; $42a0: $a7
    pop af                                        ; $42a1: $f1

jr_023_42a2:
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
    jr jr_023_4246                                ; $42ae: $18 $96

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

Jump_023_4303:
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

jr_023_430d:
    or h                                          ; $430d: $b4
    sub e                                         ; $430e: $93
    or l                                          ; $430f: $b5
    ld l, c                                       ; $4310: $69
    rst $38                                       ; $4311: $ff
    jp z, Jump_023_60d7                           ; $4312: $ca $d7 $60

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

Jump_023_432b:
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
    jr nz, jr_023_4391                            ; $4383: $20 $0c

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

jr_023_4391:
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

jr_023_43bd:
    ld a, c                                       ; $43bd: $79
    sub l                                         ; $43be: $95
    ld b, c                                       ; $43bf: $41
    rst $20                                       ; $43c0: $e7
    cp a                                          ; $43c1: $bf
    ld a, [hl+]                                   ; $43c2: $2a

jr_023_43c3:
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
    jr jr_023_43bd                                ; $43d3: $18 $e8

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
    jp z, Jump_023_5a0b                           ; $43ef: $ca $0b $5a

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
    jr nc, jr_023_43c3                            ; $442b: $30 $96

    sub l                                         ; $442d: $95
    ld d, a                                       ; $442e: $57

jr_023_442f:
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
    jr z, jr_023_442f                             ; $4481: $28 $ac

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
    call z, Call_023_6073                         ; $44c6: $cc $73 $60
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
    jp z, Jump_023_5b2b                           ; $4501: $ca $2b $5b

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
    call Call_023_5258                            ; $4527: $cd $58 $52
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

Jump_023_45e7:
    db $e3                                        ; $45e7: $e3
    ret nz                                        ; $45e8: $c0

    ld c, l                                       ; $45e9: $4d

Jump_023_45ea:
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

jr_023_4631:
    ld h, c                                       ; $4631: $61
    add b                                         ; $4632: $80
    db $10                                        ; $4633: $10
    ld a, [c]                                     ; $4634: $f2
    ld a, [c]                                     ; $4635: $f2
    ld c, l                                       ; $4636: $4d
    ld c, l                                       ; $4637: $4d
    ld a, [hl]                                    ; $4638: $7e
    db $fc                                        ; $4639: $fc

Jump_023_463a:
    and l                                         ; $463a: $a5

jr_023_463b:
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
    jr jr_023_46a2                                ; $4659: $18 $47

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
    jr jr_023_4631                                ; $4674: $18 $bb

    or [hl]                                       ; $4676: $b6
    db $fd                                        ; $4677: $fd
    ld a, [c]                                     ; $4678: $f2
    db $e4                                        ; $4679: $e4
    di                                            ; $467a: $f3
    and d                                         ; $467b: $a2
    inc [hl]                                      ; $467c: $34
    adc l                                         ; $467d: $8d
    ld [hl], c                                    ; $467e: $71

jr_023_467f:
    ld e, [hl]                                    ; $467f: $5e
    ld a, [hl]                                    ; $4680: $7e
    jp hl                                         ; $4681: $e9


    push hl                                       ; $4682: $e5
    dec b                                         ; $4683: $05
    db $10                                        ; $4684: $10
    ld b, $bd                                     ; $4685: $06 $bd
    jp nc, Jump_023_7c2c                          ; $4687: $d2 $2c $7c

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
    jr jr_023_467f                                ; $4696: $18 $e7

    push hl                                       ; $4698: $e5
    rlca                                          ; $4699: $07
    scf                                           ; $469a: $37
    ld e, d                                       ; $469b: $5a
    ld e, a                                       ; $469c: $5f
    ld d, [hl]                                    ; $469d: $56
    rst $38                                       ; $469e: $ff
    ld b, $66                                     ; $469f: $06 $66
    rst $00                                       ; $46a1: $c7

jr_023_46a2:
    and $52                                       ; $46a2: $e6 $52
    jr nc, jr_023_463b                            ; $46a4: $30 $95

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

jr_023_46bc:
    sbc [hl]                                      ; $46bc: $9e
    ld h, b                                       ; $46bd: $60
    ld e, [hl]                                    ; $46be: $5e
    ld a, [hl]                                    ; $46bf: $7e
    inc l                                         ; $46c0: $2c
    ld d, e                                       ; $46c1: $53
    db $10                                        ; $46c2: $10
    ld b, $bd                                     ; $46c3: $06 $bd
    jp nc, Jump_023_4a0c                          ; $46c5: $d2 $0c $4a

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
    and h                                         ; $4705: $a4
    ret c                                         ; $4706: $d8

    ld c, h                                       ; $4707: $4c
    rst $10                                       ; $4708: $d7
    cp $e0                                        ; $4709: $fe $e0
    ld [de], a                                    ; $470b: $12
    cp l                                          ; $470c: $bd
    call nc, Call_023_6d60                        ; $470d: $d4 $60 $6d
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
    jr nc, jr_023_46bc                            ; $4724: $30 $96

    dec d                                         ; $4726: $15

Jump_023_4727:
    or l                                          ; $4727: $b5
    cp $bc                                        ; $4728: $fe $bc
    db $fc                                        ; $472a: $fc
    ld [$a0df], a                                 ; $472b: $ea $df $a0
    db $ed                                        ; $472e: $ed
    and h                                         ; $472f: $a4
    rst $30                                       ; $4730: $f7
    ld a, [de]                                    ; $4731: $1a
    inc l                                         ; $4732: $2c

Call_023_4733:
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
    jr nc, jr_023_47ab                            ; $476c: $30 $3d

    jp z, $afc3                                   ; $476e: $ca $c3 $af

    ld [hl], e                                    ; $4771: $73
    cp a                                          ; $4772: $bf
    ld a, d                                       ; $4773: $7a
    sbc b                                         ; $4774: $98
    jp z, Jump_023_7daf                           ; $4775: $ca $af $7d

    add e                                         ; $4778: $83
    dec a                                         ; $4779: $3d
    and l                                         ; $477a: $a5
    add hl, bc                                    ; $477b: $09
    jp z, Jump_023_573c                           ; $477c: $ca $3c $57

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
    jr jr_023_47e3                                ; $479a: $18 $47

    ld de, $985b                                  ; $479c: $11 $5b $98
    ldh [rWX], a                                  ; $479f: $e0 $4b
    ld a, e                                       ; $47a1: $7b
    ld e, [hl]                                    ; $47a2: $5e
    ld a, $9c                                     ; $47a3: $3e $9c
    jp z, $6d2f                                   ; $47a5: $ca $2f $6d

    ld a, e                                       ; $47a8: $7b
    ld e, [hl]                                    ; $47a9: $5e
    ld a, [hl]                                    ; $47aa: $7e

jr_023_47ab:
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

jr_023_47e3:
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
    jp nz, Jump_023_4f4e                          ; $4808: $c2 $4e $4f

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
    jr nc, jr_023_4870                            ; $4831: $30 $3d

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
    call nz, Call_023_6e57                        ; $4853: $c4 $57 $6e
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
    jr nc, jr_023_48b2                            ; $4869: $30 $47

    call $6325                                    ; $486b: $cd $25 $63
    db $ec                                        ; $486e: $ec
    or d                                          ; $486f: $b2

jr_023_4870:
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

jr_023_4880:
    jr z, jr_023_4880                             ; $4880: $28 $fe

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

    jp z, Jump_023_432b                           ; $48a6: $ca $2b $43

    jr @+$18                                      ; $48a9: $18 $16

    ld e, a                                       ; $48ab: $5f
    ld d, c                                       ; $48ac: $51
    sbc b                                         ; $48ad: $98
    ld l, $a6                                     ; $48ae: $2e $a6
    cpl                                           ; $48b0: $2f
    db $ed                                        ; $48b1: $ed

jr_023_48b2:
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
    call nz, Call_023_7276                        ; $493d: $c4 $76 $72
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

Jump_023_494e:
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

jr_023_49c9:
    sub e                                         ; $49c9: $93
    ld a, [hl]                                    ; $49ca: $7e
    sub e                                         ; $49cb: $93
    ld h, [hl]                                    ; $49cc: $66
    and a                                         ; $49cd: $a7
    xor h                                         ; $49ce: $ac
    ld c, c                                       ; $49cf: $49
    add e                                         ; $49d0: $83

jr_023_49d1:
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

Jump_023_4a0c:
    ld d, l                                       ; $4a0c: $55
    jr jr_023_49d1                                ; $4a0d: $18 $c2

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
    jr nc, jr_023_49c9                            ; $4a31: $30 $96

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

jr_023_4a5f:
    ld e, [hl]                                    ; $4a5f: $5e
    dec de                                        ; $4a60: $1b
    jr jr_023_4a5f                                ; $4a61: $18 $fc

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

Call_023_4a70:
    ld l, b                                       ; $4a70: $68

Jump_023_4a71:
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
    call nc, Call_023_6bfa                        ; $4ab9: $d4 $fa $6b
    rst $38                                       ; $4abc: $ff
    db $d3                                        ; $4abd: $d3
    sub d                                         ; $4abe: $92
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
    jp Jump_023_5f1d                              ; $4b05: $c3 $1d $5f


    ld [hl], d                                    ; $4b08: $72
    db $ec                                        ; $4b09: $ec
    or d                                          ; $4b0a: $b2
    xor [hl]                                      ; $4b0b: $ae
    jr jr_023_4b4b                                ; $4b0c: $18 $3d

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

jr_023_4b38:
    jr c, jr_023_4b38                             ; $4b38: $38 $fe

    or l                                          ; $4b3a: $b5
    adc [hl]                                      ; $4b3b: $8e
    db $10                                        ; $4b3c: $10

Jump_023_4b3d:
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

jr_023_4b4b:
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
    call c, Call_023_7979                         ; $4b64: $dc $79 $79
    ld hl, sp-$57                                 ; $4b67: $f8 $a9
    db $fc                                        ; $4b69: $fc
    db $ec                                        ; $4b6a: $ec
    sub h                                         ; $4b6b: $94

jr_023_4b6c:
    dec [hl]                                      ; $4b6c: $35
    ld l, c                                       ; $4b6d: $69
    db $10                                        ; $4b6e: $10
    ld b, $bd                                     ; $4b6f: $06 $bd
    jp nc, $e4d4                                  ; $4b71: $d2 $d4 $e4

    ld h, a                                       ; $4b74: $67
    xor e                                         ; $4b75: $ab
    call z, Call_023_4733                         ; $4b76: $cc $33 $47
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
    jr jr_023_4b6c                                ; $4bd0: $18 $9a

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

Jump_023_4bf8:
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

Jump_023_4c66:
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

jr_023_4d3e:
    sbc [hl]                                      ; $4d3e: $9e
    jp nc, Jump_023_65a3                          ; $4d3f: $d2 $a3 $65

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
    jr nc, jr_023_4da2                            ; $4d63: $30 $3d

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

jr_023_4d7c:
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

jr_023_4da2:
    ld a, [de]                                    ; $4da2: $1a
    ld e, c                                       ; $4da3: $59
    ld a, [c]                                     ; $4da4: $f2
    add h                                         ; $4da5: $84
    jr nc, jr_023_4d3e                            ; $4da6: $30 $96

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
    jp c, Jump_023_494e                           ; $4dc3: $da $4e $49

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
    jr jr_023_4d7c                                ; $4de3: $18 $97

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

jr_023_4e06:
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
    jr nz, jr_023_4e06                            ; $4e41: $20 $c3

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
    jp nz, Jump_023_4b3d                          ; $4e52: $c2 $3d $4b

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
    jp nc, Jump_023_634c                          ; $4ea1: $d2 $4c $63

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
    call c, Call_023_4a70                         ; $4eb9: $dc $70 $4a
    ld l, h                                       ; $4ebc: $6c
    ld c, l                                       ; $4ebd: $4d
    ld a, [de]                                    ; $4ebe: $1a
    sbc c                                         ; $4ebf: $99
    xor l                                         ; $4ec0: $ad
    ld e, [hl]                                    ; $4ec1: $5e
    ld e, [hl]                                    ; $4ec2: $5e

Jump_023_4ec3:
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

jr_023_4eda:
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
    jr nz, jr_023_4eda                            ; $4f45: $20 $93

    db $10                                        ; $4f47: $10
    ld b, $47                                     ; $4f48: $06 $47
    cp a                                          ; $4f4a: $bf
    sbc l                                         ; $4f4b: $9d
    ld a, [c]                                     ; $4f4c: $f2
    di                                            ; $4f4d: $f3

Jump_023_4f4e:
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

Jump_023_4f90:
    inc e                                         ; $4f90: $1c
    and [hl]                                      ; $4f91: $a6
    cp h                                          ; $4f92: $bc
    ld a, [bc]                                    ; $4f93: $0a
    ld a, e                                       ; $4f94: $7b
    add [hl]                                      ; $4f95: $86
    jr nc, jr_023_4fdf                            ; $4f96: $30 $47

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

Call_023_4fac:
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

    jp Jump_023_7393                              ; $4fc0: $c3 $93 $73


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

jr_023_4fdf:
    db $fd                                        ; $4fdf: $fd
    ld [hl], e                                    ; $4fe0: $73
    xor l                                         ; $4fe1: $ad
    ccf                                           ; $4fe2: $3f
    db $ed                                        ; $4fe3: $ed
    sub d                                         ; $4fe4: $92
    rst $20                                       ; $4fe5: $e7
    or h                                          ; $4fe6: $b4
    xor d                                         ; $4fe7: $aa
    jp nc, Jump_023_4f90                          ; $4fe8: $d2 $90 $4f

    adc c                                         ; $4feb: $89
    xor l                                         ; $4fec: $ad
    sub e                                         ; $4fed: $93
    sub a                                         ; $4fee: $97
    inc e                                         ; $4fef: $1c
    and [hl]                                      ; $4ff0: $a6
    cp h                                          ; $4ff1: $bc

jr_023_4ff2:
    ld a, [bc]                                    ; $4ff2: $0a
    ld a, e                                       ; $4ff3: $7b
    add [hl]                                      ; $4ff4: $86
    jr nc, jr_023_503e                            ; $4ff5: $30 $47

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
    jr c, jr_023_4ff2                             ; $500b: $38 $e5

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

    jp Jump_023_7393                              ; $501c: $c3 $93 $73


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

jr_023_503e:
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

    jp Jump_023_7393                              ; $5072: $c3 $93 $73


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
    jp z, Jump_023_5c0c                           ; $50de: $ca $0c $5c

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

jr_023_50f6:
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
    jr jr_023_5149                                ; $510a: $18 $3d

    ld [hl], d                                    ; $510c: $72
    xor l                                         ; $510d: $ad
    ld a, [hl+]                                   ; $510e: $2a
    jp nc, Jump_023_7bac                          ; $510f: $d2 $ac $7b

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
    jr nz, jr_023_50f6                            ; $5145: $20 $af

Jump_023_5147:
    cp [hl]                                       ; $5147: $be
    or [hl]                                       ; $5148: $b6

jr_023_5149:
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
    jr jr_023_51e4                                ; $5172: $18 $70

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
    jp z, Jump_023_4bf8                           ; $5195: $ca $f8 $4b

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

Jump_023_51de:
    ld [c], a                                     ; $51de: $e2
    dec hl                                        ; $51df: $2b
    ld hl, sp-$52                                 ; $51e0: $f8 $ae
    adc a                                         ; $51e2: $8f
    ld d, a                                       ; $51e3: $57

jr_023_51e4:
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
    jr z, jr_023_52aa                             ; $522b: $28 $7d

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

Call_023_5258:
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

Jump_023_526f:
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

jr_023_52aa:
    ld b, $ed                                     ; $52aa: $06 $ed

Jump_023_52ac:
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

jr_023_52f0:
    xor c                                         ; $52f0: $a9
    adc d                                         ; $52f1: $8a
    jp z, $5d77                                   ; $52f2: $ca $77 $5d

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
    jr c, jr_023_52f0                             ; $532c: $38 $c2

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
    jp nc, Jump_023_4bf8                          ; $5388: $d2 $f8 $4b

    jr nc, jr_023_53bc                            ; $538b: $30 $2f

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

Call_023_53b6:
    adc d                                         ; $53b6: $8a
    ld d, d                                       ; $53b7: $52
    dec e                                         ; $53b8: $1d
    and [hl]                                      ; $53b9: $a6
    adc e                                         ; $53ba: $8b
    jp hl                                         ; $53bb: $e9


jr_023_53bc:
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
    jp nc, $7d4c                                  ; $53dd: $d2 $4c $7d

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
    jr nc, jr_023_544e                            ; $53ee: $30 $5e

    ld h, c                                       ; $53f0: $61
    sub a                                         ; $53f1: $97
    sbc $7a                                       ; $53f2: $de $7a
    ld e, l                                       ; $53f4: $5d
    db $db                                        ; $53f5: $db

Jump_023_53f6:
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
    call nz, Call_023_7ad1                        ; $544a: $c4 $d1 $7a
    and [hl]                                      ; $544d: $a6

jr_023_544e:
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
    jp z, Jump_023_73cb                           ; $5469: $ca $cb $73

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
    jp nc, $782c                                  ; $54ae: $d2 $2c $78

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

    db $bd, $d2, $4c, $be, $fa, $6b, $fd, $c3, $31, $bd, $d2, $4c, $e5, $57, $65, $d8
    db $89, $ef, $1f, $9b, $95, $d7, $f8, $ac, $0b, $06, $2d, $ae, $6e, $60, $fd, $ec
    db $d8, $f3, $cd, $ed, $60, $16, $ff, $10, $03, $16, $0a, $e4, $d9, $7d, $f2, $1d
    db $4b, $55, $53, $c5, $ec, $3c, $bb, $8a, $01, $c7, $65, $bc, $b9, $93, $35, $b8
    db $18, $c7, $65, $bc, $b9, $1e, $72, $3b, $f1, $56, $06, $30, $2d, $6a, $fd, $1d
    db $af, $e1, $63, $27, $bd, $f5, $23, $06, $c7, $72, $e8, $bc, $dc, $a7, $ea, $31
    db $a7, $3c, $07, $df, $49, $d6, $88, $01, $2d, $b7, $aa, $c7, $07, $0c, $2d, $ae
    db $e1, $25, $c5, $27, $6b, $70, $2b, $0c, $2d, $2e, $4f, $81, $17, $0c, $c7, $bc
    db $fd, $04, $8f, $01, $47, $05, $37, $5e, $6f, $30, $27, $6b, $70, $ab, $b5, $b8
    db $60, $27, $6b, $70, $ab, $1d, $f3, $36, $06, $47, $f6, $d7, $cf, $91, $fd, $0f
    db $03

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
    jr nc, @-$37                                  ; $5569: $30 $c7

    adc b                                         ; $556b: $88
    ld b, $49                                     ; $556c: $06 $49
    ld d, b                                       ; $556e: $50
    cp a                                          ; $556f: $bf

Call_023_5570:
    or h                                          ; $5570: $b4
    db $e3                                        ; $5571: $e3
    ld h, e                                       ; $5572: $63
    ld e, d                                       ; $5573: $5a

Jump_023_5574:
    rra                                           ; $5574: $1f
    jr nc, jr_023_55a4                            ; $5575: $30 $2d

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

jr_023_55a4:
    jr @-$4f                                      ; $55a4: $18 $af

    sub $4b                                       ; $55a6: $d6 $4b
    pop bc                                        ; $55a8: $c1
    adc [hl]                                      ; $55a9: $8e
    adc a                                         ; $55aa: $8f
    ld l, c                                       ; $55ab: $69
    ld a, l                                       ; $55ac: $7d
    ret nz                                        ; $55ad: $c0

    and a                                         ; $55ae: $a7

Jump_023_55af:
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

jr_023_55dc:
    rst $10                                       ; $55dc: $d7
    xor d                                         ; $55dd: $aa
    adc [hl]                                      ; $55de: $8e
    ld bc, $37ad                                  ; $55df: $01 $ad $37
    jr z, jr_023_564f                             ; $55e2: $28 $6b

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
    jr jr_023_55dc                                ; $55fd: $18 $dd

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
    jr jr_023_564d                                ; $561e: $18 $2d

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

jr_023_564d:
    ld b, $27                                     ; $564d: $06 $27

jr_023_564f:
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

Call_023_5660:
    ld b, a                                       ; $5660: $47
    rst $00                                       ; $5661: $c7

Call_023_5662:
Jump_023_5662:
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

jr_023_5671:
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
    jr nc, jr_023_5671                            ; $5692: $30 $dd

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
    call nc, $7477                                ; $56be: $d4 $77 $74
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

Jump_023_56d0:
    ret                                           ; $56d0: $c9


    adc h                                         ; $56d1: $8c
    ld l, e                                       ; $56d2: $6b
    ld sp, $4e9d                                  ; $56d3: $31 $9d $4e

Jump_023_56d6:
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

jr_023_571f:
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

Jump_023_573c:
    sbc [hl]                                      ; $573c: $9e
    ld a, [hl]                                    ; $573d: $7e
    sub e                                         ; $573e: $93
    jr nc, jr_023_57a8                            ; $573f: $30 $67

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
    jr jr_023_571f                                ; $5756: $18 $c7

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

jr_023_57a8:
    db $dd                                        ; $57a8: $dd
    call nc, Call_000_2644                        ; $57a9: $d4 $44 $26
    ld c, c                                       ; $57ac: $49
    jr jr_023_57dc                                ; $57ad: $18 $2d

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

    db $c7, $65, $bc, $b9, $1e, $72, $3b, $f1, $56, $06, $30, $c7, $65, $bc, $b9, $93
    db $35, $b8, $18

    and a                                         ; $57d1: $a7
    and h                                         ; $57d2: $a4
    ld a, a                                       ; $57d3: $7f
    dec sp                                        ; $57d4: $3b
    or e                                          ; $57d5: $b3
    adc [hl]                                      ; $57d6: $8e
    ld bc, $8cdd                                  ; $57d7: $01 $dd $8c
    ret nz                                        ; $57da: $c0

    rst $28                                       ; $57db: $ef

jr_023_57dc:
    add sp, -$34                                  ; $57dc: $e8 $cc
    ld a, [hl-]                                   ; $57de: $3a
    db $06                                        ; $57df: $06

    db $ad, $2a, $d2, $d4, $60, $3d, $95, $18, $06

    and a                                         ; $57e9: $a7
    ld a, [bc]                                    ; $57ea: $0a
    cp e                                          ; $57eb: $bb
    and h                                         ; $57ec: $a4
    jp nc, Jump_023_68ec                          ; $57ed: $d2 $ec $68

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
    call c, Call_023_6db0                         ; $5806: $dc $b0 $6d
    ld h, b                                       ; $5809: $60
    db $fd                                        ; $580a: $fd
    rst $30                                       ; $580b: $f7
    db $db                                        ; $580c: $db
    ld l, a                                       ; $580d: $6f
    cp a                                          ; $580e: $bf
    jr jr_023_5858                                ; $580f: $18 $47

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
    call nc, Call_023_612f                        ; $5846: $d4 $2f $61
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

jr_023_5858:
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
    jr jr_023_589f                                ; $5870: $18 $2d

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

jr_023_5887:
    ld b, $dd                                     ; $5887: $06 $dd
    ld a, [hl+]                                   ; $5889: $2a
    add l                                         ; $588a: $85
    sub $9a                                       ; $588b: $d6 $9a

jr_023_588d:
    ld b, d                                       ; $588d: $42
    jr @+$3f                                      ; $588e: $18 $3d

    inc sp                                        ; $5890: $33
    jp c, Jump_023_56d0                           ; $5891: $da $d0 $56

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

jr_023_589f:
    sbc d                                         ; $589f: $9a
    dec e                                         ; $58a0: $1d
    rla                                           ; $58a1: $17
    push de                                       ; $58a2: $d5
    sbc d                                         ; $58a3: $9a
    or d                                          ; $58a4: $b2
    and e                                         ; $58a5: $a3
    ld e, a                                       ; $58a6: $5f
    add hl, bc                                    ; $58a7: $09
    jr nc, jr_023_5887                            ; $58a8: $30 $dd

    ld c, d                                       ; $58aa: $4a
    ld d, [hl]                                    ; $58ab: $56
    add hl, de                                    ; $58ac: $19
    push de                                       ; $58ad: $d5
    ld a, a                                       ; $58ae: $7f
    rst $00                                       ; $58af: $c7
    ld c, c                                       ; $58b0: $49
    ld b, $80                                     ; $58b1: $06 $80
    ld bc, $3f47                                  ; $58b3: $01 $47 $3f
    ld hl, sp-$72                                 ; $58b6: $f8 $8e
    adc [hl]                                      ; $58b8: $8e
    ret                                           ; $58b9: $c9


    ld e, a                                       ; $58ba: $5f
    ld a, [bc]                                    ; $58bb: $0a
    halt                                          ; $58bc: $76
    cp h                                          ; $58bd: $bc
    add hl, bc                                    ; $58be: $09
    db $31                                        ; $58bf: $31

    db $dd, $4d, $d8, $a9, $5f, $5a, $77, $05, $bf, $0f, $18

    db $dd                                        ; $58cb: $dd
    call nc, Call_000_2644                        ; $58cc: $d4 $44 $26
    ld c, c                                       ; $58cf: $49
    db $eb                                        ; $58d0: $eb
    and [hl]                                      ; $58d1: $a6
    push af                                       ; $58d2: $f5
    rlca                                          ; $58d3: $07
    inc c                                         ; $58d4: $0c
    daa                                           ; $58d5: $27
    db $dd                                        ; $58d6: $dd
    ld a, [hl+]                                   ; $58d7: $2a
    push hl                                       ; $58d8: $e5
    ld d, [hl]                                    ; $58d9: $56
    cp a                                          ; $58da: $bf
    sbc [hl]                                      ; $58db: $9e
    ld c, d                                       ; $58dc: $4a
    inc c                                         ; $58dd: $0c
    jr nc, jr_023_588d                            ; $58de: $30 $ad

    rst $08                                       ; $58e0: $cf
    ld hl, sp+$1b                                 ; $58e1: $f8 $1b
    xor h                                         ; $58e3: $ac
    ld b, a                                       ; $58e4: $47
    ld sp, hl                                     ; $58e5: $f9
    sbc l                                         ; $58e6: $9d
    jp z, $0c47                                   ; $58e7: $ca $47 $0c

    rst $00                                       ; $58ea: $c7
    ld e, h                                       ; $58eb: $5c
    dec c                                         ; $58ec: $0d
    sub d                                         ; $58ed: $92
    halt                                          ; $58ee: $76
    ld d, h                                       ; $58ef: $54
    adc h                                         ; $58f0: $8c
    rst $18                                       ; $58f1: $df
    xor h                                         ; $58f2: $ac

jr_023_58f3:
    cp e                                          ; $58f3: $bb
    ld [bc], a                                    ; $58f4: $02
    ld h, b                                       ; $58f5: $60
    db $dd                                        ; $58f6: $dd
    adc l                                         ; $58f7: $8d
    ld [hl], h                                    ; $58f8: $74
    ld [c], a                                     ; $58f9: $e2
    rst $28                                       ; $58fa: $ef
    ld [hl], h                                    ; $58fb: $74
    ld l, l                                       ; $58fc: $6d
    or a                                          ; $58fd: $b7
    xor a                                         ; $58fe: $af
    ld h, e                                       ; $58ff: $63
    rst $00                                       ; $5900: $c7
    jr jr_023_58f3                                ; $5901: $18 $f0

    adc [hl]                                      ; $5903: $8e
    ld [de], a                                    ; $5904: $12
    ld b, $dd                                     ; $5905: $06 $dd
    ld d, d                                       ; $5907: $52
    inc hl                                        ; $5908: $23
    ld b, $ba                                     ; $5909: $06 $ba
    ld l, [hl]                                    ; $590b: $6e
    push hl                                       ; $590c: $e5
    ld d, [hl]                                    ; $590d: $56
    push af                                       ; $590e: $f5
    daa                                           ; $590f: $27
    inc c                                         ; $5910: $0c
    and a                                         ; $5911: $a7
    add d                                         ; $5912: $82
    res 5, l                                      ; $5913: $cb $ad
    jp z, $7b8e                                   ; $5915: $ca $8e $7b

    push af                                       ; $5918: $f5
    ld a, [c]                                     ; $5919: $f2
    add d                                         ; $591a: $82
    ld bc, $19ad                                  ; $591b: $01 $ad $19
    cpl                                           ; $591e: $2f
    db $d3                                        ; $591f: $d3
    ld h, [hl]                                    ; $5920: $66
    db $dd                                        ; $5921: $dd
    or e                                          ; $5922: $b3
    db $d3                                        ; $5923: $d3
    ld a, c                                       ; $5924: $79
    pop bc                                        ; $5925: $c1
    rst $00                                       ; $5926: $c7
    add sp, -$73                                  ; $5927: $e8 $8d
    call $4bba                                    ; $5929: $cd $ba $4b
    halt                                          ; $592c: $76
    jp z, Jump_000_063b                           ; $592d: $ca $3b $06

    and a                                         ; $5930: $a7
    ld b, [hl]                                    ; $5931: $46
    or [hl]                                       ; $5932: $b6
    sub [hl]                                      ; $5933: $96
    xor d                                         ; $5934: $aa
    ld h, h                                       ; $5935: $64
    add $f5                                       ; $5936: $c6 $f5
    cp b                                          ; $5938: $b8
    adc a                                         ; $5939: $8f
    ld bc, $4bc7                                  ; $593a: $01 $c7 $4b
    ld a, [c]                                     ; $593d: $f2
    db $eb                                        ; $593e: $eb
    sub l                                         ; $593f: $95
    ld b, [hl]                                    ; $5940: $46
    halt                                          ; $5941: $76
    ld a, [hl+]                                   ; $5942: $2a
    ld c, a                                       ; $5943: $4f
    db $eb                                        ; $5944: $eb
    xor c                                         ; $5945: $a9
    ld [c], a                                     ; $5946: $e2
    or b                                          ; $5947: $b0
    inc de                                        ; $5948: $13
    xor a                                         ; $5949: $af
    ld h, e                                       ; $594a: $63
    rlca                                          ; $594b: $07
    push af                                       ; $594c: $f5
    db $db                                        ; $594d: $db

Call_023_594e:
    ld [hl], a                                    ; $594e: $77
    rst $30                                       ; $594f: $f7
    and a                                         ; $5950: $a7
    ld [$fdd7], a                                 ; $5951: $ea $d7 $fd
    ld a, [hl]                                    ; $5954: $7e
    push af                                       ; $5955: $f5
    jr @+$29                                      ; $5956: $18 $27

    sbc c                                         ; $5958: $99
    ldh a, [rHDMA2]                               ; $5959: $f0 $52
    ld a, [de]                                    ; $595b: $1a
    ret c                                         ; $595c: $d8

    pop de                                        ; $595d: $d1
    ld a, [de]                                    ; $595e: $1a
    ld h, e                                       ; $595f: $63
    ld h, $01                                     ; $5960: $26 $01
    ld b, $dd                                     ; $5962: $06 $dd
    adc d                                         ; $5964: $8a
    ld e, h                                       ; $5965: $5c
    ldh a, [$50]                                  ; $5966: $f0 $50
    ld h, c                                       ; $5968: $61
    db $dd                                        ; $5969: $dd
    or l                                          ; $596a: $b5
    xor d                                         ; $596b: $aa
    ld l, e                                       ; $596c: $6b
    ldh a, [rNR23]                                ; $596d: $f0 $18
    xor l                                         ; $596f: $ad
    ld a, [de]                                    ; $5970: $1a
    ret z                                         ; $5971: $c8

    ld h, l                                       ; $5972: $65
    dec [hl]                                      ; $5973: $35
    ret c                                         ; $5974: $d8

    add hl, de                                    ; $5975: $19
    ld h, c                                       ; $5976: $61
    ld e, e                                       ; $5977: $5b
    ld a, $46                                     ; $5978: $3e $46
    push bc                                       ; $597a: $c5
    dec l                                         ; $597b: $2d
    add hl, hl                                    ; $597c: $29
    push de                                       ; $597d: $d5
    bit 1, e                                      ; $597e: $cb $4b
    dec c                                         ; $5980: $0d
    sub $e2                                       ; $5981: $d6 $e2
    ld c, c                                       ; $5983: $49
    adc a                                         ; $5984: $8f
    ld bc, $7fa7                                  ; $5985: $01 $a7 $7f
    ld hl, sp+$61                                 ; $5988: $f8 $61
    ld e, e                                       ; $598a: $5b
    inc [hl]                                      ; $598b: $34
    ld b, [hl]                                    ; $598c: $46
    inc c                                         ; $598d: $0c
    ld d, $0a                                     ; $598e: $16 $0a
    db $e4                                        ; $5990: $e4
    reti                                          ; $5991: $d9


    ld a, l                                       ; $5992: $7d
    ld a, [c]                                     ; $5993: $f2
    dec e                                         ; $5994: $1d
    ld c, e                                       ; $5995: $4b
    ld d, l                                       ; $5996: $55
    ld d, e                                       ; $5997: $53
    push bc                                       ; $5998: $c5
    db $ec                                        ; $5999: $ec
    inc a                                         ; $599a: $3c
    cp e                                          ; $599b: $bb
    adc d                                         ; $599c: $8a
    ld bc, $45c7                                  ; $599d: $01 $c7 $45
    db $e3                                        ; $59a0: $e3
    adc a                                         ; $59a1: $8f
    ld bc, $c5c7                                  ; $59a2: $01 $c7 $c5
    and $52                                       ; $59a5: $e6 $52
    or b                                          ; $59a7: $b0
    inc de                                        ; $59a8: $13
    cp a                                          ; $59a9: $bf
    pop bc                                        ; $59aa: $c1
    dec l                                         ; $59ab: $2d
    or a                                          ; $59ac: $b7
    xor d                                         ; $59ad: $aa
    rst $00                                       ; $59ae: $c7
    rlca                                          ; $59af: $07
    inc c                                         ; $59b0: $0c
    xor l                                         ; $59b1: $ad
    xor a                                         ; $59b2: $af
    pop af                                        ; $59b3: $f1
    ld d, d                                       ; $59b4: $52
    or b                                          ; $59b5: $b0
    sub [hl]                                      ; $59b6: $96
    adc [hl]                                      ; $59b7: $8e
    ld c, d                                       ; $59b8: $4a
    dec a                                         ; $59b9: $3d
    ld a, $06                                     ; $59ba: $3e $06
    db $dd                                        ; $59bc: $dd
    ld h, d                                       ; $59bd: $62
    ld l, d                                       ; $59be: $6a
    ld a, l                                       ; $59bf: $7d
    and a                                         ; $59c0: $a7
    jp c, $90b3                                   ; $59c1: $da $b3 $90

    push af                                       ; $59c4: $f5
    jp nz, $df6d                                  ; $59c5: $c2 $6d $df

    ld a, b                                       ; $59c8: $78
    cp l                                          ; $59c9: $bd
    pop bc                                        ; $59ca: $c1

    db $dd, $54, $d8, $ba, $65, $d8, $be, $a4, $7e, $93, $30, $bd, $d2, $ac, $a8, $f5
    db $47, $b9, $eb, $1f, $42, $17, $0c

    rst $00                                       ; $59e2: $c7
    ld l, c                                       ; $59e3: $69
    sbc b                                         ; $59e4: $98
    ld b, $d6                                     ; $59e5: $06 $d6
    di                                            ; $59e7: $f3
    ld a, d                                       ; $59e8: $7a
    ld d, l                                       ; $59e9: $55
    ld e, $a6                                     ; $59ea: $1e $a6
    call nz, $f3d6                                ; $59ec: $c4 $d6 $f3
    ld [hl], d                                    ; $59ef: $72
    ld d, h                                       ; $59f0: $54
    ld h, c                                       ; $59f1: $61
    or b                                          ; $59f2: $b0
    ld l, [hl]                                    ; $59f3: $6e
    ld a, [hl+]                                   ; $59f4: $2a
    inc c                                         ; $59f5: $0c
    inc bc                                        ; $59f6: $03

    db $67, $c0, $cf, $cb, $85, $59, $fc, $c3, $ae, $18, $1c, $8e, $ec, $6f, $18

    and a                                         ; $5a06: $a7
    and h                                         ; $5a07: $a4
    sub a                                         ; $5a08: $97
    ld c, e                                       ; $5a09: $4b
    pop bc                                        ; $5a0a: $c1

Jump_023_5a0b:
    adc d                                         ; $5a0b: $8a
    halt                                          ; $5a0c: $76
    ld a, [hl-]                                   ; $5a0d: $3a
    ld c, a                                       ; $5a0e: $4f
    ret nc                                        ; $5a0f: $d0

    dec b                                         ; $5a10: $05
    inc bc                                        ; $5a11: $03

    db $bd, $d2, $ac, $52, $aa, $f9, $0c, $fc, $ae, $8f, $92, $ef, $82, $01, $dd, $e5
    db $01, $a6, $d4, $ac, $6d, $dc, $93, $e6, $b9, $2a, $c9, $2f, $99, $47, $18

jr_023_5a31:
    xor l                                         ; $5a31: $ad
    ld a, [hl+]                                   ; $5a32: $2a
    jp nc, $be4c                                  ; $5a33: $d2 $4c $be

    ld c, d                                       ; $5a36: $4a
    db $eb                                        ; $5a37: $eb
    dec bc                                        ; $5a38: $0b
    db $ec                                        ; $5a39: $ec
    ret z                                         ; $5a3a: $c8

    cp $d6                                        ; $5a3b: $fe $d6
    ld [c], a                                     ; $5a3d: $e2
    ld a, [de]                                    ; $5a3e: $1a
    ld e, [hl]                                    ; $5a3f: $5e
    jp nc, $cf75                                  ; $5a40: $d2 $75 $cf

    ld c, e                                       ; $5a43: $4b
    sbc $07                                       ; $5a44: $de $07
    db $f4                                        ; $5a46: $f4
    adc c                                         ; $5a47: $89
    jr nc, @-$51                                  ; $5a48: $30 $ad

    ld a, [hl+]                                   ; $5a4a: $2a
    jp nc, $be4c                                  ; $5a4b: $d2 $4c $be

    ld c, d                                       ; $5a4e: $4a

jr_023_5a4f:
    db $eb                                        ; $5a4f: $eb
    dec bc                                        ; $5a50: $0b
    db $ec                                        ; $5a51: $ec
    ret z                                         ; $5a52: $c8

Jump_023_5a53:
    cp $76                                        ; $5a53: $fe $76
    or d                                          ; $5a55: $b2
    ld b, $b7                                     ; $5a56: $06 $b7
    ld e, d                                       ; $5a58: $5a
    rst $30                                       ; $5a59: $f7
    cp h                                          ; $5a5a: $bc
    db $e4                                        ; $5a5b: $e4
    add b                                         ; $5a5c: $80
    jr nc, jr_023_5a75                            ; $5a5d: $30 $16

    rra                                           ; $5a5f: $1f
    db $fc                                        ; $5a60: $fc
    add a                                         ; $5a61: $87
    jr nc, jr_023_5ade                            ; $5a62: $30 $7a

    db $eb                                        ; $5a64: $eb
    srl h                                         ; $5a65: $cb $3c
    rla                                           ; $5a67: $17
    inc de                                        ; $5a68: $13
    ld a, [hl]                                    ; $5a69: $7e
    rst $10                                       ; $5a6a: $d7
    ld h, c                                       ; $5a6b: $61
    halt                                          ; $5a6c: $76
    ld d, h                                       ; $5a6d: $54
    ld l, e                                       ; $5a6e: $6b
    ld c, d                                       ; $5a6f: $4a
    sub a                                         ; $5a70: $97
    xor l                                         ; $5a71: $ad
    adc a                                         ; $5a72: $8f
    cp [hl]                                       ; $5a73: $be
    adc [hl]                                      ; $5a74: $8e

jr_023_5a75:
    db $ec                                        ; $5a75: $ec
    ld l, a                                       ; $5a76: $6f
    dec l                                         ; $5a77: $2d
    db $dd                                        ; $5a78: $dd
    ei                                            ; $5a79: $fb
    call nz, $bf47                                ; $5a7a: $c4 $47 $bf
    ei                                            ; $5a7d: $fb
    res 7, h                                      ; $5a7e: $cb $bc
    jr z, jr_023_5a4f                             ; $5a80: $28 $cd

    res 5, a                                      ; $5a82: $cb $af
    db $fd                                        ; $5a84: $fd
    ldh [$eb], a                                  ; $5a85: $e0 $eb
    sbc b                                         ; $5a87: $98
    or b                                          ; $5a88: $b0
    ld d, e                                       ; $5a89: $53
    cp a                                          ; $5a8a: $bf
    or h                                          ; $5a8b: $b4
    adc $fd                                       ; $5a8c: $ce $fd
    ld l, $5b                                     ; $5a8e: $2e $5b
    rra                                           ; $5a90: $1f
    ld a, l                                       ; $5a91: $7d
    dec e                                         ; $5a92: $1d
    reti                                          ; $5a93: $d9


    rst $18                                       ; $5a94: $df
    ld e, d                                       ; $5a95: $5a
    cp d                                          ; $5a96: $ba
    rst $30                                       ; $5a97: $f7
    adc c                                         ; $5a98: $89
    ld bc, $b92d                                  ; $5a99: $01 $2d $b9
    jr nz, jr_023_5a31                            ; $5a9c: $20 $93

    ld [hl], c                                    ; $5a9e: $71
    rst $10                                       ; $5a9f: $d7
    and h                                         ; $5aa0: $a4
    add hl, de                                    ; $5aa1: $19
    ld c, e                                       ; $5aa2: $4b
    xor d                                         ; $5aa3: $aa
    ld sp, hl                                     ; $5aa4: $f9
    ld [c], a                                     ; $5aa5: $e2
    xor e                                         ; $5aa6: $ab
    push af                                       ; $5aa7: $f5
    and a                                         ; $5aa8: $a7
    add e                                         ; $5aa9: $83
    ld c, e                                       ; $5aaa: $4b
    ld b, c                                       ; $5aab: $41
    db $fc                                        ; $5aac: $fc
    ld d, l                                       ; $5aad: $55
    ld h, d                                       ; $5aae: $62
    jp nz, $9776                                  ; $5aaf: $c2 $76 $97

    xor l                                         ; $5ab2: $ad
    adc a                                         ; $5ab3: $8f
    cp [hl]                                       ; $5ab4: $be
    adc [hl]                                      ; $5ab5: $8e
    db $ec                                        ; $5ab6: $ec
    ld l, a                                       ; $5ab7: $6f
    dec l                                         ; $5ab8: $2d
    db $dd                                        ; $5ab9: $dd
    ei                                            ; $5aba: $fb
    call nz, $ca3d                                ; $5abb: $c4 $3d $ca
    rst $08                                       ; $5abe: $cf
    dec d                                         ; $5abf: $15
    db $fc                                        ; $5ac0: $fc
    ld [hl], a                                    ; $5ac1: $77
    ld h, c                                       ; $5ac2: $61
    ld c, a                                       ; $5ac3: $4f
    ld d, l                                       ; $5ac4: $55
    ld d, c                                       ; $5ac5: $51
    ld a, [c]                                     ; $5ac6: $f2
    ld c, e                                       ; $5ac7: $4b
    ld b, c                                       ; $5ac8: $41
    sub a                                         ; $5ac9: $97
    xor l                                         ; $5aca: $ad
    adc a                                         ; $5acb: $8f
    cp [hl]                                       ; $5acc: $be
    adc [hl]                                      ; $5acd: $8e
    db $ec                                        ; $5ace: $ec
    ld l, a                                       ; $5acf: $6f
    dec l                                         ; $5ad0: $2d
    db $dd                                        ; $5ad1: $dd
    ei                                            ; $5ad2: $fb
    call nz, $3f47                                ; $5ad3: $c4 $47 $3f
    ld hl, sp+$2c                                 ; $5ad6: $f8 $2c
    ld a, e                                       ; $5ad8: $7b
    db $eb                                        ; $5ad9: $eb

Jump_023_5ada:
    bit 3, h                                      ; $5ada: $cb $5c
    pop bc                                        ; $5adc: $c1
    sbc a                                         ; $5add: $9f

jr_023_5ade:
    ld [hl], l                                    ; $5ade: $75
    ld e, c                                       ; $5adf: $59
    rra                                           ; $5ae0: $1f
    ld a, l                                       ; $5ae1: $7d
    dec e                                         ; $5ae2: $1d
    reti                                          ; $5ae3: $d9


    rst $18                                       ; $5ae4: $df
    ld e, d                                       ; $5ae5: $5a
    cp d                                          ; $5ae6: $ba
    rst $30                                       ; $5ae7: $f7
    adc c                                         ; $5ae8: $89
    ld bc, $3f47                                  ; $5ae9: $01 $47 $3f
    ld hl, sp+$2c                                 ; $5aec: $f8 $2c
    ld a, e                                       ; $5aee: $7b
    db $eb                                        ; $5aef: $eb
    bit 3, h                                      ; $5af0: $cb $5c
    pop bc                                        ; $5af2: $c1
    sbc a                                         ; $5af3: $9f
    ld [hl], l                                    ; $5af4: $75
    ld e, c                                       ; $5af5: $59
    rra                                           ; $5af6: $1f
    ld a, l                                       ; $5af7: $7d
    dec e                                         ; $5af8: $1d
    reti                                          ; $5af9: $d9


    rst $18                                       ; $5afa: $df
    ld e, d                                       ; $5afb: $5a
    cp d                                          ; $5afc: $ba
    rst $30                                       ; $5afd: $f7
    adc c                                         ; $5afe: $89
    db $01                                        ; $5aff: $01

    db $bd, $1e, $30, $a7, $24, $06

jr_023_5b06:
    db $db                                        ; $5b06: $db
    halt                                          ; $5b07: $76
    ld h, h                                       ; $5b08: $64
    ld a, a                                       ; $5b09: $7f
    ld l, e                                       ; $5b0a: $6b
    xor c                                         ; $5b0b: $a9
    jr nc, jr_023_5b3b                            ; $5b0c: $30 $2d

    dec d                                         ; $5b0e: $15
    ld b, $47                                     ; $5b0f: $06 $47
    sbc e                                         ; $5b11: $9b
    ld b, $03                                     ; $5b12: $06 $03
    dec l                                         ; $5b14: $2d
    rra                                           ; $5b15: $1f
    inc hl                                        ; $5b16: $23
    ld b, $c7                                     ; $5b17: $06 $c7
    ld [hl], d                                    ; $5b19: $72
    cp b                                          ; $5b1a: $b8
    adc [hl]                                      ; $5b1b: $8e
    ld bc, $d3dd                                  ; $5b1c: $01 $dd $d3
    dec [hl]                                      ; $5b1f: $35
    ld hl, sp+$1a                                 ; $5b20: $f8 $1a
    xor h                                         ; $5b22: $ac
    sbc e                                         ; $5b23: $9b
    sbc d                                         ; $5b24: $9a
    ret z                                         ; $5b25: $c8

    inc h                                         ; $5b26: $24
    add hl, bc                                    ; $5b27: $09
    jr nc, @+$3f                                  ; $5b28: $30 $3d

    ccf                                           ; $5b2a: $3f

Jump_023_5b2b:
    ld d, [hl]                                    ; $5b2b: $56
    add hl, de                                    ; $5b2c: $19
    cp $3c                                        ; $5b2d: $fe $3c
    rst $10                                       ; $5b2f: $d7
    dec a                                         ; $5b30: $3d
    ld e, l                                       ; $5b31: $5d
    add e                                         ; $5b32: $83
    xor a                                         ; $5b33: $af
    pop bc                                        ; $5b34: $c1
    cp d                                          ; $5b35: $ba
    xor c                                         ; $5b36: $a9
    adc c                                         ; $5b37: $89
    ld c, h                                       ; $5b38: $4c
    sub d                                         ; $5b39: $92
    nop                                           ; $5b3a: $00

jr_023_5b3b:
    ld h, c                                       ; $5b3b: $61
    dec a                                         ; $5b3c: $3d
    cp a                                          ; $5b3d: $bf
    ld h, $3f                                     ; $5b3e: $26 $3f
    adc l                                         ; $5b40: $8d
    cp h                                          ; $5b41: $bc
    ld [hl], $b0                                  ; $5b42: $36 $b0
    sbc b                                         ; $5b44: $98
    ld e, c                                       ; $5b45: $59
    cp a                                          ; $5b46: $bf
    inc d                                         ; $5b47: $14
    call z, Call_023_594e                         ; $5b48: $cc $4e $59
    sub b                                         ; $5b4b: $90
    ret                                           ; $5b4c: $c9


    ld h, [hl]                                    ; $5b4d: $66
    ldh [$d9], a                                  ; $5b4e: $e0 $d9
    jp nz, $aa97                                  ; $5b50: $c2 $97 $aa

    jr z, jr_023_5b06                             ; $5b53: $28 $b1

    dec bc                                        ; $5b55: $0b
    adc a                                         ; $5b56: $8f
    ld bc, $8b3d                                  ; $5b57: $01 $3d $8b
    ld a, [$34f8]                                 ; $5b5a: $fa $f8 $34
    sub c                                         ; $5b5d: $91
    xor l                                         ; $5b5e: $ad
    ld c, c                                       ; $5b5f: $49
    or e                                          ; $5b60: $b3
    ld a, b                                       ; $5b61: $78
    db $eb                                        ; $5b62: $eb
    rst $18                                       ; $5b63: $df
    ld [hl], l                                    ; $5b64: $75
    jp $0d47                                      ; $5b65: $c3 $47 $0d


    db $fc                                        ; $5b68: $fc
    adc d                                         ; $5b69: $8a
    ld e, h                                       ; $5b6a: $5c
    ld a, [bc]                                    ; $5b6b: $0a
    ld d, [hl]                                    ; $5b6c: $56
    sub l                                         ; $5b6d: $95
    cp h                                          ; $5b6e: $bc
    push de                                       ; $5b6f: $d5
    and e                                         ; $5b70: $a3
    db $ed                                        ; $5b71: $ed
    jr z, jr_023_5bde                             ; $5b72: $28 $6a

    cp h                                          ; $5b74: $bc
    ld e, h                                       ; $5b75: $5c
    ld a, [bc]                                    ; $5b76: $0a
    or $11                                        ; $5b77: $f6 $11
    cp [hl]                                       ; $5b79: $be
    dec hl                                        ; $5b7a: $2b
    ld b, $47                                     ; $5b7b: $06 $47
    xor l                                         ; $5b7d: $ad
    ld [hl], e                                    ; $5b7e: $73
    cp l                                          ; $5b7f: $bd
    ld b, c                                       ; $5b80: $41

jr_023_5b81:
    db $db                                        ; $5b81: $db
    ld d, c                                       ; $5b82: $51
    call nc, $b978                                ; $5b83: $d4 $78 $b9
    inc d                                         ; $5b86: $14
    db $ec                                        ; $5b87: $ec
    inc hl                                        ; $5b88: $23
    ld a, h                                       ; $5b89: $7c
    ld d, a                                       ; $5b8a: $57
    inc c                                         ; $5b8b: $0c
    dec a                                         ; $5b8c: $3d
    adc d                                         ; $5b8d: $8a
    ld a, [$352a]                                 ; $5b8e: $fa $2a $35
    sub c                                         ; $5b91: $91
    ld c, c                                       ; $5b92: $49
    jp nc, $63e0                                  ; $5b93: $d2 $e0 $63

Jump_023_5b96:
jr_023_5b96:
    add h                                         ; $5b96: $84
    reti                                          ; $5b97: $d9


    add hl, hl                                    ; $5b98: $29
    dec sp                                        ; $5b99: $3b
    or d                                          ; $5b9a: $b2
    cp a                                          ; $5b9b: $bf
    or l                                          ; $5b9c: $b5
    ld d, h                                       ; $5b9d: $54
    ld [$2d03], sp                                ; $5b9e: $08 $03 $2d
    sub a                                         ; $5ba1: $97
    xor d                                         ; $5ba2: $aa
    rst $18                                       ; $5ba3: $df
    push af                                       ; $5ba4: $f5
    ld a, [de]                                    ; $5ba5: $1a
    call z, $33c0                                 ; $5ba6: $cc $c0 $33
    xor $2c                                       ; $5ba9: $ee $2c
    or l                                          ; $5bab: $b5
    jr jr_023_5bc5                                ; $5bac: $18 $17

    ld e, h                                       ; $5bae: $5c
    db $eb                                        ; $5baf: $eb
    xor a                                         ; $5bb0: $af
    ld c, c                                       ; $5bb1: $49
    or e                                          ; $5bb2: $b3
    inc hl                                        ; $5bb3: $23
    ei                                            ; $5bb4: $fb
    ld e, e                                       ; $5bb5: $5b
    ld c, e                                       ; $5bb6: $4b
    add l                                         ; $5bb7: $85
    jr nc, jr_023_5b81                            ; $5bb8: $30 $c7

    db $e4                                        ; $5bba: $e4
    ld hl, sp+$5f                                 ; $5bbb: $f8 $5f
    ld d, c                                       ; $5bbd: $51
    db $eb                                        ; $5bbe: $eb
    ld c, a                                       ; $5bbf: $4f
    rst $00                                       ; $5bc0: $c7
    ld e, [hl]                                    ; $5bc1: $5e
    ld h, e                                       ; $5bc2: $63
    ld d, a                                       ; $5bc3: $57
    inc c                                         ; $5bc4: $0c

jr_023_5bc5:
    cp l                                          ; $5bc5: $bd
    jp nc, Jump_000_258c                          ; $5bc6: $d2 $8c $25

    push de                                       ; $5bc9: $d5
    ld a, h                                       ; $5bca: $7c
    ld b, l                                       ; $5bcb: $45
    xor l                                         ; $5bcc: $ad
    ccf                                           ; $5bcd: $3f
    cpl                                           ; $5bce: $2f
    cp a                                          ; $5bcf: $bf
    ld a, b                                       ; $5bd0: $78
    rst $08                                       ; $5bd1: $cf
    scf                                           ; $5bd2: $37
    sub a                                         ; $5bd3: $97
    ld c, l                                       ; $5bd4: $4d
    ld bc, $61de                                  ; $5bd5: $01 $de $61
    halt                                          ; $5bd8: $76
    jp z, $a8bc                                   ; $5bd9: $ca $bc $a8

    inc hl                                        ; $5bdc: $23
    inc c                                         ; $5bdd: $0c

jr_023_5bde:
    daa                                           ; $5bde: $27
    sbc e                                         ; $5bdf: $9b
    ret c                                         ; $5be0: $d8

    ld sp, hl                                     ; $5be1: $f9
    ld c, [hl]                                    ; $5be2: $4e
    rst $20                                       ; $5be3: $e7
    and l                                         ; $5be4: $a5
    ld b, $3b                                     ; $5be5: $06 $3b
    xor d                                         ; $5be7: $aa
    sub e                                         ; $5be8: $93
    ld e, [hl]                                    ; $5be9: $5e
    cp [hl]                                       ; $5bea: $be
    ld d, d                                       ; $5beb: $52
    ld l, c                                       ; $5bec: $69
    jr nc, jr_023_5b96                            ; $5bed: $30 $a7

    ld a, [de]                                    ; $5bef: $1a
    add hl, de                                    ; $5bf0: $19
    ld a, b                                       ; $5bf1: $78
    ld d, [hl]                                    ; $5bf2: $56
    push af                                       ; $5bf3: $f5
    ld e, l                                       ; $5bf4: $5d
    sbc b                                         ; $5bf5: $98
    xor [hl]                                      ; $5bf6: $ae
    ld a, l                                       ; $5bf7: $7d

jr_023_5bf8:
    ld a, l                                       ; $5bf8: $7d
    ld d, b                                       ; $5bf9: $50
    ld d, d                                       ; $5bfa: $52
    ld a, h                                       ; $5bfb: $7c
    ld [hl], d                                    ; $5bfc: $72
    add e                                         ; $5bfd: $83
    ld [c], a                                     ; $5bfe: $e2
    and e                                         ; $5bff: $a3
    db $e4                                        ; $5c00: $e4
    ld de, $1842                                  ; $5c01: $11 $42 $18
    dec a                                         ; $5c04: $3d
    adc e                                         ; $5c05: $8b
    ld a, [$ae58]                                 ; $5c06: $fa $58 $ae
    ld c, c                                       ; $5c09: $49
    or e                                          ; $5c0a: $b3
    and d                                         ; $5c0b: $a2

Jump_023_5c0c:
    sub $9f                                       ; $5c0c: $d6 $9f
    rst $20                                       ; $5c0e: $e7

Jump_023_5c0f:
    ldh [$63], a                                  ; $5c0f: $e0 $63
    db $ec                                        ; $5c11: $ec
    adc d                                         ; $5c12: $8a
    ld bc, $1aa7                                  ; $5c13: $01 $a7 $1a
    add hl, de                                    ; $5c16: $19
    ld a, b                                       ; $5c17: $78
    ld d, [hl]                                    ; $5c18: $56
    push af                                       ; $5c19: $f5
    ld e, l                                       ; $5c1a: $5d
    sbc b                                         ; $5c1b: $98
    xor [hl]                                      ; $5c1c: $ae
    ld a, l                                       ; $5c1d: $7d
    ld a, l                                       ; $5c1e: $7d
    ld d, b                                       ; $5c1f: $50
    ld d, d                                       ; $5c20: $52
    ld a, h                                       ; $5c21: $7c
    ld [hl], d                                    ; $5c22: $72
    add e                                         ; $5c23: $83
    ld [c], a                                     ; $5c24: $e2
    and e                                         ; $5c25: $a3
    db $e4                                        ; $5c26: $e4
    ld de, $1842                                  ; $5c27: $11 $42 $18
    sub [hl]                                      ; $5c2a: $96
    ld e, d                                       ; $5c2b: $5a
    cp b                                          ; $5c2c: $b8
    jr nz, jr_023_5c59                            ; $5c2d: $20 $2a

    sbc e                                         ; $5c2f: $9b
    ld h, l                                       ; $5c30: $65
    ld b, l                                       ; $5c31: $45
    reti                                          ; $5c32: $d9


    jr nz, jr_023_5bf8                            ; $5c33: $20 $c3

    rst $30                                       ; $5c35: $f7
    ld [hl], d                                    ; $5c36: $72
    add hl, hl                                    ; $5c37: $29
    ld e, b                                       ; $5c38: $58
    sub e                                         ; $5c39: $93
    ld h, [hl]                                    ; $5c3a: $66
    ld d, l                                       ; $5c3b: $55
    sbc d                                         ; $5c3c: $9a
    ret z                                         ; $5c3d: $c8

    sub $36                                       ; $5c3e: $d6 $36
    dec c                                         ; $5c40: $0d
    jp nz, $8a3d                                  ; $5c41: $c2 $3d $8a

    ld a, d                                       ; $5c44: $7a
    dec c                                         ; $5c45: $0d
    and [hl]                                      ; $5c46: $a6

jr_023_5c47:
    add e                                         ; $5c47: $83
    and d                                         ; $5c48: $a2
    pop hl                                        ; $5c49: $e1
    and e                                         ; $5c4a: $a3
    or l                                          ; $5c4b: $b5
    jr jr_023_5c47                                ; $5c4c: $18 $f9

    dec [hl]                                      ; $5c4e: $35
    ld l, c                                       ; $5c4f: $69
    add $27                                       ; $5c50: $c6 $27
    push de                                       ; $5c52: $d5
    ld a, h                                       ; $5c53: $7c
    ld d, l                                       ; $5c54: $55
    ld d, c                                       ; $5c55: $51
    ld a, [bc]                                    ; $5c56: $0a
    ld a, [hl]                                    ; $5c57: $7e
    ld c, l                                       ; $5c58: $4d

jr_023_5c59:
    ld a, [de]                                    ; $5c59: $1a
    ld e, c                                       ; $5c5a: $59
    ld a, b                                       ; $5c5b: $78
    adc c                                         ; $5c5c: $89
    ld [hl], l                                    ; $5c5d: $75
    push bc                                       ; $5c5e: $c5
    dec a                                         ; $5c5f: $3d
    jp z, Jump_023_5c0f                           ; $5c60: $ca $0f $5c

    adc c                                         ; $5c63: $89
    xor c                                         ; $5c64: $a9
    or b                                          ; $5c65: $b0
    ld [hl], l                                    ; $5c66: $75
    db $e4                                        ; $5c67: $e4
    ld d, [hl]                                    ; $5c68: $56
    cp a                                          ; $5c69: $bf
    dec bc                                        ; $5c6a: $0b
    db $db                                        ; $5c6b: $db
    sub c                                         ; $5c6c: $91
    db $fd                                        ; $5c6d: $fd
    xor l                                         ; $5c6e: $ad
    and l                                         ; $5c6f: $a5
    ld b, d                                       ; $5c70: $42
    jr jr_023_5c89                                ; $5c71: $18 $16

    rst $18                                       ; $5c73: $df
    dec b                                         ; $5c74: $05
    xor d                                         ; $5c75: $aa
    ld sp, hl                                     ; $5c76: $f9
    add sp, $79                                   ; $5c77: $e8 $79
    add h                                         ; $5c79: $84
    ret nc                                        ; $5c7a: $d0

    inc l                                         ; $5c7b: $2c
    or l                                          ; $5c7c: $b5
    jr @+$19                                      ; $5c7d: $18 $17

    ld e, h                                       ; $5c7f: $5c
    db $eb                                        ; $5c80: $eb
    xor a                                         ; $5c81: $af
    ld c, c                                       ; $5c82: $49
    or e                                          ; $5c83: $b3
    inc hl                                        ; $5c84: $23
    ei                                            ; $5c85: $fb
    ld e, e                                       ; $5c86: $5b
    ld c, e                                       ; $5c87: $4b
    add l                                         ; $5c88: $85

jr_023_5c89:
    jr nc, @+$49                                  ; $5c89: $30 $47

    ret                                           ; $5c8b: $c9


    adc a                                         ; $5c8c: $8f
    rst $38                                       ; $5c8d: $ff

Jump_023_5c8e:
    ld l, c                                       ; $5c8e: $69
    jr nz, @+$01                                  ; $5c8f: $20 $ff

    xor h                                         ; $5c91: $ac
    dec hl                                        ; $5c92: $2b
    ld b, $bd                                     ; $5c93: $06 $bd
    jp nc, Jump_000_258c                          ; $5c95: $d2 $8c $25

    push de                                       ; $5c98: $d5
    ld a, h                                       ; $5c99: $7c
    ld b, l                                       ; $5c9a: $45
    xor l                                         ; $5c9b: $ad
    ccf                                           ; $5c9c: $3f
    cpl                                           ; $5c9d: $2f
    ld [$950b], a                                 ; $5c9e: $ea $0b $95
    sbc d                                         ; $5ca1: $9a
    or l                                          ; $5ca2: $b5
    call c, $1eaa                                 ; $5ca3: $dc $aa $1e
    rra                                           ; $5ca6: $1f
    db $10                                        ; $5ca7: $10
    ld b, $2d                                     ; $5ca8: $06 $2d
    ld h, $50                                     ; $5caa: $26 $50
    jp hl                                         ; $5cac: $e9


    ld b, h                                       ; $5cad: $44
    inc de                                        ; $5cae: $13
    sub $60                                       ; $5caf: $d6 $60
    dec l                                         ; $5cb1: $2d
    db $fc                                        ; $5cb2: $fc
    cp a                                          ; $5cb3: $bf
    inc bc                                        ; $5cb4: $03
    ld b, $3d                                     ; $5cb5: $06 $3d
    ccf                                           ; $5cb7: $3f
    ld d, [hl]                                    ; $5cb8: $56
    add hl, de                                    ; $5cb9: $19
    cp $3c                                        ; $5cba: $fe $3c

Jump_023_5cbc:
    rst $10                                       ; $5cbc: $d7
    ld h, d                                       ; $5cbd: $62
    ld [bc], a                                    ; $5cbe: $02
    sub l                                         ; $5cbf: $95
    ld c, [hl]                                    ; $5cc0: $4e
    inc [hl]                                      ; $5cc1: $34
    ld h, c                                       ; $5cc2: $61
    dec c                                         ; $5cc3: $0d
    halt                                          ; $5cc4: $76
    or d                                          ; $5cc5: $b2
    ld b, $b7                                     ; $5cc6: $06 $b7
    jp nc, $16b8                                  ; $5cc8: $d2 $b8 $16

    cp $df                                        ; $5ccb: $fe $df
    ld bc, $9603                                  ; $5ccd: $01 $03 $96
    add hl, de                                    ; $5cd0: $19
    jr nc, jr_023_5ced                            ; $5cd1: $30 $1a

    ld h, e                                       ; $5cd3: $63
    inc sp                                        ; $5cd4: $33
    sub [hl]                                      ; $5cd5: $96
    ld d, h                                       ; $5cd6: $54
    di                                            ; $5cd7: $f3
    or l                                          ; $5cd8: $b5
    ld c, l                                       ; $5cd9: $4d
    or e                                          ; $5cda: $b3
    or [hl]                                       ; $5cdb: $b6
    ld d, [hl]                                    ; $5cdc: $56
    push af                                       ; $5cdd: $f5
    ld bc, $efff                                  ; $5cde: $01 $ff $ef
    add b                                         ; $5ce1: $80
    db $10                                        ; $5ce2: $10
    ld [c], a                                     ; $5ce3: $e2
    adc e                                         ; $5ce4: $8b
    ld a, [$ae58]                                 ; $5ce5: $fa $58 $ae
    ld c, c                                       ; $5ce8: $49
    or e                                          ; $5ce9: $b3
    and d                                         ; $5cea: $a2
    sub $ef                                       ; $5ceb: $d6 $ef

jr_023_5ced:
    adc d                                         ; $5ced: $8a
    ld bc, $8b3d                                  ; $5cee: $01 $3d $8b
    ld a, [$a52a]                                 ; $5cf1: $fa $2a $a5
    ld e, c                                       ; $5cf4: $59
    ld d, $bc                                     ; $5cf5: $16 $bc
    rst $08                                       ; $5cf7: $cf
    ld c, [hl]                                    ; $5cf8: $4e
    ld e, c                                       ; $5cf9: $59
    sub e                                         ; $5cfa: $93
    and [hl]                                      ; $5cfb: $a6
    db $eb                                        ; $5cfc: $eb
    add [hl]                                      ; $5cfd: $86
    ld bc, $d2a7                                  ; $5cfe: $01 $a7 $d2
    cpl                                           ; $5d01: $2f
    db $ed                                        ; $5d02: $ed
    add l                                         ; $5d03: $85
    call $b56c                                    ; $5d04: $cd $6c $b5
    and [hl]                                      ; $5d07: $a6
    ld e, h                                       ; $5d08: $5c
    ld a, a                                       ; $5d09: $7f
    add sp, -$4e                                  ; $5d0a: $e8 $b2
    dec e                                         ; $5d0c: $1d
    ld b, l                                       ; $5d0d: $45
    adc l                                         ; $5d0e: $8d
    sub a                                         ; $5d0f: $97
    ld c, e                                       ; $5d10: $4b
    pop bc                                        ; $5d11: $c1
    ld a, $c2                                     ; $5d12: $3e $c2
    ld [hl], a                                    ; $5d14: $77
    push bc                                       ; $5d15: $c5
    dec a                                         ; $5d16: $3d
    ccf                                           ; $5d17: $3f

jr_023_5d18:
    ld b, [hl]                                    ; $5d18: $46
    xor $bc                                       ; $5d19: $ee $bc
    xor b                                         ; $5d1b: $a8
    rst $10                                       ; $5d1c: $d7
    ld h, b                                       ; $5d1d: $60
    ld a, [hl-]                                   ; $5d1e: $3a
    ld c, b                                       ; $5d1f: $48
    inc hl                                        ; $5d20: $23
    and e                                         ; $5d21: $a3
    db $f4                                        ; $5d22: $f4
    ld b, a                                       ; $5d23: $47
    db $db                                        ; $5d24: $db
    ld d, c                                       ; $5d25: $51
    call nc, $b978                                ; $5d26: $d4 $78 $b9
    inc d                                         ; $5d29: $14
    db $ec                                        ; $5d2a: $ec
    inc hl                                        ; $5d2b: $23
    ld a, h                                       ; $5d2c: $7c
    ld d, a                                       ; $5d2d: $57
    inc c                                         ; $5d2e: $0c
    ld b, a                                       ; $5d2f: $47
    dec l                                         ; $5d30: $2d
    ld a, h                                       ; $5d31: $7c
    ld sp, hl                                     ; $5d32: $f9
    dec e                                         ; $5d33: $1d
    reti                                          ; $5d34: $d9


    rst $18                                       ; $5d35: $df
    ld e, d                                       ; $5d36: $5a
    ld a, [hl+]                                   ; $5d37: $2a
    add h                                         ; $5d38: $84
    ld bc, $5596                                  ; $5d39: $01 $96 $55
    ld c, d                                       ; $5d3c: $4a
    dec bc                                        ; $5d3d: $0b
    xor [hl]                                      ; $5d3e: $ae
    push af                                       ; $5d3f: $f5
    rst $10                                       ; $5d40: $d7
    and h                                         ; $5d41: $a4
    sbc c                                         ; $5d42: $99
    adc [hl]                                      ; $5d43: $8e
    ld a, l                                       ; $5d44: $7d
    cp h                                          ; $5d45: $bc
    push de                                       ; $5d46: $d5
    ld c, l                                       ; $5d47: $4d
    inc bc                                        ; $5d48: $03
    db $db                                        ; $5d49: $db
    sub c                                         ; $5d4a: $91
    db $fd                                        ; $5d4b: $fd
    xor l                                         ; $5d4c: $ad
    and l                                         ; $5d4d: $a5
    ld b, d                                       ; $5d4e: $42
    jr jr_023_5d18                                ; $5d4f: $18 $c7

    db $e4                                        ; $5d51: $e4
    jp $a8bc                                      ; $5d52: $c3 $bc $a8


    rrca                                          ; $5d55: $0f
    jp nc, $9b10                                  ; $5d56: $d2 $10 $9b

    ld b, $f2                                     ; $5d59: $06 $f2
    xor a                                         ; $5d5b: $af
    db $ed                                        ; $5d5c: $ed
    ld hl, sp+$5d                                 ; $5d5d: $f8 $5d
    ld sp, $b596                                  ; $5d5f: $31 $96 $b5
    ccf                                           ; $5d62: $3f
    sbc $b7                                       ; $5d63: $de $b7
    cp $bc                                        ; $5d65: $fe $bc
    xor b                                         ; $5d67: $a8
    rst $10                                       ; $5d68: $d7
    ld h, b                                       ; $5d69: $60
    sbc [hl]                                      ; $5d6a: $9e
    add hl, sp                                    ; $5d6b: $39
    cp c                                          ; $5d6c: $b9
    ld d, l                                       ; $5d6d: $55
    sbc c                                         ; $5d6e: $99
    sbc l                                         ; $5d6f: $9d
    or d                                          ; $5d70: $b2
    ld h, $8d                                     ; $5d71: $26 $8d
    call z, $fc15                                 ; $5d73: $cc $15 $fc
    ld bc, $476d                                  ; $5d76: $01 $6d $47
    ld d, c                                       ; $5d79: $51
    db $e3                                        ; $5d7a: $e3
    push hl                                       ; $5d7b: $e5
    ld d, d                                       ; $5d7c: $52
    or b                                          ; $5d7d: $b0
    adc a                                         ; $5d7e: $8f
    ldh a, [$5d]                                  ; $5d7f: $f0 $5d
    ld sp, $2b27                                  ; $5d81: $31 $27 $2b
    db $d3                                        ; $5d84: $d3
    ld [hl], b                                    ; $5d85: $70
    daa                                           ; $5d86: $27
    ld l, e                                       ; $5d87: $6b
    xor h                                         ; $5d88: $ac
    ld e, a                                       ; $5d89: $5f
    xor d                                         ; $5d8a: $aa
    ld bc, $3d06                                  ; $5d8b: $01 $06 $3d
    ccf                                           ; $5d8e: $3f
    ld d, [hl]                                    ; $5d8f: $56
    add hl, de                                    ; $5d90: $19
    cp $3c                                        ; $5d91: $fe $3c
    ld [hl], a                                    ; $5d93: $77
    or d                                          ; $5d94: $b2
    ld [hl-], a                                   ; $5d95: $32
    dec c                                         ; $5d96: $0d
    ld [hl], a                                    ; $5d97: $77
    or d                                          ; $5d98: $b2
    add $fa                                       ; $5d99: $c6 $fa
    and l                                         ; $5d9b: $a5
    ld a, [de]                                    ; $5d9c: $1a
    db $ec                                        ; $5d9d: $ec
    db $f4                                        ; $5d9e: $f4
    ld l, h                                       ; $5d9f: $6c
    ccf                                           ; $5da0: $3f
    call z, $d94e                                 ; $5da1: $cc $4e $d9
    ld d, c                                       ; $5da4: $51
    ld sp, $d4ee                                  ; $5da5: $31 $ee $d4
    xor d                                         ; $5da8: $aa
    ld d, d                                       ; $5da9: $52
    cp b                                          ; $5daa: $b8
    ld c, c                                       ; $5dab: $49
    add b                                         ; $5dac: $80
    jr nc, jr_023_5ddc                            ; $5dad: $30 $2d

    add hl, de                                    ; $5daf: $19
    cp [hl]                                       ; $5db0: $be
    sub a                                         ; $5db1: $97
    ld c, e                                       ; $5db2: $4b
    pop bc                                        ; $5db3: $c1
    inc a                                         ; $5db4: $3c
    rlca                                          ; $5db5: $07
    rra                                           ; $5db6: $1f
    inc hl                                        ; $5db7: $23
    ld [hl], a                                    ; $5db8: $77
    db $ec                                        ; $5db9: $ec
    ld d, l                                       ; $5dba: $55
    cp d                                          ; $5dbb: $ba
    ld l, [hl]                                    ; $5dbc: $6e
    daa                                           ; $5dbd: $27
    cp l                                          ; $5dbe: $bd
    rst $10                                       ; $5dbf: $d7
    ld h, b                                       ; $5dc0: $60
    ld b, l                                       ; $5dc1: $45
    xor l                                         ; $5dc2: $ad
    ccf                                           ; $5dc3: $3f
    ld e, l                                       ; $5dc4: $5d
    call z, Call_000_23ac                         ; $5dc5: $cc $ac $23
    inc c                                         ; $5dc8: $0c
    dec a                                         ; $5dc9: $3d
    adc e                                         ; $5dca: $8b
    ld a, [$ae58]                                 ; $5dcb: $fa $58 $ae
    ld c, c                                       ; $5dce: $49
    inc sp                                        ; $5dcf: $33
    ld a, [$5d67]                                 ; $5dd0: $fa $67 $5d
    scf                                           ; $5dd3: $37
    ld c, e                                       ; $5dd4: $4b
    dec l                                         ; $5dd5: $2d
    inc e                                         ; $5dd6: $1c
    jr @-$05                                      ; $5dd7: $18 $f9

    pop af                                        ; $5dd9: $f1
    cp a                                          ; $5dda: $bf
    and d                                         ; $5ddb: $a2

jr_023_5ddc:
    sub $5f                                       ; $5ddc: $d6 $5f
    sub e                                         ; $5dde: $93
    ld b, [hl]                                    ; $5ddf: $46
    ld b, $97                                     ; $5de0: $06 $97
    db $e3                                        ; $5de2: $e3
    inc hl                                        ; $5de3: $23
    inc c                                         ; $5de4: $0c
    dec a                                         ; $5de5: $3d
    adc d                                         ; $5de6: $8a
    ld a, [$1bf8]                                 ; $5de7: $fa $f8 $1b
    db $e3                                        ; $5dea: $e3
    ld h, d                                       ; $5deb: $62
    ld h, [hl]                                    ; $5dec: $66
    ld a, l                                       ; $5ded: $7d
    sub $97                                       ; $5dee: $d6 $97
    ld h, [hl]                                    ; $5df0: $66
    ld [hl], h                                    ; $5df1: $74
    xor e                                         ; $5df2: $ab
    ld e, a                                       ; $5df3: $5f
    jp nc, $349a                                  ; $5df4: $d2 $9a $34

    ld l, b                                       ; $5df7: $68
    dec sp                                        ; $5df8: $3b
    adc d                                         ; $5df9: $8a
    ld a, [de]                                    ; $5dfa: $1a
    cpl                                           ; $5dfb: $2f
    sub a                                         ; $5dfc: $97
    add d                                         ; $5dfd: $82
    ld a, l                                       ; $5dfe: $7d
    add h                                         ; $5dff: $84
    rst $28                                       ; $5e00: $ef
    adc d                                         ; $5e01: $8a
    ld bc, $8a3d                                  ; $5e02: $01 $3d $8a
    ld a, d                                       ; $5e05: $7a
    dec c                                         ; $5e06: $0d
    and [hl]                                      ; $5e07: $a6
    add e                                         ; $5e08: $83
    and d                                         ; $5e09: $a2
    pop hl                                        ; $5e0a: $e1
    ld [hl], e                                    ; $5e0b: $73
    rst $00                                       ; $5e0c: $c7
    ld e, [hl]                                    ; $5e0d: $5e
    dec b                                         ; $5e0e: $05
    ld l, l                                       ; $5e0f: $6d
    ld b, a                                       ; $5e10: $47
    ld d, c                                       ; $5e11: $51
    db $e3                                        ; $5e12: $e3
    push hl                                       ; $5e13: $e5
    ld d, d                                       ; $5e14: $52
    or b                                          ; $5e15: $b0
    adc a                                         ; $5e16: $8f
    ldh a, [$5d]                                  ; $5e17: $f0 $5d
    ld sp, $8a3d                                  ; $5e19: $31 $3d $8a
    ld a, d                                       ; $5e1c: $7a
    dec l                                         ; $5e1d: $2d
    add $55                                       ; $5e1e: $c6 $55
    add hl, bc                                    ; $5e20: $09
    cp [hl]                                       ; $5e21: $be
    ld h, $cd                                     ; $5e22: $26 $cd
    adc [hl]                                      ; $5e24: $8e
    db $ec                                        ; $5e25: $ec
    ld l, a                                       ; $5e26: $6f
    dec l                                         ; $5e27: $2d
    dec d                                         ; $5e28: $15
    jp nz, $8196                                  ; $5e29: $c2 $96 $81

    jp hl                                         ; $5e2c: $e9


    ld [hl], h                                    ; $5e2d: $74
    ld [de], a                                    ; $5e2e: $12
    ld a, [hl]                                    ; $5e2f: $7e
    sub [hl]                                      ; $5e30: $96
    ld d, l                                       ; $5e31: $55
    ld l, c                                       ; $5e32: $69
    ld [hl+], a                                   ; $5e33: $22
    ld e, e                                       ; $5e34: $5b
    ld [hl], b                                    ; $5e35: $70
    xor l                                         ; $5e36: $ad
    cp a                                          ; $5e37: $bf
    ld h, $cd                                     ; $5e38: $26 $cd
    adc [hl]                                      ; $5e3a: $8e
    db $ec                                        ; $5e3b: $ec
    ld l, a                                       ; $5e3c: $6f
    dec l                                         ; $5e3d: $2d
    dec d                                         ; $5e3e: $15
    jp nz, $e4c7                                  ; $5e3f: $c2 $c7 $e4

    jp $a8bc                                      ; $5e42: $c3 $bc $a8


    rrca                                          ; $5e45: $0f
    call z, $35f5                                 ; $5e46: $cc $f5 $35
    ld l, c                                       ; $5e49: $69
    cp d                                          ; $5e4a: $ba
    ld h, d                                       ; $5e4b: $62
    sub [hl]                                      ; $5e4c: $96
    ld a, c                                       ; $5e4d: $79
    cp c                                          ; $5e4e: $b9
    ld d, h                                       ; $5e4f: $54
    sbc a                                         ; $5e50: $9f
    rla                                           ; $5e51: $17
    push af                                       ; $5e52: $f5
    ld a, [de]                                    ; $5e53: $1a
    inc l                                         ; $5e54: $2c
    ld c, h                                       ; $5e55: $4c
    ld sp, hl                                     ; $5e56: $f9
    ld a, c                                       ; $5e57: $79
    ld d, c                                       ; $5e58: $51
    ld e, d                                       ; $5e59: $5a
    sub e                                         ; $5e5a: $93
    ld h, [hl]                                    ; $5e5b: $66
    ld b, l                                       ; $5e5c: $45
    xor l                                         ; $5e5d: $ad
    rst $08                                       ; $5e5e: $cf
    db $dd                                        ; $5e5f: $dd
    dec b                                         ; $5e60: $05
    xor d                                         ; $5e61: $aa
    ld sp, hl                                     ; $5e62: $f9
    xor [hl]                                      ; $5e63: $ae
    ld [hl], a                                    ; $5e64: $77
    db $dd                                        ; $5e65: $dd
    adc [hl]                                      ; $5e66: $8e
    and d                                         ; $5e67: $a2
    add $cb                                       ; $5e68: $c6 $cb
    and l                                         ; $5e6a: $a5
    ld h, b                                       ; $5e6b: $60
    rra                                           ; $5e6c: $1f
    pop hl                                        ; $5e6d: $e1
    cp e                                          ; $5e6e: $bb
    ld h, d                                       ; $5e6f: $62
    dec l                                         ; $5e70: $2d
    db $fc                                        ; $5e71: $fc
    cp a                                          ; $5e72: $bf
    xor a                                         ; $5e73: $af
    add a                                         ; $5e74: $87
    ld h, h                                       ; $5e75: $64
    adc h                                         ; $5e76: $8c
    rst $18                                       ; $5e77: $df
    ld h, b                                       ; $5e78: $60
    dec l                                         ; $5e79: $2d

Jump_023_5e7a:
    db $fc                                        ; $5e7a: $fc
    cp a                                          ; $5e7b: $bf
    jp $94ec                                      ; $5e7c: $c3 $ec $94


    dec [hl]                                      ; $5e7f: $35
    ld l, c                                       ; $5e80: $69
    cp b                                          ; $5e81: $b8
    di                                            ; $5e82: $f3
    ld a, [c]                                     ; $5e83: $f2
    call nc, Call_000_3b75                        ; $5e84: $d4 $75 $3b
    ld a, [hl+]                                   ; $5e87: $2a
    add $59                                       ; $5e88: $c6 $59
    ld e, a                                       ; $5e8a: $5f
    sbc d                                         ; $5e8b: $9a
    pop de                                        ; $5e8c: $d1
    xor l                                         ; $5e8d: $ad
    ld e, $61                                     ; $5e8e: $1e $61
    daa                                           ; $5e90: $27
    cp l                                          ; $5e91: $bd
    rst $10                                       ; $5e92: $d7
    ld h, b                                       ; $5e93: $60
    ld b, l                                       ; $5e94: $45
    xor l                                         ; $5e95: $ad
    ccf                                           ; $5e96: $3f
    ld e, l                                       ; $5e97: $5d
    call z, Call_023_4fac                         ; $5e98: $cc $ac $4f
    ld a, l                                       ; $5e9b: $7d
    ld a, h                                       ; $5e9c: $7c
    ld d, c                                       ; $5e9d: $51
    ld e, a                                       ; $5e9e: $5f
    sub e                                         ; $5e9f: $93
    and [hl]                                      ; $5ea0: $a6
    ld h, $bf                                     ; $5ea1: $26 $bf
    or h                                          ; $5ea3: $b4
    db $ed                                        ; $5ea4: $ed
    sub a                                         ; $5ea5: $97
    ld c, e                                       ; $5ea6: $4b
    ld bc, $3dc2                                  ; $5ea7: $01 $c2 $3d

Call_023_5eaa:
    adc e                                         ; $5eaa: $8b
    ld a, d                                       ; $5eab: $7a
    dec l                                         ; $5eac: $2d
    add $35                                       ; $5ead: $c6 $35
    ld l, c                                       ; $5eaf: $69
    ld d, [hl]                                    ; $5eb0: $56
    call nc, $f3fa                                ; $5eb1: $d4 $fa $f3
    ld a, [c]                                     ; $5eb4: $f2
    call nz, Call_023_7b1d                        ; $5eb5: $c4 $1d $7b
    sub l                                         ; $5eb8: $95
    ei                                            ; $5eb9: $fb
    ld e, l                                       ; $5eba: $5d
    ld sp, $8a3d                                  ; $5ebb: $31 $3d $8a
    ld a, d                                       ; $5ebe: $7a
    dec l                                         ; $5ebf: $2d
    add $81                                       ; $5ec0: $c6 $81
    ld a, [$bb05]                                 ; $5ec2: $fa $05 $bb
    ld e, c                                       ; $5ec5: $59
    sub e                                         ; $5ec6: $93
    ld b, [hl]                                    ; $5ec7: $46
    ld b, $fc                                     ; $5ec8: $06 $fc
    cp a                                          ; $5eca: $bf
    rst $08                                       ; $5ecb: $cf
    inc sp                                        ; $5ecc: $33
    cp l                                          ; $5ecd: $bd
    and b                                         ; $5ece: $a0
    db $ed                                        ; $5ecf: $ed
    jr z, jr_023_5f3c                             ; $5ed0: $28 $6a

Jump_023_5ed2:
    cp h                                          ; $5ed2: $bc
    ld e, h                                       ; $5ed3: $5c
    ld a, [bc]                                    ; $5ed4: $0a
    or $11                                        ; $5ed5: $f6 $11
    cp [hl]                                       ; $5ed7: $be
    dec hl                                        ; $5ed8: $2b
    ld b, $3d                                     ; $5ed9: $06 $3d
    ccf                                           ; $5edb: $3f
    ld b, [hl]                                    ; $5edc: $46
    xor $bc                                       ; $5edd: $ee $bc
    xor b                                         ; $5edf: $a8
    rst $10                                       ; $5ee0: $d7
    ld h, b                                       ; $5ee1: $60
    ld a, [hl-]                                   ; $5ee2: $3a
    jr z, jr_023_5eff                             ; $5ee3: $28 $1a

    ld a, $da                                     ; $5ee5: $3e $da
    adc [hl]                                      ; $5ee7: $8e
    and d                                         ; $5ee8: $a2
    add $cb                                       ; $5ee9: $c6 $cb
    and l                                         ; $5eeb: $a5
    ld h, b                                       ; $5eec: $60
    rra                                           ; $5eed: $1f
    pop hl                                        ; $5eee: $e1
    cp e                                          ; $5eef: $bb
    ld h, d                                       ; $5ef0: $62
    ld h, a                                       ; $5ef1: $67
    cp [hl]                                       ; $5ef2: $be
    inc [hl]                                      ; $5ef3: $34
    ld [hl], e                                    ; $5ef4: $73
    dec b                                         ; $5ef5: $05
    ld l, a                                       ; $5ef6: $6f
    and [hl]                                      ; $5ef7: $a6
    call nz, $1496                                ; $5ef8: $c4 $96 $14
    sbc e                                         ; $5efb: $9b
    dec e                                         ; $5efc: $1d
    reti                                          ; $5efd: $d9


    rst $18                                       ; $5efe: $df

jr_023_5eff:
    ld e, d                                       ; $5eff: $5a
    ld a, [hl+]                                   ; $5f00: $2a
    add h                                         ; $5f01: $84
    ld bc, $5a96                                  ; $5f02: $01 $96 $5a
    adc h                                         ; $5f05: $8c
    ld l, e                                       ; $5f06: $6b
    sbc e                                         ; $5f07: $9b
    ld h, [hl]                                    ; $5f08: $66
    ld e, [hl]                                    ; $5f09: $5e
    call nc, $a767                                ; $5f0a: $d4 $67 $a7
    db $ec                                        ; $5f0d: $ec
    ret z                                         ; $5f0e: $c8

    cp $d6                                        ; $5f0f: $fe $d6
    ld d, d                                       ; $5f11: $52
    ld hl, $2d0c                                  ; $5f12: $21 $0c $2d
    cp c                                          ; $5f15: $b9
    dec bc                                        ; $5f16: $0b
    di                                            ; $5f17: $f3
    and d                                         ; $5f18: $a2
    ld a, $1d                                     ; $5f19: $3e $1d
    ld a, e                                       ; $5f1b: $7b
    adc l                                         ; $5f1c: $8d

Jump_023_5f1d:
    ld l, e                                       ; $5f1d: $6b
    cp a                                          ; $5f1e: $bf
    di                                            ; $5f1f: $f3
    rst $38                                       ; $5f20: $ff
    inc [hl]                                      ; $5f21: $34
    inc bc                                        ; $5f22: $03
    ld e, l                                       ; $5f23: $5d
    ld sp, $16a7                                  ; $5f24: $31 $a7 $16
    xor $2c                                       ; $5f27: $ee $2c
    ld h, e                                       ; $5f29: $63
    ld c, c                                       ; $5f2a: $49
    dec [hl]                                      ; $5f2b: $35
    sbc a                                         ; $5f2c: $9f
    sub a                                         ; $5f2d: $97
    ld c, e                                       ; $5f2e: $4b
    push af                                       ; $5f2f: $f5
    dec [hl]                                      ; $5f30: $35
    ld l, c                                       ; $5f31: $69
    ld d, [hl]                                    ; $5f32: $56
    call nc, $7bfa                                ; $5f33: $d4 $fa $7b
    ld c, d                                       ; $5f36: $4a
    inc de                                        ; $5f37: $13
    sub h                                         ; $5f38: $94
    reti                                          ; $5f39: $d9


    add hl, hl                                    ; $5f3a: $29
    di                                            ; $5f3b: $f3

jr_023_5f3c:
    and d                                         ; $5f3c: $a2

Jump_023_5f3d:
    adc [hl]                                      ; $5f3d: $8e
    jr nc, jr_023_5f7d                            ; $5f3e: $30 $3d

    ld e, a                                       ; $5f40: $5f
    ld hl, $b37e                                  ; $5f41: $21 $7e $b3
    ld h, e                                       ; $5f44: $63
    jp $ca4e                                      ; $5f45: $c3 $4e $ca


    dec [hl]                                      ; $5f48: $35
    ld hl, $3d06                                  ; $5f49: $21 $06 $3d
    ccf                                           ; $5f4c: $3f
    ld d, [hl]                                    ; $5f4d: $56
    add hl, de                                    ; $5f4e: $19
    cp $3c                                        ; $5f4f: $fe $3c
    rst $20                                       ; $5f51: $e7
    push hl                                       ; $5f52: $e5
    rst $10                                       ; $5f53: $d7
    di                                            ; $5f54: $f3
    dec d                                         ; $5f55: $15
    ld [c], a                                     ; $5f56: $e2
    scf                                           ; $5f57: $37
    db $eb                                        ; $5f58: $eb
    and [hl]                                      ; $5f59: $a6
    call nz, Call_000_1d9a                        ; $5f5a: $c4 $9a $1d
    dec de                                        ; $5f5d: $1b
    halt                                          ; $5f5e: $76
    ld d, d                                       ; $5f5f: $52
    xor [hl]                                      ; $5f60: $ae
    add hl, bc                                    ; $5f61: $09
    ld de, $3d06                                  ; $5f62: $11 $06 $3d
    adc e                                         ; $5f65: $8b
    ld a, [$ae58]                                 ; $5f66: $fa $58 $ae
    ld c, c                                       ; $5f69: $49
    or e                                          ; $5f6a: $b3
    and d                                         ; $5f6b: $a2
    sub $ef                                       ; $5f6c: $d6 $ef
    adc d                                         ; $5f6e: $8a
    ld bc, $8b3d                                  ; $5f6f: $01 $3d $8b
    ld a, [$34f8]                                 ; $5f72: $fa $f8 $34
    sub c                                         ; $5f75: $91
    xor l                                         ; $5f76: $ad
    ld c, c                                       ; $5f77: $49
    or e                                          ; $5f78: $b3
    ld a, b                                       ; $5f79: $78
    db $eb                                        ; $5f7a: $eb
    rst $18                                       ; $5f7b: $df
    dec d                                         ; $5f7c: $15

jr_023_5f7d:
    inc bc                                        ; $5f7d: $03
    ld b, a                                       ; $5f7e: $47
    ld b, l                                       ; $5f7f: $45
    ld e, [hl]                                    ; $5f80: $5e
    dec de                                        ; $5f81: $1b
    sbc b                                         ; $5f82: $98
    xor [hl]                                      ; $5f83: $ae
    sub e                                         ; $5f84: $93
    dec e                                         ; $5f85: $1d
    inc de                                        ; $5f86: $13
    ld d, l                                       ; $5f87: $55
    halt                                          ; $5f88: $76
    db $fd                                        ; $5f89: $fd
    ld b, e                                       ; $5f8a: $43
    or h                                          ; $5f8b: $b4
    dec e                                         ; $5f8c: $1d
    ld b, l                                       ; $5f8d: $45
    adc l                                         ; $5f8e: $8d
    sub a                                         ; $5f8f: $97
    ld c, e                                       ; $5f90: $4b
    pop bc                                        ; $5f91: $c1
    ld a, $c2                                     ; $5f92: $3e $c2

Jump_023_5f94:
    ld [hl], a                                    ; $5f94: $77
    push bc                                       ; $5f95: $c5
    db $dd                                        ; $5f96: $dd
    ld e, a                                       ; $5f97: $5f
    adc d                                         ; $5f98: $8a
    halt                                          ; $5f99: $76
    ld h, b                                       ; $5f9a: $60
    ld c, l                                       ; $5f9b: $4d
    sbc d                                         ; $5f9c: $9a
    ld e, d                                       ; $5f9d: $5a
    adc h                                         ; $5f9e: $8c
    xor e                                         ; $5f9f: $ab
    adc d                                         ; $5fa0: $8a
    ld d, d                                       ; $5fa1: $52
    ldh a, [rOCPD]                                ; $5fa2: $f0 $6b
    jp nc, $c2c8                                  ; $5fa4: $d2 $c8 $c2

    ld c, e                                       ; $5fa7: $4b
    ld l, h                                       ; $5fa8: $6c

jr_023_5fa9:
    ld d, c                                       ; $5fa9: $51
    db $fd                                        ; $5faa: $fd
    dec b                                         ; $5fab: $05

Call_023_5fac:
    ld l, l                                       ; $5fac: $6d
    ld b, a                                       ; $5fad: $47
    ld d, c                                       ; $5fae: $51
    db $e3                                        ; $5faf: $e3
    push hl                                       ; $5fb0: $e5
    ld d, d                                       ; $5fb1: $52
    or b                                          ; $5fb2: $b0
    adc a                                         ; $5fb3: $8f
    ldh a, [$5d]                                  ; $5fb4: $f0 $5d

jr_023_5fb6:
    ld sp, $8a3d                                  ; $5fb6: $31 $3d $8a
    ld a, [$7fae]                                 ; $5fb9: $fa $ae $7f
    jr c, jr_023_5fb6                             ; $5fbc: $38 $f8

    jr jr_023_6021                                ; $5fbe: $18 $61

    halt                                          ; $5fc0: $76
    jp z, $ec8e                                   ; $5fc1: $ca $8e $ec

    ld l, a                                       ; $5fc4: $6f
    dec l                                         ; $5fc5: $2d
    dec d                                         ; $5fc6: $15
    jp nz, $972d                                  ; $5fc7: $c2 $2d $97

    xor d                                         ; $5fca: $aa
    rst $18                                       ; $5fcb: $df
    push af                                       ; $5fcc: $f5
    ld a, [de]                                    ; $5fcd: $1a
    call z, $33c0                                 ; $5fce: $cc $c0 $33
    xor $2c                                       ; $5fd1: $ee $2c
    or l                                          ; $5fd3: $b5
    jr jr_023_5fed                                ; $5fd4: $18 $17

    ld e, h                                       ; $5fd6: $5c
    db $eb                                        ; $5fd7: $eb
    xor a                                         ; $5fd8: $af
    ld c, c                                       ; $5fd9: $49
    or e                                          ; $5fda: $b3
    inc hl                                        ; $5fdb: $23
    ei                                            ; $5fdc: $fb
    ld e, e                                       ; $5fdd: $5b
    ld c, e                                       ; $5fde: $4b
    add l                                         ; $5fdf: $85
    jr nc, jr_023_5fa9                            ; $5fe0: $30 $c7

    db $e4                                        ; $5fe2: $e4
    ld hl, sp+$5f                                 ; $5fe3: $f8 $5f
    ld d, c                                       ; $5fe5: $51
    db $eb                                        ; $5fe6: $eb
    ld c, a                                       ; $5fe7: $4f
    rst $00                                       ; $5fe8: $c7
    ld e, [hl]                                    ; $5fe9: $5e
    ld h, e                                       ; $5fea: $63
    ld d, a                                       ; $5feb: $57
    inc c                                         ; $5fec: $0c

jr_023_5fed:
    cp l                                          ; $5fed: $bd
    jp nc, Jump_023_52ac                          ; $5fee: $d2 $ac $52

Call_023_5ff1:
    xor d                                         ; $5ff1: $aa
    ld sp, hl                                     ; $5ff2: $f9
    call nc, Call_023_53b6                        ; $5ff3: $d4 $b6 $53
    ret c                                         ; $5ff6: $d8

    cp h                                          ; $5ff7: $bc
    xor b                                         ; $5ff8: $a8
    ld [hl], e                                    ; $5ff9: $73
    rst $10                                       ; $5ffa: $d7
    xor d                                         ; $5ffb: $aa
    ld [hl+], a                                   ; $5ffc: $22
    dec c                                         ; $5ffd: $0d
    jp nz, Jump_023_5f3d                          ; $5ffe: $c2 $3d $5f

    ld hl, $b37e                                  ; $6001: $21 $7e $b3
    ld e, $fc                                     ; $6004: $1e $fc
    dec h                                         ; $6006: $25
    ret c                                         ; $6007: $d8

    pop de                                        ; $6008: $d1
    ld a, [hl+]                                   ; $6009: $2a
    add c                                         ; $600a: $81
    ld e, [hl]                                    ; $600b: $5e
    jp nz, $3f3d                                  ; $600c: $c2 $3d $3f

    ld d, [hl]                                    ; $600f: $56
    add hl, de                                    ; $6010: $19
    cp $3c                                        ; $6011: $fe $3c
    rst $20                                       ; $6013: $e7
    push hl                                       ; $6014: $e5
    rst $10                                       ; $6015: $d7
    di                                            ; $6016: $f3
    dec d                                         ; $6017: $15
    ld [c], a                                     ; $6018: $e2
    scf                                           ; $6019: $37
    ld l, e                                       ; $601a: $6b
    ld sp, $4e9d                                  ; $601b: $31 $9d $4e
    cp h                                          ; $601e: $bc
    rrca                                          ; $601f: $0f
    dec sp                                        ; $6020: $3b

jr_023_6021:
    ld e, d                                       ; $6021: $5a
    dec h                                         ; $6022: $25
    ret nc                                        ; $6023: $d0

    ld c, e                                       ; $6024: $4b
    dec sp                                        ; $6025: $3b
    ld e, d                                       ; $6026: $5a
    pop hl                                        ; $6027: $e1
    jp Jump_023_4727                              ; $6028: $c3 $27 $47


    jr jr_023_606a                                ; $602b: $18 $3d

    adc e                                         ; $602d: $8b
    ld a, [$ae58]                                 ; $602e: $fa $58 $ae
    ld c, c                                       ; $6031: $49
    or e                                          ; $6032: $b3
    and d                                         ; $6033: $a2
    sub $ef                                       ; $6034: $d6 $ef
    adc d                                         ; $6036: $8a
    ld bc, $8b3d                                  ; $6037: $01 $3d $8b
    ld a, [$34f8]                                 ; $603a: $fa $f8 $34
    sub c                                         ; $603d: $91
    xor l                                         ; $603e: $ad
    ld c, c                                       ; $603f: $49
    or e                                          ; $6040: $b3
    ld a, b                                       ; $6041: $78
    db $eb                                        ; $6042: $eb
    rst $18                                       ; $6043: $df
    dec d                                         ; $6044: $15
    inc bc                                        ; $6045: $03
    dec a                                         ; $6046: $3d
    adc d                                         ; $6047: $8a
    ld a, [$7fae]                                 ; $6048: $fa $ae $7f
    cp b                                          ; $604b: $b8
    dec bc                                        ; $604c: $0b
    db $d3                                        ; $604d: $d3
    ret z                                         ; $604e: $c8

    ld l, e                                       ; $604f: $6b
    inc bc                                        ; $6050: $03
    db $d3                                        ; $6051: $d3
    reti                                          ; $6052: $d9


    ld l, d                                       ; $6053: $6a
    ld c, l                                       ; $6054: $4d
    cp c                                          ; $6055: $b9
    cp $68                                        ; $6056: $fe $68
    dec sp                                        ; $6058: $3b
    adc d                                         ; $6059: $8a
    ld a, [de]                                    ; $605a: $1a
    cpl                                           ; $605b: $2f
    sub a                                         ; $605c: $97
    add d                                         ; $605d: $82
    ld a, l                                       ; $605e: $7d
    add h                                         ; $605f: $84
    rst $28                                       ; $6060: $ef
    adc d                                         ; $6061: $8a
    ld bc, $d2bd                                  ; $6062: $01 $bd $d2
    xor h                                         ; $6065: $ac
    ld c, [hl]                                    ; $6066: $4e
    ret                                           ; $6067: $c9


    xor a                                         ; $6068: $af

jr_023_6069:
    db $fd                                        ; $6069: $fd

jr_023_606a:
    ldh [rBCPS], a                                ; $606a: $e0 $68
    dec sp                                        ; $606c: $3b
    adc d                                         ; $606d: $8a
    ld a, [de]                                    ; $606e: $1a
    cpl                                           ; $606f: $2f
    sub a                                         ; $6070: $97
    add d                                         ; $6071: $82
    ld a, l                                       ; $6072: $7d

Call_023_6073:
    add h                                         ; $6073: $84
    rst $28                                       ; $6074: $ef
    adc d                                         ; $6075: $8a

jr_023_6076:
    ld bc, $8a3d                                  ; $6076: $01 $3d $8a
    ld a, [$7fae]                                 ; $6079: $fa $ae $7f
    jr c, jr_023_6076                             ; $607c: $38 $f8

    jr jr_023_60e1                                ; $607e: $18 $61

    halt                                          ; $6080: $76
    jp z, $ec8e                                   ; $6081: $ca $8e $ec

    ld l, a                                       ; $6084: $6f
    dec l                                         ; $6085: $2d
    dec d                                         ; $6086: $15
    jp nz, $972d                                  ; $6087: $c2 $2d $97

    xor d                                         ; $608a: $aa
    rst $18                                       ; $608b: $df
    push af                                       ; $608c: $f5
    ld a, [de]                                    ; $608d: $1a
    call z, $33c0                                 ; $608e: $cc $c0 $33
    xor $2c                                       ; $6091: $ee $2c
    or l                                          ; $6093: $b5
    jr jr_023_60ad                                ; $6094: $18 $17

    ld e, h                                       ; $6096: $5c
    db $eb                                        ; $6097: $eb
    xor a                                         ; $6098: $af
    ld c, c                                       ; $6099: $49
    or e                                          ; $609a: $b3
    inc hl                                        ; $609b: $23
    ei                                            ; $609c: $fb
    ld e, e                                       ; $609d: $5b
    ld c, e                                       ; $609e: $4b
    add l                                         ; $609f: $85
    jr nc, jr_023_6069                            ; $60a0: $30 $c7

    db $e4                                        ; $60a2: $e4
    ld hl, sp+$5f                                 ; $60a3: $f8 $5f

Jump_023_60a5:
    ld d, c                                       ; $60a5: $51
    db $eb                                        ; $60a6: $eb
    ld c, a                                       ; $60a7: $4f
    rst $00                                       ; $60a8: $c7
    ld e, [hl]                                    ; $60a9: $5e
    ld h, e                                       ; $60aa: $63
    ld d, a                                       ; $60ab: $57
    inc c                                         ; $60ac: $0c

jr_023_60ad:
    dec a                                         ; $60ad: $3d
    ld a, a                                       ; $60ae: $7f
    inc l                                         ; $60af: $2c
    xor c                                         ; $60b0: $a9
    and $0b                                       ; $60b1: $e6 $0b
    xor [hl]                                      ; $60b3: $ae
    push af                                       ; $60b4: $f5
    ld d, a                                       ; $60b5: $57
    ret                                           ; $60b6: $c9


    or e                                          ; $60b7: $b3
    db $eb                                        ; $60b8: $eb
    ld [$4a21], sp                                ; $60b9: $08 $21 $4a
    rst $18                                       ; $60bc: $df
    ld e, e                                       ; $60bd: $5b
    sbc a                                         ; $60be: $9f
    and $39                                       ; $60bf: $e6 $39
    db $dd                                        ; $60c1: $dd
    pop af                                        ; $60c2: $f1
    jp nc, $f6d8                                  ; $60c3: $d2 $d8 $f6

    dec h                                         ; $60c6: $25
    sub [hl]                                      ; $60c7: $96
    jp nc, $0305                                  ; $60c8: $d2 $05 $03

    ld b, a                                       ; $60cb: $47
    ld b, l                                       ; $60cc: $45
    ret z                                         ; $60cd: $c8

    ld d, l                                       ; $60ce: $55
    ld a, [de]                                    ; $60cf: $1a
    db $e3                                        ; $60d0: $e3
    or e                                          ; $60d1: $b3
    sbc l                                         ; $60d2: $9d
    sbc [hl]                                      ; $60d3: $9e
    adc l                                         ; $60d4: $8d
    add $b5                                       ; $60d5: $c6 $b5

Jump_023_60d7:
    cp b                                          ; $60d7: $b8
    jp c, $9a36                                   ; $60d8: $da $36 $9a

    push bc                                       ; $60db: $c5
    ld [hl], a                                    ; $60dc: $77
    ld h, c                                       ; $60dd: $61
    halt                                          ; $60de: $76
    ld a, [de]                                    ; $60df: $1a
    ld h, d                                       ; $60e0: $62

jr_023_60e1:
    db $e3                                        ; $60e1: $e3
    ld d, e                                       ; $60e2: $53
    ld [hl+], a                                   ; $60e3: $22
    db $e3                                        ; $60e4: $e3
    cpl                                           ; $60e5: $2f
    ei                                            ; $60e6: $fb
    add hl, hl                                    ; $60e7: $29
    or c                                          ; $60e8: $b1
    dec d                                         ; $60e9: $15
    add l                                         ; $60ea: $85
    add l                                         ; $60eb: $85
    ld c, d                                       ; $60ec: $4a
    call $a928                                    ; $60ed: $cd $28 $a9
    rst $28                                       ; $60f0: $ef
    ld d, b                                       ; $60f1: $50
    add e                                         ; $60f2: $83
    ld e, e                                       ; $60f3: $5b
    ld l, c                                       ; $60f4: $69
    sbc h                                         ; $60f5: $9c
    add c                                         ; $60f6: $81
    rlca                                          ; $60f7: $07
    add h                                         ; $60f8: $84
    ld bc, $ca3d                                  ; $60f9: $01 $3d $ca
    add l                                         ; $60fc: $85
    ld e, l                                       ; $60fd: $5d
    ld a, [bc]                                    ; $60fe: $0a
    db $e4                                        ; $60ff: $e4
    reti                                          ; $6100: $d9


    ld a, l                                       ; $6101: $7d
    ld a, [c]                                     ; $6102: $f2
    add l                                         ; $6103: $85
    ld b, $7c                                     ; $6104: $06 $7c
    db $ed                                        ; $6106: $ed
    ld e, a                                       ; $6107: $5f
    and l                                         ; $6108: $a5
    ld a, [c]                                     ; $6109: $f2
    or [hl]                                       ; $610a: $b6
    adc c                                         ; $610b: $89
    or c                                          ; $610c: $b1
    ld e, c                                       ; $610d: $59
    ld d, c                                       ; $610e: $51
    ld h, d                                       ; $610f: $62
    pop af                                        ; $6110: $f1
    reti                                          ; $6111: $d9


    sub h                                         ; $6112: $94
    ret c                                         ; $6113: $d8

    ld a, [hl-]                                   ; $6114: $3a
    ld a, [c]                                     ; $6115: $f2
    dec e                                         ; $6116: $1d
    sub l                                         ; $6117: $95

Call_023_6118:
    ld h, a                                       ; $6118: $67
    add e                                         ; $6119: $83
    ld c, e                                       ; $611a: $4b
    push de                                       ; $611b: $d5
    rst $28                                       ; $611c: $ef
    ld a, [$a52a]                                 ; $611d: $fa $2a $a5
    or l                                          ; $6120: $b5
    ld a, a                                       ; $6121: $7f
    sbc l                                         ; $6122: $9d
    cp h                                          ; $6123: $bc
    sub b                                         ; $6124: $90
    sub h                                         ; $6125: $94
    ld b, $10                                     ; $6126: $06 $10
    ld b, $47                                     ; $6128: $06 $47
    adc l                                         ; $612a: $8d
    cp a                                          ; $612b: $bf
    db $ec                                        ; $612c: $ec

jr_023_612d:
    and c                                         ; $612d: $a1
    inc hl                                        ; $612e: $23

Call_023_612f:
    xor a                                         ; $612f: $af
    ld l, h                                       ; $6130: $6c
    sbc l                                         ; $6131: $9d
    xor b                                         ; $6132: $a8
    db $e4                                        ; $6133: $e4
    or e                                          ; $6134: $b3
    dec [hl]                                      ; $6135: $35
    ld c, h                                       ; $6136: $4c
    inc bc                                        ; $6137: $03
    or e                                          ; $6138: $b3
    ld d, e                                       ; $6139: $53
    and $e5                                       ; $613a: $e6 $e5
    rlca                                          ; $613c: $07
    ld a, [hl]                                    ; $613d: $7e
    add hl, hl                                    ; $613e: $29
    cp b                                          ; $613f: $b8
    inc d                                         ; $6140: $14
    xor h                                         ; $6141: $ac
    add sp, $15                                   ; $6142: $e8 $15
    sbc b                                         ; $6144: $98
    rla                                           ; $6145: $17
    push af                                       ; $6146: $f5
    dec b                                         ; $6147: $05
    sub d                                         ; $6148: $92
    db $fc                                        ; $6149: $fc
    sub d                                         ; $614a: $92
    halt                                          ; $614b: $76
    dec e                                         ; $614c: $1d
    ld d, $5f                                     ; $614d: $16 $5f
    xor l                                         ; $614f: $ad
    rrca                                          ; $6150: $0f
    ld [$4703], sp                                ; $6151: $08 $03 $47
    ld b, l                                       ; $6154: $45
    ret z                                         ; $6155: $c8

    push de                                       ; $6156: $d5
    add hl, hl                                    ; $6157: $29
    ld a, c                                       ; $6158: $79
    sbc d                                         ; $6159: $9a
    jp nz, Jump_000_368e                          ; $615a: $c2 $8e $36

    ld b, d                                       ; $615d: $42
    sub a                                         ; $615e: $97
    add d                                         ; $615f: $82
    dec e                                         ; $6160: $1d
    ld l, l                                       ; $6161: $6d

jr_023_6162:
    and b                                         ; $6162: $a0
    ld [hl], b                                    ; $6163: $70
    ld [hl], a                                    ; $6164: $77
    ld a, l                                       ; $6165: $7d
    sub b                                         ; $6166: $90
    pop hl                                        ; $6167: $e1
    ei                                            ; $6168: $fb
    dec c                                         ; $6169: $0d
    rra                                           ; $616a: $1f
    ld h, $1f                                     ; $616b: $26 $1f
    ld e, a                                       ; $616d: $5f
    pop hl                                        ; $616e: $e1
    ld h, c                                       ; $616f: $61
    halt                                          ; $6170: $76
    call nc, $d430                                ; $6171: $d4 $30 $d4
    halt                                          ; $6174: $76
    db $fc                                        ; $6175: $fc
    ld e, c                                       ; $6176: $59
    or l                                          ; $6177: $b5
    sub e                                         ; $6178: $93
    ld [bc], a                                    ; $6179: $02

jr_023_617a:
    ld l, b                                       ; $617a: $68
    ld b, a                                       ; $617b: $47
    ld a, a                                       ; $617c: $7f
    and l                                         ; $617d: $a5
    ld b, $7e                                     ; $617e: $06 $7e
    ld l, c                                       ; $6180: $69
    rst $08                                       ; $6181: $cf
    rlc l                                         ; $6182: $cb $05
    xor $ae                                       ; $6184: $ee $ae
    rrca                                          ; $6186: $0f
    ld c, d                                       ; $6187: $4a
    sbc d                                         ; $6188: $9a
    ret z                                         ; $6189: $c8

    sub $fe                                       ; $618a: $d6 $fe
    ld d, l                                       ; $618c: $55
    ld a, [hl+]                                   ; $618d: $2a
    ld l, a                                       ; $618e: $6f
    sbc e                                         ; $618f: $9b
    jr jr_023_612d                                ; $6190: $18 $9b

    dec d                                         ; $6192: $15
    dec h                                         ; $6193: $25
    ld d, $9f                                     ; $6194: $16 $9f
    ld hl, $470c                                  ; $6196: $21 $0c $47
    call $d2fa                                    ; $6199: $cd $fa $d2
    xor h                                         ; $619c: $ac
    ld a, l                                       ; $619d: $7d
    db $dd                                        ; $619e: $dd
    ld e, a                                       ; $619f: $5f
    ld d, [hl]                                    ; $61a0: $56
    ld e, [hl]                                    ; $61a1: $5e
    jp c, $a2f3                                   ; $61a2: $da $f3 $a2

    cp [hl]                                       ; $61a5: $be
    and d                                         ; $61a6: $a2
    or b                                          ; $61a7: $b0
    or $3f                                        ; $61a8: $f6 $3f
    call $b3c0                                    ; $61aa: $cd $c0 $b3
    pop bc                                        ; $61ad: $c1
    and l                                         ; $61ae: $a5
    ld [$54a7], a                                 ; $61af: $ea $a7 $54
    db $dd                                        ; $61b2: $dd
    daa                                           ; $61b3: $27
    sbc a                                         ; $61b4: $9f
    rst $18                                       ; $61b5: $df
    ldh a, [rSB]                                  ; $61b6: $f0 $01
    ld h, c                                       ; $61b8: $61
    ld b, a                                       ; $61b9: $47
    xor l                                         ; $61ba: $ad
    sub e                                         ; $61bb: $93
    db $fc                                        ; $61bc: $fc
    adc e                                         ; $61bd: $8b
    ld l, l                                       ; $61be: $6d
    ld [c], a                                     ; $61bf: $e2
    ld l, $05                                     ; $61c0: $2e $05
    ld a, [c]                                     ; $61c2: $f2
    db $ec                                        ; $61c3: $ec
    ld a, $f9                                     ; $61c4: $3e $f9
    cp h                                          ; $61c6: $bc
    xor b                                         ; $61c7: $a8
    rst $28                                       ; $61c8: $ef
    jp nz, $fcbc                                  ; $61c9: $c2 $bc $fc

    ret nz                                        ; $61cc: $c0

    or h                                          ; $61cd: $b4
    rst $08                                       ; $61ce: $cf
    ei                                            ; $61cf: $fb
    jp z, $f697                                   ; $61d0: $ca $97 $f6

    ld b, d                                       ; $61d3: $42
    and l                                         ; $61d4: $a5
    ld h, [hl]                                    ; $61d5: $66
    daa                                           ; $61d6: $27
    sbc e                                         ; $61d7: $9b
    jr nz, jr_023_6162                            ; $61d8: $20 $88

    ccf                                           ; $61da: $3f
    jr nc, jr_023_617a                            ; $61db: $30 $9d

    rla                                           ; $61dd: $17
    ldh a, [$eb]                                  ; $61de: $f0 $eb
    scf                                           ; $61e0: $37
    add hl, bc                                    ; $61e1: $09
    db $10                                        ; $61e2: $10
    ld b, $3d                                     ; $61e3: $06 $3d
    jp z, $e8ef                                   ; $61e5: $ca $ef $e8

    call z, $a210                                 ; $61e8: $cc $10 $a2
    ld d, d                                       ; $61eb: $52

jr_023_61ec:
    or b                                          ; $61ec: $b0
    dec bc                                        ; $61ed: $0b
    db $d3                                        ; $61ee: $d3
    ld e, c                                       ; $61ef: $59
    sbc a                                         ; $61f0: $9f
    ld [hl-], a                                   ; $61f1: $32
    ld c, h                                       ; $61f2: $4c
    inc bc                                        ; $61f3: $03
    dec sp                                        ; $61f4: $3b
    jp z, Jump_023_5b96                           ; $61f5: $ca $96 $5b

    add hl, hl                                    ; $61f8: $29
    call Call_023_7fe5                            ; $61f9: $cd $e5 $7f
    ld b, b                                       ; $61fc: $40
    ld e, d                                       ; $61fd: $5a
    ld a, a                                       ; $61fe: $7f
    inc [hl]                                      ; $61ff: $34
    adc e                                         ; $6200: $8b
    jp $7ea0                                      ; $6201: $c3 $a0 $7e


    ld l, c                                       ; $6204: $69
    and c                                         ; $6205: $a1
    ld bc, $fb5f                                  ; $6206: $01 $5f $fb
    rla                                           ; $6209: $17
    xor b                                         ; $620a: $a8
    sub a                                         ; $620b: $97
    sub a                                         ; $620c: $97
    ld h, a                                       ; $620d: $67
    cp e                                          ; $620e: $bb
    ld h, c                                       ; $620f: $61
    ld hl, sp-$14                                 ; $6210: $f8 $ec
    xor d                                         ; $6212: $aa
    ld a, a                                       ; $6213: $7f
    ld l, h                                       ; $6214: $6c
    and [hl]                                      ; $6215: $a6
    or [hl]                                       ; $6216: $b6
    cp a                                          ; $6217: $bf
    db $ec                                        ; $6218: $ec
    ld a, [$0c2e]                                 ; $6219: $fa $2e $0c
    jp z, $8433                                   ; $621c: $ca $33 $84

    ld bc, $53dd                                  ; $621f: $01 $dd $53
    ld a, [hl+]                                   ; $6222: $2a
    db $d3                                        ; $6223: $d3
    cp c                                          ; $6224: $b9
    db $f4                                        ; $6225: $f4
    dec sp                                        ; $6226: $3b
    rst $18                                       ; $6227: $df
    call c, Call_023_6118                         ; $6228: $dc $18 $61
    ld a, [hl+]                                   ; $622b: $2a
    cp a                                          ; $622c: $bf
    ld c, [hl]                                    ; $622d: $4e
    ld a, h                                       ; $622e: $7c
    ld a, [c]                                     ; $622f: $f2
    ld l, e                                       ; $6230: $6b
    sbc e                                         ; $6231: $9b
    jr c, jr_023_61ec                             ; $6232: $38 $b8

    ld d, h                                       ; $6234: $54
    db $fd                                        ; $6235: $fd
    cp h                                          ; $6236: $bc
    db $fc                                        ; $6237: $fc
    sub h                                         ; $6238: $94
    ld l, [hl]                                    ; $6239: $6e
    xor b                                         ; $623a: $a8
    ld de, $2556                                  ; $623b: $11 $56 $25
    ld sp, hl                                     ; $623e: $f9
    dec h                                         ; $623f: $25
    and e                                         ; $6240: $a3
    ld sp, $9336                                  ; $6241: $31 $36 $93
    rst $28                                       ; $6244: $ef
    call nz, Call_000_0ba7                        ; $6245: $c4 $a7 $0b
    ld h, l                                       ; $6248: $65
    ld e, [hl]                                    ; $6249: $5e
    ld a, $44                                     ; $624a: $3e $44
    dec sp                                        ; $624c: $3b
    call $18dc                                    ; $624d: $cd $dc $18
    ld h, c                                       ; $6250: $61
    ld e, [hl]                                    ; $6251: $5e
    call nc, $d457                                ; $6252: $d4 $57 $d4
    ld a, [$d4ab]                                 ; $6255: $fa $ab $d4
    ret nz                                        ; $6258: $c0

    or e                                          ; $6259: $b3

Jump_023_625a:
    ld d, c                                       ; $625a: $51
    xor [hl]                                      ; $625b: $ae
    xor b                                         ; $625c: $a8
    add h                                         ; $625d: $84
    ld d, e                                       ; $625e: $53
    ld sp, hl                                     ; $625f: $f9
    ld d, l                                       ; $6260: $55
    ld c, c                                       ; $6261: $49
    ld [hl], b                                    ; $6262: $70
    reti                                          ; $6263: $d9


    res 6, e                                      ; $6264: $cb $b3
    ld a, c                                       ; $6266: $79
    ld sp, hl                                     ; $6267: $f9
    or l                                          ; $6268: $b5
    rra                                           ; $6269: $1f
    inc e                                         ; $626a: $1c
    ld h, c                                       ; $626b: $61
    daa                                           ; $626c: $27
    dec hl                                        ; $626d: $2b
    ei                                            ; $626e: $fb
    reti                                          ; $626f: $d9


    sub d                                         ; $6270: $92
    pop hl                                        ; $6271: $e1
    cp h                                          ; $6272: $bc
    db $fc                                        ; $6273: $fc
    sbc b                                         ; $6274: $98
    call c, $b367                                 ; $6275: $dc $67 $b3
    db $e3                                        ; $6278: $e3
    ld b, e                                       ; $6279: $43
    ld e, c                                       ; $627a: $59
    jp c, Jump_023_5a53                           ; $627b: $da $53 $5a

    ld d, [hl]                                    ; $627e: $56
    sbc [hl]                                      ; $627f: $9e
    dec e                                         ; $6280: $1d
    inc bc                                        ; $6281: $03
    ld l, b                                       ; $6282: $68
    ld d, $9f                                     ; $6283: $16 $9f
    ld a, h                                       ; $6285: $7c
    daa                                           ; $6286: $27
    push bc                                       ; $6287: $c5
    sbc a                                         ; $6288: $9f
    push bc                                       ; $6289: $c5
    ld h, [hl]                                    ; $628a: $66
    sub a                                         ; $628b: $97
    ld a, [hl+]                                   ; $628c: $2a
    ld a, c                                       ; $628d: $79
    add l                                         ; $628e: $85
    add a                                         ; $628f: $87
    ld a, c                                       ; $6290: $79
    ld sp, hl                                     ; $6291: $f9
    add c                                         ; $6292: $81
    bit 2, e                                      ; $6293: $cb $53
    ldh [$65], a                                  ; $6295: $e0 $65
    ld l, c                                       ; $6297: $69
    xor a                                         ; $6298: $af
    sub e                                         ; $6299: $93
    ld a, [hl]                                    ; $629a: $7e
    sub e                                         ; $629b: $93
    nop                                           ; $629c: $00
    ld h, c                                       ; $629d: $61
    dec l                                         ; $629e: $2d
    sub l                                         ; $629f: $95
    adc d                                         ; $62a0: $8a
    or [hl]                                       ; $62a1: $b6
    ld [hl], a                                    ; $62a2: $77
    db $f4                                        ; $62a3: $f4
    cp a                                          ; $62a4: $bf
    rst $00                                       ; $62a5: $c7
    add a                                         ; $62a6: $87
    ld [hl], l                                    ; $62a7: $75
    inc h                                         ; $62a8: $24
    xor l                                         ; $62a9: $ad
    sub a                                         ; $62aa: $97
    db $fd                                        ; $62ab: $fd
    ld e, $3a                                     ; $62ac: $1e $3a
    ld e, a                                       ; $62ae: $5f

jr_023_62af:
    ld e, l                                       ; $62af: $5d
    adc l                                         ; $62b0: $8d
    or c                                          ; $62b1: $b1
    sbc c                                         ; $62b2: $99
    ld a, l                                       ; $62b3: $7d
    jp hl                                         ; $62b4: $e9


    rst $30                                       ; $62b5: $f7
    call $ecc3                                    ; $62b6: $cd $c3 $ec
    sub h                                         ; $62b9: $94
    ld [hl], l                                    ; $62ba: $75
    jp nc, Jump_023_526f                          ; $62bb: $d2 $6f $52

    rst $18                                       ; $62be: $df
    and c                                         ; $62bf: $a1
    sub $2f                                       ; $62c0: $d6 $2f
    dec b                                         ; $62c2: $05
    db $eb                                        ; $62c3: $eb
    jr jr_023_62af                                ; $62c4: $18 $e9

    inc h                                         ; $62c6: $24
    inc a                                         ; $62c7: $3c
    jr nz, jr_023_62d6                            ; $62c8: $20 $0c

    ld b, a                                       ; $62ca: $47
    rst $18                                       ; $62cb: $df
    ld a, [hl+]                                   ; $62cc: $2a
    add l                                         ; $62cd: $85
    ld h, b                                       ; $62ce: $60
    ld a, [hl+]                                   ; $62cf: $2a
    ccf                                           ; $62d0: $3f
    and [hl]                                      ; $62d1: $a6
    inc d                                         ; $62d2: $14
    cp h                                          ; $62d3: $bc

Jump_023_62d4:
    and h                                         ; $62d4: $a4
    add c                                         ; $62d5: $81

jr_023_62d6:
    ld d, l                                       ; $62d6: $55
    ret                                           ; $62d7: $c9


    rst $30                                       ; $62d8: $f7
    dec e                                         ; $62d9: $1d
    ld l, a                                       ; $62da: $6f
    db $fd                                        ; $62db: $fd
    rla                                           ; $62dc: $17
    ld l, d                                       ; $62dd: $6a
    ld [hl], b                                    ; $62de: $70
    dec hl                                        ; $62df: $2b
    adc l                                         ; $62e0: $8d
    xor e                                         ; $62e1: $ab
    db $e4                                        ; $62e2: $e4
    push de                                       ; $62e3: $d5
    adc l                                         ; $62e4: $8d
    inc a                                         ; $62e5: $3c
    and b                                         ; $62e6: $a0
    push af                                       ; $62e7: $f5
    jr z, @-$1f                                   ; $62e8: $28 $df

    inc c                                         ; $62ea: $0c
    jp z, Jump_023_79b3                           ; $62eb: $ca $b3 $79

    ld sp, hl                                     ; $62ee: $f9
    dec hl                                        ; $62ef: $2b
    dec hl                                        ; $62f0: $2b
    add hl, hl                                    ; $62f1: $29
    inc b                                         ; $62f2: $04

jr_023_62f3:
    ld d, e                                       ; $62f3: $53
    ld [hl+], a                                   ; $62f4: $22
    and e                                         ; $62f5: $a3
    ld sp, $dc36                                  ; $62f6: $31 $36 $dc
    pop af                                        ; $62f9: $f1
    push hl                                       ; $62fa: $e5
    ld d, [hl]                                    ; $62fb: $56
    ld h, l                                       ; $62fc: $65
    ld a, [hl+]                                   ; $62fd: $2a
    ccf                                           ; $62fe: $3f
    cpl                                           ; $62ff: $2f
    ld c, a                                       ; $6300: $4f
    dec bc                                        ; $6301: $0b
    call nc, $cbcb                                ; $6302: $d4 $cb $cb
    or e                                          ; $6305: $b3
    pop af                                        ; $6306: $f1
    push hl                                       ; $6307: $e5
    ld l, c                                       ; $6308: $69
    ld e, [hl]                                    ; $6309: $5e
    ld a, [hl]                                    ; $630a: $7e
    ld b, a                                       ; $630b: $47
    rst $18                                       ; $630c: $df
    ld a, [hl+]                                   ; $630d: $2a
    add l                                         ; $630e: $85
    halt                                          ; $630f: $76
    add c                                         ; $6310: $81
    ld l, d                                       ; $6311: $6a
    cp [hl]                                       ; $6312: $be
    sbc b                                         ; $6313: $98
    ld e, c                                       ; $6314: $59
    cp a                                          ; $6315: $bf
    inc d                                         ; $6316: $14
    jr nz, @+$0e                                  ; $6317: $20 $0c

    ld b, a                                       ; $6319: $47
    xor l                                         ; $631a: $ad
    inc de                                        ; $631b: $13
    sbc a                                         ; $631c: $9f
    db $fc                                        ; $631d: $fc
    jp c, $ee26                                   ; $631e: $da $26 $ee

jr_023_6321:
    ld d, d                                       ; $6321: $52
    jr nz, jr_023_62f3                            ; $6322: $20 $cf

    xor $93                                       ; $6324: $ee $93
    ld [hl], e                                    ; $6326: $73
    rst $20                                       ; $6327: $e7
    push hl                                       ; $6328: $e5
    pop hl                                        ; $6329: $e1
    rla                                           ; $632a: $17
    ld a, [de]                                    ; $632b: $1a
    ldh a, [rHDMA1]                               ; $632c: $f0 $51
    ld a, [$0caa]                                 ; $632e: $fa $aa $0c
    ld a, a                                       ; $6331: $7f
    or [hl]                                       ; $6332: $b6
    ld h, h                                       ; $6333: $64
    jr c, jr_023_6321                             ; $6334: $38 $eb

    ld d, e                                       ; $6336: $53
    add [hl]                                      ; $6337: $86
    ld l, c                                       ; $6338: $69
    ld h, b                                       ; $6339: $60
    ld b, b                                       ; $633a: $40
    ld e, d                                       ; $633b: $5a
    ld a, a                                       ; $633c: $7f
    ld b, b                                       ; $633d: $40
    jr jr_023_6387                                ; $633e: $18 $47

    ccf                                           ; $6340: $3f
    rst $00                                       ; $6341: $c7
    ld d, h                                       ; $6342: $54
    ld e, c                                       ; $6343: $59
    adc e                                         ; $6344: $8b
    daa                                           ; $6345: $27
    dec a                                         ; $6346: $3d
    ld c, h                                       ; $6347: $4c
    push hl                                       ; $6348: $e5
    ld d, a                                       ; $6349: $57
    ret                                           ; $634a: $c9


    xor e                                         ; $634b: $ab

Jump_023_634c:
    ccf                                           ; $634c: $3f
    db $db                                        ; $634d: $db
    and l                                         ; $634e: $a5
    ld a, c                                       ; $634f: $79
    ld sp, hl                                     ; $6350: $f9
    or c                                          ; $6351: $b1
    dec de                                        ; $6352: $1b
    inc a                                         ; $6353: $3c
    ld hl, sp-$4b                                 ; $6354: $f8 $b5
    cp $a0                                        ; $6356: $fe $a0
    ld bc, $10ff                                  ; $6358: $01 $ff $10
    sub [hl]                                      ; $635b: $96
    or $82                                        ; $635c: $f6 $82
    ld d, h                                       ; $635e: $54
    rlca                                          ; $635f: $07
    or h                                          ; $6360: $b4
    ld e, $e5                                     ; $6361: $1e $e5
    sbc e                                         ; $6363: $9b
    xor c                                         ; $6364: $a9
    db $fc                                        ; $6365: $fc
    ld b, b                                       ; $6366: $40
    cpl                                           ; $6367: $2f
    sbc e                                         ; $6368: $9b
    rst $20                                       ; $6369: $e7
    xor d                                         ; $636a: $aa
    inc [hl]                                      ; $636b: $34
    db $e4                                        ; $636c: $e4
    cpl                                           ; $636d: $2f
    ld e, d                                       ; $636e: $5a
    ld sp, hl                                     ; $636f: $f9
    ld a, [hl-]                                   ; $6370: $3a
    ld a, c                                       ; $6371: $79
    ld hl, $1009                                  ; $6372: $21 $09 $10
    ld b, $67                                     ; $6375: $06 $67
    cp [hl]                                       ; $6377: $be
    inc [hl]                                      ; $6378: $34
    inc de                                        ; $6379: $13
    sub l                                         ; $637a: $95
    rst $20                                       ; $637b: $e7
    ld c, $2e                                     ; $637c: $0e $2e
    ld d, l                                       ; $637e: $55
    ccf                                           ; $637f: $3f
    cpl                                           ; $6380: $2f
    rst $18                                       ; $6381: $df
    inc l                                         ; $6382: $2c
    sub b                                         ; $6383: $90

jr_023_6384:
    db $e4                                        ; $6384: $e4
    sub a                                         ; $6385: $97
    inc d                                         ; $6386: $14

jr_023_6387:
    sbc e                                         ; $6387: $9b
    dec h                                         ; $6388: $25
    call $2fcb                                    ; $6389: $cd $cb $2f
    ld c, h                                       ; $638c: $4c
    ldh a, [$29]                                  ; $638d: $f0 $29
    ld d, l                                       ; $638f: $55
    rst $30                                       ; $6390: $f7
    ret                                           ; $6391: $c9


    ld h, a                                       ; $6392: $67
    add sp, $56                                   ; $6393: $e8 $56
    add hl, hl                                    ; $6395: $29
    inc b                                         ; $6396: $04
    ld d, e                                       ; $6397: $53
    ld h, d                                       ; $6398: $62
    ld d, e                                       ; $6399: $53
    ld sp, hl                                     ; $639a: $f9
    ld b, c                                       ; $639b: $41
    ld a, c                                       ; $639c: $79
    ld [hl], $eb                                  ; $639d: $36 $eb
    ld c, e                                       ; $639f: $4b
    or e                                          ; $63a0: $b3
    ld c, e                                       ; $63a1: $4b
    or [hl]                                       ; $63a2: $b6
    db $fc                                        ; $63a3: $fc
    ld sp, hl                                     ; $63a4: $f9
    and $c9                                       ; $63a5: $e6 $c9
    ld h, e                                       ; $63a7: $63
    add e                                         ; $63a8: $83
    jr nc, jr_023_63f2                            ; $63a9: $30 $47

    ld c, l                                       ; $63ab: $4d
    ld d, h                                       ; $63ac: $54
    ld a, [hl]                                    ; $63ad: $7e
    push hl                                       ; $63ae: $e5
    and l                                         ; $63af: $a5
    dec a                                         ; $63b0: $3d
    cpl                                           ; $63b1: $2f
    ld [$240b], a                                 ; $63b2: $ea $0b $24
    ld a, c                                       ; $63b5: $79
    ld e, b                                       ; $63b6: $58
    ld d, d                                       ; $63b7: $52
    ld l, h                                       ; $63b8: $6c
    halt                                          ; $63b9: $76
    ld l, c                                       ; $63ba: $69
    sub d                                         ; $63bb: $92
    ld d, l                                       ; $63bc: $55
    cp l                                          ; $63bd: $bd
    sbc c                                         ; $63be: $99
    jp z, $a02b                                   ; $63bf: $ca $2b $a0

    push af                                       ; $63c2: $f5
    jr z, jr_023_6384                             ; $63c3: $28 $bf

    ld a, [hl+]                                   ; $63c5: $2a
    ret                                           ; $63c6: $c9


    sbc a                                         ; $63c7: $9f
    db $fc                                        ; $63c8: $fc
    ld h, $cd                                     ; $63c9: $26 $cd
    adc e                                         ; $63cb: $8b
    ld a, [$afae]                                 ; $63cc: $fa $ae $af
    ld a, [hl]                                    ; $63cf: $7e
    ld h, e                                       ; $63d0: $63
    add h                                         ; $63d1: $84
    pop af                                        ; $63d2: $f1
    cpl                                           ; $63d3: $2f
    rst $08                                       ; $63d4: $cf
    ld h, a                                       ; $63d5: $67
    or h                                          ; $63d6: $b4
    ld a, $ec                                     ; $63d7: $3e $ec
    jp nz, Jump_023_750c                          ; $63d9: $c2 $0c $75

    inc h                                         ; $63dc: $24
    xor l                                         ; $63dd: $ad
    ld c, a                                       ; $63de: $4f
    ld [$a703], sp                                ; $63df: $08 $03 $a7

Jump_023_63e2:
    ld d, d                                       ; $63e2: $52
    push af                                       ; $63e3: $f5
    db $e3                                        ; $63e4: $e3
    cpl                                           ; $63e5: $2f
    ei                                            ; $63e6: $fb
    cp [hl]                                       ; $63e7: $be
    and c                                         ; $63e8: $a1
    inc hl                                        ; $63e9: $23
    xor a                                         ; $63ea: $af
    ld l, h                                       ; $63eb: $6c
    ld l, l                                       ; $63ec: $6d
    db $e3                                        ; $63ed: $e3
    and e                                         ; $63ee: $a3
    db $e4                                        ; $63ef: $e4
    ld h, a                                       ; $63f0: $67
    and a                                         ; $63f1: $a7

jr_023_63f2:
    ld hl, $a4b6                                  ; $63f2: $21 $b6 $a4
    ret c                                         ; $63f5: $d8

    db $ec                                        ; $63f6: $ec
    jp nc, Jump_000_1bf8                          ; $63f7: $d2 $f8 $1b

    reti                                          ; $63fa: $d9


    ld a, [hl-]                                   ; $63fb: $3a
    ld d, c                                       ; $63fc: $51
    xor e                                         ; $63fd: $ab
    rlca                                          ; $63fe: $07
    inc [hl]                                      ; $63ff: $34
    adc e                                         ; $6400: $8b
    jp $98ec                                      ; $6401: $c3 $ec $98


    db $fc                                        ; $6404: $fc
    dec bc                                        ; $6405: $0b
    ld c, h                                       ; $6406: $4c
    push hl                                       ; $6407: $e5
    ld h, a                                       ; $6408: $67
    ldh [$6d], a                                  ; $6409: $e0 $6d
    inc de                                        ; $640b: $13
    ld [hl], a                                    ; $640c: $77
    ld l, c                                       ; $640d: $69
    sbc l                                         ; $640e: $9d
    db $f4                                        ; $640f: $f4
    sbc e                                         ; $6410: $9b
    inc b                                         ; $6411: $04
    ld l, e                                       ; $6412: $6b
    dec de                                        ; $6413: $1b
    rst $18                                       ; $6414: $df
    ld [hl], l                                    ; $6415: $75
    ld e, b                                       ; $6416: $58
    ld a, h                                       ; $6417: $7c
    or l                                          ; $6418: $b5
    ld a, $4c                                     ; $6419: $3e $4c
    push hl                                       ; $641b: $e5
    ld h, a                                       ; $641c: $67
    ld a, l                                       ; $641d: $7d
    ld l, c                                       ; $641e: $69
    and $c9                                       ; $641f: $e6 $c9
    pop hl                                        ; $6421: $e1
    ld d, [hl]                                    ; $6422: $56
    ld [$ad03], sp                                ; $6423: $08 $03 $ad
    rrca                                          ; $6426: $0f

Jump_023_6427:
    sbc l                                         ; $6427: $9d
    sub a                                         ; $6428: $97
    or l                                          ; $6429: $b5
    cp b                                          ; $642a: $b8
    ld c, d                                       ; $642b: $4a
    db $fd                                        ; $642c: $fd
    dec de                                        ; $642d: $1b
    inc c                                         ; $642e: $0c

jr_023_642f:
    db $dd                                        ; $642f: $dd
    ld d, l                                       ; $6430: $55
    or h                                          ; $6431: $b4
    ld a, [$0608]                                 ; $6432: $fa $08 $06
    jr nc, jr_023_647e                            ; $6435: $30 $47

    ld c, c                                       ; $6437: $49
    ld d, l                                       ; $6438: $55
    ld l, [hl]                                    ; $6439: $6e
    ld e, e                                       ; $643a: $5b
    inc hl                                        ; $643b: $23
    db $db                                        ; $643c: $db
    ld d, c                                       ; $643d: $51
    sub c                                         ; $643e: $91
    cp l                                          ; $643f: $bd
    ld a, b                                       ; $6440: $78
    ld [de], a                                    ; $6441: $12
    ld b, $c7                                     ; $6442: $06 $c7
    add $a8                                       ; $6444: $c6 $a8
    inc l                                         ; $6446: $2c
    ld b, l                                       ; $6447: $45
    ld [hl], a                                    ; $6448: $77
    ld [c], a                                     ; $6449: $e2
    cp e                                          ; $644a: $bb
    cp a                                          ; $644b: $bf
    ld e, h                                       ; $644c: $5c
    ld d, $3c                                     ; $644d: $16 $3c
    ld b, $c7                                     ; $644f: $06 $c7
    dec hl                                        ; $6451: $2b
    ld [hl], h                                    ; $6452: $74
    ld d, h                                       ; $6453: $54
    ret c                                         ; $6454: $d8

    ld e, d                                       ; $6455: $5a
    jp z, $20a5                                   ; $6456: $ca $a5 $20

    cp [hl]                                       ; $6459: $be
    daa                                           ; $645a: $27
    ld h, c                                       ; $645b: $61
    rst $00                                       ; $645c: $c7
    rst $00                                       ; $645d: $c7
    or h                                          ; $645e: $b4
    cp [hl]                                       ; $645f: $be
    xor h                                         ; $6460: $ac
    push af                                       ; $6461: $f5
    halt                                          ; $6462: $76
    ld hl, sp+$14                                 ; $6463: $f8 $14
    cpl                                           ; $6465: $2f
    jr jr_023_642f                                ; $6466: $18 $c7

    rlc a                                         ; $6468: $cb $07
    add hl, hl                                    ; $646a: $29
    call $fcbc                                    ; $646b: $cd $bc $fc
    ld e, d                                       ; $646e: $5a
    ld b, d                                       ; $646f: $42
    sub l                                         ; $6470: $95
    or b                                          ; $6471: $b0
    pop bc                                        ; $6472: $c1
    daa                                           ; $6473: $27
    xor c                                         ; $6474: $a9
    push af                                       ; $6475: $f5
    add l                                         ; $6476: $85
    ld a, [hl]                                    ; $6477: $7e
    rst $00                                       ; $6478: $c7
    db $fc                                        ; $6479: $fc

Call_023_647a:
    ret                                           ; $647a: $c9


    ld c, c                                       ; $647b: $49
    ld e, $a6                                     ; $647c: $1e $a6

jr_023_647e:
    inc a                                         ; $647e: $3c
    ld d, l                                       ; $647f: $55
    dec c                                         ; $6480: $0d
    ld b, $96                                     ; $6481: $06 $96
    add b                                         ; $6483: $80

jr_023_6484:
    call nc, $aeaf                                ; $6484: $d4 $af $ae
    rst $20                                       ; $6487: $e7
    adc l                                         ; $6488: $8d
    inc c                                         ; $6489: $0c
    jp nz, $05eb                                  ; $648a: $c2 $eb $05

    inc bc                                        ; $648d: $03
    dec l                                         ; $648e: $2d
    ld e, d                                       ; $648f: $5a
    dec d                                         ; $6490: $15
    sub l                                         ; $6491: $95
    dec bc                                        ; $6492: $0b
    and b                                         ; $6493: $a0
    db $eb                                        ; $6494: $eb
    ld h, c                                       ; $6495: $61
    ld [bc], a                                    ; $6496: $02
    ld a, $93                                     ; $6497: $3e $93
    ld h, c                                       ; $6499: $61
    rst $00                                       ; $649a: $c7
    ld b, a                                       ; $649b: $47
    and l                                         ; $649c: $a5
    jr nc, jr_023_6484                            ; $649d: $30 $e5

    rst $10                                       ; $649f: $d7
    db $fd                                        ; $64a0: $fd
    or l                                          ; $64a1: $b5
    cp $80                                        ; $64a2: $fe $80
    ld bc, $6b47                                  ; $64a4: $01 $47 $6b
    or h                                          ; $64a7: $b4
    db $d3                                        ; $64a8: $d3
    ret z                                         ; $64a9: $c8

    adc [hl]                                      ; $64aa: $8e
    adc [hl]                                      ; $64ab: $8e
    ld c, d                                       ; $64ac: $4a
    adc a                                         ; $64ad: $8f
    ld bc, $7dc7                                  ; $64ae: $01 $c7 $7d
    cp h                                          ; $64b1: $bc
    inc e                                         ; $64b2: $1c
    sub $62                                       ; $64b3: $d6 $62
    jp nz, $a5f0                                  ; $64b5: $c2 $f0 $a5

    db $fd                                        ; $64b8: $fd
    adc a                                         ; $64b9: $8f
    ld bc, $cbc7                                  ; $64ba: $01 $c7 $cb
    cp e                                          ; $64bd: $bb
    xor [hl]                                      ; $64be: $ae
    sbc e                                         ; $64bf: $9b
    ld a, d                                       ; $64c0: $7a
    ld d, l                                       ; $64c1: $55
    ld h, d                                       ; $64c2: $62
    ld e, d                                       ; $64c3: $5a
    rra                                           ; $64c4: $1f
    inc bc                                        ; $64c5: $03
    xor l                                         ; $64c6: $ad
    ld c, c                                       ; $64c7: $49
    ld l, c                                       ; $64c8: $69
    db $e4                                        ; $64c9: $e4
    ld [$314e], a                                 ; $64ca: $ea $4e $31
    ld e, [hl]                                    ; $64cd: $5e
    ld h, l                                       ; $64ce: $65
    ret c                                         ; $64cf: $d8

    ld a, [hl]                                    ; $64d0: $7e
    inc c                                         ; $64d1: $0c
    rst $00                                       ; $64d2: $c7
    ld e, a                                       ; $64d3: $5f
    db $db                                        ; $64d4: $db
    ld c, [hl]                                    ; $64d5: $4e
    ld h, c                                       ; $64d6: $61
    dec sp                                        ; $64d7: $3b
    dec [hl]                                      ; $64d8: $35
    add $17                                       ; $64d9: $c6 $17
    ld c, a                                       ; $64db: $4f
    jp nz, Jump_023_6427                          ; $64dc: $c2 $27 $64

    ld h, l                                       ; $64df: $65
    adc b                                         ; $64e0: $88
    jp hl                                         ; $64e1: $e9


    ld e, d                                       ; $64e2: $5a
    sbc d                                         ; $64e3: $9a
    ld a, [$0603]                                 ; $64e4: $fa $03 $06
    and a                                         ; $64e7: $a7
    sbc c                                         ; $64e8: $99
    and h                                         ; $64e9: $a4
    ld h, b                                       ; $64ea: $60
    db $dd                                        ; $64eb: $dd
    inc de                                        ; $64ec: $13
    inc bc                                        ; $64ed: $03
    rst $00                                       ; $64ee: $c7
    and h                                         ; $64ef: $a4

jr_023_64f0:
    ld d, h                                       ; $64f0: $54
    ld a, [bc]                                    ; $64f1: $0a
    db $eb                                        ; $64f2: $eb
    ld sp, hl                                     ; $64f3: $f9
    ld sp, $3fb6                                  ; $64f4: $31 $b6 $3f
    and [hl]                                      ; $64f7: $a6
    push af                                       ; $64f8: $f5
    add hl, de                                    ; $64f9: $19
    ld b, $27                                     ; $64fa: $06 $27
    cp a                                          ; $64fc: $bf
    ldh a, [$0d]                                  ; $64fd: $f0 $0d
    call $efcb                                    ; $64ff: $cd $cb $ef
    ld h, h                                       ; $6502: $64
    adc l                                         ; $6503: $8d
    or a                                          ; $6504: $b7
    cp d                                          ; $6505: $ba
    ld l, c                                       ; $6506: $69
    nop                                           ; $6507: $00
    inc bc                                        ; $6508: $03
    daa                                           ; $6509: $27
    and a                                         ; $650a: $a7
    inc b                                         ; $650b: $04
    ld c, d                                       ; $650c: $4a
    adc e                                         ; $650d: $8b
    cp a                                          ; $650e: $bf
    db $e3                                        ; $650f: $e3
    or h                                          ; $6510: $b4
    pop bc                                        ; $6511: $c1
    db $dd                                        ; $6512: $dd
    db $e4                                        ; $6513: $e4
    ld b, d                                       ; $6514: $42
    rst $20                                       ; $6515: $e7
    jp nc, $49ba                                  ; $6516: $d2 $ba $49

    ld d, d                                       ; $6519: $52
    dec e                                         ; $651a: $1d
    inc bc                                        ; $651b: $03
    rst $00                                       ; $651c: $c7
    ld a, d                                       ; $651d: $7a
    ld sp, hl                                     ; $651e: $f9
    jr z, jr_023_64f0                             ; $651f: $28 $cf

    and $e5                                       ; $6521: $e6 $e5
    ld [hl], a                                    ; $6523: $77
    xor h                                         ; $6524: $ac
    push af                                       ; $6525: $f5
    push hl                                       ; $6526: $e5
    db $f4                                        ; $6527: $f4
    ld d, a                                       ; $6528: $57
    sub $60                                       ; $6529: $d6 $60
    ld b, a                                       ; $652b: $47
    cp a                                          ; $652c: $bf
    cp d                                          ; $652d: $ba
    ld e, h                                       ; $652e: $5c
    ld c, $3b                                     ; $652f: $0e $3b
    ld a, [hl-]                                   ; $6531: $3a
    ld h, $07                                     ; $6532: $26 $07
    dec c                                         ; $6534: $0d
    ld sp, $c547                                  ; $6535: $31 $47 $c5
    or $8b                                        ; $6538: $f6 $8b
    db $eb                                        ; $653a: $eb
    ld a, d                                       ; $653b: $7a
    ld h, h                                       ; $653c: $64
    ld a, d                                       ; $653d: $7a
    cp c                                          ; $653e: $b9
    ld sp, $6762                                  ; $653f: $31 $62 $67
    xor c                                         ; $6542: $a9
    push af                                       ; $6543: $f5
    cp [hl]                                       ; $6544: $be
    db $ec                                        ; $6545: $ec
    ld [hl], h                                    ; $6546: $74
    dec b                                         ; $6547: $05
    sub a                                         ; $6548: $97
    ld e, e                                       ; $6549: $5b
    push de                                       ; $654a: $d5
    ld sp, $54bd                                  ; $654b: $31 $bd $54
    ld e, b                                       ; $654e: $58
    db $fc                                        ; $654f: $fc
    ld h, [hl]                                    ; $6550: $66
    db $dd                                        ; $6551: $dd
    and e                                         ; $6552: $a3
    cp d                                          ; $6553: $ba
    ld h, e                                       ; $6554: $63
    rst $00                                       ; $6555: $c7
    inc [hl]                                      ; $6556: $34
    ld h, c                                       ; $6557: $61
    and a                                         ; $6558: $a7
    sub b                                         ; $6559: $90
    xor $38                                       ; $655a: $ee $38
    inc hl                                        ; $655c: $23
    and c                                         ; $655d: $a1
    ld b, $8f                                     ; $655e: $06 $8f
    ld bc, $99c7                                  ; $6560: $01 $c7 $99
    ret c                                         ; $6563: $d8

    ld a, [hl]                                    ; $6564: $7e
    pop af                                        ; $6565: $f1
    ld a, c                                       ; $6566: $79
    ld sp, hl                                     ; $6567: $f9
    dec e                                         ; $6568: $1d
    rst $30                                       ; $6569: $f7
    ld a, [hl+]                                   ; $656a: $2a
    or [hl]                                       ; $656b: $b6
    adc c                                         ; $656c: $89

jr_023_656d:
    jr @+$3f                                      ; $656d: $18 $3d

    sbc a                                         ; $656f: $9f
    ret c                                         ; $6570: $d8

    rst $00                                       ; $6571: $c7
    ld c, e                                       ; $6572: $4b
    di                                            ; $6573: $f3
    ld a, [c]                                     ; $6574: $f2
    db $eb                                        ; $6575: $eb
    ld sp, hl                                     ; $6576: $f9
    ld d, a                                       ; $6577: $57
    jr jr_023_6580                                ; $6578: $18 $06

    dec a                                         ; $657a: $3d
    ld l, [hl]                                    ; $657b: $6e
    adc h                                         ; $657c: $8c
    call Call_023_647a                            ; $657d: $cd $7a $64

jr_023_6580:
    db $fd                                        ; $6580: $fd
    db $31                                        ; $6581: $31

    db $dd, $54, $62, $ba, $eb, $ba, $5f, $aa, $83, $27, $3d, $06

jr_023_658e:
    rst $00                                       ; $658e: $c7
    or d                                          ; $658f: $b2
    ld b, b                                       ; $6590: $40
    ld h, l                                       ; $6591: $65
    dec l                                         ; $6592: $2d
    ld l, $69                                     ; $6593: $2e $69
    ld h, d                                       ; $6595: $62
    ldh a, [$82]                                  ; $6596: $f0 $82
    ld bc, $6aad                                  ; $6598: $01 $ad $6a
    db $fd                                        ; $659b: $fd
    sbc b                                         ; $659c: $98
    ld d, l                                       ; $659d: $55
    ld a, l                                       ; $659e: $7d
    dec l                                         ; $659f: $2d
    db $fc                                        ; $65a0: $fc
    cp a                                          ; $65a1: $bf
    ld e, a                                       ; $65a2: $5f

Jump_023_65a3:
    ld a, [bc]                                    ; $65a3: $0a
    jr nc, jr_023_656d                            ; $65a4: $30 $c7

    ld b, l                                       ; $65a6: $45
    or l                                          ; $65a7: $b5
    ld e, [hl]                                    ; $65a8: $5e
    inc bc                                        ; $65a9: $03
    dec sp                                        ; $65aa: $3b
    ld a, [$bb63]                                 ; $65ab: $fa $63 $bb
    pop bc                                        ; $65ae: $c1
    daa                                           ; $65af: $27
    jr jr_023_6622                                ; $65b0: $18 $70

    inc bc                                        ; $65b2: $03
    db $eb                                        ; $65b3: $eb
    ld a, [hl]                                    ; $65b4: $7e
    ld h, e                                       ; $65b5: $63
    cp h                                          ; $65b6: $bc
    db $fc                                        ; $65b7: $fc
    xor l                                         ; $65b8: $ad

jr_023_65b9:
    ld [$31f1], a                                 ; $65b9: $ea $f1 $31
    and a                                         ; $65bc: $a7
    and h                                         ; $65bd: $a4
    ld e, b                                       ; $65be: $58
    ccf                                           ; $65bf: $3f
    xor [hl]                                      ; $65c0: $ae
    rlca                                          ; $65c1: $07
    sbc a                                         ; $65c2: $9f
    ld d, h                                       ; $65c3: $54
    rst $00                                       ; $65c4: $c7
    and a                                         ; $65c5: $a7
    ld [bc], a                                    ; $65c6: $02
    xor a                                         ; $65c7: $af
    sub c                                         ; $65c8: $91
    db $ed                                        ; $65c9: $ed
    add sp, -$29                                  ; $65ca: $e8 $d7
    ldh a, [rSCY]                                 ; $65cc: $f0 $42
    pop bc                                        ; $65ce: $c1
    db $dd                                        ; $65cf: $dd
    ld d, d                                       ; $65d0: $52
    add sp, -$1d                                  ; $65d1: $e8 $e3
    dec [hl]                                      ; $65d3: $35
    or b                                          ; $65d4: $b0
    and e                                         ; $65d5: $a3
    ld [bc], a                                    ; $65d6: $02
    cp c                                          ; $65d7: $b9
    sbc l                                         ; $65d8: $9d
    adc [hl]                                      ; $65d9: $8e
    ld h, d                                       ; $65da: $62

jr_023_65db:
    rst $00                                       ; $65db: $c7
    sbc e                                         ; $65dc: $9b
    jr jr_023_658e                                ; $65dd: $18 $af

    push af                                       ; $65df: $f5
    ld h, l                                       ; $65e0: $65
    db $dd                                        ; $65e1: $dd
    or e                                          ; $65e2: $b3
    cp $ed                                        ; $65e3: $fe $ed
    ld b, $03                                     ; $65e5: $06 $03
    and a                                         ; $65e7: $a7
    inc a                                         ; $65e8: $3c
    rst $28                                       ; $65e9: $ef
    ld l, e                                       ; $65ea: $6b
    xor c                                         ; $65eb: $a9
    inc [hl]                                      ; $65ec: $34
    ld d, h                                       ; $65ed: $54
    ld h, d                                       ; $65ee: $62
    cpl                                           ; $65ef: $2f
    jr jr_023_65b9                                ; $65f0: $18 $c7

    rst $00                                       ; $65f2: $c7
    daa                                           ; $65f3: $27
    and [hl]                                      ; $65f4: $a6
    db $eb                                        ; $65f5: $eb
    ld d, [hl]                                    ; $65f6: $56
    xor [hl]                                      ; $65f7: $ae
    ld a, e                                       ; $65f8: $7b
    ld d, [hl]                                    ; $65f9: $56
    ld [hl], l                                    ; $65fa: $75
    inc c                                         ; $65fb: $0c
    ld b, a                                       ; $65fc: $47
    ld sp, $ed8d                                  ; $65fd: $31 $8d $ed
    rla                                           ; $6600: $17
    ld e, a                                       ; $6601: $5f
    ld c, a                                       ; $6602: $4f
    or l                                          ; $6603: $b5
    db $ed                                        ; $6604: $ed
    ld a, b                                       ; $6605: $78
    add hl, hl                                    ; $6606: $29
    ret nz                                        ; $6607: $c0

    db $dd                                        ; $6608: $dd
    ld e, a                                       ; $6609: $5f
    ld a, [hl-]                                   ; $660a: $3a
    rst $28                                       ; $660b: $ef
    ld b, [hl]                                    ; $660c: $46
    ld [hl], a                                    ; $660d: $77
    sbc h                                         ; $660e: $9c
    ld d, d                                       ; $660f: $52
    sub l                                         ; $6610: $95
    ld b, [hl]                                    ; $6611: $46
    inc e                                         ; $6612: $1c

jr_023_6613:
    inc bc                                        ; $6613: $03
    db $dd                                        ; $6614: $dd
    inc d                                         ; $6615: $14
    ld b, b                                       ; $6616: $40
    adc c                                         ; $6617: $89
    adc c                                         ; $6618: $89
    xor $4c                                       ; $6619: $ee $4c
    ld l, l                                       ; $661b: $6d
    ld b, a                                       ; $661c: $47
    ld [hl], l                                    ; $661d: $75
    xor b                                         ; $661e: $a8
    scf                                           ; $661f: $37
    jr jr_023_6649                                ; $6620: $18 $27

jr_023_6622:
    ld h, a                                       ; $6622: $67
    rlca                                          ; $6623: $07
    inc c                                         ; $6624: $0c
    ld h, b                                       ; $6625: $60
    ld b, a                                       ; $6626: $47
    rst $00                                       ; $6627: $c7
    and a                                         ; $6628: $a7
    ld a, [c]                                     ; $6629: $f2
    scf                                           ; $662a: $37
    ld e, h                                       ; $662b: $5c
    adc e                                         ; $662c: $8b
    ld l, e                                       ; $662d: $6b
    xor h                                         ; $662e: $ac
    ld h, e                                       ; $662f: $63
    ld b, a                                       ; $6630: $47
    push bc                                       ; $6631: $c5
    or $cb                                        ; $6632: $f6 $cb
    xor l                                         ; $6634: $ad
    halt                                          ; $6635: $76
    cp h                                          ; $6636: $bc
    jr jr_023_65db                                ; $6637: $18 $a2

    sbc e                                         ; $6639: $9b
    add h                                         ; $663a: $84
    ld bc, $bf27                                  ; $663b: $01 $27 $bf
    call nz, $184b                                ; $663e: $c4 $4b $18
    rst $00                                       ; $6641: $c7
    ld b, [hl]                                    ; $6642: $46
    ld e, e                                       ; $6643: $5b
    ld l, $d3                                     ; $6644: $2e $d3
    ld [hl], l                                    ; $6646: $75

jr_023_6647:
    adc e                                         ; $6647: $8b
    ld a, [de]                                    ; $6648: $1a

jr_023_6649:
    inc b                                         ; $6649: $04
    jr jr_023_6613                                ; $664a: $18 $c7

    ld c, e                                       ; $664c: $4b
    ld b, $4a                                     ; $664d: $06 $4a
    ld l, e                                       ; $664f: $6b
    ld [hl], c                                    ; $6650: $71
    inc de                                        ; $6651: $13
    halt                                          ; $6652: $76
    jr nc, jr_023_669c                            ; $6653: $30 $47

    dec de                                        ; $6655: $1b
    ld h, c                                       ; $6656: $61
    ld e, c                                       ; $6657: $59
    push de                                       ; $6658: $d5
    ld [hl], a                                    ; $6659: $77
    or d                                          ; $665a: $b2
    adc c                                         ; $665b: $89
    inc l                                         ; $665c: $2c
    sub e                                         ; $665d: $93
    jr nc, jr_023_66a7                            ; $665e: $30 $47

    push bc                                       ; $6660: $c5
    ldh a, [$e5]                                  ; $6661: $f0 $e5
    ld d, [hl]                                    ; $6663: $56
    push af                                       ; $6664: $f5
    or l                                          ; $6665: $b5
    jr z, jr_023_6647                             ; $6666: $28 $df

    sub [hl]                                      ; $6668: $96
    res 0, d                                      ; $6669: $cb $82
    rst $00                                       ; $666b: $c7
    ld b, a                                       ; $666c: $47
    adc c                                         ; $666d: $89
    ld a, a                                       ; $666e: $7f
    ld a, b                                       ; $666f: $78
    pop hl                                        ; $6670: $e1
    ld [$324e], a                                 ; $6671: $ea $4e $32
    halt                                          ; $6674: $76
    db $fd                                        ; $6675: $fd
    ld [de], a                                    ; $6676: $12
    ld b, $c7                                     ; $6677: $06 $c7
    daa                                           ; $6679: $27
    or c                                          ; $667a: $b1
    adc h                                         ; $667b: $8c
    sub a                                         ; $667c: $97
    ld a, [hl]                                    ; $667d: $7e
    and a                                         ; $667e: $a7
    add $db                                       ; $667f: $c6 $db
    add hl, hl                                    ; $6681: $29
    ld c, d                                       ; $6682: $4a
    adc [hl]                                      ; $6683: $8e
    ld bc, $2727                                  ; $6684: $01 $27 $27
    cp c                                          ; $6687: $b9

jr_023_6688:
    ld b, $e6                                     ; $6688: $06 $e6
    ld [hl], a                                    ; $668a: $77
    ld [hl+], a                                   ; $668b: $22
    db $dd                                        ; $668c: $dd
    and b                                         ; $668d: $a0
    ld a, b                                       ; $668e: $78
    db $fc                                        ; $668f: $fc
    ld b, $03                                     ; $6690: $06 $03
    xor l                                         ; $6692: $ad
    ld a, [hl+]                                   ; $6693: $2a
    jp nc, Jump_023_7bac                          ; $6694: $d2 $ac $7b

    cp d                                          ; $6697: $ba
    cp a                                          ; $6698: $bf
    ld h, b                                       ; $6699: $60
    rst $00                                       ; $669a: $c7
    cp h                                          ; $669b: $bc

jr_023_669c:
    ldh a, [rVBK]                                 ; $669c: $f0 $4f
    cp [hl]                                       ; $669e: $be
    sub [hl]                                      ; $669f: $96
    ld [hl], d                                    ; $66a0: $72
    jp $bc4e                                      ; $66a1: $c3 $4e $bc


    inc d                                         ; $66a4: $14
    ld h, b                                       ; $66a5: $60
    rst $00                                       ; $66a6: $c7

jr_023_66a7:
    dec de                                        ; $66a7: $1b
    ld a, [hl+]                                   ; $66a8: $2a
    scf                                           ; $66a9: $37
    ld [hl-], a                                   ; $66aa: $32
    ld e, l                                       ; $66ab: $5d
    jp c, $3e3b                                   ; $66ac: $da $3b $3e

    dec b                                         ; $66af: $05
    ld a, $cc                                     ; $66b0: $3e $cc
    inc d                                         ; $66b2: $14
    inc c                                         ; $66b3: $0c
    db $dd                                        ; $66b4: $dd
    ld [c], a                                     ; $66b5: $e2
    ld c, l                                       ; $66b6: $4d
    ld b, [hl]                                    ; $66b7: $46
    adc a                                         ; $66b8: $8f
    ld bc, $bf47                                  ; $66b9: $01 $47 $bf
    sbc d                                         ; $66bc: $9a
    jr nc, jr_023_6688                            ; $66bd: $30 $c9

    ld [hl], a                                    ; $66bf: $77
    or d                                          ; $66c0: $b2
    jp z, $2979                                   ; $66c1: $ca $79 $29

    or a                                          ; $66c4: $b7
    xor l                                         ; $66c5: $ad
    ld d, h                                       ; $66c6: $54
    rlca                                          ; $66c7: $07
    inc c                                         ; $66c8: $0c

    db $dd, $8a, $1a, $aa, $be, $d9, $a9, $91, $c9, $65, $c1, $63

    daa                                           ; $66d5: $27
    dec de                                        ; $66d6: $1b
    ld a, [bc]                                    ; $66d7: $0a
    ld [hl], d                                    ; $66d8: $72
    ld b, a                                       ; $66d9: $47
    daa                                           ; $66da: $27
    dec d                                         ; $66db: $15
    dec c                                         ; $66dc: $0d
    ld sp, $6f3d                                  ; $66dd: $31 $3d $6f
    or h                                          ; $66e0: $b4
    push hl                                       ; $66e1: $e5
    reti                                          ; $66e2: $d9


    adc [hl]                                      ; $66e3: $8e
    adc l                                         ; $66e4: $8d
    sbc l                                         ; $66e5: $9d
    ld [hl], d                                    ; $66e6: $72
    xor e                                         ; $66e7: $ab
    ld a, [hl-]                                   ; $66e8: $3a
    ld b, $47                                     ; $66e9: $06 $47
    bit 4, l                                      ; $66eb: $cb $65
    pop bc                                        ; $66ed: $c1
    ei                                            ; $66ee: $fb
    ld a, d                                       ; $66ef: $7a
    ld a, $c5                                     ; $66f0: $3e $c5
    xor h                                         ; $66f2: $ac
    ld [$c718], a                                 ; $66f3: $ea $18 $c7
    daa                                           ; $66f6: $27
    sub e                                         ; $66f7: $93
    ld e, e                                       ; $66f8: $5b
    db $ed                                        ; $66f9: $ed
    ld a, b                                       ; $66fa: $78
    ld l, c                                       ; $66fb: $69
    ld l, h                                       ; $66fc: $6c
    ei                                            ; $66fd: $fb
    ld [de], a                                    ; $66fe: $12
    ld c, e                                       ; $66ff: $4b
    pop bc                                        ; $6700: $c1
    daa                                           ; $6701: $27
    ld e, a                                       ; $6702: $5f
    ld d, c                                       ; $6703: $51
    ld h, d                                       ; $6704: $62
    cp d                                          ; $6705: $ba
    db $e3                                        ; $6706: $e3
    inc de                                        ; $6707: $13
    adc d                                         ; $6708: $8a
    ld a, [c]                                     ; $6709: $f2
    ld [hl], l                                    ; $670a: $75
    inc c                                         ; $670b: $0c
    dec l                                         ; $670c: $2d
    ld a, [de]                                    ; $670d: $1a
    sub l                                         ; $670e: $95
    and e                                         ; $670f: $a3
    jp z, Jump_023_625a                           ; $6710: $ca $5a $62

    db $e3                                        ; $6713: $e3
    push hl                                       ; $6714: $e5
    push hl                                       ; $6715: $e5
    ld [de], a                                    ; $6716: $12
    ld b, $a7                                     ; $6717: $06 $a7
    sbc c                                         ; $6719: $99
    ld a, a                                       ; $671a: $7f
    jp c, $fac9                                   ; $671b: $da $c9 $fa

    sub $c7                                       ; $671e: $d6 $c7
    xor l                                         ; $6720: $ad
    rra                                           ; $6721: $1f
    inc bc                                        ; $6722: $03
    ld e, l                                       ; $6723: $5d
    xor e                                         ; $6724: $ab

jr_023_6725:
    or c                                          ; $6725: $b1
    db $ed                                        ; $6726: $ed
    ld hl, sp+$1d                                 ; $6727: $f8 $1d
    ld h, e                                       ; $6729: $63
    db $db                                        ; $672a: $db
    jr @-$57                                      ; $672b: $18 $a7

    daa                                           ; $672d: $27
    rst $38                                       ; $672e: $ff
    and h                                         ; $672f: $a4
    dec sp                                        ; $6730: $3b
    ld e, l                                       ; $6731: $5d
    xor l                                         ; $6732: $ad
    ld c, a                                       ; $6733: $4f
    ld d, l                                       ; $6734: $55
    ld d, h                                       ; $6735: $54
    ld e, $03                                     ; $6736: $1e $03
    xor l                                         ; $6738: $ad
    ld c, a                                       ; $6739: $4f
    pop bc                                        ; $673a: $c1
    dec b                                         ; $673b: $05
    ld e, a                                       ; $673c: $5f

jr_023_673d:
    jp c, $99eb                                   ; $673d: $da $eb $99

    ret                                           ; $6740: $c9


    ld a, [hl+]                                   ; $6741: $2a
    ld c, c                                       ; $6742: $49
    db $db                                        ; $6743: $db
    ld sp, $e8c7                                  ; $6744: $31 $c7 $e8
    add l                                         ; $6747: $85
    ld h, [hl]                                    ; $6748: $66
    rst $00                                       ; $6749: $c7
    inc h                                         ; $674a: $24
    ld h, e                                       ; $674b: $63
    cpl                                           ; $674c: $2f
    sub a                                         ; $674d: $97
    dec b                                         ; $674e: $05
    adc a                                         ; $674f: $8f
    ld bc, $c547                                  ; $6750: $01 $47 $c5
    or [hl]                                       ; $6753: $b6
    add c                                         ; $6754: $81
    dec e                                         ; $6755: $1d
    ld h, e                                       ; $6756: $63
    jp nz, $7c76                                  ; $6757: $c2 $76 $7c

    sub [hl]                                      ; $675a: $96
    ld a, [c]                                     ; $675b: $f2
    jr jr_023_6725                                ; $675c: $18 $c7

    inc h                                         ; $675e: $24
    ld l, c                                       ; $675f: $69
    ld d, b                                       ; $6760: $50
    sub h                                         ; $6761: $94
    sub $43                                       ; $6762: $d6 $43
    ld a, $8c                                     ; $6764: $3e $8c
    rst $28                                       ; $6766: $ef
    adc [hl]                                      ; $6767: $8e
    ld bc, $1b27                                  ; $6768: $01 $27 $1b
    cp b                                          ; $676b: $b8
    inc l                                         ; $676c: $2c
    ld b, l                                       ; $676d: $45
    ld [hl], a                                    ; $676e: $77
    or h                                          ; $676f: $b4
    ld c, d                                       ; $6770: $4a
    sbc l                                         ; $6771: $9d
    cp a                                          ; $6772: $bf
    ld e, [hl]                                    ; $6773: $5e
    jr nc, jr_023_673d                            ; $6774: $30 $c7

    ld e, a                                       ; $6776: $5f
    or $49                                        ; $6777: $f6 $49
    db $eb                                        ; $6779: $eb
    ld h, $26                                     ; $677a: $26 $26
    ld l, h                                       ; $677c: $6c
    ld h, e                                       ; $677d: $63
    xor l                                         ; $677e: $ad
    cpl                                           ; $677f: $2f
    and c                                         ; $6780: $a1
    jp nc, Jump_023_5e7a                          ; $6781: $d2 $7a $5e

    ld [hl], d                                    ; $6784: $72

jr_023_6785:
    cp c                                          ; $6785: $b9
    inc d                                         ; $6786: $14
    inc d                                         ; $6787: $14
    dec c                                         ; $6788: $0d
    ld sp, $5e27                                  ; $6789: $31 $27 $5e
    adc c                                         ; $678c: $89
    rst $18                                       ; $678d: $df
    db $ec                                        ; $678e: $ec
    jr jr_023_67e4                                ; $678f: $18 $53

    ld a, a                                       ; $6791: $7f
    inc c                                         ; $6792: $0c
    daa                                           ; $6793: $27
    scf                                           ; $6794: $37
    sub d                                         ; $6795: $92
    or h                                          ; $6796: $b4
    sbc [hl]                                      ; $6797: $9e
    ld a, [de]                                    ; $6798: $1a
    cp b                                          ; $6799: $b8
    sbc $88                                       ; $679a: $de $88
    ld bc, $0aa7                                  ; $679c: $01 $a7 $0a
    ld e, h                                       ; $679f: $5c
    jp z, Jump_000_28f5                           ; $67a0: $ca $f5 $28

    ld h, d                                       ; $67a3: $62
    ret nz                                        ; $67a4: $c0

    sub e                                         ; $67a5: $93
    jr nc, jr_023_6785                            ; $67a6: $30 $dd

    ld a, $3e                                     ; $67a8: $3e $3e
    ld hl, sp+$25                                 ; $67aa: $f8 $25
    ld e, l                                       ; $67ac: $5d
    ld c, a                                       ; $67ad: $4f
    sub l                                         ; $67ae: $95
    or $57                                        ; $67af: $f6 $57
    ld [hl], l                                    ; $67b1: $75
    inc c                                         ; $67b2: $0c
    xor l                                         ; $67b3: $ad
    xor a                                         ; $67b4: $af
    ld e, [hl]                                    ; $67b5: $5e
    xor d                                         ; $67b6: $aa
    db $f4                                        ; $67b7: $f4
    rst $18                                       ; $67b8: $df
    pop de                                        ; $67b9: $d1
    ld a, [hl+]                                   ; $67ba: $2a
    ld l, l                                       ; $67bb: $6d
    sub l                                         ; $67bc: $95
    ld b, $03                                     ; $67bd: $06 $03
    daa                                           ; $67bf: $27
    cp a                                          ; $67c0: $bf
    ld a, b                                       ; $67c1: $78
    jp nc, Jump_000_178e                          ; $67c2: $d2 $8e $17

    or l                                          ; $67c5: $b5
    ld a, $60                                     ; $67c6: $3e $60
    ld b, a                                       ; $67c8: $47
    daa                                           ; $67c9: $27
    rra                                           ; $67ca: $1f
    ld a, [hl+]                                   ; $67cb: $2a
    xor l                                         ; $67cc: $ad
    and a                                         ; $67cd: $a7
    call c, Call_000_38a0                         ; $67ce: $dc $a0 $38
    ld b, $27                                     ; $67d1: $06 $27
    inc h                                         ; $67d3: $24
    ld d, h                                       ; $67d4: $54
    rra                                           ; $67d5: $1f
    cpl                                           ; $67d6: $2f
    or c                                          ; $67d7: $b1
    push af                                       ; $67d8: $f5
    ld d, h                                       ; $67d9: $54
    ld d, [hl]                                    ; $67da: $56
    ld h, l                                       ; $67db: $65
    ld d, l                                       ; $67dc: $55
    rst $00                                       ; $67dd: $c7
    rst $00                                       ; $67de: $c7
    di                                            ; $67df: $f3
    ld c, a                                       ; $67e0: $4f
    add hl, de                                    ; $67e1: $19
    db $ec                                        ; $67e2: $ec
    add h                                         ; $67e3: $84

jr_023_67e4:
    and h                                         ; $67e4: $a4
    rlca                                          ; $67e5: $07
    inc c                                         ; $67e6: $0c
    db $dd                                        ; $67e7: $dd
    sbc d                                         ; $67e8: $9a
    adc [hl]                                      ; $67e9: $8e
    ld e, h                                       ; $67ea: $5c
    and l                                         ; $67eb: $a5
    push af                                       ; $67ec: $f5
    ld c, d                                       ; $67ed: $4a
    jp Jump_023_63e2                              ; $67ee: $c3 $e2 $63


    rst $00                                       ; $67f1: $c7
    cp h                                          ; $67f2: $bc
    dec [hl]                                      ; $67f3: $35
    ld e, [hl]                                    ; $67f4: $5e
    ld e, d                                       ; $67f5: $5a
    rst $08                                       ; $67f6: $cf
    ld [hl], d                                    ; $67f7: $72
    db $fd                                        ; $67f8: $fd
    ld c, e                                       ; $67f9: $4b
    ld a, [bc]                                    ; $67fa: $0a
    ld h, c                                       ; $67fb: $61
    rst $00                                       ; $67fc: $c7
    jr jr_023_6869                                ; $67fd: $18 $6a

    xor e                                         ; $67ff: $ab
    db $ec                                        ; $6800: $ec
    call nc, $be20                                ; $6801: $d4 $20 $be
    sub a                                         ; $6804: $97
    sub h                                         ; $6805: $94
    adc $63                                       ; $6806: $ce $63
    daa                                           ; $6808: $27
    ld a, l                                       ; $6809: $7d
    halt                                          ; $680a: $76
    ld [hl-], a                                   ; $680b: $32
    or d                                          ; $680c: $b2
    ld c, e                                       ; $680d: $4b
    cp d                                          ; $680e: $ba
    sub [hl]                                      ; $680f: $96
    ldh a, [$bd]                                  ; $6810: $f0 $bd
    ldh a, [rKEY1]                                ; $6812: $f0 $4d
    ld d, l                                       ; $6814: $55
    rst $00                                       ; $6815: $c7
    and a                                         ; $6816: $a7
    daa                                           ; $6817: $27
    ld a, e                                       ; $6818: $7b
    cp c                                          ; $6819: $b9
    ld d, l                                       ; $681a: $55
    ld a, l                                       ; $681b: $7d
    db $dd                                        ; $681c: $dd
    and e                                         ; $681d: $a3
    add hl, bc                                    ; $681e: $09
    dec sp                                        ; $681f: $3b
    sbc [hl]                                      ; $6820: $9e
    add h                                         ; $6821: $84
    ld bc, $67a7                                  ; $6822: $01 $a7 $67
    ld d, h                                       ; $6825: $54
    ld h, d                                       ; $6826: $62
    dec sp                                        ; $6827: $3b
    pop af                                        ; $6828: $f1
    add e                                         ; $6829: $83

jr_023_682a:
    nop                                           ; $682a: $00
    inc bc                                        ; $682b: $03
    xor l                                         ; $682c: $ad
    cpl                                           ; $682d: $2f
    sbc l                                         ; $682e: $9d
    sbc h                                         ; $682f: $9c
    sub a                                         ; $6830: $97
    rst $18                                       ; $6831: $df
    ld [hl], c                                    ; $6832: $71
    ld l, c                                       ; $6833: $69
    ld [hl+], a                                   ; $6834: $22
    ld b, $47                                     ; $6835: $06 $47
    ld de, $8493                                  ; $6837: $11 $93 $84
    ld a, c                                       ; $683a: $79
    ld sp, hl                                     ; $683b: $f9
    ld e, c                                       ; $683c: $59
    ret z                                         ; $683d: $c8

    ld a, d                                       ; $683e: $7a
    xor c                                         ; $683f: $a9
    cp d                                          ; $6840: $ba
    db $ed                                        ; $6841: $ed
    ld hl, sp+$18                                 ; $6842: $f8 $18
    ld h, a                                       ; $6844: $67
    ret z                                         ; $6845: $c8

    xor l                                         ; $6846: $ad
    and $e5                                       ; $6847: $e6 $e5
    ld [hl], a                                    ; $6849: $77
    ld a, [hl+]                                   ; $684a: $2a
    ld h, e                                       ; $684b: $63
    ld l, l                                       ; $684c: $6d
    adc l                                         ; $684d: $8d
    ld de, $2703                                  ; $684e: $11 $03 $27
    and l                                         ; $6851: $a5
    or b                                          ; $6852: $b0
    or l                                          ; $6853: $b5
    ld a, b                                       ; $6854: $78
    ld [hl-], a                                   ; $6855: $32
    and [hl]                                      ; $6856: $a6
    jp nz, $f3d6                                  ; $6857: $c2 $d6 $f3

    ld a, d                                       ; $685a: $7a
    ld a, c                                       ; $685b: $79
    ld bc, $dd0c                                  ; $685c: $01 $0c $dd
    xor [hl]                                      ; $685f: $ae
    ld d, h                                       ; $6860: $54
    adc a                                         ; $6861: $8f
    ld bc, $5f27                                  ; $6862: $01 $27 $5f
    pop de                                        ; $6865: $d1
    or $c7                                        ; $6866: $f6 $c7
    xor b                                         ; $6868: $a8

jr_023_6869:
    db $eb                                        ; $6869: $eb
    ld e, $0d                                     ; $686a: $1e $0d
    push de                                       ; $686c: $d5
    rst $18                                       ; $686d: $df
    dec e                                         ; $686e: $1d
    inc bc                                        ; $686f: $03
    ld b, a                                       ; $6870: $47
    cp a                                          ; $6871: $bf
    ld hl, sp-$03                                 ; $6872: $f8 $fd
    dec e                                         ; $6874: $1d
    sbc l                                         ; $6875: $9d
    xor $18                                       ; $6876: $ee $18
    dec a                                         ; $6878: $3d
    adc d                                         ; $6879: $8a
    ld [hl-], a                                   ; $687a: $32
    or $06                                        ; $687b: $f6 $06
    sub $a3                                       ; $687d: $d6 $a3
    jr jr_023_682a                                ; $687f: $18 $a9

    ld a, a                                       ; $6881: $7f
    adc h                                         ; $6882: $8c
    db $18                                        ; $6883: $18

    db $67, $50, $9d, $92, $27, $0c

    jp Jump_023_72c7                              ; $688a: $c3 $c7 $72


    ld hl, sp-$36                                 ; $688d: $f8 $ca
    ld hl, sp-$11                                 ; $688f: $f8 $ef
    jr z, jr_023_690a                             ; $6891: $28 $77

    xor l                                         ; $6893: $ad
    ld [$db18], a                                 ; $6894: $ea $18 $db
    add hl, sp                                    ; $6897: $39
    dec l                                         ; $6898: $2d
    ld l, [hl]                                    ; $6899: $6e
    ret c                                         ; $689a: $d8

    ld a, l                                       ; $689b: $7d
    or [hl]                                       ; $689c: $b6
    sub d                                         ; $689d: $92
    db $fc                                        ; $689e: $fc
    jp nz, $5a4c                                  ; $689f: $c2 $4c $5a

    and a                                         ; $68a2: $a7
    jr z, jr_023_68e1                             ; $68a3: $28 $3c

    ld c, h                                       ; $68a5: $4c
    ld l, l                                       ; $68a6: $6d
    ei                                            ; $68a7: $fb
    dec hl                                        ; $68a8: $2b
    ld e, a                                       ; $68a9: $5f
    daa                                           ; $68aa: $27
    db $fd                                        ; $68ab: $fd
    ld h, $f5                                     ; $68ac: $26 $f5
    dec e                                         ; $68ae: $1d
    ld l, d                                       ; $68af: $6a
    db $fd                                        ; $68b0: $fd
    ld d, d                                       ; $68b1: $52
    add b                                         ; $68b2: $80
    jr nc, @-$23                                  ; $68b3: $30 $db

    add hl, sp                                    ; $68b5: $39
    rst $00                                       ; $68b6: $c7
    res 5, e                                      ; $68b7: $cb $ab
    ccf                                           ; $68b9: $3f
    ld hl, sp-$2e                                 ; $68ba: $f8 $d2
    sbc [hl]                                      ; $68bc: $9e
    add $b8                                       ; $68bd: $c6 $b8
    ldh a, [$d9]                                  ; $68bf: $f0 $d9
    ld a, l                                       ; $68c1: $7d
    xor e                                         ; $68c2: $ab
    add $69                                       ; $68c3: $c6 $69
    xor h                                         ; $68c5: $ac
    jp z, Jump_000_1787                           ; $68c6: $ca $87 $17

    inc e                                         ; $68c9: $1c
    db $10                                        ; $68ca: $10
    ld b, $db                                     ; $68cb: $06 $db
    add hl, sp                                    ; $68cd: $39
    ld b, a                                       ; $68ce: $47
    rst $00                                       ; $68cf: $c7
    rst $20                                       ; $68d0: $e7
    ld h, a                                       ; $68d1: $67
    ld a, [hl-]                                   ; $68d2: $3a
    di                                            ; $68d3: $f3
    ld a, [c]                                     ; $68d4: $f2
    dec hl                                        ; $68d5: $2b
    ld a, [de]                                    ; $68d6: $1a
    add $f7                                       ; $68d7: $c6 $f7
    and l                                         ; $68d9: $a5
    cp l                                          ; $68da: $bd
    sub e                                         ; $68db: $93
    xor [hl]                                      ; $68dc: $ae
    ld a, e                                       ; $68dd: $7b
    db $fc                                        ; $68de: $fc
    dec e                                         ; $68df: $1d
    inc hl                                        ; $68e0: $23

jr_023_68e1:
    reti                                          ; $68e1: $d9


    jp hl                                         ; $68e2: $e9


    ld e, h                                       ; $68e3: $5c
    ld a, [bc]                                    ; $68e4: $0a
    add $97                                       ; $68e5: $c6 $97
    dec de                                        ; $68e7: $1b
    ld a, a                                       ; $68e8: $7f
    and c                                         ; $68e9: $a1
    ld b, $b7                                     ; $68ea: $06 $b7

Jump_023_68ec:
jr_023_68ec:
    jp nc, $9b18                                  ; $68ec: $d2 $18 $9b

    add l                                         ; $68ef: $85
    sub a                                         ; $68f0: $97
    jp Jump_023_60a5                              ; $68f1: $c3 $a5 $60


    cp d                                          ; $68f4: $ba
    or $15                                        ; $68f5: $f6 $15
    cpl                                           ; $68f7: $2f
    ld c, h                                       ; $68f8: $4c
    sbc e                                         ; $68f9: $9b
    ld d, l                                       ; $68fa: $55
    ld e, d                                       ; $68fb: $5a
    ld a, a                                       ; $68fc: $7f
    add h                                         ; $68fd: $84
    ld bc, $39db                                  ; $68fe: $01 $db $39
    rst $00                                       ; $6901: $c7
    ld e, h                                       ; $6902: $5c
    xor b                                         ; $6903: $a8
    jp nc, $f2fa                                  ; $6904: $d2 $fa $f2

    ld l, h                                       ; $6907: $6c
    ld e, [hl]                                    ; $6908: $5e
    ld a, [hl]                                    ; $6909: $7e

jr_023_690a:
    ld b, $7e                                     ; $690a: $06 $7e
    ld l, c                                       ; $690c: $69
    rst $28                                       ; $690d: $ef
    ld hl, sp+$1b                                 ; $690e: $f8 $1b
    ld h, e                                       ; $6910: $63
    jp $b3ff                                      ; $6911: $c3 $ff $b3


    pop af                                        ; $6914: $f1
    push hl                                       ; $6915: $e5
    ld l, c                                       ; $6916: $69
    ld d, b                                       ; $6917: $50
    ld a, [hl]                                    ; $6918: $7e
    ldh [$a6], a                                  ; $6919: $e0 $a6
    xor d                                         ; $691b: $aa
    xor a                                         ; $691c: $af
    cp h                                          ; $691d: $bc
    xor h                                         ; $691e: $ac
    cp h                                          ; $691f: $bc
    or d                                          ; $6920: $b2
    ld e, l                                       ; $6921: $5d
    ld a, [c]                                     ; $6922: $f2
    sbc h                                         ; $6923: $9c
    xor [hl]                                      ; $6924: $ae
    ld l, l                                       ; $6925: $6d
    xor d                                         ; $6926: $aa
    ld a, [$d2fb]                                 ; $6927: $fa $fb $d2
    ld e, $af                                     ; $692a: $1e $af
    cp $82                                        ; $692c: $fe $82
    jr nc, @-$23                                  ; $692e: $30 $db

Jump_023_6930:
    add hl, sp                                    ; $6930: $39
    db $dd                                        ; $6931: $dd
    ld a, $7e                                     ; $6932: $3e $7e
    ld e, e                                       ; $6934: $5b
    call nc, $ed9f                                ; $6935: $d4 $9f $ed
    sub d                                         ; $6938: $92
    push af                                       ; $6939: $f5
    ret                                           ; $693a: $c9


    ld d, e                                       ; $693b: $53
    sub [hl]                                      ; $693c: $96
    or $bc                                        ; $693d: $f6 $bc
    db $fc                                        ; $693f: $fc
    ld e, d                                       ; $6940: $5a
    ld a, $da                                     ; $6941: $3e $da
    ld a, l                                       ; $6943: $7d
    or a                                          ; $6944: $b7
    ld hl, sp+$15                                 ; $6945: $f8 $15
    cp c                                          ; $6947: $b9
    inc d                                         ; $6948: $14
    xor h                                         ; $6949: $ac
    sbc e                                         ; $694a: $9b
    sbc d                                         ; $694b: $9a
    ret z                                         ; $694c: $c8

    inc h                                         ; $694d: $24
    add hl, bc                                    ; $694e: $09
    ld h, c                                       ; $694f: $61
    db $db                                        ; $6950: $db

jr_023_6951:
    add hl, sp                                    ; $6951: $39
    ld d, $b2                                     ; $6952: $16 $b2
    ld a, $79                                     ; $6954: $3e $79
    jp z, $9ed2                                   ; $6956: $ca $d2 $9e

    sub a                                         ; $6959: $97
    ld e, a                                       ; $695a: $5f
    rst $30                                       ; $695b: $f7
    rst $28                                       ; $695c: $ef
    ld [hl], h                                    ; $695d: $74
    ld e, [hl]                                    ; $695e: $5e
    ld c, h                                       ; $695f: $4c
    ld h, a                                       ; $6960: $67
    db $dd                                        ; $6961: $dd
    db $d3                                        ; $6962: $d3
    ld l, a                                       ; $6963: $6f
    ld [de], a                                    ; $6964: $12
    ld [hl], a                                    ; $6965: $77
    sub l                                         ; $6966: $95
    sub c                                         ; $6967: $91
    sbc a                                         ; $6968: $9f
    sbc l                                         ; $6969: $9d
    ld [hl-], a                                   ; $696a: $32
    cpl                                           ; $696b: $2f
    cp a                                          ; $696c: $bf
    ld a, [hl+]                                   ; $696d: $2a
    jp Jump_023_6930                              ; $696e: $c3 $30 $69


    ld d, l                                       ; $6971: $55
    ld b, [hl]                                    ; $6972: $46
    add [hl]                                      ; $6973: $86
    jr nc, jr_023_6951                            ; $6974: $30 $db

    add hl, sp                                    ; $6976: $39
    rst $00                                       ; $6977: $c7
    ld l, c                                       ; $6978: $69
    sbc b                                         ; $6979: $98
    ld b, $96                                     ; $697a: $06 $96
    ld [hl], d                                    ; $697c: $72
    add e                                         ; $697d: $83
    ld c, e                                       ; $697e: $4b
    ld [$4b29], a                                 ; $697f: $ea $29 $4b
    ld a, e                                       ; $6982: $7b
    rst $00                                       ; $6983: $c7
    rlc a                                         ; $6984: $cb $07

jr_023_6986:
    add hl, hl                                    ; $6986: $29
    ld c, l                                       ; $6987: $4d
    dec c                                         ; $6988: $0d
    halt                                          ; $6989: $76
    ld b, $55                                     ; $698a: $06 $55
    ld l, [hl]                                    ; $698c: $6e
    jp nc, $cec0                                  ; $698d: $d2 $c0 $ce

    and b                                         ; $6990: $a0
    jp z, Jump_000_126f                           ; $6991: $ca $6f $12

    jp nz, Jump_000_39db                          ; $6994: $c2 $db $39

    ld d, $b2                                     ; $6997: $16 $b2
    ld a, $79                                     ; $6999: $3e $79
    jp z, Jump_023_5ed2                           ; $699b: $ca $d2 $5e

    xor b                                         ; $699e: $a8
    call nc, $a4ec                                ; $699f: $d4 $ec $a4
    or h                                          ; $69a2: $b4
    cp $ba                                        ; $69a3: $fe $ba
    and a                                         ; $69a5: $a7
    rst $18                                       ; $69a6: $df
    inc h                                         ; $69a7: $24
    ld b, b                                       ; $69a8: $40
    jr jr_023_6986                                ; $69a9: $18 $db

    add hl, sp                                    ; $69ab: $39
    dec a                                         ; $69ac: $3d
    jp z, $bf8f                                   ; $69ad: $ca $8f $bf

    ld e, [hl]                                    ; $69b0: $5e
    sub l                                         ; $69b1: $95
    pop af                                        ; $69b2: $f1
    dec h                                         ; $69b3: $25
    ld [hl], a                                    ; $69b4: $77
    ret                                           ; $69b5: $c9


    ld a, [$cfe4]                                 ; $69b6: $fa $e4 $cf
    halt                                          ; $69b9: $76
    ld e, h                                       ; $69ba: $5c
    call z, $f75c                                 ; $69bb: $cc $5c $f7
    db $e4                                        ; $69be: $e4
    reti                                          ; $69bf: $d9


    dec bc                                        ; $69c0: $0b
    jp nz, Jump_000_39db                          ; $69c1: $c2 $db $39

    rst $00                                       ; $69c4: $c7
    ld e, h                                       ; $69c5: $5c
    xor b                                         ; $69c6: $a8
    jp nc, $f2fa                                  ; $69c7: $d2 $fa $f2

    ld l, h                                       ; $69ca: $6c
    sbc l                                         ; $69cb: $9d
    dec de                                        ; $69cc: $1b
    halt                                          ; $69cd: $76
    ld [c], a                                     ; $69ce: $e2
    xor a                                         ; $69cf: $af
    ld [hl-], a                                   ; $69d0: $32
    ld [hl], d                                    ; $69d1: $72
    add hl, hl                                    ; $69d2: $29
    ld e, b                                       ; $69d3: $58
    ld b, a                                       ; $69d4: $47
    or d                                          ; $69d5: $b2
    di                                            ; $69d6: $f3
    ld [c], a                                     ; $69d7: $e2
    rst $30                                       ; $69d8: $f7
    ld h, c                                       ; $69d9: $61

jr_023_69da:
    ld l, c                                       ; $69da: $69
    rst $28                                       ; $69db: $ef
    ld l, b                                       ; $69dc: $68
    db $d3                                        ; $69dd: $d3

jr_023_69de:
    ld c, [hl]                                    ; $69de: $4e
    scf                                           ; $69df: $37
    db $ed                                        ; $69e0: $ed
    sub a                                         ; $69e1: $97
    ld [hl], l                                    ; $69e2: $75
    scf                                           ; $69e3: $37
    add b                                         ; $69e4: $80
    jr nc, @-$23                                  ; $69e5: $30 $db

    add hl, sp                                    ; $69e7: $39
    rst $00                                       ; $69e8: $c7
    ld l, c                                       ; $69e9: $69
    sbc b                                         ; $69ea: $98
    ld b, $06                                     ; $69eb: $06 $06
    ld d, c                                       ; $69ed: $51
    sbc e                                         ; $69ee: $9b
    sub a                                         ; $69ef: $97
    and l                                         ; $69f0: $a5
    dec a                                         ; $69f1: $3d
    cpl                                           ; $69f2: $2f
    cp a                                          ; $69f3: $bf
    sub [hl]                                      ; $69f4: $96
    rst $10                                       ; $69f5: $d7
    or l                                          ; $69f6: $b5
    cp h                                          ; $69f7: $bc
    ld [hl], h                                    ; $69f8: $74
    sbc [hl]                                      ; $69f9: $9e
    ld a, h                                       ; $69fa: $7c
    ld l, c                                       ; $69fb: $69
    xor a                                         ; $69fc: $af
    sbc e                                         ; $69fd: $9b
    ld h, h                                       ; $69fe: $64
    ld hl, sp-$7e                                 ; $69ff: $f8 $82
    jr nc, jr_023_69de                            ; $6a01: $30 $db

    add hl, sp                                    ; $6a03: $39
    rst $00                                       ; $6a04: $c7
    add d                                         ; $6a05: $82
    ld l, e                                       ; $6a06: $6b
    dec sp                                        ; $6a07: $3b
    ld e, [hl]                                    ; $6a08: $5e
    jr z, jr_023_69da                             ; $6a09: $28 $cf

    and $e5                                       ; $6a0b: $e6 $e5
    rst $10                                       ; $6a0d: $d7
    dec l                                         ; $6a0e: $2d
    jp $baf0                                      ; $6a0f: $c3 $f0 $ba


    rst $38                                       ; $6a12: $ff
    cpl                                           ; $6a13: $2f
    ld l, c                                       ; $6a14: $69
    rst $00                                       ; $6a15: $c7
    ld [hl], d                                    ; $6a16: $72
    add sp, -$44                                  ; $6a17: $e8 $bc
    call c, $c9f0                                 ; $6a19: $dc $f0 $c9
    dec [hl]                                      ; $6a1c: $35
    xor [hl]                                      ; $6a1d: $ae
    ld e, e                                       ; $6a1e: $5b
    ld d, c                                       ; $6a1f: $51
    add hl, bc                                    ; $6a20: $09
    ld bc, $db61                                  ; $6a21: $01 $61 $db
    add hl, sp                                    ; $6a24: $39
    ld d, $b2                                     ; $6a25: $16 $b2
    ld a, $79                                     ; $6a27: $3e $79
    jp z, Jump_023_5ed2                           ; $6a29: $ca $d2 $5e

jr_023_6a2c:
    or a                                          ; $6a2c: $b7
    ld a, [c]                                     ; $6a2d: $f2
    cpl                                           ; $6a2e: $2f
    sub a                                         ; $6a2f: $97
    add d                                         ; $6a30: $82
    ld [hl], l                                    ; $6a31: $75
    dec hl                                        ; $6a32: $2b
    ld a, [hl+]                                   ; $6a33: $2a
    ld hl, $0c20                                  ; $6a34: $21 $20 $0c
    db $db                                        ; $6a37: $db
    add hl, sp                                    ; $6a38: $39
    ld b, a                                       ; $6a39: $47
    add hl, de                                    ; $6a3a: $19
    cpl                                           ; $6a3b: $2f
    add hl, hl                                    ; $6a3c: $29
    ld c, e                                       ; $6a3d: $4b
    ld a, e                                       ; $6a3e: $7b
    or l                                          ; $6a3f: $b5
    ld l, [hl]                                    ; $6a40: $6e
    ld b, l                                       ; $6a41: $45
    dec h                                         ; $6a42: $25
    ld e, h                                       ; $6a43: $5c
    xor a                                         ; $6a44: $af
    inc [hl]                                      ; $6a45: $34
    or d                                          ; $6a46: $b2
    ld d, e                                       ; $6a47: $53
    ld a, c                                       ; $6a48: $79
    ld e, d                                       ; $6a49: $5a
    or a                                          ; $6a4a: $b7
    ld a, [c]                                     ; $6a4b: $f2
    rrca                                          ; $6a4c: $0f
    ld e, a                                       ; $6a4d: $5f
    ld b, e                                       ; $6a4e: $43
    jr jr_023_6a2c                                ; $6a4f: $18 $db

    add hl, sp                                    ; $6a51: $39
    rst $00                                       ; $6a52: $c7
    and l                                         ; $6a53: $a5
    ld hl, $6cf6                                  ; $6a54: $21 $f6 $6c
    ld e, [hl]                                    ; $6a57: $5e
    ld a, [hl]                                    ; $6a58: $7e
    dec l                                         ; $6a59: $2d
    ld e, c                                       ; $6a5a: $59
    db $dd                                        ; $6a5b: $dd
    rst $30                                       ; $6a5c: $f7
    ld h, [hl]                                    ; $6a5d: $66
    halt                                          ; $6a5e: $76
    jp z, $fcbc                                   ; $6a5f: $ca $bc $fc

    ld c, [hl]                                    ; $6a62: $4e
    ld a, a                                       ; $6a63: $7f
    dec sp                                        ; $6a64: $3b
    dec h                                         ; $6a65: $25
    ld d, h                                       ; $6a66: $54
    cp a                                          ; $6a67: $bf
    ld c, c                                       ; $6a68: $49
    ld c, e                                       ; $6a69: $4b
    ld a, e                                       ; $6a6a: $7b
    xor l                                         ; $6a6b: $ad
    ld a, [de]                                    ; $6a6c: $1a
    nop                                           ; $6a6d: $00
    jp nz, Jump_000_39db                          ; $6a6e: $c2 $db $39

    rst $00                                       ; $6a71: $c7
    ld l, c                                       ; $6a72: $69
    sbc b                                         ; $6a73: $98
    ld b, $16                                     ; $6a74: $06 $16
    ld e, h                                       ; $6a76: $5c
    dec h                                         ; $6a77: $25
    rst $28                                       ; $6a78: $ef
    dec de                                        ; $6a79: $1b
    and d                                         ; $6a7a: $a2
    ld [hl], $2f                                  ; $6a7b: $36 $2f
    ld l, b                                       ; $6a7d: $68
    daa                                           ; $6a7e: $27
    sbc $18                                       ; $6a7f: $de $18
    sbc a                                         ; $6a81: $9f
    call $2fcb                                    ; $6a82: $cd $cb $2f
    cp b                                          ; $6a85: $b8
    ld c, d                                       ; $6a86: $4a
    cp [hl]                                       ; $6a87: $be
    sub $a7                                       ; $6a88: $d6 $a7
    ldh [$82], a                                  ; $6a8a: $e0 $82
    cpl                                           ; $6a8c: $2f
    db $ed                                        ; $6a8d: $ed
    sbc l                                         ; $6a8e: $9d
    pop de                                        ; $6a8f: $d1
    jp hl                                         ; $6a90: $e9


    cp h                                          ; $6a91: $bc
    db $ec                                        ; $6a92: $ec
    ld l, b                                       ; $6a93: $68
    dec d                                         ; $6a94: $15
    ld a, [c]                                     ; $6a95: $f2
    inc h                                         ; $6a96: $24
    add h                                         ; $6a97: $84
    ld bc, $39db                                  ; $6a98: $01 $db $39
    rst $00                                       ; $6a9b: $c7
    ld e, l                                       ; $6a9c: $5d
    ld bc, $e75f                                  ; $6a9d: $01 $5f $e7
    dec b                                         ; $6aa0: $05
    sub d                                         ; $6aa1: $92
    and $39                                       ; $6aa2: $e6 $39
    dec sp                                        ; $6aa4: $3b
    ld [hl], $d3                                  ; $6aa5: $36 $d3
    ld c, d                                       ; $6aa7: $4a
    ld [de], a                                    ; $6aa8: $12
    ld h, b                                       ; $6aa9: $60
    ld e, [hl]                                    ; $6aaa: $5e
    ld a, [hl]                                    ; $6aab: $7e
    ld b, a                                       ; $6aac: $47
    ld a, c                                       ; $6aad: $79
    ld d, h                                       ; $6aae: $54
    ld a, [c]                                     ; $6aaf: $f2
    ld e, e                                       ; $6ab0: $5b
    dec l                                         ; $6ab1: $2d
    ld l, c                                       ; $6ab2: $69
    cp d                                          ; $6ab3: $ba
    or [hl]                                       ; $6ab4: $b6
    ld h, h                                       ; $6ab5: $64
    add [hl]                                      ; $6ab6: $86
    ldh [$b7], a                                  ; $6ab7: $e0 $b7
    xor d                                         ; $6ab9: $aa
    inc hl                                        ; $6aba: $23
    inc c                                         ; $6abb: $0c
    db $db                                        ; $6abc: $db
    add hl, sp                                    ; $6abd: $39
    db $dd                                        ; $6abe: $dd
    jp z, $87a5                                   ; $6abf: $ca $a5 $87

    rra                                           ; $6ac2: $1f
    ld a, a                                       ; $6ac3: $7f
    add hl, sp                                    ; $6ac4: $39
    xor d                                         ; $6ac5: $aa
    or b                                          ; $6ac6: $b0
    pop af                                        ; $6ac7: $f1
    dec h                                         ; $6ac8: $25
    rst $00                                       ; $6ac9: $c7
    ld l, $54                                     ; $6aca: $2e $54
    ld l, c                                       ; $6acc: $69
    ld a, l                                       ; $6acd: $7d
    ld a, c                                       ; $6ace: $79
    ld [hl], $2f                                  ; $6acf: $36 $2f
    ccf                                           ; $6ad1: $3f
    inc bc                                        ; $6ad2: $03
    rrca                                          ; $6ad3: $0f
    ld c, e                                       ; $6ad4: $4b
    ld a, e                                       ; $6ad5: $7b
    db $dd                                        ; $6ad6: $dd
    sub e                                         ; $6ad7: $93
    ld h, a                                       ; $6ad8: $67
    cpl                                           ; $6ad9: $2f
    rst $08                                       ; $6ada: $cf
    halt                                          ; $6adb: $76
    call c, Call_023_6f95                         ; $6adc: $dc $95 $6f
    ld l, e                                       ; $6adf: $6b
    adc h                                         ; $6ae0: $8c
    dec sp                                        ; $6ae1: $3b
    ld [hl], $08                                  ; $6ae2: $36 $08
    nop                                           ; $6ae4: $00
    ld h, c                                       ; $6ae5: $61
    db $db                                        ; $6ae6: $db
    add hl, sp                                    ; $6ae7: $39
    rst $00                                       ; $6ae8: $c7
    and l                                         ; $6ae9: $a5
    ld hl, $b2f6                                  ; $6aea: $21 $f6 $b2
    or h                                          ; $6aed: $b4
    rst $20                                       ; $6aee: $e7
    push hl                                       ; $6aef: $e5
    rst $10                                       ; $6af0: $d7
    sub d                                         ; $6af1: $92
    push de                                       ; $6af2: $d5
    ld a, l                                       ; $6af3: $7d
    ld l, a                                       ; $6af4: $6f
    ld h, [hl]                                    ; $6af5: $66
    and a                                         ; $6af6: $a7
    db $ec                                        ; $6af7: $ec
    sbc b                                         ; $6af8: $98
    dec bc                                        ; $6af9: $0b
    ld l, $0f                                     ; $6afa: $2e $0f
    ldh a, [$6c]                                  ; $6afc: $f0 $6c
    dec a                                         ; $6afe: $3d
    xor a                                         ; $6aff: $af
    ld d, a                                       ; $6b00: $57
    push hl                                       ; $6b01: $e5
    ld bc, $db61                                  ; $6b02: $01 $61 $db
    add hl, sp                                    ; $6b05: $39
    db $dd                                        ; $6b06: $dd
    db $e4                                        ; $6b07: $e4

jr_023_6b08:
    reti                                          ; $6b08: $d9


    push af                                       ; $6b09: $f5
    ld h, a                                       ; $6b0a: $67
    db $e3                                        ; $6b0b: $e3
    xor a                                         ; $6b0c: $af
    sub a                                         ; $6b0d: $97
    ld a, c                                       ; $6b0e: $79
    ld sp, hl                                     ; $6b0f: $f9
    ld e, l                                       ; $6b10: $5d
    or d                                          ; $6b11: $b2
    ld a, $f9                                     ; $6b12: $3e $f9
    ld c, l                                       ; $6b14: $4d
    ld e, d                                       ; $6b15: $5a
    jp c, $950b                                   ; $6b16: $da $0b $95

    sbc d                                         ; $6b19: $9a
    add hl, de                                    ; $6b1a: $19
    ld [$57c4], a                                 ; $6b1b: $ea $c4 $57
    ld d, b                                       ; $6b1e: $50
    ld a, [c]                                     ; $6b1f: $f2
    sbc l                                         ; $6b20: $9d
    ld [hl], a                                    ; $6b21: $77
    adc c                                         ; $6b22: $89
    jp $94c3                                      ; $6b23: $c3 $c3 $94


    ret c                                         ; $6b26: $d8

    jp z, Jump_023_7873                           ; $6b27: $ca $73 $78

    ld b, b                                       ; $6b2a: $40
    jr jr_023_6b08                                ; $6b2b: $18 $db

    add hl, sp                                    ; $6b2d: $39
    daa                                           ; $6b2e: $27
    ld e, [hl]                                    ; $6b2f: $5e
    ld a, [bc]                                    ; $6b30: $0a
    halt                                          ; $6b31: $76
    sub h                                         ; $6b32: $94
    ld a, b                                       ; $6b33: $78
    ld sp, $8352                                  ; $6b34: $31 $52 $83
    dec d                                         ; $6b37: $15
    adc l                                         ; $6b38: $8d
    or $e0                                        ; $6b39: $f6 $e0
    add d                                         ; $6b3b: $82
    cp a                                          ; $6b3c: $bf
    and b                                         ; $6b3d: $a0
    dec e                                         ; $6b3e: $1d
    and e                                         ; $6b3f: $a3
    ld d, d                                       ; $6b40: $52
    rra                                           ; $6b41: $1f
    and h                                         ; $6b42: $a4
    ld d, h                                       ; $6b43: $54
    cpl                                           ; $6b44: $2f
    rrca                                          ; $6b45: $0f
    jr nc, jr_023_6b6d                            ; $6b46: $30 $25

    ld [hl], $2f                                  ; $6b48: $36 $2f
    cp a                                          ; $6b4a: $bf
    and a                                         ; $6b4b: $a7
    rrca                                          ; $6b4c: $0f
    sbc e                                         ; $6b4d: $9b
    and l                                         ; $6b4e: $a5
    cp l                                          ; $6b4f: $bd
    sub e                                         ; $6b50: $93
    ld e, a                                       ; $6b51: $5f
    ld [c], a                                     ; $6b52: $e2
    dec h                                         ; $6b53: $25
    add h                                         ; $6b54: $84
    ld bc, $39db                                  ; $6b55: $01 $db $39
    dec l                                         ; $6b58: $2d
    ld c, a                                       ; $6b59: $4f
    ld a, $cf                                     ; $6b5a: $3e $cf
    dec e                                         ; $6b5c: $1d
    push bc                                       ; $6b5d: $c5
    or c                                          ; $6b5e: $b1
    xor [hl]                                      ; $6b5f: $ae
    ld l, l                                       ; $6b60: $6d
    and l                                         ; $6b61: $a5
    reti                                          ; $6b62: $d9


    add hl, hl                                    ; $6b63: $29
    xor e                                         ; $6b64: $ab
    rst $38                                       ; $6b65: $ff
    ld [hl], a                                    ; $6b66: $77
    ld l, $05                                     ; $6b67: $2e $05
    ld l, e                                       ; $6b69: $6b
    jp hl                                         ; $6b6a: $e9


    sub h                                         ; $6b6b: $94
    ld c, e                                       ; $6b6c: $4b

jr_023_6b6d:
    inc e                                         ; $6b6d: $1c
    ld e, $76                                     ; $6b6e: $1e $76
    ld l, c                                       ; $6b70: $69
    push hl                                       ; $6b71: $e5
    jp nz, Jump_023_5ada                          ; $6b72: $c2 $da $5a

    push de                                       ; $6b75: $d5
    rla                                           ; $6b76: $17
    xor b                                         ; $6b77: $a8
    or b                                          ; $6b78: $b0
    daa                                           ; $6b79: $27
    add h                                         ; $6b7a: $84
    ld bc, $39db                                  ; $6b7b: $01 $db $39
    rst $00                                       ; $6b7e: $c7
    ld l, c                                       ; $6b7f: $69
    sbc b                                         ; $6b80: $98
    ld b, $66                                     ; $6b81: $06 $66
    and a                                         ; $6b83: $a7
    call z, Call_023_7eb5                         ; $6b84: $cc $b5 $7e
    add hl, hl                                    ; $6b87: $29
    ld e, b                                       ; $6b88: $58
    jp c, Jump_023_53f6                           ; $6b89: $da $f6 $53

    push af                                       ; $6b8c: $f5
    ld d, e                                       ; $6b8d: $53
    rra                                           ; $6b8e: $1f
    and l                                         ; $6b8f: $a5
    sub a                                         ; $6b90: $97
    ld c, e                                       ; $6b91: $4b
    pop bc                                        ; $6b92: $c1
    sub h                                         ; $6b93: $94
    ret c                                         ; $6b94: $d8

    ld a, [hl+]                                   ; $6b95: $2a
    inc hl                                        ; $6b96: $23
    ld [hl], b                                    ; $6b97: $70
    add hl, hl                                    ; $6b98: $29
    ret c                                         ; $6b99: $d8

    dec h                                         ; $6b9a: $25
    jp z, $c9ea                                   ; $6b9b: $ca $ea $c9

    rst $10                                       ; $6b9e: $d7
    ld l, [hl]                                    ; $6b9f: $6e
    ret nz                                        ; $6ba0: $c0

    sub l                                         ; $6ba1: $95
    ret c                                         ; $6ba2: $d8

    dec bc                                        ; $6ba3: $0b
    jr nz, jr_023_6bb2                            ; $6ba4: $20 $0c

    db $db                                        ; $6ba6: $db
    add hl, sp                                    ; $6ba7: $39
    dec a                                         ; $6ba8: $3d
    dec h                                         ; $6ba9: $25
    db $fd                                        ; $6baa: $fd
    rst $10                                       ; $6bab: $d7
    inc hl                                        ; $6bac: $23
    sub l                                         ; $6bad: $95
    add c                                         ; $6bae: $81
    ld h, a                                       ; $6baf: $67
    add $f5                                       ; $6bb0: $c6 $f5

jr_023_6bb2:
    ret nc                                        ; $6bb2: $d0

    ld hl, sp-$40                                 ; $6bb3: $f8 $c0
    ld e, l                                       ; $6bb5: $5d
    ld d, l                                       ; $6bb6: $55
    ld l, [hl]                                    ; $6bb7: $6e
    ld h, h                                       ; $6bb8: $64
    ld a, [c]                                     ; $6bb9: $f2
    ld d, h                                       ; $6bba: $54
    add e                                         ; $6bbb: $83
    or l                                          ; $6bbc: $b5
    inc sp                                        ; $6bbd: $33
    db $eb                                        ; $6bbe: $eb
    jr nc, jr_023_6c0b                            ; $6bbf: $30 $4a

    ld a, [hl]                                    ; $6bc1: $7e
    ld l, l                                       ; $6bc2: $6d
    dec h                                         ; $6bc3: $25
    ld a, d                                       ; $6bc4: $7a
    or [hl]                                       ; $6bc5: $b6
    or $57                                        ; $6bc6: $f6 $57
    ld l, d                                       ; $6bc8: $6a
    ldh [$e7], a                                  ; $6bc9: $e0 $e7
    push hl                                       ; $6bcb: $e5
    sbc e                                         ; $6bcc: $9b
    ld d, l                                       ; $6bcd: $55
    ld l, d                                       ; $6bce: $6a
    ldh [$d9], a                                  ; $6bcf: $e0 $d9
    xor h                                         ; $6bd1: $ac
    add hl, de                                    ; $6bd2: $19
    ld e, [hl]                                    ; $6bd3: $5e
    cp a                                          ; $6bd4: $bf
    inc d                                         ; $6bd5: $14
    jr nz, @+$0e                                  ; $6bd6: $20 $0c

    db $db                                        ; $6bd8: $db
    add hl, sp                                    ; $6bd9: $39
    dec a                                         ; $6bda: $3d
    cpl                                           ; $6bdb: $2f
    pop de                                        ; $6bdc: $d1
    set 2, d                                      ; $6bdd: $cb $d2
    sbc [hl]                                      ; $6bdf: $9e
    sub a                                         ; $6be0: $97
    rst $18                                       ; $6be1: $df
    ld d, c                                       ; $6be2: $51
    ld sp, $7df6                                  ; $6be3: $31 $f6 $7d
    inc l                                         ; $6be6: $2c
    dec b                                         ; $6be7: $05
    ld d, c                                       ; $6be8: $51
    adc c                                         ; $6be9: $89
    xor l                                         ; $6bea: $ad
    rst $20                                       ; $6beb: $e7
    push hl                                       ; $6bec: $e5
    xor b                                         ; $6bed: $a8
    jp nz, $8c76                                  ; $6bee: $c2 $76 $8c

    ld sp, hl                                     ; $6bf1: $f9
    ld a, b                                       ; $6bf2: $78
    add hl, hl                                    ; $6bf3: $29
    ld e, b                                       ; $6bf4: $58
    or a                                          ; $6bf5: $b7
    inc c                                         ; $6bf6: $0c
    dec sp                                        ; $6bf7: $3b
    rst $28                                       ; $6bf8: $ef
    rst $10                                       ; $6bf9: $d7

Call_023_6bfa:
    ld l, a                                       ; $6bfa: $6f
    jp nc, Jump_023_5ed2                          ; $6bfb: $d2 $d2 $5e

    ld a, a                                       ; $6bfe: $7f
    rlca                                          ; $6bff: $07
    ld e, $d0                                     ; $6c00: $1e $d0
    cpl                                           ; $6c02: $2f
    jp nz, Jump_000_39db                          ; $6c03: $c2 $db $39

jr_023_6c06:
    rst $00                                       ; $6c06: $c7
    ld b, l                                       ; $6c07: $45
    dec c                                         ; $6c08: $0d
    db $db                                        ; $6c09: $db
    reti                                          ; $6c0a: $d9


jr_023_6c0b:
    jr z, jr_023_6c06                             ; $6c0b: $28 $f9

    ld hl, sp-$35                                 ; $6c0d: $f8 $cb
    ld d, c                                       ; $6c0f: $51
    add l                                         ; $6c10: $85
    db $ed                                        ; $6c11: $ed
    ret                                           ; $6c12: $c9


    ld e, a                                       ; $6c13: $5f
    ld e, h                                       ; $6c14: $5c
    cpl                                           ; $6c15: $2f
    cp l                                          ; $6c16: $bd
    adc h                                         ; $6c17: $8c
    cpl                                           ; $6c18: $2f
    add hl, sp                                    ; $6c19: $39
    xor e                                         ; $6c1a: $ab
    jp nc, $f285                                  ; $6c1b: $d2 $85 $f2

    ld l, h                                       ; $6c1e: $6c
    add [hl]                                      ; $6c1f: $86
    sbc [hl]                                      ; $6c20: $9e
    ld b, e                                       ; $6c21: $43
    rst $20                                       ; $6c22: $e7
    dec hl                                        ; $6c23: $2b
    ld a, a                                       ; $6c24: $7f
    ld d, $9b                                     ; $6c25: $16 $9b
    pop af                                        ; $6c27: $f1
    push hl                                       ; $6c28: $e5
    add $9f                                       ; $6c29: $c6 $9f
    ld l, e                                       ; $6c2b: $6b
    and a                                         ; $6c2c: $a7
    ld l, a                                       ; $6c2d: $6f
    and [hl]                                      ; $6c2e: $a6
    ld d, h                                       ; $6c2f: $54
    ld e, l                                       ; $6c30: $5d
    ld a, [bc]                                    ; $6c31: $0a
    db $10                                        ; $6c32: $10
    ld b, $db                                     ; $6c33: $06 $db
    add hl, sp                                    ; $6c35: $39
    dec l                                         ; $6c36: $2d
    cpl                                           ; $6c37: $2f
    ld d, a                                       ; $6c38: $57
    db $e3                                        ; $6c39: $e3
    add d                                         ; $6c3a: $82
    ld l, h                                       ; $6c3b: $6c
    rst $00                                       ; $6c3c: $c7
    ld c, e                                       ; $6c3d: $4b
    ld a, l                                       ; $6c3e: $7d
    rst $10                                       ; $6c3f: $d7
    ld l, a                                       ; $6c40: $6f
    adc h                                         ; $6c41: $8c
    cpl                                           ; $6c42: $2f
    ld [$db03], sp                                ; $6c43: $08 $03 $db
    add hl, sp                                    ; $6c46: $39
    rst $00                                       ; $6c47: $c7
    jp hl                                         ; $6c48: $e9


    adc l                                         ; $6c49: $8d
    rst $08                                       ; $6c4a: $cf
    and $b9                                       ; $6c4b: $e6 $b9
    adc $0b                                       ; $6c4d: $ce $0b
    jr jr_023_6cb6                                ; $6c4f: $18 $65

    ccf                                           ; $6c51: $3f
    cpl                                           ; $6c52: $2f
    cp a                                          ; $6c53: $bf
    sub e                                         ; $6c54: $93
    cpl                                           ; $6c55: $2f
    ld e, l                                       ; $6c56: $5d
    ld [hl], b                                    ; $6c57: $70
    ld l, c                                       ; $6c58: $69
    sub [hl]                                      ; $6c59: $96
    or $4e                                        ; $6c5a: $f6 $4e
    sub $e0                                       ; $6c5c: $d6 $e0
    ld d, [hl]                                    ; $6c5e: $56
    di                                            ; $6c5f: $f3
    ld e, h                                       ; $6c60: $5c
    ld d, c                                       ; $6c61: $51
    db $eb                                        ; $6c62: $eb
    ld c, a                                       ; $6c63: $4f
    ld h, e                                       ; $6c64: $63
    ld e, h                                       ; $6c65: $5c
    rst $20                                       ; $6c66: $e7
    ld [hl], d                                    ; $6c67: $72
    cp b                                          ; $6c68: $b8
    rrca                                          ; $6c69: $0f
    dec hl                                        ; $6c6a: $2b
    ld h, $54                                     ; $6c6b: $26 $54
    ld a, [$8cd8]                                 ; $6c6d: $fa $d8 $8c
    dec a                                         ; $6c70: $3d
    cp b                                          ; $6c71: $b8
    ld h, h                                       ; $6c72: $64
    di                                            ; $6c73: $f3
    inc c                                         ; $6c74: $0c
    ld h, c                                       ; $6c75: $61
    db $db                                        ; $6c76: $db
    add hl, sp                                    ; $6c77: $39
    rst $00                                       ; $6c78: $c7
    ld l, c                                       ; $6c79: $69
    ld hl, sp+$6c                                 ; $6c7a: $f8 $6c
    halt                                          ; $6c7c: $76
    jp z, $ade8                                   ; $6c7d: $ca $e8 $ad

    cpl                                           ; $6c80: $2f
    adc e                                         ; $6c81: $8b

jr_023_6c82:
    xor a                                         ; $6c82: $af
    sub $4b                                       ; $6c83: $d6 $4b
    pop bc                                        ; $6c85: $c1
    jp z, $9585                                   ; $6c86: $ca $85 $95

    inc [hl]                                      ; $6c89: $34
    ldh a, [$33]                                  ; $6c8a: $f0 $33
    db $e4                                        ; $6c8c: $e4
    scf                                           ; $6c8d: $37
    ld c, [hl]                                    ; $6c8e: $4e
    rst $10                                       ; $6c8f: $d7
    xor l                                         ; $6c90: $ad
    xor b                                         ; $6c91: $a8
    add h                                         ; $6c92: $84
    ld l, e                                       ; $6c93: $6b
    ld l, e                                       ; $6c94: $6b
    ld d, l                                       ; $6c95: $55
    or a                                          ; $6c96: $b7
    xor a                                         ; $6c97: $af
    inc a                                         ; $6c98: $3c
    sbc e                                         ; $6c99: $9b
    ld [de], a                                    ; $6c9a: $12
    sbc e                                         ; $6c9b: $9b
    sub a                                         ; $6c9c: $97
    sbc a                                         ; $6c9d: $9f
    ld h, h                                       ; $6c9e: $64
    jp c, $3fb3                                   ; $6c9f: $da $b3 $3f

    add $5d                                       ; $6ca2: $c6 $5d
    ld b, d                                       ; $6ca4: $42
    jr jr_023_6c82                                ; $6ca5: $18 $db

    add hl, sp                                    ; $6ca7: $39
    daa                                           ; $6ca8: $27
    db $dd                                        ; $6ca9: $dd
    ld a, [$b5b3]                                 ; $6caa: $fa $b3 $b5
    adc l                                         ; $6cad: $8d
    ret nc                                        ; $6cae: $d0

    and l                                         ; $6caf: $a5
    ld h, b                                       ; $6cb0: $60
    ld [$f2f3], a                                 ; $6cb1: $ea $f3 $f2
    inc bc                                        ; $6cb4: $03
    rst $10                                       ; $6cb5: $d7

jr_023_6cb6:
    ld a, [$720f]                                 ; $6cb6: $fa $0f $72
    and c                                         ; $6cb9: $a1
    xor c                                         ; $6cba: $a9
    jp z, $fca0                                   ; $6cbb: $ca $a0 $fc

    ld d, h                                       ; $6cbe: $54
    ld b, h                                       ; $6cbf: $44
    add hl, hl                                    ; $6cc0: $29
    ld a, b                                       ; $6cc1: $78
    ld [hl], $cf                                  ; $6cc2: $36 $cf
    or l                                          ; $6cc4: $b5
    ld a, a                                       ; $6cc5: $7f
    pop af                                        ; $6cc6: $f1
    ld a, [$674c]                                 ; $6cc7: $fa $4c $67
    rlca                                          ; $6cca: $07
    ld e, $32                                     ; $6ccb: $1e $32
    cp a                                          ; $6ccd: $bf
    pop hl                                        ; $6cce: $e1
    inc bc                                        ; $6ccf: $03
    jp nz, Jump_000_39db                          ; $6cd0: $c2 $db $39

    dec l                                         ; $6cd3: $2d
    ld l, d                                       ; $6cd4: $6a
    ld a, l                                       ; $6cd5: $7d
    or [hl]                                       ; $6cd6: $b6
    ld d, b                                       ; $6cd7: $50
    xor c                                         ; $6cd8: $a9
    reti                                          ; $6cd9: $d9


    ret                                           ; $6cda: $c9


    ld h, $08                                     ; $6cdb: $26 $08
    ld [c], a                                     ; $6cdd: $e2
    jp $f2f8                                      ; $6cde: $c3 $f8 $f2


    inc [hl]                                      ; $6ce1: $34
    dec e                                         ; $6ce2: $1d
    inc de                                        ; $6ce3: $13
    dec c                                         ; $6ce4: $0d
    sub d                                         ; $6ce5: $92
    ld b, $7c                                     ; $6ce6: $06 $7c
    ld h, [hl]                                    ; $6ce8: $66
    rst $20                                       ; $6ce9: $e7
    reti                                          ; $6cea: $d9


    ld e, b                                       ; $6ceb: $58
    ld a, [c]                                     ; $6cec: $f2
    or h                                          ; $6ced: $b4
    and h                                         ; $6cee: $a4
    jp hl                                         ; $6cef: $e9


    jp c, Jump_023_55af                           ; $6cf0: $da $af $55

    sbc c                                         ; $6cf3: $99
    ld l, l                                       ; $6cf4: $6d
    ld h, d                                       ; $6cf5: $62
    ld e, h                                       ; $6cf6: $5c
    jp c, Jump_023_4303                           ; $6cf7: $da $03 $43

    ld l, l                                       ; $6cfa: $6d
    push af                                       ; $6cfb: $f5
    ld a, [c]                                     ; $6cfc: $f2
    ld [bc], a                                    ; $6cfd: $02
    db $08                                        ; $6cfe: $08
    inc bc                                        ; $6cff: $03

    db $db, $39, $dd, $34, $ec, $e8, $0d, $e8, $d9, $3c, $17, $af, $ed, $f3, $f2, $6b
    db $71, $75, $e3, $bf, $b4, $d7, $f2, $95, $7c, $d5, $4c, $89, $cd, $3f, $c6, $9d
    db $6c, $82, $20, $3e, $cc, $8b, $fa, $f8, $cb, $51, $85, $c1, $9e, $c3, $05, $47
    db $18

    db $db                                        ; $6d31: $db
    add hl, sp                                    ; $6d32: $39
    ld d, $b2                                     ; $6d33: $16 $b2
    ld a, $79                                     ; $6d35: $3e $79
    jp z, $9ed2                                   ; $6d37: $ca $d2 $9e

    sub a                                         ; $6d3a: $97
    ld e, a                                       ; $6d3b: $5f
    dec bc                                        ; $6d3c: $0b
    cp l                                          ; $6d3d: $bd
    sub $13                                       ; $6d3e: $d6 $13
    xor d                                         ; $6d40: $aa
    db $ec                                        ; $6d41: $ec
    inc a                                         ; $6d42: $3c
    jp nz, Jump_000_39db                          ; $6d43: $c2 $db $39

    ld h, a                                       ; $6d46: $67
    ret nc                                        ; $6d47: $d0

    xor l                                         ; $6d48: $ad
    ld d, d                                       ; $6d49: $52
    ld l, b                                       ; $6d4a: $68
    rst $08                                       ; $6d4b: $cf
    and c                                         ; $6d4c: $a1
    di                                            ; $6d4d: $f3
    ld [c], a                                     ; $6d4e: $e2
    ld l, b                                       ; $6d4f: $68
    xor l                                         ; $6d50: $ad
    rra                                           ; $6d51: $1f
    dec sp                                        ; $6d52: $3b
    rst $08                                       ; $6d53: $cf
    ld b, $ef                                     ; $6d54: $06 $ef
    inc sp                                        ; $6d56: $33
    sbc l                                         ; $6d57: $9d
    add hl, de                                    ; $6d58: $19
    cp d                                          ; $6d59: $ba
    ld d, l                                       ; $6d5a: $55
    ld a, [bc]                                    ; $6d5b: $0a
    ld c, l                                       ; $6d5c: $4d
    ld e, $5e                                     ; $6d5d: $1e $5e
    xor h                                         ; $6d5f: $ac

Call_023_6d60:
    ld [$0937], a                                 ; $6d60: $ea $37 $09
    and $45                                       ; $6d63: $e6 $45
    jp nc, $2504                                  ; $6d65: $d2 $04 $25

    adc l                                         ; $6d68: $8d
    rst $28                                       ; $6d69: $ef
    ld l, b                                       ; $6d6a: $68
    cp c                                          ; $6d6b: $b9
    xor [hl]                                      ; $6d6c: $ae
    sub a                                         ; $6d6d: $97
    db $10                                        ; $6d6e: $10
    ld b, $db                                     ; $6d6f: $06 $db
    add hl, sp                                    ; $6d71: $39
    and a                                         ; $6d72: $a7
    ld d, d                                       ; $6d73: $52
    ld l, h                                       ; $6d74: $6c
    add $5f                                       ; $6d75: $c6 $5f
    adc [hl]                                      ; $6d77: $8e
    ld a, [hl+]                                   ; $6d78: $2a
    ld l, h                                       ; $6d79: $6c
    ld l, a                                       ; $6d7a: $6f
    ld a, l                                       ; $6d7b: $7d
    sbc c                                         ; $6d7c: $99
    rst $20                                       ; $6d7d: $e7
    ret nz                                        ; $6d7e: $c0

    adc b                                         ; $6d7f: $88
    push af                                       ; $6d80: $f5
    ld e, d                                       ; $6d81: $5a
    ld a, a                                       ; $6d82: $7f
    cp d                                          ; $6d83: $ba
    sub e                                         ; $6d84: $93
    sbc $cb                                       ; $6d85: $de $cb
    or l                                          ; $6d87: $b5
    inc sp                                        ; $6d88: $33
    or d                                          ; $6d89: $b2
    xor c                                         ; $6d8a: $a9
    cp e                                          ; $6d8b: $bb
    ld d, [hl]                                    ; $6d8c: $56
    ld [hl], l                                    ; $6d8d: $75
    add h                                         ; $6d8e: $84
    ld bc, $39db                                  ; $6d8f: $01 $db $39
    db $dd                                        ; $6d92: $dd
    ld a, $7e                                     ; $6d93: $3e $7e
    ld e, e                                       ; $6d95: $5b
    call nc, $ad9f                                ; $6d96: $d4 $9f $ad
    push af                                       ; $6d99: $f5
    sub l                                         ; $6d9a: $95
    dec l                                         ; $6d9b: $2d
    db $ed                                        ; $6d9c: $ed
    ld a, c                                       ; $6d9d: $79
    ld sp, hl                                     ; $6d9e: $f9
    dec e                                         ; $6d9f: $1d
    di                                            ; $6da0: $f3
    dec e                                         ; $6da1: $1d
    dec d                                         ; $6da2: $15
    rrca                                          ; $6da3: $0f
    sbc a                                         ; $6da4: $9f
    ld a, h                                       ; $6da5: $7c
    ld l, c                                       ; $6da6: $69
    rst $28                                       ; $6da7: $ef
    ld h, h                                       ; $6da8: $64
    dec c                                         ; $6da9: $0d
    ld l, [hl]                                    ; $6daa: $6e
    and l                                         ; $6dab: $a5
    ld [hl], c                                    ; $6dac: $71
    daa                                           ; $6dad: $27
    add hl, hl                                    ; $6dae: $29
    cp a                                          ; $6daf: $bf

Call_023_6db0:
    ld h, e                                       ; $6db0: $63
    ret                                           ; $6db1: $c9


    ld c, [hl]                                    ; $6db2: $4e
    xor c                                         ; $6db3: $a9
    ld a, $7c                                     ; $6db4: $3e $7c
    ld [hl], d                                    ; $6db6: $72
    add h                                         ; $6db7: $84
    ld bc, $39db                                  ; $6db8: $01 $db $39
    rst $00                                       ; $6dbb: $c7
    call c, $0367                                 ; $6dbc: $dc $67 $03
    or l                                          ; $6dbf: $b5
    ld e, [hl]                                    ; $6dc0: $5e
    ld a, [bc]                                    ; $6dc1: $0a
    and [hl]                                      ; $6dc2: $a6
    dec sp                                        ; $6dc3: $3b
    reti                                          ; $6dc4: $d9


    inc b                                         ; $6dc5: $04
    ld b, c                                       ; $6dc6: $41
    db $fc                                        ; $6dc7: $fc
    ld d, l                                       ; $6dc8: $55
    push hl                                       ; $6dc9: $e5
    ld b, [hl]                                    ; $6dca: $46
    ld [hl], $5b                                  ; $6dcb: $36 $5b
    ld [hl-], a                                   ; $6dcd: $32
    sbc h                                         ; $6dce: $9c
    ld c, [hl]                                    ; $6dcf: $4e
    inc c                                         ; $6dd0: $0c
    add hl, hl                                    ; $6dd1: $29
    xor a                                         ; $6dd2: $af
    call $564e                                    ; $6dd3: $cd $4e $56
    ld a, [c]                                     ; $6dd6: $f2
    ld e, e                                       ; $6dd7: $5b
    and l                                         ; $6dd8: $a5
    inc a                                         ; $6dd9: $3c
    jp nz, Jump_000_39db                          ; $6dda: $c2 $db $39

    db $dd                                        ; $6ddd: $dd
    ld l, a                                       ; $6dde: $6f
    jp nc, $2cbf                                  ; $6ddf: $d2 $bf $2c

    db $ed                                        ; $6de2: $ed
    dec e                                         ; $6de3: $1d
    sbc a                                         ; $6de4: $9f
    db $ed                                        ; $6de5: $ed
    ld a, b                                       ; $6de6: $78
    ld l, c                                       ; $6de7: $69
    and a                                         ; $6de8: $a7
    rst $18                                       ; $6de9: $df
    and b                                         ; $6dea: $a0
    jr c, @+$22                                   ; $6deb: $38 $20

    inc c                                         ; $6ded: $0c
    db $db                                        ; $6dee: $db
    add hl, sp                                    ; $6def: $39
    db $dd                                        ; $6df0: $dd
    ld a, $7e                                     ; $6df1: $3e $7e
    ld e, e                                       ; $6df3: $5b
    call nc, $8d9f                                ; $6df4: $d4 $9f $8d
    cp a                                          ; $6df7: $bf
    inc e                                         ; $6df8: $1c
    ld d, l                                       ; $6df9: $55
    ret c                                         ; $6dfa: $d8

    ld hl, sp-$6e                                 ; $6dfb: $f8 $92
    db $e3                                        ; $6dfd: $e3
    dec d                                         ; $6dfe: $15
    halt                                          ; $6dff: $76
    jp Jump_023_5c8e                              ; $6e00: $c3 $8e $5c


    ld c, b                                       ; $6e03: $48
    ld a, d                                       ; $6e04: $7a
    or [hl]                                       ; $6e05: $b6
    halt                                          ; $6e06: $76
    or e                                          ; $6e07: $b3
    sub e                                         ; $6e08: $93
    ld c, l                                       ; $6e09: $4d
    db $10                                        ; $6e0a: $10
    call nz, $d987                                ; $6e0b: $c4 $87 $d9
    add hl, hl                                    ; $6e0e: $29
    dec hl                                        ; $6e0f: $2b
    rla                                           ; $6e10: $17
    add $cb                                       ; $6e11: $c6 $cb
    push af                                       ; $6e13: $f5
    ld c, e                                       ; $6e14: $4b
    ld bc, $0c20                                  ; $6e15: $01 $20 $0c
    db $db                                        ; $6e18: $db
    add hl, sp                                    ; $6e19: $39
    rst $00                                       ; $6e1a: $c7
    ld [hl], d                                    ; $6e1b: $72
    add sp, -$44                                  ; $6e1c: $e8 $bc
    ld hl, sp-$6e                                 ; $6e1e: $f8 $92
    ld d, $6a                                     ; $6e20: $16 $6a
    ld [hl], b                                    ; $6e22: $70
    dec hl                                        ; $6e23: $2b
    adc l                                         ; $6e24: $8d
    ld l, e                                       ; $6e25: $6b
    ld e, a                                       ; $6e26: $5f
    ld h, c                                       ; $6e27: $61
    add b                                         ; $6e28: $80
    halt                                          ; $6e29: $76
    call c, $f015                                 ; $6e2a: $dc $15 $f0
    ld a, c                                       ; $6e2d: $79
    xor $b2                                       ; $6e2e: $ee $b2
    daa                                           ; $6e30: $27
    cp a                                          ; $6e31: $bf
    halt                                          ; $6e32: $76
    or e                                          ; $6e33: $b3
    ldh a, [$95]                                  ; $6e34: $f0 $95
    ld l, $05                                     ; $6e36: $2e $05
    ld c, e                                       ; $6e38: $4b
    ld a, e                                       ; $6e39: $7b
    ld b, a                                       ; $6e3a: $47
    sbc c                                         ; $6e3b: $99
    ret nz                                        ; $6e3c: $c0

    ld c, b                                       ; $6e3d: $48
    inc sp                                        ; $6e3e: $33
    ld c, b                                       ; $6e3f: $48
    ld a, [bc]                                    ; $6e40: $0a
    db $10                                        ; $6e41: $10
    ld b, $db                                     ; $6e42: $06 $db
    add hl, sp                                    ; $6e44: $39
    db $dd                                        ; $6e45: $dd
    ld a, $7e                                     ; $6e46: $3e $7e
    ld e, e                                       ; $6e48: $5b
    call nc, $4d9f                                ; $6e49: $d4 $9f $4d
    adc l                                         ; $6e4c: $8d
    sub a                                         ; $6e4d: $97
    sub h                                         ; $6e4e: $94
    and l                                         ; $6e4f: $a5
    cp l                                          ; $6e50: $bd
    jp c, Jump_023_4a71                           ; $6e51: $da $71 $4a

    xor [hl]                                      ; $6e54: $ae
    ldh [$b7], a                                  ; $6e55: $e0 $b7

Call_023_6e57:
    jp c, $afd1                                   ; $6e57: $da $d1 $af

    ldh [$30], a                                  ; $6e5a: $e0 $30
    dec h                                         ; $6e5c: $25
    or [hl]                                       ; $6e5d: $b6
    sbc [hl]                                      ; $6e5e: $9e
    push hl                                       ; $6e5f: $e5
    push hl                                       ; $6e60: $e5
    rst $20                                       ; $6e61: $e7
    cp c                                          ; $6e62: $b9
    db $e3                                        ; $6e63: $e3
    ld l, $b1                                     ; $6e64: $2e $b1
    push af                                       ; $6e66: $f5
    jr z, @+$21                                   ; $6e67: $28 $1f

    sub $10                                       ; $6e69: $d6 $10
    ld b, $db                                     ; $6e6b: $06 $db
    add hl, sp                                    ; $6e6d: $39
    xor l                                         ; $6e6e: $ad
    add hl, bc                                    ; $6e6f: $09
    cp [hl]                                       ; $6e70: $be
    or h                                          ; $6e71: $b4
    rst $20                                       ; $6e72: $e7
    push hl                                       ; $6e73: $e5
    rst $10                                       ; $6e74: $d7
    inc de                                        ; $6e75: $13
    push af                                       ; $6e76: $f5
    ld b, h                                       ; $6e77: $44
    and a                                         ; $6e78: $a7
    and b                                         ; $6e79: $a0
    push af                                       ; $6e7a: $f5
    pop de                                        ; $6e7b: $d1
    di                                            ; $6e7c: $f3
    ld [hl], d                                    ; $6e7d: $72
    ld d, h                                       ; $6e7e: $54
    ld h, c                                       ; $6e7f: $61
    sub a                                         ; $6e80: $97
    add d                                         ; $6e81: $82
    push af                                       ; $6e82: $f5
    cp h                                          ; $6e83: $bc
    ld a, [c]                                     ; $6e84: $f2
    pop af                                        ; $6e85: $f1
    ld bc, $ca76                                  ; $6e86: $01 $76 $ca
    dec sp                                        ; $6e89: $3b
    sbc a                                         ; $6e8a: $9f
    ld d, d                                       ; $6e8b: $52
    rst $28                                       ; $6e8c: $ef
    ld [hl], e                                    ; $6e8d: $73
    dec e                                         ; $6e8e: $1d
    ret                                           ; $6e8f: $c9


    ld b, b                                       ; $6e90: $40
    inc [hl]                                      ; $6e91: $34
    ld e, h                                       ; $6e92: $5c
    xor l                                         ; $6e93: $ad
    rst $20                                       ; $6e94: $e7
    push af                                       ; $6e95: $f5
    xor d                                         ; $6e96: $aa
    ld e, h                                       ; $6e97: $5c
    ld a, [bc]                                    ; $6e98: $0a
    sub $9a                                       ; $6e99: $d6 $9a
    ld b, [hl]                                    ; $6e9b: $46
    ld l, d                                       ; $6e9c: $6a
    ld [$db03], sp                                ; $6e9d: $08 $03 $db
    add hl, sp                                    ; $6ea0: $39
    rst $00                                       ; $6ea1: $c7
    ld l, c                                       ; $6ea2: $69
    sbc b                                         ; $6ea3: $98
    ld b, $16                                     ; $6ea4: $06 $16
    ld l, d                                       ; $6ea6: $6a

jr_023_6ea7:
    ld [hl], b                                    ; $6ea7: $70
    dec hl                                        ; $6ea8: $2b
    adc l                                         ; $6ea9: $8d
    di                                            ; $6eaa: $f3
    ld a, [c]                                     ; $6eab: $f2
    add hl, hl                                    ; $6eac: $29
    rst $28                                       ; $6ead: $ef
    or a                                          ; $6eae: $b7
    cp d                                          ; $6eaf: $ba
    ld c, d                                       ; $6eb0: $4a
    ld [$db03], sp                                ; $6eb1: $08 $03 $db
    add hl, sp                                    ; $6eb4: $39
    dec a                                         ; $6eb5: $3d
    xor a                                         ; $6eb6: $af
    ld d, a                                       ; $6eb7: $57
    ld h, l                                       ; $6eb8: $65
    ld a, h                                       ; $6eb9: $7c
    ret                                           ; $6eba: $c9


    ld e, l                                       ; $6ebb: $5d
    or d                                          ; $6ebc: $b2
    ld a, $f9                                     ; $6ebd: $3e $f9
    or e                                          ; $6ebf: $b3
    ld a, c                                       ; $6ec0: $79
    ld sp, hl                                     ; $6ec1: $f9
    sbc l                                         ; $6ec2: $9d
    ld h, h                                       ; $6ec3: $64
    ld c, b                                       ; $6ec4: $48
    and c                                         ; $6ec5: $a1
    jp z, Jump_000_23ce                           ; $6ec6: $ca $ce $23

    inc c                                         ; $6ec9: $0c
    db $db                                        ; $6eca: $db
    add hl, sp                                    ; $6ecb: $39
    db $dd                                        ; $6ecc: $dd
    ld a, $7e                                     ; $6ecd: $3e $7e
    ld e, e                                       ; $6ecf: $5b
    call nc, $ad9f                                ; $6ed0: $d4 $9f $ad
    push hl                                       ; $6ed3: $e5
    ld e, a                                       ; $6ed4: $5f
    and [hl]                                      ; $6ed5: $a6
    call nz, $c6a6                                ; $6ed6: $c4 $a6 $c6
    ld c, e                                       ; $6ed9: $4b
    jp z, Jump_023_5ed2                           ; $6eda: $ca $d2 $5e

    db $ed                                        ; $6edd: $ed
    inc c                                         ; $6ede: $0c
    or d                                          ; $6edf: $b2
    inc sp                                        ; $6ee0: $33
    ld [$052e], sp                                ; $6ee1: $08 $2e $05
    di                                            ; $6ee4: $f3
    ld a, [c]                                     ; $6ee5: $f2
    dec sp                                        ; $6ee6: $3b
    adc $b8                                       ; $6ee7: $ce $b8
    sub c                                         ; $6ee9: $91
    xor a                                         ; $6eea: $af
    ld hl, $db0c                                  ; $6eeb: $21 $0c $db
    add hl, sp                                    ; $6eee: $39
    ld b, a                                       ; $6eef: $47
    ld d, c                                       ; $6ef0: $51
    ld [hl], l                                    ; $6ef1: $75
    sbc a                                         ; $6ef2: $9f
    ld a, h                                       ; $6ef3: $7c
    sub b                                         ; $6ef4: $90

jr_023_6ef5:
    jp hl                                         ; $6ef5: $e9


    dec b                                         ; $6ef6: $05
    or h                                          ; $6ef7: $b4
    ld a, c                                       ; $6ef8: $79
    add hl, de                                    ; $6ef9: $19
    ld e, a                                       ; $6efa: $5f
    ld [hl], d                                    ; $6efb: $72
    db $ed                                        ; $6efc: $ed
    ld d, a                                       ; $6efd: $57
    sbc a                                         ; $6efe: $9f
    sub a                                         ; $6eff: $97
    ld e, a                                       ; $6f00: $5f
    res 7, a                                      ; $6f01: $cb $bf
    xor h                                         ; $6f03: $ac
    sbc e                                         ; $6f04: $9b
    add $aa                                       ; $6f05: $c6 $aa
    jr z, jr_023_6ef5                             ; $6f07: $28 $ec

    jp nc, Jump_023_5574                          ; $6f09: $d2 $74 $55

    sub d                                         ; $6f0c: $92
    ccf                                           ; $6f0d: $3f
    ld hl, sp-$2e                                 ; $6f0e: $f8 $d2
    ld e, $68                                     ; $6f10: $1e $68
    ld [hl], e                                    ; $6f12: $73
    add hl, hl                                    ; $6f13: $29
    jr jr_023_6f7a                                ; $6f14: $18 $64

    ld a, d                                       ; $6f16: $7a
    ld b, c                                       ; $6f17: $41
    jr jr_023_6ef5                                ; $6f18: $18 $db

    add hl, sp                                    ; $6f1a: $39
    daa                                           ; $6f1b: $27
    sbc e                                         ; $6f1c: $9b
    jr nz, jr_023_6ea7                            ; $6f1d: $20 $88

    cp a                                          ; $6f1f: $bf
    rst $20                                       ; $6f20: $e7
    ret nc                                        ; $6f21: $d0

    ld a, c                                       ; $6f22: $79
    pop af                                        ; $6f23: $f1
    add hl, hl                                    ; $6f24: $29
    or c                                          ; $6f25: $b1
    xor c                                         ; $6f26: $a9
    pop af                                        ; $6f27: $f1
    sub d                                         ; $6f28: $92
    or d                                          ; $6f29: $b2
    or h                                          ; $6f2a: $b4
    rla                                           ; $6f2b: $17
    ld a, [hl+]                                   ; $6f2c: $2a
    dec [hl]                                      ; $6f2d: $35
    ld l, e                                       ; $6f2e: $6b
    ld h, a                                       ; $6f2f: $67
    sub $61                                       ; $6f30: $d6 $61
    sub a                                         ; $6f32: $97
    xor d                                         ; $6f33: $aa
    ld l, b                                       ; $6f34: $68
    ret c                                         ; $6f35: $d8

    and l                                         ; $6f36: $a5
    ld h, b                                       ; $6f37: $60
    or l                                          ; $6f38: $b5
    sub e                                         ; $6f39: $93
    ld c, l                                       ; $6f3a: $4d
    db $10                                        ; $6f3b: $10
    call nz, $f587                                ; $6f3c: $c4 $87 $f5
    inc l                                         ; $6f3f: $2c
    cp c                                          ; $6f40: $b9
    ld d, e                                       ; $6f41: $53
    jp nc, $f56f                                  ; $6f42: $d2 $6f $f5

    dec [hl]                                      ; $6f45: $35
    add h                                         ; $6f46: $84
    ld bc, $39db                                  ; $6f47: $01 $db $39
    ld d, $b2                                     ; $6f4a: $16 $b2
    ld a, $79                                     ; $6f4c: $3e $79
    jp z, $9ed2                                   ; $6f4e: $ca $d2 $9e

    sub a                                         ; $6f51: $97
    rst $18                                       ; $6f52: $df
    ld sp, $8286                                  ; $6f53: $31 $86 $82
    halt                                          ; $6f56: $76
    add [hl]                                      ; $6f57: $86
    ld l, l                                       ; $6f58: $6d
    add h                                         ; $6f59: $84
    ld bc, $39db                                  ; $6f5a: $01 $db $39
    daa                                           ; $6f5d: $27
    daa                                           ; $6f5e: $27
    ld hl, sp+$6c                                 ; $6f5f: $f8 $6c
    dec c                                         ; $6f61: $0d
    db $d3                                        ; $6f62: $d3
    ret nz                                        ; $6f63: $c0

    ld hl, sp-$35                                 ; $6f64: $f8 $cb
    ld d, c                                       ; $6f66: $51
    add l                                         ; $6f67: $85
    dec l                                         ; $6f68: $2d
    db $ed                                        ; $6f69: $ed
    ld l, c                                       ; $6f6a: $69
    adc h                                         ; $6f6b: $8c
    di                                            ; $6f6c: $f3
    dec de                                        ; $6f6d: $1b
    ld a, $5a                                     ; $6f6e: $3e $5a
    ld [hl], a                                    ; $6f70: $77
    dec d                                         ; $6f71: $15
    ld e, a                                       ; $6f72: $5f
    jp c, $f2f3                                   ; $6f73: $da $f3 $f2

    db $eb                                        ; $6f76: $eb
    sub [hl]                                      ; $6f77: $96
    ld b, [hl]                                    ; $6f78: $46
    ld a, h                                       ; $6f79: $7c

jr_023_6f7a:
    ld l, c                                       ; $6f7a: $69
    rst $28                                       ; $6f7b: $ef
    call nz, $c14b                                ; $6f7c: $c4 $4b $c1
    adc [hl]                                      ; $6f7f: $8e
    ld [de], a                                    ; $6f80: $12
    cpl                                           ; $6f81: $2f
    ld b, [hl]                                    ; $6f82: $46
    db $10                                        ; $6f83: $10
    ld b, $db                                     ; $6f84: $06 $db
    add hl, sp                                    ; $6f86: $39
    xor l                                         ; $6f87: $ad
    xor a                                         ; $6f88: $af
    ld l, h                                       ; $6f89: $6c
    ld l, c                                       ; $6f8a: $69
    xor a                                         ; $6f8b: $af
    and a                                         ; $6f8c: $a7
    ld c, d                                       ; $6f8d: $4a
    call z, Call_023_5eaa                         ; $6f8e: $cc $aa $5e
    add e                                         ; $6f91: $83
    ld [hl], l                                    ; $6f92: $75
    ld c, e                                       ; $6f93: $4b
    ld b, e                                       ; $6f94: $43

Call_023_6f95:
    push de                                       ; $6f95: $d5
    adc l                                         ; $6f96: $8d
    call c, Call_023_77f5                         ; $6f97: $dc $f5 $77
    ld [hl], b                                    ; $6f9a: $70
    ld a, a                                       ; $6f9b: $7f
    db $fd                                        ; $6f9c: $fd
    xor a                                         ; $6f9d: $af
    rst $28                                       ; $6f9e: $ef
    push af                                       ; $6f9f: $f5
    ld [hl], a                                    ; $6fa0: $77
    ldh a, [$a1]                                  ; $6fa1: $f0 $a1
    add a                                         ; $6fa3: $87
    jr nz, jr_023_6fb2                            ; $6fa4: $20 $0c

    db $db                                        ; $6fa6: $db
    add hl, sp                                    ; $6fa7: $39
    db $dd                                        ; $6fa8: $dd
    or e                                          ; $6fa9: $b3
    ld h, e                                       ; $6faa: $63
    and d                                         ; $6fab: $a2
    jp z, $be4e                                   ; $6fac: $ca $4e $be

    ld [hl], h                                    ; $6faf: $74
    pop bc                                        ; $6fb0: $c1
    ld e, a                                       ; $6fb1: $5f

jr_023_6fb2:
    ld h, [hl]                                    ; $6fb2: $66
    and a                                         ; $6fb3: $a7
    db $ec                                        ; $6fb4: $ec
    ld h, h                                       ; $6fb5: $64
    dec c                                         ; $6fb6: $0d
    ld l, [hl]                                    ; $6fb7: $6e
    push bc                                       ; $6fb8: $c5
    sbc l                                         ; $6fb9: $9d
    halt                                          ; $6fba: $76
    ld a, [hl-]                                   ; $6fbb: $3a
    ld a, c                                       ; $6fbc: $79
    ret                                           ; $6fbd: $c9


    sbc a                                         ; $6fbe: $9f
    xor l                                         ; $6fbf: $ad

jr_023_6fc0:
    cp a                                          ; $6fc0: $bf
    ld b, e                                       ; $6fc1: $43
    ei                                            ; $6fc2: $fb
    db $eb                                        ; $6fc3: $eb
    rrca                                          ; $6fc4: $0f
    ld h, c                                       ; $6fc5: $61
    db $db                                        ; $6fc6: $db
    add hl, sp                                    ; $6fc7: $39
    db $dd                                        ; $6fc8: $dd
    jp z, Jump_023_7b7d                           ; $6fc9: $ca $7d $7b

    ld l, c                                       ; $6fcc: $69
    xor a                                         ; $6fcd: $af
    rst $20                                       ; $6fce: $e7
    push hl                                       ; $6fcf: $e5
    xor b                                         ; $6fd0: $a8
    jp nz, $b06a                                  ; $6fd1: $c2 $6a $b0

    ld l, [hl]                                    ; $6fd4: $6e
    ld l, c                                       ; $6fd5: $69
    xor b                                         ; $6fd6: $a8
    cp d                                          ; $6fd7: $ba
    ld [hl], c                                    ; $6fd8: $71
    db $fd                                        ; $6fd9: $fd
    dec e                                         ; $6fda: $1d
    ld a, b                                       ; $6fdb: $78
    ldh [$a1], a                                  ; $6fdc: $e0 $a1
    db $eb                                        ; $6fde: $eb
    ld a, e                                       ; $6fdf: $7b
    rlca                                          ; $6fe0: $07
    push af                                       ; $6fe1: $f5
    adc e                                         ; $6fe2: $8b
    jr nc, jr_023_6fc0                            ; $6fe3: $30 $db

    add hl, sp                                    ; $6fe5: $39
    rst $00                                       ; $6fe6: $c7
    ld l, c                                       ; $6fe7: $69
    sbc b                                         ; $6fe8: $98
    ld b, $66                                     ; $6fe9: $06 $66
    and a                                         ; $6feb: $a7
    xor h                                         ; $6fec: $ac
    ld c, d                                       ; $6fed: $4a
    ld a, [hl-]                                   ; $6fee: $3a
    rst $18                                       ; $6fef: $df
    cp h                                          ; $6ff0: $bc
    ld e, h                                       ; $6ff1: $5c
    ld a, [bc]                                    ; $6ff2: $0a
    and [hl]                                      ; $6ff3: $a6
    db $eb                                        ; $6ff4: $eb
    ld hl, $e319                                  ; $6ff5: $21 $19 $e3
    ld hl, sp-$6e                                 ; $6ff8: $f8 $92
    di                                            ; $6ffa: $f3
    rla                                           ; $6ffb: $17
    ld c, c                                       ; $6ffc: $49
    cp c                                          ; $6ffd: $b9
    inc e                                         ; $6ffe: $1c
    sbc a                                         ; $6fff: $9f
    call $c24b                                    ; $7000: $cd $4b $c2
    xor a                                         ; $7003: $af
    sub d                                         ; $7004: $92
    inc b                                         ; $7005: $04
    cp b                                          ; $7006: $b8
    inc d                                         ; $7007: $14
    call z, $afcb                                 ; $7008: $cc $cb $af

jr_023_700b:
    ld h, a                                       ; $700b: $67
    di                                            ; $700c: $f3
    dec sp                                        ; $700d: $3b
    db $fd                                        ; $700e: $fd
    ld e, d                                       ; $700f: $5a
    ld e, a                                       ; $7010: $5f
    db $10                                        ; $7011: $10
    ld b, $db                                     ; $7012: $06 $db
    add hl, sp                                    ; $7014: $39
    rst $00                                       ; $7015: $c7
    ld e, l                                       ; $7016: $5d
    ld bc, $7f1f                                  ; $7017: $01 $1f $7f
    cp l                                          ; $701a: $bd
    ld a, [hl+]                                   ; $701b: $2a
    di                                            ; $701c: $f3
    ld e, h                                       ; $701d: $5c
    ei                                            ; $701e: $fb
    xor e                                         ; $701f: $ab
    inc c                                         ; $7020: $0c
    ld a, a                                       ; $7021: $7f
    daa                                           ; $7022: $27
    ld e, a                                       ; $7023: $5f
    cp d                                          ; $7024: $ba
    ldh [$2f], a                                  ; $7025: $e0 $2f
    or e                                          ; $7027: $b3
    ld d, e                                       ; $7028: $53
    halt                                          ; $7029: $76
    or d                                          ; $702a: $b2
    ld b, $b7                                     ; $702b: $06 $b7
    ld b, d                                       ; $702d: $42
    jr jr_023_700b                                ; $702e: $18 $db

    add hl, sp                                    ; $7030: $39
    rst $00                                       ; $7031: $c7
    ld l, c                                       ; $7032: $69
    sbc b                                         ; $7033: $98
    ld b, $66                                     ; $7034: $06 $66
    and a                                         ; $7036: $a7
    call z, $6325                                 ; $7037: $cc $25 $63
    inc e                                         ; $703a: $1c
    cp b                                          ; $703b: $b8
    ld h, c                                       ; $703c: $61
    rst $30                                       ; $703d: $f7
    ld bc, $5bad                                  ; $703e: $01 $ad $5b
    inc [hl]                                      ; $7041: $34
    db $ed                                        ; $7042: $ed
    or $b3                                        ; $7043: $f6 $b3
    ld a, c                                       ; $7045: $79
    adc [hl]                                      ; $7046: $8e
    cp l                                          ; $7047: $bd
    ld a, d                                       ; $7048: $7a
    add hl, de                                    ; $7049: $19
    ld e, a                                       ; $704a: $5f
    ld l, [hl]                                    ; $704b: $6e
    db $fc                                        ; $704c: $fc
    ld b, c                                       ; $704d: $41
    db $fd                                        ; $704e: $fd
    cp l                                          ; $704f: $bd

jr_023_7050:
    ld a, [hl+]                                   ; $7050: $2a
    sub a                                         ; $7051: $97
    add d                                         ; $7052: $82
    dec h                                         ; $7053: $25
    dec a                                         ; $7054: $3d
    jp nz, Jump_000_39db                          ; $7055: $c2 $db $39

    dec a                                         ; $7058: $3d
    cpl                                           ; $7059: $2f
    ld b, a                                       ; $705a: $47
    dec d                                         ; $705b: $15
    or [hl]                                       ; $705c: $b6
    ld l, [hl]                                    ; $705d: $6e

Jump_023_705e:
    push hl                                       ; $705e: $e5
    ld bc, $add6                                  ; $705f: $01 $d6 $ad
    ld l, b                                       ; $7062: $68
    ret c                                         ; $7063: $d8

    cp c                                          ; $7064: $b9
    ld c, c                                       ; $7065: $49
    db $eb                                        ; $7066: $eb
    rst $28                                       ; $7067: $ef
    and b                                         ; $7068: $a0
    ld a, [hl]                                    ; $7069: $7e
    rrca                                          ; $706a: $0f
    ld e, [hl]                                    ; $706b: $5e
    rst $18                                       ; $706c: $df
    db $eb                                        ; $706d: $eb
    rst $28                                       ; $706e: $ef
    and b                                         ; $706f: $a0
    ld b, e                                       ; $7070: $43
    rrca                                          ; $7071: $0f
    ld b, l                                       ; $7072: $45
    jr jr_023_7050                                ; $7073: $18 $db

    add hl, sp                                    ; $7075: $39
    dec a                                         ; $7076: $3d
    jp z, $9daf                                   ; $7077: $ca $af $9d

    call $92f8                                    ; $707a: $cd $f8 $92
    adc e                                         ; $707d: $8b
    rst $10                                       ; $707e: $d7
    ld a, [$610c]                                 ; $707f: $fa $0c $61
    db $db                                        ; $7082: $db
    add hl, sp                                    ; $7083: $39
    ld b, a                                       ; $7084: $47
    ld sp, hl                                     ; $7085: $f9
    ld c, a                                       ; $7086: $4f
    ld l, c                                       ; $7087: $69
    ld c, a                                       ; $7088: $4f
    ld a, [hl]                                    ; $7089: $7e
    push hl                                       ; $708a: $e5
    ld [hl], a                                    ; $708b: $77
    and $d3                                       ; $708c: $e6 $d3
    add a                                         ; $708e: $87
    ld l, c                                       ; $708f: $69
    ld h, b                                       ; $7090: $60
    dec a                                         ; $7091: $3d
    sbc [hl]                                      ; $7092: $9e
    ld e, h                                       ; $7093: $5c
    dec hl                                        ; $7094: $2b
    inc de                                        ; $7095: $13

jr_023_7096:
    ld [hl], l                                    ; $7096: $75
    ld c, d                                       ; $7097: $4a
    ld l, h                                       ; $7098: $6c
    ld h, b                                       ; $7099: $60
    call nz, $ad7a                                ; $709a: $c4 $7a $ad
    rst $08                                       ; $709d: $cf
    cp b                                          ; $709e: $b8
    di                                            ; $709f: $f3
    sub d                                         ; $70a0: $92
    ld h, $28                                     ; $70a1: $26 $28
    cp e                                          ; $70a3: $bb
    jr nc, jr_023_7096                            ; $70a4: $30 $f0

    dec de                                        ; $70a6: $1b
    db $e3                                        ; $70a7: $e3
    ld a, [hl-]                                   ; $70a8: $3a
    ld b, [hl]                                    ; $70a9: $46
    ld a, [hl-]                                   ; $70aa: $3a
    pop af                                        ; $70ab: $f1
    ld de, $db06                                  ; $70ac: $11 $06 $db
    add hl, sp                                    ; $70af: $39
    and a                                         ; $70b0: $a7
    jp nc, $fdf7                                  ; $70b1: $d2 $f7 $fd

    call $ee33                                    ; $70b4: $cd $33 $ee
    adc d                                         ; $70b7: $8a
    add hl, bc                                    ; $70b8: $09
    dec sp                                        ; $70b9: $3b
    ld a, l                                       ; $70ba: $7d
    or a                                          ; $70bb: $b7
    or l                                          ; $70bc: $b5
    xor d                                         ; $70bd: $aa
    ccf                                           ; $70be: $3f
    dec de                                        ; $70bf: $1b
    ld a, a                                       ; $70c0: $7f
    cp l                                          ; $70c1: $bd
    ld a, [hl+]                                   ; $70c2: $2a
    db $e3                                        ; $70c3: $e3
    ld c, e                                       ; $70c4: $4b
    adc $4e                                       ; $70c5: $ce $4e
    ld b, e                                       ; $70c7: $43
    ld l, h                                       ; $70c8: $6c
    cp d                                          ; $70c9: $ba
    jp z, $cfc8                                   ; $70ca: $ca $c8 $cf

    ld c, [hl]                                    ; $70cd: $4e
    reti                                          ; $70ce: $d9


    ld sp, $41a2                                  ; $70cf: $31 $a2 $41
    jp nc, Jump_000_27ba                          ; $70d2: $d2 $ba $27

    rlca                                          ; $70d5: $07
    add h                                         ; $70d6: $84
    ld bc, $39db                                  ; $70d7: $01 $db $39
    ld d, $b9                                     ; $70da: $16 $b9
    ld d, b                                       ; $70dc: $50
    halt                                          ; $70dd: $76
    adc h                                         ; $70de: $8c
    sbc b                                         ; $70df: $98
    rr [hl]                                       ; $70e0: $cb $1e
    ld h, b                                       ; $70e2: $60
    ld a, h                                       ; $70e3: $7c
    ret                                           ; $70e4: $c9


    or c                                          ; $70e5: $b1
    dec bc                                        ; $70e6: $0b
    ld d, l                                       ; $70e7: $55
    ld e, d                                       ; $70e8: $5a
    ld e, a                                       ; $70e9: $5f
    sbc [hl]                                      ; $70ea: $9e
    call $afcb                                    ; $70eb: $cd $cb $af
    inc hl                                        ; $70ee: $23
    reti                                          ; $70ef: $d9


    ld a, c                                       ; $70f0: $79
    pop af                                        ; $70f1: $f1
    ei                                            ; $70f2: $fb
    or b                                          ; $70f3: $b0
    or h                                          ; $70f4: $b4
    ld [hl], a                                    ; $70f5: $77
    ld [hl], d                                    ; $70f6: $72
    ld h, $b1                                     ; $70f7: $26 $b1
    rst $20                                       ; $70f9: $e7
    ld de, $db06                                  ; $70fa: $11 $06 $db
    add hl, sp                                    ; $70fd: $39
    db $dd                                        ; $70fe: $dd
    ld l, a                                       ; $70ff: $6f
    jp nc, $2cbf                                  ; $7100: $d2 $bf $2c

    db $ed                                        ; $7103: $ed
    or l                                          ; $7104: $b5
    cp [hl]                                       ; $7105: $be
    or h                                          ; $7106: $b4
    inc sp                                        ; $7107: $33
    ld h, [hl]                                    ; $7108: $66
    ret nc                                        ; $7109: $d0

    ld c, h                                       ; $710a: $4c
    adc c                                         ; $710b: $89
    xor l                                         ; $710c: $ad
    jp z, $bf18                                   ; $710d: $ca $18 $bf

    ld a, [c]                                     ; $7110: $f2
    sub h                                         ; $7111: $94
    and l                                         ; $7112: $a5
    cp l                                          ; $7113: $bd
    ld d, b                                       ; $7114: $50
    xor c                                         ; $7115: $a9
    ld e, c                                       ; $7116: $59
    xor b                                         ; $7117: $a8
    pop bc                                        ; $7118: $c1
    xor l                                         ; $7119: $ad
    inc [hl]                                      ; $711a: $34
    adc $8e                                       ; $711b: $ce $8e
    ret                                           ; $711d: $c9


    cp a                                          ; $711e: $bf
    nop                                           ; $711f: $00
    db $c2                                        ; $7120: $c2

    db $db, $39, $c7, $5d, $01, $5f, $9d, $92, $a7, $59, $6f, $e5, $37, $5c, $da, $3b
    db $46, $34, $48, $5a, $f7, $e4, $80, $30

    db $db                                        ; $7139: $db
    add hl, sp                                    ; $713a: $39
    rst $00                                       ; $713b: $c7
    and l                                         ; $713c: $a5
    ld hl, $6cf6                                  ; $713d: $21 $f6 $6c
    dec l                                         ; $7140: $2d
    ld a, d                                       ; $7141: $7a
    ret                                           ; $7142: $c9


    ld [hl], a                                    ; $7143: $77
    or d                                          ; $7144: $b2
    and c                                         ; $7145: $a1
    jr nz, @+$6d                                  ; $7146: $20 $6b

    or b                                          ; $7148: $b0
    sub $84                                       ; $7149: $d6 $84
    adc $75                                       ; $714b: $ce $75
    adc l                                         ; $714d: $8d
    or e                                          ; $714e: $b3
    ld d, e                                       ; $714f: $53
    halt                                          ; $7150: $76
    or d                                          ; $7151: $b2
    ld b, $b7                                     ; $7152: $06 $b7
    jp nc, $a3b8                                  ; $7154: $d2 $b8 $a3

    ld l, [hl]                                    ; $7157: $6e
    inc c                                         ; $7158: $0c
    sbc a                                         ; $7159: $9f
    inc e                                         ; $715a: $1c
    and [hl]                                      ; $715b: $a6
    call nz, $a166                                ; $715c: $c4 $66 $a1
    di                                            ; $715f: $f3
    adc h                                         ; $7160: $8c
    call c, $8407                                 ; $7161: $dc $07 $84
    ld bc, $39db                                  ; $7164: $01 $db $39
    rst $00                                       ; $7167: $c7
    ld e, l                                       ; $7168: $5d
    ld bc, $7f1f                                  ; $7169: $01 $1f $7f
    add hl, sp                                    ; $716c: $39
    xor d                                         ; $716d: $aa
    or b                                          ; $716e: $b0
    ld a, c                                       ; $716f: $79
    xor [hl]                                      ; $7170: $ae
    db $fd                                        ; $7171: $fd
    dec bc                                        ; $7172: $0b
    ld d, d                                       ; $7173: $52
    sbc [hl]                                      ; $7174: $9e
    xor l                                         ; $7175: $ad
    db $dd                                        ; $7176: $dd
    ld c, h                                       ; $7177: $4c
    ld l, c                                       ; $7178: $69
    ld b, a                                       ; $7179: $47
    reti                                          ; $717a: $d9


    ld [hl], d                                    ; $717b: $72
    dec hl                                        ; $717c: $2b
    and l                                         ; $717d: $a5
    dec e                                         ; $717e: $1d
    dec hl                                        ; $717f: $2b
    ld h, $ec                                     ; $7180: $26 $ec
    inc a                                         ; $7182: $3c
    add hl, sp                                    ; $7183: $39
    jp nz, Jump_000_39db                          ; $7184: $c2 $db $39

    rst $00                                       ; $7187: $c7
    ld e, l                                       ; $7188: $5d
    ld bc, $51df                                  ; $7189: $01 $df $51
    ld [hl], d                                    ; $718c: $72
    cp l                                          ; $718d: $bd
    add h                                         ; $718e: $84
    ld c, d                                       ; $718f: $4a
    push de                                       ; $7190: $d5
    srl h                                         ; $7191: $cb $3c
    rst $30                                       ; $7193: $f7
    ldh [$da], a                                  ; $7194: $e0 $da
    adc [hl]                                      ; $7196: $8e
    rla                                           ; $7197: $17
    jp z, $fcbc                                   ; $7198: $ca $bc $fc

    ld b, d                                       ; $719b: $42
    dec c                                         ; $719c: $0d
    ld l, [hl]                                    ; $719d: $6e
    and l                                         ; $719e: $a5
    ld [hl], c                                    ; $719f: $71
    dec e                                         ; $71a0: $1d
    ret                                           ; $71a1: $c9


    adc $8b                                       ; $71a2: $ce $8b
    rst $18                                       ; $71a4: $df
    add a                                         ; $71a5: $87
    and l                                         ; $71a6: $a5
    dec a                                         ; $71a7: $3d
    cpl                                           ; $71a8: $2f
    ccf                                           ; $71a9: $3f
    ld [hl-], a                                   ; $71aa: $32
    ld h, c                                       ; $71ab: $61
    ei                                            ; $71ac: $fb
    ld h, l                                       ; $71ad: $65
    ldh a, [$d6]                                  ; $71ae: $f0 $d6
    daa                                           ; $71b0: $27
    add h                                         ; $71b1: $84
    ld bc, $39db                                  ; $71b2: $01 $db $39
    db $dd                                        ; $71b5: $dd
    or d                                          ; $71b6: $b2
    ld l, a                                       ; $71b7: $6f
    dec sp                                        ; $71b8: $3b
    dec c                                         ; $71b9: $0d
    or c                                          ; $71ba: $b1
    sub a                                         ; $71bb: $97
    and l                                         ; $71bc: $a5
    cp l                                          ; $71bd: $bd
    sub $0c                                       ; $71be: $d6 $0c
    ld a, b                                       ; $71c0: $78
    dec d                                         ; $71c1: $15
    rlca                                          ; $71c2: $07
    or h                                          ; $71c3: $b4
    db $e3                                        ; $71c4: $e3
    push de                                       ; $71c5: $d5
    ld a, [$172b]                                 ; $71c6: $fa $2b $17
    ld b, [hl]                                    ; $71c9: $46
    ld a, [de]                                    ; $71ca: $1a
    cp $3c                                        ; $71cb: $fe $3c
    sub a                                         ; $71cd: $97
    db $f4                                        ; $71ce: $f4
    ld c, e                                       ; $71cf: $4b
    ld a, e                                       ; $71d0: $7b
    ld e, [hl]                                    ; $71d1: $5e
    ld a, [hl]                                    ; $71d2: $7e
    halt                                          ; $71d3: $76
    ld a, [de]                                    ; $71d4: $1a
    ld e, c                                       ; $71d5: $59
    ld l, e                                       ; $71d6: $6b
    ld b, $bc                                     ; $71d7: $06 $bc
    adc d                                         ; $71d9: $8a
    jp $d35a                                      ; $71da: $c3 $5a $d3


    ret nz                                        ; $71dd: $c0

    inc bc                                        ; $71de: $03
    jp nz, Jump_000_39db                          ; $71df: $c2 $db $39

    rst $00                                       ; $71e2: $c7
    ld l, c                                       ; $71e3: $69
    sbc b                                         ; $71e4: $98
    ld b, $06                                     ; $71e5: $06 $06
    sbc l                                         ; $71e7: $9d
    adc a                                         ; $71e8: $8f
    or c                                          ; $71e9: $b1
    sbc l                                         ; $71ea: $9d
    ld e, c                                       ; $71eb: $59
    rra                                           ; $71ec: $1f
    cpl                                           ; $71ed: $2f
    rst $10                                       ; $71ee: $d7
    ld e, a                                       ; $71ef: $5f
    db $10                                        ; $71f0: $10
    ld b, $db                                     ; $71f1: $06 $db
    add hl, sp                                    ; $71f3: $39
    db $dd                                        ; $71f4: $dd
    or d                                          ; $71f5: $b2
    ld l, a                                       ; $71f6: $6f
    dec sp                                        ; $71f7: $3b
    dec c                                         ; $71f8: $0d
    or c                                          ; $71f9: $b1
    sub a                                         ; $71fa: $97
    and l                                         ; $71fb: $a5
    cp l                                          ; $71fc: $bd
    sub $0c                                       ; $71fd: $d6 $0c
    ld a, b                                       ; $71ff: $78
    dec d                                         ; $7200: $15
    rlca                                          ; $7201: $07
    or h                                          ; $7202: $b4
    db $e3                                        ; $7203: $e3
    push de                                       ; $7204: $d5
    ld a, [$172b]                                 ; $7205: $fa $2b $17
    ld b, [hl]                                    ; $7208: $46
    ld a, [de]                                    ; $7209: $1a
    cp $3c                                        ; $720a: $fe $3c
    sub a                                         ; $720c: $97
    db $f4                                        ; $720d: $f4
    ld c, e                                       ; $720e: $4b
    ld a, e                                       ; $720f: $7b
    ld e, [hl]                                    ; $7210: $5e
    ld a, [hl]                                    ; $7211: $7e
    halt                                          ; $7212: $76
    ld a, [de]                                    ; $7213: $1a
    ld e, c                                       ; $7214: $59
    ld l, e                                       ; $7215: $6b
    ld b, $bc                                     ; $7216: $06 $bc
    adc d                                         ; $7218: $8a
    jp $d35a                                      ; $7219: $c3 $5a $d3


    ret nz                                        ; $721c: $c0

jr_023_721d:
    inc bc                                        ; $721d: $03
    jp nz, Jump_000_39db                          ; $721e: $c2 $db $39

    daa                                           ; $7221: $27
    ld a, l                                       ; $7222: $7d
    ldh a, [$c4]                                  ; $7223: $f0 $c4
    ld d, h                                       ; $7225: $54
    sbc d                                         ; $7226: $9a
    pop af                                        ; $7227: $f1
    rst $10                                       ; $7228: $d7
    xor e                                         ; $7229: $ab
    ld [hl-], a                                   ; $722a: $32
    cp [hl]                                       ; $722b: $be
    db $e4                                        ; $722c: $e4
    ld e, h                                       ; $722d: $5c
    db $f4                                        ; $722e: $f4
    jp nc, $35b3                                  ; $722f: $d2 $b3 $35

    ld l, c                                       ; $7232: $69
    jr z, @+$1a                                   ; $7233: $28 $18

    and h                                         ; $7235: $a4
    ld d, h                                       ; $7236: $54
    cpl                                           ; $7237: $2f
    cpl                                           ; $7238: $2f
    or b                                          ; $7239: $b0
    ld c, e                                       ; $723a: $4b
    or e                                          ; $723b: $b3
    ret z                                         ; $723c: $c8

    ld b, a                                       ; $723d: $47
    dec h                                         ; $723e: $25
    add [hl]                                      ; $723f: $86
    jr nc, jr_023_721d                            ; $7240: $30 $db

    add hl, sp                                    ; $7242: $39
    db $dd                                        ; $7243: $dd
    or d                                          ; $7244: $b2
    ld l, a                                       ; $7245: $6f
    dec sp                                        ; $7246: $3b
    dec c                                         ; $7247: $0d
    or c                                          ; $7248: $b1
    sub a                                         ; $7249: $97
    and l                                         ; $724a: $a5
    cp l                                          ; $724b: $bd
    sub $0c                                       ; $724c: $d6 $0c
    ld a, b                                       ; $724e: $78
    dec d                                         ; $724f: $15
    rlca                                          ; $7250: $07
    or h                                          ; $7251: $b4
    db $e3                                        ; $7252: $e3
    push de                                       ; $7253: $d5
    ld a, [$2f2b]                                 ; $7254: $fa $2b $2f
    inc hl                                        ; $7257: $23
    dec c                                         ; $7258: $0d
    ld a, a                                       ; $7259: $7f
    sbc [hl]                                      ; $725a: $9e
    ld c, e                                       ; $725b: $4b
    ld a, [$3da5]                                 ; $725c: $fa $a5 $3d
    cpl                                           ; $725f: $2f
    ccf                                           ; $7260: $3f
    dec sp                                        ; $7261: $3b
    adc l                                         ; $7262: $8d
    xor h                                         ; $7263: $ac
    dec [hl]                                      ; $7264: $35
    inc bc                                        ; $7265: $03
    ld e, [hl]                                    ; $7266: $5e
    push bc                                       ; $7267: $c5
    ld h, c                                       ; $7268: $61
    xor l                                         ; $7269: $ad
    ld l, c                                       ; $726a: $69
    ldh [rSB], a                                  ; $726b: $e0 $01
    ld h, c                                       ; $726d: $61
    db $db                                        ; $726e: $db
    add hl, sp                                    ; $726f: $39
    db $dd                                        ; $7270: $dd
    or d                                          ; $7271: $b2
    ld l, a                                       ; $7272: $6f
    dec sp                                        ; $7273: $3b
    dec c                                         ; $7274: $0d
    or c                                          ; $7275: $b1

Call_023_7276:
    sub a                                         ; $7276: $97
    and l                                         ; $7277: $a5
    cp l                                          ; $7278: $bd
    sub $0c                                       ; $7279: $d6 $0c
    ld a, b                                       ; $727b: $78
    dec d                                         ; $727c: $15
    rlca                                          ; $727d: $07
    or h                                          ; $727e: $b4
    db $e3                                        ; $727f: $e3
    push de                                       ; $7280: $d5
    ld a, [$2f2b]                                 ; $7281: $fa $2b $2f
    inc hl                                        ; $7284: $23
    dec c                                         ; $7285: $0d
    ld a, a                                       ; $7286: $7f
    sbc [hl]                                      ; $7287: $9e
    ld c, e                                       ; $7288: $4b
    ld a, [$3da5]                                 ; $7289: $fa $a5 $3d
    cpl                                           ; $728c: $2f
    ccf                                           ; $728d: $3f
    dec sp                                        ; $728e: $3b
    adc l                                         ; $728f: $8d
    xor h                                         ; $7290: $ac
    dec [hl]                                      ; $7291: $35
    inc bc                                        ; $7292: $03
    ld e, [hl]                                    ; $7293: $5e
    push bc                                       ; $7294: $c5
    ld h, c                                       ; $7295: $61
    xor l                                         ; $7296: $ad
    ld l, c                                       ; $7297: $69
    ldh [rSB], a                                  ; $7298: $e0 $01
    ld h, c                                       ; $729a: $61
    db $db                                        ; $729b: $db
    add hl, sp                                    ; $729c: $39
    rst $00                                       ; $729d: $c7
    and l                                         ; $729e: $a5
    ld hl, $6cf6                                  ; $729f: $21 $f6 $6c
    ld e, [hl]                                    ; $72a2: $5e
    ld a, [hl]                                    ; $72a3: $7e
    sub $1b                                       ; $72a4: $d6 $1b
    and e                                         ; $72a6: $a3
    ld b, $bf                                     ; $72a7: $06 $bf
    or h                                          ; $72a9: $b4
    rst $10                                       ; $72aa: $d7
    sbc d                                         ; $72ab: $9a
    ld bc, $af84                                  ; $72ac: $01 $84 $af
    db $ec                                        ; $72af: $ec
    ld de, $db06                                  ; $72b0: $11 $06 $db
    add hl, sp                                    ; $72b3: $39
    rst $00                                       ; $72b4: $c7
    ld e, l                                       ; $72b5: $5d
    ld bc, $545f                                  ; $72b6: $01 $5f $54
    ld h, d                                       ; $72b9: $62
    ld d, c                                       ; $72ba: $51
    ld e, c                                       ; $72bb: $59
    or e                                          ; $72bc: $b3
    or h                                          ; $72bd: $b4
    rst $20                                       ; $72be: $e7
    push hl                                       ; $72bf: $e5
    ld [hl], a                                    ; $72c0: $77
    jp nc, $bd6b                                  ; $72c1: $d2 $6b $bd

    ld e, c                                       ; $72c4: $59
    scf                                           ; $72c5: $37
    dec [hl]                                      ; $72c6: $35

Jump_023_72c7:
    sub c                                         ; $72c7: $91
    ld c, c                                       ; $72c8: $49
    ld [de], a                                    ; $72c9: $12
    jp nz, Jump_000_39db                          ; $72ca: $c2 $db $39

    xor l                                         ; $72cd: $ad
    xor a                                         ; $72ce: $af
    inc l                                         ; $72cf: $2c
    ld d, h                                       ; $72d0: $54
    ldh a, [$97]                                  ; $72d1: $f0 $97
    and l                                         ; $72d3: $a5
    cp l                                          ; $72d4: $bd
    sub $0c                                       ; $72d5: $d6 $0c
    ld a, b                                       ; $72d7: $78
    dec d                                         ; $72d8: $15
    rlca                                          ; $72d9: $07
    or h                                          ; $72da: $b4
    db $e3                                        ; $72db: $e3
    db $e4                                        ; $72dc: $e4
    ld a, $b1                                     ; $72dd: $3e $b1
    ld a, c                                       ; $72df: $79
    xor $94                                       ; $72e0: $ee $94
    ld e, e                                       ; $72e2: $5b
    ld h, l                                       ; $72e3: $65
    ld d, h                                       ; $72e4: $54
    ret c                                         ; $72e5: $d8

    ld [hl], c                                    ; $72e6: $71
    ld d, c                                       ; $72e7: $51
    jp $eb8f                                      ; $72e8: $c3 $8f $eb


    ld a, e                                       ; $72eb: $7b
    ld d, $b2                                     ; $72ec: $16 $b2
    ld a, $79                                     ; $72ee: $3e $79
    jp z, $9ed2                                   ; $72f0: $ca $d2 $9e

    sub a                                         ; $72f3: $97
    ld e, a                                       ; $72f4: $5f
    ld c, e                                       ; $72f5: $4b
    ld c, d                                       ; $72f6: $4a
    push af                                       ; $72f7: $f5
    ld a, [c]                                     ; $72f8: $f2
    ld d, d                                       ; $72f9: $52
    add e                                         ; $72fa: $83
    or l                                          ; $72fb: $b5
    ld a, b                                       ; $72fc: $78
    jp nc, Jump_000_0c23                          ; $72fd: $d2 $23 $0c

    db $db                                        ; $7300: $db
    add hl, sp                                    ; $7301: $39
    ld b, a                                       ; $7302: $47
    dec hl                                        ; $7303: $2b
    ret nz                                        ; $7304: $c0

    ld a, [hl-]                                   ; $7305: $3a
    ld d, c                                       ; $7306: $51
    sbc e                                         ; $7307: $9b

jr_023_7308:
    sub a                                         ; $7308: $97
    pop af                                        ; $7309: $f1
    rst $10                                       ; $730a: $d7
    res 7, h                                      ; $730b: $cb $bc
    db $fc                                        ; $730d: $fc
    ld a, [hl-]                                   ; $730e: $3a
    reti                                          ; $730f: $d9


    ld sp, $6551                                  ; $7310: $31 $51 $65
    db $fc                                        ; $7313: $fc
    push hl                                       ; $7314: $e5
    xor b                                         ; $7315: $a8
    jp nz, Jump_000_052e                          ; $7316: $c2 $2e $05

    ld l, e                                       ; $7319: $6b
    dec hl                                        ; $731a: $2b
    or c                                          ; $731b: $b1
    push af                                       ; $731c: $f5
    jr z, @-$3f                                   ; $731d: $28 $bf

    sbc [hl]                                      ; $731f: $9e
    ld a, a                                       ; $7320: $7f
    add l                                         ; $7321: $85
    xor l                                         ; $7322: $ad
    push hl                                       ; $7323: $e5
    add d                                         ; $7324: $82
    cp a                                          ; $7325: $bf
    nop                                           ; $7326: $00
    jp nz, Jump_000_39db                          ; $7327: $c2 $db $39

    db $dd                                        ; $732a: $dd
    ld [hl-], a                                   ; $732b: $32
    db $ec                                        ; $732c: $ec
    inc h                                         ; $732d: $24
    cp h                                          ; $732e: $bc
    inc l                                         ; $732f: $2c
    db $ed                                        ; $7330: $ed
    ld a, c                                       ; $7331: $79
    ld sp, hl                                     ; $7332: $f9
    add hl, de                                    ; $7333: $19
    or d                                          ; $7334: $b2
    cpl                                           ; $7335: $2f
    ld e, l                                       ; $7336: $5d
    jr z, jr_023_7308                             ; $7337: $28 $cf

    sub $f3                                       ; $7339: $d6 $f3
    ld [hl], d                                    ; $733b: $72
    ld d, h                                       ; $733c: $54
    ld h, c                                       ; $733d: $61
    sub a                                         ; $733e: $97
    add d                                         ; $733f: $82
    or l                                          ; $7340: $b5
    sbc b                                         ; $7341: $98
    db $eb                                        ; $7342: $eb
    rst $08                                       ; $7343: $cf
    dec e                                         ; $7344: $1d
    ld e, a                                       ; $7345: $5f
    ld l, [hl]                                    ; $7346: $6e
    ld d, l                                       ; $7347: $55
    ld h, [hl]                                    ; $7348: $66
    cp a                                          ; $7349: $bf
    cp d                                          ; $734a: $ba
    sub c                                         ; $734b: $91
    add a                                         ; $734c: $87
    add hl, hl                                    ; $734d: $29
    db $ed                                        ; $734e: $ed
    add hl, sp                                    ; $734f: $39
    ld [hl], h                                    ; $7350: $74
    ld h, d                                       ; $7351: $62
    or d                                          ; $7352: $b2
    ld c, e                                       ; $7353: $4b
    pop bc                                        ; $7354: $c1
    call c, $15b4                                 ; $7355: $dc $b4 $15
    ld h, c                                       ; $7358: $61
    db $db                                        ; $7359: $db
    add hl, sp                                    ; $735a: $39
    db $dd                                        ; $735b: $dd
    and e                                         ; $735c: $a3
    ld [hl], $b0                                  ; $735d: $36 $b0
    or [hl]                                       ; $735f: $b6
    ld b, $9d                                     ; $7360: $06 $9d
    db $db                                        ; $7362: $db
    ld a, c                                       ; $7363: $79
    jr jr_023_73e5                                ; $7364: $18 $7f

    cp l                                          ; $7366: $bd
    call z, $afcb                                 ; $7367: $cc $cb $af
    sub e                                         ; $736a: $93
    dec e                                         ; $736b: $1d
    inc de                                        ; $736c: $13
    ld d, l                                       ; $736d: $55
    add $5f                                       ; $736e: $c6 $5f
    adc [hl]                                      ; $7370: $8e
    ld a, [hl+]                                   ; $7371: $2a
    db $ec                                        ; $7372: $ec
    ld d, d                                       ; $7373: $52
    or b                                          ; $7374: $b0
    or [hl]                                       ; $7375: $b6
    ld [de], a                                    ; $7376: $12
    ld e, e                                       ; $7377: $5b
    adc a                                         ; $7378: $8f
    ld a, [c]                                     ; $7379: $f2
    db $eb                                        ; $737a: $eb
    ld sp, hl                                     ; $737b: $f9
    ld d, a                                       ; $737c: $57
    ret c                                         ; $737d: $d8

    ld e, d                                       ; $737e: $5a
    ld l, $f8                                     ; $737f: $2e $f8
    dec bc                                        ; $7381: $0b
    jr nz, jr_023_7390                            ; $7382: $20 $0c

    db $db                                        ; $7384: $db
    add hl, sp                                    ; $7385: $39
    db $dd                                        ; $7386: $dd
    and e                                         ; $7387: $a3
    ld [hl], $b0                                  ; $7388: $36 $b0
    ld l, b                                       ; $738a: $68
    db $fc                                        ; $738b: $fc
    rst $00                                       ; $738c: $c7
    ld e, a                                       ; $738d: $5f
    cpl                                           ; $738e: $2f
    di                                            ; $738f: $f3

jr_023_7390:
    ld a, [c]                                     ; $7390: $f2
    db $eb                                        ; $7391: $eb
    ld h, h                                       ; $7392: $64

Jump_023_7393:
    rst $00                                       ; $7393: $c7
    ld b, h                                       ; $7394: $44
    sub l                                         ; $7395: $95
    pop af                                        ; $7396: $f1
    sub a                                         ; $7397: $97
    and e                                         ; $7398: $a3
    ld a, [bc]                                    ; $7399: $0a
    cp e                                          ; $739a: $bb
    inc d                                         ; $739b: $14
    xor h                                         ; $739c: $ac
    xor l                                         ; $739d: $ad
    call nz, $a3d6                                ; $739e: $c4 $d6 $a3
    db $fc                                        ; $73a1: $fc
    ld a, d                                       ; $73a2: $7a
    cp $15                                        ; $73a3: $fe $15
    or [hl]                                       ; $73a5: $b6
    sub [hl]                                      ; $73a6: $96
    dec bc                                        ; $73a7: $0b
    cp $02                                        ; $73a8: $fe $02
    ld [$db03], sp                                ; $73aa: $08 $03 $db
    add hl, sp                                    ; $73ad: $39
    db $dd                                        ; $73ae: $dd
    and e                                         ; $73af: $a3
    ld [hl], $b0                                  ; $73b0: $36 $b0
    ld hl, sp-$36                                 ; $73b2: $f8 $ca
    ld d, $98                                     ; $73b4: $16 $98
    db $eb                                        ; $73b6: $eb
    ld a, [hl+]                                   ; $73b7: $2a
    db $e3                                        ; $73b8: $e3
    xor a                                         ; $73b9: $af
    sub a                                         ; $73ba: $97
    ld a, c                                       ; $73bb: $79
    ld sp, hl                                     ; $73bc: $f9
    ld [hl], l                                    ; $73bd: $75
    or d                                          ; $73be: $b2
    ld h, e                                       ; $73bf: $63
    and d                                         ; $73c0: $a2
    jp z, $cbf8                                   ; $73c1: $ca $f8 $cb

    ld d, c                                       ; $73c4: $51
    add l                                         ; $73c5: $85
    ld e, l                                       ; $73c6: $5d
    ld a, [bc]                                    ; $73c7: $0a
    sub $56                                       ; $73c8: $d6 $56
    ld h, d                                       ; $73ca: $62

Jump_023_73cb:
    db $eb                                        ; $73cb: $eb
    ld d, c                                       ; $73cc: $51
    ld a, [hl]                                    ; $73cd: $7e
    dec a                                         ; $73ce: $3d
    rst $38                                       ; $73cf: $ff
    ld a, [bc]                                    ; $73d0: $0a
    ld e, e                                       ; $73d1: $5b
    rlc l                                         ; $73d2: $cb $05
    ld a, a                                       ; $73d4: $7f
    ld bc, $0184                                  ; $73d5: $01 $84 $01

jr_023_73d8:
    db $db                                        ; $73d8: $db
    add hl, sp                                    ; $73d9: $39
    daa                                           ; $73da: $27
    cp l                                          ; $73db: $bd
    or d                                          ; $73dc: $b2

jr_023_73dd:
    pop bc                                        ; $73dd: $c1
    and l                                         ; $73de: $a5
    ldh [$65], a                                  ; $73df: $e0 $65
    ld l, c                                       ; $73e1: $69
    rst $08                                       ; $73e2: $cf
    res 5, a                                      ; $73e3: $cb $af

jr_023_73e5:
    sub e                                         ; $73e5: $93
    dec e                                         ; $73e6: $1d
    inc de                                        ; $73e7: $13
    ld d, l                                       ; $73e8: $55
    add $5f                                       ; $73e9: $c6 $5f
    adc [hl]                                      ; $73eb: $8e
    ld a, [hl+]                                   ; $73ec: $2a
    db $ec                                        ; $73ed: $ec
    ld d, d                                       ; $73ee: $52
    or b                                          ; $73ef: $b0
    or [hl]                                       ; $73f0: $b6
    ld [de], a                                    ; $73f1: $12
    ld e, e                                       ; $73f2: $5b
    adc a                                         ; $73f3: $8f
    ld a, [c]                                     ; $73f4: $f2
    db $eb                                        ; $73f5: $eb
    ld sp, hl                                     ; $73f6: $f9
    ld d, a                                       ; $73f7: $57
    ret c                                         ; $73f8: $d8

    ld e, d                                       ; $73f9: $5a
    ld l, $f8                                     ; $73fa: $2e $f8
    dec bc                                        ; $73fc: $0b
    jr nz, @+$0e                                  ; $73fd: $20 $0c

    db $db                                        ; $73ff: $db
    add hl, sp                                    ; $7400: $39
    db $dd                                        ; $7401: $dd
    and e                                         ; $7402: $a3
    ld [hl], $30                                  ; $7403: $36 $30
    ld h, $26                                     ; $7405: $26 $26
    add h                                         ; $7407: $84
    pop af                                        ; $7408: $f1
    rst $10                                       ; $7409: $d7
    res 7, h                                      ; $740a: $cb $bc
    db $fc                                        ; $740c: $fc
    ld a, [hl-]                                   ; $740d: $3a
    reti                                          ; $740e: $d9


    ld sp, $6551                                  ; $740f: $31 $51 $65
    db $fc                                        ; $7412: $fc
    push hl                                       ; $7413: $e5
    xor b                                         ; $7414: $a8

jr_023_7415:
    jp nz, Jump_000_052e                          ; $7415: $c2 $2e $05

    ld l, e                                       ; $7418: $6b
    dec hl                                        ; $7419: $2b
    or c                                          ; $741a: $b1
    push af                                       ; $741b: $f5
    jr z, jr_023_73dd                             ; $741c: $28 $bf

    sbc [hl]                                      ; $741e: $9e
    ld a, a                                       ; $741f: $7f
    add l                                         ; $7420: $85
    xor l                                         ; $7421: $ad
    push hl                                       ; $7422: $e5
    add d                                         ; $7423: $82
    cp a                                          ; $7424: $bf
    nop                                           ; $7425: $00
    jp nz, Jump_000_39db                          ; $7426: $c2 $db $39

    db $dd                                        ; $7429: $dd
    or e                                          ; $742a: $b3
    ld h, e                                       ; $742b: $63
    and d                                         ; $742c: $a2
    jp z, $52e0                                   ; $742d: $ca $e0 $52

    ld [hl], b                                    ; $7430: $70
    add hl, hl                                    ; $7431: $29
    jr jr_023_73d8                                ; $7432: $18 $a4

    ld d, h                                       ; $7434: $54
    cpl                                           ; $7435: $2f
    rrca                                          ; $7436: $0f
    add b                                         ; $7437: $80
    jr nc, jr_023_7415                            ; $7438: $30 $db

    add hl, sp                                    ; $743a: $39
    db $dd                                        ; $743b: $dd
    and e                                         ; $743c: $a3
    ld [hl], $30                                  ; $743d: $36 $30
    add hl, hl                                    ; $743f: $29
    adc l                                         ; $7440: $8d
    sub a                                         ; $7441: $97

jr_023_7442:
    ld [hl], b                                    ; $7442: $70
    add c                                         ; $7443: $81
    cp c                                          ; $7444: $b9
    xor [hl]                                      ; $7445: $ae
    ld [hl-], a                                   ; $7446: $32
    cp $7a                                        ; $7447: $fe $7a
    sbc c                                         ; $7449: $99
    sub a                                         ; $744a: $97
    ld e, a                                       ; $744b: $5f
    daa                                           ; $744c: $27
    dec sp                                        ; $744d: $3b
    ld h, $aa                                     ; $744e: $26 $aa
    adc h                                         ; $7450: $8c
    cp a                                          ; $7451: $bf
    inc e                                         ; $7452: $1c
    ld d, l                                       ; $7453: $55
    ret c                                         ; $7454: $d8

    and l                                         ; $7455: $a5
    ld h, b                                       ; $7456: $60
    ld l, l                                       ; $7457: $6d
    dec h                                         ; $7458: $25
    or [hl]                                       ; $7459: $b6
    ld e, $e5                                     ; $745a: $1e $e5
    rst $10                                       ; $745c: $d7
    di                                            ; $745d: $f3
    xor a                                         ; $745e: $af
    or b                                          ; $745f: $b0
    or l                                          ; $7460: $b5
    ld e, h                                       ; $7461: $5c
    ldh a, [rNR22]                                ; $7462: $f0 $17
    ld b, b                                       ; $7464: $40
    jr jr_023_7442                                ; $7465: $18 $db

    add hl, sp                                    ; $7467: $39
    db $dd                                        ; $7468: $dd
    and e                                         ; $7469: $a3
    ld [hl], $b0                                  ; $746a: $36 $b0
    ld [$cc63], a                                 ; $746c: $ea $63 $cc
    pop af                                        ; $746f: $f1
    rst $10                                       ; $7470: $d7
    res 7, h                                      ; $7471: $cb $bc
    db $fc                                        ; $7473: $fc
    ld a, [hl-]                                   ; $7474: $3a
    reti                                          ; $7475: $d9


    ld sp, $6551                                  ; $7476: $31 $51 $65
    db $fc                                        ; $7479: $fc
    push hl                                       ; $747a: $e5
    xor b                                         ; $747b: $a8
    jp nz, Jump_023_56d6                          ; $747c: $c2 $d6 $56

    ld h, d                                       ; $747f: $62
    db $eb                                        ; $7480: $eb
    ld d, c                                       ; $7481: $51
    ld a, [hl]                                    ; $7482: $7e
    dec a                                         ; $7483: $3d
    rst $38                                       ; $7484: $ff
    ld a, [bc]                                    ; $7485: $0a
    ld e, e                                       ; $7486: $5b
    rlc l                                         ; $7487: $cb $05
    ld a, a                                       ; $7489: $7f
    ld bc, $0184                                  ; $748a: $01 $84 $01
    db $db                                        ; $748d: $db
    add hl, sp                                    ; $748e: $39
    rst $00                                       ; $748f: $c7
    ld l, c                                       ; $7490: $69
    sbc b                                         ; $7491: $98
    ld b, $66                                     ; $7492: $06 $66
    and a                                         ; $7494: $a7
    adc h                                         ; $7495: $8c
    cp l                                          ; $7496: $bd
    push af                                       ; $7497: $f5
    ld h, e                                       ; $7498: $63
    halt                                          ; $7499: $76
    ld l, $05                                     ; $749a: $2e $05
    di                                            ; $749c: $f3
    ld a, [c]                                     ; $749d: $f2
    dec sp                                        ; $749e: $3b
    ld a, $23                                     ; $749f: $3e $23
    ld a, e                                       ; $74a1: $7b
    ld e, d                                       ; $74a2: $5a
    dec bc                                        ; $74a3: $0b
    ld e, l                                       ; $74a4: $5d
    xor a                                         ; $74a5: $af
    ld a, [bc]                                    ; $74a6: $0a
    jp nz, Jump_000_39db                          ; $74a7: $c2 $db $39

    and a                                         ; $74aa: $a7
    ld a, a                                       ; $74ab: $7f
    sub l                                         ; $74ac: $95
    jp nz, $a766                                  ; $74ad: $c2 $66 $a7

    xor h                                         ; $74b0: $ac
    call c, $3ca0                                 ; $74b1: $dc $a0 $3c
    ld hl, sp-$38                                 ; $74b4: $f8 $c8
    add h                                         ; $74b6: $84
    db $ed                                        ; $74b7: $ed
    sub a                                         ; $74b8: $97
    and l                                         ; $74b9: $a5
    cp l                                          ; $74ba: $bd
    db $d3                                        ; $74bb: $d3
    call z, $ec65                                 ; $74bc: $cc $65 $ec
    ld a, d                                       ; $74bf: $7a
    ld d, l                                       ; $74c0: $55
    ld d, $a4                                     ; $74c1: $16 $a4
    ld b, [hl]                                    ; $74c3: $46
    jr jr_023_74f9                                ; $74c4: $18 $33

    ld [hl], d                                    ; $74c6: $72
    add hl, hl                                    ; $74c7: $29
    ret c                                         ; $74c8: $d8

    pop de                                        ; $74c9: $d1
    ld [hl], d                                    ; $74ca: $72
    db $fd                                        ; $74cb: $fd

Jump_023_74cc:
    ld b, d                                       ; $74cc: $42
    add hl, de                                    ; $74cd: $19
    cp h                                          ; $74ce: $bc
    ld b, d                                       ; $74cf: $42
    jp nc, Jump_023_5cbc                          ; $74d0: $d2 $bc $5c

    ld e, b                                       ; $74d3: $58
    push af                                       ; $74d4: $f5
    db $e4                                        ; $74d5: $e4
    ld b, [hl]                                    ; $74d6: $46
    ld a, [de]                                    ; $74d7: $1a
    add h                                         ; $74d8: $84
    ld bc, $39db                                  ; $74d9: $01 $db $39
    db $dd                                        ; $74dc: $dd
    or h                                          ; $74dd: $b4
    db $e3                                        ; $74de: $e3
    ld a, d                                       ; $74df: $7a
    ld l, c                                       ; $74e0: $69
    ld l, c                                       ; $74e1: $69
    cpl                                           ; $74e2: $2f

jr_023_74e3:
    add hl, hl                                    ; $74e3: $29
    ld [hl], $d3                                  ; $74e4: $36 $d3
    jr jr_023_74e3                                ; $74e6: $18 $fb

    or [hl]                                       ; $74e8: $b6
    ccf                                           ; $74e9: $3f
    call nc, $23f8                                ; $74ea: $d4 $f8 $23
    push af                                       ; $74ed: $f5
    sbc e                                         ; $74ee: $9b
    and h                                         ; $74ef: $a4
    ld [hl], c                                    ; $74f0: $71
    and a                                         ; $74f1: $a7
    sbc c                                         ; $74f2: $99
    set 3, b                                      ; $74f3: $cb $d8
    push af                                       ; $74f5: $f5
    xor d                                         ; $74f6: $aa
    xor h                                         ; $74f7: $ac
    rst $00                                       ; $74f8: $c7

jr_023_74f9:
    ld l, e                                       ; $74f9: $6b
    ret z                                         ; $74fa: $c8

    sbc l                                         ; $74fb: $9d
    sub a                                         ; $74fc: $97
    ld e, a                                       ; $74fd: $5f
    ld l, e                                       ; $74fe: $6b
    add $a6                                       ; $74ff: $c6 $a6
    cp h                                          ; $7501: $bc
    or d                                          ; $7502: $b2
    or l                                          ; $7503: $b5
    xor d                                         ; $7504: $aa

jr_023_7505:
    ld [hl], h                                    ; $7505: $74
    xor $03                                       ; $7506: $ee $03
    jp nz, Jump_000_39db                          ; $7508: $c2 $db $39

    and a                                         ; $750b: $a7

Jump_023_750c:
    ld d, d                                       ; $750c: $52
    ld l, h                                       ; $750d: $6c
    halt                                          ; $750e: $76
    sbc d                                         ; $750f: $9a
    cp c                                          ; $7510: $b9
    adc h                                         ; $7511: $8c
    ld e, l                                       ; $7512: $5d
    xor a                                         ; $7513: $af
    jp z, $ede4                                   ; $7514: $ca $e4 $ed

    sub a                                         ; $7517: $97
    rst $38                                       ; $7518: $ff
    cp l                                          ; $7519: $bd
    push af                                       ; $751a: $f5
    ld h, l                                       ; $751b: $65
    sbc [hl]                                      ; $751c: $9e
    ld h, e                                       ; $751d: $63
    rst $30                                       ; $751e: $f7
    rst $00                                       ; $751f: $c7
    adc h                                         ; $7520: $8c
    ld e, h                                       ; $7521: $5c
    ld a, [bc]                                    ; $7522: $0a
    and [hl]                                      ; $7523: $a6
    dec bc                                        ; $7524: $0b
    push de                                       ; $7525: $d5
    xor e                                         ; $7526: $ab
    add d                                         ; $7527: $82
    jr nc, jr_023_7505                            ; $7528: $30 $db

    add hl, sp                                    ; $752a: $39
    rst $00                                       ; $752b: $c7
    and l                                         ; $752c: $a5
    ld hl, $b2f6                                  ; $752d: $21 $f6 $b2
    or h                                          ; $7530: $b4
    rst $20                                       ; $7531: $e7
    push hl                                       ; $7532: $e5
    ld [hl], a                                    ; $7533: $77
    jp z, $db0d                                   ; $7534: $ca $0d $db

    ld b, $26                                     ; $7537: $06 $26
    ld e, d                                       ; $7539: $5a
    ld e, l                                       ; $753a: $5d
    ld a, [bc]                                    ; $753b: $0a
    sub $96                                       ; $753c: $d6 $96
    call z, Call_023_5570                         ; $753e: $cc $70 $55
    add [hl]                                      ; $7541: $86
    dec e                                         ; $7542: $1d
    and l                                         ; $7543: $a5
    ld b, $61                                     ; $7544: $06 $61
    db $db                                        ; $7546: $db
    add hl, sp                                    ; $7547: $39

jr_023_7548:
    db $dd                                        ; $7548: $dd
    push hl                                       ; $7549: $e5
    pop hl                                        ; $754a: $e1
    ret                                           ; $754b: $c9


    rst $10                                       ; $754c: $d7
    xor l                                         ; $754d: $ad
    call c, $97b7                                 ; $754e: $dc $b7 $97
    or $4e                                        ; $7551: $f6 $4e
    inc sp                                        ; $7553: $33
    sub a                                         ; $7554: $97
    or c                                          ; $7555: $b1
    db $eb                                        ; $7556: $eb
    ld d, l                                       ; $7557: $55
    ld e, c                                       ; $7558: $59
    sub b                                         ; $7559: $90
    sub $17                                       ; $755a: $d6 $17
    cp d                                          ; $755c: $ba
    inc d                                         ; $755d: $14
    xor h                                         ; $755e: $ac
    sbc l                                         ; $755f: $9d
    xor h                                         ; $7560: $ac
    reti                                          ; $7561: $d9


    ld l, c                                       ; $7562: $69
    ld h, a                                       ; $7563: $67
    inc e                                         ; $7564: $1c
    ld [hl], l                                    ; $7565: $75
    db $f4                                        ; $7566: $f4
    pop de                                        ; $7567: $d1

jr_023_7568:
    daa                                           ; $7568: $27
    dec e                                         ; $7569: $1d
    adc e                                         ; $756a: $8b
    jr nc, jr_023_7548                            ; $756b: $30 $db

    add hl, sp                                    ; $756d: $39
    rst $00                                       ; $756e: $c7
    ld e, l                                       ; $756f: $5d
    ld bc, $d1df                                  ; $7570: $01 $df $d1
    ld [hl], d                                    ; $7573: $72
    db $fd                                        ; $7574: $fd
    ld b, d                                       ; $7575: $42
    add hl, de                                    ; $7576: $19
    ld a, a                                       ; $7577: $7f
    cp l                                          ; $7578: $bd
    ld a, [hl+]                                   ; $7579: $2a
    di                                            ; $757a: $f3
    sbc h                                         ; $757b: $9c
    cp h                                          ; $757c: $bc
    db $fd                                        ; $757d: $fd
    ld a, [c]                                     ; $757e: $f2
    ccf                                           ; $757f: $3f
    db $dd                                        ; $7580: $dd
    ld l, c                                       ; $7581: $69
    and $32                                       ; $7582: $e6 $32
    halt                                          ; $7584: $76
    cp l                                          ; $7585: $bd
    ld a, [hl+]                                   ; $7586: $2a
    dec bc                                        ; $7587: $0b
    push de                                       ; $7588: $d5
    xor e                                         ; $7589: $ab
    add d                                         ; $758a: $82
    jr nc, jr_023_7568                            ; $758b: $30 $db

    add hl, sp                                    ; $758d: $39
    xor l                                         ; $758e: $ad
    add hl, de                                    ; $758f: $19
    add hl, de                                    ; $7590: $19
    db $ec                                        ; $7591: $ec
    ld l, b                                       ; $7592: $68
    cp c                                          ; $7593: $b9
    ld a, [hl]                                    ; $7594: $7e
    and c                                         ; $7595: $a1
    ld c, h                                       ; $7596: $4c
    cp [hl]                                       ; $7597: $be
    ld c, d                                       ; $7598: $4a
    ld h, c                                       ; $7599: $61
    or e                                          ; $759a: $b3
    ld d, e                                       ; $759b: $53
    ld h, [hl]                                    ; $759c: $66
    dec hl                                        ; $759d: $2b
    ld hl, sp-$7d                                 ; $759e: $f8 $83
    xor a                                         ; $75a0: $af
    jp nc, $1b8e                                  ; $75a1: $d2 $8e $1b

    ld sp, hl                                     ; $75a4: $f9
    and l                                         ; $75a5: $a5
    dec a                                         ; $75a6: $3d
    cpl                                           ; $75a7: $2f
    cp a                                          ; $75a8: $bf
    ld d, $ba                                     ; $75a9: $16 $ba
    ld e, [hl]                                    ; $75ab: $5e
    sub l                                         ; $75ac: $95
    jp Jump_023_45e7                              ; $75ad: $c3 $e7 $45


    cp $a7                                        ; $75b0: $fe $a7
    call nz, $2ba6                                ; $75b2: $c4 $a6 $2b
    ld a, [de]                                    ; $75b5: $1a
    db $ed                                        ; $75b6: $ed
    pop bc                                        ; $75b7: $c1
    ld d, a                                       ; $75b8: $57
    ld c, c                                       ; $75b9: $49
    inc c                                         ; $75ba: $0c
    db $10                                        ; $75bb: $10
    ld b, $db                                     ; $75bc: $06 $db
    add hl, sp                                    ; $75be: $39
    db $dd                                        ; $75bf: $dd
    push hl                                       ; $75c0: $e5
    pop hl                                        ; $75c1: $e1
    ret                                           ; $75c2: $c9


    rst $10                                       ; $75c3: $d7
    ld e, l                                       ; $75c4: $5d
    ld e, $2e                                     ; $75c5: $1e $2e
    ld a, e                                       ; $75c7: $7b
    ld a, [c]                                     ; $75c8: $f2
    and l                                         ; $75c9: $a5
    cp l                                          ; $75ca: $bd
    ld h, e                                       ; $75cb: $63
    add hl, hl                                    ; $75cc: $29
    adc b                                         ; $75cd: $88
    rla                                           ; $75ce: $17
    jp z, $cf8e                                   ; $75cf: $ca $8e $cf

    ld [hl], $78                                  ; $75d2: $36 $78
    jp nc, Jump_023_4ec3                          ; $75d4: $d2 $c3 $4e

    inc sp                                        ; $75d7: $33
    sub a                                         ; $75d8: $97
    or c                                          ; $75d9: $b1
    db $eb                                        ; $75da: $eb
    ld d, l                                       ; $75db: $55
    ld e, c                                       ; $75dc: $59
    adc a                                         ; $75dd: $8f
    rst $10                                       ; $75de: $d7
    db $10                                        ; $75df: $10

jr_023_75e0:
    ld h, c                                       ; $75e0: $61
    db $db                                        ; $75e1: $db
    add hl, sp                                    ; $75e2: $39
    rst $00                                       ; $75e3: $c7
    ld e, l                                       ; $75e4: $5d
    ld bc, $9d5f                                  ; $75e5: $01 $5f $9d
    sub d                                         ; $75e8: $92
    and a                                         ; $75e9: $a7
    ld d, l                                       ; $75ea: $55
    ld a, [c]                                     ; $75eb: $f2
    ld [$4b29], a                                 ; $75ec: $ea $29 $4b
    ld a, e                                       ; $75ef: $7b
    ld e, [hl]                                    ; $75f0: $5e
    ld a, [hl]                                    ; $75f1: $7e
    ld b, a                                       ; $75f2: $47
    dec hl                                        ; $75f3: $2b
    call c, $a178                                 ; $75f4: $dc $78 $a1
    adc [hl]                                      ; $75f7: $8e
    jr nc, @-$23                                  ; $75f8: $30 $db

    add hl, sp                                    ; $75fa: $39
    ld b, a                                       ; $75fb: $47
    push bc                                       ; $75fc: $c5
    ld hl, sp-$3f                                 ; $75fd: $f8 $c1
    or e                                          ; $75ff: $b3
    ld a, c                                       ; $7600: $79
    xor [hl]                                      ; $7601: $ae
    xor b                                         ; $7602: $a8
    push af                                       ; $7603: $f5
    rst $10                                       ; $7604: $d7
    cp $a7                                        ; $7605: $fe $a7
    ld a, c                                       ; $7607: $79
    ld sp, hl                                     ; $7608: $f9
    dec h                                         ; $7609: $25
    push bc                                       ; $760a: $c5
    ld h, [hl]                                    ; $760b: $66
    ld [hl], l                                    ; $760c: $75
    ld c, d                                       ; $760d: $4a
    sbc [hl]                                      ; $760e: $9e
    add $5f                                       ; $760f: $c6 $5f
    adc [hl]                                      ; $7611: $8e
    ld a, [hl+]                                   ; $7612: $2a
    ld l, h                                       ; $7613: $6c
    sbc [hl]                                      ; $7614: $9e
    db $eb                                        ; $7615: $eb
    ld c, b                                       ; $7616: $48
    ld [hl-], a                                   ; $7617: $32
    ld d, e                                       ; $7618: $53
    db $fd                                        ; $7619: $fd
    ld [hl], h                                    ; $761a: $74
    db $dd                                        ; $761b: $dd
    push de                                       ; $761c: $d5
    dec h                                         ; $761d: $25
    ret                                           ; $761e: $c9


    ret nz                                        ; $761f: $c0

    jp nc, Jump_023_705e                          ; $7620: $d2 $5e $70

    sub l                                         ; $7623: $95
    ld a, h                                       ; $7624: $7c
    ld [hl], b                                    ; $7625: $70
    add hl, sp                                    ; $7626: $39
    ld a, $c2                                     ; $7627: $3e $c2
    db $db                                        ; $7629: $db
    add hl, sp                                    ; $762a: $39
    xor l                                         ; $762b: $ad
    scf                                           ; $762c: $37
    jr z, jr_023_75e0                             ; $762d: $28 $b1

    reti                                          ; $762f: $d9


    ld d, a                                       ; $7630: $57
    push de                                       ; $7631: $d5

Call_023_7632:
    sub e                                         ; $7632: $93
    res 5, l                                      ; $7633: $cb $ad
    add $5f                                       ; $7635: $c6 $5f
    adc [hl]                                      ; $7637: $8e
    ld a, [hl+]                                   ; $7638: $2a
    ld l, h                                       ; $7639: $6c
    or [hl]                                       ; $763a: $b6
    add [hl]                                      ; $763b: $86
    rst $08                                       ; $763c: $cf
    ld h, [hl]                                    ; $763d: $66
    and a                                         ; $763e: $a7
    adc h                                         ; $763f: $8c
    ld a, a                                       ; $7640: $7f
    sub l                                         ; $7641: $95
    ld c, e                                       ; $7642: $4b
    pop bc                                        ; $7643: $c1
    ld [hl], h                                    ; $7644: $74
    rst $20                                       ; $7645: $e7
    ld a, l                                       ; $7646: $7d
    adc h                                         ; $7647: $8c
    adc l                                         ; $7648: $8d
    ld a, l                                       ; $7649: $7d
    and c                                         ; $764a: $a1
    call z, $994e                                 ; $764b: $cc $4e $99
    xor [hl]                                      ; $764e: $ae
    xor b                                         ; $764f: $a8
    inc hl                                        ; $7650: $23
    inc c                                         ; $7651: $0c
    db $db                                        ; $7652: $db
    add hl, sp                                    ; $7653: $39
    ld b, a                                       ; $7654: $47
    srl a                                         ; $7655: $cb $3f
    ld a, e                                       ; $7657: $7b
    ld e, c                                       ; $7658: $59
    jp c, $63b3                                   ; $7659: $da $b3 $63

    ld [hl], e                                    ; $765c: $73
    add hl, hl                                    ; $765d: $29
    ld e, b                                       ; $765e: $58
    ld c, c                                       ; $765f: $49
    add c                                         ; $7660: $81
    rlca                                          ; $7661: $07
    add h                                         ; $7662: $84
    ld bc, $39db                                  ; $7663: $01 $db $39
    ld b, a                                       ; $7666: $47
    ld d, c                                       ; $7667: $51
    ld [hl], l                                    ; $7668: $75
    sbc a                                         ; $7669: $9f
    ld a, h                                       ; $766a: $7c
    rst $00                                       ; $766b: $c7
    bit 7, a                                      ; $766c: $cb $7f
    dec e                                         ; $766e: $1d
    db $ed                                        ; $766f: $ed
    and h                                         ; $7670: $a4
    ld l, e                                       ; $7671: $6b
    ld a, l                                       ; $7672: $7d
    or [hl]                                       ; $7673: $b6
    and h                                         ; $7674: $a4
    ld a, c                                       ; $7675: $79
    ld sp, hl                                     ; $7676: $f9
    ld e, c                                       ; $7677: $59

jr_023_7678:
    jr nz, jr_023_7678                            ; $7678: $20 $fe

    jp nc, Jump_023_51de                          ; $767a: $d2 $de $51

    xor a                                         ; $767d: $af
    xor a                                         ; $767e: $af
    ld l, b                                       ; $767f: $68
    rst $00                                       ; $7680: $c7
    ld [hl], d                                    ; $7681: $72
    add sp, -$44                                  ; $7682: $e8 $bc
    ld hl, sp-$2c                                 ; $7684: $f8 $d4
    rst $20                                       ; $7686: $e7
    ld b, [hl]                                    ; $7687: $46
    add sp, $52                                   ; $7688: $e8 $52
    or b                                          ; $768a: $b0
    sbc b                                         ; $768b: $98
    ldh [$03], a                                  ; $768c: $e0 $03
    cp l                                          ; $768e: $bd
    ld sp, $7605                                  ; $768f: $31 $05 $76
    ret                                           ; $7692: $c9


    ld [hl], e                                    ; $7693: $73
    sbc l                                         ; $7694: $9d
    dec de                                        ; $7695: $1b
    nop                                           ; $7696: $00
    jp nz, Jump_000_39db                          ; $7697: $c2 $db $39

    rst $00                                       ; $769a: $c7
    ld l, c                                       ; $769b: $69
    sbc b                                         ; $769c: $98
    ld b, $66                                     ; $769d: $06 $66
    and a                                         ; $769f: $a7
    call z, $18d6                                 ; $76a0: $cc $d6 $18
    cpl                                           ; $76a3: $2f
    dec b                                         ; $76a4: $05
    cp e                                          ; $76a5: $bb
    or h                                          ; $76a6: $b4
    sbc b                                         ; $76a7: $98
    sub $1f                                       ; $76a8: $d6 $1f
    ld a, a                                       ; $76aa: $7f
    cp l                                          ; $76ab: $bd
    ld c, h                                       ; $76ac: $4c
    rla                                           ; $76ad: $17
    cp [hl]                                       ; $76ae: $be
    add h                                         ; $76af: $84
    ld c, d                                       ; $76b0: $4a

jr_023_76b1:
    ld d, e                                       ; $76b1: $53
    ld h, d                                       ; $76b2: $62
    ld [hl], e                                    ; $76b3: $73
    inc hl                                        ; $76b4: $23
    ld [hl], h                                    ; $76b5: $74
    add hl, hl                                    ; $76b6: $29
    ld e, b                                       ; $76b7: $58
    ld a, c                                       ; $76b8: $79
    add c                                         ; $76b9: $81
    adc a                                         ; $76ba: $8f
    or $2e                                        ; $76bb: $f6 $2e
    ld a, c                                       ; $76bd: $79
    ld c, [hl]                                    ; $76be: $4e
    ld d, a                                       ; $76bf: $57
    sub h                                         ; $76c0: $94
    or c                                          ; $76c1: $b1
    xor h                                         ; $76c2: $ac
    ld [$0308], a                                 ; $76c3: $ea $08 $03
    db $db                                        ; $76c6: $db
    add hl, sp                                    ; $76c7: $39
    ld d, $b2                                     ; $76c8: $16 $b2
    ld a, $79                                     ; $76ca: $3e $79
    jp z, $ded2                                   ; $76cc: $ca $d2 $de

    pop de                                        ; $76cf: $d1
    cpl                                           ; $76d0: $2f
    ld a, [hl]                                    ; $76d1: $7e
    ld a, a                                       ; $76d2: $7f
    ld b, a                                       ; $76d3: $47
    and a                                         ; $76d4: $a7
    ld a, e                                       ; $76d5: $7b
    dec c                                         ; $76d6: $0d
    halt                                          ; $76d7: $76
    xor h                                         ; $76d8: $ac
    push af                                       ; $76d9: $f5
    and l                                         ; $76da: $a5
    reti                                          ; $76db: $d9


    ld [hl], c                                    ; $76dc: $71
    ld d, c                                       ; $76dd: $51
    xor l                                         ; $76de: $ad
    add hl, hl                                    ; $76df: $29
    dec sp                                        ; $76e0: $3b
    ld a, [$0095]                                 ; $76e1: $fa $95 $00
    ld h, c                                       ; $76e4: $61
    db $db                                        ; $76e5: $db
    add hl, sp                                    ; $76e6: $39
    rst $00                                       ; $76e7: $c7
    ld l, c                                       ; $76e8: $69
    sbc b                                         ; $76e9: $98

jr_023_76ea:
    ld b, $66                                     ; $76ea: $06 $66
    and a                                         ; $76ec: $a7
    xor h                                         ; $76ed: $ac
    inc hl                                        ; $76ee: $23
    ret                                           ; $76ef: $c9


    ld c, h                                       ; $76f0: $4c
    ld [hl], l                                    ; $76f1: $75
    add hl, hl                                    ; $76f2: $29
    jr jr_023_76b1                                ; $76f3: $18 $bc

    push af                                       ; $76f5: $f5
    ld l, c                                       ; $76f6: $69
    sub b                                         ; $76f7: $90
    inc b                                         ; $76f8: $04
    ld d, e                                       ; $76f9: $53
    ld h, d                                       ; $76fa: $62
    ld [hl], e                                    ; $76fb: $73
    inc hl                                        ; $76fc: $23
    ld [hl], h                                    ; $76fd: $74
    add hl, hl                                    ; $76fe: $29
    sbc b                                         ; $76ff: $98
    sub a                                         ; $7700: $97
    rrca                                          ; $7701: $0f
    and a                                         ; $7702: $a7
    ld sp, $92ee                                  ; $7703: $31 $ee $92
    rst $20                                       ; $7706: $e7
    jp z, $e0b3                                   ; $7707: $ca $b3 $e0

    ld c, e                                       ; $770a: $4b
    ld b, $80                                     ; $770b: $06 $80
    db $30                                        ; $770d: $30

    db $db, $39, $bd, $d2, $ac, $a8, $f5, $47, $e9, $b3, $d3, $10, $9b, $97, $0b, $ab
    db $54, $d8, $9a, $77, $84, $01

    cp l                                          ; $7724: $bd
    jp nc, $a8ac                                  ; $7725: $d2 $ac $a8

    push af                                       ; $7728: $f5
    ld b, a                                       ; $7729: $47
    cp c                                          ; $772a: $b9
    ld c, d                                       ; $772b: $4a
    add l                                         ; $772c: $85
    pop bc                                        ; $772d: $c1
    inc a                                         ; $772e: $3c
    rst $00                                       ; $772f: $c7
    ld l, $74                                     ; $7730: $2e $74
    and d                                         ; $7732: $a2
    ld [hl], $08                                  ; $7733: $36 $08
    inc bc                                        ; $7735: $03
    rst $00                                       ; $7736: $c7
    ld [hl], d                                    ; $7737: $72
    ld hl, sp-$36                                 ; $7738: $f8 $ca
    ld hl, sp-$31                                 ; $773a: $f8 $cf
    res 0, l                                      ; $773c: $cb $85
    ld d, l                                       ; $773e: $55
    ld a, [hl+]                                   ; $773f: $2a
    ld l, h                                       ; $7740: $6c
    ld [$55ae], a                                 ; $7741: $ea $ae $55
    dec e                                         ; $7744: $1d
    ld h, c                                       ; $7745: $61

    db $47, $c5, $aa, $7c, $d8, $60, $dd, $8a, $4a, $08, $18, $dd, $8c, $c0, $03, $06
    db $dd, $25, $fd, $2b, $bf, $49, $18, $c7, $5c, $eb, $25, $f5, $9b, $84, $01, $c7
    db $3f, $bd, $68, $bc, $e0, $18, $ad, $af, $f1, $52, $80, $01, $ad, $19, $f0, $2a
    db $0e, $18, $27, $1b, $b8, $d5, $55, $c2, $a7, $99, $cb, $d8, $f5, $aa, $60, $3d
    db $44, $09, $ec, $1b, $18, $51, $bf, $49, $18, $c7, $9e, $d5, $1d, $03, $2d, $b7
    db $aa, $c7, $07, $0c, $ad, $2a, $d2, $ec, $b8, $34, $c4, $30

    daa                                           ; $77a2: $27
    ld l, e                                       ; $77a3: $6b
    db $fd                                        ; $77a4: $fd

jr_023_77a5:
    rst $20                                       ; $77a5: $e7
    push hl                                       ; $77a6: $e5
    jp nz, Jump_023_463a                          ; $77a7: $c2 $3a $46

    xor d                                         ; $77aa: $aa

jr_023_77ab:
    and d                                         ; $77ab: $a2
    ldh a, [$5d]                                  ; $77ac: $f0 $5d
    ld sp, $d6db                                  ; $77ae: $31 $db $d6
    db $eb                                        ; $77b1: $eb
    ld bc, $db03                                  ; $77b2: $01 $03 $db
    halt                                          ; $77b5: $76
    ld c, d                                       ; $77b6: $4a
    ld h, d                                       ; $77b7: $62
    dec a                                         ; $77b8: $3d
    jp z, $b185                                   ; $77b9: $ca $85 $b1

    ld c, h                                       ; $77bc: $4c
    reti                                          ; $77bd: $d9


    add l                                         ; $77be: $85
    push bc                                       ; $77bf: $c5
    xor h                                         ; $77c0: $ac
    ld [$e6cf], a                                 ; $77c1: $ea $cf $e6
    scf                                           ; $77c4: $37
    jr z, jr_023_77a5                             ; $77c5: $28 $de

    dec b                                         ; $77c7: $05
    inc bc                                        ; $77c8: $03
    rst $00                                       ; $77c9: $c7
    res 4, l                                      ; $77ca: $cb $a5
    jr nz, jr_023_77ab                            ; $77cc: $20 $dd

    ld h, c                                       ; $77ce: $61
    ld d, [hl]                                    ; $77cf: $56
    dec [hl]                                      ; $77d0: $35
    pop de                                        ; $77d1: $d1
    ld h, c                                       ; $77d2: $61
    ld a, [hl+]                                   ; $77d3: $2a
    ccf                                           ; $77d4: $3f
    ld a, c                                       ; $77d5: $79
    adc l                                         ; $77d6: $8d
    or c                                          ; $77d7: $b1
    reti                                          ; $77d8: $d9


    cp c                                          ; $77d9: $b9
    and b                                         ; $77da: $a0
    or $d7                                        ; $77db: $f6 $d7
    cp d                                          ; $77dd: $ba
    ld h, b                                       ; $77de: $60
    dec a                                         ; $77df: $3d
    ld c, e                                       ; $77e0: $4b
    xor [hl]                                      ; $77e1: $ae
    ld c, [hl]                                    ; $77e2: $4e
    ret                                           ; $77e3: $c9


    jp $a2f8                                      ; $77e4: $c3 $f8 $a2


    cp [hl]                                       ; $77e7: $be
    ld a, [hl+]                                   ; $77e8: $2a
    ld c, l                                       ; $77e9: $4d
    ld h, h                                       ; $77ea: $64
    ld l, e                                       ; $77eb: $6b
    rst $38                                       ; $77ec: $ff
    ld l, $c1                                     ; $77ed: $2e $c1
    ld h, l                                       ; $77ef: $65
    ccf                                           ; $77f0: $3f
    cpl                                           ; $77f1: $2f
    rla                                           ; $77f2: $17
    ld h, [hl]                                    ; $77f3: $66
    ld d, l                                       ; $77f4: $55

Call_023_77f5:
    inc de                                        ; $77f5: $13
    cp l                                          ; $77f6: $bd
    db $eb                                        ; $77f7: $eb
    ld c, [hl]                                    ; $77f8: $4e
    ld c, c                                       ; $77f9: $49
    ld e, a                                       ; $77fa: $5f
    sub e                                         ; $77fb: $93
    add [hl]                                      ; $77fc: $86
    dec sp                                        ; $77fd: $3b
    dec sp                                        ; $77fe: $3b
    ld h, l                                       ; $77ff: $65
    ld c, c                                       ; $7800: $49
    adc a                                         ; $7801: $8f
    jr nc, @+$2f                                  ; $7802: $30 $2d

    cp c                                          ; $7804: $b9
    ld d, b                                       ; $7805: $50
    xor c                                         ; $7806: $a9
    ld e, c                                       ; $7807: $59
    call z, $feaa                                 ; $7808: $cc $aa $fe
    ld l, h                                       ; $780b: $6c
    inc l                                         ; $780c: $2c
    ld d, e                                       ; $780d: $53
    and b                                         ; $780e: $a0
    dec bc                                        ; $780f: $0b
    ld b, $3d                                     ; $7810: $06 $3d
    jp z, $292f                                   ; $7812: $ca $2f $29

    ld [hl], $b3                                  ; $7815: $36 $b3
    xor d                                         ; $7817: $aa
    adc c                                         ; $7818: $89
    cp [hl]                                       ; $7819: $be
    ld h, $cd                                     ; $781a: $26 $cd
    ld a, [hl+]                                   ; $781c: $2a
    and l                                         ; $781d: $a5
    dec a                                         ; $781e: $3d
    ld sp, hl                                     ; $781f: $f9
    sra [hl]                                      ; $7820: $cb $2e
    xor h                                         ; $7822: $ac
    ld c, c                                       ; $7823: $49
    inc hl                                        ; $7824: $23
    add b                                         ; $7825: $80
    jr nc, jr_023_786f                            ; $7826: $30 $47

    ret                                           ; $7828: $c9


    ld d, e                                       ; $7829: $53
    call $a4d7                                    ; $782a: $cd $d7 $a4
    reti                                          ; $782d: $d9


    ld e, e                                       ; $782e: $5b
    ld e, a                                       ; $782f: $5f
    ld d, $e4                                     ; $7830: $16 $e4
    and l                                         ; $7832: $a5
    ld h, b                                       ; $7833: $60
    sbc [hl]                                      ; $7834: $9e
    sub e                                         ; $7835: $93
    rst $10                                       ; $7836: $d7
    xor d                                         ; $7837: $aa
    xor h                                         ; $7838: $ac
    ld c, c                                       ; $7839: $49
    inc hl                                        ; $783a: $23
    ld c, e                                       ; $783b: $4b
    sbc [hl]                                      ; $783c: $9e
    ld h, [hl]                                    ; $783d: $66
    ld d, l                                       ; $783e: $55
    inc de                                        ; $783f: $13
    cp l                                          ; $7840: $bd
    dec hl                                        ; $7841: $2b
    ld b, $47                                     ; $7842: $06 $47
    ld d, c                                       ; $7844: $51
    ld a, d                                       ; $7845: $7a
    ld a, c                                       ; $7846: $79
    ld e, c                                       ; $7847: $59
    call z, $feaa                                 ; $7848: $cc $aa $fe
    ld l, h                                       ; $784b: $6c
    inc l                                         ; $784c: $2c
    ld d, e                                       ; $784d: $53
    cp d                                          ; $784e: $ba
    ld h, b                                       ; $784f: $60
    ld b, a                                       ; $7850: $47
    ld sp, hl                                     ; $7851: $f9
    ld [c], a                                     ; $7852: $e2
    dec hl                                        ; $7853: $2b
    ld hl, sp+$34                                 ; $7854: $f8 $34
    add $79                                       ; $7856: $c6 $79
    ld a, c                                       ; $7858: $79
    ld hl, sp-$3b                                 ; $7859: $f8 $c5
    xor h                                         ; $785b: $ac
    ld [$c6cf], a                                 ; $785c: $ea $cf $c6
    ld [hl-], a                                   ; $785f: $32
    dec b                                         ; $7860: $05
    ld d, $6a                                     ; $7861: $16 $6a
    db $fd                                        ; $7863: $fd
    rst $10                                       ; $7864: $d7
    and h                                         ; $7865: $a4
    sbc c                                         ; $7866: $99
    db $fd                                        ; $7867: $fd
    rra                                           ; $7868: $1f
    rst $10                                       ; $7869: $d7
    and h                                         ; $786a: $a4
    sub c                                         ; $786b: $91
    dec h                                         ; $786c: $25
    ld c, a                                       ; $786d: $4f
    or e                                          ; $786e: $b3

jr_023_786f:
    xor d                                         ; $786f: $aa
    adc c                                         ; $7870: $89
    cp [hl]                                       ; $7871: $be
    dec bc                                        ; $7872: $0b

Jump_023_7873:
    inc bc                                        ; $7873: $03
    or l                                          ; $7874: $b5
    rra                                           ; $7875: $1f
    ld h, c                                       ; $7876: $61
    xor l                                         ; $7877: $ad
    ret                                           ; $7878: $c9


    rst $08                                       ; $7879: $cf
    ld a, [$2cd2]                                 ; $787a: $fa $d2 $2c
    ld h, [hl]                                    ; $787d: $66
    ld d, l                                       ; $787e: $55
    ld a, a                                       ; $787f: $7f
    ld [hl], $2f                                  ; $7880: $36 $2f
    rla                                           ; $7882: $17
    add $32                                       ; $7883: $c6 $32
    ld h, l                                       ; $7885: $65
    rla                                           ; $7886: $17
    db $10                                        ; $7887: $10
    ld b, $bd                                     ; $7888: $06 $bd
    jp nc, $5d8c                                  ; $788a: $d2 $8c $5d

    xor b                                         ; $788d: $a8
    jp nc, $32fa                                  ; $788e: $d2 $fa $32

    cpl                                           ; $7891: $2f
    ld [$72f3], a                                 ; $7892: $ea $f3 $72
    ld h, c                                       ; $7895: $61
    inc l                                         ; $7896: $2c
    ld d, e                                       ; $7897: $53
    halt                                          ; $7898: $76
    ld h, c                                       ; $7899: $61
    ldh a, [$95]                                  ; $789a: $f0 $95
    sub c                                         ; $789c: $91
    adc a                                         ; $789d: $8f
    call Call_023_5662                            ; $789e: $cd $62 $56
    push af                                       ; $78a1: $f5
    ld h, a                                       ; $78a2: $67
    ld [$c703], sp                                ; $78a3: $08 $03 $c7
    ld e, d                                       ; $78a6: $5a
    sbc a                                         ; $78a7: $9f
    sub $aa                                       ; $78a8: $d6 $aa
    add c                                         ; $78aa: $81
    ld e, h                                       ; $78ab: $5c
    or [hl]                                       ; $78ac: $b6
    ld a, [hl+]                                   ; $78ad: $2a
    ld c, l                                       ; $78ae: $4d
    ld h, h                                       ; $78af: $64
    ld d, h                                       ; $78b0: $54
    di                                            ; $78b1: $f3
    ld h, l                                       ; $78b2: $65
    rst $20                                       ; $78b3: $e7
    ld l, c                                       ; $78b4: $69
    ld e, [hl]                                    ; $78b5: $5e
    ld l, $8c                                     ; $78b6: $2e $8c
    ld h, l                                       ; $78b8: $65
    ld a, [bc]                                    ; $78b9: $0a
    jp nz, Jump_023_5147                          ; $78ba: $c2 $47 $51

    db $e3                                        ; $78bd: $e3
    push hl                                       ; $78be: $e5
    ld d, d                                       ; $78bf: $52
    or b                                          ; $78c0: $b0
    ld a, [hl+]                                   ; $78c1: $2a
    ld c, l                                       ; $78c2: $4d
    ld h, h                                       ; $78c3: $64
    ld l, e                                       ; $78c4: $6b
    rst $38                                       ; $78c5: $ff
    jp c, $24df                                   ; $78c6: $da $df $24

    or c                                          ; $78c9: $b1
    ld a, c                                       ; $78ca: $79
    ld sp, hl                                     ; $78cb: $f9
    push bc                                       ; $78cc: $c5
    xor h                                         ; $78cd: $ac
    ld [$c6cf], a                                 ; $78ce: $ea $cf $c6
    ld [hl-], a                                   ; $78d1: $32
    and l                                         ; $78d2: $a5
    res 1, [hl]                                   ; $78d3: $cb $8e
    and d                                         ; $78d5: $a2
    add $cb                                       ; $78d6: $c6 $cb
    and l                                         ; $78d8: $a5
    ld h, b                                       ; $78d9: $60
    ld l, l                                       ; $78da: $6d
    db $e3                                        ; $78db: $e3
    ld l, e                                       ; $78dc: $6b
    jp nc, $e770                                  ; $78dd: $d2 $70 $e7

    ld b, l                                       ; $78e0: $45
    ld a, l                                       ; $78e1: $7d
    rla                                           ; $78e2: $17
    jr nc, jr_023_7912                            ; $78e3: $30 $2d

    cp c                                          ; $78e5: $b9
    ld d, b                                       ; $78e6: $50
    xor c                                         ; $78e7: $a9
    ld e, c                                       ; $78e8: $59
    call z, $feaa                                 ; $78e9: $cc $aa $fe
    ld l, h                                       ; $78ec: $6c
    inc l                                         ; $78ed: $2c
    ld d, e                                       ; $78ee: $53
    nop                                           ; $78ef: $00
    ld hl, $3904                                  ; $78f0: $21 $04 $39
    ei                                            ; $78f3: $fb
    ld sp, hl                                     ; $78f4: $f9

jr_023_78f5:
    push de                                       ; $78f5: $d5
    cp a                                          ; $78f6: $bf
    ld bc, $0184                                  ; $78f7: $01 $84 $01
    cp l                                          ; $78fa: $bd
    jp nc, Jump_023_52ac                          ; $78fb: $d2 $ac $52

    and d                                         ; $78fe: $a2
    db $f4                                        ; $78ff: $f4
    dec a                                         ; $7900: $3d
    ld sp, hl                                     ; $7901: $f9
    res 2, h                                      ; $7902: $cb $94
    sbc d                                         ; $7904: $9a
    ld e, c                                       ; $7905: $59
    push de                                       ; $7906: $d5
    ld b, h                                       ; $7907: $44
    ld e, a                                       ; $7908: $5f
    ld a, d                                       ; $7909: $7a
    ld a, c                                       ; $790a: $79
    sbc c                                         ; $790b: $99
    rla                                           ; $790c: $17
    and l                                         ; $790d: $a5
    dec [hl]                                      ; $790e: $35
    ld l, c                                       ; $790f: $69
    ld h, h                                       ; $7910: $64
    ret                                           ; $7911: $c9


jr_023_7912:
    inc de                                        ; $7912: $13
    jp nz, $d2dd                                  ; $7913: $c2 $dd $d2

    ld b, h                                       ; $7916: $44
    or [hl]                                       ; $7917: $b6
    ld e, $ad                                     ; $7918: $1e $ad
    sub [hl]                                      ; $791a: $96
    sub [hl]                                      ; $791b: $96
    or l                                          ; $791c: $b5
    ld a, a                                       ; $791d: $7f
    xor l                                         ; $791e: $ad
    ld a, [hl+]                                   ; $791f: $2a
    jp nc, Jump_023_7bac                          ; $7920: $d2 $ac $7b

    cp d                                          ; $7923: $ba
    cp a                                          ; $7924: $bf

jr_023_7925:
    call nc, Call_023_5660                        ; $7925: $d4 $60 $56
    dec [hl]                                      ; $7928: $35
    pop de                                        ; $7929: $d1
    cp e                                          ; $792a: $bb
    ld l, [hl]                                    ; $792b: $6e
    and a                                         ; $792c: $a7
    inc h                                         ; $792d: $24
    ld [hl], a                                    ; $792e: $77
    rst $10                                       ; $792f: $d7
    ld d, a                                       ; $7930: $57
    and l                                         ; $7931: $a5
    adc c                                         ; $7932: $89
    adc h                                         ; $7933: $8c
    ld l, d                                       ; $7934: $6a
    adc [hl]                                      ; $7935: $8e
    jr nc, jr_023_78f5                            ; $7936: $30 $bd

    jp nc, Jump_023_52ac                          ; $7938: $d2 $ac $52

    xor d                                         ; $793b: $aa
    ld sp, hl                                     ; $793c: $f9
    add d                                         ; $793d: $82
    rst $30                                       ; $793e: $f7
    ld e, l                                       ; $793f: $5d
    ld [c], a                                     ; $7940: $e2
    xor [hl]                                      ; $7941: $ae
    ld l, l                                       ; $7942: $6d
    ld a, h                                       ; $7943: $7c
    ld [$af8b], a                                 ; $7944: $ea $8b $af
    ldh [rOCPD], a                                ; $7947: $e0 $6b
    jp nc, Jump_000_258c                          ; $7949: $d2 $8c $25

    push de                                       ; $794c: $d5
    ld a, h                                       ; $794d: $7c
    ld b, l                                       ; $794e: $45
    xor l                                         ; $794f: $ad
    ccf                                           ; $7950: $3f
    rst $08                                       ; $7951: $cf
    cp c                                          ; $7952: $b9
    inc [hl]                                      ; $7953: $34
    di                                            ; $7954: $f3
    ld e, h                                       ; $7955: $5c
    ldh a, [$be]                                  ; $7956: $f0 $be
    inc [hl]                                      ; $7958: $34
    sbc $05                                       ; $7959: $de $05
    inc bc                                        ; $795b: $03
    dec a                                         ; $795c: $3d
    adc e                                         ; $795d: $8b
    ld a, [$6074]                                 ; $795e: $fa $74 $60
    and h                                         ; $7961: $a4
    inc hl                                        ; $7962: $23
    rla                                           ; $7963: $17
    ld e, $21                                     ; $7964: $1e $21
    db $e4                                        ; $7966: $e4
    push hl                                       ; $7967: $e5
    jp nz, $a658                                  ; $7968: $c2 $58 $a6

    db $ec                                        ; $796b: $ec
    jp nz, Jump_023_5662                          ; $796c: $c2 $62 $56

    push af                                       ; $796f: $f5
    ld h, a                                       ; $7970: $67
    ld [$4761], sp                                ; $7971: $08 $61 $47
    ld d, c                                       ; $7974: $51
    ld a, d                                       ; $7975: $7a

jr_023_7976:
    ld a, c                                       ; $7976: $79
    sbc c                                         ; $7977: $99
    ld d, l                                       ; $7978: $55

Call_023_7979:
    ld c, l                                       ; $7979: $4d
    db $f4                                        ; $797a: $f4
    ld a, c                                       ; $797b: $79
    ld d, c                                       ; $797c: $51
    ld e, a                                       ; $797d: $5f
    sub e                                         ; $797e: $93
    ld h, [hl]                                    ; $797f: $66
    sub l                                         ; $7980: $95
    ld [de], a                                    ; $7981: $12
    and l                                         ; $7982: $a5
    rst $28                                       ; $7983: $ef
    ret                                           ; $7984: $c9


    ld e, a                                       ; $7985: $5f
    db $10                                        ; $7986: $10
    ld b, $3d                                     ; $7987: $06 $3d
    jp z, $b185                                   ; $7989: $ca $85 $b1

    ld c, h                                       ; $798c: $4c
    reti                                          ; $798d: $d9


    add l                                         ; $798e: $85
    push bc                                       ; $798f: $c5
    xor h                                         ; $7990: $ac
    ld [$e6cf], a                                 ; $7991: $ea $cf $e6
    scf                                           ; $7994: $37
    jr z, jr_023_7925                             ; $7995: $28 $8e

    jr nc, jr_023_7976                            ; $7997: $30 $dd

    ld c, d                                       ; $7999: $4a

jr_023_799a:
    ld h, $fc                                     ; $799a: $26 $fc
    sbc d                                         ; $799c: $9a
    inc [hl]                                      ; $799d: $34
    or d                                          ; $799e: $b2
    ld c, e                                       ; $799f: $4b
    add c                                         ; $79a0: $81
    inc a                                         ; $79a1: $3c
    cp e                                          ; $79a2: $bb
    ld c, a                                       ; $79a3: $4f
    ld c, $53                                     ; $79a4: $0e $53
    ld h, d                                       ; $79a6: $62
    db $eb                                        ; $79a7: $eb
    ret z                                         ; $79a8: $c8

    inc bc                                        ; $79a9: $03
    xor h                                         ; $79aa: $ac
    push bc                                       ; $79ab: $c5
    ld d, l                                       ; $79ac: $55
    ld a, h                                       ; $79ad: $7c
    sbc [hl]                                      ; $79ae: $9e
    dec bc                                        ; $79af: $0b
    cpl                                           ; $79b0: $2f
    add a                                         ; $79b1: $87
    ld a, c                                       ; $79b2: $79

Jump_023_79b3:
    ld sp, hl                                     ; $79b3: $f9
    db $10                                        ; $79b4: $10
    ld h, c                                       ; $79b5: $61
    jp $a7c3                                      ; $79b6: $c3 $c3 $a7


    and h                                         ; $79b9: $a4
    sub a                                         ; $79ba: $97
    ld c, e                                       ; $79bb: $4b
    pop bc                                        ; $79bc: $c1
    adc d                                         ; $79bd: $8a
    halt                                          ; $79be: $76
    ld a, [hl-]                                   ; $79bf: $3a
    ld c, a                                       ; $79c0: $4f
    add b                                         ; $79c1: $80
    sub $2b                                       ; $79c2: $d6 $2b
    call $c262                                    ; $79c4: $cd $62 $c2
    xor a                                         ; $79c7: $af
    ld c, c                                       ; $79c8: $49
    inc hl                                        ; $79c9: $23
    cp e                                          ; $79ca: $bb
    inc d                                         ; $79cb: $14
    ret z                                         ; $79cc: $c8

    or e                                          ; $79cd: $b3
    ei                                            ; $79ce: $fb
    db $e4                                        ; $79cf: $e4
    add b                                         ; $79d0: $80
    jr nc, jr_023_799a                            ; $79d1: $30 $c7

    res 5, e                                      ; $79d3: $cb $ab
    ld [hl], a                                    ; $79d5: $77
    ld e, c                                       ; $79d6: $59
    xor a                                         ; $79d7: $af
    inc [hl]                                      ; $79d8: $34
    xor e                                         ; $79d9: $ab
    db $e4                                        ; $79da: $e4
    push de                                       ; $79db: $d5
    sbc a                                         ; $79dc: $9f
    dec e                                         ; $79dd: $1d
    adc [hl]                                      ; $79de: $8e
    db $01                                        ; $79df: $01

    db $a7, $3c, $bf, $e3, $35, $7c, $0c

    daa                                           ; $79e7: $27
    and l                                         ; $79e8: $a5
    or d                                          ; $79e9: $b2
    dec e                                         ; $79ea: $1d
    xor a                                         ; $79eb: $af
    pop hl                                        ; $79ec: $e1
    ld h, e                                       ; $79ed: $63

    db $27, $29, $05, $46, $83, $5f, $cb, $c7, $af, $1c, $03, $47, $27, $19, $d8, $f1
    db $1a, $3e, $60

    ld b, a                                       ; $7a01: $47
    ret                                           ; $7a02: $c9


    ld d, e                                       ; $7a03: $53
    call $a4d7                                    ; $7a04: $cd $d7 $a4
    sbc c                                         ; $7a07: $99
    ld e, a                                       ; $7a08: $5f
    ld a, c                                       ; $7a09: $79
    or [hl]                                       ; $7a0a: $b6
    or h                                          ; $7a0b: $b4
    rst $10                                       ; $7a0c: $d7
    ld a, [$de12]                                 ; $7a0d: $fa $12 $de
    and h                                         ; $7a10: $a4
    rst $28                                       ; $7a11: $ef
    cp d                                          ; $7a12: $ba
    sub [hl]                                      ; $7a13: $96
    ld a, [c]                                     ; $7a14: $f2
    di                                            ; $7a15: $f3
    ld [hl], d                                    ; $7a16: $72
    xor c                                         ; $7a17: $a9
    ld c, $83                                     ; $7a18: $0e $83
    ld a, [c]                                     ; $7a1a: $f2
    xor e                                         ; $7a1b: $ab
    ld d, e                                       ; $7a1c: $53
    ld a, [c]                                     ; $7a1d: $f2
    or b                                          ; $7a1e: $b0
    or a                                          ; $7a1f: $b7
    cp [hl]                                       ; $7a20: $be
    inc [hl]                                      ; $7a21: $34
    ld e, [hl]                                    ; $7a22: $5e
    ld l, $05                                     ; $7a23: $2e $05
    ld [$1603], sp                                ; $7a25: $08 $03 $16
    xor a                                         ; $7a28: $af
    pop bc                                        ; $7a29: $c1
    jr z, @-$37                                   ; $7a2a: $28 $c7

    daa                                           ; $7a2c: $27
    or c                                          ; $7a2d: $b1
    sub a                                         ; $7a2e: $97
    ld d, c                                       ; $7a2f: $51
    ld l, $e9                                     ; $7a30: $2e $e9
    ld d, a                                       ; $7a32: $57
    add hl, hl                                    ; $7a33: $29
    dec c                                         ; $7a34: $0d
    ld e, h                                       ; $7a35: $5c
    adc c                                         ; $7a36: $89
    xor l                                         ; $7a37: $ad
    cp h                                          ; $7a38: $bc
    jr nz, jr_023_7a47                            ; $7a39: $20 $0c

    xor l                                         ; $7a3b: $ad
    ret                                           ; $7a3c: $c9


    inc hl                                        ; $7a3d: $23
    add h                                         ; $7a3e: $84
    ld c, d                                       ; $7a3f: $4a
    ld a, [c]                                     ; $7a40: $f2
    xor e                                         ; $7a41: $ab
    jp nc, Jump_000_3644                          ; $7a42: $d2 $44 $36

    cpl                                           ; $7a45: $2f
    rst $18                                       ; $7a46: $df

jr_023_7a47:
    inc c                                         ; $7a47: $0c
    or h                                          ; $7a48: $b4
    sbc c                                         ; $7a49: $99
    rla                                           ; $7a4a: $17
    push af                                       ; $7a4b: $f5

jr_023_7a4c:
    ld l, c                                       ; $7a4c: $69
    dec sp                                        ; $7a4d: $3b
    adc l                                         ; $7a4e: $8d
    cpl                                           ; $7a4f: $2f
    ld a, h                                       ; $7a50: $7c
    add h                                         ; $7a51: $84
    db $10                                        ; $7a52: $10
    ld b, $96                                     ; $7a53: $06 $96
    ld a, c                                       ; $7a55: $79
    cp c                                          ; $7a56: $b9
    ld d, h                                       ; $7a57: $54
    rra                                           ; $7a58: $1f
    sub h                                         ; $7a59: $94
    ld e, a                                       ; $7a5a: $5f
    ld a, c                                       ; $7a5b: $79
    dec d                                         ; $7a5c: $15
    ld [hl], $03                                  ; $7a5d: $36 $03
    ld [$0c21], sp                                ; $7a5f: $08 $21 $0c
    xor l                                         ; $7a62: $ad
    ld l, d                                       ; $7a63: $6a
    db $fd                                        ; $7a64: $fd
    dec [hl]                                      ; $7a65: $35
    ld l, c                                       ; $7a66: $69
    ld b, $ff                                     ; $7a67: $06 $ff
    or h                                          ; $7a69: $b4
    sub $97                                       ; $7a6a: $d6 $97
    ldh a, [rNR52]                                ; $7a6c: $f0 $26
    db $fd                                        ; $7a6e: $fd
    adc [hl]                                      ; $7a6f: $8e
    rla                                           ; $7a70: $17
    and l                                         ; $7a71: $a5
    ldh [$a5], a                                  ; $7a72: $e0 $a5
    dec hl                                        ; $7a74: $2b
    ld b, $96                                     ; $7a75: $06 $96
    sbc l                                         ; $7a77: $9d
    ld h, a                                       ; $7a78: $67
    ret nz                                        ; $7a79: $c0

    rlca                                          ; $7a7a: $07
    jp z, $bcaf                                   ; $7a7b: $ca $af $bc

    xor h                                         ; $7a7e: $ac
    ld l, l                                       ; $7a7f: $6d
    ld a, h                                       ; $7a80: $7c
    sub [hl]                                      ; $7a81: $96
    or c                                          ; $7a82: $b1
    and h                                         ; $7a83: $a4
    sbc d                                         ; $7a84: $9a
    xor a                                         ; $7a85: $af
    ld c, [hl]                                    ; $7a86: $4e
    ret                                           ; $7a87: $c9


    adc a                                         ; $7a88: $8f
    cpl                                           ; $7a89: $2f
    cpl                                           ; $7a8a: $2f
    ccf                                           ; $7a8b: $3f
    jr z, jr_023_7acd                             ; $7a8c: $28 $3f

    cp $c9                                        ; $7a8e: $fe $c9
    ld de, $3d06                                  ; $7a90: $11 $06 $3d
    ccf                                           ; $7a93: $3f
    ld b, [hl]                                    ; $7a94: $46
    xor $62                                       ; $7a95: $ee $62
    ld h, [hl]                                    ; $7a97: $66
    ld a, l                                       ; $7a98: $7d
    halt                                          ; $7a99: $76
    jp z, Jump_000_0bca                           ; $7a9a: $ca $ca $0b

    jp c, $d6b1                                   ; $7a9d: $da $b1 $d6

    sub a                                         ; $7aa0: $97
    ld h, $e9                                     ; $7aa1: $26 $e9
    ld [hl], a                                    ; $7aa3: $77
    ld h, c                                       ; $7aa4: $61
    ld h, b                                       ; $7aa5: $60
    ld a, [hl-]                                   ; $7aa6: $3a
    sbc l                                         ; $7aa7: $9d
    add h                                         ; $7aa8: $84
    ld h, a                                       ; $7aa9: $67
    di                                            ; $7aaa: $f3
    sbc h                                         ; $7aab: $9c
    ld [bc], a                                    ; $7aac: $02
    ld a, h                                       ; $7aad: $7c
    ret c                                         ; $7aae: $d8

    adc [hl]                                      ; $7aaf: $8e
    ccf                                           ; $7ab0: $3f
    dec sp                                        ; $7ab1: $3b
    ld h, l                                       ; $7ab2: $65
    ld e, [hl]                                    ; $7ab3: $5e
    ld a, [hl]                                    ; $7ab4: $7e
    ld l, e                                       ; $7ab5: $6b
    push de                                       ; $7ab6: $d5
    jr jr_023_7a4c                                ; $7ab7: $18 $93

    rst $38                                       ; $7ab9: $ff
    jp c, Jump_000_3ad3                           ; $7aba: $da $d3 $3a

    ld a, [hl+]                                   ; $7abd: $2a
    sbc $20                                       ; $7abe: $de $20
    inc c                                         ; $7ac0: $0c
    dec a                                         ; $7ac1: $3d
    and h                                         ; $7ac2: $a4

jr_023_7ac3:
    cp c                                          ; $7ac3: $b9
    inc d                                         ; $7ac4: $14
    call z, Call_023_4073                         ; $7ac5: $cc $73 $40
    xor a                                         ; $7ac8: $af
    push af                                       ; $7ac9: $f5
    and l                                         ; $7aca: $a5

jr_023_7acb:
    ld l, l                                       ; $7acb: $6d
    ld [hl], a                                    ; $7acc: $77

jr_023_7acd:
    db $dd                                        ; $7acd: $dd
    add hl, hl                                    ; $7ace: $29
    jp hl                                         ; $7acf: $e9


    db $eb                                        ; $7ad0: $eb

Call_023_7ad1:
    jr z, jr_023_7acb                             ; $7ad1: $28 $f8

    jp nz, $935f                                  ; $7ad3: $c2 $5f $93

    and [hl]                                      ; $7ad6: $a6
    ld h, $3f                                     ; $7ad7: $26 $3f
    ld c, d                                       ; $7ad9: $4a
    ld b, a                                       ; $7ada: $47
    ld l, e                                       ; $7adb: $6b
    ld [hl], c                                    ; $7adc: $71
    ld l, l                                       ; $7add: $6d
    ld d, [hl]                                    ; $7ade: $56
    ld e, [hl]                                    ; $7adf: $5e
    ld a, [hl]                                    ; $7ae0: $7e
    halt                                          ; $7ae1: $76
    jp z, $fcbc                                   ; $7ae2: $ca $bc $fc

    jp c, $e74a                                   ; $7ae5: $da $4a $e7

    sbc e                                         ; $7ae8: $9b
    ld [hl], a                                    ; $7ae9: $77
    add h                                         ; $7aea: $84
    ld bc, $5a96                                  ; $7aeb: $01 $96 $5a
    cp b                                          ; $7aee: $b8
    ret nz                                        ; $7aef: $c0

    xor b                                         ; $7af0: $a8
    or b                                          ; $7af1: $b0
    ld c, e                                       ; $7af2: $4b
    pop bc                                        ; $7af3: $c1
    cp h                                          ; $7af4: $bc
    ld e, h                                       ; $7af5: $5c
    jr jr_023_7ac3                                ; $7af6: $18 $cb

    sub h                                         ; $7af8: $94
    add hl, de                                    ; $7af9: $19
    ld a, [c]                                     ; $7afa: $f2
    dec de                                        ; $7afb: $1b
    rst $20                                       ; $7afc: $e7
    push hl                                       ; $7afd: $e5
    rst $10                                       ; $7afe: $d7
    ld d, [hl]                                    ; $7aff: $56
    ld a, [hl-]                                   ; $7b00: $3a
    rst $18                                       ; $7b01: $df
    cp h                                          ; $7b02: $bc
    rrca                                          ; $7b03: $0f
    ld e, h                                       ; $7b04: $5c
    push bc                                       ; $7b05: $c5
    ld bc, $9bad                                  ; $7b06: $01 $ad $9b
    ld d, d                                       ; $7b09: $52
    call $d457                                    ; $7b0a: $cd $57 $d4
    ld a, [$6a53]                                 ; $7b0d: $fa $53 $6a
    ld d, $a6                                     ; $7b10: $16 $a6
    db $fc                                        ; $7b12: $fc
    jp nc, $935e                                  ; $7b13: $d2 $5e $93

    ld h, [hl]                                    ; $7b16: $66
    db $10                                        ; $7b17: $10
    ld l, a                                       ; $7b18: $6f
    and a                                         ; $7b19: $a7
    ld [hl], e                                    ; $7b1a: $73
    add hl, hl                                    ; $7b1b: $29
    sbc b                                         ; $7b1c: $98

Call_023_7b1d:
jr_023_7b1d:
    ld a, [c]                                     ; $7b1d: $f2
    jp c, $0c20                                   ; $7b1e: $da $20 $0c

    and a                                         ; $7b21: $a7
    and h                                         ; $7b22: $a4
    sub a                                         ; $7b23: $97
    ld c, e                                       ; $7b24: $4b

jr_023_7b25:
    pop bc                                        ; $7b25: $c1
    ld c, h                                       ; $7b26: $4c
    ld h, a                                       ; $7b27: $67
    ld e, [hl]                                    ; $7b28: $5e
    ld e, [hl]                                    ; $7b29: $5e
    ld a, [hl]                                    ; $7b2a: $7e
    sbc [hl]                                      ; $7b2b: $9e
    add e                                         ; $7b2c: $83
    ld a, a                                       ; $7b2d: $7f
    xor $5a                                       ; $7b2e: $ee $5a
    ld d, l                                       ; $7b30: $55
    and h                                         ; $7b31: $a4
    ld b, c                                       ; $7b32: $41
    dec sp                                        ; $7b33: $3b
    ld a, [hl+]                                   ; $7b34: $2a
    add $79                                       ; $7b35: $c6 $79
    ld sp, hl                                     ; $7b37: $f9
    reti                                          ; $7b38: $d9


    add [hl]                                      ; $7b39: $86
    halt                                          ; $7b3a: $76
    ld h, c                                       ; $7b3b: $61
    inc l                                         ; $7b3c: $2c
    ld a, c                                       ; $7b3d: $79
    ld e, d                                       ; $7b3e: $5a
    ld a, c                                       ; $7b3f: $79
    ld sp, hl                                     ; $7b40: $f9
    ld l, $18                                     ; $7b41: $2e $18
    cp l                                          ; $7b43: $bd
    jp nc, $e4d4                                  ; $7b44: $d2 $d4 $e4

    ld b, a                                       ; $7b47: $47
    jp hl                                         ; $7b48: $e9


    dec bc                                        ; $7b49: $0b
    ld a, [c]                                     ; $7b4a: $f2
    ld d, d                                       ; $7b4b: $52
    jr nc, jr_023_7b1d                            ; $7b4c: $30 $cf

    add l                                         ; $7b4e: $85
    rrca                                          ; $7b4f: $0f
    jr nc, jr_023_7b25                            ; $7b50: $30 $d3

    ld e, c                                       ; $7b52: $59
    ret c                                         ; $7b53: $d8

    adc h                                         ; $7b54: $8c
    ld l, [hl]                                    ; $7b55: $6e
    push af                                       ; $7b56: $f5
    call c, $f155                                 ; $7b57: $dc $55 $f1
    sub l                                         ; $7b5a: $95
    add $0c                                       ; $7b5b: $c6 $0c
    dec b                                         ; $7b5d: $05
    sbc a                                         ; $7b5e: $9f
    add h                                         ; $7b5f: $84
    sub $e2                                       ; $7b60: $d6 $e2
    jp c, Jump_023_74cc                           ; $7b62: $da $cc $74

    ld d, [hl]                                    ; $7b65: $56
    ld e, [hl]                                    ; $7b66: $5e
    ld a, [hl]                                    ; $7b67: $7e
    halt                                          ; $7b68: $76
    jp z, $349a                                   ; $7b69: $ca $9a $34

    or d                                          ; $7b6c: $b2
    adc [hl]                                      ; $7b6d: $8e
    adc d                                         ; $7b6e: $8a
    scf                                           ; $7b6f: $37

jr_023_7b70:
    ld [$2f21], sp                                ; $7b70: $08 $21 $2f
    ld [$d4b3], a                                 ; $7b73: $ea $b3 $d4
    ld h, d                                       ; $7b76: $62
    ld e, h                                       ; $7b77: $5c
    ld d, c                                       ; $7b78: $51
    db $eb                                        ; $7b79: $eb
    rst $08                                       ; $7b7a: $cf
    ld [hl], e                                    ; $7b7b: $73
    ld d, l                                       ; $7b7c: $55

Jump_023_7b7d:
    ld a, h                                       ; $7b7d: $7c
    and l                                         ; $7b7e: $a5

jr_023_7b7f:
    sbc c                                         ; $7b7f: $99
    adc $d4                                       ; $7b80: $ce $d4
    or $17                                        ; $7b82: $f6 $17
    add h                                         ; $7b84: $84
    ld bc, $e4a7                                  ; $7b85: $01 $a7 $e4
    add d                                         ; $7b88: $82
    cp h                                          ; $7b89: $bc
    inc d                                         ; $7b8a: $14
    db $ec                                        ; $7b8b: $ec
    jp nc, $779a                                  ; $7b8c: $d2 $9a $77

    or h                                          ; $7b8f: $b4
    ld e, $e5                                     ; $7b90: $1e $e5
    rst $00                                       ; $7b92: $c7
    cp [hl]                                       ; $7b93: $be
    ld c, d                                       ; $7b94: $4a
    ld d, c                                       ; $7b95: $51
    cp a                                          ; $7b96: $bf
    ld c, c                                       ; $7b97: $49
    jr nc, @-$69                                  ; $7b98: $30 $95

    and a                                         ; $7b9a: $a7
    sbc d                                         ; $7b9b: $9a
    ld c, a                                       ; $7b9c: $4f
    ld e, [hl]                                    ; $7b9d: $5e
    ld e, c                                       ; $7b9e: $59
    add e                                         ; $7b9f: $83
    jr nc, jr_023_7b7f                            ; $7ba0: $30 $dd

    sub h                                         ; $7ba2: $94
    ld l, d                                       ; $7ba3: $6a
    cp [hl]                                       ; $7ba4: $be
    and d                                         ; $7ba5: $a2
    sub $5f                                       ; $7ba6: $d6 $5f
    di                                            ; $7ba8: $f3
    ld h, l                                       ; $7ba9: $65
    cp h                                          ; $7baa: $bc
    ld [de], a                                    ; $7bab: $12

Jump_023_7bac:
    ld a, e                                       ; $7bac: $7b
    cp c                                          ; $7bad: $b9
    ld d, h                                       ; $7bae: $54
    sbc e                                         ; $7baf: $9b
    ld c, d                                       ; $7bb0: $4a
    ld a, [de]                                    ; $7bb1: $1a
    ld h, d                                       ; $7bb2: $62
    ld c, e                                       ; $7bb3: $4b
    db $e3                                        ; $7bb4: $e3
    ld [hl], b                                    ; $7bb5: $70
    reti                                          ; $7bb6: $d9


    ld c, a                                       ; $7bb7: $4f
    ld a, l                                       ; $7bb8: $7d
    ld e, [hl]                                    ; $7bb9: $5e
    ld l, $ac                                     ; $7bba: $2e $ac
    and h                                         ; $7bbc: $a4
    ld de, $5aee                                  ; $7bbd: $11 $ee $5a
    ld d, l                                       ; $7bc0: $55
    and h                                         ; $7bc1: $a4
    ld b, c                                       ; $7bc2: $41
    jr @-$51                                      ; $7bc3: $18 $ad

    ld l, d                                       ; $7bc5: $6a
    db $fd                                        ; $7bc6: $fd
    dec [hl]                                      ; $7bc7: $35
    ld l, c                                       ; $7bc8: $69
    ld b, $ff                                     ; $7bc9: $06 $ff
    or h                                          ; $7bcb: $b4
    sub $97                                       ; $7bcc: $d6 $97
    ldh a, [rNR52]                                ; $7bce: $f0 $26
    ld a, l                                       ; $7bd0: $7d
    ld d, a                                       ; $7bd1: $57
    inc c                                         ; $7bd2: $0c
    sub [hl]                                      ; $7bd3: $96
    ld a, c                                       ; $7bd4: $79
    ld c, c                                       ; $7bd5: $49
    inc de                                        ; $7bd6: $13
    inc d                                         ; $7bd7: $14
    sbc a                                         ; $7bd8: $9f
    ld h, l                                       ; $7bd9: $65
    and b                                         ; $7bda: $a0
    db $fc                                        ; $7bdb: $fc
    jp z, $dacb                                   ; $7bdc: $ca $cb $da

    call $fcbc                                    ; $7bdf: $cd $bc $fc
    jp c, Jump_000_1992                           ; $7be2: $da $92 $19

    xor [hl]                                      ; $7be5: $ae
    ld [hl-], a                                   ; $7be6: $32
    sbc l                                         ; $7be7: $9d
    halt                                          ; $7be8: $76
    xor d                                         ; $7be9: $aa
    jr nc, jr_023_7b70                            ; $7bea: $30 $84

    ld bc, $2fad                                  ; $7bec: $01 $ad $2f
    and e                                         ; $7bef: $a3
    add h                                         ; $7bf0: $84
    rst $18                                       ; $7bf1: $df
    add l                                         ; $7bf2: $85
    ld [hl], l                                    ; $7bf3: $75
    inc h                                         ; $7bf4: $24
    db $db                                        ; $7bf5: $db
    jp c, $cd8e                                   ; $7bf6: $da $8e $cd

    ld l, $4d                                     ; $7bf9: $2e $4d
    rst $10                                       ; $7bfb: $d7
    adc $ac                                       ; $7bfc: $ce $ac
    ld [hl], e                                    ; $7bfe: $73
    rst $10                                       ; $7bff: $d7
    ld [hl], $3e                                  ; $7c00: $36 $3e
    bit 3, b                                      ; $7c02: $cb $58
    ld d, d                                       ; $7c04: $52
    call $a757                                    ; $7c05: $cd $57 $a7
    db $e4                                        ; $7c08: $e4
    rst $00                                       ; $7c09: $c7
    sub a                                         ; $7c0a: $97
    sub a                                         ; $7c0b: $97
    sbc a                                         ; $7c0c: $9f
    sub a                                         ; $7c0d: $97
    sbc a                                         ; $7c0e: $9f
    inc a                                         ; $7c0f: $3c
    ld hl, sp-$2e                                 ; $7c10: $f8 $d2
    ld e, [hl]                                    ; $7c12: $5e
    ld a, c                                       ; $7c13: $79
    reti                                          ; $7c14: $d9


    dec b                                         ; $7c15: $05
    add h                                         ; $7c16: $84
    ld bc, $6b27                                  ; $7c17: $01 $27 $6b
    db $d3                                        ; $7c1a: $d3
    cp $41                                        ; $7c1b: $fe $41
    ld sp, hl                                     ; $7c1d: $f9
    ld a, [de]                                    ; $7c1e: $1a
    adc h                                         ; $7c1f: $8c
    cp a                                          ; $7c20: $bf
    ld e, [hl]                                    ; $7c21: $5e
    halt                                          ; $7c22: $76
    jp z, $6f5b                                   ; $7c23: $ca $5b $6f

    adc h                                         ; $7c26: $8c

jr_023_7c27:
    ld e, a                                       ; $7c27: $5f
    add e                                         ; $7c28: $83
    ld a, c                                       ; $7c29: $79
    ld a, [hl+]                                   ; $7c2a: $2a
    sbc e                                         ; $7c2b: $9b

Jump_023_7c2c:
    ld [de], a                                    ; $7c2c: $12
    sbc e                                         ; $7c2d: $9b
    sub a                                         ; $7c2e: $97
    ld l, a                                       ; $7c2f: $6f
    ld l, d                                       ; $7c30: $6a
    ld a, [c]                                     ; $7c31: $f2
    ld l, e                                       ; $7c32: $6b
    and a                                         ; $7c33: $a7
    sub a                                         ; $7c34: $97
    push bc                                       ; $7c35: $c5

jr_023_7c36:
    inc b                                         ; $7c36: $04
    ld b, a                                       ; $7c37: $47
    jr jr_023_7c67                                ; $7c38: $18 $2d

    push hl                                       ; $7c3a: $e5
    ld l, e                                       ; $7c3b: $6b
    or b                                          ; $7c3c: $b0
    ld c, e                                       ; $7c3d: $4b
    di                                            ; $7c3e: $f3
    ld a, [c]                                     ; $7c3f: $f2
    or e                                          ; $7c40: $b3
    xor a                                         ; $7c41: $af
    add b                                         ; $7c42: $80
    rst $08                                       ; $7c43: $cf
    adc [hl]                                      ; $7c44: $8e
    sbc c                                         ; $7c45: $99
    or d                                          ; $7c46: $b2
    db $e3                                        ; $7c47: $e3
    xor a                                         ; $7c48: $af
    ld b, h                                       ; $7c49: $44
    xor b                                         ; $7c4a: $a8
    db $ed                                        ; $7c4b: $ed
    ld l, b                                       ; $7c4c: $68
    push af                                       ; $7c4d: $f5
    ld [hl+], a                                   ; $7c4e: $22
    sbc c                                         ; $7c4f: $99
    pop hl                                        ; $7c50: $e1
    cp b                                          ; $7c51: $b8
    xor e                                         ; $7c52: $ab
    and h                                         ; $7c53: $a4
    cp c                                          ; $7c54: $b9
    inc d                                         ; $7c55: $14
    xor h                                         ; $7c56: $ac
    cp h                                          ; $7c57: $bc
    db $ec                                        ; $7c58: $ec
    sbc e                                         ; $7c59: $9b
    add a                                         ; $7c5a: $87

jr_023_7c5b:
    and l                                         ; $7c5b: $a5
    ld [hl], c                                    ; $7c5c: $71
    xor $bc                                       ; $7c5d: $ee $bc

jr_023_7c5f:
    jr z, jr_023_7c36                             ; $7c5f: $28 $d5

    ld h, c                                       ; $7c61: $61
    sbc [hl]                                      ; $7c62: $9e
    ld l, e                                       ; $7c63: $6b
    jp nc, $c174                                  ; $7c64: $d2 $74 $c1

jr_023_7c67:
    and a                                         ; $7c67: $a7
    ld d, $ee                                     ; $7c68: $16 $ee
    jr z, jr_023_7c27                             ; $7c6a: $28 $bb

    call z, Call_023_7632                         ; $7c6c: $cc $32 $76
    add hl, de                                    ; $7c6f: $19
    push de                                       ; $7c70: $d5
    ld a, h                                       ; $7c71: $7c
    pop hl                                        ; $7c72: $e1
    dec hl                                        ; $7c73: $2b
    call $994e                                    ; $7c74: $cd $4e $99
    rla                                           ; $7c77: $17
    push af                                       ; $7c78: $f5
    ld a, c                                       ; $7c79: $79
    xor [hl]                                      ; $7c7a: $ae
    ld l, b                                       ; $7c7b: $68
    and a                                         ; $7c7c: $a7
    di                                            ; $7c7d: $f3
    add h                                         ; $7c7e: $84
    jr nc, jr_023_7ca8                            ; $7c7f: $30 $27

    cp l                                          ; $7c81: $bd
    rst $10                                       ; $7c82: $d7
    ld h, b                                       ; $7c83: $60
    xor [hl]                                      ; $7c84: $ae
    or c                                          ; $7c85: $b1
    ld a, $cf                                     ; $7c86: $3e $cf
    sub l                                         ; $7c88: $95
    sub a                                         ; $7c89: $97
    pop af                                        ; $7c8a: $f1
    push hl                                       ; $7c8b: $e5
    ld l, c                                       ; $7c8c: $69
    ld d, b                                       ; $7c8d: $50
    ld a, [hl]                                    ; $7c8e: $7e
    ld d, l                                       ; $7c8f: $55
    add [hl]                                      ; $7c90: $86
    rrca                                          ; $7c91: $0f
    ld l, e                                       ; $7c92: $6b
    ld l, e                                       ; $7c93: $6b
    ld d, l                                       ; $7c94: $55
    ld b, a                                       ; $7c95: $47
    jr jr_023_7c5f                                ; $7c96: $18 $c7

    ld e, d                                       ; $7c98: $5a
    ld e, a                                       ; $7c99: $5f
    sbc d                                         ; $7c9a: $9a
    and h                                         ; $7c9b: $a4
    rst $18                                       ; $7c9c: $df
    dec h                                         ; $7c9d: $25
    rst $08                                       ; $7c9e: $cf
    ld a, c                                       ; $7c9f: $79
    ld sp, hl                                     ; $7ca0: $f9
    dec e                                         ; $7ca1: $1d
    cpl                                           ; $7ca2: $2f
    xor a                                         ; $7ca3: $af
    cp [hl]                                       ; $7ca4: $be
    ld d, [hl]                                    ; $7ca5: $56
    adc l                                         ; $7ca6: $8d
    or c                                          ; $7ca7: $b1

jr_023_7ca8:
    bit 1, [hl]                                   ; $7ca8: $cb $4e
    ld a, d                                       ; $7caa: $7a
    sbc a                                         ; $7cab: $9f
    sub a                                         ; $7cac: $97
    ld e, a                                       ; $7cad: $5f
    xor e                                         ; $7cae: $ab
    add $98                                       ; $7caf: $c6 $98
    db $fc                                        ; $7cb1: $fc
    ccf                                           ; $7cb2: $3f
    db $ed                                        ; $7cb3: $ed
    cp b                                          ; $7cb4: $b8
    ld d, a                                       ; $7cb5: $57
    ldh a, [$b5]                                  ; $7cb6: $f0 $b5
    ccf                                           ; $7cb8: $3f
    cp b                                          ; $7cb9: $b8
    call nc, $0305                                ; $7cba: $d4 $05 $03
    dec a                                         ; $7cbd: $3d
    ld a, [$bef6]                                 ; $7cbe: $fa $f6 $be
    ld e, l                                       ; $7cc1: $5d
    ld [hl-], a                                   ; $7cc2: $32
    ld b, [hl]                                    ; $7cc3: $46
    add h                                         ; $7cc4: $84
    ld d, b                                       ; $7cc5: $50
    jp nc, $beec                                  ; $7cc6: $d2 $ec $be

    db $ed                                        ; $7cc9: $ed
    cp [hl]                                       ; $7cca: $be
    db $ed                                        ; $7ccb: $ed
    dec hl                                        ; $7ccc: $2b
    ldh [$b3], a                                  ; $7ccd: $e0 $b3
    ei                                            ; $7ccf: $fb
    or [hl]                                       ; $7cd0: $b6
    ei                                            ; $7cd1: $fb
    or [hl]                                       ; $7cd2: $b6
    ld h, e                                       ; $7cd3: $63
    and [hl]                                      ; $7cd4: $a6

jr_023_7cd5:
    jr nz, jr_023_7c5b                            ; $7cd5: $20 $84

    cp h                                          ; $7cd7: $bc
    and h                                         ; $7cd8: $a4
    add hl, bc                                    ; $7cd9: $09
    adc d                                         ; $7cda: $8a
    xor a                                         ; $7cdb: $af
    ld c, c                                       ; $7cdc: $49
    or e                                          ; $7cdd: $b3
    inc [hl]                                      ; $7cde: $34
    ld b, c                                       ; $7cdf: $41
    pop af                                        ; $7ce0: $f1
    ld a, c                                       ; $7ce1: $79
    xor [hl]                                      ; $7ce2: $ae
    ld c, [hl]                                    ; $7ce3: $4e
    ret                                           ; $7ce4: $c9


    inc hl                                        ; $7ce5: $23
    inc c                                         ; $7ce6: $0c
    db $dd                                        ; $7ce7: $dd
    push hl                                       ; $7ce8: $e5
    db $ed                                        ; $7ce9: $ed
    xor a                                         ; $7cea: $af
    inc e                                         ; $7ceb: $1c
    cp b                                          ; $7cec: $b8
    adc e                                         ; $7ced: $8b
    xor a                                         ; $7cee: $af
    ld l, h                                       ; $7cef: $6c
    ld c, l                                       ; $7cf0: $4d
    ld a, [de]                                    ; $7cf1: $1a
    ld e, c                                       ; $7cf2: $59
    ld c, c                                       ; $7cf3: $49
    inc bc                                        ; $7cf4: $03
    rrca                                          ; $7cf5: $0f
    ld l, e                                       ; $7cf6: $6b
    ld l, e                                       ; $7cf7: $6b
    ld d, l                                       ; $7cf8: $55
    sbc a                                         ; $7cf9: $9f
    rst $20                                       ; $7cfa: $e7
    cp h                                          ; $7cfb: $bc
    db $fc                                        ; $7cfc: $fc
    ld e, b                                       ; $7cfd: $58
    ld c, d                                       ; $7cfe: $4a
    ld a, b                                       ; $7cff: $78
    dec a                                         ; $7d00: $3d
    push hl                                       ; $7d01: $e5
    ld a, $ec                                     ; $7d02: $3e $ec
    add [hl]                                      ; $7d04: $86
    pop hl                                        ; $7d05: $e1
    or e                                          ; $7d06: $b3
    xor e                                         ; $7d07: $ab
    cp $b1                                        ; $7d08: $fe $b1
    jp hl                                         ; $7d0a: $e9


    add d                                         ; $7d0b: $82
    ld bc, $7e2d                                  ; $7d0c: $01 $2d $7e
    xor e                                         ; $7d0f: $ab
    ld a, [$833c]                                 ; $7d10: $fa $3c $83
    rst $30                                       ; $7d13: $f7
    ld a, [c]                                     ; $7d14: $f2
    jp nz, Jump_023_7d9d                          ; $7d15: $c2 $9d $7d

    dec b                                         ; $7d18: $05
    cp h                                          ; $7d19: $bc
    rst $28                                       ; $7d1a: $ef
    and $55                                       ; $7d1b: $e6 $55
    and b                                         ; $7d1d: $a0
    res 1, [hl]                                   ; $7d1e: $cb $8e
    rr b                                          ; $7d20: $cb $18
    sub e                                         ; $7d22: $93
    ld e, a                                       ; $7d23: $5f
    ld hl, sp+$5d                                 ; $7d24: $f8 $5d
    jr nc, jr_023_7cd5                            ; $7d26: $30 $ad

    ret                                           ; $7d28: $c9


    xor a                                         ; $7d29: $af
    ld c, d                                       ; $7d2a: $4a
    inc de                                        ; $7d2b: $13

jr_023_7d2c:
    reti                                          ; $7d2c: $d9


    ld [hl], h                                    ; $7d2d: $74
    ld l, $19                                     ; $7d2e: $2e $19
    db $e3                                        ; $7d30: $e3
    add d                                         ; $7d31: $82
    rst $30                                       ; $7d32: $f7
    ld e, l                                       ; $7d33: $5d
    ld [$018a], a                                 ; $7d34: $ea $8a $01
    daa                                           ; $7d37: $27
    ld l, e                                       ; $7d38: $6b
    db $d3                                        ; $7d39: $d3
    cp $75                                        ; $7d3a: $fe $75
    rst $38                                       ; $7d3c: $ff
    or a                                          ; $7d3d: $b7
    ld a, $2c                                     ; $7d3e: $3e $2c
    cp [hl]                                       ; $7d40: $be
    rst $28                                       ; $7d41: $ef
    ld a, [$cd2e]                                 ; $7d42: $fa $2e $cd
    ld c, [hl]                                    ; $7d45: $4e
    sbc c                                         ; $7d46: $99
    xor [hl]                                      ; $7d47: $ae
    ld d, l                                       ; $7d48: $55
    ld h, e                                       ; $7d49: $63
    ld c, h                                       ; $7d4a: $4c
    cp $9f                                        ; $7d4b: $fe $9f
    sub $11                                       ; $7d4d: $d6 $11
    and l                                         ; $7d4f: $a5
    ld a, [hl-]                                   ; $7d50: $3a
    jp nz, $f53d                                  ; $7d51: $c2 $3d $f5

    ld a, [$e174]                                 ; $7d54: $fa $74 $e1
    dec h                                         ; $7d57: $25
    db $e3                                        ; $7d58: $e3
    adc a                                         ; $7d59: $8f
    db $10                                        ; $7d5a: $10
    ld l, d                                       ; $7d5b: $6a
    ld a, l                                       ; $7d5c: $7d
    add hl, bc                                    ; $7d5d: $09
    ld l, a                                       ; $7d5e: $6f
    jp nc, $e58f                                  ; $7d5f: $d2 $8f $e5

    inc bc                                        ; $7d62: $03
    push de                                       ; $7d63: $d5
    ld a, h                                       ; $7d64: $7c
    ld [hl], l                                    ; $7d65: $75
    ld c, d                                       ; $7d66: $4a
    ld a, [hl]                                    ; $7d67: $7e
    jp c, $e34e                                   ; $7d68: $da $4e $e3

    di                                            ; $7d6b: $f3
    ld a, [c]                                     ; $7d6c: $f2
    ld [hl], e                                    ; $7d6d: $73
    ret                                           ; $7d6e: $c9


    jr jr_023_7d2c                                ; $7d6f: $18 $bb

    ld l, h                                       ; $7d71: $6c
    dec a                                         ; $7d72: $3d
    ld a, a                                       ; $7d73: $7f
    ld b, l                                       ; $7d74: $45
    xor l                                         ; $7d75: $ad
    ccf                                           ; $7d76: $3f
    rst $08                                       ; $7d77: $cf
    pop af                                        ; $7d78: $f1
    ld a, [hl+]                                   ; $7d79: $2a
    or h                                          ; $7d7a: $b4
    ld a, [c]                                     ; $7d7b: $f2
    jp nc, $0305                                  ; $7d7c: $d2 $05 $03

    dec a                                         ; $7d7f: $3d
    adc e                                         ; $7d80: $8b
    ld a, [$8578]                                 ; $7d81: $fa $78 $85
    or l                                          ; $7d84: $b5
    sub b                                         ; $7d85: $90
    halt                                          ; $7d86: $76
    ld a, [hl]                                    ; $7d87: $7e
    inc l                                         ; $7d88: $2c
    cpl                                           ; $7d89: $2f
    dec b                                         ; $7d8a: $05
    inc sp                                        ; $7d8b: $33
    sbc l                                         ; $7d8c: $9d
    sub l                                         ; $7d8d: $95
    sub a                                         ; $7d8e: $97
    rst $28                                       ; $7d8f: $ef
    adc d                                         ; $7d90: $8a
    ld bc, $533d                                  ; $7d91: $01 $3d $53
    and h                                         ; $7d94: $a4
    sbc c                                         ; $7d95: $99
    or [hl]                                       ; $7d96: $b6
    db $d3                                        ; $7d97: $d3
    ld hl, sp-$36                                 ; $7d98: $f8 $ca
    dec c                                         ; $7d9a: $0d
    rla                                           ; $7d9b: $17
    push de                                       ; $7d9c: $d5

Jump_023_7d9d:
    ld e, a                                       ; $7d9d: $5f
    ret nc                                        ; $7d9e: $d0

    ld c, [hl]                                    ; $7d9f: $4e
    ld a, d                                       ; $7da0: $7a
    xor a                                         ; $7da1: $af
    pop bc                                        ; $7da2: $c1
    db $ec                                        ; $7da3: $ec
    ld c, e                                       ; $7da4: $4b
    ld l, h                                       ; $7da5: $6c
    xor l                                         ; $7da6: $ad
    cpl                                           ; $7da7: $2f
    pop hl                                        ; $7da8: $e1
    ld c, l                                       ; $7da9: $4d
    ld a, [$182e]                                 ; $7daa: $fa $2e $18
    rst $00                                       ; $7dad: $c7
    db $e4                                        ; $7dae: $e4

Jump_023_7daf:
    sbc d                                         ; $7daf: $9a
    inc [hl]                                      ; $7db0: $34
    add e                                         ; $7db1: $83
    ldh a, [$63]                                  ; $7db2: $f0 $63
    inc e                                         ; $7db4: $1c
    ld h, h                                       ; $7db5: $64
    ld hl, sp+$5e                                 ; $7db6: $f8 $5e
    ld l, $05                                     ; $7db8: $2e $05
    ld e, l                                       ; $7dba: $5d
    ld sp, $1ebd                                  ; $7dbb: $31 $bd $1e
    db $10                                        ; $7dbe: $10
    ld b, d                                       ; $7dbf: $42
    rst $10                                       ; $7dc0: $d7
    ld l, e                                       ; $7dc1: $6b
    or b                                          ; $7dc2: $b0
    ld a, b                                       ; $7dc3: $78
    db $eb                                        ; $7dc4: $eb
    cp a                                          ; $7dc5: $bf
    adc h                                         ; $7dc6: $8c
    ld l, h                                       ; $7dc7: $6c
    sub b                                         ; $7dc8: $90
    ld d, l                                       ; $7dc9: $55
    dec e                                         ; $7dca: $1d
    and [hl]                                      ; $7dcb: $a6
    call nz, $eba6                                ; $7dcc: $c4 $a6 $eb
    sbc b                                         ; $7dcf: $98
    halt                                          ; $7dd0: $76
    cp h                                          ; $7dd1: $bc
    push de                                       ; $7dd2: $d5
    jp c, Jump_023_45ea                           ; $7dd3: $da $ea $45

    ld [hl-], a                                   ; $7dd6: $32
    jp $eda1                                      ; $7dd7: $c3 $a1 $ed


    ld h, h                                       ; $7dda: $64
    ld l, l                                       ; $7ddb: $6d
    jp c, $fe3f                                   ; $7ddc: $da $3f $fe

    ld l, e                                       ; $7ddf: $6b
    ld a, [c]                                     ; $7de0: $f2
    and e                                         ; $7de1: $a3
    ld d, a                                       ; $7de2: $57
    ld e, c                                       ; $7de3: $59
    ld c, e                                       ; $7de4: $4b
    ld l, h                                       ; $7de5: $6c
    cp h                                          ; $7de6: $bc
    cp h                                          ; $7de7: $bc
    ld e, h                                       ; $7de8: $5c
    ld b, d                                       ; $7de9: $42
    jr @-$57                                      ; $7dea: $18 $a7

    daa                                           ; $7dec: $27
    ld hl, $6284                                  ; $7ded: $21 $84 $62
    ld h, [hl]                                    ; $7df0: $66
    cp l                                          ; $7df1: $bd
    dec bc                                        ; $7df2: $0b
    ld b, $3d                                     ; $7df3: $06 $3d
    set 1, e                                      ; $7df5: $cb $cb
    rst $10                                       ; $7df7: $d7
    ld h, b                                       ; $7df8: $60
    rst $10                                       ; $7df9: $d7
    rla                                           ; $7dfa: $17
    db $e4                                        ; $7dfb: $e4
    and l                                         ; $7dfc: $a5
    and b                                         ; $7dfd: $a0
    dec hl                                        ; $7dfe: $2b
    ld b, $c7                                     ; $7dff: $06 $c7
    ld a, [hl]                                    ; $7e01: $7e
    cp l                                          ; $7e02: $bd
    ld c, e                                       ; $7e03: $4b
    sub a                                         ; $7e04: $97
    ld l, $18                                     ; $7e05: $2e $18
    dec a                                         ; $7e07: $3d
    adc e                                         ; $7e08: $8b
    ld a, [$8578]                                 ; $7e09: $fa $78 $85
    ld a, c                                       ; $7e0c: $79
    ld d, c                                       ; $7e0d: $51
    rst $28                                       ; $7e0e: $ef
    adc d                                         ; $7e0f: $8a
    ld bc, $2fad                                  ; $7e10: $01 $ad $2f
    pop hl                                        ; $7e13: $e1
    ld c, l                                       ; $7e14: $4d
    ld a, [$eb2e]                                 ; $7e15: $fa $2e $eb
    ld d, c                                       ; $7e18: $51
    ld a, [hl]                                    ; $7e19: $7e
    ld l, $19                                     ; $7e1a: $2e $19
    ld h, e                                       ; $7e1c: $63
    dec c                                         ; $7e1d: $0d
    ld h, [hl]                                    ; $7e1e: $66
    and a                                         ; $7e1f: $a7
    ld hl, $f2b6                                  ; $7e20: $21 $b6 $f2
    jp nc, $0305                                  ; $7e23: $d2 $05 $03

    xor l                                         ; $7e26: $ad
    ld a, [hl+]                                   ; $7e27: $2a
    jp nc, $d770                                  ; $7e28: $d2 $70 $d7

    and h                                         ; $7e2b: $a4
    ld e, c                                       ; $7e2c: $59
    ld d, c                                       ; $7e2d: $51
    db $eb                                        ; $7e2e: $eb
    rst $08                                       ; $7e2f: $cf
    ld [hl], e                                    ; $7e30: $73
    and b                                         ; $7e31: $a0
    sub $5f                                       ; $7e32: $d6 $5f
    ld a, c                                       ; $7e34: $79
    jp hl                                         ; $7e35: $e9


    add d                                         ; $7e36: $82
    ld bc, $0596                                  ; $7e37: $01 $96 $05
    jp hl                                         ; $7e3a: $e9


    ld l, e                                       ; $7e3b: $6b
    jp nc, $8d2c                                  ; $7e3c: $d2 $2c $8d

    rst $28                                       ; $7e3f: $ef
    inc a                                         ; $7e40: $3c
    inc bc                                        ; $7e41: $03
    cp [hl]                                       ; $7e42: $be
    ld c, e                                       ; $7e43: $4b
    di                                            ; $7e44: $f3
    dec de                                        ; $7e45: $1b
    ld a, [hl]                                    ; $7e46: $7e
    sub a                                         ; $7e47: $97
    dec e                                         ; $7e48: $1d
    sbc a                                         ; $7e49: $9f
    ret                                           ; $7e4a: $c9


    and $e5                                       ; $7e4b: $e6 $e5
    ld d, d                                       ; $7e4d: $52
    jr nc, @-$33                                  ; $7e4e: $30 $cb

    adc d                                         ; $7e50: $8a
    or d                                          ; $7e51: $b2
    jp hl                                         ; $7e52: $e9


    ld a, d                                       ; $7e53: $7a
    sbc $20                                       ; $7e54: $de $20
    ld a, b                                       ; $7e56: $78
    ld [c], a                                     ; $7e57: $e2
    ccf                                           ; $7e58: $3f
    or d                                          ; $7e59: $b2
    ld [hl], l                                    ; $7e5a: $75
    ld c, a                                       ; $7e5b: $4f
    cp a                                          ; $7e5c: $bf
    ld c, c                                       ; $7e5d: $49
    ld l, b                                       ; $7e5e: $68
    ld b, a                                       ; $7e5f: $47
    dec de                                        ; $7e60: $1b

jr_023_7e61:
    ld e, a                                       ; $7e61: $5f
    db $eb                                        ; $7e62: $eb
    ld c, e                                       ; $7e63: $4b
    ld a, b                                       ; $7e64: $78
    sub e                                         ; $7e65: $93
    ld a, [hl]                                    ; $7e66: $7e
    rla                                           ; $7e67: $17
    ld b, $7e                                     ; $7e68: $06 $7e
    ld h, e                                       ; $7e6a: $63
    call c, $79a5                                 ; $7e6b: $dc $a5 $79
    ld a, c                                       ; $7e6e: $79
    ld a, c                                       ; $7e6f: $79
    or h                                          ; $7e70: $b4
    ld e, [hl]                                    ; $7e71: $5e
    ld l, c                                       ; $7e72: $69
    ld d, [hl]                                    ; $7e73: $56
    call nc, $f3fa                                ; $7e74: $d4 $fa $f3
    inc e                                         ; $7e77: $1c
    xor b                                         ; $7e78: $a8
    push af                                       ; $7e79: $f5
    ld d, a                                       ; $7e7a: $57
    ld e, [hl]                                    ; $7e7b: $5e
    cp d                                          ; $7e7c: $ba
    ld h, b                                       ; $7e7d: $60
    sub [hl]                                      ; $7e7e: $96
    dec b                                         ; $7e7f: $05
    jp hl                                         ; $7e80: $e9


    ld l, e                                       ; $7e81: $6b
    jp nc, $8d2c                                  ; $7e82: $d2 $2c $8d

    rst $28                                       ; $7e85: $ef
    inc a                                         ; $7e86: $3c
    inc bc                                        ; $7e87: $03
    cp [hl]                                       ; $7e88: $be
    ld c, e                                       ; $7e89: $4b
    di                                            ; $7e8a: $f3
    dec de                                        ; $7e8b: $1b
    ld a, [hl]                                    ; $7e8c: $7e
    sub a                                         ; $7e8d: $97
    dec e                                         ; $7e8e: $1d
    sbc a                                         ; $7e8f: $9f
    ret                                           ; $7e90: $c9


    and $e5                                       ; $7e91: $e6 $e5
    ld d, d                                       ; $7e93: $52
    jr nc, jr_023_7e61                            ; $7e94: $30 $cb

    adc d                                         ; $7e96: $8a
    or d                                          ; $7e97: $b2
    add hl, hl                                    ; $7e98: $29
    and l                                         ; $7e99: $a5
    sub a                                         ; $7e9a: $97
    sub a                                         ; $7e9b: $97
    push af                                       ; $7e9c: $f5
    cp h                                          ; $7e9d: $bc
    ld b, c                                       ; $7e9e: $41
    ldh a, [$c4]                                  ; $7e9f: $f0 $c4
    ld a, a                                       ; $7ea1: $7f
    ld h, h                                       ; $7ea2: $64
    db $eb                                        ; $7ea3: $eb
    sbc [hl]                                      ; $7ea4: $9e
    ld a, [hl]                                    ; $7ea5: $7e
    sub e                                         ; $7ea6: $93
    ret nc                                        ; $7ea7: $d0

    adc [hl]                                      ; $7ea8: $8e
    ld [hl], $be                                  ; $7ea9: $36 $be
    ld h, $cd                                     ; $7eab: $26 $cd
    ret nz                                        ; $7ead: $c0

    ld l, a                                       ; $7eae: $6f
    adc h                                         ; $7eaf: $8c
    dec bc                                        ; $7eb0: $0b
    dec c                                         ; $7eb1: $0d
    ld hl, sp-$1c                                 ; $7eb2: $f8 $e4
    and c                                         ; $7eb4: $a1

Call_023_7eb5:
    ld [hl-], a                                   ; $7eb5: $32
    cp a                                          ; $7eb6: $bf
    sub $97                                       ; $7eb7: $d6 $97
    ldh a, [rNR52]                                ; $7eb9: $f0 $26
    ld a, l                                       ; $7ebb: $7d
    rla                                           ; $7ebc: $17
    inc c                                         ; $7ebd: $0c
    xor l                                         ; $7ebe: $ad
    cpl                                           ; $7ebf: $2f
    pop hl                                        ; $7ec0: $e1
    ld c, l                                       ; $7ec1: $4d
    ld a, [$3b2e]                                 ; $7ec2: $fa $2e $3b
    ld c, d                                       ; $7ec5: $4a
    ld a, [hl]                                    ; $7ec6: $7e
    ld c, l                                       ; $7ec7: $4d
    sbc d                                         ; $7ec8: $9a
    ld l, c                                       ; $7ec9: $69
    adc h                                         ; $7eca: $8c
    sub e                                         ; $7ecb: $93
    dec de                                        ; $7ecc: $1b
    inc d                                         ; $7ecd: $14
    rst $28                                       ; $7ece: $ef
    adc d                                         ; $7ecf: $8a
    ld bc, $1ebd                                  ; $7ed0: $01 $bd $1e
    db $10                                        ; $7ed3: $10
    ld b, d                                       ; $7ed4: $42
    sub [hl]                                      ; $7ed5: $96
    ld a, c                                       ; $7ed6: $79
    cp c                                          ; $7ed7: $b9
    ld d, h                                       ; $7ed8: $54
    rra                                           ; $7ed9: $1f
    inc h                                         ; $7eda: $24
    ld b, d                                       ; $7edb: $42
    ld [$3d03], sp                                ; $7edc: $08 $03 $3d
    adc e                                         ; $7edf: $8b
    ld a, [$768a]                                 ; $7ee0: $fa $8a $76
    ld a, [hl-]                                   ; $7ee3: $3a
    ld c, a                                       ; $7ee4: $4f
    rst $08                                       ; $7ee5: $cf
    db $10                                        ; $7ee6: $10
    ld b, d                                       ; $7ee7: $42
    rst $08                                       ; $7ee8: $cf
    di                                            ; $7ee9: $f3
    call c, Call_023_5ff1                         ; $7eea: $dc $f1 $5f
    sub e                                         ; $7eed: $93
    rst $18                                       ; $7eee: $df
    and l                                         ; $7eef: $a5
    ld a, c                                       ; $7ef0: $79
    ld sp, hl                                     ; $7ef1: $f9
    dec e                                         ; $7ef2: $1d
    ld a, a                                       ; $7ef3: $7f
    dec h                                         ; $7ef4: $25
    ld b, d                                       ; $7ef5: $42
    ld l, l                                       ; $7ef6: $6d
    ld b, a                                       ; $7ef7: $47
    xor e                                         ; $7ef8: $ab
    rla                                           ; $7ef9: $17
    ret                                           ; $7efa: $c9


    inc c                                         ; $7efb: $0c
    ld de, $c706                                  ; $7efc: $11 $06 $c7
    ld e, h                                       ; $7eff: $5c
    or [hl]                                       ; $7f00: $b6
    ld h, $cd                                     ; $7f01: $26 $cd
    cp h                                          ; $7f03: $bc
    ret z                                         ; $7f04: $c8

    rst $38                                       ; $7f05: $ff
    add d                                         ; $7f06: $82
    ld e, h                                       ; $7f07: $5c
    call z, Call_023_5fac                         ; $7f08: $cc $ac $5f
    ld a, [bc]                                    ; $7f0b: $0a
    ld h, [hl]                                    ; $7f0c: $66
    and a                                         ; $7f0d: $a7
    call z, $fa8b                                 ; $7f0e: $cc $8b $fa
    ld e, h                                       ; $7f11: $5c
    ld [hl-], a                                   ; $7f12: $32
    add $ae                                       ; $7f13: $c6 $ae
    db $eb                                        ; $7f15: $eb
    sub l                                         ; $7f16: $95
    and [hl]                                      ; $7f17: $a6
    ld h, $bf                                     ; $7f18: $26 $bf
    ld l, b                                       ; $7f1a: $68
    xor d                                         ; $7f1b: $aa
    ld a, d                                       ; $7f1c: $7a
    or e                                          ; $7f1d: $b3
    ld h, $cd                                     ; $7f1e: $26 $cd
    ld hl, sp-$69                                 ; $7f20: $f8 $97
    and a                                         ; $7f22: $a7
    sbc d                                         ; $7f23: $9a
    xor a                                         ; $7f24: $af
    ld a, [hl]                                    ; $7f25: $7e
    ld h, e                                       ; $7f26: $63
    ld a, h                                       ; $7f27: $7c
    sub $05                                       ; $7f28: $d6 $05
    inc bc                                        ; $7f2a: $03
    sub [hl]                                      ; $7f2b: $96
    pop af                                        ; $7f2c: $f1
    ld c, a                                       ; $7f2d: $4f
    cp [hl]                                       ; $7f2e: $be
    sbc b                                         ; $7f2f: $98
    ld e, c                                       ; $7f30: $59
    cp a                                          ; $7f31: $bf

jr_023_7f32:
    inc d                                         ; $7f32: $14
    call z, $994e                                 ; $7f33: $cc $4e $99
    sub a                                         ; $7f36: $97
    sbc a                                         ; $7f37: $9f
    ld c, e                                       ; $7f38: $4b
    add $38                                       ; $7f39: $c6 $38
    adc l                                         ; $7f3b: $8d
    ld c, c                                       ; $7f3c: $49
    adc a                                         ; $7f3d: $8f
    ld [hl], $cb                                  ; $7f3e: $36 $cb
    cp h                                          ; $7f40: $bc
    and h                                         ; $7f41: $a4
    add hl, bc                                    ; $7f42: $09
    adc d                                         ; $7f43: $8a
    rst $08                                       ; $7f44: $cf
    or d                                          ; $7f45: $b2
    ld a, [hl+]                                   ; $7f46: $2a
    ld c, l                                       ; $7f47: $4d
    ld h, h                                       ; $7f48: $64
    ld h, e                                       ; $7f49: $63
    xor a                                         ; $7f4a: $af
    ld [hl], c                                    ; $7f4b: $71
    db $fc                                        ; $7f4c: $fc
    push af                                       ; $7f4d: $f5
    or d                                          ; $7f4e: $b2
    db $eb                                        ; $7f4f: $eb
    add e                                         ; $7f50: $83
    ld c, e                                       ; $7f51: $4b
    push de                                       ; $7f52: $d5
    rst $08                                       ; $7f53: $cf
    ld d, d                                       ; $7f54: $52
    or e                                          ; $7f55: $b3
    cp $e4                                        ; $7f56: $fe $e4
    sub l                                         ; $7f58: $95
    ld c, l                                       ; $7f59: $4d
    ld h, e                                       ; $7f5a: $63
    sbc h                                         ; $7f5b: $9c
    or [hl]                                       ; $7f5c: $b6
    db $d3                                        ; $7f5d: $d3
    ld hl, sp-$44                                 ; $7f5e: $f8 $bc
    ld a, h                                       ; $7f60: $7c
    adc b                                         ; $7f61: $88
    ld h, [hl]                                    ; $7f62: $66
    or c                                          ; $7f63: $b1
    ld [hl], a                                    ; $7f64: $77
    ld a, d                                       ; $7f65: $7a
    jp nc, $d894                                  ; $7f66: $d2 $94 $d8

    ld e, d                                       ; $7f69: $5a
    ld d, l                                       ; $7f6a: $55
    and h                                         ; $7f6b: $a4
    ld e, c                                       ; $7f6c: $59
    ld d, c                                       ; $7f6d: $51
    ld b, [hl]                                    ; $7f6e: $46
    dec [hl]                                      ; $7f6f: $35
    sbc a                                         ; $7f70: $9f
    sbc l                                         ; $7f71: $9d
    add [hl]                                      ; $7f72: $86
    ret c                                         ; $7f73: $d8

    jp nz, $cee7                                  ; $7f74: $c2 $e7 $ce

    ld d, d                                       ; $7f77: $52
    ld h, e                                       ; $7f78: $63
    ld l, e                                       ; $7f79: $6b
    rst $38                                       ; $7f7a: $ff
    ret c                                         ; $7f7b: $d8

    dec hl                                        ; $7f7c: $2b
    dec de                                        ; $7f7d: $1b
    dec h                                         ; $7f7e: $25
    adc a                                         ; $7f7f: $8f
    jr nc, jr_023_7faf                            ; $7f80: $30 $2d

    add hl, sp                                    ; $7f82: $39
    cpl                                           ; $7f83: $2f
    rla                                           ; $7f84: $17
    add $2b                                       ; $7f85: $c6 $2b
    xor h                                         ; $7f87: $ac
    ld c, c                                       ; $7f88: $49
    inc hl                                        ; $7f89: $23
    sub e                                         ; $7f8a: $93
    add a                                         ; $7f8b: $87
    ld c, [hl]                                    ; $7f8c: $4e
    ld [de], a                                    ; $7f8d: $12
    call c, $8df6                                 ; $7f8e: $dc $f6 $8d
    rst $10                                       ; $7f91: $d7
    sbc e                                         ; $7f92: $9b
    ld l, $3b                                     ; $7f93: $2e $3b
    xor $5a                                       ; $7f95: $ee $5a
    ld a, a                                       ; $7f97: $7f
    sbc l                                         ; $7f98: $9d
    cp h                                          ; $7f99: $bc
    db $e4                                        ; $7f9a: $e4
    jr nc, jr_023_7f32                            ; $7f9b: $30 $95

    sbc a                                         ; $7f9d: $9f
    ld l, e                                       ; $7f9e: $6b
    db $fd                                        ; $7f9f: $fd
    ld l, c                                       ; $7fa0: $69
    or [hl]                                       ; $7fa1: $b6
    ld h, h                                       ; $7fa2: $64
    cp b                                          ; $7fa3: $b8
    db $e3                                        ; $7fa4: $e3
    and l                                         ; $7fa5: $a5
    or c                                          ; $7fa6: $b1
    db $ed                                        ; $7fa7: $ed
    ld c, e                                       ; $7fa8: $4b
    inc l                                         ; $7fa9: $2c
    dec b                                         ; $7faa: $05
    db $ed                                        ; $7fab: $ed
    db $f4                                        ; $7fac: $f4
    ld [hl], a                                    ; $7fad: $77
    inc hl                                        ; $7fae: $23

jr_023_7faf:
    inc [hl]                                      ; $7faf: $34
    rst $08                                       ; $7fb0: $cf
    dec [hl]                                      ; $7fb1: $35
    ld l, c                                       ; $7fb2: $69
    ld h, h                                       ; $7fb3: $64
    inc l                                         ; $7fb4: $2c
    dec h                                         ; $7fb5: $25
    cp h                                          ; $7fb6: $bc
    sbc [hl]                                      ; $7fb7: $9e
    jp nc, $0c20                                  ; $7fb8: $d2 $20 $0c

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

Call_023_7fe5:
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
