; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    db $25

    rst $00                                       ; $4001: $c7
    sub a                                         ; $4002: $97
    inc b                                         ; $4003: $04
    add a                                         ; $4004: $87
    pop af                                        ; $4005: $f1
    ld a, [de]                                    ; $4006: $1a
    db $eb                                        ; $4007: $eb
    ld l, e                                       ; $4008: $6b
    scf                                           ; $4009: $37
    and e                                         ; $400a: $a3
    dec de                                        ; $400b: $1b
    inc d                                         ; $400c: $14
    sbc a                                         ; $400d: $9f
    ld [de], a                                    ; $400e: $12
    ld e, e                                       ; $400f: $5b
    sbc l                                         ; $4010: $9d
    sub d                                         ; $4011: $92
    ld e, a                                       ; $4012: $5f
    xor b                                         ; $4013: $a8
    call nc, Call_025_6c2c                        ; $4014: $d4 $2c $6c
    ret nz                                        ; $4017: $c0

    ld e, a                                       ; $4018: $5f
    xor $03                                       ; $4019: $ee $03
    jp c, $dac9                                   ; $401b: $da $c9 $da

    or h                                          ; $401e: $b4
    ld a, a                                       ; $401f: $7f
    dec e                                         ; $4020: $1d
    dec b                                         ; $4021: $05
    ldh [rHDMA3], a                               ; $4022: $e0 $53
    jr jr_025_4096                                ; $4024: $18 $70

    rst $20                                       ; $4026: $e7
    sbc c                                         ; $4027: $99
    ld [$c703], sp                                ; $4028: $08 $03 $c7
    rst $20                                       ; $402b: $e7
    inc a                                         ; $402c: $3c
    rst $20                                       ; $402d: $e7
    push hl                                       ; $402e: $e5
    ld [hl], a                                    ; $402f: $77
    or b                                          ; $4030: $b0
    sub a                                         ; $4031: $97
    reti                                          ; $4032: $d9


    ld sp, $a653                                  ; $4033: $31 $53 $a6
    call nz, Call_025_50a6                        ; $4036: $c4 $a6 $50
    sbc a                                         ; $4039: $9f
    sub a                                         ; $403a: $97
    sbc a                                         ; $403b: $9f
    ld a, l                                       ; $403c: $7d
    dec b                                         ; $403d: $05
    ld a, h                                       ; $403e: $7c
    ld b, c                                       ; $403f: $41
    ld c, c                                       ; $4040: $49
    ldh a, [$35]                                  ; $4041: $f0 $35
    ld l, c                                       ; $4043: $69
    ld b, $ff                                     ; $4044: $06 $ff
    ld [$a703], sp                                ; $4046: $08 $03 $a7
    cp h                                          ; $4049: $bc
    ld c, d                                       ; $404a: $4a
    ld l, h                                       ; $404b: $6c
    sub $fa                                       ; $404c: $d6 $fa
    jp z, $03e2                                   ; $404e: $ca $e2 $03

    db $ec                                        ; $4051: $ec
    sub h                                         ; $4052: $94
    ld e, e                                       ; $4053: $5b
    push de                                       ; $4054: $d5
    ld d, a                                       ; $4055: $57
    inc d                                         ; $4056: $14
    sub $fe                                       ; $4057: $d6 $fe
    and a                                         ; $4059: $a7
    xor c                                         ; $405a: $a9
    and h                                         ; $405b: $a4
    ld hl, $e3b6                                  ; $405c: $21 $b6 $e3
    and l                                         ; $405f: $a5
    or c                                          ; $4060: $b1
    db $ed                                        ; $4061: $ed
    ld c, e                                       ; $4062: $4b
    inc l                                         ; $4063: $2c
    ld h, l                                       ; $4064: $65
    ld sp, $7829                                  ; $4065: $31 $29 $78
    sbc c                                         ; $4068: $99
    rla                                           ; $4069: $17
    and l                                         ; $406a: $a5
    add hl, hl                                    ; $406b: $29
    dec [hl]                                      ; $406c: $35
    ld c, c                                       ; $406d: $49
    adc a                                         ; $406e: $8f
    sub $fa                                       ; $406f: $d6 $fa
    db $eb                                        ; $4071: $eb
    ld c, b                                       ; $4072: $48
    or [hl]                                       ; $4073: $b6

jr_025_4074:
    or l                                          ; $4074: $b5
    dec e                                         ; $4075: $1d
    sbc e                                         ; $4076: $9b
    push de                                       ; $4077: $d5
    add hl, hl                                    ; $4078: $29
    ld a, c                                       ; $4079: $79
    ld b, b                                       ; $407a: $40
    jr jr_025_40aa                                ; $407b: $18 $2d

    rst $38                                       ; $407d: $ff
    di                                            ; $407e: $f3
    ld a, [c]                                     ; $407f: $f2
    dec sp                                        ; $4080: $3b
    ld e, [hl]                                    ; $4081: $5e
    ld a, [de]                                    ; $4082: $1a
    db $db                                        ; $4083: $db
    cp [hl]                                       ; $4084: $be
    call nz, Call_025_5652                        ; $4085: $c4 $52 $56
    jp nc, $2fc0                                  ; $4088: $d2 $c0 $2f

    jr z, jr_025_4096                             ; $408b: $28 $09

    adc $9d                                       ; $408d: $ce $9d
    rla                                           ; $408f: $17
    ld sp, hl                                     ; $4090: $f9
    sbc a                                         ; $4091: $9f
    dec e                                         ; $4092: $1d
    inc sp                                        ; $4093: $33
    dec b                                         ; $4094: $05
    ld h, [hl]                                    ; $4095: $66

jr_025_4096:
    ld a, [hl-]                                   ; $4096: $3a
    ld [$3d03], sp                                ; $4097: $08 $03 $3d
    and h                                         ; $409a: $a4
    sbc c                                         ; $409b: $99
    ld b, d                                       ; $409c: $42
    db $fd                                        ; $409d: $fd
    ld d, d                                       ; $409e: $52
    jr nc, jr_025_4074                            ; $409f: $30 $d3

    add hl, de                                    ; $40a1: $19
    cp l                                          ; $40a2: $bd
    jp z, $8ecb                                   ; $40a3: $ca $cb $8e

    sub a                                         ; $40a6: $97
    add $b6                                       ; $40a7: $c6 $b6
    cpl                                           ; $40a9: $2f

jr_025_40aa:
    or c                                          ; $40aa: $b1
    inc d                                         ; $40ab: $14
    xor $42                                       ; $40ac: $ee $42
    ld l, l                                       ; $40ae: $6d
    jp c, Jump_000_2f3f                           ; $40af: $da $3f $2f

    ccf                                           ; $40b2: $3f
    cp b                                          ; $40b3: $b8
    inc e                                         ; $40b4: $1c
    cp h                                          ; $40b5: $bc
    call z, $998e                                 ; $40b6: $cc $8e $99
    or d                                          ; $40b9: $b2
    sub h                                         ; $40ba: $94
    ld b, c                                       ; $40bb: $41
    ld [hl+], a                                   ; $40bc: $22
    inc c                                         ; $40bd: $0c
    cp l                                          ; $40be: $bd
    jp nc, $fe8c                                  ; $40bf: $d2 $8c $fe

    reti                                          ; $40c2: $d9


    inc a                                         ; $40c3: $3c
    and a                                         ; $40c4: $a7
    ld d, b                                       ; $40c5: $50
    rst $18                                       ; $40c6: $df
    add hl, hl                                    ; $40c7: $29
    xor a                                         ; $40c8: $af
    ld [de], a                                    ; $40c9: $12
    sbc e                                         ; $40ca: $9b
    or l                                          ; $40cb: $b5
    cp [hl]                                       ; $40cc: $be
    or d                                          ; $40cd: $b2
    ld hl, sp+$00                                 ; $40ce: $f8 $00
    dec sp                                        ; $40d0: $3b
    push hl                                       ; $40d1: $e5
    ld d, [hl]                                    ; $40d2: $56
    ld [hl], l                                    ; $40d3: $75
    xor $4c                                       ; $40d4: $ee $4c
    rlca                                          ; $40d6: $07
    ld e, h                                       ; $40d7: $5c

Call_025_40d8:
    xor a                                         ; $40d8: $af
    nop                                           ; $40d9: $00
    jp nz, Jump_025_4147                          ; $40da: $c2 $47 $41

    dec e                                         ; $40dd: $1d
    ld hl, $a4d4                                  ; $40de: $21 $d4 $a4
    ld e, c                                       ; $40e1: $59
    sbc l                                         ; $40e2: $9d
    sub d                                         ; $40e3: $92
    rst $20                                       ; $40e4: $e7
    adc $8b                                       ; $40e5: $ce $8b
    ld a, [$9282]                                 ; $40e7: $fa $82 $92
    ldh [$08], a                                  ; $40ea: $e0 $08
    and c                                         ; $40ec: $a1
    ld d, e                                       ; $40ed: $53
    ld e, [hl]                                    ; $40ee: $5e
    dec h                                         ; $40ef: $25
    ld [hl], $3b                                  ; $40f0: $36 $3b
    push hl                                       ; $40f2: $e5
    xor e                                         ; $40f3: $ab
    ld a, d                                       ; $40f4: $7a
    ld a, h                                       ; $40f5: $7c
    add b                                         ; $40f6: $80
    sbc l                                         ; $40f7: $9d
    ld a, [c]                                     ; $40f8: $f2
    xor h                                         ; $40f9: $ac
    db $eb                                        ; $40fa: $eb
    ld e, d                                       ; $40fb: $5a
    ld [hl-], a                                   ; $40fc: $32
    ld a, h                                       ; $40fd: $7c
    cpl                                           ; $40fe: $2f
    sub a                                         ; $40ff: $97
    add d                                         ; $4100: $82
    push bc                                       ; $4101: $c5
    ld e, e                                       ; $4102: $5b
    rst $38                                       ; $4103: $ff
    ld a, c                                       ; $4104: $79
    ld d, c                                       ; $4105: $51
    ld b, a                                       ; $4106: $47
    jr @+$3f                                      ; $4107: $18 $3d

    ld c, e                                       ; $4109: $4b
    or e                                          ; $410a: $b3
    sbc b                                         ; $410b: $98
    ld e, c                                       ; $410c: $59
    rra                                           ; $410d: $1f
    ld c, e                                       ; $410e: $4b
    sbc [hl]                                      ; $410f: $9e
    ld d, [hl]                                    ; $4110: $56
    ld e, [hl]                                    ; $4111: $5e
    cp [hl]                                       ; $4112: $be
    db $eb                                        ; $4113: $eb
    adc [hl]                                      ; $4114: $8e
    add d                                         ; $4115: $82
    ld a, [$b94e]                                 ; $4116: $fa $4e $b9
    ld d, l                                       ; $4119: $55
    ld a, l                                       ; $411a: $7d
    ld c, c                                       ; $411b: $49
    di                                            ; $411c: $f3
    ld a, [c]                                     ; $411d: $f2
    add e                                         ; $411e: $83
    set 0, c                                      ; $411f: $cb $c1
    set 5, h                                      ; $4121: $cb $ec
    sbc b                                         ; $4123: $98
    add hl, hl                                    ; $4124: $29
    ld [$ad03], sp                                ; $4125: $08 $03 $ad
    ld l, c                                       ; $4128: $69
    ldh [rNR22], a                                ; $4129: $e0 $17
    sub h                                         ; $412b: $94
    inc b                                         ; $412c: $04
    add a                                         ; $412d: $87
    push de                                       ; $412e: $d5
    add hl, hl                                    ; $412f: $29
    ld sp, hl                                     ; $4130: $f9
    sub l                                         ; $4131: $95
    inc [hl]                                      ; $4132: $34
    ldh a, [$eb]                                  ; $4133: $f0 $eb
    jr z, jr_025_4137                             ; $4135: $28 $00

jr_025_4137:
    sbc a                                         ; $4137: $9f
    jp nz, $ed00                                  ; $4138: $c2 $00 $ed

    inc h                                         ; $413b: $24
    ld d, e                                       ; $413c: $53
    push de                                       ; $413d: $d5
    ld l, a                                       ; $413e: $6f
    ld l, h                                       ; $413f: $6c
    ld h, [hl]                                    ; $4140: $66
    and a                                         ; $4141: $a7
    xor h                                         ; $4142: $ac
    ld c, c                                       ; $4143: $49
    jp $935d                                      ; $4144: $c3 $5d $93


Jump_025_4147:
    ld b, [hl]                                    ; $4147: $46
    ld h, b                                       ; $4148: $60
    xor [hl]                                      ; $4149: $ae
    or c                                          ; $414a: $b1
    ld c, $68                                     ; $414b: $0e $68
    daa                                           ; $414d: $27
    ld h, l                                       ; $414e: $65
    sub $67                                       ; $414f: $d6 $67
    and a                                         ; $4151: $a7
    xor h                                         ; $4152: $ac
    call c, Call_025_4970                         ; $4153: $dc $70 $49
    di                                            ; $4156: $f3
    ld a, [c]                                     ; $4157: $f2
    add e                                         ; $4158: $83
    set 0, c                                      ; $4159: $cb $c1
    set 5, h                                      ; $415b: $cb $ec
    sbc b                                         ; $415d: $98
    add hl, hl                                    ; $415e: $29
    ld [$2d03], sp                                ; $415f: $08 $03 $2d
    ld d, a                                       ; $4162: $57
    halt                                          ; $4163: $76
    jp z, Jump_025_4aad                           ; $4164: $ca $ad $4a

    ld b, [hl]                                    ; $4167: $46
    add l                                         ; $4168: $85
    or c                                          ; $4169: $b1
    rst $18                                       ; $416a: $df
    ret                                           ; $416b: $c9


    scf                                           ; $416c: $37
    add h                                         ; $416d: $84
    and [hl]                                      ; $416e: $a6

jr_025_416f:
    rst $28                                       ; $416f: $ef
    xor $29                                       ; $4170: $ee $29
    sbc l                                         ; $4172: $9d
    ld c, e                                       ; $4173: $4b
    add c                                         ; $4174: $81
    daa                                           ; $4175: $27
    db $ed                                        ; $4176: $ed
    jp nz, $fcbc                                  ; $4177: $c2 $bc $fc

    ld b, d                                       ; $417a: $42
    and l                                         ; $417b: $a5
    dec [hl]                                      ; $417c: $35
    ld l, c                                       ; $417d: $69
    ld b, [hl]                                    ; $417e: $46
    rst $38                                       ; $417f: $ff
    ld l, h                                       ; $4180: $6c
    sbc [hl]                                      ; $4181: $9e
    add e                                         ; $4182: $83
    ld a, a                                       ; $4183: $7f
    or h                                          ; $4184: $b4
    sub e                                         ; $4185: $93
    ld [hl-], a                                   ; $4186: $32
    db $eb                                        ; $4187: $eb
    ld c, e                                       ; $4188: $4b
    sbc d                                         ; $4189: $9a
    sub a                                         ; $418a: $97
    rra                                           ; $418b: $1f
    ld e, h                                       ; $418c: $5c
    ld c, $5e                                     ; $418d: $0e $5e
    ld h, [hl]                                    ; $418f: $66
    rst $00                                       ; $4190: $c7
    ld c, h                                       ; $4191: $4c
    ld b, c                                       ; $4192: $41
    jr jr_025_41bc                                ; $4193: $18 $27

    ld h, l                                       ; $4195: $65
    sub $67                                       ; $4196: $d6 $67
    and a                                         ; $4198: $a7
    call z, $2fcb                                 ; $4199: $cc $cb $2f
    jr z, jr_025_41a7                             ; $419c: $28 $09

    ld a, $fe                                     ; $419e: $3e $fe
    ld a, d                                       ; $41a0: $7a
    sbc c                                         ; $41a1: $99
    sub a                                         ; $41a2: $97
    sbc a                                         ; $41a3: $9f
    dec e                                         ; $41a4: $1d
    ld l, a                                       ; $41a5: $6f
    and a                                         ; $41a6: $a7

jr_025_41a7:
    ld l, a                                       ; $41a7: $6f
    rst $08                                       ; $41a8: $cf
    adc $ca                                       ; $41a9: $ce $ca
    dec hl                                        ; $41ab: $2b
    ld e, e                                       ; $41ac: $5b
    jp nc, $fcbc                                  ; $41ad: $d2 $bc $fc

    ldh [$72], a                                  ; $41b0: $e0 $72
    ldh a, [$32]                                  ; $41b2: $f0 $32
    dec sp                                        ; $41b4: $3b
    ld h, [hl]                                    ; $41b5: $66
    ld a, [bc]                                    ; $41b6: $0a
    ld e, d                                       ; $41b7: $5a

jr_025_41b8:
    db $eb                                        ; $41b8: $eb
    rst $10                                       ; $41b9: $d7
    ld h, b                                       ; $41ba: $60
    ld e, [hl]                                    ; $41bb: $5e

jr_025_41bc:
    ld a, [hl]                                    ; $41bc: $7e
    and c                                         ; $41bd: $a1
    jp nc, $a73c                                  ; $41be: $d2 $3c $a7

    ld d, b                                       ; $41c1: $50
    ld b, a                                       ; $41c2: $47
    jr jr_025_4202                                ; $41c3: $18 $3d

    adc d                                         ; $41c5: $8a
    ld d, d                                       ; $41c6: $52
    ld a, l                                       ; $41c7: $7d
    ld c, l                                       ; $41c8: $4d
    sbc d                                         ; $41c9: $9a
    reti                                          ; $41ca: $d9


    add hl, hl                                    ; $41cb: $29
    ld h, e                                       ; $41cc: $63
    rra                                           ; $41cd: $1f
    ld h, $81                                     ; $41ce: $26 $81
    adc e                                         ; $41d0: $8b
    ld a, [$60a5]                                 ; $41d1: $fa $a5 $60
    sbc [hl]                                      ; $41d4: $9e
    di                                            ; $41d5: $f3
    ld a, [c]                                     ; $41d6: $f2
    xor e                                         ; $41d7: $ab
    and d                                         ; $41d8: $a2
    ld [bc], a                                    ; $41d9: $02
    ld [hl], b                                    ; $41da: $70
    rst $10                                       ; $41db: $d7
    xor d                                         ; $41dc: $aa
    ld [hl+], a                                   ; $41dd: $22
    dec c                                         ; $41de: $0d
    jp c, Jump_025_5f5a                           ; $41df: $da $5a $5f

    ld a, [hl]                                    ; $41e2: $7e
    rla                                           ; $41e3: $17
    and [hl]                                      ; $41e4: $a6
    add e                                         ; $41e5: $83
    adc $c7                                       ; $41e6: $ce $c7
    jr c, jr_025_416f                             ; $41e8: $38 $85

    jp hl                                         ; $41ea: $e9


    db $e4                                        ; $41eb: $e4
    ld a, c                                       ; $41ec: $79
    dec d                                         ; $41ed: $15
    add [hl]                                      ; $41ee: $86
    jr nc, jr_025_41b8                            ; $41ef: $30 $c7

    sbc a                                         ; $41f1: $9f
    ld l, [hl]                                    ; $41f2: $6e
    jp hl                                         ; $41f3: $e9


    sbc $e3                                       ; $41f4: $de $e3
    call nc, Call_000_2c53                        ; $41f6: $d4 $53 $2c
    dec a                                         ; $41f9: $3d
    adc [hl]                                      ; $41fa: $8e
    db $dd                                        ; $41fb: $dd
    pop af                                        ; $41fc: $f1
    ld b, a                                       ; $41fd: $47
    sbc l                                         ; $41fe: $9d
    ld a, h                                       ; $41ff: $7c
    ld l, h                                       ; $4200: $6c
    dec bc                                        ; $4201: $0b

jr_025_4202:
    ld b, $c3                                     ; $4202: $06 $c3
    rst $00                                       ; $4204: $c7
    ld [hl], d                                    ; $4205: $72
    ld hl, sp-$36                                 ; $4206: $f8 $ca
    ld hl, sp-$4b                                 ; $4208: $f8 $b5
    cp $ba                                        ; $420a: $fe $ba
    ld c, e                                       ; $420c: $4b
    ld [hl-], a                                   ; $420d: $32
    ld d, e                                       ; $420e: $53
    cp l                                          ; $420f: $bd
    ld h, b                                       ; $4210: $60
    dec l                                         ; $4211: $2d
    cp $d6                                        ; $4212: $fe $d6
    rst $18                                       ; $4214: $df
    or c                                          ; $4215: $b1
    xor $97                                       ; $4216: $ee $97
    add d                                         ; $4218: $82
    rla                                           ; $4219: $17
    inc c                                         ; $421a: $0c
    jp $bd27                                      ; $421b: $c3 $27 $bd


    or d                                          ; $421e: $b2
    dec e                                         ; $421f: $1d
    di                                            ; $4220: $f3
    sub $8f                                       ; $4221: $d6 $8f
    reti                                          ; $4223: $d9


    ld a, c                                       ; $4224: $79
    pop bc                                        ; $4225: $c1
    daa                                           ; $4226: $27
    rst $18                                       ; $4227: $df
    xor d                                         ; $4228: $aa
    add sp, -$39                                  ; $4229: $e8 $c7
    dec e                                         ; $422b: $1d
    sub e                                         ; $422c: $93
    ld [de], a                                    ; $422d: $12
    jr z, jr_025_4291                             ; $422e: $28 $61

    jp $bd27                                      ; $4230: $c3 $27 $bd


    or d                                          ; $4233: $b2
    dec e                                         ; $4234: $1d
    dec h                                         ; $4235: $25

jr_025_4236:
    ld a, [hl]                                    ; $4236: $7e
    pop bc                                        ; $4237: $c1
    ld sp, $df27                                  ; $4238: $31 $27 $df
    ld a, [$7baf]                                 ; $423b: $fa $af $7b
    ld d, h                                       ; $423e: $54
    rst $30                                       ; $423f: $f7
    rst $30                                       ; $4240: $f7
    rla                                           ; $4241: $17
    inc c                                         ; $4242: $0c
    jp $bcc7                                      ; $4243: $c3 $c7 $bc


    push af                                       ; $4246: $f5
    ld h, e                                       ; $4247: $63
    halt                                          ; $4248: $76
    ld e, [hl]                                    ; $4249: $5e
    nop                                           ; $424a: $00
    inc bc                                        ; $424b: $03
    daa                                           ; $424c: $27
    inc h                                         ; $424d: $24
    inc d                                         ; $424e: $14
    and e                                         ; $424f: $a3
    dec sp                                        ; $4250: $3b
    ld sp, hl                                     ; $4251: $f9
    sbc a                                         ; $4252: $9f
    ld bc, $2d06                                  ; $4253: $01 $06 $2d
    cp $d6                                        ; $4256: $fe $d6
    rst $18                                       ; $4258: $df
    sbc c                                         ; $4259: $99
    ld a, [de]                                    ; $425a: $1a
    ld h, e                                       ; $425b: $63
    ld l, a                                       ; $425c: $6f
    adc a                                         ; $425d: $8f
    ld bc, $a4c7                                  ; $425e: $01 $c7 $a4
    add hl, bc                                    ; $4261: $09
    sub $52                                       ; $4262: $d6 $52
    sub l                                         ; $4264: $95
    dec de                                        ; $4265: $1b
    db $e3                                        ; $4266: $e3
    and l                                         ; $4267: $a5
    nop                                           ; $4268: $00
    inc bc                                        ; $4269: $03
    dec l                                         ; $426a: $2d
    cp $d6                                        ; $426b: $fe $d6
    rst $18                                       ; $426d: $df
    or c                                          ; $426e: $b1
    xor $97                                       ; $426f: $ee $97
    add d                                         ; $4271: $82
    rla                                           ; $4272: $17
    inc c                                         ; $4273: $0c
    jp $8947                                      ; $4274: $c3 $47 $89


    ld c, a                                       ; $4277: $4f
    adc c                                         ; $4278: $89
    db $ed                                        ; $4279: $ed
    jr z, jr_025_4236                             ; $427a: $28 $ba

    and c                                         ; $427c: $a1
    ld a, [$c24d]                                 ; $427d: $fa $4d $c2
    rst $00                                       ; $4280: $c7
    jp z, $d6ad                                   ; $4281: $ca $ad $d6

    ld a, [$43d7]                                 ; $4284: $fa $d7 $43
    dec h                                         ; $4287: $25
    inc c                                         ; $4288: $0c
    and a                                         ; $4289: $a7
    ld h, a                                       ; $428a: $67
    cp e                                          ; $428b: $bb
    cp l                                          ; $428c: $bd
    inc sp                                        ; $428d: $33
    rra                                           ; $428e: $1f
    inc e                                         ; $428f: $1c
    inc bc                                        ; $4290: $03

jr_025_4291:
    daa                                           ; $4291: $27
    cp h                                          ; $4292: $bc
    ld c, b                                       ; $4293: $48
    or e                                          ; $4294: $b3
    inc sp                                        ; $4295: $33
    ld d, e                                       ; $4296: $53
    jp z, $c07d                                   ; $4297: $ca $7d $c0

    jp $e53d                                      ; $429a: $c3 $3d $e5


    ld a, [$facb]                                 ; $429d: $fa $cb $fa
    reti                                          ; $42a0: $d9


    ld sp, $370f                                  ; $42a1: $31 $0f $37
    and b                                         ; $42a4: $a0
    sbc l                                         ; $42a5: $9d
    db $f4                                        ; $42a6: $f4
    jp z, $2730                                   ; $42a7: $ca $30 $27

    rst $18                                       ; $42aa: $df
    xor d                                         ; $42ab: $aa
    add sp, -$39                                  ; $42ac: $e8 $c7
    or l                                          ; $42ae: $b5
    sbc d                                         ; $42af: $9a
    ldh a, [rSB]                                  ; $42b0: $f0 $01
    inc bc                                        ; $42b2: $03
    jp $0147                                      ; $42b3: $c3 $47 $01


    ld h, h                                       ; $42b6: $64
    ld [hl], l                                    ; $42b7: $75
    push de                                       ; $42b8: $d5
    ld a, a                                       ; $42b9: $7f
    db $dd                                        ; $42ba: $dd
    dec h                                         ; $42bb: $25
    sbc c                                         ; $42bc: $99
    xor c                                         ; $42bd: $a9
    ld e, [hl]                                    ; $42be: $5e
    jr nc, @-$21                                  ; $42bf: $30 $dd

    ld d, h                                       ; $42c1: $54
    ld [hl], h                                    ; $42c2: $74
    rst $00                                       ; $42c3: $c7
    call c, Call_000_212f                         ; $42c4: $dc $2f $21
    ld b, $c3                                     ; $42c7: $06 $c3
    daa                                           ; $42c9: $27
    dec de                                        ; $42ca: $1b
    cp b                                          ; $42cb: $b8
    push de                                       ; $42cc: $d5
    sub h                                         ; $42cd: $94
    ret c                                         ; $42ce: $d8

    ld e, d                                       ; $42cf: $5a
    jp nc, $db10                                  ; $42d0: $d2 $10 $db

    or c                                          ; $42d3: $b1
    or [hl]                                       ; $42d4: $b6
    db $fd                                        ; $42d5: $fd
    sub l                                         ; $42d6: $95
    inc bc                                        ; $42d7: $03
    ld b, $27                                     ; $42d8: $06 $27
    xor e                                         ; $42da: $ab
    call nc, $ebd7                                ; $42db: $d4 $d7 $eb
    sbc a                                         ; $42de: $9f
    jr jr_025_42e7                                ; $42df: $18 $06

    rst $00                                       ; $42e1: $c7
    ret z                                         ; $42e2: $c8

    di                                            ; $42e3: $f3
    db $eb                                        ; $42e4: $eb
    and [hl]                                      ; $42e5: $a6
    xor h                                         ; $42e6: $ac

jr_025_42e7:
    pop bc                                        ; $42e7: $c1

jr_025_42e8:
    ld d, $a5                                     ; $42e8: $16 $a5
    sbc l                                         ; $42ea: $9d
    sbc [hl]                                      ; $42eb: $9e
    db $ec                                        ; $42ec: $ec
    ld a, [hl+]                                   ; $42ed: $2a
    ld b, $c3                                     ; $42ee: $06 $c3
    dec a                                         ; $42f0: $3d
    ld e, $fc                                     ; $42f1: $1e $fc
    ld d, d                                       ; $42f3: $52
    add b                                         ; $42f4: $80
    ld bc, $5d27                                  ; $42f5: $01 $27 $5d
    adc [hl]                                      ; $42f8: $8e

jr_025_42f9:
    inc e                                         ; $42f9: $1c
    rst $10                                       ; $42fa: $d7
    call $e184                                    ; $42fb: $cd $84 $e1
    dec h                                         ; $42fe: $25
    ret nz                                        ; $42ff: $c0

    ld b, a                                       ; $4300: $47
    bit 2, l                                      ; $4301: $cb $55
    jp c, $5789                                   ; $4303: $da $89 $57

    ld [$00f4], a                                 ; $4306: $ea $f4 $00
    jr jr_025_42e8                                ; $4309: $18 $dd

    jp z, Jump_000_134b                           ; $430b: $ca $4b $13

    rst $10                                       ; $430e: $d7
    db $fd                                        ; $430f: $fd
    jp hl                                         ; $4310: $e9


    ld d, [hl]                                    ; $4311: $56
    ld [hl], l                                    ; $4312: $75
    inc c                                         ; $4313: $0c
    ld b, a                                       ; $4314: $47
    pop de                                        ; $4315: $d1
    adc l                                         ; $4316: $8d
    dec sp                                        ; $4317: $3b
    ld hl, $5ca1                                  ; $4318: $21 $a1 $5c
    inc c                                         ; $431b: $0c
    jp $47c3                                      ; $431c: $c3 $c3 $47


    sbc l                                         ; $431f: $9d
    ld a, h                                       ; $4320: $7c
    call nc, $c7d9                                ; $4321: $d4 $d9 $c7
    xor $d8                                       ; $4324: $ee $d8
    ld d, e                                       ; $4326: $53
    ld a, d                                       ; $4327: $7a
    inc e                                         ; $4328: $1c
    ld a, e                                       ; $4329: $7b
    ld a, d                                       ; $432a: $7a
    adc a                                         ; $432b: $8f
    and e                                         ; $432c: $a3
    inc l                                         ; $432d: $2c
    and a                                         ; $432e: $a7
    sbc h                                         ; $432f: $9c
    ld a, h                                       ; $4330: $7c
    db $ec                                        ; $4331: $ec
    add hl, hl                                    ; $4332: $29
    dec a                                         ; $4333: $3d

jr_025_4334:
    jr nc, jr_025_42f9                            ; $4334: $30 $c3

    rst $00                                       ; $4336: $c7
    ld [hl], d                                    ; $4337: $72
    ld hl, sp-$36                                 ; $4338: $f8 $ca
    ld hl, sp-$4b                                 ; $433a: $f8 $b5
    cp $ba                                        ; $433c: $fe $ba
    ld c, e                                       ; $433e: $4b
    ld [hl-], a                                   ; $433f: $32
    ld d, e                                       ; $4340: $53
    cp l                                          ; $4341: $bd
    nop                                           ; $4342: $00
    ld b, $c7                                     ; $4343: $06 $c7
    jr z, jr_025_4334                             ; $4345: $28 $ed

    ret c                                         ; $4347: $d8

    ld hl, sp-$2c                                 ; $4348: $f8 $d4
    ld d, [hl]                                    ; $434a: $56
    dec b                                         ; $434b: $05
    inc c                                         ; $434c: $0c
    rst $00                                       ; $434d: $c7
    xor b                                         ; $434e: $a8
    push af                                       ; $434f: $f5
    or d                                          ; $4350: $b2
    sbc l                                         ; $4351: $9d
    xor h                                         ; $4352: $ac
    ld b, h                                       ; $4353: $44
    jr @-$3b                                      ; $4354: $18 $c3

    rst $00                                       ; $4356: $c7
    ld e, h                                       ; $4357: $5c
    ld sp, hl                                     ; $4358: $f9
    jp z, $9653                                   ; $4359: $ca $53 $96

    or $7a                                        ; $435c: $f6 $7a
    inc a                                         ; $435e: $3c
    ld hl, sp-$5b                                 ; $435f: $f8 $a5
    nop                                           ; $4361: $00
    inc bc                                        ; $4362: $03
    daa                                           ; $4363: $27
    ld l, b                                       ; $4364: $68
    ld d, l                                       ; $4365: $55
    rst $18                                       ; $4366: $df
    pop de                                        ; $4367: $d1
    ld h, d                                       ; $4368: $62
    jp nz, Jump_000_1df0                          ; $4369: $c2 $f0 $1d

    inc bc                                        ; $436c: $03
    jp $e4dd                                      ; $436d: $c3 $dd $e4


    push de                                       ; $4370: $d5
    xor a                                         ; $4371: $af
    push af                                       ; $4372: $f5
    ld [hl], a                                    ; $4373: $77
    call z, $af95                                 ; $4374: $cc $95 $af
    inc a                                         ; $4377: $3c
    dec b                                         ; $4378: $05
    inc bc                                        ; $4379: $03
    db $dd                                        ; $437a: $dd
    res 1, l                                      ; $437b: $cb $8d
    db $eb                                        ; $437d: $eb
    ld hl, $6c26                                  ; $437e: $21 $26 $6c
    daa                                           ; $4381: $27
    ld b, $c3                                     ; $4382: $06 $c3
    dec l                                         ; $4384: $2d
    sbc l                                         ; $4385: $9d
    xor a                                         ; $4386: $af
    xor [hl]                                      ; $4387: $ae
    add $f5                                       ; $4388: $c6 $f5
    jr z, jr_025_43d6                             ; $438a: $28 $4a

    ld [hl], l                                    ; $438c: $75
    ret nz                                        ; $438d: $c0

    dec l                                         ; $438e: $2d
    cp $9d                                        ; $438f: $fe $9d
    and d                                         ; $4391: $a2
    ld [hl], h                                    ; $4392: $74
    ld a, a                                       ; $4393: $7f
    xor l                                         ; $4394: $ad
    cpl                                           ; $4395: $2f
    xor [hl]                                      ; $4396: $ae
    pop bc                                        ; $4397: $c1
    dec bc                                        ; $4398: $0b
    ld b, $2d                                     ; $4399: $06 $2d
    ld b, $94                                     ; $439b: $06 $94
    halt                                          ; $439d: $76
    call z, $fc9f                                 ; $439e: $cc $9f $fc
    ld [hl], d                                    ; $43a1: $72
    dec e                                         ; $43a2: $1d
    inc bc                                        ; $43a3: $03
    daa                                           ; $43a4: $27
    rst $18                                       ; $43a5: $df
    ld a, [$98ef]                                 ; $43a6: $fa $ef $98

jr_025_43a9:
    ld d, a                                       ; $43a9: $57
    jp nz, $a947                                  ; $43aa: $c2 $47 $a9

    inc h                                         ; $43ad: $24
    db $ed                                        ; $43ae: $ed
    db $f4                                        ; $43af: $f4
    ld e, e                                       ; $43b0: $5b
    dec a                                         ; $43b1: $3d
    ld b, $27                                     ; $43b2: $06 $27
    cp [hl]                                       ; $43b4: $be
    push af                                       ; $43b5: $f5
    jp nc, Jump_000_368e                          ; $43b6: $d2 $8e $36

    jp nz, $556e                                  ; $43b9: $c2 $6e $55

    rst $00                                       ; $43bc: $c7
    daa                                           ; $43bd: $27
    jp z, $b585                                   ; $43be: $ca $85 $b5

    sbc b                                         ; $43c1: $98
    jr nc, jr_025_4440                            ; $43c2: $30 $7c

    ld bc, $c30c                                  ; $43c4: $01 $0c $c3
    jp $c7c3                                      ; $43c7: $c3 $c3 $c7


    sbc [hl]                                      ; $43ca: $9e
    ld [hl], h                                    ; $43cb: $74
    ld l, h                                       ; $43cc: $6c
    or a                                          ; $43cd: $b7
    ld e, $a7                                     ; $43ce: $1e $a7
    sbc a                                         ; $43d0: $9f
    ld a, d                                       ; $43d1: $7a
    adc d                                         ; $43d2: $8a
    and l                                         ; $43d3: $a5
    db $db                                        ; $43d4: $db
    adc [hl]                                      ; $43d5: $8e

jr_025_43d6:
    ld a, [hl-]                                   ; $43d6: $3a
    cp l                                          ; $43d7: $bd
    ld b, a                                       ; $43d8: $47
    dec bc                                        ; $43d9: $0b
    ld b, $c3                                     ; $43da: $06 $c3
    db $dd                                        ; $43dc: $dd
    dec h                                         ; $43dd: $25
    sbc c                                         ; $43de: $99
    xor c                                         ; $43df: $a9
    db $fc                                        ; $43e0: $fc
    ld h, $ad                                     ; $43e1: $26 $ad
    rst $00                                       ; $43e3: $c7
    ld l, e                                       ; $43e4: $6b
    adc b                                         ; $43e5: $88
    ld bc, $8add                                  ; $43e6: $01 $dd $8a
    ld e, h                                       ; $43e9: $5c
    ret c                                         ; $43ea: $d8

    pop af                                        ; $43eb: $f1
    and d                                         ; $43ec: $a2
    dec c                                         ; $43ed: $0d
    ld b, $dd                                     ; $43ee: $06 $dd
    ld [hl-], a                                   ; $43f0: $32
    ld e, [hl]                                    ; $43f1: $5e
    jp c, $d9e9                                   ; $43f2: $da $e9 $d9

    cp [hl]                                       ; $43f5: $be
    inc b                                         ; $43f6: $04
    ld c, c                                       ; $43f7: $49
    jr jr_025_4421                                ; $43f8: $18 $27

    cp h                                          ; $43fa: $bc
    ld l, l                                       ; $43fb: $6d
    rst $28                                       ; $43fc: $ef
    ld a, b                                       ; $43fd: $78
    dec c                                         ; $43fe: $0d
    sub e                                         ; $43ff: $93
    jr nc, jr_025_43a9                            ; $4400: $30 $a7

    ld a, [c]                                     ; $4402: $f2
    ld c, a                                       ; $4403: $4f
    dec sp                                        ; $4404: $3b
    or l                                          ; $4405: $b5
    halt                                          ; $4406: $76
    or h                                          ; $4407: $b4
    call c, $0c27                                 ; $4408: $dc $27 $0c
    and a                                         ; $440b: $a7
    ld h, a                                       ; $440c: $67
    ld a, e                                       ; $440d: $7b
    and a                                         ; $440e: $a7
    sub $8e                                       ; $440f: $d6 $8e
    ld d, e                                       ; $4411: $53
    sub c                                         ; $4412: $91
    adc a                                         ; $4413: $8f
    ld de, $2d03                                  ; $4414: $11 $03 $2d
    scf                                           ; $4417: $37
    ld c, h                                       ; $4418: $4c
    ld e, d                                       ; $4419: $5a
    xor e                                         ; $441a: $ab
    adc d                                         ; $441b: $8a
    ld e, h                                       ; $441c: $5c
    ret nz                                        ; $441d: $c0

    dec a                                         ; $441e: $3d
    or l                                          ; $441f: $b5
    and c                                         ; $4420: $a1

jr_025_4421:
    rst $18                                       ; $4421: $df
    ld [hl], c                                    ; $4422: $71
    sub d                                         ; $4423: $92
    ldh [rNR23], a                                ; $4424: $e0 $18
    jp Jump_000_3147                              ; $4426: $c3 $47 $31


    halt                                          ; $4429: $76
    db $fd                                        ; $442a: $fd
    ld h, $69                                     ; $442b: $26 $69
    ld e, h                                       ; $442d: $5c
    ld [hl], a                                    ; $442e: $77
    ret                                           ; $442f: $c9


    ld b, b                                       ; $4430: $40
    inc [hl]                                      ; $4431: $34
    inc c                                         ; $4432: $0c
    cpl                                           ; $4433: $2f
    dec b                                         ; $4434: $05
    jr @+$49                                      ; $4435: $18 $47

    ccf                                           ; $4437: $3f

jr_025_4438:
    db $ed                                        ; $4438: $ed
    sbc b                                         ; $4439: $98
    ld d, a                                       ; $443a: $57
    ld a, d                                       ; $443b: $7a
    inc c                                         ; $443c: $0c
    jp Jump_025_6bc7                              ; $443d: $c3 $c7 $6b


jr_025_4440:
    ld hl, sp+$3b                                 ; $4440: $f8 $3b
    ld e, d                                       ; $4442: $5a
    and e                                         ; $4443: $a3
    ld d, d                                       ; $4444: $52
    ld [hl], l                                    ; $4445: $75
    add hl, hl                                    ; $4446: $29
    ret nz                                        ; $4447: $c0

    rst $00                                       ; $4448: $c7
    jr z, jr_025_4438                             ; $4449: $28 $ed

    db $f4                                        ; $444b: $f4
    dec de                                        ; $444c: $1b
    cp a                                          ; $444d: $bf
    pop bc                                        ; $444e: $c1
    jp Jump_025_692d                              ; $444f: $c3 $2d $69


    adc b                                         ; $4452: $88
    xor l                                         ; $4453: $ad
    rst $00                                       ; $4454: $c7
    ld l, e                                       ; $4455: $6b
    adc b                                         ; $4456: $88
    ld bc, $b147                                  ; $4457: $01 $47 $b1
    adc a                                         ; $445a: $8f
    cp a                                          ; $445b: $bf
    inc de                                        ; $445c: $13
    ccf                                           ; $445d: $3f
    add $77                                       ; $445e: $c6 $77
    rst $00                                       ; $4460: $c7
    ld b, a                                       ; $4461: $47
    rst $18                                       ; $4462: $df
    jr jr_025_44dc                                ; $4463: $18 $77

    sub d                                         ; $4465: $92
    ld bc, $306f                                  ; $4466: $01 $6f $30
    daa                                           ; $4469: $27
    cp h                                          ; $446a: $bc
    ld a, h                                       ; $446b: $7c
    ret c                                         ; $446c: $d8

    xor h                                         ; $446d: $ac
    dec h                                         ; $446e: $25
    ld c, l                                       ; $446f: $4d
    ld a, h                                       ; $4470: $7c
    inc c                                         ; $4471: $0c
    and a                                         ; $4472: $a7
    call c, $beaa                                 ; $4473: $dc $aa $be
    sub e                                         ; $4476: $93
    call nc, Call_025_5f7a                        ; $4477: $d4 $7a $5f
    nop                                           ; $447a: $00
    inc bc                                        ; $447b: $03
    jp $1da7                                      ; $447c: $c3 $a7 $1d


    or l                                          ; $447f: $b5
    ld h, e                                       ; $4480: $63
    cp [hl]                                       ; $4481: $be
    and e                                         ; $4482: $a3
    ld [c], a                                     ; $4483: $e2
    pop hl                                        ; $4484: $e1
    sub e                                         ; $4485: $93
    ld h, e                                       ; $4486: $63
    ld b, a                                       ; $4487: $47
    ld de, $766b                                  ; $4488: $11 $6b $76
    ld a, [c]                                     ; $448b: $f2
    adc l                                         ; $448c: $8d
    pop af                                        ; $448d: $f1
    dec b                                         ; $448e: $05
    inc bc                                        ; $448f: $03
    rst $00                                       ; $4490: $c7
    xor b                                         ; $4491: $a8
    ret z                                         ; $4492: $c8

    db $d3                                        ; $4493: $d3
    ld a, d                                       ; $4494: $7a
    sbc b                                         ; $4495: $98
    xor d                                         ; $4496: $aa
    cp $0d                                        ; $4497: $fe $0d
    ld b, $27                                     ; $4499: $06 $27
    db $e4                                        ; $449b: $e4
    rst $28                                       ; $449c: $ef
    inc d                                         ; $449d: $14
    ld b, e                                       ; $449e: $43
    add h                                         ; $449f: $84
    ld bc, $fd27                                  ; $44a0: $01 $27 $fd
    rst $28                                       ; $44a3: $ef
    ld h, h                                       ; $44a4: $64
    dec h                                         ; $44a5: $25
    or $d6                                        ; $44a6: $f6 $d6
    dec de                                        ; $44a8: $1b
    db $e3                                        ; $44a9: $e3
    ld h, e                                       ; $44aa: $63
    daa                                           ; $44ab: $27
    xor e                                         ; $44ac: $ab
    ei                                            ; $44ad: $fb
    adc [hl]                                      ; $44ae: $8e
    ld a, [hl]                                    ; $44af: $7e
    and d                                         ; $44b0: $a2
    ld [hl], a                                    ; $44b1: $77
    rst $00                                       ; $44b2: $c7
    db $dd                                        ; $44b3: $dd
    rst $18                                       ; $44b4: $df
    ld a, a                                       ; $44b5: $7f
    dec l                                         ; $44b6: $2d
    ld a, [de]                                    ; $44b7: $1a
    sbc d                                         ; $44b8: $9a
    adc a                                         ; $44b9: $8f
    add b                                         ; $44ba: $80
    ld bc, $efdd                                  ; $44bb: $01 $dd $ef
    dec bc                                        ; $44be: $0b
    db $ec                                        ; $44bf: $ec

jr_025_44c0:
    inc h                                         ; $44c0: $24
    and l                                         ; $44c1: $a5
    ld b, b                                       ; $44c2: $40
    ld l, $0b                                     ; $44c3: $2e $0b
    ld e, $03                                     ; $44c5: $1e $03
    and a                                         ; $44c7: $a7
    rst $18                                       ; $44c8: $df
    xor d                                         ; $44c9: $aa
    xor b                                         ; $44ca: $a8
    or b                                          ; $44cb: $b0
    push af                                       ; $44cc: $f5
    cp h                                          ; $44cd: $bc
    sub c                                         ; $44ce: $91
    cp l                                          ; $44cf: $bd
    ld b, b                                       ; $44d0: $40
    rst $20                                       ; $44d1: $e7
    ld [de], a                                    ; $44d2: $12
    ld b, $a7                                     ; $44d3: $06 $a7
    daa                                           ; $44d5: $27
    ret nz                                        ; $44d6: $c0

    adc [hl]                                      ; $44d7: $8e
    ld c, c                                       ; $44d8: $49
    inc de                                        ; $44d9: $13
    ld b, h                                       ; $44da: $44
    dec b                                         ; $44db: $05

jr_025_44dc:
    inc c                                         ; $44dc: $0c
    dec l                                         ; $44dd: $2d
    ld l, [hl]                                    ; $44de: $6e
    sub $f3                                       ; $44df: $d6 $f3
    add $78                                       ; $44e1: $c6 $78
    dec [hl]                                      ; $44e3: $35
    inc b                                         ; $44e4: $04
    inc c                                         ; $44e5: $0c
    jp $1da7                                      ; $44e6: $c3 $a7 $1d


    or l                                          ; $44e9: $b5
    ld e, $5f                                     ; $44ea: $1e $5f
    dec d                                         ; $44ec: $15
    cp d                                          ; $44ed: $ba
    sub l                                         ; $44ee: $95
    ld b, [hl]                                    ; $44ef: $46
    inc c                                         ; $44f0: $0c
    daa                                           ; $44f1: $27
    db $e4                                        ; $44f2: $e4
    rst $28                                       ; $44f3: $ef
    ld a, b                                       ; $44f4: $78
    ld d, c                                       ; $44f5: $51
    ld [hl], d                                    ; $44f6: $72
    inc c                                         ; $44f7: $0c
    daa                                           ; $44f8: $27
    xor e                                         ; $44f9: $ab
    ld d, h                                       ; $44fa: $54
    ld b, $d6                                     ; $44fb: $06 $d6
    db $dd                                        ; $44fd: $dd
    adc b                                         ; $44fe: $88
    push af                                       ; $44ff: $f5
    ld [bc], a                                    ; $4500: $02
    ld b, $3d                                     ; $4501: $06 $3d
    or l                                          ; $4503: $b5
    and c                                         ; $4504: $a1
    rst $18                                       ; $4505: $df
    pop de                                        ; $4506: $d1
    reti                                          ; $4507: $d9


    ld d, h                                       ; $4508: $54
    adc a                                         ; $4509: $8f

jr_025_450a:
    ld bc, $24c7                                  ; $450a: $01 $c7 $24
    sub c                                         ; $450d: $91
    xor [hl]                                      ; $450e: $ae
    push af                                       ; $450f: $f5
    ld d, [hl]                                    ; $4510: $56
    ld [hl], l                                    ; $4511: $75
    ret nz                                        ; $4512: $c0

    jp $1ec7                                      ; $4513: $c3 $c7 $1e


    or l                                          ; $4516: $b5
    sub [hl]                                      ; $4517: $96
    adc $57                                       ; $4518: $ce $57
    ld d, a                                       ; $451a: $57
    db $e3                                        ; $451b: $e3
    ld a, d                                       ; $451c: $7a
    inc d                                         ; $451d: $14
    and l                                         ; $451e: $a5
    ld a, [hl-]                                   ; $451f: $3a
    ld h, b                                       ; $4520: $60
    ld b, a                                       ; $4521: $47
    adc e                                         ; $4522: $8b
    xor c                                         ; $4523: $a9
    ld a, [hl]                                    ; $4524: $7e
    daa                                           ; $4525: $27
    ld d, a                                       ; $4526: $57
    daa                                           ; $4527: $27
    rst $18                                       ; $4528: $df
    jr jr_025_44c0                                ; $4529: $18 $95

    jr nc, jr_025_450a                            ; $452b: $30 $dd

    adc d                                         ; $452d: $8a
    xor c                                         ; $452e: $a9
    ld [$16eb], a                                 ; $452f: $ea $eb $16
    sub l                                         ; $4532: $95
    inc a                                         ; $4533: $3c
    add hl, bc                                    ; $4534: $09
    inc bc                                        ; $4535: $03
    rst $00                                       ; $4536: $c7
    jr z, @+$53                                   ; $4537: $28 $51

    or e                                          ; $4539: $b3
    and e                                         ; $453a: $a3
    ld l, a                                       ; $453b: $6f
    add h                                         ; $453c: $84
    inc h                                         ; $453d: $24
    inc c                                         ; $453e: $0c
    rst $00                                       ; $453f: $c7
    xor b                                         ; $4540: $a8
    push af                                       ; $4541: $f5
    or d                                          ; $4542: $b2
    dec e                                         ; $4543: $1d
    db $dd                                        ; $4544: $dd
    ld [$063d], sp                                ; $4545: $08 $3d $06
    rst $00                                       ; $4548: $c7
    sbc e                                         ; $4549: $9b
    ld h, [hl]                                    ; $454a: $66
    daa                                           ; $454b: $27
    rst $18                                       ; $454c: $df
    jr @+$61                                      ; $454d: $18 $5f

    jr nc, jr_025_4567                            ; $454f: $30 $16

    and l                                         ; $4551: $a5
    or l                                          ; $4552: $b5
    inc d                                         ; $4553: $14
    push hl                                       ; $4554: $e5
    ld sp, $6427                                  ; $4555: $31 $27 $64
    and c                                         ; $4558: $a1
    sbc l                                         ; $4559: $9d
    and h                                         ; $455a: $a4
    cp h                                          ; $455b: $bc
    inc a                                         ; $455c: $3c
    ld d, l                                       ; $455d: $55
    adc a                                         ; $455e: $8f
    ld bc, $5d27                                  ; $455f: $01 $27 $5d
    ret nc                                        ; $4562: $d0

    or l                                          ; $4563: $b5
    ld a, b                                       ; $4564: $78
    sub $1f                                       ; $4565: $d6 $1f

jr_025_4567:
    jr nc, @+$29                                  ; $4567: $30 $27

    ld e, l                                       ; $4569: $5d
    ret nc                                        ; $456a: $d0

    push af                                       ; $456b: $f5
    ld d, h                                       ; $456c: $54
    ld [hl], a                                    ; $456d: $77
    inc c                                         ; $456e: $0c
    db $dd                                        ; $456f: $dd
    push de                                       ; $4570: $d5
    call nz, $f31d                                ; $4571: $c4 $1d $f3
    daa                                           ; $4574: $27
    ld a, a                                       ; $4575: $7f
    ld h, d                                       ; $4576: $62
    db $dd                                        ; $4577: $dd
    push de                                       ; $4578: $d5
    call nz, $ac9d                                ; $4579: $c4 $9d $ac
    ld [bc], a                                    ; $457c: $02
    db $ec                                        ; $457d: $ec
    add hl, bc                                    ; $457e: $09
    inc bc                                        ; $457f: $03
    dec l                                         ; $4580: $2d
    scf                                           ; $4581: $37
    ld c, h                                       ; $4582: $4c
    ld e, d                                       ; $4583: $5a
    rst $30                                       ; $4584: $f7
    ld [hl], d                                    ; $4585: $72
    dec sp                                        ; $4586: $3b
    dec e                                         ; $4587: $1d
    ret nz                                        ; $4588: $c0

    jp $c3c3                                      ; $4589: $c3 $c3 $c3


    jp $c3c3                                      ; $458c: $c3 $c3 $c3


    jp $c3c3                                      ; $458f: $c3 $c3 $c3


    jp $c3c3                                      ; $4592: $c3 $c3 $c3


    jp $c3c3                                      ; $4595: $c3 $c3 $c3


    jp $c3c3                                      ; $4598: $c3 $c3 $c3


    jp $c3c3                                      ; $459b: $c3 $c3 $c3


    jp $c3c3                                      ; $459e: $c3 $c3 $c3


    jp $c3c3                                      ; $45a1: $c3 $c3 $c3


    jp $c3c3                                      ; $45a4: $c3 $c3 $c3


    jp $c3c3                                      ; $45a7: $c3 $c3 $c3


    db $c3                                        ; $45aa: $c3

    db $ad, $df, $70, $a7, $f2, $54, $f3, $35, $69, $10, $42, $ad, $2a, $d2, $ac, $7b
    db $ba, $bf, $74, $c5, $3d, $3f, $46, $84, $10, $06, $bd, $d2, $4c, $e5, $b9, $53
    db $79, $aa, $f9, $9a, $34, $5d, $77, $14, $b1, $5d, $7b, $4d, $9a, $9a, $fc, $ca
    db $cb, $ef, $fa, $c2, $57, $82, $35, $69, $6a, $f2, $b3, $2f, $69, $8c, $cd, $82
    db $bc, $14, $cc, $73, $ad, $19, $f0, $2a, $0e, $5d, $30, $c7, $e4, $c3, $de, $fa
    db $d2, $24, $fd, $ea, $94, $fc, $de, $fa, $d2, $78, $b9, $14, $4c, $db, $69, $7c
    db $e1, $77, $c5, $3d, $ca, $85, $5d, $58, $90, $97, $82, $79, $ae, $fd, $0b, $e4
    db $d5, $bb, $ac, $55, $45, $9a, $75, $4f, $f7, $17, $ee, $d4, $d7, $9a, $01, $af
    db $e2, $d0, $65, $16, $98, $97, $97, $9f, $52, $e3, $e5, $52, $30, $cb, $2a, $a5
    db $b1, $9c, $9d, $b2, $26, $4d, $d7, $1d, $93, $6b, $d2, $8c, $fe, $d9, $94, $9a
    db $1d, $a7, $61, $1a, $58, $cf, $eb, $55, $79, $98, $12, $5b, $cf, $cb, $51, $85
    db $c1, $ba, $a9, $30, $e8, $8a, $01, $96, $b1, $a4, $9a, $af, $4e, $c9, $23, $84
    db $f8, $a2, $3e, $95, $9f, $97, $6f, $ba, $62, $a7, $16, $ee, $bc, $7c, $53, $93
    db $9f, $97, $5f, $fb, $c1, $bb, $ac, $47, $f9, $a6, $26, $bf, $4a, $85, $c1, $9a
    db $34, $ab, $32, $c6, $af, $7c, $4a, $6c, $2e, $ca, $1e, $ed, $28, $62, $6b, $d2
    db $ac, $52, $5a, $a8, $f5, $5f, $a5, $c2, $56, $65, $d8, $be, $a4, $7e, $93, $60
    db $5e, $d4, $57, $c9, $ab, $ff, $42, $0d, $6e, $d5, $05, $03, $2d, $69, $88, $c1
    db $da, $ef, $fe, $32, $2f, $4a, $eb, $44, $6d, $2e, $05, $83, $8c, $d7, $f5, $ca
    db $a3, $59, $66, $e0, $d9, $3c, $c7, $72, $5e, $d4, $a7, $8b, $e9, $08, $03, $96
    db $15, $b5, $fe, $74, $31, $7d, $69, $0f, $3a, $2a, $bf, $4a, $85, $01, $9a, $a5
    db $c6, $d6, $fe, $95, $a4, $94, $67, $f3, $5c, $70, $ad, $bf, $26, $cd, $20, $c3
    db $5f, $da, $f3, $f2, $21, $5a, $8f, $f2, $f2, $53, $f9, $d9, $69, $64, $ec, $da
    db $f6, $cb, $93, $8f, $7d, $55, $87, $35, $69, $56, $29, $ad, $ca, $18, $bf, $72
    db $b4, $d6, $97, $e7, $ae, $73, $ab, $fa, $bc, $fc, $92, $7e, $4d, $9a, $f1, $4a
    db $3e, $cf, $81, $ab, $f8, $f8, $eb, $05, $61, $3d, $ca, $85, $b1, $af, $ea, $8b
    db $99, $75, $d8, $25, $7f, $79, $f0, $4b, $01, $c2, $3d, $ca, $cb, $4f, $e5, $e7
    db $7c, $2e, $4c, $f9, $79, $b9, $14, $c0, $9a, $34, $b5, $18, $47, $ff, $0c, $ed
    db $54, $fa, $1a, $4c, $77, $5c, $c6, $9b, $3b, $59, $83, $cb, $1d, $5f, $5e, $7e
    db $4d, $9a, $81, $a7, $fc, $9a, $34, $b2, $4a, $85, $ad, $ca, $18, $bf, $f2, $9b
    db $84, $30, $3d, $ca, $2f, $bd, $bc, $cc, $cb, $a5, $60, $4d, $9a, $5a, $8c, $a3
    db $7f, $b6, $0b, $d3, $1d, $97, $f1, $e6, $7a, $c8, $ed, $c4, $5b, $19, $40, $eb
    db $95, $66, $e0, $29, $bf, $26, $8d, $ac, $52, $61, $ab, $32, $6c, $5f, $52, $bf
    db $49, $b0, $4b, $bb, $8e, $66, $a9, $c5, $b8, $b7, $3e, $cd, $8b, $24, $bf, $4b
    db $d3, $55, $69, $3a, $f1, $97, $f6, $aa, $0c, $db, $97, $d4, $6f, $12, $cc, $4e
    db $99, $2d, $ff, $5d, $30, $3d, $8a, $52, $7d, $4d, $1a, $ee, $bc, $5c, $d8, $85
    db $59, $5f, $9a, $05, $4f, $2f, $69, $00, $61, $96, $f1, $0a, $0b, $a2, $b2, $79
    db $8e, $e5, $ae, $a3, $ed, $e8, $6c, $b8, $e3, $f5, $fa, $0c, $f9, $8d, $b3, $cc
    db $3f, $c6, $79, $f9, $05, $a6, $81, $59, $56, $3e, $76, $9e, $ad, $55, $45, $9a
    db $75, $4f, $f7, $97, $2e, $18

    xor l                                         ; $4811: $ad
    reti                                          ; $4812: $d9


    ld sp, hl                                     ; $4813: $f9
    dec [hl]                                      ; $4814: $35
    ld l, c                                       ; $4815: $69
    ld d, $6f                                     ; $4816: $16 $6f
    db $fd                                        ; $4818: $fd
    rst $20                                       ; $4819: $e7
    push hl                                       ; $481a: $e5
    ld d, a                                       ; $481b: $57
    xor c                                         ; $481c: $a9
    jr nc, @-$16                                  ; $481d: $30 $e8

    or d                                          ; $481f: $b2
    sub [hl]                                      ; $4820: $96
    rst $38                                       ; $4821: $ff
    dec [hl]                                      ; $4822: $35
    ld l, c                                       ; $4823: $69
    and [hl]                                      ; $4824: $a6
    cp [hl]                                       ; $4825: $be
    sub $0c                                       ; $4826: $d6 $0c
    ld a, b                                       ; $4828: $78
    dec d                                         ; $4829: $15
    add a                                         ; $482a: $87
    ld l, $18                                     ; $482b: $2e $18
    sub [hl]                                      ; $482d: $96
    ld a, [de]                                    ; $482e: $1a
    ld e, e                                       ; $482f: $5b
    ei                                            ; $4830: $fb
    db $dd                                        ; $4831: $dd
    ld e, a                                       ; $4832: $5f
    ld b, [hl]                                    ; $4833: $46
    jp hl                                         ; $4834: $e9


    dec bc                                        ; $4835: $0b
    ld [hl], d                                    ; $4836: $72
    and [hl]                                      ; $4837: $a6
    inc sp                                        ; $4838: $33
    cpl                                           ; $4839: $2f
    cpl                                           ; $483a: $2f
    adc a                                         ; $483b: $8f
    sub $fa                                       ; $483c: $d6 $fa
    ld [de], a                                    ; $483e: $12
    sbc $a4                                       ; $483f: $de $a4
    rra                                           ; $4841: $1f
    ld a, a                                       ; $4842: $7f
    ld h, e                                       ; $4843: $63
    ld e, h                                       ; $4844: $5c
    di                                            ; $4845: $f3
    ld sp, $7d4e                                  ; $4846: $31 $4e $7d
    pop hl                                        ; $4849: $e1
    inc hl                                        ; $484a: $23
    inc c                                         ; $484b: $0c
    or l                                          ; $484c: $b5
    ld d, e                                       ; $484d: $53
    sub d                                         ; $484e: $92
    rra                                           ; $484f: $1f
    ld a, h                                       ; $4850: $7c
    adc h                                         ; $4851: $8c
    sub a                                         ; $4852: $97
    add d                                         ; $4853: $82
    ld e, l                                       ; $4854: $5d
    rst $38                                       ; $4855: $ff
    db $10                                        ; $4856: $10
    and [hl]                                      ; $4857: $a6
    ld a, $79                                     ; $4858: $3e $79
    add l                                         ; $485a: $85
    inc h                                         ; $485b: $24
    ld l, l                                       ; $485c: $6d
    rst $00                                       ; $485d: $c7
    ld e, a                                       ; $485e: $5f
    ld b, a                                       ; $485f: $47
    ld l, [hl]                                    ; $4860: $6e
    push af                                       ; $4861: $f5
    or b                                          ; $4862: $b0
    ld c, e                                       ; $4863: $4b
    di                                            ; $4864: $f3
    ld a, [c]                                     ; $4865: $f2
    db $eb                                        ; $4866: $eb
    and [hl]                                      ; $4867: $a6
    jp nz, Jump_000_2dd6                          ; $4868: $c2 $d6 $2d

    sbc d                                         ; $486b: $9a
    ld [hl], $da                                  ; $486c: $36 $da
    pop af                                        ; $486e: $f1
    rst $28                                       ; $486f: $ef
    inc bc                                        ; $4870: $03
    db $d3                                        ; $4871: $d3
    jp hl                                         ; $4872: $e9


    call nz, Call_000_30fb                        ; $4873: $c4 $fb $30
    cp [hl]                                       ; $4876: $be
    call c, $f3f8                                 ; $4877: $dc $f8 $f3
    ld a, [c]                                     ; $487a: $f2
    call $82a2                                    ; $487b: $cd $a2 $82
    and e                                         ; $487e: $a3
    or l                                          ; $487f: $b5
    call c, $9e80                                 ; $4880: $dc $80 $9e
    ld [hl], c                                    ; $4883: $71
    ld [hl], a                                    ; $4884: $77
    sbc h                                         ; $4885: $9c
    inc a                                         ; $4886: $3c
    sbc e                                         ; $4887: $9b
    ld [de], a                                    ; $4888: $12
    db $db                                        ; $4889: $db
    pop af                                        ; $488a: $f1
    sbc a                                         ; $488b: $9f
    ld [de], a                                    ; $488c: $12
    ld a, h                                       ; $488d: $7c
    dec c                                         ; $488e: $0d
    inc bc                                        ; $488f: $03

    db $dd, $4a, $26, $fc, $9a, $34, $32, $f6, $55, $1d, $61, $b5, $13, $0c, $b8, $81
    db $75, $bf, $31, $5e, $fe, $56, $f5, $f8, $b5, $1d, $f3, $55, $1d, $03

    or l                                          ; $48ae: $b5
    db $e3                                        ; $48af: $e3
    ld c, l                                       ; $48b0: $4d
    adc h                                         ; $48b1: $8c
    rst $10                                       ; $48b2: $d7
    ld a, [$eeb2]                                 ; $48b3: $fa $b2 $ee
    ld e, c                                       ; $48b6: $59
    rst $38                                       ; $48b7: $ff
    halt                                          ; $48b8: $76
    ld d, e                                       ; $48b9: $53
    db $db                                        ; $48ba: $db
    ld sp, $d55f                                  ; $48bb: $31 $5f $d5
    ld sp, $e3b5                                  ; $48be: $31 $b5 $e3
    push hl                                       ; $48c1: $e5
    add e                                         ; $48c2: $83
    sub h                                         ; $48c3: $94
    ld h, [hl]                                    ; $48c4: $66
    dec a                                         ; $48c5: $3d
    jp z, Jump_000_25af                           ; $48c6: $ca $af $25

    ld d, h                                       ; $48c9: $54
    add hl, bc                                    ; $48ca: $09
    sbc e                                         ; $48cb: $9b
    jp c, $f98e                                   ; $48cc: $da $8e $f9

    xor d                                         ; $48cf: $aa
    adc [hl]                                      ; $48d0: $8e
    ld bc, $93b5                                  ; $48d1: $01 $b5 $93
    ld e, a                                       ; $48d4: $5f
    ld hl, sp-$7a                                 ; $48d5: $f8 $86
    sub $a3                                       ; $48d7: $d6 $a3
    db $fc                                        ; $48d9: $fc
    ld c, [hl]                                    ; $48da: $4e
    sub $78                                       ; $48db: $d6 $78
    xor e                                         ; $48dd: $ab
    sbc e                                         ; $48de: $9b
    ld b, $6a                                     ; $48df: $06 $6a
    dec sp                                        ; $48e1: $3b
    and $ab                                       ; $48e2: $e6 $ab
    ld a, [hl-]                                   ; $48e4: $3a
    ld b, $3d                                     ; $48e5: $06 $3d
    adc e                                         ; $48e7: $8b
    ld a, [$9db4]                                 ; $48e8: $fa $b4 $9d
    add $07                                       ; $48eb: $c6 $07
    and h                                         ; $48ed: $a4
    push af                                       ; $48ee: $f5
    sbc a                                         ; $48ef: $9f
    xor l                                         ; $48f0: $ad
    inc d                                         ; $48f1: $14
    ld b, b                                       ; $48f2: $40
    rst $10                                       ; $48f3: $d7
    dec e                                         ; $48f4: $1d
    sub e                                         ; $48f5: $93
    ld l, e                                       ; $48f6: $6b
    jp nc, Jump_025_4eac                          ; $48f7: $d2 $ac $4e

    ret                                           ; $48fa: $c9


    ld c, a                                       ; $48fb: $4f
    xor c                                         ; $48fc: $a9
    pop af                                        ; $48fd: $f1
    ld [hl], d                                    ; $48fe: $72
    add hl, hl                                    ; $48ff: $29
    sbc b                                         ; $4900: $98
    or [hl]                                       ; $4901: $b6
    db $d3                                        ; $4902: $d3
    ld hl, sp-$44                                 ; $4903: $f8 $bc
    ld a, h                                       ; $4905: $7c
    ret c                                         ; $4906: $d8

    dec d                                         ; $4907: $15
    inc bc                                        ; $4908: $03
    dec a                                         ; $4909: $3d
    ccf                                           ; $490a: $3f
    ld b, [hl]                                    ; $490b: $46
    xor $ba                                       ; $490c: $ee $ba
    ld c, e                                       ; $490e: $4b
    jp c, $900f                                   ; $490f: $da $0f $90

    or d                                          ; $4912: $b2
    sub [hl]                                      ; $4913: $96
    adc [hl]                                      ; $4914: $8e
    and h                                         ; $4915: $a4
    pop af                                        ; $4916: $f1
    and l                                         ; $4917: $a5
    pop af                                        ; $4918: $f1
    or l                                          ; $4919: $b5
    sbc e                                         ; $491a: $9b
    ld a, c                                       ; $491b: $79
    ld sp, hl                                     ; $491c: $f9
    dec b                                         ; $491d: $05
    ld a, [c]                                     ; $491e: $f2

jr_025_491f:
    ld c, a                                       ; $491f: $4f
    dec h                                         ; $4920: $25
    dec c                                         ; $4921: $0d
    inc a                                         ; $4922: $3c
    adc h                                         ; $4923: $8c
    ld d, a                                       ; $4924: $57
    ld e, b                                       ; $4925: $58
    ld d, c                                       ; $4926: $51
    db $eb                                        ; $4927: $eb
    and l                                         ; $4928: $a5
    jp c, $d25c                                   ; $4929: $da $5c $d2

    or h                                          ; $492c: $b4
    db $e3                                        ; $492d: $e3
    adc a                                         ; $492e: $8f
    ret                                           ; $492f: $c9


    or l                                          ; $4930: $b5
    ld e, [hl]                                    ; $4931: $5e
    xor d                                         ; $4932: $aa
    dec l                                         ; $4933: $2d
    ld l, l                                       ; $4934: $6d
    ld a, e                                       ; $4935: $7b
    sub b                                         ; $4936: $90
    pop hl                                        ; $4937: $e1
    rrca                                          ; $4938: $0f
    ld c, b                                       ; $4939: $48
    db $eb                                        ; $493a: $eb
    rrca                                          ; $493b: $0f
    ld l, b                                       ; $493c: $68
    dec l                                         ; $493d: $2d
    add hl, de                                    ; $493e: $19
    cp $b2                                        ; $493f: $fe $b2
    ld [hl], $2f                                  ; $4941: $36 $2f
    ld a, a                                       ; $4943: $7f
    ld h, l                                       ; $4944: $65
    or [hl]                                       ; $4945: $b6
    ld d, d                                       ; $4946: $52
    nop                                           ; $4947: $00
    dec bc                                        ; $4948: $0b
    ld l, a                                       ; $4949: $6f
    ld d, b                                       ; $494a: $50
    ld a, h                                       ; $494b: $7c
    db $ed                                        ; $494c: $ed
    ld e, a                                       ; $494d: $5f
    ld a, h                                       ; $494e: $7c
    db $db                                        ; $494f: $db
    rst $10                                       ; $4950: $d7
    cp $72                                        ; $4951: $fe $72
    adc c                                         ; $4953: $89
    ld hl, $3d0c                                  ; $4954: $21 $0c $3d
    adc d                                         ; $4957: $8a
    ld d, d                                       ; $4958: $52
    dec e                                         ; $4959: $1d
    cp b                                          ; $495a: $b8
    ld l, e                                       ; $495b: $6b
    push de                                       ; $495c: $d5
    ld b, b                                       ; $495d: $40
    ld l, $43                                     ; $495e: $2e $43
    jr jr_025_491f                                ; $4960: $18 $bd

    ld e, [hl]                                    ; $4962: $5e
    add $7f                                       ; $4963: $c6 $7f
    xor h                                         ; $4965: $ac
    ld [hl-], a                                   ; $4966: $32
    ld a, h                                       ; $4967: $7c
    inc [hl]                                      ; $4968: $34
    ld c, e                                       ; $4969: $4b
    adc l                                         ; $496a: $8d
    xor l                                         ; $496b: $ad
    ld a, h                                       ; $496c: $7c
    db $ec                                        ; $496d: $ec
    xor h                                         ; $496e: $ac
    ld a, c                                       ; $496f: $79

Call_025_4970:
    ld e, c                                       ; $4970: $59
    call z, $afac                                 ; $4971: $cc $ac $af
    ld l, l                                       ; $4974: $6d
    ld a, h                                       ; $4975: $7c
    sub [hl]                                      ; $4976: $96
    sbc d                                         ; $4977: $9a
    push af                                       ; $4978: $f5
    rst $10                                       ; $4979: $d7
    cp $a7                                        ; $497a: $fe $a7
    or l                                          ; $497c: $b5
    dec c                                         ; $497d: $0d
    inc [hl]                                      ; $497e: $34
    add e                                         ; $497f: $83
    adc [hl]                                      ; $4980: $8e
    ld l, b                                       ; $4981: $68
    ld [hl], e                                    ; $4982: $73
    xor c                                         ; $4983: $a9
    or [hl]                                       ; $4984: $b6
    or $bf                                        ; $4985: $f6 $bf
    rst $00                                       ; $4987: $c7
    add a                                         ; $4988: $87
    and l                                         ; $4989: $a5
    pop af                                        ; $498a: $f1
    or l                                          ; $498b: $b5

jr_025_498c:
    or l                                          ; $498c: $b5
    xor d                                         ; $498d: $aa
    ld c, a                                       ; $498e: $4f
    xor c                                         ; $498f: $a9
    ld [hl], $cb                                  ; $4990: $36 $cb
    add sp, -$61                                  ; $4992: $e8 $9f
    ld c, l                                       ; $4994: $4d
    ld b, a                                       ; $4995: $47
    jp c, $dc99                                   ; $4996: $da $99 $dc

    and b                                         ; $4999: $a0
    ld hl, sp+$28                                 ; $499a: $f8 $28
    ld a, c                                       ; $499c: $79
    add h                                         ; $499d: $84
    ld bc, $1fad                                  ; $499e: $01 $ad $1f
    ld h, e                                       ; $49a1: $63
    ld [hl], d                                    ; $49a2: $72
    rst $10                                       ; $49a3: $d7
    ld e, l                                       ; $49a4: $5d
    jp nc, $807e                                  ; $49a5: $d2 $7e $80

    sub h                                         ; $49a8: $94
    or l                                          ; $49a9: $b5
    ld [hl], h                                    ; $49aa: $74
    inc h                                         ; $49ab: $24
    adc l                                         ; $49ac: $8d
    inc hl                                        ; $49ad: $23
    inc c                                         ; $49ae: $0c
    xor l                                         ; $49af: $ad
    rra                                           ; $49b0: $1f
    ld h, e                                       ; $49b1: $63
    ld [hl], d                                    ; $49b2: $72
    rst $10                                       ; $49b3: $d7
    xor d                                         ; $49b4: $aa
    ld [hl+], a                                   ; $49b5: $22
    dec c                                         ; $49b6: $0d
    ld [hl], a                                    ; $49b7: $77
    ld a, h                                       ; $49b8: $7c
    ld d, c                                       ; $49b9: $51
    ld e, a                                       ; $49ba: $5f
    ld e, e                                       ; $49bb: $5b
    ld l, $05                                     ; $49bc: $2e $05
    or b                                          ; $49be: $b0
    ld h, $cd                                     ; $49bf: $26 $cd
    jp nc, $caf8                                  ; $49c1: $d2 $f8 $ca

    bit 6, a                                      ; $49c4: $cb $77
    push bc                                       ; $49c6: $c5
    db $dd                                        ; $49c7: $dd
    dec h                                         ; $49c8: $25
    db $ed                                        ; $49c9: $ed
    rlca                                          ; $49ca: $07
    ld c, b                                       ; $49cb: $48
    ld e, c                                       ; $49cc: $59
    dec bc                                        ; $49cd: $0b
    ld l, c                                       ; $49ce: $69
    rst $20                                       ; $49cf: $e7
    ld d, a                                       ; $49d0: $57
    inc d                                         ; $49d1: $14
    ld b, $4f                                     ; $49d2: $06 $4f
    cp [hl]                                       ; $49d4: $be
    ldh a, [$e7]                                  ; $49d5: $f0 $e7
    cp c                                          ; $49d7: $b9
    sbc b                                         ; $49d8: $98
    ld e, c                                       ; $49d9: $59
    sbc a                                         ; $49da: $9f
    sbc l                                         ; $49db: $9d
    ld [hl-], a                                   ; $49dc: $32
    jr nz, jr_025_498c                            ; $49dd: $20 $ad

    rst $38                                       ; $49df: $ff
    ld l, h                                       ; $49e0: $6c
    and l                                         ; $49e1: $a5
    nop                                           ; $49e2: $00
    cp b                                          ; $49e3: $b8
    ld d, e                                       ; $49e4: $53
    ld h, d                                       ; $49e5: $62
    ld l, e                                       ; $49e6: $6b
    push de                                       ; $49e7: $d5

jr_025_49e8:
    ld b, b                                       ; $49e8: $40
    ld l, $9b                                     ; $49e9: $2e $9b
    ld h, a                                       ; $49eb: $67
    ld h, h                                       ; $49ec: $64
    dec bc                                        ; $49ed: $0b
    ld a, a                                       ; $49ee: $7f
    ld e, [hl]                                    ; $49ef: $5e
    ld e, [hl]                                    ; $49f0: $5e
    ld a, [hl]                                    ; $49f1: $7e
    pop hl                                        ; $49f2: $e1
    dec c                                         ; $49f3: $0d
    adc d                                         ; $49f4: $8a
    xor a                                         ; $49f5: $af
    db $fd                                        ; $49f6: $fd
    add e                                         ; $49f7: $83
    inc c                                         ; $49f8: $0c
    ld a, a                                       ; $49f9: $7f
    ld a, [hl+]                                   ; $49fa: $2a
    ld l, c                                       ; $49fb: $69
    adc b                                         ; $49fc: $88
    xor l                                         ; $49fd: $ad
    cp h                                          ; $49fe: $bc
    inc a                                         ; $49ff: $3c
    jp nz, Jump_025_6216                          ; $4a00: $c2 $16 $62

    rst $38                                       ; $4a03: $ff
    ld l, h                                       ; $4a04: $6c
    ld e, [hl]                                    ; $4a05: $5e
    ld e, [hl]                                    ; $4a06: $5e
    ld a, [hl]                                    ; $4a07: $7e
    pop hl                                        ; $4a08: $e1
    dec c                                         ; $4a09: $0d
    adc d                                         ; $4a0a: $8a
    inc hl                                        ; $4a0b: $23
    add h                                         ; $4a0c: $84
    sub h                                         ; $4a0d: $94
    ret c                                         ; $4a0e: $d8

    cp h                                          ; $4a0f: $bc
    db $fc                                        ; $4a10: $fc
    add b                                         ; $4a11: $80
    or h                                          ; $4a12: $b4
    cp $30                                        ; $4a13: $fe $30
    cpl                                           ; $4a15: $2f
    ld [$f033], a                                 ; $4a16: $ea $33 $f0
    di                                            ; $4a19: $f3
    ld a, [c]                                     ; $4a1a: $f2
    ld hl, $9e77                                  ; $4a1b: $21 $77 $9e
    adc c                                         ; $4a1e: $89
    jr nc, jr_025_49e8                            ; $4a1f: $30 $c7

    db $e4                                        ; $4a21: $e4
    sbc d                                         ; $4a22: $9a
    inc [hl]                                      ; $4a23: $34
    dec bc                                        ; $4a24: $0b
    cpl                                           ; $4a25: $2f
    or c                                          ; $4a26: $b1
    ld e, l                                       ; $4a27: $5d
    ld a, e                                       ; $4a28: $7b
    sub [hl]                                      ; $4a29: $96
    push bc                                       ; $4a2a: $c5
    call z, Call_025_54fa                         ; $4a2b: $cc $fa $54
    jp nc, $9b10                                  ; $4a2e: $d2 $10 $9b

    sbc l                                         ; $4a31: $9d
    ld [hl-], a                                   ; $4a32: $32
    ret z                                         ; $4a33: $c8

    ldh a, [$bb]                                  ; $4a34: $f0 $bb
    ld h, d                                       ; $4a36: $62
    xor l                                         ; $4a37: $ad
    rra                                           ; $4a38: $1f
    dec sp                                        ; $4a39: $3b
    ld l, e                                       ; $4a3a: $6b
    jp nc, Jump_025_7c08                          ; $4a3b: $d2 $08 $7c

    or h                                          ; $4a3e: $b4
    cp c                                          ; $4a3f: $b9
    ld l, e                                       ; $4a40: $6b
    dec de                                        ; $4a41: $1b
    ld e, a                                       ; $4a42: $5f
    ei                                            ; $4a43: $fb
    ld d, a                                       ; $4a44: $57
    xor c                                         ; $4a45: $a9
    cp h                                          ; $4a46: $bc
    ld l, l                                       ; $4a47: $6d
    ld [hl+], a                                   ; $4a48: $22
    jp nz, Jump_025_72c7                          ; $4a49: $c2 $c7 $72

    xor b                                         ; $4a4c: $a8
    ld a, $c6                                     ; $4a4d: $3e $c6
    daa                                           ; $4a4f: $27
    rra                                           ; $4a50: $1f
    sbc a                                         ; $4a51: $9f
    ld d, d                                       ; $4a52: $52
    rst $20                                       ; $4a53: $e7
    xor [hl]                                      ; $4a54: $ae
    ld d, l                                       ; $4a55: $55
    ld b, l                                       ; $4a56: $45
    ld a, [de]                                    ; $4a57: $1a
    inc [hl]                                      ; $4a58: $34
    ld c, e                                       ; $4a59: $4b
    dec l                                         ; $4a5a: $2d
    sbc h                                         ; $4a5b: $9c
    ld a, [c]                                     ; $4a5c: $f2
    ld a, [hl+]                                   ; $4a5d: $2a
    db $ec                                        ; $4a5e: $ec
    ld d, d                                       ; $4a5f: $52
    or b                                          ; $4a60: $b0
    cp $56                                        ; $4a61: $fe $56
    jp nc, $afc0                                  ; $4a63: $d2 $c0 $af

    sub e                                         ; $4a66: $93
    sub a                                         ; $4a67: $97
    ld a, h                                       ; $4a68: $7c
    halt                                          ; $4a69: $76
    jp z, $0f3a                                   ; $4a6a: $ca $3a $0f

    cp [hl]                                       ; $4a6d: $be
    ld a, [hl+]                                   ; $4a6e: $2a
    ret                                           ; $4a6f: $c9


    dec h                                         ; $4a70: $25
    inc hl                                        ; $4a71: $23
    jp nz, Jump_025_67c7                          ; $4a72: $c2 $c7 $67

    ld [hl-], a                                   ; $4a75: $32
    xor $ca                                       ; $4a76: $ee $ca
    bit 1, a                                      ; $4a78: $cb $4f
    push hl                                       ; $4a7a: $e5
    rst $20                                       ; $4a7b: $e7
    push hl                                       ; $4a7c: $e5
    rlca                                          ; $4a7d: $07
    and h                                         ; $4a7e: $a4
    push af                                       ; $4a7f: $f5
    sbc a                                         ; $4a80: $9f
    xor l                                         ; $4a81: $ad
    inc d                                         ; $4a82: $14
    ret nz                                        ; $4a83: $c0

    inc l                                         ; $4a84: $2c
    and e                                         ; $4a85: $a3
    ld a, a                                       ; $4a86: $7f
    add [hl]                                      ; $4a87: $86
    jr nc, @+$2f                                  ; $4a88: $30 $2d

    add hl, sp                                    ; $4a8a: $39
    cpl                                           ; $4a8b: $2f
    rla                                           ; $4a8c: $17
    halt                                          ; $4a8d: $76
    ld h, c                                       ; $4a8e: $61
    db $ec                                        ; $4a8f: $ec
    cp d                                          ; $4a90: $ba
    dec hl                                        ; $4a91: $2b
    dec [hl]                                      ; $4a92: $35
    ld [$c703], sp                                ; $4a93: $08 $03 $c7
    ld h, a                                       ; $4a96: $67
    ld [hl-], a                                   ; $4a97: $32
    xor $c2                                       ; $4a98: $ee $c2
    sub h                                         ; $4a9a: $94
    rra                                           ; $4a9b: $1f
    cp e                                          ; $4a9c: $bb
    xor $4a                                       ; $4a9d: $ee $4a
    dec c                                         ; $4a9f: $0d
    jp nz, $d2bd                                  ; $4aa0: $c2 $bd $d2

    xor h                                         ; $4aa3: $ac
    ld d, d                                       ; $4aa4: $52
    ld a, [de]                                    ; $4aa5: $1a
    cp l                                          ; $4aa6: $bd
    push af                                       ; $4aa7: $f5
    ld h, l                                       ; $4aa8: $65
    ld b, l                                       ; $4aa9: $45
    xor l                                         ; $4aaa: $ad
    ccf                                           ; $4aab: $3f
    rst $08                                       ; $4aac: $cf

Jump_025_4aad:
    ld e, h                                       ; $4aad: $5c
    ld l, b                                       ; $4aae: $68
    xor d                                         ; $4aaf: $aa
    ld [hl-], a                                   ; $4ab0: $32
    halt                                          ; $4ab1: $76
    db $dd                                        ; $4ab2: $dd
    sub l                                         ; $4ab3: $95
    ld a, [de]                                    ; $4ab4: $1a
    add h                                         ; $4ab5: $84
    ld bc, $1596                                  ; $4ab6: $01 $96 $15
    or l                                          ; $4ab9: $b5
    cp $74                                        ; $4aba: $fe $74
    ld sp, $697d                                  ; $4abc: $31 $7d $69
    adc a                                         ; $4abf: $8f
    ld e, l                                       ; $4ac0: $5d
    ld [hl], a                                    ; $4ac1: $77
    and l                                         ; $4ac2: $a5
    ld h, [hl]                                    ; $4ac3: $66

jr_025_4ac4:
    sub h                                         ; $4ac4: $94
    inc a                                         ; $4ac5: $3c
    jp nz, $af16                                  ; $4ac6: $c2 $16 $af

    pop bc                                        ; $4ac9: $c1
    or h                                          ; $4aca: $b4
    ld c, d                                       ; $4acb: $4a
    cp d                                          ; $4acc: $ba
    cp $08                                        ; $4acd: $fe $08
    inc bc                                        ; $4acf: $03
    rst $00                                       ; $4ad0: $c7
    ld h, a                                       ; $4ad1: $67
    ld [hl-], a                                   ; $4ad2: $32
    xor $c2                                       ; $4ad3: $ee $c2
    sub h                                         ; $4ad5: $94
    sbc a                                         ; $4ad6: $9f
    ld d, [hl]                                    ; $4ad7: $56
    ld c, c                                       ; $4ad8: $49
    rst $10                                       ; $4ad9: $d7
    rra                                           ; $4ada: $1f
    ld h, c                                       ; $4adb: $61
    cp l                                          ; $4adc: $bd
    jp nc, $52ac                                  ; $4add: $d2 $ac $52

jr_025_4ae0:
    ld a, [de]                                    ; $4ae0: $1a
    cp l                                          ; $4ae1: $bd
    push af                                       ; $4ae2: $f5
    ld h, l                                       ; $4ae3: $65
    ld b, l                                       ; $4ae4: $45
    xor l                                         ; $4ae5: $ad
    ccf                                           ; $4ae6: $3f
    rst $08                                       ; $4ae7: $cf
    ld e, h                                       ; $4ae8: $5c
    ld l, b                                       ; $4ae9: $68
    xor d                                         ; $4aea: $aa
    ld [hl-], a                                   ; $4aeb: $32
    xor l                                         ; $4aec: $ad
    sub d                                         ; $4aed: $92
    xor [hl]                                      ; $4aee: $ae
    ccf                                           ; $4aef: $3f
    jp nz, Jump_000_1596                          ; $4af0: $c2 $96 $15

    or l                                          ; $4af3: $b5
    cp $74                                        ; $4af4: $fe $74
    ld sp, $697d                                  ; $4af6: $31 $7d $69
    ld c, a                                       ; $4af9: $4f
    xor e                                         ; $4afa: $ab
    and h                                         ; $4afb: $a4
    db $eb                                        ; $4afc: $eb
    ccf                                           ; $4afd: $3f
    ld c, d                                       ; $4afe: $4a
    ld e, $61                                     ; $4aff: $1e $61
    cp l                                          ; $4b01: $bd
    jp nc, $52ac                                  ; $4b02: $d2 $ac $52

    ld a, [de]                                    ; $4b05: $1a
    cp l                                          ; $4b06: $bd
    push af                                       ; $4b07: $f5
    ld h, l                                       ; $4b08: $65
    ld b, l                                       ; $4b09: $45
    xor l                                         ; $4b0a: $ad
    ccf                                           ; $4b0b: $3f
    rst $08                                       ; $4b0c: $cf
    ld e, h                                       ; $4b0d: $5c
    ld l, b                                       ; $4b0e: $68
    xor d                                         ; $4b0f: $aa
    ld [hl-], a                                   ; $4b10: $32
    ld a, $a3                                     ; $4b11: $3e $a3
    dec c                                         ; $4b13: $0d
    ld l, l                                       ; $4b14: $6d
    and l                                         ; $4b15: $a5
    ld b, a                                       ; $4b16: $47
    jr jr_025_4ae0                                ; $4b17: $18 $c7

    ld h, a                                       ; $4b19: $67
    ld [hl-], a                                   ; $4b1a: $32
    xor $c2                                       ; $4b1b: $ee $c2
    sub h                                         ; $4b1d: $94
    rra                                           ; $4b1e: $1f
    sbc a                                         ; $4b1f: $9f
    pop de                                        ; $4b20: $d1
    add [hl]                                      ; $4b21: $86
    or [hl]                                       ; $4b22: $b6
    jp nc, Jump_000_0c23                          ; $4b23: $d2 $23 $0c

    sub [hl]                                      ; $4b26: $96
    dec d                                         ; $4b27: $15
    or l                                          ; $4b28: $b5
    cp $74                                        ; $4b29: $fe $74
    ld sp, $697d                                  ; $4b2b: $31 $7d $69
    adc a                                         ; $4b2e: $8f
    rst $08                                       ; $4b2f: $cf
    ld l, b                                       ; $4b30: $68
    ld b, e                                       ; $4b31: $43
    ld e, e                                       ; $4b32: $5b
    jp hl                                         ; $4b33: $e9


    ld b, a                                       ; $4b34: $47
    ret                                           ; $4b35: $c9


    inc hl                                        ; $4b36: $23
    inc c                                         ; $4b37: $0c
    and a                                         ; $4b38: $a7
    cp h                                          ; $4b39: $bc
    ld a, e                                       ; $4b3a: $7b
    ld a, h                                       ; $4b3b: $7c
    ld b, b                                       ; $4b3c: $40
    db $eb                                        ; $4b3d: $eb
    ld d, c                                       ; $4b3e: $51
    ld a, [hl]                                    ; $4b3f: $7e
    rst $00                                       ; $4b40: $c7
    jr jr_025_4ac4                                ; $4b41: $18 $81

    ld hl, sp+$0d                                 ; $4b43: $f8 $0d
    call nc, $a816                                ; $4b45: $d4 $16 $a8
    or b                                          ; $4b48: $b0
    and a                                         ; $4b49: $a7
    pop af                                        ; $4b4a: $f1
    ld a, [bc]                                    ; $4b4b: $0a
    or e                                          ; $4b4c: $b3
    ld c, l                                       ; $4b4d: $4d
    adc h                                         ; $4b4e: $8c
    ld c, e                                       ; $4b4f: $4b
    ld a, e                                       ; $4b50: $7b
    rst $10                                       ; $4b51: $d7
    ld de, $c706                                  ; $4b52: $11 $06 $c7
    ld h, a                                       ; $4b55: $67
    ld [hl-], a                                   ; $4b56: $32
    xor $c2                                       ; $4b57: $ee $c2
    sub h                                         ; $4b59: $94
    rra                                           ; $4b5a: $1f
    cp l                                          ; $4b5b: $bd
    ld a, e                                       ; $4b5c: $7b
    ld a, h                                       ; $4b5d: $7c
    ld b, b                                       ; $4b5e: $40
    jr @+$3f                                      ; $4b5f: $18 $3d

    jp z, $9daf                                   ; $4b61: $ca $af $9d

    ld e, c                                       ; $4b64: $59
    rra                                           ; $4b65: $1f
    ld l, b                                       ; $4b66: $68
    inc bc                                        ; $4b67: $03
    di                                            ; $4b68: $f3
    ld [hl], d                                    ; $4b69: $72
    ld h, c                                       ; $4b6a: $61
    rla                                           ; $4b6b: $17
    ld d, $2a                                     ; $4b6c: $16 $2a
    ld sp, $fad1                                  ; $4b6e: $31 $d1 $fa
    ld c, a                                       ; $4b71: $4f
    ld [hl-], a                                   ; $4b72: $32
    dec e                                         ; $4b73: $1d
    ld h, c                                       ; $4b74: $61
    rst $00                                       ; $4b75: $c7
    ld h, a                                       ; $4b76: $67
    ld [hl-], a                                   ; $4b77: $32
    xor $c2                                       ; $4b78: $ee $c2
    sub h                                         ; $4b7a: $94
    ld e, a                                       ; $4b7b: $5f
    xor b                                         ; $4b7c: $a8
    call nz, $eb44                                ; $4b7d: $c4 $44 $eb
    ccf                                           ; $4b80: $3f
    ret                                           ; $4b81: $c9


    ld [hl], h                                    ; $4b82: $74
    add h                                         ; $4b83: $84
    ld bc, $d2bd                                  ; $4b84: $01 $bd $d2
    xor h                                         ; $4b87: $ac
    ld d, d                                       ; $4b88: $52
    ld a, [de]                                    ; $4b89: $1a
    cp l                                          ; $4b8a: $bd
    push af                                       ; $4b8b: $f5
    ld h, l                                       ; $4b8c: $65
    ld b, l                                       ; $4b8d: $45
    xor l                                         ; $4b8e: $ad
    ccf                                           ; $4b8f: $3f
    rst $08                                       ; $4b90: $cf
    ld e, h                                       ; $4b91: $5c
    ld l, b                                       ; $4b92: $68
    xor d                                         ; $4b93: $aa
    or d                                          ; $4b94: $b2
    ld d, b                                       ; $4b95: $50
    adc c                                         ; $4b96: $89
    adc c                                         ; $4b97: $89
    sub $7f                                       ; $4b98: $d6 $7f
    sub d                                         ; $4b9a: $92
    jp hl                                         ; $4b9b: $e9


    ld [$9603], sp                                ; $4b9c: $08 $03 $96
    dec d                                         ; $4b9f: $15
    or l                                          ; $4ba0: $b5
    cp $74                                        ; $4ba1: $fe $74
    ld sp, $697d                                  ; $4ba3: $31 $7d $69
    cpl                                           ; $4ba6: $2f
    ld d, h                                       ; $4ba7: $54
    ld h, d                                       ; $4ba8: $62
    and d                                         ; $4ba9: $a2
    push af                                       ; $4baa: $f5
    sbc a                                         ; $4bab: $9f
    ld h, h                                       ; $4bac: $64
    ld a, [$7928]                                 ; $4bad: $fa $28 $79
    add h                                         ; $4bb0: $84
    ld bc, $2727                                  ; $4bb1: $01 $27 $27
    push de                                       ; $4bb4: $d5
    and c                                         ; $4bb5: $a1
    ld h, h                                       ; $4bb6: $64
    ld [hl-], a                                   ; $4bb7: $32
    or h                                          ; $4bb8: $b4
    ld e, $45                                     ; $4bb9: $1e $45
    cp l                                          ; $4bbb: $bd
    ld b, $53                                     ; $4bbc: $06 $53
    ld c, d                                       ; $4bbe: $4a
    cpl                                           ; $4bbf: $2f
    cpl                                           ; $4bc0: $2f
    ld c, e                                       ; $4bc1: $4b
    ld a, [$e4b1]                                 ; $4bc2: $fa $b1 $e4
    add hl, bc                                    ; $4bc5: $09
    ld h, c                                       ; $4bc6: $61
    dec a                                         ; $4bc7: $3d
    ld d, e                                       ; $4bc8: $53
    ld b, d                                       ; $4bc9: $42
    ld a, $93                                     ; $4bca: $3e $93
    and c                                         ; $4bcc: $a1
    push af                                       ; $4bcd: $f5
    jr z, @-$14                                   ; $4bce: $28 $ea

    dec [hl]                                      ; $4bd0: $35
    sbc b                                         ; $4bd1: $98
    adc [hl]                                      ; $4bd2: $8e
    rst $38                                       ; $4bd3: $ff
    dec hl                                        ; $4bd4: $2b
    ld l, h                                       ; $4bd5: $6c
    and h                                         ; $4bd6: $a4
    pop hl                                        ; $4bd7: $e1
    inc hl                                        ; $4bd8: $23
    inc c                                         ; $4bd9: $0c
    rst $00                                       ; $4bda: $c7
    ld h, a                                       ; $4bdb: $67
    ld [hl-], a                                   ; $4bdc: $32
    xor $c2                                       ; $4bdd: $ee $c2
    sub h                                         ; $4bdf: $94
    rra                                           ; $4be0: $1f
    sbc a                                         ; $4be1: $9f
    ld [de], a                                    ; $4be2: $12
    ld a, [c]                                     ; $4be3: $f2
    sbc c                                         ; $4be4: $99
    inc c                                         ; $4be5: $0c
    ld h, c                                       ; $4be6: $61
    cp l                                          ; $4be7: $bd
    jp nc, $52ac                                  ; $4be8: $d2 $ac $52

    ld a, [de]                                    ; $4beb: $1a
    cp l                                          ; $4bec: $bd
    push af                                       ; $4bed: $f5
    ld h, l                                       ; $4bee: $65
    ld b, l                                       ; $4bef: $45
    xor l                                         ; $4bf0: $ad
    ccf                                           ; $4bf1: $3f
    rst $08                                       ; $4bf2: $cf
    ld e, h                                       ; $4bf3: $5c
    ld l, b                                       ; $4bf4: $68
    xor d                                         ; $4bf5: $aa
    ld [hl-], a                                   ; $4bf6: $32

Call_025_4bf7:
    ld a, $25                                     ; $4bf7: $3e $25
    db $e4                                        ; $4bf9: $e4
    inc sp                                        ; $4bfa: $33
    add hl, de                                    ; $4bfb: $19
    jp c, Jump_000_1419                           ; $4bfc: $da $19 $14

    rra                                           ; $4bff: $1f
    ld h, b                                       ; $4c00: $60
    rst $10                                       ; $4c01: $d7
    ld d, a                                       ; $4c02: $57
    inc d                                         ; $4c03: $14
    ld h, $af                                     ; $4c04: $26 $af
    ld [hl], c                                    ; $4c06: $71
    ld a, h                                       ; $4c07: $7c
    ld c, d                                       ; $4c08: $4a
    ld [$b4bb], sp                                ; $4c09: $08 $bb $b4
    db $eb                                        ; $4c0c: $eb
    ld [$9603], sp                                ; $4c0d: $08 $03 $96
    dec d                                         ; $4c10: $15
    or l                                          ; $4c11: $b5
    cp $74                                        ; $4c12: $fe $74
    ld sp, $697d                                  ; $4c14: $31 $7d $69

jr_025_4c17:
    adc a                                         ; $4c17: $8f
    ld c, a                                       ; $4c18: $4f
    add hl, bc                                    ; $4c19: $09
    ld sp, hl                                     ; $4c1a: $f9
    ld c, h                                       ; $4c1b: $4c
    ld [hl], $4a                                  ; $4c1c: $36 $4a
    ld e, $61                                     ; $4c1e: $1e $61
    dec l                                         ; $4c20: $2d
    add hl, sp                                    ; $4c21: $39
    ld c, d                                       ; $4c22: $4a
    ld a, [hl]                                    ; $4c23: $7e
    sub [hl]                                      ; $4c24: $96
    dec d                                         ; $4c25: $15
    or l                                          ; $4c26: $b5
    cp $14                                        ; $4c27: $fe $14
    ld a, [hl-]                                   ; $4c29: $3a
    dec h                                         ; $4c2a: $25
    reti                                          ; $4c2b: $d9


    rst $00                                       ; $4c2c: $c7
    ld c, c                                       ; $4c2d: $49
    and [hl]                                      ; $4c2e: $a6

Jump_025_4c2f:
    inc hl                                        ; $4c2f: $23
    inc c                                         ; $4c30: $0c
    cp l                                          ; $4c31: $bd
    jp nc, $52ac                                  ; $4c32: $d2 $ac $52

    ld a, [de]                                    ; $4c35: $1a
    cp l                                          ; $4c36: $bd
    push af                                       ; $4c37: $f5
    ld h, l                                       ; $4c38: $65
    ld b, l                                       ; $4c39: $45
    xor l                                         ; $4c3a: $ad
    ccf                                           ; $4c3b: $3f
    rst $08                                       ; $4c3c: $cf
    ld e, h                                       ; $4c3d: $5c
    ld l, b                                       ; $4c3e: $68
    xor d                                         ; $4c3f: $aa
    ld [hl-], a                                   ; $4c40: $32
    add l                                         ; $4c41: $85
    ld c, [hl]                                    ; $4c42: $4e
    ld c, c                                       ; $4c43: $49
    or $71                                        ; $4c44: $f6 $71
    sub d                                         ; $4c46: $92
    jp hl                                         ; $4c47: $e9


    ld [$9603], sp                                ; $4c48: $08 $03 $96
    dec d                                         ; $4c4b: $15
    or l                                          ; $4c4c: $b5
    cp $74                                        ; $4c4d: $fe $74
    ld sp, $697d                                  ; $4c4f: $31 $7d $69
    ld c, a                                       ; $4c52: $4f
    and c                                         ; $4c53: $a1
    ld d, e                                       ; $4c54: $53
    sub d                                         ; $4c55: $92
    ld a, l                                       ; $4c56: $7d
    sbc h                                         ; $4c57: $9c
    ld h, h                                       ; $4c58: $64
    ld a, [$7928]                                 ; $4c59: $fa $28 $79
    add h                                         ; $4c5c: $84
    ld bc, $5a96                                  ; $4c5d: $01 $96 $5a
    cp b                                          ; $4c60: $b8
    jr nz, jr_025_4c8d                            ; $4c61: $20 $2a

    sbc e                                         ; $4c63: $9b
    ld h, l                                       ; $4c64: $65
    ld b, l                                       ; $4c65: $45
    xor l                                         ; $4c66: $ad
    ccf                                           ; $4c67: $3f
    jr nz, jr_025_4c17                            ; $4c68: $20 $ad

    rst $38                                       ; $4c6a: $ff
    ld l, h                                       ; $4c6b: $6c
    and l                                         ; $4c6c: $a5
    nop                                           ; $4c6d: $00
    ld b, [hl]                                    ; $4c6e: $46
    ret                                           ; $4c6f: $c9


    ld [hl], e                                    ; $4c70: $73
    rst $10                                       ; $4c71: $d7
    ld [hl], $3e                                  ; $4c72: $36 $3e
    ld c, e                                       ; $4c74: $4b
    dec l                                         ; $4c75: $2d
    inc e                                         ; $4c76: $1c
    and h                                         ; $4c77: $a4
    ld c, b                                       ; $4c78: $48
    inc sp                                        ; $4c79: $33
    dec sp                                        ; $4c7a: $3b
    ld h, l                                       ; $4c7b: $65
    ld e, [hl]                                    ; $4c7c: $5e
    ld a, [hl]                                    ; $4c7d: $7e
    ld b, b                                       ; $4c7e: $40
    ld e, d                                       ; $4c7f: $5a
    ld a, a                                       ; $4c80: $7f
    add h                                         ; $4c81: $84
    ld bc, $67c7                                  ; $4c82: $01 $c7 $67
    ld [hl-], a                                   ; $4c85: $32
    xor $c2                                       ; $4c86: $ee $c2
    sub h                                         ; $4c88: $94
    rra                                           ; $4c89: $1f
    sub b                                         ; $4c8a: $90
    sub $7f                                       ; $4c8b: $d6 $7f

jr_025_4c8d:
    or [hl]                                       ; $4c8d: $b6
    ld d, d                                       ; $4c8e: $52
    nop                                           ; $4c8f: $00
    ld [$bd03], sp                                ; $4c90: $08 $03 $bd
    jp nc, $52ac                                  ; $4c93: $d2 $ac $52

    ld a, [de]                                    ; $4c96: $1a
    cp l                                          ; $4c97: $bd
    push af                                       ; $4c98: $f5
    ld h, l                                       ; $4c99: $65
    ld b, l                                       ; $4c9a: $45
    xor l                                         ; $4c9b: $ad
    ccf                                           ; $4c9c: $3f
    rst $08                                       ; $4c9d: $cf
    ld e, h                                       ; $4c9e: $5c
    xor b                                         ; $4c9f: $a8
    call nc, $480c                                ; $4ca0: $d4 $0c $48
    db $eb                                        ; $4ca3: $eb
    ccf                                           ; $4ca4: $3f
    ld e, e                                       ; $4ca5: $5b
    add hl, hl                                    ; $4ca6: $29
    nop                                           ; $4ca7: $00
    add h                                         ; $4ca8: $84
    sub b                                         ; $4ca9: $90
    and c                                         ; $4caa: $a1
    ld hl, sp+$00                                 ; $4cab: $f8 $00
    di                                            ; $4cad: $f3
    ld a, [c]                                     ; $4cae: $f2
    inc bc                                        ; $4caf: $03
    jp nc, $c3fa                                  ; $4cb0: $d2 $fa $c3

    ld d, h                                       ; $4cb3: $54
    ld a, [hl]                                    ; $4cb4: $7e
    ldh [$37], a                                  ; $4cb5: $e0 $37
    add $f1                                       ; $4cb7: $c6 $f1
    xor a                                         ; $4cb9: $af
    ld [hl], d                                    ; $4cba: $72
    add hl, hl                                    ; $4cbb: $29
    sbc b                                         ; $4cbc: $98
    sub a                                         ; $4cbd: $97
    rrca                                          ; $4cbe: $0f
    ld de, $9606                                  ; $4cbf: $11 $06 $96
    dec d                                         ; $4cc2: $15
    or l                                          ; $4cc3: $b5
    cp $74                                        ; $4cc4: $fe $74
    ld sp, $697d                                  ; $4cc6: $31 $7d $69
    rrca                                          ; $4cc9: $0f
    ld c, b                                       ; $4cca: $48
    db $eb                                        ; $4ccb: $eb
    ccf                                           ; $4ccc: $3f
    ld e, e                                       ; $4ccd: $5b
    add hl, hl                                    ; $4cce: $29
    add b                                         ; $4ccf: $80
    ld d, c                                       ; $4cd0: $51
    ld a, [c]                                     ; $4cd1: $f2
    ld [$ad03], sp                                ; $4cd2: $08 $03 $ad
    cpl                                           ; $4cd5: $2f
    ld e, a                                       ; $4cd6: $5f
    add e                                         ; $4cd7: $83
    ld b, c                                       ; $4cd8: $41
    add [hl]                                      ; $4cd9: $86
    cp a                                          ; $4cda: $bf
    halt                                          ; $4cdb: $76
    ld h, [hl]                                    ; $4cdc: $66
    ld [$2951], sp                                ; $4cdd: $08 $51 $29
    jr @-$2a                                      ; $4ce0: $18 $d4

    cpl                                           ; $4ce2: $2f
    ld hl, $dd0c                                  ; $4ce3: $21 $0c $dd
    ld d, e                                       ; $4ce6: $53
    ld a, [hl+]                                   ; $4ce7: $2a
    db $d3                                        ; $4ce8: $d3
    cp c                                          ; $4ce9: $b9
    db $f4                                        ; $4cea: $f4
    dec sp                                        ; $4ceb: $3b
    rst $18                                       ; $4cec: $df
    call c, $e118                                 ; $4ced: $dc $18 $e1
    adc b                                         ; $4cf0: $88
    or l                                          ; $4cf1: $b5
    rst $18                                       ; $4cf2: $df
    db $fd                                        ; $4cf3: $fd
    ld h, l                                       ; $4cf4: $65
    db $ed                                        ; $4cf5: $ed
    ld e, a                                       ; $4cf6: $5f
    and l                                         ; $4cf7: $a5
    ld a, [c]                                     ; $4cf8: $f2
    or [hl]                                       ; $4cf9: $b6
    adc c                                         ; $4cfa: $89
    db $e3                                        ; $4cfb: $e3
    xor a                                         ; $4cfc: $af
    sub a                                         ; $4cfd: $97
    ld a, c                                       ; $4cfe: $79
    ld a, c                                       ; $4cff: $79
    ld a, b                                       ; $4d00: $78
    add h                                         ; $4d01: $84
    ld bc, $f196                                  ; $4d02: $01 $96 $f1
    ld c, c                                       ; $4d05: $49
    db $ec                                        ; $4d06: $ec
    ld h, l                                       ; $4d07: $65
    dec h                                         ; $4d08: $25
    ld sp, hl                                     ; $4d09: $f9
    ld a, c                                       ; $4d0a: $79
    cp c                                          ; $4d0b: $b9
    or b                                          ; $4d0c: $b0
    xor h                                         ; $4d0d: $ac
    inc a                                         ; $4d0e: $3c
    dec sp                                        ; $4d0f: $3b
    ld b, $d6                                     ; $4d10: $06 $d6
    ld c, c                                       ; $4d12: $49
    sbc [hl]                                      ; $4d13: $9e
    cp l                                          ; $4d14: $bd
    inc l                                         ; $4d15: $2c
    ld c, b                                       ; $4d16: $48
    ld e, a                                       ; $4d17: $5f
    ld a, [de]                                    ; $4d18: $1a
    ld e, a                                       ; $4d19: $5f
    ld a, c                                       ; $4d1a: $79
    ld sp, hl                                     ; $4d1b: $f9
    xor [hl]                                      ; $4d1c: $ae
    jr @+$49                                      ; $4d1d: $18 $47

    rst $38                                       ; $4d1f: $ff
    ld a, e                                       ; $4d20: $7b
    db $fc                                        ; $4d21: $fc
    ld a, [de]                                    ; $4d22: $1a
    db $ec                                        ; $4d23: $ec
    sbc e                                         ; $4d24: $9b
    rlca                                          ; $4d25: $07
    add h                                         ; $4d26: $84
    sub b                                         ; $4d27: $90
    and l                                         ; $4d28: $a5
    ld h, [hl]                                    ; $4d29: $66
    db $fd                                        ; $4d2a: $fd
    pop bc                                        ; $4d2b: $c1
    ccf                                           ; $4d2c: $3f
    call $85cb                                    ; $4d2d: $cd $cb $85
    or l                                          ; $4d30: $b5
    rst $18                                       ; $4d31: $df
    ld c, [hl]                                    ; $4d32: $4e
    ld a, c                                       ; $4d33: $79
    add h                                         ; $4d34: $84
    ld bc, $67c7                                  ; $4d35: $01 $c7 $67
    ld [hl-], a                                   ; $4d38: $32
    xor $c2                                       ; $4d39: $ee $c2
    sub h                                         ; $4d3b: $94
    ld e, a                                       ; $4d3c: $5f
    ei                                            ; $4d3d: $fb
    rst $18                                       ; $4d3e: $df
    db $e3                                        ; $4d3f: $e3
    rst $10                                       ; $4d40: $d7
    ld h, b                                       ; $4d41: $60
    rst $18                                       ; $4d42: $df
    inc a                                         ; $4d43: $3c
    jr nz, jr_025_4d52                            ; $4d44: $20 $0c

    cp l                                          ; $4d46: $bd
    jp nc, $52ac                                  ; $4d47: $d2 $ac $52

    ld a, [de]                                    ; $4d4a: $1a
    cp l                                          ; $4d4b: $bd
    push af                                       ; $4d4c: $f5
    ld h, l                                       ; $4d4d: $65
    ld b, l                                       ; $4d4e: $45
    xor l                                         ; $4d4f: $ad
    ccf                                           ; $4d50: $3f
    rst $08                                       ; $4d51: $cf

jr_025_4d52:
    ld e, h                                       ; $4d52: $5c
    xor b                                         ; $4d53: $a8
    call nc, $fdac                                ; $4d54: $d4 $ac $fd
    rst $28                                       ; $4d57: $ef
    pop af                                        ; $4d58: $f1
    and c                                         ; $4d59: $a1
    or [hl]                                       ; $4d5a: $b6
    ld l, a                                       ; $4d5b: $6f
    ld e, $10                                     ; $4d5c: $1e $10
    ld b, $96                                     ; $4d5e: $06 $96
    dec d                                         ; $4d60: $15
    or l                                          ; $4d61: $b5
    cp $74                                        ; $4d62: $fe $74
    ld sp, $697d                                  ; $4d64: $31 $7d $69
    xor a                                         ; $4d67: $af
    db $fd                                        ; $4d68: $fd
    rst $28                                       ; $4d69: $ef
    pop af                                        ; $4d6a: $f1
    and c                                         ; $4d6b: $a1
    or [hl]                                       ; $4d6c: $b6
    ld l, a                                       ; $4d6d: $6f
    ld e, $46                                     ; $4d6e: $1e $46
    ret                                           ; $4d70: $c9


    inc hl                                        ; $4d71: $23
    inc c                                         ; $4d72: $0c
    and a                                         ; $4d73: $a7
    inc h                                         ; $4d74: $24
    ccf                                           ; $4d75: $3f
    res 1, d                                      ; $4d76: $cb $8a
    ld e, d                                       ; $4d78: $5a
    ld a, a                                       ; $4d79: $7f
    db $ed                                        ; $4d7a: $ed
    ld e, e                                       ; $4d7b: $5b
    and l                                         ; $4d7c: $a5
    ret nc                                        ; $4d7d: $d0

    ld c, d                                       ; $4d7e: $4a
    ld a, [bc]                                    ; $4d7f: $0a
    ld hl, $c70c                                  ; $4d80: $21 $0c $c7
    ld h, a                                       ; $4d83: $67
    ld [hl-], a                                   ; $4d84: $32
    xor $c2                                       ; $4d85: $ee $c2
    sub h                                         ; $4d87: $94
    ld e, a                                       ; $4d88: $5f
    ei                                            ; $4d89: $fb
    ld d, [hl]                                    ; $4d8a: $56
    add hl, hl                                    ; $4d8b: $29
    or h                                          ; $4d8c: $b4
    sub d                                         ; $4d8d: $92
    ld b, d                                       ; $4d8e: $42
    ld [$bd03], sp                                ; $4d8f: $08 $03 $bd
    jp nc, $52ac                                  ; $4d92: $d2 $ac $52

    ld a, [de]                                    ; $4d95: $1a
    cp l                                          ; $4d96: $bd
    push af                                       ; $4d97: $f5
    ld h, l                                       ; $4d98: $65
    ld b, l                                       ; $4d99: $45
    xor l                                         ; $4d9a: $ad
    ccf                                           ; $4d9b: $3f
    rst $08                                       ; $4d9c: $cf
    ld e, h                                       ; $4d9d: $5c
    xor b                                         ; $4d9e: $a8
    call nc, Call_025_7dac                        ; $4d9f: $d4 $ac $7d

jr_025_4da2:
    xor e                                         ; $4da2: $ab
    inc d                                         ; $4da3: $14
    ld e, d                                       ; $4da4: $5a
    ld c, c                                       ; $4da5: $49
    ld hl, $1840                                  ; $4da6: $21 $40 $18
    sub [hl]                                      ; $4da9: $96
    dec d                                         ; $4daa: $15
    or l                                          ; $4dab: $b5
    cp $74                                        ; $4dac: $fe $74
    ld sp, $697d                                  ; $4dae: $31 $7d $69
    xor a                                         ; $4db1: $af
    ld a, l                                       ; $4db2: $7d
    xor e                                         ; $4db3: $ab
    inc d                                         ; $4db4: $14
    ld e, d                                       ; $4db5: $5a
    ld c, c                                       ; $4db6: $49
    and c                                         ; $4db7: $a1
    ld d, c                                       ; $4db8: $51
    ld a, [c]                                     ; $4db9: $f2
    ld [$4703], sp                                ; $4dba: $08 $03 $47
    ccf                                           ; $4dbd: $3f
    rst $00                                       ; $4dbe: $c7
    ld d, h                                       ; $4dbf: $54
    add hl, de                                    ; $4dc0: $19
    ld a, b                                       ; $4dc1: $78
    jp nc, $8423                                  ; $4dc2: $d2 $23 $84

    ld e, d                                       ; $4dc5: $5a
    ld c, b                                       ; $4dc6: $48
    dec sp                                        ; $4dc7: $3b
    ccf                                           ; $4dc8: $3f
    ret nc                                        ; $4dc9: $d0

    set 4, [hl]                                   ; $4dca: $cb $e6
    push hl                                       ; $4dcc: $e5
    jp nz, $cc2e                                  ; $4dcd: $c2 $2e $cc

    ret nz                                        ; $4dd0: $c0

    or e                                          ; $4dd1: $b3
    ld e, l                                       ; $4dd2: $5d
    sbc d                                         ; $4dd3: $9a
    sub d                                         ; $4dd4: $92
    ld e, a                                       ; $4dd5: $5f

Jump_025_4dd6:
    sub [hl]                                      ; $4dd6: $96
    cp $80                                        ; $4dd7: $fe $80
    jr nc, jr_025_4da2                            ; $4dd9: $30 $c7

    ld h, a                                       ; $4ddb: $67
    ld [hl-], a                                   ; $4ddc: $32
    xor $c2                                       ; $4ddd: $ee $c2
    sub h                                         ; $4ddf: $94
    ld e, a                                       ; $4de0: $5f
    ei                                            ; $4de1: $fb
    add hl, sp                                    ; $4de2: $39
    and [hl]                                      ; $4de3: $a6
    jp z, $93c0                                   ; $4de4: $ca $c0 $93

    ld e, $61                                     ; $4de7: $1e $61
    cp l                                          ; $4de9: $bd
    jp nc, $52ac                                  ; $4dea: $d2 $ac $52

    ld a, [de]                                    ; $4ded: $1a
    cp l                                          ; $4dee: $bd
    push af                                       ; $4def: $f5
    ld h, l                                       ; $4df0: $65
    ld b, l                                       ; $4df1: $45
    xor l                                         ; $4df2: $ad
    ccf                                           ; $4df3: $3f
    rst $08                                       ; $4df4: $cf
    ld e, h                                       ; $4df5: $5c
    xor b                                         ; $4df6: $a8
    call nc, $fdac                                ; $4df7: $d4 $ac $fd
    inc e                                         ; $4dfa: $1c
    ld d, e                                       ; $4dfb: $53
    ld h, l                                       ; $4dfc: $65
    ldh [rOBP1], a                                ; $4dfd: $e0 $49
    rrca                                          ; $4dff: $0f
    ld [$9603], sp                                ; $4e00: $08 $03 $96
    dec d                                         ; $4e03: $15
    or l                                          ; $4e04: $b5
    cp $74                                        ; $4e05: $fe $74
    ld sp, $697d                                  ; $4e07: $31 $7d $69
    xor a                                         ; $4e0a: $af
    db $fd                                        ; $4e0b: $fd
    inc e                                         ; $4e0c: $1c
    ld d, e                                       ; $4e0d: $53
    ld h, l                                       ; $4e0e: $65
    ldh [rOBP1], a                                ; $4e0f: $e0 $49
    ccf                                           ; $4e11: $3f
    ld c, d                                       ; $4e12: $4a
    ld e, $61                                     ; $4e13: $1e $61
    dec l                                         ; $4e15: $2d
    scf                                           ; $4e16: $37
    ld e, d                                       ; $4e17: $5a
    ld e, a                                       ; $4e18: $5f
    ld h, [hl]                                    ; $4e19: $66
    add sp, $56                                   ; $4e1a: $e8 $56
    add hl, hl                                    ; $4e1c: $29
    or h                                          ; $4e1d: $b4
    sub d                                         ; $4e1e: $92
    ld b, d                                       ; $4e1f: $42
    ld e, l                                       ; $4e20: $5d
    ld h, [hl]                                    ; $4e21: $66
    ld e, c                                       ; $4e22: $59
    ei                                            ; $4e23: $fb
    ld a, l                                       ; $4e24: $7d
    ld e, [hl]                                    ; $4e25: $5e
    ld l, $ec                                     ; $4e26: $2e $ec
    jp nz, $1aac                                  ; $4e28: $c2 $ac $1a

    adc l                                         ; $4e2b: $8d
    or [hl]                                       ; $4e2c: $b6
    db $e3                                        ; $4e2d: $e3
    ld [hl], a                                    ; $4e2e: $77
    pop bc                                        ; $4e2f: $c1
    rst $00                                       ; $4e30: $c7
    ld h, a                                       ; $4e31: $67
    ld [hl-], a                                   ; $4e32: $32
    xor $c2                                       ; $4e33: $ee $c2
    sub h                                         ; $4e35: $94
    rra                                           ; $4e36: $1f
    call c, Call_025_7d68                         ; $4e37: $dc $68 $7d
    sbc c                                         ; $4e3a: $99
    and c                                         ; $4e3b: $a1
    ld e, e                                       ; $4e3c: $5b
    and l                                         ; $4e3d: $a5
    ret nc                                        ; $4e3e: $d0

    ld c, d                                       ; $4e3f: $4a
    ld a, [bc]                                    ; $4e40: $0a
    ld hl, $bd0c                                  ; $4e41: $21 $0c $bd
    jp nc, $52ac                                  ; $4e44: $d2 $ac $52

    ld a, [de]                                    ; $4e47: $1a
    cp l                                          ; $4e48: $bd
    push af                                       ; $4e49: $f5
    ld h, l                                       ; $4e4a: $65
    ld b, l                                       ; $4e4b: $45
    xor l                                         ; $4e4c: $ad
    ccf                                           ; $4e4d: $3f
    rst $08                                       ; $4e4e: $cf
    ld e, h                                       ; $4e4f: $5c
    xor b                                         ; $4e50: $a8
    call nc, Call_025_6e0c                        ; $4e51: $d4 $0c $6e
    or h                                          ; $4e54: $b4
    cp [hl]                                       ; $4e55: $be
    call z, $add0                                 ; $4e56: $cc $d0 $ad
    ld d, d                                       ; $4e59: $52
    ld l, b                                       ; $4e5a: $68
    dec h                                         ; $4e5b: $25
    add l                                         ; $4e5c: $85
    nop                                           ; $4e5d: $00
    ld h, c                                       ; $4e5e: $61
    sub [hl]                                      ; $4e5f: $96
    dec d                                         ; $4e60: $15
    or l                                          ; $4e61: $b5
    cp $74                                        ; $4e62: $fe $74
    ld sp, $697d                                  ; $4e64: $31 $7d $69
    rrca                                          ; $4e67: $0f
    ld l, [hl]                                    ; $4e68: $6e
    or h                                          ; $4e69: $b4
    cp [hl]                                       ; $4e6a: $be
    call z, $add0                                 ; $4e6b: $cc $d0 $ad
    ld d, d                                       ; $4e6e: $52
    ld l, b                                       ; $4e6f: $68
    dec h                                         ; $4e70: $25
    add l                                         ; $4e71: $85
    ld b, [hl]                                    ; $4e72: $46
    ret                                           ; $4e73: $c9


    inc hl                                        ; $4e74: $23
    inc c                                         ; $4e75: $0c
    xor l                                         ; $4e76: $ad
    ld b, [hl]                                    ; $4e77: $46
    and h                                         ; $4e78: $a4
    sbc c                                         ; $4e79: $99
    ld [de], a                                    ; $4e7a: $12
    sbc e                                         ; $4e7b: $9b
    ld a, l                                       ; $4e7c: $7d
    adc c                                         ; $4e7d: $89
    xor l                                         ; $4e7e: $ad
    ld c, c                                       ; $4e7f: $49
    inc hl                                        ; $4e80: $23
    ld [hl], e                                    ; $4e81: $73
    ld l, l                                       ; $4e82: $6d
    rst $00                                       ; $4e83: $c7
    rst $20                                       ; $4e84: $e7
    xor [hl]                                      ; $4e85: $ae
    ld d, l                                       ; $4e86: $55
    ld b, l                                       ; $4e87: $45
    ld a, [de]                                    ; $4e88: $1a
    add h                                         ; $4e89: $84
    ld bc, $d2bd                                  ; $4e8a: $01 $bd $d2
    call nc, $d7e4                                ; $4e8d: $d4 $e4 $d7
    ld a, [hl]                                    ; $4e90: $7e
    rst $30                                       ; $4e91: $f7
    sub a                                         ; $4e92: $97
    ld a, c                                       ; $4e93: $79
    ld d, c                                       ; $4e94: $51
    ld e, d                                       ; $4e95: $5a
    sub e                                         ; $4e96: $93
    ld h, [hl]                                    ; $4e97: $66
    ld sp, $ceb3                                  ; $4e98: $31 $b3 $ce
    ld e, l                                       ; $4e9b: $5d
    rst $30                                       ; $4e9c: $f7
    ld [hl], h                                    ; $4e9d: $74
    ld a, a                                       ; $4e9e: $7f
    ld b, c                                       ; $4e9f: $41
    db $eb                                        ; $4ea0: $eb
    sub c                                         ; $4ea1: $91
    add e                                         ; $4ea2: $83
    sub d                                         ; $4ea3: $92
    db $fc                                        ; $4ea4: $fc
    cp h                                          ; $4ea5: $bc
    cp h                                          ; $4ea6: $bc
    db $fc                                        ; $4ea7: $fc
    ld d, h                                       ; $4ea8: $54
    ld a, [hl]                                    ; $4ea9: $7e
    sub h                                         ; $4eaa: $94
    dec hl                                        ; $4eab: $2b

Jump_025_4eac:
    ld a, [hl+]                                   ; $4eac: $2a
    ld l, h                                       ; $4ead: $6c
    or $7f                                        ; $4eae: $f6 $7f
    cp h                                          ; $4eb0: $bc
    inc d                                         ; $4eb1: $14
    nop                                           ; $4eb2: $00
    ld [hl], a                                    ; $4eb3: $77
    push hl                                       ; $4eb4: $e5
    push hl                                       ; $4eb5: $e5
    ld l, e                                       ; $4eb6: $6b
    jr nc, @+$5f                                  ; $4eb7: $30 $5d

    and l                                         ; $4eb9: $a5
    jp nz, Jump_025_6556                          ; $4eba: $c2 $56 $65

    ret c                                         ; $4ebd: $d8

    cp [hl]                                       ; $4ebe: $be
    and h                                         ; $4ebf: $a4
    ld a, [hl]                                    ; $4ec0: $7e
    sub e                                         ; $4ec1: $93
    ld h, [hl]                                    ; $4ec2: $66
    and a                                         ; $4ec3: $a7
    xor h                                         ; $4ec4: $ac
    ld c, c                                       ; $4ec5: $49
    inc hl                                        ; $4ec6: $23
    dec sp                                        ; $4ec7: $3b
    ld l, $e3                                     ; $4ec8: $2e $e3
    call $90f5                                    ; $4eca: $cd $f5 $90
    db $db                                        ; $4ecd: $db
    adc c                                         ; $4ece: $89
    or a                                          ; $4ecf: $b7
    ld [hl-], a                                   ; $4ed0: $32
    add b                                         ; $4ed1: $80
    halt                                          ; $4ed2: $76
    ld b, $fc                                     ; $4ed3: $06 $fc
    xor [hl]                                      ; $4ed5: $ae
    rst $28                                       ; $4ed6: $ef
    jp c, $d26b                                   ; $4ed7: $da $6b $d2

    call z, $ead6                                 ; $4eda: $cc $d6 $ea
    rla                                           ; $4edd: $17
    ret z                                         ; $4ede: $c8

    xor e                                         ; $4edf: $ab
    adc a                                         ; $4ee0: $8f
    add hl, hl                                    ; $4ee1: $29
    dec b                                         ; $4ee2: $05
    cpl                                           ; $4ee3: $2f
    ld [$9603], sp                                ; $4ee4: $08 $03 $96
    ld a, c                                       ; $4ee7: $79
    ld c, c                                       ; $4ee8: $49
    inc de                                        ; $4ee9: $13
    inc d                                         ; $4eea: $14
    ld e, a                                       ; $4eeb: $5f
    sub e                                         ; $4eec: $93
    and [hl]                                      ; $4eed: $a6
    add $d6                                       ; $4eee: $c6 $d6
    cp $b5                                        ; $4ef0: $fe $b5
    rst $18                                       ; $4ef2: $df
    db $fd                                        ; $4ef3: $fd
    ld h, l                                       ; $4ef4: $65
    ld [$ce83], a                                 ; $4ef5: $ea $83 $ce
    rst $00                                       ; $4ef8: $c7
    ld [$75dc], sp                                ; $4ef9: $08 $dc $75
    ld c, a                                       ; $4efc: $4f
    rst $30                                       ; $4efd: $f7
    rla                                           ; $4efe: $17
    or h                                          ; $4eff: $b4
    ld e, [hl]                                    ; $4f00: $5e
    ld l, c                                       ; $4f01: $69
    ld h, h                                       ; $4f02: $64
    db $fc                                        ; $4f03: $fc
    ld l, e                                       ; $4f04: $6b
    sbc l                                         ; $4f05: $9d
    ld e, $60                                     ; $4f06: $1e $60
    sbc [hl]                                      ; $4f08: $9e
    and [hl]                                      ; $4f09: $a6
    ld a, [hl+]                                   ; $4f0a: $2a
    rrca                                          ; $4f0b: $0f
    dec bc                                        ; $4f0c: $0b
    rra                                           ; $4f0d: $1f
    xor l                                         ; $4f0e: $ad
    push af                                       ; $4f0f: $f5
    push hl                                       ; $4f10: $e5
    ld l, e                                       ; $4f11: $6b
    jr nc, @+$5f                                  ; $4f12: $30 $5d

    and l                                         ; $4f14: $a5
    jp nz, Jump_025_6556                          ; $4f15: $c2 $56 $65

    ret c                                         ; $4f18: $d8

    cp [hl]                                       ; $4f19: $be
    and h                                         ; $4f1a: $a4
    ld a, [hl]                                    ; $4f1b: $7e
    sub e                                         ; $4f1c: $93
    ld h, [hl]                                    ; $4f1d: $66
    and a                                         ; $4f1e: $a7
    xor h                                         ; $4f1f: $ac
    ld c, c                                       ; $4f20: $49
    inc hl                                        ; $4f21: $23
    dec sp                                        ; $4f22: $3b
    ld l, $e3                                     ; $4f23: $2e $e3
    call $90f5                                    ; $4f25: $cd $f5 $90
    db $db                                        ; $4f28: $db
    adc c                                         ; $4f29: $89
    or a                                          ; $4f2a: $b7
    ld [hl-], a                                   ; $4f2b: $32
    add b                                         ; $4f2c: $80
    halt                                          ; $4f2d: $76
    ld b, $fc                                     ; $4f2e: $06 $fc
    xor [hl]                                      ; $4f30: $ae
    rst $28                                       ; $4f31: $ef
    jp c, $d26b                                   ; $4f32: $da $6b $d2

    call z, $ead6                                 ; $4f35: $cc $d6 $ea
    rla                                           ; $4f38: $17
    ret z                                         ; $4f39: $c8

    xor e                                         ; $4f3a: $ab
    adc a                                         ; $4f3b: $8f
    add hl, hl                                    ; $4f3c: $29
    dec b                                         ; $4f3d: $05
    cpl                                           ; $4f3e: $2f
    ld [$ad03], sp                                ; $4f3f: $08 $03 $ad
    cpl                                           ; $4f42: $2f
    ld e, a                                       ; $4f43: $5f
    add e                                         ; $4f44: $83
    dec [hl]                                      ; $4f45: $35
    ld l, c                                       ; $4f46: $69
    ld h, h                                       ; $4f47: $64
    db $f4                                        ; $4f48: $f4
    db $fc                                        ; $4f49: $fc
    ld a, [hl+]                                   ; $4f4a: $2a
    dec d                                         ; $4f4b: $15
    or [hl]                                       ; $4f4c: $b6
    ld a, [hl+]                                   ; $4f4d: $2a
    jp $25f6                                      ; $4f4e: $c3 $f6 $25


    push af                                       ; $4f51: $f5
    sbc e                                         ; $4f52: $9b
    call nz, $ab5d                                ; $4f53: $c4 $5d $ab
    adc d                                         ; $4f56: $8a
    inc [hl]                                      ; $4f57: $34
    ld [$ad03], sp                                ; $4f58: $08 $03 $ad
    cpl                                           ; $4f5b: $2f
    ld e, a                                       ; $4f5c: $5f
    add e                                         ; $4f5d: $83
    jp hl                                         ; $4f5e: $e9


    add sp, -$07                                  ; $4f5f: $e8 $f9
    ld d, l                                       ; $4f61: $55
    ld a, [hl+]                                   ; $4f62: $2a
    ld l, h                                       ; $4f63: $6c
    ld d, l                                       ; $4f64: $55
    add [hl]                                      ; $4f65: $86
    db $ed                                        ; $4f66: $ed
    ld c, e                                       ; $4f67: $4b
    ld [$8937], a                                 ; $4f68: $ea $37 $89
    dec sp                                        ; $4f6b: $3b
    ld e, e                                       ; $4f6c: $5b
    ld e, $ca                                     ; $4f6d: $1e $ca
    jp nc, $e7b6                                  ; $4f6f: $d2 $b6 $e7

    push hl                                       ; $4f72: $e5
    rla                                           ; $4f73: $17
    push de                                       ; $4f74: $d5
    rra                                           ; $4f75: $1f
    ld a, h                                       ; $4f76: $7c
    ret                                           ; $4f77: $c9


    ld b, a                                       ; $4f78: $47
    add h                                         ; $4f79: $84
    ld bc, $8b47                                  ; $4f7a: $01 $47 $8b
    ld [de], a                                    ; $4f7d: $12
    dec de                                        ; $4f7e: $1b
    dec a                                         ; $4f7f: $3d
    cp a                                          ; $4f80: $bf
    ld c, d                                       ; $4f81: $4a
    add l                                         ; $4f82: $85
    xor l                                         ; $4f83: $ad
    jp z, Jump_025_7db0                           ; $4f84: $ca $b0 $7d

    ld c, c                                       ; $4f87: $49
    db $fd                                        ; $4f88: $fd
    ld h, $71                                     ; $4f89: $26 $71
    rst $10                                       ; $4f8b: $d7
    xor d                                         ; $4f8c: $aa
    ld [hl+], a                                   ; $4f8d: $22
    dec c                                         ; $4f8e: $0d
    sbc d                                         ; $4f8f: $9a
    ld h, l                                       ; $4f90: $65
    dec h                                         ; $4f91: $25
    dec sp                                        ; $4f92: $3b
    cp a                                          ; $4f93: $bf
    db $eb                                        ; $4f94: $eb
    dec [hl]                                      ; $4f95: $35
    sbc b                                         ; $4f96: $98
    ld l, $c8                                     ; $4f97: $2e $c8
    ld h, h                                       ; $4f99: $64
    ld c, e                                       ; $4f9a: $4b
    ld a, d                                       ; $4f9b: $7a
    add h                                         ; $4f9c: $84
    ld bc, $1827                                  ; $4f9d: $01 $27 $18
    ldh a, [$5d]                                  ; $4fa0: $f0 $5d
    sbc d                                         ; $4fa2: $9a
    rst $18                                       ; $4fa3: $df
    ldh a, [$67]                                  ; $4fa4: $f0 $67
    and a                                         ; $4fa6: $a7
    call z, $8fcb                                 ; $4fa7: $cc $cb $8f
    sbc [hl]                                      ; $4faa: $9e
    ld e, a                                       ; $4fab: $5f
    and l                                         ; $4fac: $a5
    jp nz, Jump_025_6556                          ; $4fad: $c2 $56 $65

    ret c                                         ; $4fb0: $d8

    cp [hl]                                       ; $4fb1: $be
    and h                                         ; $4fb2: $a4
    ld a, [hl]                                    ; $4fb3: $7e
    sub e                                         ; $4fb4: $93
    cp b                                          ; $4fb5: $b8
    ld l, e                                       ; $4fb6: $6b
    ld d, l                                       ; $4fb7: $55
    sub c                                         ; $4fb8: $91
    ld b, $6d                                     ; $4fb9: $06 $6d
    xor l                                         ; $4fbb: $ad
    reti                                          ; $4fbc: $d9


    ld sp, hl                                     ; $4fbd: $f9
    ld e, l                                       ; $4fbe: $5d
    xor a                                         ; $4fbf: $af
    pop bc                                        ; $4fc0: $c1
    sub d                                         ; $4fc1: $92
    ld a, [hl]                                    ; $4fc2: $7e
    ld c, l                                       ; $4fc3: $4d
    sbc d                                         ; $4fc4: $9a
    ld d, l                                       ; $4fc5: $55
    ld c, d                                       ; $4fc6: $4a
    inc sp                                        ; $4fc7: $33
    ldh a, [$08]                                  ; $4fc8: $f0 $08
    inc bc                                        ; $4fca: $03

Jump_025_4fcb:
    xor l                                         ; $4fcb: $ad
    cpl                                           ; $4fcc: $2f
    ld e, a                                       ; $4fcd: $5f
    add e                                         ; $4fce: $83
    dec [hl]                                      ; $4fcf: $35
    ld l, c                                       ; $4fd0: $69
    ld h, h                                       ; $4fd1: $64
    db $f4                                        ; $4fd2: $f4
    inc e                                         ; $4fd3: $1c
    ld a, h                                       ; $4fd4: $7c
    sub l                                         ; $4fd5: $95
    ld a, [bc]                                    ; $4fd6: $0a
    ld e, e                                       ; $4fd7: $5b
    sub l                                         ; $4fd8: $95
    ld h, c                                       ; $4fd9: $61
    ei                                            ; $4fda: $fb
    sub d                                         ; $4fdb: $92
    ld a, [$e24d]                                 ; $4fdc: $fa $4d $e2
    xor [hl]                                      ; $4fdf: $ae
    ld d, l                                       ; $4fe0: $55
    ld b, l                                       ; $4fe1: $45
    ld a, [de]                                    ; $4fe2: $1a
    or h                                          ; $4fe3: $b4
    sub $ec                                       ; $4fe4: $d6 $ec
    db $fc                                        ; $4fe6: $fc
    sbc d                                         ; $4fe7: $9a
    inc [hl]                                      ; $4fe8: $34
    ld d, e                                       ; $4fe9: $53
    ld a, c                                       ; $4fea: $79
    xor d                                         ; $4feb: $aa
    ld sp, hl                                     ; $4fec: $f9
    add d                                         ; $4fed: $82
    ld [hl], a                                    ; $4fee: $77
    cp a                                          ; $4fef: $bf
    inc d                                         ; $4ff0: $14
    ld c, h                                       ; $4ff1: $4c
    xor c                                         ; $4ff2: $a9
    ld e, c                                       ; $4ff3: $59
    ld e, e                                       ; $4ff4: $5b
    reti                                          ; $4ff5: $d9


    sub d                                         ; $4ff6: $92
    ld e, $10                                     ; $4ff7: $1e $10
    ld b, $96                                     ; $4ff9: $06 $96
    push de                                       ; $4ffb: $d5
    jp hl                                         ; $4ffc: $e9


    ld sp, hl                                     ; $4ffd: $f9
    dec [hl]                                      ; $4ffe: $35
    ld l, c                                       ; $4fff: $69
    ld l, d                                       ; $5000: $6a
    ld l, h                                       ; $5001: $6c
    ld d, b                                       ; $5002: $50
    sub d                                         ; $5003: $92
    sbc a                                         ; $5004: $9f
    jp hl                                         ; $5005: $e9


    call z, $994e                                 ; $5006: $cc $4e $99
    adc [hl]                                      ; $5009: $8e
    sbc [hl]                                      ; $500a: $9e
    ld e, a                                       ; $500b: $5f
    and l                                         ; $500c: $a5
    jp nz, Jump_025_6556                          ; $500d: $c2 $56 $65

    ret c                                         ; $5010: $d8

    cp [hl]                                       ; $5011: $be
    and h                                         ; $5012: $a4
    ld a, [hl]                                    ; $5013: $7e
    sub e                                         ; $5014: $93
    cp b                                          ; $5015: $b8
    ld l, e                                       ; $5016: $6b
    ld d, l                                       ; $5017: $55
    sub c                                         ; $5018: $91
    ld b, $61                                     ; $5019: $06 $61
    rst $00                                       ; $501b: $c7
    cp a                                          ; $501c: $bf
    xor a                                         ; $501d: $af
    ld c, c                                       ; $501e: $49
    inc hl                                        ; $501f: $23
    and e                                         ; $5020: $a3
    rst $20                                       ; $5021: $e7
    ld d, a                                       ; $5022: $57
    xor c                                         ; $5023: $a9
    or b                                          ; $5024: $b0
    ld d, l                                       ; $5025: $55
    add hl, de                                    ; $5026: $19
    or [hl]                                       ; $5027: $b6
    cpl                                           ; $5028: $2f
    xor c                                         ; $5029: $a9
    rst $18                                       ; $502a: $df
    and h                                         ; $502b: $a4
    ld l, $3b                                     ; $502c: $2e $3b
    sub $fa                                       ; $502e: $d6 $fa
    jp nc, Jump_000_28ac                          ; $5030: $d2 $ac $28

    or c                                          ; $5033: $b1
    jp hl                                         ; $5034: $e9


    ld hl, sp+$4b                                 ; $5035: $f8 $4b
    db $f4                                        ; $5037: $f4
    jp nc, $0305                                  ; $5038: $d2 $05 $03

    rst $00                                       ; $503b: $c7
    cp a                                          ; $503c: $bf
    xor a                                         ; $503d: $af
    ld c, c                                       ; $503e: $49
    inc hl                                        ; $503f: $23
    and e                                         ; $5040: $a3
    rst $20                                       ; $5041: $e7
    ld d, a                                       ; $5042: $57
    xor c                                         ; $5043: $a9
    or b                                          ; $5044: $b0
    ld d, l                                       ; $5045: $55
    add hl, de                                    ; $5046: $19
    or [hl]                                       ; $5047: $b6
    cpl                                           ; $5048: $2f
    xor c                                         ; $5049: $a9
    rst $18                                       ; $504a: $df
    and h                                         ; $504b: $a4
    ld l, $3b                                     ; $504c: $2e $3b
    ld h, $a9                                     ; $504e: $26 $a9
    and $0b                                       ; $5050: $e6 $0b
    sbc $17                                       ; $5052: $de $17
    inc de                                        ; $5054: $13
    ld a, h                                       ; $5055: $7c
    sub a                                         ; $5056: $97
    and $e5                                       ; $5057: $e6 $e5
    rlca                                          ; $5059: $07
    push bc                                       ; $505a: $c5
    ret c                                         ; $505b: $d8

    halt                                          ; $505c: $76
    db $fc                                        ; $505d: $fc
    ld l, $18                                     ; $505e: $2e $18
    xor l                                         ; $5060: $ad
    reti                                          ; $5061: $d9


    ld sp, hl                                     ; $5062: $f9
    dec [hl]                                      ; $5063: $35
    ld l, c                                       ; $5064: $69
    ld h, h                                       ; $5065: $64
    db $ec                                        ; $5066: $ec
    xor e                                         ; $5067: $ab
    ld a, [$ebec]                                 ; $5068: $fa $ec $eb
    jr nc, jr_025_509c                            ; $506b: $30 $2f

    rla                                           ; $506d: $17
    ld b, [hl]                                    ; $506e: $46
    rst $08                                       ; $506f: $cf
    xor a                                         ; $5070: $af
    ld d, d                                       ; $5071: $52
    ld h, c                                       ; $5072: $61
    xor e                                         ; $5073: $ab
    ld [hl-], a                                   ; $5074: $32
    ld l, h                                       ; $5075: $6c
    ld e, a                                       ; $5076: $5f
    ld d, d                                       ; $5077: $52
    cp a                                          ; $5078: $bf
    ld c, c                                       ; $5079: $49
    call c, $aab5                                 ; $507a: $dc $b5 $aa
    ld c, b                                       ; $507d: $48
    add e                                         ; $507e: $83
    jr nc, jr_025_5097                            ; $507f: $30 $16

    ld a, e                                       ; $5081: $7b
    sub [hl]                                      ; $5082: $96
    pop af                                        ; $5083: $f1
    cpl                                           ; $5084: $2f
    ccf                                           ; $5085: $3f
    ld e, l                                       ; $5086: $5d

jr_025_5087:
    ei                                            ; $5087: $fb
    db $dd                                        ; $5088: $dd
    cpl                                           ; $5089: $2f
    dec b                                         ; $508a: $05
    dec bc                                        ; $508b: $0b
    sub l                                         ; $508c: $95
    cp b                                          ; $508d: $b8
    or e                                          ; $508e: $b3
    call nc, Call_025_40d8                        ; $508f: $d4 $d8 $40
    sbc e                                         ; $5092: $9b
    ld a, c                                       ; $5093: $79
    cp c                                          ; $5094: $b9
    or b                                          ; $5095: $b0
    dec bc                                        ; $5096: $0b

jr_025_5097:
    db $d3                                        ; $5097: $d3
    dec b                                         ; $5098: $05
    sbc c                                         ; $5099: $99
    ld l, h                                       ; $509a: $6c
    sub l                                         ; $509b: $95

jr_025_509c:
    ld a, [bc]                                    ; $509c: $0a
    ld e, e                                       ; $509d: $5b
    sub l                                         ; $509e: $95
    ld h, c                                       ; $509f: $61
    ei                                            ; $50a0: $fb
    sub d                                         ; $50a1: $92
    ld a, [$e24d]                                 ; $50a2: $fa $4d $e2
    xor [hl]                                      ; $50a5: $ae

Call_025_50a6:
    ld d, l                                       ; $50a6: $55
    ld b, l                                       ; $50a7: $45
    ld a, [de]                                    ; $50a8: $1a
    add h                                         ; $50a9: $84
    ld bc, $bf3d                                  ; $50aa: $01 $3d $bf
    ld d, $e3                                     ; $50ad: $16 $e3
    ld [c], a                                     ; $50af: $e2
    ei                                            ; $50b0: $fb
    sbc d                                         ; $50b1: $9a
    inc [hl]                                      ; $50b2: $34
    xor e                                         ; $50b3: $ab
    ld d, e                                       ; $50b4: $53
    ld a, [c]                                     ; $50b5: $f2
    db $e3                                        ; $50b6: $e3
    set 2, e                                      ; $50b7: $cb $d3
    ld [hl], h                                    ; $50b9: $74
    db $f4                                        ; $50ba: $f4
    db $fc                                        ; $50bb: $fc
    xor d                                         ; $50bc: $aa
    inc c                                         ; $50bd: $0c
    db $db                                        ; $50be: $db
    sub a                                         ; $50bf: $97
    call nc, $d26f                                ; $50c0: $d4 $6f $d2
    ld d, h                                       ; $50c3: $54
    db $e4                                        ; $50c4: $e4
    ld e, d                                       ; $50c5: $5a
    rra                                           ; $50c6: $1f
    db $10                                        ; $50c7: $10
    ld b, $3d                                     ; $50c8: $06 $3d
    adc d                                         ; $50ca: $8a
    ld a, d                                       ; $50cb: $7a
    dec c                                         ; $50cc: $0d
    and [hl]                                      ; $50cd: $a6
    ld sp, $b2ce                                  ; $50ce: $31 $ce $b2
    and d                                         ; $50d1: $a2
    sub $9f                                       ; $50d2: $d6 $9f
    call c, $f8a0                                 ; $50d4: $dc $a0 $f8
    jr z, @+$7b                                   ; $50d7: $28 $79

    xor $5a                                       ; $50d9: $ee $5a
    ld d, l                                       ; $50db: $55
    and h                                         ; $50dc: $a4
    ld b, c                                       ; $50dd: $41
    jr jr_025_5087                                ; $50de: $18 $a7

    db $e4                                        ; $50e0: $e4
    jp nz, Jump_025_5f94                          ; $50e1: $c2 $94 $5f

    sub l                                         ; $50e4: $95
    ld h, c                                       ; $50e5: $61
    ei                                            ; $50e6: $fb
    sub d                                         ; $50e7: $92
    ld a, [$824d]                                 ; $50e8: $fa $4d $82
    reti                                          ; $50eb: $d9


    add hl, hl                                    ; $50ec: $29
    and e                                         ; $50ed: $a3
    db $e4                                        ; $50ee: $e4
    cp c                                          ; $50ef: $b9
    ld l, e                                       ; $50f0: $6b
    ld d, l                                       ; $50f1: $55
    sub c                                         ; $50f2: $91
    ld b, $61                                     ; $50f3: $06 $61
    db $dd                                        ; $50f5: $dd
    jp z, $f557                                   ; $50f6: $ca $57 $f5

    or l                                          ; $50f9: $b5
    or l                                          ; $50fa: $b5
    xor d                                         ; $50fb: $aa
    cpl                                           ; $50fc: $2f
    xor d                                         ; $50fd: $aa
    cp a                                          ; $50fe: $bf
    ld [hl], b                                    ; $50ff: $70
    rst $10                                       ; $5100: $d7
    xor d                                         ; $5101: $aa
    ld [hl+], a                                   ; $5102: $22
    dec c                                         ; $5103: $0d
    ld e, d                                       ; $5104: $5a
    adc a                                         ; $5105: $8f
    ld a, [c]                                     ; $5106: $f2
    ld a, [c]                                     ; $5107: $f2
    ld d, e                                       ; $5108: $53
    ld sp, hl                                     ; $5109: $f9
    pop de                                        ; $510a: $d1
    di                                            ; $510b: $f3
    xor e                                         ; $510c: $ab
    ld [hl-], a                                   ; $510d: $32
    ld l, h                                       ; $510e: $6c
    ld e, a                                       ; $510f: $5f
    ld d, d                                       ; $5110: $52
    cp a                                          ; $5111: $bf
    ld c, c                                       ; $5112: $49
    jr nc, @+$17                                  ; $5113: $30 $15

    cp c                                          ; $5115: $b9
    sub $4b                                       ; $5116: $d6 $4b
    pop bc                                        ; $5118: $c1
    inc [hl]                                      ; $5119: $34
    add $79                                       ; $511a: $c6 $79
    ld sp, hl                                     ; $511c: $f9
    ld sp, hl                                     ; $511d: $f9
    dec c                                         ; $511e: $0d
    rra                                           ; $511f: $1f
    ld h, c                                       ; $5120: $61

    db $ad, $47, $9d, $7e, $7a, $af, $75, $3f, $b5, $47, $8f, $63, $4f, $e7, $ae, $2a
    db $2a, $5a, $f9, $0b, $70, $47, $1a, $3e, $4c, $89, $4d, $3e, $aa, $3f, $db, $25
    db $76, $ab, $ab, $53, $f9, $b9, $28, $fb, $50, $a5, $0e, $4b, $7b, $4a, $6c, $9c
    db $d6, $53, $85, $5e, $76, $b4, $24, $a0, $9d, $d3, $07, $f4, $db, $5f, $9f, $18
    db $bd, $d2, $ac, $a8, $f5, $27, $5f, $fd, $b5, $3e, $5b, $93, $46, $c6, $2b, $31
    db $ee, $bc, $fc, $c2, $04, $1f, $7d, $f5, $00, $2a, $cd, $fe, $7c, $73, $3b, $e1
    db $93, $2f, $ed, $29, $35, $e3, $af, $57, $65, $29, $e3, $2f, $47, $15, $d6, $65
    db $bd, $d2, $ac, $52, $1a, $25, $bf, $4a, $c1, $e7, $e5, $67, $5f, $01, $5f, $da
    db $0b, $95, $9a, $41, $e7, $63, $84, $35, $69, $c6, $df, $18, $17, $5f, $85, $10
    db $06

    cp l                                          ; $51b2: $bd
    jp nc, $e54c                                  ; $51b3: $d2 $4c $e5

    ld h, a                                       ; $51b6: $67
    ld e, a                                       ; $51b7: $5f
    jp nc, $9b18                                  ; $51b8: $d2 $18 $9b

    ld e, l                                       ; $51bb: $5d
    add d                                         ; $51bc: $82
    bit 7, [hl]                                   ; $51bd: $cb $7e
    ld c, l                                       ; $51bf: $4d
    ld a, [de]                                    ; $51c0: $1a
    sbc c                                         ; $51c1: $99
    xor l                                         ; $51c2: $ad
    pop hl                                        ; $51c3: $e1
    adc l                                         ; $51c4: $8d
    call Call_025_6aac                            ; $51c5: $cd $ac $6a
    and d                                         ; $51c8: $a2
    ld [hl], a                                    ; $51c9: $77
    sbc c                                         ; $51ca: $99
    push bc                                       ; $51cb: $c5
    ld l, e                                       ; $51cc: $6b
    or b                                          ; $51cd: $b0
    and d                                         ; $51ce: $a2
    jp nz, $b9e6                                  ; $51cf: $c2 $e6 $b9

    or $c7                                        ; $51d2: $f6 $c7
    ei                                            ; $51d4: $fb
    sub $5f                                       ; $51d5: $d6 $5f
    sub e                                         ; $51d7: $93
    ld h, [hl]                                    ; $51d8: $66
    db $f4                                        ; $51d9: $f4
    sub $97                                       ; $51da: $d6 $97
    push de                                       ; $51dc: $d5
    jp hl                                         ; $51dd: $e9


    ld sp, hl                                     ; $51de: $f9
    ld l, c                                       ; $51df: $69
    dec sp                                        ; $51e0: $3b
    adc l                                         ; $51e1: $8d
    rst $28                                       ; $51e2: $ef
    ld a, [$6fda]                                 ; $51e3: $fa $da $6f
    and a                                         ; $51e6: $a7
    ld a, h                                       ; $51e7: $7c
    rla                                           ; $51e8: $17
    inc c                                         ; $51e9: $0c
    cp l                                          ; $51ea: $bd
    jp nc, $a8ac                                  ; $51eb: $d2 $ac $a8

    push af                                       ; $51ee: $f5
    ld d, a                                       ; $51ef: $57
    ld h, l                                       ; $51f0: $65
    ret c                                         ; $51f1: $d8

    adc c                                         ; $51f2: $89
    rst $28                                       ; $51f3: $ef
    rst $08                                       ; $51f4: $cf
    sub $36                                       ; $51f5: $d6 $36
    call Call_025_60a5                            ; $51f7: $cd $a5 $60
    ld a, [de]                                    ; $51fa: $1a
    db $e3                                        ; $51fb: $e3
    cp h                                          ; $51fc: $bc
    db $fc                                        ; $51fd: $fc
    xor [hl]                                      ; $51fe: $ae
    ld a, a                                       ; $51ff: $7f
    ld [$5a4b], sp                                ; $5200: $08 $4b $5a
    sub e                                         ; $5203: $93
    ld b, [hl]                                    ; $5204: $46
    ld b, $55                                     ; $5205: $06 $55
    ret                                           ; $5207: $c9


jr_025_5208:
    adc h                                         ; $5208: $8c
    adc e                                         ; $5209: $8b
    rla                                           ; $520a: $17
    cp h                                          ; $520b: $bc
    bit 1, [hl]                                   ; $520c: $cb $4e
    ld c, c                                       ; $520e: $49
    ld a, [hl]                                    ; $520f: $7e
    ld c, l                                       ; $5210: $4d
    sbc d                                         ; $5211: $9a
    ld d, l                                       ; $5212: $55
    ld c, d                                       ; $5213: $4a
    adc e                                         ; $5214: $8b
    xor a                                         ; $5215: $af
    sub $9f                                       ; $5216: $d6 $9f
    sbc l                                         ; $5218: $9d
    or d                                          ; $5219: $b2
    sub $0c                                       ; $521a: $d6 $0c
    ld a, b                                       ; $521c: $78
    dec d                                         ; $521d: $15
    add a                                         ; $521e: $87
    ld l, $18                                     ; $521f: $2e $18
    cp l                                          ; $5221: $bd
    jp nc, $a8ac                                  ; $5222: $d2 $ac $a8

    push af                                       ; $5225: $f5
    rst $00                                       ; $5226: $c7
    sbc $7e                                       ; $5227: $de $7e
    push af                                       ; $5229: $f5
    ld h, a                                       ; $522a: $67
    di                                            ; $522b: $f3
    and d                                         ; $522c: $a2
    ld a, $52                                     ; $522d: $3e $52
    ldh a, [$66]                                  ; $522f: $f0 $66
    ld b, b                                       ; $5231: $40
    reti                                          ; $5232: $d9


    and $ee                                       ; $5233: $e6 $ee
    jr jr_025_5208                                ; $5235: $18 $d1

    ld a, [hl+]                                   ; $5237: $2a
    cp c                                          ; $5238: $b9
    db $e3                                        ; $5239: $e3
    xor a                                         ; $523a: $af
    sub a                                         ; $523b: $97
    ld b, c                                       ; $523c: $41
    rst $20                                       ; $523d: $e7
    ld h, e                                       ; $523e: $63
    add h                                         ; $523f: $84
    ld l, $6b                                     ; $5240: $2e $6b
    ld a, c                                       ; $5242: $79
    or c                                          ; $5243: $b1
    ld a, $ac                                     ; $5244: $3e $ac
    call c, Call_025_7270                         ; $5246: $dc $70 $72
    add e                                         ; $5249: $83
    ld [c], a                                     ; $524a: $e2
    or e                                          ; $524b: $b3
    ld d, e                                       ; $524c: $53
    and $1a                                       ; $524d: $e6 $1a
    db $eb                                        ; $524f: $eb
    sub a                                         ; $5250: $97
    add d                                         ; $5251: $82
    ld l, c                                       ; $5252: $69
    dec sp                                        ; $5253: $3b
    adc l                                         ; $5254: $8d
    xor a                                         ; $5255: $af
    ld c, c                                       ; $5256: $49
    inc hl                                        ; $5257: $23
    and e                                         ; $5258: $a3
    rst $20                                       ; $5259: $e7
    ld h, a                                       ; $525a: $67
    bit 7, l                                      ; $525b: $cb $7d
    ld h, d                                       ; $525d: $62
    jr nc, jr_025_528f                            ; $525e: $30 $2f

    ld [$b5e3], a                                 ; $5260: $ea $e3 $b5
    jp hl                                         ; $5263: $e9


    add d                                         ; $5264: $82
    ld bc, $d2bd                                  ; $5265: $01 $bd $d2
    call nc, $bfac                                ; $5268: $d4 $ac $bf
    ld d, b                                       ; $526b: $50
    ld c, c                                       ; $526c: $49
    add e                                         ; $526d: $83
    ld h, a                                       ; $526e: $67
    di                                            ; $526f: $f3
    ld e, h                                       ; $5270: $5c
    dec h                                         ; $5271: $25
    add hl, bc                                    ; $5272: $09
    jr nc, @+$31                                  ; $5273: $30 $2f

    cp a                                          ; $5275: $bf
    xor b                                         ; $5276: $a8
    push af                                       ; $5277: $f5
    sbc a                                         ; $5278: $9f
    ld [de], a                                    ; $5279: $12
    sbc e                                         ; $527a: $9b
    ld a, l                                       ; $527b: $7d
    adc c                                         ; $527c: $89
    xor l                                         ; $527d: $ad
    ld c, c                                       ; $527e: $49
    inc hl                                        ; $527f: $23
    db $e3                                        ; $5280: $e3
    or l                                          ; $5281: $b5
    sbc c                                         ; $5282: $99
    rla                                           ; $5283: $17
    ld c, c                                       ; $5284: $49
    inc de                                        ; $5285: $13
    sub h                                         ; $5286: $94
    ld a, c                                       ; $5287: $79
    ld sp, hl                                     ; $5288: $f9
    ld sp, $c143                                  ; $5289: $31 $43 $c1
    daa                                           ; $528c: $27
    and c                                         ; $528d: $a1
    dec e                                         ; $528e: $1d

jr_025_528f:
    ld b, l                                       ; $528f: $45
    ld l, h                                       ; $5290: $6c
    sub h                                         ; $5291: $94
    db $fc                                        ; $5292: $fc
    sbc d                                         ; $5293: $9a
    inc [hl]                                      ; $5294: $34
    dec [hl]                                      ; $5295: $35
    ld sp, hl                                     ; $5296: $f9
    reti                                          ; $5297: $d9


    sub a                                         ; $5298: $97
    inc [hl]                                      ; $5299: $34
    add $66                                       ; $529a: $c6 $66
    push hl                                       ; $529c: $e5
    push hl                                       ; $529d: $e5
    ld de, $9742                                  ; $529e: $11 $42 $97
    sub $9a                                       ; $52a1: $d6 $9a
    ld bc, $e2af                                  ; $52a3: $01 $af $e2
    ret nc                                        ; $52a6: $d0

    dec b                                         ; $52a7: $05
    inc bc                                        ; $52a8: $03
    cp l                                          ; $52a9: $bd
    jp nc, $fecc                                  ; $52aa: $d2 $cc $fe

    adc a                                         ; $52ad: $8f
    di                                            ; $52ae: $f3
    and d                                         ; $52af: $a2
    cp [hl]                                       ; $52b0: $be
    db $eb                                        ; $52b1: $eb
    dec [hl]                                      ; $52b2: $35
    sbc b                                         ; $52b3: $98
    adc $7e                                       ; $52b4: $ce $7e
    push af                                       ; $52b6: $f5
    ld a, [c]                                     ; $52b7: $f2
    or d                                          ; $52b8: $b2
    ld c, e                                       ; $52b9: $4b
    ld l, e                                       ; $52ba: $6b
    jp nc, $2ac8                                  ; $52bb: $d2 $c8 $2a

    db $ed                                        ; $52be: $ed
    call z, $4573                                 ; $52bf: $cc $73 $45
    xor l                                         ; $52c2: $ad
    cp a                                          ; $52c3: $bf
    or $3f                                        ; $52c4: $f6 $3f
    dec c                                         ; $52c6: $0d
    ld d, d                                       ; $52c7: $52
    db $fc                                        ; $52c8: $fc
    reti                                          ; $52c9: $d9


jr_025_52ca:
    ld l, $79                                     ; $52ca: $2e $79
    xor $78                                       ; $52cc: $ee $78
    ld l, c                                       ; $52ce: $69
    ld l, h                                       ; $52cf: $6c
    ei                                            ; $52d0: $fb
    ld [de], a                                    ; $52d1: $12
    ld c, e                                       ; $52d2: $4b
    ld b, c                                       ; $52d3: $41
    db $eb                                        ; $52d4: $eb
    sub l                                         ; $52d5: $95
    ld h, [hl]                                    ; $52d6: $66
    push hl                                       ; $52d7: $e5
    ld d, l                                       ; $52d8: $55
    and [hl]                                      ; $52d9: $a6
    inc de                                        ; $52da: $13
    inc de                                        ; $52db: $13
    and [hl]                                      ; $52dc: $a6
    call z, $fa8b                                 ; $52dd: $cc $8b $fa
    ld [hl], h                                    ; $52e0: $74
    db $f4                                        ; $52e1: $f4
    db $fc                                        ; $52e2: $fc
    ld a, [hl+]                                   ; $52e3: $2a
    dec d                                         ; $52e4: $15
    or [hl]                                       ; $52e5: $b6
    ld a, [hl+]                                   ; $52e6: $2a
    jp $25f6                                      ; $52e7: $c3 $f6 $25


    push af                                       ; $52ea: $f5
    sbc e                                         ; $52eb: $9b
    or h                                          ; $52ec: $b4
    dec bc                                        ; $52ed: $0b
    ld d, e                                       ; $52ee: $53
    xor e                                         ; $52ef: $ab
    sbc $a8                                       ; $52f0: $de $a8
    db $ed                                        ; $52f2: $ed
    ld hl, sp-$45                                 ; $52f3: $f8 $bb
    inc [hl]                                      ; $52f5: $34
    cpl                                           ; $52f6: $2f
    cp a                                          ; $52f7: $bf
    sbc [hl]                                      ; $52f8: $9e
    sub a                                         ; $52f9: $97
    and e                                         ; $52fa: $a3
    ld a, [bc]                                    ; $52fb: $0a
    ld e, e                                       ; $52fc: $5b
    scf                                           ; $52fd: $37
    dec d                                         ; $52fe: $15
    or [hl]                                       ; $52ff: $b6
    ld l, [hl]                                    ; $5300: $6e
    add hl, de                                    ; $5301: $19
    db $e3                                        ; $5302: $e3
    ld d, a                                       ; $5303: $57
    sbc [hl]                                      ; $5304: $9e
    ld [bc], a                                    ; $5305: $02
    or l                                          ; $5306: $b5
    ld [hl], l                                    ; $5307: $75
    adc e                                         ; $5308: $8b
    and [hl]                                      ; $5309: $a6
    adc l                                         ; $530a: $8d
    jr nc, jr_025_52ca                            ; $530b: $30 $bd

    jp nc, $a8ac                                  ; $530d: $d2 $ac $a8

    push af                                       ; $5310: $f5
    ld d, a                                       ; $5311: $57
    ld h, l                                       ; $5312: $65
    adc h                                         ; $5313: $8c
    ld e, a                                       ; $5314: $5f
    ld sp, hl                                     ; $5315: $f9
    or e                                          ; $5316: $b3
    ld a, c                                       ; $5317: $79
    ld sp, hl                                     ; $5318: $f9
    ld e, l                                       ; $5319: $5d
    ld a, [bc]                                    ; $531a: $0a
    db $e4                                        ; $531b: $e4
    reti                                          ; $531c: $d9


    ld a, l                                       ; $531d: $7d
    ld [hl], d                                    ; $531e: $72
    sbc b                                         ; $531f: $98
    db $fc                                        ; $5320: $fc
    ld sp, hl                                     ; $5321: $f9
    and $c1                                       ; $5322: $e6 $c1
    sbc a                                         ; $5324: $9f
    xor l                                         ; $5325: $ad
    db $dd                                        ; $5326: $dd
    xor h                                         ; $5327: $ac
    add l                                         ; $5328: $85
    or h                                          ; $5329: $b4
    di                                            ; $532a: $f3
    ld e, l                                       ; $532b: $5d
    sub $92                                       ; $532c: $d6 $92
    pop hl                                        ; $532e: $e1
    daa                                           ; $532f: $27
    db $fd                                        ; $5330: $fd
    db $fc                                        ; $5331: $fc
    ld h, e                                       ; $5332: $63
    add h                                         ; $5333: $84
    dec [hl]                                      ; $5334: $35
    ld l, c                                       ; $5335: $69
    and $e5                                       ; $5336: $e6 $e5
    push hl                                       ; $5338: $e5
    ld l, e                                       ; $5339: $6b
    jr nc, jr_025_5359                            ; $533a: $30 $1d

    dec a                                         ; $533c: $3d
    cp a                                          ; $533d: $bf
    ld c, d                                       ; $533e: $4a
    add l                                         ; $533f: $85
    xor l                                         ; $5340: $ad
    jp z, Jump_025_7db0                           ; $5341: $ca $b0 $7d

    ld c, c                                       ; $5344: $49
    db $fd                                        ; $5345: $fd
    ld h, $4d                                     ; $5346: $26 $4d
    xor l                                         ; $5348: $ad
    ld a, d                                       ; $5349: $7a
    and e                                         ; $534a: $a3
    or [hl]                                       ; $534b: $b6
    db $e3                                        ; $534c: $e3
    rst $28                                       ; $534d: $ef
    jp nc, $fcbc                                  ; $534e: $d2 $bc $fc

    ld a, d                                       ; $5351: $7a
    ld e, [hl]                                    ; $5352: $5e
    adc [hl]                                      ; $5353: $8e
    ld a, [hl+]                                   ; $5354: $2a
    ld l, h                                       ; $5355: $6c
    db $dd                                        ; $5356: $dd
    ld d, h                                       ; $5357: $54
    ret c                                         ; $5358: $d8

jr_025_5359:
    cp d                                          ; $5359: $ba
    ld h, l                                       ; $535a: $65
    adc h                                         ; $535b: $8c
    ld e, a                                       ; $535c: $5f
    ld a, c                                       ; $535d: $79
    ld a, [bc]                                    ; $535e: $0a
    call nc, Call_000_2dd6                        ; $535f: $d4 $d6 $2d
    sbc d                                         ; $5362: $9a
    ld [hl], $c2                                  ; $5363: $36 $c2
    cp l                                          ; $5365: $bd
    jp nc, $a8ac                                  ; $5366: $d2 $ac $a8

    push af                                       ; $5369: $f5
    rlca                                          ; $536a: $07
    ld l, d                                       ; $536b: $6a
    ld a, l                                       ; $536c: $7d
    or [hl]                                       ; $536d: $b6
    sub $0c                                       ; $536e: $d6 $0c
    ld a, b                                       ; $5370: $78
    dec d                                         ; $5371: $15
    add a                                         ; $5372: $87
    reti                                          ; $5373: $d9


    sub d                                         ; $5374: $92
    pop hl                                        ; $5375: $e1
    cp h                                          ; $5376: $bc
    db $fc                                        ; $5377: $fc
    cp h                                          ; $5378: $bc
    ret z                                         ; $5379: $c8

    xor e                                         ; $537a: $ab
    cpl                                           ; $537b: $2f
    db $ed                                        ; $537c: $ed
    jp hl                                         ; $537d: $e9


    db $ec                                        ; $537e: $ec
    xor b                                         ; $537f: $a8
    pop hl                                        ; $5380: $e1
    and l                                         ; $5381: $a5
    ld h, b                                       ; $5382: $60
    dec e                                         ; $5383: $1d
    inc hl                                        ; $5384: $23
    sbc l                                         ; $5385: $9d
    ld hl, sp+$13                                 ; $5386: $f8 $13
    ld l, l                                       ; $5388: $6d
    or a                                          ; $5389: $b7
    xor a                                         ; $538a: $af
    ld [hl], a                                    ; $538b: $77
    ld e, c                                       ; $538c: $59
    adc a                                         ; $538d: $8f
    ld a, [c]                                     ; $538e: $f2
    inc de                                        ; $538f: $13
    inc de                                        ; $5390: $13
    and [hl]                                      ; $5391: $a6
    inc l                                         ; $5392: $2c
    db $ed                                        ; $5393: $ed
    jp hl                                         ; $5394: $e9


    add sp, -$07                                  ; $5395: $e8 $f9
    ld d, l                                       ; $5397: $55
    ld a, [hl+]                                   ; $5398: $2a
    ld l, h                                       ; $5399: $6c
    ld d, l                                       ; $539a: $55
    add [hl]                                      ; $539b: $86
    db $ed                                        ; $539c: $ed
    ld c, e                                       ; $539d: $4b
    ld [$6937], a                                 ; $539e: $ea $37 $69
    sub a                                         ; $53a1: $97
    and $e5                                       ; $53a2: $e6 $e5
    rst $10                                       ; $53a4: $d7
    di                                            ; $53a5: $f3
    ld [hl], d                                    ; $53a6: $72
    ld d, h                                       ; $53a7: $54
    ld h, c                                       ; $53a8: $61
    db $eb                                        ; $53a9: $eb
    and [hl]                                      ; $53aa: $a6
    jp nz, Jump_000_2dd6                          ; $53ab: $c2 $d6 $2d

    ld h, e                                       ; $53ae: $63
    db $fc                                        ; $53af: $fc
    jp z, $a053                                   ; $53b0: $ca $53 $a0

    or [hl]                                       ; $53b3: $b6
    ld l, [hl]                                    ; $53b4: $6e
    pop de                                        ; $53b5: $d1
    or h                                          ; $53b6: $b4
    rlca                                          ; $53b7: $07
    db $fc                                        ; $53b8: $fc
    ld a, a                                       ; $53b9: $7f
    rlca                                          ; $53ba: $07
    and $45                                       ; $53bb: $e6 $45
    jp nc, Jump_025_6504                          ; $53bd: $d2 $04 $65

    ld e, [hl]                                    ; $53c0: $5e
    ld a, [hl]                                    ; $53c1: $7e
    ld d, b                                       ; $53c2: $50
    sub l                                         ; $53c3: $95
    call z, Call_025_78b8                         ; $53c4: $cc $b8 $78
    db $eb                                        ; $53c7: $eb
    ccf                                           ; $53c8: $3f
    cp $46                                        ; $53c9: $fe $46
    ld h, [hl]                                    ; $53cb: $66
    ld e, a                                       ; $53cc: $5f
    ld a, c                                       ; $53cd: $79
    add h                                         ; $53ce: $84
    ld bc, $d2bd                                  ; $53cf: $01 $bd $d2
    adc h                                         ; $53d2: $8c
    ld a, a                                       ; $53d3: $7f
    sub l                                         ; $53d4: $95
    ld a, c                                       ; $53d5: $79
    ld sp, hl                                     ; $53d6: $f9
    ld b, l                                       ; $53d7: $45
    dec [hl]                                      ; $53d8: $35
    ld a, [c]                                     ; $53d9: $f2
    ld [hl], c                                    ; $53da: $71
    ld l, c                                       ; $53db: $69
    rst $08                                       ; $53dc: $cf
    ld a, d                                       ; $53dd: $7a
    dec hl                                        ; $53de: $2b
    ld c, a                                       ; $53df: $4f
    ld l, c                                       ; $53e0: $69
    ld h, [hl]                                    ; $53e1: $66
    ld c, e                                       ; $53e2: $4b
    add [hl]                                      ; $53e3: $86
    xor e                                         ; $53e4: $ab
    ld [hl-], a                                   ; $53e5: $32
    db $ec                                        ; $53e6: $ec
    call nz, Call_025_4bf7                        ; $53e7: $c4 $f7 $4b
    pop bc                                        ; $53ea: $c1
    ld e, d                                       ; $53eb: $5a
    ld e, a                                       ; $53ec: $5f
    jp c, $3319                                   ; $53ed: $da $19 $33

    ld l, b                                       ; $53f0: $68
    ld d, [hl]                                    ; $53f1: $56
    ld b, l                                       ; $53f2: $45
    dec b                                         ; $53f3: $05
    sbc b                                         ; $53f4: $98
    ld [de], a                                    ; $53f5: $12
    ld e, e                                       ; $53f6: $5b
    ldh a, [$ee]                                  ; $53f7: $f0 $ee
    sub a                                         ; $53f9: $97
    add d                                         ; $53fa: $82
    ld a, c                                       ; $53fb: $79
    ld sp, hl                                     ; $53fc: $f9
    ld [hl], l                                    ; $53fd: $75
    jp nc, $d26f                                  ; $53fe: $d2 $6f $d2

    db $e4                                        ; $5401: $e4
    xor e                                         ; $5402: $ab
    db $db                                        ; $5403: $db
    ld a, c                                       ; $5404: $79
    add sp, -$4e                                  ; $5405: $e8 $b2
    and e                                         ; $5407: $a3
    adc b                                         ; $5408: $88
    call $cbcb                                    ; $5409: $cd $cb $cb
    rst $10                                       ; $540c: $d7
    ld h, b                                       ; $540d: $60
    ld a, [hl-]                                   ; $540e: $3a
    ld a, d                                       ; $540f: $7a
    ld a, [hl]                                    ; $5410: $7e
    sub l                                         ; $5411: $95
    ld a, [bc]                                    ; $5412: $0a
    ld e, e                                       ; $5413: $5b
    sub l                                         ; $5414: $95
    ld h, c                                       ; $5415: $61
    dec sp                                        ; $5416: $3b
    and a                                         ; $5417: $a7
    ld d, [hl]                                    ; $5418: $56
    cp l                                          ; $5419: $bd
    ld d, c                                       ; $541a: $51
    db $db                                        ; $541b: $db
    pop af                                        ; $541c: $f1
    ld [hl], a                                    ; $541d: $77
    ld l, c                                       ; $541e: $69
    ld e, [hl]                                    ; $541f: $5e
    ld a, [hl]                                    ; $5420: $7e
    dec a                                         ; $5421: $3d
    cpl                                           ; $5422: $2f
    ld b, a                                       ; $5423: $47
    dec d                                         ; $5424: $15
    or [hl]                                       ; $5425: $b6
    ld l, [hl]                                    ; $5426: $6e
    ld a, [hl+]                                   ; $5427: $2a
    ld l, h                                       ; $5428: $6c
    db $dd                                        ; $5429: $dd
    ld [hl-], a                                   ; $542a: $32
    add $af                                       ; $542b: $c6 $af
    inc a                                         ; $542d: $3c
    dec b                                         ; $542e: $05
    ld l, d                                       ; $542f: $6a
    db $eb                                        ; $5430: $eb
    ld d, $4d                                     ; $5431: $16 $4d
    dec de                                        ; $5433: $1b
    ld h, c                                       ; $5434: $61
    cp l                                          ; $5435: $bd
    jp nc, $a8ac                                  ; $5436: $d2 $ac $a8

    push af                                       ; $5439: $f5
    rst $20                                       ; $543a: $e7
    add l                                         ; $543b: $85
    ld d, a                                       ; $543c: $57
    pop af                                        ; $543d: $f1
    ld h, a                                       ; $543e: $67
    db $eb                                        ; $543f: $eb
    cp $6f                                        ; $5440: $fe $6f
    ld a, l                                       ; $5442: $7d
    sbc b                                         ; $5443: $98
    ld [de], a                                    ; $5444: $12
    sbc e                                         ; $5445: $9b
    sbc l                                         ; $5446: $9d
    add [hl]                                      ; $5447: $86
    ret c                                         ; $5448: $d8

    cp h                                          ; $5449: $bc
    db $fc                                        ; $544a: $fc
    jp c, $f599                                   ; $544b: $da $99 $f5

    add c                                         ; $544e: $81
    ld h, a                                       ; $544f: $67
    ld a, h                                       ; $5450: $7c
    sbc d                                         ; $5451: $9a
    dec l                                         ; $5452: $2d
    add hl, de                                    ; $5453: $19
    adc $cb                                       ; $5454: $ce $cb
    cpl                                           ; $5456: $2f
    sbc $b6                                       ; $5457: $de $b6
    xor b                                         ; $5459: $a8
    inc [hl]                                      ; $545a: $34
    ld e, l                                       ; $545b: $5d
    sub $a3                                       ; $545c: $d6 $a3
    db $fc                                        ; $545e: $fc
    add sp, $79                                   ; $545f: $e8 $79
    ld e, b                                       ; $5461: $58
    jp c, $e7a3                                   ; $5462: $da $a3 $e7

    ld d, a                                       ; $5465: $57
    xor c                                         ; $5466: $a9
    or b                                          ; $5467: $b0
    ld d, l                                       ; $5468: $55
    add hl, de                                    ; $5469: $19
    or [hl]                                       ; $546a: $b6
    cpl                                           ; $546b: $2f
    xor c                                         ; $546c: $a9
    rst $18                                       ; $546d: $df
    and h                                         ; $546e: $a4
    ld e, l                                       ; $546f: $5d
    sbc d                                         ; $5470: $9a
    sub a                                         ; $5471: $97
    ld e, a                                       ; $5472: $5f
    rst $08                                       ; $5473: $cf
    bit 2, c                                      ; $5474: $cb $51
    add l                                         ; $5476: $85
    xor l                                         ; $5477: $ad
    sbc e                                         ; $5478: $9b
    ld a, [bc]                                    ; $5479: $0a
    ld e, e                                       ; $547a: $5b
    or a                                          ; $547b: $b7
    adc h                                         ; $547c: $8c
    pop af                                        ; $547d: $f1
    dec hl                                        ; $547e: $2b
    ld c, a                                       ; $547f: $4f
    add c                                         ; $5480: $81
    jp c, $45ba                                   ; $5481: $da $ba $45

    db $d3                                        ; $5484: $d3
    ld e, [hl]                                    ; $5485: $5e
    xor b                                         ; $5486: $a8
    push af                                       ; $5487: $f5
    add a                                         ; $5488: $87
    reti                                          ; $5489: $d9


    add hl, hl                                    ; $548a: $29
    cp e                                          ; $548b: $bb
    db $e4                                        ; $548c: $e4
    cpl                                           ; $548d: $2f
    rrca                                          ; $548e: $0f
    ld a, [hl]                                    ; $548f: $7e
    add hl, hl                                    ; $5490: $29
    sbc b                                         ; $5491: $98
    cp h                                          ; $5492: $bc
    or d                                          ; $5493: $b2
    ld c, e                                       ; $5494: $4b
    ld bc, $bdc2                                  ; $5495: $01 $c2 $bd
    jp nc, $e54c                                  ; $5498: $d2 $4c $e5

    and a                                         ; $549b: $a7
    cp h                                          ; $549c: $bc
    sub $9f                                       ; $549d: $d6 $9f
    sbc [hl]                                      ; $549f: $9e
    call $f473                                    ; $54a0: $cd $73 $f4
    db $fc                                        ; $54a3: $fc
    ld a, [hl-]                                   ; $54a4: $3a
    add hl, bc                                    ; $54a5: $09
    ld [hl], b                                    ; $54a6: $70
    db $db                                        ; $54a7: $db
    scf                                           ; $54a8: $37
    ld e, [hl]                                    ; $54a9: $5e
    cp a                                          ; $54aa: $bf
    rrca                                          ; $54ab: $0f
    ld d, e                                       ; $54ac: $53
    db $db                                        ; $54ad: $db
    ld e, a                                       ; $54ae: $5f
    ld d, [hl]                                    ; $54af: $56
    ld h, l                                       ; $54b0: $65
    ret c                                         ; $54b1: $d8

    adc c                                         ; $54b2: $89
    rst $28                                       ; $54b3: $ef
    sub a                                         ; $54b4: $97
    add d                                         ; $54b5: $82
    ld a, c                                       ; $54b6: $79
    ld sp, hl                                     ; $54b7: $f9
    sbc l                                         ; $54b8: $9d
    ld l, a                                       ; $54b9: $6f
    ld e, $7c                                     ; $54ba: $1e $7c
    db $dd                                        ; $54bc: $dd
    dec h                                         ; $54bd: $25
    db $ed                                        ; $54be: $ed
    rlca                                          ; $54bf: $07
    ld c, b                                       ; $54c0: $48
    reti                                          ; $54c1: $d9


    pop de                                        ; $54c2: $d1
    sub a                                         ; $54c3: $97
    ld [$a816], sp                                ; $54c4: $08 $16 $a8
    push af                                       ; $54c7: $f5
    rst $10                                       ; $54c8: $d7
    and h                                         ; $54c9: $a4
    jp hl                                         ; $54ca: $e9


    ld [hl-], a                                   ; $54cb: $32
    dec bc                                        ; $54cc: $0b
    call $8fcb                                    ; $54cd: $cd $cb $8f
    rst $10                                       ; $54d0: $d7
    ld a, [$ed2f]                                 ; $54d1: $fa $2f $ed
    dec [hl]                                      ; $54d4: $35
    ld l, c                                       ; $54d5: $69
    ld h, h                                       ; $54d6: $64
    ld h, b                                       ; $54d7: $60
    xor d                                         ; $54d8: $aa
    ld [$b801], a                                 ; $54d9: $ea $01 $b8
    db $d3                                        ; $54dc: $d3
    pop de                                        ; $54dd: $d1
    di                                            ; $54de: $f3
    xor e                                         ; $54df: $ab
    ld d, h                                       ; $54e0: $54
    ret c                                         ; $54e1: $d8

    xor d                                         ; $54e2: $aa
    inc c                                         ; $54e3: $0c
    db $db                                        ; $54e4: $db
    sub a                                         ; $54e5: $97
    call nc, $d26f                                ; $54e6: $d4 $6f $d2
    ld l, $4c                                     ; $54e9: $2e $4c
    xor l                                         ; $54eb: $ad
    ld a, d                                       ; $54ec: $7a
    and e                                         ; $54ed: $a3
    or [hl]                                       ; $54ee: $b6
    db $e3                                        ; $54ef: $e3
    rst $28                                       ; $54f0: $ef
    jp nc, $fcbc                                  ; $54f1: $d2 $bc $fc

    ld a, d                                       ; $54f4: $7a
    ld e, [hl]                                    ; $54f5: $5e
    adc [hl]                                      ; $54f6: $8e
    ld a, [hl+]                                   ; $54f7: $2a
    ld l, h                                       ; $54f8: $6c
    db $dd                                        ; $54f9: $dd

Call_025_54fa:
    ld d, h                                       ; $54fa: $54
    ret c                                         ; $54fb: $d8

    cp d                                          ; $54fc: $ba
    ld h, l                                       ; $54fd: $65
    adc h                                         ; $54fe: $8c
    ld e, a                                       ; $54ff: $5f
    ld a, c                                       ; $5500: $79
    ld a, [bc]                                    ; $5501: $0a
    call nc, Call_000_2dd6                        ; $5502: $d4 $d6 $2d
    sbc d                                         ; $5505: $9a
    ld [hl], $c2                                  ; $5506: $36 $c2
    cp l                                          ; $5508: $bd
    jp nc, $a8ac                                  ; $5509: $d2 $ac $a8

    push af                                       ; $550c: $f5
    daa                                           ; $550d: $27
    rst $28                                       ; $550e: $ef
    ld [hl], d                                    ; $550f: $72
    rst $18                                       ; $5510: $df
    ld a, [$a76c]                                 ; $5511: $fa $6c $a7
    cp h                                          ; $5514: $bc
    push af                                       ; $5515: $f5
    add $f8                                       ; $5516: $c6 $f8
    dec [hl]                                      ; $5518: $35
    ret c                                         ; $5519: $d8

    jp hl                                         ; $551a: $e9


    rra                                           ; $551b: $1f
    ld a, [hl]                                    ; $551c: $7e
    ret c                                         ; $551d: $d8

    ld d, $8d                                     ; $551e: $16 $8d
    or c                                          ; $5520: $b1
    bit 1, [hl]                                   ; $5521: $cb $4e
    ld a, c                                       ; $5523: $79
    ld e, $96                                     ; $5524: $1e $96
    or $74                                        ; $5526: $f6 $74
    db $f4                                        ; $5528: $f4
    db $fc                                        ; $5529: $fc
    ld a, [hl+]                                   ; $552a: $2a
    dec d                                         ; $552b: $15
    or [hl]                                       ; $552c: $b6
    ld a, [hl+]                                   ; $552d: $2a
    jp $25f6                                      ; $552e: $c3 $f6 $25


    push af                                       ; $5531: $f5
    sbc e                                         ; $5532: $9b
    or h                                          ; $5533: $b4
    ld c, e                                       ; $5534: $4b
    di                                            ; $5535: $f3
    ld a, [c]                                     ; $5536: $f2
    db $eb                                        ; $5537: $eb
    ld a, c                                       ; $5538: $79
    add hl, sp                                    ; $5539: $39
    xor d                                         ; $553a: $aa
    or b                                          ; $553b: $b0

jr_025_553c:
    ld [hl], l                                    ; $553c: $75
    ld d, e                                       ; $553d: $53
    ld h, c                                       ; $553e: $61
    db $eb                                        ; $553f: $eb
    sub [hl]                                      ; $5540: $96
    ld sp, $e57e                                  ; $5541: $31 $7e $e5
    add hl, hl                                    ; $5544: $29
    ld d, b                                       ; $5545: $50
    ld e, e                                       ; $5546: $5b
    or a                                          ; $5547: $b7
    ld l, b                                       ; $5548: $68
    jp c, $30bb                                   ; $5549: $da $bb $30

    dec sp                                        ; $554c: $3b
    ld [hl], $97                                  ; $554d: $36 $97
    add d                                         ; $554f: $82
    reti                                          ; $5550: $d9


    sub d                                         ; $5551: $92
    pop hl                                        ; $5552: $e1
    ret nz                                        ; $5553: $c0

    dec c                                         ; $5554: $0d
    ld a, e                                       ; $5555: $7b
    ld a, [c]                                     ; $5556: $f2
    ld a, c                                       ; $5557: $79
    ld c, $dc                                     ; $5558: $0e $dc
    or b                                          ; $555a: $b0
    daa                                           ; $555b: $27
    ld b, a                                       ; $555c: $47
    jr jr_025_553c                                ; $555d: $18 $dd

    ld [hl-], a                                   ; $555f: $32
    db $ec                                        ; $5560: $ec
    call nz, Call_025_4bf7                        ; $5561: $c4 $f7 $4b
    pop bc                                        ; $5564: $c1
    cp h                                          ; $5565: $bc
    db $fc                                        ; $5566: $fc
    cp d                                          ; $5567: $ba
    dec d                                         ; $5568: $15
    sub l                                         ; $5569: $95
    db $10                                        ; $556a: $10
    ld d, $1f                                     ; $556b: $16 $1f
    jr nz, jr_025_55d8                            ; $556d: $20 $69

    rla                                           ; $556f: $17
    and [hl]                                      ; $5570: $a6
    adc h                                         ; $5571: $8c
    dec a                                         ; $5572: $3d
    sbc e                                         ; $5573: $9b
    rst $20                                       ; $5574: $e7
    sbc d                                         ; $5575: $9a
    inc [hl]                                      ; $5576: $34
    or d                                          ; $5577: $b2
    ld a, b                                       ; $5578: $78
    pop bc                                        ; $5579: $c1
    sub a                                         ; $557a: $97
    or $b4                                        ; $557b: $f6 $b4
    ld d, d                                       ; $557d: $52
    or $e1                                        ; $557e: $f6 $e1
    xor l                                         ; $5580: $ad
    and [hl]                                      ; $5581: $a6
    ld d, l                                       ; $5582: $55
    cp c                                          ; $5583: $b9
    ld l, a                                       ; $5584: $6f
    db $fd                                        ; $5585: $fd
    ldh a, [$c9]                                  ; $5586: $f0 $c9
    ld bc, $47ad                                  ; $5588: $01 $ad $47
    ld sp, hl                                     ; $558b: $f9
    ld b, c                                       ; $558c: $41
    ld d, l                                       ; $558d: $55
    ld [hl-], a                                   ; $558e: $32
    db $e3                                        ; $558f: $e3
    ld l, $ac                                     ; $5590: $2e $ac
    ld l, l                                       ; $5592: $6d
    jr c, jr_025_5607                             ; $5593: $38 $72

    cp h                                          ; $5595: $bc
    inc d                                         ; $5596: $14
    adc h                                         ; $5597: $8c
    cp a                                          ; $5598: $bf
    ld e, [hl]                                    ; $5599: $5e
    and $e5                                       ; $559a: $e6 $e5
    ld b, a                                       ; $559c: $47
    rst $08                                       ; $559d: $cf
    jp $9ed2                                      ; $559e: $c3 $d2 $9e


    adc [hl]                                      ; $55a1: $8e
    sbc [hl]                                      ; $55a2: $9e
    ld e, a                                       ; $55a3: $5f
    and l                                         ; $55a4: $a5
    jp nz, Jump_025_6556                          ; $55a5: $c2 $56 $65

    ret c                                         ; $55a8: $d8

    cp [hl]                                       ; $55a9: $be
    and h                                         ; $55aa: $a4
    ld a, [hl]                                    ; $55ab: $7e
    sub e                                         ; $55ac: $93
    and [hl]                                      ; $55ad: $a6
    ld d, [hl]                                    ; $55ae: $56
    cp l                                          ; $55af: $bd
    ld d, c                                       ; $55b0: $51
    db $db                                        ; $55b1: $db
    pop af                                        ; $55b2: $f1
    ld [hl], a                                    ; $55b3: $77
    ld l, c                                       ; $55b4: $69
    ld e, [hl]                                    ; $55b5: $5e
    ld a, [hl]                                    ; $55b6: $7e
    dec a                                         ; $55b7: $3d
    cpl                                           ; $55b8: $2f
    ld b, a                                       ; $55b9: $47
    dec d                                         ; $55ba: $15
    or [hl]                                       ; $55bb: $b6
    ld l, [hl]                                    ; $55bc: $6e
    ld a, [hl+]                                   ; $55bd: $2a
    ld l, h                                       ; $55be: $6c
    db $dd                                        ; $55bf: $dd
    ld [hl-], a                                   ; $55c0: $32
    add $af                                       ; $55c1: $c6 $af
    inc a                                         ; $55c3: $3c
    dec b                                         ; $55c4: $05
    ld l, d                                       ; $55c5: $6a
    db $eb                                        ; $55c6: $eb
    ld d, $4d                                     ; $55c7: $16 $4d
    dec de                                        ; $55c9: $1b
    ld h, c                                       ; $55ca: $61
    db $dd                                        ; $55cb: $dd
    sub d                                         ; $55cc: $92
    ld [bc], a                                    ; $55cd: $02
    ld d, c                                       ; $55ce: $51
    scf                                           ; $55cf: $37
    ld d, c                                       ; $55d0: $51
    db $fd                                        ; $55d1: $fd
    ld h, $01                                     ; $55d2: $26 $01
    ld [hl], a                                    ; $55d4: $77
    ld c, l                                       ; $55d5: $4d
    sbc d                                         ; $55d6: $9a
    dec d                                         ; $55d7: $15

jr_025_55d8:
    or l                                          ; $55d8: $b5
    cp $f8                                        ; $55d9: $fe $f8
    and h                                         ; $55db: $a4
    ld a, c                                       ; $55dc: $79
    ld sp, hl                                     ; $55dd: $f9
    sbc l                                         ; $55de: $9d
    jp z, Jump_025_75c7                           ; $55df: $ca $c7 $75

    dec hl                                        ; $55e2: $2b
    ld a, [bc]                                    ; $55e3: $0a
    rst $18                                       ; $55e4: $df
    ld h, l                                       ; $55e5: $65
    dec a                                         ; $55e6: $3d
    jp z, $9e8f                                   ; $55e7: $ca $8f $9e

    add a                                         ; $55ea: $87
    and l                                         ; $55eb: $a5

jr_025_55ec:
    dec a                                         ; $55ec: $3d
    ld a, d                                       ; $55ed: $7a
    ld a, [hl]                                    ; $55ee: $7e
    sub l                                         ; $55ef: $95
    ld a, [bc]                                    ; $55f0: $0a
    ld e, e                                       ; $55f1: $5b
    sub l                                         ; $55f2: $95
    ld h, c                                       ; $55f3: $61
    ei                                            ; $55f4: $fb
    sub d                                         ; $55f5: $92
    ld a, [$9a4d]                                 ; $55f6: $fa $4d $9a
    ld e, d                                       ; $55f9: $5a
    push af                                       ; $55fa: $f5
    ld b, [hl]                                    ; $55fb: $46
    ld l, l                                       ; $55fc: $6d
    rst $00                                       ; $55fd: $c7
    rst $18                                       ; $55fe: $df
    and l                                         ; $55ff: $a5
    ld a, c                                       ; $5600: $79
    ld sp, hl                                     ; $5601: $f9
    push af                                       ; $5602: $f5
    cp h                                          ; $5603: $bc
    inc e                                         ; $5604: $1c
    ld d, l                                       ; $5605: $55
    ret c                                         ; $5606: $d8

jr_025_5607:
    cp d                                          ; $5607: $ba
    xor c                                         ; $5608: $a9
    or b                                          ; $5609: $b0
    ld [hl], l                                    ; $560a: $75
    rr b                                          ; $560b: $cb $18
    cp a                                          ; $560d: $bf
    ld a, [c]                                     ; $560e: $f2
    inc d                                         ; $560f: $14
    xor b                                         ; $5610: $a8
    xor l                                         ; $5611: $ad
    ld e, e                                       ; $5612: $5b
    inc [hl]                                      ; $5613: $34
    db $ed                                        ; $5614: $ed
    ret                                           ; $5615: $c9


    ld l, e                                       ; $5616: $6b
    adc h                                         ; $5617: $8c
    call Call_000_08dc                            ; $5618: $cd $dc $08
    pop bc                                        ; $561b: $c1
    sbc d                                         ; $561c: $9a
    inc [hl]                                      ; $561d: $34
    or d                                          ; $561e: $b2
    ld a, [c]                                     ; $561f: $f2
    jp z, $92a6                                   ; $5620: $ca $a6 $92

    add [hl]                                      ; $5623: $86
    jr @-$3c                                      ; $5624: $18 $c2

    cp l                                          ; $5626: $bd
    jp nc, $de4c                                  ; $5627: $d2 $4c $de

    adc [hl]                                      ; $562a: $8e
    ld e, a                                       ; $562b: $5f
    ld sp, hl                                     ; $562c: $f9
    sub d                                         ; $562d: $92
    ld h, $5f                                     ; $562e: $26 $5f
    dec a                                         ; $5630: $3d
    ld sp, hl                                     ; $5631: $f9
    sbc $fa                                       ; $5632: $de $fa
    db $e4                                        ; $5634: $e4
    jr nc, jr_025_55ec                            ; $5635: $30 $b5

    db $fd                                        ; $5637: $fd
    ld h, l                                       ; $5638: $65
    ld a, [c]                                     ; $5639: $f2
    ld l, [hl]                                    ; $563a: $6e

Jump_025_563b:
    add h                                         ; $563b: $84
    ld l, $05                                     ; $563c: $2e $05
    di                                            ; $563e: $f3
    call c, $d2f1                                 ; $563f: $dc $f1 $d2
    ret c                                         ; $5642: $d8

    or $25                                        ; $5643: $f6 $25
    sub [hl]                                      ; $5645: $96
    ld [hl-], a                                   ; $5646: $32
    ld e, e                                       ; $5647: $5b
    ld [hl-], a                                   ; $5648: $32
    inc e                                         ; $5649: $1c
    db $fc                                        ; $564a: $fc
    ld e, a                                       ; $564b: $5f
    ld a, [bc]                                    ; $564c: $0a
    and $e5                                       ; $564d: $e6 $e5
    ld [hl], a                                    ; $564f: $77
    ld a, [c]                                     ; $5650: $f2
    dec d                                         ; $5651: $15

Call_025_5652:
    ld c, c                                       ; $5652: $49
    ld e, c                                       ; $5653: $59
    jp c, Jump_025_563b                           ; $5654: $da $3b $56

    ld l, $3c                                     ; $5657: $2e $3c
    ld b, e                                       ; $5659: $43
    or e                                          ; $565a: $b3
    ret nz                                        ; $565b: $c0

    cp h                                          ; $565c: $bc
    cp h                                          ; $565d: $bc
    db $fc                                        ; $565e: $fc
    ld [hl], h                                    ; $565f: $74
    db $f4                                        ; $5660: $f4
    db $fc                                        ; $5661: $fc
    ld a, [hl+]                                   ; $5662: $2a
    dec d                                         ; $5663: $15
    or [hl]                                       ; $5664: $b6
    ld a, [hl+]                                   ; $5665: $2a
    jp $25f6                                      ; $5666: $c3 $f6 $25


    push af                                       ; $5669: $f5
    sbc e                                         ; $566a: $9b
    or h                                          ; $566b: $b4
    ld c, e                                       ; $566c: $4b
    di                                            ; $566d: $f3
    ld a, [c]                                     ; $566e: $f2
    db $eb                                        ; $566f: $eb
    ld a, c                                       ; $5670: $79
    add hl, sp                                    ; $5671: $39
    xor d                                         ; $5672: $aa
    or b                                          ; $5673: $b0
    ld [hl], l                                    ; $5674: $75
    ld d, e                                       ; $5675: $53
    ld h, c                                       ; $5676: $61
    db $eb                                        ; $5677: $eb
    sub [hl]                                      ; $5678: $96
    ld sp, $e57e                                  ; $5679: $31 $7e $e5
    add hl, hl                                    ; $567c: $29
    ld d, b                                       ; $567d: $50
    ld e, e                                       ; $567e: $5b
    or a                                          ; $567f: $b7
    ld l, b                                       ; $5680: $68
    jp c, $a5dc                                   ; $5681: $da $dc $a5

    adc h                                         ; $5684: $8c
    ld e, l                                       ; $5685: $5d
    or [hl]                                       ; $5686: $b6
    ld h, $cd                                     ; $5687: $26 $cd
    sbc b                                         ; $5689: $98
    cp h                                          ; $568a: $bc
    add [hl]                                      ; $568b: $86
    cp e                                          ; $568c: $bb
    sbc $15                                       ; $568d: $de $15
    inc bc                                        ; $568f: $03
    cp l                                          ; $5690: $bd
    jp nc, $a8ac                                  ; $5691: $d2 $ac $a8

    push af                                       ; $5694: $f5
    daa                                           ; $5695: $27
    rst $28                                       ; $5696: $ef
    ld b, [hl]                                    ; $5697: $46
    add sp, -$27                                  ; $5698: $e8 $d9
    inc a                                         ; $569a: $3c
    ld [hl], a                                    ; $569b: $77
    cp h                                          ; $569c: $bc

jr_025_569d:
    inc [hl]                                      ; $569d: $34
    or [hl]                                       ; $569e: $b6
    ld a, l                                       ; $569f: $7d
    adc c                                         ; $56a0: $89
    and l                                         ; $56a1: $a5
    call z, $0c96                                 ; $56a2: $cc $96 $0c
    rst $10                                       ; $56a5: $d7
    and h                                         ; $56a6: $a4
    sub c                                         ; $56a7: $91
    sbc l                                         ; $56a8: $9d
    ld a, h                                       ; $56a9: $7c
    add hl, de                                    ; $56aa: $19
    db $dd                                        ; $56ab: $dd
    and b                                         ; $56ac: $a0
    ld hl, sp-$72                                 ; $56ad: $f8 $8e
    ld sp, $a71f                                  ; $56af: $31 $1f $a7
    call z, $e4fa                                 ; $56b2: $cc $fa $e4
    ld b, [hl]                                    ; $56b5: $46
    ld e, $6d                                     ; $56b6: $1e $6d
    dec a                                         ; $56b8: $3d
    jp z, Jump_025_68af                           ; $56b9: $ca $af $68

    adc h                                         ; $56bc: $8c
    or b                                          ; $56bd: $b0
    or h                                          ; $56be: $b4
    rst $10                                       ; $56bf: $d7
    sbc d                                         ; $56c0: $9a
    ld bc, $e2af                                  ; $56c1: $01 $af $e2
    jr nc, @-$09                                  ; $56c4: $30 $f5

    pop de                                        ; $56c6: $d1
    dec c                                         ; $56c7: $0d
    adc d                                         ; $56c8: $8a
    adc a                                         ; $56c9: $8f
    dec h                                         ; $56ca: $25
    push de                                       ; $56cb: $d5
    ld a, h                                       ; $56cc: $7c
    ldh a, [$1f]                                  ; $56cd: $f0 $1f
    xor $7c                                       ; $56cf: $ee $7c
    ld [hl], e                                    ; $56d1: $73
    db $fd                                        ; $56d2: $fd
    rlca                                          ; $56d3: $07
    add hl, sp                                    ; $56d4: $39
    dec sp                                        ; $56d5: $3b
    and l                                         ; $56d6: $a5
    ld a, l                                       ; $56d7: $7d
    add hl, de                                    ; $56d8: $19
    cp e                                          ; $56d9: $bb
    inc d                                         ; $56da: $14
    adc h                                         ; $56db: $8c
    sub d                                         ; $56dc: $92
    ld b, a                                       ; $56dd: $47
    jr jr_025_569d                                ; $56de: $18 $bd

    jp nc, $a8ac                                  ; $56e0: $d2 $ac $a8

    push af                                       ; $56e3: $f5
    rst $00                                       ; $56e4: $c7
    sbc $7e                                       ; $56e5: $de $7e
    push af                                       ; $56e7: $f5
    ld h, a                                       ; $56e8: $67
    di                                            ; $56e9: $f3
    ld a, [c]                                     ; $56ea: $f2
    db $eb                                        ; $56eb: $eb
    ld hl, $e319                                  ; $56ec: $21 $19 $e3
    sub h                                         ; $56ef: $94
    ret c                                         ; $56f0: $d8

    ld b, b                                       ; $56f1: $40
    xor l                                         ; $56f2: $ad
    rst $08                                       ; $56f3: $cf
    sub $fa                                       ; $56f4: $d6 $fa
    ld [de], a                                    ; $56f6: $12
    sbc $a4                                       ; $56f7: $de $a4
    rst $28                                       ; $56f9: $ef
    or d                                          ; $56fa: $b2
    ld e, [hl]                                    ; $56fb: $5e
    ld l, c                                       ; $56fc: $69
    ld h, [hl]                                    ; $56fd: $66
    rst $38                                       ; $56fe: $ff
    rst $00                                       ; $56ff: $c7
    ld a, c                                       ; $5700: $79
    ld sp, hl                                     ; $5701: $f9
    pop de                                        ; $5702: $d1
    di                                            ; $5703: $f3
    xor e                                         ; $5704: $ab
    ld d, h                                       ; $5705: $54
    ret c                                         ; $5706: $d8

    xor d                                         ; $5707: $aa
    inc c                                         ; $5708: $0c
    db $db                                        ; $5709: $db
    sub a                                         ; $570a: $97
    call nc, $d26f                                ; $570b: $d4 $6f $d2
    call nc, Call_000_37aa                        ; $570e: $d4 $aa $37
    ld l, d                                       ; $5711: $6a
    dec sp                                        ; $5712: $3b
    cp $2e                                        ; $5713: $fe $2e
    call $afcb                                    ; $5715: $cd $cb $af
    rst $20                                       ; $5718: $e7
    push hl                                       ; $5719: $e5
    xor b                                         ; $571a: $a8
    jp nz, Jump_025_4dd6                          ; $571b: $c2 $d6 $4d

    add l                                         ; $571e: $85
    xor l                                         ; $571f: $ad
    ld e, e                                       ; $5720: $5b
    add $f8                                       ; $5721: $c6 $f8
    sub l                                         ; $5723: $95
    and a                                         ; $5724: $a7
    ld b, b                                       ; $5725: $40
    ld l, l                                       ; $5726: $6d
    db $dd                                        ; $5727: $dd
    and d                                         ; $5728: $a2
    ld l, c                                       ; $5729: $69
    rst $28                                       ; $572a: $ef
    jp nz, $e774                                  ; $572b: $c2 $74 $e7

    add hl, de                                    ; $572e: $19
    ldh a, [$c9]                                  ; $572f: $f0 $c9
    di                                            ; $5731: $f3
    ld a, [hl+]                                   ; $5732: $2a
    ld l, h                                       ; $5733: $6c
    halt                                          ; $5734: $76
    jp z, $349a                                   ; $5735: $ca $9a $34

    or d                                          ; $5738: $b2
    ld a, [c]                                     ; $5739: $f2
    sub d                                         ; $573a: $92
    rla                                           ; $573b: $17
    ld b, d                                       ; $573c: $42
    add h                                         ; $573d: $84
    ld bc, $d2bd                                  ; $573e: $01 $bd $d2
    xor h                                         ; $5741: $ac
    xor b                                         ; $5742: $a8
    push af                                       ; $5743: $f5
    daa                                           ; $5744: $27
    ld e, a                                       ; $5745: $5f
    and l                                         ; $5746: $a5
    push af                                       ; $5747: $f5
    push hl                                       ; $5748: $e5
    reti                                          ; $5749: $d9


    sbc d                                         ; $574a: $9a
    inc [hl]                                      ; $574b: $34
    or d                                          ; $574c: $b2
    ld l, [hl]                                    ; $574d: $6e
    ld b, l                                       ; $574e: $45
    ld l, $78                                     ; $574f: $2e $78
    xor b                                         ; $5751: $a8
    or b                                          ; $5752: $b0
    adc [hl]                                      ; $5753: $8e
    inc a                                         ; $5754: $3c
    inc a                                         ; $5755: $3c
    add hl, sp                                    ; $5756: $39
    ld [hl], h                                    ; $5757: $74
    sbc c                                         ; $5758: $99
    add l                                         ; $5759: $85
    ld d, [hl]                                    ; $575a: $56
    rst $38                                       ; $575b: $ff
    rst $28                                       ; $575c: $ef
    ld e, h                                       ; $575d: $5c
    ld a, [bc]                                    ; $575e: $0a
    add $5f                                       ; $575f: $c6 $5f
    cpl                                           ; $5761: $2f
    dec bc                                        ; $5762: $0b
    xor [hl]                                      ; $5763: $ae
    db $ed                                        ; $5764: $ed
    ld a, l                                       ; $5765: $7d
    rlca                                          ; $5766: $07
    rst $10                                       ; $5767: $d7
    ld a, d                                       ; $5768: $7a
    add hl, hl                                    ; $5769: $29
    jr jr_025_57e0                                ; $576a: $18 $74

    xor [hl]                                      ; $576c: $ae
    ld e, h                                       ; $576d: $5c
    rst $20                                       ; $576e: $e7
    adc $cb                                       ; $576f: $ce $cb
    xor a                                         ; $5771: $af
    rst $20                                       ; $5772: $e7
    push hl                                       ; $5773: $e5
    xor b                                         ; $5774: $a8
    jp nz, Jump_025_4dd6                          ; $5775: $c2 $d6 $4d

    add l                                         ; $5778: $85
    xor l                                         ; $5779: $ad
    ld e, e                                       ; $577a: $5b
    add $f8                                       ; $577b: $c6 $f8
    sub l                                         ; $577d: $95
    and a                                         ; $577e: $a7
    ld b, b                                       ; $577f: $40
    ld l, l                                       ; $5780: $6d
    db $dd                                        ; $5781: $dd
    and d                                         ; $5782: $a2
    ld l, c                                       ; $5783: $69
    xor a                                         ; $5784: $af
    jr z, @+$2e                                   ; $5785: $28 $2c

    ld d, h                                       ; $5787: $54
    or $d3                                        ; $5788: $f6 $d3
    pop de                                        ; $578a: $d1
    di                                            ; $578b: $f3
    xor e                                         ; $578c: $ab
    ld d, h                                       ; $578d: $54
    ret c                                         ; $578e: $d8

    xor d                                         ; $578f: $aa
    inc c                                         ; $5790: $0c
    db $db                                        ; $5791: $db
    sub a                                         ; $5792: $97
    call nc, $d26f                                ; $5793: $d4 $6f $d2
    call nc, Call_000_37aa                        ; $5796: $d4 $aa $37
    ld l, d                                       ; $5799: $6a
    dec sp                                        ; $579a: $3b
    ld a, $c2                                     ; $579b: $3e $c2
    cp l                                          ; $579d: $bd
    jp nc, $52ac                                  ; $579e: $d2 $ac $52

    inc de                                        ; $57a1: $13
    inc d                                         ; $57a2: $14
    ld e, a                                       ; $57a3: $5f
    ld d, l                                       ; $57a4: $55
    ld l, [hl]                                    ; $57a5: $6e
    ld d, l                                       ; $57a6: $55
    ld a, a                                       ; $57a7: $7f
    add d                                         ; $57a8: $82
    reti                                          ; $57a9: $d9


    add hl, hl                                    ; $57aa: $29
    ld l, e                                       ; $57ab: $6b
    push de                                       ; $57ac: $d5
    ld b, b                                       ; $57ad: $40
    ld l, $ab                                     ; $57ae: $2e $ab
    pop bc                                        ; $57b0: $c1
    and b                                         ; $57b1: $a0
    jp nc, $8cd8                                  ; $57b2: $d2 $d8 $8c

    sbc [hl]                                      ; $57b5: $9e
    sbc a                                         ; $57b6: $9f
    dec l                                         ; $57b7: $2d
    rst $30                                       ; $57b8: $f7
    adc c                                         ; $57b9: $89
    db $ed                                        ; $57ba: $ed
    sub h                                         ; $57bb: $94
    sub h                                         ; $57bc: $94
    or $8b                                        ; $57bd: $f6 $8b
    ld [hl], a                                    ; $57bf: $77
    reti                                          ; $57c0: $d9


    or c                                          ; $57c1: $b1
    db $e4                                        ; $57c2: $e4
    ld d, a                                       ; $57c3: $57
    ld a, $36                                     ; $57c4: $3e $36
    ld l, e                                       ; $57c6: $6b
    scf                                           ; $57c7: $37
    xor e                                         ; $57c8: $ab
    ld a, [c]                                     ; $57c9: $f2
    ld d, d                                       ; $57ca: $52
    ld [hl], l                                    ; $57cb: $75
    reti                                          ; $57cc: $d9


    ld d, e                                       ; $57cd: $53
    push af                                       ; $57ce: $f5
    call c, $e8e9                                 ; $57cf: $dc $e9 $e8
    ld sp, hl                                     ; $57d2: $f9
    ld d, l                                       ; $57d3: $55
    ld a, [hl+]                                   ; $57d4: $2a
    ld l, h                                       ; $57d5: $6c
    ld d, l                                       ; $57d6: $55
    add [hl]                                      ; $57d7: $86
    db $ed                                        ; $57d8: $ed
    ld c, e                                       ; $57d9: $4b
    ld [$6937], a                                 ; $57da: $ea $37 $69
    rla                                           ; $57dd: $17
    ld b, [hl]                                    ; $57de: $46
    ret                                           ; $57df: $c9


jr_025_57e0:
    ld c, a                                       ; $57e0: $4f
    xor l                                         ; $57e1: $ad
    ld a, d                                       ; $57e2: $7a
    and e                                         ; $57e3: $a3
    or [hl]                                       ; $57e4: $b6
    db $e3                                        ; $57e5: $e3
    rst $28                                       ; $57e6: $ef
    jp nc, $fcbc                                  ; $57e7: $d2 $bc $fc

    ld a, d                                       ; $57ea: $7a
    ld e, [hl]                                    ; $57eb: $5e
    adc [hl]                                      ; $57ec: $8e
    ld a, [hl+]                                   ; $57ed: $2a
    ld l, h                                       ; $57ee: $6c
    db $dd                                        ; $57ef: $dd
    ld d, h                                       ; $57f0: $54
    ret c                                         ; $57f1: $d8

    cp d                                          ; $57f2: $ba
    ld h, l                                       ; $57f3: $65
    adc h                                         ; $57f4: $8c
    ld e, a                                       ; $57f5: $5f
    ld a, c                                       ; $57f6: $79
    ld a, [bc]                                    ; $57f7: $0a
    call nc, Call_000_2dd6                        ; $57f8: $d4 $d6 $2d
    sbc d                                         ; $57fb: $9a
    ld [hl], $c2                                  ; $57fc: $36 $c2
    cp l                                          ; $57fe: $bd
    jp nc, $a8ac                                  ; $57ff: $d2 $ac $a8

    push af                                       ; $5802: $f5
    ld d, a                                       ; $5803: $57
    xor c                                         ; $5804: $a9
    add hl, bc                                    ; $5805: $09
    adc d                                         ; $5806: $8a
    rst $28                                       ; $5807: $ef
    sub h                                         ; $5808: $94
    sub h                                         ; $5809: $94
    or $8b                                        ; $580a: $f6 $8b
    ld c, a                                       ; $580c: $4f
    adc c                                         ; $580d: $89
    xor l                                         ; $580e: $ad
    cp $1d                                        ; $580f: $fe $1d
    ld e, a                                       ; $5811: $5f
    xor e                                         ; $5812: $ab
    ld b, $72                                     ; $5813: $06 $72
    reti                                          ; $5815: $d9


Jump_025_5816:
    jp nc, $d2f8                                  ; $5816: $d2 $f8 $d2

    sbc [hl]                                      ; $5819: $9e
    ld c, e                                       ; $581a: $4b
    sbc d                                         ; $581b: $9a
    halt                                          ; $581c: $76
    ld a, h                                       ; $581d: $7c
    or h                                          ; $581e: $b4
    ld e, $e5                                     ; $581f: $1e $e5
    push hl                                       ; $5821: $e5
    ld [hl], a                                    ; $5822: $77
    ld h, c                                       ; $5823: $61
    sub h                                         ; $5824: $94
    xor e                                         ; $5825: $ab
    sub d                                         ; $5826: $92
    add sp, $2b                                   ; $5827: $e8 $2b
    cp a                                          ; $5829: $bf
    ld c, c                                       ; $582a: $49
    ld l, e                                       ; $582b: $6b
    cp a                                          ; $582c: $bf
    di                                            ; $582d: $f3
    rst $38                                       ; $582e: $ff
    inc [hl]                                      ; $582f: $34
    cpl                                           ; $5830: $2f
    rla                                           ; $5831: $17
    or $d6                                        ; $5832: $f6 $d6
    daa                                           ; $5834: $27
    sbc a                                         ; $5835: $9f
    ld [de], a                                    ; $5836: $12
    sbc e                                         ; $5837: $9b
    sub a                                         ; $5838: $97
    rra                                           ; $5839: $1f
    dec a                                         ; $583a: $3d
    cp a                                          ; $583b: $bf
    ld c, d                                       ; $583c: $4a
    add l                                         ; $583d: $85
    xor l                                         ; $583e: $ad
    jp z, Jump_025_7db0                           ; $583f: $ca $b0 $7d

    ld c, c                                       ; $5842: $49
    db $fd                                        ; $5843: $fd
    ld h, $ed                                     ; $5844: $26 $ed
    jp nc, $fcbc                                  ; $5846: $d2 $bc $fc

    ld a, d                                       ; $5849: $7a
    ld e, [hl]                                    ; $584a: $5e
    adc [hl]                                      ; $584b: $8e
    ld a, [hl+]                                   ; $584c: $2a
    ld l, h                                       ; $584d: $6c
    db $dd                                        ; $584e: $dd
    ld d, h                                       ; $584f: $54
    ret c                                         ; $5850: $d8

    cp d                                          ; $5851: $ba
    ld h, l                                       ; $5852: $65
    adc h                                         ; $5853: $8c
    ld e, a                                       ; $5854: $5f
    ld a, c                                       ; $5855: $79
    ld a, [bc]                                    ; $5856: $0a
    call nc, Call_000_2dd6                        ; $5857: $d4 $d6 $2d
    sbc d                                         ; $585a: $9a
    ld [hl], $c2                                  ; $585b: $36 $c2
    cp l                                          ; $585d: $bd
    jp nc, $a8ac                                  ; $585e: $d2 $ac $a8

    push af                                       ; $5861: $f5
    daa                                           ; $5862: $27
    xor a                                         ; $5863: $af
    ld d, l                                       ; $5864: $55
    ld a, c                                       ; $5865: $79
    ld [hl], $2f                                  ; $5866: $36 $2f
    ccf                                           ; $5868: $3f
    ld c, a                                       ; $5869: $4f
    cp $65                                        ; $586a: $fe $65
    db $fc                                        ; $586c: $fc
    push af                                       ; $586d: $f5
    or d                                          ; $586e: $b2
    ld d, e                                       ; $586f: $53
    ld d, d                                       ; $5870: $52
    jp c, $3e2f                                   ; $5871: $da $2f $3e

    dec h                                         ; $5874: $25
    ld [hl], $fe                                  ; $5875: $36 $fe
    ld b, d                                       ; $5877: $42
    ld a, c                                       ; $5878: $79
    or [hl]                                       ; $5879: $b6
    ld [hl], d                                    ; $587a: $72
    jp $40e9                                      ; $587b: $c3 $e9 $40


    db $ed                                        ; $587e: $ed
    rst $18                                       ; $587f: $df
    ld a, c                                       ; $5880: $79
    ld l, c                                       ; $5881: $69
    add h                                         ; $5882: $84
    cp [hl]                                       ; $5883: $be
    jp hl                                         ; $5884: $e9


    or d                                          ; $5885: $b2
    db $d3                                        ; $5886: $d3
    ccf                                           ; $5887: $3f
    sbc $b7                                       ; $5888: $de $b7
    ld a, $e3                                     ; $588a: $3e $e3
    xor [hl]                                      ; $588c: $ae
    ld c, c                                       ; $588d: $49
    inc sp                                        ; $588e: $33
    ld sp, hl                                     ; $588f: $f9
    ldh a, [$c3]                                  ; $5890: $f0 $c3
    or $cb                                        ; $5892: $f6 $cb
    cp h                                          ; $5894: $bc
    xor b                                         ; $5895: $a8
    ld c, a                                       ; $5896: $4f
    ld b, a                                       ; $5897: $47
    rst $08                                       ; $5898: $cf
    xor a                                         ; $5899: $af
    ld d, d                                       ; $589a: $52
    ld h, c                                       ; $589b: $61
    xor e                                         ; $589c: $ab
    ld [hl-], a                                   ; $589d: $32
    ld l, h                                       ; $589e: $6c
    ld e, a                                       ; $589f: $5f
    ld d, d                                       ; $58a0: $52
    cp a                                          ; $58a1: $bf
    ld c, c                                       ; $58a2: $49
    db $e3                                        ; $58a3: $e3
    ld l, a                                       ; $58a4: $6f
    adc h                                         ; $58a5: $8c
    ld l, e                                       ; $58a6: $6b
    rst $38                                       ; $58a7: $ff
    call nc, Call_000_37aa                        ; $58a8: $d4 $aa $37
    ld l, d                                       ; $58ab: $6a
    dec sp                                        ; $58ac: $3b
    cp $2e                                        ; $58ad: $fe $2e
    call $afcb                                    ; $58af: $cd $cb $af
    rst $20                                       ; $58b2: $e7
    push hl                                       ; $58b3: $e5
    xor b                                         ; $58b4: $a8
    jp nz, Jump_025_4dd6                          ; $58b5: $c2 $d6 $4d

    add l                                         ; $58b8: $85
    xor l                                         ; $58b9: $ad
    ld e, e                                       ; $58ba: $5b
    add $f8                                       ; $58bb: $c6 $f8
    sub l                                         ; $58bd: $95
    and a                                         ; $58be: $a7
    ld b, b                                       ; $58bf: $40
    ld l, l                                       ; $58c0: $6d
    db $dd                                        ; $58c1: $dd
    and d                                         ; $58c2: $a2
    ld l, c                                       ; $58c3: $69
    rst $28                                       ; $58c4: $ef
    jp nc, $fcbc                                  ; $58c5: $d2 $bc $fc

    jp nz, $ba14                                  ; $58c8: $c2 $14 $ba

    inc d                                         ; $58cb: $14
    jr nz, jr_025_58da                            ; $58cc: $20 $0c

    cp l                                          ; $58ce: $bd
    jp nc, $a8ac                                  ; $58cf: $d2 $ac $a8

    push af                                       ; $58d2: $f5
    rlca                                          ; $58d3: $07
    ld b, [hl]                                    ; $58d4: $46
    xor h                                         ; $58d5: $ac
    rst $10                                       ; $58d6: $d7
    ld a, [$5e6c]                                 ; $58d7: $fa $6c $5e

jr_025_58da:
    ld a, [hl]                                    ; $58da: $7e
    rst $00                                       ; $58db: $c7
    and l                                         ; $58dc: $a5
    or h                                          ; $58dd: $b4
    cpl                                           ; $58de: $2f
    ld h, e                                       ; $58df: $63
    ld c, a                                       ; $58e0: $4f
    dec sp                                        ; $58e1: $3b
    ld l, $e5                                     ; $58e2: $2e $e5
    pop bc                                        ; $58e4: $c1
    and a                                         ; $58e5: $a7
    call nz, $a766                                ; $58e6: $c4 $66 $a7
    ld hl, $2f36                                  ; $58e9: $21 $36 $2f
    ccf                                           ; $58ec: $3f
    ld a, $0d                                     ; $58ed: $3e $0d
    or c                                          ; $58ef: $b1
    ld h, a                                       ; $58f0: $67
    inc sp                                        ; $58f1: $33
    ld [hl], h                                    ; $58f2: $74
    xor e                                         ; $58f3: $ab
    inc d                                         ; $58f4: $14
    ld [$1eb2], a                                 ; $58f5: $ea $b2 $1e
    push hl                                       ; $58f8: $e5
    rst $10                                       ; $58f9: $d7
    di                                            ; $58fa: $f3
    ld [hl], d                                    ; $58fb: $72
    ld d, h                                       ; $58fc: $54
    ld h, c                                       ; $58fd: $61
    db $eb                                        ; $58fe: $eb
    and [hl]                                      ; $58ff: $a6
    jp nz, Jump_000_2dd6                          ; $5900: $c2 $d6 $2d

    ld h, e                                       ; $5903: $63
    db $fc                                        ; $5904: $fc
    jp z, $a053                                   ; $5905: $ca $53 $a0

    or [hl]                                       ; $5908: $b6
    ld l, [hl]                                    ; $5909: $6e
    pop de                                        ; $590a: $d1
    or h                                          ; $590b: $b4
    and a                                         ; $590c: $a7
    ld b, h                                       ; $590d: $44
    ld l, c                                       ; $590e: $69
    xor b                                         ; $590f: $a8
    ld a, d                                       ; $5910: $7a
    ld [hl], $2f                                  ; $5911: $36 $2f
    ld [$d1d3], a                                 ; $5913: $ea $d3 $d1
    di                                            ; $5916: $f3
    xor e                                         ; $5917: $ab
    ld d, h                                       ; $5918: $54
    ret c                                         ; $5919: $d8

    xor d                                         ; $591a: $aa
    inc c                                         ; $591b: $0c
    db $db                                        ; $591c: $db
    sub a                                         ; $591d: $97
    call nc, $d26f                                ; $591e: $d4 $6f $d2
    ld l, $4c                                     ; $5921: $2e $4c
    xor l                                         ; $5923: $ad
    ld a, d                                       ; $5924: $7a
    and e                                         ; $5925: $a3
    or [hl]                                       ; $5926: $b6
    db $e3                                        ; $5927: $e3
    inc hl                                        ; $5928: $23
    inc c                                         ; $5929: $0c
    rst $00                                       ; $592a: $c7
    ld c, e                                       ; $592b: $4b
    ld h, e                                       ; $592c: $63
    db $db                                        ; $592d: $db
    sub a                                         ; $592e: $97
    ld e, b                                       ; $592f: $58
    jp z, $c28a                                   ; $5930: $ca $8a $c2

    ld hl, sp-$5c                                 ; $5933: $f8 $a4
    ld a, c                                       ; $5935: $79
    ld sp, hl                                     ; $5936: $f9
    or l                                          ; $5937: $b5
    and [hl]                                      ; $5938: $a6
    add c                                         ; $5939: $81
    ld e, a                                       ; $593a: $5f
    scf                                           ; $593b: $37
    db $d3                                        ; $593c: $d3
    jp hl                                         ; $593d: $e9


    or d                                          ; $593e: $b2
    sub [hl]                                      ; $593f: $96
    ret c                                         ; $5940: $d8

    ld a, b                                       ; $5941: $78
    ld a, c                                       ; $5942: $79
    cp c                                          ; $5943: $b9
    ld d, h                                       ; $5944: $54
    add e                                         ; $5945: $83
    add c                                         ; $5946: $81
    res 4, l                                      ; $5947: $cb $a5
    ld h, b                                       ; $5949: $60
    ld l, c                                       ; $594a: $69
    adc a                                         ; $594b: $8f
    cp a                                          ; $594c: $bf
    inc b                                         ; $594d: $04
    cp e                                          ; $594e: $bb
    or b                                          ; $594f: $b0
    or [hl]                                       ; $5950: $b6
    ld h, h                                       ; $5951: $64
    db $fd                                        ; $5952: $fd
    xor c                                         ; $5953: $a9
    res 1, [hl]                                   ; $5954: $cb $8e
    ld sp, $3b61                                  ; $5956: $31 $61 $3b
    ld a, $4b                                     ; $5959: $3e $4b
    ld sp, hl                                     ; $595b: $f9
    dec b                                         ; $595c: $05
    rst $10                                       ; $595d: $d7
    ld a, [$26b0]                                 ; $595e: $fa $b0 $26
    call $fcbc                                    ; $5961: $cd $bc $fc
    jp c, $be0f                                   ; $5964: $da $0f $be

    db $e3                                        ; $5967: $e3
    inc [hl]                                      ; $5968: $34
    ld c, h                                       ; $5969: $4c
    inc bc                                        ; $596a: $03
    db $eb                                        ; $596b: $eb
    ld a, c                                       ; $596c: $79
    cp l                                          ; $596d: $bd
    ld a, [hl+]                                   ; $596e: $2a
    rrca                                          ; $596f: $0f
    db $eb                                        ; $5970: $eb
    ld a, l                                       ; $5971: $7d
    dec a                                         ; $5972: $3d
    cpl                                           ; $5973: $2f
    ld b, a                                       ; $5974: $47
    dec d                                         ; $5975: $15
    or [hl]                                       ; $5976: $b6
    ld l, [hl]                                    ; $5977: $6e
    ld a, [hl+]                                   ; $5978: $2a
    ld l, h                                       ; $5979: $6c
    ld l, c                                       ; $597a: $69
    ld c, a                                       ; $597b: $4f
    ld h, e                                       ; $597c: $63
    ld b, h                                       ; $597d: $44
    ld [$f979], sp                                ; $597e: $08 $79 $f9
    or l                                          ; $5981: $b5
    xor d                                         ; $5982: $aa
    ld c, b                                       ; $5983: $48
    or e                                          ; $5984: $b3
    xor $e9                                       ; $5985: $ee $e9
    cp $b2                                        ; $5987: $fe $b2
    ld c, d                                       ; $5989: $4a
    add l                                         ; $598a: $85
    ld [hl], l                                    ; $598b: $75
    pop bc                                        ; $598c: $c1
    cp l                                          ; $598d: $bd
    jp nc, $acd4                                  ; $598e: $d2 $d4 $ac

    ccf                                           ; $5991: $3f
    dec sp                                        ; $5992: $3b
    dec c                                         ; $5993: $0d
    or c                                          ; $5994: $b1
    dec e                                         ; $5995: $1d
    cpl                                           ; $5996: $2f
    adc l                                         ; $5997: $8d
    ld l, l                                       ; $5998: $6d
    ld e, a                                       ; $5999: $5f
    ld h, d                                       ; $599a: $62
    add hl, hl                                    ; $599b: $29
    call c, Call_025_6935                         ; $599c: $dc $35 $69
    ld h, h                                       ; $599f: $64
    dec h                                         ; $59a0: $25
    dec c                                         ; $59a1: $0d
    db $fc                                        ; $59a2: $fc
    ld l, $ad                                     ; $59a3: $2e $ad
    dec [hl]                                      ; $59a5: $35
    inc bc                                        ; $59a6: $03
    ld e, [hl]                                    ; $59a7: $5e
    push bc                                       ; $59a8: $c5
    add c                                         ; $59a9: $81
    dec sp                                        ; $59aa: $3b
    cp [hl]                                       ; $59ab: $be
    cp h                                          ; $59ac: $bc
    db $fc                                        ; $59ad: $fc
    sbc d                                         ; $59ae: $9a
    inc [hl]                                      ; $59af: $34
    or l                                          ; $59b0: $b5
    jr @+$19                                      ; $59b1: $18 $17

    xor a                                         ; $59b3: $af
    push af                                       ; $59b4: $f5
    and a                                         ; $59b5: $a7
    call nz, Call_025_6e06                        ; $59b6: $c4 $06 $6e
    ld e, b                                       ; $59b9: $58
    db $d3                                        ; $59ba: $d3
    ld h, l                                       ; $59bb: $65
    dec a                                         ; $59bc: $3d
    ld [hl], d                                    ; $59bd: $72
    and c                                         ; $59be: $a1
    sub $7f                                       ; $59bf: $d6 $7f
    ld l, a                                       ; $59c1: $6f
    ld a, l                                       ; $59c2: $7d
    ld l, c                                       ; $59c3: $69
    sub d                                         ; $59c4: $92
    ld a, [hl]                                    ; $59c5: $7e
    or $7f                                        ; $59c6: $f6 $7f
    sbc h                                         ; $59c8: $9c
    ld a, [$864a]                                 ; $59c9: $fa $4a $86
    rst $08                                       ; $59cc: $cf
    sbc l                                         ; $59cd: $9d
    adc [hl]                                      ; $59ce: $8e
    sbc [hl]                                      ; $59cf: $9e
    ld e, a                                       ; $59d0: $5f
    and l                                         ; $59d1: $a5
    jp nz, Jump_025_6556                          ; $59d2: $c2 $56 $65

    ret c                                         ; $59d5: $d8

    cp [hl]                                       ; $59d6: $be
    and h                                         ; $59d7: $a4
    ld a, [hl]                                    ; $59d8: $7e
    sub e                                         ; $59d9: $93
    halt                                          ; $59da: $76
    ld h, c                                       ; $59db: $61
    sub h                                         ; $59dc: $94
    db $fc                                        ; $59dd: $fc
    call nc, Call_000_37aa                        ; $59de: $d4 $aa $37
    ld l, d                                       ; $59e1: $6a
    dec sp                                        ; $59e2: $3b
    cp $2e                                        ; $59e3: $fe $2e
    call $afcb                                    ; $59e5: $cd $cb $af
    rst $20                                       ; $59e8: $e7
    push hl                                       ; $59e9: $e5
    xor b                                         ; $59ea: $a8
    jp nz, Jump_025_4dd6                          ; $59eb: $c2 $d6 $4d

    add l                                         ; $59ee: $85
    xor l                                         ; $59ef: $ad
    ld e, e                                       ; $59f0: $5b
    add $f8                                       ; $59f1: $c6 $f8
    sub l                                         ; $59f3: $95
    and a                                         ; $59f4: $a7
    ld b, b                                       ; $59f5: $40
    ld l, l                                       ; $59f6: $6d
    db $dd                                        ; $59f7: $dd
    and d                                         ; $59f8: $a2
    ld l, c                                       ; $59f9: $69
    inc hl                                        ; $59fa: $23
    inc c                                         ; $59fb: $0c
    and a                                         ; $59fc: $a7
    inc h                                         ; $59fd: $24
    cp a                                          ; $59fe: $bf
    and $6b                                       ; $59ff: $e6 $6b
    ld a, [c]                                     ; $5a01: $f2
    ld c, e                                       ; $5a02: $4b
    db $db                                        ; $5a03: $db
    sbc [hl]                                      ; $5a04: $9e
    rst $20                                       ; $5a05: $e7
    ld c, [hl]                                    ; $5a06: $4e
    cp h                                          ; $5a07: $bc
    inc d                                         ; $5a08: $14
    call nc, $dd60                                ; $5a09: $d4 $60 $dd
    inc h                                         ; $5a0c: $24
    ld bc, $e2d6                                  ; $5a0d: $01 $d6 $e2
    ld [$8937], a                                 ; $5a10: $ea $37 $89
    cp e                                          ; $5a13: $bb

jr_025_5a14:
    ld d, [hl]                                    ; $5a14: $56
    dec d                                         ; $5a15: $15
    ld l, c                                       ; $5a16: $69
    ret nc                                        ; $5a17: $d0

    adc [hl]                                      ; $5a18: $8e
    cp e                                          ; $5a19: $bb

jr_025_5a1a:
    call nz, Call_000_3dd6                        ; $5a1a: $c4 $d6 $3d
    xor d                                         ; $5a1d: $aa
    db $db                                        ; $5a1e: $db
    add hl, hl                                    ; $5a1f: $29
    pop hl                                        ; $5a20: $e1
    ld c, $db                                     ; $5a21: $0e $db
    ld bc, $1cfd                                  ; $5a23: $01 $fd $1c
    jr c, jr_025_5a4d                             ; $5a26: $38 $25

    or [hl]                                       ; $5a28: $b6
    sbc b                                         ; $5a29: $98
    ld e, c                                       ; $5a2a: $59
    sbc a                                         ; $5a2b: $9f
    sbc l                                         ; $5a2c: $9d
    ld [hl-], a                                   ; $5a2d: $32
    cpl                                           ; $5a2e: $2f
    cp a                                          ; $5a2f: $bf
    sub $0c                                       ; $5a30: $d6 $0c
    ld a, b                                       ; $5a32: $78
    dec d                                         ; $5a33: $15
    add a                                         ; $5a34: $87
    dec e                                         ; $5a35: $1d
    res 4, c                                      ; $5a36: $cb $a1
    inc hl                                        ; $5a38: $23
    rrca                                          ; $5a39: $0f
    add b                                         ; $5a3a: $80
    jr nc, jr_025_5a1a                            ; $5a3b: $30 $dd

    ld h, d                                       ; $5a3d: $62
    rst $18                                       ; $5a3e: $df
    ld d, l                                       ; $5a3f: $55
    db $ec                                        ; $5a40: $ec
    cp e                                          ; $5a41: $bb
    adc d                                         ; $5a42: $8a
    ld a, [bc]                                    ; $5a43: $0a
    jr nc, jr_025_5abc                            ; $5a44: $30 $76

    ld hl, $00bc                                  ; $5a46: $21 $bc $00
    rst $08                                       ; $5a49: $cf
    db $10                                        ; $5a4a: $10
    ld b, $7d                                     ; $5a4b: $06 $7d

jr_025_5a4d:
    dec e                                         ; $5a4d: $1d
    reti                                          ; $5a4e: $d9


    rst $18                                       ; $5a4f: $df
    jr nc, jr_025_5acf                            ; $5a50: $30 $7d

    rra                                           ; $5a52: $1f
    reti                                          ; $5a53: $d9


    rst $18                                       ; $5a54: $df
    jr nc, jr_025_5a14                            ; $5a55: $30 $bd

    jp nc, $b82c                                  ; $5a57: $d2 $2c $b8

    sub $9f                                       ; $5a5a: $d6 $9f
    jp hl                                         ; $5a5c: $e9


    inc e                                         ; $5a5d: $1c
    adc [hl]                                      ; $5a5e: $8e
    ld bc, $d2bd                                  ; $5a5f: $01 $bd $d2
    inc l                                         ; $5a62: $2c
    ld h, $fc                                     ; $5a63: $26 $fc
    adc [hl]                                      ; $5a65: $8e
    db $ec                                        ; $5a66: $ec
    ld l, a                                       ; $5a67: $6f
    dec l                                         ; $5a68: $2d
    db $dd                                        ; $5a69: $dd
    cp e                                          ; $5a6a: $bb
    ld h, b                                       ; $5a6b: $60
    cp l                                          ; $5a6c: $bd
    jp nc, $d02c                                  ; $5a6d: $d2 $2c $d0

    ld c, e                                       ; $5a70: $4b
    dec sp                                        ; $5a71: $3b
    or d                                          ; $5a72: $b2
    cp a                                          ; $5a73: $bf
    or l                                          ; $5a74: $b5
    ld [hl], h                                    ; $5a75: $74
    rst $28                                       ; $5a76: $ef
    add d                                         ; $5a77: $82
    ld bc, $7b16                                  ; $5a78: $01 $16 $7b
    ld c, l                                       ; $5a7b: $4d
    sbc d                                         ; $5a7c: $9a
    xor c                                         ; $5a7d: $a9
    inc a                                         ; $5a7e: $3c
    push de                                       ; $5a7f: $d5
    ld a, h                                       ; $5a80: $7c
    ld d, l                                       ; $5a81: $55
    add $f8                                       ; $5a82: $c6 $f8
    sub l                                         ; $5a84: $95
    ld e, a                                       ; $5a85: $5f
    ld a, [bc]                                    ; $5a86: $0a
    halt                                          ; $5a87: $76
    sbc h                                         ; $5a88: $9c
    add [hl]                                      ; $5a89: $86
    ld l, c                                       ; $5a8a: $69
    ld h, b                                       ; $5a8b: $60
    dec a                                         ; $5a8c: $3d
    xor a                                         ; $5a8d: $af
    ld d, a                                       ; $5a8e: $57
    push hl                                       ; $5a8f: $e5
    ld h, c                                       ; $5a90: $61
    cp l                                          ; $5a91: $bd
    xor a                                         ; $5a92: $af
    rst $20                                       ; $5a93: $e7
    push hl                                       ; $5a94: $e5
    xor b                                         ; $5a95: $a8

Jump_025_5a96:
    jp nz, $dd60                                  ; $5a96: $c2 $60 $dd

    ld d, h                                       ; $5a99: $54
    jr jr_025_5b0c                                ; $5a9a: $18 $70

    rst $10                                       ; $5a9c: $d7
    and h                                         ; $5a9d: $a4
    ld e, c                                       ; $5a9e: $59
    sbc d                                         ; $5a9f: $9a
    and b                                         ; $5aa0: $a0
    ld hl, sp+$3c                                 ; $5aa1: $f8 $3c
    rlca                                          ; $5aa3: $07
    xor [hl]                                      ; $5aa4: $ae
    ld [c], a                                     ; $5aa5: $e2
    ld [$3d03], sp                                ; $5aa6: $08 $03 $3d
    set 2, e                                      ; $5aa9: $cb $d3
    sbc d                                         ; $5aab: $9a
    inc [hl]                                      ; $5aac: $34
    dec [hl]                                      ; $5aad: $35
    ld sp, hl                                     ; $5aae: $f9
    and l                                         ; $5aaf: $a5
    pop af                                        ; $5ab0: $f1
    and l                                         ; $5ab1: $a5
    dec a                                         ; $5ab2: $3d
    add sp, $7c                                   ; $5ab3: $e8 $7c
    adc h                                         ; $5ab5: $8c
    ret nz                                        ; $5ab6: $c0

    db $dd                                        ; $5ab7: $dd
    ld [hl], c                                    ; $5ab8: $71
    ld a, [de]                                    ; $5ab9: $1a
    and [hl]                                      ; $5aba: $a6
    add c                                         ; $5abb: $81

jr_025_5abc:
    push af                                       ; $5abc: $f5
    cp h                                          ; $5abd: $bc
    ld e, [hl]                                    ; $5abe: $5e
    sub l                                         ; $5abf: $95
    add a                                         ; $5ac0: $87
    push af                                       ; $5ac1: $f5
    cp [hl]                                       ; $5ac2: $be
    sbc [hl]                                      ; $5ac3: $9e
    sub a                                         ; $5ac4: $97
    and e                                         ; $5ac5: $a3
    ld a, [bc]                                    ; $5ac6: $0a
    add e                                         ; $5ac7: $83
    ld [hl], l                                    ; $5ac8: $75
    ld d, e                                       ; $5ac9: $53
    ld h, c                                       ; $5aca: $61
    or b                                          ; $5acb: $b0
    ld c, d                                       ; $5acc: $4a
    ld l, c                                       ; $5acd: $69
    db $ed                                        ; $5ace: $ed

jr_025_5acf:
    sbc a                                         ; $5acf: $9f
    xor [hl]                                      ; $5ad0: $ae
    ld a, l                                       ; $5ad1: $7d
    add e                                         ; $5ad2: $83
    sub l                                         ; $5ad3: $95
    adc a                                         ; $5ad4: $8f
    dec e                                         ; $5ad5: $1d
    add h                                         ; $5ad6: $84
    ld bc, $9e2d                                  ; $5ad7: $01 $2d $9e
    ld d, l                                       ; $5ada: $55
    ld a, l                                       ; $5adb: $7d
    and [hl]                                      ; $5adc: $a6
    or e                                          ; $5add: $b3
    and h                                         ; $5ade: $a4
    ld d, l                                       ; $5adf: $55
    add hl, de                                    ; $5ae0: $19
    add [hl]                                      ; $5ae1: $86
    ld c, c                                       ; $5ae2: $49
    dec sp                                        ; $5ae3: $3b
    ld c, [hl]                                    ; $5ae4: $4e
    jp $b034                                      ; $5ae5: $c3 $34 $b0


    sbc [hl]                                      ; $5ae8: $9e
    rst $10                                       ; $5ae9: $d7
    xor e                                         ; $5aea: $ab
    ld a, [c]                                     ; $5aeb: $f2
    or b                                          ; $5aec: $b0
    sbc $d7                                       ; $5aed: $de $d7
    di                                            ; $5aef: $f3
    ld [hl], d                                    ; $5af0: $72
    ld d, h                                       ; $5af1: $54
    ld h, c                                       ; $5af2: $61
    or b                                          ; $5af3: $b0
    ld l, [hl]                                    ; $5af4: $6e
    ld a, [hl+]                                   ; $5af5: $2a
    inc c                                         ; $5af6: $0c
    ret nc                                        ; $5af7: $d0

    cp d                                          ; $5af8: $ba
    ld h, l                                       ; $5af9: $65
    jr jr_025_5b22                                ; $5afa: $18 $26

    xor l                                         ; $5afc: $ad
    ld d, d                                       ; $5afd: $52
    ld h, c                                       ; $5afe: $61
    or b                                          ; $5aff: $b0
    or [hl]                                       ; $5b00: $b6
    ld de, $e99a                                  ; $5b01: $11 $9a $e9
    db $ec                                        ; $5b04: $ec
    jp c, $d26b                                   ; $5b05: $da $6b $d2

    inc c                                         ; $5b08: $0c
    ld c, h                                       ; $5b09: $4c
    ld d, l                                       ; $5b0a: $55
    dec a                                         ; $5b0b: $3d

jr_025_5b0c:
    add b                                         ; $5b0c: $80
    ld l, l                                       ; $5b0d: $6d
    ld h, d                                       ; $5b0e: $62
    ld l, h                                       ; $5b0f: $6c

Jump_025_5b10:
    ld h, [hl]                                    ; $5b10: $66
    ldh [$e7], a                                  ; $5b11: $e0 $e7
    push hl                                       ; $5b13: $e5
    jp $9a5d                                      ; $5b14: $c3 $5d $9a


    xor [hl]                                      ; $5b17: $ae
    ld d, d                                       ; $5b18: $52
    ld h, c                                       ; $5b19: $61
    xor e                                         ; $5b1a: $ab
    ld [hl-], a                                   ; $5b1b: $32
    ld l, h                                       ; $5b1c: $6c
    daa                                           ; $5b1d: $27
    jp nz, $9a96                                  ; $5b1e: $c2 $96 $9a

    push af                                       ; $5b21: $f5

jr_025_5b22:
    ld d, a                                       ; $5b22: $57
    ld e, [hl]                                    ; $5b23: $5e
    add l                                         ; $5b24: $85
    call $fa8b                                    ; $5b25: $cd $8b $fa
    cp h                                          ; $5b28: $bc
    db $fc                                        ; $5b29: $fc
    ld a, d                                       ; $5b2a: $7a
    cp [hl]                                       ; $5b2b: $be
    ld b, d                                       ; $5b2c: $42
    db $fc                                        ; $5b2d: $fc
    ld h, [hl]                                    ; $5b2e: $66
    adc $5f                                       ; $5b2f: $ce $5f
    add d                                         ; $5b31: $82
    pop bc                                        ; $5b32: $c1
    rst $00                                       ; $5b33: $c7
    cp b                                          ; $5b34: $b8
    db $e3                                        ; $5b35: $e3
    inc [hl]                                      ; $5b36: $34
    ld c, h                                       ; $5b37: $4c
    inc bc                                        ; $5b38: $03
    db $eb                                        ; $5b39: $eb
    ld a, c                                       ; $5b3a: $79
    cp l                                          ; $5b3b: $bd
    ld a, [hl+]                                   ; $5b3c: $2a
    rrca                                          ; $5b3d: $0f
    db $eb                                        ; $5b3e: $eb
    ld a, l                                       ; $5b3f: $7d
    dec a                                         ; $5b40: $3d
    cpl                                           ; $5b41: $2f
    ld b, a                                       ; $5b42: $47
    dec d                                         ; $5b43: $15
    ld b, $eb                                     ; $5b44: $06 $eb
    and [hl]                                      ; $5b46: $a6
    jp nz, $9760                                  ; $5b47: $c2 $60 $97

    sub $d1                                       ; $5b4a: $d6 $d1
    xor d                                         ; $5b4c: $aa
    xor [hl]                                      ; $5b4d: $ae
    pop bc                                        ; $5b4e: $c1
    jp Jump_025_5ed2                              ; $5b4f: $c3 $d2 $5e


    or a                                          ; $5b52: $b7
    sub d                                         ; $5b53: $92
    ld d, l                                       ; $5b54: $55
    ld b, [hl]                                    ; $5b55: $46
    push af                                       ; $5b56: $f5
    rst $18                                       ; $5b57: $df
    ld [hl], c                                    ; $5b58: $71
    sub d                                         ; $5b59: $92
    ld bc, $0c20                                  ; $5b5a: $01 $20 $0c
    dec a                                         ; $5b5d: $3d
    jp z, Jump_025_4c2f                           ; $5b5e: $ca $2f $4c

    ldh a, [$75]                                  ; $5b61: $f0 $75
    sub d                                         ; $5b63: $92
    ld a, a                                       ; $5b64: $7f
    or c                                          ; $5b65: $b1
    ld c, l                                       ; $5b66: $4d
    call c, Call_000_1a71                         ; $5b67: $dc $71 $1a
    and [hl]                                      ; $5b6a: $a6
    add c                                         ; $5b6b: $81
    push af                                       ; $5b6c: $f5
    cp h                                          ; $5b6d: $bc
    ld e, [hl]                                    ; $5b6e: $5e
    sub l                                         ; $5b6f: $95
    add a                                         ; $5b70: $87
    push af                                       ; $5b71: $f5
    cp [hl]                                       ; $5b72: $be
    sbc [hl]                                      ; $5b73: $9e
    sub a                                         ; $5b74: $97
    and e                                         ; $5b75: $a3
    ld a, [bc]                                    ; $5b76: $0a
    add e                                         ; $5b77: $83
    ld [hl], l                                    ; $5b78: $75
    ld d, e                                       ; $5b79: $53
    ld h, c                                       ; $5b7a: $61
    xor e                                         ; $5b7b: $ab
    ld [hl-], a                                   ; $5b7c: $32

jr_025_5b7d:
    ld l, h                                       ; $5b7d: $6c
    ld e, a                                       ; $5b7e: $5f
    ld d, d                                       ; $5b7f: $52
    cp a                                          ; $5b80: $bf
    ld c, c                                       ; $5b81: $49
    jr nc, jr_025_5b7d                            ; $5b82: $30 $f9

    di                                            ; $5b84: $f3
    call $df95                                    ; $5b85: $cd $95 $df
    jp hl                                         ; $5b88: $e9


    ld a, [hl+]                                   ; $5b89: $2a
    cp a                                          ; $5b8a: $bf
    sub h                                         ; $5b8b: $94
    sbc l                                         ; $5b8c: $9d
    ld b, c                                       ; $5b8d: $41
    ld d, l                                       ; $5b8e: $55
    add [hl]                                      ; $5b8f: $86
    ld h, c                                       ; $5b90: $61
    jp nc, Jump_000_152a                          ; $5b91: $d2 $2a $15

    ld b, $08                                     ; $5b94: $06 $08
    and c                                         ; $5b96: $a1
    inc d                                         ; $5b97: $14
    xor $20                                       ; $5b98: $ee $20
    jp Jump_000_1bf7                              ; $5b9a: $c3 $f7 $1b


    ld a, $70                                     ; $5b9d: $3e $70
    rst $10                                       ; $5b9f: $d7
    ld c, [hl]                                    ; $5ba0: $4e
    cpl                                           ; $5ba1: $2f
    ld [$3d03], sp                                ; $5ba2: $08 $03 $3d
    jp z, Jump_025_4fcb                           ; $5ba5: $ca $cb $4f

    push hl                                       ; $5ba8: $e5
    rst $10                                       ; $5ba9: $d7
    ld e, a                                       ; $5baa: $5f
    cp a                                          ; $5bab: $bf
    db $fd                                        ; $5bac: $fd
    db $ed                                        ; $5bad: $ed
    jr c, jr_025_5bbd                             ; $5bae: $38 $0d

    db $d3                                        ; $5bb0: $d3
    ret nz                                        ; $5bb1: $c0

    ld a, d                                       ; $5bb2: $7a
    ld e, [hl]                                    ; $5bb3: $5e
    xor a                                         ; $5bb4: $af
    jp z, Jump_025_7ac3                           ; $5bb5: $ca $c3 $7a

    ld e, a                                       ; $5bb8: $5f
    rst $08                                       ; $5bb9: $cf
    bit 2, c                                      ; $5bba: $cb $51
    add l                                         ; $5bbc: $85

jr_025_5bbd:
    pop bc                                        ; $5bbd: $c1
    ld a, [hl+]                                   ; $5bbe: $2a
    dec d                                         ; $5bbf: $15
    ld b, $dc                                     ; $5bc0: $06 $dc
    or c                                          ; $5bc2: $b1
    ld l, e                                       ; $5bc3: $6b
    cp l                                          ; $5bc4: $bd
    db $ec                                        ; $5bc5: $ec
    reti                                          ; $5bc6: $d9


    ld l, $79                                     ; $5bc7: $2e $79
    xor [hl]                                      ; $5bc9: $ae
    cp a                                          ; $5bca: $bf
    cp $06                                        ; $5bcb: $fe $06
    and $3a                                       ; $5bcd: $e6 $3a
    jr nz, @+$0e                                  ; $5bcf: $20 $0c

    dec a                                         ; $5bd1: $3d
    jp z, Jump_025_4fcb                           ; $5bd2: $ca $cb $4f

    push hl                                       ; $5bd5: $e5
    ld [hl], a                                    ; $5bd6: $77
    ld d, b                                       ; $5bd7: $50
    cp a                                          ; $5bd8: $bf
    dec sp                                        ; $5bd9: $3b
    ld c, [hl]                                    ; $5bda: $4e
    jp $b034                                      ; $5bdb: $c3 $34 $b0


    sbc [hl]                                      ; $5bde: $9e
    rst $10                                       ; $5bdf: $d7

jr_025_5be0:
    xor e                                         ; $5be0: $ab
    ld a, [c]                                     ; $5be1: $f2
    or b                                          ; $5be2: $b0
    sbc $d7                                       ; $5be3: $de $d7
    di                                            ; $5be5: $f3
    ld [hl], d                                    ; $5be6: $72
    ld d, h                                       ; $5be7: $54
    ld h, c                                       ; $5be8: $61

jr_025_5be9:
    or b                                          ; $5be9: $b0
    ld l, [hl]                                    ; $5bea: $6e
    ld a, [hl+]                                   ; $5beb: $2a
    ld l, h                                       ; $5bec: $6c
    ld d, l                                       ; $5bed: $55
    add [hl]                                      ; $5bee: $86
    db $ed                                        ; $5bef: $ed
    ld c, e                                       ; $5bf0: $4b
    ld [$0937], a                                 ; $5bf1: $ea $37 $09
    ret nc                                        ; $5bf4: $d0

    ld c, [hl]                                    ; $5bf5: $4e
    ld c, [hl]                                    ; $5bf6: $4e
    ldh a, [$a9]                                  ; $5bf7: $f0 $a9
    db $fc                                        ; $5bf9: $fc
    jp z, $8ec7                                   ; $5bfa: $ca $c7 $8e

    ld l, l                                       ; $5bfd: $6d
    ld [hl+], a                                   ; $5bfe: $22
    ld [hl], a                                    ; $5bff: $77
    sub b                                         ; $5c00: $90
    pop hl                                        ; $5c01: $e1
    ld c, a                                       ; $5c02: $4f
    push hl                                       ; $5c03: $e5
    rlca                                          ; $5c04: $07
    scf                                           ; $5c05: $37
    add $86                                       ; $5c06: $c6 $86
    dec sp                                        ; $5c08: $3b
    dec h                                         ; $5c09: $25
    ld [hl], $9d                                  ; $5c0a: $36 $9d
    db $fd                                        ; $5c0c: $fd
    db $fc                                        ; $5c0d: $fc
    ld a, [hl+]                                   ; $5c0e: $2a
    and l                                         ; $5c0f: $a5
    cp l                                          ; $5c10: $bd
    push af                                       ; $5c11: $f5
    ld l, c                                       ; $5c12: $69
    db $ed                                        ; $5c13: $ed
    ld e, a                                       ; $5c14: $5f
    ld d, c                                       ; $5c15: $51
    add hl, bc                                    ; $5c16: $09
    ld l, l                                       ; $5c17: $6d
    inc de                                        ; $5c18: $13
    ld de, $3d06                                  ; $5c19: $11 $06 $3d
    jp z, Jump_025_4fcb                           ; $5c1c: $ca $cb $4f

    push hl                                       ; $5c1f: $e5
    rlca                                          ; $5c20: $07
    add hl, de                                    ; $5c21: $19
    cp $8e                                        ; $5c22: $fe $8e
    db $d3                                        ; $5c24: $d3
    jr nc, jr_025_5c34                            ; $5c25: $30 $0d

    xor h                                         ; $5c27: $ac
    rst $20                                       ; $5c28: $e7
    push af                                       ; $5c29: $f5
    xor d                                         ; $5c2a: $aa
    inc a                                         ; $5c2b: $3c
    xor h                                         ; $5c2c: $ac
    rst $30                                       ; $5c2d: $f7
    push af                                       ; $5c2e: $f5
    cp h                                          ; $5c2f: $bc
    inc e                                         ; $5c30: $1c
    ld d, l                                       ; $5c31: $55
    jr jr_025_5be0                                ; $5c32: $18 $ac

jr_025_5c34:
    sbc e                                         ; $5c34: $9b
    ld a, [bc]                                    ; $5c35: $0a
    add e                                         ; $5c36: $83
    sub l                                         ; $5c37: $95
    set 3, b                                      ; $5c38: $cb $d8
    db $d3                                        ; $5c3a: $d3
    ld d, h                                       ; $5c3b: $54
    jp nc, Jump_025_5b10                          ; $5c3c: $d2 $10 $5b

    ld l, e                                       ; $5c3f: $6b
    ld b, $bc                                     ; $5c40: $06 $bc
    adc d                                         ; $5c42: $8a
    inc bc                                        ; $5c43: $03
    jp c, $9949                                   ; $5c44: $da $49 $99

    push af                                       ; $5c47: $f5
    ld d, l                                       ; $5c48: $55
    ld a, [hl+]                                   ; $5c49: $2a
    ld l, a                                       ; $5c4a: $6f
    sbc e                                         ; $5c4b: $9b
    jr jr_025_5be9                                ; $5c4c: $18 $9b

    add hl, hl                                    ; $5c4e: $29
    or c                                          ; $5c4f: $b1
    dec [hl]                                      ; $5c50: $35
    ld l, c                                       ; $5c51: $69
    ld d, $de                                     ; $5c52: $16 $de
    and b                                         ; $5c54: $a0
    ld hl, sp-$14                                 ; $5c55: $f8 $ec
    ld c, e                                       ; $5c57: $4b
    ld l, h                                       ; $5c58: $6c
    sub b                                         ; $5c59: $90
    pop hl                                        ; $5c5a: $e1
    inc hl                                        ; $5c5b: $23
    inc c                                         ; $5c5c: $0c
    ld d, $7b                                     ; $5c5d: $16 $7b

jr_025_5c5f:
    ld c, l                                       ; $5c5f: $4d
    sbc d                                         ; $5c60: $9a
    cp c                                          ; $5c61: $b9
    jr z, jr_025_5c5f                             ; $5c62: $28 $fb

    reti                                          ; $5c64: $d9


    add hl, hl                                    ; $5c65: $29
    dec bc                                        ; $5c66: $0b
    ld d, e                                       ; $5c67: $53
    ld a, [hl]                                    ; $5c68: $7e
    rst $00                                       ; $5c69: $c7
    ld l, c                                       ; $5c6a: $69
    sbc b                                         ; $5c6b: $98
    ld b, $d6                                     ; $5c6c: $06 $d6
    di                                            ; $5c6e: $f3
    ld a, d                                       ; $5c6f: $7a
    ld d, l                                       ; $5c70: $55
    ld e, $d6                                     ; $5c71: $1e $d6
    ei                                            ; $5c73: $fb

jr_025_5c74:
    ld a, d                                       ; $5c74: $7a
    ld e, [hl]                                    ; $5c75: $5e
    adc [hl]                                      ; $5c76: $8e
    ld a, [hl+]                                   ; $5c77: $2a
    inc c                                         ; $5c78: $0c
    sub $4d                                       ; $5c79: $d6 $4d
    add l                                         ; $5c7b: $85
    ld bc, $4d77                                  ; $5c7c: $01 $77 $4d
    sbc d                                         ; $5c7f: $9a
    ld d, l                                       ; $5c80: $55
    ld c, d                                       ; $5c81: $4a
    inc sp                                        ; $5c82: $33
    ldh a, [$0b]                                  ; $5c83: $f0 $0b
    ld d, e                                       ; $5c85: $53
    ld a, [hl]                                    ; $5c86: $7e
    ld d, l                                       ; $5c87: $55
    add [hl]                                      ; $5c88: $86
    db $ed                                        ; $5c89: $ed
    ld c, e                                       ; $5c8a: $4b
    ld [$0937], a                                 ; $5c8b: $ea $37 $09
    db $10                                        ; $5c8e: $10
    ld b, $47                                     ; $5c8f: $06 $47
    rst $38                                       ; $5c91: $ff
    and l                                         ; $5c92: $a5
    ld h, b                                       ; $5c93: $60
    cp d                                          ; $5c94: $ba
    or [hl]                                       ; $5c95: $b6
    ld bc, $05df                                  ; $5c96: $01 $df $05
    xor d                                         ; $5c99: $aa
    ld sp, hl                                     ; $5c9a: $f9
    jr nz, jr_025_5c74                            ; $5c9b: $20 $d7

    ld d, [hl]                                    ; $5c9d: $56
    add [hl]                                      ; $5c9e: $86
    ld h, [hl]                                    ; $5c9f: $66
    add hl, de                                    ; $5ca0: $19
    cp b                                          ; $5ca1: $b8
    adc d                                         ; $5ca2: $8a
    ccf                                           ; $5ca3: $3f
    ld e, e                                       ; $5ca4: $5b
    ld a, [de]                                    ; $5ca5: $1a
    sbc a                                         ; $5ca6: $9f
    jp nz, Jump_000_1d74                          ; $5ca7: $c2 $74 $1d

    db $ed                                        ; $5caa: $ed
    cp h                                          ; $5cab: $bc
    ldh a, [$7f]                                  ; $5cac: $f0 $7f
    add e                                         ; $5cae: $83
    ld [c], a                                     ; $5caf: $e2
    ld [$dd03], sp                                ; $5cb0: $08 $03 $dd
    ld d, e                                       ; $5cb3: $53
    ld e, h                                       ; $5cb4: $5c
    db $f4                                        ; $5cb5: $f4
    ld a, [hl-]                                   ; $5cb6: $3a
    ld c, h                                       ; $5cb7: $4c
    push hl                                       ; $5cb8: $e5
    rlca                                          ; $5cb9: $07
    sbc l                                         ; $5cba: $9d
    call z, $837a                                 ; $5cbb: $cc $7a $83
    sub $a3                                       ; $5cbe: $d6 $a3
    db $fc                                        ; $5cc0: $fc
    sub l                                         ; $5cc1: $95
    ld a, l                                       ; $5cc2: $7d
    di                                            ; $5cc3: $f3
    jr nc, jr_025_5d01                            ; $5cc4: $30 $3b

    ld h, e                                       ; $5cc6: $63
    ld c, h                                       ; $5cc7: $4c
    ld a, [hl]                                    ; $5cc8: $7e
    ld c, l                                       ; $5cc9: $4d
    sbc d                                         ; $5cca: $9a
    xor c                                         ; $5ccb: $a9
    and h                                         ; $5ccc: $a4
    ld hl, $2f36                                  ; $5ccd: $21 $36 $2f
    ccf                                           ; $5cd0: $3f
    ret                                           ; $5cd1: $c9


    inc c                                         ; $5cd2: $0c
    ld de, $c706                                  ; $5cd3: $11 $06 $c7
    inc h                                         ; $5cd6: $24
    push de                                       ; $5cd7: $d5
    ld a, h                                       ; $5cd8: $7c
    dec e                                         ; $5cd9: $1d
    ld l, l                                       ; $5cda: $6d
    and [hl]                                      ; $5cdb: $a6
    xor $4f                                       ; $5cdc: $ee $4f
    ld a, [hl]                                    ; $5cde: $7e
    sub e                                         ; $5cdf: $93
    and $b9                                       ; $5ce0: $e6 $b9
    ld b, b                                       ; $5ce2: $40
    sub h                                         ; $5ce3: $94
    xor [hl]                                      ; $5ce4: $ae
    rst $38                                       ; $5ce5: $ff
    jp c, Jump_000_1c06                           ; $5ce6: $da $06 $1c

    ret nc                                        ; $5ce9: $d0

    ld a, d                                       ; $5cea: $7a
    sub h                                         ; $5ceb: $94
    ld l, a                                       ; $5cec: $6f
    ld l, d                                       ; $5ced: $6a
    ld a, [c]                                     ; $5cee: $f2
    db $eb                                        ; $5cef: $eb
    ret z                                         ; $5cf0: $c8

    cp e                                          ; $5cf1: $bb
    scf                                           ; $5cf2: $37
    ld h, e                                       ; $5cf3: $63
    ld c, a                                       ; $5cf4: $4f
    ldh a, [$08]                                  ; $5cf5: $f0 $08
    inc bc                                        ; $5cf7: $03
    sub [hl]                                      ; $5cf8: $96
    add c                                         ; $5cf9: $81
    xor e                                         ; $5cfa: $ab
    ld hl, sp-$4d                                 ; $5cfb: $f8 $b3
    and l                                         ; $5cfd: $a5
    pop af                                        ; $5cfe: $f1
    add hl, hl                                    ; $5cff: $29

jr_025_5d00:
    ld c, h                                       ; $5d00: $4c

jr_025_5d01:
    ld h, a                                       ; $5d01: $67
    sbc e                                         ; $5d02: $9b
    jr jr_025_5d00                                ; $5d03: $18 $fb

    adc [hl]                                      ; $5d05: $8e
    ld c, a                                       ; $5d06: $4f
    add c                                         ; $5d07: $81
    sub a                                         ; $5d08: $97
    add c                                         ; $5d09: $81
    xor e                                         ; $5d0a: $ab
    sbc e                                         ; $5d0b: $9b
    rst $20                                       ; $5d0c: $e7
    xor [hl]                                      ; $5d0d: $ae
    ld l, l                                       ; $5d0e: $6d
    ld a, h                                       ; $5d0f: $7c
    sub a                                         ; $5d10: $97
    and $e5                                       ; $5d11: $e6 $e5
    rst $30                                       ; $5d13: $f7
    call nz, $d966                                ; $5d14: $c4 $66 $d9
    ld a, c                                       ; $5d17: $79
    ld b, $7c                                     ; $5d18: $06 $7c
    db $fc                                        ; $5d1a: $fc
    sub e                                         ; $5d1b: $93
    xor a                                         ; $5d1c: $af
    ld l, l                                       ; $5d1d: $6d
    ret nz                                        ; $5d1e: $c0

    ld de, $3d06                                  ; $5d1f: $11 $06 $3d
    ld c, d                                       ; $5d22: $4a
    jp nz, $93af                                  ; $5d23: $c2 $af $93

    ld [c], a                                     ; $5d26: $e2
    and d                                         ; $5d27: $a2
    rst $10                                       ; $5d28: $d7
    ld h, c                                       ; $5d29: $61
    ld a, [hl+]                                   ; $5d2a: $2a
    ccf                                           ; $5d2b: $3f
    ld e, l                                       ; $5d2c: $5d
    cp h                                          ; $5d2d: $bc
    xor $f1                                       ; $5d2e: $ee $f1
    sub a                                         ; $5d30: $97
    scf                                           ; $5d31: $37
    ld [hl], $bb                                  ; $5d32: $36 $bb
    or $9a                                        ; $5d34: $f6 $9a
    inc [hl]                                      ; $5d36: $34
    ld d, e                                       ; $5d37: $53
    xor b                                         ; $5d38: $a8
    cpl                                           ; $5d39: $2f
    ld a, h                                       ; $5d3a: $7c
    add h                                         ; $5d3b: $84
    ld bc, $9a96                                  ; $5d3c: $01 $96 $9a
    push af                                       ; $5d3f: $f5
    and a                                         ; $5d40: $a7
    sub c                                         ; $5d41: $91
    rst $10                                       ; $5d42: $d7
    ld b, $c6                                     ; $5d43: $06 $c6
    daa                                           ; $5d45: $27
    or c                                          ; $5d46: $b1
    sub a                                         ; $5d47: $97
    ld h, a                                       ; $5d48: $67
    db $e3                                        ; $5d49: $e3
    adc e                                         ; $5d4a: $8b
    ld a, [$d7ae]                                 ; $5d4b: $fa $ae $d7
    ld h, b                                       ; $5d4e: $60
    pop af                                        ; $5d4f: $f1
    sub $7f                                       ; $5d50: $d6 $7f
    sbc [hl]                                      ; $5d52: $9e
    dec hl                                        ; $5d53: $2b
    ld l, d                                       ; $5d54: $6a
    db $fd                                        ; $5d55: $fd
    ld b, c                                       ; $5d56: $41
    ld c, c                                       ; $5d57: $49
    inc de                                        ; $5d58: $13
    reti                                          ; $5d59: $d9


    dec bc                                        ; $5d5a: $0b
    jr nz, jr_025_5d69                            ; $5d5b: $20 $0c

    rst $00                                       ; $5d5d: $c7
    cp a                                          ; $5d5e: $bf
    ei                                            ; $5d5f: $fb
    and l                                         ; $5d60: $a5
    ld h, b                                       ; $5d61: $60
    sbc l                                         ; $5d62: $9d
    adc h                                         ; $5d63: $8c
    rla                                           ; $5d64: $17
    jp z, Jump_025_5db3                           ; $5d65: $ca $b3 $5d

    sbc b                                         ; $5d68: $98

jr_025_5d69:
    sub a                                         ; $5d69: $97
    ld e, a                                       ; $5d6a: $5f
    ld d, d                                       ; $5d6b: $52
    ld l, h                                       ; $5d6c: $6c
    ld h, [hl]                                    ; $5d6d: $66
    dec de                                        ; $5d6e: $1b
    sbc d                                         ; $5d6f: $9a
    ld h, l                                       ; $5d70: $65
    ld l, a                                       ; $5d71: $6f
    ld a, l                                       ; $5d72: $7d
    ld e, c                                       ; $5d73: $59
    ld d, c                                       ; $5d74: $51
    db $eb                                        ; $5d75: $eb
    inc hl                                        ; $5d76: $23
    inc c                                         ; $5d77: $0c
    sub [hl]                                      ; $5d78: $96
    pop af                                        ; $5d79: $f1
    rla                                           ; $5d7a: $17
    jp z, Jump_000_2b2c                           ; $5d7b: $ca $2c $2b

    jp z, $aba6                                   ; $5d7e: $ca $a6 $ab

    ld h, d                                       ; $5d81: $62
    ld d, [hl]                                    ; $5d82: $56
    push af                                       ; $5d83: $f5
    ld e, l                                       ; $5d84: $5d
    ld e, d                                       ; $5d85: $5a
    ret c                                         ; $5d86: $d8

    call z, $f94e                                 ; $5d87: $cc $4e $f9
    ld a, [c]                                     ; $5d8a: $f2
    jp z, Jump_000_3296                           ; $5d8b: $ca $96 $32

    ret z                                         ; $5d8e: $c8

    ldh a, [$bd]                                  ; $5d8f: $f0 $bd
    ld e, h                                       ; $5d91: $5c
    ld a, [bc]                                    ; $5d92: $0a
    ret nc                                        ; $5d93: $d0

    inc l                                         ; $5d94: $2c
    dec [hl]                                      ; $5d95: $35
    ld [hl], $fb                                  ; $5d96: $36 $fb
    ccf                                           ; $5d98: $3f
    ld c, $72                                     ; $5d99: $0e $72
    and c                                         ; $5d9b: $a1
    xor c                                         ; $5d9c: $a9
    jp z, $94c2                                   ; $5d9d: $ca $c2 $94

jr_025_5da0:
    sbc a                                         ; $5da0: $9f
    add c                                         ; $5da1: $81
    or a                                          ; $5da2: $b7
    ld c, l                                       ; $5da3: $4d
    ld b, h                                       ; $5da4: $44
    jr jr_025_5dee                                ; $5da5: $18 $47

    rst $38                                       ; $5da7: $ff
    and l                                         ; $5da8: $a5
    ld h, b                                       ; $5da9: $60
    sbc l                                         ; $5daa: $9d
    xor b                                         ; $5dab: $a8
    ldh [$2f], a                                  ; $5dac: $e0 $2f
    cp e                                          ; $5dae: $bb
    ld b, b                                       ; $5daf: $40
    dec [hl]                                      ; $5db0: $35
    rra                                           ; $5db1: $1f
    db $e4                                        ; $5db2: $e4

Jump_025_5db3:
    jp c, Jump_000_10ca                           ; $5db3: $da $ca $10

    ld b, $96                                     ; $5db6: $06 $96
    ld e, d                                       ; $5db8: $5a
    jr c, jr_025_5e18                             ; $5db9: $38 $5d

    rst $20                                       ; $5dbb: $e7
    add $a8                                       ; $5dbc: $c6 $a8
    or d                                          ; $5dbe: $b2
    or h                                          ; $5dbf: $b4
    rst $20                                       ; $5dc0: $e7
    push hl                                       ; $5dc1: $e5
    ld d, a                                       ; $5dc2: $57
    ld h, l                                       ; $5dc3: $65
    jr jr_025_5de0                                ; $5dc4: $18 $1a

    cp d                                          ; $5dc6: $ba
    sbc $20                                       ; $5dc7: $de $20
    inc c                                         ; $5dc9: $0c
    sub [hl]                                      ; $5dca: $96
    sbc d                                         ; $5dcb: $9a
    push af                                       ; $5dcc: $f5
    rst $10                                       ; $5dcd: $d7
    cp $a7                                        ; $5dce: $fe $a7
    reti                                          ; $5dd0: $d9


    rst $38                                       ; $5dd1: $ff
    pop af                                        ; $5dd2: $f1
    ld d, d                                       ; $5dd3: $52
    jr nc, jr_025_5e33                            ; $5dd4: $30 $5d

    cp h                                          ; $5dd6: $bc
    xor $f1                                       ; $5dd7: $ee $f1
    ld h, a                                       ; $5dd9: $67
    ld b, a                                       ; $5dda: $47
    push af                                       ; $5ddb: $f5
    ld b, l                                       ; $5ddc: $45
    push af                                       ; $5ddd: $f5
    adc a                                         ; $5dde: $8f
    dec c                                         ; $5ddf: $0d

jr_025_5de0:
    jp nz, Jump_025_5a96                          ; $5de0: $c2 $96 $5a

    cp b                                          ; $5de3: $b8
    adc [hl]                                      ; $5de4: $8e
    ld e, [hl]                                    ; $5de5: $5e
    ld a, [c]                                     ; $5de6: $f2
    ld h, a                                       ; $5de7: $67
    ld c, e                                       ; $5de8: $4b
    db $eb                                        ; $5de9: $eb
    bit 6, h                                      ; $5dea: $cb $74
    ld d, c                                       ; $5dec: $51
    adc c                                         ; $5ded: $89

jr_025_5dee:
    ld b, c                                       ; $5dee: $41
    and l                                         ; $5def: $a5
    sbc l                                         ; $5df0: $9d
    rst $20                                       ; $5df1: $e7
    ld c, [hl]                                    ; $5df2: $4e
    adc c                                         ; $5df3: $89
    dec c                                         ; $5df4: $0d
    ld [hl-], a                                   ; $5df5: $32
    ld a, h                                       ; $5df6: $7c
    cp a                                          ; $5df7: $bf
    pop hl                                        ; $5df8: $e1
    jp $afae                                      ; $5df9: $c3 $ae $af


    sub e                                         ; $5dfc: $93
    push af                                       ; $5dfd: $f5
    add a                                         ; $5dfe: $87
    add l                                         ; $5dff: $85
    cp a                                          ; $5e00: $bf
    ld c, e                                       ; $5e01: $4b
    di                                            ; $5e02: $f3
    ld a, [c]                                     ; $5e03: $f2
    ld l, e                                       ; $5e04: $6b
    ld l, e                                       ; $5e05: $6b
    ld d, l                                       ; $5e06: $55
    ld b, a                                       ; $5e07: $47
    jr jr_025_5da0                                ; $5e08: $18 $96

    add c                                         ; $5e0a: $81
    xor e                                         ; $5e0b: $ab
    ld hl, sp-$4d                                 ; $5e0c: $f8 $b3
    and l                                         ; $5e0e: $a5
    pop af                                        ; $5e0f: $f1
    add hl, hl                                    ; $5e10: $29
    ld c, h                                       ; $5e11: $4c
    rlca                                          ; $5e12: $07
    push af                                       ; $5e13: $f5
    rst $30                                       ; $5e14: $f7
    xor d                                         ; $5e15: $aa
    xor h                                         ; $5e16: $ac
    ld l, l                                       ; $5e17: $6d

jr_025_5e18:
    ld a, h                                       ; $5e18: $7c
    ld a, h                                       ; $5e19: $7c
    ld c, d                                       ; $5e1a: $4a
    db $fd                                        ; $5e1b: $fd
    reti                                          ; $5e1c: $d9


    adc d                                         ; $5e1d: $8a
    ld a, [bc]                                    ; $5e1e: $0a
    sbc e                                         ; $5e1f: $9b
    rst $20                                       ; $5e20: $e7
    jp c, $feef                                   ; $5e21: $da $ef $fe

    ld [hl-], a                                   ; $5e24: $32
    or $f6                                        ; $5e25: $f6 $f6
    and l                                         ; $5e27: $a5
    ld e, a                                       ; $5e28: $5f
    ret c                                         ; $5e29: $d8

    ret nz                                        ; $5e2a: $c0

    ld b, a                                       ; $5e2b: $47
    dec de                                        ; $5e2c: $1b
    ld h, c                                       ; $5e2d: $61
    ld d, $df                                     ; $5e2e: $16 $df
    dec b                                         ; $5e30: $05
    xor d                                         ; $5e31: $aa
    ld sp, hl                                     ; $5e32: $f9

jr_025_5e33:
    adc $33                                       ; $5e33: $ce $33
    ldh [$7b], a                                  ; $5e35: $e0 $7b
    db $eb                                        ; $5e37: $eb
    ld c, e                                       ; $5e38: $4b
    or e                                          ; $5e39: $b3

jr_025_5e3a:
    ld c, [hl]                                    ; $5e3a: $4e
    adc d                                         ; $5e3b: $8a
    adc e                                         ; $5e3c: $8b
    ld e, [hl]                                    ; $5e3d: $5e
    rra                                           ; $5e3e: $1f
    ld e, a                                       ; $5e3f: $5f
    ld [hl], d                                    ; $5e40: $72
    pop bc                                        ; $5e41: $c1
    dec sp                                        ; $5e42: $3b
    call z, $ed73                                 ; $5e43: $cc $73 $ed
    ld e, a                                       ; $5e46: $5f
    jp nc, $2f3a                                  ; $5e47: $d2 $3a $2f

    and c                                         ; $5e4a: $a1
    jp nc, $ef93                                  ; $5e4b: $d2 $93 $ef

    add hl, sp                                    ; $5e4e: $39
    sub h                                         ; $5e4f: $94
    db $db                                        ; $5e50: $db
    cp [hl]                                       ; $5e51: $be
    adc $5d                                       ; $5e52: $ce $5d
    sub e                                         ; $5e54: $93
    ld h, [hl]                                    ; $5e55: $66
    ld [hl], l                                    ; $5e56: $75
    ld c, d                                       ; $5e57: $4a
    ld e, $61                                     ; $5e58: $1e $61
    sub [hl]                                      ; $5e5a: $96
    ld a, c                                       ; $5e5b: $79
    cp c                                          ; $5e5c: $b9
    ld d, h                                       ; $5e5d: $54
    ld e, a                                       ; $5e5e: $5f
    ret c                                         ; $5e5f: $d8

    call z, $0d16                                 ; $5e60: $cc $16 $0d
    ld a, a                                       ; $5e63: $7f
    rla                                           ; $5e64: $17
    ld d, $36                                     ; $5e65: $16 $36
    ld l, e                                       ; $5e67: $6b
    ccf                                           ; $5e68: $3f
    ld hl, sp-$14                                 ; $5e69: $f8 $ec
    ld d, a                                       ; $5e6b: $57
    scf                                           ; $5e6c: $37
    ld a, [c]                                     ; $5e6d: $f2
    ld [$2d03], sp                                ; $5e6e: $08 $03 $2d
    add hl, de                                    ; $5e71: $19
    cp [hl]                                       ; $5e72: $be
    rst $18                                       ; $5e73: $df
    ldh a, [$61]                                  ; $5e74: $f0 $61

jr_025_5e76:
    sub [hl]                                      ; $5e76: $96
    add l                                         ; $5e77: $85
    rla                                           ; $5e78: $17
    ld h, b                                       ; $5e79: $60
    ld e, [hl]                                    ; $5e7a: $5e
    ld a, [hl]                                    ; $5e7b: $7e
    ld [hl], b                                    ; $5e7c: $70
    jp $fc4e                                      ; $5e7d: $c3 $4e $fc


    ld sp, $606d                                  ; $5e80: $31 $6d $60
    ld l, c                                       ; $5e83: $69
    cpl                                           ; $5e84: $2f
    ld l, h                                       ; $5e85: $6c
    sub $a4                                       ; $5e86: $d6 $a4
    pop af                                        ; $5e88: $f1
    jp nz, $5f1d                                  ; $5e89: $c2 $1d $5f

    sbc [hl]                                      ; $5e8c: $9e
    ld h, [hl]                                    ; $5e8d: $66
    add hl, de                                    ; $5e8e: $19
    xor a                                         ; $5e8f: $af
    or b                                          ; $5e90: $b0
    di                                            ; $5e91: $f3
    inc c                                         ; $5e92: $0c
    ld hl, sp+$74                                 ; $5e93: $f8 $74
    sbc l                                         ; $5e95: $9d
    and a                                         ; $5e96: $a7
    ld [$31c6], a                                 ; $5e97: $ea $c6 $31
    ld d, c                                       ; $5e9a: $51
    cp $52                                        ; $5e9b: $fe $52
    add b                                         ; $5e9d: $80
    jr nc, @-$68                                  ; $5e9e: $30 $96

    ld e, d                                       ; $5ea0: $5a
    jr c, jr_025_5e3a                             ; $5ea1: $38 $97

    and $52                                       ; $5ea3: $e6 $52
    jr nc, jr_025_5e76                            ; $5ea5: $30 $cf

    dec b                                         ; $5ea7: $05
    rst $28                                       ; $5ea8: $ef
    cp e                                          ; $5ea9: $bb
    inc [hl]                                      ; $5eaa: $34
    ld c, a                                       ; $5eab: $4f
    ld d, e                                       ; $5eac: $53
    sub l                                         ; $5ead: $95
    pop af                                        ; $5eae: $f1
    rst $10                                       ; $5eaf: $d7
    set 0, d                                      ; $5eb0: $cb $c2
    ld h, [hl]                                    ; $5eb2: $66
    sub a                                         ; $5eb3: $97
    add sp, $65                                   ; $5eb4: $e8 $65
    cp h                                          ; $5eb6: $bc
    ld a, [$954b]                                 ; $5eb7: $fa $4b $95
    ld sp, $6105                                  ; $5eba: $31 $05 $61
    sub [hl]                                      ; $5ebd: $96
    add l                                         ; $5ebe: $85
    jp c, $3cec                                   ; $5ebf: $da $ec $3c

    inc bc                                        ; $5ec2: $03
    cp [hl]                                       ; $5ec3: $be
    or $4f                                        ; $5ec4: $f6 $4f
    rst $10                                       ; $5ec6: $d7
    ld c, c                                       ; $5ec7: $49
    ld [hl], c                                    ; $5ec8: $71
    pop de                                        ; $5ec9: $d1
    db $eb                                        ; $5eca: $eb
    call c, $8db5                                 ; $5ecb: $dc $b5 $8d
    rst $08                                       ; $5ece: $cf
    ld d, $a5                                     ; $5ecf: $16 $a5
    ld a, d                                       ; $5ed1: $7a

Jump_025_5ed2:
    ld l, h                                       ; $5ed2: $6c
    cp b                                          ; $5ed3: $b8
    or e                                          ; $5ed4: $b3
    call nc, $b5c2                                ; $5ed5: $d4 $c2 $b5
    rst $18                                       ; $5ed8: $df
    db $fd                                        ; $5ed9: $fd
    ld h, l                                       ; $5eda: $65
    ld sp, $7eb3                                  ; $5edb: $31 $b3 $7e
    add hl, hl                                    ; $5ede: $29
    sbc b                                         ; $5edf: $98
    rla                                           ; $5ee0: $17
    and l                                         ; $5ee1: $a5
    ld a, c                                       ; $5ee2: $79
    ld sp, hl                                     ; $5ee3: $f9
    ld [hl], l                                    ; $5ee4: $75
    ld e, [hl]                                    ; $5ee5: $5e
    jr nz, @+$6b                                  ; $5ee6: $20 $69

    ld a, h                                       ; $5ee8: $7c
    ret                                           ; $5ee9: $c9


    add l                                         ; $5eea: $85
    ret                                           ; $5eeb: $c9


    ld a, $3e                                     ; $5eec: $3e $3e
    sbc e                                         ; $5eee: $9b
    sbc l                                         ; $5eef: $9d
    or d                                          ; $5ef0: $b2
    ldh a, [rNR11]                                ; $5ef1: $f0 $11
    ld b, $96                                     ; $5ef3: $06 $96
    pop af                                        ; $5ef5: $f1
    ld a, [bc]                                    ; $5ef6: $0a
    cp e                                          ; $5ef7: $bb
    inc [hl]                                      ; $5ef8: $34
    sbc l                                         ; $5ef9: $9d
    and h                                         ; $5efa: $a4
    xor e                                         ; $5efb: $ab
    ld e, a                                       ; $5efc: $5f
    ld a, [bc]                                    ; $5efd: $0a
    or $1c                                        ; $5efe: $f6 $1c
    jp z, Jump_025_5f6d                           ; $5f00: $ca $6d $5f

jr_025_5f03:
    ld e, a                                       ; $5f03: $5f
    ld d, d                                       ; $5f04: $52
    push af                                       ; $5f05: $f5
    call c, $b129                                 ; $5f06: $dc $29 $b1

jr_025_5f09:
    ld e, l                                       ; $5f09: $5d
    ld e, a                                       ; $5f0a: $5f
    xor b                                         ; $5f0b: $a8
    db $ec                                        ; $5f0c: $ec
    rla                                           ; $5f0d: $17
    cp $d8                                        ; $5f0e: $fe $d8
    push hl                                       ; $5f10: $e5
    ret z                                         ; $5f11: $c8

    or c                                          ; $5f12: $b1
    sbc c                                         ; $5f13: $99
    sbc l                                         ; $5f14: $9d
    ld [hl-], a                                   ; $5f15: $32
    cp $bf                                        ; $5f16: $fe $bf
    ld c, $08                                     ; $5f18: $0e $08
    inc bc                                        ; $5f1a: $03
    and a                                         ; $5f1b: $a7
    call c, $e7ea                                 ; $5f1c: $dc $ea $e7
    add hl, sp                                    ; $5f1f: $39
    ld hl, sp+$5f                                 ; $5f20: $f8 $5f
    sub e                                         ; $5f22: $93
    ld b, $ad                                     ; $5f23: $06 $ad
    rst $20                                       ; $5f25: $e7
    adc a                                         ; $5f26: $8f
    dec h                                         ; $5f27: $25
    push de                                       ; $5f28: $d5
    ld a, h                                       ; $5f29: $7c
    pop bc                                        ; $5f2a: $c1
    ei                                            ; $5f2b: $fb
    ld b, d                                       ; $5f2c: $42
    and l                                         ; $5f2d: $a5
    ld h, [hl]                                    ; $5f2e: $66
    sub $0b                                       ; $5f2f: $d6 $0b
    rst $10                                       ; $5f31: $d7
    ld d, e                                       ; $5f32: $53
    ld h, b                                       ; $5f33: $60
    ld l, l                                       ; $5f34: $6d
    xor l                                         ; $5f35: $ad
    ld [$2f2b], a                                 ; $5f36: $ea $2b $2f
    adc a                                         ; $5f39: $8f
    jr nc, jr_025_5f03                            ; $5f3a: $30 $c7

    db $e4                                        ; $5f3c: $e4
    jp $5cbc                                      ; $5f3d: $c3 $bc $5c


    sbc b                                         ; $5f40: $98
    dec l                                         ; $5f41: $2d
    ld a, [de]                                    ; $5f42: $1a
    cp $42                                        ; $5f43: $fe $42
    xor l                                         ; $5f45: $ad
    rst $38                                       ; $5f46: $ff
    jp nz, $cc5f                                  ; $5f47: $c2 $5f $cc

    xor h                                         ; $5f4a: $ac
    rst $08                                       ; $5f4b: $cf
    ld d, [hl]                                    ; $5f4c: $56
    rst $28                                       ; $5f4d: $ef
    adc d                                         ; $5f4e: $8a
    ld bc, $292d                                  ; $5f4f: $01 $2d $29
    jp nc, $d770                                  ; $5f52: $d2 $70 $d7

    and h                                         ; $5f55: $a4
    ld e, c                                       ; $5f56: $59
    ld c, h                                       ; $5f57: $4c
    ld [hl], b                                    ; $5f58: $70
    or h                                          ; $5f59: $b4

Jump_025_5f5a:
    ld e, $d2                                     ; $5f5a: $1e $d2
    ld c, h                                       ; $5f5c: $4c
    inc bc                                        ; $5f5d: $03
    cp l                                          ; $5f5e: $bd
    add h                                         ; $5f5f: $84
    jr nc, jr_025_5f09                            ; $5f60: $30 $a7

    call c, $e7ea                                 ; $5f62: $dc $ea $e7
    jp nc, $eda0                                  ; $5f65: $d2 $a0 $ed

    ld hl, sp+$6b                                 ; $5f68: $f8 $6b
    db $fd                                        ; $5f6a: $fd
    ld e, l                                       ; $5f6b: $5d
    sbc a                                         ; $5f6c: $9f

Jump_025_5f6d:
    ld d, d                                       ; $5f6d: $52
    ld a, d                                       ; $5f6e: $7a
    ld a, c                                       ; $5f6f: $79
    add hl, de                                    ; $5f70: $19
    sub h                                         ; $5f71: $94
    ld [hl], h                                    ; $5f72: $74
    add h                                         ; $5f73: $84
    ld bc, $5cc7                                  ; $5f74: $01 $c7 $5c
    ld b, [hl]                                    ; $5f77: $46
    dec [hl]                                      ; $5f78: $35
    ld e, a                                       ; $5f79: $5f

Call_025_5f7a:
    xor b                                         ; $5f7a: $a8
    push af                                       ; $5f7b: $f5
    rst $18                                       ; $5f7c: $df
    push af                                       ; $5f7d: $f5
    ld a, c                                       ; $5f7e: $79
    ld d, c                                       ; $5f7f: $51
    sbc a                                         ; $5f80: $9f
    rst $18                                       ; $5f81: $df
    ldh a, [$d1]                                  ; $5f82: $f0 $d1
    adc [hl]                                      ; $5f84: $8e
    ld [hl], $3e                                  ; $5f85: $36 $3e
    sub [hl]                                      ; $5f87: $96

jr_025_5f88:
    ld d, h                                       ; $5f88: $54
    di                                            ; $5f89: $f3
    dec b                                         ; $5f8a: $05
    rst $10                                       ; $5f8b: $d7
    ld a, [$1d33]                                 ; $5f8c: $fa $33 $1d
    add h                                         ; $5f8f: $84
    ld bc, $5a16                                  ; $5f90: $01 $16 $5a
    push af                                       ; $5f93: $f5

Jump_025_5f94:
    pop af                                        ; $5f94: $f1
    db $db                                        ; $5f95: $db
    and d                                         ; $5f96: $a2
    ld a, [hl]                                    ; $5f97: $7e
    sub e                                         ; $5f98: $93
    sub [hl]                                      ; $5f99: $96
    or $9a                                        ; $5f9a: $f6 $9a
    inc [hl]                                      ; $5f9c: $34
    ld [hl-], a                                   ; $5f9d: $32
    cp b                                          ; $5f9e: $b8
    inc d                                         ; $5f9f: $14
    sbc b                                         ; $5fa0: $98
    xor b                                         ; $5fa1: $a8
    ld [hl-], a                                   ; $5fa2: $32
    ei                                            ; $5fa3: $fb
    ld a, [bc]                                    ; $5fa4: $0a
    ld hl, sp-$66                                 ; $5fa5: $f8 $9a
    ld d, a                                       ; $5fa7: $57
    sbc c                                         ; $5fa8: $99
    ld a, [$335a]                                 ; $5fa9: $fa $5a $33
    ldh [rHDMA5], a                               ; $5fac: $e0 $55
    inc e                                         ; $5fae: $1c
    cp b                                          ; $5faf: $b8
    or e                                          ; $5fb0: $b3
    ld c, h                                       ; $5fb1: $4c
    ld a, c                                       ; $5fb2: $79
    dec d                                         ; $5fb3: $15
    or [hl]                                       ; $5fb4: $b6
    ld h, $cd                                     ; $5fb5: $26 $cd
    ld [hl], h                                    ; $5fb7: $74
    ld [hl], b                                    ; $5fb8: $70
    add hl, hl                                    ; $5fb9: $29
    jr nc, jr_025_600d                            ; $5fba: $30 $51

    ld h, l                                       ; $5fbc: $65
    dec e                                         ; $5fbd: $1d
    cp c                                          ; $5fbe: $b9
    inc e                                         ; $5fbf: $1c
    rst $38                                       ; $5fc0: $ff
    ldh a, [$e9]                                  ; $5fc1: $f0 $e9
    ld e, d                                       ; $5fc3: $5a
    ld d, l                                       ; $5fc4: $55
    and h                                         ; $5fc5: $a4
    ld e, c                                       ; $5fc6: $59
    rst $30                                       ; $5fc7: $f7
    ld [hl], h                                    ; $5fc8: $74
    ld a, a                                       ; $5fc9: $7f
    reti                                          ; $5fca: $d9


    ld [hl], c                                    ; $5fcb: $71
    ld a, [de]                                    ; $5fcc: $1a
    and [hl]                                      ; $5fcd: $a6
    add c                                         ; $5fce: $81
    push af                                       ; $5fcf: $f5
    cp h                                          ; $5fd0: $bc
    ld e, [hl]                                    ; $5fd1: $5e
    sub l                                         ; $5fd2: $95
    add a                                         ; $5fd3: $87
    add hl, hl                                    ; $5fd4: $29
    or c                                          ; $5fd5: $b1
    push af                                       ; $5fd6: $f5
    cp h                                          ; $5fd7: $bc
    inc e                                         ; $5fd8: $1c
    ld d, l                                       ; $5fd9: $55
    jr jr_025_5f88                                ; $5fda: $18 $ac

    sbc e                                         ; $5fdc: $9b
    ld a, [bc]                                    ; $5fdd: $0a
    db $eb                                        ; $5fde: $eb
    or d                                          ; $5fdf: $b2
    ld l, [hl]                                    ; $5fe0: $6e
    ld c, c                                       ; $5fe1: $49
    add c                                         ; $5fe2: $81
    xor b                                         ; $5fe3: $a8
    sbc e                                         ; $5fe4: $9b
    xor b                                         ; $5fe5: $a8
    ld a, [hl]                                    ; $5fe6: $7e
    sub e                                         ; $5fe7: $93
    and b                                         ; $5fe8: $a0
    dec bc                                        ; $5fe9: $0b
    ld b, $3d                                     ; $5fea: $06 $3d
    jp z, Jump_000_3c0f                           ; $5fec: $ca $0f $3c

    inc sp                                        ; $5fef: $33
    xor $c2                                       ; $5ff0: $ee $c2
    ret nz                                        ; $5ff2: $c0

    ld l, a                                       ; $5ff3: $6f
    adc h                                         ; $5ff4: $8c
    add e                                         ; $5ff5: $83
    db $eb                                        ; $5ff6: $eb
    ld a, [hl]                                    ; $5ff7: $7e
    add hl, hl                                    ; $5ff8: $29
    jr jr_025_6046                                ; $5ff9: $18 $4b

    sbc [hl]                                      ; $5ffb: $9e
    sub [hl]                                      ; $5ffc: $96
    inc [hl]                                      ; $5ffd: $34
    cpl                                           ; $5ffe: $2f
    cp a                                          ; $5fff: $bf
    di                                            ; $6000: $f3
    or d                                          ; $6001: $b2
    adc l                                         ; $6002: $8d
    sub $43                                       ; $6003: $d6 $43
    sbc d                                         ; $6005: $9a
    ld l, c                                       ; $6006: $69
    and b                                         ; $6007: $a0
    sub a                                         ; $6008: $97
    cp b                                          ; $6009: $b8
    ld l, e                                       ; $600a: $6b
    ld d, l                                       ; $600b: $55
    sub c                                         ; $600c: $91

jr_025_600d:
    ld b, $61                                     ; $600d: $06 $61
    dec a                                         ; $600f: $3d
    jp z, $9daf                                   ; $6010: $ca $af $9d

    ld e, c                                       ; $6013: $59
    rra                                           ; $6014: $1f
    rlc a                                         ; $6015: $cb $07
    xor d                                         ; $6017: $aa
    ld sp, hl                                     ; $6018: $f9
    ldh [$3f], a                                  ; $6019: $e0 $3f
    sbc h                                         ; $601b: $9c
    rst $20                                       ; $601c: $e7
    jp c, $eb3f                                   ; $601d: $da $3f $eb

    ld c, e                                       ; $6020: $4b
    or e                                          ; $6021: $b3
    ld a, b                                       ; $6022: $78
    add e                                         ; $6023: $83
    ld [c], a                                     ; $6024: $e2
    sub e                                         ; $6025: $93
    ld d, a                                       ; $6026: $57
    halt                                          ; $6027: $76
    add hl, hl                                    ; $6028: $29
    ld b, b                                       ; $6029: $40
    dec sp                                        ; $602a: $3b
    cp $5a                                        ; $602b: $fe $5a
    ld a, a                                       ; $602d: $7f
    rst $10                                       ; $602e: $d7
    and a                                         ; $602f: $a7
    sub h                                         ; $6030: $94
    ld e, [hl]                                    ; $6031: $5e
    ld e, [hl]                                    ; $6032: $5e
    and $d2                                       ; $6033: $e6 $d2
    ld [hl], b                                    ; $6035: $70
    rst $10                                       ; $6036: $d7
    xor d                                         ; $6037: $aa
    ld [hl+], a                                   ; $6038: $22
    dec c                                         ; $6039: $0d
    jp nz, Jump_025_4147                          ; $603a: $c2 $47 $41

    and a                                         ; $603d: $a7
    inc h                                         ; $603e: $24
    ei                                            ; $603f: $fb
    cp b                                          ; $6040: $b8
    db $d3                                        ; $6041: $d3
    inc sp                                        ; $6042: $33
    dec e                                         ; $6043: $1d
    inc bc                                        ; $6044: $03
    rst $00                                       ; $6045: $c7

jr_025_6046:
    ret z                                         ; $6046: $c8

    ld a, l                                       ; $6047: $7d
    or [hl]                                       ; $6048: $b6
    ld d, e                                       ; $6049: $53
    sbc $3d                                       ; $604a: $de $3d
    ld a, $60                                     ; $604c: $3e $60
    rst $00                                       ; $604e: $c7
    ld e, h                                       ; $604f: $5c
    ld [hl], a                                    ; $6050: $77

jr_025_6051:
    and l                                         ; $6051: $a5
    ld b, $03                                     ; $6052: $06 $03
    dec a                                         ; $6054: $3d
    ld d, e                                       ; $6055: $53
    ld b, d                                       ; $6056: $42
    ld a, $93                                     ; $6057: $3e $93
    ld h, c                                       ; $6059: $61
    daa                                           ; $605a: $27
    dec hl                                        ; $605b: $2b
    ld sp, $fad1                                  ; $605c: $31 $d1 $fa
    rst $28                                       ; $605f: $ef
    db $f4                                        ; $6060: $f4
    ld c, h                                       ; $6061: $4c
    rst $00                                       ; $6062: $c7
    ld b, a                                       ; $6063: $47
    ld d, l                                       ; $6064: $55
    ld c, c                                       ; $6065: $49
    rst $10                                       ; $6066: $d7
    rra                                           ; $6067: $1f
    inc bc                                        ; $6068: $03
    xor l                                         ; $6069: $ad
    rra                                           ; $606a: $1f
    ld h, e                                       ; $606b: $63
    ld [hl], d                                    ; $606c: $72
    rst $10                                       ; $606d: $d7
    xor d                                         ; $606e: $aa
    ld [hl+], a                                   ; $606f: $22
    dec c                                         ; $6070: $0d
    jp nz, $8b3d                                  ; $6071: $c2 $3d $8b

    ld a, d                                       ; $6074: $7a
    dec c                                         ; $6075: $0d
    ld b, [hl]                                    ; $6076: $46
    rst $08                                       ; $6077: $cf
    ld [hl], e                                    ; $6078: $73
    rst $10                                       ; $6079: $d7
    xor d                                         ; $607a: $aa
    ld [hl+], a                                   ; $607b: $22
    ld c, l                                       ; $607c: $4d
    ld d, a                                       ; $607d: $57
    inc c                                         ; $607e: $0c
    and a                                         ; $607f: $a7
    call c, $e7ea                                 ; $6080: $dc $ea $e7
    add hl, sp                                    ; $6083: $39
    ld hl, sp+$5f                                 ; $6084: $f8 $5f
    sub e                                         ; $6086: $93
    add [hl]                                      ; $6087: $86
    cp e                                          ; $6088: $bb
    ld d, [hl]                                    ; $6089: $56
    dec d                                         ; $608a: $15
    ld l, c                                       ; $608b: $69
    db $10                                        ; $608c: $10
    ld b, $3d                                     ; $608d: $06 $3d
    or h                                          ; $608f: $b4
    cp $d3                                        ; $6090: $fe $d3
    ld [hl], l                                    ; $6092: $75
    ld l, [hl]                                    ; $6093: $6e
    push hl                                       ; $6094: $e5
    ld b, [hl]                                    ; $6095: $46
    sbc [hl]                                      ; $6096: $9e
    cp e                                          ; $6097: $bb
    db $eb                                        ; $6098: $eb
    or l                                          ; $6099: $b5
    jr jr_025_60b3                                ; $609a: $18 $17

    dec d                                         ; $609c: $15
    ld a, h                                       ; $609d: $7c
    ld sp, $7829                                  ; $609e: $31 $29 $78
    ld b, c                                       ; $60a1: $41
    jr jr_025_6051                                ; $60a2: $18 $ad

    sub a                                         ; $60a4: $97

Call_025_60a5:
jr_025_60a5:
    cp e                                          ; $60a5: $bb
    ld d, [hl]                                    ; $60a6: $56
    dec d                                         ; $60a7: $15
    ld l, c                                       ; $60a8: $69
    db $10                                        ; $60a9: $10
    ld b, $c7                                     ; $60aa: $06 $c7
    res 7, a                                      ; $60ac: $cb $bf
    ld e, a                                       ; $60ae: $5f
    ld a, [bc]                                    ; $60af: $0a
    add b                                         ; $60b0: $80
    cp e                                          ; $60b1: $bb
    ld d, [hl]                                    ; $60b2: $56

jr_025_60b3:
    dec d                                         ; $60b3: $15
    ld l, c                                       ; $60b4: $69
    db $10                                        ; $60b5: $10
    ld b, $ad                                     ; $60b6: $06 $ad
    ret                                           ; $60b8: $c9


    or e                                          ; $60b9: $b3
    ld h, [hl]                                    ; $60ba: $66
    inc l                                         ; $60bb: $2c
    cp c                                          ; $60bc: $b9
    ld l, e                                       ; $60bd: $6b
    ld d, l                                       ; $60be: $55
    sub c                                         ; $60bf: $91
    ld b, $61                                     ; $60c0: $06 $61
    ld b, a                                       ; $60c2: $47
    ld b, l                                       ; $60c3: $45
    ld e, [hl]                                    ; $60c4: $5e
    dec de                                        ; $60c5: $1b
    jr jr_025_60a5                                ; $60c6: $18 $dd

    ld [$39e7], a                                 ; $60c8: $ea $e7 $39
    ld hl, sp+$5f                                 ; $60cb: $f8 $5f
    sub e                                         ; $60cd: $93
    add [hl]                                      ; $60ce: $86
    cp e                                          ; $60cf: $bb
    ld d, [hl]                                    ; $60d0: $56
    dec d                                         ; $60d1: $15
    ld l, c                                       ; $60d2: $69
    db $10                                        ; $60d3: $10
    ld b, $16                                     ; $60d4: $06 $16
    xor a                                         ; $60d6: $af
    pop bc                                        ; $60d7: $c1
    ld l, h                                       ; $60d8: $6c
    ld b, e                                       ; $60d9: $43
    di                                            ; $60da: $f3
    call c, Call_000_0679                         ; $60db: $dc $79 $06
    ld a, h                                       ; $60de: $7c
    cp h                                          ; $60df: $bc
    ld [de], a                                    ; $60e0: $12
    ld a, e                                       ; $60e1: $7b
    sbc c                                         ; $60e2: $99
    ld c, d                                       ; $60e3: $4a
    ld a, [de]                                    ; $60e4: $1a
    ld h, d                                       ; $60e5: $62
    call c, $a05d                                 ; $60e6: $dc $5d $a0

jr_025_60e9:
    sbc d                                         ; $60e9: $9a
    rst $28                                       ; $60ea: $ef
    ld a, d                                       ; $60eb: $7a
    ld d, a                                       ; $60ec: $57
    inc c                                         ; $60ed: $0c
    sub [hl]                                      ; $60ee: $96
    push de                                       ; $60ef: $d5
    rst $38                                       ; $60f0: $ff
    dec sp                                        ; $60f1: $3b
    ld h, e                                       ; $60f2: $63
    ld a, [c]                                     ; $60f3: $f2
    ld a, [de]                                    ; $60f4: $1a
    ld e, [hl]                                    ; $60f5: $5e
    ld a, [bc]                                    ; $60f6: $0a
    and [hl]                                      ; $60f7: $a6
    db $ed                                        ; $60f8: $ed
    inc [hl]                                      ; $60f9: $34
    cp [hl]                                       ; $60fa: $be
    xor d                                         ; $60fb: $aa
    call c, $feaa                                 ; $60fc: $dc $aa $fe
    inc b                                         ; $60ff: $04
    ld l, b                                       ; $6100: $68

jr_025_6101:
    sub [hl]                                      ; $6101: $96
    pop af                                        ; $6102: $f1

jr_025_6103:
    ld c, c                                       ; $6103: $49
    db $ec                                        ; $6104: $ec
    ld h, l                                       ; $6105: $65
    ld a, h                                       ; $6106: $7c
    ld d, c                                       ; $6107: $51
    rst $18                                       ; $6108: $df
    push af                                       ; $6109: $f5
    add l                                         ; $610a: $85
    xor a                                         ; $610b: $af
    inc b                                         ; $610c: $04
    ld e, l                                       ; $610d: $5d
    ld sp, $312d                                  ; $610e: $31 $2d $31
    ld sp, hl                                     ; $6111: $f9
    ld sp, $b86d                                  ; $6112: $31 $6d $b8
    cp e                                          ; $6115: $bb
    ld b, b                                       ; $6116: $40
    dec [hl]                                      ; $6117: $35
    rst $18                                       ; $6118: $df
    ld [hl], l                                    ; $6119: $75
    xor $5a                                       ; $611a: $ee $5a
    ld d, l                                       ; $611c: $55
    and h                                         ; $611d: $a4
    jp hl                                         ; $611e: $e9


    adc d                                         ; $611f: $8a
    ld bc, $f196                                  ; $6120: $01 $96 $f1
    rla                                           ; $6123: $17
    jp z, $ab2c                                   ; $6124: $ca $2c $ab

    jp nc, $b644                                  ; $6127: $d2 $44 $b6

    jr nz, jr_025_6103                            ; $612a: $20 $d7

    sub $aa                                       ; $612c: $d6 $aa
    ld a, $cf                                     ; $612e: $3e $cf
    or l                                          ; $6130: $b5
    sbc a                                         ; $6131: $9f
    ld hl, $960c                                  ; $6132: $21 $0c $96
    add c                                         ; $6135: $81
    rst $18                                       ; $6136: $df
    jr jr_025_6150                                ; $6137: $18 $17

    cp h                                          ; $6139: $bc
    cpl                                           ; $613a: $2f
    ld h, $f8                                     ; $613b: $26 $f8
    ld l, $cd                                     ; $613d: $2e $cd
    res 0, l                                      ; $613f: $cb $85
    ld [hl], l                                    ; $6141: $75
    and d                                         ; $6142: $a2
    ld d, [hl]                                    ; $6143: $56
    adc a                                         ; $6144: $8f
    jr nc, @-$68                                  ; $6145: $30 $96

    pop af                                        ; $6147: $f1
    ld c, c                                       ; $6148: $49
    db $ec                                        ; $6149: $ec
    ld h, l                                       ; $614a: $65
    ld a, h                                       ; $614b: $7c
    ld a, c                                       ; $614c: $79
    ld sp, hl                                     ; $614d: $f9
    or l                                          ; $614e: $b5
    ld l, d                                       ; $614f: $6a

jr_025_6150:
    jr nz, jr_025_60e9                            ; $6150: $20 $97

    xor l                                         ; $6152: $ad
    jr z, jr_025_6101                             ; $6153: $28 $ac

    db $fd                                        ; $6155: $fd
    ld c, a                                       ; $6156: $4f
    ld [$ad03], sp                                ; $6157: $08 $03 $ad
    ld l, d                                       ; $615a: $6a
    db $fd                                        ; $615b: $fd
    dec [hl]                                      ; $615c: $35
    ld l, c                                       ; $615d: $69
    and $1a                                       ; $615e: $e6 $1a
    db $eb                                        ; $6160: $eb
    rst $08                                       ; $6161: $cf
    and $b9                                       ; $6162: $e6 $b9
    ld d, [hl]                                    ; $6164: $56
    dec c                                         ; $6165: $0d
    db $e4                                        ; $6166: $e4
    or d                                          ; $6167: $b2
    xor [hl]                                      ; $6168: $ae
    ld l, e                                       ; $6169: $6b
    db $fd                                        ; $616a: $fd
    dec d                                         ; $616b: $15
    dec b                                         ; $616c: $05
    xor d                                         ; $616d: $aa
    ld sp, hl                                     ; $616e: $f9
    ld [c], a                                     ; $616f: $e2
    db $db                                        ; $6170: $db
    cp [hl]                                       ; $6171: $be
    ld [hl], d                                    ; $6172: $72
    ld h, c                                       ; $6173: $61
    push bc                                       ; $6174: $c5
    ld hl, sp+$42                                 ; $6175: $f8 $42
    ld d, e                                       ; $6177: $53
    sub l                                         ; $6178: $95
    ld b, l                                       ; $6179: $45
    push af                                       ; $617a: $f5
    adc a                                         ; $617b: $8f
    dec c                                         ; $617c: $0d
    jp nz, Jump_025_5816                          ; $617d: $c2 $16 $58

    xor e                                         ; $6180: $ab
    ld b, $72                                     ; $6181: $06 $72
    reti                                          ; $6183: $d9


    ldh [rRP], a                                  ; $6184: $e0 $56
    push af                                       ; $6186: $f5
    xor [hl]                                      ; $6187: $ae
    or e                                          ; $6188: $b3
    xor h                                         ; $6189: $ac
    xor b                                         ; $618a: $a8
    push af                                       ; $618b: $f5
    xor c                                         ; $618c: $a9
    and $83                                       ; $618d: $e6 $83
    ld a, a                                       ; $618f: $7f
    ld e, d                                       ; $6190: $5a
    cp c                                          ; $6191: $b9
    pop hl                                        ; $6192: $e1
    db $ec                                        ; $6193: $ec
    sub h                                         ; $6194: $94
    add hl, hl                                    ; $6195: $29
    ld e, a                                       ; $6196: $5f
    ld l, [hl]                                    ; $6197: $6e
    ld a, h                                       ; $6198: $7c
    add h                                         ; $6199: $84
    ld bc, $d2a7                                  ; $619a: $01 $a7 $d2
    rst $08                                       ; $619d: $cf
    res 4, l                                      ; $619e: $cb $a5
    and b                                         ; $61a0: $a0
    ld b, $b3                                     ; $61a1: $06 $b3
    ld d, e                                       ; $61a3: $53
    ld b, $46                                     ; $61a4: $06 $46
    cp [hl]                                       ; $61a6: $be
    rst $28                                       ; $61a7: $ef
    ld d, [hl]                                    ; $61a8: $56
    dec c                                         ; $61a9: $0d
    db $e4                                        ; $61aa: $e4
    or d                                          ; $61ab: $b2

jr_025_61ac:
    ld e, l                                       ; $61ac: $5d
    and b                                         ; $61ad: $a0
    sbc d                                         ; $61ae: $9a
    xor a                                         ; $61af: $af
    adc d                                         ; $61b0: $8a
    ld l, d                                       ; $61b1: $6a
    ret nz                                        ; $61b2: $c0

    dec h                                         ; $61b3: $25
    dec sp                                        ; $61b4: $3b
    dec h                                         ; $61b5: $25
    db $db                                        ; $61b6: $db
    or a                                          ; $61b7: $b7
    ld b, d                                       ; $61b8: $42
    ld l, e                                       ; $61b9: $6b
    db $fd                                        ; $61ba: $fd
    ld a, [de]                                    ; $61bb: $1a
    db $ec                                        ; $61bc: $ec
    jp nc, $85ca                                  ; $61bd: $d2 $ca $85

    dec d                                         ; $61c0: $15
    db $e3                                        ; $61c1: $e3
    db $d3                                        ; $61c2: $d3
    jr jr_025_61ac                                ; $61c3: $18 $e7

    push hl                                       ; $61c5: $e5
    rst $20                                       ; $61c6: $e7
    scf                                           ; $61c7: $37
    db $fc                                        ; $61c8: $fc
    ld b, l                                       ; $61c9: $45
    push af                                       ; $61ca: $f5
    adc a                                         ; $61cb: $8f
    dec c                                         ; $61cc: $0d
    jp nz, Jump_000_0aad                          ; $61cd: $c2 $ad $0a

    ld l, e                                       ; $61d0: $6b
    push de                                       ; $61d1: $d5
    ld b, b                                       ; $61d2: $40
    ld l, $5b                                     ; $61d3: $2e $5b
    ei                                            ; $61d5: $fb
    sbc a                                         ; $61d6: $9f
    ld d, $48                                     ; $61d7: $16 $48
    ld a, [de]                                    ; $61d9: $1a
    ld h, d                                       ; $61da: $62
    rst $08                                       ; $61db: $cf
    cp d                                          ; $61dc: $ba
    ld h, d                                       ; $61dd: $62
    add a                                         ; $61de: $87
    dec e                                         ; $61df: $1d
    or [hl]                                       ; $61e0: $b6
    halt                                          ; $61e1: $76
    cp d                                          ; $61e2: $ba
    rst $00                                       ; $61e3: $c7
    add a                                         ; $61e4: $87
    and l                                         ; $61e5: $a5
    cp l                                          ; $61e6: $bd
    sbc [hl]                                      ; $61e7: $9e
    scf                                           ; $61e8: $37
    ld [$f89e], sp                                ; $61e9: $08 $9e $f8
    adc a                                         ; $61ec: $8f
    ld l, h                                       ; $61ed: $6c
    db $dd                                        ; $61ee: $dd
    db $d3                                        ; $61ef: $d3
    ld l, a                                       ; $61f0: $6f
    jp nc, $e692                                  ; $61f1: $d2 $92 $e6

    push hl                                       ; $61f4: $e5
    rst $00                                       ; $61f5: $c7
    ld l, e                                       ; $61f6: $6b
    adc h                                         ; $61f7: $8c
    call c, Call_025_761d                         ; $61f8: $dc $1d $76
    ret c                                         ; $61fb: $d8

    jp c, $1ee9                                   ; $61fc: $da $e9 $1e

    rra                                           ; $61ff: $1f
    sub [hl]                                      ; $6200: $96
    or $7a                                        ; $6201: $f6 $7a
    sbc $20                                       ; $6203: $de $20
    ld a, b                                       ; $6205: $78
    ld [c], a                                     ; $6206: $e2
    ccf                                           ; $6207: $3f
    or d                                          ; $6208: $b2
    ld [hl], l                                    ; $6209: $75
    ld c, a                                       ; $620a: $4f
    cp a                                          ; $620b: $bf
    ld c, c                                       ; $620c: $49
    ld [$0c21], sp                                ; $620d: $08 $21 $0c
    sub [hl]                                      ; $6210: $96
    add l                                         ; $6211: $85
    rla                                           ; $6212: $17
    ld h, b                                       ; $6213: $60
    ld h, c                                       ; $6214: $61
    or e                                          ; $6215: $b3

Jump_025_6216:
    jr nc, jr_025_625b                            ; $6216: $30 $43

    add h                                         ; $6218: $84
    db $01                                        ; $6219: $01

    db $dd, $8c, $c8, $93, $ef, $34, $f3, $e0, $18

    cp l                                          ; $6223: $bd
    jp nc, $be2c                                  ; $6224: $d2 $2c $be

    ld a, [bc]                                    ; $6227: $0a
    ld c, l                                       ; $6228: $4d
    ld b, a                                       ; $6229: $47
    rst $08                                       ; $622a: $cf
    rrca                                          ; $622b: $0f
    ld a, [hl-]                                   ; $622c: $3a
    rra                                           ; $622d: $1f
    ld h, e                                       ; $622e: $63
    rla                                           ; $622f: $17
    inc c                                         ; $6230: $0c
    dec l                                         ; $6231: $2d
    ld l, d                                       ; $6232: $6a
    cp l                                          ; $6233: $bd
    inc d                                         ; $6234: $14
    db $ec                                        ; $6235: $ec
    ld a, b                                       ; $6236: $78
    dec c                                         ; $6237: $0d
    rra                                           ; $6238: $1f

jr_025_6239:
    ld hl, $0184                                  ; $6239: $21 $84 $01
    rst $00                                       ; $623c: $c7
    ld l, e                                       ; $623d: $6b
    ld hl, sp+$6b                                 ; $623e: $f8 $6b
    ld d, c                                       ; $6240: $51
    db $eb                                        ; $6241: $eb
    or e                                          ; $6242: $b3
    ld l, $18                                     ; $6243: $2e $18
    cp l                                          ; $6245: $bd
    jp nc, $a8ac                                  ; $6246: $d2 $ac $a8

    push af                                       ; $6249: $f5
    xor c                                         ; $624a: $a9
    and $ab                                       ; $624b: $e6 $ab
    ld [hl-], a                                   ; $624d: $32
    add $af                                       ; $624e: $c6 $af
    db $fc                                        ; $6250: $fc
    reti                                          ; $6251: $d9


    inc [hl]                                      ; $6252: $34
    add $79                                       ; $6253: $c6 $79
    ld sp, hl                                     ; $6255: $f9
    dec e                                         ; $6256: $1d
    and a                                         ; $6257: $a7
    ld h, c                                       ; $6258: $61
    ld a, [de]                                    ; $6259: $1a
    ld e, b                                       ; $625a: $58

jr_025_625b:
    rst $08                                       ; $625b: $cf
    db $eb                                        ; $625c: $eb
    ld d, l                                       ; $625d: $55
    ld a, c                                       ; $625e: $79
    ld e, b                                       ; $625f: $58
    rst $28                                       ; $6260: $ef
    db $eb                                        ; $6261: $eb
    ld a, c                                       ; $6262: $79
    add hl, sp                                    ; $6263: $39
    xor d                                         ; $6264: $aa
    jr nc, jr_025_62bf                            ; $6265: $30 $58

    scf                                           ; $6267: $37

jr_025_6268:
    dec d                                         ; $6268: $15
    ld b, $a3                                     ; $6269: $06 $a3
    ld a, a                                       ; $626b: $7f
    or $6c                                        ; $626c: $f6 $6c
    halt                                          ; $626e: $76
    jp z, $5cbc                                   ; $626f: $ca $bc $5c

    ld e, b                                       ; $6272: $58
    sub l                                         ; $6273: $95
    ld h, c                                       ; $6274: $61
    ei                                            ; $6275: $fb
    sub d                                         ; $6276: $92
    ld a, [$424d]                                 ; $6277: $fa $4d $42
    jr jr_025_6239                                ; $627a: $18 $bd

    jp nc, $fe8c                                  ; $627c: $d2 $8c $fe

    reti                                          ; $627f: $d9


    inc a                                         ; $6280: $3c
    rlca                                          ; $6281: $07
    rra                                           ; $6282: $1f
    cp a                                          ; $6283: $bf
    ld a, [c]                                     ; $6284: $f2
    push de                                       ; $6285: $d5
    cp d                                          ; $6286: $ba
    xor c                                         ; $6287: $a9
    or b                                          ; $6288: $b0
    jp c, $9198                                   ; $6289: $da $98 $91

    ld c, e                                       ; $628c: $4b
    pop bc                                        ; $628d: $c1
    ld [hl], h                                    ; $628e: $74
    and c                                         ; $628f: $a1
    ld b, $b7                                     ; $6290: $06 $b7
    jp nc, $a7b8                                  ; $6292: $d2 $b8 $a7

    ld a, [hl+]                                   ; $6295: $2a
    dec c                                         ; $6296: $0d
    ld sp, hl                                     ; $6297: $f9
    srl h                                         ; $6298: $cb $3c
    rlca                                          ; $629a: $07
    rst $28                                       ; $629b: $ef
    inc sp                                        ; $629c: $33
    sbc l                                         ; $629d: $9d
    jp hl                                         ; $629e: $e9


    ld a, [hl+]                                   ; $629f: $2a
    dec d                                         ; $62a0: $15
    or [hl]                                       ; $62a1: $b6
    ld a, [hl+]                                   ; $62a2: $2a
    jp $25f6                                      ; $62a3: $c3 $f6 $25


    push af                                       ; $62a6: $f5
    sbc e                                         ; $62a7: $9b
    add h                                         ; $62a8: $84
    jr nc, jr_025_6268                            ; $62a9: $30 $bd

    jp nc, $a8ac                                  ; $62ab: $d2 $ac $a8

    push af                                       ; $62ae: $f5
    xor c                                         ; $62af: $a9
    and $ab                                       ; $62b0: $e6 $ab
    ld [hl-], a                                   ; $62b2: $32
    add $af                                       ; $62b3: $c6 $af
    db $fc                                        ; $62b5: $fc
    reti                                          ; $62b6: $d9


    inc [hl]                                      ; $62b7: $34
    add $79                                       ; $62b8: $c6 $79
    ld sp, hl                                     ; $62ba: $f9
    dec e                                         ; $62bb: $1d
    and a                                         ; $62bc: $a7
    ld h, c                                       ; $62bd: $61
    ld a, [de]                                    ; $62be: $1a

jr_025_62bf:
    ld e, b                                       ; $62bf: $58
    rst $08                                       ; $62c0: $cf
    db $eb                                        ; $62c1: $eb
    ld d, l                                       ; $62c2: $55
    ld a, c                                       ; $62c3: $79
    ld e, b                                       ; $62c4: $58
    rst $28                                       ; $62c5: $ef
    db $eb                                        ; $62c6: $eb
    ld a, c                                       ; $62c7: $79
    add hl, sp                                    ; $62c8: $39
    xor d                                         ; $62c9: $aa
    jr nc, jr_025_6324                            ; $62ca: $30 $58

    scf                                           ; $62cc: $37
    dec d                                         ; $62cd: $15
    ld b, $a3                                     ; $62ce: $06 $a3
    ld a, a                                       ; $62d0: $7f
    or $6c                                        ; $62d1: $f6 $6c
    halt                                          ; $62d3: $76
    jp z, $5cbc                                   ; $62d4: $ca $bc $5c

    ld e, b                                       ; $62d7: $58
    and l                                         ; $62d8: $a5
    jp nz, Jump_025_6556                          ; $62d9: $c2 $56 $65

    ret c                                         ; $62dc: $d8

    cp [hl]                                       ; $62dd: $be
    and h                                         ; $62de: $a4
    ld a, [hl]                                    ; $62df: $7e
    sub e                                         ; $62e0: $93
    ret nc                                        ; $62e1: $d0

    adc [hl]                                      ; $62e2: $8e
    ld [hl+], a                                   ; $62e3: $22
    or [hl]                                       ; $62e4: $b6
    ld h, $cd                                     ; $62e5: $26 $cd
    add sp, -$61                                  ; $62e7: $e8 $9f
    call $f073                                    ; $62e9: $cd $73 $f0
    pop af                                        ; $62ec: $f1
    dec hl                                        ; $62ed: $2b
    ld e, a                                       ; $62ee: $5f
    xor l                                         ; $62ef: $ad
    sbc e                                         ; $62f0: $9b
    ld a, [bc]                                    ; $62f1: $0a
    xor e                                         ; $62f2: $ab
    adc l                                         ; $62f3: $8d
    add hl, de                                    ; $62f4: $19
    cp c                                          ; $62f5: $b9
    inc d                                         ; $62f6: $14
    ld c, h                                       ; $62f7: $4c
    rla                                           ; $62f8: $17
    ld l, d                                       ; $62f9: $6a
    ld [hl], b                                    ; $62fa: $70
    dec hl                                        ; $62fb: $2b
    adc l                                         ; $62fc: $8d
    ld a, e                                       ; $62fd: $7b
    xor d                                         ; $62fe: $aa
    jp nc, $bf90                                  ; $62ff: $d2 $90 $bf

    call z, $f073                                 ; $6302: $cc $73 $f0
    ld a, $d3                                     ; $6305: $3e $d3
    sbc c                                         ; $6307: $99
    xor [hl]                                      ; $6308: $ae
    ld d, d                                       ; $6309: $52
    ld h, c                                       ; $630a: $61
    xor e                                         ; $630b: $ab
    ld [hl-], a                                   ; $630c: $32
    ld l, h                                       ; $630d: $6c
    ld e, a                                       ; $630e: $5f
    ld d, d                                       ; $630f: $52
    cp a                                          ; $6310: $bf
    ld c, c                                       ; $6311: $49
    ld [$ad03], sp                                ; $6312: $08 $03 $ad
    ld b, [hl]                                    ; $6315: $46
    and h                                         ; $6316: $a4
    ld e, c                                       ; $6317: $59
    ld e, e                                       ; $6318: $5b
    xor e                                         ; $6319: $ab
    ld a, [$d73c]                                 ; $631a: $fa $3c $d7
    ld a, [hl]                                    ; $631d: $7e
    ld [hl], $4a                                  ; $631e: $36 $4a
    sbc [hl]                                      ; $6320: $9e
    cp e                                          ; $6321: $bb
    ld d, [hl]                                    ; $6322: $56
    dec d                                         ; $6323: $15

jr_025_6324:
    ld l, c                                       ; $6324: $69
    db $10                                        ; $6325: $10
    db $06                                        ; $6326: $06

    db $c7, $bc, $ca, $4e, $16, $b4, $ee, $e9, $fe, $c2, $c5, $bd, $d2, $ac, $a8, $f5
    db $d7, $fe, $a7, $69, $55, $7d, $c7, $9f, $cd, $73, $ad, $19, $f0, $2a, $0e, $6b
    db $a9, $4a, $66, $5c, $da, $eb, $79, $bd, $2a, $95, $a8, $ed, $53, $62, $eb, $79
    db $39, $aa, $30, $69, $10, $06, $bd, $d2, $08, $0c, $2e, $55, $2f, $1f, $1b, $2e
    db $06, $47, $c5, $b6, $81, $1d, $63, $c2, $76, $7c, $96, $f2, $18, $ad, $af, $2c
    db $54, $f0, $17, $0c

    cp l                                          ; $637b: $bd
    jp nc, $fecc                                  ; $637c: $d2 $cc $fe

    adc a                                         ; $637f: $8f
    db $d3                                        ; $6380: $d3
    or l                                          ; $6381: $b5
    adc l                                         ; $6382: $8d
    add b                                         ; $6383: $80
    cpl                                           ; $6384: $2f
    db $ed                                        ; $6385: $ed
    dec a                                         ; $6386: $3d
    cp l                                          ; $6387: $bd
    inc b                                         ; $6388: $04
    dec c                                         ; $6389: $0d
    jp nz, Jump_000_1ac7                          ; $638a: $c2 $c7 $1a

    inc de                                        ; $638d: $13
    inc b                                         ; $638e: $04
    and l                                         ; $638f: $a5
    ld [hl], h                                    ; $6390: $74
    ld e, c                                       ; $6391: $59
    adc a                                         ; $6392: $8f
    and d                                         ; $6393: $a2
    ld e, [hl]                                    ; $6394: $5e
    add e                                         ; $6395: $83
    or c                                          ; $6396: $b1
    dec bc                                        ; $6397: $0b
    add c                                         ; $6398: $81
    ld bc, $14bf                                  ; $6399: $01 $bf $14
    jr nz, jr_025_63aa                            ; $639c: $20 $0c

    db $dd                                        ; $639e: $dd
    db $d3                                        ; $639f: $d3
    ld l, a                                       ; $63a0: $6f
    jp nc, $ff4e                                  ; $63a1: $d2 $4e $ff

    ld [$1e76], a                                 ; $63a4: $ea $76 $1e
    inc bc                                        ; $63a7: $03
    rst $00                                       ; $63a8: $c7
    push bc                                       ; $63a9: $c5

jr_025_63aa:
    db $db                                        ; $63aa: $db
    ld a, c                                       ; $63ab: $79
    ld h, d                                       ; $63ac: $62
    adc c                                         ; $63ad: $89
    ld bc, $be67                                  ; $63ae: $01 $67 $be
    add h                                         ; $63b1: $84
    scf                                           ; $63b2: $37
    add $9b                                       ; $63b3: $c6 $9b
    ld b, $30                                     ; $63b5: $06 $30
    ld h, a                                       ; $63b7: $67
    cp [hl]                                       ; $63b8: $be
    or b                                          ; $63b9: $b0
    dec de                                        ; $63ba: $1b
    sbc $18                                       ; $63bb: $de $18
    ld l, a                                       ; $63bd: $6f
    ld a, [de]                                    ; $63be: $1a
    ret nz                                        ; $63bf: $c0

    ld d, $aa                                     ; $63c0: $16 $aa
    sbc [hl]                                      ; $63c2: $9e
    ret c                                         ; $63c3: $d8

    ld c, l                                       ; $63c4: $4d
    inc c                                         ; $63c5: $0c
    jp $c3c3                                      ; $63c6: $c3 $c3 $c3


    jp $c3c3                                      ; $63c9: $c3 $c3 $c3


    jp $c3c3                                      ; $63cc: $c3 $c3 $c3


    jp $c3c3                                      ; $63cf: $c3 $c3 $c3


    jp $c3c3                                      ; $63d2: $c3 $c3 $c3


    jp $c3c3                                      ; $63d5: $c3 $c3 $c3


    jp $c3c3                                      ; $63d8: $c3 $c3 $c3


    jp $c3c3                                      ; $63db: $c3 $c3 $c3


    jp $c3c3                                      ; $63de: $c3 $c3 $c3


    jp $c3c3                                      ; $63e1: $c3 $c3 $c3


    jp $c3c3                                      ; $63e4: $c3 $c3 $c3


    jp $c3c3                                      ; $63e7: $c3 $c3 $c3


    jp $c3c3                                      ; $63ea: $c3 $c3 $c3


    jp $c3c3                                      ; $63ed: $c3 $c3 $c3


    ld b, a                                       ; $63f0: $47
    sub c                                         ; $63f1: $91
    ld e, a                                       ; $63f2: $5f
    sub [hl]                                      ; $63f3: $96
    cp $18                                        ; $63f4: $fe $18
    dec a                                         ; $63f6: $3d
    ld l, a                                       ; $63f7: $6f
    db $10                                        ; $63f8: $10
    inc a                                         ; $63f9: $3c
    pop af                                        ; $63fa: $f1
    rra                                           ; $63fb: $1f

jr_025_63fc:
    reti                                          ; $63fc: $d9


    cp d                                          ; $63fd: $ba
    and a                                         ; $63fe: $a7
    rst $18                                       ; $63ff: $df
    inc h                                         ; $6400: $24
    inc c                                         ; $6401: $0c
    dec a                                         ; $6402: $3d
    ld l, a                                       ; $6403: $6f
    db $10                                        ; $6404: $10
    inc a                                         ; $6405: $3c
    pop af                                        ; $6406: $f1
    rra                                           ; $6407: $1f
    reti                                          ; $6408: $d9


    adc [hl]                                      ; $6409: $8e
    rla                                           ; $640a: $17
    dec h                                         ; $640b: $25
    or [hl]                                       ; $640c: $b6
    xor $e9                                       ; $640d: $ee $e9
    scf                                           ; $640f: $37
    add hl, bc                                    ; $6410: $09
    inc bc                                        ; $6411: $03
    xor l                                         ; $6412: $ad
    cpl                                           ; $6413: $2f
    db $ed                                        ; $6414: $ed
    ld e, e                                       ; $6415: $5b
    ld e, l                                       ; $6416: $5d
    or $eb                                        ; $6417: $f6 $eb
    sbc [hl]                                      ; $6419: $9e
    ld a, [hl]                                    ; $641a: $7e
    sub e                                         ; $641b: $93
    jr nc, jr_025_6485                            ; $641c: $30 $67

    ld e, [hl]                                    ; $641e: $5e
    rst $10                                       ; $641f: $d7
    ldh a, [$72]                                  ; $6420: $f0 $72
    ld e, b                                       ; $6422: $58
    rst $30                                       ; $6423: $f7
    db $f4                                        ; $6424: $f4
    sbc e                                         ; $6425: $9b
    add h                                         ; $6426: $84
    ld bc, $bfdd                                  ; $6427: $01 $dd $bf
    db $d3                                        ; $642a: $d3
    ld a, c                                       ; $642b: $79
    reti                                          ; $642c: $d9


    add hl, de                                    ; $642d: $19
    sbc l                                         ; $642e: $9d
    ld [hl], l                                    ; $642f: $75
    ld c, a                                       ; $6430: $4f
    cp a                                          ; $6431: $bf
    ld c, c                                       ; $6432: $49
    jr jr_025_63fc                                ; $6433: $18 $c7

    adc e                                         ; $6435: $8b
    ld [de], a                                    ; $6436: $12
    ld e, e                                       ; $6437: $5b
    rst $30                                       ; $6438: $f7
    rst $28                                       ; $6439: $ef
    ld [hl], h                                    ; $643a: $74
    ld e, [hl]                                    ; $643b: $5e
    halt                                          ; $643c: $76

jr_025_643d:
    ld b, [hl]                                    ; $643d: $46
    ld h, a                                       ; $643e: $67
    db $dd                                        ; $643f: $dd
    db $d3                                        ; $6440: $d3
    ld l, a                                       ; $6441: $6f
    ld [de], a                                    ; $6442: $12
    ld b, $c3                                     ; $6443: $06 $c3
    jp $c3c3                                      ; $6445: $c3 $c3 $c3


    jp $c3c3                                      ; $6448: $c3 $c3 $c3


    jp $c3c3                                      ; $644b: $c3 $c3 $c3


    jp $8cdd                                      ; $644e: $c3 $dd $8c


    ret nz                                        ; $6451: $c0

    rst $28                                       ; $6452: $ef
    add sp, -$34                                  ; $6453: $e8 $cc
    ld a, [hl-]                                   ; $6455: $3a
    ld b, $c3                                     ; $6456: $06 $c3
    jp $c3c3                                      ; $6458: $c3 $c3 $c3


    jp $c3c3                                      ; $645b: $c3 $c3 $c3


    jp $c3c3                                      ; $645e: $c3 $c3 $c3


    jp $c3c3                                      ; $6461: $c3 $c3 $c3


    jp $c3c3                                      ; $6464: $c3 $c3 $c3


    jp $c3c3                                      ; $6467: $c3 $c3 $c3


    jp $c7c3                                      ; $646a: $c3 $c3 $c7


    ld e, d                                       ; $646d: $5a
    ld e, a                                       ; $646e: $5f

jr_025_646f:
    sbc d                                         ; $646f: $9a
    dec e                                         ; $6470: $1d
    rla                                           ; $6471: $17
    push de                                       ; $6472: $d5
    sbc d                                         ; $6473: $9a
    or d                                          ; $6474: $b2
    and e                                         ; $6475: $a3
    ld e, a                                       ; $6476: $5f
    add hl, bc                                    ; $6477: $09
    jr nc, jr_025_643d                            ; $6478: $30 $c3

    ld b, a                                       ; $647a: $47
    ccf                                           ; $647b: $3f
    ld hl, sp-$72                                 ; $647c: $f8 $8e
    adc [hl]                                      ; $647e: $8e
    ret                                           ; $647f: $c9


    ld e, a                                       ; $6480: $5f
    ld a, [bc]                                    ; $6481: $0a
    halt                                          ; $6482: $76
    cp h                                          ; $6483: $bc
    add hl, bc                                    ; $6484: $09

jr_025_6485:
    ld sp, $4ddd                                  ; $6485: $31 $dd $4d
    ret c                                         ; $6488: $d8

    xor c                                         ; $6489: $a9
    ld e, a                                       ; $648a: $5f
    ld e, d                                       ; $648b: $5a
    ld [hl], a                                    ; $648c: $77
    dec b                                         ; $648d: $05
    cp a                                          ; $648e: $bf
    rrca                                          ; $648f: $0f
    jr jr_025_646f                                ; $6490: $18 $dd

    call nc, Call_000_2644                        ; $6492: $d4 $44 $26
    ld c, c                                       ; $6495: $49
    db $eb                                        ; $6496: $eb
    and [hl]                                      ; $6497: $a6
    push af                                       ; $6498: $f5
    rlca                                          ; $6499: $07
    inc c                                         ; $649a: $0c
    daa                                           ; $649b: $27
    db $dd                                        ; $649c: $dd
    ld a, [hl+]                                   ; $649d: $2a
    push hl                                       ; $649e: $e5
    ld d, [hl]                                    ; $649f: $56
    cp a                                          ; $64a0: $bf
    sbc [hl]                                      ; $64a1: $9e
    ld c, d                                       ; $64a2: $4a
    inc c                                         ; $64a3: $0c
    jr nc, @-$3b                                  ; $64a4: $30 $c3

    jp $c3c3                                      ; $64a6: $c3 $c3 $c3


    jp $c3c3                                      ; $64a9: $c3 $c3 $c3


    jp $c3c3                                      ; $64ac: $c3 $c3 $c3


    jp $c3c3                                      ; $64af: $c3 $c3 $c3


    jp $c3c3                                      ; $64b2: $c3 $c3 $c3


    jp $c7c3                                      ; $64b5: $c3 $c3 $c7


    ld b, l                                       ; $64b8: $45
    db $e3                                        ; $64b9: $e3
    adc a                                         ; $64ba: $8f
    ld bc, $c3c3                                  ; $64bb: $01 $c3 $c3
    jp $c3c3                                      ; $64be: $c3 $c3 $c3


    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff

Jump_025_6504:
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff

Jump_025_6556:
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff

Jump_025_67c7:
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff

Jump_025_68af:
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff

Jump_025_692d:
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff

Call_025_6935:
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
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

Call_025_6aac:
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

Jump_025_6bc7:
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

Call_025_6c2c:
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

Call_025_6e06:
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff

Call_025_6e0c:
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

Call_025_7270:
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

Jump_025_72c7:
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

Jump_025_75c7:
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

Call_025_761d:
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

Call_025_78b8:
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

Jump_025_7ac3:
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

Jump_025_7c08:
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

Call_025_7d68:
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

Call_025_7dac:
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff

Jump_025_7db0:
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
